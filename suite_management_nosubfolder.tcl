set suitepath "automation/suite"
set resultfile "automation/management_result.tcl"

cd $suitepath
pwd
set result [open $resultfile w+]

set suitefolderlist [glob */]
foreach i $suitefolderlist {
	cd $i         
	set suitelist [glob -nocomplain -type f *{\[0-9\]\[0-9\]}.tcl]
	foreach j $suitelist {
		set suiteproclist [file rootname $j]
		puts $result $suiteproclist    #������ʽ���
	}
	cd ../			
}
	
close $result