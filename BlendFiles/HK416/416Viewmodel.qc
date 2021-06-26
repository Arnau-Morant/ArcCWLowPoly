$modelname "weapons\arccw\c_lowpolyhk416.mdl"
 
$bodygroup "studio" {
	studio "c_lowpolyhk416.smd"
}

$texturegroup "skinfamilies"
{
	{ "LightBlackWire" }
	{ "Wireframe" }
}

$bodygroup "barrel" {
	studio "416Barrel.smd"
	studio "417Barrel.smd"
	studio "RedBarrel.smd"
	studio "SuppBarrel.smd"
}

$bodygroup "bolt" {
	studio "416Bolt.smd"
	studio "417Bolt.smd"
	studio "9mmBolt.smd"
}

$bodygroup "mag" {
	studio "416Mag.smd"
	studio "417Mag.smd"
	studio "PMag.smd"
	studio "9mmMag.smd"
}

$bodygroup "stock" {
	blank
}

$bodygroup "flashhider" {
	studio "416FhSt.smd"
	studio "762FhExt.smd"
	studio "556FhRed.smd"
	blank
}

$bodygroup "rearsight" {
	studio "defirons.smd"
	studio "altirons.smd"
	studio "altirons2.smd"
	blank
}

$bodygroup "frontsight" {
	studio "stfs.smd"
	studio "extfs.smd"
	studio "redfs.smd"
	studio "suppfs.smd"
	blank
}

$cdmaterials "models\weapons\arccw\shared"

$attachment "1" "Barrel" 0 0 0 rotate -90 0 0
$attachment "2" "Bolt" 0 0 0 rotate -10 140 180
$attachment "3" "Barrel" 0 0 -3 rotate -90 0 0
$attachment "4" "Barrel" 0 0 10 rotate -90 0 0
$attachment "5" "Camera" 0 0 10 rotate -90 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "EXP" {
	"anims\idle_iron.smd"
	fps 60
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

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

$sequence "enter_inspect" {
	"anims\enter_inspect.smd"
	"ACT_VM_IDLE" 1
	fadein 0.03
	fadeout 0
	fps 60
	{ event 5004 0 "Weapon_lowpolyhk416.Rattle" }
}

$sequence "idle_inspect" {
	"anims\idle_inspect.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "exit_inspect" {
	"anims\exit_inspect.smd"
	"anims\exit_inspect_iron.smd"
	blend "sights" 0 1
	"ACT_VM_IDLE" 1
	fadein 0.03
	fadeout 0
	fps 60
	{ event 5004 1 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 19 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 22 "Weapon_lowpolyhk416.Magout" }
	{ event 5004 34 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 101 "Weapon_lowpolyhk416.Magin" }
	{ event 5004 152 "Weapon_lowpolyhk416.BoltBack" }
	{ event 5004 190 "Weapon_lowpolyhk416.BoltForward" }
	{ event 5004 200 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "exit_inspect_417" {
	"anims\exit_inspect_417.smd"
	"anims\exit_inspect_iron_417.smd"
	blend "sights" 0 1
	"ACT_VM_IDLE" 1
	fadein 0.03
	fadeout 0
	fps 60
	{ event 5004 1 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 19 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 22 "Weapon_lowpolyhk416.Magout" }
	{ event 5004 34 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 101 "Weapon_lowpolyhk416.Magin" }
	{ event 5004 152 "Weapon_lowpolyhk416.BoltBack" }
	{ event 5004 190 "Weapon_lowpolyhk416.BoltForward" }
	{ event 5004 200 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "exit_inspect_419" {
	"anims\exit_inspect_419.smd"
	"anims\exit_inspect_iron_419.smd"
	blend "sights" 0 1
	"ACT_VM_IDLE" 1
	fadein 0.03
	fadeout 0
	fps 60
	{ event 5004 1 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 19 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 22 "Weapon_lowpolyhk416.Magout9mm" }
	{ event 5004 34 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 101 "Weapon_lowpolyhk416.Magin9mm" }
	{ event 5004 152 "Weapon_lowpolyhk416.BoltBack" }
	{ event 5004 190 "Weapon_lowpolyhk416.BoltForward" }
	{ event 5004 200 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "enter_inspect_empty" {
	"anims\enter_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	fadein 0.03
	fadeout 0
	fps 60
	{ event 5004 0 "Weapon_lowpolyhk416.Rattle" }
}

$sequence "idle_inspect_empty" {
	"anims\idle_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "exit_inspect_empty" {
	"anims\exit_inspect_empty.smd"
	"anims\exit_inspect_empty_iron.smd"
	blend "sights" 0 1
	"ACT_VM_IDLE" 1
	fadein 0.03
	fadeout 0
	fps 60
	{ event 5004 1 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 19 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 22 "Weapon_lowpolyhk416.Magout" }
	{ event 5004 34 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 101 "Weapon_lowpolyhk416.Magin" }
	{ event 5004 140 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 200 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "exit_inspect_empty_417" {
	"anims\exit_inspect_empty_417.smd"
	"anims\exit_inspect_empty_iron_417.smd"
	blend "sights" 0 1
	"ACT_VM_IDLE" 1
	fadein 0.03
	fadeout 0
	fps 60
	{ event 5004 1 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 19 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 22 "Weapon_lowpolyhk416.Magout" }
	{ event 5004 34 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 101 "Weapon_lowpolyhk416.Magin" }
	{ event 5004 140 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 200 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "exit_inspect_empty_419" {
	"anims\exit_inspect_empty_419.smd"
	"anims\exit_inspect_empty_iron_419.smd"
	blend "sights" 0 1
	"ACT_VM_IDLE" 1
	fadein 0.03
	fadeout 0
	fps 60
	{ event 5004 1 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 19 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 22 "Weapon_lowpolyhk416.Magout9mm" }
	{ event 5004 34 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 101 "Weapon_lowpolyhk416.Magin9mm" }
	{ event 5004 140 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 200 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "reload_419" {
	"anims\reload_419.smd"
	"anims\reload_iron.smd" //Lazy
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap
	{ event 5004 9 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 14 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 17 "Weapon_lowpolyhk416.Magout9mm" }
	{ event 5004 67 "Weapon_lowpolyhk416.Magin9mm" }
	{ event 5004 84 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 116 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "reload_empty_419"  {
	"anims\reload_empty_419.smd"
	"anims\reload_empty_iron.smd" //Lazy
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap
	{ event 5004 9 "Weapon_lowpolyhk416.Raise" }
	{ event 5004 14 "Weapon_lowpolyhk416.Magrelease" }
	{ event 5004 18 "Weapon_lowpolyhk416.FastMagout9mm" }
	{ event 5004 48 "Weapon_lowpolyhk416.Drop9mm" }
	{ event 5004 68 "Weapon_lowpolyhk416.Magin9mm" }
	{ event 5004 106 "Weapon_lowpolyhk416.Rattle" }
	{ event 5004 107 "Weapon_lowpolyhk416.Boltrelease" }
	{ event 5004 130 "Weapon_lowpolyhk416.Shoulder" }
}

$sequence "reload_417" {
	"anims\reload_417.smd"
	"anims\reload_iron.smd" //Lazy
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

$sequence "reload_empty_417" {
	"anims\reload_empty_417.smd"
	"anims\reload_empty_iron.smd" //Lazy
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