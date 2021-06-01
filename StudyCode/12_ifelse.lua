-- Lua认为false和nil为假，true和非nil为真。
if(0) then
	print("0 is true")
end

-- if和then一起用
if(nil) then
	print("nil is true")
elseif(0) then
	print("0 is true")
else
	print("both 0 and nil is false")
end
