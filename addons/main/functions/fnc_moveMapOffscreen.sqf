#include "script_component.hpp"
/*
 * Author: johnb43
 * Move the map off screen in time.
 *
 * Arguments:
 * 0: Time duration of animation <INTEGER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [time] call tao_foldmap_fnc_moveMapOffscreen;
 *
 * Public: No
 */

params ["_time"];

private _mapPosY = BACK_YPOS - MAP_YPOS;
private _mapPosY2 = SAFEZONE_H - STATUSTEXT_YOFFSET - _mapPosY;

(FOLDMAP displayCtrl GVAR(mapCtrlActive)) ctrlSetPosition [MAP_XPOS, SAFEZONE_H - _mapPosY];
(FOLDMAP displayCtrl BACKGROUND) ctrlSetPosition [BACK_XPOS, SAFEZONE_H];
(FOLDMAP displayCtrl STATUSBAR) ctrlSetPosition [MAP_XPOS, _mapPosY2];
(FOLDMAP displayCtrl STATUSRIGHT) ctrlSetPosition [MAP_XPOS, _mapPosY2];
(FOLDMAP displayCtrl STATUSLEFT) ctrlSetPosition [MAP_XPOS, _mapPosY2];

(FOLDMAP displayCtrl GVAR(mapCtrlActive)) ctrlCommit _time;
(FOLDMAP displayCtrl BACKGROUND) ctrlCommit _time;
(FOLDMAP displayCtrl STATUSBAR) ctrlCommit _time;
(FOLDMAP displayCtrl STATUSRIGHT) ctrlCommit _time;
(FOLDMAP displayCtrl STATUSLEFT) ctrlCommit _time;
