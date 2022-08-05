# SUPPLEMENTARY CODE FOR THE MASTER THESIS: 
# Structural Breaks and Extreme Events in Financial Markets

# This script applies the Jarque-Bera normality test to the MASI data.

# Jarque-Bera normality test.
jarque.bera.test <- jarque.bera.test(log.returns)