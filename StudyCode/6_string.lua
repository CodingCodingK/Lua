string1 = "test1"
string2 = "test2"
-- �����,����
print("2"+6)
print(16 / "2")
print("2"+"6")
print(#"MyLength")-- #

-- ƴ���ַ���
-- error
-- print("2"+string2)

-- correct
print ("2"..string2)
print (2 .. string2)
print (2 .. 33)

-- block string һ���ַ���
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">����̳�</a>
</body>
</html>
]]
print(html)
