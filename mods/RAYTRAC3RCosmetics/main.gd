extends Node

const ID = "RAYTRAC3RCosmetics"
onready var Lure = get_node("/root/SulayreLure")

func _ready():
	#print("RAYTRAC3R Cosmetics should be working!") #test to see if the gd even works?
	
	#set up minty head
	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/calico/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/collie/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/spotty/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/tux/minty.png")
	Lure.assign_pattern_texture(ID, ID + ".pattern_heartchest", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/minty.png")
	Lure.assign_pattern_texture(ID, "ClownMod.pattern_clown", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/pattern_compatibility/clown/minty.png")
	Lure.assign_pattern_texture(ID, "YeenFishin.pattern_hyena", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/pattern_compatibility/hyena/minty.png")
	Lure.assign_face_animation(ID, ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Species/minty_face.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_cig", ID + ".species_minty", "res://Assets/Models/Cosmetics/cig_dog.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_scarabmask", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_scarabmask_dog.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_babyhair", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_babyhair.tres")
	
	#set up penguin head
	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_pattern_texture(ID, ID + ".pattern_heartchest", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_face_animation(ID, ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Species/penguin_face.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_cig", ID + ".species_penguin", "res://Assets/Models/Cosmetics/cig_dog.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_scarabmask", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_scarabmask_penguin.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_babyhair", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_babyhair.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_plumage", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_plumage.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_blueplumage", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_plumage.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_greenplumage", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_plumage.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_pinkplumage", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_plumage.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_redplumage", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_plumage.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_yellowplumage", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_plumage.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_glasses_round", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_glassesround_penguin.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_eyepatch", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_eyepatch_penguin.tres")
	
	
	#add patterns
	Lure.add_content(ID,"pattern_heartchest","mod://Resources/Cosmetics/pattern_heartchest.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	
	#add shirts
	Lure.add_content(ID,"dibghost_shirt","mod://Resources/Cosmetics/undershirt_graphic_tshirt_dibghost.tres",[Lure.LURE_FLAGS.FREE_UNLOCK]) # this turns into <RAYTRAC3RCosmetics.dibghost_shirt>
	
	#add eyes
	Lure.add_content(ID,"red_ring","mod://Resources/Cosmetics/eye_ring_red.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"orange_ring","mod://Resources/Cosmetics/eye_ring_orange.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"yellow_ring","mod://Resources/Cosmetics/eye_ring_yellow.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"green_ring","mod://Resources/Cosmetics/eye_ring_green.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"blue_ring","mod://Resources/Cosmetics/eye_ring_blue.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"purple_ring","mod://Resources/Cosmetics/eye_ring_purple.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"purple_minty","mod://Resources/Cosmetics/eye_minty_purple.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"ac_ankha","mod://Resources/Cosmetics/eye_ac_ankha.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"ac_audie","mod://Resources/Cosmetics/eye_ac_audie.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	
	#add heads
	Lure.add_content(ID,"species_minty","mod://Resources/Cosmetics/species_minty.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"species_penguin","mod://Resources/Cosmetics/species_penguin.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	
	#add colors
	Lure.add_content(ID,"pcolor_mint","mod://Resources/Cosmetics/pcolor_mint.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"scolor_mint","mod://Resources/Cosmetics/scolor_mint.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"pcolor_silver","mod://Resources/Cosmetics/pcolor_silver.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"scolor_silver","mod://Resources/Cosmetics/scolor_silver.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])

	#add accessories
	Lure.add_content(ID,"accessory_scarabmask","mod://Resources/Cosmetics/accessory_scarabmask.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"accessory_babyhair","mod://Resources/Cosmetics/accessory_babyhair.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"accessory_plumage","mod://Resources/Cosmetics/accessory_plumage.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"accessory_pinkplumage","mod://Resources/Cosmetics/accessory_pinkplumage.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"accessory_redplumage","mod://Resources/Cosmetics/accessory_redplumage.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"accessory_yellowplumage","mod://Resources/Cosmetics/accessory_yellowplumage.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"accessory_greenplumage","mod://Resources/Cosmetics/accessory_greenplumage.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"accessory_blueplumage","mod://Resources/Cosmetics/accessory_blueplumage.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
