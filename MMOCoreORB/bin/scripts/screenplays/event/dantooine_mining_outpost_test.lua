DantooineMiningOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "DantooineMiningOutpostScreenPlay"
}

registerScreenPlay("DantooineMiningOutpostScreenPlay", true)

function DantooineMiningOutpostScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
	end
end

function DantooineMiningOutpostScreenPlay:spawnMobiles()

	--In The Cantina
	spawnMobile("dantooine", "businessman", 60, -8, 0.6, -6, 83, 6205566)

	--Outside
	spawnMobile("dantooine", "janta_shaman", 60, -603, 3, 2485, 345, 0)
	spawnMobile("dantooine", "janta_tribesman", 60, -647, 3, 2456, 181, 0)
	spawnMobile("dantooine", "janta_rockshaper", 60, -636, 3, 2507, 155, 0)
	spawnMobile("dantooine", "janta_warrior", 60, -575, 3, 2503, 36, 0)
	spawnMobile("dantooine", "janta_scout", 60, -627, 3, 2531, 81, 0)
	spawnMobile("dantooine", "janta_warrior", 300, -616, 3, 2509, 314, 0)
	spawnMobile("dantooine", "janta_warrior", 300, -562, 3, 2512, 108, 0)
	spawnMobile("dantooine", "janta_soothsayer", 60, -643, 3, 2449, 341,0)
	spawnMobile("dantooine", "janta_warrior", 60, -600, 3, 2548, 16, 0)
	spawnMobile("dantooine", "janta_herbalist", 60, -580, 3, 2530, 29, 0)
	spawnMobile("dantooine", "janta_warrior", 60, -611, 3, 2533, 209, 0)
	spawnMobile("dantooine", "janta_hunter", 60, -628, 3, 2509, 149, 0)
	spawnMobile("dantooine", "janta_warrior", 60, -615, 3, 2518, 76, 0)
	spawnMobile("dantooine", "janta_primalist", 60, -621, 3, 2500, 334, 0)
	spawnMobile("dantooine", "janta_warrior", 60, -641, 3, 2472, 264, 0)
	spawnMobile("dantooine", "janta_warrior", 60, -662, 3, 2482, 92, 0)
	spawnMobile("dantooine", "janta_warrior", 60, -655, 3, 2461, 14, 0)
--	spawnMobile("dantooine", "feral_force_wilder", 60, -631, 3, 2463, 302, 0)
	spawnMobile("dantooine", "janta_warrior", 60, -647, 3, 2449, 73, 0)
--	spawnMobile("dantooine", "feral_force_wilder", 60, -611, 3, 2488, 311, 0)
	spawnMobile("dantooine", "janta_warrior", 60, -602, 3, 2506, 285, 0)
	spawnMobile("dantooine", "janta_clan_leader", 60, -568, 3, 2511, 51, 0)
	spawnMobile("dantooine", "janta_warrior", 300, -620, 3, 2450, 281, 0)
	spawnMobile("dantooine", "janta_warrior", 300, -665, 3, 2462, 261, 0)
--	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, -594, 3, 2500, 47, 0)
--	spawnMobile("dantooine", "untrained_padawan", 300, -658, 3, 2480, 334, 0)
--	spawnMobile("dantooine", "novice_force_mystic", 300, -665, 3, 2465, 120, 0)
	spawnMobile("dantooine", "janta_warrior", 450,-588.773,3,2499.09,264.624,0)
	
	--Left these in dantooine.lua because of the custom name etc
	--{"traga_npc",60,-9.37871,0.625,2.98841,82.9313,6205565, "neutral", ""},
	--{"quich_marae",60,1579.04,4,-6374.52,48.4898,0, "calm", "Quich Marae",JUNKJEDI,JUNKCONVQUICHDANTOOINE},
	--{"kess_yarrow",60,-623.484,3,2481.77,149.192,0, "neutral", ""},
	--{"rane_yarrow",60,-625.457,3,2479.41,86.8842,0, "neutral", ""},
	--{"fern_yarrow",60,-625.684,3,2481.19,119.665,0, "neutral", ""},
	--{"r2",60,-635.747,3,2503.81,353.861,0, "calm", "R2-H5"},
	--{"r4",60,-643.739,3,2506.86,129.211,0, "calm", "R4-Y9"},
	--{"r4",60,-666.582,3,2494.33,121.479,0, "calm", "R4-A2"},


end
