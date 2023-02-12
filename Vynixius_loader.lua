-- Does not get active updates

local games = {
    [{606849621}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/48146240ddbe65eed1353b79cfc4067f/raw/988b78545ac21b6599bc17b9f2d8d6c5a682f47a/Vynixius_Jailbreak_Main.lua",
    
    [{8982709021}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/7b2de63d30a2c50b5411d0e9cf73ca62/raw/ff3289690e9b515fa6cdb790d3b0e276208ffc68/Vynixius_Youtube_Life_Farm_V2_Main.lua",
    
    [{537413528}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/0da34c6752f31fec0426781a28d091a0/raw/d4b2eb0da657792ac151450377774781d71c480f/Vynixius_BABFT_Main.lua",
    
    [{3101667897}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/f7c906c2007a68cbcf2a2c57ef0b8127/raw/322a8eb9ed0a643c712debb7cc4c4c4a4ca6b00a/Vynixius_Legends_Of_Speed_Main.lua",
    
    [{3956818381}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/180d68ed34bde55f96e6d4b0cb284fe3/raw/f7bc5459e297b3b9bbaff43716b9651d94b31961/Vynixius_Ninja_Legends_2_Main.lua",
    
    [{4623386862, 5661005779}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/3b2b0f3c41940b4643198f6c8e45887b/raw/e741b0dfec93f26ffa60de39de62463b725e8bf3/Vynixius_Piggy_Loader",
    
    [{155615604}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/498525dd6deda818bcb42046fdd148c9/raw/6f398f0e52e2446810d47834445b3a428870a55c/Vynixius_Prison_Life_Main.lua",
    
    [{1962086868, 3582763398}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/2f60a9bb00a12f4f6299b4ff37f0e3ce/raw/6cc903ee4c25c1b4b717ecab58261d890ddc5412/Vynixius_TOH_Main.lua",
    
    [{6839171747}] = "https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/d0d04b415302c91ddee8558caec921f9/raw/64867c08d464c7c3c829528c65d583bb3f19ac41/Vyrnixus_Doors.lua",
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end