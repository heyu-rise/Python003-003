[TOC]

# 数据清洗与预处理

## pandas简介

https://www.pypandas.cn/

https://pandas.pydata.org/docs/index.html

**获取获取当前文件路径**

```python
import os
pwd = os.path.dirname(os.path.realpath(__file__))
book = os.path.join(pwd,'book_utf8.csv')
```

## pandas基本数据类型

pandas有两种数据类型分别是**`Series`**和和**`DataFrame`**,都是基于**`numpy`**的分装

- **Series**

两种数据结构**`index`**和**`value`**

> 使用`index`会提升查询性能
>
> 如果`index`唯一，`pandas`会使用哈希表优化，查询性能为`O(1)`
>
> 如果`index`有序不唯一，`pandas`会使用二分查找算法，查询性能为`O(logN)`
>
> 如果`index`完全随机，每次查询都要扫全表，查询性能为`O(N)`

**创建方式**

```python
s = pd.Series(['a', 'b', 'c'])
# 通过字典创建带索引的Series
s1 = pd.Series({'a': 11, 'b': 22, 'c': 33})
# 通过关键字创建带索引的Series
s2 = pd.Series([11, 22, 33], index=['a', 'b', 'c'])
```

- **DataFrame**

**创建方式**

```python
data_frame = pd.DataFrame(['a', 'b', 'c', 'd'])
data_frame = pd.DataFrame([
                     ['a', 'b'],
                     ['c', 'd']
                    ])
```

> 列表的每个数据为一行。如果初始数据是数组嵌套数组，第一层里的每个数组为一行，每个数组的相同下表的数据为一列
>

## pandas数据导入

- **导入excel**

导入excel之前需要先安装`xlrd`

```powershell
pip install xlrd
```

**导入方式**

```python
# 指定导入哪个Sheet
pd.read_excel(r'1.xlsx', sheet_name=0)
# 支持其他常见类型
pd.read_csv(r'c:\file.csv', sep=' ', nrows=10, encoding='utf-8')
```

- **导入sql**

导入sql语句之前要先安装`pymysql`

```powershell
pip install pymysql
```

**导入方式**

```python
sql = 'SELECT *  FROM mytable'
conn = pymysql.connect('ip', 'name', 'pass', 'dbname', 'charset=utf8')
df = pd.read_sql(sql, conn)
```

## pandas数据预处理

### 缺失值处理

> 填充不会对原对象修改，指挥新建对象，所以如果要对填充完的数据进行处理的话，要赋值给新建对象

- 使用平均值填充

```python
x = pd.Series([1, 2, np.nan, 3, 4, 5, 6, np.nan, 8])
# 检验序列中是否存在缺失值
x.hasnans
# 将缺失值填充为平均值
x.fillna(value=x.mean())
```

- 前向填充

```python
df3 = pd.DataFrame({"A": [5, 3, None, 4],
                    "B": [None, 2, 4, 3],
                    "C": [4, 3, 8, 5],
                    "D": [5, 4, 2, None]})

df3.isnull().sum()  # 查看缺失值汇总
df3.ffill()  # 用上一行填充
df3.ffill(axis=1)  # 用前一列填充
```

- 缺失值删除 

```python
# 会删除有空值的行
df3.dropna()
```

### 重复值处理

- 删除

```python
# 删除重复行
df3.drop_duplicates()
```

## pandas数据调整

> 数据调整不会对原数据做出改变

**列选择**

> 除个别外，行选择和列选择都用**行索引**和**列索引**

```python
df = pd.DataFrame({"A":[5,3,None,4], 
                 "B":[None,2,4,3], 
                 "C":[4,3,8,5], 
                 "D":[5,4,2,None]}) 
# 列的选择,多个列要用列表
df[ ['A', 'C'] ]
# 某几列
df.iloc[:, [0,2]] # :表示所有行，获得第1和第3列
```

**行选择**

```python
df.loc[[0, 2]] # 选择0索引和2索引
df.loc[0:2] # 选择0索引到2索引
```

**替换**

如果是行列替换，需要用行列接收

```python
df['C'] = df['C'].replace(4, 40)

import numpy as np
df.replace(np.NaN, 0)
# 多对一替换
df.replace([4, 5, 8], 1000)
# 多对多替换
df.replace({4: 400, 5: 500, 8: 800})
```

**排序**

```python
df.sort_values(by=['A'], ascending=False)
# 多列排序
df.sort_values(by=['A', 'C'], ascending=[True, False])
```

**删除**

```python
# 删除列
df.drop('A', axis=1)
# 删除行
df.drop(3, axis=0)
# 删除特定行
df[df['A'] < 4]
```

**行列替换**

```python
df.T
```

**数据透视**

```python
df4 = pd.DataFrame([
    ['a', 'b', 'c'],
    ['d', 'e', 'f']
],
    columns=['one', 'two', 'three'],
    index=['first', 'second']
)
df4.stack()
df4.unstack()
# 数值填充
df4.stack().reset_index()
```

## pandas基本操作

https://pandas.pydata.org/docs/user_guide/computation.html#method-summary

## pandas分组聚合

**聚合**

```python
sales = [{'account': 'Jones LLC','type':'a', 'Jan': 150, 'Feb': 200, 'Mar': 140},
         {'account': 'Alpha Co','type':'b',  'Jan': 200, 'Feb': 210, 'Mar': 215},
         {'account': 'Blue Inc','type':'a',  'Jan': 50,  'Feb': 90,  'Mar': 95 }]

df2 = pd.DataFrame(sales)
groups = df2.groupby('type').groups
```

```python
# 各类型产品的销售数量和销售总额
df2.groupby('type').aggregate({'type': 'count', 'Feb': 'sum'})
```

## pandas多表拼接

```python
# 一对一
pd.merge(data1, data2)
# 多对一
pd.merge(data3, data2, on='group')
# 多对多
pd.merge(data3, data2)
# 连接键类型，解决没有公共列问题
pd.merge(data3, data2, left_on= 'age', right_on='salary')
# 连接方式
# 内连接，不指明连接方式，默认都是内连接
pd.merge(data3, data2, on= 'group', how='inner')
```

