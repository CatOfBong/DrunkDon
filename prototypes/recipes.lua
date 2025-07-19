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

RECIPE("mini-locomotive"):remove_ingredient("engine-unit"):add_ingredient {type = "item", name = "steam-engine", amount = 2}:add_ingredient {type = "item", name = "small-parts-01", amount = 10}:add_ingredient {type = "item", name = "pipe", amount = 10}:add_ingredient {type = "item", name = "duralumin", amount = 10}
RECIPE("mini-cargo-wagon"):add_ingredient {type = "item", name = "duralumin", amount = 5}:add_ingredient {type = "item", name = "titanium-plate", amount = 20}
RECIPE("mini-fluid-wagon"):add_ingredient {type = "item", name = "duralumin", amount = 5}:add_ingredient {type = "item", name = "titanium-plate", amount = 20}:add_ingredient {type = "item", name = "py-tank-1000", amount = 1}
