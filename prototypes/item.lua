data:extend({
  -- Стикер для эффекта скорости
  {
    type = "sticker",
    name = "beer-speed-sticker",
    flags = {"not-on-map"},
    hidden = true,
    duration_in_ticks = 20 * 60 * 60,
    target_movement_modifier = 2,
    -- Обязательная графика (пустой спрайт)
    animation = {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
      frame_count = 1,
    }
  },
  {
    type = "capsule",
    name = "beer-01",
    icon = "__DrunkDon__/graphics/icons/beer-01.png",
    subgroup = "recipe-capsule",
    stack_size = 100,
    spoil_ticks = 120 * 60 * 60,
    weight = 1, 
    capsule_action = {
      type = "use-on-self",
      attack_parameters = {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 20 * 60 * 60,
        range = 0,
        ammo_type = {
          category = "capsule",
          target_type = "position",
          action = {
            type = "direct",
            action_delivery = {
              type = "instant",
              target_effects = {
                {
                  type = "create-sticker",
                  sticker = "beer-speed-sticker"
                }
              }
            }
          }
        }
      }
    }
  }
})