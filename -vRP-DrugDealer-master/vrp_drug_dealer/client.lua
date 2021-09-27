
paCamp = false

local dmvped = { 
  {type=4, hash=0xc99f21c4, x=2506.0773925781, y=4800.095703125, z=34.001350402832, a=2974170},
  {type=4, hash=0xc99f21c4, x=2499.0810546875, y=4801.26171875, z=33.749999, a=2974170},
}

-- 2499.0810546875,4801.26171875,34.800037384033

local dmvpedpos = {
	{ ['x'] = 2506.0773925781, ['y'] = 4800.095703125, ['z'] = 34.001350402832 },
	{ ['x'] = 2499.0810546875, ['y'] = 4801.26171875, ['z'] = 33.749999 },
}


local function textFain(text, secconds)
	ClearPrints()
	SetTextEntry_2("STRING")
	AddTextComponentString(text)
	DrawSubtitleTimed(secconds * 1000, 1)
end
local function drawText3D(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*130
    local scale = scale*fov

    if onScreen then
        SetTextScale(0.2*scale, 0.5*scale)
        SetTextFont(6)
        SetTextProportional(1)
		SetTextColour( 1,1, 1, 255 )
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
	    World3dToScreen2d(x,y,z, 0) --Added Here
        DrawText(_x,_y)
    end
end
local function drawInfo(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end


local locatiiFertile = {
-- ++++




-- RAND 1
		{xyz = {2502.0053710938,4818.5834960938,35.098754882813}},
		{xyz = {2504.7739257813,4815.8920898438,34.863132476807}},
		{xyz = {2507.1203613281,4813.5288085938,34.664619445801}},
		{xyz = {2511.4819335938,4809.3837890625,34.458618164063}},
		{xyz = {2515.2060546875,4806.0102539063,34.33988571167}},
		{xyz = {2517.8112792969,4803.6020507813,34.263717651367}},
		{xyz = {2521.7353515625,4800.041015625,34.183856964111}},
		{xyz = {2526.2756347656,4795.896484375,34.080570220947}},
		{xyz = {2528.3937988281,4793.82421875,34.037300109863}},
		{xyz = {2533.0783691406,4789.3388671875,33.935489654541}},
		{xyz = {2536.9440917969,4785.7119140625,33.84663772583}},
		{xyz = {2539.4140625,4783.3403320313,33.837173461914}},
		{xyz = {2542.5529785156,4780.3813476563,33.854553222656}},
		{xyz = {2546.6501464844,4776.6420898438,33.863788604736}},


-- RAND 2
		{xyz = {2505.8505859375,4822.0483398438,34.816539764404}},
		{xyz = {2508.4086914063,4819.3256835938,34.581371307373}},
		{xyz = {2511.2321777344,4816.8413085938,34.34126663208}},
		{xyz = {2513.3547363281,4815.0083007813,34.227806091309}},
		{xyz = {2515.8718261719,4812.4467773438,34.165538787842}},
		{xyz = {2518.0368652344,4810.3637695313,34.110988616943}},
		{xyz = {2520.7604980469,4807.7719726563,34.042415618896}},
		{xyz = {2523.8098144531,4804.9985351563,33.972755432129}},
		{xyz = {2526.6474609375,4802.4887695313,33.896278381348}},
		{xyz = {2529.7976074219,4799.2407226563,33.825023651123}},
		{xyz = {2532.7775878906,4796.3422851563,33.756378173828}},
		{xyz = {2536.951171875,4792.4370117188,33.660907745361}},
		{xyz = {2542.5654296875,4787.0112304688,33.524494171143}},
		{xyz = {2550.9555664063,4778.9096679688,33.292098999023}},
		{xyz = {2547.3984375,4782.4072265625,33.38232421875}},

-- RAND 3
		{xyz = {2506.8137207031,4817.8315429688,34.626979827881}},
		{xyz = {2509.177734375,4815.6245117188,34.406951904297}},
		{xyz = {2513.8889160156,4811.0825195313,34.215751647949}},
		{xyz = {2517.6218261719,4807.51171875,34.151554107666}},
		{xyz = {2519.8645019531,4805.4350585938,34.099384307861}},
		{xyz = {2523.9936523438,4801.5903320313,34.020477294922}},
		{xyz = {2527.0207519531,4798.466796875,33.969123840332}},
		{xyz = {2531.3264160156,4794.140625,33.885593414307}},
		{xyz = {2529.44140625,4796.0747070313,33.926223754883}},
		{xyz = {2535.0205078125,4790.4663085938,33.80103302002}},
		{xyz = {2538.7358398438,4786.6650390625,33.722221374512}},
		{xyz = {2540.8903808594,4784.443359375,33.658477783203}},
		{xyz = {2544.4479980469,4780.8813476563,33.71448135376}},
		{xyz = {2547.4963378906,4777.7744140625,33.731643676758}},

-- RAND 4

		{xyz = {2505.1889648438,4825.7299804688,35.049999237061}},
		{xyz = {2506.9460449219,4824.0068359375,34.843383789063}},
		{xyz = {2509.40234375,4821.6884765625,34.558944702148}},
		{xyz = {2512.7873535156,4818.4272460938,34.164333343506}},
		{xyz = {2516.8208007813,4814.595703125,34.010280609131}},
		{xyz = {2519.5219726563,4812.2104492188,33.989055633545}},
		{xyz = {2523.5080566406,4808.578125,33.942119598389}},
		{xyz = {2527.9809570313,4804.4965820313,33.808494567871}},
		{xyz = {2532.6284179688,4800.3056640625,33.667446136475}},
		{xyz = {2535.8276367188,4797.3447265625,33.591117858887}},
		{xyz = {2540.6333007813,4792.8559570313,33.479202270508}},
		{xyz = {2544.9650878906,4788.8471679688,33.340263366699}},
		{xyz = {2549.166015625,4784.9506835938,33.122234344482}},
		{xyz = {2552.7397460938,4781.6030273438,32.960494995117}},
		{xyz = {2556.8403320313,4777.779296875,32.938011169434}},
-- RAND 5

		{xyz = {2506.7541503906,4826.9448242188,35.061092376709}},
		{xyz = {2508.8625488281,4825.0200195313,34.810230255127}},
		{xyz = {2511.9133300781,4821.8833007813,34.419048309326}},
		{xyz = {2514.6791992188,4819.0209960938,34.063545227051}},
		{xyz = {2517.9353027344,4815.83203125,34.010272979736}},
		{xyz = {2520.6394042969,4813.0717773438,33.979827880859}},
		{xyz = {2523.7888183594,4809.8422851563,33.934860229492}},
		{xyz = {2526.8659667969,4806.8334960938,33.837368011475}},
		{xyz = {2530.787109375,4802.9477539063,33.72159576416}},
		{xyz = {2534.5625,4800.2661132813,33.534942626953}},
		{xyz = {2539.64453125,4795.31640625,33.435359954834}},
		{xyz = {2542.7939453125,4792.2060546875,33.376811981201}},
		{xyz = {2548.193359375,4787.1748046875,33.130233764648}},
		{xyz = {2552.5107421875,4783.1689453125,32.921031951904}},
		{xyz = {2556.1064453125,4779.775390625,32.910037994385}},
		{xyz = {2559.8210449219,4776.51171875,32.886753082275}},
-- RAND 6

		{xyz = {2508.2873535156,4828.3198242188,35.133148193359}},
		{xyz = {2510.5856933594,4826.1640625,34.817668914795}},
		{xyz = {2513.4814453125,4823.390625,34.466438293457}},
		{xyz = {2520.0231933594,4817.62109375,34.042484283447}},
		{xyz = {2517.1789550781,4820.1552734375,34.098110198975}},
		{xyz = {2523.8703613281,4814.1987304688,33.913864135742}},
		{xyz = {2526.6701660156,4811.5834960938,33.806087493896}},
		{xyz = {2529.5065917969,4809.0014648438,33.702896118164}},
		{xyz = {2533.34375,4805.6396484375,33.584854125977}},
		{xyz = {2537.0681152344,4802.2841796875,33.473690032959}},
		{xyz = {2540.5412597656,4798.96484375,33.366416931152}},
		{xyz = {2544.2421875,4795.3168945313,33.243392944336}},
		{xyz = {2547.8696289063,4791.8564453125,33.105400085449}},
		{xyz = {2551.2421875,4788.5922851563,32.956340789795}},
		{xyz = {2555.3894042969,4784.5844726563,32.785934448242}},
		{xyz = {2558.4460449219,4781.6352539063,32.832286834717}},
		{xyz = {2561.9213867188,4778.267578125,32.85661315918}},
-- RAND 7

		{xyz = {2510.921875,4831.2099609375,35.213493347168}},
		{xyz = {2513.2629394531,4828.966796875,34.944808959961}},
		{xyz = {2517.8046875,4824.5830078125,34.424087524414}},
		{xyz = {2522.5717773438,4819.9609375,34.103572845459}},
		{xyz = {2526.8178710938,4815.8784179688,33.915390014648}},
		{xyz = {2532.3569335938,4810.6088867188,33.72794342041}},
		{xyz = {2537.5373535156,4805.6806640625,33.571025848389}},
		{xyz = {2542.7221679688,4800.7973632813,33.346675872803}},
		{xyz = {2548.3347167969,4795.48046875,33.093326568604}},
		{xyz = {2553.7619628906,4790.4970703125,32.901298522949}},
		{xyz = {2558.9851074219,4785.6435546875,32.787612915039}},

-- RAND 8

		{xyz = {2513.8247070313,4833.341796875,35.251487731934}},
		{xyz = {2567.6010742188,4782.908203125,32.897365570068}},
		{xyz = {2516.6325683594,4830.6567382813,34.959136962891}},
		{xyz = {2520.2387695313,4827.2153320313,34.549457550049}},
		{xyz = {2523.9482421875,4823.6860351563,34.274669647217}},
		{xyz = {2528.7790527344,4819.0849609375,34.044174194336}},
		{xyz = {2534.6423339844,4813.5087890625,33.849231719971}},
		{xyz = {2541.1276855469,4807.3491210938,33.630489349365}},
		{xyz = {2546.4143066406,4802.525390625,33.343723297119}},
		{xyz = {2551.7739257813,4797.5522460938,33.068248748779}},
		{xyz = {2556.8662109375,4792.841796875,32.900173187256}},
		{xyz = {2560.9763183594,4789.0336914063,32.800868988037}},
		{xyz = {2564.7172851563,4785.5747070313,32.827541351318}},
-- RAND 9

		{xyz = {2571.541015625,4785.6508789063,33.054054260254}},
		{xyz = {2569.3215332031,4787.796875,32.994487762451}},
		{xyz = {2565.1318359375,4791.6821289063,32.864742279053}},
		{xyz = {2559.630859375,4796.7944335938,32.93123626709}},
		{xyz = {2555.5224609375,4800.6645507813,33.052791595459}},
		{xyz = {2549.6960449219,4806.1274414063,33.345943450928}},
		{xyz = {2545.8732910156,4809.7158203125,33.541412353516}},
		{xyz = {2541.2744140625,4814.01953125,33.766056060791}},
		{xyz = {2537.4792480469,4817.5576171875,33.951416015625}},
		{xyz = {2531.8898925781,4822.7255859375,34.215354919434}},
		{xyz = {2526.6770019531,4827.5478515625,34.472362518311}},
		{xyz = {2523.2521972656,4830.7197265625,34.732501983643}},
		{xyz = {2520.3229980469,4833.4609375,35.04220199585}},
		{xyz = {2516.8425292969,4836.7724609375,35.406024932861}},
-- RAND 10
		{xyz = {2519.55859375,4839.326171875,35.609756469727}},
		{xyz = {2521.4458007813,4837.6171875,35.423492431641}},
		{xyz = {2525.4055175781,4833.8896484375,34.967838287354}},
		{xyz = {2530.732421875,4828.6469726563,34.533222198486}},
		{xyz = {2535.9621582031,4823.5766601563,34.212051391602}},
		{xyz = {2540.91015625,4818.9013671875,33.931884765625}},
		{xyz = {2546.1264648438,4814.3754882813,33.640930175781}},
		{xyz = {2551.4719238281,4809.8916015625,33.382049560547}},
		{xyz = {2557.4025878906,4804.1567382813,33.071475982666}},
		{xyz = {2562.7902832031,4799.1596679688,32.930526733398}},
		{xyz = {2567.5266113281,4794.8813476563,32.894458770752}},
		{xyz = {2570.0334472656,4792.5571289063,32.986026763916}},
		{xyz = {2574.0102539063,4789.0522460938,33.157703399658}},
-- RAND 11

		{xyz = {2576.5595703125,4791.1000976563,33.326778411865}},
		{xyz = {2572.9587402344,4794.6044921875,33.165756225586}},
		{xyz = {2569.6857910156,4797.6015625,32.976078033447}},
		{xyz = {2564.5727539063,4802.3754882813,32.998420715332}},
		{xyz = {2558.2763671875,4808.29296875,33.172050476074}},
		{xyz = {2552.8449707031,4813.5063476563,33.449745178223}},
		{xyz = {2547.8190917969,4818.3666992188,33.731651306152}},
		{xyz = {2542.9685058594,4823.0659179688,34.020664215088}},
		{xyz = {2538.9030761719,4827.0009765625,34.261932373047}},
		{xyz = {2532.8625488281,4832.8505859375,34.744060516357}},
		{xyz = {2529.2026367188,4836.3623046875,35.105113983154}},
		{xyz = {2524.2045898438,4841.1259765625,35.789546966553}},

-- RAND 12

		{xyz = {2525.5131835938,4845.1484375,36.162666320801}},
		{xyz = {2527.8366699219,4843.037109375,35.838283538818}},
		{xyz = {2531.330078125,4840.0034179688,35.370288848877}},
		{xyz = {2534.9670410156,4836.4301757813,34.912170410156}},
		{xyz = {2539.435546875,4832.2133789063,34.526550292969}},
		{xyz = {2545.1396484375,4826.9409179688,34.219036102295}},
		{xyz = {2550.861328125,4821.6713867188,34.085872650146}},
		{xyz = {2556.7749023438,4816.1928710938,33.679512023926}},
		{xyz = {2562.5791015625,4810.9321289063,33.176372528076}},
		{xyz = {2567.0205078125,4806.8745117188,33.064506530762}},
		{xyz = {2571.4123535156,4802.8603515625,32.981979370117}},
		{xyz = {2574.8291015625,4799.734375,33.167945861816}},
		{xyz = {2577.8447265625,4796.9770507813,33.410411834717}},
		{xyz = {2580.6223144531,4794.4467773438,33.578155517578}},

-- RAND 13
		{xyz = {2583.5786132813,4797.1303710938,33.741760253906}},
		{xyz = {2581.6342773438,4799.03125,33.613746643066}},
		{xyz = {2578.2346191406,4802.3061523438,33.428825378418}},
		{xyz = {2574.4284667969,4805.9604492188,33.331424713135}},
		{xyz = {2569.4650878906,4810.640625,33.702583312988}},
		{xyz = {2564.0358886719,4815.8784179688,34.069076538086}},
		{xyz = {2558.4060058594,4821.2456054688,34.402603149414}},
		{xyz = {2553.3002929688,4826.1044921875,34.548728942871}},
		{xyz = {2547.0517578125,4832.0810546875,34.730934143066}},
		{xyz = {2541.4934082031,4837.34765625,35.06160736084}},
		{xyz = {2536.6337890625,4841.9409179688,35.458171844482}},
		{xyz = {2532.6018066406,4845.7958984375,36.071224212646}},
		{xyz = {2529.1672363281,4849.234375,36.629398345947}},

-- RAND 14
		{xyz = {2530.7556152344,4850.814453125,36.919292449951}},
		{xyz = {2533.4912109375,4848.3247070313,36.484672546387}},
		{xyz = {2537.8969726563,4844.259765625,35.916507720947}},
		{xyz = {2542.0590820313,4840.4555664063,35.670848846436}},
		{xyz = {2546.3376464844,4836.4384765625,35.448329925537}},
		{xyz = {2551.08203125,4832.0307617188,35.36897277832}},
		{xyz = {2556.6975097656,4826.7788085938,35.492565155029}},
		{xyz = {2561.4614257813,4822.3364257813,35.260097503662}},
		{xyz = {2567.201171875,4817.0903320313,34.903759002686}},
		{xyz = {2571.4851074219,4813.1206054688,34.483570098877}},
		{xyz = {2575.8447265625,4809.0693359375,34.005687713623}},
		{xyz = {2579.8012695313,4805.388671875,33.784767150879}},
		{xyz = {2582.8645019531,4802.5473632813,33.712699890137}},
		{xyz = {2586.0922851563,4799.5908203125,33.906059265137}}
}

RegisterNetEvent("ples:startPlant")
AddEventHandler("ples:startPlant", function()
  	textFain("~w~Du-te pe ~r~camp ~w~si planteaza niste ~r~seminte~w~!", 10)
  	paCamp = true
end)

local lotNames = {}
RegisterNetEvent("ples:setLotName")
AddEventHandler("ples:setLotName", function(k, v)
	lotNames[k] = v
end)

local weedprops = {}
local weedstates = {}

RegisterNetEvent("ples:updateStates")
AddEventHandler("ples:updateStates", function(k, v)
	weedstates[k] = v
end)

RegisterNetEvent("ples:UltraDelete")
AddEventHandler("ples:UltraDelete", function(object)
    if DoesEntityExist(object) then
    NetworkRequestControlOfEntity(object)
    while not NetworkHasControlOfEntity(object) do
        Citizen.Wait(1)
    end
    SetEntityCollision(object, false, false)
    SetEntityAlpha(object, 0.0, true)
    SetEntityAsMissionEntity(object, true, true)
    SetEntityAsNoLongerNeeded(object)
    DeleteEntity(object)
    end
end)

RegisterNetEvent("ples:updateLots")
AddEventHandler("ples:updateLots", function(k, v)

	local pos2 = locatiiFertile[k]
	local pos = pos2.xyz

	TriggerEvent("ples:UltraDelete", weedprops[k])

	if v == 1 then
		weedprops[k] = CreateObject(GetHashKey("prop_weed_02"), pos[1], pos[2], pos[3], true, true, true)
	elseif v == 2 then
		weedprops[k] = CreateObject(GetHashKey("prop_weed_01"), pos[1], pos[2], pos[3], true, true, true)
	end

	if DoesEntityExist(weedprops[k]) then
		PlaceObjectOnGroundProperly(weedprops[k])
		SetEntityRotation(weedprops[k], 0.00, 0.00, 340.00)
		SetEntityCanBeDamaged(weedprops[k], false)
		SetEntityAsMissionEntity(weedprops[k], true, true)
	end
end)


Citizen.CreateThread(function()
	RequestModel(GetHashKey("a_m_y_business_01"))
	while not HasModelLoaded(GetHashKey("a_m_y_business_01")) do
		Wait(1)
	end
		            local p = GetEntityCoords(GetPlayerPed(-1))


	RequestAnimDict("mini@strip_club@idles@bouncer@base")
	while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
		Wait(1)
	end

			-- Spawn the DMV Ped
	for _, item in pairs(dmvped) do
		dmvmainped =  CreatePed(item.type, item.hash, item.x, item.y, item.z, item.a, false, true)
		SetEntityHeading(dmvmainped, 0.0)
		FreezeEntityPosition(dmvmainped, true)
	SetEntityInvincible(dmvmainped, true)
	SetBlockingOfNonTemporaryEvents(dmvmainped, true)
		TaskPlayAnim(dmvmainped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
		end
	local ped = GetPlayerPed(-1)
	while true do
		Citizen.Wait(2)
		if paCamp then
			local pos = GetEntityCoords(ped, true)

			for k,v in pairs(locatiiFertile) do
				local pos2 = v.xyz
				local dist = Vdist(pos.x, pos.y, pos.z, pos2[1], pos2[2], pos2[3])

				if dist < 15.0 then
					if weedstates[k] ~= 1 and weedstates[k] ~= 2 then
						drawText3D(pos2[1], pos2[2], pos2[3] + 0.8, "~w~Aici poti planta ~g~IARBA")
					elseif weedstates[k] == 1 then
						drawText3D(pos2[1], pos2[2], pos2[3] + 0.8, "~w~Iarba ~o~CRESTE")
					else
						drawText3D(pos2[1], pos2[2], pos2[3] + 0.8, "~w~Poti colecta ~g~IARBA")
					end

					if lotNames[k] ~= nil and weedstates[k] == 2 and tostring(lotNames[k]) ~= "nil" then
						drawText3D(pos2[1], pos2[2], pos2[3] + 0.91, "~w~Owner ~b~"..tostring(lotNames[k]):upper())
					end

					if dist < 1.0 and weedstates[k] ~= 1 then
						if weedstates[k] ~= 2 then
							drawInfo("Apasa ~INPUT_CONTEXT~ pentru a planta niste seminte")
						else
							drawInfo("Apasa ~INPUT_CONTEXT~ pentru a colecta niste iarba")
						end

						if IsControlJustPressed(1, 51)  then
							TriggerServerEvent('ples:planteazaTata', k)
							Wait(11000)
						end
					end

					DrawMarker(20, pos2[1], pos2[2], pos2[3], 0, 0, 0, 0, 0, 0, 0.6001,0.6001,0.6001, 5, 144, 51, 100, 0, 0, 0, 1, 0, 0, 0)
				elseif dist >= 400.0 then
					paCamp = false
				end
			end
		end
	end
end)