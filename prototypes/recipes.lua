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
local function change_ingredients(recipe_name, new_ingredients)
    -- Находим рецепт в данных
    local recipe = data.raw.recipe[recipe_name]
    
    if not recipe then
        error("Recipe '" .. recipe_name .. "' not found in data.raw.recipe")
        return
    end
    
    -- Обработка разных форматов рецептов
    if recipe.normal then
        -- Рецепты с разной сложностью (normal/expensive)
        recipe.normal.ingredients = new_ingredients
        if recipe.expensive then
            recipe.expensive.ingredients = new_ingredients
        end
    else
        -- Стандартные рецепты
        recipe.ingredients = new_ingredients
    end
end


-- Изменение результатов рецепта
local function change_results(recipe_name, new_results)
    local recipe = data.raw.recipe[recipe_name]
    if recipe.normal then
        recipe.normal.results = new_results
        if recipe.expensive then
            recipe.expensive.results = new_results
        end
    else
        recipe.results = new_results
    end
end

-- Изменение времени крафта
local function change_crafting_time(recipe_name, new_time)
    local recipe = data.raw.recipe[recipe_name]
    if recipe.normal then
        recipe.normal.energy_required = new_time
        if recipe.expensive then
            recipe.expensive.energy_required = new_time
        end
    else
        recipe.energy_required = new_time
    end
end




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

local rail_minimal = {
    type = "recipe",
    name = "rail_minimal",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
        { type = "item",  name = "steel-plate", amount = 3 },
        { type = "item",  name = "concrete",     amount = 2 },
        { type = "item",  name = "bolts",     amount = 8 },
        { type = "item", name = "copper-cable",     amount = 4 }
    },
    results = { { type = "item", name = "rail-minimal", amount = 10 } },
    auto_recycle = false
}
data:extend({ rail_minimal })


-- Железный уровень (5000)
change_ingredients("fluid-tank-1x1", {
    {type = "item", name = "iron-plate", amount = 12},
    {type = "item", name = "pipe", amount = 6},
    {type = "item", name = "bolts", amount = 15}
})

-- Свинцовый уровень (7500)
change_ingredients("py-tank-3000", {
    {type = "item", name = "fluid-tank-1x1", amount = 1},  -- 5000
    {type = "item", name = "lead-plate", amount = 10},
    {type = "item", name = "steel-plate", amount = 8},
    {type = "item", name = "bolts", amount = 12}
})

-- Свинцовый уровень (8500)
change_ingredients("fluid-tank-2x2", {
    {type = "item", name = "py-tank-3000", amount = 1},  -- 7500
    {type = "item", name = "lead-plate", amount = 15},
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "bolts", amount = 18}
})

-- Алюминиевый уровень (15000)
change_ingredients("py-tank-1000", {
    {type = "item", name = "fluid-tank-2x2", amount = 2},  -- 2x8500=17000
    {type = "item", name = "aluminium-plate", amount = 12},
    {type = "item", name = "steel-plate", amount = 15},
    {type = "item", name = "bolts", amount = 20}
})

-- Алюминиевый уровень (20000)
change_ingredients("py-tank-1500", {
    {type = "item", name = "py-tank-1000", amount = 1},  -- 15000
    {type = "item", name = "py-tank-3000", amount = 1},  -- 7500 (сумма 22500)
    {type = "item", name = "aluminium-plate", amount = 15},
    {type = "item", name = "steel-plate", amount = 18}
})

-- Алюминиевый уровень (35000)
change_ingredients("fluid-tank-3x4", {
    {type = "item", name = "py-tank-1500", amount = 1},  -- 20000
    {type = "item", name = "py-tank-1000", amount = 1},  -- 15000 (сумма 35000)
    {type = "item", name = "aluminium-plate", amount = 20},
    {type = "item", name = "steel-plate", amount = 22},
    {type = "item", name = "bolts", amount = 25}
})

-- Дюралевый уровень (40000)
change_ingredients("py-tank-4000", {
    {type = "item", name = "fluid-tank-3x4", amount = 1},  -- 35000
    {type = "item", name = "duralumin", amount = 15},
    {type = "item", name = "steel-plate", amount = 25}
})

-- Дюралевый уровень (50000)
change_ingredients("py-tank-5000", {
    {type = "item", name = "py-tank-4000", amount = 1},  -- 40000
    {type = "item", name = "duralumin", amount = 18},
    {type = "item", name = "steel-plate", amount = 30},
    {type = "item", name = "bolts", amount = 25}
})

-- Дюралевый уровень (65000)
change_ingredients("py-tank-6500", {
    {type = "item", name = "py-tank-5000", amount = 1},  -- 50000
    {type = "item", name = "py-tank-1500", amount = 1},  -- 20000 (сумма 70000)
    {type = "item", name = "duralumin", amount = 22},
    {type = "item", name = "steel-plate", amount = 35}
})

-- Дюралевый уровень (100000)
change_ingredients("fluid-tank-5x5", {
    {type = "item", name = "py-tank-5000", amount = 2},  -- 2x50000=100000
    {type = "item", name = "duralumin", amount = 30},
    {type = "item", name = "steel-plate", amount = 40},
    {type = "item", name = "bolts", amount = 35}
})

-- Титановый уровень (140000)
change_ingredients("py-tank-7000", {
    {type = "item", name = "fluid-tank-5x5", amount = 1},  -- 100000
    {type = "item", name = "py-tank-4000", amount = 1},    -- 40000 (сумма 140000)
    {type = "item", name = "titanium-plate", amount = 25},
    {type = "item", name = "steel-plate", amount = 45}
})

-- Титановый уровень (160000)
change_ingredients("py-tank-8000", {
    {type = "item", name = "py-tank-7000", amount = 1},    -- 140000
    {type = "item", name = "py-tank-3000", amount = 2},    -- 2x7500=15000 (сумма 155000)
    {type = "item", name = "titanium-plate", amount = 30},
    {type = "item", name = "steel-plate", amount = 50}
})

-- Титановый уровень (200000)
change_ingredients("py-tank-9000", {
    {type = "item", name = "py-tank-8000", amount = 1},    -- 160000
    {type = "item", name = "py-tank-4000", amount = 1},    -- 40000 (сумма 200000)
    {type = "item", name = "titanium-plate", amount = 35},
    {type = "item", name = "steel-plate", amount = 55},
    {type = "item", name = "bolts", amount = 40}
})

-- Титановый уровень (350000)
change_ingredients("py-tank-10000", {
    {type = "item", name = "py-tank-9000", amount = 1},    -- 200000
    {type = "item", name = "fluid-tank-5x5", amount = 1},   -- 100000
    {type = "item", name = "py-tank-5000", amount = 1},     -- 50000 (сумма 350000)
    {type = "item", name = "titanium-plate", amount = 45},
    {type = "item", name = "steel-plate", amount = 60}
})

-- Корректировка времени крафта для сложных рецептов
change_crafting_time("py-tank-10000", 8)
change_crafting_time("fluid-tank-5x5", 6)
change_crafting_time("py-tank-9000", 7)

change_ingredients("elevated-pipe", {
    { type = "item",  name = "steel-plate",      amount = 4 },
    { type = "item",  name = "pipe",      amount = 25 },
    { type = "item",  name = "iron-stick",      amount = 20 },
})

change_results("elevated-pipe", {{ type = "item", name = "elevated-pipe", amount = 2 }})
