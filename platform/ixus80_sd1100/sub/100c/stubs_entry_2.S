#include "stubs_asm.h"

NHSTUB(dumpMemoryToFile, 0xffc141f4)
NHSTUB(ExpCtrlTool_StartContiAE, 0xff832a98)
NHSTUB(ExpCtrlTool_StopContiAE, 0xff832bdc)
NHSTUB(PostLEDMessage, 0xff8420c0)

// not found on other dryos cams here, so not in sig
NHSTUB(OpLog_WriteToSD, 0xff86ab44)
NHSTUB(PutInNdFilter, 0xffa7aad0)
NHSTUB(PutOutNdFilter, 0xffa7ab08)
NHSTUB(UnsetZoomForMovie,0xff960a4c)


// not found :(
#define do_nothing 0xffa7b658

NHSTUB(TurnOffMic, do_nothing)
NHSTUB(TurnOnMic,do_nothing)


// vx stuff
// not found or used in dryos
NHSTUB(SetZoomActuatorSpeedPercent, do_nothing)
NHSTUB(taskUnlock, do_nothing)
NHSTUB(taskLock, do_nothing)

NHSTUB(DoAFLock, 0xff825c4c)
NHSTUB(UnlockAF, 0xff825c90)
NHSTUB(apex2us, 0xFF9AC134)
NHSTUB(SetScriptMode, 0xFF873680) // "SetScriptMode"


// Added by finsig_dryos V2 to match old values found by finsig.
// Values should be checked in firmware, if the new address in stubs_entry.S
// is correct then delete the correspoding entry below.
NHSTUB(rename                        ,0xff823f28) // New address = 0xff8236ac
NHSTUB(write                         ,0xff81a1bc) // New address = 0xff823f00
