   local function GiveOwnGlobals(Func, Script)
        local Fenv = {}
        local RealFenv = {script = Script}
        local FenvMt = {}
        FenvMt.__index = function(a,b)
            if RealFenv == nil then
                return getfenv()
            else
                return RealFenv
            end
        end
        FenvMt.__newindex = function(a, b, c)
            if RealFenv == nil then
                getfenv() = c
            else
                RealFenv = c
            end
        end
        setmetatable(Fenv, FenvMt)
        setfenv(Func, Fenv)
        return Func
    end
    
    local function LoadScripts(Script)
        if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
            task.spawn(function()
                GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script)()
            end)
        end
        for i,v in pairs(Script:GetChildren()) do
            LoadScripts(v)
        end
    end
    
    LoadScripts(Obj)
    end
    
    Load(Dex)
