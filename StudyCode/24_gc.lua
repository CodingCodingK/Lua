-- collectgarbage("count"): 以 K 字节数为单位返回 Lua 使用的总内存数。 这个值有小数部分，所以只需要乘上 1024 就能得到 Lua 使用的准确字节数（除非溢出）。

mytable = {"apple", "orange", "banana"}

print(collectgarbage("count"))

mytable = nil -- 加入gc队列

print(collectgarbage("count"))

print(collectgarbage("collect")) -- 执行一次完整的gc

print(collectgarbage("count"))
