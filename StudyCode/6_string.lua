string1 = "test1"
string2 = "test2"
-- 运算符,长度
print("2"+6)
print(16 / "2")
print("2"+"6")
print(#"MyLength")-- #

-- 拼接字符串
-- error
-- print("2"+string2)

-- correct
print ("2"..string2)
print (2 .. string2)
print (2 .. 33)

-- block string 一块字符串
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)
