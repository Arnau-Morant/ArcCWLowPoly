$modelname "weapons\arccw\c_lowpolydeagle.mdl"
 
$bodygroup "studio" {
	studio "c_lowpolydeagle.smd"
}

$texturegroup "skinfamilies"
{
	{ "LightBlackWire" }
	{ "Wireframe" }
}

$cdmaterials "models\weapons\arccw\shared"

$attachment "1" "Barrel" 0 0 0 rotate -90 0 0
$attachment "2" "Brass" 0 0 0 rotate -10 140 180
$attachment "5" "Camera" 0 0 10 rotate -90 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "idle"{
	"anims\idle.smd" 
	"anims\idle_iron.smd"
	fps 60
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty"{
	"anims\idle_empty.smd" 
	"anims\idle_iron_empty.smd"
	fps 60
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "fire_01" {
	"anims\fire_01.smd"
	"anims\fire_iron.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "fire_02" {
	"anims\fire_02.smd"
	"anims\fire_iron.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "fire_03" {
	"anims\fire_03.smd"
	"anims\fire_iron.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "fire_empty" {
	"anims\fire_empty.smd"
	"anims\fire_iron_empty.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "ready" "anims\ready.smd" {
	fps 60
	"ACT_VM_DRAW" 1
	snap
	{ event 5004 16 "Weapon_lowpolyhk416.Charge" }
	{ event 5004 46 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "reload" {
	"anims\reload.smd"
	"anims\reload_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	snap
	{ event 5004 9 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 14 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 17 "Weapon_lowpolyhk416.Magout" }
	{ event 5004 67 "Weapon_lowpolyhk416.Magin" }
	{ event 5004 84 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 116 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	snap
	{ event 5004 9 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 14 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 18 "Weapon_lowpolyhk416.FastMagout" }
	{ event 5004 48 "Weapon_lowpolyhk416.Drop" }
	{ event 5004 68 "Weapon_lowpolyhk416.Magin" }
	{ event 5004 106 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 107 "Weapon_lowpolyhk416.Boltrelease" }
	{ event 5004 130 "Weapon_lowpolyhk416.Shoulder" }
}

// $sequence "enter_inspect" {
// 	"anims\enter_inspect.smd"
// 	"ACT_VM_IDLE" 1
// 	fadein 0.03
// 	fadeout 0.03
// 	fps 60
// 	{ event 5004 10 "Weapon_lowpolyhk416.Raise" }
// }

// $sequence "idle_inspect" {
// 	"anims\idle_inspect.smd"
// 	"ACT_VM_IDLE" 1
// 	fadein 0.03
// 	fadeout 0.03
// 	fps 60
// }

// $sequence "exit_inspect" {
// 	"anims\exit_inspect.smd"
// 	"ACT_VM_IDLE" 1
// 	fadein 0.03
// 	fadeout 0.03
// 	fps 60
// 	{ event 5004 7 "Weapon_lowpolyhk416.Rattle" }
// 	{ event 5004 96 "Weapon_lowpolyhk416.Shoulder" }
// }

// $sequence "enter_inspect_empty" {
// 	"anims\enter_inspect_empty.smd"
// 	"ACT_VM_IDLE" 1
// 	fadein 0.03
// 	fadeout 0.03
// 	fps 60
// 	{ event 5004 10 "Weapon_lowpolyhk416.Raise" }
// }

// $sequence "idle_inspect_empty" {
// 	"anims\idle_inspect_empty.smd"
// 	"ACT_VM_IDLE" 1
// 	fadein 0.03
// 	fadeout 0.03
// 	fps 60
// }

// $sequence "exit_inspect_empty" {
// 	"anims\exit_inspect_empty.smd"
// 	"ACT_VM_IDLE" 1
// 	fadein 0.03
// 	fadeout 0.03
// 	fps 60
// 	{ event 5004 7 "Weapon_lowpolyhk416.Rattle" }
// 	{ event 5004 96 "Weapon_lowpolyhk416.Shoulder" }
// }

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