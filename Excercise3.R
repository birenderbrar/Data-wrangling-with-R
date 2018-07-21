cars_m_h<- select(mtcars,mpg, hp)
names(cars_m_h) <- c("miles_per_gallon", "horse_power")
cars_m_h