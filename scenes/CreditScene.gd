extends Node2D

export var speed : int = 200 # Kecepatan pergerakan teks (piksel per detik)
onready var credit_label = $CreditLabel

func _ready():
	# Atur posisi awal CreditLabel di luar layar sebelah kanan
	credit_label.rect_position.x = get_viewport_rect().size.x
	credit_label.rect_position.y = (get_viewport_rect().size.y / 2) - (credit_label.rect_size.y / 2) # Tengah vertikal

func _process(delta):
	# Gerakkan CreditLabel ke kiri
	credit_label.rect_position.x -= speed * delta
	
	# Jika CreditLabel sudah keluar dari layar sebelah kiri, kembalikan ke posisi awal
	if credit_label.rect_position.x < -credit_label.rect_size.x:
		credit_label.rect_position.x = get_viewport_rect().size.x
