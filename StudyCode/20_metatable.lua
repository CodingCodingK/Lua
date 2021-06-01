-- 如果__index包含一个表格
other = { foo = 3 }
t = setmetatable({bar = 2}, { __index = other })
print(t.foo)
print(t.bar)

print()
-- 如果__index包含一个函数，table和键会作为参数传递给函数
tbl_1 = setmetatable({key1="v1"},
{
__index = function(tbl,key)
	if key == "key2" then
		return "v2"
	end
end
})
print(tbl_1.key1,tbl_1.key2,tbl_1.key3)

print()
-- __newindex 如果不存在，则调用这个函数而不进行赋值操作
tbl_2 = setmetatable({key1 = "value1"}, { __newindex =
function() print("调用了function，但是不给原table赋值") end })

print(tbl_2.key1)

tbl_2.newkey = "新值2"
tbl_2.key1 = "新值1"
print(tbl_2.key1,tbl_2.newkey)

print()
-- 两表相加操作
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end
mytable = setmetatable({ 1, 2, 3 }, {
  __add = function(mytable, newtable)
    for i = 1, table_maxn(newtable) do
      table.insert(mytable, table_maxn(mytable)+1,newtable[i])
    end
    return mytable
  end
})

secondtable = {4,5,6}

mytable = mytable + secondtable
        for k,v in ipairs(mytable) do
print(k,v)
end
