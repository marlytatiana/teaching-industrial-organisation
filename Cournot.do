// Clear all variables
clear all

// Set the number of observations 180 / 10 + 1
set obs 19  

// Create output variables and define the range of values
gen output_firm1 = round(_n - 1) * 10
gen output_firm2 = round(_n - 1) * 10

// Set parameters
local a = 200
local c = 20
local b = 1

// Calculate best responses

gen bestresp_Firm1 = (`a' - `c' - `b'*output_firm2)/(2*`b')
gen bestresp_Firm2 = (`a' - `c' - `b'*output_firm1)*((2*`b')^-1)


// Plot the best responses without Nash equilibrium point
twoway line bestresp_Firm2 output_firm1, lcolor(blue) lpattern(solid) || ///
       line output_firm2 bestresp_Firm1, lcolor(red) lpattern(solid) ///
       xtitle("Output Firm 1") ytitle("Output Firm 2") title("Best Responses") ///
       xlab(0(20)180) ylab(0(20)180) scheme(s1mono) legend(order(1 "Firm 1" 2 "Firm 2"))

// Calculate Nash equilibrium point
// Set parameters
local nashoutput_firm1 = (200-20)/(3*1)
local nashoutput_firm2 = (200-20)/(3*1)


// Plot the best responses with Nash equilibrium point
twoway line bestresp_Firm2 output_firm1, lcolor(blue) lpattern(solid) || ///
       line output_firm2 bestresp_Firm1, lcolor(red) lpattern(solid) xtitle("Output Firm 1") ytitle("Output Firm 2") title("Best Responses") ///
       xlab(0(20)180) ylab(0(20)180) scheme(s1mono) legend(order(1 "Firm 1" 2 "Firm 2")) ///
	   text("`nashoutput_firm1'" "`nashoutput_firm2'" "Nash Equilibrium", place(e)) 
 
 