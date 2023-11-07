# Bonus assignment 11

Make an API to serve predictions from a predictive model

#### Predictive model options

* Predictive model option 1: Use my boring iris species predictive model - https://gist.github.com/AdamSpannbauer/d03433e0efee529e6e2ce9000d2fb604
* Predictive model option 2: Try and make your own
  * ChatGPT should be pretty capable at helping you translate something or start something new
  * Don't spend too much time on this unless your having fun (maybe build option 1's API then come back to fun modeling)

#### Flask API endpoint requirements

* `/model_info` - Reports a metric of model accuracy, number of records trained on, and model type
  * Example response for a linear regression
    * `{"rmse": 12.84, "n_training_records": 64, "model": "OLS"}`
* `/model_predict` - Make a prediction for a single record
  * The record's data should come from the user and not hardcoded
  * Example response for classification
    * `{"predicted_class": "A", "probability": 0.84}`
  * Example response for regression
    * `{predicted: 14.27}`