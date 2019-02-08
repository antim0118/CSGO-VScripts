function StringContains(str, part){
	return split(str, part).len() != 1;
}




::BHOP_maps<-{};
BHOP_maps["bhop_snowfall_2"]<-[Vector(376.64, 14192.1, -552), Vector(-46.25, 14551, -400), Vector(-40, -10556.98, -552), Vector(406, -10826.77, -400)];

::BHOP_map<-null;
function SetMap(){
	local mapname = GetMapName();
	if(StringContains(mapname, "workshop/"))
		mapname = split(mapname, "/")[2];
		
	try{
		BHOP_map = BHOP_maps[mapname];
		ScriptPrintMessageChatAll(" \x3 [antim]\x1 \x4 BHOP points for "+mapname+" loaded!");
	}catch(arr){
		ScriptPrintMessageChatAll(" \x3 [antim]\x1 "+mapname+"\x2 does not exist\x1 in bhop database.");
	}
}
SetMap();
StartBHOP();