require("prototypes.recipes")
require("prototypes.technology")
-- Базовые ванильные поезда
data.raw["locomotive"]["locomotive"].order = "c[rolling-stock]-a[locomotive]"
data.raw["cargo-wagon"]["cargo-wagon"].order = "c[rolling-stock]-b[cargo-wagon]"
data.raw["fluid-wagon"]["fluid-wagon"].order = "c[rolling-stock]-c[fluid-wagon]"

-- Твои мини-поезда
data.raw["locomotive"]["mini-locomotive"].order = "c[rolling-stock]-d[mini-locomotive]"
data.raw["cargo-wagon"]["mini-cargo-wagon"].order = "c[rolling-stock]-e[mini-cargo-wagon]"
data.raw["fluid-wagon"]["mini-fluid-wagon"].order = "c[rolling-stock]-f[mini-fluid-wagon]"

-- Пример исправления подгруппы для мини-поезда
data.raw["locomotive"]["mini-locomotive"].subgroup = "train-transport"
data.raw["cargo-wagon"]["mini-cargo-wagon"].subgroup = "train-transport"
data.raw["fluid-wagon"]["mini-fluid-wagon"].subgroup = "train-transport"

