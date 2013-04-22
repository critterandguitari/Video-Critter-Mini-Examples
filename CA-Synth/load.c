/*********************************************
* : Video Critter Mini example program
* (c)owen osborn, Copyright: GPL 
* 
* do a 1D cellular automata
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

#define PIXDELAY 	{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");}
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

// variables for video stuff
volatile uint8_t newSync = 0;
volatile uint16_t lineCount = 0;
volatile uint8_t line = 0;
volatile uint8_t syncOn = ZERO;
volatile uint8_t syncOff = BLACK;


void inline delay(uint8_t u_sec);

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

// sets a freqency.  higher the number, the lower the frequency.
//  a lookup table for useful frequencies/scales could be used.  or an equation to convert.
void set_tone(uint16_t f){
    OCR1AH = (f >> 8);
    OCR1AL = f;
}

int main(void)
{
    // CA rule
    uint8_t rule = 41;
    
    // current line in cellular calculation
    uint8_t l = 0;
    
    // current cell in cellular calculation
    uint8_t cell = 0;  
    
    // state of a cell
    uint8_t state = 0;
    
    // counts number of screen frames
    uint8_t frameCount = 0;
    
    // celluar board (row) width
    uint8_t sizeLow = 1;
    uint8_t sizeHigh = 39;
    
    // state of the red button
    uint8_t button = 0;
    
    // stores frequency
    uint16_t freq = 0;
    
    // keeps track of knob reading
    uint8_t knobChannel = 0;
    
    // holds knob values
    uint8_t knob[4] = {0, 0, 0, 0};

    // cell array
    uint8_t image[35][22];
    
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
   
    // timer 2 is PWM for color carrier
    OCR2  =  0x01;
    DDRB |= 0x08;
    TCCR2 = 0x19;
    
    // output to multiplexer
    DDRC |= 0x07;
    
    // fill the image array with black
    for (l = 0; l < 22; l++){
        for (cell = 0; cell< 35; cell++){
            image[cell][l] = BLACK;
         }
     }
     
     // enable interrupts to start sound and video
    sei();

    for(;;){
    
        // here is really where the main program happens.  we have to finsh 
        // by the time lineCount gets to 30.  (about 50 lines worth of time)
        if (newSync && (lineCount == 222)){
                  
            // get knob and then start conversion for next knob
            knob[knobChannel] = ADCH;
            knobChannel++;
            knobChannel &= 0x3;
            ADMUX =  knobChannel + 5;        // select channel (5, 6, 7)
            ADMUX |= (1 << 5);   // left justify the result, 8 bits in ADCH
            ADCSR = 0xD6;        // start ADC
            
            // this controls iteration rate
            frameCount++;
            frameCount %= knob[2] >> 4;
            
            // this controls board width
            sizeLow = 16 - (knob[0] >> 4);
            sizeHigh = 18 + (knob[0] >> 4);

            // set rule
            rule = knob[1];

            button = (PINB & 0x4) >> 2;
         
              
            if (!frameCount) {
            l++;                        // increment line
            l %= 22;                    // the board has 22 rows
            for (cell = 0; cell < 34; cell++){      // do CA
                if ((cell > sizeLow) && (cell < sizeHigh) && button){
                    state = 0;
                    if (image[cell + 1][l])
                        state |= 0x4;
                    if (image[cell][l])
                        state |= 0x2;
                    if (image[cell - 1][l])
                        state |= 0x1;
                        
                    if ((rule >> state) & 1){
                        state = image[cell][(l) % 22];
                        state++;            // a cell changes color depending on how long it's been alive
                        state %= 5;
                        state++;
                        freq *= state;       // no rational here, leads to interesting sounds
                        image[cell][(l + 1) % 22] = state;
                    }
                    else{
                        image[cell][(l + 1) % 22] = 0;
                    } 
                }
                else
                    image[cell][(l + 1) % 22] = 0;
            }   
            
            freq++;           // do this just incase freq became 0 (also helps cool sounds happen)
            set_tone(freq);
        
        }
            newSync = 0;                 // set this to 0 so we don't do the above twice
        }

        // if a new sync happend, and we are are in viewable space, draw line
        if (newSync && (lineCount > (30)) && (lineCount < (206))){
        
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

            PORTC = BLACK;
            newSync = 0;
        } 
        sleep_mode();       // enter sleep mode to emliminate interrupt jitter
    }
} // main()

