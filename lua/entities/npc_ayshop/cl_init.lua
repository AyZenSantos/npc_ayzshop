include('shared.lua')
include('shop_config.lua')

function shop () 
local shop = vgui.Create( "DFrame" )
shop:SetPos( ScrW()/2-150, ScrH()/2-150 )
shop:SetSize( 800, 500 )
shop:Center()
shop:SetTitle("")
shop:ShowCloseButton( false )
shop:SetDraggable(true)
shop:SetVisible( true )
shop:MakePopup()
shop.Paint = function()
	 draw.RoundedBox( 5, 0, 0, shop:GetWide(), shop:GetTall(), Color( 48,48, 48, 255	 ) )
	 draw.RoundedBox( 5, 0, 0, 800, 500, Color( 255, 255, 255, 255 ) )
	 draw.RoundedBox( 5, 2, 3, 795, 494, Color( 48, 48, 48, 255 ) )
	 
--__________________________________________________________________________________________________________
	 draw.RoundedBox( 5, 18, 50, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 20, 53, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_AYZSHOP.Text1, "Trebuchet24", 125, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT) 
	 draw.SimpleText(CONFIG_AYZSHOP.Text2, "Trebuchet24", 125, 65,Color(255,255,255,255),TEXT_ALIGN_LEFT) 
	 
	  draw.RoundedBox( 5, 18, 200, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 20, 203, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_AYZSHOP.Text3, "Trebuchet24", 125, 245,Color(255,255,255,255),TEXT_ALIGN_LEFT) 
	 draw.SimpleText(CONFIG_AYZSHOP.Text4, "Trebuchet24", 125, 215,Color(255,255,255,255),TEXT_ALIGN_LEFT) 
	 
	  draw.RoundedBox( 5, 18, 350, 350, 100, Color( 255, 0, 0, 255 ) )                                    
	 draw.RoundedBox( 4, 20, 353, 345, 94, Color( 0, 0, 0, 255 ) )                                       
	 draw.SimpleText(CONFIG_AYZSHOP.Text5, "Trebuchet24", 125, 395,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	 draw.SimpleText(CONFIG_AYZSHOP.Text6, "Trebuchet24", 125, 365,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	                                                                                                      
	  draw.RoundedBox( 5, 418, 200, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 420, 203, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_AYZSHOP.Text7, "Trebuchet24", 525, 245,Color(255,255,255,255),TEXT_ALIGN_LEFT) 
	 draw.SimpleText(CONFIG_AYZSHOP.Text8, "Trebuchet24", 525, 215,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	 
	 	  draw.RoundedBox( 5, 418, 350, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 420, 353, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_AYZSHOP.Text9, "Trebuchet24", 525, 395,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	 draw.SimpleText(CONFIG_AYZSHOP.Text10, "Trebuchet24", 525, 365,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	 
	 
	  draw.RoundedBox( 5, 418, 50, 350, 100, Color( 255, 0, 0, 255 ) )
	 draw.RoundedBox( 4, 420, 53, 345, 94, Color( 0, 0, 0, 255 ) )
	 draw.SimpleText(CONFIG_AYZSHOP.Text11, "Trebuchet24", 525, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT) 
	 draw.SimpleText(CONFIG_AYZSHOP.Text12, "Trebuchet24", 525, 65,Color(255,255,255,255),TEXT_ALIGN_LEFT)                
	 -------------------------------------------------------------------------------------------------------
end
local CloseButton = vgui.Create("DButton", shop)
CloseButton:SetSize(shop:GetWide() / 16, shop:GetTall() / 15- 5) 
CloseButton:AlignRight(8)
CloseButton:AlignTop(8)
CloseButton:SetText("")
CloseButton.DoClick = function()

shop:Close()

end
CloseButton.Paint = function(self)

draw.RoundedBox(5,0,0,CloseButton:GetWide(),CloseButton:GetTall(),Color(255,0,0,255))

draw.DrawText("X ","Trebuchet24",CloseButton:GetWide() / 4+1,CloseButton:GetTall() / 11,Color(255,255,255,255),TEXT_ALIGN_LEFT) 

if CloseButton:IsHovered() then

draw.DrawText("X ","Trebuchet24",CloseButton:GetWide() / 4+1,CloseButton:GetTall() / 11-2,Color(255,255,255,255),TEXT_ALIGN_LEFT) 
end

end
acheteritem1 = vgui.Create("DButton",shop)
acheteritem1:SetText("Acheter")
acheteritem1:SetParent( shop )  
acheteritem1:SetPos(275,83)
acheteritem1:SetTextColor( Color( 0, 0, 0, 250 ) )
acheteritem1:SetFont("Trebuchet24")
acheteritem1:SetSize(75,40)
acheteritem1.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheteritem1.DoClick = function()
shop:Close()
net.Start( "buyammo1" )
net.SendToServer()
end

acheteritem2 = vgui.Create("DButton",shop)
acheteritem2:SetText("Acheter")
acheteritem2:SetParent( shop )  
acheteritem2:SetPos(275,230)
acheteritem2:SetTextColor( Color( 0, 0, 0, 250 ) )
acheteritem2:SetFont("Trebuchet24")
acheteritem2:SetSize(75,40)
acheteritem2.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheteritem2.DoClick = function()
shop:Close()
net.Start( "buyammo2" )
net.SendToServer()
end

acheteritem3 = vgui.Create("DButton",shop)
acheteritem3:SetText("Acheter")
acheteritem3:SetParent( shop )  
acheteritem3:SetPos(275,383)
acheteritem3:SetTextColor( Color( 0, 0, 0, 250 ) )
acheteritem3:SetFont("Trebuchet24")
acheteritem3:SetSize(75,40)
acheteritem3.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheteritem3.DoClick = function()
shop:Close()
net.Start( "buyammo3" )
net.SendToServer()
end
acheteritem4 = vgui.Create("DButton",shop)
acheteritem4:SetText("Acheter")
acheteritem4:SetParent( shop )  
acheteritem4:SetPos(675,83)
acheteritem4:SetTextColor( Color( 0, 0, 0, 250 ) )
acheteritem4:SetFont("Trebuchet24")
acheteritem4:SetSize(75,40)
acheteritem4.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheteritem4.DoClick = function()
shop:Close()
net.Start( "buyammo4" )
net.SendToServer()
end
acheteritem5 = vgui.Create("DButton",shop)
acheteritem5:SetText("Acheter")
acheteritem5:SetParent( shop )  
acheteritem5:SetPos(675,230)
acheteritem5:SetTextColor( Color( 0, 0, 0, 250 ) )
acheteritem5:SetFont("Trebuchet24")
acheteritem5:SetSize(75,40)
acheteritem5.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheteritem5.DoClick = function()
shop:Close()
net.Start( "buyammo5" )
net.SendToServer()
end
acheteritem6 = vgui.Create("DButton",shop)
acheteritem6:SetText("Acheter")
acheteritem6:SetParent( shop )  
acheteritem6:SetPos(675,383)
acheteritem6:SetTextColor( Color( 0, 0, 0, 250 ) )
acheteritem6:SetFont("Trebuchet24")
acheteritem6:SetSize(75,40)
acheteritem6.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
acheteritem6.DoClick = function()
shop:Close()
net.Start( "buyammo6" )
net.SendToServer()
end

local item1 = vgui.Create( "DModelPanel", shop )
item1:SetSize( 125, 125)
item1:SetPos( 20, 0)
item1:SetParent( shop )
item1:SetModel( CONFIG_AYZSHOP.ModelItem1 ) --<<<<<--  Model de l'item
function item1:LayoutEntity( Entity ) return end 
function item1.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local item2 = vgui.Create( "DModelPanel", shop )
item2:SetSize( 125, 125)
item2:SetPos( 20, 150)
item2:SetParent( shop )
item2:SetModel( CONFIG_AYZSHOP.ModelItem2 ) --<<<<<--  Model de l'item
function item2:LayoutEntity( Entity ) return end 
function item2.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local item3 = vgui.Create( "DModelPanel", shop )
item3:SetSize( 125, 125)
item3:SetPos( 20, 290)
item3:SetParent( shop )
item3:SetModel( CONFIG_AYZSHOP.ModelItem3 ) --<<<<<--  Model de l'item
function item3:LayoutEntity( Entity ) return end 
function item3.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local item4 = vgui.Create( "DModelPanel", shop )
item4:SetSize( 125, 125)
item4:SetPos( 425, 0)
item4:SetParent( shop )
item4:SetModel( CONFIG_AYZSHOP.ModelItem4 ) --<<<<<-- Model de l'item
function item4:LayoutEntity( Entity ) return end 
function item4.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local item5 = vgui.Create( "DModelPanel", shop )
item5:SetSize( 100, 125)
item5:SetPos( 425, 150)
item5:SetParent( shop )
item5:SetModel( CONFIG_AYZSHOP.ModelItem5 ) --<<<<<-- Model de l'item
function item5:LayoutEntity( Entity ) return end 
function item5.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end

local item6 = vgui.Create( "DModelPanel", shop )
item6:SetSize( 125, 125)
item6:SetPos( 425, 300)
item6:SetParent( shop )
item6:SetModel( CONFIG_AYZSHOP.ModelItem6 ) --<<<<<--  Model de l'item
function item6:LayoutEntity( Entity ) return end 
function item6.Entity:GetPlayerColor() return Vector ( 5, 0, 0 ) end
end

usermessage.Hook("shop", shop) 

hook.Add("PostDrawOpaqueRenderables", "shop", function() 
	for _, ent in pairs (ents.FindByClass("npc_ayshop")) do 
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 1000 then
			local Ang = ent:GetAngles()

			Ang:RotateAroundAxis( Ang:Forward(), 90)
			Ang:RotateAroundAxis( Ang:Right(), -90)
		
			cam.Start3D2D(ent:GetPos()+ent:GetUp()*79, Ang, 0.20)
				draw.SimpleTextOutlined( 'NPC SHOP', "HUDNumber5", 0, 0, Color( 255, 0, 0, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, Color(0, 0, 0, 255))			
			cam.End3D2D()
		end
	end
end)
