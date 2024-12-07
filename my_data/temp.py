import pandas as pd
import argparse

parser = argparse.ArgumentParser()
parser.add_argument(
    "--fname",
    default=None,
    type=str,
    required=True,
    help="Name of the dataset to generate",
)
args = parser.parse_args()
df = pd.read_parquet(f"{args.fname}.parquet")
df = df[['text', 'label']]
df.to_csv(f"{args.fname}.tsv",sep='\t',index=False)