let { tap, hold, .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
let me = tap.custom.media in

# Keymap definition
{
  layers = [
    [ # Layer 0
      kc.NUM_LOCK,     kc.KP_SLASH,  kc.KP_ASTERISK,  me.MUTE,
      kc.KP_7,         kc.KP_8,      kc.KP_9,         kc.KP_MINUS,
      kc.KP_4,         kc.KP_5,      kc.KP_6,         kc.KP_PLUS,
      kc.KP_1,         kc.KP_2,      kc.KP_3,         kc.ENTER,
      tap.layer.TG 1,  kc.KP_0,      kc.KP_DOT,       hold.reg.layer 1,

    ],
    [ # Layer 1
      kc.F10,          kc.F11,       kc.F12,          me.MUTE,
      kc.F7,           kc.F8,        kc.F9,           me.VOLU,
      kc.F4,           kc.F5,        kc.F6,           me.VOLD,
      kc.F1,           kc.F2,        kc.F3,           kc.KP_EQUAL,
      tap.layer.TG 1,  kc.ESC,       kc.BACKSPACE,    hold.reg.layer 0,

    ],
  ]
}
