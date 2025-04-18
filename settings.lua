data:extend({
    {
        default_value = 999,
        localised_description = "How fast the player can mine resources and entities.",
        localised_name = "Mining Speed",
        maximum_value = 999,
        minimum_value = 1,
        name = "miningSpeed",
        setting_type = "startup",
        type = "int-setting",
    },
    {
        default_value = 1000000,
        localised_description = "The maximum health of the player.",
        localised_name = "Player Health",
        maximum_value = 1000000,
        minimum_value = 1,
        name = "playerHealth",
        setting_type = "startup",
        type = "int-setting",
    },
    {
        default_value = 1000000,
        localised_description = "How far away the player can interact with the world.",
        localised_name = "Player Reach",
        maximum_value = 1000000,
        minimum_value = 1,
        name = "playerReach",
        setting_type = "startup",
        type = "int-setting",
    },
    {
        default_value = false, -- Булево значение
        localised_description = "Whether or not the player model can collide with the world.",
        localised_name = "Player Collision",
        name = "playerCollision",
        setting_type = "startup",
        type = "bool-setting",
    }
})