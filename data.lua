for _,tree in pairs(data.raw["tree"]) do
	tree.collision_box={{-0.05,-0.05},{0.05,0.05}}
end
if not settings.startup["playerCollision"].value then
	data.raw["character"]["character"].collision_box={{0,0},{0,0}}
end
data.raw["character"]["character"].build_distance=settings.startup["playerReach"].value
data.raw["character"]["character"].drop_item_distance=settings.startup["playerReach"].value
data.raw["character"]["character"].max_health=settings.startup["playerHealth"].value
data.raw["character"]["character"].mining_speed=settings.startup["miningSpeed"].value
data.raw["character"]["character"].reach_distance=settings.startup["playerReach"].value
data.raw["character"]["character"].reach_resource_distance=settings.startup["playerReach"].value
data.raw['character']['character'].respawn_time=1

require("prototypes.entities")