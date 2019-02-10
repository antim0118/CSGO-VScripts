::BHOP_maps<-{};
//add maps after this line.
BHOP_maps["bhop_eazy_sand"]<-[Vector(-463.969,-463.952,64.0313), Vector(-223.97,-240.003,214.031), Vector(-1103.97,-463.969,64.0313), Vector(-752.031,-112.031,254.031)];
BHOP_maps["bhop_hard_sport"]<-[Vector(-208.999,96.0833,-240.969), Vector(206.993,-160.134,-90.9688), Vector(7400.13,-784,-31.9688), Vector(7144.06,-1360,118.031)];
BHOP_maps["bhop_passeggiata"]<-[Vector(987.134,-1356.97,88.0312), Vector(1240.47,-1107.21,238.031), Vector(884.708,-1408.02,113.427), Vector(789.39,-1339.38,276.207)];
BHOP_maps["bhop_snowfall_2"]<-[Vector(376.64, 14192.1, -552), Vector(-46.25, 14551, -400), Vector(-40, -10556.98, -552), Vector(406, -10826.77, -400)];



function StringContains(str, part){
	return split(str, part).len() != 1;
}


::BHOP_map<-null;
function SetMap(){
	local mapname = MapName();
		
	try{
		BHOP_map = BHOP_maps[mapname];
		ScriptPrintMessageChatAll(" \x3 [antim]\x1 \x4 BHOP points for "+mapname+" loaded!");
	}catch(arr){
		ScriptPrintMessageChatAll(" \x3 [antim]\x1 "+mapname+"\x2 does not exist\x1 in bhop database.");
		ScriptPrintMessageChatAll(" \x3 [antim]\x1 Use \"bhop_setup\" in console to setup checkpoints on map");
	}
}
SetMap();
StartBHOP();