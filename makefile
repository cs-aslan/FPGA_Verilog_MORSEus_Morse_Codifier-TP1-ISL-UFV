TARGET=codifMorse

CC=iverilog

WARN=-Wall

SRC= testbench.v

DUMP= codifMorse.vcd

CCDUMP= vvp

WAVER= gtkwave

all:
	$(CC) $(SRC) -o $(TARGET) $(WARN)

dump:
	$(CCDUMP) $(TARGET)

show:
	$(WAVER) $(DUMP)
