Scriptname FPPShareMyGoldME extends activemagiceffect  

Event OnEffectStart(Actor Target, Actor Caster)
	if (!FPPShareMyGold.IsRunning())
		FPPShareMyGold.Start()
	endif
EndEvent

Quest Property FPPShareMyGold  Auto  
