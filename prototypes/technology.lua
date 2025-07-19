local mini_trains_technology = data.raw["technology"]["mini-trains"]

local train_stop_research = data.raw["technology"]["automated-rail-transportation"]
train_stop_research.prerequisites = { "mini-trains" }

local train_signal_research = data.raw["technology"]["rail-signals"]

mini_trains_technology.prerequisites = { "logistics", "steel-processing" }
mini_trains_technology.unit =
{
    count = 100,
    ingredients =
    {
        { "automation-science-pack", 1 },
    },
    time = 30
}
train_stop_research.unit.ingredients = { { "automation-science-pack", 1 } }
mini_trains_technology.effects =
{
    {
        type = "unlock-recipe",
        recipe = "early_rails"
    },
    {
        type = "unlock-recipe",
        recipe = "mini-locomotive"
    },
    {
        type = "unlock-recipe",
        recipe = "mini-cargo-wagon"
    },
    {
        type = "unlock-recipe",
        recipe = "mini-fluid-wagon"
    },
}

-- make regular trains research locked by mini trains and delete rails from research as it was already unlocked in mini trains
local railway_research = data.raw["technology"]["railway"]
table.insert(railway_research.prerequisites, "mini-trains")


data:extend({
    {

      type = "technology",
      name = "elevated-rail",
      icon = "__elevated-rails__/graphics/technology/elevated-rail.png",
      icon_size = 256,
      prerequisites = {"mini-trains"},
      unit = {
        count = 83,
        ingredients = {
          {"automation-science-pack", 2},
          {"py-science-pack-1", 1}
        },
        time = 37
      },
      enabled = true,
      hidden = false
}})
