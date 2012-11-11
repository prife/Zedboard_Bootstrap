TOOLCHAIN_ROOTDIR   := $(ROOT)/toolchain/$(TOOLCHAIN_TARGET)
TOOLCHAIN_SRCDIR    := $(ROOT)/toolchain/source
TOOLCHAIN_BINDIR    := $(TOOLCHAIN_ROOTDIR)/bin
TOOLCHAIN_PATCHDIR	:= $(ROOT)/toolchain/patches

AR      := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-ar
AS      := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-as
CC      := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-gcc
DC      := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-gdc
CXX     := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-g++
LD      := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-ld
NM      := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-nm
OBJCOPY := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-objcopy
OBJDUMP := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-objdump
RANLIB  := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-ranlib
READELF := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-readelf
STRIP   := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-strip
GDB	    := $(TOOLCHAIN_BINDIR)/$(TOOLCHAIN_TARGET)-gdb

XMD		:= /media/andy/Data/Xilinx/14.2/ISE_DS/EDK/bin/lin64/xmd