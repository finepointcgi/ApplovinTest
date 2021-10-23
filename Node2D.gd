extends Node2D

func _ready():
	
	pass



func loadBanner() :
	applovin_max.loadBanner("a760a8dcbcb7a7f4",false ,self.get_instance_id())

func loadInetr() :
	applovin_max.loadInterstitial("c2388c98f3bad91f", self.get_instance_id())
 
func removeBanner() :
	 applovin_max.removeBanner("449d3e1f299a6c41") 

func _on_banner_shown(id: String):
	yield(get_tree().create_timer(10),"timeout")
	applovin_max.removeBanner(id) 


func _on_banner_loaded(id: String):
	applovin_max.showBanner(id)

func _on_interstitial_loaded(id: String) :
	applovin_max.showInterstitial(id)


func _on_interstitial_failed_to_load(id: String, error: String):
	get_tree().paused = false

func _on_interstitial_close(id: String) :
	get_tree().paused = false


func _on_Button_button_down():
	loadBanner()
	pass # Replace with function body.
