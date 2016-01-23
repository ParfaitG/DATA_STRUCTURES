
#####################################################
## ATOMIC VECTORS (ELEMENTS OF SAME DATA TYPE)
#####################################################

# INITIALIZING
slanguages <- c()
sdatabases <- c()
soperatingsystems <- vector("character", length=12)

# POPULATING (SIMPLE)
slanguages <- c('C++', 'C', 'Java',
               'C#', 'Python', 'PHP',
               'Perl', 'R', 'Ruby',
               'VB.NET', 'Javascript', 'Matlab')

sdatabases <- c(sdatabases, 'Oracle')
sdatabases <- c(sdatabases, 'SQL Server')
sdatabases <- c(sdatabases, 'PostgreSQL')
sdatabases <- c(sdatabases, 'MySQL')
sdatabases <- c(sdatabases, 'DB2')
sdatabases <- c(sdatabases, 'SQLite')
sdatabases <- c(sdatabases, 'MS Access')
sdatabases <- c(sdatabases, 'SAP Sybase')
sdatabases <- c(sdatabases, 'Teradata')
sdatabases <- c(sdatabases, 'MongoDB')

soperatingsystems[1] <- 'Windows 7'
soperatingsystems[2] <- 'Windows XP'
soperatingsystems[3] <- 'Windows 8'
soperatingsystems[4] <- 'Windows 8.1'
soperatingsystems[5] <- 'Windows 10'
soperatingsystems[6] <- 'Windows Vista'
soperatingsystems[7] <- 'Mac OS X 11'
soperatingsystems[8] <- 'Mac OS X 10'
soperatingsystems[9] <- 'Linux Mint'
soperatingsystems[10] <- 'Linux Debian'
soperatingsystems[11] <- 'Android'
soperatingsystems[12] <- 'iOS'


#####################################################
## LISTS (ELEMENTS OF MIXED DATA TYPES)
#####################################################

nlanguages <- list(
  list('C++', 'computing', 99.6),
  list('C', 'computing', 99.9),
  list('Java', 'application', 100),
  list('C#', 'application', 91.8),
  list('Python', 'application', 95.8),
  list('PHP', 'web', 84.5),
  list('Perl', 'web', 66.9),
  list('R', 'computing', 84.7),
  list('Ruby', 'web', 75.3),
  list('VB.NET', 'application', 63.4),
  list('Javascript', 'web', 83),
  list('Matlab', 'computing', 72.4)
)
writeLines('\nLANGUAGES LIST')
print(nlanguages)

ndatabases <- list(
  databases = c('Oracle', 'SQL Server', 'PostgreSQL', 'MySQL', 'DB2', 'SQLite', 'MS Access', 'SAP Sybase', 'Teradata', 'MongoDB'),
  type = c('Proprietary', 'Proprietary', 'Open-Source', 'Open-Source', 'Proprietary', 'Open-Source', 'Proprietary', 'Proprietary', 'Proprietary', 'Open-Source'),
  size = c('Server', 'Server', 'Server', 'Server', 'Server', 'File', 'File', 'Server', 'Server', 'Server'),  
  ranking = c(1497.55, 1123.16, 280.09, 1298.54, 196.13, 100.85, 140.21, 81.47, 75.72, 301.39)
)
writeLines('\nDATABASES LIST')
print(ndatabases)

noperatingsystems <- rep( list(list()), 12 ) 
noperatingsystems[[1]] <-  list('Windows 7', 'desktop', 'NT', 56.11)
noperatingsystems[[2]] <- list('Windows XP', 'desktop', 'NT', 10.59)
noperatingsystems[[3]] <- list('Windows 8', 'desktop', 'NT', 2.88)
noperatingsystems[[4]] <- list('Windows 8.1', 'desktop', 'NT', 11.15)
noperatingsystems[[5]] <- list('Windows 10', 'desktop', 'NT', 9)
noperatingsystems[[6]] <- list('Windows Vista', 'desktop', 'NT', 0)
noperatingsystems[[7]] <- list('Mac OS X 11', 'desktop', 'Unix', 2.66)
noperatingsystems[[8]] <- list('Mac OS X 10', 'desktop', 'Unix', 2.45)
noperatingsystems[[9]] <- list('Linux Mint', 'desktop', 'Linux', 0)
noperatingsystems[[10]] <- list('Linux Debian', 'desktop', 'Linux', 0)
noperatingsystems[[11]] <- list('Android', 'mobile', 'Linux', 48.12)
noperatingsystems[[12]] <- list('iOS', 'mobile', 'Unix', 34.71)

writeLines('\nOPERATING SYSTEMS LIST')
print(noperatingsystems)


#####################################################
## MATRICES 
##   (SPECIAL CASE OF ARRAYS WITH ONLY 
##    TWO DIMENSIONS: ROW BY COLUMN)
#####################################################
langmatrix <- matrix(unlist(nlanguages), ncol=3, byrow=TRUE)
writeLines('\nLANGUAGES MATRIX')
print(langmatrix)

dbmatrix <- matrix(unlist(ndatabases), nrow=10, ncol=4)
writeLines('\nDATABASES MATRIX')
print(dbmatrix)

osmatrix <- matrix(unlist(noperatingsystems), ncol=4, byrow=TRUE)
writeLines('\nOPERATING SYSTEMS MATRIX')
print(osmatrix)

#####################################################
## ARRAY (GENERALIZED NESTED STRUCTURE
##        OF MULTIPLE DIMENSIONS)
#####################################################

dblist <- lapply(1:12, function(x) list(ndatabases$databases[x],
                                        ndatabases$type[x],
                                        ndatabases$size[x],
                                        ndatabases$ranking[x]))

comparray <- array(list(nlanguages, dblist, noperatingsystems),
                   dim = c(12, 4, 3),
                   dimnames = c('languages', 'databases', 'operatingsystems')
                   )


#####################################################
## BASIC OPERATIONS
#####################################################

## SORT
slanguages <- sort(slanguages, method="shell")

sorteddatabases <- list(
      databases = ndatabases$databases[c(order(ndatabases$databases))],
      type = ndatabases$type[c(order(ndatabases$databases))],
      order = ndatabases$size[c(order(ndatabases$databases))],
      ranking = ndatabases$ranking[c(order(ndatabases$databases))]
)

## FILTER
filteredoperatingsystems <- noperatingsystems[grep("Windows", noperatingsystems)]

## MERGE
complist <- c(nlanguages,
              ndatabases,
              noperatingsystems)


## AGGREGATE
avgdesktopmktshare <- mean(unlist(lapply(1:12, function(x) {
                                           if (noperatingsystems[[x]][[2]] == "desktop") {
                                               noperatingsystems[[x]][[4]]
                                      }
                              })
                    )) 
writeLines(paste0("\nAverage Desktop Market Share: ", avgdesktopmktshare))

avgmobilemktshare <- mean(unlist(lapply(1:12, function(x) {
                                            if (noperatingsystems[[x]][[2]] == "mobile") {
                                                noperatingsystems[[x]][[4]]
                                      }
                              })
                        )) 
writeLines(paste0("\nAverage Mobile Market Share: ", avgmobilemktshare))

#####################################################
## DATA FRAMES
##   (EQUAL LENGTH ATOMIC VECTORS)
#####################################################

langdf <- data.frame(languages = unlist(lapply(1:12, function(x) { 
                                                      nlanguages[[x]][[1]]
                                              })
                                       ),
                     uses = unlist(lapply(1:12, function(x) { 
                                                  nlanguages[[x]][[2]]
                                          })
                     ),
                     ranking = unlist(lapply(1:12, function(x) { 
                                                    nlanguages[[x]][[3]]
                                            })
                     ), stringsAsFactors = FALSE
          )

dbdf <- data.frame(databases = ndatabases$databases,
                   type = ndatabases$type,
                   size = ndatabases$size,
                   ranking = ndatabases$ranking, stringsAsFactors = FALSE)


oslist <- do.call(rbind, lapply(1:12, function(x) noperatingsystems[[x]]))
osdf <- data.frame(operatingsystems = unlist(oslist[,1]),
                   type = unlist(oslist[,2]),
                   kernel = unlist(oslist[,3]),
                   marketsystem = unlist(oslist[,4]),
                   stringsAsFactors = FALSE)

## CSV OUTPUT
write.csv(langdf, "C:\\Path\\To\\Working\\Directory\\Data\\Languages_R.csv",
          row.names = FALSE)
write.csv(dbdf, "C:\\Path\\To\\Working\\Directory\\Data\\Databases_R.csv",
         row.names = FALSE)
write.table(osdf, "C:\\Path\\To\\Working\\Directory\\Data\\OperatingSystems_R.csv",
            sep = ",", row.names = FALSE, fileEncoding = 'UTF-8')

writeLines("\nSuccessfully outputted data frames to csv!")
