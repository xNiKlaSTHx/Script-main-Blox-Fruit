_G.Key = "FF"
local key = _G.Key or ""

local http_request = http_request
if syn then 
    http_request = syn.request
elseif SENTINEL_V2 then
    http_request = request 
end

local getservice = game.GetService
local httpservice = getservice(game, "HttpService")

local function http_request_get(url, headers) 
    return http_request({Url=url,Method="GET",Headers=headers or nil}).Body 
end

local function jsondecode(json)
    local jsonTable = {}
     pcall(function() jsonTable = httpservice.JSONDecode(httpservice,json) end)
    return jsonTable
end


local body = http_request_get('https://httpbin.org/get')
local decoded = jsondecode(body)

local data = jsondecode(http_request_get("http://25.18.83.176/whitelist/sever.php".. key))

if data.Key == key then
loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/ALLFREE/main/hyperx.lua"))()
    if data.Blacklist == "False" then
        print(1)
            else
                print("Blacklist Reason : "..data.Reason)
                game.Players.LocalPlayer:Kick("Blacklist Reason : "..data.Reason)
                end
        else
            warn("Invalid Key")
            game.Players.LocalPlayer:Kick("Invalid Key")
            
end
