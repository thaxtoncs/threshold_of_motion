% ibatch script
%
% Start here. Create dir for new run, copy code there, execute, delete
% unneeded files.
copyfile *.m v09_02_2.5_30_0.5D_CL0.0_FAM
cd v09_02_2.5_30_0.5D_CL0.0_FAM
isuite_v09_02(0.5,30,2.5,0.0)
% Comment these "delete" out if you want the full dat aset available for debug and
% analysis. Plan for ~10GB per run.
delete threshold_*.mat
delete kwmodel_*.mat
delete threshold_*.mat
cd ..
