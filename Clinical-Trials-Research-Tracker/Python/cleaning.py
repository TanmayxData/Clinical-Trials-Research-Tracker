import csv

import pandas as pd

# Load dataset
df = pd.read_csv("clinical_trials.csv")


# -----------------------------
# Basic Information
# -----------------------------
print("Rows:", df.shape[0])
print("Columns:", df.shape[1])

# -----------------------------
# Missing Values Check
# -----------------------------
print("\nMissing Values:")
print(df.isnull().sum())

# -----------------------------
# Duplicate Check
# -----------------------------
duplicates = df.duplicated(subset=["NCT Number"]).sum()
print("\nDuplicate NCT Numbers:", duplicates)

# Remove duplicates
df.drop_duplicates(subset=["NCT Number"], inplace=True)

# -----------------------------
# Date Conversion
# -----------------------------
df["Start Date"] = pd.to_datetime(df["Start Date"], errors="coerce", dayfirst=True, format="mixed")

df["Completion Date"] = pd.to_datetime(df["Completion Date"], errors="coerce", dayfirst=True, format="mixed")


# -----------------------------
# Extract Country
# -----------------------------
df["Country"] = df["Locations"].str.split(",").str[-1].str.strip()

# -----------------------------
# Validation Checks
# -----------------------------
missing_nct = df["NCT Number"].isnull().sum()
missing_sponsor = df["Sponsor"].isnull().sum()
missing_condition = df["Conditions"].isnull().sum()
missing_phase = df["Phases"].isnull().sum()

print("\nValidation Summary")
print("------------------")
print("Missing NCT Number :", missing_nct)
print("Missing Sponsor    :", missing_sponsor)
print("Missing Condition  :", missing_condition)
print("Missing Phase      :", missing_phase)

# -----------------------------
# Save Clean Dataset
# -----------------------------
df.to_csv(
    "clinical_trials_Validated.csv",
    index=False,
    quoting=csv.QUOTE_ALL, 
    encoding="utf-8"
)
print("\nClean dataset saved successfully!")



