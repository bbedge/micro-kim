# Project basename extracted from the current directory name
# PROJ = $(shell basename `pwd`)
# ll | grep lesson| awk '{print $9}' | cut -d'.' -f1
PROJ = lesson01-00

# Sources
OBJS = $(PROJ).o

# Target
all: $(PROJ).ptp

# Make PTP
$(PROJ).ptp: $(PROJ).bin
	srec_cat $(PROJ).bin -binary -offset 0x200 -o $(PROJ).ptp -MOS_Technologies

# Make BIN
$(PROJ).bin: $(OBJS)
	ld65 -t none -vm -m $(PROJ).map -o $(PROJ).bin $(OBJS)

# Make OBJ
$(OBJS): $(PROJ).s
	ca65 -g -l $(PROJ).lst --feature labels_without_colons $(PROJ).s

# ALL Clean
clean:
	$(RM) *.o *.lst *.map *.bin *.ptp

distclean: clean