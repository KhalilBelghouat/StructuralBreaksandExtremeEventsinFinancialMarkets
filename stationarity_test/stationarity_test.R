# SUPPLEMENTARY CODE FOR THE MASTER THESIS: 
# Structural Breaks and Extreme Events in Financial Markets

# This script applies multiple stationarity tests to the MASI data.

# Augmented Dickey-Fuller test.
adf.test <- adf.test(log.returns)

# Kwiatkowski-Phillips-Schmidt-Shin test.
kpss.test <- kpss.test(log.returns)

# Phillips-Perron test.
pp.test <- pp.test(log.returns)