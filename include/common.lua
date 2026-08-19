-- vim: set ts=4 sw=4 noet:

require("include.vars")
require("include.autostart")
require("include.look")
require("include.rules")
require("include.layout")
require("include.keybinds")
-- require("include.hyprbars")
require("include.hyprexpo")

--##################
--## PERMISSIONS ###
--##################

-- See https://wiki.hyprland.org/Configuring/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- ecosystem {
--   enforce_permissions = 1
-- }

-- permission = /usr/(bin|local/bin)/grim, screencopy, allow
-- permission = /usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland, screencopy, allow
hl.permission({ binary = "/(usr/)?bin/hyprpm", type = "plugin", mode = "allow" })
