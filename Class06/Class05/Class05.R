#Class 05 R graphics intro

#My first boxplot
x <- rnorm(1000,0)
boxplot(x)

summary(x)
hist(x)

boxplot(x, horizontal = TRUE)

#Section2A

w <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)
plot (w$Age, w$Weight, type = "b", pch=15,cex=1.5, lwd=2, ylim=c(2,10), xlab="Age (months)", ylab="Weight (kg)", main="Weight Chart")

#Section2B
fc <- read.table("bimm143_05_rstats/feature_counts.txt", header = TRUE, sep = ",")
barplot (fc$Count)

barplot (fc$Count, names.arg=fc$Feature, horiz=TRUE, ylab=" ", main="Number of features in Mouse", las=1, xlim=c(0,8000))


#Section3A
mfc <- read.delim("bimm143_05_rstats/male_female_counts.txt", header=TRUE)
barplot(mfc$Count, names.arg = mfc$Sample, col = rainbow(nrow(mfc)))


