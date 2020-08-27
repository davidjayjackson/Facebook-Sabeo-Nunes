import pandas as pd
dftest = pd.read_csv("./Deliverables.csv")

# create dataframe dfwonc without any of the nested columns
dfwonc = pd.DataFrame()
dfwonc = dftest['ID']
dftest['SPA_Resources'].fillna("[]",inplace=True)
dftest['Submissions'].fillna("[]",inplace=True)
dftest['Specifications'].fillna("[]",inplace=True)
dftest['Standards'].fillna("[]",inplace=True)
dftest['TLFs'].fillna("[]",inplace=True)
dftest['Quality_Assessment'].fillna("[]",inplace=True)
dftest['date_all'].fillna("[]",inplace=True)
