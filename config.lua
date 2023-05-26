Config = {}

Config.selfBlip = true -- use classic arrow or job specified blip?
Config.useMXMulti = false -- server specific init
Config.useBaseEvents = false -- F for optimisation
Config.prints = true -- server side prints (on/off duty)

-- looks
Config.font = {
    useCustom = true, -- use custom font? Has to be specified below, also can be buggy with player tags
    name = 'Roboto', -- > this being inserted into <font face='nameComesHere'> eg. (<font face='Russo One'>) --> Your font has to be streamed and initialized on ur server
}
Config.notifications = {
    enable = false,
    useMythic = false,
    onDutyText = 'P�i�el/a jste do slu�by', -- pretty straight foward
    offDutyText = 'Ode�el/a jste ze slu�by', -- pretty straight foward
}
Config.blipGroup = {
    renameGroup = false,
    groupName = 'Ostatn� jednotky'
}

-- blips
Config.bigmapTags = false -- Playername tags when bigmap enabled?
Config.blipCone = true -- use that wierd FOV indicators thing?

Config.useCharacterName = true -- use IC name or OOC name, chose your warrior
Config.usePrefix = false
Config.namePrefix = { -- global name prefixes by grade_name 
    recruit = 'CAD.',
    officer = 'P/O I',
    officerii = 'P/O II',
    officeriii = 'P/O III',
    officeriv = 'P/O III+I',
    sergeant = 'SGT. I',
    sergeantii = 'SGT. II',
    lieutenant = 'LTN. I',
    dchief = 'DPT-CHF.',
    achief = 'AS-CHF.',
    boss = 'CHF.',

    deputyi = 'DPT. I',
    deputyii = 'DPT. II',
    deputyiii = 'DPT. III',
    deputyiv = 'DPT. III+I',
    sergeant = 'SGT. I',
    sergeantii = 'SGT. II',
    lieutenant = 'LTN.',
    asheriff = 'AS-SHRF.',
    usheriff = 'UNSHRF.',
    boss = 'SHRF.',
}

--[[
  Full config template:

    ['police'] = { --> job name in database
        ignoreDuty = true, -- if ignore, you don't need to call onDuty or offDuty by exports or event, player is on map while he has that job
        blip = {
            sprite = 60, -- on foot blip sprite (required)
            color = 29, -- on foot blip color (required)
            scale = 0.8, -- global blip scale 1.0 by default (not required)
            flashColors = { -- blip flash when siren ON! You can define as many colors as you want! //// If you don't want to use flash, then just delete it (not required)
                59,
                29,
            }
        },
        vehBlip = { -- in vehicle blip config, if you don't want to use it, just delete it (not required)
            ['default'] = { -- global in vehicle blip (required if you have "vehBlip" defined)
                sprite = 56,
                color = 29,
            },
            [`ambluance`] = { -- this overrides 'default' blip by vehicle hash, hash has to be between ` eg. `spawnnamehere`
                sprite = 56,
                color = 29,
            },
            [`police2`] = {
                sprite = 56,
                color = 29,
            }
        },
        gradePrefix = { -- global Config.namePrefix override (not required)
            [0] = 'CAD.', -- 0 = grade number in database | 'CAD. ' is label obv..
        },
        canSee = { -- What job can see this job, when not defined they'll see only self job --> police will see only police blips (not required)
            ['police'] = true,
            ['sheriff'] = true,
            ['shreck'] = true, --> this cfg has to be in specified format "['jobname'] = true"
        }
    },
--]]

Config.emergencyJobs = {
    ['police'] = {
        ignoreDuty = true,
        blip = {
            sprite = 60,
            color = 29,
            flashColors = {
                59,
                29,
            }
        },
        vehBlip = {
            ['default'] = {
                sprite = 56,
                color = 29,
            },
            [`coolpdcar`] = {
                sprite = 56,
                color = 29,
            },
        },
        canSee = {
            ['police'] = true,
            ['sheriff'] = true,
            ['ambulance'] = true,
        }
    },
    ['sheriff'] = {
        ignoreDuty = true,
        blip = {
            sprite = 60,
            color = 5,
            flashColors = {
                59,
                29,
            }
        },
        vehBlip = {
            ['default'] = {
                sprite = 56,
                color = 29,
            },
            [`coolpdcar`] = {
                sprite = 56,
                color = 29,
            },
        },
        canSee = {
            ['police'] = true,
            ['sheriff'] = true,
            ['ambulance'] = true,
        }
    },
    ['ambulance'] = {
        ignoreDuty = true,
        blip = {
            sprite = 61,
            color = 59,
            flashColors = {
                0,
                59,
            }
        },
        vehBlip = {
            ['default'] = {
                sprite = 56,
                color = 59,
            },
            [`supervolito2`] = {
                sprite = 43,
                color = 59,
            },
        },
        canSee = {
            ['police'] = true,
            ['sheriff'] = true,
            ['ambulance'] = true,
        }
    }
}