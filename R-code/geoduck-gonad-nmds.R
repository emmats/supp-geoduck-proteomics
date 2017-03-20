#check technical replicates to see if they can be combined
#load libraries for biostats and vegan
#biostats needs to be loaded as a source file, not through the package installer: go to the file menu, select "source file" and select biostats.R
setwd('/Users/Emma/Documents/genome_sciences_postdoc/geoduck/transcriptome')

gd.reps<-read.csv('Detected geoduck proteins.csv', header=T, row.names=1)

#calculate coefficient of variation within vs between groups
library(raster)
#cv across tech reps for each bio rep
EF3<-cbind(gd.reps[1], gd.reps[10], gd.reps[19])
EF4<-cbind(gd.reps[2], gd.reps[11], gd.reps[20])
EF8<-cbind(gd.reps[3], gd.reps[12], gd.reps[21])
MF34<-cbind(gd.reps[4], gd.reps[13], gd.reps[22])
MF35<-cbind(gd.reps[5], gd.reps[14], gd.reps[23])
MF38<-cbind(gd.reps[6], gd.reps[15], gd.reps[24])
LF51<-cbind(gd.reps[7], gd.reps[16], gd.reps[25])
LF69<-cbind(gd.reps[8], gd.reps[17], gd.reps[26])
LF70<-cbind(gd.reps[9], gd.reps[18], gd.reps[27])

EM2<-cbind(gd.reps[28], gd.reps[37], gd.reps[46])
EM7<-cbind(gd.reps[29], gd.reps[38], gd.reps[47])
EM9<-cbind(gd.reps[30], gd.reps[39], gd.reps[48])
MM41<-cbind(gd.reps[31], gd.reps[40], gd.reps[49])
MM42<-cbind(gd.reps[32], gd.reps[41], gd.reps[50])
MM46<-cbind(gd.reps[33], gd.reps[42], gd.reps[51])
LM65<-cbind(gd.reps[34], gd.reps[43], gd.reps[52])
LM67<-cbind(gd.reps[35], gd.reps[44], gd.reps[53])
LM68<-cbind(gd.reps[36], gd.reps[45], gd.reps[54])

EF3.cv<-apply(EF3, 1, cv)
EF4.cv<-apply(EF4, 1, cv)
EF8.cv<-apply(EF8, 1, cv)
MF34.cv<-apply(MF34, 1, cv)
MF35.cv<-apply(MF35, 1, cv)
MF38.cv<-apply(MF38, 1, cv)
LF51.cv<-apply(LF51, 1, cv)
LF69.cv<-apply(LF69, 1, cv)
LF70.cv<-apply(LF70, 1, cv)

EM2.cv<-apply(EM2, 1, cv)
EM7.cv<-apply(EM7, 1, cv)
EM9.cv<-apply(EM9, 1, cv)
MM41.cv<-apply(MM41, 1, cv)
MM42.cv<-apply(MM42, 1, cv)
MM46.cv<-apply(MM46, 1, cv)
LM65.cv<-apply(LM65, 1, cv)
LM67.cv<-apply(LM67, 1, cv)
LM68.cv<-apply(LM68, 1, cv)

geoduck.cv<-cbind(EF3.cv, EF4.cv, EF8.cv, MF34.cv, MF35.cv, MF38.cv, LF51.cv, LF69.cv, LF70.cv, EM2.cv, EM7.cv, EM9.cv, MM41.cv, MM42.cv, MM46.cv, LM65.cv, LM67.cv, LM68.cv)
boxplot(geoduck.cv, outline=T, names=c('EF3', 'EF4', 'EF8', 'MF34', 'MF35', 'MF38', 'LF51', 'LF69', 'LF70', 'EM2', 'EM7', 'EM9', 'MM41', 'MM42', 'MM46', 'LM65', 'LM67', 'LM68'), xlab='Geoduck Sample', ylab='Coefficient of Variation', las=2, ylim=c(0,300))
#cv across bio reps for each sex-stage
EF<-cbind(EF3, EF4, EF8)
MF<-cbind(MF34, MF35, MF38)
LF<-cbind(LF51, LF69, LF70)
EM<-cbind(EM2, EM7, EM9)
MM<-cbind(MM41, MM42, MM46)
LM<-cbind(LM65, LM67, LM68)
EF.cv<-apply(EF, 1, cv)
MF.cv<-apply(MF, 1, cv)
LF.cv<-apply(LF, 1, cv)
EM.cv<-apply(EM, 1, cv)
MM.cv<-apply(MM, 1, cv)
LM.cv<-apply(LM, 1, cv)
biorep.cv<-cbind(EF.cv, MF.cv, LF.cv, EM.cv, MM.cv, LM.cv)
boxplot(biorep.cv, outline=T, names=c('EF', 'MF', 'LF', 'EM', 'MM', 'LM'), xlab='Geoduck Sample', ylab='Coefficient of Variation', las=2)

#NMDS of all bio and tech reps as individual points
#log(X+1) transform data
reps.t<-t(gd.reps)
reps.tra<-(reps.t+1)
reps.tra<-data.trans(reps.tra, method='log', plot=F)

library(RColorBrewer)
brewer.pal(3,'Blues')
"#DEEBF7" "#9ECAE1" "#3182BD"
brewer.pal(3,'Oranges')
"#FEE6CE" "#FDAE6B" "#E6550D"

reps.nmds<-metaMDS(reps.tra, distance='bray', k=2, trymax=100, autotransform=F)
fig.reps<-ordiplot(reps.nmds, choices=c(1,2), type='none', display='sites', xlab='Axis 1', ylab='Axis 2', cex=0.5)
points(fig.reps, 'sites', col=c(rep('#DEEBF7',3), rep('#9ECAE1',3), rep('#3182BD',3), rep('#DEEBF7',3), rep('#9ECAE1',3), rep('#3182BD',3),rep('#DEEBF7',3), rep('#9ECAE1',3), rep('#3182BD',3), rep('#FEE6CE',3),rep('#FDAE6B',3),rep('#E6550D',3), rep('#FEE6CE',3),rep('#FDAE6B',3),rep('#E6550D',3), rep('#FEE6CE',3),rep('#FDAE6B',3),rep('#E6550D',3)), pch=c(rep(19,3), rep(15,3), rep(17,3), rep(19,3), rep(15,3), rep(17,3),rep(19,3), rep(15,3), rep(17,3), rep(19,3), rep(15,3), rep(17,3), rep(19,3), rep(15,3), rep(17,3)))
legend(0.05, 0.15, legend=c('Male', "Female", "Early", "Mid", "Late"), pch=c(19,19,19,15,17), col=c('orange', 'blue', rep('black',3)))
#male = orange, female = blue
#early = circles, mid = square, late = triangles

ordiplot(reps.nmds, choices=c(1,2), type='text', display='sites', xlab='Axis 1', ylab='Axis 2', cex=0.5)

#technical replicate SpC averaged to calculate NSAF for each biological replicate

#NMDS of tech reps collapsed into individual bio reps (1 point per clam)
gd.nsaf<-read.csv('geoduck NSAF.csv', header=T, row.names=1)

nsaf.t<-t(gd.nsaf)
nsaf.tra<-(nsaf.t+1)
nsaf.tra<-data.trans(nsaf.tra, method='log', plot=F)

nsaf.nmds<-metaMDS(nsaf.tra, distance='bray', k=2, trymax=100, autotransform=F)
fig.nsaf<-ordiplot(nsaf.nmds, choices=c(1,2), type='none', display='sites', xlab='Axis 1', ylab='Axis 2', cex=0.5)
points(fig.nsaf, 'sites', col=c(rep('#DEEBF7',3), rep('#9ECAE1',3), rep('#3182BD',3), rep('#FEE6CE',3),rep('#FDAE6B',3),rep('#E6550D',3)), pch=c(rep(19,3), rep(15,3), rep(17,3), rep(19,3), rep(15,3), rep(17,3)), cex=1.5)
legend(-4e-5, 4e-5, legend=c('Male', "Female", "Early Stage", "Mid Stage", "Late Stage"), pch=c(19,19,19,15,17), col=c('#E6550D', '#3182BD', rep('black',3)))

#eigenvector
dda.eigen<-envfit(nsaf.nmds$points, nsaf.t, perm=1000)

#ANOSIM based on sex
ducksex<-c(rep('Female',9), rep("Male",9))
nsaf.row<-data.stand(nsaf.tra,method='total', margin='row', plot=F)
nsaf.d<-vegdist(nsaf.row, 'bray')
sex.anos<-anosim(nsaf.d, grouping=ducksex)
summary(sex.anos)

#ANOSIM statistic R: 0.4122 
 #     Significance: 0.002 

#Based on  999  permutations

#Upper quantiles of permutations (null model):
 #  90%    95%  97.5%    99% 
#0.0979 0.1435 0.1730 0.2570 

#Dissimilarity ranks between and within classes:
 #       0%   25%  50%    75% 100%  N
#Between 11 65.00 94.0 121.00  153 81
#Female   1 28.75 54.5 101.25  150 36
#Male     3 18.50 43.5  74.50  147 36

#ANOSIM based on stage
duckstage<-c(rep('Early', 3), rep('Mid',3), rep('Late',3), rep('Early', 3), rep('Mid',3), rep('Late',3))
stage.anos<-anosim(nsaf.d, grouping=duckstage)
summary(stage.anos)

#ANOSIM statistic R: 0.3025 
#      Significance: 0.004 

#Based on  999  permutations

#Upper quantiles of permutations (null model):
 # 90%   95% 97.5%   99% 
#0.116 0.155 0.196 0.258 

#Dissimilarity ranks between and within classes:
 #       0%   25%  50%    75% 100%   N
#Between  1 43.75 89.5 124.25  153 108
#Early    6 25.50 46.0  87.50  121  15
#Late     2 37.00 66.0  93.00  134  15
#Mid      7 32.50 69.0  81.00  117  15

#figure out which subset of data to use for heatmap
nsaf.log<-(gd.nsaf+1)
nsaf.log<-data.trans(gd.nsaf, method='log', plot=F)
pheatmap(nsaf.log, cluster_rows=T, cluster_cols=T, clustering_distance_rows='euclidean', clustering_distance_cols='euclidean', clustering_method='average', show_rownames=F)
