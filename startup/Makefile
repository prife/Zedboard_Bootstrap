ARCH := arm
ifeq ($(ARCH), arm)
	COMPILE = arm-none-eabi-
	CFLAGS := -g -O0
	LDFLAGS += -L. -lpthread -lz
else
	CFLAGS := -g -O0 -DDO_SIM
	LDFLAGS += -lpthread -lz
endif

CC     	= $(COMPILE)gcc
CPP    	= $(COMPILE)g++
AR     	= $(COMPILE)ar
LD     	= $(COMPILE)ld
OBJCOPY	= $(COMPILE)objcopy
NM      = $(COMPILE)nm
OBJDUMP	= $(COMPILE)objdump
CHMOD  	= chmod
PWD     = $(shell pwd)/..
ROOT    = ..

TARGET := text.elf

#CPPFLAGS += $(CFLAGS)

# List C source files here.
# SOURCE += $(wildcard *.c)
CCSOURCES = src/vectors.c \
			src/main.c \
			src/Drivers/io.c \
			src/Newlib/_sbrk.c \
			src/Newlib/_exit.c \
			src/Newlib/_write.c \
			src/Newlib/_read.c \
			src/Newlib/newlib_stubs.c \
			src/ps7_init.c \
			src/Drivers/uart.c \
			src/Drivers/gic.c

# List Assembler to be assembled here
GASSOURCES = src/Startup/vectortable.S \
			 src/Startup/boot.S \
			 src/Startup/crt0.S \
			 src/Startup/translation_tables.S

OBJS += $(addsuffix .o, $(basename $(CCSOURCES)))
OBJS += $(addsuffix .o, $(basename $(GASSOURCES)))

# C compiler flags
CFLAGS = -std=gnu99 -ggdb -O0 -march=armv7-a -mtune=cortex-a9 -mfpu=neon -ftree-vectorize -ffast-math -mfloat-abi=softfp
CFLAGS += -Wall -Iinc

# GAS flags
ASFLAGS = -march=armv7-a -mtune=cortex-a9 -mfpu=neon -ftree-vectorize -ffast-math -mfloat-abi=softfp

# Linker flags
# we need crti and crtn for _init() and _fini()
EXTRAOBJECTS := $(shell $(CC) -print-file-name=crti.o) \
				$(shell $(CC) -print-file-name=crtn.o)
LDFLAGS := -Wl,-T$(ROOT)/startup/linker.ld,-Map,$(ROOT)/startup/startup.map -nostartfiles $(EXTRAOBJECTS)

$(TARGET): $(OBJS)
	$(CC) ${LDFLAGS} ${OBJS} -o $@ 

clean:
	$(RM) $(OBJS)
	$(RM) $(TARGET)
