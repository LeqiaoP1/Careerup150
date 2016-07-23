#general rules
MESSAGE= '******** C std11 ************'


CC=gcc
CFLAGS=-I$(IDIR)


IDIR =./include
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

SRCS = $(wildcard *.c)
OBJS = $(SRCS: .c=.o)

$(TARGET): $(OBJS) $(DEPS)
	$(CC) --std=c11 -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o $(TARGET)

