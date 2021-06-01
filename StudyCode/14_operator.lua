-- 逻辑运算符 and or not
a = 1

if(a and b) then
	print("a,b同为true")
elseif(a or b) then
	print("a,b有一个为true")
elseif(not a and not b) then
	print("a,b同时不为true")
end

print()

-- 其他运算符
s = "He llo"
tbl = {}
tbl[1] = "A"
tbl[2] = "A"
tbl[3] = "A"
tbl[7] = "A"
print(#s)
-- table结构的#取长是不稳定的，遇到nil很容易出问题
print(#tbl) -- 是3而不是7
