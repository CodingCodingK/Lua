function fun1(n)
	if (n < 0) then
		return "less than 0"
	elseif (n == 0) then	-- elseif
		return "equal 0"
	else
		print "more than 0"
	end
end


print(fun1(-1))
fun2 = fun1
print(fun2(5))

print()
-- 支持匿名函数

function testFun(tbl,fun)
	for k,v in pairs(tbl) do	-- 把tbl当table型
		print(fun(v));
	end
end

tbl = {key1="val1",key2="val2"}
testFun(tbl,function(v) return "value = "..v end)	-- 匿名方法
