-- collectgarbage("count"): �� K �ֽ���Ϊ��λ���� Lua ʹ�õ����ڴ����� ���ֵ��С�����֣�����ֻ��Ҫ���� 1024 ���ܵõ� Lua ʹ�õ�׼ȷ�ֽ����������������

mytable = {"apple", "orange", "banana"}

print(collectgarbage("count"))

mytable = nil -- ����gc����

print(collectgarbage("count"))

print(collectgarbage("collect")) -- ִ��һ��������gc

print(collectgarbage("count"))
