-- ���__index����һ�����
other = { foo = 3 }
t = setmetatable({bar = 2}, { __index = other })
print(t.foo)
print(t.bar)

print()
-- ���__index����һ��������table�ͼ�����Ϊ�������ݸ�����
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
-- __newindex ��������ڣ��������������������и�ֵ����
tbl_2 = setmetatable({key1 = "value1"}, { __newindex =
function() print("������function�����ǲ���ԭtable��ֵ") end })

print(tbl_2.key1)

tbl_2.newkey = "��ֵ2"
tbl_2.key1 = "��ֵ1"
print(tbl_2.key1,tbl_2.newkey)

print()
-- ������Ӳ���
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
