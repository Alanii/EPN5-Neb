/obj/item/clothing/gloves/captain
	desc = "Regal blue gloves, with a nice gold trim. Swanky."
	name = "captain's gloves"
	icon_state = "captain"
	item_state = "egloves"

/obj/item/clothing/gloves/insulated
	desc = "These gloves will protect the wearer from electric shocks."
	name = "insulated gloves"
	color = COLOR_YELLOW
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	icon_state = "world"

/obj/item/clothing/gloves/insulated/cheap                             //Cheap Chinese Crap
	desc = "These gloves are cheap copies of the coveted gloves, no way this can end badly."
	name = "budget insulated gloves"
	siemens_coefficient = 1			//Set to a default of 1, gets overridden in New()

/obj/item/clothing/gloves/insulated/cheap/Initialize()
	. = ..()
	//average of 0.4, better than regular gloves' 0.75
	siemens_coefficient = pick(0, 0.1, 0.2, 0.3, 0.4, 0.6, 1.3)

/obj/item/clothing/gloves/forensic
	desc = "Specially made gloves for forensic technicians. The luminescent threads woven into the material stand out under scrutiny."
	name = "forensic gloves"
	color = COLOR_BROWN_ORANGE
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/gloves/tactical
	desc = "These brown tactical gloves are made from a durable synthetic, and have hardened knuckles."
	name = "tactical gloves"
	icon_state = "world"
	color = COLOR_BROWN
	force = 5
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05
	armor = list(
		melee = ARMOR_MELEE_KNIVES, 
		bullet = ARMOR_BALLISTIC_MINOR, 
		laser = ARMOR_LASER_MINOR
		)

/obj/item/clothing/gloves/guards
	desc = "A pair of synthetic gloves and arm pads reinforced with armor plating."
	name = "arm guards"
	icon = 'icons/clothing/hands/armguards.dmi'
	on_mob_icon = 'icons/clothing/hands/armguards.dmi'
	body_parts_covered = HANDS|ARMS
	w_class = ITEM_SIZE_NORMAL
	siemens_coefficient = 0.7
	permeability_coefficient = 0.03
	armor = list(
		melee = ARMOR_MELEE_RESISTANT, 
		bullet = ARMOR_BALLISTIC_MINOR, 
		laser = ARMOR_LASER_SMALL, 
		energy = ARMOR_ENERGY_SMALL, 
		bomb = ARMOR_BOMB_PADDED
		)

/obj/item/clothing/gloves/fire
	desc = "A pair of gloves specially design for firefight and damage control."
	name = "fire gloves"
	icon_state = "world"
	icon = 'icons/clothing/hands/firefighter.dmi'
	on_mob_icon = 'icons/clothing/hands/firefighter.dmi'
	siemens_coefficient = 0.50
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	item_flags = ITEM_FLAG_THICKMATERIAL
	body_parts_covered = HANDS
	cold_protection = HANDS
	heat_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE

