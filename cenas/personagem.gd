extends CharacterBody2D


@export var desc = 200
@export var lado = 100
var relogio = 0.0
var adicional = 10
var adicionalY = 20
var rota = 20
var relogiy = 0.0
signal Touch

func _graus():
	if velocity.x < lado:
		rotation_degrees -= -40 * rota
		print("sssssssss")
	if velocity.x > lado:
		rotation_degrees += 40 * rota
	











func _physics_process(_delta):
	
	
	_graus()
	
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
	
	
	move_and_slide()





func _on_area_2d_area_entered(area):
	queue_free()



