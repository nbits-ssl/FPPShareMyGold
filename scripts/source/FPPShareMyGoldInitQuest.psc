Scriptname FPPShareMyGoldInitQuest extends Quest  

SPELL Property FPPShareMyGoldSpell  Auto  

Event OnInit()
	Actor Player = Game.GetPlayer()
	if !(Player.HasSpell(FPPShareMyGoldSpell))
		Player.AddSpell(FPPShareMyGoldSpell)
		self.Stop()
	endif
EndEvent

