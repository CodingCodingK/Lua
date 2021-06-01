tbl1 = {"Lua","c#"}
tbl2 = tbl1

-- table的引用本质
print(tbl2[2])
tbl1[2] = "php"
print(tbl2[2])
print(tbl2["Lua"])

print()
-- table的资源回收
tbl1=nil
print(tbl2[2])
tbl2=nil
print(tbl1)
print(tbl2)

print()
-- table的重编+去重
function tableUnique(t)
	local checked = {}
	local n = {}
	local index = 1
	for k,v in pairs(t) do
		if not checked[v] then
			n[index] = v
			index = index + 1
			checked[v] = true
		end
	end
	return n
end

for k,v in pairs(tableUnique({1,1,1,2,3,5,1,3,7,4})) do
	print(k.."="..v)
end
