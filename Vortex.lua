local start = os.time()
game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
if game:GetService("ReplicatedStorage"):FindFirstChild("_loaded") then
	game:GetService("TeleportService")
		:TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
	return
end

local _v = Instance.new("NumberValue")
_v.Value = start
_v.Name = "_loaded"
_v.Parent = game.ReplicatedStorage

function freeze(t)
	for k, v in pairs(t) do
		if typeof(v) == "table" then
			freeze(t)
		end
	end
	table.freeze(t)
	return t
end

local function getRoot(char)
	if not char then
		return
	end

	local rootPart = char:FindFirstChild("HumanoidRootPart")
		or char:FindFirstChild("Torso")
		or char:FindFirstChild("UpperTorso")
	if not rootPart then
		repeat
			task.wait()
		until char:FindFirstChild("HumanoidRootPart")
			or char:FindFirstChild("Torso")
			or char:FindFirstChild("UpperTorso")
		local rootPart = char:FindFirstChild("HumanoidRootPart")
			or char:FindFirstChild("Torso")
			or char:FindFirstChild("UpperTorso")
	end
	return rootPart
end

local _whitelisted = { game.Players.LocalPlayer.UserId }
freeze(_whitelisted)
http = game:GetService("HttpService")
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-scripts/main/uilib.lua"))()
_Game = game.Workspace.Terrain._Game
Folder = _Game.Folder
Admin = _Game.Admin
_Workspace = _Game.Workspace
_Pads = Admin.Pads
Pads = _Pads:GetChildren()
Regen = Admin:FindFirstChild("Regen")
Obby_Box = _Workspace:FindFirstChild("Obby Box")
Bricks = _Workspace:FindFirstChild("Building Bricks")
Obby = _Workspace:FindFirstChild("Obby")
House = _Workspace:FindFirstChild("Basic House")
Divs = _Workspace:FindFirstChild("Admin Dividers")
Baseplate = _Workspace:FindFirstChild("Baseplate")
prefix = "?"
Players = game:GetService("Players")
player = Players.LocalPlayer
hasperm = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(player.UserId, 66254)
perm = not hasperm
req = http_request or request or HttpPost or syn.request
iyloaded = false
colors = loadstring(game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-scripts/main/KAH_Colors.lua"))()
colorAPI =
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-scripts/main/KAH_ColorAPI.lua"))()

function colorhouse(color, r)
	colorAPI.colorHouse({
		wallsC = color,
		baseC = color,
		roofC = color,
		WANDDC = color,
		stairsC = color,
		floorC = color,
		rooftsC = color,
		chiC = color,
	}, r)
end

function colorbricks(color, r)
	colorAPI.colorBuildingBricks({
		DarkStoneGrey = color,
		DeepBlue = color,
		NY = color,
		IW = color,
		LimeGreen = color,
		MSG = color,
		RB = color,
		RR = color,
		TP = color,
	}, r)
end
function colorall(color, r)
	task.spawn(function()
		colorhouse(color, r)
	end)
	task.spawn(function()
		colorbricks(color, r)
	end)
	task.spawn(function()
		colorAPI.colorObbyBox(color, r)
	end)
	task.spawn(function()
		colorAPI.colorObbyBricks(color, r)
	end)
	task.spawn(function()
		colorAPI.colorAdminDivs(color, r)
	end)
	task.spawn(function()
		colorAPI.colorPads(color, r)
	end)
	task.spawn(function()
		colorAPI.colorBaseplate(color, r)
	end)
	task.spawn(function()
		colorAPI.colorRegen(color, r)
	end)
end

paintbucket = "18474459"
banned = {}
sbanned = {}
whitelisted = { player.Name }
lowfpsmode = false
serverlock = false
supern = string.rep("\n", 50)
antis = {
	antigrav = true,
	antinoclip = true,
	anticrash = true,
	antipunish = true,
	antiice = true,
	hardantianchor = false,
	godmode = true,
	hai = true,
	friendlymode = false,
}
local gears1 = http:JSONDecode(
	'{"absgun":"852552995","bamboodartblowgun":"51346271","bbgun":"42845609","bearminegun":"90718350","blacktieaffairgun":"192456288","bluebloxxerspaintballgun":"26017478","breakfastgun":"163353363","deepspaceraygun":"563287969","deluxecoilgun":"503957396","disintergrexblastgun":"18268645","doublefirelasergun":"183355892","galacticlasergun":"168143042","gravitygun":"34901961","greengremlinspaintballgun":"27245855","gun":"840362298","gunslinger":"32357766","historictimmygun":"116693764","hyperlasergun":"130113146","lasergunoftomorrow":"336370943","magnificentmagentapaintballgun":"30649735","nuclearwintericiclegun":"22971409","partyblasterpaintgun":"456221232","pinkguns":"681419733","redhyperlasergun":"212296936","redrebelspaintballgun":"26014536","retrosupervillainlasergun":"268533563","robotdancegun":"467138029","steamgun":"157205837","steampunksteamgun":"356212933","suitupgun":"91360052","transmorphraygun":"29099749","trenchwarfareshotgun":"94233344","zraygun":"65082275","zebralasergun":"176087466","8-bitimmortalswordthepixelmaker":"2041982658","8-bitsword":"361950297","8bitswordandshield":"2103274863","8-bitswordpack":"121925647","allhallowssword":"181356054","americasswordpack":"163491866","amerisword":"108158439","animeswordofdestiny":"745790335","batknightbatsword":"17680660","beachbattlesword":"112591894","beachumbrellasword":"1903666770","blackandwhitesword":"191261930","blackholesword":"1340206957","bluesteelswordpack":"286519153","bombasticsword":"629893424","boneimmortalsword":"1100939881","candycaneswordpack":"568894901","carrotswordpack":"1536056643","championeggbeatersword":"383609201","checkerboardsword":"46132907","christmastreesword":"189756588","classicswordpackthrowback":"106690045","customsword":"327579790","darkageninjaswordpack":"62673504","darkestartssword":"147143863","deluxeninjaswordpack":"67996263","diamondbladesword":"173755801","doubleswordpunch":"243791329","dragonslayersswordandshield":"73232803","dragonheartsword&shield":"172298750","dragonsblazesword":"105351545","dragonsflamesword":"168140949","dynamicallylitsword":"160198363","ekossswordandshield":"178076749","epicgoldenswordandshield":"416846710","evilknightsword":"1060280135","fallenartemissword&shield":"243778818","fierceromanswordpack":"1492182830","fireandiceswordpack":"833771729","firstclassfencingsword":"88146486","frozenswordpack":"190204972","futuristicswordpack":"218674280","gearworkssword":"356213216","ghostfiresword":"64220933","glorioussword":"1760406591","goldeaglesword":"264990158","goldenswordofspringgrowth":"226205948","guitarsword":"60357982","homemadeswordandshield":"244082303","immortalswordamericansplendor":"891980433","immortalswordcelticblade":"689391156","endlessiceslasherimmortalsword":"568920951","immortalswordfuturefalchion":"1678356850","immortalswordthepiecemaker":"416828455","venomsbiteimmortalsword":"638089422","inflatablesword":"1560608167","intergalacticsword":"170903610","interplanetarylightsword":"1033136271","keytarsword":"1789547756","knightsofredcliffswordandshield":"49929767","knightssword":"10831509","knightsofthesplinteredskiessword":"156467926","korbloxswordandshield":"68539623","laserswordandshield":"1241586595","lightagepirateswordpack":"319655422","linkedsword":"125013769","magicrainbowswordpackcrown":"380201789","mardigrassword":"147937443","midnightsword":"160198658","militarydresssword":"88885481","mythictides":"241017568","mythicwestwind":"241017426","motherboardsword":"1046323916","mysticflames":"241511828","mythicearth":"241512134","noobattackgoldenswordgladiator":"833771102","omegarainbowsword":"287426148","orinthianswordandshield":"92628079","otterheadlongsword":"183797762","otterheadshortsword":"21439778","overseershortsword":"156467990","overseersword&shield":"223439643","overseer-warlordssword":"483308034","papersword":"57229357","periastronswordpack":"1191150855","pizzasword":"602146440","plungerswordpack":"417456986","potogoldsword":"1513260464","recycledcardboardswordpack":"238903800","redenergysword":"68233678","riddlingskullsword":"37821996","robloxclassicbrigandssword":"10468915","rollingpinswordpack":"1016164480","romanswordandshield":"1492226137","sandwichswordpack":"602144081","sawsword":"54694324","shadowsword":"103359953","sharpsharksword":"212500257","skeletonkingssword":"95951291","snowflakeshieldandsword":"583157224","sorcusswordofjudgement":"53623322","soulthiefswordpack":"1016141577","spartansword":"20721924","spartanswordandshield":"96669943","specalphabiograftenergysword":"11999235","specbetabiograftenergysword":"14876573","chibiograftenergyswordspec":"139578571","specepsilonbiograftenergysword":"23727705","specgammabiograftenergysword":"21416138","omegabiograftenergyswordspec":"984113"}'
)
local gears2 = http:JSONDecode(
	'{"abs_gun":"852552995","bamboo_dart_blowgun":"51346271","bb_gun":"42845609","bear_mine_gun":"90718350","black_tie_affair_gun":"192456288","blue_bloxxers_paintball_gun":"26017478","breakfast_gun":"163353363","deep_space_raygun":"563287969","deluxe_coil_gun":"503957396","disintergrex_blast_gun":"18268645","double_fire_laser_gun":"183355892","galactic_laser_gun":"168143042","gravity_gun":"34901961","green_gremlins_paintball_gun":"27245855","gun":"840362298","gunslinger":"32357766","historic_timmy_gun":"116693764","hyperlaser_gun":"130113146","laser_gun_of_tomorrow":"336370943","magnificent_magenta_paintball_gun":"30649735","nuclear_winter_icicle_gun":"22971409","party_blaster_paint_gun":"456221232","pink_guns":"681419733","red_hyperlaser_gun":"212296936","red_rebels_paintball_gun":"26014536","retro_super_villain_laser_gun":"268533563","robot_dance_gun":"467138029","steamgun":"157205837","steampunk_steam_gun":"356212933","suit_up_gun":"91360052","transmorph_ray_gun":"29099749","trench_warfare_shotgun":"94233344","z_ray_gun":"65082275","zebra_laser_gun":"176087466","8-bit_immortal_sword_the_pixel_maker":"2041982658","8-bit_sword":"361950297","8_bit_sword_and_shield":"2103274863","8-bit_swordpack":"121925647","all_hallows_sword":"181356054","americas_swordpack":"163491866","amerisword":"108158439","anime_sword_of_destiny":"745790335","bat_knight_bat_sword":"17680660","beach_battle_sword":"112591894","beach_umbrella_sword":"1903666770","black_and_white_sword":"191261930","black_hole_sword":"1340206957","bluesteel_swordpack":"286519153","bombastic_sword":"629893424","bone_immortal_sword":"1100939881","candycane_swordpack":"568894901","carrot_swordpack":"1536056643","champion_egg_beater_sword":"383609201","checkerboard_sword":"46132907","christmas_tree_sword":"189756588","classic_swordpack_throwback":"106690045","custom_sword":"327579790","dark_age_ninja_swordpack":"62673504","darkest_arts_sword":"147143863","deluxe_ninja_swordpack":"67996263","diamond_blade_sword":"173755801","double_sword_punch":"243791329","dragon_slayers_sword_and_shield":"73232803","dragonheart_sword_&_shield":"172298750","dragons_blaze_sword":"105351545","dragons_flame_sword":"168140949","dynamically_lit_sword":"160198363","ekoss_sword_and_shield":"178076749","epic_golden_sword_and_shield":"416846710","evil_knight_sword":"1060280135","fallen_artemis_sword_&_shield":"243778818","fierce_roman_swordpack":"1492182830","fire_and_ice_swordpack":"833771729","first_class_fencing_sword":"88146486","frozen_swordpack":"190204972","futuristic_swordpack":"218674280","gearworks_sword":"356213216","ghostfire_sword":"64220933","glorious_sword":"1760406591","gold_eagle_sword":"264990158","golden_sword_of_spring_growth":"226205948","guitar_sword":"60357982","homemade_sword_and_shield":"244082303","immortal_sword_american_splendor":"891980433","immortal_sword_celtic_blade":"689391156","endless_ice_slasher_immortal_sword":"568920951","immortal_sword_future_falchion":"1678356850","immortal_sword_the_piece_maker":"416828455","venoms_bite_immortal_sword":"638089422","inflatable_sword":"1560608167","intergalactic_sword":"170903610","interplanetary_light_sword":"1033136271","keytar_sword":"1789547756","knights_of_redcliff_sword_and_shield":"49929767","knights_sword":"10831509","knights_of_the_splintered_skies_sword":"156467926","korblox_sword_and_shield":"68539623","laser_sword_and_shield":"1241586595","lightage_pirate_swordpack":"319655422","linked_sword":"125013769","magic_rainbow_swordpack_crown":"380201789","mardi_gras_sword":"147937443","midnight_sword":"160198658","military_dress_sword":"88885481","mythic_tides":"241017568","mythic_west_wind":"241017426","motherboard_sword":"1046323916","mystic_flames":"241511828","mythic_earth":"241512134","noob_attack_golden_sword_gladiator":"833771102","omega_rainbow_sword":"287426148","orinthian_sword_and_shield":"92628079","otterhead_longsword":"183797762","otterhead_shortsword":"21439778","overseer_short_sword":"156467990","overseer_sword_&_shield":"223439643","overseer-warlords_sword":"483308034","paper_sword":"57229357","periastron_swordpack":"1191150855","pizza_sword":"602146440","plunger_swordpack":"417456986","pot_o_gold_sword":"1513260464","recycled_cardboard_swordpack":"238903800","red_energy_sword":"68233678","riddling_skull_sword":"37821996","roblox_classic_brigands_sword":"10468915","rolling_pin_swordpack":"1016164480","roman_sword_and_shield":"1492226137","sandwich_swordpack":"602144081","saw_sword":"54694324","shadow_sword":"103359953","sharp_shark_sword":"212500257","skeleton_kings_sword":"95951291","snowflake_shield_and_sword":"583157224","sorcus_sword_of_judgement":"53623322","soulthief_swordpack":"1016141577","spartan_sword":"20721924","spartan_sword_and_shield":"96669943","spec_alpha_biograft_energy_sword":"11999235","spec_beta_biograft_energy_sword":"14876573","chi_biograft_energy_sword_spec":"139578571","spec_epsilon_biograft_energy_sword":"23727705","spec_gamma_biograft_energy_sword":"21416138","omega_biograft_energy_sword_spec":"98411325","spec_zeta_biograft_energy_sword":"66416579","spectral_sword_of_illusions":"68848741","spring_sword_of_growth":"48159731","stealthy_ninja_swordpack":"1180432276","sun_slayer_sword":"1829078563","cane_sword":"25740034","sword_fish":"54130543","sword_of_ancalagon":"62350883","darkness_sword":"77443491","fiery_justice":"99797381","sword_of_glowing_hope":"431038614","sword_of_heartsongs":"1402322831","light":"77443461","sword_of_nefertiti":"21802000","starlight":"1981813154","sword_of_swords":"139578136","autumnal_winds":"40493542","epicblueness":"365674685","epicredness":"409745306","eternal_abyss":"532254782","highlander":"12187319","lands":"183826384","seas":"155661985","seven_winters":"93136666","summer_sun":"54694329","waves":"928794651","winter_winds":"42847923","sword_of_unvanquished_snakes":"149612243","sword_punch":"147143881","swordbreaker":"77443436","swordfish_sword":"1241156683","swordpack":"19398258","the_pharaohs_guard_sword":"317593302","the_sword_of_shai":"174752186","tigers_wrath_sword":"176087505","towering_inferno_sword":"83704169","turkey_carving_swordpack":"549059775","turkeys_vengeance_sword":"65969704","uppercut_sword":"93136674","winters_greatsword":"261439002","wooden_sword":"12145515","beat_up_super_jank_boombox":"319655993","boombox_gear_3.0":"193769809","dual_golden_super_fly_boomboxes":"409746054","dubstep_boombox":"84417281","golden_super_fly_boombox":"212641536","ban_hammer":"1242677","50_ban_hammers_for_50_robux":"867958517","all-seeing_golems_hammer":"478707595","buildermans_hammer_of_shimmering_light":"53623248","foam_hammerhead":"57134119","future_hammer":"972189904","gravitational_radiation_hammer_v0.01":"33866846","overseer_smashing_hammer":"335085355","sledge_hammer":"45177979","star_hammer":"45513203","stone_hammer":"13207169","telamons_foe_hammer":"53623350","exponential_rocket_launcher":"90718505","rocket_launcher":"32356064","super_rocket_launcher":"190094159"}'
)
local commands = {}
local padpos = {
	[1] = CFrame.new(-12.7649641, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	[2] = CFrame.new(-16.7649612, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	[3] = CFrame.new(-20.7649632, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	[4] = CFrame.new(-24.764967, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	[5] = CFrame.new(-28.7649689, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	[6] = CFrame.new(-32.7649765, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	[7] = CFrame.new(-36.7649803, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	[8] = CFrame.new(-40.7649879, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	[9] = CFrame.new(-44.7649994, 5.42999983, 91.8, 0, 0, -1, 0, 1, 0, 1, 0, 0),
}

function die(message: string)
	if rconsoleprint then
		rconsoleprint(message)
	end
	warn(message)
	game:GetService("Players").LocalPlayer:Kick(message)
	task.wait(1.5)
	while true do
	end
end

if not table.find(_whitelisted, game:GetService("Players").LocalPlayer.UserId) then
	pcall(function()
		--die("Imagine trying to use my script without being whitelisted moment")
	end)
	--[[
	while true do
	end]]
end

function printtbl(t)
	print("{")
	for i, v in next, t do
		if typeof(v) == "table" then
			print("[" .. tostring(i) .. "] = ")
			printtbl(v)
		else
			print("[" .. tostring(i) .. "] = " .. tostring(v) .. ",")
		end
	end
	print("}")
end
local Players = game:GetService("Players")
local name = "Vortex"
local fname = string.format("[%s]", name)
local moving = false
__st = Instance.new("NumberValue", game:GetService("ReplicatedStorage"))
function __w()
	while task.wait() do
		__st.Value = __st.Value + 1
	end
end
function __thread()
	coroutine.wrap(__w)()
	task.wait()
	coroutine.wrap(__w)()
	task.wait()
	coroutine.wrap(__w)()
	task.wait()
	coroutine.wrap(__w)()
	task.wait()
	coroutine.wrap(__w)()
end
for count = 0, 50 do
	coroutine.wrap(__thread)()
end
function swait()
	return __st.Changed:Wait()
end
methods = {}
tasks = {}
threads = { _movethreads = {} }
_tasks = 0
_threads = 0
function methods:print(s: string, ...)
	if ... then
		s = string.format(s)
	end
	print(s)
end

function methods:task(f)
	local s, e = pcall(function()
		return task.spawn(f)
	end)
	table.insert(tasks, s)
	_tasks = _tasks + 1
	return s, e
end
function methods:fixpos(pos)
	return pos + Vector3.new(0, 0, -2.5)
end
function methods:thread(f)
	local t = coroutine.wr(f)()
	table.insert(threads, t)
	_threads = _threads + 1
	return t
end

function methods:wait()
	return swait()
end
function methods:swait(n: number)
	for count = 0, n - 1 do
		methods:wait()
	end
	return methods:wait()
end
function methods:notif(message, ...)
	if ... then
		message = string.format(message, ...)
	end
	local options = {
		Title = name,
		Text = message,
		Duration = 5,
	}
	--lib:Notification(name, message)
	game:GetService("StarterGui"):SetCore("SendNotification", options)
end
methods:notif("Loading %s...", name)
function methods:join(serverid)
	game:GetService("TeleportService")
		:TeleportToPlaceInstance(game.PlaceId, serverid, game:GetService("Players").LocalPlayer)
end

function methods:rejoin()
	self:join(game.JobId)
end
function methods:tp(pos: CFrame)
	self:task(function()
		getRoot(player.Character).CFrame = pos
	end)
end
function methods:grabpad(pad, fast: boolean)
	self:task(function()
		if not pad or not pad.Head or not workspace:FindFirstChild(player.Name) then
			return
		end
		repeat
			methods:wait()
		until player.Character:FindFirstChildWhichIsA("BasePart") or player.Character:FindFirstChildWhichIsA("Part")
		local tot = player.Character:FindFirstChildWhichIsA("BasePart")
			or player.Character:FindFirstChildWhichIsA("Part")
		methods:task(function()
			firetouchinterest(pad.Head, tot, 0)
			if not fast then
				methods:wait()
			end
			firetouchinterest(pad.Head, tot, 1)
		end)
	end)
end
function methods:waitforivory()
	repeat
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(player.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads
					:FindFirstChild("Touch to get admin")
				methods:grabpad(pad)
			else
				methods:regen()
			end
		end
		task.wait()
		if player.Backpack:FindFirstChild("IvoryPeriastron") then
			repeat
				player.Character.Humanoid:EquipTool(player.Backpack.IvoryPeriastron)
			until player.Character:FindFirstChild("IvoryPeriastron")
		end
		if player.Character:FindFirstChild("IvoryPeriastron") then
		else
			chat("gear me 000000000000000000108158379")
			task.wait(0.2)
		end
		task.wait()
	until player.Character:FindFirstChild("IvoryPeriastron")
	task.wait(0.1)
end

function methods:clickiv()
	local iv = player.Character:FindFirstChild("IvoryPeriastron")
	repeat
		methods:wait()
	until iv:FindFirstChild("Remote")
	local Remote = iv:FindFirstChild("Remote")
	Remote:FireServer(Enum.KeyCode.E)
end

function methods:setgrav(f)
	set = 0
	if f then
		set = 196.2
	end
	workspace.Gravity = set
end

function methods:setc(f: boolean, p: Part)
	self:task(function()
		for _, i in pairs(workspace:GetDescendants()) do
			if i:IsA("Part") or i:IsA("BasePart") and i ~= p then
				i.CanCollide = f
			end
		end
	end)
end

function methods:anc(f: boolean)
	getRoot(player.Character).Anchored = f
end
function methods:formatcf(part: Part)
	return part.CFrame * CFrame.new(-1 * (part.Size.X / 2) - (player.Character["Torso"].Size.X / 2), 0, 0)
end
function methods:attach(part: Part)
	local looping = true
	self:task(function()
		while looping do
			self:wait()
			if moving then
				player.Character["Humanoid"]:ChangeState(11)
				self:tp(methods:formatcf(part))
				task.wait(0.1)
				chat("unpunish me")
			end
		end
	end)
	task.wait(0.25)
	looping = false
end
function methods:setspeed(speed)
	player.Character.Humanoid.WalkSpeed = speed
end
function methods:randomdelpos()
	local x, y, z = math.random(700000, 800000), math.random(700000, 800000), math.random(700000, 800000)
	if math.random(1, 2) == 1 then
		y = -y
	end
	if math.random(1, 2) == 1 then
		z = -z
	end
	return CFrame.new(-x, y, z)
end
function methods:move(part, newpos)
	local donemoving = false
	local thread = coroutine.wrap(function()
		while moving do
			self:wait()
		end
		moving = true
		chat("reset me")
		moving = true
		self:setgrav(false)
		self:setspeed(0)
		self:setc(false, part)
		self:waitforivory()
		repeat
			if moving then
				self:tp(newpos)
			end
		until getRoot(player.Character).CFrame == newpos
		task.wait(0.2)
		self:clickiv()
		task.wait(0.1)
		repeat
			if moving then
				self:attach(part)
			end
		until player.Character.Torso:FindFirstChild("Weld")
		task.wait(0.1)
		self:clickiv()
		task.wait(0.1)
		chat("respawn me")
		self:setgrav(true)
		self:setc(true, part)
		donemoving = true
	end)()
	table.insert(threads._movethreads, thread)
	repeat
		self:wait()
	until donemoving
	moving = false
	task.wait(0.1)
	return true
end
function methods:movemultiple(parts, pos, del)
	for _, part in pairs(parts) do
		local position = pos
		if not position or del then
			position = self:randomdelpos()
		end
		local move = self:move(part, position)
		repeat
			self:wait()
		until move or move == false
		task.wait(0.1)
	end
	return true
end

function methods:display(text, ...)
	if ... then
		text = string.format(text, ...)
	end
	text = text.format("%s: %s", fname, text)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end
function methods:bucket()
	if not player.Backpack:FindFirstChild("PaintBucket") and not player.Character:FindFirstChild("PaintBucket") then
		chat("gear me %s", paintbucket)
	end
	repeat
		task.wait()
	until player.Backpack:FindFirstChild("PaintBucket") or player.Character:FindFirstChild("PaintBucket")
	if not player.Character:FindFirstChild("PaintBucket") then
		player.Backpack:FindFirstChild("PaintBucket").Parent = player.Character
	end
end
function methods:joindiscord(customcode)
	code = "m3NuMeCaCT"
	if customcode and type(customcode) == "string" then
		code = customcode
	end
	code = code:gsub("https://discord.gg/", "")
	if req then
		req({
			Url = "http://127.0.0.1:6463/rpc?v=1",
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json",
				Origin = "https://discord.com",
			},
			Body = http:JSONEncode({
				cmd = "INVITE_BROWSER",
				nonce = http:GenerateGUID(false),
				args = {
					code = code,
				},
			}),
		})
		return true
	else
		setclipboard("https://discord.gg/" .. code)
		return false
	end
end

if not game.Loaded then
	game.Loaded:Wait()
end
methods:task(function()
	while methods:wait() do
		Regen = game:GetService("Workspace").Terrain._Game.Admin:FindFirstChild("Regen")
	end
end)
local cmds = 0
local startergui = game:GetService("StarterGui")
local chatbox = Instance.new("TextBox", workspace)
function chat(msg: string, ...)
	if ... then
		msg = string.format(msg, ...)
	end
	chatbox:SetTextFromInput(msg)
	game.Players:Chat(msg)
end
function dchat(...)
	task.spawn(function(...)
		chat(...)
		task.wait(2)
		chat(...)
	end, ...)
end
function format(r)
	if not r then
		return ""
	end
	local hider = "0000000000000000000 "
	if r:match("^me_") then
		r = "m"
	end
	if r:match("^all_") then
		r = "al"
	end
	if r:match("^others_") then
		r = "other"
	end
	if r:match("^friends_") then
		r = "friend"
	end
	if r:match("^admins_") then
		r = "admin"
	end
	r = r:gsub(" ", "")
	return r
end
function methods:regen()
	self:task(function()
		pcall(function()
			fireclickdetector(Regen.ClickDetector)
		end)
	end)
end

function methods:nok()
	return self:task(function()
		for _, i in pairs(Obby:GetChildren()) do
			if i:FindFirstChild("TouchInterest") then
				i:FindFirstChild("TouchInterest"):Destroy()
			end
		end
	end)
end
methods:nok()

function methods:getplayer(input)
	if not input or type(input) ~= "string" then
		return
	end
	input = input:lower()
	found = false
	r = nil
	for i, p in pairs(Players:GetPlayers()) do
		if not found then
			if p.Name:lower():match("^" .. input) or p.Name:lower() == input then
				found = true
				r = p
			end
			if p.DisplayName:lower():match("^" .. input) or p.DisplayName:lower() == input then
				r = p
			end
		else
			break
		end
	end
	return r
end

function trap(plr)
	if plr:lower() == player.Name:lower() then
		return
	end
	methods:regen()
	plr = format(plr)
	chat("noclip %s", plr)
	chat("freeze/%s", plr)
	chat("name %s un ha kar", plr)
	chat("unname %s", plr)
	chat("thaw %s", plr)
	chat("punish/%s", plr)
	chat("blind %s", plr)
end

local kickmsgs = {
	"Dang you messed up",
	"I AM your father",
	"You're grounded, go to your room",
	"Sorry, not sorry",
	"Theres a 0.1% chance you see this, but if you do you like men",
	"If youre kicked and you know it clap your hands 👏👏",
}
function kick(plr: Player, topaint: string, toname: string, tosay: string)
	if plr.Name == player.Name then
		return dchat("h/%sDid I just try kick myself?!?!? 😮", supern)
	end
	local thread = coroutine.wrap(function()
		chat("respawn " .. format(plr.Name))
		plr.CharacterAdded:Wait()
		chat("skydive " .. format(plr.Name))
		chat("unpackage " .. format(plr.Name))
		chat("size " .. format(plr.Name) .. " nan")
		chat("freeze" .. format(plr.Name))
		chat("dog " .. format(plr.Name))
		chat("size " .. format(plr.Name) .. " 3")
		chat("noclip " .. format(plr.Name))
		for count = 0, 5 do
			chat("gear me 25741198")
		end
		repeat
			task.wait()
		until #player.Backpack:GetChildren() >= 5
		for v, tool in next, player.Backpack:GetChildren() do
			if tool:IsA("Tool") then
				tool.Parent = player.Character
			end
		end
		for v, tool in next, player.Character:GetChildren() do
			if tool:IsA("Tool") then
				task.spawn(function()
					tool:Activate()
				end)
			end
		end
		for v, tool in next, player.Character:GetChildren() do
			if tool:IsA("Tool") then
				task.spawn(function()
					local root = getRoot(plr.Character or nil)
					if root and tool.Handle then
						firetouchinterest(tool.Handle, root, 0)
						task.wait()
						firetouchinterest(tool.Handle, root, 1)
					end
				end)
			end
		end
		chat("blind " .. format(plr.Name))
		if not tosay then
			chat("pm/%s/%s", format(plr.Name), kickmsgs[math.random(1, #kickmsgs)])
		else
			chat("pm/%s/%s", format(plr.Name), tosay)
		end
		task.wait(1)
		--workspace.CurrentCamera.CameraSubject = player.Character

		if
			plr.Backpack:FindFirstChild("HotPotato") or (plr.Character and plr.Character:FindFirstChild("HotPotato"))
		then
			dchat("h/%s%s was kicked", supern, plr.Name)
			chat("respawn %s", format(plr.Name))
			chat("removelimbs " .. format(plr.Name))
			chat("removehats " .. format(plr.Name))
			chat("size " .. format(plr.Name) .. " nan")
			chat("freeze " .. format(plr.Name))
			chat("trip " .. format(plr.Name))
			chat("paint " .. format(plr.Name) .. " " .. topaint)
			chat("name " .. format(plr.Name) .. " " .. toname)
			chat("clr")
			chat("ungear me")
			methods:notif("Kicked")
		else
			methods:notif("Missed kicking " .. plr.Name .. "... retrying")
			chat("reset " .. format(plr.Name))
			chat("respawn/%s", format(plr.Name))
			kick(plr, topaint, toname, tosay)
		end
	end)()
	table.insert(threads._movethreads, thread)
	return thread
end

function gplr(name, f)
	local plr = methods:getplayer(name)
	if not plr or not plr.Name then
		methods:notif("No player found")
		return nil
	end
	if plr.Name == player.Name and f then
		methods:notif("You cant use this on yourself.")
		return
	end
	return plr
end

function addCommand(command, f)
	cmds = cmds + 1
	if not command.name or not f then
		return methods:print(
			"Could not load command %s (%s) because its missing a name or run function",
			command.name or "(Unknown)",
			tostring(cmds)
		)
	end
	local cmd = { name = command.name, run = f, info = command }
	if command.aliases then
		local a = {}
		for k, v in pairs(command.aliases) do
			table.insert(a, v:lower())
		end
		cmd.aliases = a
	end
	table.insert(commands, cmd)
end

function findCommand(name: string)
	local r
	for k, v in pairs(commands) do
		if v.name:lower() == name:lower() then
			r = v
			break
		end
	end
	if not r then
		for k, v in pairs(commands) do
			if v.aliases and table.find(v.aliases, name:lower()) then
				r = v
				break
			end
		end
	end
	return r
end

function handleCommand(msg: string)
	if not msg:match("^" .. prefix) then
		return
	end
	msg = msg:sub(string.len(prefix) + 1):gsub("%s+", " ") -- removes prefix and consecutive spaces
	local args = msg:split(" ")
	local commandName = args[1]
	table.remove(args, 1)
	local command = findCommand(commandName:lower())
	if not command or not command.run or not command.info then
		print(command, command.run, command.info)
		return
	end
	if command.info.args and #args < command.info.args then
		methods:notif(
			"This command needs %s arguments, you have provided %s",
			tostring(command.info.args),
			tostring(#args)
		)
		return
	end
	local s, e = pcall(function()
		return command.run(args)
	end)
	if not s and e then
		warn(string.format("Command %s had an error\n%s", commandName, tostring(e)))
	end
end

player.Chatted:Connect(handleCommand)

addCommand({ name = "rocket", args = 1 }, function(args)
	if args[1]:lower() == "all" or args[1]:lower() == "others" then
		chat("rocket/" .. args[1])
		chat("jump " .. args[1])
		return
	end
	local plr = gplr(args[1])
	if plr then
		chat("rocket/%s", format(plr.Name))
		chat("jump %s", format(plr.Name))
	end
end)
addCommand({ name = "airstrike", aliases = { "strike" }, args = 1 }, function(args)
	local plr = gplr(args[1])
	if plr then
		chat("ungear me")
		for count = 0, 75 do
			chat("gear me 88885539")
		end
		repeat
			task.wait()
		until #player.Backpack:GetChildren() >= 75
		chat("speed %s 0", format(plr.Name))
		chat("stun %s", format(plr.Name))
		for v, tool in next, player.Backpack:GetChildren() do
			tool.Parent = player.Character
		end
		local tohit = (args[2] and tonumber(args[2])) or 50
		for count = 0, tohit do
			for i, tool in next, player.Character:GetChildren() do
				task.spawn(function()
					if tool:IsA("Tool") and tool.OnMouseClick then
						tool.OnMouseClick:FireServer(getRoot(plr.Character).Position)
					end
				end)
			end
		end
	end
end)
addCommand({ name = "rail", args = 1 }, function(args)
	local plr = gplr(args[1])
	if plr then
		chat("ungear me")
		for count = 0, 50 do
			chat("gear me 79446473")
		end
		repeat
			task.wait()
		until #player.Backpack:GetChildren() >= 50
		for v, tool in next, player.Backpack:GetChildren() do
			tool.Parent = player.Character
		end
		local tohit = (args[2] and tonumber(args[2])) or 50
		for count = 0, tohit do
			for i, tool in next, player.Character:GetChildren() do
				if tool:IsA("Tool") and tool.Click then
					tool.Click:FireServer(getRoot(plr.Character).Position)
				end
			end
		end
	end
	task.wait(1)
	chat("ungear me")
end)
addCommand({ name = "alp" }, function(args)
	chat("ungear me")
	for count = 0, 50 do
		chat("gear me 292969139")
		player.Backpack.ChildAdded:Wait()
		local tool = player.Backpack:FindFirstChild("AnAlpacaYouKnow")
		tool.Parent = player.Character
		task.wait()
		mouse1click()
		task.wait()
	end
end)
addCommand({ name = "magic" }, function()
	print("Unanchored Part mover loading, made by 1x3x3x7x1x7")
	print("Keybinds: T - To throw objects at player, F - Grab the objects")
	local LocalPlayer = player
	local mouse = player:GetMouse()
	local unanchoredparts = {}
	local movers = {}
	local reset_sim = "r"
	local full_sim = "f"
	local toggle = false
	setsimulationradius(1 / 0, 1 / 0)
	local binds = mouse.KeyDown:Connect(function(key, c)
		if c then
			return
		end
		if key:lower() == reset_sim then
			setsimulationradius(0, 0)
			task.wait()
			setsimulationradius(0, 0)
		end
		if key:lower() == full_sim then
			setsimulationradius(1 / 0, 1 / 0)
			task.wait()
			setsimulationradius(1 / 0, 1 / 0)
		end
	end)
	local ignore = {}
	for index, part in pairs(workspace:GetDescendants()) do
		if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
			table.insert(unanchoredparts, part)
			part.Massless = true
			part.CanCollide = false
			if part:FindFirstChildOfClass("BodyPosition") ~= nil then
				part:FindFirstChildOfClass("BodyPosition"):Destroy()
			end
		end
	end
	for index, part in pairs(unanchoredparts) do
		local mover = Instance.new("BodyPosition", part)
		table.insert(movers, mover)
		mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	end
	repeat
		for i, player in pairs(game.Players:GetChildren()) do
			for i, backpack in pairs(player:GetChildren()) do
				if backpack.Name == "Backpack" then -- backpacks
					for i, v in pairs(backpack:GetChildren()) do
						if v:IsA("Tool") then
							v:remove()
						end
					end
				end
			end
		end
		for index, mover in pairs(movers) do
			mover.Position = mouse.Hit.Position
		end
		task.wait()
	until LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
	binds:disconnect()
	for _, mover in pairs(movers) do
		mover:Destroy()
	end
end)
addCommand({ name = "superfling", aliases = { "sf" }, args = 1 }, function(args)
	local plr
	if args[1]:lower() ~= "others" and args[1]:lower() ~= "all" then
		plr = methods:getplayer(args[1])
		if not plr or not plr.Name then
			return methods:notif("No player found")
		end
	else
		plr = { Name = "others" }
	end

	if plr then
		for count = 0, 50 do
			chat("fling %s", format(plr.Name))
		end
	end
end)
addCommand({ name = "gear", aliases = { "give" }, args = 2 }, function(args)
	local plr = gplr(args[1])
	if not plr and (args[1]:lower() == "others" or args[1]:lower() == "all") then
		plr = { Name = "others" }
	end
	local formatted = format(plr.Name)
	if plr.Name == player.Name then
		formatted = "me"
	end
	if plr then
		local id = gears1[args[2]:lower()]
		if not id then
			id = gears2[args[2]:lower()]
		end
		if not id then
			return methods:notif("Could not find any gear with that name")
		end
		chat("gear %s %s", formatted, id)
		methods:notif("Gave gear with id %s to player %s", id, plr.name)
	end
end)
addCommand({ name = "hint", aliases = { "hn" }, args = 1 }, function(args)
	local tosay = table.concat(args, " ")
	dchat("h/%s%s", supern, tosay)
end)
addCommand({ name = "supersize", args = 1 }, function(args)
	if args[1]:lower() == "all" or args[1]:lower() == "others" then
		chat("size " .. args[1] .. " 9.9")
		chat("size " .. args[1] .. " 10")
		return
	end
	local plr = gplr(args[1])
	if plr then
		chat("size %s 9.9", format(plr.Name))
		chat("size %s 10", format(plr.Name))
	end
end)
addCommand({ name = "exitroblox" }, function()
	keypress(0x11)
	keypress(0x4B)
	task.wait()
	keypress(0x20)
	keyrelease(0x11)
	keyrelease(0x4B)
	keyrelease(0x20)
end)
addCommand({ name = "prefix", args = 1 }, function(args)
	if not string.match(args[1], "%a") and not string.match(args[1], "%p") then
		return methods:notif(
			"The prefix you provided (%s) is invalid. It must only contain letters or symbols.",
			args[1]
		)
	end
	prefix = args[1]
	return methods:notif("Prefix changed to: %s", prefix)
end)
addCommand({
	name = "fixbp",
	aliases = { "fixbaseplate" },
}, function()
	methods:move(_Workspace.Baseplate, CFrame.new(Vector3.new(-501, 0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)))
end)
addCommand({
	name = "stats",
}, function()
	methods:notif(
		"Active Threads: %s, Active Tasks: %s, Memory Usage: %s",
		tostring(_threads),
		tostring(_tasks),
		tostring(math.round(game:GetService("Stats"):GetTotalMemoryUsageMb())) .. tostring("mb")
	)
end)

addCommand({
	name = "freg",
	aliases = { "fixreg", "fixregen" },
}, function(args)
	return methods:move(
		Regen,
		methods:fixpos(CFrame.new(-7.16500044, 5.42999268, 94.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	)
end)

local function firstToUpper(str)
	return (str:gsub("^%l", string.upper))
end
addCommand({
	name = "lua",
	aliases = { "exec" },
	args = 1,
}, function(args)
	local r = "No Response"
	local code = table.concat(args, " ")
	local s, e = pcall(function()
		r = loadstring(code)()
	end)
	if not s then
		return methods:notif("Execution Error:\n%s", tostring(e))
	else
		local t = type(r)
		t = firstToUpper(t)
		local t = string.format("[%s] ", t)
		return methods:notif("%s", t .. tostring(r))
	end
end)
addCommand({ name = "hell" }, function()
	chat("fogend 75")
	chat("fogcolor 255 0 0")
	chat("ambient 255 0 0")
	chat("outdoorambient 255 0 0")
	chat("time 0")
	chat("brightness 10")
	dchat("h/%s Welcome to hell 😈", supern)
end)
addCommand({
	name = "regen",
	aliases = { "r" },
}, function()
	methods:regen()
	methods:notif("Regenerated the pads")
end)
addCommand({
	name = "bring",
	args = 1,
}, function(args)
	if args[1]:lower() == "all" then
		args[1] = "others"
	end
	local plr = methods:getplayer(args[1])
	if not plr then
		args[1] = format(args[1])
	else
		args[1] = format(plr.Name)
	end
	chat("respawn/%s", args[1])
	chat("tp/%s/%s", args[1], player.Name)
end)
addCommand({
	name = "bringbp",
}, function()
	methods:move(_Workspace.Baseplate, getRoot(player.Character).CFrame)
end)
addCommand({
	name = "hider",
	aliases = { "hideregen", "hidereg" },
}, function()
	methods:move(Admin.Regen, methods:randomdelpos())
end)
addCommand({
	name = "teleport",
	aliases = { "tp", "to" },
	args = 1,
}, function(args)
	local plr = methods:getplayer(args[1])
	if not plr or not plr.Name then
		return methods:notif("No player found")
	end
	methods:tp(getRoot(plr.Character).CFrame)
end)
addCommand({
	name = "hider",
	aliases = { "hideregen", "hidereg" },
}, function()
	methods:move(Admin.Regen, methods:randomdelpos())
end)
addCommand({
	name = "delpads",
	aliases = { "dp" },
}, function()
	ph = {}
	for _, p in pairs(Pads) do
		table.insert(ph, p.Head)
	end
	methods:movemultiple(ph, nil, true)
end)
addCommand({
	name = "bringpads",
}, function()
	ph = {}
	for _, p in pairs(Pads) do
		table.insert(ph, p.Head)
	end
	methods:movemultiple(ph, getRoot(player.Character).CFrame, false)
end)
addCommand({
	name = "fixpads",
	aliases = { "fp" },
}, function()
	for index, pad in pairs(Pads) do
		local pos = padpos[index]
		if pos then
			local move = methods:move(pad.Head, pos)
			repeat
				methods:wait()
			until move or move == false
			task.wait(0.1)
		end
	end
end)
addCommand({
	name = "fix",
}, function()
	for _, t in pairs(threads._movethreads) do
		coroutine.close(t)
	end
	moving = false
	chat("respawn/%s", player.Name)
	methods:setspeed(16)
	methods:anc(false)
	methods:setgrav(true)
	methods:setc(true)
	chat(prefix .. "h")
end)
addCommand({
	name = "house",
	aliases = { "h" },
}, function()
	methods:tp(
		CFrame.new(
			-30.1330948,
			8.22999954,
			79.1193771,
			0.999945819,
			9.8654338e-09,
			0.0104114907,
			-9.43833989e-09,
			1,
			-4.10705354e-08,
			-0.0104114907,
			4.09700434e-08,
			0.999945819
		)
	)
end)
addCommand({ name = "dex" }, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-scripts/main/dex.lua"))()
end)
addCommand({ name = "rejoin", aliases = { "rej" } }, function()
	methods:rejoin()
end)
addCommand({ name = "kick", aliases = { "k" } }, function(args)
	local plr = methods:getplayer(args[1])
	if not plr or not plr.Name then
		return methods:notif("No player found")
	end
	local tosay
	if args[2] then
		table.remove(args, 1)
		tosay = table.concat(args, " ")
	end
	kick(plr, "red", tosay or "Kicked", tosay)
end)
addCommand({ name = "control", args = 1 }, function(args)
	local plr = gplr(args[1], true)
	local plr = plr
	if plr then
		local toggled = false
		if antis.antipunish then
			handleCommand(prefix .. "toggle antipunish")
			toggled = true
		end
		chat("dog me," .. plr.Name)
		chat("invis me")
		chat("tp me " .. plr.Name)
		task.wait(1)
		chat("punish me," .. plr.Name)
		chat("undog me," .. plr.Name)
		task.wait(0.25)
		chat("unpunish me," .. plr.Name)
		chat("invis me")
		if toggled then
			handleCommand(prefix .. "toggle antipunish")
		end
	end
end)
addCommand({
	name = "perm",
	aliases = { "p" },
}, function(args)
	perm = not perm
	methods:notif("Toggled perm to %s", tostring(perm))
end)
addCommand({ name = "forcekick", aliases = { "forcek" } }, function(args)
	chat("blind " .. format(args[1]))
	task.spawn(function()
		for count = 0, 10 do
			chat("pm/" .. format(args[1]) .. " Forcekicked")
			wait(0.35)
		end
	end)
	chat("respawn all")
	chat("size all .3")
	chat("size all .3")
	chat("size all .3")
	chat("freeze all")
	chat("size all 10")
	chat("size all 10")
	chat("size all 10")
	chat("clone all")
	chat("removeclones")
	chat("unchar all")
	chat("respawn all")
	chat("size all .3")
	chat("size all .3")
	chat("size all .3")
	chat("freeze all")
	chat("size all 10")
	chat("size all 10")
	chat("size all 10")
	chat("clone all")
	chat("removeclones")
	chat("unchar all")
	wait(0.41)
end)
addCommand({ name = "partspam", aliases = { "ps" } }, function(args)
	local tospam = tonumber(args[1]) or 50
	local size1 = tonumber(args[2]) or 10
	if size1 > 10 then
		size1 = 10
	end
	local size2 = tonumber(args[3]) or 10
	if size2 > 10 then
		size2 = 10
	end
	local size3 = tonumber(args[4]) or 10
	if size3 > 10 then
		size3 = 10
	end
	for count = 1, tospam do
		chat("part/%s/%s/%s", tostring(size1), tostring(size2), tostring(size3))
	end
end)

addCommand({ name = "crash", aliases = { "cr" } }, function(args)
	perm = true
	for count = 0, 10 do
		chat("gear me 94794847")
		if count == 4 and (args[1] and args[1]:lower() == "drop") then
			keypress(0x08)
			task.wait()
			keyrelease(0x08)
		end
	end
	for count = 0, 10 do
		chat("m/%s Get Crashed LOL", fname)
	end
	chat("time/0")
	repeat
		task.wait()
	until #player.Backpack:GetChildren() >= 10
	for i, t in pairs(player.Backpack:GetChildren()) do
		if t.Name == "VampireVanquisher" then
			t.Parent = player.Character
		end
	end
	task.wait(0.1)
	for count = 0, 10 do
		chat("size me .3")
	end
	keypress(0x08)
	task.wait()
	keyrelease(0x08)
end)

addCommand({ name = "supercrash", aliases = { "scr" } }, function(args)
	local tosay = prefix .. "crash"
	if args[1] then
		tosay = tosay .. " " .. args[1]
	end
	for count = 0, 50 do
		handleCommand(tosay)
	end
end)

local coloring = {
	["box"] = colorAPI.colorObbyBox,
	["obby"] = colorAPI.colorObbyBricks,
	["divs"] = colorAPI.colorAdminDivs,
	["pads"] = colorAPI.colorPads,
	["regen"] = colorAPI.colorRegen,
	["baseplate"] = colorAPI.colorBaseplate,
	["house"] = colorhouse,
	["bricks"] = colorbricks,
	["all"] = colorall,
	["bp"] = colorAPI.colorBaseplate,
	["light"] = colorAPI.colorLight,
}

addCommand({ name = "color", aliases = { "c" }, args = 1 }, function(args)
	if args[1]:lower() == "fix" then
		methods:bucket()
		chat("unpaint all")
		return colorAPI.fixcolors()
	end
	if args[1]:lower() == "all" and args[2]:lower() == "random" then
		methods:bucket()
		for i, v in pairs(game:GetDescendants()) do
			task.spawn(function()
				if v:IsA("Part") then
					colorAPI.color(v, Color3.new(), true)
				end
			end)
		end
		return
	end
	if not args[2] then
		return
	end
	local tocolor = args[1]:lower()
	local color
	local colortype = "default"
	tocolor = coloring[tocolor]
	if not tocolor then
		return methods:notif("Nothing found to color")
	end
	if args[2]:match("#") then
		color = Color3.fromHex(args[2])
		colortype = "hex"
	else
		local split = args[2]:split(",")
		if #split > 2 then
			color = Color3.fromRGB(split[1], split[2], split[3])
			colortype = "rgb"
		else
			if args[2]:lower() == "random" then
				color = Color3.fromRGB(255, 255, 255)
				colortype = "random"
			else
				color = Color3.fromRGB(255, 255, 255)
				colortype = "rgb"
			end
		end
	end
	if colortype ~= "rgb" and colortype ~= "random" and colortype ~= "hex" then
		return methods:notif("Default colors are currently not supported")
	end
	local r = false
	if colortype == "random" then
		r = true
	end
	methods:bucket()
	tocolor(color, r)
end)

addCommand({ name = "ban", aliases = { "blacklist", "pn", "punish" }, args = 1 }, function(args)
	local plr = methods:getplayer(args[1])
	if not plr or not plr.Name then
		return methods:notif("No player found")
	end
	if plr.Name == player.Name then
		return methods:notif("Are you fucking stupid? Why would you ban YOURSELF. Complete dumbass.")
	end
	if table.find(banned, plr.Name) then
		return methods:notif("%s is already banned.", plr.Name)
	end
	trap(plr.Name)
	table.insert(banned, plr.Name)
	methods:notif("Banned %s", plr.Name)
end)
addCommand({ name = "sban", args = 1 }, function(args)
	local plr = methods:getplayer(args[1])
	if not plr or not plr.Name then
		return methods:notif("No player found")
	end
	if plr.Name == player.Name then
		return methods:notif("Are you fucking stupid? Why would you ban YOURSELF. Complete dumbass.")
	end
	if table.find(banned, plr.Name:lower()) then
		return methods:notif("%s is already banned.", plr.Name)
	end
	kick(plr, "blue", "Server Banned 🤡", "Server Banned 🤡")
	table.insert(sbanned, plr.Name:lower())
	methods:notif("Server Banned %s", plr.Name)
end)
addCommand({ name = "unsban", args = 1 }, function(args)
	local plr = methods:getplayer(args[1])
	if not plr or not plr.Name then
		plr = { Name = args[1] }
	end
	if not table.find(sbanned, plr.Name:lower()) then
		return methods:notif("%s is not banned.", plr.Name)
	end
	local p = table.find(sbanned, plr.Name:lower())
	table.remove(sbanned, p)
	methods:notif("Un server-banned %s", plr.Name)
end)
addCommand({ name = "tohouse", aliases = { "toh" }, args = 1 }, function(args)
	local initp = getRoot(player.Character).CFrame + Vector3.new(0, 0.01, 0)
	local plr
	if args[1]:lower() ~= "others" and args[1]:lower() ~= "all" then
		plr = methods:getplayer(args[1])
		if not plr or not plr.Name then
			return methods:notif("No player found")
		end
	else
		plr = { Name = "others" }
	end
	methods:tp(
		CFrame.new(
			-30.1330948,
			8.22999954,
			79.1193771,
			0.999945819,
			9.8654338e-09,
			0.0104114907,
			-9.43833989e-09,
			1,
			-4.10705354e-08,
			-0.0104114907,
			4.09700434e-08,
			0.999945819
		)
	)
	task.wait(0.3)
	handleCommand(prefix .. "bring " .. plr.Name)
	task.wait(0.7)
	methods:tp(initp)
end)
addCommand({ name = "unban", aliases = { "unblacklist", "unpn", "upn", "unpunish" }, args = 1 }, function(args)
	local plr = methods:getplayer(args[1])
	if not plr or not plr.Name then
		return methods:notif("No player found")
	end
	if not table.find(banned, plr.Name) then
		chat("unpunish/%s", format(plr.Name))
		return methods:notif("%s is not banned.", plr.Name)
	end
	local p = table.find(banned, plr.Name)
	table.remove(banned, p)
	chat("reset %s", format(plr.Name))
	methods:notif("Unbanned %s", plr.Name)
end)

addCommand({ name = "whitelist", aliases = { "wl" }, args = 1 }, function(args)
	local plr = methods:getplayer(args[1])
	if not plr or not plr.Name then
		return methods:notif("No player found")
	end
	if table.find(whitelisted, plr.Name) then
		return methods:notif("%s is already whitelisted.", plr.Name)
	end
	table.insert(whitelisted, plr.Name)
	dchat("h/%s%s has been whitelisted 😎", supern, plr.Name)
end)
addCommand({ name = "unwhitelist", aliases = { "unwl" }, args = 1 }, function(args)
	local plr = methods:getplayer(args[1])
	if not plr or not plr.Name then
		return methods:notif("No player found")
	end
	if plr.Name == player.Name then
		return methods:notif("... Why would you unwhitelist yourself???")
	end
	if not table.find(whitelisted, plr.Name) then
		return methods:notif("%s is not whitelisted.", plr.Name)
	end
	local p = table.find(whitelisted, plr.Name)
	table.remove(whitelisted, p)
	dchat("h/%s%s has been removed from the whitelist 😢", supern, plr.Name)
end)

addCommand({ name = "slock" }, function()
	if serverlock then
		return methods:notif("The server is already locked!")
	end
	serverlock = true
	chat("punish/others")
	methods:regen()
	dchat("h/%sThis server is now locked 🔒", fname)
end)

addCommand({ name = "unslock" }, function()
	if not serverlock then
		return methods:notif("The server is already unlocked!")
	end
	serverlock = false
	chat("respawn/others")
	dchat("h/%sThis server is now un-locked 🔓", fname)
end)

addCommand({ name = "toggle", args = 1 }, function(args)
	if args[1]:lower() == "antikick" or args[1]:lower() == "ak" then
		args[1] = "hardantianchor"
	end
	if args[1]:lower() == "friendlymode" then
		if antis.friendlymode then
			dchat("h/%sFriendly Mode is now disabled, you can no longer go to the house on command 😦", supern)
		else
			dchat("h/%sFriendly Mode is now enabled, you can go to the house by saying tohouse in chat! 🙂", supern)
		end
	end
	if not antis[args[1]:lower()] and antis[args[1]:lower()] ~= false then
		return methods:notif("That anti is not a thing lol")
	end
	antis[args[1]:lower()] = not antis[args[1]:lower()]
	return methods:notif("Set %s to %s", tostring(args[1]:lower()), tostring(antis[args[1]:lower()]))
end)

addCommand({ name = "lowfpsmode", aliases = { "lfps", "lpm" } }, function()
	lowfpsmode = not lowfpsmode
	methods:notif("Set lowfpsmode to %s", tostring(lowfpsmode))
end)

local emojisloaded = false
addCommand({ name = "emojis" }, function()
	if emojisloaded then
		return methods:notif("Already loaded.")
	end
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-scripts/main/discordemojis.lua", true))()
	emojisloaded = true
	methods:notif("You can now use discord emojis in chat like normal.")
end)
addCommand({ name = "savepaint", aliases = { "sp" } }, function(args)
	local colors = {}
	local file = "saved_colors"
	if args[1] then
		file = args[1]:lower()
	end
	file = "kah_colors/" .. file .. ".json"
	for i, v in next, _Game:GetDescendants() do
		if v:IsA("Part") then
			colors[v:GetFullName()] = v.BrickColor.Name
		end
	end
	writefile(file, http:JSONEncode(colors))
	methods:notif("Saved Colors to file " .. file)
end)
addCommand({ name = "biglogs" }, function()
	chat("logs")
	repeat
		task.wait()
	until player.PlayerGui:FindFirstChild("ScrollGui")
	local frame = player.PlayerGui:FindFirstChild("ScrollGui").TextButton.Frame
	local ViewPortSize = workspace.Camera.ViewportSize
	frame.Size = UDim2.new(0, 0.4, 1, ViewPortSize.Y)
	frame.AnchorPoint = Vector2.new(0, 0.32)
end)
addCommand({ name = "loadpaint", aliases = { "lp" } }, function(args)
	local file = "saved_colors"
	if args[1] then
		file = args[1]:lower()
	end
	file = "kah_colors/" .. file .. ".json"
	if not isfile(file) then
		return methods:notif("File %s doesnt have any saved colors", file)
	end
	local colors = http:JSONDecode(readfile(file))
	methods:bucket()
	for i, v in next, _Game:GetDescendants() do
		task.spawn(function()
			local color = colors[v:GetFullName()]
			if color then
				color = BrickColor.new(color).Color
				if color then
					colorAPI.color(v, color, false)
				end
			end
		end)
	end
end)
addCommand({ name = "blackout" }, function(args)
	if args[1] and args[1]:lower() == "p" then
		handleCommand(prefix .. "c all 0,0,0")
	end
	chat("fogend 20")
	chat("fogcolor 0 0 0")
	chat("time 0")
	chat("outdoorambient 0 0 0")
	chat("ambient 255 0 0")
	chat("music 157636218")
	dchat("h/%sSomething lurks in the shadows... something dangerous you dont see... 👺👻", supern)
end)
addCommand({ name = "char", args = 1 }, function(args)
	local initp = getRoot(player.Character).CFrame + Vector3.new(0, 0.01, 0)
	if not args[2] then
		local info = game:GetService("HttpService")
			:JSONDecode(game:HttpGet("https://api.roblox.com/users/get-by-username?username=" .. args[1]))
		if not info.Id then
			return methods:notif("Invalid username")
		end
		chat("char me %s", info.Id)
	else
		local plr = methods:getplayer(args[2])
		if not plr or not plr.Name then
			return methods:notif("No player found")
		end
		chat("char me %s", plr.UserId)
	end
	methods:tp(initp)
end)

function handleowncharacter(char) end
--[[
coroutine.wrap(function()
	while methods:wait() do
		if game.Players:GetPlayerByUserId(374827499) then
			chat("setgrav all inf")
			chat("clear")
			task.wait()
		end
	end
end)()
]]
function handleusercharacter(char, player)
	if table.find(banned, player.Name) then
		trap(player.Name)
		chat("pm/%s/LOL Imagine Trying to bypass", format(player.Name))
	end
end

for i, player in pairs(game.Players:GetPlayers()) do
	player.CharacterAdded:Connect(function(char)
		handleusercharacter(char, player)
	end)
end

game.Players.PlayerAdded:Connect(function(player)
	if table.find(sbanned, player.Name:lower()) then
		player.CharacterAdded:Wait()
		return kick(player, "blue", "Server Banned 🤡", "Server Banned 🤡")
	end
	if antis.friendlymode then
		chat(
			"pm/%s/Hey there! Welcome to the server!\nFriendly mode is enabled, you will now be sent to the house.\nSay tohouse if you ever wanna go to the house 🙂",
			format(player.Name),
			prefix
		)
		dchat("h/%s%s has joined the server! Welcome 🙂", supern, player.Name)
		handleCommand(prefix .. "toh " .. player.Name)
	end
	player.CharacterAdded:Connect(function(char)
		handleusercharacter(char, player)
		if serverlock then
			chat("respawn/%s", player.Name)
		end
	end)
end)
-- [[Loops]] --

coroutine.wrap(function()
	while methods:wait() do
		pcall(function()
			if perm and not Admin.Pads:FindFirstChild(player.Name .. "'s admin") then
				local pad = Admin.Pads:FindFirstChild("Touch to get admin")
				if not pad then
					methods:regen()
				end
				pad = Admin.Pads:FindFirstChild("Touch to get admin")
				if pad and pad.Head then
					methods:grabpad(pad, true)
				end
			end
		end)
	end
end)()

coroutine.wrap(function()
	while methods:swait(100) do
		for i, player in pairs(game.Workspace:GetChildren()) do
			if not Players:FindFirstChild(player.Name) then
				continue
			end
			if table.find(banned, player.Name) and not serverlock then
				trap(player.Name)
				chat("pm/%s/LOL Imagine Trying to bypass", format(player.Name))
			else
				if serverlock and not table.find(whitelisted, player) then
					trap(player.Name)
					chat("pm/%s/%s%s: The server is currently locked 🔒", format(player.Name), supern, fname)
				end
			end
		end
	end
end)()

function haa()
	player.Character:Destroy()
	dchat("h/%sCant anchor me lol 🚫", supern)
end

coroutine.wrap(function()
	while methods:wait() do
		if antis.hardantianchor then
			task.spawn(function()
				if player.Character then
					if player.Character.Torso then
						if player.Character.Torso:FindFirstChild("Weld") and antis.hardantianchor and not moving then
							haa()
						end
					end
				end
			end)
			task.spawn(function()
				for _, v in pairs(player.PlayerGui:GetChildren()) do
					if antis.antinoclip and v.Name:lower() == "noclip" then
						if
							player.Character:FindFirstChild("Torso")
							and player.Character:FindFirstChild("Torso").Anchored
						then
							return haa()
						end
						if (v:IsA("Part") or v:IsA("BasePart")) and v.Anchored then
							return haa()
						end
					end
				end
			end)
			task.spawn(function()
				if player.Character then
					for _, v in pairs(player.Character:GetChildren()) do
						if v.Name == "ice" and antis.antiice then
							haa()
						end
					end
				end
			end)
		end
	end
end)()

coroutine.wrap(function()
	while task.wait() do
		if antis.godmode and player.Character then
			if player.Character.Humanoid.Health == 0 then
				task.spawn(function()
					chat("reset me")
				end)
			end
		end
		for _, v in pairs(player.PlayerGui:GetChildren()) do
			if antis.antinoclip and v.Name:lower() == "noclip" and not antis.hardantianchor then
				v:Destroy()
				if player.Character:FindFirstChild("Torso") and player.Character:FindFirstChild("Torso").Anchored then
					player.Character:FindFirstChild("Torso").Anchored = false
				end
			end
		end
		if player.Character then
			for _, v in pairs(player.Character:GetChildren()) do
				if v.Name == "ice" and antis.antiice and not antis.hardantianchor then
					pcall(function()
						if not antis.hardantianchor then
							v:Destroy()
							player.Character.Humanoid.WalkSpeed = 16
							player.Character.Humanoid.JumpPower = 50
							player.Character.Humanoid.UseJumpPower = true
							for _, v1 in pairs(player.Character:GetChildren()) do
								if v1:IsA("Part") then
									v1.Anchored = false
								end
							end
							chat("clr")
						end
					end)
				end
			end
		end

		for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if antis.antigrav and v:IsA("BodyForce") then
				v.Force = Vector3.new(0, 0, 0)
				v:Destroy()
			end
			if
				(
					v:IsA("Explosion")
					or (v.Name:lower() == "sparkles" or v.Name:lower() == "particle")
					or (v:IsA("ParticleEmitter") or v:IsA("Fire") or v.Name == "Fire")
				) and lowfpsmode
			then
				v:Destroy()
			end
			if
				(
					v.Name:lower() == "smoke"
					or v.Name:lower() == "forcefield"
					or v.Name:lower() == "trail"
					or v.Name:lower() == "epiccape"
					or v.Name:lower() == "ice"
					or v.Name:lower() == "rainbowify"
				) and lowfpsmode
			then
				v:Destroy()
			end
		end
	end
end)()

-- [[Connections]] --

game.Lighting.ChildAdded:Connect(function(child)
	if table.find(whitelisted, child.Name) and not table.find(banned, child.Name) and antis.antipunish then
		chat("unpunish/%s", child.Name)
		chat("h/%sNobody punishes %s 😎", supern, child.Name)
		if child.Name == player.Name and antis.antipunish then
			methods:regen()
			chat("punish/others")
		end
	end
end)

game.Workspace.DescendantAdded:Connect(function(d)
	if
		antis.anticrash
		and d:IsA("Tool")
		and d.Name == "VampireVanquisher"
		and not table.find(whitelisted, d.Parent.Name)
	then
		trap(d.Parent.Name)
		chat("pm/%s/%s%s: That tool is not allowed ❌", d.Parent.Name, supern, fname)
	end
end)

Players.DescendantAdded:Connect(function(d)
	if
		antis.anticrash
		and d:IsA("Tool")
		and d.Name == "VampireVanquisher"
		and not table.find(whitelisted, d.Parent.Parent.Name)
	then
		trap(d.Parent.Parent.Name)
	end
end)

-- [[Ui Lib stuffz]] --

local win = lib:New({
	Name = name,
	FolderToSave = name,
})

local tab = win:Tab("Controls")
local sec = tab:Section("Options")
local selected_plr
local playerlist = sec:Dropdown("Player", {}, "", "Dropdown", function(t)
	selected_plr = t
end)
function refreshplrlist()
	selected_plr = nil
	local plrnames = {}
	for i, plr in next, Players:GetPlayers() do
		local topush = plr.Name
		if plr.DisplayName and (plr.DisplayName:lower() ~= plr.Name:lower()) then
			topush = topush .. " | " .. plr.DisplayName
		end
		table.insert(plrnames, topush)
	end
	playerlist:Refresh(plrnames, true)
end
refreshplrlist()
Players.PlayerAdded:Connect(refreshplrlist)
Players.PlayerRemoving:Connect(refreshplrlist)

local sec2 = tab:Section("Actions")
function printselected()
	print(selected_plr)
end
function getfromui()
	local plr
	if selected_plr and selected_plr:match("|") then
		plr = selected_plr:gsub(" ", ""):split("|")[1]
	else
		plr = selected_plr .. ""
	end
	return methods:getplayer(plr)
end
sec2:Button("Blacklist", printselected)
sec2:Button("Whitelist", printselected)
sec2:Button("un-blacklist", printselected)
sec2:Button("un-whitelist", printselected)
sec2:Button("Trap", printselected)
sec2:Button("Bring", printselected)
sec2:Button("Teleport to", printselected)
sec2:Button("Respawn", printselected)
sec2:Button("Reset", printselected)
sec2:Button("Kill", printselected)
handleCommand(prefix .. "emojis")
handleCommand(prefix .. "h")
methods:notif("Loaded\n%s seconds", tostring(os.time() - start))

local events = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents")
local messageDoneFiltering = events:WaitForChild("OnMessageDoneFiltering")
local banned_cmds = {
	"lua",
	"to",
	"exitroblox",
	"crash",
	"supercrash",
	"lowfpsmode",
	"savepaint",
	"toggle",
	"whitelist",
	"unwhitelist",
	"forcekick",
	"perm",
	"prefix",
	"rejoin",
	"house",
	"fix",
}
messageDoneFiltering.OnClientEvent:Connect(function(message)
	local plr = message.FromSpeaker
	local msg = message.Message or ""
	if plr:lower() == player.Name:lower() then
		return
	end
	if plr and msg then
		if msg:lower() == "tohouse" and antis.friendlymode then
			return handleCommand(prefix .. "toh " .. plr)
		end
	end
	if plr and msg:match("^" .. prefix) and table.find(whitelisted, plr) then
		local msg1 = msg:sub(string.len(prefix) + 1):gsub("%s+", " ") -- removes prefix and consecutive spaces
		local args = msg1:split(" ")
		local commandName = args[1]
		local command = findCommand(commandName:lower())
		if not command or not command.run or not command.info then
			return
		end
		if table.find(banned_cmds, command.name) then
			return methods:display("%s you are not allowed to use that command!", plr)
		end
		handleCommand(msg:gsub("me", plr):gsub("ME", plr):gsub("Me", plr):gsub("mE", plr))
	end
end)
