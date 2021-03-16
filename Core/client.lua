--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
function Wait(args) Citizen.Wait(args) end
--------------------------------------------------------------------------------
-- Varables
local InRange = false
local ActiveMenu = nil
--------------------------------------------------------------------------------
-- Core
--------------------------------------------------------------------------------
-- Draw Map Marker
Citizen.CreateThread(function()
  for k,v in pairs(Stores) do
    local blip = N_0x554d9d53f696d002(1664425300, v.Coords.x, v.Coords.y, v.Coords.z)
    SetBlipSprite(blip, 1475879922, 1)
		SetBlipScale(blip, 0.2)
		Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.Store)
  end
end)

-- Check players distance from the stores.
Citizen.CreateThread(function()
  while true do Wait(1)
    local ped = GetPlayerPed()
    local coords = GetEntityCoords(ped)

    for k,v in pairs(Stores) do
      local x,y,z = v.Coords.x, v.Coords.y, v.Coords.z
      local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, x,y,z)

      if (dist <= 5) then
        DrawCircle(x,y,z, 204, 56, 209, 50)
        if (dist <= 1.5) then
          if IsControlJustPressed(0, Keys["Space"]) then
            -- Open the menu
            ActiveMenu = 'Home'
            WarMenu.OpenMenu('Home')
          end

          if IsControlJustPressed(0, Keys['Backspace']) then
            if     ActiveMenu == 'Home'       then WarMenu.CloseMenu()          ActiveMenu = nil
            elseif ActiveMenu == 'BuyMenu'    then WarMenu.OpenMenu('Home')     ActiveMenu = 'Home'
            elseif ActiveMenu == 'SellMenu'   then WarMenu.OpenMenu('Home')     ActiveMenu = 'Home'
            elseif ActiveMenu == 'bFoodCat'   then WarMenu.OpenMenu('BuyMenu')  ActiveMenu = 'BuyMenu'
            elseif ActiveMenu == 'bMiscCat'   then WarMenu.OpenMenu('BuyMenu')  ActiveMenu = 'BuyMenu'
            end
          end
        end
      end
    end
  end
end)

-- Warmenu
Citizen.CreateThread(function()
  CreateMenus()
  while true do Wait(1)
    local War = WarMenu.IsMenuOpened
    if      War('Home')         then Home()
    elseif  War('BuyMenu')      then BuyMenu()
    -- elseif  War('SellMenu')     then SellMenu()
    elseif  War('bFoodCat')      then bFoodCat()
    elseif  War('bMiscCat')      then bMiscCat()
    end
  end
end)


function CreateMenus()
	WarMenu.CreateMenu('Home', 'General Store')
  WarMenu.SetSubTitle('Home', 'Made By DevDokus')

  WarMenu.CreateMenu('BuyMenu', 'General Store')
  WarMenu.SetSubTitle('BuyMenu', 'Choose Category')

  WarMenu.CreateMenu('bFoodCat', 'General Store')
  WarMenu.SetSubTitle('bFoodCat', 'Choose Category')

  WarMenu.CreateMenu('bMiscCat', 'General Store')
  WarMenu.SetSubTitle('bMiscCat', 'Choose Category')
end

--------------------------------------------------------------------------------
-- Page 1 - Home Page
--------------------------------------------------------------------------------
function Home ()
  ActiveMenu = 'Home'
	local BBuy   = WarMenu.Button('Buy Items',  '', 'Github.com/DevDokus')
  local BSell  = WarMenu.Button('Sell Items', '', 'WORK IN PROGRESS')
  if BBuy then WarMenu.OpenMenu('BuyMenu') end
  -- if BSell then WarMenu.OpenMenu('SellMenu') end
	WarMenu.Display()
end

--------------------------------------------------------------------------------
-- Page 2 - Buy Category Section
--------------------------------------------------------------------------------
function BuyMenu ()
  ActiveMenu = 'BuyMenu'
  local _Foods   = WarMenu.Button('Foods',  '', 'Your daily basic needs')
  local _Misc   = WarMenu.Button('Misc',  '', 'Other Items')
  if _Foods then WarMenu.OpenMenu('bFoodCat') end
  if _Misc then WarMenu.OpenMenu('bMiscCat') end
  WarMenu.Display()
end

function bFoodCat()
  ActiveMenu = 'bFoodCat'
  for k,v in pairs(Buy) do
    if v.Type == 'Food' then
      local item = v.Name
      local price = tostring(v.Price)
      local desc  = v.Text
      local button = WarMenu.Button(item, '$'..price, desc)
      if button then TriggerServerEvent('DevDokus:S:BuyItem', v) end
    end
  end
  WarMenu.Display()
end

function bMiscCat()
  ActiveMenu = 'bMiscCat'
  for k,v in pairs(Buy) do
    if v.Type == 'Misc' then
      local item = v.Name
      local price = tostring(v.Price)
      local desc  = v.Text
      local button = WarMenu.Button(item, '$'..price, desc)
      if button then TriggerServerEvent('DevDokus:S:BuyItem', v) end
    end
  end
  WarMenu.Display()
end
























--------------------------------------------------------------------------------
-- Functions
--------------------------------------------------------------------------------
-- function DrawCircle(x,y,z,r,g,b,a)
--   Citizen.InvokeNative(0x2A32FAA57B937173, 0x94FDAE17, x, y, z-0.95, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.25, r, g, b, a, 0, 0, 2, 0, 0, 0, 0)
-- end
