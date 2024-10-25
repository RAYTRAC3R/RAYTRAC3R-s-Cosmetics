extends Node

const ID = "RAYTRAC3RCosmetics"
onready var Lure = get_node("/root/SulayreLure")

func _ready():
	print("RAYTRAC3R Cosmetics should be working!") #test to see if the gd even works?
	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/minty.png")
	Lure.assign_pattern_texture(ID, ID + ".pattern_heartchest", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/minty.png")
	Lure.assign_face_animation(ID, ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Species/minty_face.tres")
	
	Lure.add_content(ID,"pattern_heartchest","mod://Resources/Cosmetics/pattern_heartchest.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	
	Lure.add_content(ID,"dibghost_shirt","mod://Resources/Cosmetics/undershirt_graphic_tshirt_dibghost.tres",[Lure.LURE_FLAGS.FREE_UNLOCK]) # this turns into <RAYTRAC3RCosmetics.dibghost_shirt>
	
	Lure.add_content(ID,"red_ring","mod://Resources/Cosmetics/eye_ring_red.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"orange_ring","mod://Resources/Cosmetics/eye_ring_orange.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"yellow_ring","mod://Resources/Cosmetics/eye_ring_yellow.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"green_ring","mod://Resources/Cosmetics/eye_ring_green.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"blue_ring","mod://Resources/Cosmetics/eye_ring_blue.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"purple_ring","mod://Resources/Cosmetics/eye_ring_purple.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	
	Lure.add_content(ID,"species_minty","mod://Resources/Cosmetics/species_minty.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	
	Lure.add_content(ID,"pcolor_mint","mod://Resources/Cosmetics/pcolor_mint.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"scolor_mint","mod://Resources/Cosmetics/scolor_mint.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
