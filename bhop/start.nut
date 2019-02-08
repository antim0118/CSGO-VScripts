//v.1.0
//created by antim.

::GetDistance<-function(vec1, vec2)
{
	local _x = abs(vec1.x - vec2.x);
	local _y = abs(vec1.y - vec2.y);
	local _z = abs(vec1.z - vec2.z);
	return sqrt(pow(_x, 2) + pow(_y, 2) + pow(_z, 2));
}

::SetupTimer<-function(TimerName, FunctionName, RefireTime)
{
	if (!Entities.FindByName(null, TimerName))
	{
		local v_TimerName = null;
		v_TimerName = Entities.CreateByClassname("logic_timer");
		EntFireByHandle(v_TimerName, "addoutput", "targetname " + TimerName, 0.0, null, null);
		EntFire(TimerName, "addoutput", "ontimer " + TimerName + ",RunScriptCode," + FunctionName + "()");
	}

	EntFire(TimerName, "enable");
	EntFire(TimerName, "addoutput", "refiretime " + RefireTime);
	EntFire(TimerName, "addoutput", "UseRandomTime 0");
}

::GetPlayer<-function(val)
{
	local pl = Entities.First();
	while(pl != null)
	{
		if(pl.GetClassname() == "player")
		{
			if(pl.entindex() == val)
				return pl;
		}
		
		pl = Entities.Next(pl);
	}
}

function ColorText(text, r, g, b)
{
	local _r = NumToHex(r);
	local _g = NumToHex(g);
	local _b = NumToHex(b);
	return "<font color='#" + _r + _g + _b + "'>" + text + "</font>"
}

function NumToHex(num)
{
	//an example of AI
	if(num == 0) return "00"; if(num == 1) return "01"; if(num == 2) return "02"; if(num == 3) return "03"; if(num == 4) return "04"; if(num == 5) return "05"; if(num == 6) return "06"; if(num == 7) return "07"; if(num == 8) return "08"; if(num == 9) return "09"; if(num == 10) return "0A"; if(num == 11) return "0B"; if(num == 12) return "0C"; if(num == 13) return "0D"; if(num == 14) return "0E"; if(num == 15) return "0F"; if(num == 16) return "10"; if(num == 17) return "11"; if(num == 18) return "12"; if(num == 19) return "13"; if(num == 20) return "14"; if(num == 21) return "15"; if(num == 22) return "16"; if(num == 23) return "17"; if(num == 24) return "18"; if(num == 25) return "19"; if(num == 26) return "1A"; if(num == 27) return "1B"; if(num == 28) return "1C"; if(num == 29) return "1D"; if(num == 30) return "1E"; if(num == 31) return "1F"; if(num == 32) return "20"; if(num == 33) return "21"; if(num == 34) return "22"; if(num == 35) return "23"; if(num == 36) return "24"; if(num == 37) return "25"; if(num == 38) return "26"; if(num == 39) return "27"; if(num == 40) return "28"; if(num == 41) return "29"; if(num == 42) return "2A"; if(num == 43) return "2B"; if(num == 44) return "2C"; if(num == 45) return "2D"; if(num == 46) return "2E"; if(num == 47) return "2F"; if(num == 48) return "30"; if(num == 49) return "31"; if(num == 50) return "32"; if(num == 51) return "33"; if(num == 52) return "34"; if(num == 53) return "35"; if(num == 54) return "36"; if(num == 55) return "37"; if(num == 56) return "38"; if(num == 57) return "39"; if(num == 58) return "3A"; if(num == 59) return "3B"; if(num == 60) return "3C"; if(num == 61) return "3D"; if(num == 62) return "3E"; if(num == 63) return "3F"; if(num == 64) return "40"; if(num == 65) return "41"; if(num == 66) return "42"; if(num == 67) return "43"; if(num == 68) return "44"; if(num == 69) return "45"; if(num == 70) return "46"; if(num == 71) return "47"; if(num == 72) return "48"; if(num == 73) return "49"; if(num == 74) return "4A"; if(num == 75) return "4B"; if(num == 76) return "4C"; if(num == 77) return "4D"; if(num == 78) return "4E"; if(num == 79) return "4F"; if(num == 80) return "50"; if(num == 81) return "51"; if(num == 82) return "52"; if(num == 83) return "53"; if(num == 84) return "54"; if(num == 85) return "55"; if(num == 86) return "56"; if(num == 87) return "57"; if(num == 88) return "58"; if(num == 89) return "59"; if(num == 90) return "5A"; if(num == 91) return "5B"; if(num == 92) return "5C"; if(num == 93) return "5D"; if(num == 94) return "5E"; if(num == 95) return "5F"; if(num == 96) return "60"; if(num == 97) return "61"; if(num == 98) return "62"; if(num == 99) return "63"; if(num == 100) return "64"; if(num == 101) return "65"; if(num == 102) return "66"; if(num == 103) return "67"; if(num == 104) return "68"; if(num == 105) return "69"; if(num == 106) return "6A"; if(num == 107) return "6B"; if(num == 108) return "6C"; if(num == 109) return "6D"; if(num == 110) return "6E"; if(num == 111) return "6F"; if(num == 112) return "70"; if(num == 113) return "71"; if(num == 114) return "72"; if(num == 115) return "73"; if(num == 116) return "74"; if(num == 117) return "75"; if(num == 118) return "76"; if(num == 119) return "77"; if(num == 120) return "78"; if(num == 121) return "79"; if(num == 122) return "7A"; if(num == 123) return "7B"; if(num == 124) return "7C"; if(num == 125) return "7D"; if(num == 126) return "7E"; if(num == 127) return "7F"; if(num == 128) return "80"; if(num == 129) return "81"; if(num == 130) return "82"; if(num == 131) return "83"; if(num == 132) return "84"; if(num == 133) return "85"; if(num == 134) return "86"; if(num == 135) return "87"; if(num == 136) return "88"; if(num == 137) return "89"; if(num == 138) return "8A"; if(num == 139) return "8B"; if(num == 140) return "8C"; if(num == 141) return "8D"; if(num == 142) return "8E"; if(num == 143) return "8F"; if(num == 144) return "90"; if(num == 145) return "91"; if(num == 146) return "92"; if(num == 147) return "93"; if(num == 148) return "94"; if(num == 149) return "95"; if(num == 150) return "96"; if(num == 151) return "97"; if(num == 152) return "98"; if(num == 153) return "99"; if(num == 154) return "9A"; if(num == 155) return "9B"; if(num == 156) return "9C"; if(num == 157) return "9D"; if(num == 158) return "9E"; if(num == 159) return "9F"; if(num == 160) return "A0"; if(num == 161) return "A1"; if(num == 162) return "A2"; if(num == 163) return "A3"; if(num == 164) return "A4"; if(num == 165) return "A5"; if(num == 166) return "A6"; if(num == 167) return "A7"; if(num == 168) return "A8"; if(num == 169) return "A9"; if(num == 170) return "AA"; if(num == 171) return "AB"; if(num == 172) return "AC"; if(num == 173) return "AD"; if(num == 174) return "AE"; if(num == 175) return "AF"; if(num == 176) return "B0"; if(num == 177) return "B1"; if(num == 178) return "B2"; if(num == 179) return "B3"; if(num == 180) return "B4"; if(num == 181) return "B5"; if(num == 182) return "B6"; if(num == 183) return "B7"; if(num == 184) return "B8"; if(num == 185) return "B9"; if(num == 186) return "BA"; if(num == 187) return "BB"; if(num == 188) return "BC"; if(num == 189) return "BD"; if(num == 190) return "BE"; if(num == 191) return "BF"; if(num == 192) return "C0"; if(num == 193) return "C1"; if(num == 194) return "C2"; if(num == 195) return "C3"; if(num == 196) return "C4"; if(num == 197) return "C5"; if(num == 198) return "C6"; if(num == 199) return "C7"; if(num == 200) return "C8"; if(num == 201) return "C9"; if(num == 202) return "CA"; if(num == 203) return "CB"; if(num == 204) return "CC"; if(num == 205) return "CD"; if(num == 206) return "CE"; if(num == 207) return "CF"; if(num == 208) return "D0"; if(num == 209) return "D1"; if(num == 210) return "D2"; if(num == 211) return "D3"; if(num == 212) return "D4"; if(num == 213) return "D5"; if(num == 214) return "D6"; if(num == 215) return "D7"; if(num == 216) return "D8"; if(num == 217) return "D9"; if(num == 218) return "DA"; if(num == 219) return "DB"; if(num == 220) return "DC"; if(num == 221) return "DD"; if(num == 222) return "DE"; if(num == 223) return "DF"; if(num == 224) return "E0"; if(num == 225) return "E1"; if(num == 226) return "E2"; if(num == 227) return "E3"; if(num == 228) return "E4"; if(num == 229) return "E5"; if(num == 230) return "E6"; if(num == 231) return "E7"; if(num == 232) return "E8"; if(num == 233) return "E9"; if(num == 234) return "EA"; if(num == 235) return "EB"; if(num == 236) return "EC"; if(num == 237) return "ED"; if(num == 238) return "EE"; if(num == 239) return "EF"; if(num == 240) return "F0"; if(num == 241) return "F1"; if(num == 242) return "F2"; if(num == 243) return "F3"; if(num == 244) return "F4"; if(num == 245) return "F5"; if(num == 246) return "F6"; if(num == 247) return "F7"; if(num == 248) return "F8"; if(num == 249) return "F9"; if(num == 250) return "FA"; if(num == 251) return "FB"; if(num == 252) return "FC"; if(num == 253) return "FD"; if(num == 254) return "FE"; if(num == 255) return "FF";
}

function DrawLine(start, end, red, green, blue, time){
	DebugDrawLine(start, end, red, green, blue, false, time);
	
	local v1 = Vector(start.x+1, start.y, start.z);
	local v2 = Vector(start.x, start.y+1, start.z);
	local v3 = Vector(end.x+1, end.y, end.z);
	local v4 = Vector(end.x, end.y+1, end.z);
	DebugDrawLine(v1, v3, red, green, blue, false, time);
	DebugDrawLine(v1, v4, red, green, blue, false, time);
	DebugDrawLine(v2, v3, red, green, blue, false, time);
	DebugDrawLine(v2, v4, red, green, blue, false, time);
}

function DrawBox(start, end, red, green, blue, time){
	local p1 = Vector(end.x, start.y, end.z);;
	local p2 = Vector(end.x, start.y, start.z);
	local p3 = Vector(start.x, start.y, end.z);
	local p4 = Vector(start.x, end.y, start.z);
	local p5 = Vector(end.x, end.y, start.z);
	local p6 = Vector(start.x, end.y, end.z);

	DrawLine(start, p2, red, green, blue, time);
	DrawLine(start, p3, red, green, blue, time);
	DrawLine(start, p4, red, green, blue, time);
	
	DrawLine(end, p1, red, green, blue, time);
	DrawLine(end, p5, red, green, blue, time);
	DrawLine(end, p6, red, green, blue, time);
	
	DrawLine(p2, p5, red, green, blue, time);
	DrawLine(p2, p1, red, green, blue, time);
	DrawLine(p3, p1, red, green, blue, time);
	DrawLine(p3, p6, red, green, blue, time);
	DrawLine(p4, p6, red, green, blue, time);
	DrawLine(p4, p5, red, green, blue, time);
}

function CenterOfVectors(start, end){
	local _x = (start.x + end.x) / 2;
	local _y = (start.y + end.y) / 2;
	local _z = (start.z + end.z) / 2;
	return Vector(_x,_y,_z);
}

function DotBetweenVectors(dot, vec1, vec2){
	local ret = true;
	if(vec1.x > vec2.x){
		if(dot.x  > vec1.x || dot.x < vec2.x) {ret = false;}
	}else{
		if(dot.x  < vec1.x || dot.x > vec2.x) {ret = false;}
	}
	if(vec1.y > vec2.y){
		if(dot.y  > vec1.y || dot.y < vec2.y) {ret = false;}
	}else{
		if(dot.y  < vec1.y || dot.y > vec2.y) {ret = false;}
	}
	if(vec1.z > vec2.z){
		if(dot.z  > vec1.z || dot.z < vec2.z) {ret = false;}
	}else{
		if(dot.z  < vec1.z || dot.z > vec2.z) {ret = false;}
	}
	return ret;
}

function IntToTime(int){
	local m = int.tointeger() / 60;
	local s = int.tointeger() % 60;
	
	local tm = m.tostring();
	if(m < 10)
		tm = "0" + m.tostring();
	local ts = s.tostring();
	if(s < 10)
		ts = "0" + s.tostring();
	return tm+":"+ts;
}

SendToConsole("script_execute bhop/maps");
SendToConsole("script_execute bhop/commands");

enum BStats
{
	Stopped,
	Running,
	Finished
}

::BHOP_State <- BStats.Stopped;
::BHOP_Time <- 0.0;
::BHOP_BestTime <- 13370.0;
::BHOP_LastTime <- 0.0;
::BHOP_TempPos <- Vector(0,0,0);
::BHOPEventTimer<-function(){
	local player = GetPlayer(1);
	
	//update state
	local instart = DotBetweenVectors(Vector(player.GetOrigin().x,player.GetOrigin().y,player.GetOrigin().z+60), BHOP_map[0], BHOP_map[1]);
	local inend = DotBetweenVectors(Vector(player.GetOrigin().x,player.GetOrigin().y,player.GetOrigin().z+60), BHOP_map[2], BHOP_map[3]);
	if(instart){
		BHOP_State = BStats.Stopped;
		BHOP_Time = 0.0;
		BHOP_LastTime = Time();
	}else if (inend){
		if(BHOP_State == BStats.Running){
			if(BHOP_Time < BHOP_BestTime){
				BHOP_BestTime = BHOP_Time;
				ScriptPrintMessageChatAll(" \x3 [antim]\x1 NEW BEST RECORD!");
				SendToConsole("playvol training/highscore.wav 0.5");
			}
			BHOP_State = BStats.Finished;
			ScriptPrintMessageChatAll(" \x3 [antim]\x1 You finished this map with ["+IntToTime(BHOP_Time)+"]!");
			SendToConsole("playvol training/score100.wav 0.5");
		}
	}else if (BHOP_State == BStats.Stopped){
		BHOP_State = BStats.Running;
		SendToConsole("playvol buttons/arena_switch_press_02.wav 0.5");
	}
	
	//calc speed
	local speed = GetDistance(player.GetOrigin(), BHOP_TempPos) * 50;
	BHOP_TempPos = player.GetOrigin();
	
	//print
	local line1 = "Speed: " + speed.tointeger() + " | State: " + (BHOP_State != BStats.Running ? ColorText("Stopped",255,0,0):ColorText("Running",0,255,0));
	local line2 = "Time: " + IntToTime(BHOP_Time);
	local line3 = "BT: " + (BHOP_BestTime==13370.0 ? "-":IntToTime(BHOP_BestTime));
	ScriptPrintMessageCenterAll(line1 + "\n" + line2 + "\n" + line3);
	
	//time counter
	if(BHOP_State == BStats.Running)
		BHOP_Time = Time() - BHOP_LastTime;
	
	//draw bounds
	DrawBox(BHOP_map[0], BHOP_map[1], 0, 255, 0, 0.04);
	DrawBox(BHOP_map[2], BHOP_map[3], 255, 0, 0, 0.04);
}

::StartBHOP<-function(){
	SetupTimer("timer_event_bhop", "BHOPEventTimer", 0.02);
}