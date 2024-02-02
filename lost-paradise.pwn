#include <YSI_Coding\y_hooks>

new PlayerText: MaafAnggaByAufa[MAX_PLAYERS][9];
new PlayerText: LAPAR[MAX_PLAYERS];
new PlayerText: HAUS[MAX_PLAYERS];
new PlayerText: STRESSS[MAX_PLAYERS];

stock ShowHbeaufa(playerid) {
    for(new i = 0; i < 9; i++)
    {
        PlayerTextDrawShow(playerid, MaafAnggaByAufa[playerid][i]);
    }
    PlayerTextDrawShow(playerid, LAPAR[playerid]);
    PlayerTextDrawShow(playerid, HAUS[playerid]);
    PlayerTextDrawShow(playerid, STRESSS[playerid]);
}

stock UpdateHBE(playerid) {
    if (PlayerData[playerid][pSpawned] && !PlayerData[playerid][pTogHud]) {

        new Float:aufalapar, Float:aufahaus, Float:stress;

        new AufaSampCode[1000]; 
        format(AufaSampCode, 250, "%d", PlayerData[playerid][pHunger]);
        PlayerTextDrawSetString(playerid, LAPAR[playerid], AufaSampCode);
        PlayerTextDrawShow(playerid, LAPAR[playerid]);

        format(AufaSampCode, 250, "%d", PlayerData[playerid][pThirst]);
        PlayerTextDrawSetString(playerid, HAUS[playerid], AufaSampCode);
        PlayerTextDrawShow(playerid, HAUS[playerid]);

        format(AufaSampCode, 250, "%d", PlayerData[playerid][pStress]);
        PlayerTextDrawSetString(playerid, STRESSS[playerid], AufaSampCode);
        PlayerTextDrawShow(playerid, STRESSS[playerid]);
    }
    return 1;
}

hook OnPlayerConnect(playerid){
	ShowHbeaufa(playerid);
}

hook OnGameModeInit() {
    MaafAnggaByAufa[playerid][0] = CreatePlayerTextDraw(playerid, 107.000, 413.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][0], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][0], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][0], 2138510847);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][0], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][0], 1);

    MaafAnggaByAufa[playerid][1] = CreatePlayerTextDraw(playerid, 112.000, 418.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][1], 24.000, 27.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][1], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][1], -5963521);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][1], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][1], 1);

    MaafAnggaByAufa[playerid][2] = CreatePlayerTextDraw(playerid, 132.000, 413.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][2], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][2], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][2], 1099331071);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][2], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][2], 1);

    MaafAnggaByAufa[playerid][3] = CreatePlayerTextDraw(playerid, 137.000, 418.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][3], 24.000, 27.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][3], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][3], 2147472639);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][3], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][3], 1);

    MaafAnggaByAufa[playerid][4] = CreatePlayerTextDraw(playerid, 157.000, 413.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][4], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][4], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][4], 1466661375);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][4], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][4], 1);

    MaafAnggaByAufa[playerid][5] = CreatePlayerTextDraw(playerid, 162.000, 418.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][5], 24.000, 27.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][5], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][5], -1329275137);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][5], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][5], 1);

    MaafAnggaByAufa[playerid][6] = CreatePlayerTextDraw(playerid, 114.000, 420.000, "HUD:radar_burgerShot");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][6], 7.000, 8.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][6], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][6], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][6], 1);

    MaafAnggaByAufa[playerid][7] = CreatePlayerTextDraw(playerid, 137.000, 420.000, "HUD:radar_diner");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][7], 9.000, 8.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][7], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][7], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][7], 1);

    MaafAnggaByAufa[playerid][8] = CreatePlayerTextDraw(playerid, 163.000, 420.000, "HUD:radar_centre");
    PlayerTextDrawTextSize(playerid, MaafAnggaByAufa[playerid][8], 10.000, 8.000);
    PlayerTextDrawAlignment(playerid, MaafAnggaByAufa[playerid][8], 1);
    PlayerTextDrawColor(playerid, MaafAnggaByAufa[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, MaafAnggaByAufa[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, MaafAnggaByAufa[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafAnggaByAufa[playerid][8], 255);
    PlayerTextDrawFont(playerid, MaafAnggaByAufa[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, MaafAnggaByAufa[playerid][8], 1);

    LAPAR[playerid] = CreatePlayerTextDraw(playerid, 119.000, 425.000, "56");
    PlayerTextDrawLetterSize(playerid, LAPAR[playerid], 0.230, 1.399);
    PlayerTextDrawAlignment(playerid, LAPAR[playerid], 1);
    PlayerTextDrawColor(playerid, LAPAR[playerid], 255);
    PlayerTextDrawSetShadow(playerid, LAPAR[playerid], 0);
    PlayerTextDrawSetOutline(playerid, LAPAR[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, LAPAR[playerid], 255);
    PlayerTextDrawFont(playerid, LAPAR[playerid], 1);
    PlayerTextDrawSetProportional(playerid, LAPAR[playerid], 1);

    HAUS[playerid] = CreatePlayerTextDraw(playerid, 144.000, 425.000, "56");
    PlayerTextDrawLetterSize(playerid, HAUS[playerid], 0.230, 1.399);
    PlayerTextDrawAlignment(playerid, HAUS[playerid], 1);
    PlayerTextDrawColor(playerid, HAUS[playerid], 255);
    PlayerTextDrawSetShadow(playerid, HAUS[playerid], 0);
    PlayerTextDrawSetOutline(playerid, HAUS[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, HAUS[playerid], 255);
    PlayerTextDrawFont(playerid, HAUS[playerid], 1);
    PlayerTextDrawSetProportional(playerid, HAUS[playerid], 1);

    STRESSS[playerid] = CreatePlayerTextDraw(playerid, 169.000, 425.000, "38");
    PlayerTextDrawLetterSize(playerid, STRESSS[playerid], 0.230, 1.399);
    PlayerTextDrawAlignment(playerid, STRESSS[playerid], 1);
    PlayerTextDrawColor(playerid, STRESSS[playerid], 255);
    PlayerTextDrawSetShadow(playerid, STRESSS[playerid], 0);
    PlayerTextDrawSetOutline(playerid, STRESSS[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, STRESSS[playerid], 255);
    PlayerTextDrawFont(playerid, STRESSS[playerid], 1);
    PlayerTextDrawSetProportional(playerid, STRESSS[playerid], 1);
}