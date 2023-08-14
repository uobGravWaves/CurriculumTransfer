%{
Example code for Satellite Project week

Land Surface Temperature, June 2020
%}


%The folder where I have stored the data
inputDataFolder = 'C:\Users\Peter\OneDrive - University of Bath\Desktop\BathBits\gitPROJECTS\CurriculumTransfer\data\aerosol';

%The name of the file, with it's location in my PC
%The function "fullfile" joins the two strings together in a way that a
%computer understands it as a file location
inputData = fullfile(inputDataFolder, '2006-ESACCI-L3C_AEROSOL-AER_PRODUCTS-AATSR-ENVISAT-ENS_ANNUAL-v2.6.nc');

%Load the file, the ".nc" format is difficult, so a special function is
%used
landtemp2020 = readNetCDF(inputData);

%Tidying up the variables to make easier to work with
latitudes = landtemp2020.Data.latitude;
longitudes = landtemp2020.Data.longitude;
lst = landtemp2020.Data.NMEAS;

%Finally, plotting!

figure

%Don't forget the "shading flat" when using pcolor
pcolor(longitudes, latitudes, lst'); shading flat
colorbar