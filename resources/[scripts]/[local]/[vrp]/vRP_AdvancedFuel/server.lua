local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vRP_fuel")
vRP_fuelS = {}
Tunnel.bindInterface("vRP_fuel", vRPcs)
essenceS = {}
Tunnel.bindInterface("essence", vRPcs)

local players = {}
local serverEssenceArray = {}
local StationsPrice = {}

AddEventHandler(
	"playerDropped",
	function(reason)
		local _source = source
		local newPlayers = {}

		for _, k in pairs(players) do
			if (k ~= _source) then
				table.insert(newPlayers, k)
			end
		end

		players = {}
		players = newPlayers
	end
)

function essenceS.addPlayer()
	local _source = source
	TriggerClientEvent("essence:sendPrice", source, StationsPrice)
	table.insert(players, _source)
end

function essenceS.playerSpawned()
	local _source = source
	SetTimeout(
		2000,
		function()
			TriggerClientEvent("essence:sendPrice", _source, StationsPrice)
			TriggerClientEvent("essence:sendEssence", _source, serverEssenceArray)
		end
	)
end
function essenceS.setToAllPlayerEscense(essence, vplate, vmodel)
	local _source = source
	local bool, ind = searchByModelAndPlate(vplate, vmodel)
	if (bool and ind ~= nil) then
		serverEssenceArray[ind].es = essence
	else
		if (vplate ~= nil and vmodel ~= nil and essence ~= nil) then
			table.insert(serverEssenceArray, {plate = vplate, model = vmodel, es = essence})
		end
	end

	TriggerClientEvent("essence:syncWithAllPlayers", -1, essence, vplate, vmodel)
end
function essenceS.buy(amount, index, e)
	local _source = source

	local price = StationsPrice[index]

	if (e) then
		price = index
	end

	local toPay = math.ceil(amount * price)
	local tax = math.ceil(toPay / 100 * 8)
	local user_id = vRP.getUserId({_source})
	if (vRP.tryPayment({user_id, toPay})) then
		vRP.addTax({tax})
		TriggerClientEvent("essence:hasBuying", _source, amount)
	else
		TriggerClientEvent("showErrorNotif", _source, "현금이 없습니다.")
	end
end
function essenceS.requestPrice()
	TriggerClientEvent("essence:sendPrice", source, StationsPrice)
end

function vRP_fuelS.getFuel(plate, model)
	local _source = source
	local bool, ind = searchByModelAndPlate(plate, model)

	if (bool) then
		TriggerClientEvent("vehicule:sendFuel", _source, 1, serverEssenceArray[ind].es)
	else
		TriggerClientEvent("vehicule:sendFuel", _source, 0, 0)
	end
end
function vRP_fuelS.setEssence_s(percent, vplate, vmodel)
	local bool, ind = searchByModelAndPlate(vplate, vmodel)

	local percentToEs = (percent / 100) * 0.142

	if (bool) then
		serverEssenceArray[ind].es = percentToEs
	else
		table.insert(serverEssenceArray, {plate = vplate, model = vmodel, es = percentToEs})
	end
end
function vRP_fuelS.buyCan()
	local _source = source

	local toPay = petrolCanPrice
	local user_id = vRP.getUserId({_source})
	if (vRP.tryPayment({user_id, toPay})) then
		TriggerClientEvent("essence:buyCan", _source)
	else
		TriggerClientEvent("showErrorNotif", _source, "Nu ai suficienti bani.")
	end
end

function round(num, dec)
	local mult = 10 ^ (dec or 0)
	return math.floor(num * mult + 0.5) / mult
end

function renderPrice()
	for i = 0, 34 do
		if (randomPrice) then
			StationsPrice[i] = round(math.random(), 2) + math.random(2, 3) + .009
		else
			StationsPrice[i] = price
		end
	end

	print("launched")
end

renderPrice()

function searchByModelAndPlate(plate, model)
	for i, k in pairs(serverEssenceArray) do
		if (k.plate == plate and k.model == model) then
			return true, i
		end
	end

	return false, -1
end
