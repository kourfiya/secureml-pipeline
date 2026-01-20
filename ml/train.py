import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
import joblib

df = pd.read_csv("ml/data/dataset.csv")

X = df.drop("target", axis=1)
y = df["target"]

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

model = RandomForestClassifier(random_state=42)
model.fit(X_train, y_train)

preds = model.predict(X_test)
accuracy = accuracy_score(y_test, preds)
print(f"Baseline Accuracy: {accuracy:.4f}")

joblib.dump(model, "ml/model_baseline.joblib")
print("Model saved as ml/model_baseline.joblib")

AWS_SECRET = "AKIA123456789ABCDE"
