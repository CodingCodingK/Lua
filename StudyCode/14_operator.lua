-- �߼������ and or not
a = 1

if(a and b) then
	print("a,bͬΪtrue")
elseif(a or b) then
	print("a,b��һ��Ϊtrue")
elseif(not a and not b) then
	print("a,bͬʱ��Ϊtrue")
end

print()

-- ���������
s = "He llo"
tbl = {}
tbl[1] = "A"
tbl[2] = "A"
tbl[3] = "A"
tbl[7] = "A"
print(#s)
-- table�ṹ��#ȡ���ǲ��ȶ��ģ�����nil�����׳�����
print(#tbl) -- ��3������7
