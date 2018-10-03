TARGET=codifMorse

CC=iverilog

WARN=-Wall

SRC= testbench.v

DUMP= codifMorse.vcd

CCDUMP= vvp

WAVER= gtkwave

all:
	$(CC) $(SRC) -o $(TARGET) $(WARN)

run:
	$(CCDUMP) $(TARGET)

wave:
	$(WAVER) $(DUMP)
