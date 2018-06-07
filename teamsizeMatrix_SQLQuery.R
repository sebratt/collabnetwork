# Regression Data: Number of patents per year: with patent type. and numofauthors.
# By: Sarah Bratt | 06022018
getwd()
setwd("/data/rstudio4/disambiguation")

library(dbConnect)
library(splitstackshape)
library(RMySQL)

con<-dbConnect(MySQL(),user="REMOVED", password="PASSWORD REMOVED FOR SECURITY",host="REMOVED FOR SECURITY", dbname="test")
conn <-dbConnect(MySQL(),user="REMOVED", password="PASSWORD REMOVED FOR SECURITY",host="REMOVED FOR SECURITY", dbname="genbank")

# Get Patent Unique Numbers for patent per year analysis
dbListTables(con)
system.time( par_pat <- dbGetQuery(con,"SELECT * FROM test.par_PatentReference LIMIT 10;"))
View(par_pat)

# Check for consistency: How many rows are in the original (unparsed) table?

unpars_pat_COUNT <- dbGetQuery(conn,"SELECT COUNT(*) FROM genbank.ReferencePatent;") # 26003035
par_pat_COUNT <- dbGetQuery(con,"SELECT COUNT(*) FROM test.par_PatentReference;") # 26003035
# Same, great! 26 million rows. 

# And there are 168,446 unique patents. 26/.168 = about 156 subs per patent (SUPER crude
# measurement, because its an average. Probably varies widely. And we are assuming every row represents a 
# data submission, not a version update or an anomaly. Because data subs are the most "atomic" unit of 
# the Genbank database.)

# The fields we want per year are patentNumber, patenttype, patentYear, numofAuthors. 
colnames(par_pat)

# By year, let's go. 
nineteen84_orLess <- dbGetQuery(con,"SELECT * FROM test.par_PatentReference WHERE patentYear < 1984 GROUP BY patentNumber;") 

# The minimum is 1979. And 814 rows from 1984 or less. and 185 patents (unique)


pat_1979 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                                FROM test.par_PatentReference WHERE patentYear = 1979 GROUP BY patentNumber;") 
pat_1980 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                                FROM test.par_PatentReference WHERE patentYear = 1980 GROUP BY patentNumber;")
pat_1981 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                                FROM test.par_PatentReference WHERE patentYear = 1981 GROUP BY patentNumber;")

pat_1982 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1982 GROUP BY patentNumber;")

pat_1983 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1983 GROUP BY patentNumber;")


pat_1984 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1984 GROUP BY patentNumber;")

pat_1985 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1985 GROUP BY patentNumber;")

pat_1986 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1986 GROUP BY patentNumber;")

pat_1987 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                                FROM test.par_PatentReference WHERE patentYear = 1987 GROUP BY patentNumber;")

pat_1988 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                                FROM test.par_PatentReference WHERE patentYear = 1988 GROUP BY patentNumber;")

pat_1989 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                                FROM test.par_PatentReference WHERE patentYear = 1989 GROUP BY patentNumber;")

pat_1990 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1990 GROUP BY patentNumber;")


pat_1991 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1991 GROUP BY patentNumber;")
pat_1992 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1992 GROUP BY patentNumber;")
pat_1993 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1993 GROUP BY patentNumber;")

pat_1994 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1994 GROUP BY patentNumber;")

pat_1995 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1995 GROUP BY patentNumber;")

pat_1996 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1996 GROUP BY patentNumber;")

pat_1997 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1997 GROUP BY patentNumber;")

pat_1998 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1998 GROUP BY patentNumber;")

pat_1999 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 1999 GROUP BY patentNumber;")

pat_2000 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2000 GROUP BY patentNumber;")


pat_2001 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2001 GROUP BY patentNumber;")

pat_2002 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2002 GROUP BY patentNumber;")

pat_2003 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2003 GROUP BY patentNumber;")

pat_2004 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2004 GROUP BY patentNumber;")

pat_2005 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2005 GROUP BY patentNumber;")

pat_2006 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2006 GROUP BY patentNumber;")

pat_2007 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2007 GROUP BY patentNumber;")


pat_2008 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2008 GROUP BY patentNumber;")

pat_2009 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2009 GROUP BY patentNumber;")

pat_2010 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2010 GROUP BY patentNumber;")

pat_2011 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2011 GROUP BY patentNumber;")

pat_2012 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2012 GROUP BY patentNumber;")

pat_2013 <- dbGetQuery(con,"SELECT patentNumber, patenttype, patentYear, numofAuthors 
                       FROM test.par_PatentReference WHERE patentYear = 2013 GROUP BY patentNumber;")


# Took 5 minutes to write the above, but lapply + anonymous function will be helpful. 

# Compute authors (team size), max, min, median, and quartiles for every year. 

bind_pats <- rbind(pat_1979, pat_1980, pat_1981, pat_1982, pat_1983, pat_1984, pat_1985,
                   pat_1986, pat_1987, pat_1988, pat_1989, pat_1990, pat_1991, pat_1992,
                   pat_1993, pat_1994, pat_1995, pat_1996, pat_1997, pat_1998, pat_1999,
                   pat_2000, pat_2001, pat_2002, pat_2003, pat_2004, pat_2005, pat_2006,
                   pat_2007, pat_2008, pat_2009, pat_2010, pat_2011, pat_2012, pat_2013)
                   
                   
library(psych)

# v <- describeBy(bind_pats, "patentYear")
teamsize.mat <- describeBy(bind_pats, "patentYear", mat=TRUE)


# Cleaning
head(teamsize.mat) 
teamsize.mat$item <- NULL
colnames(teamsize.mat)[1] <- "year"
teamsize.mat["vars"] <- NULL
colnames(teamsize.mat)[2] <- "numofPatents"
write.csv(teamsize.mat, "pat_teamsize.csv")

################ Screwing around with loops and anon functions #########################




for (i in files_c) {
  x["median_teamsize"] <- median(x["numofAuthors"])
}


c <- summary(pat_1979$numofAuthors)
typeof(c)
v <- data.frame(c)
v <- as.data.frame(v)


cols <- c("min_teamsize", "1stQ_teamsize", "median_teamsize", "3rdQ_teamsize", "max_teamsize")

new_1979[cols] <- summary(pat_1979$numofAuthors)


########### lapplying ######################################


team_fn <- function (x) 
{
  x$median_teamsize <- median(x$numofAuthors)
  x$max_teamsize <- max(x$numofAuthors)
  x$min_teamsize <- min(x$numofAuthors)
  x$quartile_teamsize <- summary(x$numberofAuthors) 
  return(x)
}


files <- lapply(1979:1980, function(x){paste0("pat_", x)})
result <- lapply(files, team_fn)

View(files)
files
