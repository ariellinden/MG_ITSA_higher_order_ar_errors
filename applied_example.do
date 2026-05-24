*=============================================================================*
*  Applied Example: Daily Blood Glucose in Pre-Diabetic Patients              *
*  Continuous Glucose Monitor (CGM) Study — Artificial Data                   *
*                                                                             *
*  Design:                                                                    *
*    - 1 treated practice, 4 controls                                         *
*    - 360 periods (180 pre, 180 post), daily blood glucose (mg/dL)           *
*    - Intervention at period 181                                              *
*    - Pre-intervention trend:  +0.05 mg/dL/day (all groups)                  *
*    - Post-intervention trend: +0.05 mg/dL/day controls (unchanged)          *
*                               -0.03 mg/dL/day treated (improving)           *
*    - No immediate level change at intervention                               *
*    - Baseline intercept: ~108 mg/dL (pre-diabetes range)                    *
*    - SD = 3 (realistic daily glucose variability)                            *
*    - AR orders: AR(1), AR(2), AR(3) — high persistent positive               *
*    - True DiD in trend = (-0.03 - 0.05) - (0.05 - 0.05) = -0.08 mg/dL/day  *
*=============================================================================*

* ── DGP parameters ───────────────────────────────────────────────────────────
local n          = 360
local trperiod   = 181
local cintercept = 108
local tintercept = 108
local cpretrend  = 0.05
local tpretrend  = 0.05
local cposttrend = 0.05
local tposttrend = -0.03
local cstep      = 0
local tstep      = 0
local sd         = 3
local seed       = 77777

* ── Matrix to store results: rows = AR order, cols = NW/PW estimates ─────────
* Columns: coef, se, lb, ub, p
matrix results_nw = J(3, 5, .)
matrix results_pw = J(3, 5, .)
matrix rownames results_nw = AR1 AR2 AR3
matrix rownames results_pw = AR1 AR2 AR3
matrix colnames results_nw = coef se lb ub p
matrix colnames results_pw = coef se lb ub p


*=============================================================================*
*  AR(1): rho = 0.7
*=============================================================================*
di _n(2) as txt "{hline 60}"
di       as txt "  AR(1): rho = 0.7"
di       as txt "{hline 60}"

* Generate data using NW (data generation is identical regardless of estimator)
power_sim_multi_itsa,                  ///
    n(`n') trperiod(`trperiod')         ///
    cintercept(`cintercept')            ///
    tintercept(`tintercept')            ///
    cpretrend(`cpretrend')              ///
    tpretrend(`tpretrend')              ///
    cposttrend(`cposttrend')            ///
    tposttrend(`tposttrend')            ///
    cstep(`cstep') tstep(`tstep')       ///
    csd(`sd') tsd(`sd')                 ///
    crho1(0.7) trho1(0.7)              ///
    contcnt(4) seed(`seed')

* Save the generated dataset
tempfile data_ar1
save `data_ar1', replace

* ── OLS-NW on AR(1) data ─────────────────────────────────────────────────────
di _n as txt "--- OLS-NW ---"
use `data_ar1', clear
itsa y, treatid(1) trperiod(`trperiod') lag(1) fig replace
lincom _z_x_t`trperiod', df(`e(df)')
matrix results_nw[1,1] = r(estimate)
matrix results_nw[1,2] = r(se)
matrix results_nw[1,3] = r(lb)
matrix results_nw[1,4] = r(ub)
matrix results_nw[1,5] = r(p)

* ── Prais-Winsten on AR(1) data ──────────────────────────────────────────────
di _n as txt "--- Prais-Winsten ---"
use `data_ar1', clear
itsa y, treatid(1) trperiod(`trperiod') lag(1) praisk fig replace
lincom _z_x_t`trperiod'
matrix results_pw[1,1] = r(estimate)
matrix results_pw[1,2] = r(se)
matrix results_pw[1,3] = r(lb)
matrix results_pw[1,4] = r(ub)
matrix results_pw[1,5] = r(p)


*=============================================================================*
*  AR(2): rho = (0.7, 0.2)
*=============================================================================*
di _n(2) as txt "{hline 60}"
di       as txt "  AR(2): rho = (0.7, 0.2)"
di       as txt "{hline 60}"

power_sim_multi_itsa,                  ///
    n(`n') trperiod(`trperiod')         ///
    cintercept(`cintercept')            ///
    tintercept(`tintercept')            ///
    cpretrend(`cpretrend')              ///
    tpretrend(`tpretrend')              ///
    cposttrend(`cposttrend')            ///
    tposttrend(`tposttrend')            ///
    cstep(`cstep') tstep(`tstep')       ///
    csd(`sd') tsd(`sd')                 ///
    crho1(0.7) crho2(0.2)              ///
    trho1(0.7) trho2(0.2)              ///
    contcnt(4) seed(`seed')

tempfile data_ar2
save `data_ar2', replace

* ── OLS-NW on AR(2) data ─────────────────────────────────────────────────────
di _n as txt "--- OLS-NW ---"
use `data_ar2', clear
itsa y, treatid(1) trperiod(`trperiod') lag(2) fig replace
lincom _z_x_t`trperiod', df(`e(df)')
matrix results_nw[2,1] = r(estimate)
matrix results_nw[2,2] = r(se)
matrix results_nw[2,3] = r(lb)
matrix results_nw[2,4] = r(ub)
matrix results_nw[2,5] = r(p)

* ── Prais-Winsten on AR(2) data ──────────────────────────────────────────────
di _n as txt "--- Prais-Winsten ---"
use `data_ar2', clear
itsa y, treatid(1) trperiod(`trperiod') lag(2) praisk fig replace
lincom _z_x_t`trperiod'
matrix results_pw[2,1] = r(estimate)
matrix results_pw[2,2] = r(se)
matrix results_pw[2,3] = r(lb)
matrix results_pw[2,4] = r(ub)
matrix results_pw[2,5] = r(p)


*=============================================================================*
*  AR(3): rho = (0.6, 0.25, 0.1)
*=============================================================================*
di _n(2) as txt "{hline 60}"
di       as txt "  AR(3): rho = (0.6, 0.25, 0.1)"
di       as txt "{hline 60}"

power_sim_multi_itsa,                  ///
    n(`n') trperiod(`trperiod')         ///
    cintercept(`cintercept')            ///
    tintercept(`tintercept')            ///
    cpretrend(`cpretrend')              ///
    tpretrend(`tpretrend')              ///
    cposttrend(`cposttrend')            ///
    tposttrend(`tposttrend')            ///
    cstep(`cstep') tstep(`tstep')       ///
    csd(`sd') tsd(`sd')                 ///
    crho1(0.6) crho2(0.25) crho3(0.1)  ///
    trho1(0.6) trho2(0.25) trho3(0.1)  ///
    contcnt(4) seed(`seed')

tempfile data_ar3
save `data_ar3', replace

* ── OLS-NW on AR(3) data ─────────────────────────────────────────────────────
di _n as txt "--- OLS-NW ---"
use `data_ar3', clear
itsa y, treatid(1) trperiod(`trperiod') lag(3) fig replace
lincom _z_x_t`trperiod', df(`e(df)')
matrix results_nw[3,1] = r(estimate)
matrix results_nw[3,2] = r(se)
matrix results_nw[3,3] = r(lb)
matrix results_nw[3,4] = r(ub)
matrix results_nw[3,5] = r(p)

* ── Prais-Winsten on AR(3) data ──────────────────────────────────────────────
di _n as txt "--- Prais-Winsten ---"
use `data_ar3', clear
itsa y, treatid(1) trperiod(`trperiod') lag(3) praisk fig replace
lincom _z_x_t`trperiod'
matrix results_pw[3,1] = r(estimate)
matrix results_pw[3,2] = r(se)
matrix results_pw[3,3] = r(lb)
matrix results_pw[3,4] = r(ub)
matrix results_pw[3,5] = r(p)


*=============================================================================*
*  Display comparison table
*=============================================================================*
di _n(2) as txt "{hline 70}"
di       as txt "  Results Comparison: OLS-NW vs Prais-Winsten"
di       as txt "  True DiD in trend = -0.08 mg/dL/day"
di       as txt "{hline 70}"
di       as txt "  AR Order   Method       Coef      SE       95% CI            p"
di       as txt "{hline 70}"

foreach ar in 1 2 3 {
    local row = `ar'
    di as txt "  AR(`ar')      OLS-NW    " ///
        as res %8.4f results_nw[`row',1] "  " ///
        %6.4f results_nw[`row',2] "  " ///
        "[" %7.4f results_nw[`row',3] ", " %7.4f results_nw[`row',4] "]  " ///
        %6.4f results_nw[`row',5]
    di as txt "            PW        " ///
        as res %8.4f results_pw[`row',1] "  " ///
        %6.4f results_pw[`row',2] "  " ///
        "[" %7.4f results_pw[`row',3] ", " %7.4f results_pw[`row',4] "]  " ///
        %6.4f results_pw[`row',5]
    if `ar' < 3 di as txt "  {hline 70}"
}
di as txt "{hline 70}"
