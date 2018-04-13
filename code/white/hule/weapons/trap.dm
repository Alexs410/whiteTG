/obj/item/grenade/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/stack/cable_coil))
		var/obj/item/stack/cable_coil/coil = W
		if(coil.get_amount() < 3)
			to_chat(user, "<span class='warning'>You need three length of cable!</span>")
			return
		coil.use(3)
		var/obj/structure/boobytrap/T = new(get_turf(src))
		user.dropItemToGround(src)
		src.forceMove(T)
		T.grenade = src
		message_admins("[ADMIN_LOOKUPFLW(user)] �������� �������� [ADMIN_COORDJMP(user)].")
		log_game("[key_name(user)] �������� �������� [COORD(user)].")
	..()

/obj/structure/boobytrap
	name = "�������� �����"
	desc = "������, �� ������� - �����!"
	icon_state = "boobytrap"
	icon = 'code/white/hule/weapons/weapons.dmi'
	anchored = TRUE
	can_buckle = TRUE
	buckle_lying = TRUE
	resistance_flags = FLAMMABLE
	max_integrity = 100
	integrity_failure = 30
	var/obj/item/grenade/grenade

/obj/structure/boobytrap/proc/activate()
	if(grenade)
		grenade.prime()
		qdel(src)

/obj/structure/boobytrap/Crossed(atom/movable/AM as mob|obj)
	if(ismob(AM))
		var/mob/MM = AM
		if(MM.movement_type & FLYING)
			return
		if(ismouse(MM))
			return
		if(ishuman(AM))
			var/mob/living/carbon/human/H = AM
			if(H.m_intent == MOVE_INTENT_WALK || H.has_trait(TRAIT_LIGHT_STEP))
				return
	activate()

/obj/structure/boobytrap/attack_hand(mob/user)
	activate()

/obj/structure/boobytrap/attack_paw(mob/user)
	return attack_hand(user)

/obj/structure/boobytrap/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/wirecutters) && !(flags_1&NODECONSTRUCT_1))
		W.play_tool_sound(src)
		if(prob(75) && user.mind.antag_datums == null)
			to_chat(user, "<span class='userdanger'>����� �����! ��� ���� ���� �������� �������������?</span>")
			activate()
			return
		if(grenade)
			grenade.forceMove(get_turf(user))
		qdel(src)
	..()

