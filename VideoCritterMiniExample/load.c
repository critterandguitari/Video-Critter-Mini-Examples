/*********************************************
* : Video Critter Mini example program
* Author: owen osborn, Copyright: GPL 
* 
*  get some color video on the screen
* 
* 
*
* Chip type           : ATMEGA8
* Clock frequency     : color carrier * 4
*********************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/signal.h>
#include <avr/iom8.h>
#include <inttypes.h>
#include <math.h>
#include <avr/sleep.h>

#define PIXDELAY 	{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");}
#define DELAY1	{asm volatile("nop");}
#define DELAY2 	{asm volatile("nop");asm volatile("nop");}
#define DELAY4	{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");}
#define DELAY8	{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");}
#define DELAY16 {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");}



// multiplexer outputs
#define BLACK           0
#define ZERO            7
#define COLORBURST      6
#define COLOR1          1
#define COLOR2          2
#define COLOR3          3
#define COLOR4          4
#define COLOR5          5


volatile uint8_t newSync = 0;
volatile uint16_t lineCount = 0;
volatile uint8_t line = 0;
volatile uint8_t syncOn = ZERO;
volatile uint8_t syncOff = BLACK;
volatile uint8_t temp;

void inline delay(uint8_t u_sec);
void delay_ms(uint16_t dtime);

// a very short delay
static __inline__ void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
		"1: dec %0" "\n\t"
		"brne 1b"
		: "=r" (__count)
		: "0" (__count)
	);
}

// This interrupt occurs at horizontal sync frequency
SIGNAL (SIG_OVERFLOW0)
{
    TCNT0 = 145;        // timer for h sync
    lineCount++;

    // vertical sync
    if ((lineCount >= 248) && (lineCount < 251)){  // invert sync for vertical
        PORTC = BLACK;
        DELAY16;DELAY16;DELAY16;DELAY16;
        PORTC = ZERO;
        DELAY16;
        PORTC = ZERO;
        DELAY16;DELAY16;
        PORTC = ZERO;
        DELAY16;
    }

    // regular line with color burst
    else {
        PORTC = ZERO;
        DELAY16;DELAY16;DELAY16;DELAY16;
        PORTC = BLACK;
        DELAY16;
        PORTC = COLORBURST;
        DELAY16;DELAY16;
        PORTC = BLACK;
    }
    // reset line
    if (lineCount==263){
        lineCount = 1;
    }
    
    // make line for 8 line fat bits
    line = lineCount;
    if (line >= 30){
        line -= 30;
        line >>= 3;
    }
    
    newSync = 1;
}

// not really useconds at all, but short
void inline delay(uint8_t u_sec){   
  while (u_sec)
    u_sec--;
}

// short delay in miliseconds (sort of)
void delay_ms(uint16_t dtime){
  uint32_t time;
  time = dtime;
  time <<= 10;
  while(time){
    asm volatile("NOP");
    time--;
  }
}

// sets a freqency.  higher the number, the lower the frequency.
//  a lookup table for useful frequencies/scales could be used.  or an equation to convert.
void set_tone(uint16_t f){
    OCR1AH = (f >> 8);
    OCR1AL = f;
}

int main(void)
{
    
    uint8_t frameCount = 0;
    uint8_t count2 = 0;

   // This is about as big an array as we can do :(
   // we could the code below to use this array a little more efficiantly
   // since we only need 3 bits for colors.... but the raster generation 
   // would probably have to be re-written in assembly.
   // we could also do 2 bits/pixel or 1 bit/pixel to get more resolution.
   
    uint8_t image[40][24];
    
    
    uint8_t i = 0;
    uint8_t j = 0;
    
    
    // frequency
    uint16_t freq = 0;
    
    // on-board LED on PD5
    DDRD |= (1 << 5);

    // timer 0 is for h sync interrrupt
    TIMSK = (1 << TOIE0);
    TCNT0 = 131;  
    TCCR0 = 0x02;
    
    
    // this will be the audio wave
    OCR1AH = 0x20;
    OCR1AL = 0x00;
    TCCR1A |= 0x40;
    DDRB   |= 0x02;
    TCCR1B |= 0x09;
   
    // timer 2 is for color carrier
    OCR2  =  0x01;
    DDRB |= 0x08;
    TCCR2 = 0x19;
    
    // output to multiplexer
    DDRC |= 0x07;
    
    // fill the image array with black
    for (i = 0; i < 24; i++){
        for (j = 0; j < 40; j++){
            image[j][i] = BLACK;
         }
     }
     
     // enable interrupts to start sound and video
    sei();


    for(;;){
    
        // here is really where the main program happens.  we have to finsh 
        // by the time lineCount gets to 30.  (about 50 lines worth of time)
        if (newSync && (lineCount == 222)){
            frameCount++;                  
            frameCount &= 0x3;
            if (!frameCount){                   // do this thing every 8 frames
                
                PORTD ^= (1 << 5);              // flash onboard LED
                
                count2++;
                freq *= count2;                 // a little tone sequence
                freq++;
                set_tone(freq);
                
                j++;   // increment horozontal position

                for (i = 0; i < ((freq >> 8) % 24); i++)   // draw a vertical line depending on frequency
                        image[j % 40][i] = (freq % 5) + 1;   // color based on frequency (sort of)
            }   
            newSync = 0;                                    // set this to 0 so we don't do the above twice
        }

        // if a new sync happend, and we are are in viewable space, draw line
        if (newSync && (lineCount > (30)) && (lineCount < (220))){
        
            PORTC = image[0][line];PIXDELAY;
            PORTC = image[1][line];PIXDELAY;
            PORTC = image[2][line];PIXDELAY;
            PORTC = image[3][line];PIXDELAY;
            
            PORTC = image[4][line];PIXDELAY;
            PORTC = image[5][line];PIXDELAY;
            PORTC = image[6][line];PIXDELAY;
            PORTC = image[7][line];PIXDELAY;
            
            PORTC = image[8][line];PIXDELAY;
            PORTC = image[9][line];PIXDELAY;
            PORTC = image[10][line];PIXDELAY;
            PORTC = image[11][line];PIXDELAY;
            
            PORTC = image[12][line];PIXDELAY;
            PORTC = image[13][line];PIXDELAY;
            PORTC = image[14][line];PIXDELAY;
            PORTC = image[15][line];PIXDELAY;
            
            PORTC = image[16][line];PIXDELAY;
            PORTC = image[17][line];PIXDELAY;
            PORTC = image[18][line];PIXDELAY;
            PORTC = image[19][line];PIXDELAY;
            
            PORTC = image[20][line];PIXDELAY;
            PORTC = image[21][line];PIXDELAY;
            PORTC = image[22][line];PIXDELAY;
            PORTC = image[23][line];PIXDELAY;
            
            PORTC = image[24][line];PIXDELAY;
            PORTC = image[25][line];PIXDELAY;
            PORTC = image[26][line];PIXDELAY;
            PORTC = image[27][line];PIXDELAY;
            
            PORTC = image[28][line];PIXDELAY;
            PORTC = image[29][line];PIXDELAY;
            PORTC = image[30][line];PIXDELAY;
            PORTC = image[31][line];PIXDELAY;
            
            PORTC = image[32][line];PIXDELAY;
            PORTC = image[33][line];PIXDELAY;
            PORTC = image[34][line];PIXDELAY;
            PORTC = image[35][line];PIXDELAY;
            
            PORTC = image[36][line];PIXDELAY;
            PORTC = image[37][line];PIXDELAY;
            PORTC = image[38][line];PIXDELAY;
            PORTC = image[39][line];PIXDELAY;
            PORTC = BLACK;
            newSync = 0;
        } 
        sleep_mode();       // enter sleep mode to emliminate interrupt jitter
    }
} // main()

