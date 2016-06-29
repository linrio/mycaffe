import re
p = re.compile(r'0.\d+')
m = p.search('aaaaaa 2016')
print m.group()
#result is 016
#reference http://www.cnblogs.com/now-fighting/p/4495841.html

s = '123 456\n789 012\n345 678'
q = re.compile(r'^\d+')
q.findall(s)
#result is ['123']
# 匹配一个位于开头的数字

q = re.compile(r'^\d+',re.M)
print q.findall(s)
