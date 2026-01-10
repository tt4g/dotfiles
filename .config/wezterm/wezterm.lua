local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

--- config.font = wezterm.font('HackGen Console')

config.font_size = 12
config.color_scheme = 'Tokyo Night (Gogh)'

local is_windows = wezterm.target_triple == "x86_64-pc-windows-msvc"

if is_windows then
  --- Define: wezterm.action.ShowLauncher
  config.launch_menu = {
    {
      label = 'Command Prompt',
      args = { os.getenv('COMSPEC') },
    },
    {
      label = 'Git Bash',
      args = { 'C:\\Program Files\\Git\\bin\\bash.exe' },
    },
    {
      label = 'PowerShell',
      args = { 'powershell.exe' },
    },
    {
      label = 'WSL',
      args = { 'wsl.exe' },
    }
  }
end

config.keys = {
  {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action.ShowLauncher
  },
}


return config