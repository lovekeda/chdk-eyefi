#include "stubs_asm.h"

NHSTUB(GetBatteryTemperature,			0xFFC3309C)
NHSTUB(GetOpticalTemperature, 			0xffc3310C)
NHSTUB(EnterToCompensationEVF, 			0XFFC15A90)
NHSTUB(ExpCtrlTool_StartContiAE,		0xFFC218C8)
NHSTUB(ExpCtrlTool_StopContiAE,			0xFFC21A0C)
NHSTUB(SetAE_ShutterSpeed, 				0xFFE2B554)
NHSTUB(MakeAFScan, 						0xFFDD7F78)
NHSTUB(PostLEDMessage,	    			0xFFC3071C)
NHSTUB(UnlockAF, 						0xFFC158B8)
NHSTUB(DoAFLock, 						0xFFC157A0)
NHSTUB(UnsetZoomForMovie, 				0xFFD2F750)
NHSTUB(PostLogicalEventForNotPowerType, 0xFFC5B0F4)
NHSTUB(RefreshUSBMode, 					0xFFC27730)
NHSTUB(TurnOnMic, 						0xFFC31634)
NHSTUB(TurnOffMic, 						0xFFC31660)
 
NHSTUB(PutInNdFilter, 					0xFFE271F0)
NHSTUB(PutOutNdFilter, 					0xFFE27228)
NHSTUB(WriteSDCard,					0xFFCF9440)
NHSTUB(SetScriptMode,					0xFFC5B870)

//NSTUB(AllocateMemory, 				0xFFDF1D70)
//NSTUB(FreeMemory, 					0xFFDF1D68)
//NSTUB(dumpMemoryToFile, 			0xffc00948)
//NSTUB(GetDrive_FreeClusters,		0xFFC416F0)
//NSTUB(GetDrive_TotalClusters,		0xFFC416BC)
//NSTUB(strcpy, 						0xFFC0D88C)
//NHSTUB(ExecuteEventProcedure, 0xffc59eb4)
//NHSTUB(ExitFromCompensationEVF, 0xffc15fa4)
//NSTUB(GetAEIntegralServiceMode_0,	0xFFC1A9C4)
//NSTUB(IsFactoryMode,				0xFFC38838)
//NSTUB(PhySw_testgpio,				0xFFC356EC)

// NOT found, using NULLSUB
NHSTUB(kbd_pwr_on,						0xffc00948)
NHSTUB(kbd_pwr_off,						0xffc00948)
NSTUB(SetZoomActuatorSpeedPercent, 0xffc00948)
//NSTUB(taskcreate_AudioTsk,			0xFFC3591C)
//NSTUB(TurnOnBackLight,				0xFFC6C558)
//NSTUB(TurnOffBackLight,			0xFFC6C570)
//NSTUB(unknown_libname_80, 			0xFFC668B0)
//NSTUB(unknown_libname_96, 			0xFFC6C77C)
//NHSTUB(OpLog_WriteToSD, 			0xFFC5B878)
//NSTUB(open, 						0xFFC09EC4)
//NSTUB(close, 						0xFFC09F74)


// Added by finsig_dryos V2 to match old values found by finsig.
// Values should be checked in firmware, if the new address in stubs_entry.S
// is correct then delete the correspoding entry below.
NHSTUB(rename                        ,0xffc13c30) // New address = 0xffc133b4
NHSTUB(write                         ,0xffc0a1bc) // New address = 0xffc13c08
