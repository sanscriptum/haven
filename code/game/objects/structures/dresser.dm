/obj/structure/dresser
	name = "dresser"
	desc = "A nicely-crafted wooden dresser. It's filled with lots of undies."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "dresser"
	density = 1
	anchored = 1

/obj/structure/dresser/attack_hand(mob/user as mob)
	if(ishuman(user))
		var/mob/living/carbon/human/H = user

		var/new_undies = input(user, "Select your underwear", "Changing")  as null
		if(new_undies)
			H.underwear = new_undies

		add_fingerprint(H)
		H.update_body()