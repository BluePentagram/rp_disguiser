


AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )

SWEP.Weight = 5
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = true

if CLIENT then
else
   function SWEP:GetRepeating()
      local ply = self.Owner
      return IsValid(ply)
   end
end

if ( SERVER ) then
util.AddNetworkString( "disguisemodel" )

	net.Receive( "disguisemodel", function( len, ply )
		ply:SetModel(net.ReadString())
	end )
end