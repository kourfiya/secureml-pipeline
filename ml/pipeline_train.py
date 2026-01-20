import pandas as pd
import pandera as pa
from pandera import Column, DataFrameSchema
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
import mlflow
import mlflow.sklearn

schema = DataFrameSchema({
    "mean radius": Column(float, checks=pa.Check.ge(0)),
    "mean texture": Column(float, checks=pa.Check.ge(0)),
    "mean smoothness": Column(float, checks=pa.Check.ge(0)),
    "target": Column(int, checks=pa.Check.isin([0, 1]))
})

df = pd.read_csv("ml/data/dataset.csv")
schema.validate(df)  # Stops execution if data invalid

X = df.drop("target", axis=1)
y = df["target"]
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

mlflow.set_experiment("breast_cancer_pipeline")

with mlflow.start_run():

    model = RandomForestClassifier(n_estimators=100, random_state=42)
    model.fit(X_train, y_train)

    preds = model.predict(X_test)
    accuracy = accuracy_score(y_test, preds)
    print(f"Baseline Accuracy: {accuracy:.4f}")
    mlflow.log_metric("accuracy", accuracy)
    

    mlflow.log_param("n_estimators", 100)
    mlflow.log_param("random_state", 42)
    

    mlflow.sklearn.log_model(model, artifact_path="model")
    print("Model artifact saved in MLflow")

print("Pipeline finished successfully")
