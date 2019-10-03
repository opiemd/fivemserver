Config                      = {}
Config.Locale               = 'de'

Config.Accounts             = { 'bank', 'black_money' }
Config.AccountLabels        = { bank = _U('bank'), black_money = _U('black_money') }

Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.ShowDotAbovePlayer   = false -- opie 29-07
Config.DisableWantedLevel   = true
Config.EnableHud            = true -- enable the default hud? Display current job and accounts (black, bank & cash)

Config.PaycheckInterval     = 7 * 300000
Config.MaxPlayers           = GetConvarInt('sv_maxclients', 255) -- set this value to 255 if you're running OneSync

Config.EnableDebug          = false
