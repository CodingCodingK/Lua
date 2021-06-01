-- nil can delete nil
tab1 = {key1="val1",key2="val2","val3"}
for k,v in pairs(tab1)do
	print(k.." - " ..v)
end

--show deleted error
--[[
tab1 = nil
for k,v in pairs(tab1)do
print(k.." - " ..v)
end
--]]

-- need "" when compare "nil"
print(type(X)==nil) -- false
print(type(X)=="nil") -- true

-- nil is a sting
print(type(type(X)) == "string") -- true
