--[[

  Lady Primeveire

  Copyright (C) 2012 Jessica Tölke

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

--]]

local function lady_talk(npc, ch)
    local function say(message)
        npc_message(npc, ch, message)
    end

    say("What are you doing in my bedroom? As if it isn't bad enough to "..
        "be stuck in this stinking farmer village.")
    say("No, now people start to molest me in my own bedroom. I pray to "..
        "Aquaria that they might order us back to "..
        "a more civilized place soon.")
    say("Leave my bedroom!")
end

local lady = create_npc_by_name("Lady Primeveire", lady_talk)

being_set_base_attribute(lady, 16, 1)
local patrol = Patrol:new("Lady Primeveire")
patrol:assignBeing(lady)
schedule_every(12, function() patrol:logic() end)
