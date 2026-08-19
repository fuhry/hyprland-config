local plugin_dir = os.getenv("HOME") .. "/.local/lib/hyprland/plugins/"

-- hl.on("hyprland.start", function()
hl.plugin.load(plugin_dir .. "libhyprbars.so")
hl.plugin.load(plugin_dir .. "libhyprland-virtual-desktops.so")
-- end)
