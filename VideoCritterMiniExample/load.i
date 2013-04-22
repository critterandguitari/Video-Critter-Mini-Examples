# 1 "load.c"
# 1 "/home/owen/critterandguitari/code/finals/VideoCritterMini/VideoCritterMiniExample//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "load.c"
# 13 "load.c"
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/io.h" 1 3
# 86 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/sfr_defs.h" 1 3
# 123 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/sfr_defs.h" 3
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/inttypes.h" 1 3
# 36 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/stdint.h" 1 3
# 65 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/stdint.h" 3
typedef signed char int8_t;




typedef unsigned char uint8_t;
# 104 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/stdint.h" 3
typedef int int16_t;




typedef unsigned int uint16_t;
# 120 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/stdint.h" 3
typedef long int32_t;




typedef unsigned long uint32_t;
# 136 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/stdint.h" 3
typedef long long int64_t;




typedef unsigned long long uint64_t;
# 155 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/stdint.h" 3
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 37 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/inttypes.h" 2 3
# 124 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/sfr_defs.h" 2 3
# 87 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/io.h" 2 3
# 202 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/iom8.h" 1 3
# 203 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/io.h" 2 3
# 256 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/portpins.h" 1 3
# 257 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/io.h" 2 3
# 14 "load.c" 2
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/interrupt.h" 1 3
# 134 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/interrupt.h" 3
static __inline__ void timer_enable_int (unsigned char ints)
{

    (*(volatile uint8_t *)((0x39) + 0x20)) = ints;

}
# 15 "load.c" 2
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/signal.h" 1 3
# 16 "load.c" 2


# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 1 3
# 93 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));







extern double fabs(double __x) __attribute__((__const__));
# 118 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double fmod(double __x, double __y) __attribute__((__const__));
# 130 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double modf(double __value, double *__iptr);







extern double sin(double __x) __attribute__((__const__));






extern double sqrt(double __x) __attribute__((__const__));







extern double tan(double __x) __attribute__((__const__));







extern double floor(double __x) __attribute__((__const__));







extern double ceil(double __x) __attribute__((__const__));
# 183 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double frexp(double __value, int *__exp);
# 197 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double ldexp(double __x, int __exp) __attribute__((__const__));






extern double exp(double _x) __attribute__((__const__));






extern double cosh(double __x) __attribute__((__const__));






extern double sinh(double __x) __attribute__((__const__));






extern double tanh(double __x) __attribute__((__const__));
# 236 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double acos(double __x) __attribute__((__const__));
# 247 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double asin(double __x) __attribute__((__const__));
# 258 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double atan(double __x) __attribute__((__const__));
# 269 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));
# 278 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double log(double __x) __attribute__((__const__));
# 287 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double log10(double __x) __attribute__((__const__));






extern double pow(double __x, double __y) __attribute__((__const__));







extern int isnan(double __x) __attribute__((__const__));







extern int isinf(double __x) __attribute__((__const__));
# 320 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double square(double __x) __attribute__((__const__));
# 329 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/math.h" 3
extern double inverse(double) __attribute__((__const__));
# 19 "load.c" 2
# 1 "/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/sleep.h" 1 3
# 20 "load.c" 2
# 41 "load.c"
volatile uint8_t newSync = 0;
volatile uint16_t lineCount = 0;
volatile uint8_t line = 0;
volatile uint8_t syncOn = 7;
volatile uint8_t syncOff = 0;
volatile uint8_t temp;

void inline delay(uint8_t u_sec);
void delay_ms(uint16_t dtime);


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


void __vector_9 (void) __attribute__ ((signal)); void __vector_9 (void)
{
    (*(volatile uint8_t *)((0x32) + 0x20)) = 145;
    lineCount++;


    if ((lineCount >= 248) && (lineCount < 251)){
        (*(volatile uint8_t *)((0x15) + 0x20)) = 0;
        {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
        (*(volatile uint8_t *)((0x15) + 0x20)) = 7;
        {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
        (*(volatile uint8_t *)((0x15) + 0x20)) = 7;
        {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
        (*(volatile uint8_t *)((0x15) + 0x20)) = 7;
        {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
    }


    else {
        (*(volatile uint8_t *)((0x15) + 0x20)) = 7;
        {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
        (*(volatile uint8_t *)((0x15) + 0x20)) = 0;
        {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
        (*(volatile uint8_t *)((0x15) + 0x20)) = 6;
        {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
        (*(volatile uint8_t *)((0x15) + 0x20)) = 0;
    }

    if (lineCount==263){
        lineCount = 1;
    }


    line = lineCount;
    if (line >= 30){
        line -= 30;
        line >>= 3;
    }

    newSync = 1;
}


void inline delay(uint8_t u_sec){
  while (u_sec)
    u_sec--;
}


void delay_ms(uint16_t dtime){
  uint32_t time;
  time = dtime;
  time <<= 10;
  while(time){
    asm volatile("NOP");
    time--;
  }
}



void set_tone(uint16_t f){
    (*(volatile uint8_t *)((0x2B) + 0x20)) = (f >> 8);
    (*(volatile uint8_t *)((0x2A) + 0x20)) = f;
}

int main(void)
{

    uint8_t frameCount = 0;
    uint8_t count2 = 0;







    uint8_t image[40][24];


    uint8_t i = 0;
    uint8_t j = 0;



    uint16_t freq = 0;


    (*(volatile uint8_t *)((0x11) + 0x20)) |= (1 << 5);


    (*(volatile uint8_t *)((0x39) + 0x20)) = (1 << 0);
    (*(volatile uint8_t *)((0x32) + 0x20)) = 131;
    (*(volatile uint8_t *)((0x33) + 0x20)) = 0x02;



    (*(volatile uint8_t *)((0x2B) + 0x20)) = 0x20;
    (*(volatile uint8_t *)((0x2A) + 0x20)) = 0x00;
    (*(volatile uint8_t *)((0x2F) + 0x20)) |= 0x40;
    (*(volatile uint8_t *)((0x17) + 0x20)) |= 0x02;
    (*(volatile uint8_t *)((0x2E) + 0x20)) |= 0x09;


    (*(volatile uint8_t *)((0x23) + 0x20)) = 0x01;
    (*(volatile uint8_t *)((0x17) + 0x20)) |= 0x08;
    (*(volatile uint8_t *)((0x25) + 0x20)) = 0x19;


    (*(volatile uint8_t *)((0x14) + 0x20)) |= 0x07;


    for (i = 0; i < 24; i++){
        for (j = 0; j < 40; j++){
            image[j][i] = 0;
         }
     }


    __asm__ __volatile__ ("sei" ::);


    for(;;){



        if (newSync && (lineCount == 222)){
            frameCount++;
            frameCount &= 0x3;
            if (!frameCount){

                (*(volatile uint8_t *)((0x12) + 0x20)) ^= (1 << 5);

                count2++;
                freq *= count2;
                freq++;
                set_tone(freq);

                j++;

                for (i = 0; i < ((freq >> 8) % 24); i++)
                        image[j % 40][i] = (freq % 5) + 1;
            }
            newSync = 0;
        }


        if (newSync && (lineCount > (30)) && (lineCount < (220))){

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[0][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[1][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[2][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[3][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[4][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[5][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[6][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[7][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[8][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[9][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[10][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[11][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[12][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[13][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[14][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[15][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[16][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[17][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[18][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[19][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[20][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[21][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[22][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[23][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[24][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[25][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[26][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[27][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[28][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[29][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[30][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[31][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[32][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[33][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[34][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[35][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};

            (*(volatile uint8_t *)((0x15) + 0x20)) = image[36][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[37][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[38][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = image[39][line];{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
            (*(volatile uint8_t *)((0x15) + 0x20)) = 0;
            newSync = 0;
        }
        do { (*(volatile uint8_t *)((0x35) + 0x20)) |= (1 << (7)); __asm__ __volatile__ ("sleep" "\n\t" :: ); (*(volatile uint8_t *)((0x35) + 0x20)) &= ~(1 << (7)); } while (0);
    }
}
