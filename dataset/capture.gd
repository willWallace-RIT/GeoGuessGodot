extends Node

@export var output_path := "user://dataset/"
@export var samples_per_run := 50

var metadata_writer = preload("res://addons/geoguess_ai/dataset/metadata_writer.gd").new()

func capture_dataset():
    DirAccess.make_dir_recursive_absolute(output_path)

    for i in range(samples_per_run):
        randomize_camera()
        await get_tree().process_frame

        var img = get_viewport().get_texture().get_image()
        var filename = "sample_%05d.png" % i
        img.save_png(output_path + filename)

        metadata_writer.save_metadata(filename)

func randomize_camera():
    var cam = get_viewport().get_camera_3d()
    if cam == null:
        return

    cam.global_position = Vector3(
        randf_range(-100, 100),
        randf_range(2, 20),
        randf_range(-100, 100)
    )

    cam.rotation = Vector3(
        deg_to_rad(randf_range(-10, 10)),
        deg_to_rad(randf_range(0, 360)),
        0
    )
