------------------------------------------------------------
-- header
------------------------------------------------------------

local require = GLOBAL.require
local modinit = require("modinit")
modinit("grid")

------------------------------------------------------------
-- main
------------------------------------------------------------

onChatCommand = _f(function (params, caller)
	OpenOptionsScreen()
end)

AddUserCommand("grid", {
  prettyname = nil, --default to STRINGS.UI.BUILTINCOMMANDS.BUG.PRETTYNAME
  desc = nil, --default to STRINGS.UI.BUILTINCOMMANDS.BUG.DESC
  permission = COMMAND_PERMISSION.USER,
  slash = false,
  usermenu = false,
  servermenu = false,
  params = {},
  vote = false,
  localfn = function(params, caller)
    onChatCommand(params, caller)
  end,
})

--[[

modget("grid").import("cmd")
modget("grid").ver
--]]