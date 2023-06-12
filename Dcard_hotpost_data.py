import pandas as pd

df = pd.read_csv('Dcard_hotpost_data.csv', encoding = 'big5')

df['PrimaryGender'] = ''  

for index, row in df.iterrows():
    if row['Comment_M'] > row['Comment_F']:
        df.at[index, 'PrimaryGender'] = '男性'
    else:
        df.at[index, 'PrimaryGender'] = '女性'

df