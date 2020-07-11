APP = hts221-sensor

# Add any other object files to this list below
APP_OBJS = hts221-sensor.o

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS)

