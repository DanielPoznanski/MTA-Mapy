function onClientResourceStart ()

--====================== [ Puma-Markers 1.6 ] =======================--
--========================= [ EDIT HERE: ] ==========================--

	SlowerPower = 0.7								--> [1] EnterSpeed , [0.7] = 70% of old speed
	BoosterPower = 1.5								--> [1] EnterSpeed , [1.5] = 150% of old speed
	
	SmallJumperPower = 0.2							--> [0] NoJump , [0.2] Small , [0.4] Medium , [0.8] Big , [>1] Huge
	MediumJumperPower = 0.4							--> [0] NoJump , [0.2] Small , [0.4] Medium , [0.8] Big , [>1] Huge
	BigJumperPower = 0.8							--> [0] NoJump , [0.2] Small , [0.4] Medium , [0.8] Big , [>1] Huge
	
	CamShakeTimeInSeconds = 5						--> CameraShake in seconds
	
	GameSpeedUpPower = 3							--> GameSpeed after entering GameSpeedUp marker
	GameSpeedDownPower = 0.5						--> GameSpeed after entering GameSpeedDown marker
	
	RanibowWaterSpeed = 1							--> If MarkerColor = (0,0,0) and Interior = (1)

--[[

========================= [ INSTRUCTIONS: ] ==========================

1. Put this file and Puma-Markers.lua.compile file into your map folder.
2. Add these lines into your [meta.xml] file:

	<script src="Puma-MarkersEDIT.lua" type="client" />
	<script src="Puma-Markers.lua.compiled" type="client" />

3. Done =]

============================ [ WATER/SKY: ] ============================

1. To change your sky and water colors use markers.
2. Open marker settings and set Interior to 1 or 2 or 3
    Interior = 1 --> Water color
	Interior = 2 --> Sky Top color
	Interior = 3 --> Sky Bottom color
3. After setting Interior to 1 or 2 or 3, choose the marker color

Marker color = sky color
( red marker with Interior = 1 		-->			Red Water )
( blue marker with Interior = 2 		-->			Blue Sky Top )
( green marker with Interior = 3 		-->			Green Sky Bottom )

You don't have to touch marker to change color, if you will create it somewhere in your map (can be far far away from your map) it will work too.

============================ [ MARKERS: ] ============================

|==========|	|===========================|	|===========|
|COLORNAME |	|FUNCTION					|	|COLORCODE	|
|==========|	|===========================|	|===========|

RED 			- slowerer			 			(255,0,0)
GREEN 			- speed up booster 				(0,255,0)

LIGHTBLUE		- jumper (big)					(128,128,255)
BLUE			- jumper (normal)				(0,0,255)
wfdDARKBLUE		- jumper (small)				(0,0,128)

DARKRED			- blower						(128,0,0)
DARKGREEN		- stopper						(0,128,0)

YELLOW			- teleport with old velocity	(255,255,0)
DARKYELLOW		- teleport with stop			(128,128,0)

ORANGE			- teleport exit from YELLOW		(255,128,0)
DARKORANGE		- teleport exit from DARKYELLOW	(128,64,0)

LIGHTLIMEBLUE	- flipper						(128,255,255)
LIMEBLUE		- reverser						(0,255,255)
DARKLIMEBLUE	- rotator						(0,128,128)

LIMEGREEN		- cars fly!						(128,255,0)
DARKLIMEGREEN	- cars swim!					(64,128,0)

PURPLE 			- gravity change (up)			(255,0,255)
DARKPURPLE 		- gravity change (down)			(128,0,128)

PURPLE-N		- gravity change (north)		(254,0,254)
PURPLE-S		- gravity change (south)		(253,0,253)
PURPLE-E		- gravity change (east)			(252,0,252)
PURPLE-W		- gravity change (west)			(251,0,251)

BLUEPURPLE-1	- no gravity (space)			(100,0,255)
BLUEPURPLE-2	- low gravity					(150,0,255)
BLUEPURPLE-3	- normal gravity				(200,0,255)

DARKPINK 		- magnet wheels					(128,0,64)

SEA				- camshake time					(0,255,128)
PINK			- flat wheels					(255,0,128)

WHITE			- gamespeed up (3)				(255,255,255)
SILVER			- gamespeed down (0.5)			(128,128,128)
]]--

end
addEventHandler( "onClientResourceStart", getResourceRootElement(getThisResource()), onClientResourceStart )