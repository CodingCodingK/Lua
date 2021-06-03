-- ����
Person = { name = "DiuDiu",age = 10}
function Person:eat()
	print(self.name,self.age)
end

-- ����ʵ��������
function Person:new()
	local t={}
	-- setmetatable(t,{__index = self})��ͬ����
	setmetatable(t,self)
	self.__index = self
	return t
end


person1 = Person:new()

person2 = Person:new()

person1.name="LanLan"
person1:eat()
person2:eat()

-- ����1 Programmer
-- �̳�
Programmer = Person:new()
-- ����ʵ��������
function Programmer:new()
	local t={}
	setmetatable(t,self)
	self.__index = self
	return t
end
-- ����Լ����ֶκͺ���
Programmer.workContent = "Coding"

function Programmer:program()
	print(self.name.." is "..self.workContent)
end

-- test ����
p1 = Programmer:new()
p1:program()
p1.test = "test"
print(p1.test)

-- test ����֮��Ĺ�ϵ
p2 = Programmer:new()
print(p2.test)
