data = read.csv('file:///Users/igorpietrzak/Downloads/R2019.csv')
table = table(data$How.would.you.describe.your.programming.skills.,
              data$How.much.have.you.enjoyed.using.R.so.far., useNA = 'always')
View(table)




