---------------Toymaker---------------
-- Create NPC
-- Date: 12-Oct-2024
tab_npc_of_mengjiang_event = {
{562,1,1576,3111,0,"B¾c §Èu L·o Nh©n",0,"\\script\\event\\mengjiang2007\\baixiaolaoren.lua"},
}

function add_mengjiangnpc()
	add_mingyuenpc();
end

function add_mingyuenpc()
	for i= 520	, 526 do
		Mid =	SubWorldID2Idx(i);
		if (Mid >= 0) then
			for j = 1 , getn(tab_npc_of_mengjiang_event) do
				xpos = tab_npc_of_mengjiang_event[j][3] * 32
				ypos = tab_npc_of_mengjiang_event[j][4] * 32
				zhongqiu_index = AddNpc(tab_npc_of_mengjiang_event[j][1],tab_npc_of_mengjiang_event[j][2],Mid,xpos,ypos,tab_npc_of_mengjiang_event[j][5],tab_npc_of_mengjiang_event[j][6]);
				SetNpcScript(zhongqiu_index, tab_npc_of_mengjiang_event[j][8]);
			end
		end
	end
end
