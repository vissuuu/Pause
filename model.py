import numpy as np
import pickle
import pandas as pd
from flask import Flask, jsonify, request

model = pickle.load(open('lr.pkl', 'rb'))

app = Flask(__name__)

@app.route("/", methods=['GET'])
def hello():
    return "hey"

@app.route('/predict', methods=['POST'])
def predict():
    # Retrieve the input data from the request
    data = request.get_json()
    print(data)
    
    final_features = np.array(data)  # Assuming the input data contains a 'features' field
    print(final_features[0])

    # Convert string features to numeric features using one-hot encoding
    # final_features_encoded = pd.get_dummies(final_features)

    # Make predictions using the loaded model
    prediction = model.predict(final_features)
    print(prediction)

    # Round off the prediction to 0 decimal places
    rounded_prediction = np.round(prediction, 0)

    # Convert the prediction to an integer value
    predicted_label = int(rounded_prediction[0])
    print (predicted_label)

    # Return the predicted output as a JSON response
    return predicted_label

app.run(host='0.0.0.0',port=8080)

# if __name__ == '__main__':

    
