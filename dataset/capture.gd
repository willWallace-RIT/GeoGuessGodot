# dataset/capture.gd
extends Node

@export var output_path := "user://dataset/"
@export var samples_per_run := 100

func capture_dataset():
    for i in range(samples_per_run):
        randomize_camera()
        await get_tree().process_frame
        
        var img = get_viewport().get_texture().get_image()
        var filename = "sample_%05d.png" % i
        img.save_png(output_path + filename)
        
        save_metadata(filename)

func randomize_camera():
    var cam = get_viewport().get_camera_3d()
    cam.global_position = Vector3(
        randf_range(-100, 100),
        randf_range(1, 20),
        randf_range(-100, 100)
    )
    cam.rotation = Vector3(
        deg_to_rad(randf_range(-10, 10)),
        deg_to_rad(randf_range(0, 360)),
        0
    )
