data.raw["cargo-wagon"]["mini-cargo-wagon"].inventory_size = 10

data.raw["fluid-wagon"]["mini-fluid-wagon"].capacity = 10000

data.raw["locomotive"]["mini-locomotive"].energy_source.fuel_categories = {"chemical","biomass","nuke"}

if settings.startup["minitrains_more_fuel_slots"].value == true then
	data.raw["locomotive"]["mini-locomotive"].energy_source.fuel_inventory_size = 2
	data.raw["locomotive"]["mini-locomotive"].energy_source.burnt_inventory_size = 2 
end
