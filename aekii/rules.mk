MCU = atmega32a
F_CPU = 16000000

BOOTLOADER = bootloadhid
BOOTLOADER_SIZE = 4096

OPT_DEFS += -DBOOTLOADER_SIZE=$(BOOTLOADER_SIZE)
FORCE_LAYOUT=yes

# Build Options
#   comment out to disable the options.
#
#BOOTMAGIC_ENABLE = lite	# Virtual DIP switch configuration
MOUSEKEY_ENABLE = no	# Mouse keys
EXTRAKEY_ENABLE = yes	# Audio control and System control
CONSOLE_ENABLE = no	# Console for debug
COMMAND_ENABLE = yes    # Commands for debug and configuration
SLEEP_LED_ENABLE = no   # Breathing sleep LED during USB suspend
NKRO_ENABLE = no	    # USB Nkey Rollover
BACKLIGHT_ENABLE = no
RGBLIGHT_ENABLE = no
CUSTOM_MATRIX = lite
