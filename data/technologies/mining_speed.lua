local name = shared.mining_speed_technology

local levels =
{
  [1] =
  {
    {"automation-science-pack", 1},
  },
  [2] =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
  },
  [3] =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
  },
  [4] =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
  },
  [5] =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
  }
}

for k, ingredients in pairs (levels) do

  local technology =
  {
    name = name.."-"..k,
    localised_name = {name},
    type = "technology",
    icons =
    {
      {
        icon = "__Mining_Drones__/thumbnail.png",
        icon_size = 460,
        icon_mipmaps = 0,
      },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-movement-speed.png",
        icon_size = 128,
        scale = 2,
        icon_mipmaps = 3,
        shift = {180, 180}
      }
    },
    upgrade = true,
    effects =
    {
      {
        type = "nothing",
        effect_description = "Mining drone mining speed: +20%",
        icons =
        {
          {
            icon = "__core__/graphics/icons/technology/constants/constant-speed.png",
            icon_size = 128,
            icon_mipmaps = 3
          }
        }
      },
      {
        type = "nothing",
        effect_description = "Mining drone walking speed: +20%",
        icons =
        {
          {
            icon = "__core__/graphics/icons/technology/constants/constant-movement-speed.png",
            icon_size = 128,
            icon_mipmaps = 3
          }
        }
      },
      {
        type = "nothing",
        effect_description = "Mining drone cargo bonus: +1",
        icons =
        {
          {
            icon = "__core__/graphics/icons/technology/constants/constant-capacity.png",
            icon_size = 128,
            icon_mipmaps = 3
          }
        }
      },
    },
    prerequisites = k > 1 and {name.."-"..k - 1} or {},
    unit =
    {
      count = k * 100,
      ingredients = ingredients,
      time = 30
    },
    order = name
  }
  data:extend{technology}
end


local k = #levels + 1

local infinite =
{
  name = name.."-"..k,
  localised_name = {name},
  type = "technology",
  icons =
  {
    {
      icon = "__Mining_Drones__/thumbnail.png",
      icon_size = 460,
      icon_mipmaps = 0,
    },
    {
      icon = "__core__/graphics/icons/technology/constants/constant-movement-speed.png",
      icon_size = 128,
      scale = 2,
      icon_mipmaps = 3,
      shift = {180, 180}
    }
  },
  upgrade = true,
  effects =
  {
    {
      type = "nothing",
      effect_description = "Mining drone mining speed: +20%",
      icons =
      {
        {
          icon = "__core__/graphics/icons/technology/constants/constant-speed.png",
          icon_size = 128,
          icon_mipmaps = 3
        }
      }
    },
    {
      type = "nothing",
      effect_description = "Mining drone walking speed: +20%",
      icons =
      {
        {
          icon = "__core__/graphics/icons/technology/constants/constant-movement-speed.png",
          icon_size = 128,
          icon_mipmaps = 3
        }
      }
    },
    {
      type = "nothing",
      effect_description = "Mining drone cargo bonus: +1",
      icons =
      {
        {
          icon = "__core__/graphics/icons/technology/constants/constant-capacity.png",
          icon_size = 128,
          icon_mipmaps = 3
        }
      }
    },
  },
  prerequisites = k > 1 and {name.."-"..k - 1} or {},
  unit =
  {
    count_formula = "(2^(L-6))*500",
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1},
      {"utility-science-pack", 1},
      {"space-science-pack", 1},
    },
    time = 30
  },
  order = name,
  max_level = "infinite"
}
data:extend{infinite}