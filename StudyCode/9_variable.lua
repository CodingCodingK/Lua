a = 6 -- ȫ��
local b = 5 -- �ֲ�

function func1()
	c = 1
	local d = 2
end

function func2()
	d = 2
end

print(a,b,c,d)
func1()
print(a,b,c,d)	-- �����ڶ���ȫ����ֲ�
func2()
print(a,b,c,d)	-- ���¶���ֲ�Ϊȫ��
