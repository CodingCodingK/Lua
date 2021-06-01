-- 普通定义函数
function Max(n1,n2)
	if(n1>n2) then return n1
	else return n2
	end
end

-- 函数可作为参数传入
function MaxAddMax(a1,a2,b1,b2,MaxFunc)
	return MaxFunc(a1,a2) + MaxFunc(b1,b2)
end
-- 测试
print(MaxAddMax(3,1,8,9,Max))
print()


-- 函数可有多个返回值
-- 函数可以接受可变数目的参数
function GetMaxValueAndIndex(minValue , ...)
	local index=1
	local value = minValue;
		for i,v in ipairs{...} do
			if(value<v) then
				index = i
				value = v
			end
		end
	return index,value
end
-- 测试
-- 获取最大值的下标和值，再把两者作为参数放入Max函数
print(Max(GetMaxValueAndIndex(-9999999,-98,0,99,11,233,5)))
print()


-- 仅仅只有放在所有逗号之后的那个函数会把返回值展开
function add()
    return 1,0
end

local b,c,d,e = add(),add()

print(b) -- 1
print(c) -- 1
print(d) -- 0
print(e) -- nil
