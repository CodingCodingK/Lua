-- 模块
module = {}

module.constant = "常量1"

function module.func1()
	io.write("这是一个公有函数！\n")
end

local function func2()
    print("这是一个私有函数！")
end

function module.func3()
    func2()
end

-- local function module.func4() 会报错,不可以这么定义私有变量

return module
