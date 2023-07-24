extends CharacterBody2D


@export var desc = 200
@export var lado = 100
var relogio = 0.0
var adicional = 10
var adicionalY = 20
var rota = 20
var relogiy = 0.0
signal Touch
signal collided












func _physics_process(_delta):
	
	
	
	
	#move down here bellow
	relogiy += _delta
	velocity.y = desc + relogiy * adicionalY
	velocity. x = 0
	rotation_degrees = 0
	if Input.is_action_pressed("ui_right"):
		relogio += _delta
		velocity.x = lado + relogio * adicional
		rotation_degrees = -rota 
	
	if Input.is_action_pressed("ui_left"):
		relogio += _delta
		velocity.x = -lado - relogio * adicional
		rotation_degrees = rota
	
	if velocity.y > 0:
		$anima.play("run")
	else:
		$anima.play("idle")
	
	if Input.is_action_just_released("ui_right"):
		relogio = _delta * 0
	
	if Input.is_action_just_released("ui_left"):
		relogio = _delta * 0
	
	if velocity.y < 2:
		queue_free()
	else:
		pass
	col()
	move_and_slide()
func col():
	for u in get_slide_collision_count():
		var collision = get_slide_collision(u)
		if collision:
			get_tree().change_scene_to_file("res://cenas/game_over_fase_1.tscn")

func passou():
	pass







func _on_area_2d_area_entered(area):
	get_tree().change_scene_to_file("res://cenas/fase_2.tscn")
