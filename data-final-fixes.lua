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