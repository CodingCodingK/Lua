-- 系统自带的ipairs实现
function iter (a, i)
    i = i + 1
    local v = a[i]
    if v then
       return i, v
    end
end

function ipairs (a)
    return iter, a, 0
end

-- ipairs 和 pairs不同
test = {1,2,3,4}
test[2] = nil

for k,v in ipairs(test) do
	print(k,v)
end

print()

for k,v in pairs(test) do
	print(k,v)
end

print()
--[[
除了系统自带的ipairs和pairs函数之外
可以自定义迭代函数，他会遍历到出现nil为止
for 变量列表 in 迭代函数,状态变量,控制变量 do
	循环体
end
]]--
function square(state,control)
	if control>state then
		return nil
	else
		control = control+1
		return control, control*control
   end
end

for i,n in square,3,0 do
   print(i,n)
end
