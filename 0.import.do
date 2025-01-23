
/****
*	Define user-specific globals for :
*		dropbox & github
****/

if c(username) == "bl517" & c(os) == "MacOSX" {
	gl dropbox "/Users/bl517/Dropbox"
	gl github "/Users/bl517/Github"
}
else {
	"Define user-specific globals for Dropbox and Github."
	exit
}


/****
*	Import built data files for data viz
****/


** 2018 data
use "$dropbox/LEAPS_RCT_2018/3_constructed/constructed.dta", clear
save "$github/leaps-dataviz/1_source/leaps-hh-2018.dta", replace

** 2011 data
use "$dropbox/LEAPS_RCT_2011/2_data_constructed/20240617_leaps.dta", clear
save "$github/leaps-dataviz/1_source/leaps-hh-2011.dta", replace

** Item-level test data for the first five years 
use "$dropbox/LEAPS_ItemBank/2_data_constructed/Item_TestScores_LEAPS.dta", clear
save "$github/leaps-dataviz/1_source/leaps-scores-items-2003to2011.dta", replace

