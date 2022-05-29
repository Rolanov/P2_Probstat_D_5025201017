# NOMOR 1 
#a) Standar Deviasi
#ditemukan nilai sd adalah 6.360

data = read.csv("oksigen.csv")
data
#)b) nilai t (p-value)
t.test(data$Y, data$X, paired = TRUE)

#c) karena nilai t lebih besar dari nilai kritis t
# dengan tingkat signifikasi 5%, maka dapat disimpulkan
# bahwa H0 ditolak dan H1 diterima, yaitu terdapat
# pengaruh signifikan secara statistika dalam hal kadar
# saturasi oksigen sebelum dans esuah melakuan aktivitas A

# NOMOR 2
library(BSDA)

# lebih dari 20000km
# ukuran sampel (n) = 1000
# mean (x) = 23500
# sd = 3900
# H0 = miu <= 20000
# H1 = miu > 20000
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100,
          alternative = "greater", mu = 20000,
          conf.level = 0.95)

#a) Setuju, karena kesimpulan dari uji z menolak H0,
# sehingga mobil dikemudikan rata-rata lebih dari
# 20000 kilometer per tahun

#b) Output dari z test adalah, hipotesis alternatif
# alternative hypothesis: true mean is greater than 20000
# atau H1 diterima sehingga klaim benar. 

#c) P-value dari uji tes z adalah 2.2e-16 atau mendekati 0,
# dari hasil p-value tersebut hipotesis awal dapat ditolak
# dan H1 diterima.

# NOMOR 3 
library(BSDA)
library(mosaic)
#a) H0 dan H1
# H0 = (miu1 = miu2)
# H1 = (miu1 != miu2) 

#b) Sampel statistik menggunakan uji t
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y=2.79, s.y = 1.32, n.y = 27, 
          alternative = "two.sided", mu = 0, var.equal = TRUE,
          conf.level = 0.95)

#c) Uji statistik dengan df = 2
plotDist(dist ='t', df = 2, col="green")

#d) Nilai Kritikal
qt(p = 0.05, df = 2, lower.tail = FALSE)

#e) Keputusan
# Karena p-value < a , Hipotesis awal ditolak

#f) Kesimpulan
# Dengan tingkat keyakinan 95%, diyakini bahwa tidak terdapat 
# perbedaan rata-rata saham pada perusahaan di Bandung dan Bali.

# NOMOR 4
dataoneway <- read.table("onewayanova.txt",h=T)
attach(dataoneway)
names(dataoneway)

dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group = factor(dataoneway$Group,labels = c("Grup 1", "Grup 2", "Grup 3"))

class(dataoneway$Group)

#a) Pembagian menjadi 3 subjek grup dan membuat
# plot kuantil normal setiap kelompok

Group1 <- subset(dataoneway, Group == "Grup 1")
Group2 <- subset(dataoneway, Group == "Grup 2")
Group3 <- subset(dataoneway, Group == "Grup 3")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

#b) Mencari homogenity of variances
bartlett.test(Length ~ Group, data = dataoneway)

#One Way ANOVA - Test if the means of the k populations are equal
#c) Uji anova satu arah
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)

#d) nilai p adalah 0.8054, maka H0 ditolak

#e) Post-hoc test Tukey HSD
TukeyHSD(aov(model1))
# hasil dari test post-hoc model 1 adalah grup 1 lebih panjang
# dari grup yang lain
#Data visualisation

# NOMOR 5
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)
#a) plot sederhana
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

#variabel untuk anova
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

#b) uji anova dua arah
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

#c) tabel dengan mean dan standar deviasi keluaran cahaya
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# Tukey's test
print("Uji Tukey:")
tukey <- TukeyHSD(anova)
print(tukey)

# compact letter display
print("Compact Letter Display:")
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)