ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('as_reward:giveReward')
AddEventHandler('as_reward:giveReward', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        local itemName = Config.RewardItem
        local itemAmount = Config.RewardAmount

        local item = exports.ox_inventory:Items(itemName)
        if item then
            xPlayer.addInventoryItem(itemName, itemAmount)
            xPlayer.showNotification('Otrzymałeś nagrodę: ' .. itemAmount .. 'x ' .. item.label)
        else
            xPlayer.showNotification('Item nie istnieje: ' .. itemName)
        end
    end
end)