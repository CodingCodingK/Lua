-- Lua 中的表（table）其实是一个"关联数组"（associative arrays）

-- 下标从1开始
local tbl= {
3,
"test",
"8",
[[test
  blockstring]],
"",
nil,-- 空输不出来,但是占用了一个key
"nil"}

for key,val in pairs(tbl)do
	print(key.." "..val)
end

print()
-- 类似于字典型，可以直接添加
tbl[1] = "changed"
tbl[8] = "numberKEY_added"
tbl["8"] = "stringKEY_added" -- 这里注意,string和number是都可以作为key的

for key,val in pairs(tbl)do
	print(key.." "..val)
end
