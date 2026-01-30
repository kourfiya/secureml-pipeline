import pandera as pa
from pandera import Column, DataFrameSchema, Check


dataset_schema = DataFrameSchema(
    {
        "feature_1": Column(float, Check.in_range(0, 100), nullable=False),
        "feature_2": Column(float, Check.ge(0), nullable=False),
        "feature_3": Column(int, Check.isin([0, 1]), nullable=False),
        "target": Column(int, Check.isin([0, 1]), nullable=False),
    },
    strict=True,
)
