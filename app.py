import traceback
import numpy as np
import pickle
import pandas as pd
from flask import Flask, jsonify, request
from surprise import Reader, Dataset
from surprise import model_selection
from collections import defaultdict
from sklearn.preprocessing import LabelEncoder
import json

model = pickle.load(open('lr.pkl', 'rb'))

app = Flask(__name__)

@app.route("/", methods=['GET'])
def hello():
    return "hey"

@app.route('/predict', methods=['POST'])
def predict():
    try:
        data = request.get_json()
        print(data)
        final_features = np.array([data])  
        prediction = model.predict(final_features)
        print(prediction)
        rounded_prediction = np.round(prediction, 0)
        predicted_label = int(rounded_prediction[0])
        print (predicted_label)
        x= '{}'.format(predicted_label)
        return x
    except:
        return jsonify({'trace': traceback.format_exc()})
    else:
        return ('No model here to use')
    
    
    
    
    
    

    
    

    

    
    

    

app.run(host='0.0.0.0',port=8080)


    
