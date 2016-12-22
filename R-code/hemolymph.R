#annotate putative hemolymph proteins detected in DDA
setwd('~/Documents/genome_sciences_postdoc/geoduck/hemolymph')

hem.prot<-read.csv('Putative hemolymph proteins.csv', header=T)

setwd('~/Documents/genome_sciences_postdoc/geoduck/transcriptome/uniprot protein annotations')
annot<-read.csv('geoduck_blastp_uniprot2.csv', header=T)
names(annot)[names(annot)=='Query']<-'protein'

prot.name<-read.csv('uniprot protein names.csv', header=T)
names(prot.name)[names(prot.name)=='Entry.name']<-'Hit'

hem.annot<-merge(x=hem.prot, y=annot, by='protein', all.x=T)
hem.name<-merge(x=hem.annot, y=prot.name, by='Hit', all.x=T)

write.csv(hem.name, file='annotated putative hemolymph proteins.csv')


#SRM Skyline data
#read in file and subset by raw file number
sky.srm<-read.csv('Skyline output SRM hemolymph.csv', header=T, na.strings='#N/A')


EF18.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo2.raw'))
EF29.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo3.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo4.raw'))
EF30.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo5.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo6.raw'))
MF25.1<-rbind(subset(sky.srm, File.Name=='2016_September_20_geohemo7.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo8.raw'))
MF35.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo9.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo10.raw'))
LF51.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo13.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo14.raw'))
LF69.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo15.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo16.raw'))
LF70.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo17.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo18.raw'))
EM17.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo19.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo20.raw'))
EM20.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo21.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo22.raw'))
EM28.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo23.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo24.raw'))
MM42.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo25.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo26.raw'))
MM46.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo27.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo28.raw'))
LM65.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo29.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo30.raw'))
LM67.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo31.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo32.raw'))
LM68.1<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo33.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo34.raw'))
EF30.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geoheemo47.raw'), subset(sky.srm, File.Name=='2016_September_29_geoheemo48.raw'))
EF18.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geoheemo49.raw'), subset(sky.srm, File.Name=='2016_September_29_geoheemo50.raw'))
EF29.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geoheemo51.raw'), subset(sky.srm, File.Name=='2016_September_29_geoheemo52.raw'))
MF25.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo37.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo38.raw'))
MF35.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo39.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo40.raw'))
LF51.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo43.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo44.raw'))
LF69.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo45.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo46.raw'))
LF70.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo41.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo42.raw'))
EM17.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo65.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo66.raw'))
EM20.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo67.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo68.raw'))
EM28.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo63.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo64.raw'))
MM42.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo55.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo56.raw'))
MM46.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo53.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo254.raw'))
LM65.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo59.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo60.raw'))
LM67.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo61.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo62.raw'))
LM68.2<-rbind(subset(sky.srm, File.Name=='2016_September_29_geohemo57.raw'), subset(sky.srm, File.Name=='2016_September_29_geohemo58.raw'))

#subset transition ID and area
EF18.1.sub<-subset(EF18.1, select=c(Transition.ID, Area))
EF18.2.sub<-subset(EF18.2, select=c(Transition.ID, Area))
EF29.1.sub<-subset(EF29.1, select=c(Transition.ID, Area))
EF29.2.sub<-subset(EF29.2, select=c(Transition.ID, Area))
EF30.1.sub<-subset(EF30.1, select=c(Transition.ID, Area))
EF30.2.sub<-subset(EF30.2, select=c(Transition.ID, Area))
MF25.1.sub<-subset(MF25.1, select=c(Transition.ID, Area))
MF25.2.sub<-subset(MF25.2, select=c(Transition.ID, Area))
MF35.1.sub<-subset(MF35.1, select=c(Transition.ID, Area))
MF35.2.sub<-subset(MF35.2, select=c(Transition.ID, Area))
LF51.1.sub<-subset(LF51.1, select=c(Transition.ID, Area))
LF51.2.sub<-subset(LF51.2, select=c(Transition.ID, Area))
LF69.1.sub<-subset(LF69.1, select=c(Transition.ID, Area))
LF69.2.sub<-subset(LF69.2, select=c(Transition.ID, Area))
LF70.1.sub<-subset(LF70.1, select=c(Transition.ID, Area))
LF70.2.sub<-subset(LF70.2, select=c(Transition.ID, Area))
EM17.1.sub<-subset(EM17.1, select=c(Transition.ID, Area))
EM17.2.sub<-subset(EM17.2, select=c(Transition.ID, Area))
EM20.1.sub<-subset(EM20.1, select=c(Transition.ID, Area))
EM20.2.sub<-subset(EM20.2, select=c(Transition.ID, Area))
EM28.1.sub<-subset(EM28.1, select=c(Transition.ID, Area))
EM28.2.sub<-subset(EM28.2, select=c(Transition.ID, Area))
MM42.1.sub<-subset(MM42.1, select=c(Transition.ID, Area))
MM42.2.sub<-subset(MM42.2, select=c(Transition.ID, Area))
MM46.1.sub<-subset(MM46.1, select=c(Transition.ID, Area))
MM46.2.sub<-subset(MM46.2, select=c(Transition.ID, Area))
LM65.1.sub<-subset(LM65.1, select=c(Transition.ID, Area))
LM65.2.sub<-subset(LM65.2, select=c(Transition.ID, Area))
LM67.1.sub<-subset(LM67.1, select=c(Transition.ID, Area))
LM67.2.sub<-subset(LM67.2, select=c(Transition.ID, Area))
LM68.1.sub<-subset(LM68.1, select=c(Transition.ID, Area))
LM68.2.sub<-subset(LM68.2, select=c(Transition.ID, Area))

#rename area columns
names(EF18.1.sub)[names(EF18.1.sub)=='Area']<-'EF18.1'
names(EF18.2.sub)[names(EF18.2.sub)=='Area']<-'EF18.2'
names(EF29.1.sub)[names(EF29.1.sub)=='Area']<-'EF29.1'
names(EF29.2.sub)[names(EF29.2.sub)=='Area']<-'EF29.2'
names(EF30.1.sub)[names(EF30.1.sub)=='Area']<-'EF30.1'
names(EF30.2.sub)[names(EF30.2.sub)=='Area']<-'EF30.2'
names(MF25.1.sub)[names(MF25.1.sub)=='Area']<-'MF25.1'
names(MF25.2.sub)[names(MF25.2.sub)=='Area']<-'MF25.2'
names(MF35.1.sub)[names(MF35.1.sub)=='Area']<-'MF35.1'
names(MF35.2.sub)[names(MF35.2.sub)=='Area']<-'MF35.2'
names(LF51.1.sub)[names(LF51.1.sub)=='Area']<-'LF51.1'
names(LF51.2.sub)[names(LF51.2.sub)=='Area']<-'LF51.2'
names(LF69.1.sub)[names(LF69.1.sub)=='Area']<-'LF69.1'
names(LF69.2.sub)[names(LF69.2.sub)=='Area']<-'LF69.2'
names(LF70.1.sub)[names(LF70.1.sub)=='Area']<-'LF70.1'
names(LF70.2.sub)[names(LF70.2.sub)=='Area']<-'LF70.2'
names(EM17.1.sub)[names(EM17.1.sub)=='Area']<-'EM17.1'
names(EM17.2.sub)[names(EM17.2.sub)=='Area']<-'EM17.2'
names(EM20.1.sub)[names(EM20.1.sub)=='Area']<-'EM20.1'
names(EM20.2.sub)[names(EM20.2.sub)=='Area']<-'EM20.2'
names(EM28.1.sub)[names(EM28.1.sub)=='Area']<-'EM28.1'
names(EM28.2.sub)[names(EM28.2.sub)=='Area']<-'EM28.2'
names(MM42.1.sub)[names(MM42.1.sub)=='Area']<-'MM42.1'
names(MM42.2.sub)[names(MM42.2.sub)=='Area']<-'MM42.2'
names(MM46.1.sub)[names(MM46.1.sub)=='Area']<-'MM46.1'
names(MM46.2.sub)[names(MM46.2.sub)=='Area']<-'MM46.2'
names(LM65.1.sub)[names(LM65.1.sub)=='Area']<-'LM65.1'
names(LM65.2.sub)[names(LM65.2.sub)=='Area']<-'LM65.2'
names(LM67.1.sub)[names(LM67.1.sub)=='Area']<-'LM67.1'
names(LM67.2.sub)[names(LM67.2.sub)=='Area']<-'LM67.2'
names(LM68.1.sub)[names(LM68.1.sub)=='Area']<-'LM68.1'
names(LM68.2.sub)[names(LM68.2.sub)=='Area']<-'LM68.2'

#merge all columns together
transitionIDs<-subset(EF18.1, select=Transition.ID)
merge1<-merge(x=transitionIDs, y=EF18.1.sub, by='Transition.ID', all.x=T)
merge2<-merge(x=merge1, y=EF18.2.sub, by='Transition.ID', all.x=T)
merge3<-merge(x=merge2, y=EF29.1.sub, by='Transition.ID', all.x=T)
merge4<-merge(x=merge3, y=EF29.2.sub, by='Transition.ID', all.x=T)
merge5<-merge(x=merge4, y=EF30.1.sub, by='Transition.ID', all.x=T)
merge6<-merge(x=merge5, y=EF30.2.sub, by='Transition.ID', all.x=T)
merge7<-merge(x=merge6, y=MF25.1.sub, by='Transition.ID', all.x=T)
merge8<-merge(x=merge7, y=MF25.2.sub, by='Transition.ID', all.x=T)
merge9<-merge(x=merge8, y=MF35.1.sub, by='Transition.ID', all.x=T)
merge10<-merge(x=merge9, y=MF35.2.sub, by='Transition.ID', all.x=T)
merge11<-merge(x=merge10, y=LF51.1.sub, by='Transition.ID', all.x=T)
merge12<-merge(x=merge11, y=LF51.2.sub, by='Transition.ID', all.x=T)
merge13<-merge(x=merge12, y=LF69.1.sub, by='Transition.ID', all.x=T)
merge14<-merge(x=merge13, y=LF69.2.sub, by='Transition.ID', all.x=T)
merge15<-merge(x=merge14, y=LF70.1.sub, by='Transition.ID', all.x=T)
merge16<-merge(x=merge15, y=LF70.2.sub, by='Transition.ID', all.x=T)
merge17<-merge(x=merge16, y=EM17.1.sub, by='Transition.ID', all.x=T)
merge18<-merge(x=merge17, y=EM17.2.sub, by='Transition.ID', all.x=T)
merge19<-merge(x=merge18, y=EM20.1.sub, by='Transition.ID', all.x=T)
merge20<-merge(x=merge19, y=EM20.2.sub, by='Transition.ID', all.x=T)
merge21<-merge(x=merge20, y=EM28.1.sub, by='Transition.ID', all.x=T)
merge22<-merge(x=merge21, y=EM28.2.sub, by='Transition.ID', all.x=T)
merge23<-merge(x=merge22, y=MM42.1.sub, by='Transition.ID', all.x=T)
merge24<-merge(x=merge23, y=MM42.2.sub, by='Transition.ID', all.x=T)
merge25<-merge(x=merge24, y=MM46.1.sub, by='Transition.ID', all.x=T)
merge26<-merge(x=merge25, y=MM46.2.sub, by='Transition.ID', all.x=T)
merge27<-merge(x=merge26, y=LM65.1.sub, by='Transition.ID', all.x=T)
merge28<-merge(x=merge27, y=LM65.2.sub, by='Transition.ID', all.x=T)
merge29<-merge(x=merge28, y=LM67.1.sub, by='Transition.ID', all.x=T)
merge30<-merge(x=merge29, y=LM67.2.sub, by='Transition.ID', all.x=T)
merge31<-merge(x=merge30, y=LM68.1.sub, by='Transition.ID', all.x=T)
merge32<-merge(x=merge31, y=LM68.2.sub, by='Transition.ID', all.x=T)

merge32[is.na(merge32)]<-0

#determine which PRTC intensities are stable across replicates
#calculate the slopes of intensities. want slope ~0
#first 33 rows are prtc
prtc<-subset(merge32, grepl(paste('PRTC', collapse="|"), merge32$Transition.ID))
prtc2<-prtc[,-1]
prtc.t<-t(prtc2)
prtc.df<-data.frame(prtc.t)

#find peptides with lowest cv across reps
library(raster)
prtc.cv<-apply(prtc.df, 2, cv)
X219      X220      X221      X222      X223      X224      X225      X226      X227      X228      X229 
20.367026 18.949752 14.707365 15.967449 11.979733 15.185522 30.605430 31.749470 30.805100 20.221511 17.892436 
     X230      X231      X232      X233      X234      X235      X236      X237      X238      X239      X240 
20.787204 13.512491 11.806373 10.338973 14.145489 12.561924  9.436204 19.552139 18.872567 16.198849 10.370778 
     X241      X242      X243      X244      X245      X246      X247      X248      X249      X250      X251 
 9.497709  9.336932 17.619883 17.042945 14.057066  9.764776  6.787763  4.239475 21.012342 21.752992 21.617016
#CVs < 10 are in columns 18, 23, 24, 28, 29, 30
prtc.lowcv<-subset(prtc.df, select=c(X236, X241, X242, X246, X247, X248))
prtc.lowcv.t<-t(prtc.lowcv)

prtc.avg<-apply(prtc.lowcv.t, 2, mean)

hemo.unnorm<-merge32[,-1]
rownames(hemo.unnorm)<-merge32[,1]
hemo.norm<-hemo.unnorm/prtc.avg
write.csv(hemo.norm, "Normalized SRM Hemolymph.csv")

#NMDS all reps
library(vegan)
hemo.t<-t(hemo.norm[1:218,])
hemo.tra<-(hemo.t+1)
hemo.tra<-data.trans(hemo.tra, method='log', plot=F)

hemo.nmds<-metaMDS(hemo.tra, distance='bray', k=2, trymax=100, autotransform=F)
ordiplot(hemo.nmds, choices=c(1,2), type='text', display='sites', xlab='Axis 1', ylab='Axis 2')

fig.hemo<-ordiplot(hemo.nmds, choices=c(1,2), type='none', display='sites', xlab='Axis 1', ylab='Axis 2')
points(fig.hemo, 'sites', col=c(rep('#DEEBF7',6), rep('#9ECAE1',4), rep('#3182BD',6), rep('#FEE6CE',6),rep('#FDAE6B',4),rep('#E6550D',6)), pch=c(rep(19,6), rep(15,4), rep(17,6), rep(19,6), rep(15,4), rep(17,6)), cex=1.5)
legend(-0.00021, 0.00017, legend=c('Male', "Female", "Early", "Mid", "Late"), pch=c(19,19,19,15,17), col=c('orange', 'blue', rep('black',3)))

#remove peptides with suspect transition times
hemo.RT<-read.csv('Normalized SRM Hemolymph good RT.csv', header=T, row.names=1)

hemo2.t<-t(hemo.RT)
hemo2.tra<-(hemo2.t+1)
hemo2.tra<-data.trans(hemo2.tra, method='log', plot=F)

hemo2.nmds<-metaMDS(hemo2.tra, distance='bray', k=2, trymax=100, autotransform=F)
ordiplot(hemo2.nmds, choices=c(1,2), type='text', display='sites', xlab='Axis 1', ylab='Axis 2')
#looks very similar to NMDS with all transitions

fig2.hemo<-ordiplot(hemo2.nmds, choices=c(1,2), type='none', display='sites', xlab='Axis 1', ylab='Axis 2')
points(fig2.hemo, 'sites', col=c(rep('#DEEBF7',6), rep('#9ECAE1',4), rep('#3182BD',6), rep('#FEE6CE',6),rep('#FDAE6B',4),rep('#E6550D',6)), pch=c(rep(19,6), rep(15,4), rep(17,6), rep(19,6), rep(15,4), rep(17,6)), cex=1.5)
legend(-0.00013, 0.0001, legend=c('Male', "Female", "Early-Stage", "Mid-Stage", "Late-Stage"), pch=c(19,19,19,15,17), col=c('#E6550D', '#3182BD', rep('black',3)))

par(new=T)
par(fig=c(0.49, 0.99,0.01, 0.51))
fig.avg.hemo<-ordiplot(hemo.avg.nmds, choices=c(1,2), type='none', display='sites', xlab='', ylab='', xaxt='n', yaxt='n', fg='grey33')
points(fig.avg.hemo, 'sites', col=c(rep('#DEEBF7',3), rep('#9ECAE1',2), rep('#3182BD',3), rep('#FEE6CE',3),rep('#FDAE6B',2),rep('#E6550D',3)), pch=c(rep(19,3), rep(15,2), rep(17,3), rep(19,3), rep(15,2), rep(17,3)))

#eigenvectors
vec.nsaf<-envfit(hemo2.nmds$points, hemo2.t, perm=1000)
write.csv(vec.nsaf, 'Eigenvectors for good RT hemolymph.csv')

#avg tech reps
EF18.avg<-apply(hemo.RT[1:2], 1, mean)
EF29.avg<-apply(hemo.RT[3:4], 1, mean)
EF30.avg<-apply(hemo.RT[5:6], 1, mean)
MF25.avg<-apply(hemo.RT[7:8], 1, mean)
MF35.avg<-apply(hemo.RT[9:10], 1, mean)
LF51.avg<-apply(hemo.RT[11:12], 1, mean)
LF69.avg<-apply(hemo.RT[13:14], 1, mean)
LF70.avg<-apply(hemo.RT[15:16], 1, mean)
EM17.avg<-apply(hemo.RT[17:18], 1, mean)
EM20.avg<-apply(hemo.RT[19:20], 1, mean)
EM28.avg<-apply(hemo.RT[21:22], 1, mean)
MM42.avg<-apply(hemo.RT[23:24], 1, mean)
MM46.avg<-apply(hemo.RT[25:26], 1, mean)
LM65.avg<-apply(hemo.RT[27:28], 1, mean)
LM67.avg<-apply(hemo.RT[29:30], 1, mean)
LM68.avg<-apply(hemo.RT[31:32], 1, mean)

all.avg<-cbind(EF18.avg, EF29.avg, EF30.avg, MF25.avg, MF35.avg, LF51.avg, LF69.avg, LF70.avg, EM17.avg, EM20.avg, EM28.avg,  MM42.avg, MM46.avg, LM65.avg, LM67.avg, LM68.avg)
rownames(all.avg)<-rownames(hemo.RT)
write.csv(all.avg, 'hemolymph transitions averaged tech reps.csv')

#NMDS avg tech reps
hemoavg.t<-t(all.avg)
hemoavg.tra<-(hemoavg.t+1)
hemoavg.tra<-data.trans(hemoavg.tra, method='log', plot=F)

hemo.avg.nmds<-metaMDS(hemoavg.tra, distance='bray', k=2, trymax=100, autotransform=F)
ordiplot(hemo.avg.nmds, choices=c(1,2), type='text', display='sites', xlab='Axis 1', ylab='Axis 2')

fig.avg.hemo<-ordiplot(hemo.avg.nmds, choices=c(1,2), type='none', display='sites', xlab='Axis 1', ylab='Axis 2')
points(fig.avg.hemo, 'sites', col=c(rep('#DEEBF7',3), rep('#9ECAE1',2), rep('#3182BD',3), rep('#FEE6CE',3),rep('#FDAE6B',2),rep('#E6550D',3)), pch=c(rep(19,3), rep(15,2), rep(17,3), rep(19,3), rep(15,2), rep(17,3)), cex=1.5)
legend(-0.00002, 6e-5, legend=c('Male', "Female", "Early", "Mid", "Late"), pch=c(19,19,19,15,17), col=c('orange', 'blue', rep('black',3)))

#heat map avg tech reps
library(pheatmap)
library(RColorBrewer)
hm.col<-brewer.pal(9,'YlOrRd')

hemoRT.tra<-data.trans(all.avg, method='log', plot=F)

pheatmap(hemoRT.tra, cluster_rows=T, cluster_cols=T, clustering_distance_rows='euclidean', clustering_distance_cols='euclidean', clustering_method='average', show_rownames=F, color=hm.col)

#heat map of top significant transitions
sig.hemo<-read.csv('hemolymph sig transitions.csv', header=T, row.names=1)
sighemo.tra<-data.trans(sig.hemo, method='log', plot=F)

hm2.col<-brewer.pal(9,'Greens')
pheatmap(sighemo.tra, cluster_rows=T, cluster_cols=T, clustering_distance_rows='euclidean', clustering_distance_cols='euclidean', clustering_method='average', show_rownames=F, color=hm.col)

#ANOSIM
sex.stage<-c(rep("EF",3), rep("MF", 2), rep("LF", 3), rep("EM",3), rep("MM",2), rep("LM",3))
hemo.row<-data.stand(hemoavg.t, method='total', margin='row', plot=F)
hemo.d<-vegdist(hemo.row, 'bray')
hemo.anos<-anosim(hemo.d, grouping=sex.stage)
summary(hemo.anos)

ANOSIM statistic R: 0.4892 
      Significance: 0.001 

Permutation: free
Number of permutations: 999

Upper quantiles of permutations (null model):
  90%   95% 97.5%   99% 
0.133 0.198 0.256 0.327 

Dissimilarity ranks between and within classes:
        0%    25%  50%   75% 100%   N
Between  4 34.875 65.5 92.75  120 106
EF      17 19.500 22.0 40.00   58   3
EM      60 68.500 77.0 86.00   95   3
LF       3 23.000 43.0 53.50   64   3
LM       2  9.000 16.0 17.00   18   3
MF       1  1.000  1.0  1.00    1   1
MM       8  8.000  8.0  8.00    8   1

sex<-c(rep("F", 8), rep('M', 8))
sex.anos<-anosim(hemo.d, grouping=sex)
summary(sex.anos)

ANOSIM statistic R: 0.1384 
      Significance: 0.043 

Permutation: free
Number of permutations: 999

Upper quantiles of permutations (null model):
   90%    95%  97.5%    99% 
0.0943 0.1211 0.1597 0.1993 

Dissimilarity ranks between and within classes:
        0%   25%   50%    75% 100%  N
Between  4 34.50 68.25  93.25  120 64
F        1 20.75 43.75  58.75   84 28
M        2 42.00 87.50 102.75  119 28

stage<-c(rep('early', 3), rep('mid', 2), rep('late', 3), rep('early', 3), rep('mid', 2), rep('late', 3))
stage.anos<-anosim(hemo.d, grouping=stage)
summary(stage.anos)
ANOSIM statistic R: 0.1435 
      Significance: 0.065 

Permutation: free
Number of permutations: 999

Upper quantiles of permutations (null model):
  90%   95% 97.5%   99% 
0.111 0.163 0.212 0.271 

Dissimilarity ranks between and within classes:
        0%    25%   50%    75%  100%  N
Between  4 34.500 58.25  92.25 120.0 84
early   10 41.000 60.00  74.50 103.0 15
late     2 11.500 43.00  70.50  85.0 15
mid      1 30.875 99.50 112.25 116.5  6

#CV for all reps
EF18.cv<-apply(hemo.RT[1:2], 1, cv)
EF29.cv<-apply(hemo.RT[3:4], 1, cv)
EF30.cv<-apply(hemo.RT[5:6], 1, cv)
MF25.cv<-apply(hemo.RT[7:8], 1, cv)
MF35.cv<-apply(hemo.RT[9:10], 1, cv)
LF51.cv<-apply(hemo.RT[11:12], 1, cv)
LF69.cv<-apply(hemo.RT[13:14], 1, cv)
LF70.cv<-apply(hemo.RT[15:16], 1, cv)
EM17.cv<-apply(hemo.RT[17:18], 1, cv)
EM20.cv<-apply(hemo.RT[19:20], 1, cv)
EM28.cv<-apply(hemo.RT[21:22], 1, cv)
MM42.cv<-apply(hemo.RT[23:24], 1, cv)
MM46.cv<-apply(hemo.RT[25:26], 1, cv)
LM65.cv<-apply(hemo.RT[27:28], 1, cv)
LM67.cv<-apply(hemo.RT[29:30], 1, cv)
LM68.cv<-apply(hemo.RT[31:32], 1, cv)

geoduck.cv<-cbind(EF18.cv, EF29.cv, EF30.cv, MF25.cv, MF35.cv, LF51.cv, LF69.cv, LF70.cv, EM17.cv, EM20.cv, EM28.cv,  MM42.cv, MM46.cv, LM65.cv, LM67.cv, LM68.cv)

#cvs across biological reps
EF.cv<-apply(hemo.RT[1:6], 1, cv)
MF.cv<-apply(hemo.RT[7:10], 1, cv)
LF.cv<-apply(hemo.RT[11:16], 1, cv)
EM.cv<-apply(hemo.RT[17:22], 1, cv)
MM.cv<-apply(hemo.RT[23:26], 1, cv)
LM.cv<-apply(hemo.RT[27:32], 1, cv)
biorep.cv<-cbind(EF.cv, MF.cv, LF.cv, EM.cv, MM.cv, LM.cv)

#boxplot of cvs for each dilution
boxplot(geoduck.cv, outline=T, names=c('EF18', 'EF29', 'EF30', 'MF25', 'MF35',  'LF51', 'LF69', 'LF70', 'EM17', 'EM20', 'EM28',  'MM42', 'MM46', 'LM65', 'LM67', 'LM68'), xlab='Geoduck Hemolymph Sample', ylab='Coefficient of Variation', las=2, ylim=c(0,300))

boxplot(biorep.cv, outline=T, names=c('EF', 'MF', 'LF', 'EM', 'MM', 'LM'), xlab='Geoduck Hemolymph Group', ylab='Coefficient of Variation', las=2, ylim=c(0,300))