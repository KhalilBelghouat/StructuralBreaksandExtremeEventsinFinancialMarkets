# SUPPLEMENTARY CODE FOR THE MASTER THESIS: 
# Structural Breaks and Extreme Events in Financial Markets

# This script estimates different specifications of the Markov regime-switching GARCH(1, 1) via the ML method.

# Parallelizing code via The DoParallel package.
numCores <- detectCores() - 1
registerDoParallel(numCores)

# Model specification.
model <- list("sGARCH", "eGARCH", "gjrGARCH", "tGARCH")

# Error distribution.
distribution <- list("norm", "std", "ged", "snorm", "sstd", "sged")

# Model fit.
system.time({

ms3.garch.fit <- foreach(i = 1:length(model)) %:%

foreach(j = 1:length(distribution), .packages = c("MSGARCH")) %dopar% {

ms3.garch.spec <- CreateSpec(variance.spec = list(model = unlist(model[i])),
                             distribution.spec = list(distribution = unlist(distribution[j])),
                             switch.spec = list(K = 3))

try(FitML(spec = ms3.garch.spec, data = residuals))

}

})

# Model summary.
ms3.garch.fit