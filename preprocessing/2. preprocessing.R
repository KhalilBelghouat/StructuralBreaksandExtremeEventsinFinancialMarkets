# SUPPLEMENTARY CODE FOR THE MASTER THESIS: 
# Structural Breaks and Extreme Events in Financial Markets

# This script passes the exogenous data through important preprocessing steps.

# Importing banking sector data.
sector.index <- read.csv("Banking Sector Index.csv")
sector.index.Date <- as.Date(sector.index$`SÃ.ance`, "%d/%m/%Y")
banking.sector.index <- zoo(sector.index$Instrument, sector.index.Date)

# Extracting the log-returns of the index and transform them into a zoo object.
log.returns <- diff(log(sector.index$Instrument))*100
log.returns.Date <- banking.sector.index.Date[-1]
banking.sector <- zoo(log.returns, log.returns.Date)

# Importing real estate sector data.
sector.index <- read.csv("Real Estate Sector Index.csv")
sector.index.Date <- as.Date(sector.index$`SÃ.ance`, "%d/%m/%Y")
real.estate.sector.index <- zoo(sector.index$Instrument, sector.index.Date)

# Extracting the log-returns of the index and transform them into a zoo object.
log.returns <- diff(log(sector.index$Instrument))*100
log.returns.Date <- real.estate.sector.index.Date[-1]
real.estate.sector <- zoo(log.returns, log.returns.Date)

# Importing Bloomberg's commodity price data.
commodity.price.index <- read.csv("Commodity Price Index.csv")
commodity.price.index <- commodity.price.index %>% map_df(rev)
commodity.price.index.Date <- mdy(commodity.price.index$Date)
commodity.index <- zoo(commodity.price.index$Close, commodity.price.index.Date)

# Extracting the log-returns of the index and transform them into a zoo object.
log.returns <- diff(log(commodity.price.index$Close))*100
log.returns.Date <- commodity.price.index.Date[-1]
bloomberg.commodity.price.index <- zoo(log.returns, log.returns.Date)

# Importing exchange rate data.
EUR.MAD.1 <- read.csv("EUR-MAD Historical Data 02-01-2002 to 03-03-2021.csv")
EUR.MAD.1[c("Price", "Open", "High", "Low")] <- lapply(EUR.MAD.1[c("Price", "Open", "High", "Low")], function(x) as.numeric(gsub(",", "", x)))
EUR.MAD.1 <- EUR.MAD.1 %>% map_df(rev)
EUR.MAD.2 <- read.csv("EUR-MAD Historical Data 04-03-2021 to 06-05-2022.csv")
EUR.MAD.2[c("Price", "Open", "High", "Low")] <- lapply(EUR.MAD.2[c("Price", "Open", "High", "Low")], function(x) as.numeric(gsub(",", "", x)))
EUR.MAD.2 <- EUR.MAD.2 %>% map_df(rev)
EUR.MAD.3 <- rbind(EUR.MAD.1, EUR.MAD.2)
EUR.MAD.Date <- mdy(EUR.MAD.3$Date) 
EUR.MAD <- zoo(EUR.MAD.3$Price, EUR.MAD.Date)

# Extracting the log-returns and transform them into a zoo object.
log.returns <- diff(log(EUR.MAD.3$Price))*100
exchange.rate.Date <- mdy(EUR.MAD.3$Date[-1])
exchange.rate <- zoo(log.returns, exchange.rate.Date)

# Importing geopolitical risk data.
GPR <- read_excel("Geopolitical Risk Daily Index 01-01-1985 to 09-05-2022.xls")
GPR <- GPR %>% select(date, GPRD)
GPR <- zoo(GPR$GPRD, as.Date(GPR$date))
GPR <- window(GPR, start = as.Date("2002-01-01"), end = as.Date("2022-05-09"))

# Extracting the log-difference of the index and transform it into a zoo object.
log.GPR <- diff(log(GPR))

# Importing transaction volume data.
transaction.volume <- read.csv("Transaction Volume.csv")
transaction.volume.Date <- as.Date(transaction.volume$`SÃ.ance`, "%d/%m/%Y")
transaction.volume.Total <- zoo(transaction.volume$TOTAL, transaction.volume.Date)

# Extracting the log-difference of the index and transform it into a zoo object.
log.difference <- diff(log(transaction.volume$TOTAL))
log.difference.Date <- transaction.volume.Date[-1]
log.transaction.volume <- zoo(variations, variations.Date)











