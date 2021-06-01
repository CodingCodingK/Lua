-- 导入模块并起别名
local m = require("19_module")

print(m.constant)
m.func1()
--m.func2() 私有函数 无法访问
m.func3()
