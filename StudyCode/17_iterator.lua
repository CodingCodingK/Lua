-- ϵͳ�Դ���ipairsʵ��
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

-- ipairs �� pairs��ͬ
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
����ϵͳ�Դ���ipairs��pairs����֮��
�����Զ�������������������������nilΪֹ
for �����б� in ��������,״̬����,���Ʊ��� do
	ѭ����
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
