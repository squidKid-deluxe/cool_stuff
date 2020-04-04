minetest.register_node('cool_stuff:chart_block', {
    description='Chart',
    tiles = {'btc_usdt.png'},
    drops = {
        {name = "cool_stuff:chart_block",
        chance = 100,
        min = 3,
        max = 5,},
    },
    is_ground_content = true,
    groups = {cracky=3, stone=2},
    on_rightclick = function(pos)
		local target_pos = {x = pos.x, y = (pos.y+1), z = pos.z},
		minetest.set_node({x = pos.x, y = (pos.y+1), z = pos.z}, { name = "cool_stuff:chart_block" })
        minetest.set_node(pos, { name = "air" })
	end,
    diggable=true
})


minetest.register_node('cool_stuff:scraps', {
    description='Scraps',
    tiles = {'scraps.png'},
    is_ground_content = true,
    groups = {cracky=3, dirt=2},
    on_rightclick = function(pos)
		minetest.set_node({x = pos.x, y = (pos.y-1), z = pos.z}, { name = "cool_stuff:compost" })
	end,
    diggable=true
})

minetest.register_node('cool_stuff:compost', {
    description='Compost',
    tiles = {'compost.png'},
    is_ground_content = true,
    groups = {cracky=3, dirt=2},
    diggable=true
})

minetest.register_node('cool_stuff:topaz', {
    description='Topaz Block',
    tiles = {'topaz.png'},
    is_ground_content = true,
    groups = {cracky=3, stone=2},
    diggable=true
})

minetest.register_node('cool_stuff:looker', {
    description='Mining Looker',
    tiles = {'blank.png', 'test.png', 'test.png', 'test.png', 'test.png', 'test.png'},
    is_ground_content = true,
    groups = {cracky=3, stone=2},
    diggable=true
})

minetest.register_node('cool_stuff:break_in_proof_block', {
    description='Break-in Proof Block',
    tiles={'white.png'},
    group={},
})

minetest.register_node('cool_stuff:red_break_in_proof_block', {
    description='Red Break-in Proof Block',
    tiles={'red.png'},
    group={},
})
																																
minetest.register_node('cool_stuff:black_break_in_proof_block', {
    description='Black Break-in Proof Block',
    tiles={'black.png'},
    group={},
})

minetest.register_node('cool_stuff:orange_break_in_proof_block', {
    description='Orange Break-in Proof Block',
    tiles={'orange.png'},
    group={},
})

minetest.register_node('cool_stuff:yellow_break_in_proof_block', {
    description='Yellow Break-in Proof Block',
    tiles={'yellow.png'},
    group={},
})

minetest.register_node('cool_stuff:purple_break_in_proof_block', {
    description='Purple Break-in Proof Block',
    tiles={'purple.png'},
    group={},
})

minetest.register_node('cool_stuff:green_break_in_proof_block', {
    description='Green Break-in Proof Block',
    tiles={'green.png'},
    group={},
})

minetest.register_node('cool_stuff:blue_break_in_proof_block', {
    description='Blue Break-in Proof Block',
    tiles={'blue.png'},
    group={},
})

minetest.register_node('cool_stuff:cyan_break_in_proof_block', {
    description='Cyan Break-in Proof Block',
    tiles={'cyan.png'},
    group={},
})

minetest.register_node('cool_stuff:Sun', {
    description='Sun Block',
    tiles={'yellow.png'},
    is_ground_content = true,
    light_source = 100,
    groups = {cracky=3, stone=2},
    diggable=true

})

minetest.register_node('cool_stuff:minetest_block', {
    description='Minetest Block',
    tiles={'minetest.png'},
    is_ground_content = true,
    groups = {cracky=3, stone=2},
    diggable=true
})


minetest.register_node('cool_stuff:drywall', {
    description = 'Plain Drywall',
    tiles = {"drywall.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=2},
    diggable=true
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_stuff:red_break_in_proof_block",
    recipe = {
        "cool_stuff:break_in_proof_block",
        "dye:red",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_stuff:blue_break_in_proof_block",
    recipe = {
        "cool_stuff:break_in_proof_block",
        "dye:blue",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_stuff:green_break_in_proof_block",
    recipe = {
        "cool_stuff:break_in_proof_block",
        "dye:green",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_stuff:yellow_break_in_proof_block",
    recipe = {
        "cool_stuff:break_in_proof_block",
        "dye:yellow",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_stuff:cyan_break_in_proof_block",
    recipe = {
        "cool_stuff:break_in_proof_block",
        "dye:cyan",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_stuff:purple_break_in_proof_block",
    recipe = {
        "cool_stuff:break_in_proof_block",
        "dye:violet",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_stuff:black_break_in_proof_block",
    recipe = {
        "cool_stuff:break_in_proof_block",
        "dye:black",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_stuff:orange_break_in_proof_block",
    recipe = {
        "cool_stuff:break_in_proof_block",
        "dye:orange",
    },
})


minetest.register_node('cool_stuff:vine', {
    description='Vine',
    drawtype = "firelike",
    tiles={'vine.png'},
    is_ground_content = true,
    groups = {cracky=3, stone=2},
    diggable=true
})

minetest.register_chatcommand("low-g", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            gravity = 0.1,
        })
    end,
})

minetest.register_chatcommand("no-g", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            gravity = 0,
        })
    end,
})

minetest.register_chatcommand("anti-g", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            gravity = -0.001,
        })
    end,
})

minetest.register_chatcommand("superlow-g", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            gravity = 0.06,
        })
    end,
})

minetest.register_chatcommand("reg-g", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            gravity = 1,
        })
    end,
})

minetest.register_chatcommand("run", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            speed = 3,
        })
    end,
})

minetest.register_chatcommand("zoom", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            speed = 10,
        })
        print("Now go explore!")
    end,
})

minetest.register_chatcommand("walk", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            speed = 1,
        })
    end,
})

minetest.register_chatcommand("high-jump", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            jump = 5,
        })
    end,
})

minetest.register_chatcommand("reg-jump", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            jump = 1,
        })
    end,
})

minetest.register_chatcommand("real-g", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        local pos    = player:get_pos()
        local gravity = 10/pos.y
        player:set_physics_override({
            gravity = gravity,
    })
    end,
})
