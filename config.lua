--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
Language = 'en'  -- Languages: en - es - ru - pt - fr - de - it
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Stores = {
  {Store = 'Valentine', Coords = {x = -321.89, y = 803.99, z = 117.88}},
  {Store = 'Saint Denis', Coords = {x = 2825.74, y = -1317.91, z = 46.76}},
  {Store = 'Blackwater', Coords = {x = -784.50, y = -1324.07, z = 43.88}},
  {Store = 'Tumbleweed', Coords = {x = -5487.4, y = -2935.80, z = -0.40}}
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- These are the items that will appear in the buy section of the menu.
-- Be aware, items you buy need to be in the database as vorp wants it.
-- Items that can not be used can be added via my plugin DevDokus--UsableItems
-- TYPE: There are 3 types (Food - Meds - Misc) more will be added in a later update.
Buy = {
  {ID = 'consumable_peach', Type = 'Food', Name = 'Peach', Price = 1.0, Max = 5, Text = 'Very good for your health'},
  {ID = 'consumable_coffee', Type = 'Food', Name = 'Coffee', Price = 1.0, Max = 5, Text = 'A fine brown brew'},
  {ID = 'consumable_meat_greavy', Type = 'Food', Name = 'Cooked Meat', Price = 2.5, Max = 5, Text = 'Cooked Meat free from pests'},
  {ID = 'consumable_salmon_can', Type = 'Food', Name = 'Can Salmon', Price = 1.5, Max = 5, Text = 'Salmon from a can, really?'},
  {ID = 'consumable_medicine', Type = 'Meds', Name = 'Medicine', Price = 15.0, Max = 5, Text = 'When you just need to feel better!'},
  {ID = 'campfire', Type = 'Misc', Name = 'campfire', Price = 12.0, Max = 1, Text = 'Then he said: Let there be light!'},
  {ID = 'tent', Type = 'Misc', Name = 'tent', Price = 120.0, Max = 1, Text = 'For the softies'},
  {ID = 'weapon_fishingrod', Type = 'Misc', Name = 'Fishing Rod', Price = 15.0, Max = 1, Text = 'There\'s no fishing without'},
  {ID = 'bait', Type = 'Misc', Name = 'Fishing Bait', Price = 1.25, Max = 10, Text = 'Fish need to eat something you know!'},
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- These are the items that will appear in the sell section of the menu.
-- Any item can be added to the list and it does not need to be in the database.
-- As long the items is on the list by its item name id, it will work.
Sell = {
  {ID = 'consumable_peach', Type = 'Food', Name = 'Peach', Price = 0.25, Text = 'Sell Peach'},
  {ID = 'consumable_coffee', Type = 'Food', Name = 'Coffee', Price = 0.55, Text = 'Sell Coffee'},
  {ID = 'consumable_kidneybeans_can', Type = 'Food', Name = 'Can Kidney Beans', Price = 0.75, Text = 'Sell Bean Can'},
  {ID = 'consumable_meat_greavy', Type = 'Food', Name = 'Cooked Meat', Price = 0.80, Text = 'Sell Cooked Meat'},
  {ID = 'consumable_salmon_can', Type = 'Food', Name = 'Can Salmon', Price = 0.85, Text = 'Sell Can Salmon'},
  {ID = 'consumable_medicine', Type = 'Meds', Name = 'Medicine', Price = 7.50, Text = 'Sell Medicine'},
  {ID = 'campfire', Type = 'Misc', Name = 'campfire', Price = 5.00, Text = 'Sell Campfire'},
  {ID = 'tent', Type = 'Misc', Name = 'tent', Price = 75.0, Text = 'Sell Tent '},
  {ID = 'consumable_haycube', Type = 'Misc', Name = 'HayCube', Price = 30.0, Text = 'Sell HayCube '},
  {ID = 'weapon_fishingrod', Type = 'Misc', Name = 'Fishing Rod', Price = 5.0, Text = 'Sell Fishing Rod '},
  {ID = 'bait', Type = 'Misc', Name = 'Fishing Bait', Price = 0.5, Text = 'Sell Fishing Bait'},
  {ID = 'wooden_boards', Type = 'Misc', Name = 'Wooden Board', Price = 0.75, Text = 'Fresh Smelling Wooden Board'},
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Keys = {
  -- Mouse buttons
  ["MOUSE1"] = 0x07CE1E61, ["MOUSE2"] = 0xF84FA74F, ["MOUSE3"] = 0xCEE12B50, ["MWUP"] = 0x3076E97C,
  -- keyboard
  ["A"] = 0x7065027D, ["B"] = 0x4CC0E2FE, ["C"] = 0x9959A6F0, ["D"] = 0xB4E465B4, ["E"] = 0xCEFD9220,
  ["F"] = 0xB2F377E8, ["G"] = 0x760A9C6F, ["H"] = 0x24978A28, ["I"] = 0xC1989F95, ["J"] = 0xF3830D8E,
  ["L"] = 0x80F28E95, ["M"] = 0xE31C6A41, ["N"] = 0x4BC9DABB, ["O"] = 0xF1301666, ["P"] = 0xD82E0BD2,
  ["Q"] = 0xDE794E3E, ["R"] = 0xE30CD707, ["S"] = 0xD27782E3, ["U"] = 0xD8F73058, ["V"] = 0x7F8D09B8,
  ["W"] = 0x8FD015D8, ["X"] = 0x8CC9CD42, ["Z"] = 0x26E9DC00, ["RIGHTBRACKET"] = 0xA5BDCD3C,
  ["LEFTBRACKET"] = 0x430593AA, ["CTRL"] = 0xDB096B85, ["TAB"] = 0xB238FE0B, ["SHIFT"] = 0x8FFC75D6,
  ["SPACEBAR"] = 0xD9D0E1C0, ["ENTER"] = 0xC7B5340A, ["BACKSPACE"] = 0x156F7119, ["LALT"] = 0x8AAA0AD4,
  ["DEL"] = 0x4AF4D473, ["PGUP"] = 0x446258B6, ["PGDN"] = 0x3C3DD371, ["F1"] = 0xA8E3F467,
  ["F4"] = 0x1F6D95E5, ["F6"] = 0x3C0A40F2,  ["1"] = 0xE6F612E4, ["2"] = 0x1CE6D9EB, ["3"] = 0x4F49CC4C,
  ["4"] = 0x8F9F9E58, ["5"] = 0xAB62E997, ["6"] = 0xA1FDE2A6, ["7"] = 0xB03A913B, ["8"] = 0x42385422,
  ["DOWN"] = 0x05CA7C52, ["UP"] = 0x6319DB71, ["LEFT"] = 0xA65EBAB4, ["RIGHT"] = 0xDEB34313,
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
