setwd('~/Documents/genome_sciences_postdoc/geoduck/SRM')

# separate file for each injection
EF3.1<-read.csv('SRM EF3.1.csv', header=T, na.strings='#N/A')
transitionIDs<-subset(EF3.1, select=TransitionID)
EF3.2<-read.csv('SRM EF3.2.csv', header=T, na.strings='#N/A')
EF3.3<-read.csv('SRM EF3.3.csv', header=T, na.strings='#N/A')
EF4.1<-read.csv('SRM EF4.1.csv', header=T, na.strings='#N/A')
EF4.2<-read.csv('SRM EF4.2.csv', header=T, na.strings='#N/A')
EF4.3<-read.csv('SRM EF4.3.csv', header=T, na.strings='#N/A')
EF8.1<-read.csv('SRM EF8.1.csv', header=T, na.strings='#N/A')
EF8.2<-read.csv('SRM EF8.2.csv', header=T, na.strings='#N/A')
EF8.3<-read.csv('SRM EF8.3.csv', header=T, na.strings='#N/A')
MF34.1<-read.csv('SRM MF34.1.csv', header=T, na.strings='#N/A')
MF34.2<-read.csv('SRM MF34.2.csv', header=T, na.strings='#N/A')
MF34.3<-read.csv('SRM MF34.3.csv', header=T, na.strings='#N/A')
MF35.1<-read.csv('SRM MF35.1.csv', header=T, na.strings='#N/A')
MF35.2<-read.csv('SRM MF35.2.csv', header=T, na.strings='#N/A')
MF35.3<-read.csv('SRM MF35.3.csv', header=T, na.strings='#N/A')
MF38.1<-read.csv('SRM MF38.1.csv', header=T, na.strings='#N/A')
MF38.2<-read.csv('SRM MF38.2.csv', header=T, na.strings='#N/A')
MF38.3<-read.csv('SRM MF38.3.csv', header=T, na.strings='#N/A')
LF51.1<-read.csv('SRM LF51.1.csv', header=T, na.strings='#N/A')
LF51.2<-read.csv('SRM LF51.2.csv', header=T, na.strings='#N/A')
LF51.3<-read.csv('SRM LF51.3.csv', header=T, na.strings='#N/A')
LF69.1<-read.csv('SRM LF69.1.csv', header=T, na.strings='#N/A')
LF69.2<-read.csv('SRM LF69.2.csv', header=T, na.strings='#N/A')
LF69.3<-read.csv('SRM LF69.3.csv', header=T, na.strings='#N/A')
LF70.1<-read.csv('SRM LF70.1.csv', header=T, na.strings='#N/A')
LF70.2<-read.csv('SRM LF70.2.csv', header=T, na.strings='#N/A')
LF70.3<-read.csv('SRM LF70.3.csv', header=T, na.strings='#N/A')
EM2.1<-read.csv('SRM EM2.1.csv', header=T, na.strings='#N/A')
EM2.2<-read.csv('SRM EM2.2.csv', header=T, na.strings='#N/A')
EM2.3<-read.csv('SRM EM2.3.csv', header=T, na.strings='#N/A')
EM7.1<-read.csv('SRM EM7.1.csv', header=T, na.strings='#N/A')
EM7.2<-read.csv('SRM EM7.2.csv', header=T, na.strings='#N/A')
EM7.3<-read.csv('SRM EM7.3.csv', header=T, na.strings='#N/A')
EM9.1<-read.csv('SRM EM9.1.csv', header=T, na.strings='#N/A')
EM9.2<-read.csv('SRM EM9.2.csv', header=T, na.strings='#N/A')
EM9.3<-read.csv('SRM EM9.3.csv', header=T, na.strings='#N/A')
MM41.1<-read.csv('SRM MM41.1.csv', header=T, na.strings='#N/A')
MM41.2<-read.csv('SRM MM41.2.csv', header=T, na.strings='#N/A')
MM41.3<-read.csv('SRM MM41.3.csv', header=T, na.strings='#N/A')
MM42.1<-read.csv('SRM MM42.1.csv', header=T, na.strings='#N/A')
MM42.2<-read.csv('SRM MM42.2.csv', header=T, na.strings='#N/A')
MM42.3<-read.csv('SRM MM42.3.csv', header=T, na.strings='#N/A')
MM46.1<-read.csv('SRM MM46.1.csv', header=T, na.strings='#N/A')
MM46.2<-read.csv('SRM MM46.2.csv', header=T, na.strings='#N/A')
MM46.3<-read.csv('SRM MM46.3.csv', header=T, na.strings='#N/A')
LM65.1<-read.csv('SRM LM65.1.csv', header=T, na.strings='#N/A')
LM65.2<-read.csv('SRM LM65.2.csv', header=T, na.strings='#N/A')
LM65.3<-read.csv('SRM LM65.3.csv', header=T, na.strings='#N/A')
LM67.1<-read.csv('SRM LM67.1.csv', header=T, na.strings='#N/A')
LM67.2<-read.csv('SRM LM67.2.csv', header=T, na.strings='#N/A')
LM67.3<-read.csv('SRM LM67.3.csv', header=T, na.strings='#N/A')
LM68.1<-read.csv('SRM LM68.1.csv', header=T, na.strings='#N/A')
LM68.2<-read.csv('SRM LM68.2.csv', header=T, na.strings='#N/A')
LM68.3<-read.csv('SRM LM68.3.csv', header=T, na.strings='#N/A')

EF3.1.sub<-subset(EF3.1, select=c(TransitionID, Area))
EF3.2.sub<-subset(EF3.2, select=c(TransitionID, Area))
EF3.3.sub<-subset(EF3.3, select=c(TransitionID, Area))
EF4.1.sub<-subset(EF4.1, select=c(TransitionID, Area))
EF4.2.sub<-subset(EF4.2, select=c(TransitionID, Area))
EF4.3.sub<-subset(EF4.3, select=c(TransitionID, Area))
EF8.1.sub<-subset(EF8.1, select=c(TransitionID, Area))
EF8.2.sub<-subset(EF8.2, select=c(TransitionID, Area))
EF8.3.sub<-subset(EF8.3, select=c(TransitionID, Area))
MF34.1.sub<-subset(MF34.1, select=c(TransitionID, Area))
MF34.2.sub<-subset(MF34.2, select=c(TransitionID, Area))
MF34.3.sub<-subset(MF34.3, select=c(TransitionID, Area))
MF35.1.sub<-subset(MF35.1, select=c(TransitionID, Area))
MF35.2.sub<-subset(MF35.2, select=c(TransitionID, Area))
MF35.3.sub<-subset(MF35.3, select=c(TransitionID, Area))
MF38.1.sub<-subset(MF38.1, select=c(TransitionID, Area))
MF38.2.sub<-subset(MF38.2, select=c(TransitionID, Area))
MF38.3.sub<-subset(MF38.3, select=c(TransitionID, Area))
LF51.1.sub<-subset(LF51.1, select=c(TransitionID, Area))
LF51.2.sub<-subset(LF51.2, select=c(TransitionID, Area))
LF51.3.sub<-subset(LF51.3, select=c(TransitionID, Area))
LF69.1.sub<-subset(LF69.1, select=c(TransitionID, Area))
LF69.2.sub<-subset(LF69.2, select=c(TransitionID, Area))
LF69.3.sub<-subset(LF69.3, select=c(TransitionID, Area))
LF70.1.sub<-subset(LF70.1, select=c(TransitionID, Area))
LF70.2.sub<-subset(LF70.2, select=c(TransitionID, Area))
LF70.3.sub<-subset(LF70.3, select=c(TransitionID, Area))
EM2.1.sub<-subset(EM2.1, select=c(TransitionID, Area))
EM2.2.sub<-subset(EM2.2, select=c(TransitionID, Area))
EM2.3.sub<-subset(EM2.3, select=c(TransitionID, Area))
EM7.1.sub<-subset(EM7.1, select=c(TransitionID, Area))
EM7.2.sub<-subset(EM7.2, select=c(TransitionID, Area))
EM7.3.sub<-subset(EM7.3, select=c(TransitionID, Area))
EM9.1.sub<-subset(EM9.1, select=c(TransitionID, Area))
EM9.2.sub<-subset(EM9.2, select=c(TransitionID, Area))
EM9.3.sub<-subset(EM9.3, select=c(TransitionID, Area))
MM41.1.sub<-subset(MM41.1, select=c(TransitionID, Area))
MM41.2.sub<-subset(MM41.2, select=c(TransitionID, Area))
MM41.3.sub<-subset(MM41.3, select=c(TransitionID, Area))
MM42.1.sub<-subset(MM42.1, select=c(TransitionID, Area))
MM42.2.sub<-subset(MM42.2, select=c(TransitionID, Area))
MM42.3.sub<-subset(MM42.3, select=c(TransitionID, Area))
MM46.1.sub<-subset(MM46.1, select=c(TransitionID, Area))
MM46.2.sub<-subset(MM46.2, select=c(TransitionID, Area))
MM46.3.sub<-subset(MM46.3, select=c(TransitionID, Area))
LM65.1.sub<-subset(LM65.1, select=c(TransitionID, Area))
LM65.2.sub<-subset(LM65.2, select=c(TransitionID, Area))
LM65.3.sub<-subset(LM65.3, select=c(TransitionID, Area))
LM67.1.sub<-subset(LM67.1, select=c(TransitionID, Area))
LM67.2.sub<-subset(LM67.2, select=c(TransitionID, Area))
LM67.3.sub<-subset(LM67.3, select=c(TransitionID, Area))
LM68.1.sub<-subset(LM68.1, select=c(TransitionID, Area))
LM68.2.sub<-subset(LM68.2, select=c(TransitionID, Area))
LM68.3.sub<-subset(LM68.3, select=c(TransitionID, Area))

names(EF3.1.sub)[names(EF3.1.sub)=='Area']<-'EF3.1'
names(EF3.2.sub)[names(EF3.2.sub)=='Area']<-'EF3.2'
names(EF3.3.sub)[names(EF3.3.sub)=='Area']<-'EF3.3'
names(EF4.1.sub)[names(EF4.1.sub)=='Area']<-'EF4.1'
names(EF4.2.sub)[names(EF4.2.sub)=='Area']<-'EF4.2'
names(EF4.3.sub)[names(EF4.3.sub)=='Area']<-'EF4.3'
names(EF8.1.sub)[names(EF8.1.sub)=='Area']<-'EF8.1'
names(EF8.2.sub)[names(EF8.2.sub)=='Area']<-'EF8.2'
names(EF8.3.sub)[names(EF8.3.sub)=='Area']<-'EF8.3'
names(MF34.1.sub)[names(MF34.1.sub)=='Area']<-'MF34.1'
names(MF34.2.sub)[names(MF34.2.sub)=='Area']<-'MF34.2'
names(MF34.3.sub)[names(MF34.3.sub)=='Area']<-'MF34.3'
names(MF35.1.sub)[names(MF35.1.sub)=='Area']<-'MF35.1'
names(MF35.2.sub)[names(MF35.2.sub)=='Area']<-'MF35.2'
names(MF35.3.sub)[names(MF35.3.sub)=='Area']<-'MF35.3'
names(MF38.1.sub)[names(MF38.1.sub)=='Area']<-'MF38.1'
names(MF38.2.sub)[names(MF38.2.sub)=='Area']<-'MF38.2'
names(MF38.3.sub)[names(MF38.3.sub)=='Area']<-'MF38.3'
names(LF51.1.sub)[names(LF51.1.sub)=='Area']<-'LF51.1'
names(LF51.2.sub)[names(LF51.2.sub)=='Area']<-'LF51.2'
names(LF51.3.sub)[names(LF51.3.sub)=='Area']<-'LF51.3'
names(LF69.1.sub)[names(LF69.1.sub)=='Area']<-'LF69.1'
names(LF69.2.sub)[names(LF69.2.sub)=='Area']<-'LF69.2'
names(LF69.3.sub)[names(LF69.3.sub)=='Area']<-'LF69.3'
names(LF70.1.sub)[names(LF70.1.sub)=='Area']<-'LF70.1'
names(LF70.2.sub)[names(LF70.2.sub)=='Area']<-'LF70.2'
names(LF70.3.sub)[names(LF70.3.sub)=='Area']<-'LF70.3'
names(EM2.1.sub)[names(EM2.1.sub)=='Area']<-'EM2.1'
names(EM2.2.sub)[names(EM2.2.sub)=='Area']<-'EM2.2'
names(EM2.3.sub)[names(EM2.3.sub)=='Area']<-'EM2.3'
names(EM7.1.sub)[names(EM7.1.sub)=='Area']<-'EM7.1'
names(EM7.2.sub)[names(EM7.2.sub)=='Area']<-'EM7.2'
names(EM7.3.sub)[names(EM7.3.sub)=='Area']<-'EM7.3'
names(EM9.1.sub)[names(EM9.1.sub)=='Area']<-'EM9.1'
names(EM9.2.sub)[names(EM9.2.sub)=='Area']<-'EM9.2'
names(EM9.3.sub)[names(EM9.3.sub)=='Area']<-'EM9.3'
names(MM41.1.sub)[names(MM41.1.sub)=='Area']<-'MM41.1'
names(MM41.2.sub)[names(MM41.2.sub)=='Area']<-'MM41.2'
names(MM41.3.sub)[names(MM41.3.sub)=='Area']<-'MM41.3'
names(MM42.1.sub)[names(MM42.1.sub)=='Area']<-'MM42.1'
names(MM42.2.sub)[names(MM42.2.sub)=='Area']<-'MM42.2'
names(MM42.3.sub)[names(MM42.3.sub)=='Area']<-'MM42.3'
names(MM46.1.sub)[names(MM46.1.sub)=='Area']<-'MM46.1'
names(MM46.2.sub)[names(MM46.2.sub)=='Area']<-'MM46.2'
names(MM46.3.sub)[names(MM46.3.sub)=='Area']<-'MM46.3'
names(LM65.1.sub)[names(LM65.1.sub)=='Area']<-'LM65.1'
names(LM65.2.sub)[names(LM65.2.sub)=='Area']<-'LM65.2'
names(LM65.3.sub)[names(LM65.3.sub)=='Area']<-'LM65.3'
names(LM67.1.sub)[names(LM67.1.sub)=='Area']<-'LM67.1'
names(LM67.2.sub)[names(LM67.2.sub)=='Area']<-'LM67.2'
names(LM67.3.sub)[names(LM67.3.sub)=='Area']<-'LM67.3'
names(LM68.1.sub)[names(LM68.1.sub)=='Area']<-'LM68.1'
names(LM68.2.sub)[names(LM68.2.sub)=='Area']<-'LM68.2'
names(LM68.3.sub)[names(LM68.3.sub)=='Area']<-'LM68.3'

merge1<-merge(x=transitionIDs, y=EF3.1.sub, by='TransitionID', all.x=T)
merge2<-merge(x=merge1, y=EF3.2.sub, by='TransitionID', all.x=T)
merge3<-merge(x=merge2, y=EF3.3.sub, by='TransitionID', all.x=T)
merge4<-merge(x=merge3, y=EF4.1.sub, by='TransitionID', all.x=T)
merge5<-merge(x=merge4, y=EF4.2.sub, by='TransitionID', all.x=T)
merge6<-merge(x=merge5, y=EF4.3.sub, by='TransitionID', all.x=T)
merge7<-merge(x=merge6, y=EF8.1.sub, by='TransitionID', all.x=T)
merge8<-merge(x=merge7, y=EF8.2.sub, by='TransitionID', all.x=T)
merge9<-merge(x=merge8, y=EF8.3.sub, by='TransitionID', all.x=T)
merge10<-merge(x=merge9, y=MF34.1.sub, by='TransitionID', all.x=T)
merge11<-merge(x=merge10, y=MF34.2.sub, by='TransitionID', all.x=T)
merge12<-merge(x=merge11, y=MF34.3.sub, by='TransitionID', all.x=T)
merge13<-merge(x=merge12, y=MF35.1.sub, by='TransitionID', all.x=T)
merge14<-merge(x=merge13, y=MF35.2.sub, by='TransitionID', all.x=T)
merge15<-merge(x=merge14, y=MF35.3.sub, by='TransitionID', all.x=T)
merge16<-merge(x=merge15, y=MF38.1.sub, by='TransitionID', all.x=T)
merge17<-merge(x=merge16, y=MF38.2.sub, by='TransitionID', all.x=T)
merge18<-merge(x=merge17, y=MF38.3.sub, by='TransitionID', all.x=T)
merge19<-merge(x=merge18, y=LF51.1.sub, by='TransitionID', all.x=T)
merge20<-merge(x=merge19, y=LF51.2.sub, by='TransitionID', all.x=T)
merge21<-merge(x=merge20, y=LF51.3.sub, by='TransitionID', all.x=T)
merge22<-merge(x=merge21, y=LF69.1.sub, by='TransitionID', all.x=T)
merge23<-merge(x=merge22, y=LF69.2.sub, by='TransitionID', all.x=T)
merge24<-merge(x=merge23, y=LF69.3.sub, by='TransitionID', all.x=T)
merge25<-merge(x=merge24, y=LF70.1.sub, by='TransitionID', all.x=T)
merge26<-merge(x=merge25, y=LF70.2.sub, by='TransitionID', all.x=T)
merge27<-merge(x=merge26, y=LF70.3.sub, by='TransitionID', all.x=T)
merge28<-merge(x=merge27, y=EM2.1.sub, by='TransitionID', all.x=T)
merge29<-merge(x=merge28, y=EM2.2.sub, by='TransitionID', all.x=T)
merge30<-merge(x=merge29, y=EM2.3.sub, by='TransitionID', all.x=T)
merge31<-merge(x=merge30, y=EM7.1.sub, by='TransitionID', all.x=T)
merge32<-merge(x=merge31, y=EM7.2.sub, by='TransitionID', all.x=T)
merge33<-merge(x=merge32, y=EM7.3.sub, by='TransitionID', all.x=T)
merge34<-merge(x=merge33, y=EM9.1.sub, by='TransitionID', all.x=T)
merge35<-merge(x=merge34, y=EM9.2.sub, by='TransitionID', all.x=T)
merge36<-merge(x=merge35, y=EM9.3.sub, by='TransitionID', all.x=T)
merge37<-merge(x=merge36, y=MM41.1.sub, by='TransitionID', all.x=T)
merge38<-merge(x=merge37, y=MM41.2.sub, by='TransitionID', all.x=T)
merge39<-merge(x=merge38, y=MM41.3.sub, by='TransitionID', all.x=T)
merge40<-merge(x=merge39, y=MM42.1.sub, by='TransitionID', all.x=T)
merge41<-merge(x=merge40, y=MM42.2.sub, by='TransitionID', all.x=T)
merge42<-merge(x=merge41, y=MM42.3.sub, by='TransitionID', all.x=T)
merge43<-merge(x=merge42, y=MM46.1.sub, by='TransitionID', all.x=T)
merge44<-merge(x=merge43, y=MM46.2.sub, by='TransitionID', all.x=T)
merge45<-merge(x=merge44, y=MM46.3.sub, by='TransitionID', all.x=T)
merge46<-merge(x=merge45, y=LM65.1.sub, by='TransitionID', all.x=T)
merge47<-merge(x=merge46, y=LM65.2.sub, by='TransitionID', all.x=T)
merge48<-merge(x=merge47, y=LM65.3.sub, by='TransitionID', all.x=T)
merge49<-merge(x=merge48, y=LM67.1.sub, by='TransitionID', all.x=T)
merge50<-merge(x=merge49, y=LM67.2.sub, by='TransitionID', all.x=T)
merge51<-merge(x=merge50, y=LM67.3.sub, by='TransitionID', all.x=T)
merge52<-merge(x=merge51, y=LM68.1.sub, by='TransitionID', all.x=T)
merge53<-merge(x=merge52, y=LM68.2.sub, by='TransitionID', all.x=T)
merge54<-merge(x=merge53, y=LM68.3.sub, by='TransitionID', all.x=T)

merge54[is.na(merge54)]<-0

#determine which PRTC intensities are stable across replicates
#calculate the slopes of intensities. want slope ~0
#first 42 rows are prtc
prtc<-subset(merge54, grepl(paste('PRTC', collapse="|"), merge54$TransitionID))
prtc2<-prtc[,-1]
rownames(prtc2)<-prtc[,1]
prtc.t<-t(prtc2)
prtc.df<-data.frame(prtc.t)

library(raster)
prtc.cv<-apply(prtc.df, 2, cv)

PRTC.peptides_DIPVPKPK_y4           PRTC.peptides_DIPVPKPK_y5           PRTC.peptides_DIPVPKPK_y6 
                           12.42411                            12.63863                            11.25468 
     PRTC.peptides_ELASGLSFPVGFK_y6      PRTC.peptides_ELASGLSFPVGFK_y7      PRTC.peptides_ELASGLSFPVGFK_y9 
                           21.41645                            41.44044                            20.55163 
   PRTC.peptides_ELGQSGVDTYLQTK_y10     PRTC.peptides_ELGQSGVDTYLQTK_y4     PRTC.peptides_ELGQSGVDTYLQTK_y7 
                           21.30232                            21.52638                            21.52012 
PRTC.peptides_GILFVGSGVSGGEEGAR_y10 PRTC.peptides_GILFVGSGVSGGEEGAR_y12  PRTC.peptides_GILFVGSGVSGGEEGAR_y9 
                           15.98494                            15.66283                            16.86192 
     PRTC.peptides_GISNEGQNASIK_y10       PRTC.peptides_GISNEGQNASIK_y7       PRTC.peptides_GISNEGQNASIK_y8 
                           14.05763                            14.44594                            13.89093 
       PRTC.peptides_GLILVGGYGTR_y6        PRTC.peptides_GLILVGGYGTR_y7        PRTC.peptides_GLILVGGYGTR_y8 
                           17.97959                            16.69696                            16.25609 
         PRTC.peptides_HVLTSIGEK_y5          PRTC.peptides_HVLTSIGEK_y6          PRTC.peptides_HVLTSIGEK_y7 
                           22.59322                            20.60195                            19.60859 
          PRTC.peptides_IGDYAGIK_y4           PRTC.peptides_IGDYAGIK_y5           PRTC.peptides_IGDYAGIK_y6 
                           14.56325                            15.00654                            17.23021 
    PRTC.peptides_LSSEAPALFQFDLK_y5     PRTC.peptides_LSSEAPALFQFDLK_y6     PRTC.peptides_LSSEAPALFQFDLK_y9 
                           34.19089                            24.80829                            24.49329 
          PRTC.peptides_LTILEELR_y4           PRTC.peptides_LTILEELR_y5           PRTC.peptides_LTILEELR_y6 
                           18.84993                            17.73722                            17.79765 
      PRTC.peptides_SAAGAFGPELSR_y5       PRTC.peptides_SAAGAFGPELSR_y6       PRTC.peptides_SAAGAFGPELSR_y7 
                           18.93012                            18.29368                            17.99943 
     PRTC.peptides_SFANQPLEVVYSK_y3      PRTC.peptides_SFANQPLEVVYSK_y4      PRTC.peptides_SFANQPLEVVYSK_y8 
                           16.46914                            15.66476                            16.58124 
        PRTC.peptides_SSAAPPPPPR_y4         PRTC.peptides_SSAAPPPPPR_y5         PRTC.peptides_SSAAPPPPPR_y6 
                           12.10935                            11.37221                            11.37319 
     PRTC.peptides_TASEFDSAIAQDK_y4      PRTC.peptides_TASEFDSAIAQDK_y8      PRTC.peptides_TASEFDSAIAQDK_y9 
                           14.08451                            14.08299                            13.86205

#prtc < 13: PRTC.peptides_DIPVPKPK_y4, PRTC.peptides_DIPVPKPK_y5, PRTC.peptides_DIPVPKPK_y6, PRTC.peptides_SSAAPPPPPR_y4, PRTC.peptides_SSAAPPPPPR_y5, PRTC.peptides_SSAAPPPPPR_y6
#Normalize all intensities by average of PRTC intensities
#select rows of prtc to average

prtc.low<-subset(prtc.df, select=c(PRTC.peptides_DIPVPKPK_y4, PRTC.peptides_DIPVPKPK_y5, PRTC.peptides_DIPVPKPK_y6, PRTC.peptides_SSAAPPPPPR_y4, PRTC.peptides_SSAAPPPPPR_y5, PRTC.peptides_SSAAPPPPPR_y6))
prtc.low.t<-t(prtc.low)

#average each column to find average prtc intensity for each injection
prtc.low.avg<-apply(prtc.low.t, 2, mean)

#subset data frame to have only rpom peptides
geoduck<-subset(merge54, grepl(paste('cds', collapse='|'), merge54$TransitionID))

#DIVIDE BY AVERAGE PRTC
geoduck2<-geoduck[,-1]
rownames(geoduck2)<-geoduck[,1]

geoduck.norm<-geoduck2/prtc.low.avg
write.csv(geoduck.norm, file='Normalized Intensities for all reps.csv')

#NMDS of all bio and tech reps
library(vegan)
#transform so protein names are column headers
geoduck.t<-t(geoduck.norm)
geoduck.tra<-(geoduck.t+1)
geoduck.tra<-data.trans(geoduck.t, method='log', plot=F)

geoduck.nmds<-metaMDS(geoduck.tra, distance='bray', k=2, trymax=100, autotransform=F)
fig.geoduck<-ordiplot(geoduck.nmds, choices=c(1,2), type='none', display='sites', xlab='Axis 1', ylab='Axis 2')
points(fig.geoduck, 'sites', col=c(rep('#DEEBF7',9), rep('#9ECAE1',9), rep('#3182BD',9), rep('#FEE6CE',9),rep('#FDAE6B',9),rep('#E6550D',9)), pch=c(rep(19,9), rep(15,9), rep(17,9), rep(19,9), rep(15,9), rep(17,9)), cex=1.5)
legend(0.2, 0.41, legend=c('Male', "Female", "Early", "Mid", "Late"), pch=c(19,19,19,15,17), col=c('orange', 'blue', rep('black',3)))

#average tech reps
EF3.avg<-apply(geoduck.norm[1:3], 1, mean)
EF4.avg<-apply(geoduck.norm[4:6], 1, mean)
EF8.avg<-apply(geoduck.norm[7:9], 1, mean)
MF34.avg<-apply(geoduck.norm[10:12], 1, mean)
MF35.avg<-apply(geoduck.norm[13:15], 1, mean)
MF38.avg<-apply(geoduck.norm[16:18], 1, mean)
LF51.avg<-apply(geoduck.norm[19:21], 1, mean)
LF69.avg<-apply(geoduck.norm[22:24], 1, mean)
LF70.avg<-apply(geoduck.norm[25:27], 1, mean)
EM2.avg<-apply(geoduck.norm[28:30], 1, mean)
EM7.avg<-apply(geoduck.norm[31:33], 1, mean)
EM9.avg<-apply(geoduck.norm[34:36], 1, mean)
MM41.avg<-apply(geoduck.norm[37:39], 1, mean)
MM42.avg<-apply(geoduck.norm[40:42], 1, mean)
MM46.avg<-apply(geoduck.norm[43:45], 1, mean)
LM65.avg<-apply(geoduck.norm[46:48], 1, mean)
LM67.avg<-apply(geoduck.norm[49:51], 1, mean)
LM68.avg<-apply(geoduck.norm[52:54], 1, mean)

all.avg<-cbind(EF3.avg, EF4.avg, EF8.avg, MF34.avg, MF35.avg, MF38.avg, LF51.avg, LF69.avg, LF70.avg, EM2.avg, EM7.avg, EM9.avg, MM41.avg, MM42.avg, MM46.avg, LM65.avg, LM67.avg, LM68.avg)
rownames(all.avg)<-rownames(geoduck.norm)
write.csv(all.avg, 'Gonad transitions averaged tech reps.csv')

avg.t<-t(all.avg)
avg.tra<-(avg.t+1)
avg.tra<-data.trans(avg.t, method='log', plot=F)

geoduck.avg.nmds<-metaMDS(avg.tra, distance='bray', k=2, trymax=100, autotransform=F)
fig.geoduck.avg<-ordiplot(geoduck.avg.nmds, choices=c(1,2), type='none', display='sites', xlab='Axis 1', ylab='Axis 2')
points(fig.geoduck.avg, 'sites', pch=c(rep(19,3), rep(15,3), rep(17,3), rep(19,3), rep(15,3), rep(17,3)), col=c(rep('#DEEBF7',3), rep('#9ECAE1',3), rep('#3182BD',3), rep('#FEE6CE',3),rep('#FDAE6B',3),rep('#E6550D',3)), cex=1.5)
legend(-0.45, 0.4, legend=c('Male', "Female", "Early-Stage", "Mid-Stage", "Late-Stage"), pch=c(19,19,19,15,17), col=c('#E6550D', '#3182BD', rep('black',3)))
#male = orange, female = blue
#early = circles, mid = square, late = triangles

#eigenvectors
vec.nsaf<-envfit(geoduck.avg.nmds$points, avg.t, perm=1000)

#ANOSIM
sex.stage<-c(rep("EF",3), rep("MF", 3), rep("LF", 3), rep("EM",3), rep("MM",3), rep("LM",3))
geoduck.row<-data.stand(avg.t, method='total', margin='row', plot=F)
geoduck.d<-vegdist(geoduck.row, 'bray')
geoduck.anos<-anosim(geoduck.d, grouping=sex.stage)
summary(geoduck.anos)

ANOSIM statistic R: 0.4132 
      Significance: 0.001

Permutation: free
Number of permutations: 999

Upper quantiles of permutations (null model):
  90%   95% 97.5%   99% 
0.118 0.156 0.182 0.218 

Dissimilarity ranks between and within classes:
        0%  25% 50%   75% 100%   N
Between  3 44.5  81 119.5  153 135
EF       4 15.0  26  53.0   80   3
EM       2 10.0  18  24.0   30   3
LF      29 60.0  91  99.5  108   3
LM      17 62.0 107 108.5  110   3
MF       1 17.5  34  48.0   62   3
MM      13 38.0  63  76.0   89   3

sex<-c(rep("F", 9), rep('M', 9))
sex.anos<-anosim(geoduck.d, grouping=sex)
summary(sex.anos)

ANOSIM statistic R: 0.2373 
      Significance: 0.003 

Permutation: free
Number of permutations: 999

Upper quantiles of permutations (null model):
   90%    95%  97.5%    99% 
0.0804 0.1140 0.1438 0.1850 

Dissimilarity ranks between and within classes:
        0%   25%  50%    75% 100%  N
Between  3 52.00 87.0 123.00  153 81
F        1 28.75 55.5  87.25  138 36
M        2 32.25 66.0 109.25  149 36

stage<-c(rep('early', 3), rep('mid', 3), rep('late', 3), rep('early', 3), rep('mid', 3), rep('late', 3))
stage.anos<-anosim(geoduck.d, grouping=stage)
summary(stage.anos)
ANOSIM statistic R: 0.2189 
      Significance: 0.007 

Permutation: free
Number of permutations: 999

Upper quantiles of permutations (null model):
   90%    95%  97.5%    99% 
0.0873 0.1152 0.1384 0.1949 

Dissimilarity ranks between and within classes:
        0%   25%   50%    75% 100%   N
Between  7 46.75  82.5 119.25  153 108
early    2  5.50  21.0  30.50   80  15
late    17 98.50 110.0 131.50  147  15
mid      1 60.50  71.0  88.00  124  15

#heat map of peak intensities
library(pheatmap)
intens.tra<-data.trans(all.avg, method='log', plot=F)

#pheatmap(all.avg, cluster_rows=T, cluster_cols=T, clustering_distance_rows='euclidean', clustering_distance_cols='euclidean', clustering_method='average', show_rownames=F)

pheatmap(intens.tra, cluster_rows=T, cluster_cols=T, clustering_distance_rows='euclidean', clustering_distance_cols='euclidean', clustering_method='average', show_rownames=F)

library(RColorBrewer)
hm.col<-brewer.pal(9,'YlOrRd')

pheatmap(intens.tra, cluster_rows=T, cluster_cols=T, clustering_distance_rows='euclidean', clustering_distance_cols='euclidean', clustering_method='average', show_rownames=F, color=hm.col)

#heat map of top significant transitions
sig.trans<-read.csv('gonad sig srm transitions.csv', header=T, row.names=1)
sig.tra<-data.trans(sig.trans, method='log', plot=F)

pheatmap(sig.tra, cluster_rows=T, cluster_cols=T, clustering_distance_rows='euclidean', clustering_distance_cols='euclidean', clustering_method='average', show_rownames=F, color=hm.col)


#calculate coefficient of variation for technical and biological replicates
library(raster)
#cv for each protein across technical replicates for a given biological replicate
#make sure values are integers by changing data frame to a matrix

#cv for each protein across biological replicates for a given dilution 
EF3.cv<-apply(geoduck.norm[1:3], 1, cv)
EF4.cv<-apply(geoduck.norm[4:6], 1, cv)
EF8.cv<-apply(geoduck.norm[7:9], 1, cv)
MF34.cv<-apply(geoduck.norm[10:12], 1, cv)
MF35.cv<-apply(geoduck.norm[13:15], 1, cv)
MF38.cv<-apply(geoduck.norm[16:18], 1, cv)
LF51.cv<-apply(geoduck.norm[19:21], 1, cv)
LF69.cv<-apply(geoduck.norm[22:24], 1, cv)
LF70.cv<-apply(geoduck.norm[25:27], 1, cv)
EM2.cv<-apply(geoduck.norm[28:30], 1, cv)
EM7.cv<-apply(geoduck.norm[31:33], 1, cv)
EM9.cv<-apply(geoduck.norm[34:36], 1, cv)
MM41.cv<-apply(geoduck.norm[37:39], 1, cv)
MM42.cv<-apply(geoduck.norm[40:42], 1, cv)
MM46.cv<-apply(geoduck.norm[43:45], 1, cv)
LM65.cv<-apply(geoduck.norm[46:48], 1, cv)
LM67.cv<-apply(geoduck.norm[49:51], 1, cv)
LM68.cv<-apply(geoduck.norm[52:54], 1, cv)

geoduck.cv<-cbind(EF3.cv, EF4.cv, EF8.cv, MF34.cv, MF35.cv, MF38.cv, LF51.cv, LF69.cv, LF70.cv, EM2.cv, EM7.cv, EM9.cv, MM41.cv, MM42.cv, MM46.cv, LM65.cv, LM67.cv, LM68.cv)
write.csv(geoduck.cv, file='coefficient of variations for normalized intensities.csv')

#cvs across biological reps
EF.cv<-apply(geoduck.norm[1:9], 1, cv)
MF.cv<-apply(geoduck.norm[10:18], 1, cv)
LF.cv<-apply(geoduck.norm[19:27], 1, cv)
EM.cv<-apply(geoduck.norm[28:36], 1, cv)
MM.cv<-apply(geoduck.norm[37:45], 1, cv)
LM.cv<-apply(geoduck.norm[46:54], 1, cv)
biorep.cv<-cbind(EF.cv, MF.cv, LF.cv, EM.cv, MM.cv, LM.cv)

#boxplot of cvs for each dilution
boxplot(geoduck.cv, outline=T, names=c('EF3', 'EF4', 'EF8', 'MF34', 'MF35', 'MF38', 'LF51', 'LF69', 'LF70', 'EM2', 'EM7', 'EM9', 'MM41', 'MM42', 'MM46', 'LM65', 'LM67', 'LM68'), xlab='Geoduck Sample', ylab='Coefficient of Variation', las=2, ylim=c(0,300))

boxplot(biorep.cv, outline=T, names=c('EF', 'MF', 'LF', 'EM', 'MM', 'LM'), xlab='Geoduck Sample', ylab='Coefficient of Variation', las=2)