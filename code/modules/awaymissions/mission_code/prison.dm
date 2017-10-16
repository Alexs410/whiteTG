/**********************Areas******************************/

/area/prisonv2
	name = "Prison USSR"
	icon_state = "brig"
	dynamic_lighting = DYNAMIC_LIGHTING_FORCED
	requires_power = TRUE
	has_gravity = TRUE
	noteleport = TRUE
	blob_allowed = FALSE
	flags_1 = NONE
	ambientsounds = list('sound/valtos/prison/amb2.ogg',
						 'sound/valtos/prison/amb3.ogg',
						 'sound/valtos/prison/amb4.ogg',
						 'sound/valtos/prison/amb5.ogg',
						 'sound/valtos/prison/amb6.ogg',
						 'sound/valtos/prison/amb7.ogg',
						 'sound/valtos/prison/amb8.ogg')

/area/prisonv2/block1
	name = "Block 1 USSR"
	icon_state = "security"

/area/prisonv2/uprava
	name = "Uprava USSR"
	icon_state = "security"

/area/prisonv2/vorota
	name = "Vorota USSR"
	icon_state = "security"

/area/prisonv2/kachalka
	name = "Kachalka USSR"
	icon_state = "yellow"

/area/prisonv2/hydro
	name = "Hydro USSR"
	icon_state = "green"

/area/prisonv2/stolovka
	name = "Stolovka USSR"
	icon_state = "kitchen"

/area/prisonv2/med
	name = "Med USSR"
	icon_state = "showroom"

/area/prisonv2/cerkov
	name = "Cerkov USSR"
	icon_state = "chapeloffice"

/area/prisonv2/bibloteka
	name = "Bibloteka USSR"
	icon_state = "library"

/area/prisonv2out
	name = "Caves USSR"
	icon_state = "yellow"
	requires_power = TRUE
	has_gravity = TRUE
	noteleport = TRUE
	blob_allowed = FALSE
	flags_1 = NONE
	ambientsounds = list('sound/valtos/prison/amb2.ogg',
						 'sound/valtos/prison/ambout1.ogg',
						 'sound/valtos/prison/ambarab.ogg',
						 'sound/valtos/prison/amb8.ogg')

/**********************Turf Walls**************************/

/turf/closed/wall/brick
	name = "brick wall"
	desc = "���������� ��� ����� ���� ������ �����, �� �� �������� ���� ����� �� �������. �����."
	icon = 'icons/valtos/prison/brick_wall.dmi'
	icon_state = "brick"
	explosion_block = 50
	slicing_duration = 20000
	canSmoothWith = list(/turf/closed/wall/brick, /obj/structure/falsewall/brick, /obj/structure/prison/window)

/turf/closed/wall/brick/TerraformTurf(path, defer_change = FALSE, ignore_air = FALSE)
	return

/obj/structure/prison/window
	name = "brick window"
	desc = "���������� ������ ����. ���������� ����� ����."
	icon = 'icons/valtos/prison/brick_wall.dmi'
	icon_state = "window"
	pass_flags = LETPASSTHROW
	max_integrity = 2500
	anchored = 1
	density = 1
	opacity = 0
	layer = 2.4
	var/proj_pass_rate = 50

/obj/structure/prison/window/CanPass(atom/movable/mover, turf/target)//So bullets will fly over and stuff.
	if(locate(/obj/structure/prison/window) in get_turf(mover))
		return 1
	else if(istype(mover, /obj/item/projectile))
		if(!anchored)
			return 1
		var/obj/item/projectile/proj = mover
		if(proj.firer && Adjacent(proj.firer))
			return 1
		if(prob(proj_pass_rate))
			return 1
		return 0
	else
		return !density

/turf/closed/wall/beton
	name = "beton wall"
	desc = "����� ����� �������� ���� ��� ������ � ����."
	icon = 'icons/valtos/prison/beton_wall.dmi'
	icon_state = "beton"
	explosion_block = 50
	slicing_duration = 20000
	canSmoothWith = list(/turf/closed/wall/beton)

/turf/closed/wall/beton/TerraformTurf(path, defer_change = FALSE, ignore_air = FALSE)
	return

/**********************Turf Minerals************************/

/turf/closed/mineral/bscrystal/dirty
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	defer_change = 1

/turf/closed/mineral/uranium/dirty
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	defer_change = 1

/turf/closed/mineral/plasma/dirty
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	defer_change = 1

/turf/closed/mineral/titanium/dirty
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	defer_change = 1

/turf/closed/mineral/silver/dirty
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	defer_change = 1

/turf/closed/mineral/gold/dirty
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	defer_change = 1

/turf/closed/mineral/diamond/dirty
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	defer_change = 1

/turf/closed/mineral/coal
	mineralType = /obj/item/stack/sheet/mineral/coal
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	spreadChance = 20
	spread = 1
	scan_state = "rock_Iron"

/turf/closed/mineral/random/prison
	turf_type = /turf/open/floor/plating/asteroid/dirty
	baseturf = /turf/open/floor/plating/asteroid/dirty
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	defer_change = 1
	mineralChance = 10
	mineralSpawnChanceList = list(
		/turf/closed/mineral/uranium/dirty = 6, /turf/closed/mineral/diamond/dirty = 6, /turf/closed/mineral/gold/dirty = 6, /turf/closed/mineral/titanium/dirty = 6,
		/turf/closed/mineral/silver/dirty = 6, /turf/closed/mineral/plasma/dirty = 6, /turf/closed/mineral/bscrystal/dirty = 6, /turf/closed/mineral/coal = 35)

/**********************Turf Floors**************************/

/turf/open/floor/plating/asteroid/dirty
	name = "dirt"
	desc = "���������."
	icon = 'icons/valtos/prison/prison.dmi'
	postdig_icon_change = TRUE
	icon_state = "dirt"
	icon_plating = "dirt"
	environment_type = "dirt"
	turf_type = /turf/open/floor/plating/asteroid/dirty
	floor_variance = 0
	initial_gas_mix = "o2=22;n2=82;TEMP=275.15"
	archdrops = list(/obj/item/ore/glass = 5)
	slowdown = 3

/turf/open/floor/trot
	name = "trotuar"
	desc = "� ����� ��� ��� ��������."
	icon_state = "trot"
	initial_gas_mix = "o2=22;n2=82;TEMP=298.15"
	icon = 'icons/valtos/prison/beton.dmi'
	floor_tile = /obj/item/stack/tile/trot
	slowdown = 1
	broken_states = list("damaged")
	baseturf = /turf/open/floor/plating/asteroid/dirty

/turf/open/floor/trot/cell
	name = "floor"
	desc = "������������."
	icon_state = "pol"
	initial_gas_mix = "o2=22;n2=82;TEMP=298.15"
	icon = 'icons/valtos/prison/beton.dmi'
	floor_tile = /obj/item/stack/tile/trot
	slowdown = 3
	broken_states = list("damaged")
	baseturf = /turf/open/floor/plating/asteroid/dirty

/turf/open/floor/woodp
	name = "wooden floor"
	desc = "�����, ��� ������"
	icon_state = "wood1"
	initial_gas_mix = "o2=22;n2=82;TEMP=298.15"
	icon = 'icons/valtos/prison/woodf.dmi'
	slowdown = 2
	broken_states = list("wood2","wood3","wood4","wood5","wood6")
	baseturf = /turf/open/floor/plating/asteroid/dirty

/turf/open/floor/beton
	name = "beton"
	desc = "������ �� ���� �� ����� ������ �������."
	icon_state = "beton"
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	icon = 'icons/valtos/prison/beton.dmi'
	floor_tile = /obj/item/stack/tile/beton
	broken_states = list("damaged")
	smooth = SMOOTH_TRUE
	slowdown = 1
	canSmoothWith = list(/turf/open/floor/beton)
	flags_1 = NONE
	baseturf = /turf/open/floor/plating/asteroid/dirty

/turf/open/floor/beton/Initialize()
	..()
	update_icon()

/turf/open/floor/beton/update_icon()
	if(!..())
		return 0
	if(!broken && !burnt)
		if(smooth)
			queue_smooth(src)
	else
		make_plating()
		if(smooth)
			queue_smooth_neighbors(src)

/******************Structures***************************/

/obj/structure/falsewall/brick
	name = "brick wall"
	desc = "���������� ��� ����� ���� ������ �����, �� �� �������� ���� ����� �� �������. �����."
	icon = 'icons/valtos/prison/brick_wall.dmi'
	icon_state = "brick"
	walltype = /turf/closed/wall/brick
	canSmoothWith = list(/obj/structure/falsewall/brick, /turf/closed/wall/brick)

/obj/structure/curtain/prison/update_icon()
	if(!open)
		icon_state = "closed"
		layer = WALL_OBJ_LAYER
		density = FALSE
		open = FALSE
		opacity = 1

	else
		icon_state = "open"
		layer = WALL_OBJ_LAYER
		density = FALSE
		open = TRUE
		opacity = 0

/******************Uniforms****************************/

/obj/item/clothing/under/prison/nach
	name = "nachalnik suit"
	desc = "�������� ������� � �� ����� ������ ������."
	icon = 'icons/valtos/prison/uniform.dmi'
	icon_state = "nach"
	item_state = "nach"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0, fire = 50, acid = 50)
	strip_delay = 60

/obj/item/clothing/under/prison/vertuhai
	name = "vertuhai suit"
	desc = "����������� �������� ���������������."
	icon = 'icons/valtos/prison/uniform.dmi'
	icon_state = "vert"
	item_state = "vert"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0, fire = 50, acid = 50)
	strip_delay = 60

/obj/item/clothing/under/prison/prison
	desc = "����� �������� ����. ��������-��... ���, ��� ���� ��������."
	icon = 'icons/valtos/prison/uniform.dmi'
	icon_state = "prisoner2"
	item_state = "prisoner2"
	has_sensor = LOCKED_SENSORS
	sensor_mode = SENSOR_COORDS
	random_sensor = 0

/obj/item/clothing/under/prison/prison/Initialize()
	name = "prisoner #[rand(0,9)][rand(0,9)][rand(0,9)][rand(0,9)][rand(0,9)][rand(0,9)]"

/******************Suits*******************************/

/obj/item/clothing/suit/armor/ussr
	name = "armored trenchcoat"
	desc = "������� � ������."
	icon = 'icons/valtos/prison/uniform.dmi'
	icon_state = "vertsuit"
	item_state = "vertsuit"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list(melee = 30, bullet = 30, laser = 30, energy = 10, bomb = 25, bio = 0, rad = 0, fire = 70, acid = 90)
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	strip_delay = 80

/******************Headgear****************************/

/obj/item/clothing/head/helmet/ussr
	name = "helmet"
	desc = "������� �����."
	icon = 'icons/valtos/prison/uniform.dmi'
	icon_state = "helm"
	item_state = "helm"
	w_class = WEIGHT_CLASS_NORMAL
	armor = list(melee = 50, bullet = 50, laser = 50, energy = 40, bomb = 60, bio = 0, rad = 0, fire = 60, acid = 60)

/obj/item/clothing/head/tyubet
	name = "tybeteika"
	desc = "���������."
	icon = 'icons/valtos/prison/uniform.dmi'
	icon_state = "phat"
	item_state = "phat"

/******************Doors*******************************/

/obj/machinery/door/airlock/prison
	name = "door"
	icon = 'icons/valtos/prison/doors.dmi'
	assemblytype = /obj/structure/door_assembly/door_assembly_wood
	desc = "������� �������� ����� �������� ������� ����� ������."
	glass = FALSE
	autoclose = FALSE
	lights = FALSE
	normal_integrity = 1200
	damage_deflection = 30
	req_access_txt = "150"
	doorOpen = 'sound/machines/door_open.ogg'
	doorClose = 'sound/machines/door_close.ogg'
	boltUp = 'sound/machines/door_locked.ogg'
	boltDown = 'sound/machines/door_locked.ogg'
	doorDeni = 'sound/machines/door_locked.ogg'

/obj/machinery/door/airlock/prison/cell
	glass = TRUE
	locked = 1
	opacity = 0
	assemblytype = /obj/structure/door_assembly/door_assembly_wood

/obj/machinery/door/poddoor/shutters/prison
	name = "lattice door"
	desc = "������������."
	icon = 'icons/valtos/prison/prison.dmi'
	icon_state = "closed"
	id = "cells"
	max_integrity = 1200

/obj/machinery/door/poddoor/shutters/prison/update_icon()
	if(density)
		playsound(src, 'sound/valtos/prison/close.ogg', 20, 1)
		icon_state = "closed"
	else
		playsound(src, 'sound/valtos/prison/open.ogg', 20, 1)
		icon_state = "open"

/******************Structures Signs********************/

/obj/structure/sign/prison
	icon = 'icons/valtos/prison/prison.dmi'

/obj/structure/sign/prison/tablo
	name = "\improper Tablo"
	icon = 'icons/valtos/prison/prisonw.dmi'
	desc = "��������. ����."
	icon_state = "t1"

/obj/structure/sign/prison/tablo/Initialize()
	icon_state = "t[rand(1,18)]"

/obj/structure/sign/prison/uprava
	name = "\improper Uprava"
	icon = 'icons/valtos/prison/prisonw.dmi'
	desc = "����� �������� ������."
	icon_state = "uprava"

/obj/structure/sign/prison/blok1
	name = "\improper Block A"
	icon = 'icons/valtos/prison/prisonw.dmi'
	desc = "������ ����."
	icon_state = "blocka"

/obj/structure/sign/prison/biblio
	name = "\improper Biblioteka"
	icon = 'icons/valtos/prison/prisonw.dmi'
	desc = "������� ���� � ������ ������."
	icon_state = "biblio"

/obj/structure/sign/prison/cross
	name = "\improper Church"
	icon = 'icons/valtos/prison/prisonw.dmi'
	desc = "�����-�� ����. �� ������ ��������� ��������� ������."
	icon_state = "cross"

/obj/structure/sign/prison/stolov
	name = "\improper Stolovka"
	icon = 'icons/valtos/prison/prisonw.dmi'
	desc = "�������, ��� ��� ����� ���� ��������."
	icon_state = "stolov"

/obj/structure/sign/prison/tok
	name = "\improper Ne prikasaisya!"
	desc = "�� ����������!"
	icon_state = "tok"

/obj/structure/sign/prison/hitler
	name = "\improper Hitler"
	desc = "����� �������� �������."
	icon_state = "hitler"

/obj/structure/sign/prison/net
	name = "\improper Net!"
	desc = "���!"
	icon_state = "net"

/obj/structure/sign/prison/kolesa
	name = "\improper Pomni o kolesah"
	desc = "����� � �������."
	icon_state = "kolesa"

/obj/structure/sign/prison/pobeda
	name = "\improper K novym pobedam!"
	desc = "� ����� ������� � ����� � ������!"
	icon_state = "pobeda"

/obj/structure/sign/prison/bolt
	name = "\improper Ne boltay!"
	desc = "�� ������!"
	icon_state = "bolt"

/obj/structure/sign/prison/pyan
	name = "\improper Byl pyan"
	desc = "� �� ������������ ��� ����."
	icon_state = "pyan"

/obj/structure/sign/prison/yannp
	name = "\improper Ne ponyal!"
	desc = "� ���� ������ ����������� ���������!"
	icon_state = "yannp"

/obj/structure/sign/prison/bolt
	name = "\improper Ne boltay!"
	desc = "�� ������!."
	icon_state = "bolt"

/********************Machinery***************************/

/obj/machinery/vending/sovietvend
	name = "\improper Soviet Vend"
	icon = 'icons/valtos/prison/prison.dmi'
	desc = "������� ����������� �� �����������!"
	icon_state = "sovietvend"
	product_ads = "�� ���� � ������.;� �� �������� ����� �������?;����� ���������� �����!;������� ������������ �������!"
	products = list(/obj/item/clothing/under/soviet = 20, /obj/item/clothing/head/ushanka = 20, /obj/item/reagent_containers/food/snacks/candy = 40,
					/obj/item/reagent_containers/food/drinks/bottle/vodka = 40, /obj/item/gun/ballistic/automatic/ak = 3, /obj/item/ammo_box/magazine/ak762 = 10)
	contraband = list(/obj/item/clothing/under/syndicate/tacticool = 20)
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 0, bio = 0, rad = 0, fire = 100, acid = 50)
	resistance_flags = FIRE_PROOF

/obj/machinery/power/port_gen/pacman/coal
	name = "\improper HellMachine"
	desc = "��� ����� ���������� �������� �������� ������ �������� �� ���� �������� ����. ����������� ������."
	icon = 'icons/valtos/prison/prisond.dmi'
	icon_state = "portgen0_0"
	base_icon = "portgen0"
	sheet_path = /obj/item/stack/sheet/mineral/coal
	power_gen = 15000
	time_per_sheet = 85
	density = TRUE
	anchored = TRUE

/********************Top Z-Levels***************************/

/obj/effect/bump_teleporter/prison/CollidedWith(atom/movable/AM)
	if(!ismob(AM))
		return
	if(!id_target)
		return

	for(var/obj/effect/bump_teleporter/BT in AllTeleporters)
		if(BT.id == src.id_target)
			AM.visible_message("<span class='boldwarning'>[AM] ��������!</span>", "<span class='userdanger'>������� � ����...</span>")
			AM.forceMove(BT.loc) //Teleport to location with correct id.
			if(isliving(AM))
				var/mob/living/L = AM
				L.Knockdown(100)
				L.adjustBruteLoss(70)

/obj/effect/decal/tuman
	name = "tuman"
	desc = "����� �����, ����� �� �����..."
	icon = 'icons/valtos/prison/prison.dmi'
	icon_state = "tuman"
	layer = 6

/********************Tiles***************************/

/obj/item/stack/tile/beton
	name = "beton floor tile"
	singular_name = "beton floor tile"
	desc = "����� ������. ���..."
	icon = 'icons/valtos/prison/prison.dmi'
	icon_state = "tile_beton"
	turf_type = /turf/open/floor/beton

/obj/item/stack/tile/trot
	name = "trot floor tile"
	singular_name = "trot floor tile"
	desc = "����� ���������� ������. �����?"
	icon = 'icons/valtos/prison/prison.dmi'
	icon_state = "tile_trot"
	turf_type = /turf/open/floor/trot

/********************Plants***************************/

/obj/machinery/prisonplant
	name = "potted plant"
	icon = 'icons/obj/flora/plants.dmi'
	icon_state = "plant-01"
	layer = 5

/obj/machinery/prisonplant/Initialize()
	icon_state = "plant-[rand(0,2)][rand(0,5)]"

/********************Misc-Deco****************************/

/obj/structure/chair/prison/wood
	name = "chair"
	desc = "����. ������� ���� �� ������."
	icon = 'icons/valtos/prison/decor.dmi'
	icon_state = "chair"
	item_chair = null

/obj/structure/prison/fence
	name = "fence"
	desc = "������� �����. �������!"
	icon = 'icons/valtos/prison/decor.dmi'
	icon_state = "fence"
	pass_flags = LETPASSTHROW
	var/proj_pass_rate = 80
	layer = 5
	anchored = 1
	density = 1
	opacity = 0

/obj/structure/prison/fence/CanPass(atom/movable/mover, turf/target)
	if(locate(/obj/structure/prison/fence) in get_turf(mover))
		return 1
	else if(istype(mover, /obj/item/projectile))
		if(!anchored)
			return 1
		var/obj/item/projectile/proj = mover
		if(proj.firer && Adjacent(proj.firer))
			return 1
		if(prob(proj_pass_rate))
			return 1
		return 0
	else
		return !density

/obj/structure/prison/pipe
	name = "pipe"
	desc = "��������� ���� �� �������. �� �� ������."
	icon = 'icons/valtos/prison/decor.dmi'
	icon_state = "trubas"
	density = 0
	opacity = 0
	layer = 6
	alpha = 205

/obj/structure/table/prison
	desc = "����� ������� ���� �� ������, ������ �����������."
	icon = 'icons/valtos/prison/decor.dmi'
	icon_state = "table"
	smooth = SMOOTH_FALSE
	deconstruction_ready = 0
	max_integrity = 1000

/obj/structure/closet/pcloset
	name = "old cabinet"
	desc = "�������� ������."
	icon_state = "cabinet"
	resistance_flags = FLAMMABLE
	max_integrity = 70

/obj/effect/decal/prison/pipe
	name = "pipe"
	desc = "����������."
	icon = 'icons/valtos/prison/decor.dmi'
	icon_state = "pipe1"
	layer = 2.5
	pixel_y = 12

/obj/effect/decal/prison/pipe/pipea
	icon_state = "pipe2"

/obj/effect/decal/prison/pipe/pipeb
	icon_state = "pipe3"

/obj/effect/decal/prison/pipe/pipec
	icon_state = "pipe4"

/obj/effect/decal/prison/pipe/piped
	icon_state = "pipe5"

/obj/structure/prison/tv
	name = "tv"
	icon = 'icons/valtos/prison/prison.dmi'
	desc = "��� ������� ��������� ���������."
	icon_state = "TV"
	density = 1

/obj/structure/bed/prison/bed
	name = "bed"
	icon = 'icons/valtos/prison/decor.dmi'
	desc = "��� ����� ���������, �� �� ������."
	icon_state = "bed"

/********************Lights***************************/

/obj/machinery/light/streetlight
	name = "street light"
	icon = 'icons/valtos/prison/prisonh.dmi'
	base_state = "light"
	icon_state = "light1"
	max_integrity = 10000
	brightness = 10
	layer = 5
	density = 1
	light_type = /obj/item/light/bulb
	fitting = "bulb"
	pixel_y = 8

/obj/machinery/light/reinforced
	name = "durable light"
	desc = "���������� ��������� ����� ��� ������ �� ���������."
	active_power_usage = 5
	max_integrity = 10000
	brightness = 10
	layer = 5

/********************Guns***************************/

/obj/item/gun/ballistic/automatic/ak
	name = "\improper AK-47"
	desc = "����������� ������� �����������. ���������� ������� ������� 7.62"
	icon = 'icons/valtos/prison/prison.dmi'
	icon_state = "kalash"
	origin_tech = "combat=4;materials=2;syndicate=4"
	slot_flags = SLOT_BACK|SLOT_BELT
	mag_type = /obj/item/ammo_box/magazine/ak762
	fire_sound = 'sound/valtos/prison/ak74_shot.ogg'
	burst_size = 3
	w_class = 4
	can_suppress = 1
	lefthand_file = 'icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/guns_righthand.dmi'

/obj/item/gun/ballistic/automatic/ak/update_icon()
	..()
	cut_overlays()
	if(!select)
		add_overlay("[initial(icon_state)]semi")
	if(select == 1)
		add_overlay("[initial(icon_state)]burst")
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"

/obj/item/ammo_box/magazine/ak762
	name = "AK-47 magazine (7.62)"
	icon = 'icons/valtos/prison/prison.dmi'
	icon_state = "akmag"
	ammo_type = /obj/item/ammo_casing/a762
	caliber = "a762"
	max_ammo = 30

/*****************Mineral Sheets**********************/

/obj/item/stack/sheet/mineral/coal
	name = "coal"
	icon = 'icons/valtos/prison/prison.dmi'
	desc = "������ ��� ��� ���."
	singular_name = "coal"
	icon_state = "coal"
	throw_speed = 3
	throw_range = 5
	origin_tech = "materials=1"
	materials = list(MAT_DIAMOND=MINERAL_MATERIAL_AMOUNT)

/*********************ID system*************************/

///obj/item/door_remote/soviet
//	name = "DOOR CONTROL 3000"
//	desc = "��������� ��������������� ����� ������."
//	icon_state = "gangtool-red"
//	region_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE)

/obj/item/card/id/keys
	name = "keys"
	icon = 'icons/valtos/prison/prison.dmi'
	icon_state = "keys"
	desc = "����� �� ���� ������"

/obj/item/card/id/keys/Initialize()
	access = get_all_syndicate_access()
	..()

/*********************Radio Shit*************************/

/obj/item/device/radio/headset/radioprison
	name = "soviet radio"
	icon = 'icons/valtos/prison/prison.dmi'
	desc = "�������� ���������� ��������� ������ - �����!"
	canhear_range = 3
	frequency = 1469
	slot_flags = SLOT_EARS
	icon_state = "radio"
	flags_2 = BANG_PROTECT_2

/obj/item/device/radio/headset/radioprison/talk_into()
	. = ..()
	playsound(get_turf(src), 'sound/valtos/prison/radio.ogg', 50, 0)

/**********************Spawners**************************/

/obj/effect/mob_spawn/human/prison
	desc = "������� ��� ���-�� �������� ��� �������..."
	icon = 'icons/valtos/prison/prison.dmi'
	icon_state = "spwn"
	roundstart = FALSE
	death = FALSE
	density = 0
	var/list/imena = list("��������", "��������", "�������", "��������", "����", "��������", "������", "������", "���������", "�������", "�����", "������� ����")


/obj/effect/mob_spawn/human/prison/doctor
	name = "doctor spawner"
	flavour_text = "�� ������ �������������� ������ �������. ������������ ������� �� ������, ����� ��� ��� ���, � �� ��������� �������� ���� ��� ������.<b> � ��, ������ � ���� ������ �� ��������������, �� �������� ������� � ��� � ����.</b>"
	outfit = /datum/outfit/prison/doctor
	assignedrole = "Doctor USSR"

/obj/effect/mob_spawn/human/prison/chaplain
	name = "prorok spawner"
	flavour_text = "�� ������ ����������� ������ ������� ���������� � ����������������. ��������� ��� ������ ���� �����������.<b> � ��, ������ � ���� ������ �� ��������������, �� �������� ������� � ��� � ����.</b>"
	outfit = /datum/outfit/prison/chaplain
	assignedrole = "Prorok USSR"

/obj/effect/mob_spawn/human/prison/vertuhai
	name = "vertuhai spawner"
	flavour_text = "�� ������ ���������� ������ �������. ������������ �� ������� ����� ��� ������� ����� � �� ��������� ������ �������.<b> � ��, ������ � ���� ������ �� ��������������, �� �������� ������� � ��� � ����.</b>"
	outfit = /datum/outfit/prison/vertuhai
	assignedrole = "Vertuhai USSR"

/obj/effect/mob_spawn/human/prison/mehanik
	name = "mehanik spawner"
	flavour_text = "�� ������ ������� ������ �������. ������������ �� �������� ���������, ��������, ��� �� ������� � �� ��������� ���������� � �����, ����� ������� ����� ���.<b> � ��, ������ � ���� ������ �� ��������������, �� �������� ������� � ��� � ����.</b>"
	outfit = /datum/outfit/prison/mehanik
	assignedrole = "Mehanik USSR"

/obj/effect/mob_spawn/human/prison/nachalnik
	name = "nachalnik spawner"
	flavour_text = "�� ������ ����������� ������ �������. ������������ �������� � � ������� � �� ��������� ���������� ����� � ���, ��� ������� ������ ������.<b> � ��, ������ � ���� ������ �� ��������������, �� �������� ������� � ��� � ����.</b>"
	icon_state = "spwn"
	outfit = /datum/outfit/prison/nachalnik
	assignedrole = "Nachalnik USSR"

/obj/effect/mob_spawn/human/prison/prisoner
	name = "shkonka spawner"
	desc = "������� ��� ���-�� �������� ��� �������..."
	flavour_text = "�� ������ ����������� ������ �������. ����������� ���� �������� ���� ��� �������, ���������� ���������� � �� ��������� � ���, ��� ������� ������ ������. ������, ������ �� ��� �� "
	outfit = /datum/outfit/prison/prisoner
	assignedrole = "Prisoner USSR"

/**********************Outfits**************************/

/datum/outfit/prison/doctor
	name = "Doctor USSR"
	head = /obj/item/clothing/head/ushanka
	ears = /obj/item/device/radio/headset/radioprison
	uniform = /obj/item/clothing/under/prison/vertuhai
	suit = /obj/item/clothing/suit/toggle/labcoat
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	l_pocket = /obj/item/card/id/keys
	belt = /obj/item/storage/belt/military
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/device/flashlight/lantern = 1, /obj/item/crowbar/red = 1, /obj/item/melee/classic_baton = 1)
	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/prison/vertuhai
	name = "Vertuhai USSR"
	head = /obj/item/clothing/head/ushanka
	ears = /obj/item/device/radio/headset/radioprison
	uniform = /obj/item/clothing/under/prison/vertuhai
	suit = /obj/item/clothing/suit/armor/ussr
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	r_pocket = /obj/item/restraints/handcuffs
	l_pocket = /obj/item/card/id/keys
	belt = /obj/item/storage/belt/military
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/device/flashlight/lantern = 1, /obj/item/crowbar/red = 1, /obj/item/melee/classic_baton = 1)
	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/prison/mehanik
	name = "Mehanik USSR"
	head = /obj/item/clothing/head/ushanka
	ears = /obj/item/device/radio/headset/radioprison
	uniform = /obj/item/clothing/under/prison/vertuhai
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	l_pocket = /obj/item/card/id/keys
	belt = /obj/item/storage/belt/utility/full/engi
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/device/flashlight/lantern = 1, /obj/item/crowbar/red = 1, /obj/item/melee/classic_baton = 1)
	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/prison/nachalnik
	name = "Nachalnik USSR"
	head = /obj/item/clothing/head/ushanka
	ears = /obj/item/device/radio/headset/radioprison
	uniform = /obj/item/clothing/under/prison/nach
	suit = /obj/item/clothing/suit/armor/ussr
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	l_pocket = /obj/item/card/id/keys
	belt = /obj/item/storage/belt/military
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/device/flashlight/lantern = 1, /obj/item/crowbar/red = 1, /obj/item/paper/fluff/awaymissions/prisonv2/nachruk = 1)
	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/prison/chaplain
	name = "Prorok USSR"
	uniform = /obj/item/clothing/under/rank/chaplain
	back = /obj/item/storage/backpack/satchel/leather
	shoes = /obj/item/clothing/shoes/sandal

/datum/outfit/prison/prisoner
	name = "Prisoner USSR"
	head = /obj/item/clothing/head/tyubet
	uniform = /obj/item/clothing/under/prison/prison
	shoes = /obj/item/clothing/shoes/sandal

/**********************Spawn-flavoures**************************/

/obj/effect/mob_spawn/human/prison/doctor/special(mob/living/L)
	L.real_name = "������ [pick(imena)]"
	L.name = L.real_name

/obj/effect/mob_spawn/human/prison/chaplain/special(mob/living/L)
	L.real_name = "������ [pick(imena)]"
	L.name = L.real_name
	if(L.mind)
		L.mind.isholy = TRUE

/obj/effect/mob_spawn/human/prison/vertuhai/special(mob/living/L)
	L.real_name = "���������� [pick(imena)]"
	L.name = L.real_name

/obj/effect/mob_spawn/human/prison/mehanik/special(mob/living/L)
	L.real_name = "������� [pick(imena)]"
	L.name = L.real_name

/obj/effect/mob_spawn/human/prison/nachalnik/special(mob/living/L)
	L.real_name = "��������� [pick(imena)]"
	L.name = L.real_name

/obj/effect/mob_spawn/human/prison/prisoner/special(mob/living/L)
	var/list/klikuhi = list("������", "������", "��������", "�����", "��������", "�������", "�����", "���������", "������", \
	"�������", "�������", "�������", "�������", "������", "����������", "�����", "�������", "���������", "����������", \
	"������", "�����", "�����", "�������", "�����", "��������", "�����", "���������", "��������", "��������", "�����", "�����", \
	"�����", "�������", "�������", "��������", "���������", "�������", "����", "������", "��������", "����", "�����", "�������")
	L.real_name = "[pick(klikuhi)]"
	L.name = L.real_name

/obj/effect/mob_spawn/human/prison/prisoner/Initialize(mapload)
	. = ..()
	var/list/zacho = list("��������", "���������", "���������", "������������ ������������", "��������� �����", "������ ����������������", \
	"�����", "����������� �����", "�������������", "�����", "����", "����������������", "���������")
	flavour_text += "[pick(zacho)].</b>."

/**********************Notes*********************************/

/obj/item/paper/fluff/awaymissions/prisonv2/nachruk
	name = "Activity Log"
	info = {"<center><b>��� ����� ��������� ����������� ������ "�������".</b></center><br>��� ����������� ������� ��� ���������� � ������������ � ��� ���� ������. <i>���� � ��� ���� ����� ������ ����� � �� ������ ��� ��������� �������, �� ������ ��������������� ��� �������.</i><br><br><center><b>� ���������, ��� ��� ������?</b></center><br>������ ����� �������� ���� ����� ����������� � �����-������ �����, ��� ������� ����� ��������� ������ ��� �����, �����, ��������� �� �� �����, ������ ��� ���������, �������� � ���:<br><b>���� "�"</b> - ����� ������� ���� ����� ����, ��� ��������� ����. ��� �������� ������ ���������, ���� �� ����� ����� �� �����.<br><b>���������</b> - ��� ������������ ���� � ������ ����������. ��� ���������� ����������.<br><b>���� � �����</b> - ����� ����� ������ � �����, ���������� ������� ���� ��� ������� ���� ������� ��� ��������� �� <b>���������</b>.<br><b>�����������</b> - ��������� � ����� ����� ������ � �������, ������� � ������. ����� ��� ��������� ������ � ��������. ������ ������ ����������.<br><b>�����</b> - ������ ������.<br><b>�������� �����</b> - ��� ��������� ������� � ����������. ������, ��� ������� ��������� - ������ ����������� � ���� �� ��� ��� ������ �� ��. ������ ��������� ����������.<br><b>��� ��������� �� �������������</b>.<br><br>����� ���� ��� ������� ���� �� ������, ������� ����� ������ ������ ������ LOCKDOWN - ��� �������� ������ �� ������ �������, �� ���������� �� ������� ���������. �� ����� ����� ������� �������, ����� � ������ ������������ ����� ���������� �� ���� �����, ����� 10, �� 5 �� ������ �����.<br>�������, ������ ����� �������� �������� ����� �� ������, ��� ����� ������ �� � ���� � �������, ��������� ��������� ������� � ����������� �������� � ������ �����. ������� ��������� � ����� � ��� � ��������. ����� �������������� ����� ������ ���� ������� ��������, ���� �� ���� ��������.<<br><center><b>������� � ��� ����!</b></center><br>������ ����� ����� ������ LOCKDOWN � ������ ���������� ������ ���������� �����. ������ �� ���������, �������� ���������� �� ������ ����� � ������� �� �������������, ��������� ��� � �������� ����������, �������� ���� � ����� ������. ���� ��� ���������� �������������, �� ������ �������� �� ���������.<br><br><center><b>��� ��������, ��� ������?</b></center><br>� ��� ���� � ������� ��������. ��� �� ������� ����, ��� ������������ ������ ������, ����������� �� � ���������� �����. �� �� ��������� ����-�� �������� �����? <br>����������� �� ���� ������� ��� � ������. ��� ���� ������ ���� ������� ����.<br>��������� �������� ����������� � ��������, ������ �� ����� �������� �� ����� �����, ��� ���� ������.<br><br><i>�� ���� ���, ������� ���� ������� ��� ������, �� � � ����� � ������. � ���������, ��� "��������"</i>"}

