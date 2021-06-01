a = 6 -- 全局
local b = 5 -- 局部

function func1()
	c = 1
	local d = 2
end

function func2()
	d = 2
end

print(a,b,c,d)
func1()
print(a,b,c,d)	-- 函数内定义全局与局部
func2()
print(a,b,c,d)	-- 重新定义局部为全局
