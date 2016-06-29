import re
p = re.compile(r'0.\d+')
m = p.search('aaaaaa 2016')
print m.group()

#result is 016
#reference http://www.cnblogs.com/now-fighting/p/4495841.html
