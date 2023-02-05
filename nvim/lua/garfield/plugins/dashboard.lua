local db = require('dashboard')

db.setup({
  theme = 'doom',
  config = {
    header = {
      [[⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀    ⠀⠀    ⣀⣀⣀⣀⣤⣤⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀          ]],
      [[⠀⠀⠀⠀⠀⠀          ⢀⣠⡤⢶⣺⡯⣭⠁⠀⢀⣤⠴⠶⠦⣄⠉⠙⠒⠶⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
      [[⠀⠀⠀⠀⠀        ⣠⠖⠋⢁⡾⠋⠀⠀⠀⠙⣦⣰⠋⠀⠀⠀⠀⠀⠙⣦⠀⠀⠀⠀⠈⠙⠲⣄⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀        ⢀⣴⠟⠁⠀⢠⡟⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠸⡆⠀⠀⠀⠀⠀⠀⠈⠻⣆⠀⠀⠀⠀⠀]],
      [[⠀        ⢠⡞⠁⠀⠀⠀⢸⠃⠀⠀⠀⢀⣀⡀⣸⡇⣠⣀⠀⠀⠀⠀⠀⠀⣇⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⡀⠀⠀⠀]],
      [[         ⠏⠀⠀⠀⢀⣤⠾⣆⠀⠀⠀⠘⢉⣳⣿⣧⠛⠟⠀⠀⠀⠀⢀⣼⠋⠙⠳⢦⣀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀]],
      [[        ⡟⠀⠀⣠⢾⣍⣀⠀⠙⢦⣄⣀⣰⠏⠀⠈⢻⡷⢦⣤⣤⡤⡴⣋⣁⣀⡤⠴⠄⠈⠳⣄⠀⠀⠀⠀⠈⣧⠀⠀]],
      [[       ⣸⠁⢀⡾⣁⠀⠀⠉⠙⠓⠒⠀⠀⠘⢷⣄⣠⠾⠃⠀⠀⠒⠛⠉⢉⢁⣀⣀⣀⣀⠀⠀⠈⢧⡀⠀⠀⠀⢸⡄⠀]],
      [[       ⣿⠀⡾⠀⢉⣉⡛⠛⠓⠒⠆⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⢟⠛⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠈⣧⠀⠀⠀⢸⡇⠀]],
      [[       ⣿⢰⠇⠐⣿⠛⠛⠒⠒⠒⠒⠀⠀⠀⠀⢸⣇⣀⣀⣀⣤⡬⠭⠭⠭⠭⠭⠭⢭⣅⠀⠀⠀⠀⢹⡀⠀⠀⢸⡇⠀]],
      [[⠀      ⢻⣸⠀⠀⠻⠦⣤⣤⠤⠤⠴⠖⠒⠛⠉⠉⠉⠀⠀⠀⠀⢀⣀⣀⣀⣀⡀⠀⠀⢸⡇⠀⠀⠀⢸⠇⠀⠀⢸⠃⠀]],
      [[⠀      ⠘⣿⡀⠀⠀⠀⠀⠹⣆⠀⠀⠀⠀⠀⠀⠀⢀⣤⠴⠚⠋⠉⠉⠀⠉⠉⠉⠙⢲⠟⠀⠀⠀⠀⣸⠀⠀⠀⣼  ]],
      [[ ⣠⡾⠛⠛⠛⢦⡄⢹⡇⠀⠀⠀⠀⠀⠙⣦⠀⠀⠀⠀⢀⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⡿⠀⠀⢠⡏⠀⠀]],
      [[⢰⡏⠀⠀⠀⠀⠀⢻⡄⢿⠀⠀⠀⠀⠀⠀⠈⠳⣄⠀⢠⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⣸⠃⠀⠀⡾⠀⠀⠀]],
      [[⠘⣇⠀⠀⠀⠀⠀⣸⠙⠺⣧⠀⠀⠀⠀⠀⠀⠀⠙⠶⣸⡄⠀⠀⠀⠀⠀⠀⢀⣠⠖⠋⠀⠀⠀⠀⠀⠀⠀⢠⡏⠀⢀⡼⠁⠀⠀⠀]],
      [[ ⠘⠷⣤⣄⣤⠾⠋⠀⠀⠘⢷⡀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠒⠲⠶⠖⠒⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⢀⡾⠁⠀⠀⠀⠀]],
      [[    ⢻⡄⠀⠀⠀⠀⠀⠈⠻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠏⠀⣠⠏⠀⠀⠀⠀⠀⠀]],
      [[     ⢳⡀⠀⠀⠀⠀⠀⢰⡏⠉⠉⠉⠉⠉⠉⢉⣩⣿⣿⣭⡉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⠉⠙⠙⢳⠆⠀⠀⠀⠀⠀⠀]],
      [[      ⠳⡄⠀⠀⠀⠀⠀⠉⢉⡿⠋⠉⠉⠉⣿⠛⣷⣛⡿⣿⠉⠉⠉⠛⠛⢿⡛⠛⠛⠛⠛⠛⠋⠛⠉⢳⡄⠀⠀⠀⠀⠀]],
      [[       ⠙⣆⠀⠀⠀⠀⢠⡞⠀⠀⠀⠀⠀⠙⢦⣻⣏⡵⠏⠀⠀⠀⠀⠀⠀⠙⣦⠀⠀⠀⠀⠀⠀⠀⠀⠹⣆⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀                                            ]],
      [[                    N E O V I M                 ]],
      [[                                                ]],
    }, --your header
    center = {
      {
        icon = ' ',
        icon_hi = 'Title',
        desc = 'Find File',
        desc_hi = 'String',
        key = 'f',
        key_hi = 'command',
        action = 'Telescope find_files'
      },
      {
        icon = ' ',
        icon_hi = 'Title',
        desc = 'New File',
        desc_hi = 'String',
        key = 'n',
        key_hi = 'command',
        action = 'enew'
      },
      {
        icon = ' ',
        icon_hi = 'Title',
        desc = 'Search History',
        desc_hi = 'String',
        key = 's',
        key_hi = 'command',
        action = 'Telescope search_history'
      },
      {
        desc = 'Sync Plugins',
        icon = ' ',
        icon_hi = 'Title',
        desc_hi = 'String',
        key = 'u',
        key_hi = 'command',
        action = 'PackerSync'
      },
      {
        icon = ' ',
        icon_hi = 'Title',
        desc = 'Change Colorscheme',
        desc_hi = 'String',
        key = 'c',
        key_hi = 'command',
        action = 'Telescope colorscheme'
      },
      {
        icon = ' ',
        icon_hi = 'Title',
        desc = 'Call Mason',
        desc_hi = 'String',
        key = 'm',
        key_hi = 'command',
        action = 'Mason'
      },
      {
        icon = ' ',
        icon_hi = 'Title',
        desc = 'Check Health',
        desc_hi = 'String',
        key = 'l',
        key_hi = 'command',
        action = 'checkhealth'
      },
    },
    footer = {"We're all in the same boat, staying afloat for the moment"}  --your footer
  }
})
