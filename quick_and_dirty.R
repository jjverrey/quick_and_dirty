getwd()
masterData <- read.csv("v2_mover_date_master.csv")

View(masterData)





plot(total_elapsed_time/100 ~ I(first_half_sec_half_improvement * 1000), data = masterData,
     main = "Completion Time vs. Learning", ylab = "Completoin Time (s)",
     xlab = "Speed improvement from first half to second half (checkpoints/sec) * 1000")summary(regression)
abline(regression)
regression <- lm(total_elapsed_time/100 ~ I(first_half_sec_half_improvement * 1000),
                 , data = masterData)
summary(regression)
abline(regression)
regression <- lm(total_elapsed_time/100 ~ I(first_half_sec_half_improvement * 1000),
                 data = masterData)
summary(regression)
abline(regression)
abline(h = mean(masterData$total_elapsed_time/100))
#speed z-score
cor(masterData$completion_time, masterData$total_elapsed_time)
#speed z-score
masterData$completion_time_z <-
  (masterData$completion_time - mean(masterData$completion_time))/sd(masterData$completion_time)
summary(masterData$completion_time_z)
# - a) Cash bonus vs. time: is it accurate?
plot(completion_time_z ~ cash_bonus, data = masterData, ylab = "Completoin Time (s)",
     main = "Completion Time vs. Cash Bonus", xlab = "Cash bonus")
# - a) Cash bonus vs. time: is it accurate?
plot(completion_time ~ cash_bonus, data = masterData, ylab = "Completoin Time (s)",
     main = "Completion Time vs. Cash Bonus", xlab = "Cash bonus")
regression <- lm(total_elapsed_time/100 ~ cash_bonus, data = masterData)
summary(regression)
abline(regression)
#Total Avg Speed Zs
masterData$total_avg_speed_z <-
  (masterData$total_avg_speed - mean(masterData$total_avg_speed))/sd(masterData$total_avg_speed)
summary(masterData$total_avg_speed_z)
masterData$first_half_sec_half_improvement_z <-
  (masterData$first_half_sec_half_improvement -
     mean(masterData$first_half_sec_half_improvement))/sd(masterData$first_half_sec_half_improvement)
summary(masterData$first_half_sec_half_improvement_z)
#Let's see the z-scores
plot(completion_time_z ~ cash_bonus, data = masterData, ylab = "Completoin Time (s)",
     main = "Completion Time vs. Cash Bonus", xlab = "Cash bonus")
plot(completion_time_z ~ total_avg_speed_z, data = masterData,
     main = "Completion Time Zs vs. Avg Speed Zs", ylab = "Completoin Time Zs",
     xlab = "Avg Speed Zs")
regression <- lm(completion_time_z ~ total_avg_speed_z, data = masterData)
summary(regression)
abline(regression)
abline(v = 0)
abline(h = 0)
abline(v = 0, col = "grey")
abline(h = 0, col = "grey")
abline(h = 0, col = "gray")
abline(regression)
# - a) Is speed a good predicter?
plot(total_elapsed_time/100 ~ I(total_avg_speed * 1000), data = masterData,
     main = "Completion Time vs. Overall Avg Speed", ylab = "Completoin Time (s)",
     xlab = "Avg Speed (checkpoints/sec) * 1000")
#Let's look at the Zs.
plot(completion_time_z ~ total_avg_speed_z, data = masterData,
     main = "Completion Time Zs vs. Avg Speed Zs", ylab = "Completoin Time Zs",
     xlab = "Avg Speed Zs")
plot(completion_time_z ~ first_half_sec_half_improvement_z, data = masterData,
     main = "Completion Time vs. Learning Zs", ylab = "Completoin Time Zs",
     xlab = "Speed improvement from first half to second half Zs")
regression <- lm(completion_time_z ~ first_half_sec_half_improvement_z,
                 data = masterData)
summary(regression)
abline(v = 0, col = "grey")
abline(h = 0, col = "gray")
abline(regression)
# --- 3) Practice Time, Pixel Movement, & Final Speed
plot(completion_time ~ maze_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
# --- 3) Practice Time, Pixel Movement, & Final Speed (efficiency)
plot(completion_time ~ maze_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
# --- 3) Practice Time, Pixel Movement, & Final Speed (efficiency)
plot(completion_time ~ maze_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
# --- 3) Practice Time, Pixel Movement, & Final Speed (efficiency)
plot(completion_time ~ maze_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
regression <- lm(completion_time ~ maze_total_pixel_movement,
                 data = masterData)
summary(regression)
abline(regression)
plot(completion_time ~ Practice_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Practice", ylab = "Completoin Time (s)",
     xlab = "Amount of practice (total pixel movement)")
#Does total practice (pixel movement) predict maze performance?
plot(completion_time ~ practice_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Practice", ylab = "Completoin Time (s)",
     xlab = "Amount of practice (total pixel movement)")
regression <- lm(completion_time ~ practice_total_pixel_movement,
                 data = masterData)
summary(regression)
abline(regression)
regression <- lm(completion_time ~ practice_time,
                 data = masterData)
#Does total practice (seconds) predict maze performance?
plot(completion_time ~ practice_time, data = masterData,
     main = "Completion Time vs. Practice (time)", ylab = "Completoin Time (s)",
     xlab = "Amount of practice (s)")
regression <- lm(completion_time ~ practice_time, data = masterData)
summary(regression)
#Does total practice (seconds) predict maze performance?
plot(completion_time ~ (practice_time/100), data = masterData,
     main = "Completion Time vs. Practice (time)", ylab = "Completoin Time (s)",
     xlab = "Amount of practice (s)")
regression <- lm(completion_time ~ (practice_time/100), data = masterData)
#Does total practice (seconds) predict maze performance?
plot(completion_time ~ I(practice_time/100), data = masterData,
     main = "Completion Time vs. Practice (time)", ylab = "Completoin Time (s)",
     xlab = "Amount of practice (s)")
regression <- lm(completion_time ~ I(practice_time/100), data = masterData)
summary(regression)
abline(regression)
par(mfrow = c(1,2))
boxplot(masterData$total_elapsed_time/100, ylab = "Completion Time (s)", ylim = c(0, 200),
        main = "Distribution of completion time")
hist(masterData$total_elapsed_time/100, xlab = "Time (s)", xlim = c(0, 400), breaks = 20,
     main = "Time vs. frequency")
abline(v=median(masterData$total_elapsed_time/100))
par(mfrow = c(1,1))
par(mfrow = c(1,2))
boxplot(masterData$total_elapsed_time/100, ylab = "Completion Time (s)", ylim = c(0, 200),
        main = "Distribution of completion time")
hist(masterData$total_elapsed_time/100, xlab = "Time (s)", xlim = c(0, 200), breaks = 20,
     main = "Time vs. frequency")
abline(v=median(masterData$total_elapsed_time/100))
par(mfrow = c(1,1))
boxplot(masterData$completion_time ~ masterData$start_from_center,
        main = "Completion times by starting position", names = c("Peripheral", "Center"),
        xlab = "Starting pos", ylab = "Completion time (s)")
t.test(total_elapsed_time ~ start_from_center, data = masterData)
t.test(total_elapsed_time/100 ~ start_from_center, data = masterData)
plot(completion_time_z ~ total_avg_speed_z, data = masterData,
     main = "Completion Time Zs vs. Avg Speed Zs", ylab = "Completoin Time Zs",
     xlab = "Avg Speed Zs")
regression <- lm(completion_time_z ~ total_avg_speed_z, data = masterData)
summary(regression)
abline(v = 0, col = "grey")
abline(h = 0, col = "gray")
abline(regression)
plot(completion_time_z ~ first_half_sec_half_improvement_z, data = masterData,
     main = "Completion Time vs. Learning Zs", ylab = "Completoin Time Zs",
     xlab = "Speed improvement from first half to second half Zs")
regression <- lm(completion_time_z ~ first_half_sec_half_improvement_z,
                 data = masterData)
summary(regression)
abline(v = 0, col = "grey")
abline(h = 0, col = "gray")
abline(regression)
plot(completion_time ~ maze_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
regression <- lm(completion_time ~ maze_total_pixel_movement,
                 data = masterData)
summary(regression)
abline(regression)
plot(completion_time ~ maze_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
regression <- lm(completion_time ~ maze_total_pixel_movement,
                 data = masterData)
summary(regression)
abline(regression)
plot(completion_time ~ total_elapsed_time, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
plot(completion_time ~ total_reset_count, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
plot(completion_time ~ total_reset_count, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Total reset count")
regression <- lm(completion_time ~ total_reset_count,
                 data = masterData)
summary(regression)
abline(regression)
#--a) Does total practice (seconds) predict maze performance?
plot(completion_time ~ I(practice_time/100), data = masterData,
     main = "Completion Time vs. Practice (time)", ylab = "Completoin Time (s)",
     xlab = "Amount of practice (s)")
regression <- lm(completion_time ~ I(practice_time/100), data = masterData)
summary(regression)
abline(regression)
par(mfrow = c(1,2))
plot(completion_time ~ I(practice_time/100), data = masterData,
     main = "Completion Time vs. Practice (time)", ylab = "Completoin Time (s)",
     xlab = "Amount of practice (s)")
regression <- lm(completion_time ~ I(practice_time/100), data = masterData)
summary(regression)
abline(regression)
#No way! The longer people take to practice, the worst they do, by about 1 second!
#--b) Does total practice (pixel movement) predict maze performance?
plot(completion_time ~ practice_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Practice (pixel)", ylab = "Completoin Time (s)",
     xlab = "Amount of practice (total pixel movement)")
regression <- lm(completion_time ~ practice_total_pixel_movement,
                 data = masterData)
summary(regression)
abline(regression)
par(mfrow = c(1,1))
multi_var_regr <- lm(masterData$completion_time ~ masterData$total_avg_speed)
coef(multi_var_regr)
# - a) Cash bonus
boxplot(masterData$cash_bonus, ylab = "Bonus ($)", ylim = c(0, 2))
plot(completion_time ~ cash_bonus, data = masterData, ylab = "Completoin Time (s)",
     main = "Completion Time vs. Cash Bonus", xlab = "Cash bonus")
regression <- lm(total_elapsed_time/100 ~ cash_bonus, data = masterData)
summary(regression)
abline(regression)
plot(completion_time_z ~ cash_bonus, data = masterData, ylab = "Completoin Time (s)",
     main = "Completion Time vs. Cash Bonus", xlab = "Cash bonus")
par(mfrow = c(1,2))
boxplot(masterData$total_elapsed_time/100, ylab = "Completion Time (s)", ylim = c(0, 200),
        main = "Distribution of completion time")
hist(masterData$total_elapsed_time/100, xlab = "Time (s)", xlim = c(0, 200), breaks = 20,
     main = "Time vs. frequency")
abline(v=median(masterData$total_elapsed_time/100))
par(mfrow = c(1,1))
boxplot(masterData$completion_time ~ masterData$start_from_center,
        main = "Completion times by starting position", names = c("Peripheral", "Center"),
        xlab = "Starting pos", ylab = "Completion time (s)")
t.test(total_elapsed_time/100 ~ start_from_center, data = masterData)
# is starting position counterbalanced?
table(masterData$start_from_center)
plot(completion_time ~ maze_total_pixel_movement, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Maze total pixel movement")
regression <- lm(completion_time ~ maze_total_pixel_movement,
                 data = masterData)
summary(regression)
abline(regression)
plot(completion_time ~ total_reset_count, data = masterData,
     main = "Completion Time vs. Total pixel movement", ylab = "Completoin Time (s)",
     xlab = "Total reset count")
regression <- lm(completion_time ~ total_reset_count,
                 data = masterData)
summary(regression)
abline(regression)
multi_var_regr <- lm(masterData$completion_time ~ I(masterData$total_avg_speed * 1000))
coef(multi_var_regr)
multi_var_regr <- lm(completion_time ~ I(total_avg_speed * 1000), data = masterData)
multi_var_regr <- lm(completion_time ~ masterData$total_avg_speed_z, data = masterData)
coef(multi_var_regr)
mean(masterData$completion_time)
multi_var_regr <- lm(completion_time ~ total_avg_speed_z + first_half_sec_half_improvement_z, data = masterData)
coef(multi_var_regr)
multi_var_regr <- lm(completion_time ~ first_half_sec_half_improvement_z, data = masterData)
coef(multi_var_regr)
plot(y = masterData$completion_time, x = masterData$first_half_sec_half_improvement_z)
multi_var_regr <- lm(completion_time ~ completion+time+z +
                       first_half_sec_half_improvement_z, data = masterData)
multi_var_regr <- lm(completion_time ~ completion_time_z +
                       first_half_sec_half_improvement_z, data = masterData)
plot(y = masterData$completion_time, x = masterData$first_half_sec_half_improvement_z)
multi_var_regr <- lm(completion_time ~ completion_time_z +
                       first_half_sec_half_improvement_z, data = masterData)
multi_var_regr <- lm(completion_time ~ completion_time_z +
                       first_half_sec_half_improvement_z, data = masterData)
multi_var_reg
multi_var_regr <- lm(completion_time ~ masterData$total_avg_speed_z +
                       first_half_sec_half_improvement_z, data = masterData)
multi_var_reg
multi_var_regr <- lm(completion_time ~ total_avg_speed_z +
                       first_half_sec_half_improvement_z, data = masterData)
multi_var_reg
multi_var_regr
multi_var_regr <- lm(completion_time ~ total_avg_speed_z +
                       first_half_sec_half_improvement_z +
                       total_reset_count + maze_total_pixel_movement, data = masterData)
summary(multi_var_regr)
perf_regr <- lm(completion_time ~ total_avg_speed_z +
                  first_half_sec_half_improvement_z +
                  total_reset_count + maze_total_pixel_movement, data = masterData)
summary(perf_regr)
# -- 1) Did not switching hurt performance?
mean(masterData$noswitch_impact)
# -- 1) Did not switching hurt performance?
boxplot(masterData$noswitch_impact)
# -- 1) Did not switching hurt performance?
barplot(masterData$noswitch_impact])
# -- 1) Did not switching hurt performance?
barplot(masterData$noswitch_impact)
# -- 1) Did not switching hurt performance?
table(masterData$noswitch_impact)
# -- 1) Did not switching hurt performance?
barplot(table.prop(table(masterData$noswitch_impact)))
# -- 1) Did not switching hurt performance?
barplot(prop.table(table(masterData$noswitch_impact)))
# -- 1) Did not switching hurt performance?
barplot(prop.table(table(masterData$noswitch_impact)), ylab = "% of respondents",
        xlab = "Affect of not switching on performance")
# -- 0) Recode some variables
masterData[masterData$switch_goodbad == "No, we should not have switched roles",] <- 0
View(masterData)
masterData <- read.csv("v2_mover_date_master.csv")
#Completion Time z-score
masterData$completion_time_z <-
  (masterData$completion_time - mean(masterData$completion_time))/sd(masterData$completion_time)
#Total Avg Speed Zs
masterData$total_avg_speed_z <-
  (masterData$total_avg_speed - mean(masterData$total_avg_speed))/sd(masterData$total_avg_speed)
#Learning Metric
masterData$first_half_sec_half_improvement <- masterData$second_halv_avg_speed - masterData$first_half_avg_speed
#Learning Metric Zs
masterData$first_half_sec_half_improvement_z <-
  (masterData$first_half_sec_half_improvement -
     mean(masterData$first_half_sec_half_improvement))/sd(masterData$first_half_sec_half_improvement)
# -- 0) Recode some variables
View(masterData)
barplot(prop.table(table(masterData$noswitch_impact)), ylab = "% of respondents",
        xlab = "Effect of not switching on performance")
barplot(prop.table(table(masterData$switch_goodbad)), ylab = "% of respondents")
?barplto
?barplot
barplot(prop.table(table(masterData$switch_goodbad)), ylab = "% of respondents",
        xlab = "Did switching help performance?", names.arg = c("No, Yes"))
barplot(prop.table(table(masterData$switch_goodbad)), ylab = "% of respondents",
        xlab = "Did switching help performance?", names.arg = c("No", "Yes"))
par(mfrow=c(2,2))
barplot(prop.table(table(masterData$noswitch_impact)), ylab = "% of respondents",
        main = "How much was your performance helped/hurt by not switching?",
        xlab = "Effect of not switching on performance")
barplot(prop.table(table(masterData$switch_goodbad)), ylab = "% of respondents",
        xlab = "Should you have switched?", names.arg = c("No", "Yes"),
        main = "To maximize your bonus, should you have switched?")
?barplot
# --a) Let's first look at what they said...
par(mfrow=c(1,2))
barplot(prop.table(table(masterData$noswitch_impact)), ylab = "% of respondents",
        main = "How much was your performance helped/hurt by not switching?",
        xlab = "Effect of not switching on performance")
barplot(prop.table(table(masterData$switch_goodbad)), ylab = "% of respondents",
        xlab = "Should you have switched?", names.arg = c("No", "Yes"),
        main = "To maximize your bonus, should you have switched?")
par(mfrow = c(1,1))
prop.table(table(masterData$noswitch_impact)
           barplot(prop.table(table(masterData$switch_goodbad)), ylab = "% of respondents",
                   xlab = "Should you have switched?", names.arg = c("No", "Yes"),
                   main = "To maximize your bonus, should you have switched?")
           #Use the [-5,5] metric
           switch_on_perf_self_report <- prop.table(table(masterData$noswitch_impact))
           #Let's see the
           switch_on_perf_self_report
           cbind(switch_on_perf_self_report, switch_on_perf_self_report[, 1:5])
           cbind(switch_on_perf_self_report, switch_on_perf_self_report[, 1:2])
           cbind(switch_on_perf_self_report, switch_on_perf_self_report[1:5, 6, 7:11])
           #Let's see the
           switch_on_perf_self_report
           switch_on_perf_self_report[0:5]
           colsums(switch_on_perf_self_report[0:5])
           colsums(switch_on_perf_self_report[0:5])
           colSums(switch_on_perf_self_report[0:5])
           sum(switch_on_perf_self_report[0:5])
           #Effect of switching hurt performance
           sum(switch_on_perf_self_report[0:5])
           sum(switch_on_perf_self_report[6:11])
           sum(switch_on_perf_self_report[7:11])
           switch_on_perf_self_report[6]
           barplot(prop.table(table(masterData$switch_goodbad)), ylab = "% of respondents",
                   xlab = "Should you have switched?", names.arg = c("No", "Yes"),
                   main = "To maximize your bonus, should you have switched?")
           barplot(prop.table(table(masterData$switch_goodbad)), ylab = "% of respondents",
                   xlab = "Should you have switched?", names.arg = c("No", "Yes"),
                   main = "To maximize your bonus, should you have switched?")
           # -- 0) Recode some variables
           masterDataCopy <- masterData
           masterDataCopy$self_skill_avg [masterDataCopy$self_skill_avg == "I am about as skilled as most people"] <- 0
           # -- 0) Recode some variables
           masterDataCopy <- masterData
           masterDataCopy$self_skill_avg_q <- NA
           masterDataCopy$self_skill_avg_q[masterDataCopy$self_skill_avg == "I am about as skilled as most people"] <- 0
           masterDataCopy$self_skill_avg_q <- NA
           masterDataCopy$self_skill_avg_q[masterDataCopy$self_skill_avg == "I am about as skilled as most people"] <- 1
           masterDataCopy$self_skill_avg_q[masterDataCopy$self_skill_avg == "I am more skilled than most people"] <- 2
           masterDataCopy$self_skill_avg_q[masterDataCopy$self_skill_avg == "I am less skilled as most people"] <- 0
           View(masterDataCopy)
           masterData$self_skill_avg_q <- NA
           masterData$self_skill_avg_q[masterData$self_skill_avg == "I am about as skilled as most people"] <- 1
           masterData$self_skill_avg_q[masterData$self_skill_avg == "I am more skilled than most people"] <- 2
           masterData$self_skill_avg_q[masterData$self_skill_avg == "I am less skilled as most people"] <- 0
           View(masterData)
           masterData$self_skill_avg_q[masterData$self_skill_avg == "I am less skilled than most people"] <- 0
           View(masterData)
           masterData$self_skill_avg_q <- NA
           masterData$self_skill_avg_q[masterData$self_skill_avg == "I am less skilled than most people"] <- -1
           masterData$self_skill_avg_q[masterData$self_skill_avg == "I am about as skilled as most people"] <- 0
           masterData$self_skill_avg_q[masterData$self_skill_avg == "I am more skilled than most people"] <- 1
           masterData$partner_skill_avg_q <- NA
           masterData$partner_skill_avg_q[masterData$partner_skill_avg_q == "They are less skilled than most people"] <- -1
           masterData$partner_skill_avg_q[masterData$partner_skill_avg_q == "They are about as skilled as most people"] <- 0
           masterData$partner_skill_avg_q[masterData$partner_skill_avg_q == "They are more skilled than most people"] <- 1
           mean(masterData$partner_skill_avg_q)
           mean(masterData$self_skill_avg)
           mean(masterData$self_skill_avg_q)
           masterData$partner_skill_avg_q <- NA
           masterData$partner_skill_avg_q[masterData$partner_skill_avg == "They are less skilled than most people"] <- -1
           masterData$partner_skill_avg_q[masterData$partner_skill_avg == "They are about as skilled as most people"] <- 0
           masterData$partner_skill_avg_q[masterData$partner_skill_avg == "They are more skilled than most people"] <- 1
           mean(masterData$partner_skill_avg_q)
           mean(masterData$self_skill_avg_q)
           masterData$partner_skill_you_q <- NA
           masterData$partner_skill_you_q[masterData$partner_skill_you == "They are less skilled than most me"] <- -1
           masterData$partner_skill_you_q[masterData$partner_skill_you == "They are about as skilled as most me"] <- 0
           masterData$partner_skill_you_q[masterData$partner_skill_you == "They are more skilled than me"] <- 1
           mean(masterData$partner_skill_you_q)
           View(masterData$partner_skill_you_q)
           View(masterData)
           masterData$partner_skill_you_q <- NA
           masterData$partner_skill_you_q[masterData$partner_skill_you == "They are less skilled than me"] <- -1
           masterData$partner_skill_you_q[masterData$partner_skill_you == "They are about as skilled as me"] <- 0
           masterData$partner_skill_you_q[masterData$partner_skill_you == "They are more skilled than me"] <- 1
           mean(masterData$partner_skill_you_q)
           masterData$switch_thinking_q <- NA
           masterData$switch_thinking_q[masterData$switch_thinking == "Never"] <- 0
           masterData$switch_thinking_q[masterData$switch_thinking == "Some of the time"] <- 1
           masterData$switch_thinking_q[masterData$switch_thinking == "About half the time"] <- 2
           masterData$switch_thinking_q[masterData$switch_thinking == "Most of the time"] <- 3
           masterData$switch_thinking_q[masterData$switch_thinking == "The entire time"] <- 4
           mean(masterData$switch_thinking_q)
           #Use the [-5,5] metric
           switch_on_perf_self_report <- prop.table(table(masterData$noswitch_impact))
           barplot(prop.table(table(masterData$noswitch_impact)), ylab = "% of respondents",
                   main = "How much was your performance helped/hurt by not switching?",
                   xlab = "Effect of not switching on performance")
           boxplot(masterData$noswitch_impact)
           par(mfrow=c(1,2))
           switch_on_perf_self_report <- prop.table(table(masterData$noswitch_impact))
           barplot(prop.table(table(masterData$noswitch_impact)), ylab = "% of respondents",
                   main = "How much was your performance helped/hurt by not switching?",
                   xlab = "Effect of not switching on performance")
           boxplot(masterData$noswitch_impact, main = "Distribution")
           par(mfrow=c(1,1))
           # Assign them to a catagory based on their skill level
           masterData$skill_catagory <- NA
           plot(completion_time_z, completion_time, data = masterData)
           plot(masterData$completion_time, masterData$completion_time_z)
           abline(v=60)
           abline(v=65)
           mean(masterData$completion_time)
           (65-mean(masterData$completion_time))/sd(masterData$completion_time)
           abline(h=0)
           plot(masterData$completion_time, masterData$completion_time_z)
           masterData$skill_catagory[masterData$completion_time_z <= -2] <- "ERROR" #IMPOSSIBLE to get a score this good!
           masterData$skill_catagory[masterData$completion_time_z <= -1 & masterData$completion_time_z > -2] <- "-2_SD"
           masterData$skill_catagory[masterData$completion_time_z <= 0 & masterData$completion_time_z > -1] <- "-1_SD"
           masterData$skill_catagory[masterData$completion_time_z > 0 & masterData$completion_time_z < 1] <- "1_SD"
           masterData$skill_catagory[masterData$completion_time_z >= 1 & masterData$completion_time_z < 2] <- "2_SD"
           masterData$skill_catagory[masterData$completion_time_z >= 2] <- "3_SD"
           table(masterData$skill_catagory)
           # Assign them to a catagory based on their skill level. Remember: negative SDs = better performance
           masterData$skill_catagory <- factor(c("ERROR", "-2_SD", "-1_SD", "1_SD", "2_SD", "3_SD"))
           masterData$skill_catagory[masterData$completion_time_z <= -2] <- "ERROR" #IMPOSSIBLE to get a score this good!
           masterData$skill_catagory[masterData$completion_time_z <= -1 & masterData$completion_time_z > -2] <- "-2_SD"
           masterData$skill_catagory[masterData$completion_time_z <= 0 & masterData$completion_time_z > -1] <- "-1_SD"
           masterData$skill_catagory[masterData$completion_time_z > 0 & masterData$completion_time_z < 1] <- "1_SD"
           masterData$skill_catagory[masterData$completion_time_z >= 1 & masterData$completion_time_z < 2] <- "2_SD"
           masterData$skill_catagory[masterData$completion_time_z >= 2] <- "3_SD"
           masterData$skill_catagory <- relevel(masterData$skill_catagory,
                                                levels = c("ERROR", "-2_SD", "-1_SD", "1_SD", "2_SD", "3_SD"))
           masterData$skill_catagory <- relevel(masterData$skill_catagory, "-2_SD")
           des(masterData$skill_catagory)
           masterData$skill_catagory <- as.factor(masterData$skill_catagory)
           masterData$skill_catagory <- relevel(masterData$skill_catagory, "-2_SD")
           table(masterData$skill_catagory)
           # -- 2) Are people good judges of their performance?
           plot(x = masterData$skill_catagory, y = masterData$)
           # -- 2) Are people good judges of their performance?
           plot(x = masterData$skill_catagory, y = masterData$self_skill_avg)
           # -- 2) Are people good judges of their performance?
           plot(x = masterData$skill_catagory, y = masterData$self_skill_avg_q)
           # -- 2) Are people good judges of their performance?
           boxplot(masterData$self_skill_avg_q ~ masterData$skill_catagory)
           ox
           # -- 2) Are people good judges of their performance?
           boxplot(masterData$self_skill_avg_q ~ masterData$skill_catagory)
           table(masterData$self_skill_avg)
           # -- 2) Are people good judges of their performance?
           boxplot(masterData$self_skill_avg_q ~ masterData$skill_catagory, xlab = "Skill catagory",
                   ylab="Skill lvl compared to partner")
           table(masterData$self_skill_avg)
           boxplot(masterData$self_skill_avg_q ~ masterData$skill_catagory, xlab = "Skill catagory",
                   ylab="Skill lvl compared to partner", main = "Am I good at the maze?")
           #better_on_own: How much better would you be on your own (METRIC)? Absolute vs. present
           masterData$better_on_own_seconds <- masterData$completion_time - masterData$perf_self_solo
           masterData$better_on_own_percent <- (1 - masterData$perf_self_solo/masterData$completion_time) * 100
           View(masterData)
           masterData$better_on_own_percent <- round((1 - masterData$perf_self_solo/masterData$completion_time) * 100, 2)
           #better_on_own: How much better would you be on your own (METRIC)? Absolute vs. present
           masterData$better_on_own_seconds <- masterData$completion_time - masterData$perf_self_solo
           masterData$better_on_own_percent <- round((1 - masterData$perf_self_solo/masterData$completion_time) * 100, 2)
           masterData$myself_average_comparison_seconds <- masterData$completion_time - masterData$perf_avg_pair
           masterData$myself_average_comparison_percent <- round((1 - masterData$perf_avg_pair/masterData$completion_time) * 100, 2)
           View(masterData)
           # - a) Are people good judges of their performance?
           factors(masterData$self_skill_avg)
           # - a) Are people good judges of their performance?
           Table(masterData$self_skill_avg)
           # - a) Are people good judges of their performance?
           table(masterData$self_skill_avg)
           boxplot(masterData$self_skill_avg_q ~ masterData$skill_catagory,
                   xlab = "Skill catagory (lower = better)", ylab="Skill lvl compared to most people",
                   main = "Am I good at the maze?")
           # - a) Are people good judges of their performance? Metric approach.
           boxplot(masterData$self_skill_avg_q ~ masterData$skill_catagory,
                   xlab = "Skill catagory (lower = better)", ylab="Skill lvl compared to most people",
                   main = "Am I good at the maze compared to most people?")
           