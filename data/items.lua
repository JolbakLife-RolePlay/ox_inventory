return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		}
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 500,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
			cancel = true,
			export = 'JLRP-Job-Ambulance.bandage',
		}
	},
	
	['medikit'] = {
		label = 'Medkit',
		weight = 500,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
			cancel = true,
			export = 'JLRP-Job-Ambulance.medikit',
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
		consume = 0,
		client = {
			anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
			disable = { move = true, car = true, combat = true },
			usetime = 5000,
			cancel = true
		}
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		consume = 0,
		allowArmed = false,
		client = {
			export = 'JLRP-Radio.radio',
		}
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
		}
	},
	
	['binoculars'] = {
		label = 'Binoculars',
		weight = 2000,
		consume = 0,
		client = {
			export = 'JLRP-Config.binoculars',
		}
	},
	
	['firework1'] = {
		label = '2Brothers',
		weight = 1000,
		consume = 1,
		client = {
			export = 'JLRP-Config.firework1',
		}
	},
	
	['firework2'] = {
		label = 'Poppelers',
		weight = 1000,
		consume = 1,
		client = {
			export = 'JLRP-Config.firework2',
		}
	},
	
	['firework3'] = {
		label = 'WipeOut',
		weight = 1000,
		consume = 1,
		client = {
			export = 'JLRP-Config.firework3',
		}
	},
	
	['firework4'] = {
		label = 'Weeping Willow',
		weight = 1000,
		consume = 1,
		client = {
			export = 'JLRP-Config.firework4',
		}
	},
	
	-- Foods
	['burger'] = {
		label = 'Burger Classic',
		weight = 225,
		client = {
			anim = 'eating',
			prop = 'burger',
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious classic burger',
			export = 'JLRP-Config.burger',
		},
	},
	['burger_double'] = {
		label = 'Burger Double',
		weight = 300,
		client = {
			anim = 'eating',
			prop = 'burger',
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious double burger',
			export = 'JLRP-Config.burger_double',
		},
	},
	['burger_triple'] = {
		label = 'Burger Triple',
		weight = 350,
		client = {
			anim = 'eating',
			prop = 'burger',
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious triple burger',
			export = 'JLRP-Config.burger_triple',
		},
	},
	
	['water'] = {
		label = 'Water',
		weight = 450,
		client = {
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You drank some refreshing water',
			export = 'JLRP-Config.water',
		}
	},
	
	['trash_water'] = {
		label = 'Trash Water',
		weight = 35,
		description = 'Garbage'
	},
	
	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You drank some refreshing eCola',
			export = 'JLRP-Config.cola',
		}
	},
	
	['trash_can'] = {
		label = 'Trash Can',
		weight = 35,
		description = 'Garbage'
	},
	
	['coffee_small'] = {
		label = 'Small Coffee',
		weight = 350,
		client = {
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_fib_coffee`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You drank some small coffee',
			export = 'JLRP-Config.coffee_small',
		},
		server = {
			export = 'JLRP-Config.coffee_small',
		}
	},
	
	['coffee_medium'] = {
		label = 'Medium Coffee',
		weight = 400,
		client = {
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_fib_coffee`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You drank some medium coffee',
			export = 'JLRP-Config.coffee_medium',
		},
		server = {
			export = 'JLRP-Config.coffee_medium',
		}
	},
	
	['coffee_large'] = {
		label = 'Large Coffee',
		weight = 450,
		client = {
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_fib_coffee`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You drank some large coffee',
			export = 'JLRP-Config.coffee_large',
		},
		server = {
			export = 'JLRP-Config.coffee_large',
		}
	},
	
	['trash_coffee'] = {
		label = 'Trash Coffee',
		weight = 35,
		description = 'Garbage'
	},
	
	['orange'] = {
		label = 'Orange',
		weight = 200,
		consume = 1,
		stack = true,
		close = false,
		client = {
			anim = 'eating',
			prop = { 
				model = 'ng_proc_food_ornge1a',
				pos = { x = 0.05, y = 0.00, z = -0.06},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious orange with peel',
			export = 'JLRP-Config.orange',
		},
		server = {
			export = 'JLRP-Config.orange',
		},
		buttons = {
			{
				label = 'پوستشو بکن',
				action = function(slot)
					TriggerServerEvent('JLRP-Config:Server:Consumables:PeelSkin:Orange', slot)
				end
			},
		}
	},
	['orange_peeled'] = {
		label = 'Peeled Orange',
		weight = 175,
		degrade = 15,
		consume = 1,
		close = false,
		description = 'پرتقال دان جان',
		client = {
			anim = 'eating',
			prop = { 
				model = 'ng_proc_food_ornge1a',
				pos = { x = 0.05, y = 0.00, z = -0.06},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious peeled orange',
			export = 'JLRP-Config.orange',
		},
	},
	['orange_peel'] = {
		label = 'Orange Peel',
		weight = 25,
		description = 'Garbage'
	},
	
	['apple'] = {
		label = 'Apple',
		weight = 150,
		consume = 1,
		stack = true,
		close = false,
		client = {
			anim = 'eating',
			prop = { 
				model = 'ng_proc_food_aple2a',
				pos = { x = 0.05, y = 0.05, z = -0.03},
				rot = { x = 90.0, y = 90.0, z = 0.0}
			},
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious apple with peel',
			export = 'JLRP-Config.apple',
		},
		server = {
			export = 'JLRP-Config.apple',
		},
		buttons = {
			{
				label = 'پوستشو بکن',
				action = function(slot)
					TriggerServerEvent('JLRP-Config:Server:Consumables:PeelSkin:Apple', slot)
				end
			},
		}
	},
	['apple_peeled'] = {
		label = 'Peeled Apple',
		weight = 135,
		degrade = 15,
		consume = 1,
		close = false,
		description = 'سیب دان جان',
		client = {
			anim = 'eating',
			prop = { 
				model = 'ng_proc_food_aple2a',
				pos = { x = 0.05, y = 0.05, z = -0.03},
				rot = { x = 90.0, y = 90.0, z = 0.0}
			},
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious peeled apple',
			export = 'JLRP-Config.apple',
		},
	},
	['apple_peel'] = {
		label = 'Apple Peel',
		weight = 15,
		description = 'Garbage'
	},
	
	['banana'] = {
		label = 'Banana',
		weight = 150,
		consume = 1,
		stack = true,
		close = false,
		client = {
			anim = 'eating',
			prop = { 
				model = 'ng_proc_food_nana1a',
				pos = { x = 0.00, y = 0.03, z = -0.05},
				rot = { x = 90.0, y = 45.0, z = 0.0}
			},
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious banana with peel',
			export = 'JLRP-Config.banana',
		},
		server = {
			export = 'JLRP-Config.banana',
		},
		buttons = {
			{
				label = 'پوستشو بکن',
				action = function(slot)
					TriggerServerEvent('JLRP-Config:Server:Consumables:PeelSkin:Banana', slot)
				end
			},
		}
	},
	['banana_peeled'] = {
		label = 'Peeled Banana',
		weight = 115,
		degrade = 15,
		consume = 1,
		close = false,
		description = 'موز دراز',
		client = {
			anim = 'eating',
			prop = { 
				model = 'ng_proc_food_nana1a',
				pos = { x = 0.00, y = 0.03, z = -0.05},
				rot = { x = 90.0, y = 45.0, z = 0.0}
			},
			disable = { combat = true },
			usetime = 5000,
			cancel = true,
			notification = 'You ate a delicious peeled banana',
			export = 'JLRP-Config.banana',
		},
	},
	['banana_peel'] = {
		label = 'Banana Peel',
		weight = 35,
		description = 'Garbage'
	},
}
