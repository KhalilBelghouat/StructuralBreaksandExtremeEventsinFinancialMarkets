# Structural Breaks and Extreme Events in Financial Markets

This repository includes the code used in the master's dissertation "Structural Breaks and Extreme Events in Financial Markets" by Khalil Belghouat.

In this thesis, an early warning system was built in order to predict turbulence in the Moroccan stock market and extract its leading indicators.

## Prerequisites

The ```R``` programming language, version 4.2.0, and its statistical and machine learning libraries were used to build all applied models. The ```R``` script _packages.R_ in the _packages_ folder installs and loads all necessary ```R``` packages. 

All operations, from data preprocessing to model estimation, were carried out on the Google Colaboratory platform.

## Theoretical Background

In the academic literature focusing on the determinants of various financial crises, the analysis of the evolution of volatility patterns is a central issue. In fact, financial instabilities are always associated with long periods characterized by highly fluctuating speculative prices, thus requiring econometric techniques that test for the presence of structural changes in the dynamics of stock market volatility. In addition to using the relevant patterns to identify different market conditions. The need to explain their appearance and to extract signals before their occurrence is increasingly important. Indeed, the rises and falls of several financial and economic variables serve as early warning indicators of stock market turbulence. In this thesis, we conduct a study in which an early warning system is proposed to timely predict turbulence in the Moroccan stock market. A Markov regime-switching model is developed to identify the different states of turbulence, calm and stability characterizing the Moroccan stock market. We are investigating whether the latter fits the data better than its single-regime counterpart. Finally, a logit model is estimated based on the transformed filtered probabilities of the Markov regime-switching model to predict the probability that the Moroccan stock market will be in a state of turbulence and to extract its leading indicators.

## Application and Results

This empirical study provides an econometric analysis aimed at highlighting the dynamics displayed by the Moroccan stock market during the period from January 2, 2002 to May 6 2022, in which major financial, health and geopolitical events such as the subprime mortgage and COVID-19 crises and more recently the Russian-Ukrainian war took place. In particular, we adapt dozens of models with specifications allowing the parameters of the underlying process to behave differently according to market conditions. The results obtained show that the three-regime GJR-GARCH model, representative of calm, volatile and turbulent states, providing the minimum Akaike information criterion, with a Student−t distribution proves to be the best fit to the data. In addition, we document that the tranquil regime is the most frequent for the entire period, while the dominant regime for both the global financial crisis and the COVID-19 outbreak is the turbulent regime, each reporting different levels of unconditional volatility and persistence. An interesting fact that we found is that the transition of the Moroccan stock market from a stable and calm state to a turbulent state is, in the short term, more likely to occur abruptly while the reverse is not true. Finally, we use a logit model to describe the probabilities of the turbulent regime. We show that the evolution of the exchange rate and commodity prices have a certain explanatory power.

## Code Structure

### About The Data

The _data_ folder contains the set of economic, financial and geopolitical time series that served in the construction of the early warning system each organized in a table tracking its evolution.

### Model Building and Estimation

The 72 Markov regime-switching and logistic regression models in this study were built using, respectively, the ```MSGARCH``` and ```glm2``` packages. The estimation procedure was done via the Maximum Likelihood technique.

