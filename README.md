# Structural Breaks and Extreme Events in Financial Markets

This repository includes the code used in the master's dissertation "Structural Breaks and Extreme Events in Financial Markets" by Khalil Belghouat.

In this thesis, an early warning system was built in order to predict turbulence in the Moroccan stock market and extract its leading indicators.

## Prerequisites

The ```R``` programming language, version 4.2.0, and its statistical and machine learning libraries were used to build all applied models. The ```R``` script _packages.R_ in the _packages_ folder installs and loads all necessary ```R``` packages. 

All operations, from data preprocessing to model estimation, were carried out on the Google Colaboratory platform.

## Theoretical Background

## Application and Results

This empirical study provides an econometric analysis aimed at highlighting the dynamics displayed by the Moroccan stock market during the period from January 2, 2002 to May 6 2022, in which major financial, health and geopolitical events such as the subprime mortgage and COVID-19 crises and more recently the Russian-Ukrainian war took place. In particular, we adapt dozens of models with specifications allowing the parameters of the underlying process to behave differently according to market conditions. The results obtained show that the three-regime GJR-GARCH model, representative of calm, volatile and turbulent states, providing the minimum Akaike information criterion, with a Student−t distribution proves to be the best fit to the data. In addition, we document that the tranquil regime is the most frequent for the entire period, while the dominant regime for both the global financial crisis and the COVID-19 outbreak is the turbulent regime, each reporting different levels of unconditional volatility and persistence. An interesting fact that we found is that the transition of the Moroccan stock market from a stable and calm state to a turbulent state is, in the short term, more likely to occur abruptly while the reverse is not true. Finally, we use a logit model to describe the probabilities of the turbulent regime. We show that the evolution of the exchange rate and commodity prices have a certain explanatory power.



## Code Structure

### About The Data

### Model Building and Estimation
