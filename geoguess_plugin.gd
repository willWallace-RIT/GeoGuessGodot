extends EditorPlugin

var panel

func _enter_tree():
    panel = preload("res://addons/geoguess_ai/main_panel.tscn").instantiate()
    add_control_to_dock(DOCK_SLOT_RIGHT_UL, panel)

func _exit_tree():
    remove_control_from_docks(panel)
