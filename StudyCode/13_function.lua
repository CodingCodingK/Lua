-- ��ͨ���庯��
function Max(n1,n2)
	if(n1>n2) then return n1
	else return n2
	end
end

-- ��������Ϊ��������
function MaxAddMax(a1,a2,b1,b2,MaxFunc)
	return MaxFunc(a1,a2) + MaxFunc(b1,b2)
end
-- ����
print(MaxAddMax(3,1,8,9,Max))
print()


-- �������ж������ֵ
-- �������Խ��ܿɱ���Ŀ�Ĳ���
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
-- ����
-- ��ȡ���ֵ���±��ֵ���ٰ�������Ϊ��������Max����
print(Max(GetMaxValueAndIndex(-9999999,-98,0,99,11,233,5)))
print()


-- ����ֻ�з������ж���֮����Ǹ�������ѷ���ֵչ��
function add()
    return 1,0
end

local b,c,d,e = add(),add()

print(b) -- 1
print(c) -- 1
print(d) -- 0
print(e) -- nil
