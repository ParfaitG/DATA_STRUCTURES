
/* 
  SIMPLE ARRAYS  
  a set of variables grouped together for the duration of a data step
*/

data lang;
	array languages {1:12} $15
          lang1 lang2 lang3 lang4 lang5 lang6 lang7 lang8 lang9 lang10 lang11 lang12
          ('C++', 'C', 'Java', 'C#', 'Python', 'PHP', 'Perl', 'R', 'Ruby', 'VB.NET', 'Javascript', 'Matlab');
run;

proc print data=lang;
	title "SIMPLE LANGUAGES ARRAY";
run;

data db;
	array databases(10) $15 db1-db10;
	db1 = 'Oracle';
	db2 = 'SQL Server';
	db3 = 'PostgreSQL';
	db4 = 'MySQL';
	db5 = 'DB2';
	db6 = 'SQLite';
	db7 = 'MS Access';
	db8 = 'SAP Sybase';
	db9 = 'Teradata';
	db10 = 'MongoDB';       
run;

proc print data=db;
	title "SIMPLE DATABASES ARRAY";
run;

data os;
	array operatingsystems(*) $15 os1-os12;
	operatingsystems(1) = 'Windows 7';
	operatingsystems(2) = 'Windows XP';
	operatingsystems(3) = 'Windows 8';
	operatingsystems(4) = 'Windows 8.1';
	operatingsystems(5) = 'Windows 10';
	operatingsystems(6) = 'Windows Vista';
	operatingsystems(7) = 'Mac OS X 11';
	operatingsystems(8) = 'Mac OS X 10';
	operatingsystems(9) = 'Linux Mint';
	operatingsystems(10) = 'Linux Debian';
	operatingsystems(11) = 'Android';
	operatingsystems(12) = 'iOS';
run;

proc print data=os;
	title "SIMPLE OPERATING SYTEMS ARRAY";
run;


/* MULTI-DIMENSIONAL ARRAY */

data lang;
	array languages(1:3, 1:12) $15 lang1-lang36  
    ('C++', 'C', 'Java', 'C#', 'Python', 'PHP', 'Perl', 'R', 'Ruby', 'VB.NET', 'Javascript', 'Matlab',
     'computing', 'computing', 'application', 'application', 'application', 
     'web', 'web', 'computing', 'web', 'application', 'web', 'computing',
     '99.6', '99.9', '100', '91.8', '95.8', '84.5', '66.9', '84.7', '75.3', '63.4', '83', '72.4');
run;

proc print data=lang;
	title "MULTI-DIMENSIONAL LANGUAGES ARRAY";
run;

data db;
	infile datalines DSD;
	array databases(1:4, 1:10) $20 db1-db40;
	input databases(*);

	datalines;
	Oracle, SQL Server, PostgreSQL, MySQL, DB2, SQLite, MS Access, SAP Sybase, Teradata, MongoDB
	Proprietary, Proprietary, Open-Source, Open-Source, Proprietary 
    Open-Source, Proprietary, Proprietary, Proprietary, Open-Source
	Server, Server, Server, Server, Server, File, File, Server, Server, Server
	1497.55, 1123.16, 280.09, 1298.54, 196.13, 100.85, 140.21, 81.47, 75.72, 301.39
;
run;

proc print data=db;
	title "MULTI-DIMENSIONAL DATABASES ARRAY";
run;

data os;
	array operatingsystems(1:4, 1:12) $15 os1-os48;
	
	operatingsystems(1,1) = 'Windows 7';
	operatingsystems(1,2) = 'Windows XP';
	operatingsystems(1,3) = 'Windows 8';
	operatingsystems(1,4) = 'Windows 8.1';
	operatingsystems(1,5) = 'Windows 10';
	operatingsystems(1,6) = 'Windows Vista';
	operatingsystems(1,7) = 'Mac OS X 11';
	operatingsystems(1,8) = 'Mac OS X 10';
	operatingsystems(1,9) = 'Linux Mint';
	operatingsystems(1,10) = 'Linux Debian';
	operatingsystems(1,11) = 'Android';
	operatingsystems(1,12) = 'iOS';	

	operatingsystems(2,1) = 'desktop';
	operatingsystems(2,2) = 'desktop';
	operatingsystems(2,3) = 'desktop';
	operatingsystems(2,4) = 'desktop';
	operatingsystems(2,5) = 'desktop';
	operatingsystems(2,6) = 'desktop';
	operatingsystems(2,7) = 'desktop';
	operatingsystems(2,8) = 'desktop';
	operatingsystems(2,9) = 'desktop';
	operatingsystems(2,10) = 'desktop';
	operatingsystems(2,11) = 'mobile';
	operatingsystems(2,12) = 'mobile';

	operatingsystems(3,1) = 'NT';
	operatingsystems(3,2) = 'NT';
	operatingsystems(3,3) = 'NT';
	operatingsystems(3,4) = 'NT';
	operatingsystems(3,5) = 'NT';
	operatingsystems(3,6) = 'NT';
	operatingsystems(3,7) = 'Unix';
	operatingsystems(3,8) = 'Unix';
	operatingsystems(3,9) = 'Linux';
	operatingsystems(3,10) = 'Linux';
	operatingsystems(3,11) = 'Linux';
	operatingsystems(3,12) = 'Unix';

	operatingsystems(4,1) = '56.11';
	operatingsystems(4,2) = '10.59';
	operatingsystems(4,3) = '2.88';
	operatingsystems(4,4) = '11.15';
	operatingsystems(4,5) = '9';
	operatingsystems(4,6) = '0';
	operatingsystems(4,7) = '2.66';
	operatingsystems(4,8) = '2.45';
	operatingsystems(4,9) = '0';
	operatingsystems(4,10) = '0';
	operatingsystems(4,11) = '48.12';
	operatingsystems(4,12) = '34.71';

run;

proc print data=os;
	title "MULTI-DIMENSIONAL OPERATING SYSTEMS ARRAY";
run;

/* 
  MATRICES (SAS/IML STUDIO MODULE): 
  two-dimensional structures to contain numeric and character data
*/
proc iml;		
	langmatrix ={'C++'  'computing'  '99.6',
			     'C'  'computing'  '99.9',
			     'Java'  'application'  '100',
			     'C#'  'application'  '91.8',
			     'Python'  'application'  '95.8',
			     'PHP'  'web'  '84.5',
			     'Perl'  'web'  '66.9',
			     'R'  'computing'  '84.7',
			     'Ruby'  'web'  '75.3',
			     'VB.NET'  'application'  '63.4',
			     'Javascript'  'web'  '83',
			     'Matlab'  'computing'  '72.4'};	
	print(langmatrix);

	dbmatrix = j(10,4,'dbdbdbdbdbdbdbdbdbdb');	
	dbmatrix[1,1:4] = {'Oracle'  'Proprietary'  'Server'  '1497.55'};
	dbmatrix[2,1:4] = {'SQL Server'  'Proprietary'  'Server'  '1123.16'};
	dbmatrix[3,1:4] = {'PostgreSQL'  'Open-Source'  'Server'  '280.09'};
	dbmatrix[4,1:4] = {'MySQL'  'Open-Source'  'Server'  '1298.54'};
	dbmatrix[5,1:4] = {'DB2'  'Proprietary'  'Server'  '196.13'};
	dbmatrix[6,1:4] = {'SQLite'  'Open-Source'  'File'  '100.85'};
	dbmatrix[7,1:4] = {'MS Access'  'Proprietary'  'File'  '140.21'};
	dbmatrix[8,1:4] = {'SAP Sybase'  'Proprietary'  'Server'  '81.47'};
	dbmatrix[9,1:4] = {'Teradata'  'Proprietary'  'Server'  '75.72'};
	dbmatrix[10,1:4] = {'MongoDB'  'Open-Source'  'Server'  '301.39'};	
	print(dbmatrix);

	osmatrix = j(12,4,'osososososos');	
	osmatrix[1,1] = 'Windows 7 '; osmatrix[1,2] = 'desktop'; osmatrix[1,3] = 'NT'; osmatrix[1,4] = '56.11';
	osmatrix[2,1] = 'Windows XP'; osmatrix[2,2] = 'desktop'; osmatrix[2,3] = 'NT'; osmatrix[2,4] = '10.59';
	osmatrix[3,1] = 'Windows 8'; osmatrix[3,2] = 'desktop'; osmatrix[3,3] = 'NT'; osmatrix[3,4] = '2.88';
	osmatrix[4,1] = 'Windows 8.1'; osmatrix[4,2] = 'desktop'; osmatrix[4,3] = 'NT'; osmatrix[4,4] = '11.15';
	osmatrix[5,1] = 'Windows 10'; osmatrix[5,2] = 'desktop'; osmatrix[5,3] = 'NT'; osmatrix[5,4] = '9';
	osmatrix[6,1] = 'Windows Vista'; osmatrix[6,2] = 'desktop'; osmatrix[6,3] = 'NT'; osmatrix[6,4] = '0';
	osmatrix[7,1] = 'Mac OS X 11'; osmatrix[7,2] = 'desktop'; osmatrix[7,3] = 'Unix'; osmatrix[7,4] = '2.66';
	osmatrix[8,1] = 'Mac OS X 10'; osmatrix[8,2] = 'desktop'; osmatrix[8,3] = 'Unix'; osmatrix[8,4] = '2.45';
	osmatrix[9,1] = 'Linux Mint'; osmatrix[9,2] = 'desktop'; osmatrix[9,3] = 'Linux'; osmatrix[9,4] = '0';
	osmatrix[10,1] = 'Linux Debian'; osmatrix[10,2] = 'desktop'; osmatrix[10,3] = 'Linux'; osmatrix[10,4] = '0';
	osmatrix[11,1] = 'Android'; osmatrix[11,2] = 'mobile'; osmatrix[11,3] = 'Linux'; osmatrix[11,4] = '48.12';
	osmatrix[12,1] = 'iOS'; osmatrix[12,2] = 'mobile'; osmatrix[12,3] = 'Unix'; osmatrix[12,4] = '34.71';

	print(osmatrix);
quit;

/* 
  BASIC OPERATIONS:  
*/

* SORT;
data lang (drop= I J temp);
	array languages {1:12} $15
          lang1 lang2 lang3 lang4 lang5 lang6 lang7 lang8 lang9 lang10 lang11 lang12
          ('C++', 'C', 'Java', 'C#', 'Python', 'PHP', 'Perl', 'R', 'Ruby', 'VB.NET', 'Javascript', 'Matlab');

	do I=1 to 12;
		do J=1 to 12-I; 
			if languages(J+1) < languages(J) then do; 
				Temp = languages(J); 
				languages(J)= languages(J+1); 
				languages(J+1) = Temp;
			end; 
		end; 
	end; 		
run ; 

* FILTER;
data lang;
	array languages(1:3, 1:12) $15 lang1-lang36  
    ('C++', 'C', 'Java', 'C#', 'Python', 'PHP', 'Perl', 'R', 'Ruby', 'VB.NET', 'Javascript', 'Matlab',
     'computing', 'computing', 'application', 'application', 'application', 
     'web', 'web', 'computing', 'web', 'application', 'web', 'computing',
     '99.6', '99.9', '100', '91.8', '95.8', '84.5', '66.9', '84.7', '75.3', '63.4', '83', '72.4');

	array filterlang (1:3,1:12) $15 filterlang1-filterlang36  ;
	j = 1;
	do i=1 to 12;		
		if languages(2,i) = "computing" then 
			do;
				filterlang(1,j) = languages(1,i);
				filterlang(2,j) = languages(2,i);
				filterlang(3,j) = languages(3,i);	
				j++1;
			end;				
	end;		
	drop lang1-lang36;
	call symput('filterlimit', j);
run;

%macro dropelements(filterlimit);
   %do i=&filterlimit %to 12;   
		data Lang;		
			set Lang;	
			drop filterlang&i;
			drop filterlang%eval(&i+12);
			drop filterlang%eval(&i+24);
		run;
   %end;
%mend dropelements;

%dropelements(&filterlimit);

* MERGE;
data compArray;
	array languages(1:3, 1:12) $15 lang1-lang36  
    ('C++', 'C', 'Java', 'C#', 'Python', 'PHP', 'Perl', 'R', 'Ruby', 'VB.NET', 'Javascript', 'Matlab',
     'computing', 'computing', 'application', 'application', 'application', 
     'web', 'web', 'computing', 'web', 'application', 'web', 'computing',
     '99.6', '99.9', '100', '91.8', '95.8', '84.5', '66.9', '84.7', '75.3', '63.4', '83', '72.4');

	array databases(1:4, 1:10) $15 db1-db40  
    ('Oracle', 'SQL Server', 'PostgreSQL', 'MySQL', 'DB2', 'SQLite', 'MS Access', 'SAP Sybase', 'Teradata', 'MongoDB',
     'Proprietary', 'Proprietary', 'Open-Source', 'Open-Source', 'Proprietary', 'Open-Source', 'Proprietary', 'Proprietary', 'Proprietary', 'Open-Source',
     'Server', 'Server', 'Server', 'Server', 'Server', 'File', 'File', 'Server', 'Server', 'Server',
     '1497.55', '1123.16', '280.09', '1298.54', '196.13', '100.85', '140.21', '81.47', '75.72', '301.39');

	array operatingsystems(1:4, 1:12) $15 os1-os48
    ('Windows 7 ', 'Windows XP', 'Windows 8', 'Windows 8.1', 'Windows 10', 'Windows Vista', 'Mac OS X 11', 'Mac OS X 10', 'Linux Mint', 'Linux Debian', 'Android', 'iOS',
     'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'mobile', 'mobile',
     'NT', 'NT', 'NT', 'NT', 'NT', 'NT', 'Unix', 'Unix', 'Linux', 'Linux', 'Linux', 'Unix',
     '56.11', '10.59', '2.88', '11.15', '9', '0', '2.66', '2.45', '0', '0', '48.12', '34.71');
run;

* AGGREGATE;
data aggArray;	
	array operatingsystems(1:4, 1:12) $15 os1-os48
    ('Windows 7 ', 'Windows XP', 'Windows 8', 'Windows 8.1', 'Windows 10', 'Windows Vista', 'Mac OS X 11', 'Mac OS X 10', 'Linux Mint', 'Linux Debian', 'Android', 'iOS',
     'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'desktop', 'mobile', 'mobile',
     'NT', 'NT', 'NT', 'NT', 'NT', 'NT', 'Unix', 'Unix', 'Linux', 'Linux', 'Linux', 'Unix',
     '56.11', '10.59', '2.88', '11.15', '9', '0', '2.66', '2.45', '0', '0', '48.12', '34.71');

	 desktopmktshare = 0; dcnt = 0;
	 mobilemktshare = 0; mcnt = 0;
	 do i=1 to 12;
	 	if operatingsystems(2,i) = "desktop" then
			do;
				desktopmktshare = desktopmktshare + operatingsystems(4,i);
				dcnt + 1;
			end;
		if operatingsystems(2,i) = "mobile" then
			do;
				mobilemktshare = mobilemktshare + operatingsystems(4,i);
				mcnt + 1;
			end;
	 end;
	desktopmktshare = desktopmktshare / dcnt;
	mobilemktshare = mobilemktshare / mcnt;

	put desktopmktshare; put mobilemktshare;
run;

/* 
  DATA SET:  
  two-dimensional data set structure
*/
%Let fpath = C:\Path\To\Working\Directory;

data langdata;	
	input languages $ uses $ ranking $;
	infile datalines DSD;
	datalines;
		C++, computing, 99.6
		C, computing, 99.9
		Java, application, 100
		C#, application, 91.8
		Python, application, 95.8
		PHP, web, 84.5
		Perl, web, 66.9
		R, computing, 84.7
		Ruby, web, 75.3
		VB.NET, application, 63.4
		Javascript, web, 83
		Matlab, computing, 72.4
;
run;

proc print data=langdata;
	title "LANGUAGES DATASET";
run;

proc export 
	data = Work.langdata
	outfile = "&fpath\Data\Languages_SAS.csv"
	dbms = csv replace;
run;

data dbdata;
	input databases $ type $ size $ ranking;
	infile datalines DSD;
	cards;
		Oracle, Proprietary, Server, 1497.55
		SQL Server, Proprietary, Server, 1123.16
		PostgreSQL, Open-Source, Server, 280.09
		MySQL, Open-Source, Server, 1298.54
		DB2, Proprietary, Server, 196.13
		SQLite, Open-Source, File, 100.85
		MS Access, Proprietary, File, 140.21
		SAP Sybase, Proprietary, Server, 81.47
		Teradata, Proprietary, Server, 75.72
		MongoDB, Open-Source, Server, 301.39
;
run;

proc print data=dbdata;
	title "DATABASES DATASET";
run;

proc export 
	data = Work.dbdata
	outfile = "&fpath\Data\Databases_SAS.csv"
	dbms = csv replace;
run;

data osdata;
	input operatingsystems $ type $ kernel $ marketshare;
	infile datalines DSD;
	datalines;
		Windows 7, desktop, NT, 56.11
		Windows XP, desktop, NT, 10.59
		Windows 8, desktop, NT, 2.88
		Windows 8.1, desktop, NT, 11.15
		Windows 10, desktop, NT, 9
		Windows Vista, desktop, NT, 0
		Mac OS X 11, desktop, Unix, 2.66
		Mac OS X 10, desktop, Unix, 2.45
		Linux Mint, desktop, Linux, 0
		Linux Debian, desktop, Linux, 0
		Android, mobile, Linux, 48.12
		iOS, mobile, Unix, 34.71
;
run;

proc print data=osdata;
	title "OPERATING SYSTEMS DATASET";
run;

proc export 
	data = Work.osdata
	outfile = "&fpath\Data\OperatingSystems_SAS.csv"
	dbms = csv replace;
run;
