extends Area2D

# put this object child of <Player>
# put <CollisionShape2D> size = <Player> size 

var health
var damage

func receive_hit(_damage) : # <receive_hit> function
	
	health -= _damage

func _on_Damage_Area_area_entered(area) :
	
	if area.name == "enemy" : # if enemy type is <Area2D> put enemy name here
		
		receive_hit(damage) # put <damage value> here

func _on_Damage_Area_body_entered(body) :
	
	if body.name == "enemy" : # if enemy type is <KinematicBody2D> put enemy name here
		
		receive_hit(damage) # put <damage value> here
