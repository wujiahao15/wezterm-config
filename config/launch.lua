local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   -- options.default_prog = { 'pwsh.exe', '-NoLogo' }
   options.default_prog = { 'C:\\Program Files\\PowerShell\\7-preview\\pwsh.exe', '-NoLogo' }
   options.launch_menu = {
      {
         label = 'PowerShell Core',
         -- args = { 'pwsh.exe', '-NoLogo' } },
         args = { 'C:\\Program Files\\PowerShell\\7-preview\\pwsh.exe', '-NoLogo' },
      },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' } },
      { label = 'Nushell', args = { 'nu' } },
      -- {
      --    label = 'Git Bash',
      --    args = { 'C:\\Users\\kevin\\scoop\\apps\\git\\current\\bin\\bash.exe' },
      -- },
   }
elseif platform.is_mac then
   -- options.default_prog = { '/opt/homebrew/bin/fish', '-l' }
   options.default_prog = { '/usr/local/bin/fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      -- { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
      { label = 'Fish', args = { '/usr/local/bin/fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
