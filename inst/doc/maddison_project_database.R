## ---- warning = FALSE, message = FALSE----------------------------------------
library(maddison)
library(ggplot2)

str(maddison)
head(maddison)

## ---- fig.width = 6, fig.height = 4, warning = FALSE, message = FALSE---------
df <- subset(maddison, 
             year >= 1800 &
             iso2c %in% c("DE", "FR", "IT", "UK", "US"))

ggplot(df, aes(x = year, y = rgdpnapc, color = country)) +
  geom_line() +
  scale_y_log10() +
  theme_bw() +
  labs(x = NULL, y = "GDP per capita (2011 U.S. dollars)\n", color = NULL,
       title = "GDP per capita (1800-2010)")

