local colors = require("colors")
local settings = require("settings")

local front_app = sbar.add("item", "front_app", {
  display = "active",
  icon = {
      font = {family = settings.font.numbers},
      padding_left = 15,
      padding_right = 15,
      color = colors.blue,
      highlight_color = colors.magenta,
  },
 -- label = {
 --   font = {
 --     padding_left = 15,
 --     padding_right = 15,
 --     style = settings.font.text,
 --     size = 13.0,
--    },
--  },
  updates = true,
})

front_app:subscribe("front_app_switched", function(env)
  front_app:set({ icon = { string = env.INFO } })
end)

front_app:subscribe("mouse.clicked", function(env)
  sbar.trigger("swap_menus_and_spaces")
end)
