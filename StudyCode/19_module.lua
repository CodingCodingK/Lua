-- ģ��
module = {}

module.constant = "����1"

function module.func1()
	io.write("����һ�����к�����\n")
end

local function func2()
    print("����һ��˽�к�����")
end

function module.func3()
    func2()
end

-- local function module.func4() �ᱨ��,��������ô����˽�б���

return module
