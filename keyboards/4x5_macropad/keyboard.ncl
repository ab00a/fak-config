let { ColToRowKey, .. } = import "fak/keyboard.ncl" in
let { CH552G, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552G,
  matrix = {
    cols = [15, 16, 17, 11],
    rows = [32, 31, 30, 34, 33]
  },
  usb_dev = {
    vendor_id = 51966,  # 0xCAFE
    product_id = 47806, # 0xBABE
    product_ver = 256,  # 0x0100
  },
  keys =
    let M = ColToRowKey in
    [
      M 0 0, M 1 0, M 2 0, M 3 0,
      M 0 1, M 1 1, M 2 1, M 3 1,
      M 0 2, M 1 2, M 2 2, M 3 2,
      M 0 3, M 1 3, M 2 3, M 3 3,
      M 0 4, M 1 4, M 2 4, M 3 4,
    ]
}