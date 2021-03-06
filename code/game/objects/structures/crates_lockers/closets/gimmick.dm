/obj/structure/closet/cabinet
	name = "cabinet"
	desc = "Old will forever be in fashion."
	icon_state = "cabinet_closed"
	icon_closed = "cabinet_closed"
	icon_opened = "cabinet_open"

/obj/structure/closet/cabinet/update_icon()
	if(!opened)
		icon_state = icon_closed
	else
		icon_state = icon_opened

/obj/structure/closet/acloset
	name = "strange closet"
	desc = "It looks alien!"
	icon_state = "acloset"
	icon_closed = "acloset"
	icon_opened = "aclosetopen"


/obj/structure/closet/gimmick
	name = "administrative supply closet"
	desc = "It's a storage unit for things that have no right being here."
	icon_state = "syndicate1"
	icon_closed = "syndicate1"
	icon_opened = "syndicate1open"
	anchored = 0

/obj/structure/closet/gimmick/russian
	name = "russian surplus closet"
	desc = "It's a storage unit for Russian standard-issue surplus."
	icon_state = "syndicate1"
	icon_closed = "syndicate1"
	icon_opened = "syndicate1open"

/obj/structure/closet/gimmick/russian/New()
	..()
	sleep(2)
	new /obj/item/clothing/head/ushanka(src)
	new /obj/item/clothing/head/ushanka(src)
	new /obj/item/clothing/head/ushanka(src)
	new /obj/item/clothing/head/ushanka(src)
	new /obj/item/clothing/head/ushanka(src)
	new /obj/item/clothing/under/soviet(src)
	new /obj/item/clothing/under/soviet(src)
	new /obj/item/clothing/under/soviet(src)
	new /obj/item/clothing/under/soviet(src)
	new /obj/item/clothing/under/soviet(src)


/obj/structure/closet/gimmick/tacticool
	name = "tacticool closet"
	icon_state = "syndicate1"
	icon_closed = "syndicate1"
	icon_opened = "syndicate1open"

/obj/structure/closet/gimmick/tacticool/New()
	..()
	sleep(2)
	new /obj/item/clothing/glasses/eyepatch(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/clothing/gloves/combat(src)
	new /obj/item/clothing/gloves/combat(src)
	new /obj/item/clothing/head/helmet/swat(src)
	new /obj/item/clothing/head/helmet/swat(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/shoes/swat(src)
	new /obj/item/clothing/shoes/swat(src)
	new /obj/item/clothing/suit/armor/swat(src)
	new /obj/item/clothing/suit/armor/swat(src)
	new /obj/item/clothing/under/syndicate/tacticool(src)
	new /obj/item/clothing/under/syndicate/tacticool(src)


/obj/structure/closet/thunderdome
	name = "\improper Thunderdome closet"
	desc = "Everything you need!"
	icon_state = "syndicate"
	icon_closed = "syndicate"
	icon_opened = "syndicateopen"
	anchored = 1

/obj/structure/closet/thunderdome/New()
	..()
	sleep(2)

/obj/structure/closet/thunderdome/tdred
	name = "red-team Thunderdome closet"

/obj/structure/closet/thunderdome/tdred/New()
	..()
	sleep(2)
	new /obj/item/clothing/suit/armor/tdome/red(src)
	new /obj/item/clothing/suit/armor/tdome/red(src)
	new /obj/item/clothing/suit/armor/tdome/red(src)
	new /obj/item/weapon/melee/energy/sword(src)
	new /obj/item/weapon/melee/energy/sword(src)
	new /obj/item/weapon/melee/energy/sword(src)
	new /obj/item/weapon/gun/energy/laser(src)
	new /obj/item/weapon/gun/energy/laser(src)
	new /obj/item/weapon/gun/energy/laser(src)
	new /obj/item/weapon/melee/baton/loaded(src)
	new /obj/item/weapon/melee/baton/loaded(src)
	new /obj/item/weapon/melee/baton/loaded(src)
	new /obj/item/weapon/storage/box/flashbangs(src)
	new /obj/item/weapon/storage/box/flashbangs(src)
	new /obj/item/weapon/storage/box/flashbangs(src)
	new /obj/item/clothing/head/helmet/thunderdome(src)
	new /obj/item/clothing/head/helmet/thunderdome(src)
	new /obj/item/clothing/head/helmet/thunderdome(src)

/obj/structure/closet/thunderdome/tdgreen
	name = "green-team Thunderdome closet"
	icon_state = "syndicate1"
	icon_closed = "syndicate1"
	icon_opened = "syndicate1open"

/obj/structure/closet/thunderdome/tdgreen/New()
	..()
	sleep(2)
	new /obj/item/clothing/suit/armor/tdome/green(src)
	new /obj/item/clothing/suit/armor/tdome/green(src)
	new /obj/item/clothing/suit/armor/tdome/green(src)
	new /obj/item/weapon/melee/energy/sword(src)
	new /obj/item/weapon/melee/energy/sword(src)
	new /obj/item/weapon/melee/energy/sword(src)
	new /obj/item/weapon/gun/energy/laser(src)
	new /obj/item/weapon/gun/energy/laser(src)
	new /obj/item/weapon/gun/energy/laser(src)
	new /obj/item/weapon/melee/baton/loaded(src)
	new /obj/item/weapon/melee/baton/loaded(src)
	new /obj/item/weapon/melee/baton/loaded(src)
	new /obj/item/weapon/storage/box/flashbangs(src)
	new /obj/item/weapon/storage/box/flashbangs(src)
	new /obj/item/weapon/storage/box/flashbangs(src)
	new /obj/item/clothing/head/helmet/thunderdome(src)
	new /obj/item/clothing/head/helmet/thunderdome(src)
	new /obj/item/clothing/head/helmet/thunderdome(src)

obj/structure/closet/ork/piloguns
	name = "Lots of guns!"
	desc = "Waaagh gear for da WAAAAGH!"
	icon_state = "pileclosed"
	icon_closed = "pileclosed"
	icon_opened = "pileopen"

/obj/structure/closet/ork/piloguns/New()
	..()
	sleep(2)
	new /obj/item/weapon/choppa(src)
	new /obj/item/weapon/choppa(src)
	new /obj/item/weapon/gun/projectile/slugga(src)
	new /obj/item/weapon/gun/projectile/slugga(src)
	new /obj/item/weapon/choppa(src)
	new /obj/item/weapon/gun/projectile/slugga(src)
	new /obj/item/weapon/grenade/stickbomb(src)
	new /obj/item/weapon/grenade/stickbomb(src)
	new /obj/item/weapon/grenade/stickbomb(src)
	new /obj/item/weapon/grenade/stickbomb(src)
	var/extragun
	if (prob(10)) //10% chance for a normal weapon
		extragun = pick(/obj/item/weapon/gun/projectile/automatic/lasgun, /obj/item/weapon/gun/projectile/automatic/autogun2, /obj/item/weapon/gun/projectile/shotgun)
		new extragun(src)
	else if (prob(2)) //1.8% chance for a rare weapon. No plasma, tau or missiles though.
		extragun = pick(/obj/item/weapon/gun/projectile/automatic/bpistol , /obj/item/weapon/gun/projectile/automatic/tommygun , /obj/item/weapon/gun/projectile/handflamer)
		new extragun(src)

/obj/structure/closet/tau/supply
	name = "Tau Supplies"
	desc = "Everything a firecast needs to be dangerous."
	icon_state = "pileclosed"
	icon_closed = "pileclosed"
	icon_opened = "pileopen"

/obj/structure/closet/tau/supply/New()
	..()
	sleep(2)
	new /obj/item/device/radio/headset/headset_srv(src)
	new /obj/item/clothing/under/taum(src)
	new /obj/item/clothing/under/tauf(src)
	new	/obj/item/weapon/gun/energy/pulse_rifle/tpc(src)
	new /obj/item/clothing/shoes/fwboots(src)
	new /obj/item/clothing/suit/armor/fwarmor(src)
	new /obj/item/clothing/head/fwhelmet(src)
