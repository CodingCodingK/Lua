-- Lua��Ϊfalse��nilΪ�٣�true�ͷ�nilΪ�档
if(0) then
	print("0 is true")
end

-- if��thenһ����
if(nil) then
	print("nil is true")
elseif(0) then
	print("0 is true")
else
	print("both 0 and nil is false")
end
