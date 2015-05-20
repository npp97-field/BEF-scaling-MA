# simple plot
library(sjPlot)
library(arm)

#0# choose the model to use
mod <- modBtrophic
mod <- modBasic

# make the caterpillar plot for Entry level coefs
cat.plot <- sjp.lmer(mod, type = 're', sort = "logSc", ri.nr = 1, fade.ns = TRUE, free.scale = TRUE, geom.colors = c(1, 1), showValueLabels = FALSE)

# make the caterpillar plot for ExptA level coefs
cat.plot <- sjp.lmer(mod, sort = "logSc", ri.nr = 2, fade.ns = TRUE, free.scale = TRUE, geom.colors = c(1, 1), showValueLabels = FALSE)

# make the caterpillar plot for Study level coefs
cat.plot <- sjp.lmer(mod, sort = "logSc", ri.nr = 3, fade.ns = TRUE, free.scale = TRUE, geom.colors = c(1, 1), showValueLabels = FALSE)

#this appears to maybe be just plotting ranefs based on expt-level random effects. 

## other plots
sjp.lmer(mod, type = "fe.cor")
sjp.lmer(mod, type = "re.qq")