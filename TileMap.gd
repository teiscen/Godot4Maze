extends TileMap

@export var width = 83
@export var height = 83
@export var tick_duration = 0.3

var generation_complete = false

func _ready():

	var blackTile = Vector2(1,0)
	var purpleTile = Vector2(7,0)
	var topBound = -20
	var midLine = -1
	var lowerBound = 19
	var leftBound = -10 
	var rightBound = 10

	
	var masterCount = 0
	var rng = RandomNumberGenerator.new()
	var array = []
	
	for i in range(0, 1141):
		var x = rng.randi_range(0, 7)
		var y = rng.randi_range(1, 3)
		array.append(Vector2(x, y))
	
	

	var count = 0
	# Check that Center Prints
	for y in range(topBound, midLine):	
		for x in range(leftBound, rightBound):
			var givenCords = Vector2(x,y)
			set_cell(0,givenCords,0,array[masterCount],0)
			masterCount += 1
		if count % 2 == 0:
			leftBound -= 1
		else:
			rightBound += 1
		count += 1

	count = 0
	leftBound = -20
	rightBound= 19
	for y in range(midLine, lowerBound):
		for x in range(leftBound, rightBound):
			var givenCords = Vector2(x,y)
			set_cell(0,givenCords,0,array[masterCount],0)
			masterCount += 1
		if count % 2 == 0:
			leftBound += 1
		else:
			rightBound -= 1
		count += 1
	
	print(masterCount)	
	erase_cell(0, Vector2(-1,-1))
	


