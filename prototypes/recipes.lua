--local locom = data.raw["recipe"]["mini-locomotive"].ingredients
--local wagon = data.raw["recipe"]["mini-cargo-wagon"].ingredients
--local fluid = data.raw["recipe"]["mini-fluid-wagon"].ingredients

--RECIPE("mini-locomotive"):remove_ingredient("engine-unit")

--table.insert(locom, { "steam-engine", 2 })
--table.insert(locom, { "small-parts-01", 10 })
--table.insert(locom, { "pipe", 10 })
--table.insert(locom, { "duralumin", 10 })

--table.insert(wagon, { "duralumin", 5 })
--table.insert(wagon, { "titanium-plate", 20 })

--table.insert(fluid, { "duralumin", 5 })
--table.insert(fluid, { "titanium-plate", 20 })
--table.insert(fluid, { "py-tank-1000", 1 })

RECIPE("mini-locomotive"):remove_ingredient("engine-unit"):remove_ingredient("electronic-circuit"):add_ingredient { type = "item", name = "steam-engine", amount = 2 }
    :add_ingredient { type = "item", name = "electronic-circuit", amount = 2 }:add_ingredient { type = "item", name = "small-parts-01", amount = 10 }
    :add_ingredient { type = "item", name = "pipe", amount = 10 }:add_ingredient { type = "item", name = "duralumin", amount = 10 }
RECIPE("mini-cargo-wagon"):add_ingredient { type = "item", name = "duralumin", amount = 5 }:add_ingredient { type = "item", name = "titanium-plate", amount = 20 }
RECIPE("mini-fluid-wagon"):add_ingredient { type = "item", name = "duralumin", amount = 5 }:add_ingredient { type = "item", name = "titanium-plate", amount = 20 }
    :add_ingredient { type = "item", name = "py-tank-1000", amount = 1 }




local early_rails = {
    category = "crafting-with-fluid",
    type = "recipe",
    name = "early_rails",
    enabled = false,
    energy_required = 1,
    localised_name = "Early Rails",
    icon = "__base__/graphics/icons/rail.png",
    localised_description = "Very shitty rails recipe. Use only in early game",

    ingredients =
    {
        { type = "item",  name = "log",       amount = 4 },
        { type = "item",  name = "steel-plate", amount = 2 },
        { type = "item",  name = "stone",     amount = 2 },
        { type = "item",  name = "bolts",     amount = 8 },
        { type = "fluid", name = "water",     amount = 29 }
    },
    results = { { type = "item", name = "rail", amount = 10, probability = 0.5 }, { type = "item", name = "sand", amount = 10, probability = 0.276536283529}, { type = "fluid", name = "steam", amount = 31, temperature = 2000, probability = 0.8766 } },
    auto_recycle = false
}
data:extend({ early_rails })
