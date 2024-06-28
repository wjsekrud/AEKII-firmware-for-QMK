MCU = atmega32
F_CPU = 16000000

BOOTLOADER = bootloadHID
BOOTLOADER_SIZE = 4096

OPT_DEFS += -DBOOTLOADER_SIZE=$(BOOTLOADER_SIZE)

VPATH += keyboards/aekii

# Build Options
#   comment out to disable the options.
#
BOOTMAGIC_ENABLE = lite	# Virtual DIP switch configuration
MOUSEKEY_ENABLE = yes	# Mouse keys
EXTRAKEY_ENABLE = yes	# Audio control and System control
CONSOLE_ENABLE = yes	# Console for debug
COMMAND_ENABLE = yes    # Commands for debug and configuration
SLEEP_LED_ENABLE = no   # Breathing sleep LED during USB suspend
NKRO_ENABLE = no	    # USB Nkey Rollover
BACKLIGHT_ENABLE = no
RGBLIGHT_ENABLE = no
