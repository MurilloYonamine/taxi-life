extends Control

func _on_button_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	
func _on_button_load_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/load_menu.tscn")
	
func _on_button_options_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/options_menu.tscn")

func _on_button_extras_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/extras_menu.tscn")

func _on_button_quit_pressed() -> void:
	get_tree().quit()
