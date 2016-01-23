<?php

/* ------------------ARRAY------------------  */

// INITIALIZING
$slanguages = array();
$sdatabases = [];
$soperatingystems = array(12);

// POPULATING (SIMPLE)
$slanguages = [
    0 => 'Languages',
    1 => 'C++',
    2 => 'C',
    3 => 'Java',
    4 => 'C#',
    5 => 'Python',
    6 => 'PHP', 
    7 => 'Perl',
    8 => 'R',
    9 => 'Ruby',
    10 => 'VB.NET',
    11 => 'Javascript',
    12 => 'Matlab'];

$sdatabases[0] = 'Oracle';
$sdatabases[1] = 'SQL Server';
$sdatabases[2] = 'PostgreSQL';
$sdatabases[3] = 'MySQL';
$sdatabases[4] = 'DB2';
$sdatabases[5] = 'SQLite';
$sdatabases[6] = 'MS Access';
$sdatabases[7] = 'SAP Sybase';
$sdatabases[8] = 'Teradata';
$sdatabases[9] = 'MongoDB';

$soperatingystems = array('Windows 7', 'Windows XP', 'Windows 8',
                         'Windows 8.1', 'Windows 10', 'Windows Vista',
                         'Mac OS X 11', 'Mac OS X 10', 'Linux Mint',
                         'Linux Debian', 'Android', 'iOS');


// POPULATING (NESTED)
$nlanguages = [
    0 => ['Languages', 'Uses', 'Ranking'],
    1 => ['C++', 'computing', 99.6],
    2 => ['C', 'computing', 99.9],
    3 => ['Java', 'application', 100],
    4 => ['C#', 'application', 91.8],
    5 => ['Python', 'application', 95.8],
    6 => ['PHP',  'web', 84.5],
    7 => ['Perl', 'web', 66.9],
    8 => ['R', 'computing', 84.7],
    9 => ['Ruby', 'web', 75.3],
    10 => ['VB.NET', 'application', 63.4],
    11 => ['Javascript', 'web', 83],
    12 => ['Matlab', 'computing', 72.4]
];

echo "\nMULTI-DIMENSIONAL ARRAY NESTED FOREACH LOOP\n";
foreach($nlanguages as $item){
    foreach($item as $element){
        echo $element."\n";
    }          
}

$ndatabases[0] = ['Databases', 'Type', 'Size', 'Ranking'];
$ndatabases[1] = ['Oracle', 'Proprietary', 'Server', 1497.55];
$ndatabases[2] = ['SQL Server', 'Proprietary', 'Server', 1123.16];
$ndatabases[3] = ['PostgreSQL', 'Open-Source', 'Server', 280.09];
$ndatabases[4] = ['MySQL', 'Open-Source', 'Server', 1298.54];
$ndatabases[5] = ['DB2', 'Proprietary', 'Server', 196.13];
$ndatabases[6] = ['SQLite', 'Open-Source', 'File', 100.85];
$ndatabases[7] = ['MS Access', 'Proprietary', 'File', 140.21];
$ndatabases[8] = ['SAP Sybase', 'Proprietary', 'Server', 81.47];
$ndatabases[9] = ['Teradata', 'Proprietary', 'Server', 75.72];
$ndatabases[10] = ['MongoDB', 'Open-Source', 'Store', 301.39];

echo "\nMULTI-DIMENSIONAL ARRAY NESTED FOR LOOP\n";
for($i=0; $i < sizeof($ndatabases); $i++){
    for($j=0; $j < sizeof($ndatabases[0]); $j++){        
        echo $ndatabases[$i][$j]."\n";
    }          
}

$noperatingsystems = array(
    0 => array('OS', 'Type', 'Kernel', 'Market Share'),
    1 => array('Windows 7', 'desktop', 'NT', 56.11),
    2 => array('Windows XP', 'desktop', 'NT', 10.59),
    3 => array('Windows 8', 'desktop', 'NT', 2.88),
    4 => array('Windows 8.1', 'desktop', 'NT', 11.15),
    5 => array('Windows 10', 'desktop', 'NT', 9),
    6 => array('Windows Vista', 'desktop', 'NT', 0),
    7 => array('Mac OS X 11', 'desktop', 'Unix', 2.66),
    8 => array('Mac OS X 10', 'desktop', 'Unix', 2.45),
    9 => array('Linux Mint', 'desktop', 'Linux', 0),
    10 => array('Linux Debian', 'desktop', 'Linux', 0),
    11 => array('Android', 'mobile', 'Linux', 48.12),
    12 => array('iOS', 'mobile', 'Unix', 34.71)
);

echo "\nMULTI-DIMENSIONAL ARRAY NESTED WHILE LOOP\n";
$i = 0; $j = 0;
while($i < sizeof($noperatingsystems)){    
    while($j < sizeof($noperatingsystems[0])){        
        echo $noperatingsystems[$i][$j]."\n";
        $j++;
    }
    $i++; $j = 0;
}

/* DOUBLY LINK LIST  */

$dlanguages = new SplDoublyLinkedList();

$dlanguages->push(['Languages', 'Uses', 'Ranking']);
$dlanguages->push(['C++', 'computing', 99.6]);
$dlanguages->push(['C', 'computing', 99.9]);
$dlanguages->push(['Java', 'application', 100]);
$dlanguages->push(['C#', 'application', 91.8]);
$dlanguages->push(['Python', 'application', 95.8]);
$dlanguages->push(['PHP',  'web', 84.5]);
$dlanguages->push(['Perl', 'web', 66.9]);
$dlanguages->push(['R', 'computing', 84.7]);
$dlanguages->push(['Ruby', 'web', 75.3]);
$dlanguages->push(['VB.NET', 'application', 63.4]);
$dlanguages->push(['Javascript', 'web', 83]);
$dlanguages->push(['Matlab', 'computing', 72.4]);

echo "\nDOUBLY LINK LIST LOOP: FIFO\n";
$dlanguages->setIteratorMode(SplDoublyLinkedList::IT_MODE_FIFO);
for($dlanguages->rewind(); $dlanguages->valid(); $dlanguages->next()){
    echo $dlanguages->current()[0]."\n";
    echo $dlanguages->current()[1]."\n";
    echo $dlanguages->current()[2]."\n";       
}

/* FIXED ARRAY  */

$fdatabases = new SplFixedArray(11);

$fdatabases[0] = ['Databases', 'Type', 'Size', 'Ranking'];
$fdatabases[1] = ['Oracle', 'Proprietary', 'Server', 1497.55];
$fdatabases[2] = ['SQL Server', 'Proprietary', 'Server', 1123.16];
$fdatabases[3] = ['PostgreSQL', 'Open-Source', 'Server', 280.09];
$fdatabases[4] = ['MySQL', 'Open-Source', 'Server', 1298.54];
$fdatabases[5] = ['DB2', 'Proprietary', 'Server', 196.13];
$fdatabases[6] = ['SQLite', 'Open-Source', 'File', 100.85];
$fdatabases[7] = ['MS Access', 'Proprietary', 'File', 140.21];
$fdatabases[8] = ['SAP Sybase', 'Proprietary', 'Server', 81.47];
$fdatabases[9] = ['Teradata', 'Proprietary', 'Server', 75.72];
$fdatabases[10] = ['MongoDB', 'Open-Source', 'Store', 301.39];

echo "\nSPL FIXED ARRAY FOR LOOP\n";
for($i=0; $i<10; $i++){
    echo $fdatabases[$i][0]."\n";
    echo $fdatabases[$i][1]."\n";
    echo $fdatabases[$i][2]."\n";
    echo $fdatabases[$i][3]."\n";
}

/* SPL QUEUE  */

$qoperatingsystems = new SplQueue();

$qoperatingsystems->push(array('Windows 7', 'desktop', 'NT', 56.11));
$qoperatingsystems->push(array('Windows XP', 'desktop', 'NT', 10.59));
$qoperatingsystems->push(array('Windows 8', 'desktop', 'NT', 2.88));
$qoperatingsystems->push(array('Windows 8.1', 'desktop', 'NT', 11.15));
$qoperatingsystems->push(array('Windows 10', 'desktop', 'NT', 9));
$qoperatingsystems->push(array('Windows Vista', 'desktop', 'NT', 0));
$qoperatingsystems->push(array('Mac OS X 11', 'desktop', 'Unix', 2.66));
$qoperatingsystems->push(array('Mac OS X 10', 'desktop', 'Unix', 2.45));
$qoperatingsystems->push(array('Linux Mint', 'desktop', 'Linux', 0));
$qoperatingsystems->push(array('Linux Debian', 'desktop', 'Linux', 0));
$qoperatingsystems->push(array('Android', 'mobile', 'Linux', 48.12));
$qoperatingsystems->push(array('iOS', 'mobile', 'Unix', 34.71));

echo "\nSPL QUEUE ARRAY FOR LOOP: FIFO\n";
$qoperatingsystems->setIteratorMode(SplDoublyLinkedList::IT_MODE_FIFO);
for($qoperatingsystems->rewind(); $qoperatingsystems->valid(); $qoperatingsystems->next()){
    echo $qoperatingsystems->current()[0]."\n";
    echo $qoperatingsystems->current()[1]."\n";
    echo $qoperatingsystems->current()[2]."\n";
    echo $qoperatingsystems->current()[3]."\n"; 
}


/* ------------------BASIC OPERATIONS------------------ */

// SORT
// BY LANGUAGE RANKING
usort($nlanguages, function($a, $b) {
    return $b[2] - $a[2];
});

// FILTER
// BY DATABASE SIZE
function serveronly($var) {
    if ($var[2]=='Server'){
        return($var);
    }
}
$sdatabases = array_filter($ndatabases,"serveronly");

// AGGREGATE
// CALCULATE AVG. MARKET SHARE
$desktopavgshare = $mobileavgshare = 0;
foreach($noperatingsystems as $item){
    if ($item[1] == 'desktop') {
        $desktopavgshare = $desktopavgshare + $item[3];
    } else {
        $mobileavgshare = $mobileavgshare + $item[3];
    }
}
$desktopavgshare = $desktopavgshare/10;
$mobileavgshare = $mobileavgshare/2;

echo "DESKTOP AVG MARKET SHARE: ". $desktopavgshare."\n";
echo "MOBILE AVG MARKET SHARE: ". $mobileavgshare."\n";

// MERGE
$comparray = array('languages' => $nlanguages,
                   'databases' => $ndatabases,
                   'operatingsystems' => $noperatingsystems);


// CSV EXPORT
$cd = dirname(__FILE__);
$fp = fopen($cd.'/Data/Languages_PHP.csv', 'w');

fputcsv($fp, $nlanguages[12]);           # HEADERS
$nlanguages = array_slice($nlanguages, 0, 12);
foreach ($nlanguages as $rows) {    
    fputcsv($fp, $rows);                # ROWS
}
fclose($fp);

$fp = fopen($cd.'/Data/Databases_PHP.csv', 'w');
fputcsv($fp, $ndatabases[0]);           # HEADERS
$ndatabases = array_slice($ndatabases, 1, 10);
foreach ($ndatabases as $rows) {    
    fputcsv($fp, $rows);                # ROWS
}
fclose($fp);

$fp = fopen($cd.'/Data/OperatingSystems_PHP.csv', 'w');
fputcsv($fp, $noperatingsystems[0]);    # HEADERS
$noperatingsystems = array_slice($noperatingsystems, 1, 12);
foreach ($noperatingsystems as $rows) {    
    fputcsv($fp, $rows);                # ROWS
}
fclose($fp);

echo "\nSuccessfully exported array data to csv files!\n";

?>