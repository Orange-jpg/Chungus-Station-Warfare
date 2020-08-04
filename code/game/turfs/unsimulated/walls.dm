/turf/unsimulated/wall
	name = "wall"
	icon = 'icons/turf/walls.dmi'
	icon_state = "riveted"
	opacity = 1
	density = 1

/turf/unsimulated/wall/chung
	name = "Chungium Wall"
	desc= "wall made out of pure chungus"
	icon = 'icons/turf/walls.dmi'
	icon_state = "chungus"


/turf/unsimulated/wall/noob
	name = "NOOBium Wall"
	desc = "wall made out of pure noob"
	icon = 'icons/turf/walls.dmi'
	icon_state = "noob"



/turf/unsimulated/wall/fakeglass/chung
	name = "Chungium Window"
	desc= "Windows made out of pure chungus"
	icon = 'icons/turf/walls.dmi'
	icon_state = "chungus_w"


/turf/unsimulated/wall/fakeglass/noob
	name = "NOOBium Window"
	desc = "Window made out of pure noob"
	icon = 'icons/turf/walls.dmi'
	icon_state = "noob_w"


/turf/unsimulated/wall/fakeglass
	name = "window"
	icon_state = "fakewindows"
	opacity = 0

/turf/unsimulated/wall/other
	icon_state = "r_wall"




obj/machinery/light/chungus_shrine
	name = "Shrine to big chungus"
	icon = 'icons/shrine.dmi'
	icon_state = "chungus"
	on = 1
	light_range = 100
	light_power = 100
	layer = 5
obj/machinery/light/noob_shrine
	name = "Shrine to the holy noob"
	desc = "wall made out of pure noob"
	icon = 'icons/shrine.dmi'
	icon_state = "noob"
	on = 1
	light_range = 100
	light_power = 100
	layer = 5



obj/selfdestruct
	name = "Self-Destruct Button"
	desc = "press this to blow up the townhall"
	icon = 'icons/button.dmi'
	icon_state = "butt"
	var/friendly
obj/selfdestruct/chungus
	name = "Self-Destruct Button"
	desc = "press this to blow up the townhall"
	friendly = "Chungus"
obj/selfdestruct/noob
	name = "Self-Destruct Button"
	desc = "press this to blow up the townhall"
	friendly = "Noob"

obj/selfdestruct/attack_hand(mob/living/carbon/human/user)
	if(user.team == friendly)
		to_chat(user,"i won't blow up my own townhall")
	else if(do_after(user, 10 SECONDS))
		visible_message("<span class='danger'>\The [src] attempts to activate \the button!</span>")
		to_chat(world, "<br><br><br><H1> [friendly] BASE HAS BEEN BLOWN UP BY [user]</H1>")
		SSticker.force_ending = 1
		ticker.current_state = GAME_STATE_FINISHED
		Master.SetRunLevel(RUNLEVEL_POSTGAME)
		spawn
			ticker.declare_completion()
		log_and_message_admins("initiated a game ending.")
		sleep(250)
		world.Reboot()