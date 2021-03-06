#include "stubs_asm.h"

//NHSTUB(AllocateUncacheableMemory, 0xFF82806C)
NHSTUB(GetDrive_ClusterSize, 0xFF85E284)
NHSTUB(GetDrive_TotalClusters, 0xFF85E2B8)
NHSTUB(GetDrive_FreeClusters, 0xFF85E2EC)
//NHSTUB(SetPropertyCase, 0xFF87DAC4)
//NHSTUB(kbd_read_keys, 0xFF821AF4)
NHSTUB(platformsub_kbd_fetch_data, 0xFF84D880)  
//NHSTUB(kbd_read_keys_r2, 0xFF84D130)
NHSTUB(qsort, 0xFFAE3D64)   
NHSTUB(strchr, 0xFF8A0820)
NHSTUB(strrchr, 0xFF9FCEEC) 
NHSTUB(TurnOffBackLight, 0xFF893FC8)
//NHSTUB(vsprintf, 0xFF81CAE8)
NHSTUB(VbattGet, 0xFF82046C)	
NHSTUB(GetZoomLensCurrentPoint, 0xFF9548A8)
NHSTUB(GetZoomLensCurrentPosition, 0xFFA8210C)
NHSTUB(RefreshPhysicalScreen, 0xFF9FA710)
NHSTUB(EnterToCompensationEVF, 0xFF825B44)
NHSTUB(ExitFromCompensationEVF, 0xFF825BAC)
NHSTUB(DoAFLock, 0xFF825898)
NHSTUB(UnlockAF, 0xFF8258D0)
NHSTUB(LEDDrive, 0xFF84CC34)
NHSTUB(WriteSDCard, 0xFF93DD0C)
NHSTUB(PostLogicalEventForNotPowerType, 0xFF88328C)
NHSTUB(apex2us, 0xFF9FDBDC)
NHSTUB(Restart, 0xFF8298F0)
NHSTUB(PB2Rec, 0xFF888840)
NHSTUB(Rec2PB, 0xFF8871B8)

// null sub

NHSTUB(kbd_pwr_off, 0xFF81093C)
NHSTUB(kbd_pwr_on, 0xFF81093C)
NHSTUB(SetZoomActuatorSpeedPercent, 0xFF81093C)

NHSTUB(SetScriptMode, 0xFF885290)



// Added by finsig_dryos V2 to match old values found by finsig.
// Values should be checked in firmware, if the new address in stubs_entry.S
// is correct then delete the correspoding entry below.
NHSTUB(rename                        ,0xff823b18) // New address = 0xff82329c
NHSTUB(write                         ,0xff819aac) // New address = 0xff823af0
