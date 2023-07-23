extends Camera2D

# Variável para controlar a velocidade da interpolação.
const smoothness = 0.1

# Função que atualiza a posição da câmera de forma suave.
func _process(delta):
	# Obter a posição atual da câmera.
	var current_pos = position
	
	# Obter a posição desejada da câmera (posição do sprite).
	var target_pos = get_node("CharacterBody2D").global_position
	
	# Interpolar a posição atual da câmera até a posição desejada.
	var new_pos = current_pos.linear_interpolate(target_pos, smoothness)
	
	# Definir a nova posição suavizada da câmera.
	position = new_pos
