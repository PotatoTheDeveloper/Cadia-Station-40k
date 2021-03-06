/obj/machinery/computer/exterminatus   //this is a computer that can reset the round. That game physically ends when the antag clicks 'exterminatus'
	name = "Weapons"
	desc = "This terminal acts as the nerve center for the Stargazer's weapon systems."
	icon_state = "ob1"
	icon = 'icons/obj/machines/Orbitalcomand.dmi'
	density = 1
	anchored = 1
	var/inrange = 0	//Are we even in range?
	var/firing = 0	//Are we already firing?
	var/moving = 0

/obj/machinery/computer/exterminatus/attack_hand(mob/user as mob)	//Starting menu
	if(user.faction != "Inquisitor")								//Not an inquisitor- we don't want to hear it.
		usr << "\red The Navigator of the Marinaeque Testudinis ignores you. Apparantly he only communicates with Inquisitors. What a snob."
		return
	user.set_machine(src)
	var/dat = "<B>Marinaeque Testudinis Weapons Array:</B><BR>"
	if (inrange)
		dat += "Locked on to ArchAngel IV, Sector 9<BR>"
	if (!inrange)
		dat += "Holding position in ArchAngel system<BR>"
	if (firing)
		dat += "Firing Cyclonic Torpedo<BR>"
	if (!firing)
		dat += "4 Cyclonic Torpedos armed<BR>"
	dat += "<B>Weapons Online</B><BR>"
	dat += "<A href='byond://?src=\ref[src];range=1'>Move into low orbit of ArchAngel IV</A><BR>"
	dat += "<A href='byond://?src=\ref[src];fire=1'>Exterminatus</A><BR>"
	dat += "The will of the Emperor comes before all else. <br>May he have mercy upon their souls.<HR>"
	user << browse(dat, "window=scroll")
	onclose(user, "scroll")
	return

/obj/machinery/computer/exterminatus/attack_paw(mob/user as mob)
	return src.attack_hand(user)

/obj/machinery/computer/exterminatus/Topic(href, href_list)
	if(..())
		return

	if (usr.stat || usr.restrained()) return //Nope! We are either dead or restrained!
	if (href_list["fire"])
		if (firing)
			usr << "\red The Black Ship Marinaeque Testudinis is already firing."
			return

		if (!inrange)
			usr << "\red The Black Ship Marinaeque Testudinis is not yet in range."
			return

		else
			exterminatus()
			return

	if (href_list["range"])
		if (firing)
			usr << "\red The Black Ship Marinaeque Testudinis is already firing at ArchAngel IV!"
			return
		if (inrange)
			usr << "\red The Black Ship Marinaeque Testudinis is already in range of ArchAngel IV!"
			return
		else
			if (!inrange)
				move()
				return

/obj/machinery/computer/exterminatus/proc/exterminatus()
	if(usr)
		award(usr, "<span class='silver'>The Emperor's will before all else...</span>")
	firing = 1	//Are we already firing?

	ticker.station_heretics_cinematic()
	return

/obj/machinery/computer/exterminatus/proc/move()
	usr << "\red Stargazer moving into position."
	if(!moving)
		spawn (0)
			moving = 1
			playsound(src.loc,'sound/effects/droppod.ogg',75,1)
			sleep(240)
			priority_announce("Attention... Attention.... Attention... Inquisitorial Black Ship detected in orbit.... Prepare the TITH*T*TH*E*H**------ When the people forget their duty they are no longer human and become something less than beasts. They have no place in the bosom of humanity nor in the heart of the Emperor. Let them die and be forgotten......__*(@%*@%*.....")
			world << "As you peer into the sky, a dreaded chill runs down your spine. For you thought that the utter monstrosity you are having the misfortune of gazing upon was legend, not reality.. A Black Ship of the Ordo Hereticus coldly stares back at you. Pray to your god, or gods, for there is no escaping the Emperor's Wrath..."
			inrange = 1	//Now in range
			moving = 0
			return

	else
		return








/*
Decoration
*/

/obj/structure/exterminatus
	name = "Systems"
	icon = 'icons/obj/machines/artillery.dmi'
	anchored = 1
	density = 1
