-- Lua �еı�table����ʵ��һ��"��������"��associative arrays��

-- �±��1��ʼ
local tbl= {
3,
"test",
"8",
[[test
  blockstring]],
"",
nil,-- ���䲻����,����ռ����һ��key
"nil"}

for key,val in pairs(tbl)do
	print(key.." "..val)
end

print()
-- �������ֵ��ͣ�����ֱ�����
tbl[1] = "changed"
tbl[8] = "numberKEY_added"
tbl["8"] = "stringKEY_added" -- ����ע��,string��number�Ƕ�������Ϊkey��

for key,val in pairs(tbl)do
	print(key.." "..val)
end
