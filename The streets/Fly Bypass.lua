-- Not Tested

local rm = getrawmetatable(game) or debug.getrawmetatable(game) or getmetatable(game);
if setreadonly then setreadonly(rm, false) else make_writeable(rm, true) end
local caller = checkcaller or is_protosmasher_caller
local ncall = rm.__namecall

rm.__namecall = newcclosure(function(self, ...)
    if caller() then return ncall(self, ...) end
    local Args, Method = {...}, getnamecallmethod() or get_namecall_method();
    if Method == "FireServer" and Args[1] == "WalkSpeed" or Args[1] == "JumpPower" or Args[1] == "HipHeight" then 
        return nil 
    end
    if Method == "FireServer" and tostring(self) == "Input" then 
        if Args[1] == "bv" or Args[1] == "hb" or Args[1] == "ws" then 
            return wait(9e9)
        end
    end
    return ncall(self, unpack(Args))
end)
if setreadonly then setreadonly(rm, true) else make_writeable(rm, false) end
