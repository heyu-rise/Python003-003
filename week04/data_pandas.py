import pandas as pd

data = pd.DataFrame({"id": [10, 568, 4569, 4570],
                     "order_id": ['rose', 'jessi', 'jackson', 'jonas'],
                     "age": [25, 31, 27, 25],
                     "gender": ['女', '女', '男', '男']})

print('--------------------------------------- SELECT * FROM data')
df = data.loc[:]
print(df)


print('--------------------------------------- SELECT * FROM data LIMIT 10;')
df = data.loc[:9]
print(df)


print('--------------------------------------- SELECT id FROM data')
df = data['id']
print(df)


print('--------------------------------------- SELECT COUNT(id) FROM data')
count = data.count()['id']
print(count)


print('--------------------------------------- SELECT * FROM data WHERE id<1000 AND age>30')
df = data.loc[(data['id'] >= 1000) & (data['age'] <= 30)]
print(df)


print('--------------------------------------- SELECT id,COUNT(DISTINCT order_id) FROM table1 GROUP BY id')
group = data.groupby('id')['order_id'].nunique()
print(group)


print('--------------------------------------- SELECT * FROM table1 t1 INNER JOIN table2 t2 ON t1.id = t2.id')
data2 = pd.DataFrame({"id": [567, 568, 4569, 4570],
                      "name": ['rose', 'jessi', 'jackson', 'jonas']})
data_merge = pd.merge(data, data2, on='id', how='inner')
print(data_merge)


print('--------------------------------------- SELECT * FROM table1 UNION SELECT * FROM table2')
data_union = pd.concat([data, data2])
print(data_union)


print('--------------------------------------- DELETE FROM table1 WHERE id=10')
df = data[data['id'] != 10]
print(df)


print('--------------------------------------- ALTER TABLE table1 DROP COLUMN column_name')
data = data.drop(columns='gender')
print(data)
