local exports = {}
local directory_mappings = {}
local last_found

local function split(delim, str)
    local function trim(s)
        return s:match '^()%s*$' and '' or s:match '^%s*(.*%S)'
    end

    local t = {}

    for substr in string.gmatch(str, "[^" .. delim .. "]*") do
        if substr ~= nil and string.len(substr) > 0 then
            table.insert(t, trim(substr))
        end
    end

    return t
end

local function load_mappings()
    local success, file = pcall(io.lines, clink.get_env('ConEmuDir') .. '/config/directory_mappings')
    if success == false then
        return
    end

    for line in file do
        local result = split("=", line)
        if result[1] ~= nil and result[2] ~= nil then
            directory_mappings[string.lower(result[1])] =
                string.gsub(result[2], "ESC", "\x1b")
        end
    end
end

load_mappings()

exports.is_inside = function(cwd)
    cwd = string.lower(cwd)
    last_found = nil

    for k, v in pairs(directory_mappings) do
        local idx = string.find(cwd, k, 1, true) -- search as plain text - without patterns
        if idx == 1 then
            last_found = {k, v}
            break
        end
    end

    return last_found ~= nil
end

exports.replace = function(cwd)
    local left = last_found[2]
    local right = string.sub(cwd, string.len(last_found[1]) + 1)

    return left .. right
end

return exports
