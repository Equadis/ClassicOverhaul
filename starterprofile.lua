--[[ Equadis' Classic Overhaul :: the starter profile

  What a profile looks like before anybody has changed anything.

  **This is not a second copy of the defaults.** Every module still declares its
  own, with the reasoning beside it, and those are still what the addon falls
  back on. This file holds only the places where the shipped layout departs from
  them -- so a default that is changed in its module still takes effect here,
  and a setting nobody has an opinion about is absent rather than frozen.

  **It is applied to a profile that does not exist yet**, and to nothing else: a
  fresh install, a new character, `/eq reset` and `/eq resetall` all arrive at
  the same place, which is the branch in config.lua that builds a profile with
  nothing saved to merge over it. An existing profile is never touched.

  Captured from Ollie's live interface, profile "New Default", on 2026-10-01.

  **Regenerate it rather than editing it.** Set the game up the way it should
  ship, log out so the client writes its saved variables, and run:

      luajit .eco-work/make_starter_profile.lua "New Default"

  Logging out matters: the client writes SavedVariables on exit, so a capture
  taken while the game is running reads the layout from the last logout.

  `schema` is deliberately absent -- a fresh profile has to carry the code's
  current number or the migrations re-run. So is the map module's `zoneYards`,
  which is measured as you walk a zone rather than chosen.
]]--

local OB = EquadisClassicOverhaul

OB.starterProfile = {
    ["barStack"] = {
        [1] = "health",
        [2] = "resource",
        [3] = "extras",
        [4] = "mainhand",
        [5] = "offhand",
        [6] = "ranged",
        [7] = "distance",
        [8] = "secondary",
    },
    ["font"] = 1,
    ["fontName"] = "Friz Quadrata",
    ["fontOutline"] = 1,
    ["modules"] = {
        ["actionbars"] = {
            ["bagBar"] = true,
            ["fontOutline"] = 2,
            ["hidePageArrows"] = true,
            ["microBar"] = true,
            ["microBarScale"] = 0.65,
            ["performanceText"] = true,
            ["positions"] = {
                ["bagButton"] = {
                    ["x"] = 976,
                    ["y"] = -12,
                },
                ["bottomLeft"] = {
                    ["x"] = 0,
                    ["y"] = -333,
                },
                ["bottomRight"] = {
                    ["x"] = 1,
                    ["y"] = -374,
                },
                ["buttonBar_bag"] = {
                    ["x"] = 555,
                    ["y"] = -79,
                },
                ["buttonBar_micro"] = {
                    ["x"] = 821,
                    ["y"] = 461,
                },
                ["left"] = {
                    ["x"] = 1337,
                    ["y"] = -50,
                },
                ["main"] = {
                    ["x"] = 0,
                    ["y"] = -292,
                },
                ["performance"] = {
                    ["x"] = 1063,
                    ["y"] = -271,
                },
                ["progress_rep"] = {
                    ["x"] = 7,
                    ["y"] = -466,
                },
                ["progress_xp"] = {
                    ["x"] = -1,
                    ["y"] = -465,
                },
                ["right"] = {
                    ["x"] = 1380,
                    ["y"] = -50,
                },
                ["shapeshift"] = {
                    ["x"] = -104,
                    ["y"] = -324,
                },
            },
        },
        ["buffframes"] = {
            ["buffMax"] = 30,
            ["buffPerRow"] = 10,
            ["buffSpacingX"] = 3,
            ["buffSpacingY"] = 9,
            ["debuffMax"] = 20,
            ["debuffPerRow"] = 10,
            ["debuffSpacingX"] = 3,
            ["debuffSpacingY"] = 9,
            ["enchantGrowX"] = "right",
            ["enchantSize"] = 35,
            ["flashSpeed"] = 1.5,
            ["mainHandColor"] = {
                [1] = 1,
                [2] = 0,
                [3] = 0.043137254901960777,
                [4] = 1,
            },
            ["offHandColor"] = {
                [1] = 0.1372549019607843,
                [2] = 0.14901960784313731,
                [3] = 1,
                [4] = 1,
            },
            ["positions"] = {
                ["buffs"] = {
                    ["x"] = -420,
                    ["y"] = 59,
                },
                ["debuffs"] = {
                    ["x"] = -421,
                    ["y"] = 189,
                },
                ["enchants"] = {
                    ["x"] = -212,
                    ["y"] = 23,
                },
            },
            ["timerOver30mColor"] = {
                [1] = 0.29803921568627451,
                [2] = 0.85098039215686272,
                [3] = 0.78823529411764703,
                [4] = 1,
            },
            ["timerOver5mColor"] = {
                [1] = 0.32549019607843138,
                [2] = 1,
                [3] = 0.32156862745098042,
                [4] = 1,
            },
        },
        ["characterpanel"] = {
            ["statFontSize"] = 10,
        },
        ["chat"] = {
            ["editBorder"] = false,
            ["editLocked"] = false,
            ["font"] = 2,
            ["fontSize"] = 14,
            ["nameLevel"] = true,
            ["popup"] = true,
            ["restyle"] = true,
        },
        ["combopoints"] = {
            ["hideOutOfCombat"] = false,
        },
        ["damage"] = {
            ["windows"] = {
                [1] = {
                    ["x"] = -1023,
                    ["y"] = 390,
                },
            },
        },
        ["map"] = {
            ["mapPosition"] = {
                ["left"] = 63.466659029373972,
                ["top"] = 745.59993584984534,
            },
            ["mapScale"] = 0.89302331687260783,
            ["minimapBoxSize"] = 250,
            ["minimapCollect"] = true,
            ["minimapPosition"] = {
                ["x"] = 983,
                ["y"] = 324,
            },
            ["squareMinimap"] = true,
        },
        ["nameplates"] = {
            ["font"] = 1,
            ["fontSize"] = 6,
            ["height"] = 10,
            ["nameSize"] = 8,
            ["shortenNames"] = false,
            ["targetScale"] = 1.4,
            ["width"] = 140,
        },
        ["partyframes"] = {
            ["position"] = {
                ["x"] = -1062,
                ["y"] = 242,
            },
        },
        ["qol"] = {
            ["autoAcceptRevive"] = true,
            ["confirmDestroy"] = true,
            ["dismount"] = true,
            ["questAll"] = true,
            ["questHaste"] = true,
        },
        ["roster"] = {
            ["scan"] = true,
        },
        ["threat"] = {
            ["x"] = 629,
            ["y"] = -83,
        },
        ["tooltip"] = {
            ["atMouse"] = true,
            ["backgroundColor"] = {
                [1] = 0.1215686274509804,
                [2] = 0.1333333333333333,
                [3] = 0.25490196078431371,
                [4] = 0.85000000894069672,
            },
            ["barFont"] = 1,
            ["barFontSize"] = 10,
            ["border"] = 3,
            ["font"] = 1,
            ["fontOutline"] = 1,
            ["moneyFormat"] = "suffixes",
            ["offsetX"] = 800,
            ["offsetY"] = -313,
        },
        ["unitframes"] = {
            ["castFontSize"] = 9,
            ["castHeight"] = 20,
            ["castWidth"] = 220,
            ["classPortrait"] = false,
            ["decimals"] = 2,
            ["font"] = 1,
            ["fontOutline"] = 2,
            ["fontSize"] = 12,
            ["frameMode"] = "overhaul",
            ["friendlyColor"] = {
                [1] = 0.18431372549019609,
                [2] = 0.83137254901960778,
                [3] = 0.18823529411764711,
                [4] = 1,
            },
            ["hostileColor"] = {
                [1] = 0.72549019607843135,
                [2] = 0.1686274509803922,
                [3] = 0.16078431372549021,
                [4] = 1,
            },
            ["improvedPet"] = false,
            ["neutralColor"] = {
                [1] = 0.90588235294117647,
                [2] = 0.80784313725490198,
                [3] = 0.22352941176470589,
                [4] = 1,
            },
            ["positions"] = {
                ["EquadisClassicOverhaulToT"] = {
                    ["x"] = 315,
                    ["y"] = 4,
                },
                ["PlayerFrame"] = {
                    ["x"] = -309,
                    ["y"] = -52,
                },
                ["TargetFrame"] = {
                    ["x"] = 278,
                    ["y"] = -51,
                },
                ["playerCast"] = {
                    ["x"] = 2,
                    ["y"] = -117,
                },
            },
            ["syncFrames"] = true,
        },
        ["waypoints"] = {
            ["arrowX"] = 1.97521735601822,
            ["arrowY"] = 242.057653170149,
        },
    },
    ["slots"] = {
        ["distance"] = {
            ["h"] = 8,
            ["textSize"] = 8,
            ["y"] = 116,
        },
        ["extras"] = {
            ["y"] = 160,
        },
        ["health"] = {
            ["h"] = 24,
            ["y"] = 200,
        },
        ["mainhand"] = {
            ["y"] = 150,
        },
        ["offhand"] = {
            ["y"] = 138,
        },
        ["ranged"] = {
            ["y"] = 126,
        },
        ["resource"] = {
            ["y"] = 176,
        },
    },
    ["stackY"] = 212,
}
