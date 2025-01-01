local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'pwsh' }
   options.launch_menu = {
      { label = ' PowerShell v7', args = { 'pwsh' } },
      { label = ' PowerShell', args = { 'powershell' } },
      { label = ' CMD', args = { 'cmd' } },
      { label = ' Nushell', args = { 'nu' } },
      {
         label = ' GitBash',
         args = { 'C:\\Users\\1516\\scoop\\apps\\git\\current\\bin\\bash.exe' },
      },
   }
elseif platform.is_mac then
   -- options.default_prog = { '/opt/homebrew/bin/fish', '-l' }
   options.default_prog = { '/usr/local/bin/fish', '-l' }
   options.launch_menu = {
      { label = ' Bash', args = { 'bash', '-l' } },
      -- { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
      { label = ' Fish', args = { '/usr/local/bin/fish', '-l' } },
      { label = ' Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = ' Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh',  args = { 'zsh', '-l' } },
   }
end

return options
