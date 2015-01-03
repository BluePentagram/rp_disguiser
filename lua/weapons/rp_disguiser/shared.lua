


AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "init.lua" )

SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false
SWEP.ViewModel = "models/weapons/v_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.HoldType = "normal"


SWEP.Author = "Bluey"
SWEP.Instructions = "Left click to disguise yourself"
SWEP.Contact = "http://skylinegaming.proboards.com/"
SWEP.Purpose = "To look like someone else."
SWEP.Category = "Skyline"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

function SWEP:Initialize()
	self:SetWeaponHoldType( self.HoldType )
end

function SWEP:Deploy()
	self.Owner:DrawWorldModel(false)
	self.Owner:DrawViewModel(false)
end

function SWEP:Reload()
end
 
function SWEP:Think()
end

function SWEP:PrimaryAttack()
	if ( SERVER ) then
		umsg.Start( "disguise", self.Owner ) 
		umsg.End()
	end
end
	
function SWEP:SecondaryAttack()
	if ( SERVER ) then
		umsg.Start( "disguise", self.Owner ) 
		umsg.End()
	end
end