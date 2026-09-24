extends Node2D

@onready var punkte_label: Label = $CanvasLayer/PunkteLabel
@onready var leben_label : Label  = $CanvasLayer/LebenLabel
# Der Hauptknoten bleibt bewusst leer.
# So koennen Schueler zuerst Player und Ball getrennt verstehen.

func _ready()-> void:
	punkte_label.text = "Punkte: " + str(Global.punkte)
	leben_label.text = "Leben: " + str(Global.leben)

func _process(delta: float) -> void:
	punkte_label.text = "Punkte: " + str(Global.punkte)
	leben_label.text = "Leben: " + str(Global.leben)
