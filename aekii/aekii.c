#include "aekii.h"

static bool power_button_pressed = false;

void keyboard_pre_init_kb(void) {

    setPinInputHigh(CAPS_LOCK_PIN);
    
    setPinOutput(CAPS_LOCK_LED_PIN);
    setPinOutput(NUM_LOCK_LED_PIN);
    setPinOutput(SCROLL_LOCK_LED_PIN);
    
    keyboard_pre_init_user();
}

bool led_update_kb(led_t led_state) {
    bool res = led_update_user(led_state);
    if (res) {

        writePin(CAPS_LOCK_LED_PIN, led_state.caps_lock);
        writePin(NUM_LOCK_LED_PIN, led_state.num_lock);
        writePin(SCROLL_LOCK_LED_PIN, led_state.scroll_lock);
    }
    return res;
}

void matrix_scan_kb(void) {
    static bool caps_lock_pressed = false;
    bool caps_lock_current = !readPin(CAPS_LOCK_PIN);  

    if (caps_lock_current != caps_lock_pressed) {
        if (caps_lock_current) {

            tap_code(KC_LCAP);
        }
        caps_lock_pressed = caps_lock_current;
    }
    
    bool power_button_current = !readPin(POWER_BUTTON_PIN);
    if (power_button_current != power_button_pressed) {
        if (power_button_current) {
            SEND_STRING(SS_LALT(SS_TAP(X_F4)));
        }
        power_button_pressed = power_button_current;
    }
    matrix_scan_user();
}

void keyboard_post_init_kb(void) {

    led_t led_state = host_keyboard_led_state();
    writePin(CAPS_LOCK_LED_PIN, led_state.caps_lock);
    writePin(NUM_LOCK_LED_PIN, led_state.num_lock);
    writePin(SCROLL_LOCK_LED_PIN, led_state.scroll_lock);

    keyboard_post_init_user();
}
