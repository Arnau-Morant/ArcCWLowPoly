$modelname "weapons\arccw\c_lowpolym249.mdl"
 
$bodygroup "studio" {
	studio "c_lowpolym249.smd"
}

$bodygroup "1" {
	blank
	studio "defhs.smd"
	studio "modhs.smd"
}

$bodygroup "2" {
	studio "ststock.smd"
	studio "buffer.smd"
}

$bodygroup "3" {
	studio "stbar.smd"
	studio "commandobar.smd"
	studio "sawbar.smd"
	studio "redbar.smd"
}

$bodygroup "4" {
	studio "defbox.smd"
	studio "100box.smd"
}

$texturegroup "skinfamilies"
{
	{ "Black" "LightBlackWire" "DarkTan" "2GreenMag" }
	{ "Black" "Wireframe" "DarkTan" "2GreenMag" }
	{ "Black" "LightBlackWire" "Black" "Black" }
}

$cdmaterials "models\weapons\arccw\shared"

$attachment "1" "barrel" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0 0 -1 rotate -10 180 180
$attachment "3" "camera" 0 0 0 rotate 0 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "exp" {
	"anims\idle_iron.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "idle" {
	"anims\idle.smd"
	"anims\idle_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty" {
	"anims\idle_empty.smd"
	"anims\idle_iron_empty.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "fire" {
	"anims\fire.smd"
	"anims\fire_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}

$sequence "fire_empty" {
	"anims\fire_empty.smd"
	"anims\fire_iron_empty.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}

$sequence "ready" "anims\ready.smd" {
	fps 60
	"ACT_VM_DRAW" 1
	snap
}

$sequence "reload" {
	"anims\reload.smd"
	"anims\reload_iron.smd"
	blend "sights" 0 1
 	fps 60
 	"ACT_VM_RELOAD" 1
 	snap
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_100" {
	"anims\reload_100.smd"
	"anims\reload_iron.smd"
	blend "sights" 0 1
 	fps 60
 	"ACT_VM_RELOAD" 1
 	snap
}

$sequence "reload_empty_100" {
	"anims\reload_empty_100.smd"
	"anims\reload_empty_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "enter_inspect" {
	"anims\enter_inspect.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "idle_inspect" {
	"anims\idle_inspect.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "exit_inspect" {
	"anims\exit_inspect.smd"
	"anims\exit_inspect_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "enter_inspect_empty" {
	"anims\enter_inspect_empty.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "idle_inspect_empty" {
	"anims\idle_inspect_empty.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "exit_inspect_empty" {
	"anims\exit_inspect_empty.smd"
	"anims\exit_inspect_iron_empty.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "enter_inspect_100" {
	"anims\enter_inspect_100.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "idle_inspect_100" {
	"anims\idle_inspect_100.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "exit_inspect_100" {
	"anims\exit_inspect_100.smd"
	"anims\exit_inspect_iron_100.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "enter_inspect_empty_100" {
	"anims\enter_inspect_empty_100.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "idle_inspect_empty_100" {
	"anims\idle_inspect_empty_100.smd"
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$sequence "exit_inspect_empty_100" {
	"anims\exit_inspect_empty_100.smd"
	"anims\exit_inspect_iron_empty_100.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_IDLE" 1
	snap
}

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"