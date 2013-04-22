# makefile, written by guido socher
MCU=atmega8
CC=avr-gcc
OBJCOPY=avr-objcopy
# optimize for size:
CFLAGS=-g -mmcu=$(MCU) -Wall -Wstrict-prototypes -O1 -mcall-prologues
#-------------------
all: load.hex
#-------------------
load.hex : load.out 
	$(OBJCOPY) -R .eeprom -O ihex load.out load.hex 
load.out : load.o 
	$(CC) $(CFLAGS) -o load.out -Wl,-Map,load.map load.o 
load.o : load.c 
	$(CC) $(CFLAGS) -c load.c
# you need to erase first before loading the program.
# load (program) the software into the eeprom:
load: load.hex
	avrdude -p atmega8 -P /dev/parport0 -c stk200 -U flash:w:load.hex

# here is a pre-compiled version in case you have trouble with
# your development environment
pre: CA-Synth.hex
	avrdude -p atmega8 -P /dev/parport0 -c stk200 -U flash:w:CA-Synth.hex


#-------------------
clean:
	rm -f *.o *.map *.out
#-------------------
