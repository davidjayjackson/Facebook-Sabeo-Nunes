import pandas as pd 

# data = input
dftest = pd.read_csv("./Deliverables.csv")
# dftest = pd.DataFrame(data)

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
#dftest['All_dates'].replace(to_replace='[date]',value='date_all',regex=True)


# list of nested columns
nested_cols = ['Studies', 'SPA_Resources','Submissions','Specifications','Standards','TLFs','Quality_Assessment','date_all']

# unnesting the nested columns one by one and merging it with dfwonc
for i in nested_cols:
    dfcon = pd.concat([pd.DataFrame(eval(x)) for x in dftest[i]], keys=dftest['ID']).reset_index(level=1, drop=True).reset_index()
    dfwonc = pd.merge(dfwonc, dfcon, on='ID', how='outer')

# save to csv
data.to_csv("./new-data.csv")

