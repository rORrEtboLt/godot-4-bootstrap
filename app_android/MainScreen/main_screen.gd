extends Node2D

@export var levelSelectScene: PackedScene

@onready var sceneTree = get_tree()


func _get_configuration_warnings():
	return "ERR! Next level scene is empty" if not levelSelectScene else ""


func _on_play_button_down():
	sceneTree.change_scene_to_packed(levelSelectScene)

func _on_exit_button_down():
	sceneTree.quit()
