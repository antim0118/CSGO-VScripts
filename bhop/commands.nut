//map creating
::bhop_setup<-function(point){
	if(point == null){
		ScriptPrintMessageChatAll(" \x4 SETUP\x1 commands for console:");
		ScriptPrintMessageChatAll("start1 - 1st point of start");
		ScriptPrintMessageChatAll("start2 - 2nd point of start");
		ScriptPrintMessageChatAll("end1 - 1st point of end");
		ScriptPrintMessageChatAll("end2 - 2nd point of end");
		ScriptPrintMessageChatAll(" \x4 [point = corner]");
		
		SendToConsole("alias start1 \"script bhop_setup(0)\"");
		SendToConsole("alias start2 \"script bhop_setup(1)\"");
		SendToConsole("alias end1 \"script bhop_setup(2)\"");
		SendToConsole("alias end2 \"script bhop_setup(3)\"");
	}else{
		local player = GetPlayer(1);
		local origin = player.GetOrigin();
		
		if(point == 1 || point == 3)
			origin.z += 150;
		
		if(BHOP_map == null)
			BHOP_map = [Vector(0,0,0),Vector(0,0,0),Vector(0,0,0),Vector(0,0,0)];
		BHOP_map[point] = origin;
		if(!VectorIsEmpty(BHOP_map[0]) && !VectorIsEmpty(BHOP_map[1]) && !VectorIsEmpty(BHOP_map[2]) && !VectorIsEmpty(BHOP_map[3])){
			local mapname = GetMapName();
			if(StringContains(mapname, "workshop/"))
				mapname = split(mapname, "/")[2];
			local saveline = "BHOP_maps[\""+mapname+"\"]<-["+VectorToString(BHOP_map[0])+", "+VectorToString(BHOP_map[1])+", "+VectorToString(BHOP_map[2])+", "+VectorToString(BHOP_map[3])+"];";
			
			ScriptPrintMessageChatAll("");
			ScriptPrintMessageChatAll(" \x4 MAP CREATED!!!");
			ScriptPrintMessageChatAll("To save it, you need to add this line:");
			ScriptPrintMessageChatAll(saveline);
			ScriptPrintMessageChatAll("to maps.nut file");
			ScriptPrintMessageChatAll("%CSGO FOLDER%/csgo/scripts/vscripts/bhop/maps.nut");
			
			printl("");
			printl(" \x4 MAP CREATED!!!");
			printl("To save it, you need add this line:");
			printl(saveline);
			printl("to maps.nut file");
			printl("%CSGO FOLDER%/csgo/scripts/vscripts/bhop/maps.nut");
			printl("");
		}
	}
}



//bhop_start / bhop_end commands
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
	SendToConsole("alias bhop_setup \"script bhop_setup(null)\"");
	SendToConsole("mp_ignore_round_win_conditions 1");

	if(BHOP_map == null)
		return;
	ScriptPrintMessageChatAll("Commands for console:");
	ScriptPrintMessageChatAll("bhop_start - tp to start");
	ScriptPrintMessageChatAll("bhop_end - tp to end");
	ScriptPrintMessageChatAll("bhop_setup - set checkpoints");
	
	SendToConsole("alias bhop_start \"script bhop_start()\"");
	SendToConsole("alias bhop_end \"script bhop_end()\"");
}