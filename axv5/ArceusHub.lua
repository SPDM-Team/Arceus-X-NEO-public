local module = {
	title = "AXS",
	url = "caccapupu.com",
	source = function(...)
		local lib, c = ...
	--if crypt.hash(c, "sha256") ~= "6cf4f13157e1d1e7539994081dea922890f2d9cbdc34b034efb11e66c7825b4738ae8ec931ea64d5fa5cc61b0ac7533f" then return end

	local cloneref = cloneref or function(...) return ... end
	local physicsService = cloneref(game:GetService("PhysicsService"))
	local runService = cloneref(game:GetService("RunService"))
	local plrsService = cloneref(game:GetService("Players"))

	local player = plrsService.LocalPlayer
	local isStudio = runService:IsStudio()

	do
		local flags_aim = {
			predictionstrenght = 1,
			targetDistanceDif = 10,
			bulletspeed = 100,
			aimpart = "Head",

			collisionsblacklist = {},
			ignorecollisions = true,
			cursorcloser = true,
			prediction = false,
			showtarget = false,
			teamcheck = false,
			wallcheck = false,
			enabled = false,
			physics = false
		}

		-- Trajectory prediction

		local eps = 1e-9
		local function isZero(d)
			return (d > -eps and d < eps)
		end

		local function cuberoot(x)
			return (x > 0) and math.pow(x, (1 / 3)) or -math.pow(math.abs(x), (1 / 3))
		end

		local function solveQuadric(c0, c1, c2)
			local s0, s1

			local p, q, D

			p = c1 / (2 * c0)
			q = c2 / c0
			D = p * p - q

			if isZero(D) then
				s0 = -p
				return s0
			elseif (D < 0) then
				return
			else -- if (D > 0)
				local sqrt_D = math.sqrt(D)

				s0 = sqrt_D - p
				s1 = -sqrt_D - p
				return s0, s1
			end
		end

		local function solveCubic(c0, c1, c2, c3)
			local s0, s1, s2

			local num, sub
			local A, B, C
			local sq_A, p, q
			local cb_p, D

			A = c1 / c0
			B = c2 / c0
			C = c3 / c0

			sq_A = A * A
			p = (1 / 3) * (-(1 / 3) * sq_A + B)
			q = 0.5 * ((2 / 27) * A * sq_A - (1 / 3) * A * B + C)

			cb_p = p * p * p
			D = q * q + cb_p

			if isZero(D) then
				if isZero(q) then -- one triple solution
					s0 = 0
					num = 1
				else -- one single and one double solution
					local u = cuberoot(-q)
					s0 = 2 * u
					s1 = -u
					num = 2
				end
			elseif (D < 0) then -- Casus irreducibilis: three real solutions
				local phi = (1 / 3) * math.acos(-q / math.sqrt(-cb_p))
				local t = 2 * math.sqrt(-p)

				s0 = t * math.cos(phi)
				s1 = -t * math.cos(phi + math.pi / 3)
				s2 = -t * math.cos(phi - math.pi / 3)
				num = 3
			else -- one real solution
				local sqrt_D = math.sqrt(D)
				local u = cuberoot(sqrt_D - q)
				local v = -cuberoot(sqrt_D + q)

				s0 = u + v
				num = 1
			end

			sub = (1 / 3) * A

			if (num > 0) then s0 = s0 - sub end
			if (num > 1) then s1 = s1 - sub end
			if (num > 2) then s2 = s2 - sub end

			return s0, s1, s2
		end

		local function solveQuartic(c0, c1, c2, c3, c4)
			local s0, s1, s2, s3

			local coeffs = {}
			local z, u, v, sub
			local A, B, C, D
			local sq_A, p, q, r
			local num

			A = c1 / c0
			B = c2 / c0
			C = c3 / c0
			D = c4 / c0

			sq_A = A * A
			p = -0.375 * sq_A + B
			q = 0.125 * sq_A * A - 0.5 * A * B + C
			r = -(3 / 256) * sq_A * sq_A + 0.0625 * sq_A * B - 0.25 * A * C + D

			if isZero(r) then
				coeffs[3] = q
				coeffs[2] = p
				coeffs[1] = 0
				coeffs[0] = 1

				local results = {solveCubic(coeffs[0], coeffs[1], coeffs[2], coeffs[3])}
				num = #results
				s0, s1, s2 = results[1], results[2], results[3]
			else
				coeffs[3] = 0.5 * r * p - 0.125 * q * q
				coeffs[2] = -r
				coeffs[1] = -0.5 * p
				coeffs[0] = 1

				s0, s1, s2 = solveCubic(coeffs[0], coeffs[1], coeffs[2], coeffs[3])
				z = s0

				u = z * z - r
				v = 2 * z - p

				if isZero(u) then
					u = 0
				elseif (u > 0) then
					u = math.sqrt(u)
				else
					return
				end
				if isZero(v) then
					v = 0
				elseif (v > 0) then
					v = math.sqrt(v)
				else
					return
				end

				coeffs[2] = z - u
				coeffs[1] = q < 0 and -v or v
				coeffs[0] = 1

				do
					local results = {solveQuadric(coeffs[0], coeffs[1], coeffs[2])}
					num = #results
					s0, s1 = results[1], results[2]
				end

				coeffs[2] = z + u
				coeffs[1] = q < 0 and v or -v
				coeffs[0] = 1

				if (num == 0) then
					local results = {solveQuadric(coeffs[0], coeffs[1], coeffs[2])}
					num = num + #results
					s0, s1 = results[1], results[2]
				end
				if (num == 1) then
					local results = {solveQuadric(coeffs[0], coeffs[1], coeffs[2])}
					num = num + #results
					s1, s2 = results[1], results[2]
				end
				if (num == 2) then
					local results = {solveQuadric(coeffs[0], coeffs[1], coeffs[2])}
					num = num + #results
					s2, s3 = results[1], results[2]
				end
			end

			sub = 0.25 * A

			if (num > 0) then s0 = s0 - sub end
			if (num > 1) then s1 = s1 - sub end
			if (num > 2) then s2 = s2 - sub end
			if (num > 3) then s3 = s3 - sub end

			return {s3, s2, s1, s0}
		end

		local function predictTrajectory(origin: Vector3, projectileSpeed: number, targetPos: Vector3, targetVelocity: Vector3, pickLongest: boolean?, gravity: number? ): Vector3?
			local g: number = gravity or workspace.Gravity

			local disp: Vector3 = targetPos - origin
			local p, q, r: number = targetVelocity.X, targetVelocity.Y, targetVelocity.Z
			local h, j, k: number = disp.X, disp.Y, disp.Z
			local l: number = -.5 * g 

			local solutions = solveQuartic(l*l, -2*q*l, q*q - 2*j*l - projectileSpeed*projectileSpeed + p*p + r*r, 2*j*q + 2*h*p + 2*k*r, j*j + h*h + k*k)

			if solutions then
				local posRoots: {number} = table.create(2)
				for _, v in solutions do --filter out the negative roots
					if v > 0 then
						table.insert(posRoots, v)
					end
				end
				if posRoots[1] then
					local t: number = posRoots[if pickLongest then 2 else 1]
					local d: number = (h + p*t)/t
					local e: number = (j + q*t - l*t*t)/t
					local f: number = (k + r*t)/t
					return origin + Vector3.new(d, e, f)
				end
			end
		end

		local function rawPredict(part)
			return part.Position + part.AssemblyLinearVelocity * (flags_aim.predictionstrenght /10) *(math.abs((workspace.CurrentCamera.CFrame.p -part.Position).Magnitude / 100)) -- / bulletSpeed
		end

		-- ESP drawings: erano usati ma mai creati (BoxOutline/Line/Box/...) -> "attempt to index nil with 'Visible'" appena si attiva l'aimbot
		local function mkSquare(color)
			if not Drawing then return { Visible = false } end
			local d = Drawing.new("Square")
			d.Thickness, d.Filled, d.Color, d.Visible = 2, false, color, false
			return d
		end
		local function mkLine(color)
			if not Drawing then return { Visible = false } end
			local d = Drawing.new("Line")
			d.Thickness, d.Color, d.Visible = 1, color, false
			return d
		end
		local BoxOutline  = mkSquare(Color3.fromRGB(255, 255, 255))
		local BoxOutline2 = mkSquare(Color3.fromRGB(255, 255, 255))
		local Box         = mkSquare(Color3.fromRGB(255, 0, 0))
		local Box2        = mkSquare(Color3.fromRGB(255, 170, 0))
		local Line        = mkLine(Color3.fromRGB(255, 255, 255))
		local Line2       = mkLine(Color3.fromRGB(255, 170, 0))

		local function setESP(target, isRelevant)
			local outline = isRelevant and BoxOutline or BoxOutline2
			local line = isRelevant and Line or Line2
			local box = isRelevant and Box or Box2
			local found = false

			if flags_aim.showtarget and target then
				local camera = workspace.CurrentCamera
				local char = target.Character

				if char then
					local root = char:FindFirstChild("HumanoidRootPart")
					local head = char:FindFirstChild("Head")

					if root and head then
						local RootPosition, onScreen = camera:WorldToViewportPoint(root.Position)
						local HeadPosition = camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
						local LegPosition = camera:WorldToViewportPoint(root.Position - Vector3.new(0, 3, 0))

						if onScreen then
							found = true

							local x = 1500 / RootPosition.Z
							local y = HeadPosition.Y - LegPosition.Y

							local xBox = RootPosition.X - x / 2
							local yBox = RootPosition.Y - y / 2

							outline.Size = Vector2.new(x, y)
							outline.Position = Vector2.new(xBox, yBox)
							outline.Visible = true

							line.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
							line.To = Vector2.new(xBox + x / 2, yBox)
							line.Visible = true

							box.Size = Vector2.new(x, y)
							box.Position = Vector2.new(xBox, yBox)
							box.Visible = true
						end	
					end
				end
			end

			if not found then
				outline.Visible = false
				line.Visible = false
				box.Visible = false
			end
		end

		local function getTarget(trg_part)
			local target = nil
			local secondaryTarget = nil
			local last_cursor = math.huge
			local last_root = math.huge

			local camera = workspace.CurrentCamera
			local localPlayer = plrsService.LocalPlayer
			local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)

			for i, v in ipairs(plrsService:GetPlayers()) do
				if v ~= localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChildWhichIsA("Humanoid") 
					and localPlayer.Character:FindFirstChildWhichIsA("Humanoid").Health > 0
					and v.Character and v.Character:FindFirstChildWhichIsA("Humanoid") 
					and v.Character:FindFirstChildWhichIsA("Humanoid").Health > 0
				then
					local allowed = not flags_aim.teamcheck		
					if flags_aim.teamcheck and v.Team ~= plrsService.LocalPlayer.Team then
						allowed = true
					end

					if allowed then
						allowed = not flags_aim.wallcheck
						local aimobj = v.Character:FindFirstChild(trg_part) or v.Character:FindFirstChild("UpperTorso")	

						if aimobj then
							local rootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
							if flags_aim.wallcheck and rootPart then
								--local originUnit = camera:ViewportPointToRay(screenCenter.X, screenCenter.Y, 0)				
								local blacklist = flags_aim.ignorecollisions and flags_aim.collisionsblacklist or {}
								local params = RaycastParams.new()

								params.FilterType = Enum.RaycastFilterType.Blacklist
								params.FilterDescendantsInstances = {localPlayer.Character, blacklist}

								local raycast = workspace:Raycast(rootPart.CFrame.p, (aimobj.Position - rootPart.CFrame.p).Unit * 5000, params)
								if raycast and raycast.Instance then
									local model = raycast.Instance:FindFirstAncestorOfClass("Model")
									if model == v.Character then
										allowed = true
									elseif flags_aim.ignorecollisions then
										pcall(function()
											if raycast.Instance.CanCollide == false and raycast.Instance:FindFirstAncestorOfClass("Model") ~= v.Character then
												table.insert(flags_aim.collisionsblacklist, raycast.Instance)

												local event
												event = raycast.Instance.AncestryChanged:Connect(function()
													flags_aim.collisionsblacklist = {} -- Faster and less laggy than looping
													event:Disconnect()
												end)
											end
										end)
									end
								end
							end

							if allowed then
								if flags_aim.cursorcloser then
									local ePos, vis = camera:WorldToViewportPoint(aimobj.Position)
									if vis then
										local AccPos = Vector2.new(ePos.X, ePos.Y)
										local distance = (AccPos - screenCenter).magnitude
										if distance < last_cursor and distance < 400 then
											last_cursor = distance
											secondaryTarget = target
											target = v
										end
									end
								elseif rootPart then
									local targetRootPart = v.Character:FindFirstChild("HumanoidRootPart")
									if targetRootPart then
										local distance = (targetRootPart.CFrame.p - rootPart.CFrame.p).magnitude
										if distance + flags_aim.targetDistanceDif < last_root then
											last_root = distance
											secondaryTarget = target
											target = v
										end
									end
								end
							end
						end
					end
				end
			end

			if (not isStudio or draw) then
				setESP(target, true)
				setESP(secondaryTarget, false)
			end

			return target
		end
		
		local page = lib:AddPage("Universal Aimbot", "rbxassetid://81258682765658")
		page:AddSplitter("Universal aimbot")
		
		page:AddToggle("Aimbot", "Universal aimbot", flags_aim.enabled)
			.OnToggle:Connect(function(state: boolean)
				flags_aim.enabled = state
			end)

		page:AddToggle("Wall Check", "Prevents from shooting at walls", flags_aim.wallcheck)
			.OnToggle:Connect(function(state: boolean)
				flags_aim.wallcheck = state
			end)
		
		page:AddToggle("Team Check", "Exclude team members", flags_aim.teamcheck)
			.OnToggle:Connect(function(state: boolean)
				flags_aim.teamcheck = state
			end)
		
		page:AddToggle("Show Target", "Enables ESP on the targets", flags_aim.showtarget)
			.OnToggle:Connect(function(state: boolean)
				flags_aim.showtarget = state
			end)
		
		page:AddToggle("Enemy Prediction", "Predicts enemy movements", flags_aim.prediction)
			.OnToggle:Connect(function(state: boolean)
				flags_aim.prediction = state
			end)
		
		page:AddNumericUpDown("Prediction strength", "How much it should look into the future", flags_aim.predictionstrenght, 1, 10, 1)
			.NumberChanged:Connect(function(num: number)
				flags_aim.predictionstrenght = num
			end)
		
		page:AddNumericUpDown("Prediction bullet speed", "Predicts based off the bullet speed", flags_aim.bulletspeed, 25, 1000000, 25)
			.NumberChanged:Connect(function(num: number)
				flags_aim.bulletspeed = num
			end)
		
		page:AddComboBox("Aim To", "Aims to the player that is closer to the:", {"Cursor", "Position"})
			.OnChanged:Connect(function(selection: string)
				flags_aim.cursorcloser = selection == "Cursor"
			end)
		
		page:AddComboBox("Aim Part", "Aims to the player's body part", {"Head", "Torso", "HumanoidRootPart"})
			.OnChanged:Connect(function(selection: string)
				flags_aim.aimpart = selection
			end)
		
		page:AddToggle("Physics", "Emulates the physics for realistic games, uses bullet speed", flags_aim.physics)
			.OnToggle:Connect(function(state: boolean)
				flags_aim.physics = state
			end)
		
		page:AddToggle("Ignore non-collidable parts", "Ignores parts and invisible walls that have no collisions", flags_aim.ignorecollisions)
			.OnToggle:Connect(function(state: boolean)
				flags_aim.ignorecollisions = state
			end)
		
		runService.RenderStepped:Connect(function()
			if flags_aim.enabled then
				local aimprt = flags_aim.aimpart
				local target = getTarget(aimprt)

				if target then
					local aimobj = target.Character:FindFirstChild(aimprt) or target.Character:FindFirstChild("UpperTorso") -- If not found then should be R15 Torso
					if aimobj then
						local predicted = nil

						if flags_aim.prediction then
							if flags_aim.physics then
								predicted = predictTrajectory(workspace.CurrentCamera.CFrame.p, flags_aim.bulletspeed, aimobj.Position, aimobj.AssemblyLinearVelocity, false)
							else
								predicted = rawPredict(aimobj)
							end
						end

						if predicted then
							workspace.CurrentCamera.CFrame = CFrame.lookAt(workspace.CurrentCamera.CFrame.p, predicted) -- to fix
						else
							workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, aimobj.Position)
						end
						--warn(predicted, "-", aimobj.Position)
					end
				end
			else
			end
		end)
	end

	do -- Yeah this was a skid
		local flags_fly = {
			cframemode = false,
			enabled = false,
			speeds = 5,
		}
		
		local cfLoop = nil
		local nowe = false
		local cframeMult = 150 -- Multiplies CFrame mode
		local tpwalking = false
		local heartbeat = runService.Heartbeat

		local function updatespeed(char, hum)
			if nowe then
				tpwalking = false
				heartbeat:Wait()
				task.wait(.1)
				heartbeat:Wait() -- Make sure old threads are terminated

				for i = 1, flags_fly.speeds do
					spawn(function()
						tpwalking = true

						while tpwalking and heartbeat:Wait() and char and hum and hum.Parent do
							if hum.MoveDirection.Magnitude > 0 then
								char:TranslateBy(hum.MoveDirection)
							end
						end
					end)
				end
			end
		end

		local function toggleFunction(state)
			if not player.Character then end
			
			player.Character:FindFirstChildOfClass('Humanoid').PlatformStand = flags_fly.cframemode and state or false
			local Head = player.Character:WaitForChild("Head")
			Head.Anchored = flags_fly.cframemode and state or false
			if cfLoop then cfLoop:Disconnect() end

			if state and flags_fly.cframemode and not nowe then
				cfLoop = runService.Heartbeat:Connect(function(deltaTime)
					local moveDirection = player.Character:FindFirstChildOfClass('Humanoid').MoveDirection * ((flags_fly.speeds *  cframeMult) * deltaTime)
					local headCFrame = Head.CFrame
					local cameraCFrame = workspace.CurrentCamera.CFrame
					local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
					cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
					local cameraPosition = cameraCFrame.Position
					local headPosition = headCFrame.Position

					local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
					Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
				end)
			else
				local char = player.Character
				if not char or not char.Humanoid then
					return
				end

				local hum = char.Humanoid
				if not state then
					nowe = false

					hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Running,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
					hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
					hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)	
				else
					nowe = true
					updatespeed(char, hum)

					char.Animate.Disabled = true
					for i,v in next, hum:GetPlayingAnimationTracks() do
						v:AdjustSpeed(0)
					end

					hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Running,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
					hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
					hum:ChangeState(Enum.HumanoidStateType.Swimming)
				end

				local UpperTorso = player.Character:FindFirstChild("UpperTorso") or player.Character:FindFirstChild("Torso")
				local flying = true
				local deb = true
				local ctrl = {f = 0, b = 0, l = 0, r = 0}
				local lastctrl = {f = 0, b = 0, l = 0, r = 0}
				local maxspeed = 50
				local speed = 0

				local bg = Instance.new("BodyGyro", UpperTorso)
				bg.P = 9e4
				bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				bg.cframe = UpperTorso.CFrame

				local bv = Instance.new("BodyVelocity", UpperTorso)
				bv.velocity = Vector3.new(0,0.1,0)
				bv.maxForce = Vector3.new(9e9, 9e9, 9e9)

				if nowe then
					hum.PlatformStand = true
				end

				while nowe or hum.Health == 0 do
					task.wait()

					if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
						speed = speed+.5+(speed/maxspeed)
						if speed > maxspeed then
							speed = maxspeed
						end
					elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
						speed = speed-1
						if speed < 0 then
							speed = 0
						end
					end
					if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
						bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
						lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
					elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
						bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					else
						bv.velocity = Vector3.new(0,0,0)
					end

					bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
				end

				ctrl = {f = 0, b = 0, l = 0, r = 0}
				lastctrl = {f = 0, b = 0, l = 0, r = 0}
				speed = 0
				bg:Destroy()
				bv:Destroy()

				hum.PlatformStand = false
				char.Animate.Disabled = false
				tpwalking = false
			end
		end

		player.CharacterAdded:Connect(function(char)
			local char = player.Character
			if char then
				task.wait(.7)
				char.Humanoid.PlatformStand = false
				char.Animate.Disabled = false
			end
		end)
		
		-- Fly
		local page = lib:AddPage("Universal Fly", "rbxassetid://86031722584552")
		page:AddSplitter("Universal mobile fly")
		
		page:AddToggle("Fly", "Universal fly", flags_fly.enabled)
			.OnToggle:Connect(function(state: boolean)
				flags_fly.enabled = state
				toggleFunction(state)
			end)
		
		page:AddButton("Fly UP", "Moves you upward", "UP")
			.OnClick:Connect(function()
				local char = player.Character
				if char then
					char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame *CFrame.new(0, 2, 0)
				end
			end)
		
		page:AddButton("Fly DOWN", "Moves you downward", "DOWN")
			.OnClick:Connect(function()
				local char = player.Character
				if char then
					char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame *CFrame.new(0, -2, 0)
				end
			end)
		
		page:AddNumericUpDown("Speed", "Flight speed", flags_fly.speeds, 1, 100000, 1)
			.NumberChanged:Connect(function(num: number)
				flags_fly.speeds = num

				if not flags_fly.cframemode then
					local char = player.Character
					if char and char.Humanoid then
						local hum = char.Humanoid

						updatespeed(char, hum)
					end
				end
			end)
		
		page:AddComboBox("Fly Mode", "Different modes for games compatibility", {"Default", "CFrame"})
			.OnChanged:Connect(function(selection: string)
				local oldState = flags_fly.cframemode
				flags_fly.cframemode = selection == "CFrame"
				
				if flags_fly.enabled and oldState ~= flags_fly.cframeMode then
					toggleFunction(not flags_fly.enabled)
					toggleFunction(flags_fly.enabled)
				end
			end)
	end

	lib:SetEnabled(true)
end
}

return module
