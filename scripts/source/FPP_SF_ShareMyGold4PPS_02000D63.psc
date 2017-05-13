;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname FPP_SF_ShareMyGold4PPS_02000D63 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Actor F01 = Follower01.GetActorRef()
Actor F02 = Follower02.GetActorRef()
Actor F03 = Follower03.GetActorRef()
Actor F04 = Follower04.GetActorRef()
Actor F05 = Follower05.GetActorRef()
Actor F06 = Follower06.GetActorRef()
Actor F07 = Follower07.GetActorRef()
Actor F08 = Follower08.GetActorRef()
Actor F09 = Follower09.GetActorRef()
Actor F10 = Follower10.GetActorRef()

Actor Player = PlayerRef.GetActorRef()
Int count = 1

count = count + countFollower(F01)
count = count + countFollower(F02)
count = count + countFollower(F03)
count = count + countFollower(F04)
count = count + countFollower(F05)
count = count + countFollower(F06)
count = count + countFollower(F07)
count = count + countFollower(F08)
count = count + countFollower(F09)
count = count + countFollower(F10)

Int GoldCount = Player.GetItemCount(Gold001) / count
payGold(Player, GoldCount, F01)
payGold(Player, GoldCount, F02)
payGold(Player, GoldCount, F03)
payGold(Player, GoldCount, F04)
payGold(Player, GoldCount, F05)
payGold(Player, GoldCount, F06)
payGold(Player, GoldCount, F07)
payGold(Player, GoldCount, F08)
payGold(Player, GoldCount, F09)
payGold(Player, GoldCount, F10)

GetOwningQuest().Stop()

;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Int Function countFollower(Actor act)
	if (act)
		return 1
	else
		return 0
	endif
EndFunction

Function payGold(Actor player, Int num, Actor Follower)
	if (Follower)
		Utility.Wait(0.5)
		player.RemoveItem(Gold001, num, false, Follower)
	endif
EndFunction

ReferenceAlias Property PlayerRef  Auto  
ReferenceAlias Property Follower01  Auto  
ReferenceAlias Property Follower02  Auto  
ReferenceAlias Property Follower03  Auto  
ReferenceAlias Property Follower04  Auto  
ReferenceAlias Property Follower05  Auto  
ReferenceAlias Property Follower06  Auto  
ReferenceAlias Property Follower07  Auto  
ReferenceAlias Property Follower08  Auto  
ReferenceAlias Property Follower09  Auto  
ReferenceAlias Property Follower10  Auto  
MiscObject Property Gold001  Auto  
