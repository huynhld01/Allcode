KERNEL_HEADERS=/lib/modules/$(shell uname -r)/build

ccflags-y += -std=gnu11
obj-m += my_lcd5110.o

all:
	make -C $(KERNEL_HEADERS) M=$(PWD) modules

clean:
	make -C $(KERNEL_HEADERS) M=$(PWD) clean
