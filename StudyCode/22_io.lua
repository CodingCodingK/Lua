-- ��ֻ����ʽ���ļ�
file = io.open("22_io_test.lua", "r")

-- ����Ĭ�������ļ�Ϊ test.lua
io.input(file)

-- ����ļ���һ��
print(io.read())

-- �رմ򿪵��ļ�
io.close(file)

-- �Ը��ӵķ�ʽ��ֻд�ļ�
file = io.open("22_io_test.lua", "a")

-- ����Ĭ������ļ�Ϊ test.lua
io.output(file)

-- ���ļ����һ����� Lua ע��
io.write("-- �ļ�ĩβע��")

-- �رմ򿪵��ļ�
io.close(file)
