function nwRoll.dumpTable(table, depth)
    if depth == nil then depth =1 end
    if (depth > 200) then
        print("Error: Depth > 200 in dumpTable()")
        return
    end
    for k,v in pairs(table) do
        if (type(v) == "table") then
            print(string.rep("  ", depth)..k..":")
            nwRoll.dumpTable(v, depth+1)
        else
            print(string.rep("  ", depth)..k..": ",v)
        end
    end
end
