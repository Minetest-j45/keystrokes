local huds = {}

local keys
local keys_54 = {"up", "left", "down", "right", "jump", "place", "dig", "aux1", "sneak"}
local keys_pre54 = {"up", "left", "down", "right", "jump", "RMB", "LMB", "aux1", "sneak"}

local huddefs
local huddefs_54 = {
  up = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 0, y = 0}, text = "w_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  left = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 33}, text = "a_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  down = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 0, y = 33}, text = "s_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  right = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 33, y = 33}, text = "d_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  jump = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 99}, text = "space_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  place = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 17, y = 66}, text = "rmb_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  dig = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 66}, text = "lmb_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  aux1 = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 33, y = 0}, text = "e_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  sneak = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = -66, y = 33}, text = "shift_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
}
local huddefs_pre54 = {
  up = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 0, y = 0}, text = "w_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  left = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 33}, text = "a_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  down = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 0, y = 33}, text = "s_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  right = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 33, y = 33}, text = "d_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  jump = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 99}, text = "space_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  RMB = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 17, y = 66}, text = "rmb_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  LMB = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 66}, text = "lmb_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  aux1 = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = 33, y = 0}, text = "e_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
  sneak = {hud_elem_type = "image", position = {x = 0.5, y = 0.5}, offset = {x = -66, y = 33}, text = "shift_key.png", alignment = {x = 1, y = 1}, scale = {x = 2, y = 2}, number = 0xFFFFFF},
}
local image_press
local image_press_54 = {up = "w_key_press.png", left = "a_key_press.png", down = "s_key_press.png", right = "d_key_press.png", jump = "space_key_press.png", place = "rmb_key_press.png", dig = "lmb_key_press.png", aux1 = "e_key_press.png", sneak = "shift_key_press.png"}
local image_press_pre54 = {up = "w_key_press.png", left = "a_key_press.png", down = "s_key_press.png", right = "d_key_press.png", jump = "space_key_press.png", RMB = "rmb_key_press.png", LMB = "lmb_key_press.png", aux1 = "e_key_press.png", sneak = "shift_key_press.png"}
local image_normal
local image_normal_54 = {up = "w_key.png", left = "a_key.png", down = "s_key.png", right = "d_key.png", jump = "space_key.png", place = "rmb_key.png", dig = "lmb_key.png", aux1 = "e_key.png", sneak = "shift_key.png"}
local image_normal_pre54 = {up = "w_key.png", left = "a_key.png", down = "s_key.png", right = "d_key.png", jump = "space_key.png", RMB = "rmb_key.png", LMB = "lmb_key.png", aux1 = "e_key.png", sneak = "shift_key.png"}

local before = {}

local version = ""
local function getversion()
  local player = minetest.localplayer
  if not player:get_control().place then
    version = "pre5.4"
  else
    version = "5.4"
  end
end

local fps = ""
local function checkfps()
  minetest.register_globalstep(function(dtime)
    fps = math.floor(tostring(1/dtime))
  end)
end

local function check()
    if not minetest.localplayer then
      minetest.after(0, check)
      return
    end
    getversion()
    if version == "pre5.4" then
      keys = keys_pre54
      huddefs = huddefs_pre54
      image_press = image_press_pre54
      image_normal = image_normal_pre54
    else
      keys = keys_54
      huddefs = huddefs_54
      image_press = image_press_54
      image_normal = image_normal_54
    end
    rmbcps = minetest.localplayer:hud_add({hud_elem_type = "text", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 159}, text = "RMB CPS: 0", alignment = {x = 1, y = 1}, scale = {x = 1, y = 1}, number = 0xFFFFFF})
    lmbcps = minetest.localplayer:hud_add({hud_elem_type = "text", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 145}, text = "LMB CPS: 0", alignment = {x = 1, y = 1}, scale = {x = 1, y = 1}, number = 0xFFFFFF})
    checkfps()
    framesps = minetest.localplayer:hud_add({hud_elem_type = "text", position = {x = 0.5, y = 0.5}, offset = {x = -33, y = 131}, text = "FPS: " .. fps, alignment = {x = 1, y = 1}, scale = {x = 3, y = 3}, number = 0xFFFFFF})
    for _, key in ipairs(keys) do
      huds[key] = minetest.localplayer:hud_add(huddefs[key])
    end
end
minetest.after(0, check)

local timer = 0
minetest.register_globalstep(function(dtime)
  if minetest.localplayer then
	  timer = timer + dtime;
	  if timer >= 0.5 then
      checkfps()
		  minetest.localplayer:hud_change(framesps, "text", "FPS: " .. fps)
		  timer = 0
	  end
  end
end)

local rmbclicks = 0
local rmbpress = false
local rmbtimer = 0
minetest.register_globalstep(function(dtime)
    if not minetest.localplayer then return end
    local ctl = minetest.localplayer:get_control()
    if version == "pre5.4" then
        if ctl.RMB and not rmbpress then
            rmbclicks = rmbclicks + 1
        end
        rmbpress = ctl.RMB
    else
        if ctl.place and not rmbpress then
            rmbclicks = rmbclicks + 1
        end
        rmbpress = ctl.place
    end

    minetest.localplayer:hud_change(rmbcps, "text", "RMB CPS: " .. rmbclicks)

    rmbtimer = rmbtimer + dtime
    if rmbtimer >= 1 then
        rmbclicks = 0
        rmbtimer = 0
    end
end)

local lmbclicks = 0
local lmbpress = false
local lmbtimer = 0
minetest.register_globalstep(function(dtime)
    if not minetest.localplayer then return end
    local ctl = minetest.localplayer:get_control()
    if version == "pre5.4" then
        if ctl.LMB and not lmbpress then
            lmbclicks = lmbclicks + 1
        end
        lmbpress = ctl.LMB
    else
        if ctl.dig and not lmbpress then
           lmbclicks = lmbclicks + 1
        end
        lmbpress = ctl.dig
    end

    minetest.localplayer:hud_change(lmbcps, "text", "LMB CPS: " .. lmbclicks)

    lmbtimer = lmbtimer + dtime
    if lmbtimer >= 1 then
        lmbclicks = 0
        lmbtimer = 0
    end
end)

minetest.register_globalstep(function()
  if minetest.localplayer then
    local player = minetest.localplayer
    local controls = player:get_control()
    for _, key in ipairs(keys) do
      if controls[key] and not before[key] then -- performance optimisations included
        minetest.localplayer:hud_change(huds[key], "text", image_press[key])
        before[key] = true -- performance optimisations
      elseif not controls[key] and before[key] then -- performance optimisations
        minetest.localplayer:hud_change(huds[key], "text", image_normal[key])
        before[key] = false -- performance optimisations
      end
    end
  end
end)
