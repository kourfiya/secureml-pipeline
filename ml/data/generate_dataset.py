from sklearn.datasets import load_breast_cancer
import pandas as pd

data = load_breast_cancer(as_frame=True)
df = data.frame

df.to_csv("ml/data/dataset.csv", index=False)
print("Dataset saved to ml/data/dataset.csv")
