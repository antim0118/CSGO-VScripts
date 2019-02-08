::bhop_start<-function(){
	GetPlayer(1).SetOrigin(CenterOfVectors(BHOP_map[0], BHOP_map[1]));
}
::bhop_end<-function(){
	local player = GetPlayer(1);
	if(DotBetweenVectors(Vector(player.GetOrigin().x,player.GetOrigin().y,player.GetOrigin().z+60), BHOP_map[0], BHOP_map[1]))
		GetPlayer(1).SetOrigin(CenterOfVectors(BHOP_map[2], BHOP_map[3]));
	else
		ScriptPrintMessageChatAll(" \x2 You should stay on start to tp to end!!!");
	
}

function SetupCommands(){
	if(BHOP_map == null)
		return;
	ScriptPrintMessageChatAll("Commands for console:");
	ScriptPrintMessageChatAll("bhop_start - tp to start");
	ScriptPrintMessageChatAll("bhop_end - tp to end");
	
	SendToConsole("alias bhop_start \"script bhop_start()\"");
	SendToConsole("alias bhop_end \"script bhop_end()\"");
	SendToConsole("mp_ignore_round_win_conditions 1");
}
SetupCommands();
