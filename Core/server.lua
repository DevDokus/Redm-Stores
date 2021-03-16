--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
local VorpCore = {}
TriggerEvent("getCore",function(core) VorpCore = core end)
VorpInv = exports.vorp_inventory:vorp_inventoryApi()
--------------------------------------------------------------------------------
RegisterServerEvent('DevDokus:S:BuyItem')
--------------------------------------------------------------------------------
AddEventHandler('DevDokus:S:BuyItem', function(Data)
  local User = VorpCore.getUser(source)
  if User ~= nil then
    local Char = User.getUsedCharacter
    local balance = VorpInv.getItemCount(source, Data.ID)
    local max = Data.Max
    local money = Char.money

    if (balance < max) then
      if (money <= Data.Price) then
        Notify('Not Enough Money', 100)
      else
        Char.removeCurrency(0, Data.Price)
        VorpInv.addItem(source, Data.ID, 1)
        Notify('You\'ve bought a ' .. Data.Name .. ', costing you $' .. Data.Price .. ' Dollar!')
      end

    end
  end
end)
