tbl = {"a","b","c"}

-- for
for i = 1,10,1
	do
		print(i)
	end

-- while
i = 1
while(i <= 10)
	do
		print(i)
		i = i + 1
	end

-- repeat...until
i = 1
repeat
	do
		print(i)
		i = i + 1
	end
until i > 10

-- continue
for i = 1, 10, 1
	do
		repeat
			if i == 5 then
			print("continue code here")
			break
		end

		print(i, "loop code here")
		until true
	end
