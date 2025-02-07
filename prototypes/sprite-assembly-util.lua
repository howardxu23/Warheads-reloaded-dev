
local tints = {
  californium = {a=1, b = 0.1, g = 1, r = 0.95, l=true},
  uraniumLive = {a=1, b = 0.1, g = 1, r = 0.3, l=true},
  uraniumDead = {a=1, b = 0.15, g = 0.4, r = 0.15},
  tritium = {a=1, b = 0.95, g = 0.95, r = 0.15, l=true},
  nothing = {a=1, b = 0.5, g = 0.5, r = 0.5},
  lightNothing = {a=1, b = 0.95, g = 0.95, r = 0.95},
  explosive = {a=1, b = 0.1, g = 0.1, r = 0.9},
  flamable = {a=1, b = 0.1, g = 0.4, r = 0.9},
}

local sprite_types = {
  artillery = {
    {
      base = "__base__/graphics/icons/artillery-shell.png"
    },
    {
      sections = {
        sprite("artillery/artillery-shell-tip.png"),
      },
      lights = {
        sprite("artillery/artillery-shell-tip.png"),
      },
      final = sprite("artillery/artillery-shell-base.png")
    },
    {
      base = sprite("artillery/artillery-shell-ring-1-base-left.png"),
      sections = {
        sprite("artillery/artillery-shell-tip.png"),
        sprite("artillery/artillery-shell-ring-1.png")
      },
      lights = {
        sprite("artillery/artillery-shell-tip.png"),
        sprite("artillery/artillery-shell-ring-1.png")
      },
      final = sprite("artillery/artillery-shell-ring-1-base-right.png")
    },
    {
      base = sprite("artillery/artillery-shell-ring-2-base-left.png"),
      sections = {
        sprite("artillery/artillery-shell-tip.png"),
        sprite("artillery/artillery-shell-ring-1.png"),
        sprite("artillery/artillery-shell-ring-2.png")
      },
      lights = {
        sprite("artillery/artillery-shell-tip.png"),
        sprite("artillery/artillery-shell-ring-1.png"),
        sprite("artillery/artillery-shell-ring-2.png")
      },
      final = sprite("artillery/artillery-shell-ring-2-base-right.png")
    },
    {
      base = sprite("artillery/artillery-shell-ring-fat-base-left.png"),
      sections = {
        sprite("artillery/artillery-shell-tip.png"),
        sprite("artillery/artillery-shell-ring-fat.png")
      },
      lights = {
        sprite("artillery/artillery-shell-tip.png"),
        sprite("artillery/artillery-shell-ring-fat.png")
      },
      final = sprite("artillery/artillery-shell-ring-fat-base-right.png"),
    },
  },
  cannon = {
    {
      base = sprite("cannon/cannon-shell-base.png")
    },
    {
      base = sprite("cannon/cannon-shell-base.png"),
      sections = {
        sprite("cannon/cannon-shell-tip.png"),
      },
      lights = {
        sprite("cannon/cannon-shell-tip.png"),
      },
      final = sprite("cannon/cannon-shell-base-top.png")
    },
    {
      base = sprite("cannon/cannon-shell-base.png"),
      sections = {
        sprite("cannon/cannon-shell-edge.png"),
      },
      lights = {
        sprite("cannon/cannon-shell-edge.png"),
      },
      final = sprite("cannon/cannon-shell-base-top.png")
    },
    {
      base = sprite("cannon/cannon-shell-base.png"),
      sections = {
        sprite("cannon/cannon-shell-tip.png"),
        sprite("cannon/cannon-shell-edge.png"),
      },
      lights = {
        sprite("cannon/cannon-shell-tip.png"),
        sprite("cannon/cannon-shell-edge.png"),
      },
      final = sprite("cannon/cannon-shell-base-top.png")
    },
  },
  rocket = {
    {
      base = sprite("rockets/rocket.png")
    },
    {
      base = {
        sprite("rockets/rocket-fins.png"),
      },
      sections = {
        sprite("rockets/rocket-tip.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
      },
      final = {
        sprite("rockets/rocket-ring-1.png"),
        sprite("rockets/rocket-ring-2.png"),
        sprite("rockets/rocket-ring-3.png"),
        sprite("rockets/rocket-engine.png"),
      },
    },
    {
      base = {
        sprite("rockets/rocket-fins.png"),
      },
      sections = {
        sprite("rockets/rocket-tip.png"),
        sprite("rockets/rocket-ring-1.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
        sprite("rockets/rocket-ring-1-light.png"),
      },
      final = {
        sprite("rockets/rocket-ring-2.png"),
        sprite("rockets/rocket-ring-3.png"),
        sprite("rockets/rocket-engine.png"),
      },
    },
    {
      base = {
        sprite("rockets/rocket-fins.png"),
      },
      sections = {
        sprite("rockets/rocket-tip.png"),
        sprite("rockets/rocket-ring-1.png"),
        sprite("rockets/rocket-ring-2.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
        sprite("rockets/rocket-ring-1-light.png"),
        sprite("rockets/rocket-ring-2-light.png"),
      },
      final = {
        sprite("rockets/rocket-ring-3.png"),
        sprite("rockets/rocket-engine.png"),
      },
    },
    {
      base = {
        sprite("rockets/rocket-fins.png"),
      },
      sections = {
        sprite("rockets/rocket-tip.png"),
        sprite("rockets/rocket-ring-1.png"),
        sprite("rockets/rocket-ring-2.png"),
        sprite("rockets/rocket-ring-3.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
        sprite("rockets/rocket-ring-1-light.png"),
        sprite("rockets/rocket-ring-2-light.png"),
        sprite("rockets/rocket-ring-3.png"),
      },
      final = {
        sprite("rockets/rocket-engine.png"),
      },
    },
    {
      base = sprite("rockets/rocket-fins.png"),
      sections = {
        sprite("rockets/rocket-tip.png"),
        sprite("rockets/rocket-ring-1.png"),
        sprite("rockets/rocket-ring-2.png"),
        sprite("rockets/rocket-ring-3.png"),
        sprite("rockets/rocket-engine.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
        sprite("rockets/rocket-ring-1-light.png"),
        sprite("rockets/rocket-ring-2-light.png"),
        sprite("rockets/rocket-ring-3.png"),
        sprite("rockets/rocket-engine.png"),
      }
    },
  },
  rocket_big = {
    {
      base = {
        sprite("rockets/rocket-fins.png"),
        {icon = sprite("rockets/rocket-tip.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-ring-1.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-ring-2.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-ring-3.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-engine.png"), size = 64, tint = tints.explosive}
      }
    },
    {
      base = {
        sprite("rockets/rocket-fins.png"),
      },
      sections = {
        sprite("rockets/rocket-tip.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
      },
      final = {
        {icon = sprite("rockets/rocket-ring-1.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-ring-2.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-ring-3.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-engine.png"), size = 64, tint = tints.explosive}
      },
    },
    {
      base = {
        sprite("rockets/rocket-fins.png"),
      },
      sections = {
        sprite("rockets/rocket-tip.png"),
        sprite("rockets/rocket-ring-1.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
        sprite("rockets/rocket-ring-1-light.png"),
      },
      final = {
        {icon = sprite("rockets/rocket-ring-2.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-ring-3.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-engine.png"), size = 64, tint = tints.explosive}
      },
    },
    {
      base = {
        sprite("rockets/rocket-fins.png"),
      },
      sections = {
        sprite("rockets/rocket-tip.png"),
        sprite("rockets/rocket-ring-1.png"),
        sprite("rockets/rocket-ring-2.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
        sprite("rockets/rocket-ring-1-light.png"),
        sprite("rockets/rocket-ring-2-light.png"),
      },
      final = {
        {icon = sprite("rockets/rocket-ring-3.png"), size = 64, tint = tints.nothing},
        {icon = sprite("rockets/rocket-engine.png"), size = 64, tint = tints.explosive}
      },
    },
    {
      base = {
        sprite("rockets/rocket-fins.png"),
      },
      sections = {
        sprite("rockets/rocket-tip.png"),
        sprite("rockets/rocket-ring-1.png"),
        sprite("rockets/rocket-ring-2.png"),
        sprite("rockets/rocket-ring-3.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
        sprite("rockets/rocket-ring-1-light.png"),
        sprite("rockets/rocket-ring-2-light.png"),
        sprite("rockets/rocket-ring-3.png"),
      },
      final = {
        {icon = sprite("rockets/rocket-engine.png"), size = 64, tint = tints.explosive}
      },
    },
    {
      base = sprite("rockets/rocket-fins.png"),
      sections = {
        sprite("rockets/rocket-tip.png"),
        sprite("rockets/rocket-ring-1.png"),
        sprite("rockets/rocket-ring-2.png"),
        sprite("rockets/rocket-ring-3.png"),
        sprite("rockets/rocket-engine.png"),
      },
      lights = {
        sprite("rockets/rocket-tip-light.png"),
        sprite("rockets/rocket-ring-1-light.png"),
        sprite("rockets/rocket-ring-2-light.png"),
        sprite("rockets/rocket-ring-3.png"),
        sprite("rockets/rocket-engine.png"),
      }
    },
  },
  rounds = {
    {
      base = sprite("rounds/rounds-blank.png"),
      sections = {
        sprite("rounds/rounds-end.png"),
      },
      lights = {
        sprite("rounds/rounds-end.png"),
      }
    },
    {
      base = sprite("rounds/rounds-blank.png"),
      sections = {
        sprite("rounds/rounds-end.png"),
        sprite("rounds/rounds-middle.png"),
      },
      lights = {
        sprite("rounds/rounds-end.png"),
        sprite("rounds/rounds-middle.png"),
      }
    }
  },
  shotgun = {
    {
      sections = {
        sprite("shotgun/shotgun-shell.png"),
      },
      final = sprite("shotgun/shotgun-base.png"),
    },
    {
      sections = {
        sprite("shotgun/piercing-shotgun-shell.png"),
        sprite("shotgun/piercing-top.png"),
      },
      final = {
        sprite("shotgun/shotgun-under.png"),
        sprite("shotgun/shotgun-base.png"),
      },
    },
    {
      sections = {
        sprite("shotgun/piercing-shotgun-shell.png"),
        sprite("shotgun/frag-top.png"),
      },
      final = sprite("shotgun/shotgun-base.png"),
    }
  },
  nuclear_core = {
    {
      base = sprite("warheads/sphere-1-base.png"),
      sections = {
        sprite("warheads/sphere-1-top.png"),
        sprite("warheads/sphere-1-ring-part-1.png"),
        sprite("warheads/sphere-1-ring-part-2.png"),
      },
      lights = {
        sprite("warheads/sphere-1-top-light.png"),
        sprite("warheads/sphere-1-ring-part-1-light.png"),
        sprite("warheads/sphere-1-ring-part-2-light.png"),
      }
    }
  },
  can_1 = {
    {
      base = sprite("warheads/can-1-body-1.png"),
    },
    {
      base = sprite("warheads/can-1-body-2.png"),
      sections = {
        sprite("warheads/can-1-body-2.png"),
        sprite("warheads/can-1-top.png")
      },
    },
    {
      base = sprite("warheads/can-1-body-3.png"),
      sections = {
        sprite("warheads/can-1-ring-1.png")
      },
    },
    {
      base = sprite("warheads/can-1-body-4.png"),
      sections = {
        sprite("warheads/can-1-top.png"),
        sprite("warheads/can-1-ring-1.png")
      },
    },
    {
      base = sprite("warheads/can-1-body-5.png"),
      sections = {
        sprite("warheads/can-1-ring-1.png"),
        sprite("warheads/can-1-ring-2.png")
      },
    },
    {
      base = sprite("warheads/can-1-body-6.png"),
      sections = {
        sprite("warheads/can-1-top.png"),
        sprite("warheads/can-1-ring-1.png"),
        sprite("warheads/can-1-ring-2.png")
      },
    },
  },
  can_2 = {
    {
      base = sprite("warheads/can-2-body-1.png")
    },
    {
      base = sprite("warheads/can-2-body-1.png"),
      sections = {
        sprite("warheads/can-2-ring-1.png")
      },
      final = sprite("warheads/can-2-body-final.png"),
    },
  },
  can_3 = {
    {
      base = sprite("warheads/can-3-body.png"),
      sections = {
        sprite("warheads/can-3-ring.png")
      },
      final = sprite("warheads/can-3-final.png"),
    },
  }
}

local function isolatePointer(thing)
  if(type(thing) == "table") then
    local section = table.deepcopy(thing)
    return section
  else
    return thing
  end
end

local function createAppearance(setup)
  local result = {}
  result.icons = {}
  result.lights = {}
  local sprites = setup.sprite_types or sprite_types
  local sprite_type = sprites[setup.type]
  local style = sprite_type[setup.style or 1]

  local text_location = setup.text_location or sprite("warheads/")

  if(style.base) then
    if(type(style.base) == "table" and not style.base.icon) then
      for _,s in pairs(style.base) do
        table.insert(result.icons, isolatePointer(s))
      end
    else
      table.insert(result.icons, isolatePointer(style.base))
    end
  end
  if(style.sections) then
    local styleLights = style.lights or style.sections
    for i,s in ipairs(style.sections) do
      if(setup.tints[i].l or setup.tints[i].light) then
        table.insert(result.lights, isolatePointer(styleLights[i]))
      end
      if(type(s) == "table") then
        local section = table.deepcopy(s)
        section.tint = setup.tints[i]
        table.insert(result.icons, section)
      else
        table.insert(result.icons, {
          icon = s,
          icon_size = 64,
          tint = setup.tints[i]
        })
      end
    end
  end
  if(style.final) then
    if(type(style.final) == "table" and not style.final.icon) then
      for _,s in pairs(style.final) do
        table.insert(result.icons, isolatePointer(s))
      end
    else
      table.insert(result.icons, isolatePointer(style.final))
    end
  end
  if(setup.text) then
    table.insert(result.icons, {
      icon_size = 128,
      icon = text_location .. "text_" .. setup.text .. ".png",
      scale = 0.25,
      shift = {0, -16},
      special = true
    })
    -- not a light, but kind of treated like one
    table.insert(result.lights, {
      size = 128,
      filename = text_location .. "text_" .. setup.text .. ".png",
      scale = 0.125,
      shift = {0, -0.5},
      special = true
    })
  end
  return result
end

local function setupWarheadsForWeapon(setup)
  local sprites = setup.sprite_types or sprite_types
  local sprite_type = sprites[setup.type]
  local weapontype = setup.weapon
  local text_location = setup.text_location or sprite("warheads/")

  for w,v in pairs(setup.warheads) do
    if(weaponTypes[weapontype]) then
      local style = sprite_type[v.style or 1]
      local result = createAppearance({sprite_types = sprites, type = setup.type, style = v.style, tints = v.tints, text = v.text})
      weaponTypes[weapontype].icons[w] = result.icons
      weaponTypes[weapontype].lights[w] = result.lights
    end
  end
end
--{type = "artillery", weapon = "artillery-shell", warheads = {}}
--warheads[a] = {style = 1, tints = {}}











return {tints = tints, createAppearance = createAppearance, setupWarheadsForWeapon = setupWarheadsForWeapon}





