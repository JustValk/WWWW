getgenv().key = "your key goes here"

local url_to_use = "https://uptimev2.000webhostapp.com/Cally/" -- Put your url here (if it's in a folder make sure u put /YOURFOLDERNAME/ at the end)

local random_number = math.random(500,2000)
local current_time = os.time()
local response = game:HttpGet(url_to_use.."main.php?condition=checkwhitelist&key="..key.."&time="..tostring(current_time).."&n="..tostring(random_number))

if tonumber(response) == current_time*random_number then
    print("No work")
    return
end
if tonumber(response) ~= current_time-random_number then
    game:GetService("Players").LocalPlayer:Kick("You must wait "..response.." seconds before using on a new ip!")
    return
end

print("Whitelisted Woohooooo") -- Remove this if you want and put your script underneath it
