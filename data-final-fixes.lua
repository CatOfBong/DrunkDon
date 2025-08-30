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