-- Добавляет рецепт в технологию
local function add_recipe_to_technology(tech_name, recipe_name)
    local tech = data.raw.technology[tech_name]
    if not tech then
        error("Technology '" .. tech_name .. "' not found")
        return
    end
    
    -- Создаем таблицу эффектов если её нет
    tech.effects = tech.effects or {}
    
    -- Проверяем, не добавлен ли уже рецепт
    for _, effect in ipairs(tech.effects) do
        if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
            return -- Рецепт уже есть в технологии
        end
    end
    
    -- Добавляем новый эффект
    table.insert(tech.effects, {
        type = "unlock-recipe",
        recipe = recipe_name
    })
end

-- Удаляет рецепт из технологии
local function remove_recipe_from_technology(tech_name, recipe_name)
    local tech = data.raw.technology[tech_name]
    if not tech or not tech.effects then return end
    
    -- Ищем и удаляем эффект
    for i = #tech.effects, 1, -1 do
        local effect = tech.effects[i]
        if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
            table.remove(tech.effects, i)
        end
    end
end


-- Основная функция для изменения технологии, открывающей рецепт
local function change_recipe_technology(recipe_name, new_tech_name, old_tech_name)
    -- Удаляем из старой технологии (если указана)
    if old_tech_name then
        remove_recipe_from_technology(old_tech_name, recipe_name)
    end
    
    -- Добавляем в новую технологию
    add_recipe_to_technology(new_tech_name, recipe_name)
end



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
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "rail-support"
            },
            {
                type = "unlock-recipe",
                recipe = "rail-ramp"
            },
            {
                type = "rail-planner-allow-elevated-rails",
                modifier = true
            },
        },
        prerequisites = { "mini-trains" },
        unit = {
            count = 83,
            ingredients = {
                { "automation-science-pack", 2 },
                { "py-science-pack-1",       1 }
            },
            time = 37
        },
        enabled = true,
        hidden = false
    } })
RECIPE("iron-stick"):remove_unlock("railway")


change_recipe_technology("fluid-tank-1x1", "steam-power", "fluid-handling")
change_recipe_technology("py-tank-3000", "fluid-handling", "py-storage-tanks")
change_recipe_technology("py-tank-1000", "fluid-handling", "py-storage-tanks")
change_recipe_technology("py-tank-1500", "fluid-handling", "py-storage-tanks")
change_recipe_technology("py-tank-4000", "fluid-handling", "py-storage-tanks")
change_recipe_technology("fluid-tank-5x5", "py-storage-tanks", "fluid-handling")