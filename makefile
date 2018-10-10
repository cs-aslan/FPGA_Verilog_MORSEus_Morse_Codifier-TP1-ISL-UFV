TARGET=codifMorse

CC=iverilog

WARN=-Wall

SRC= testbench.v

DUMP= codifMorse.vcd

CCDUMP= vvp

WAVER= gtkwave

LOG= logisim

all:
	$(CC) $(SRC) -o $(TARGET) $(WARN)

run:
	$(CCDUMP) $(TARGET)

wave:
	$(WAVER) $(DUMP)

logi:
	$(LOG) LOGISIM/Normal.circ

loginand:
	$(LOG) LOGISIM/NAND\ e\ NOR.circ

