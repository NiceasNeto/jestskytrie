extends TileMap


# Called when the node enters the scene tree for the first time.









func _on_collision_shape_2d_2_tree_entered():
	print("sdasfaf")


func _on_area_2d_area_entered(area):
	queue_free()
