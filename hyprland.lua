-- vim: set ts=4 sw=4 noet:

require("functions")

chassis_type = system("hostnamectl chassis")
hostname = system("hostnamectl hostname | cut -d. -f1")

if chassis_type == "desktop" then
	local superwide = "DP-1"
	local top_left = "DP-3"
	local top_right = "DP-5"

	hl.monitor({
		-- output = "desc:Dell Inc. DELL U4025QW 35QP934",
		output = superwide,
		position = "0x1440",
		--position = 0x0
		mode = "5120x2160@60",
		scale = "1",
		vrr = false,
		-- bitdepth = 10
		-- cm = hdredid
		-- sdrbrightness = 1.0
		-- sdrsaturation = 1.15
		-- sdr_min_luminance = 0.005
		-- sdr_max_luminance = 350
	})

	hl.monitor({
		output = top_left,
		disabled = false,
		mode = "2560x1440@60",
		position = "0x0",
		scale = "1",
	})

	hl.monitor({
		output = top_right,
		disabled = false,
		mode = "2560x1440@60",
		position = "2560x0",
		scale = "1",
	})
end

require("per-host/" .. hostname)
require("include.common")
-- require("../hypremoji/hypremoji")

