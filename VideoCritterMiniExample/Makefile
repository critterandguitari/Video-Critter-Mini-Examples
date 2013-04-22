# makefile, written by guido socher
#MCU=at90s4433
MCU=atmega8
CC=avr-gcc
OBJCOPY=avr-objcopy
# optimize for size:
CFLAGS=-g -mmcu=$(MCU) -Wall -Wstrict-prototypes -O1 -mcall-prologues -save-temps
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
#	uisp -dlpt=/dev/parport0 --erase  -dprog=dapa
#	uisp -dlpt=/dev/parport0 --upload if=load.hex -dprog=STK200  -v=3 --hash=32 --wr_fuse_l=0xFF --rd_fuses
# here is a pre-compiled version in case you have trouble with
# your development environment

#-------------------
clean:
	rm -f *.o *.map *.out
#-------------------
