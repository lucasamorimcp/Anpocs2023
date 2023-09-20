
library(foreign)
library(readstata13)

mean_abortion_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Abortion",], FUN = mean)

mean_abortion_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Abortion",], FUN = mean)

mean_abortion_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Abortion",], FUN = mean)

abortion <- c(0.5985401,0.9119171,0.7812500)

mean_climate_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Climate_Change",], FUN = mean)

mean_climate_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Climate_Change",], FUN = mean)

mean_climate_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Climate_Change",], FUN = mean)

climate <- c(0.3082192,0.9611111,0.6250000)

mean_guns_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Guns_Background",], FUN = mean)

mean_guns_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Guns_Background",], FUN = mean)

mean_guns_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Guns_Background",], FUN = mean)

guns <- c(0.754491,0.9658537,0.8)

mean_health_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Health_Care",], FUN = mean)

mean_health_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Health_Care",], FUN = mean)

mean_health_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Health_Care",], FUN = mean)

health <- c(0.3333333,0.9476440,0.6944444)

mean_immigration_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Immigration",], FUN = mean)

mean_immigration_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Immigration",], FUN = mean)

mean_immigration_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Immigration",], FUN = mean)

immigration <- c(0.1538462,0.7880435,0.4666667)

mean_iran_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Iran_Agreement",], FUN = mean)

mean_iran_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Iran_Agreement",], FUN = mean)

mean_iran_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Iran_Agreement",], FUN = mean)

iran <- c(0.4460432,0.920904,0.6285714)

mean_wage_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Minimum_Wage",], FUN = mean)

mean_wage_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Minimum_Wage",], FUN = mean)

mean_wage_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Minimum_Wage",], FUN = mean)

wage <- c(0.4545455,0.9073171,0.5903614)

mean_planned_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Planned_Parenthood",], FUN = mean)

mean_planned_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Planned_Parenthood",], FUN = mean)

mean_planned_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Planned_Parenthood",], FUN = mean)

planned <- c(0.2012987,0.9351351,0.5479452)

mean_school_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "School_Guns",], FUN = mean)

mean_school_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "School_Guns",], FUN = mean)

mean_school_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "School_Guns",], FUN = mean)

school <- c(0.2156863,0.8128342,0.472973)

mean_tax_rep <- aggregate(cbind(Support) ~ republican, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Tax_Increase",], FUN = mean)

mean_tax_lib <- aggregate(cbind(Support) ~ democrat, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Tax_Increase",], FUN = mean)

mean_tax_ind <- aggregate(cbind(Support) ~ independent, Ideology_Trump[Ideology_Trump$self == 1 & Ideology_Trump$Question == "Tax_Increase",], FUN = mean)

tax <- c(0.5031847,0.9158416,0.6933333)

a <- c(.8, 1, 1.2)

plot(a, abortion, pch = c(15, 16, 17), axes = F, xlab = "Policy", ylab = "Average of Support for Liberal Policy", ylim = c(0, 1), col  = c("dark red", "dark blue", "dark green"), xlim = c(.7, 10.6), cex = 1.5, main = "Average Support for Policy by Party Identity")
points(a+1, climate, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
points(a+2, guns, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
points(a+3, health, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
points(a+4, immigration, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
points(a+5, iran, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
points(a+6, wage, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
points(a+7, planned, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
points(a+8, school, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
points(a+9, tax, pch = c(15, 16, 17), col  = c("dark red", "dark blue", "dark green"), cex = 1.5)
axis(1, at = c(1,2,3,4,5,6,7,8,9,10), labels = c("Abortion", "Climate Change", "Guns Background","Health Care","Immigration","Iran Agreement","Minimum Wage","Planned Parenthood","School Guns","Tax Increase"), cex.axis = .8)
axis(2, at = seq(0, 1, .05), las = 2, cex.axis = .8)
abline(h = 0.5, lty = 2)
abline(h = 0.75, lty = 2)
abline(h = 0.25, lty = 2)
abline(v = seq(1.5, 9.5, 1), lty = 2, col = "grey")
text(1, .886, "Democrats", cex = .7)
text(.8, .573, "Republicans", cex = .7)
text(1.2, .754, "Independents", cex = .7)
text(2, .936, "Democrats", cex = .7)
text(1.8, .283, "Republicans", cex = .7)
text(2.2, .600, "Independents", cex = .7)
text(3, .940, "Democrats", cex = .7)
text(2.8, .729, "Republicans", cex = .7)
text(3.2, .775, "Independents", cex = .7)
text(4, .922, "Democrats", cex = .7)
text(3.8, .308, "Republicans", cex = .7)
text(4.2, .669, "Independents", cex = .7)
text(5, .763, "Democrats", cex = .7)
text(4.8, .128, "Republicans", cex = .7)
text(5.2, .441, "Independents", cex = .7)
text(6, .895, "Democrats", cex = .7)
text(5.8, .421, "Republicans", cex = .7)
text(6.2, .603, "Independents", cex = .7)
text(7, .882, "Democrats", cex = .7)
text(6.8, .429, "Republicans", cex = .7)
text(7.2, .565, "Independents", cex = .7)
text(8, .910, "Democrats", cex = .7)
text(7.8, .176, "Republicans", cex = .7)
text(8.2, .522, "Independents", cex = .7)
text(9, .885, "Democrats", cex = .7)
text(8.8, .190, "Republicans", cex = .7)
text(9.2, .447, "Independents", cex = .7)
text(10, .890, "Democrats", cex = .7)
text(9.8, .478, "Republicans", cex = .7)
text(10.2, .668, "Independents", cex = .7)
box()

###############################################

#Abortion

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Abortion")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Abortion")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.abortion <- c(model2$coef[2], model2dem$coef[2])
conservative.se.abortion <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.abortion <- conservative.treat.abortion - 1.96*conservative.se.abortion
upper.cons.abortion <- conservative.treat.abortion + 1.96*conservative.se.abortion

#Climate_Change

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Climate_Change")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Climate_Change")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.climate <- c(model2$coef[2], model2dem$coef[2])
conservative.se.climate <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.climate <- conservative.treat.climate - 1.96*conservative.se.climate
upper.cons.climate <- conservative.treat.climate + 1.96*conservative.se.climate

#Guns_Background

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Guns_Background")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Guns_Background")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

#Health_Care

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Health_Care")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Health_Care")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.care <- c(model2$coef[2], model2dem$coef[2])
conservative.se.care <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.care <- conservative.treat.care - 1.96*conservative.se.care
upper.cons.care <- conservative.treat.care + 1.96*conservative.se.care

#Immigration

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Immigration")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Immigration")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.immigration <- c(model2$coef[2], model2dem$coef[2])
conservative.se.immigration <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.immigration <- conservative.treat.immigration - 1.96*conservative.se.immigration
upper.cons.immigration <- conservative.treat.immigration + 1.96*conservative.se.immigration

#Iran_Agreement

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Iran_Agreement")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Iran_Agreement")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.iran <- c(model2$coef[2], model2dem$coef[2])
conservative.se.iran <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.iran <- conservative.treat.iran - 1.96*conservative.se.iran
upper.cons.iran <- conservative.treat.iran + 1.96*conservative.se.iran

#Minimum_Wage

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Minimum_Wage")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Minimum_Wage")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.wage <- c(model2$coef[2], model2dem$coef[2])
conservative.se.wage <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.wage <- conservative.treat.wage - 1.96*conservative.se.wage
upper.cons.wage <- conservative.treat.wage + 1.96*conservative.se.wage

#Planned_Parenthood

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Planned_Parenthood")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Planned_Parenthood")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.planned <- c(model2$coef[2], model2dem$coef[2])
conservative.se.planned <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.planned <- conservative.treat.planned - 1.96*conservative.se.planned
upper.cons.planned <- conservative.treat.planned + 1.96*conservative.se.planned

#School_Guns

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "School_Guns")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "School_Guns")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.school <- c(model2$coef[2], model2dem$coef[2])
conservative.se.school <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.school <- conservative.treat.school - 1.96*conservative.se.school
upper.cons.school <- conservative.treat.school + 1.96*conservative.se.school

#Tax_Increase

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Tax_Increase")
model2 <- lm(Support ~ contrump, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$contrump == 1 | Ideology_Trump$self == 1) & 
                           Question == "Tax_Increase")
model2dem <- lm(Support ~ contrump, data = subset_dem_con)
summary(model2dem)

conservative.treat.tax <- c(model2$coef[2], model2dem$coef[2])
conservative.se.tax <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.tax <- conservative.treat.tax - 1.96*conservative.se.tax
upper.cons.tax <- conservative.treat.tax + 1.96*conservative.se.tax

a <- c(1,1.2)

plot(a, conservative.treat.abortion, pch = c(15, 16), axes = F, xlab = "Policy", ylab = "Increased Probability of Support for Liberal Policy", ylim = c(-0.5, 0.5), col  = c("dark red", "dark blue"), xlim = c(.7, 10.6), cex = 1.5, main = "Average Treatment Effect of Policy Cues (Consevative Trump)")
segments(x0 = a, y0 = lower.cons.abortion, x1 = a, y1 = upper.cons.abortion)
points(a+1, conservative.treat.climate, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+1, y0 = lower.cons.climate, x1 = a+1, y1 = upper.cons.climate)
points(a+2, conservative.treat.guns, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+2, y0 = lower.cons.guns, x1 = a+2, y1 = upper.cons.guns)
points(a+3, conservative.treat.care, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+3, y0 = lower.cons.care, x1 = a+3, y1 = upper.cons.care)
points(a+4, conservative.treat.immigration, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+4, y0 = lower.cons.immigration, x1 = a+4, y1 = upper.cons.immigration)
points(a+5, conservative.treat.iran, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+5, y0 = lower.cons.iran, x1 = a+5, y1 = upper.cons.iran)
points(a+6, conservative.treat.wage, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+6, y0 = lower.cons.wage, x1 = a+6, y1 = upper.cons.wage)
points(a+7, conservative.treat.planned, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+7, y0 = lower.cons.planned, x1 = a+7, y1 = upper.cons.planned)
points(a+8, conservative.treat.school, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+8, y0 = lower.cons.school, x1 = a+8, y1 = upper.cons.school)
points(a+9, conservative.treat.tax, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+9, y0 = lower.cons.tax, x1 = a+9, y1 = upper.cons.tax)
axis(1, at = c(1,2,3,4,5,6,7,8,9,10), labels = c("Abortion", "Climate Change", "Guns Background","Health Care","Immigration","Iran Agreement","Minimum Wage","Planned Parenthood","School Guns","Tax Increase"), cex.axis = .8)
axis(2, at = seq(-0.5, 0.5, .05), las = 2, cex.axis = .8)
abline(h = 0, lty = 2)
abline(v = seq(1.5, 9.5, 1), lty = 2, col = "grey")
text(1.2, -.04, "Democrats", cex = .7)
text(1, -.25, "Republicans", cex = .7)
box()

###############################################

#Abortion

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Abortion")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Abortion")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.abortion <- c(model2$coef[2] * (-1), model2dem$coef[2] * (-1))
conservative.se.abortion <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.abortion <- conservative.treat.abortion - 1.96*conservative.se.abortion
upper.cons.abortion <- conservative.treat.abortion + 1.96*conservative.se.abortion

#Climate_Change

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Climate_Change")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Climate_Change")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.climate <- c(model2$coef[2], model2dem$coef[2])
conservative.se.climate <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.climate <- conservative.treat.climate - 1.96*conservative.se.climate
upper.cons.climate <- conservative.treat.climate + 1.96*conservative.se.climate

#Guns_Background

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Guns_Background")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Guns_Background")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.guns <- c(model2$coef[2], model2dem$coef[2])
conservative.se.guns<- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.guns <- conservative.treat.guns - 1.96*conservative.se.guns
upper.cons.guns <- conservative.treat.guns + 1.96*conservative.se.guns

#Health_Care

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Health_Care")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Health_Care")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.care <- c(model2$coef[2], model2dem$coef[2])
conservative.se.care <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.care <- conservative.treat.care - 1.96*conservative.se.care
upper.cons.care <- conservative.treat.care + 1.96*conservative.se.care

#Immigration

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Immigration")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Immigration")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.immigration <- c(model2$coef[2] * (-1), model2dem$coef[2] * (-1))
conservative.se.immigration <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.immigration <- conservative.treat.immigration - 1.96*conservative.se.immigration
upper.cons.immigration <- conservative.treat.immigration + 1.96*conservative.se.immigration

#Iran_Agreement

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Iran_Agreement")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Iran_Agreement")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.iran <- c(model2$coef[2], model2dem$coef[2])
conservative.se.iran <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.iran <- conservative.treat.iran - 1.96*conservative.se.iran
upper.cons.iran <- conservative.treat.iran + 1.96*conservative.se.iran

#Minimum_Wage

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Minimum_Wage")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Minimum_Wage")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.wage <- c(model2$coef[2], model2dem$coef[2])
conservative.se.wage <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.wage <- conservative.treat.wage - 1.96*conservative.se.wage
upper.cons.wage <- conservative.treat.wage + 1.96*conservative.se.wage

#Planned_Parenthood

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Planned_Parenthood")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Planned_Parenthood")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.planned <- c(model2$coef[2], model2dem$coef[2])
conservative.se.planned <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.planned <- conservative.treat.planned - 1.96*conservative.se.planned
upper.cons.planned <- conservative.treat.planned + 1.96*conservative.se.planned

#School_Guns

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "School_Guns")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "School_Guns")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.school <- c(model2$coef[2], model2dem$coef[2])
conservative.se.school <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.school <- conservative.treat.school - 1.96*conservative.se.school
upper.cons.school <- conservative.treat.school + 1.96*conservative.se.school

#Tax_Increase

subset_rep_con <- subset(Ideology_Trump, republican == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Tax_Increase")
model2 <- lm(support_gop ~ gopleader, data = subset_rep_con)
summary(model2)

subset_dem_con <- subset(Ideology_Trump, democrat == 1 & 
                           (Ideology_Trump$gopleader == 1 | Ideology_Trump$self == 1) & 
                           Question == "Tax_Increase")
model2dem <- lm(support_gop ~ gopleader, data = subset_dem_con)
summary(model2dem)

conservative.treat.tax <- c(model2$coef[2], model2dem$coef[2])
conservative.se.tax <- c(coef(summary(model2))[, "Std. Error"][2], coef(summary(model2dem))[, "Std. Error"][2])
lower.cons.tax <- conservative.treat.tax - 1.96*conservative.se.tax
upper.cons.tax <- conservative.treat.tax + 1.96*conservative.se.tax

a <- c(1,1.2)

plot(a, conservative.treat.abortion, pch = c(15, 16), axes = F, xlab = "Policy", ylab = "Increased Probability of Support for Liberal Policy", ylim = c(-0.5, 0.5), col  = c("dark red", "dark blue"), xlim = c(.7, 10.6), cex = 1.5, main = "Average Treatment Effect of Policy Cues (Congressional Republicans)")
segments(x0 = a, y0 = lower.cons.abortion, x1 = a, y1 = upper.cons.abortion)
points(a+1, conservative.treat.climate, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+1, y0 = lower.cons.climate, x1 = a+1, y1 = upper.cons.climate)
points(a+2, conservative.treat.guns, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+2, y0 = lower.cons.guns, x1 = a+2, y1 = upper.cons.guns)
points(a+3, conservative.treat.care, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+3, y0 = lower.cons.care, x1 = a+3, y1 = upper.cons.care)
points(a+4, conservative.treat.immigration, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+4, y0 = lower.cons.immigration, x1 = a+4, y1 = upper.cons.immigration)
points(a+5, conservative.treat.iran, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+5, y0 = lower.cons.iran, x1 = a+5, y1 = upper.cons.iran)
points(a+6, conservative.treat.wage, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+6, y0 = lower.cons.wage, x1 = a+6, y1 = upper.cons.wage)
points(a+7, conservative.treat.planned, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+7, y0 = lower.cons.planned, x1 = a+7, y1 = upper.cons.planned)
points(a+8, conservative.treat.school, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+8, y0 = lower.cons.school, x1 = a+8, y1 = upper.cons.school)
points(a+9, conservative.treat.tax, pch = c(15, 16), col  = c("dark red", "dark blue"), cex = 1.5)
segments(x0 = a+9, y0 = lower.cons.tax, x1 = a+9, y1 = upper.cons.tax)
axis(1, at = c(1,2,3,4,5,6,7,8,9,10), labels = c("Abortion", "Climate Change", "Guns Background","Health Care","Immigration","Iran Agreement","Minimum Wage","Planned Parenthood","School Guns","Tax Increase"), cex.axis = .8)
axis(2, at = seq(-0.5, 0.5, .05), las = 2, cex.axis = .8)
abline(h = 0, lty = 2)
abline(v = seq(1.5, 9.5, 1), lty = 2, col = "grey")
text(1.2, -.01, "Democrats", cex = .7)
text(1, -.23, "Republicans", cex = .7)
box()

#######################################

#Regression

reg_trump <- data.frame(mean_difference = c(0.9119171-0.5985401,0.9611111-0.3082192,0.9658537-0.754491,
  0.9476440-0.3333333,0.920904-0.4460432,
  0.9073171-0.4545455,0.9351351-0.2012987,0.8128342-0.2156863,0.9158416-0.5031847),
estimate = c(0.19854,0.0005269,0.34708,0.10526,0.11877,0.11556,0.01164,0.01646,0.02242)
)

model1 <- lm(estimate~mean_difference, data=reg_trump)

library(sjPlot)
tab_model(model1, show.ci = F, auto.label = T, show.se = T, collapse.se = T, 
          wrap.labels = 60, p.style = "stars")

plot(reg_trump$mean_difference, reg_trump$estimate, xlab = "Mean Difference", ylab = "Estimate")
abline(lm(estimate ~ mean_difference, data = reg_trump), col = "dark blue")

reg_trump2 <- data.frame(mean_difference = c(0.9119171-0.5985401,0.9611111-0.3082192,0.9658537-0.754491,
                   0.9476440-0.3333333,0.7880435-0.1538462,0.920904-0.4460432,
                   0.9073171-0.4545455,0.9351351-0.2012987,0.8128342-0.2156863,0.9158416-0.5031847),
estimate = c(0.20335,0.05178,0.11584,6.305e-17,0.05854,0.07104,0.10367,0.02597,0.03886,0.003185)
)

model2 <- lm(estimate~mean_difference, data=reg_trump2)

tab_model(model2, show.ci = F, auto.label = T, show.se = T, collapse.se = T, 
          wrap.labels = 60, p.style = "stars")

plot(reg_trump2$mean_difference, reg_trump2$estimate, xlab = "Mean Difference", ylab = "Estimate")
abline(lm(estimate ~ mean_difference, data = reg_trump2), col = "dark blue")
