require("prototypes.recipes")
require("prototypes.technology")


data:extend({
  {
    type = "item-subgroup",
    name = "trains",
    group = "logistics",
    order = "f"
  }
})

data:extend({
  {
    type = "item-subgroup",
    name = "trainss",
    group = "logistics",
    order = "zz-ee"
  }
})

data:extend({
  {
    type = "item-subgroup",
    name = "recipe-py-storage-tanks",
    group = "logistics",
    order = "zz-ad"
  }
})


data.raw.item["mini-locomotive"].subgroup = "trains"
data.raw.item["mini-cargo-wagon"].subgroup = "trains"
data.raw.item["mini-fluid-wagon"].subgroup = "trains"

data.raw.item["mini-locomotive"]["item-group"] = "logistics"
data.raw.item["mini-cargo-wagon"]["item-group"] = "logistics"
data.raw.item["mini-fluid-wagon"]["item-group"] = "logistics"


data.raw.recipe["mini-locomotive"].subgroup = "trainss"
data.raw.recipe["mini-cargo-wagon"].subgroup = "trainss"
data.raw.recipe["mini-fluid-wagon"].subgroup = "trainss"

data.raw.recipe["mini-locomotive"]["item-group"] = "logistics"
data.raw.recipe["mini-cargo-wagon"]["item-group"] = "logistics"
data.raw.recipe["mini-fluid-wagon"]["item-group"] = "logistics"


data.raw["item-with-entity-data"]["locomotive"].subgroup = "trains"
data.raw["item-with-entity-data"]["cargo-wagon"].subgroup = "trains"
data.raw["item-with-entity-data"]["fluid-wagon"].subgroup = "trains"

data.raw.recipe["locomotive"].subgroup = "trainss"
data.raw.recipe["cargo-wagon"].subgroup = "trainss"
data.raw.recipe["fluid-wagon"].subgroup = "trainss"

data.raw["item-with-entity-data"]["locomotive"].order = "a-4[trains]"
data.raw["item-with-entity-data"]["cargo-wagon"].order = "a-5[trains]"
data.raw["item-with-entity-data"]["fluid-wagon"].order = "a-6[trains]"

data.raw.recipe["locomotive"].order = "a-4[trains]"

data.raw.item["mini-locomotive"].order = "a-1[trains]"
data.raw.item["mini-cargo-wagon"].order = "a-2[trains]"
data.raw.item["mini-fluid-wagon"].order = "a-3[trains]"


data.raw.recipe["early_rails"].subgroup = "recipe-train-transport"

data.raw.recipe["early_rails"]["item-group"] = "logistics"

data.raw.recipe["early_rails"].order = "a-a"


-- Установка порядка для всех баков в соответствии с новой иерархией
data.raw.item["fluid-tank-1x1"].order = "a-01[tanks]"
data.raw.item["py-tank-3000"].order = "a-02[tanks]"
data.raw.item["fluid-tank-2x2"].order = "a-03[tanks]"
data.raw.item["py-tank-1000"].order = "a-04[tanks]"
data.raw.item["py-tank-1500"].order = "a-05[tanks]"
data.raw.item["fluid-tank-3x4"].order = "a-06[tanks]"
data.raw.item["py-tank-4000"].order = "a-07[tanks]"
data.raw.item["py-tank-5000"].order = "a-08[tanks]"
data.raw.item["py-tank-6500"].order = "a-09[tanks]"
data.raw.item["fluid-tank-5x5"].order = "a-10[tanks]"
data.raw.item["py-tank-7000"].order = "a-11[tanks]"
data.raw.item["py-tank-8000"].order = "a-12[tanks]"
data.raw.item["py-tank-9000"].order = "a-13[tanks]"
data.raw.item["py-tank-10000"].order = "a-14[tanks]"



data.raw.recipe["fluid-tank-1x1"].order = "a-01[tanks]"
data.raw.recipe["py-tank-3000"].order = "a-02[tanks]"
data.raw.recipe["fluid-tank-2x2"].order = "a-03[tanks]"
data.raw.recipe["py-tank-1000"].order = "a-04[tanks]"
data.raw.recipe["py-tank-1500"].order = "a-05[tanks]"
data.raw.recipe["fluid-tank-3x4"].order = "a-06[tanks]"
data.raw.recipe["py-tank-4000"].order = "a-07[tanks]"
data.raw.recipe["py-tank-5000"].order = "a-08[tanks]"
data.raw.recipe["py-tank-6500"].order = "a-09[tanks]"
data.raw.recipe["fluid-tank-5x5"].order = "a-10[tanks]"
data.raw.recipe["py-tank-7000"].order = "a-11[tanks]"
data.raw.recipe["py-tank-8000"].order = "a-12[tanks]"
data.raw.recipe["py-tank-9000"].order = "a-13[tanks]"
data.raw.recipe["py-tank-10000"].order = "a-14[tanks]"

-- Обновление подгруппы 
data.raw.item["fluid-tank-1x1"].subgroup = "py-storage-tanks"
data.raw.item["fluid-tank-2x2"].subgroup = "py-storage-tanks"
data.raw.item["fluid-tank-3x4"].subgroup = "py-storage-tanks"
data.raw.item["fluid-tank-5x5"].subgroup = "py-storage-tanks"

data.raw.recipe["fluid-tank-1x1"].subgroup = "recipe-py-storage-tanks"
data.raw.recipe["fluid-tank-2x2"].subgroup = "recipe-py-storage-tanks"
data.raw.recipe["fluid-tank-3x4"].subgroup = "recipe-py-storage-tanks"
data.raw.recipe["fluid-tank-5x5"].subgroup = "recipe-py-storage-tanks"


data.raw.item["storage-tank"].hidden = true
data.raw.recipe["storage-tank"].hidden = true

data.raw.item["red-color-coded-storage-tank"].hidden = true
data.raw.recipe["red-color-coded-storage-tank"].hidden = true

data.raw.item["orange-color-coded-storage-tank"].hidden = true
data.raw.recipe["orange-color-coded-storage-tank"].hidden = true

data.raw.item["yellow-color-coded-storage-tank"].hidden = true
data.raw.recipe["yellow-color-coded-storage-tank"].hidden = true

data.raw.item["green-color-coded-storage-tank"].hidden = true
data.raw.recipe["green-color-coded-storage-tank"].hidden = true

data.raw.item["blue-color-coded-storage-tank"].hidden = true
data.raw.recipe["blue-color-coded-storage-tank"].hidden = true

data.raw.item["purple-color-coded-storage-tank"].hidden = true
data.raw.recipe["purple-color-coded-storage-tank"].hidden = true

data.raw.item["pink-color-coded-storage-tank"].hidden = true
data.raw.recipe["pink-color-coded-storage-tank"].hidden = true

data.raw.item["black-color-coded-storage-tank"].hidden = true
data.raw.recipe["black-color-coded-storage-tank"].hidden = true

data.raw.item["white-color-coded-storage-tank"].hidden = true
data.raw.recipe["white-color-coded-storage-tank"].hidden = true


local range = settings.startup['sup_length'].value or 500

for _, sub_type in pairs({'rail-ramp', 'rail-support'}) do
  for _, prototype in pairs(data.raw[sub_type]) do
    prototype.support_range = range
  end
end


-- Вставьте этот код в один из ваших lua-файлов (например, data.lua или data-updates.lua)
local function set_stack_size_to_1600()
    -- Список категорий объектов для изменения
    local categories = {
        'transport-belt',
        'underground-belt',
        'splitter',
        'inserter',
        'pipe',
        'pipe-to-ground',
        'electric-pole',
    }

    -- Проходим по всем категориям
    for _, category in ipairs(categories) do
        -- Проверяем существование категории в данных
        if data.raw[category] then
            -- Для каждого объекта в категории
            for _, entity in pairs(data.raw[category]) do
                -- Находим соответствующий предмет
                local item = data.raw.item[entity.name]
                if item then
                    -- Устанавливаем новый размер стака
                    item.stack_size = 1600
                end
            end
        end
    end
end

-- Вызываем функцию
set_stack_size_to_1600()

data.raw.tile["stone-path"].walking_speed_modifier = 2.5
data.raw.tile["concrete"].walking_speed_modifier = 3.5
data.raw.tile["hazard-concrete-right"].walking_speed_modifier = 1
data.raw.tile["hazard-concrete-left"].walking_speed_modifier = 1
data.raw.tile["refined-concrete"].walking_speed_modifier = 4.5
data.raw.tile["refined-hazard-concrete-left"].walking_speed_modifier = 1.5
data.raw.tile["refined-hazard-concrete-right"].walking_speed_modifier = 1.5

data.raw.tile["py-aluminium"].walking_speed_modifier = 4.5
data.raw.tile["py-asphalt"].walking_speed_modifier = 4.5
data.raw.tile["py-coal-tile"].walking_speed_modifier = 4.5
data.raw.tile["py-iron-oxide"].walking_speed_modifier = 4.5
data.raw.tile["py-iron"].walking_speed_modifier = 4.5
data.raw.tile["py-limestone"].walking_speed_modifier = 4.5
data.raw.tile["py-nexelit"].walking_speed_modifier = 4.5
data.raw.tile["py-steel"].walking_speed_modifier = 4.5



local refined_properties = {
    walking_speed_modifier = 4.5,
    vehicle_friction_modifier = 0.6,
    decorative_removal_probability = 1.0
}

local colors = {
    {name = "red",    player_color = {r = 0.815, g = 0.024, b = 0.0, a = 0.5},   chat_color = {r = 1.000, g = 0.266, b = 0.241}, dye = {type = "fluid", name = "blood", amount = 15}},
    {name = "green",  player_color = {r = 0.093, g = 0.768, b = 0.172, a = 0.5}, chat_color = {r = 0.173, g = 0.824, b = 0.250}, dye = {type = "item", name = "guar", amount = 1}},
    {name = "blue",   player_color = {r = 0.155, g = 0.540, b = 0.898, a = 0.5}, chat_color = {r = 0.343, g = 0.683, b = 1.000}, dye = {type = "item", name = "moondrop", amount = 1}},
    {name = "orange", player_color = {r = 0.869, g = 0.5, b = 0.130, a = 0.5},   chat_color = {r = 1.000, g = 0.630, b = 0.259}, dye = {type = "item", name = "fawogae-substrate", amount = 1}},
    {name = "yellow", player_color = {r = 0.835, g = 0.666, b = 0.077, a = 0.5}, chat_color = {r = 1.000, g = 0.828, b = 0.231}, dye = {type = "item", name = "ralesia", amount = 1}},
    {name = "pink",   player_color = {r = 0.929, g = 0.386, b = 0.514, a = 0.5}, chat_color = {r = 1.000, g = 0.720, b = 0.833}, dye = {type = "item", name = "ti-rejects", amount = 1}},
    {name = "purple", player_color = {r = 0.485, g = 0.111, b = 0.659, a = 0.5}, chat_color = {r = 0.821, g = 0.440, b = 0.998}, dye = {type = "fluid", name = "vpulp3", amount = 5}},
    {name = "black",  player_color = {r = 0.1, g = 0.1, b = 0.1, a = 0.5},       chat_color = {r = 0.5, g = 0.5, b = 0.5},       dye = {type = "item", name = "carbon-black", amount = 1}},
    {name = "brown",  player_color = {r = 0.300, g = 0.117, b = 0.0, a = 0.5},   chat_color = {r = 0.757, g = 0.522, b = 0.371}, dye = {type = "item", name = "used-comb", amount = 1}},
    {name = "cyan",   player_color = {r = 0.275, g = 0.755, b = 0.712, a = 0.5}, chat_color = {r = 0.335, g = 0.918, b = 0.866}, dye = {type = "fluid", name = "cyanic-acid", amount = 10}},
    {name = "acid",   player_color = {r = 0.559, g = 0.761, b = 0.157, a = 0.5}, chat_color = {r = 0.708, g = 0.996, b = 0.134}, dye = {type = "fluid", name = "acetic-acid", amount = 10}}
}

for i, color_data in pairs(colors) do
    local name = color_data.name .. "-refined-concrete"
    local tile = TILE(name):set_fields(refined_properties)

    tile.minable = {mining_time = 0.1, result = name}
    tile.mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"}
    tile.collision_mask = {layers = {ground_tile = true}}

    RECIPE {
        type = "recipe",
        name = name,
        category = "mixer",
        enabled = false,
        ingredients = {
            {type = "item", name = "refined-concrete", amount = 2},
            color_data.dye
        },
        results = {
            {type = "item", name = name, amount = 3}
        },
        requester_paste_multiplier = 4,
        energy_required = 1
    }:add_unlock("py-asphalt-mk03")

    ITEM {
        type = "item",
        name = name,
        icons = {
            {
                icon = data.raw.item["refined-concrete"].icon,
                tint = color_data.chat_color,
                icon_size = 64
            }
        },
        flags = {},
        subgroup = "py-tiles-2",
        order = "" .. i,
        stack_size = 1000,
        place_as_tile = {result = name, condition_size = 1, condition = {layers = {water_tile = true}}},
        localised_name = tile.localised_name
    }
end

TILE("refined-concrete"):set_fields(refined_properties)
