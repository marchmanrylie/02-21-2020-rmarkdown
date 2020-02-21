library(AmesHousing)
library(tidymodels)

ames <- AmesHousing::make_ames()

lm_ames <- lm(Sale_Price ~ Gr_Liv_Area, data = ames)
lm_ames

broom::tidy(lm_ames)

# tidymodels
# parsnip

library(parsnip)

# pick a model, in this case linear regression
# pick an engine, in this case lm
# set a mode

lm_spec <- parsnip::linear_reg() %>%
  parsnip::set_engine("lm")

lm_fit <- parsnip::fit(lm_spec, Sale_Price ~ Gr_Liv_Area, data = ames)

broom::tidy(lm_fit)

lm_spec <- parsnip::linear_reg() %>%
  parsnip::set_engine("glmnet")
lm_fit <- parsnip::fit(lm_spec, Sale_Price ~ Gr_Liv_Area, data = ames)

broom::tidy(lm_fit)
q()
