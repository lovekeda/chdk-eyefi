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


//zoom position is get_parameter_data(87)
static const struct {
	int zp, fl;
} fl_tbl[] = {
  {   0,    5000},
  {   16,   8225},
  {   32,   13080},
  {   48,   20270},
  {   64,   29150},
  {   80,   38125},
  {   96,   45750},
  {   112,  51650},
  {   127,  60000}
};


#define NUM_FL (sizeof(fl_tbl)/sizeof(fl_tbl[0]))

// SX150 focal lenght range 5.0 - 60 mm (35 mm equivalent: 28 - 336 mm)(1/2.3" Type CCD, Scale Factor To 35 mm Equivalent: 5.6)
// 28/5.0*100=560
// 336/60*100=560
#define CF_EFL 560

const int zoom_points = 128;

int get_effective_focal_length(int zp) {
    return (CF_EFL*get_focal_length(zp))/100;
}

int get_focal_length(int zp) {
	int i;

	if (zp<fl_tbl[0].zp)
		return fl_tbl[0].fl;
	else if (zp>fl_tbl[NUM_FL-1].zp)
		return fl_tbl[NUM_FL-1].fl;
	else {
		for (i=1; i<NUM_FL; ++i) {
			if (zp==fl_tbl[i-1].zp)
				return fl_tbl[i-1].fl;
			else if (zp==fl_tbl[i].zp)
				return fl_tbl[i].fl;
			else if (zp<fl_tbl[i].zp)
				return fl_tbl[i-1].fl+(zp-fl_tbl[i-1].zp)*(fl_tbl[i].fl-fl_tbl[i-1].fl)/(fl_tbl[i].zp-fl_tbl[i-1].zp);
		}
	}
	return fl_tbl[NUM_FL-1].fl;
}

int get_zoom_x(int zp) {
	return get_focal_length(zp)*10/fl_tbl[0].fl;
}


long get_vbatt_min()
{
    return 2050; // Camera shutdown
}

long get_vbatt_max()
{
    return 2800; // Fully charged eneloops
}

