APPEND AERIEJ

IF ~Global("B2#PHNX","GLOBAL",1)~ THEN BEGIN B2#AerFam1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO B2#AerFam2
END

IF ~~ THEN BEGIN B2#AerFam2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("B2#PHNX","GLOBAL",2)
StartCutSceneMode()
StartCutScene("B2#cutAF")
~ EXIT
END
END

BEGIN ~B2#AMML~

IF ~Global("B2#PHNX","GLOBAL",2)
~ THEN BEGIN 0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam3
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO B2#AerFam4
  IF ~~ THEN REPLY @8 GOTO B2#AerFam5
  IF ~~ THEN REPLY @9 GOTO B2#AerFam6
END

IF ~~ THEN BEGIN B2#AerFam4
  SAY @10
  IF ~~ THEN GOTO B2#AerFam5
END

IF ~~ THEN BEGIN B2#AerFam5
  SAY @11
  IF ~~ THEN GOTO B2#AerFam7
END

IF ~~ THEN BEGIN B2#AerFam6
  SAY @12
  IF ~~ THEN GOTO B2#AerFam5
END

IF ~~ THEN BEGIN B2#AerFam7
  SAY @13
  IF ~~ THEN EXTERN ~B2#AMML~ 2
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 2
  SAY @14
   = @15
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam8
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam8
  SAY @16
  IF ~~ THEN EXTERN ~B2#AMML~ 3
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 3
  SAY @17
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam9
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam9
  SAY @18
  IF ~~ THEN EXTERN ~B2#AMML~ 4
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 4
  SAY @19
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam10
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam10
  SAY @20
  IF ~~ THEN EXTERN ~B2#AMML~ 5
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 5
  SAY @21
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam11
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam11
  SAY @22
   = @23
  IF ~~ THEN EXTERN ~B2#AMML~ 6
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 6
  SAY @24
   = @25
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam12
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam12
  SAY @26
  IF ~~ THEN EXTERN ~B2#AMML~ 7
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 7
  SAY @27
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam13
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam13
  SAY @28
  IF ~~ THEN EXTERN ~B2#AMML~ 8
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 8
  SAY @29
   = @30
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam14
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam14
  SAY @31
  IF ~~ THEN EXTERN ~B2#AMML~ 9
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 9
  SAY @32
   = @33
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam15
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam15
  SAY @34
  IF ~~ THEN EXTERN ~B2#AMML~ 10
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 10
  SAY @35
   = @36
   = @37
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerFam16
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerFam16
  SAY @38
   = @39
   = @40
  IF ~~ THEN EXTERN ~B2#AMML~ 11
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 11
  SAY @41
  IF ~~ THEN DO ~SetGlobal("B2#PHNX","GLOBAL",3)
SetGlobal("B2#AerieFamiliar","GLOBAL",1)
CreateVisualEffectObject("SPFLSRIN",Myself)
ActionOverride("AERIE",ReallyForceSpell(Myself,B2#AERIEFAM))
ActionOverride("AERIE",TransformItem("B2#PHNX","B2#AMMJ"))
EndCutSceneMode()
DestroySelf()
~ EXIT
END

IF ~Global("B2#AerieFamiliar","GLOBAL",1)
!Name("Aerie",LastTalkedToBy)~ THEN BEGIN 12
  SAY @42
  IF ~~ THEN DO ~MoveToObject("AERIE")~ EXIT
END
END

INTERJECT B2#AMML 12 B2#AerAml1
  == AERIEJ IF ~IsValidForPartyDialog("AERIE")~ THEN
    @43
END B2#AMML 13

APPEND B2#AMML
IF ~~ THEN BEGIN 13
  SAY @15
  IF ~~ THEN EXTERN ~AERIEJ~ B2#AerAml2
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN B2#AerAml2
  SAY @44
   = @45
  IF ~~ THEN EXTERN ~B2#AMML~ 14
END
END

APPEND B2#AMML
IF ~~ THEN BEGIN 14
  SAY @46
  IF ~~ THEN DO ~MoveToObject("AERIE")~ EXIT
END

IF ~Global("B2#AerieFamiliar","GLOBAL",1)
Name("Aerie",LastTalkedToBy)~ THEN BEGIN 15
  SAY @15
  IF ~~ THEN REPLY @47 GOTO 16
  IF ~~ THEN REPLY @48 GOTO 17
  IF ~~ THEN REPLY @49 GOTO 26
  IF ~~ THEN REPLY @50 GOTO 33
  IF ~~ THEN REPLY @51 GOTO 34
END

IF ~~ THEN BEGIN 16
  SAY @52
  IF ~~ THEN REPLY @48 GOTO 17
  IF ~~ THEN REPLY @53 GOTO 26
  IF ~~ THEN REPLY @50 GOTO 33
  IF ~~ THEN REPLY @51 GOTO 34
END

IF ~~ THEN BEGIN 17
  SAY @54
  IF ~Global("chapter","GLOBAL",%bg2_chapter_1%)
AreaType(DUNGEON)~ THEN GOTO 18
  IF ~Global("chapter","GLOBAL",%bg2_chapter_1%)
!AreaType(DUNGEON)~ THEN GOTO 19
  IF ~Global("chapter","GLOBAL",%bg2_chapter_2%)~ THEN GOTO 20
  IF ~Global("chapter","GLOBAL",%bg2_chapter_3%)~ THEN GOTO 21
  IF ~Global("chapter","GLOBAL",%bg2_chapter_4%)~ THEN GOTO 22
  IF ~Global("chapter","GLOBAL",%bg2_chapter_5%)~ THEN GOTO 23
  IF ~Global("chapter","GLOBAL",%bg2_chapter_6%)~ THEN GOTO 24
  IF ~Global("chapter","GLOBAL",%bg2_chapter_7%)~ THEN GOTO 25
END

IF ~~ THEN BEGIN 18
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @56
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @57
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY @58
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @59
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @60
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @61
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @62
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @63
  IF ~HPLT(Myself,16)
!HPLT(Myself,8)~ THEN GOTO 28
  IF ~HPLT(Myself,8)~ THEN GOTO 29
  IF ~!HPLT(Myself,16)
RandomNum(4,1)~ THEN GOTO 27
  IF ~!HPLT(Myself,16)
RandomNum(4,2)~ THEN GOTO 30
  IF ~!HPLT(Myself,16)
RandomNum(4,3)~ THEN GOTO 31
  IF ~!HPLT(Myself,16)
RandomNum(4,4)~ THEN GOTO 32
END

IF ~~ THEN BEGIN 27
  SAY @64
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY @65
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29
  SAY @66
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30
  SAY @67
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @68
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY @41
  IF ~~ THEN DO ~GivePartyAllEquipment()
SetGlobal("B2#AmmlSum","GLOBAL",0)
ActionOverride("AERIE",TransformItem("B2#AMMK","B2#AMMJ"))
Rest()
DestroySelf()
~ EXIT
END
END