***************************************
* Higher order AR[k] error comparison *
***************************************

*************************************************************************************
******************************** Differences in trend *******************************
*************************************************************************************

****************
* AR[2] errors *
**************** 

*************************
*** autocorrelation *****
*************************
// AR(2) scenarios
// Scenario 1 — Mild, real roots: ρ = (0.4, 0.2). Max eigenvalue = 0.69. Well inside the stationary region, monotone autocovariance decay. The easy baseline case.
// Scenario 2 — Complex conjugate roots, oscillatory decay: ρ = (0.5, −0.4). Max eigenvalue = 0.63. 
	* The autocovariance function alternates in sign with a cycle of roughly 5–6 periods. 
	* This is the most distinctive AR(2) scenario and the one most likely to expose Newey-West's bandwidth selection problem.
// Scenario 3 — High persistence: ρ = (0.7, 0.2). Max eigenvalue = 0.90. Near-unit-root behavior, slow autocovariance decay. The hardest case for both methods.


****************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (NW)
***************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.4) trho2(0.2) crho1(0.4) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_AR2.dta", replace

*********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (NW)
**********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.5) trho2(-0.4) crho1(0.5) crho2(-0.4) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_AR2.dta", replace	
	
*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.7) trho2(0.2) crho1(0.7) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se	
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_AR2.dta", replace	
	
********************************************************************	
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.4) trho2(0.2) crho1(0.4) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_AR2.dta", replace

********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (PW)
********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.5) trho2(-0.4) crho1(0.5) crho2(-0.4) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se	

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_AR2.dta", replace	
	
******************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.7) trho2(0.2) crho1(0.7) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
		
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_AR2.dta", replace		

***************************
* append into one big file
**************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_AR2.dta", clear 
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_AR2.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_AR2.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_AR2.dta", replace
}

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_AR2.dta", clear 
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_AR2.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_AR2.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_AR2.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_AR2.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_AR2.dta"
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2.dta", replace	
	
**********************
*** graph power ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected power period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected power period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Power(1-{&beta})") ///
			ylabel(.2(.2)1) ////
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.`delta'_scen`scenario'_AR2.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.50_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.100_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.50_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.100_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.50_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.100_scen3_AR2.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_power_AR2.gph", replace

**********************
*** graph coverage ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("95% Coverage") ///
			ylabel(0.60(.10)1) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.`delta'_scen`scenario'_AR2.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.50_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.100_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.50_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.100_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.50_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.100_scen3_AR2.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_coverage_AR2.gph", replace

**********************
*** graph bias ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected bias period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected bias period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("% Bias") ///
			ylabel(-10(2)10) ////
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.`delta'_scen`scenario'_AR2.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.50_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.100_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.50_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.100_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.50_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.100_scen3_AR2.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_bias_AR2.gph", replace

**********************
*** graph se ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected se period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected se period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
            ytitle("Empirical Std Err.") ///
            ylabel(0(.2)1) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.`delta'_scen`scenario'_AR2.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.50_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.100_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.50_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.100_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.50_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.100_scen3_AR2.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_se_AR2.gph", replace


**********************
*** graph rmse ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected rmse period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected rmse period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("RMSE") ///
			ylabel(1(.20)2) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.`delta'_scen`scenario'_AR2.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.50_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.100_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.50_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.100_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.50_scen3_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.100_scen3_AR2.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_rmse_AR2.gph", replace


**********************
* Type I error rates
**********************


****************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (NW)
***************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.4) trho2(0.2) crho1(0.4) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_type1_AR2.dta", replace

*********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (NW)
**********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.5) trho2(-0.4) crho1(0.5) crho2(-0.4) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_type1_AR2.dta", replace	
	
*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.7) trho2(0.2) crho1(0.7) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se	
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_type1_AR2.dta", replace	
	
********************************************************************	
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.4) trho2(0.2) crho1(0.4) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_type1_AR2.dta", replace

********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (PW)
********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.5) trho2(-0.4) crho1(0.5) crho2(-0.4) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se	

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_type1_AR2.dta", replace	
	
******************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.7) trho2(0.2) crho1(0.7) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
		
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_type1_AR2.dta", replace		

***************************
* append into one big file
**************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_type1_AR2.dta", clear 
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_type1_AR2.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_type1_AR2.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_type1_AR2.dta", replace
}

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_type1_AR2.dta", clear 
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_type1_AR2.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_type1_AR2.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_type1_AR2.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_type1_AR2.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_type1_AR2.dta"
	
rename power type1	
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_type1_AR2_ALL.dta", replace	

**************************
*** graph type 1 error ***
**************************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_type1_AR2_ALL.dta", replace		

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1 {
            local title (A)
        }
        else if `scenario' == 2  {
            local title (B)
        }
        else if `scenario' == 3  {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected type1 period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected type1 period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Type 1 Error Rate") ///
			ylabel(1(.20)2) ///
            title("`title'") ///
            note("{&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
*        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen`scenario'_AR2.gph", replace

}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen1_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen2_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen3_AR2.gph" ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_type1_AR2.gph", replace


***************************************************************************************************************************************
************************************************************* AR[3] errors ************************************************************
*************************************************************************************************************************************** 

*************************
*** autocorrelation *****
*************************
/* AR(3) scenarios
- Scenario 1 — Mild: ρ = (0.4, 0.2, 0.1). Max eigenvalue = 0.72. Baseline case.
- Scenario 2 — Oscillatory with moderate persistence: ρ = (0.7, −0.3, 0.15). Max eigenvalue = 0.84. Complex roots introduce sign changes in the autocovariance function, 
    stressing Newey-West bandwidth selection.
- Scenario 3 — High persistence: ρ = (0.6, 0.25, 0.1). Max eigenvalue = 0.93. Near-unit-root, slowest decay. */


*****************************************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2; trho3 = 0.1 crho3 = 0.1 
* (NW)
*****************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_AR3.dta", replace

********************************************************************************************
* Scenario 2: trho1 = 0.7 crho1 = 0.7; trho2 = −0.3 crho2 = −0.3; trho3 = 0.15 crho2 = 0.15 
* (NW)
*********************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_AR3.dta", replace	
	
*******************************************************************************************	
* Scenario 3: trho1 = 0.6 crho1 = 0.6; trho2 = 0.25 crho2 = 0.25; trho3 = 0.10 crho3 = 0.10 
* (NW)
*******************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_AR3.dta", replace	
	
*****************************************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2; trho3 = 0.1 crho3 = 0.1 
* (PW)
*****************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_AR3.dta", replace

********************************************************************************************
* Scenario 2: trho1 = 0.7 crho1 = 0.7; trho2 = −0.3 crho2 = −0.3; trho3 = 0.15 crho2 = 0.15 
* (PW)
*********************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_AR3.dta", replace	
	
*******************************************************************************************	
* Scenario 3: trho1 = 0.6 crho1 = 0.6; trho2 = 0.25 crho2 = 0.25; trho3 = 0.10 crho3 = 0.10 
* (NW)
*******************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1.25 1.50 2) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
		
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_AR3.dta", replace		

***************************
* append into one big file
**************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_AR3.dta", clear 
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_AR3.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_AR3.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_AR3.dta", replace
}

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_AR3.dta", clear 
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_AR3.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_AR3.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_AR3.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_AR3.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_AR3.dta"
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3.dta", replace

***********************************************************************************************************************
* Graphing
***********************************************************************************************************************
/*
- Scenario 1 — Mild: ρ = (0.4, 0.2, 0.1). Max eigenvalue = 0.72. Baseline case.
- Scenario 2 — Oscillatory with moderate persistence: ρ = (0.7, −0.3, 0.15). Max eigenvalue = 0.84. Complex roots introduce sign changes in the autocovariance function, 
    stressing Newey-West bandwidth selection.
- Scenario 3 — High persistence: ρ = (0.6, 0.25, 0.1). Max eigenvalue = 0.93. Near-unit-root, slowest decay. */
*/


**********************
*** graph power ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected power period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected power period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Power(1-{&beta})") ///
			ylabel(.2(.2)1) ////
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.`delta'_scen`scenario'_AR3.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.50_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.100_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.50_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.100_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.50_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.100_scen3_AR3.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_power_AR3.gph", replace

**********************
*** graph coverage ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("95% Coverage") ///
			ylabel(0.60(.10)1) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.`delta'_scen`scenario'_AR3.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.50_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.100_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.50_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.100_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.50_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.100_scen3_AR3.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_coverage_AR3.gph", replace

**********************
*** graph bias ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("% Bias") ///
			ylabel(-10(2)10) ////
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.`delta'_scen`scenario'_AR3.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.50_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.100_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.50_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.100_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.50_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.100_scen3_AR3.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_bias_AR3.gph", replace

**********************
*** graph se ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected se period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected se period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
            ytitle("Empirical Std Err.") ///
            ylabel(0(.2)1) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.`delta'_scen`scenario'_AR3.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.50_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.100_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.50_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.100_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.50_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.100_scen3_AR3.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_se_AR3.gph", replace


**********************
*** graph rmse ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tposts 1.25 1.5 2

foreach scenario of local scenarios {
    foreach tpost of local tposts {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tpost' == 1.25 {
            local title (A)
        }
        else if `scenario' == 1 & `tpost' == 1.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tpost' == 2 {
            local title (C)
        }
        else if `scenario' == 2 & `tpost' == 1.25 {
            local title (D)
        }
        else if `scenario' == 2 & `tpost' == 1.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tpost' == 2 {
            local title (F)
        }
        else if `scenario' == 3 & `tpost' == 1.25 {
            local title (G)
        }
        else if `scenario' == 3 & `tpost' == 1.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tpost' == 2 {
            local title (I)
        }

        // Set delta based on tpost
        if `tpost' == 1.25 {
            local delta 25
        }
        else if `tpost' == 1.5 {
            local delta 50
        }
        else if `tpost' == 2 {
            local delta 100
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected rmse period if model == "newey" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(O) mcolor(black)) ///
            (connected rmse period if model == "praisk" & scenario == `scenario' & tpost == `tpost', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("RMSE") ///
			ylabel(1(.25)2.25) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.`delta'_scen`scenario'_AR3.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.50_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.100_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.50_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.100_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.50_scen3_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.100_scen3_AR3.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_rmse_AR3.gph", replace


**********************
* Type I error rates
**********************


****************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (NW)
***************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_type1_AR3.dta", replace

*********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (NW)
**********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_type1_AR3.dta", replace	
	
*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
    alpha(0.05) reps(2000) ///
    noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_type1_AR3.dta", replace	
	
********************************************************************	
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_type1_AR3.dta", replace

********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (PW)
********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se	

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_type1_AR3.dta", replace	

*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(1) tpost(1) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_type1_AR3.dta", replace	
	
***************************
* append into one big file
**************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_type1_AR3.dta", clear 
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_type1_AR3.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_type1_AR3.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_type1_AR3.dta", replace
}

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_type1_AR3.dta", clear 
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_type1_AR3.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_type1_AR3.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_type1_AR3.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_type1_AR3.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_type1_AR3.dta"
	
rename power type1	
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_type1_AR3_ALL.dta", replace	

**************************
*** graph type 1 error ***
**************************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_type1_AR3_ALL.dta", replace		

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1 {
            local title (A)
        }
        else if `scenario' == 2  {
            local title (B)
        }
        else if `scenario' == 3  {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected type1 period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected type1 period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Type 1 Error Rate") ///
			ylabel(0(.20)1) ///
            title("`title'") ///
            note("{&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen`scenario'_AR3.gph", replace

}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen1_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen2_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen3_AR3.gph" ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_type1_AR3.gph", replace




**************************************************************************************************************************************************************
************************************************************** Differences in level **************************************************************************
**************************************************************************************************************************************************************

****************
* AR[2] errors *
**************** 

*************************
*** autocorrelation *****
*************************
// AR(2) scenarios
// Scenario 1 — Mild, real roots: ρ = (0.4, 0.2). Max eigenvalue = 0.69. Well inside the stationary region, monotone autocovariance decay. The easy baseline case.
// Scenario 2 — Complex conjugate roots, oscillatory decay: ρ = (0.5, −0.4). Max eigenvalue = 0.63. 
	* The autocovariance function alternates in sign with a cycle of roughly 5–6 periods. 
	* This is the most distinctive AR(2) scenario and the one most likely to expose Newey-West's bandwidth selection problem.
// Scenario 3 — High persistence: ρ = (0.7, 0.2). Max eigenvalue = 0.90. Near-unit-root behavior, slow autocovariance decay. The hardest case for both methods.


****************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (NW)
***************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.4) trho2(0.2) crho1(0.4) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    noi table perf level
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_AR2_level.dta", replace

*********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (NW)
**********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.5) trho2(-0.4) crho1(0.5) crho2(-0.4) ///
    alpha(0.05) reps(2000) ///
    noi table perf level
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_AR2_level.dta", replace
	
*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.7) trho2(0.2) crho1(0.7) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    noi table perf level
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se	
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_AR2_level.dta", replace	
	
********************************************************************	
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.4) trho2(0.2) crho1(0.4) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_AR2_level.dta", replace

********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (PW)
********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.5) trho2(-0.4) crho1(0.5) crho2(-0.4) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se	

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_AR2_level.dta", replace	
	
******************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.7) trho2(0.2) crho1(0.7) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
		
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_AR2_level.dta", replace		

***************************
* append into one big file
**************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_AR2_level.dta", clear 
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_AR2_level.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_AR2_level.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_AR2_level.dta", replace
}

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_AR2_level.dta", clear 
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_AR2_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_AR2_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_AR2_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_AR2_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_AR2_level.dta"
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2_level.dta", replace	
	
**********************
*** graph power ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2_level.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tstep
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected power period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected power period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Power(1-{&beta})") ///
			ylabel(.2(.2)1) ////
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.`delta'_scen`scenario'_AR2_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.20_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.30_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.20_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.30_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.20_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.30_scen3_AR2_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_power_AR2_level.gph", replace

**********************
*** graph coverage ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2_level.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tstep
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("95% Coverage") ///
			ylabel(0.60(.10)1) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.`delta'_scen`scenario'_AR2_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.20_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.30_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.20_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.30_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.20_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.30_scen3_AR2_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_coverage_AR2_level.gph", replace

**********************
*** graph bias ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2_level.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {
        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tstep
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("% Bias") ///
			ylabel(-10(2)10) ////
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.`delta'_scen`scenario'_AR2_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.20_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.30_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.20_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.30_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.20_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.30_scen3_AR2_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_bias_AR2_level.gph", replace

**********************
*** graph se ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2_level.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tstep
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }


        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected se period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected se period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
            ytitle("Empirical Std Err.") ///
            ylabel(.4(.2)1.6) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.`delta'_scen`scenario'_AR2_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.20_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.30_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.20_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.30_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.20_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.30_scen3_AR2_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_se_AR2_level.gph", replace


**********************
*** graph rmse ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR2_level.dta", clear	

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tstep
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected rmse period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected rmse period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("RMSE") ///
			ylabel(1(.20)2) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.`delta'_scen`scenario'_AR2_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.20_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.30_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.20_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.30_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.20_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen3_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.30_scen3_AR2_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_rmse_AR2_level.gph", replace


**********************
* Type I error rates
**********************


****************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (NW)
***************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.4) trho2(0.2) crho1(0.4) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_type1_AR2_level.dta", replace

*********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (NW)
**********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.5) trho2(-0.4) crho1(0.5) crho2(-0.4) ///
    alpha(0.05) reps(2000) ///
    noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_type1_AR2_level.dta", replace	
	
*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.7) trho2(0.2) crho1(0.7) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se	
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_type1_AR2_level.dta", replace	
	
********************************************************************	
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.4) trho2(0.2) crho1(0.4) crho2(0.2) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_type1_AR2_level.dta", replace

********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (PW)
********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.5) trho2(-0.4) crho1(0.5) crho2(-0.4) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se	

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_type1_AR2_level.dta", replace	
	
******************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.7) trho2(0.2) crho1(0.7) crho2(0.2) ///
    alpha(0.05) reps(2000) //
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
		
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_type1_AR2_level.dta", replace		

***************************
* append into one big file
**************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_type1_AR2_level.dta", clear 
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_type1_AR2_level.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_type1_AR2_level.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_type1_AR2_level.dta", replace
}

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_type1_AR2_level.dta", clear 
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_type1_AR2_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_type1_AR2_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_type1_AR2_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_type1_AR2_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_type1_AR2_level.dta"
	
rename power type1	
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_type1_AR2_ALL_level.dta", replace	

**************************
*** graph type 1 error ***
**************************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_type1_AR2_ALL_level.dta", replace		

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1 {
            local title (A)
        }
        else if `scenario' == 2  {
            local title (B)
        }
        else if `scenario' == 3  {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected type1 period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected type1 period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Type 1 Error Rate") ///
			ylabel(0(.10).50) ///
            title("`title'") ///
            note("{&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen`scenario'_AR2_level.gph", replace

}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen1_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen2_AR2_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen3_AR2_level.gph" ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_type1_AR2_level.gph", replace


***************************************************************************************************************************************
************************************************************* AR[3] errors ************************************************************
*************************************************************************************************************************************** 

*************************
*** autocorrelation *****
*************************
/* AR(3) scenarios
- Scenario 1 — Mild: ρ = (0.4, 0.2, 0.1). Max eigenvalue = 0.72. Baseline case.
- Scenario 2 — Oscillatory with moderate persistence: ρ = (0.7, −0.3, 0.15). Max eigenvalue = 0.84. Complex roots introduce sign changes in the autocovariance function, 
    stressing Newey-West bandwidth selection.
- Scenario 3 — High persistence: ρ = (0.6, 0.25, 0.1). Max eigenvalue = 0.93. Near-unit-root, slowest decay. */


*****************************************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2; trho3 = 0.1 crho3 = 0.1 
* (NW)
*****************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(1) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
    alpha(0.05) reps(2000) ///
    noi table perf level
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_AR3_level.dta", replace

********************************************************************************************
* Scenario 2: trho1 = 0.7 crho1 = 0.7; trho2 = −0.3 crho2 = −0.3; trho3 = 0.15 crho2 = 0.15 
* (NW)
*********************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(1) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
    alpha(0.05) reps(2000) ///
    noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_AR3_level.dta", replace	
	
*******************************************************************************************	
* Scenario 3: trho1 = 0.6 crho1 = 0.6; trho2 = 0.25 crho2 = 0.25; trho3 = 0.10 crho3 = 0.10 
* (NW)
*******************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(1) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
    alpha(0.05) reps(2000) ///
    noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_AR3_level.dta", replace	
	
*****************************************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2; trho3 = 0.1 crho3 = 0.1 
* (PW)
*****************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(1) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_AR3_level.dta", replace

********************************************************************************************
* Scenario 2: trho1 = 0.7 crho1 = 0.7; trho2 = −0.3 crho2 = −0.3; trho3 = 0.15 crho2 = 0.15 
* (PW)
*********************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(1) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_AR3_level.dta", replace	
	
*******************************************************************************************	
* Scenario 3: trho1 = 0.6 crho1 = 0.6; trho2 = 0.25 crho2 = 0.25; trho3 = 0.10 crho3 = 0.10 
* (NW)
*******************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(1) cpre(1) ///
    tstep(2 2.5 3) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(1) ////
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
		
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_AR3_level.dta", replace		

***************************
* append into one big file
**************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_AR3_level.dta", clear 
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_AR3_level.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_AR3_level.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_AR3_level.dta", replace
}

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_AR3_level.dta", clear 
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_AR3_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_AR3_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_AR3_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_AR3_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_AR3_level.dta"
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3_level.dta", replace

***********************************************************************************************************************
* Graphing
***********************************************************************************************************************
/*
- Scenario 1 — Mild: ρ = (0.4, 0.2, 0.1). Max eigenvalue = 0.72. Baseline case.
- Scenario 2 — Oscillatory with moderate persistence: ρ = (0.7, −0.3, 0.15). Max eigenvalue = 0.84. Complex roots introduce sign changes in the autocovariance function, 
    stressing Newey-West bandwidth selection.
- Scenario 3 — High persistence: ρ = (0.6, 0.25, 0.1). Max eigenvalue = 0.93. Near-unit-root, slowest decay. */
*/


**********************
*** graph power ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3_level.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tpost
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected power period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected power period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Power(1-{&beta})") ///
			ylabel(.2(.2)1) ////
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.`delta'_scen`scenario'_AR3_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.20_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.30_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.20_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.30_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.20_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.25_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\power_.30_scen3_AR3_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_power_AR3_level.gph", replace

**********************
*** graph coverage ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3_level.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tpost
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }
        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("95% Coverage") ///
			ylabel(0.60(.10)1) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.`delta'_scen`scenario'_AR3_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.20_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.30_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.20_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.30_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.20_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.25_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\coverage_.30_scen3_AR3_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_coverage_AR3_level.gph", replace

**********************
*** graph bias ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3_level.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tpost
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }
        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("% Bias") ///
			ylabel(-10(2)10) ////
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
       graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.`delta'_scen`scenario'_AR3_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.20_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.30_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.20_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.30_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.20_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.25_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\bias_.30_scen3_AR3_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_bias_AR3_level.gph", replace

**********************
*** graph se ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3_level.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tpost
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }
        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected se period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected se period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
            ytitle("Empirical Std Err.") ///
            ylabel(.6(.2)1.6) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.`delta'_scen`scenario'_AR3_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.20_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.30_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.20_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.30_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.20_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.25_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\se_.30_scen3_AR3_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_se_AR3_level.gph", replace


**********************
*** graph rmse ***
**********************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_ALL_AR3_level.dta", clear

// Loop through scenario and tpost
local scenarios 1 2 3
local tsteps 2 2.5 3

foreach scenario of local scenarios {
    foreach tstep of local tsteps {

        // Set title based on scenario and tpost
        if `scenario' == 1 & `tstep' == 2 {
            local title (A)
        }
        else if `scenario' == 1 & `tstep' == 2.5 {
            local title (B)
        }
        else if `scenario' == 1 & `tstep' == 3 {
            local title (C)
        }
        else if `scenario' == 2 & `tstep' == 2 {
            local title (D)
        }
        else if `scenario' == 2 & `tstep' == 2.5 {
            local title (E)
        }
        else if `scenario' == 2 & `tstep' == 3 {
            local title (F)
        }
        else if `scenario' == 3 & `tstep' == 2 {
            local title (G)
        }
        else if `scenario' == 3 & `tstep' == 2.5 {
            local title (H)
        }
        else if `scenario' == 3 & `tstep' == 3 {
            local title (I)
        }

        // Set delta based on tpost
        if `tstep' == 2 {
            local delta 20
        }
        else if `tstep' == 2.5 {
            local delta 25
        }
        else if `tstep' == 3 {
            local delta 30
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }
        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected rmse period if model == "newey" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(O) mcolor(black)) ///
            (connected rmse period if model == "praisk" & scenario == `scenario' & tstep == `tstep', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("RMSE") ///
			ylabel(1(.25)2.25) ///
            title("`title'") ///
            note("{&Delta} = `delta'%;  {&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.`delta'_scen`scenario'_AR3_level.gph", replace

    }
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.20_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.30_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.20_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.30_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.20_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.25_scen3_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\rmse_.30_scen3_AR3_level.gph" ///
	, col(3) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_rmse_AR3_level.gph", replace


**********************
* Type I error rates
**********************


****************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (NW)
***************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
    alpha(0.05) reps(2000) ///
    noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_type1_AR3_level.dta", replace

*********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (NW)
**********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
    alpha(0.05) reps(2000) ///
    noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_type1_AR3_level.dta", replace	
	
*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
    alpha(0.05) reps(2000) ///
    noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_type1_AR3_level.dta", replace	
	
********************************************************************	
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (PW)
*******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_type1_AR3_level.dta", replace

********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (PW)
********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se	

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_type1_AR3_level.dta", replace	

*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
    tint(10) cint(10) tpre(0) cpre(0) ///
    tstep(0) cstep(0) tsd(1) csd(1) ///
    cpost(0) tpost(0) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
    alpha(0.05) reps(2000) ///
    praisk noi table perf level

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3	
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_type1_AR3_level.dta", replace	
	
***************************
* append into one big file
**************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_type1_AR3_level.dta", clear 
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen`i'_type1_AR3_level.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_type1_AR3_level.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen`i'_type1_AR3_level.dta", replace
}

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen1_type1_AR3_level.dta", clear 
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen2_type1_AR3_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_nw_scen3_type1_AR3_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen1_type1_AR3_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen2_type1_AR3_level.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_pw_scen3_type1_AR3_level.dta"
	
rename power type1	
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_type1_AR3_ALL_level.dta", replace	

**************************
*** graph type 1 error ***
**************************
use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\ac_type1_AR3_ALL_level.dta", replace		

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1 {
            local title (A)
        }
        else if `scenario' == 2  {
            local title (B)
        }
        else if `scenario' == 3  {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.1)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected type1 period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected type1 period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Type 1 Error Rate") ///
			ylabel(0(.20)1) ///
            title("`title'") ///
            note("{&rho} = `rho'", size(medium))

        // Save the graph with a dynamic filename
        graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen`scenario'_AR3_level.gph", replace

}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen1_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen2_AR3_level.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\type1_scen3_AR3_level.gph" ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_type1_AR3_level.gph", replace

****************************************************************************************************************************************************************	
* Sensitivity analysis change in level and trend (control's baseline level = 8; treatment baseline level = 10, treatment step = 30% treatment post-trend = 100%)
****************************************************************************************************************************************************************

****************
*** AR[2] ***
***************

****************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (NW)
***************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.4) trho2(0.2) ///
	crho1(0.4) crho2(0.2) ///
	alpha(0.05) reps(2000) ///
	noi table perf 
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen1_AR2_trend.dta", replace 

********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (NW)
********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.5) trho2(-0.4) ///
	crho1(0.5) crho2(-0.4) ///
	alpha(0.05) reps(2000) ///
	noi table perf 

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen2_AR2_trend.dta", replace 	


*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (NW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.7) trho2(0.2) ///
	crho1(0.7) crho2(0.2) ///
	alpha(0.05) reps(2000) ///
	noi table perf 

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen3_AR2_trend.dta", replace 

****************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2 
* (PW)
***************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.4) trho2(0.2) ///
	crho1(0.4) crho2(0.2) ///
	alpha(0.05) reps(2000) ///
	praisk noi table perf 
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen1_AR2_trend.dta", replace 

********************************************************************
* Scenario 2: trho1 = 0.5 crho1 = 0.5; trho2 = -0.4 crho2 = -0.4 
* (PW)
********************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.5) trho2(-0.4) ///
	crho1(0.5) crho2(-0.4) ///
	alpha(0.05) reps(2000) ///
	praisk noi table perf 

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen2_AR2_trend.dta", replace 	


*****************************************************************	
* Scenario 3: trho1 = 0.7 crho1 = 0.7; trho2 = 0.2 crho2 = 0.2 
* (PW)
******************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.7) trho2(0.2) ///
	crho1(0.7) crho2(0.2) ///
	alpha(0.05) reps(2000) ///
	praisk noi table perf 

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 cint
	rename effect13 cpre
	rename effect14 cpost
	rename effect15 cstep
	rename effect16 crho1
	rename effect17 crho2	
	rename effect18 reps
	rename effect19 bias
	rename effect20 rmse
	rename effect21 coverage
	rename effect22 se

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen3_AR2_trend.dta", replace 

	
**************************************
* combine data sets and generate graph
**************************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen`i'_AR2_trend.dta", clear
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen`i'_AR2_trend.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen`i'_AR2_trend.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen`i'_AR2_trend.dta", replace
}



use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen1_AR2_trend.dta", clear
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen2_AR2_trend.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen3_AR2_trend.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen1_AR2_trend.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen2_AR2_trend.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen3_AR2_trend.dta"
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_ALL_AR2.dta", replace


****** Graph it ***********

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_ALL_AR2.dta", clear	


***********************
* power
***********************
// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (A)
        }
        else if `scenario' == 2 {
            local title (B)
        }
        else if `scenario' == 3 {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected power period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected power period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Power(1-{&beta})") ///
			ylabel(.2(.2)1) ////
            title("`title'") ///
            note({&rho} = `rho', size(medium))

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_power_scen`scenario'_AR2.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_power_scen1_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_power_scen2_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_power_scen3_AR2.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_power_AR2.gph", replace

***********************
* 95% coverage
***********************

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (D)
        }
        else if `scenario' == 2 {
            local title (E)
        }
        else if `scenario' == 3 {
            local title (F)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("95% Coverage") ///
			ylabel(0.50(.10)1) ///
            title("`title'") ///
            note({&rho} = `rho', size(medium))	

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_coverage_scen`scenario'_AR2.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_coverage_scen1_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_coverage_scen2_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_coverage_scen3_AR2.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_coverage_AR2.gph", replace

***********************
* Bias
***********************

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (G)
        }
        else if `scenario' == 2 {
            local title (H)
        }
        else if `scenario' == 3 {
            local title (I)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected bias period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("% Bias") ///
			ylabel(-10(2)10) ////
            title("`title'") ///
            note({&rho} = `rho', size(medium))	

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_bias_scen`scenario'_AR2.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_bias_scen1_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_bias_scen2_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_bias_scen3_AR2.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_bias_AR2.gph", replace

***********************
* RMSE
***********************

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (J)
        }
        else if `scenario' == 2 {
            local title (K)
        }
        else if `scenario' == 3 {
            local title (L)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected rmse period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected rmse period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("RMSE") ///
			ylabel(1(.25)2.25) ///
            title("`title'") ///
            note({&rho} = `rho', size(medium))	

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_rmse_scen`scenario'_AR2.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_rmse_scen1_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_rmse_scen2_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_rmse_scen3_AR2.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_rmse_AR2.gph", replace

***********************
* Empirical std errs
***********************

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (M)
        }
        else if `scenario' == 2 {
            local title (N)
        }
        else if `scenario' == 3 {
            local title (O)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2)
        }
        else if `scenario' == 2 {
            local rho (0.5, −0.4)
        }
        else if `scenario' == 3 {
            local rho (0.7, 0.2)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected se period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected se period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
            ytitle("Empirical Std Err.") ///
            ylabel(0(.2)1) ///
            title("`title'") ///
            note({&rho} = `rho', size(medium))	

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_se_scen`scenario'_AR2.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_se_scen1_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_se_scen2_AR2.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_se_scen3_AR2.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_se_AR2.gph", replace

* combine all AR[2] sensitivity graphs

gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_power_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_coverage_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_bias_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_rmse_AR2.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_se_AR2.gph" ///
    , row(5) altshrink xsize(9) ysize(15)
*	, row(5) altshrink 

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_ALL_AR2.gph", replace


****************
*** AR[3] ***
***************

*****************************************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2; trho3 = 0.1 crho3 = 0.1 
* (NW)
*****************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
	alpha(0.05) reps(2000) ///
	noi table perf 
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen1_AR3_trend.dta", replace 

********************************************************************************************
* Scenario 2: trho1 = 0.7 crho1 = 0.7; trho2 = −0.3 crho2 = −0.3; trho3 = 0.15 crho2 = 0.15 
* (NW)
*********************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
	alpha(0.05) reps(2000) ///
	noi table perf 

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen2_AR3_trend.dta", replace 	


*******************************************************************************************	
* Scenario 3: trho1 = 0.6 crho1 = 0.6; trho2 = 0.25 crho2 = 0.25; trho3 = 0.10 crho3 = 0.10 
* (NW)
*******************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
	alpha(0.05) reps(2000) ///
	noi table perf 

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen3_AR3_trend.dta", replace 

*****************************************************************************************
* Scenario 1: trho1 = 0.4 crho1 = 0.4; trho2 = 0.2 crho2 = 0.2; trho3 = 0.1 crho3 = 0.1 
* (PW)
*****************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.4) trho2(0.2) trho3(0.1) ///
	crho1(0.4) crho2(0.2) crho3(0.1) ///
	alpha(0.05) reps(2000) ///
	praisk noi table perf 
	
mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen1_AR3_trend.dta", replace 

********************************************************************************************
* Scenario 2: trho1 = 0.7 crho1 = 0.7; trho2 = −0.3 crho2 = −0.3; trho3 = 0.15 crho2 = 0.15 
* (PW)
*********************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.7) trho2(-0.3) trho3(0.15) ///
	crho1(0.7) crho2(-0.3) crho3(0.15) ///
	alpha(0.05) reps(2000) ///
	praisk noi table perf 

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen2_AR3_trend.dta", replace 	

*******************************************************************************************	
* Scenario 3: trho1 = 0.6 crho1 = 0.6; trho2 = 0.25 crho2 = 0.25; trho3 = 0.10 crho3 = 0.10 
* (PW)
*******************************************************************************************
power multi_itsa, n(10(10)100) contcnt(4) ///
	tint(10) cint(8) tpre(1) cpre(1) ///
	tstep(2) cstep(0) tsd(1) csd(1) ///
	cpost(1) tpost(2) ///
    trho1(0.6) trho2(0.25) trho3(0.10) /// 
	crho1(0.6) crho2(0.25) crho3(0.10) ///
	alpha(0.05) reps(2000) ///
	praisk noi table perf 

mat effect = r(pss_table)	

	svmat effect
	rename effect1 alpha
	rename effect2 power
	rename effect3 period
	rename effect4 controls
	rename effect5 trper
	rename effect6 tint
	rename effect7 tpre
	rename effect8 tpost
	rename effect9 tstep
	rename effect10 trho1	
	rename effect11 trho2
	rename effect12 trho3
	rename effect13 cint
	rename effect14 cpre
	rename effect15 cpost
	rename effect16 cstep
	rename effect17 crho1
	rename effect18 crho2
	rename effect19 crho3	
	rename effect20 reps
	rename effect21 bias
	rename effect22 rmse
	rename effect23 coverage
	rename effect24 se

save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen3_AR3_trend.dta", replace 

	
**************************************
* combine data sets and generate graph
**************************************

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen`i'_AR3_trend.dta", clear
	gen model = "newey"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen`i'_AR3_trend.dta", replace
}

forval i = 1(1)3 {
	use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen`i'_AR3_trend.dta", clear 
	gen model = "praisk"
	gen scenario = `i'	
	save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen`i'_AR3_trend.dta", replace
}



use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen1_AR3_trend.dta", clear
append using "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen2_AR3_trend.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_nw_scen3_AR3_trend.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen1_AR3_trend.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen2_AR3_trend.dta" ///
			"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_pw_scen3_AR3_trend.dta"
	
save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_ALL_AR3.dta", replace


****** Graph it ***********

use "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_ALL_AR3.dta", clear	


***********************
* power
***********************
// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (A)
        }
        else if `scenario' == 2 {
            local title (B)
        }
        else if `scenario' == 3 {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.10)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected power period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected power period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("Power(1-{&beta})") ///
			ylabel(.2(.2)1) ////
            title("`title'") ///
            note({&rho} = `rho', size(medium))

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_power_scen`scenario'_AR3.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_power_scen1_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_power_scen2_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_power_scen3_AR3.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_power_AR3.gph", replace

***********************
* 95% coverage
***********************

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (A)
        }
        else if `scenario' == 2 {
            local title (B)
        }
        else if `scenario' == 3 {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.10)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected coverage period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("95% Coverage") ///
			ylabel(0.50(.10)1) ///
            title("`title'") ///
            note({&rho} = `rho', size(medium))	

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_coverage_scen`scenario'_AR3.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_coverage_scen1_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_coverage_scen2_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_coverage_scen3_AR3.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_coverage_AR3.gph", replace

***********************
* Bias
***********************

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (A)
        }
        else if `scenario' == 2 {
            local title (B)
        }
        else if `scenario' == 3 {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.10)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected bias period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected coverage period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("% Bias") ///
			ylabel(-10(2)10) ////
            title("`title'") ///
            note({&rho} = `rho', size(medium))	

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_bias_scen`scenario'_AR3.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_bias_scen1_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_bias_scen2_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_bias_scen3_AR3.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_bias_AR3.gph", replace

***********************
* RMSE
***********************

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (A)
        }
        else if `scenario' == 2 {
            local title (B)
        }
        else if `scenario' == 3 {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.10)
        }
        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected rmse period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected rmse period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
			ytitle("RMSE") ///
			ylabel(1(.25)2.25) ///
            title("`title'") ///
            note({&rho} = `rho', size(medium))	

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_rmse_scen`scenario'_AR3.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_rmse_scen1_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_rmse_scen2_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_rmse_scen3_AR3.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_rmse_AR3.gph", replace

***********************
* Empirical std errs
***********************

// Loop through scenario and tpost
local scenarios 1 2 3

foreach scenario of local scenarios {
        // Set title based on scenario and tpost
        if `scenario' == 1  {
            local title (A)
        }
        else if `scenario' == 2 {
            local title (B)
        }
        else if `scenario' == 3 {
            local title (C)
        }

        // Set rho based on scenario
        if `scenario' == 1 {
            local rho (0.4, 0.2, 0.1)
        }
        else if `scenario' == 2 {
            local rho (0.7, −0.3, 0.15)
        }
        else if `scenario' == 3 {
            local rho (0.6, 0.25, 0.10)
        }

        // Set graph scheme
        set scheme stmono2

        // Generate the graph
        twoway ///
            (connected se period if model == "newey" & scenario == `scenario', ///
                sort msymbol(O) mcolor(black)) ///
            (connected se period if model == "praisk" & scenario == `scenario', ///
                sort msymbol(Oh) mcolor(black) lpattern(dash)), ///
            legend(order(1 "Newey" 2 "Prais") ///
                title("Model", size(medium))) ///
            xtitle("Period") ///
            ytitle("Empirical Std Err.") ///
            ylabel(0(.2)1) ///
            title("`title'") ///
            note({&rho} = `rho', size(medium))	

        // Save the graph with a dynamic filename
		graph save "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_se_scen`scenario'_AR3.dta", replace	
}

* combine graphs
gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_se_scen1_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_se_scen2_AR3.dta" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\sensitivity_se_scen3_AR3.dta"  ///
	, col(3) altshrink xsize(12) ysize(4)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_se_AR3.gph", replace

* combine all AR[3] sensitivity graphs

gr combine "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_power_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_coverage_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_bias_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_rmse_AR3.gph" ///
	"C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_se_AR3.gph" ///
    , row(5) altshrink xsize(9) ysize(15)

graph save "Graph" "C:\Users\Ariel\Desktop\ITSA_stuff\Compare NW and PRAIS\Higher order AR errors\combined_sensitivity_ALL_AR3.gph", replace







