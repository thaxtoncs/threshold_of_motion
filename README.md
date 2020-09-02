# threshold_of_motion
All code to be posted to github: thaxtoncs/threshold_of_motion

Code is written for migration to FORTRAN-90.

Code is built to automate “runs” for a given surface roughness (KNscale), vertical location for the force balance computation (zlimit), internal angle of repose (theta), and lift coefficient (Cl_scale). Run ibatch for a single run, or sequence of single runs with varying KNscale, theta, Cl_scale, and zscale. One “run” calls iscript_vXX once. For example, in ibatch.m, a single run is:

isuite_v09_02(0.5,30,2.5,0.0)

This is read in to iscript.m as:

function isuite_v09_02(zscale,theta,KNscale,Cl_scale)

For each “run” iscript.m loops through a range of period (T), maximum free stream velocity (umax), wave shape parameter (ohi), and grains size (D). Detailed output is provided for each. iparse.m writes the detailed results from threshold.m into a GLOBAL matrix called RESULTS initialized as:

RESULTS(1:Tlength,1:ulength,1:plength,1:dlength,1:54,1:16)=NaN;

Into a file that looks like:

isuite_v09_02_RESULTS.m

If ibatch.m deletes threshold_*.mat, kwmodel_*.mat, and threshold_*.mat, output will be limited to ~1.5MB; otherwise, ~15GB per run. Estimate ~1hr per run on an i7 core desktop.

See github for example viz and analysis routines.

