


include('shared.lua')

SWEP.PrintName = "Disguiser"
SWEP.Slot = 0
SWEP.SlotPos = 10
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

function disguise()
    local dis = {}
 
	dis[1] = "models/player/Group01/Female_01.mdl"
	dis[2] = "models/player/Group01/Female_02.mdl"
	dis[3] = "models/player/Group01/Female_03.mdl"
	dis[4] = "models/player/Group01/Female_04.mdl"
	dis[5] = "models/player/Group01/Female_06.mdl"
	dis[6] = "models/player/group01/male_01.mdl"
	dis[7] = "models/player/Group01/Male_02.mdl"
	dis[8] = "models/player/Group01/male_03.mdl"
	dis[9] = "models/player/Group01/Male_04.mdl"
	dis[10] = "models/player/Group01/Male_05.mdl"
	dis[11] = "models/player/Group01/Male_06.mdl"
	dis[12] = "models/player/Group01/Male_07.mdl"
	dis[13] = "models/player/Group01/Male_08.mdl"
	dis[14] = "models/player/Group01/Male_09.mdl"
	dis[15] = "models/player/Group03/Female_01.mdl"
	dis[16] = "models/player/Group03/Female_02.mdl"
	dis[17] = "models/player/Group03/Female_03.mdl"
	dis[18] = "models/player/Group03/Female_04.mdl"
	dis[19] = "models/player/Group03/Female_06.mdl"
	dis[20] = "models/player/group03/male_01.mdl"
	dis[21] = "models/player/Group03/Male_02.mdl"
	dis[22] = "models/player/Group03/male_03.mdl"
	dis[23] = "models/player/Group03/Male_04.mdl"
	dis[24] = "models/player/Group03/Male_05.mdl"
	dis[25] = "models/player/Group03/Male_06.mdl"
	dis[26] = "models/player/Group03/Male_07.mdl"
	dis[27] = "models/player/Group03/Male_08.mdl"
	dis[28] = "models/player/Group03/Male_09.mdl"
	dis[29] = "models/player/police.mdl"
	dis[30] = "models/player/police_fem.mdl"
	dis[31] = "models/player/gman_high.mdl"
	dis[32] = "models/player/monk.mdl"
	dis[33] = "models/player/kleiner.mdl"
	dis[34] = "models/player/combine_soldier_prisonguard.mdl"
	dis[35] = "models/player/breen.mdl"
	dis[35] = "models/player/corpse1.mdl"
 
	local disguise = vgui.Create("DFrame")
	local disguiseicons = vgui.Create( "DPanelList", disguise ) 
 
	disguise:SetPos(ScrW()/2-152.5,ScrH()/2-149.5)
	disguise:SetSize(305,299)
	disguise:SetTitle("Disguiser")
	disguise:MakePopup()
	disguise:SetDraggable( false )
 
	disguiseicons:EnableVerticalScrollbar( true ) 
	disguiseicons:EnableHorizontal( true ) 
	disguiseicons:SetPadding( 4 ) 
	disguiseicons:SetPos(0,26)
	disguiseicons:SetSize(300, 270)
 
	for k,v in pairs(dis) do
		local icon = vgui.Create( "SpawnIcon", disguiseicons ) 
		icon:SetModel( v )
		disguiseicons:AddItem( icon )
		icon.DoClick = function( icon )
			net.Start( "disguisemodel" )
				net.WriteString( v )
			net.SendToServer()
			surface.PlaySound( "ui/buttonclickrelease.wav" )
			disguise:Close()
		end
	end 	
end
usermessage.Hook("disguise", disguise)
