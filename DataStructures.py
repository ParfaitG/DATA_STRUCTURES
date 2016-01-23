
######################################################
## LIST
##  CONTAINER OF OBJECTS MAPPED  TO VALUES
######################################################

'''DEFINING'''
slanguages = []
sdatabases = []
soperatingsystems = [None] * 12

'''POPULATING (SIMPLE)'''
slanguages = ['C++', 'C', 'Java', 'C#',
              'Python', 'PHP', 'Perl',
              'R', 'Ruby', 'VB.NET', 'Javascript', 'Matlab']

sdatabases.append('Oracle')
sdatabases.append('SQL Server')
sdatabases.append('PostgreSQL')
sdatabases.append('MySQL')
sdatabases.append('DB2')
sdatabases.append('SQLite')
sdatabases.append('MS Access')
sdatabases.append('SAP Sybase')
sdatabases.append('Teradata')
sdatabases.append('MongoDB')

soperatingsystems[0] = 'Windows 7'
soperatingsystems[1] = 'Windows XP'
soperatingsystems[2] = 'Windows 8'
soperatingsystems[3] = 'Windows 8.1'
soperatingsystems[4] = 'Windows 10'
soperatingsystems[5] = 'Windows Vista'
soperatingsystems[6] = 'Mac OS X 11'
soperatingsystems[7] = 'Mac OS X 10'
soperatingsystems[8] = 'Linux Mint'
soperatingsystems[9] = 'Linux Debian'
soperatingsystems[10] = 'Android'
soperatingsystems[11] = 'iOS'


'''POPULATING (NESTED)'''
nlanguages = []
ndatabases = []
noperatingsystems = list(range(13))

nlanguages = [['Languages', 'Uses', 'Ranking'],
              ['C++', 'computing', '99.6'],
              ['C', 'computing', '99.9'],
              ['Java', 'application', '100'],
              ['C#', 'application', '91.8'],
              ['Python', 'application', '95.8'],
              ['PHP', 'web', '84.5'],
              ['Perl', 'web', '66.9'],
              ['R', 'computing', '84.7'],
              ['Ruby', 'web', '75.3'],
              ['VB.NET', 'application', '63.4'],
              ['Javascript', 'web', '83'],
              ['Matlab', 'computing', '72.4']]

print('\nLANGUAGES LIST')
for item in nlanguages:
    print(item)

ndatabases.append(['Databases', 'Type', 'Size', 'Ranking'])
ndatabases.append(['Oracle', 'Proprietary', 'Server', '1497.55'])
ndatabases.append(['SQL Server', 'Proprietary', 'Server', '1123.16'])
ndatabases.append(['PostgreSQL', 'Open-Source', 'Server', '280.09'])
ndatabases.append(['MySQL', 'Open-Source', 'Server', '1298.54'])
ndatabases.append(['DB2', 'Proprietary', 'Server', '196.13'])
ndatabases.append(['SQLite', 'Open-Source', 'File', '100.85'])
ndatabases.append(['MS Access', 'Proprietary', 'File', '140.21'])
ndatabases.append(['SAP Sybase','Proprietary', 'Server', '81.47'])
ndatabases.append(['Teradata', 'Proprietary', 'Server', '75.72'])
ndatabases.append(['MongoDB', 'Open-Source', 'Server', '301.39'])

print('\nDATABASES LIST')
for item in ndatabases:
    print(item)
    
noperatingsystems[0] = ['Operating Systems', 'Type', 'Kernel', 'Market Share']
noperatingsystems[1] = ['Windows 7 ', 'desktop', 'NT', '56.11']
noperatingsystems[2] = ['Windows XP', 'desktop', 'NT', '10.59']
noperatingsystems[3] = ['Windows 8', 'desktop', 'NT', '2.88']
noperatingsystems[4] = ['Windows 8.1', 'desktop', 'NT', '11.15']
noperatingsystems[5] = ['Windows 10', 'desktop', 'NT', '9']
noperatingsystems[6] = ['Windows Vista', 'desktop', 'NT', '0']
noperatingsystems[7] = ['Mac OS X 11', 'desktop', 'Unix', '2.66']
noperatingsystems[8] = ['Mac OS X 10', 'desktop', 'Unix', '2.45']
noperatingsystems[9] = ['Linux Mint', 'desktop', 'Linux', '0']
noperatingsystems[10] = ['Linux Debian', 'desktop', 'Linux', '0']
noperatingsystems[11] = ['Android', 'mobile', 'Linux', '48.12']
noperatingsystems[12] = ['iOS', 'mobile', 'Unix', '34.71']

print('\nOPERATING SYSTEMS LIST')
for item in nlanguages:
    print(item)

######################################################
## DICTIONARY
##  MAPPING OBJECT INDEXING VALUES BY KEYS
######################################################

'''DEFINING'''
dlanguages = {}
ddatabases = {}
doperatingsystems = {}

'''POPULATING'''
dlanguages = {'Languages': ['Uses', 'Ranking'],
              'C++': ['computing', '99.6'],
              'C': ['computing', '99.9'],
              'Java': ['application', '100'],
              'C#': ['application', '91.8'],
              'Python': ['application', '95.8'],
              'PHP': ['web', '84.5'],
              'Perl': ['web', '66.9'],
              'R': ['computing', '84.7'],
              'Ruby': ['web', '75.3'],
              'VB.NET': ['application', '63.4'],
              'Javascript': ['web', '83'],
              'Matlab': ['computing', '72.4']}

print('\nLANGUAGES DICTIONARY')
for k, v in dlanguages.items():
    print('KEY: '+k)
    print(v)
    
ddatabases.update({'Databases': ['Type', 'Size', 'Ranking']})
ddatabases.update({'Oracle': ['Proprietary', 'Server', '1497.55']})
ddatabases.update({'SQL Server': ['Proprietary', 'Server', '1123.16']})
ddatabases.update({'PostgreSQL': ['Open-Source', 'Server', '280.09']})
ddatabases.update({'MySQL': ['Open-Source', 'Server', '1298.54']})
ddatabases.update({'DB2': ['Proprietary', 'Server', '196.13']})
ddatabases.update({'SQLite': ['Open-Source', 'File', '100.85']})
ddatabases.update({'MS Access': ['Proprietary', 'File', '140.21']})
ddatabases.update({'SAP Sybase': ['Proprietary', 'Server', '81.47']})
ddatabases.update({'Teradata': ['Proprietary', 'Server', '75.72']})
ddatabases.update({'MongoDB': ['Open-Source', 'Server', '301.39']})

print('\nDATABASES DICTIONARY')
for k, v in ddatabases.items():
    print('KEY: '+k)
    print(v)

doperatingsystems['Operating Systems'] = ['Type', 'Kernel', 'Market Share']
doperatingsystems['Windows 7 '] = ['desktop', 'NT', '56.11']
doperatingsystems['Windows XP'] = ['desktop', 'NT', '10.59']
doperatingsystems['Windows 8'] = ['desktop', 'NT', '2.88']
doperatingsystems['Windows 8.1'] = ['desktop', 'NT', '11.15']
doperatingsystems['Windows 10'] = ['desktop', 'NT', '9']
doperatingsystems['Windows Vista'] = ['desktop', 'NT', '0']
doperatingsystems['Mac OS X 11'] = ['desktop', 'Unix', '2.66']
doperatingsystems['Mac OS X 10'] = ['desktop', 'Unix', '2.45']
doperatingsystems['Linux Mint'] = ['desktop', 'Linux', '0']
doperatingsystems['Linux Debian'] = ['desktop', 'Linux', '0']
doperatingsystems['Android'] = ['mobile', 'Linux', '48.12']
doperatingsystems['iOS'] = ['mobile', 'Unix', '34.71']

print('\nOPERATING SYSTEMS DICTIONARY')
for k, v in doperatingsystems.items():
    print('KEY: '+k)
    print(v)


######################################################
## TUPLIE
##  IMMUTABLE CONTAINER OF OBJECTS MAPPED TO VALUES
######################################################

'''POPULATING (SIMPLE)'''
tlanguages = ('C++', 'C', 'Java', 'C#',
              'Python', 'PHP', 'Perl',
              'R', 'Ruby', 'VB.NET', 'Javascript', 'Matlab')

'''POPULATING (NESTED)'''
tdatabases = (('Databases', 'Type', 'Size', 'Ranking'),
              ('Oracle', 'Proprietary', 'Server', '1497.55'),
              ('SQL Server', 'Proprietary', 'Server', '1123.16'),
              ('PostgreSQL', 'Open-Source', 'Server', '280.09'),
              ('MySQL', 'Open-Source', 'Server', '1298.54'),
              ('DB2', 'Proprietary', 'Server', '196.13'),
              ('SQLite', 'Open-Source', 'File', '100.85'),
              ('MS Access', 'Proprietary', 'File', '140.21'),
              ('SAP Sybase','Proprietary', 'Server', '81.47'),
              ('Teradata', 'Proprietary', 'Server', '75.72'),
              ('MongoDB', 'Open-Source', 'Server', '301.39'))

toperatingsystems= {'Windows 7 ': ('desktop', 'NT', '56.11'),
                     'Windows XP': ('desktop', 'NT', '10.59'),
                     'Windows 8': ('desktop', 'NT', '2.88'),
                     'Windows 8.1': ('desktop', 'NT', '11.15'),
                     'Windows 10': ('desktop', 'NT', '9'),
                     'Windows Vista': ('desktop', 'NT', '0'),
                     'Mac OS X 11': ('desktop', 'Unix', '2.66'),
                     'Mac OS X 10': ('desktop', 'Unix', '2.45'),
                     'Linux Mint': ('desktop', 'Linux', '0'),
                     'Linux Debian': ('desktop', 'Linux', '0'),
                     'Android': ('mobile', 'Linux', '48.12'),
                     'iOS': ('mobile', 'Unix', '34.71')}


######################################################
## SET
##  UNORDERED COLLECTION OF UNIQUE ITEMS
######################################################

stlanguages = set(slanguages)
print("\nLANGUAGES SET")
print(stlanguages)

stdatabases = set(ddatabases)
print("\nDATABASES SET")
print(stdatabases)

stoperatingsystems = set(toperatingsystems)
print("\nOPERATING SYSTEMS SET")
print(stoperatingsystems)


############################################################
## MATRIX AND ARRAY (NUMPY MODULE)
##  TWO-DIMENSIONAL/N-DIMENSIONAL ROW BY COLUMN STRUCTURES
############################################################

import numpy as np

mxlanguages = np.matrix([['Languages', 'Uses', 'Ranking'],
                         ['C++', 'computing', '99.6'],
                         ['C', 'computing', '99.9'],
                         ['Java', 'application', '100'],
                         ['C#', 'application', '91.8'],
                         ['Python', 'application', '95.8'],
                         ['PHP', 'web', '84.5'],
                         ['Perl', 'web', '66.9'],
                         ['R', 'computing', '84.7'],
                         ['Ruby', 'web', '75.3'],
                         ['VB.NET', 'application', '63.4'],
                         ['Javascript', 'web', '83'],
                         ['Matlab', 'computing', '72.4']], dtype='str')
print('\nLANGUAGES NUMPY MATRIX')
print(mxlanguages)

mxdatabases = np.matrix(ndatabases, dtype='str')
print('\nDATABASES NUMPY MATRIX')
print(mxdatabases)
      
arroperatingsystems = np.array(noperatingsystems, dtype='str')
print('\nOPERATING SYSTEMS NUMPY ARRAY')
print(arroperatingsystems)

############################################################
##  BASIC OPERATIONS
############################################################

## SORT
slanguages.sort()

def getKey(item):
    num = 99999999 if item[3] == 'Ranking' else float(item[3])
    return num
ndatabases.sort(key=getKey, reverse=True)

## FILTER
soperatingsystems = [x if 'Windows' in x else '' for x in soperatingsystems]

noperatingsystems = [noperatingsystems[i] if 'Windows' in noperatingsystems[i][0] \
                                          else ['']*4 for i in range(len(noperatingsystems))]
noperatingsystems = list(filter(lambda x: x != ['']*4, noperatingsystems))

## AGGREGATE
avgrank = 0
for i in range(1,len(mxlanguages)):    
    avgrank += np.sum(float(mxlanguages[i,2]))

print("AVERAGE LANGUAGE RANK: {}".format(round(avgrank/12),3))


desktopavgmktshare = mobileavgmktshare = 0
desktopcount = mobilecount = 0
for os in toperatingsystems:
    
    if toperatingsystems.get(os)[0] == 'desktop' and toperatingsystems.get(os)[2] != 'Ranking':
        desktopavgmktshare = desktopavgmktshare + round(float(toperatingsystems.get(os)[2]),3)
        desktopcount += 1
        
    if toperatingsystems.get(os)[0] == 'mobile' and toperatingsystems.get(os)[2] != 'Ranking':
        mobileavgmktshare = mobileavgmktshare + round(float(toperatingsystems.get(os)[2]),3)
        mobilecount += 1

print("\nDESKTOP AVG. MARKET SHARE: {}".format(desktopavgmktshare/desktopcount))
print("\nMOBILE AVG. MARKET SHARE: {}".format(mobileavgmktshare/mobilecount))

## MERGE
complist = [nlanguages, ndatabases, noperatingsystems]

compdict = {'langauges': {k:v for (k,v) in dlanguages.items() if not 'Languages' in k},
            'databases': {k:v for (k,v) in ddatabases.items() if not 'Databases' in k},
            'operatingsystems': {k:v for (k,v) in doperatingsystems.items() if not 'Operating Systems' in k}}

comparray = np.array([np.matrix(nlanguages, dtype='str'),
                      np.matrix(ndatabases, dtype='str'),
                      np.matrix(noperatingsystems, dtype='str')])
    

############################################################
## DATA FRAME (PANDAS MODULE)
##  TWO-DIMENSIONAL DATASET STRUCTURE
############################################################

import os
import pandas as pd

cd = os.path.dirname(os.path.abspath(__file__))

langdf = pd.DataFrame(nlanguages)
langdf.columns = nlanguages[0]
langdf = langdf[1:]
      
print('\nLANGUAGES PANDAS DATA FRAME')
print(langdf)
langdf.to_csv(os.path.join(cd, 'Data', 'Languages_PY.csv'), index=False)

dbdf = pd.DataFrame(ndatabases)
dbdf.columns = ndatabases[0]
dbdf = dbdf[1:]

print('\nDATABASES PANDAS DATA FRAME')
print(dbdf)
dbdf.to_csv(os.path.join(cd, 'Data', 'Databases_PY.csv'), index=False)

osdf = pd.DataFrame(toperatingsystems)
osdf = osdf.transpose()
osdf = osdf.reset_index()
osdf.columns = ['OS', 'Type', 'Kernel', 'Market Share']

print('\nOPERATING SYSTEMS PANDAS DATA FRAME')
print(osdf)
osdf.to_csv(os.path.join(cd, 'Data', 'OperatingSystems_PY.csv'), index=False)

print('\nSuccessfully outputted dataframes to csv!')
