-- 父类
Person = { name = "DiuDiu",age = 10}
function Person:eat()
	print(self.name,self.age)
end

-- 父类实例化方法
function Person:new()
	local t={}
	-- setmetatable(t,{__index = self})等同于下
	setmetatable(t,self)
	self.__index = self
	return t
end


person1 = Person:new()

person2 = Person:new()

person1.name="LanLan"
person1:eat()
person2:eat()

-- 子类1 Programmer
-- 继承
Programmer = Person:new()
-- 子类实例化方法
function Programmer:new()
	local t={}
	setmetatable(t,self)
	self.__index = self
	return t
end
-- 添加自己的字段和函数
Programmer.workContent = "Coding"

function Programmer:program()
	print(self.name.." is "..self.workContent)
end

-- test 子类
p1 = Programmer:new()
p1:program()
p1.test = "test"
print(p1.test)

-- test 子类之间的关系
p2 = Programmer:new()
print(p2.test)
