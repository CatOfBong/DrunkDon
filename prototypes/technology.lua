local mini_trains_technology = data.raw["technology"]["mini-trains"]

local train_stop_research = data.raw["technology"]["automated-rail-transportation"]
train_stop_research.prerequisites = { "mini-trains" }

local train_signal_research = data.raw["technology"]["rail-signals"]

if settings.startup["minitrains_before_green_science"].value == true then
    mini_trains_technology.prerequisites = { "logistics", "steel-processing" }
    mini_trains_technology.unit =
    {
        count = 200,
        ingredients =
        {
            { "automation-science-pack", 1 },
        },
        time = 30
    }
    train_stop_research.unit.ingredients = { { "automation-science-pack", 1 } }
--    train_signal_research.unit.ingredients = { { "automation-science-pack", 1 } }
else 

    mini_trains_technology.prerequisites = { "py-science-pack-mk01" }
    mini_trains_technology.unit =
    {
        count = 120,
        ingredients = { { "automation-science-pack", 2 }, { "py-science-pack-1", 1 } },
        time = 45
    }
    train_stop_research.unit.ingredients = { { "automation-science-pack", 2 }, { "py-science-pack-1", 1 } }
--    train_signal_research.unit.ingredients = { { "automation-science-pack", 2 }, { "py-science-pack-1", 1 } }
end

mini_trains_technology.effects =
{
    {
        type = "unlock-recipe",
        recipe = "rail"
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
for k, v in pairs(railway_research.effects) do
    if v.type == "unlock-recipe" and v.recipe == "rail" then
        table.remove(railway_research.effects, k)
    end
end