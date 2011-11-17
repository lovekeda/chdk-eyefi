#include "lolevel.h"
#include "platform.h"
#include "core.h"
#include "keyboard.h"


extern long link_bss_start;
extern long link_bss_end;
extern void boot();


void startup()
{
	long *bss = &link_bss_start;
	long *ptr;

	// sanity check
	if ((long)&link_bss_end > (MEMISOSTART + MEMISOSIZE)){
		started();
		shutdown();
	}

	// initialize .bss senment
	while (bss<&link_bss_end)
		*bss++ = 0;

	boot();
}

// G10 focus length table in firmware @ FFFE2A8C for 1.02a, 1.03b & 1.04a
// Note: same lens & table as G12

#define NUM_FL 14		// 0 - 13, entries in firmware (3 words each entry, first is FL)
extern int focus_len_table[NUM_FL*3];

// Conversion factor lens FL --> 35mm equiv
// lens      35mm     CF
// ----      ----     --
// 6.1       28       (28/6.1) * 61 = 280  (min FL)
// 30.5      140      (140/30.5) * 61 = 280  (max FL)

#define CF_EFL 280
#define	CF_EFL_DIV 61

const int zoom_points = NUM_FL;

int get_effective_focal_length(int zp) {
	return (CF_EFL*get_focal_length(zp))/CF_EFL_DIV;
}

int get_focal_length(int zp) {
	if (zp < 0) zp = 0;
	else if (zp >= NUM_FL) zp = NUM_FL-1;
	return focus_len_table[zp*3];
}

int get_zoom_x(int zp) {
	return get_focal_length(zp)*10/focus_len_table[0];
}

// G10 High and Low Levels

long get_vbatt_min()
{
	return 6500;
}

long get_vbatt_max()
{
	return 8150;
}
