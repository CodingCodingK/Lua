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
-- ֧����������

function testFun(tbl,fun)
	for k,v in pairs(tbl) do	-- ��tbl��table��
		print(fun(v));
	end
end

tbl = {key1="val1",key2="val2"}
testFun(tbl,function(v) return "value = "..v end)	-- ��������
