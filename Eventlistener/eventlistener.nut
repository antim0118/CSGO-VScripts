//=========== (C) Copyright 1999 Valve, L.L.C. All rights reserved. ===========
//
// The copyright to the contents below is the property of Valve, L.L.C.
// The contents may be used and/or copied only with the written permission of
// Valve, L.L.C., or in accordance with the terms and conditions stipulated in
// the agreement/contract under which the contents have been supplied.
//=============================================================================

// No spaces in event names, max length 32
// All strings are case sensitive
// total game event byte length must be < 1024
//
// valid data key types are:
//   none   : value is not networked
//   string : a zero terminated string
//   wstring: a zero terminated wide char string
//   bool   : unsigned int, 1 bit
//   byte   : unsigned int, 8 bit
//   short  : signed int, 16 bit
//   long   : signed int, 32 bit
//   float  : float, 32 bit

// Translated from valve key value with gmod lua function util.KeyValuesToTable

// That file can be outdated. Check updated version here: https://github.com/antimYT/CSGO-VScripts
// Last update: 30.11.2018 17:57
// Updated by /antim/
// Parsed from: https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events

EVENT_PLAYER_DEATH<-0;
EVENT_OTHER_DEATH<-1;
EVENT_ITEM_PURCHASE<-2;
EVENT_BOMB_BEGINPLANT<-3;
EVENT_BOMB_ABORTPLANT<-4;
EVENT_BOMB_PLANTED<-5;
EVENT_BOMB_DEFUSED<-6;
EVENT_BOMB_EXPLODED<-7;
EVENT_BOMB_DROPPED<-8;
EVENT_BOMB_PICKUP<-9;
EVENT_DEFUSER_DROPPED<-10;
EVENT_DEFUSER_PICKUP<-11;
EVENT_ANNOUNCE_PHASE_END<-12;
EVENT_CS_INTERMISSION<-13;
EVENT_BOMB_BEGINDEFUSE<-14;
EVENT_BOMB_ABORTDEFUSE<-15;
EVENT_HOSTAGE_FOLLOWS<-16;
EVENT_HOSTAGE_HURT<-17;
EVENT_HOSTAGE_KILLED<-18;
EVENT_HOSTAGE_RESCUED<-19;
EVENT_HOSTAGE_STOPS_FOLLOWING<-20;
EVENT_HOSTAGE_RESCUED_ALL<-21;
EVENT_HOSTAGE_CALL_FOR_HELP<-22;
EVENT_VIP_ESCAPED<-23;
EVENT_VIP_KILLED<-24;
EVENT_PLAYER_RADIO<-25;
EVENT_BOMB_BEEP<-26;
EVENT_WEAPON_FIRE<-27;
EVENT_WEAPON_FIRE_ON_EMPTY<-28;
EVENT_WEAPON_FIRE_ON_EMPTY<-29;
EVENT_WEAPON_OUTOFAMMO<-30;
EVENT_WEAPON_RELOAD<-31;
EVENT_WEAPON_ZOOM<-32;
EVENT_SILENCER_DETACH<-33;
EVENT_INSPECT_WEAPON<-34;
EVENT_WEAPON_ZOOM_RIFLE<-35;
EVENT_PLAYER_SPAWNED<-36;
EVENT_ITEM_PICKUP<-37;
EVENT_AMMO_PICKUP<-38;
EVENT_ITEM_EQUIP<-39;
EVENT_ITEM_REMOVE<-40;
EVENT_ENTER_BUYZONE<-41;
EVENT_EXIT_BUYZONE<-42;
EVENT_BUYTIME_ENDED<-43;
EVENT_ENTER_BOMBZONE<-44;
EVENT_EXIT_BOMBZONE<-45;
EVENT_ENTER_RESCUE_ZONE<-46;
EVENT_EXIT_RESCUE_ZONE<-47;
EVENT_SILENCER_OFF<-48;
EVENT_SILENCER_ON<-49;
EVENT_BUYMENU_OPEN<-50;
EVENT_BUYMENU_CLOSE<-51;
EVENT_BEGIN_NEW_MATCH<-52;
EVENT_ROUND_PRESTART<-53;
EVENT_ROUND_POSTSTART<-54;
EVENT_ROUND_START<-55;
EVENT_ROUND_END<-56;
EVENT_ROUND_OFFICIALLY_ENDED<-57;
EVENT_GRENADE_BOUNCE<-58;
EVENT_HEGRENADE_DETONATE<-59;
EVENT_FLASHBANG_DETONATE<-60;
EVENT_SMOKEGRENADE_DETONATE<-61;
EVENT_SMOKEGRENADE_EXPIRED<-62;
EVENT_MOLOTOV_DETONATE<-63;
EVENT_DECOY_DETONATE<-64;
EVENT_DECOY_STARTED<-65;
EVENT_TAGRENADE_DETONATE<-66;
EVENT_INFERNO_STARTBURN<-67;
EVENT_INFERNO_EXPIRE<-68;
EVENT_INFERNO_EXTINGUISH<-69;
EVENT_DECOY_FIRING<-70;
EVENT_BULLET_IMPACT<-71;
EVENT_PLAYER_FOOTSTEP<-72;
EVENT_PLAYER_JUMP<-73;
EVENT_PLAYER_BLIND<-74;
EVENT_PLAYER_FALLDAMAGE<-75;
EVENT_DOOR_MOVING<-76;
EVENT_ROUND_FREEZE_END<-77;
EVENT_MB_INPUT_LOCK_SUCCESS<-78;
EVENT_MB_INPUT_LOCK_CANCEL<-79;
EVENT_NAV_BLOCKED<-80;
EVENT_NAV_GENERATE<-81;
EVENT_PLAYER_STATS_UPDATED<-82;
EVENT_ACHIEVEMENT_INFO_LOADED<-83;
EVENT_SPEC_TARGET_UPDATED<-84;
EVENT_SPEC_TARGET_UPDATED<-85;
EVENT_HLTV_CHANGED_MODE<-86;
EVENT_HLTV_CHASE<-87;
EVENT_HLTV_STATUS<-88;
EVENT_PLAYER_DISCONNECT<-89;
EVENT_PLAYER_SPAWN<-90;
EVENT_PLAYER_TEAM<-91;
EVENT_CS_GAME_DISCONNECTED<-92;
EVENT_CS_ROUND_FINAL_BEEP<-93;
EVENT_CS_ROUND_START_BEEP<-94;
EVENT_CS_WIN_PANEL_ROUND<-95;
EVENT_CS_WIN_PANEL_MATCH<-96;
EVENT_ROUND_ANNOUNCE_LAST_ROUND_HALF<-97;
EVENT_ROUND_ANNOUNCE_MATCH_POINT<-98;
EVENT_ROUND_ANNOUNCE_WARMUP<-99;
EVENT_ROUND_ANNOUNCE_MATCH_START<-100;
EVENT_ROUND_TIME_WARNING<-101;
EVENT_CS_MATCH_END_RESTART<-102;
EVENT_CS_PRE_RESTART<-103;
EVENT_SHOW_FREEZEPANEL<-104;
EVENT_HIDE_FREEZEPANEL<-105;
EVENT_FREEZECAM_STARTED<-106;
EVENT_PLAYER_AVENGED_TEAMMATE<-107;
EVENT_ACHIEVEMENT_EARNED<-108;
EVENT_ACHIEVEMENT_EARNED_LOCAL<-109;
EVENT_ITEM_FOUND<-110;
EVENT_ITEMS_GIFTED<-111;
EVENT_REPOST_XBOX_ACHIEVEMENTS<-112;
EVENT_MATCH_END_CONDITIONS<-113;
EVENT_ROUND_MVP<-114;
EVENT_PLAYER_DECAL<-115;
EVENT_TEAMPLAY_ROUND_START<-116;
EVENT_CLIENT_DISCONNECT<-117;
EVENT_GG_PLAYER_LEVELUP<-118;
EVENT_GGTR_PLAYER_LEVELUP<-119;
EVENT_ASSASSINATION_TARGET_KILLED<-120;
EVENT_GGPROGRESSIVE_PLAYER_LEVELUP<-121;
EVENT_GG_KILLED_ENEMY<-122;
EVENT_GG_FINAL_WEAPON_ACHIEVED<-123;
EVENT_GG_BONUS_GRENADE_ACHIEVED<-124;
EVENT_SWITCH_TEAM<-125;
EVENT_GG_LEADER<-126;
EVENT_GG_TEAM_LEADER<-127;
EVENT_GG_PLAYER_IMPENDING_UPGRADE<-128;
EVENT_WRITE_PROFILE_DATA<-129;
EVENT_TRIAL_TIME_EXPIRED<-130;
EVENT_UPDATE_MATCHMAKING_STATS<-131;
EVENT_PLAYER_RESET_VOTE<-132;
EVENT_ENABLE_RESTART_VOTING<-133;
EVENT_SFUIEVENT<-134;
EVENT_START_VOTE<-135;
EVENT_PLAYER_GIVEN_C4<-136;
EVENT_GG_RESET_ROUND_START_SOUNDS<-137;
EVENT_TR_PLAYER_FLASHBANGED<-138;
EVENT_TR_HIGHLIGHT_AMMO<-139;
EVENT_TR_MARK_COMPLETE<-140;
EVENT_TR_MARK_BEST_TIME<-141;
EVENT_TR_EXIT_HINT_TRIGGER<-142;
EVENT_BOT_TAKEOVER<-143;
EVENT_TR_SHOW_FINISH_MSGBOX<-144;
EVENT_TR_SHOW_EXIT_MSGBOX<-145;
EVENT_RESET_PLAYER_CONTROLS<-146;
EVENT_JOINTEAM_FAILED<-147;
EVENT_TEAMCHANGE_PENDING<-148;
EVENT_MATERIAL_DEFAULT_COMPLETE<-149;
EVENT_CS_PREV_NEXT_SPECTATOR<-150;
EVENT_CS_HANDLE_IME_EVENT<-151;
EVENT_NEXTLEVEL_CHANGED<-152;
EVENT_SEASONCOIN_LEVELUP<-153;
EVENT_TOURNAMENT_REWARD<-154;
EVENT_START_HALFTIME<-155;
EVENT_PLAYER_USE<-156;

events_ids_translate<-{};
events_ids_translate[EVENT_PLAYER_DEATH]<-["player_death",["userid","attacker","assister","weapon","headshot","penetrated"]];
events_ids_translate[EVENT_OTHER_DEATH]<-["other_death",["otherid","othertype","attacker","weapon","weapon_itemid","weapon_fauxitemid","weapon_originalowner_xuid","headshot","penetrated"]];
events_ids_translate[EVENT_ITEM_PURCHASE]<-["item_purchase",["userid","team","weapon"]];
events_ids_translate[EVENT_BOMB_BEGINPLANT]<-["bomb_beginplant",["userid","site"]];
events_ids_translate[EVENT_BOMB_ABORTPLANT]<-["bomb_abortplant",["userid","site"]];
events_ids_translate[EVENT_BOMB_PLANTED]<-["bomb_planted",["userid","site"]];
events_ids_translate[EVENT_BOMB_DEFUSED]<-["bomb_defused",["userid","site"]];
events_ids_translate[EVENT_BOMB_EXPLODED]<-["bomb_exploded",["userid","site"]];
events_ids_translate[EVENT_BOMB_DROPPED]<-["bomb_dropped",["userid","entindex"]];
events_ids_translate[EVENT_BOMB_PICKUP]<-["bomb_pickup",["userid"]];
events_ids_translate[EVENT_DEFUSER_DROPPED]<-["defuser_dropped",["entityid"]];
events_ids_translate[EVENT_DEFUSER_PICKUP]<-["defuser_pickup",["entityid","userid"]];
events_ids_translate[EVENT_ANNOUNCE_PHASE_END]<-["announce_phase_end",["none"]];
events_ids_translate[EVENT_CS_INTERMISSION]<-["cs_intermission",["none"]];
events_ids_translate[EVENT_BOMB_BEGINDEFUSE]<-["bomb_begindefuse",["userid","haskit"]];
events_ids_translate[EVENT_BOMB_ABORTDEFUSE]<-["bomb_abortdefuse",["userid"]];
events_ids_translate[EVENT_HOSTAGE_FOLLOWS]<-["hostage_follows",["userid","hostage"]];
events_ids_translate[EVENT_HOSTAGE_HURT]<-["hostage_hurt",["userid","hostage"]];
events_ids_translate[EVENT_HOSTAGE_KILLED]<-["hostage_killed",["userid","hostage"]];
events_ids_translate[EVENT_HOSTAGE_RESCUED]<-["hostage_rescued",["userid","hostage","site"]];
events_ids_translate[EVENT_HOSTAGE_STOPS_FOLLOWING]<-["hostage_stops_following",["userid","hostage"]];
events_ids_translate[EVENT_HOSTAGE_RESCUED_ALL]<-["hostage_rescued_all",["none"]];
events_ids_translate[EVENT_HOSTAGE_CALL_FOR_HELP]<-["hostage_call_for_help",["hostage"]];
events_ids_translate[EVENT_VIP_ESCAPED]<-["vip_escaped",["userid"]];
events_ids_translate[EVENT_VIP_KILLED]<-["vip_killed",["userid","attacker"]];
events_ids_translate[EVENT_PLAYER_RADIO]<-["player_radio",["userid","slot"]];
events_ids_translate[EVENT_BOMB_BEEP]<-["bomb_beep",["entindex"]];
events_ids_translate[EVENT_WEAPON_FIRE]<-["weapon_fire",["userid","weapon","silenced"]];
events_ids_translate[EVENT_WEAPON_FIRE_ON_EMPTY]<-["weapon_fire_on_empty",["userid","weapon"]];
events_ids_translate[EVENT_WEAPON_FIRE_ON_EMPTY]<-["weapon_fire_on_empty",["userid","weapon"]];
events_ids_translate[EVENT_WEAPON_OUTOFAMMO]<-["weapon_outofammo",["userid"]];
events_ids_translate[EVENT_WEAPON_RELOAD]<-["weapon_reload",["userid"]];
events_ids_translate[EVENT_WEAPON_ZOOM]<-["weapon_zoom",["userid"]];
events_ids_translate[EVENT_SILENCER_DETACH]<-["silencer_detach",["userid"]];
events_ids_translate[EVENT_INSPECT_WEAPON]<-["inspect_weapon",["userid"]];
events_ids_translate[EVENT_WEAPON_ZOOM_RIFLE]<-["weapon_zoom_rifle",["userid"]];
events_ids_translate[EVENT_PLAYER_SPAWNED]<-["player_spawned",["userid","inrestart"]];
events_ids_translate[EVENT_ITEM_PICKUP]<-["item_pickup",["userid","item","silent"]];
events_ids_translate[EVENT_AMMO_PICKUP]<-["ammo_pickup",["userid","item","index"]];
events_ids_translate[EVENT_ITEM_EQUIP]<-["item_equip",["userid","item","canzoom","hassilencer","issilenced","hastracers","weptype","none","none","none","none","none","none","none","none","none","none","none","none","ispainted"]];
events_ids_translate[EVENT_ITEM_REMOVE]<-["item_remove",[]];
events_ids_translate[EVENT_ENTER_BUYZONE]<-["enter_buyzone",["userid","canbuy"]];
events_ids_translate[EVENT_EXIT_BUYZONE]<-["exit_buyzone",["userid","canbuy"]];
events_ids_translate[EVENT_BUYTIME_ENDED]<-["buytime_ended",["none"]];
events_ids_translate[EVENT_ENTER_BOMBZONE]<-["enter_bombzone",["userid","hasbomb","isplanted"]];
events_ids_translate[EVENT_EXIT_BOMBZONE]<-["exit_bombzone",["userid","hasbomb","isplanted"]];
events_ids_translate[EVENT_ENTER_RESCUE_ZONE]<-["enter_rescue_zone",["userid"]];
events_ids_translate[EVENT_EXIT_RESCUE_ZONE]<-["exit_rescue_zone",["userid"]];
events_ids_translate[EVENT_SILENCER_OFF]<-["silencer_off",["userid"]];
events_ids_translate[EVENT_SILENCER_ON]<-["silencer_on",["userid"]];
events_ids_translate[EVENT_BUYMENU_OPEN]<-["buymenu_open",["userid"]];
events_ids_translate[EVENT_BUYMENU_CLOSE]<-["buymenu_close",["userid"]];
events_ids_translate[EVENT_BEGIN_NEW_MATCH]<-["begin_new_match",[]];
events_ids_translate[EVENT_ROUND_PRESTART]<-["round_prestart",["none"]];
events_ids_translate[EVENT_ROUND_POSTSTART]<-["round_poststart",["none"]];
events_ids_translate[EVENT_ROUND_START]<-["round_start",["timelimit","fraglimit","objective"]];
events_ids_translate[EVENT_ROUND_END]<-["round_end",["winner","reason","message"]];
events_ids_translate[EVENT_ROUND_OFFICIALLY_ENDED]<-["round_officially_ended",[]];
events_ids_translate[EVENT_GRENADE_BOUNCE]<-["grenade_bounce",["userid"]];
events_ids_translate[EVENT_HEGRENADE_DETONATE]<-["hegrenade_detonate",["userid","entityid","x","y","z"]];
events_ids_translate[EVENT_FLASHBANG_DETONATE]<-["flashbang_detonate",["userid","entityid","x","y","z"]];
events_ids_translate[EVENT_SMOKEGRENADE_DETONATE]<-["smokegrenade_detonate",["userid","entityid","x","y","z"]];
events_ids_translate[EVENT_SMOKEGRENADE_EXPIRED]<-["smokegrenade_expired",["userid","entityid","x","y","z"]];
events_ids_translate[EVENT_MOLOTOV_DETONATE]<-["molotov_detonate",["userid","x","y","z"]];
events_ids_translate[EVENT_DECOY_DETONATE]<-["decoy_detonate",["userid","entityid","x","y","z"]];
events_ids_translate[EVENT_DECOY_STARTED]<-["decoy_started",["userid","entityid","x","y","z"]];
events_ids_translate[EVENT_TAGRENADE_DETONATE]<-["tagrenade_detonate",["userid","entityid","x","y","z"]];
events_ids_translate[EVENT_INFERNO_STARTBURN]<-["inferno_startburn",["entityid","x","y","z"]];
events_ids_translate[EVENT_INFERNO_EXPIRE]<-["inferno_expire",["entityid","x","y","z"]];
events_ids_translate[EVENT_INFERNO_EXTINGUISH]<-["inferno_extinguish",["entityid","x","y","z"]];
events_ids_translate[EVENT_DECOY_FIRING]<-["decoy_firing",["userid","entityid","x","y","z"]];
events_ids_translate[EVENT_BULLET_IMPACT]<-["bullet_impact",["userid","x","y","z"]];
events_ids_translate[EVENT_PLAYER_FOOTSTEP]<-["player_footstep",["userid"]];
events_ids_translate[EVENT_PLAYER_JUMP]<-["player_jump",["userid"]];
events_ids_translate[EVENT_PLAYER_BLIND]<-["player_blind",["userid"]];
events_ids_translate[EVENT_PLAYER_FALLDAMAGE]<-["player_falldamage",["userid","damage"]];
events_ids_translate[EVENT_DOOR_MOVING]<-["door_moving",["entindex","userid"]];
events_ids_translate[EVENT_ROUND_FREEZE_END]<-["round_freeze_end",["none"]];
events_ids_translate[EVENT_MB_INPUT_LOCK_SUCCESS]<-["mb_input_lock_success",["none"]];
events_ids_translate[EVENT_MB_INPUT_LOCK_CANCEL]<-["mb_input_lock_cancel",["none"]];
events_ids_translate[EVENT_NAV_BLOCKED]<-["nav_blocked",["area","blocked"]];
events_ids_translate[EVENT_NAV_GENERATE]<-["nav_generate",["none"]];
events_ids_translate[EVENT_PLAYER_STATS_UPDATED]<-["player_stats_updated",["forceupload"]];
events_ids_translate[EVENT_ACHIEVEMENT_INFO_LOADED]<-["achievement_info_loaded",["none"]];
events_ids_translate[EVENT_SPEC_TARGET_UPDATED]<-["spec_target_updated",["userid"]];
events_ids_translate[EVENT_SPEC_TARGET_UPDATED]<-["spec_target_updated",["userid"]];
events_ids_translate[EVENT_HLTV_CHANGED_MODE]<-["hltv_changed_mode",["oldmode","newmode","obs_target"]];
events_ids_translate[EVENT_HLTV_CHASE]<-["hltv_chase",[]];
events_ids_translate[EVENT_HLTV_STATUS]<-["hltv_status",[]];
events_ids_translate[EVENT_PLAYER_DISCONNECT]<-["player_disconnect",[]];
events_ids_translate[EVENT_PLAYER_SPAWN]<-["player_spawn",[]];
events_ids_translate[EVENT_PLAYER_TEAM]<-["player_team",[]];
events_ids_translate[EVENT_CS_GAME_DISCONNECTED]<-["cs_game_disconnected",["none"]];
events_ids_translate[EVENT_CS_ROUND_FINAL_BEEP]<-["cs_round_final_beep",[]];
events_ids_translate[EVENT_CS_ROUND_START_BEEP]<-["cs_round_start_beep",[]];
events_ids_translate[EVENT_CS_WIN_PANEL_ROUND]<-["cs_win_panel_round",["show_timer_defend","show_timer_attack","timer_time","final_event","funfact_token","funfact_player","funfact_data1","funfact_data2","funfact_data3"]];
events_ids_translate[EVENT_CS_WIN_PANEL_MATCH]<-["cs_win_panel_match",["none"]];
events_ids_translate[EVENT_ROUND_ANNOUNCE_LAST_ROUND_HALF]<-["round_announce_last_round_half",[]];
events_ids_translate[EVENT_ROUND_ANNOUNCE_MATCH_POINT]<-["round_announce_match_point",[]];
events_ids_translate[EVENT_ROUND_ANNOUNCE_WARMUP]<-["round_announce_warmup",[]];
events_ids_translate[EVENT_ROUND_ANNOUNCE_MATCH_START]<-["round_announce_match_start",[]];
events_ids_translate[EVENT_ROUND_TIME_WARNING]<-["round_time_warning",[]];
events_ids_translate[EVENT_CS_MATCH_END_RESTART]<-["cs_match_end_restart",["none"]];
events_ids_translate[EVENT_CS_PRE_RESTART]<-["cs_pre_restart",["none"]];
events_ids_translate[EVENT_SHOW_FREEZEPANEL]<-["show_freezepanel",["victim","killer","hits_taken","damage_taken","hits_given","damage_given"]];
events_ids_translate[EVENT_HIDE_FREEZEPANEL]<-["hide_freezepanel",["none"]];
events_ids_translate[EVENT_FREEZECAM_STARTED]<-["freezecam_started",["none"]];
events_ids_translate[EVENT_PLAYER_AVENGED_TEAMMATE]<-["player_avenged_teammate",["avenger_id","avenged_player_id"]];
events_ids_translate[EVENT_ACHIEVEMENT_EARNED]<-["achievement_earned",["player","achievement"]];
events_ids_translate[EVENT_ACHIEVEMENT_EARNED_LOCAL]<-["achievement_earned_local",["achievement","splitscreenplayer"]];
events_ids_translate[EVENT_ITEM_FOUND]<-["item_found",["player","quality","method","itemdef","itemid"]];
events_ids_translate[EVENT_ITEMS_GIFTED]<-["items_gifted",["player","itemdef","numgifts","giftidx","accountid"]];
events_ids_translate[EVENT_REPOST_XBOX_ACHIEVEMENTS]<-["repost_xbox_achievements",["splitscreenplayer"]];
events_ids_translate[EVENT_MATCH_END_CONDITIONS]<-["match_end_conditions",["frags","max_rounds","win_rounds","time"]];
events_ids_translate[EVENT_ROUND_MVP]<-["round_mvp",["userid","reason"]];
events_ids_translate[EVENT_PLAYER_DECAL]<-["player_decal",["userid"]];
events_ids_translate[EVENT_TEAMPLAY_ROUND_START]<-["teamplay_round_start",["full_reset"]];
events_ids_translate[EVENT_CLIENT_DISCONNECT]<-["client_disconnect",["none"]];
events_ids_translate[EVENT_GG_PLAYER_LEVELUP]<-["gg_player_levelup",["userid","weaponrank","weaponname"]];
events_ids_translate[EVENT_GGTR_PLAYER_LEVELUP]<-["ggtr_player_levelup",["userid","weaponrank","weaponname"]];
events_ids_translate[EVENT_ASSASSINATION_TARGET_KILLED]<-["assassination_target_killed",["target","killer"]];
events_ids_translate[EVENT_GGPROGRESSIVE_PLAYER_LEVELUP]<-["ggprogressive_player_levelup",["userid","weaponrank","weaponname"]];
events_ids_translate[EVENT_GG_KILLED_ENEMY]<-["gg_killed_enemy",["victimid","attackerid","dominated","revenge","bonus"]];
events_ids_translate[EVENT_GG_FINAL_WEAPON_ACHIEVED]<-["gg_final_weapon_achieved",["playerid"]];
events_ids_translate[EVENT_GG_BONUS_GRENADE_ACHIEVED]<-["gg_bonus_grenade_achieved",["userid"]];
events_ids_translate[EVENT_SWITCH_TEAM]<-["switch_team",["numPlayers","numSpectators","avg_rank","numTSlotsFree","numCTSlotsFree"]];
events_ids_translate[EVENT_GG_LEADER]<-["gg_leader",["playerid"]];
events_ids_translate[EVENT_GG_TEAM_LEADER]<-["gg_team_leader",["playerid"]];
events_ids_translate[EVENT_GG_PLAYER_IMPENDING_UPGRADE]<-["gg_player_impending_upgrade",["userid"]];
events_ids_translate[EVENT_WRITE_PROFILE_DATA]<-["write_profile_data",["none"]];
events_ids_translate[EVENT_TRIAL_TIME_EXPIRED]<-["trial_time_expired",["slot"]];
events_ids_translate[EVENT_UPDATE_MATCHMAKING_STATS]<-["update_matchmaking_stats",["none"]];
events_ids_translate[EVENT_PLAYER_RESET_VOTE]<-["player_reset_vote",["userid","vote"]];
events_ids_translate[EVENT_ENABLE_RESTART_VOTING]<-["enable_restart_voting",["enable"]];
events_ids_translate[EVENT_SFUIEVENT]<-["sfuievent",["action","data","slot"]];
events_ids_translate[EVENT_START_VOTE]<-["start_vote",["userid","type","vote_parameter"]];
events_ids_translate[EVENT_PLAYER_GIVEN_C4]<-["player_given_c4",["userid"]];
events_ids_translate[EVENT_GG_RESET_ROUND_START_SOUNDS]<-["gg_reset_round_start_sounds",["userid"]];
events_ids_translate[EVENT_TR_PLAYER_FLASHBANGED]<-["tr_player_flashbanged",["userid"]];
events_ids_translate[EVENT_TR_HIGHLIGHT_AMMO]<-["tr_highlight_ammo",["userid"]];
events_ids_translate[EVENT_TR_MARK_COMPLETE]<-["tr_mark_complete",["complete"]];
events_ids_translate[EVENT_TR_MARK_BEST_TIME]<-["tr_mark_best_time",["time"]];
events_ids_translate[EVENT_TR_EXIT_HINT_TRIGGER]<-["tr_exit_hint_trigger",["none"]];
events_ids_translate[EVENT_BOT_TAKEOVER]<-["bot_takeover",["userid","botid","index"]];
events_ids_translate[EVENT_TR_SHOW_FINISH_MSGBOX]<-["tr_show_finish_msgbox",["userid"]];
events_ids_translate[EVENT_TR_SHOW_EXIT_MSGBOX]<-["tr_show_exit_msgbox",["userid"]];
events_ids_translate[EVENT_RESET_PLAYER_CONTROLS]<-["reset_player_controls",["none"]];
events_ids_translate[EVENT_JOINTEAM_FAILED]<-["jointeam_failed",["userid","reason"]];
events_ids_translate[EVENT_TEAMCHANGE_PENDING]<-["teamchange_pending",["userid","toteam"]];
events_ids_translate[EVENT_MATERIAL_DEFAULT_COMPLETE]<-["material_default_complete",["none"]];
events_ids_translate[EVENT_CS_PREV_NEXT_SPECTATOR]<-["cs_prev_next_spectator",["next"]];
events_ids_translate[EVENT_CS_HANDLE_IME_EVENT]<-["cs_handle_ime_event",["local","eventtype","eventdata"]];
events_ids_translate[EVENT_NEXTLEVEL_CHANGED]<-["nextlevel_changed",["nextlevel"]];
events_ids_translate[EVENT_SEASONCOIN_LEVELUP]<-["seasoncoin_levelup",["player","category","rank"]];
events_ids_translate[EVENT_TOURNAMENT_REWARD]<-["tournament_reward",["defindex","totalrewards","accountid"]];
events_ids_translate[EVENT_START_HALFTIME]<-["start_halftime",[]];
events_ids_translate[EVENT_PLAYER_USE]<-["player_use",["userid","entity"]];


if (!("gameevents_proxy" in getroottable())||!(::gameevents_proxy.IsValid())){
::gameevents_proxy<-Entities.CreateByClassname("info_game_event_proxy");
::gameevents_proxy.__KeyValueFromString("event_name","player_use");
::gameevents_proxy.__KeyValueFromInt("range",0);
}

::GameEventsCapturedPlayer<-null

Think<-function(){
	player<-null;
	while((player = Entities.FindByClassname(player,"*")) != null){
		if (player.GetClassname()=="player"){
			if (player.ValidateScriptScope()){
				local script_scope=player.GetScriptScope()
				if (!("userid" in script_scope)&&!("attemptogenerateuserid" in script_scope)){
					script_scope.attemptogenerateuserid<-true;
					::GameEventsCapturedPlayer=player;
					EntFireByHandle(::gameevents_proxy,"GenerateGameEvent","",0.0,player,null);
					
				}
			}
			return;
		}
	}
}

//item_equip weptype enums
::WEAPONTYPE_UNKNOWN<- -1
::WEAPONTYPE_KNIFE<-0
::WEAPONTYPE_PISTOL<-1
::WEAPONTYPE_SUBMACHINEGUN<-2
::WEAPONTYPE_RIFLE<-3
::WEAPONTYPE_SHOTGUN<-4
::WEAPONTYPE_SNIPER_RIFLE<-5
::WEAPONTYPE_MACHINEGUN<-6
::WEAPONTYPE_C4<-7
::WEAPONTYPE_GRENADE<-8


FireEventFormat<-function(id,event_data){
	local name="OnGameEvent_"+events_ids_translate[id][0]
	printl(name);
	local args={}
	local vector=Vector(0,0,0);
	local writedx=false
	local writedy=false
	local writedz=false
	local offset=0
	local order=events_ids_translate[id][1]

	foreach (key,arg in event_data){
		local shouldwrite=true
		if (key=="userid"||key=="attacker"||key=="assister"||key=="victimid"||key=="attackerid"||key=="playerid"||key=="botid"){
			
			arg=GetPlayerForUserID(arg);
		}
		if (key=="entindex"||key=="entindex_killed"||key=="entindex_attacker"||key=="entindex_inflictor"||key=="site"||key=="hostage"||key=="index"||key=="victim"||key=="killer"||key=="player"||key=="entity"){
			arg=GetEntityForIndex(arg);
		}
		if (key=="x"||key=="pos_x"||key=="start_x"||key=="ang_x"){
			vector.x=arg
			writedx=true
			shouldwrite=false
		}
		if (key=="y"||key=="pos_y"||key=="start_y"||key=="ang_y"){
			vector.y=arg
			writedy=true
			shouldwrite=false
		}

		if (key=="z"||key=="pos_z"||key=="start_z"||key=="ang_z"){
			vector.z=arg
			writedz=true
			shouldwrite=false
		}

		if (writedx&&writedy&&writedz){
			foreach (index,k in order){
				if (k=="vector"){
					args[index+1]<-vector;
					writedx=false;
					writedy=false;
					writedz=false;
					break
				}
			}
		}

		if (shouldwrite){
			foreach (index,k in order){
				if (k==key){
				args[index+1]<-arg;
				break;
				}
			}
		}
	}

	switch (args.len()){
		case 0:getroottable()[name]();break;
		case 1:getroottable()[name](args[1]);break;
		case 2:getroottable()[name](args[1],args[2]);break;
		case 3:getroottable()[name](args[1],args[2],args[3]);break;
		case 4:getroottable()[name](args[1],args[2],args[3],args[4]);break;
		case 5:getroottable()[name](args[1],args[2],args[3],args[4],args[5]);break;
		case 6:getroottable()[name](args[1],args[2],args[3],args[4],args[5],args[6]);break;
		case 7:getroottable()[name](args[1],args[2],args[3],args[4],args[5],args[6],args[7]);break;
		case 8:getroottable()[name](args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8]);break;
		case 9:getroottable()[name](args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8],args[9]);break;
		case 10:getroottable()[name](args[1],args[3],args[4],args[5],args[6],args[7],args[8],args[9],args[10]);break;
	}
}

//Used for assign user ids 
userid_assigner<-function(params){
	if (::GameEventsCapturedPlayer!=null&&params.entity==0){
		local script_scope=::GameEventsCapturedPlayer.GetScriptScope();
		script_scope.userid<-params.userid;
		::GameEventsCapturedPlayer=null;
		return true
	}
}

OnEventFired<- function(EVENT_ID){
	if (EVENT_ID==EVENT_PLAYER_USE){if (userid_assigner(this.event_data)){return}}
	if ("event_data" in this){
		if ("OnGameEvent_"+events_ids_translate[EVENT_ID][0] in getroottable()){
			FireEventFormat(EVENT_ID,this.event_data)
		}
		if ("OnGameEvent_"+events_ids_translate[EVENT_ID][0]+"_raw" in getroottable()){
			getroottable()["OnGameEvent_"+events_ids_translate[EVENT_ID][0]+"_raw"](this.event_data)
		}
	}
}

::GetPlayerForUserID<-function(userID){						 //can not get bots
	player <- null;
	while((player = Entities.FindByClassname(player,"*")) != null){
		if (player.GetClassname()=="player"){
			if (player.ValidateScriptScope()){
				local script_scope=player.GetScriptScope();
				if(Util_var_exists(userID) && Util_valid_scriptscope(script_scope)){
					if (script_scope.userid==userID){return player}
				}
			}   
		}
	}
	return userID;
}

::GetEntityForIndex<-function(entindex){
	ent <- null;
	while((ent= Entities.FindByClassname(ent,"*")) != null){
		if (ent.entindex()==entindex){return ent}
	}
	return null
}


::Util_var_exists<-function(var){
    return (var != null) && (("" + var).len() > 0);
}
::Util_valid_scriptscope<-function(table){
    return table.len() > 4;
}