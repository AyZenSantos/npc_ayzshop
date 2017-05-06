AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile("shop_config.lua")
include("shop_config.lua")

include('shared.lua')


function ENT:Initialize( )

	self:SetModel( "models/mossman.mdl" ) 
	self:SetHullType( HULL_HUMAN )
	self:SetHullSizeNormal( )
	self:SetNPCState( NPC_STATE_SCRIPT )
	self:SetSolid(  SOLID_BBOX )
	self:CapabilitiesAdd( CAP_ANIMATEDFACE )
	self:SetUseType( SIMPLE_USE )
	self:DropToFloor()
	self:SetMaxYawSpeed( 90 )
	
end

function ENT:OnTakeDamage()
	return false 
end 

function ENT:AcceptInput( Name, Activator, Caller )	

	if Name == "Use" and Caller:IsPlayer() then
		 
		umsg.Start("shop", Caller)
		umsg.End()
		
	end
	
end

util.AddNetworkString( "buyammo1" )
net.Receive( "buyammo1" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 200 then  --<<<<-- Prix a changer si vous le souhaitez 

   ply:addMoney( -200 ) --<<<<-- Prix a changer si vous le souhaitez 
    DarkRP.notify(ply,0,7,CONFIG_AYZSHOP.Notif1) 
    RunConsoleCommand("ent_create",CONFIG_AYZSHOP.Item1)--<<<<<-- Copier l'entitée de votre item si vous voulez changer
      else
     DarkRP.notify(ply,1,7,CONFIG_AYZSHOP.Notif2)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo2" )
net.Receive( "buyammo2" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 500 then--<<<<-- Prix a changer si vous le souhaitez 

   ply:addMoney( -500 ) --<<<<-- Prix a changer si vous le souhaitez 
    DarkRP.notify(ply,0,7,CONFIG_AYZSHOP.Notif3) 
    RunConsoleCommand("ent_create",CONFIG_AYZSHOP.Item2)--<<<<<-- Copier l'entitée de votre item si vous voulez changer
      else
     DarkRP.notify(ply,1,7,CONFIG_AYZSHOP.Notif4)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo3" )
net.Receive( "buyammo3" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 40000 then--<<<<-- Prix a changer si vous le souhaitez 

   ply:addMoney( -40000 ) --<<<<-- Prix a changer si vous le souhaitez 
    DarkRP.notify(ply,0,7,CONFIG_AYZSHOP.Notif5) 
    RunConsoleCommand("ent_create",CONFIG_AYZSHOP.Item3)--<<<<<-- Copier l'entitée de votre item si vous voulez changer
      else
     DarkRP.notify(ply,1,7,CONFIG_AYZSHOP.Notif6)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo4" )
net.Receive( "buyammo4" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 5000 then--<<<<-- Prix a changer si vous le souhaitez 

   ply:addMoney( -5000 ) --<<<<-- Prix a changer si vous le souhaitez 
    DarkRP.notify(ply,0,7,CONFIG_AYZSHOP.Notif7) 
    RunConsoleCommand("ent_create",CONFIG_AYZSHOP.Item4)  --<<<<<-- Copier l'entitée de votre item si vous voulez changer
      else
     DarkRP.notify(ply,1,7,CONFIG_AYZSHOP.Notif8)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo5" )
net.Receive( "buyammo5" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 1500 then--<<<<-- Prix a changer si vous le souhaitez 

   ply:addMoney( -1500 ) --<<<<-- Prix a changer si vous le souhaitez 
    DarkRP.notify(ply,0,7,CONFIG_AYZSHOP.Notif9) 
    RunConsoleCommand("ent_create",CONFIG_AYZSHOP.Item5) --<<<<<-- Copier l'entitée de votre item si vous voulez changer
      else
     DarkRP.notify(ply,1,7,CONFIG_AYZSHOP.Notif10)
   
 
    end
  end)
  
  util.AddNetworkString( "buyammo6" )
net.Receive( "buyammo6" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 1 then--<<<<-- Prix a changer si vous le souhaitez 

   ply:addMoney( -1 ) --<<<<-- Prix a changer si vous le souhaitez 
    DarkRP.notify(ply,0,7,CONFIG_AYZSHOP.Notif11) 
    RunConsoleCommand("ent_create",CONFIG_AYZSHOP.Item6)  --<<<<<-- Copier l'entitée de votre item si vous voulez changer
      else
     DarkRP.notify(ply,1,7,CONFIG_AYZSHOP.Notif12)
   
 
    end
  end)