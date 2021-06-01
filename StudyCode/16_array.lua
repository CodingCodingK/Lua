-- 一维数组
array = {"A","B"}
for i=0,2 do	-- 下标从1开始
	print(array[i])
end

-- 多维数组
array={{1,2,3},{4,5,6},{7,8,9}}
for i=1,3 do
	for j=1,3 do
		print(array[i][j])
	end
end
