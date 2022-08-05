# SUPPLEMENTARY CODE FOR THE MASTER THESIS: 
# Structural Breaks and Extreme Events in Financial Markets

# This script builds an early warning system via a logit model.

# The filtered probabilities of the first volatility regime.
filtered.prob.regime.1 <- State(ms3.garch.fit[[3]][[2]])$FiltProb[, 1, 1, drop = TRUE]

# The filtered probabilities of the second volatility regime.
filtered.prob.regime.2 <- State(ms3.garch.fit[[3]][[2]])$FiltProb[, 1, 2, drop = TRUE]

# The filtered probabilities of the third volatility regime.
filtered.prob.regime.3 <- State(ms3.garch.fit[[3]][[2]])$FiltProb[, 1, 3, drop = TRUE]

# Transform the filtered probabilities of the turbulent state into a binary variable.
binary.dependent.variable <- ifelse(filtered.prob.regime.3 > 0.5, 1, 0) 
binary.dependent.variable <- zoo(binary.dependent.variable, index(MASI))

# Create a dataframe of endogenous and exogenous variables.
data <- merge(binary.dependent.variable, transaction.volume, EUR.MAD, bloomberg.commodity.price.index, real.estate.sector, banking.sector, log.GPR, all = FALSE)
data <- as.data.frame(data)

# Model fitting.
fit <- glm(binary.dependent.variable ~ EUR.MAD + bloomberg.commodity.price.index + transaction.volume + banking.sector + real.estate.sector + log.GPR, family = binomial(link = "logit"), data)

# Display estimation results.
summary(fit)