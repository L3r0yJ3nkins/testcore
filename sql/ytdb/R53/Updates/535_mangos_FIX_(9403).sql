# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 534_FIX_9356 535_FIX_9403 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('535_FIX_9403');

# Forum_FIX
UPDATE `gameobject` SET `spawntimesecs` = -300 WHERE `id` = 188525;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `guid` = 20976;
UPDATE `gameobject_template` SET `data1` = 0 WHERE `entry` = 1721;
UPDATE `quest_template` SET `ReqSpellCast1` = 0, `ReqSpellCast2` = 0 WHERE `entry` = 498;
UPDATE `gameobject_template` SET `data1` = 10, `data2` = 0, `data3` = 0 WHERE `entry` = 181057;
UPDATE `gameobject_template` SET `data1` = 10 WHERE `entry` = 192612;
UPDATE `gameobject_template` SET `data1` = 0 WHERE `entry` = 194342;
UPDATE `gameobject_template` SET `data1` = 0 WHERE `entry` = 196398;
UPDATE `gameobject_template` SET `data1` = 0 WHERE `entry` = 194908;
UPDATE `gameobject_template` SET `data1` = 0 WHERE `entry` = 194909;
UPDATE `gameobject_template` SET `data3` = 18280, `data4` = 0 WHERE `entry` = 191579;
DELETE FROM `creature_loot_template` WHERE (`entry`=10802) AND (`item`=19064);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (10802, 19064, -100, 0, 1, 1, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE (`entry`=7870);
INSERT INTO `item_loot_template` VALUES 
(7870, 7866, 100, 0, 3, 3, 0, 0, 0);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(53311, 3444, 1, 1, 1, 1418, 0, -4118.65, -2317.82, 128.06, 4.11898, 320, 0, 0, 42, 0, 0, 0),
(53312, 3444, 1, 1, 1, 1418, 0, -4129.52, -2174.58, 50.3081, 5.58627, 320, 5, 0, 42, 0, 0, 1),
(53313, 3444, 1, 1, 1, 1418, 0, -4074.46, -2375.37, 126.13, 4.68013, 320, 0, 0, 42, 0, 0, 0),
(53314, 3444, 1, 1, 1, 1418, 0, -4094.5, -2388.58, 118.077, 3.52872, 320, 5, 0, 42, 0, 0, 1),
(53315, 3444, 1, 1, 1, 1418, 0, -4162.26, -2311.94, 92.4289, 2.9343, 320, 0, 0, 42, 0, 0, 0),
(53316, 3444, 1, 1, 1, 1418, 0, -4214.94, -2274.71, 50.3081, 2.24407, 320, 5, 0, 42, 0, 0, 1),
(63161, 3444, 1, 1, 1, 1418, 0, -4046, -2369.77, 135.856, 0.790002, 320, 5, 0, 42, 0, 0, 1),
(63677, 3444, 1, 1, 1, 1418, 0, -4046.22, -2402.96, 126.131, 4.83418, 320, 5, 0, 42, 0, 0, 1),
(63695, 3444, 1, 1, 1, 1418, 0, -4195.88, -2246.05, 50.3081, 2.15643, 320, 5, 0, 42, 0, 0, 1),
(63697, 3444, 1, 1, 1, 1418, 0, -4149.42, -2208.05, 50.3081, 5.49578, 320, 5, 0, 42, 0, 0, 1),
(63703, 3444, 1, 1, 1, 1418, 0, -4086.52, -2388.37, 135.855, 5.58818, 320, 5, 0, 42, 0, 0, 1),
(78277, 3444, 1, 1, 1, 1418, 0, -4071.39, -2420.06, 126.133, 2.70281, 320, 5, 0, 42, 0, 0, 1),
(86617, 3444, 1, 1, 1, 1418, 0, -4052.29, -2314.87, 130.8, 5.51306, 320, 5, 0, 42, 0, 0, 1),
(86618, 3444, 1, 1, 1, 1418, 0, -4057.36, -2378.25, 118.076, 5.05553, 320, 2, 0, 42, 0, 0, 1);
UPDATE `item_template` SET `spellppmRate_1` = -10 WHERE `entry` = 21813;
DELETE FROM `item_loot_template` WHERE (`entry`=21813);
INSERT INTO `item_loot_template` VALUES 
(21813, 21980, 0, 1, 1, 1, 0, 0, 0),
(21813, 22164, 0, 1, 1, 1, 0, 0, 0),
(21813, 22154, 0, 1, 1, 1, 0, 0, 0),
(21813, 21981, 0, 1, 1, 1, 0, 0, 0),
(21813, 21979, 0, 1, 1, 1, 0, 0, 0),
(21813, 22165, 0, 1, 1, 1, 0, 0, 0),
(21813, 22166, 0, 1, 1, 1, 0, 0, 0),
(21813, 22155, 0, 1, 1, 1, 0, 0, 0),
(21813, 22156, 0, 1, 1, 1, 0, 0, 0),
(21813, 21975, 0, 1, 1, 1, 0, 0, 0),
(21813, 22158, 0, 1, 1, 1, 0, 0, 0),
(21813, 22157, 0, 1, 1, 1, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE (`entry`=49909);
INSERT INTO `item_loot_template` VALUES 
(49909, 22237, 0, 1, 1, 5, 0, 0, 0),
(49909, 22236, 0, 1, 1, 5, 0, 0, 0),
(49909, 22238, 0, 1, 1, 5, 0, 0, 0),
(49909, 22239, 0, 1, 1, 5, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE (`entry`=52006);
INSERT INTO `item_loot_template` VALUES 
(52006, 36922, 0, 1, 1, 1, 0, 0, 0),
(52006, 36925, 0, 1, 1, 1, 0, 0, 0),
(52006, 36928, 0, 1, 1, 1, 0, 0, 0),
(52006, 36931, 0, 1, 1, 1, 0, 0, 0),
(52006, 36934, 0, 1, 1, 1, 0, 0, 0),
(52006, 49426, 100, 0, 1, 5, 0, 0, 0),
(52006, 50175, 0, 2, 1, 1, 0, 0, 0),
(52006, 50447, 0, 2, 1, 1, 0, 0, 0),
(52006, 36919, 0, 1, 1, 1, 0, 0, 0),
(52006, 50020, 0, 2, 1, 1, 0, 0, 0),
(52006, 50444, 0, 2, 1, 1, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE (`entry`=50160);
INSERT INTO `item_loot_template` VALUES 
(50160, 22278, 0, 1, 1, 1, 0, 0, 0),
(50160, 22276, 0, 1, 1, 1, 0, 0, 0),
(50160, 22279, 0, 1, 1, 1, 0, 0, 0),
(50160, 22280, 0, 1, 1, 1, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE (`entry`=50161);
INSERT INTO `item_loot_template` VALUES 
(50161, 22282, 0, 1, 1, 1, 0, 0, 0),
(50161, 22277, 0, 1, 1, 1, 0, 0, 0),
(50161, 22281, 0, 1, 1, 1, 0, 0, 0);
UPDATE `quest_template` SET `PrevQuestId` = 24596 WHERE `entry` = 24798;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (36853, 0, 0, 0, 0, 0, 30362, 0, 30362, 0, 'Sindragosa', 'Queen of the Frostbrood', '', 0, 83, 83, 11156000, 11156000, 0, 0, 0, 14, 14, 0, 1, 1, 3, 1, 1, 0, 1, 1, 2000, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 6, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1100740, 1150740, '', 0, 3, 800, 1, 0, 51026, 0, 0, 0, 0, 0, 261, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10070, `difficulty_entry_2` = 10071, `difficulty_entry_3` = 10072, `armor` = 10627, `mindmg` = 468, `maxdmg` = 702, `attackpower` = 175, `dmg_multiplier` = 2, `rangeattacktime` = 2000, `unit_class` = 1, `minrangedmg` = 374, `maxrangedmg` = 562, `rangedattackpower` = 140, `lootid` = 36853, `mechanic_immune_mask` = 665534463, `ScriptName` = 'generic_creature' WHERE `entry` = 36853;

# timmit
INSERT INTO gossip_menu (entry,text_id) VALUES (10956,15221);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES
('10956','0','0','Frozen Throne Teleport','1','1','0','0','50027','0','0',NULL,'0','0','0','0','0','0','0','0','0');
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES('50027','0','15','70860','1','0','0','0','0','0');
UPDATE `creature_template` SET `gossip_menu_id` = 38501, `npcflag` =`npcflag`| 1 WHERE `entry` = 38501;
INSERT INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2,cond_3,cond_3_val_1,cond_3_val_2) VALUES
(38501,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,0,0,0,0,0,0),
(38501,1,0,'Alchemist, I was covered with samples of the plague!',1,1,50053,0,0,0,0,0,0,0,0,0,0),
(50053,0,0,'Go and collect samples.',1,1,0,38501,9,24873,0,1,72144,0,1,72145,0),
(50053,1,0,'Go and collect samples.',1,1,0,38502,9,24878,0,1,72144,0,1,72145,0);
INSERT INTO `gossip_scripts` VALUES  
(38501,1,15,72155,1,0,0,0,0,0),
(38502,1,15,72162,1,0,0,0,0,0);
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 24655;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestInChain` = 0 WHERE `entry` = 24805;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 24536;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestInChain` = 0 WHERE `entry` = 24804;

# NeatElves
UPDATE `quest_template` SET `ReqItemId1` = '49669',`ReqItemCount1` = '1' WHERE `entry` =24635;
UPDATE `quest_template` SET `ReqItemId1` = '49668',`ReqItemCount1` = '1' WHERE `entry` =24629;

# timmit
REPLACE INTO `creature_ai_scripts` VALUES 
(3721451, 37214, 6, 0, 30, 0, 0, 0, 0, 0, 11, 69511, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES 
(3791751, 37917, 6, 0, 30, 0, 0, 0, 0, 0, 11, 69511, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES 
(3798451, 37984, 6, 0, 10, 0, 0, 0, 0, 0, 11, 69511, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES 
(3800651, 38006, 6, 0, 10, 0, 0, 0, 0, 0, 11, 69511, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES 
(3801651, 38016, 6, 0, 10, 0, 0, 0, 0, 0, 11, 69511, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES 
(3802351, 38023, 6, 0, 10, 0, 0, 0, 0, 0, 11, 69511, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES 
(3803051, 38030, 6, 0, 10, 0, 0, 0, 0, 0, 11, 69511, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES 
(3803251, 38032, 6, 0, 10, 0, 0, 0, 0, 0, 11, 69511, 6, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
update creature_template set ainame='EventAI' where entry in (38032,38030,38023,38016,38006,37984,37917,37214);
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` in (38032,38030,38023,38016,38006,37984,37917,37214);
UPDATE `gameobject_template` SET `IconName` = 'Inspect', `castBarCaption` = '' WHERE `entry` = 202443;
DELETE FROM `creature` WHERE `id`=37715;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(99475, 37715, 1, 1, 1, 0, 0, 1349.47, -4641.45, 53.5287, 3.1282, 300, 0, 0, 1, 0, 0, 0),
(99476, 37715, 0, 1, 1, 0, 0, -8401.37, 1246.34, 5.2303, 5.97131, 300, 0, 0, 1, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 30, `maxlevel` = 30, `minhealth` = 1003, `maxhealth` = 1003 WHERE `entry` = 37715;
INSERT IGNORE INTO `game_event_creature` SELECT `guid`,'8' FROM `creature` WHERE `id`=37715;
UPDATE `gossip_scripts` SET `datalong2`='2' WHERE `id`='37715';
DELETE FROM `creature` WHERE `id`=38482;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(86619, 38482, 624, 1, 1, 0, 0, -40.9149, -231.358, 97.5457, 1.66976, 7200, 0, 0, 808860, 0, 0, 0),
(86620, 38482, 624, 1, 1, 0, 0, -42.8575, -192.419, 97.2947, 1.52839, 7200, 0, 0, 808860, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=38433);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (38433, 0, 0, 0, 0, 0, '71993 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=10065);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (10065, 0, 0, 0, 0, 0, '71993 0');
DELETE FROM `creature` WHERE `id`=38433;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(86621, 38433, 624, 1, 1, 0, 0, -43.1247, -290.569, 91.1678, 1.65406,604800, 0, 0, 4601850, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=10066);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (10066, 0, 0, 0, 0, 0, '72122 0');
UPDATE `creature_template` SET `lootid` = 38433 WHERE `entry` = 38433;
DELETE FROM `creature_loot_template` WHERE (`entry`=38433);
INSERT INTO `creature_loot_template` VALUES 
(38433, 50114, 0, 1, 1, 1, 0, 0, 0),
(38433, 50116, 0, 1, 1, 1, 0, 0, 0),
(38433, 50240, 0, 1, 1, 1, 0, 0, 0),
(38433, 50242, 0, 1, 1, 1, 0, 0, 0),
(38433, 50088, 0, 1, 1, 1, 0, 0, 0),
(38433, 50090, 0, 1, 1, 1, 0, 0, 0),
(38433, 50275, 0, 1, 1, 1, 0, 0, 0),
(38433, 50277, 0, 1, 1, 1, 0, 0, 0),
(38433, 50391, 0, 1, 1, 1, 0, 0, 0),
(38433, 50095, 0, 1, 1, 1, 0, 0, 0),
(38433, 50079, 0, 1, 1, 1, 0, 0, 0),
(38433, 50081, 0, 1, 1, 1, 0, 0, 0),
(38433, 50766, 0, 1, 1, 1, 0, 0, 0),
(38433, 50769, 0, 1, 1, 1, 0, 0, 0),
(38433, 50393, 0, 1, 1, 1, 0, 0, 0),
(38433, 50107, 0, 1, 1, 1, 0, 0, 0),
(38433, 50827, 0, 1, 1, 1, 0, 0, 0),
(38433, 50327, 0, 1, 1, 1, 0, 0, 0),
(38433, 50866, 0, 1, 1, 1, 0, 0, 0),
(38433, 42118, 0, 3, 1, 1, 0, 0, 0),
(38433, 41206, 0, 2, 1, 1, 0, 0, 0),
(38433, 40979, 0, 2, 1, 1, 0, 0, 0),
(38433, 41768, 0, 2, 1, 1, 0, 0, 0),
(38433, 41002, 0, 2, 1, 1, 0, 0, 0),
(38433, 50856, 0, 1, 1, 1, 0, 0, 0),
(38433, 50854, 0, 1, 1, 1, 0, 0, 0),
(38433, 50097, 0, 1, 1, 1, 0, 0, 0),
(38433, 50849, 0, 1, 1, 1, 0, 0, 0),
(38433, 50847, 0, 1, 1, 1, 0, 0, 0),
(38433, 41774, 0, 2, 1, 1, 0, 0, 0),
(38433, 40978, 0, 2, 1, 1, 0, 0, 0),
(38433, 42042, 0, 3, 1, 1, 0, 0, 0),
(38433, 50844, 0, 1, 1, 1, 0, 0, 0),
(38433, 50838, 0, 1, 1, 1, 0, 0, 0),
(38433, 41899, 0, 2, 1, 1, 0, 0, 0),
(38433, 41875, 0, 2, 1, 1, 0, 0, 0),
(38433, 50836, 0, 1, 1, 1, 0, 0, 0),
(38433, 50109, 0, 1, 1, 1, 0, 0, 0),
(38433, 42119, 0, 3, 1, 1, 0, 0, 0),
(38433, 40811, 0, 2, 1, 1, 0, 0, 0),
(38433, 40884, 0, 2, 1, 1, 0, 0, 0),
(38433, 41656, 0, 2, 1, 1, 0, 0, 0),
(38433, 41138, 0, 2, 1, 1, 0, 0, 0),
(38433, 41008, 0, 2, 1, 1, 0, 0, 0),
(38433, 41960, 0, 2, 1, 1, 0, 0, 0),
(38433, 50822, 0, 1, 1, 1, 0, 0, 0),
(38433, 50861, 0, 1, 1, 1, 0, 0, 0),
(38433, 41833, 0, 2, 1, 1, 0, 0, 0),
(38433, 41837, 0, 2, 1, 1, 0, 0, 0),
(38433, 41894, 0, 2, 1, 1, 0, 0, 0),
(38433, 42018, 0, 2, 1, 1, 0, 0, 0),
(38433, 40883, 0, 2, 1, 1, 0, 0, 0),
(38433, 41865, 0, 2, 1, 1, 0, 0, 0),
(38433, 40928, 0, 2, 1, 1, 0, 0, 0),
(38433, 40810, 0, 2, 1, 1, 0, 0, 0),
(38433, 40850, 0, 2, 1, 1, 0, 0, 0),
(38433, 40812, 0, 2, 1, 1, 0, 0, 0),
(38433, 41236, 0, 2, 1, 1, 0, 0, 0),
(38433, 41226, 0, 2, 1, 1, 0, 0, 0),
(38433, 50825, 0, 1, 1, 1, 0, 0, 0),
(38433, 50868, 0, 1, 1, 1, 0, 0, 0),
(38433, 50325, 0, 1, 1, 1, 0, 0, 0),
(38433, 41200, 0, 2, 1, 1, 0, 0, 0),
(38433, 41034, 0, 2, 1, 1, 0, 0, 0),
(38433, 40940, 0, 2, 1, 1, 0, 0, 0),
(38433, 41028, 0, 2, 1, 1, 0, 0, 0),
(38433, 41231, 0, 2, 1, 1, 0, 0, 0),
(38433, 41904, 0, 2, 1, 1, 0, 0, 0),
(38433, 41294, 0, 2, 1, 1, 0, 0, 0),
(38433, 50831, 0, 1, 1, 1, 0, 0, 0),
(38433, 50833, 0, 1, 1, 1, 0, 0, 0),
(38433, 50820, 0, 1, 1, 1, 0, 0, 0),
(38433, 41841, 0, 2, 1, 1, 0, 0, 0),
(38433, 40890, 0, 2, 1, 1, 0, 0, 0),
(38433, 41144, 0, 2, 1, 1, 0, 0, 0),
(38433, 42082, 0, 3, 1, 1, 0, 0, 0),
(38433, 41668, 0, 2, 1, 1, 0, 0, 0),
(38433, 40851, 0, 2, 1, 1, 0, 0, 0),
(38433, 41288, 0, 2, 1, 1, 0, 0, 0),
(38433, 41299, 0, 2, 1, 1, 0, 0, 0),
(38433, 41972, 0, 2, 1, 1, 0, 0, 0),
(38433, 41305, 0, 2, 1, 1, 0, 0, 0),
(38433, 50842, 0, 1, 1, 1, 0, 0, 0),
(38433, 50863, 0, 1, 1, 1, 0, 0, 0),
(38433, 41882, 0, 2, 1, 1, 0, 0, 0),
(38433, 41910, 0, 2, 1, 1, 0, 0, 0),
(38433, 41941, 0, 2, 1, 1, 0, 0, 0),
(38433, 41928, 0, 2, 1, 1, 0, 0, 0),
(38433, 40984, 0, 2, 1, 1, 0, 0, 0),
(38433, 40852, 0, 2, 1, 1, 0, 0, 0),
(38433, 43959, 1, 0, 1, 1, 6, 469, 0),
(38433, 44083, 1, 0, 1, 1, 6, 67, 0),
(38433, 42081, 0, 3, 1, 1, 0, 0, 0),
(38433, 42041, 0, 3, 1, 1, 0, 0, 0),
(38433, 41056, 0, 2, 1, 1, 0, 0, 0),
(38433, 41886, 0, 2, 1, 1, 0, 0, 0),
(38433, 41618, 0, 2, 1, 1, 0, 0, 0),
(38433, 42080, 0, 3, 1, 1, 0, 0, 0),
(38433, 42044, 0, 3, 1, 1, 0, 0, 0),
(38433, 41066, 0, 2, 1, 1, 0, 0, 0),
(38433, 41641, 0, 2, 1, 1, 0, 0, 0),
(38433, 41631, 0, 2, 1, 1, 0, 0, 0),
(38433, 42076, 0, 3, 1, 1, 0, 0, 0),
(38433, 42006, 0, 2, 1, 1, 0, 0, 0),
(38433, 41076, 0, 2, 1, 1, 0, 0, 0),
(38433, 41061, 0, 2, 1, 1, 0, 0, 0),
(38433, 41626, 0, 2, 1, 1, 0, 0, 0),
(38433, 41071, 0, 2, 1, 1, 0, 0, 0),
(38433, 41622, 0, 2, 1, 1, 0, 0, 0),
(38433, 42045, 0, 3, 1, 1, 0, 0, 0),
(38433, 41636, 0, 2, 1, 1, 0, 0, 0),
(38433, 42079, 0, 3, 1, 1, 0, 0, 0),
(38433, 42077, 0, 3, 1, 1, 0, 0, 0),
(38433, 42043, 0, 3, 1, 1, 0, 0, 0),
(38433, 42047, 0, 3, 1, 1, 0, 0, 0),
(38433, 41052, 0, 2, 1, 1, 0, 0, 0),
(38433, 46374, 0, 3, 1, 1, 0, 0, 0),
(38433, 42078, 0, 3, 1, 1, 0, 0, 0),
(38433, 42046, 0, 3, 1, 1, 0, 0, 0),
(38433, 47241, 100, 0, 2, 2, 0, 0, 0);
update `creature_loot_template` set `ChanceOrQuestChance`=100 where `item`=44731;
UPDATE `creature_template` SET `lootid` = 10065 WHERE `entry` = 10065;
DELETE FROM `creature_loot_template` WHERE (`entry`=10065);
INSERT INTO `creature_loot_template` VALUES 
(10065, 43959, 1, 0, 1, 1, 6, 469, 0),
(10065, 44083, 1, 0, 1, 1, 6, 67, 0),
(10065, 51126, 0, 2, 1, 1, 0, 0, 0),
(10065, 51128, 0, 2, 1, 1, 0, 0, 0),
(10065, 51131, 0, 2, 1, 1, 0, 0, 0),
(10065, 51132, 0, 2, 1, 1, 0, 0, 0),
(10065, 51136, 0, 4, 1, 1, 0, 0, 0),
(10065, 51138, 0, 4, 1, 1, 0, 0, 0),
(10065, 51142, 0, 4, 1, 1, 0, 0, 0),
(10065, 51144, 0, 4, 1, 1, 0, 0, 0),
(10065, 51146, 0, 4, 1, 1, 0, 0, 0),
(10065, 51148, 0, 4, 1, 1, 0, 0, 0),
(10065, 51152, 0, 2, 1, 1, 0, 0, 0),
(10065, 51154, 0, 2, 1, 1, 0, 0, 0),
(10065, 51157, 0, 4, 1, 1, 0, 0, 0),
(10065, 51159, 0, 4, 1, 1, 0, 0, 0),
(10065, 51161, 0, 2, 1, 1, 0, 0, 0),
(10065, 51163, 0, 2, 1, 1, 0, 0, 0),
(10065, 51168, 0, 2, 1, 1, 0, 0, 0),
(10065, 51169, 0, 2, 1, 1, 0, 0, 0),
(10065, 51171, 0, 2, 1, 1, 0, 0, 0),
(10065, 51172, 0, 2, 1, 1, 0, 0, 0),
(10065, 51177, 0, 4, 1, 1, 0, 0, 0),
(10065, 51179, 0, 4, 1, 1, 0, 0, 0),
(10065, 51181, 0, 4, 1, 1, 0, 0, 0),
(10065, 51183, 0, 4, 1, 1, 0, 0, 0),
(10065, 51186, 0, 4, 1, 1, 0, 0, 0),
(10065, 51188, 0, 4, 1, 1, 0, 0, 0),
(10065, 51191, 0, 2, 1, 1, 0, 0, 0),
(10065, 51193, 0, 2, 1, 1, 0, 0, 0),
(10065, 51196, 0, 2, 1, 1, 0, 0, 0),
(10065, 51198, 0, 2, 1, 1, 0, 0, 0),
(10065, 51201, 0, 2, 1, 1, 0, 0, 0),
(10065, 51203, 0, 2, 1, 1, 0, 0, 0),
(10065, 51207, 0, 4, 1, 1, 0, 0, 0),
(10065, 51209, 0, 4, 1, 1, 0, 0, 0),
(10065, 51211, 0, 2, 1, 1, 0, 0, 0),
(10065, 51213, 0, 2, 1, 1, 0, 0, 0),
(10065, 51216, 0, 2, 1, 1, 0, 0, 0),
(10065, 51217, 0, 2, 1, 1, 0, 0, 0),
(10065, 51327, 0, 1, 1, 1, 0, 0, 0),
(10065, 51328, 0, 1, 1, 1, 0, 0, 0),
(10065, 51329, 0, 1, 1, 1, 0, 0, 0),
(10065, 51330, 0, 3, 1, 1, 0, 0, 0),
(10065, 51331, 0, 3, 1, 1, 0, 0, 0),
(10065, 51332, 0, 3, 1, 1, 0, 0, 0),
(10065, 51333, 0, 3, 1, 1, 0, 0, 0),
(10065, 51334, 0, 3, 1, 1, 0, 0, 0),
(10065, 51335, 0, 3, 1, 1, 0, 0, 0),
(10065, 51336, 0, 3, 1, 1, 0, 0, 0),
(10065, 51340, 0, 1, 1, 1, 0, 0, 0),
(10065, 51341, 0, 1, 1, 1, 0, 0, 0),
(10065, 51342, 0, 1, 1, 1, 0, 0, 0),
(10065, 51343, 0, 1, 1, 1, 0, 0, 0),
(10065, 51344, 0, 1, 1, 1, 0, 0, 0),
(10065, 51345, 0, 1, 1, 1, 0, 0, 0),
(10065, 51346, 0, 3, 1, 1, 0, 0, 0),
(10065, 51347, 0, 3, 1, 1, 0, 0, 0),
(10065, 51348, 0, 3, 1, 1, 0, 0, 0),
(10065, 51349, 0, 3, 1, 1, 0, 0, 0),
(10065, 51350, 0, 1, 1, 1, 0, 0, 0),
(10065, 51351, 0, 1, 1, 1, 0, 0, 0),
(10065, 51352, 0, 1, 1, 1, 0, 0, 0),
(10065, 51353, 0, 3, 1, 1, 0, 0, 0),
(10065, 51354, 0, 3, 1, 1, 0, 0, 0),
(10065, 51355, 0, 3, 1, 1, 0, 0, 0),
(10065, 51356, 0, 3, 1, 1, 0, 0, 0),
(10065, 51357, 0, 3, 1, 1, 0, 0, 0),
(10065, 51358, 0, 3, 1, 1, 0, 0, 0),
(10065, 51359, 0, 1, 1, 1, 0, 0, 0),
(10065, 51360, 0, 1, 1, 1, 0, 0, 0),
(10065, 51361, 0, 1, 1, 1, 0, 0, 0),
(10065, 51362, 0, 1, 1, 1, 0, 0, 0),
(10065, 51363, 0, 1, 1, 1, 0, 0, 0),
(10065, 51364, 0, 1, 1, 1, 0, 0, 0),
(10065, 51365, 0, 1, 1, 1, 0, 0, 0),
(10065, 51366, 0, 1, 1, 1, 0, 0, 0),
(10065, 51367, 0, 1, 1, 1, 0, 0, 0),
(10065, 51368, 0, 1, 1, 1, 0, 0, 0),
(10065, 51369, 0, 1, 1, 1, 0, 0, 0),
(10065, 51370, 0, 1, 1, 1, 0, 0, 0),
(10065, 51371, 0, 1, 1, 1, 0, 0, 0),
(10065, 51372, 0, 1, 1, 1, 0, 0, 0),
(10065, 51373, 0, 1, 1, 1, 0, 0, 0),
(10065, 51374, 0, 1, 1, 1, 0, 0, 0),
(10065, 51375, 0, 1, 1, 1, 0, 0, 0),
(10065, 51376, 0, 1, 1, 1, 0, 0, 0),
(10065, 51414, 0, 1, 1, 1, 0, 0, 0),
(10065, 51416, 0, 1, 1, 1, 0, 0, 0),
(10065, 51420, 0, 1, 1, 1, 0, 0, 0),
(10065, 51422, 0, 1, 1, 1, 0, 0, 0),
(10065, 51426, 0, 1, 1, 1, 0, 0, 0),
(10065, 51428, 0, 1, 1, 1, 0, 0, 0),
(10065, 51434, 0, 1, 1, 1, 0, 0, 0),
(10065, 51436, 0, 1, 1, 1, 0, 0, 0),
(10065, 51459, 0, 1, 1, 1, 0, 0, 0),
(10065, 51461, 0, 1, 1, 1, 0, 0, 0),
(10065, 51464, 0, 1, 1, 1, 0, 0, 0),
(10065, 51466, 0, 1, 1, 1, 0, 0, 0),
(10065, 51469, 0, 1, 1, 1, 0, 0, 0),
(10065, 51471, 0, 1, 1, 1, 0, 0, 0),
(10065, 51475, 0, 1, 1, 1, 0, 0, 0),
(10065, 51477, 0, 1, 1, 1, 0, 0, 0),
(10065, 51483, 0, 1, 1, 1, 0, 0, 0),
(10065, 51485, 0, 1, 1, 1, 0, 0, 0),
(10065, 51488, 0, 1, 1, 1, 0, 0, 0),
(10065, 51490, 0, 1, 1, 1, 0, 0, 0),
(10065, 51493, 0, 1, 1, 1, 0, 0, 0),
(10065, 51495, 0, 1, 1, 1, 0, 0, 0),
(10065, 51498, 0, 1, 1, 1, 0, 0, 0),
(10065, 51500, 0, 1, 1, 1, 0, 0, 0),
(10065, 51504, 0, 1, 1, 1, 0, 0, 0),
(10065, 51506, 0, 1, 1, 1, 0, 0, 0),
(10065, 51510, 0, 1, 1, 1, 0, 0, 0),
(10065, 51512, 0, 1, 1, 1, 0, 0, 0),
(10065, 51537, 0, 1, 1, 1, 0, 0, 0),
(10065, 51539, 0, 1, 1, 1, 0, 0, 0),
(10065, 51542, 0, 1, 1, 1, 0, 0, 0),
(10065, 51544, 0, 1, 1, 1, 0, 0, 0),
(10065, 47241, 100, 0, 2, 2, 0, 0, 0);
-- Cosmetic Totem Alliance Air
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 29763;
-- Cosmetic Totem Alliance Earth
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 29764;
-- Cosmetic Totem Alliance Fire
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 29765;
-- Cosmetic Totem Alliance Water
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 29766;

# NeatElves
UPDATE `quest_template` SET `RequiredRaces` = '690',`PrevQuestId` = '24563' WHERE `entry` =24596;
UPDATE `quest_template` SET `RequiredRaces` = '0',`PrevQuestId` = '0',`NextQuestId` = '0',`ExclusiveGroup` = '0',`NextQuestInChain` = '0' WHERE `entry` in (24596,24594);
DELETE FROM `creature_questrelation` WHERE `id` = 37527 AND `quest` in (24594,24596);
DELETE FROM `creature_involvedrelation` WHERE `id` = 37527 AND `quest` in (24594,24596);
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `entry` =24800;
DELETE FROM `creature_involvedrelation` WHERE `id` = 30116 AND `quest` = 24800;
DELETE FROM `creature_questrelation` WHERE `id` = 36642 AND `quest` = 24800;
UPDATE `creature_loot_template` SET `lootcondition` = '12',`condition_value1` = '8' WHERE `item` =44731;
DELETE FROM `creature_loot_template` WHERE `entry` = 8929 AND `item` = 22206;
DELETE FROM `creature_loot_template` WHERE `entry` = 10811 AND `item` = 22206;
DELETE FROM `creature_loot_template` WHERE `entry` = 10901 AND `item` = 22206;
DELETE FROM `creature_loot_template` WHERE `entry` = 11488 AND `item` = 22206;
UPDATE `creature_loot_template` SET `lootcondition` = '12',`condition_value1` = '8' WHERE `item` =22206;
update `creature_loot_template` set `ChanceOrQuestChance`=100 where `item`=22206;
UPDATE `quest_template` SET `ExclusiveGroup` = '24629' WHERE `entry` in (24629,24635,24636);

# Release
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 16444;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 15397;

# Forum_FIX
UPDATE `creature_template` SET `unit_flags` = 294916 WHERE `entry` IN (29747,29790);
UPDATE `creature_template` SET `dynamicflags` = 0 WHERE `entry` IN (37973,37972,37970);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 29983;
UPDATE `creature_template` SET `spell1` = 0, `flags_extra` = 2, `ScriptName` = '' WHERE `entry` = 35596;
INSERT IGNORE INTO `spell_script_target` VALUES ('26521', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26521', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26521', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26521', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('57806', '1', '30202');

# WDB
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=61;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=117;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=126;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=127;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=171;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=212;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=215;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=222;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=234;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=239;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=247;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=250;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=251;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=255;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=258;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=261;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=278;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=294;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=313;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=334;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=341;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=342;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=384;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=391;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=392;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=397;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=423;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=424;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=426;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=429;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=430;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=431;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=432;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=433;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=434;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=436;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=445;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=446;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=450;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=456;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=458;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=464;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=473;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=476;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=486;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=487;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=490;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=500;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=502;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=513;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=515;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=517;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=518;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=534;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=545;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=550;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=568;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=580;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=594;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=598;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=599;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=619;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=622;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=634;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=636;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=639;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=641;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=643;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=644;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=645;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=646;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=647;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=657;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=658;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=703;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=707;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=712;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=713;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=724;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=752;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=765;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=812;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=824;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=829;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=848;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=863;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=878;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=880;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=881;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=893;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=938;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=950;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=959;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1007;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1008;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1009;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1051;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1053;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1057;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1065;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1068;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1071;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1072;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1073;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1074;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1075;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1081;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1098;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1099;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1100;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1101;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1103;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1118;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1119;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1163;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1164;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1166;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1169;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1173;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1174;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1176;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1178;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1179;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1193;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1197;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1198;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1202;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1222;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1224;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1236;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1237;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1244;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1250;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1254;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1255;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1256;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1266;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1271;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1277;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1279;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1331;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1332;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1334;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1335;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1336;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1343;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1355;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1358;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1360;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1362;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1407;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1426;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1440;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1471;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1650;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1663;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1666;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1669;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1671;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1679;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1696;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1698;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1701;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1711;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1715;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1716;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1717;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1718;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1725;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1726;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1727;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1729;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1731;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1732;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1763;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1776;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1782;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1826;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1827;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1833;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1853;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1884;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1888;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1889;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1893;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1896;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1937;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1949;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1950;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1951;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1952;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1956;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1960;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1965;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1975;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1977;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2009;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2010;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2011;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2055;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2056;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2057;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2121;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2140;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2214;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2226;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2227;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2243;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2245;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2246;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2247;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2257;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2269;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2270;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2271;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2272;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2304;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2305;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2317;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2320;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2333;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2335;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2344;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2345;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2346;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2372;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2373;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2374;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2375;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2415;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2423;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2448;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2450;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2451;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2477;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2478;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2480;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2503;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2520;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2524;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2525;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2526;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2527;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2528;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2543;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2552;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2553;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2554;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2555;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2556;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2557;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2562;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2564;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2573;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2574;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2590;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2591;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2603;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2608;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2612;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2618;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2619;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2623;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2642;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2645;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2646;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2654;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2691;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2700;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2712;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2716;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2717;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2718;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2719;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2720;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2738;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2739;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2740;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2742;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2743;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2764;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2765;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2783;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2788;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2789;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2799;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2802;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2808;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2810;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2812;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2814;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2816;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2835;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2861;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2908;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2915;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2920;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2921;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2922;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2964;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2965;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2994;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3036;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3037;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3195;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3203;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3232;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3276;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3277;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3278;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3280;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3285;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3290;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3291;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3379;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3380;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3389;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3393;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3394;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3396;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3417;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3434;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3436;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3450;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3455;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3457;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3458;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3467;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3471;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3529;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3531;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3550;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3551;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3552;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3553;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3554;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3555;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3556;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3557;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3586;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3641;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3654;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3655;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3680;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3708;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3846;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3849;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3850;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3851;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3853;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3854;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3855;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3857;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3859;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3872;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3885;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3886;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3887;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3914;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3917;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3921;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3923;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3926;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3947;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3955;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3963;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3981;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3983;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3984;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3985;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3987;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3989;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4049;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4063;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4064;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4065;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4093;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4094;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4096;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4100;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4101;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4104;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4274;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4275;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4278;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4279;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4280;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4281;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4282;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4283;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4284;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4285;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4286;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4287;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4288;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4289;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4290;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4291;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4292;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4293;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4294;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4295;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4296;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4297;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4298;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4299;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4300;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4301;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4302;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4303;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4305;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4306;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4314;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4416;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4417;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4418;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4444;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4462;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4465;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4480;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4483;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4488;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4493;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4494;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4503;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4540;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4545;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4546;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4547;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4567;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4582;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4583;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4584;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4586;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4587;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4609;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4610;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4611;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4612;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4629;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4686;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4732;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4781;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4787;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4805;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4807;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4809;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4810;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4811;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4812;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4813;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4814;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4815;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4818;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4819;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4820;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4827;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4829;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4830;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4831;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4832;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4958;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4977;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5058;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5097;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5135;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5139;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5204;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5229;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5236;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5237;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5238;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5239;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5241;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5292;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5335;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5337;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5345;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=5352;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5394;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5471;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5473;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5523;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5568;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5676;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5677;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5680;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5681;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5683;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5686;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5690;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5726;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5727;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5728;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5729;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5734;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5735;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5736;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5738;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5739;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5741;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5742;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5743;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5744;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5748;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5761;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5767;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5768;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5770;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5775;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5783;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5784;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5785;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5792;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5810;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5831;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5836;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5837;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5839;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5886;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5914;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5974;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5975;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5976;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5977;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5978;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5979;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6007;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6008;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6009;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6021;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6028;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6047;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6139;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6170;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6228;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6243;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6252;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6253;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6288;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6389;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6467;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6487;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6493;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6522;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6523;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6552;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6566;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6575;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6577;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6670;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6739;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6768;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6771;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6777;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6779;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6782;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6846;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6868;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6927;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6966;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7009;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7029;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7153;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7170;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7172;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7287;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7297;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7317;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7318;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7323;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7324;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7325;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7335;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7337;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7343;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7357;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7358;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7360;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7404;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7665;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7667;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7669;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7671;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7779;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7872;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7873;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7874;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=7937;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8155;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8219;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8304;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8309;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8376;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8390;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8393;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8418;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8521;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8522;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8546;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8547;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8548;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8550;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8551;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8553;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8560;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8561;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8562;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8563;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8564;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8565;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8567;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8585;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8637;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8696;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8767;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8886;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8891;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8892;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8893;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8894;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8896;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8897;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8898;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8902;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8911;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8913;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8914;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8920;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8931;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8934;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8977;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8979;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9017;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9076;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9078;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9079;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9080;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9081;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9082;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9083;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9084;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9085;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9086;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9117;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9356;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9447;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9448;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9449;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9450;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9451;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9452;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9459;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9500;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9503;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9524;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9536;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9543;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9544;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9545;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9547;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9553;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9554;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9563;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9657;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9836;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9979;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9990;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10000;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10037;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10043;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10045;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10058;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10136;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=10182;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10260;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10262;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10267;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10302;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10304;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10427;
UPDATE `creature_template` SET `type_flags`=65549 WHERE `entry`=10430;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10441;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10481;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10482;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10506;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10508;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10536;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=10540;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10612;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10616;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10739;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10778;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10817;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10837;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10839;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10856;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=10942;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11031;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11044;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11064;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11072;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11140;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11198;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11199;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11216;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11217;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11258;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11261;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11263;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11284;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11288;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11289;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11318;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11319;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11322;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11323;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11324;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11328;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11517;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11518;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11519;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11520;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11611;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11620;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11621;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11624;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11701;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11704;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11706;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11720;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11750;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11776;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11793;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11794;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11796;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11810;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11812;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11829;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11833;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11835;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11857;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11858;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11872;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11874;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11936;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12127;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12196;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12218;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12236;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12247;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12257;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12322;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12384;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12616;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12696;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12722;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12723;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12724;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12737;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12759;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12778;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12779;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12780;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12781;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12784;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12785;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12788;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12789;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12790;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12791;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12793;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12794;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=12795;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12836;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12837;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12860;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12866;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12876;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12902;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12940;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12944;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=13085;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=13159;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=13177;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=13533;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=13839;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14277;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14282;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14357;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14448;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14544;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14545;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14738;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14739;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14740;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14741;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14844;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14845;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14846;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14847;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14865;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=15192;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=15214;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15397;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15420;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15716;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16257;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16258;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16261;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16277;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16279;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16280;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16444;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16646;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16648;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16649;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16651;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16652;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16653;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16654;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16655;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16657;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16658;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16659;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16660;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16712;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16713;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16714;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16719;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16721;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16724;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16726;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16728;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16731;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16738;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16740;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16743;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16745;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16747;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16748;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16750;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16751;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16752;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16753;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16757;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16762;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16763;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16771;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16774;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=16800;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16860;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=17076;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17121;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17122;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17200;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17201;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17219;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17504;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17505;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17510;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17511;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17513;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17656;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18044;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18106;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18197;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18300;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18301;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18490;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18812;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18813;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18892;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18915;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18916;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18917;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18918;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18919;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=18985;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19022;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19023;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19024;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19025;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19026;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19369;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19555;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19778;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=19848;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=19850;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=19909;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=20382;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=20386;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=20914;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=21019;
UPDATE `creature_template` SET `type_flags`=16778240 WHERE `entry`=22515;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=22841;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=22956;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=22957;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=22959;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=22962;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=22964;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=22965;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23018;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23047;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23049;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23083;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23196;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23216;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23222;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23223;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23232;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23235;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23236;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23237;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23239;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23318;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23319;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=23398;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23399;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=23418;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=23419;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=23420;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=23421;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23524;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23953;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=24886;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=25608;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=26172;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=26200;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=26310;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=27461;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=27485;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27613;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27648;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27649;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=27946;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29093;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=30290;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=31151;
UPDATE `creature_template` SET `type_flags`=16777216 WHERE `entry`=31216;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=31747;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=32475;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=32492;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=33213;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=33236;
UPDATE `creature_template` SET `type_flags`=8388608 WHERE `entry`=33238;
UPDATE `creature_template` SET `type_flags`=8388608 WHERE `entry`=33239;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=33242;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=33572;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=34038;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=34043;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=34060;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=34063;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=34075;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=34078;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=34081;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=34084;
UPDATE `creature_template` SET `type_flags`=1032 WHERE `entry`=34192;
UPDATE `creature_template` SET `type_flags`=1036 WHERE `entry`=34660;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=34854;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=34990;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=34992;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=34994;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=34995;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=35321;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=35368;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=35372;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=35469;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=35470;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=36065;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=36066;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36108;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36109;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36114;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36116;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36118;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36119;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36120;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36121;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36122;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=36124;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=38113;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=38472;
UPDATE `creature_template` SET `type_flags`=1100 WHERE `entry`=38569;
UPDATE `creature_template` SET `type_flags`=1088 WHERE `entry`=39010;

# cyrex
UPDATE creature_template SET MovementType=1 WHERE entry=24051;
UPDATE creature SET MovementType=1, spawndist=10, spawntimesecs=600 WHERE id=24051;
INSERT INTO creature VALUES (99477,24957,571,1,1,0,572,4344.98,4583.42,19.9123,5.66011,25,0,0,7432,7332,0,0);
INSERT INTO creature VALUES (99478,24957,571,1,1,0,572,4341.25,4573.31,20.1673,0.0955476,25,0,0,7185,7196,0,0);
INSERT INTO creature VALUES (99480,24957,571,1,1,0,572,4345.98,4562.95,18.8727,0.947704,25,0,0,7432,7332,0,0);
INSERT INTO creature VALUES (99481,24957,571,1,1,0,572,4356.04,4560.47,17.029,1.64671,25,0,0,7185,7196,0,0);
INSERT INTO creature VALUES (99482,24957,571,1,1,0,572,4366.19,4565.98,15.4213,2.46352,25,0,0,7432,7332,0,0);
INSERT INTO creature VALUES (99483,24957,571,1,1,0,572,4369.58,4577.38,16.115,3.2607,25,0,0,7185,7196,0,0);
INSERT INTO creature VALUES (99484,24957,571,1,1,0,572,4364.13,4585.62,17.8484,4.01861,25,0,0,7432,7332,0,0);
INSERT INTO creature VALUES (99485,24957,571,1,1,0,572,4354.05,4589,19.6206,4.91396,25,0,0,7185,7196,0,0);
UPDATE creature SET position_x = '3842.281494', position_y = '6404.874512', position_z = '23.341894', orientation = '1.198838' WHERE guid = '118351';
DELETE FROM creature WHERE guid = '78928';
INSERT INTO creature VALUES (78928,24954,571,1,1,0,0,4181.43,4073.84,97.5966,2.54971,25,0,0,8982,0,0,0);
INSERT INTO creature VALUES (99486,25615,571,1,1,0,0,4341.82,4273.56,101.021,5.74629,25,0,0,9291,0,0,0);
INSERT INTO creature VALUES (99487,25615,571,1,1,0,0,4299.27,4313.2,92.6171,3.28799,25,0,0,9291,0,0,0);
INSERT INTO creature VALUES (99488,25615,571,1,1,0,0,4302.42,4377.5,77.6347,1.42974,25,0,0,8982,0,0,0);
INSERT INTO creature VALUES (99489,25615,571,1,1,0,0,4286.95,4400.82,63.4086,1.9858,25,0,0,9291,0,0,0);
INSERT INTO creature VALUES (99490,24957,571,1,1,0,572,4200.71,4056.26,92.3468,0.366302,25,0,0,7432,7332,0,0);
INSERT INTO gameobject VALUES (847, 187879, 571, 1,1,4206.76, 4057.48, 91.6417, 2.38871, 0, 0, 0.929978, 0.367615, 25, 0, 1);
INSERT INTO creature VALUES (99549,25654,571,1,1,0,0,4204.39,4058.83,91.8113,2.58034,25,0,0,1,0,0,0);
UPDATE creature SET position_x = '4416.097656', position_y = '4548.213867', position_z = '24.505850', orientation = '3.140025' WHERE guid = '78929';
UPDATE creature SET position_x = '4330.031250', position_y = '4539.717285', position_z = '22.761909', orientation = '0.794563' WHERE guid = '118321';
UPDATE `quest_template` SET `ReqSpellCast1` = '0' WHERE `entry` =11244;
DELETE FROM creature WHERE guid = '71972';

# NeatElves
UPDATE `creature_template` SET `InhabitType` = '5' WHERE `entry` =24169;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(44122, 186566, 571, 1, 1, 961.142, -4891.02, 4.84553, 1.68765, 0, 0, 0.747192, 0.664608, 0, 100, 0);
DELETE FROM `creature` WHERE `guid` = 127748;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(98158, 24089, 571, 1, 1, 0, 0, 1049.12, -4893.32, 11.232, 4.68533, 1200, 0, 0, 6326, 0, 0, 0),
(117239, 24088, 571, 1, 1, 0, 0, 974.056, -5019.94, 7.91702, 0.966908, 600, 0, 0, 5588, 6882, 0, 0),
(117241, 24088, 571, 1, 1, 0, 0, 1012.41, -4797.66, -0.893695, 4.85514, 600, 0, 0, 5588, 6882, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` in (19921,19833);
UPDATE `quest_template` SET `PrevQuestId` = '13231' WHERE `entry` =13233;

# cyrex
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (57502, 57506, 57505, 57501, 57500, 57499, 57503, 57504, 57509, 57498, 83247, 57487, 57491, 57492, 57493, 57479, 57496);
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (83195, 83202, 83206, 83205, 83196, 83207, 83149, 83146, 83148, 83147, 83155, 83156, 83157, 83158, 83167, 83166, 83165, 83174, 83175, 83179, 83225, 83223, 83218, 83220, 83224, 83239, 83238, 83236, 83241, 83171, 83245, 83194, 83184, 83183, 83192, 83159, 83164, 83163, 83187, 83176, 83188, 83177);
DELETE FROM creature WHERE guid = '77858';
DELETE FROM creature WHERE guid = '77857';
INSERT INTO creature VALUES (77857,21725,530,1,1,0,0,-3418.23,2288.49,33.552,1.82852,25,0,0,6986,0,0,0);
INSERT INTO creature VALUES (77858,20878,530,1,1,0,1565,-3417.57,2290.27,33.6206,4.90492,25,0,0,6500,0,0,0);
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (73127, 73070, 73108, 73122, 72783, 73107, 72791, 72789, 72788, 72795, 72796, 72790, 73105, 73106, 73073, 72792, 73078, 73102, 73120, 73119, 73116, 73103, 73071, 73094, 72786, 73121, 73121, 73091, 72782, 73068, 73066, 72797, 72803, 72777, 72802, 72787, 72800, 72799, 72794, 72801, 73077, 73125, 73074, 73090, 73091, 73115, 73071, 73094, 73072, 73092, 72786, 73097, 73059, 73058, 73057, 73061, 73099, 83261, 83262, 83260, 83263, 72772, 72807, 72809, 72808, 72806, 72771, 72770);
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (83907, 83909, 83910, 83906, 83908, 83913, 83911, 83919, 83915, 83916, 83943, 83953, 83861, 83866, 83947, 83947, 83942, 83941, 83946, 83951, 83944, 83948, 83951, 83976, 83974, 83973, 83956, 83955, 83960, 83957, 83961, 83949, 83959, 83950, 83964, 81145, 83950, 83972, 83971, 83969, 83966, 83965, 83970, 125939, 83967, 83862, 83945, 83962, 83963, 83968, 83970, 83954, 83958, 83827, 83825, 81153, 83826, 83829, 81127, 83828, 81144, 83832, 81143, 83833, 83836, 83839, 83838, 83830, 83835, 81152, 83834, 83837, 81143, 83840, 83841, 81148, 83847, 83848, 81149, 83846, 83845, 83856, 83860, 83857, 83854, 83858, 83855, 83844, 83852, 83851, 83843, 83851, 83849, 83850, 83853, 83859, 83863, 83864, 83865, 83923, 83929, 83928, 83917, 83922, 83914, 83927, 83918, 83921, 83924, 83931, 83922, 83934, 83933, 83932, 83930, 83925, 83873, 83874, 83920, 83873, 83935, 83924, 83892, 83877, 83871, 83872, 83876, 83878, 83937, 83936, 83905, 83932, 83933, 83912, 83879, 83899, 81140, 83901, 83898, 83897, 83900, 81140, 83894, 83896, 83773, 83891, 83890, 83885, 83889, 83775, 83887, 83886, 83888, 83887, 83774, 83779, 83883, 83781, 83776, 83777, 83779, 83778, 83886, 83775, 83887, 83885, 83888, 81151, 81150, 83881, 83884, 83780, 83782, 81141, 81147, 81146, 81142, 83831, 83841, 83840, 83842, 83952, 83975, 83868, 83869, 83069, 83893, 83895, 83870, 83875, 83880, 83882, 83902, 83938, 83940, 83904);
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (57724, 57725, 57698, 57727, 57726, 57723, 57722, 57671, 57670, 57686, 57673, 57695, 57708, 57653, 57651, 57652, 57647, 57650, 57646, 57702, 57701, 57639, 57636, 57694, 57693, 57687, 57638, 57668, 57669, 57688, 57689, 57674, 57687, 57637, 57655, 57641, 57633, 57635, 57626, 57629, 57630, 57635, 57631, 57679, 57707, 57663, 57667, 57644);
DELETE FROM creature WHERE guid = '86772';
DELETE FROM creature WHERE guid = '5185';
DELETE FROM creature WHERE guid = '52874';
DELETE FROM creature WHERE guid = '6297';
DELETE FROM creature WHERE guid = '6300';
DELETE FROM creature WHERE guid = '46396';
DELETE FROM creature WHERE guid = '53186';
DELETE FROM creature WHERE guid = '53327';
DELETE FROM creature WHERE guid = '91549';
DELETE FROM creature WHERE guid = '45368';
DELETE FROM creature WHERE guid = '52528';
DELETE FROM creature WHERE guid = '59679';
DELETE FROM creature WHERE guid = '68787';
DELETE FROM creature WHERE guid = '57721';
DELETE FROM creature WHERE guid = '57773';
DELETE FROM creature WHERE guid = '83235';
DELETE FROM creature WHERE guid = '62056';
DELETE FROM creature WHERE guid = '77143';
DELETE FROM creature WHERE guid = '75886';
DELETE FROM creature WHERE guid = '61780';
DELETE FROM creature WHERE guid = '127827';
DELETE FROM creature WHERE guid = '96969';
DELETE FROM creature WHERE guid = '96970';
DELETE FROM creature WHERE guid = '96963';
DELETE FROM creature WHERE guid = '96964';
DELETE FROM creature WHERE guid = '96972';
DELETE FROM creature WHERE guid = '127750';
UPDATE creature_template SET InhabitType=4 WHERE entry=33687;
UPDATE creature SET position_x = '8024.620117', position_y = '2542.376221', position_z = '490.135864', orientation = '3.266051' WHERE guid = '127749';
DELETE FROM creature WHERE guid = '72784';
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (58046, 58040, 58049, 58044, 58027, 58028, 58041, 58039, 58026, 58038, 58045, 58053, 57765, 58072, 58054, 58051, 58055, 58058, 57798, 58057, 57796, 58056, 57795, 58023, 58025, 58024, 58030, 58029, 58048, 58047, 57800, 58059, 58060, 58052, 57793, 58008, 57781, 57787, 57785, 57786, 57790, 57778, 57777, 57776, 57775, 58118, 58117, 57777, 57778, 57782, 58107, 57774, 58108, 58109, 58114, 57772, 58116, 57771, 57770, 57767, 58120, 58119, 58124, 58125, 58128, 58128, 58126, 58127, 58110, 58078, 58079, 58100, 58101, 58073, 58102, 58074, 57769, 57768, 58098, 58160, 58148, 58149, 58150, 58152, 58151, 58148, 58092, 58141, 58099, 58156, 58152, 58151, 58150, 58154, 58149, 58153, 58155, 58093, 58096, 58090, 58089, 58179, 58175, 58085, 58163, 58165, 58161, 58164, 58087, 58178, 58180, 58176, 58177, 58166, 58174, 58173, 58082, 58080, 58081, 58076, 58077);
UPDATE creature SET position_x = '6301.175781', position_y = '3880.066650', position_z = '176.295273', orientation = '2.484022' WHERE guid = '97036';
UPDATE creature SET spawndist=0, MovementType=0 WHERE id=18256;
UPDATE creature SET spawndist=0, MovementType=0 WHERE id=18192;
UPDATE creature SET position_x = '-1539.338623', position_y = '7974.664551', position_z = '-20.692247', orientation = '2.757575' WHERE guid = '75885';

# NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(88488, 24091, 571, 1, 1, 0, 0, 960.89, -4890.85, 4.87979, 1.66704, 360, 0, 0, 1, 0, 0, 0);
UPDATE `quest_template` SET `ReqSourceId1` = '46106' WHERE `ReqSourceId1` = '45759';
DELETE FROM `creature` WHERE `guid` = 136674;
UPDATE `creature_template` SET `equipment_id` = '33698' WHERE `entry` =33448;
UPDATE `creature_template` SET `equipment_id` = '33698' WHERE `entry` =33785;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES ('33448', '28918', '0', '0', '0', '0', NULL);
INSERT INTO `creature_template_addon` ( `entry` , `mount` , `bytes1` , `bytes2` , `emote` , `moveflags` , `auras` ) VALUES ('33785', '28652', '0', '0', '0', '0', NULL);
UPDATE `creature_template` SET `gossip_menu_id` = '33447' WHERE `entry` =33447;
UPDATE `creature_template` SET `gossip_menu_id` = '33518' WHERE `entry` =33518;
UPDATE `creature_template` SET `gossip_menu_id` = '33522' WHERE `entry` =33522;
UPDATE `creature_template` SET `npcflag` = '1' WHERE `entry` in (33522,33447,33518) ;
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`) VALUES 
(33447, 14407, 0, 0, 0, 0, 0, 0),
(33518, 14335, 0, 0, 0, 0, 0, 0),
(33522, 14409, 0, 0, 0, 0, 0, 0),
(50102, 14476, 0, 0, 0, 0, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES 
(33447, 0, 0, 'I am ready to fight!', 1, 1, 0, 0, 33447, 0, 0, NULL, 9, 13679, 0, 3, 46106, 0, 0, 0, 0),
(33447, 1, 0, 'How do the Argent Crusade riders fight?', 1, 1, 50102, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33518, 0, 0, 'I am ready to fight!', 1, 1, 0, 0, 50102, 0, 0, NULL, 9, 13699, 0, 3, 46106, 0, 0, 0, 0),
(33518, 1, 0, 'I am ready to fight!', 1, 1, 0, 0, 50102, 0, 0, NULL, 9, 13725, 0, 3, 46106, 0, 0, 0, 0),
(33447, 2, 0, 'I am ready to fight!', 1, 1, 0, 0, 33447, 0, 0, NULL, 9, 13680, 0, 3, 46106, 0, 0, 0, 0),
(33518, 2, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13727, 0, 3, 46106, 0, 0, 0, 0),
(33518, 3, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13731, 0, 3, 46106, 0, 0, 0, 0),
(33518, 4, 0, 'I am ready to fight!', 1, 1, 0, 0, 50102, 0, 0, NULL, 9, 13713, 0, 3, 46106, 0, 0, 0, 0),
(33518, 5, 0, 'I am ready to fight!', 1, 1, 0, 0, 50102, 0, 0, NULL, 9, 13724, 0, 3, 46106, 0, 0, 0, 0),
(33518, 6, 0, 'I am ready to fight!', 1, 1, 0, 0, 50102, 0, 0, NULL, 9, 13723, 0, 3, 46106, 0, 0, 0, 0),
(33518, 7, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13729, 0, 3, 46106, 0, 0, 0, 0),
(33518, 8, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13728, 0, 3, 46106, 0, 0, 0, 0),
(33518, 9, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13726, 0, 3, 46106, 0, 0, 0, 0),
(33522, 0, 0, 'Ask Cavin to summon the Black Knight.', 1, 1, 0, 0, 33522, 0, 0, NULL, 9, 13664, 0, 3, 46106, 0, 0, 0, 0);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(33447, 5, 10, 33448, 120000, 0, 8597.7, 975.342, 547.554, 4.92668),
(33518, 5, 10, 30188, 120000, 0, 8541.93, 1112.28, 556.788, 0.187584),
(50102, 5, 10, 30675, 120000, 0, 8541.93, 1112.28, 556.788, 0.187584),
(33522, 5, 10, 33785, 120000, 0, 8430.85, 953.204, 544.674, 1.48);
DELETE FROM `npc_text` WHERE `ID` = 16777215;

# Release
UPDATE `gameobject` SET `position_z` = 70.5565 WHERE `guid` = 81096;

# NeatElves
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(12268, 2553, 0, 1, 1, -10357.7, -2748.2, 17.3933, 5.14083, 0, 0, 0.540623, -0.841265, 0, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(8366, 2555, 1, 1, 1, -4348.84, -2607.37, 38.3388, 4.506, 0, 0, 0.776185, -0.630505, 0, 100, 1);
DELETE FROM `npc_vendor` WHERE `item` = 21815;
DELETE FROM `npc_vendor` WHERE `item` = 21833;
DELETE FROM `npc_vendor` WHERE `item` = 21829;
DELETE FROM `creature_questrelation` WHERE `quest` in (8903,8904);
DELETE FROM `creature_involvedrelation` WHERE `quest` in (8903,8904);

# cyrex
INSERT INTO creature VALUES (114719,29236,571,1,1,0,844,6526.62,-4481.5,458.131,6.28097,25,0,0,11379,0,0,0);
INSERT INTO creature VALUES (86622,29236,571,1,1,0,844,6454.12,-4552.14,458.131,4.82798,25,0,0,11379,0,0,0);
INSERT INTO creature VALUES (86623,29236,571,1,1,0,844,6372.64,-4470.2,458.13,3.08046,25,0,0,11379,0,0,0);
INSERT INTO creature VALUES (86624,29236,571,1,1,0,844,6443.78,-4398.35,458.13,1.48218,25,0,0,11001,0,0,0);
INSERT INTO creature VALUES (86625,29237,571,1,1,0,845,6485.58,-4536.4,458.13,5.58039,25,0,0,8800,8139,0,0);
INSERT INTO creature VALUES (99550,29237,571,1,1,0,845,6510.31,-4506,458.13,5.62358,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (99551,29237,571,1,1,0,845,6528.93,-4435.62,458.131,2.32177,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (99552,29237,571,1,1,0,845,6528.86,-4410.29,458.13,3.84152,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (99553,29237,571,1,1,0,845,6514.21,-4395.98,458.13,3.92006,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (99554,29237,571,1,1,0,845,6486.46,-4394.05,458.13,5.51834,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (99555,29237,571,1,1,0,845,6389.05,-4441.05,458.13,2.39479,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (99556,29237,571,1,1,0,845,6416.36,-4417.37,458.13,2.39872,25,0,0,8800,8139,0,0);
INSERT INTO creature VALUES (99557,29236,571,1,1,0,844,6378.44,-4511.88,458.13,4.03233,25,0,0,11001,0,0,0);
INSERT INTO creature VALUES (99558,29236,571,1,1,0,844,6411.04,-4547.02,458.13,3.84777,25,0,0,11001,0,0,0);
INSERT INTO creature VALUES (99559,29334,571,1,1,0,0,6420.92,-4647.69,454.946,2.27854,25,0,0,11001,0,0,0);
INSERT INTO creature VALUES (99560,29334,571,1,1,0,0,6318.62,-4541.57,454.832,5.53402,25,0,0,11001,0,0,0);
INSERT INTO creature VALUES (101855,29237,571,1,1,0,845,6572.45,-4339.75,449.268,5.05335,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (101857,29237,571,1,1,0,845,6552.05,-4359.79,449.266,5.92906,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (96972,29237,571,1,1,0,845,6563.860352,-4389.757812,449.264984,0.863249,25,0,0,8800,8139,0,0);
INSERT INTO creature VALUES (71972,29237,571,1,1,0,845,6586.019043,-4391.883789,449.265350,1.911754,25,0,0,8800,8139,0,0);
INSERT INTO creature VALUES (127748,29237,571,1,1,0,845,6603.071777,-4373.704590,449.265198,2.920993,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (86772,29237,571,1,1,0,845,6601.468262,-4348.277344,449.263672,3.890961,25,0,0,8800,8139,0,0);
INSERT INTO creature VALUES (5185,29236,571,1,1,0,844,6580.28,-4366.05,449.265,4.70385,25,0,0,11379,0,0,0);
INSERT INTO creature VALUES (52874,29236,571,1,1,0,844,6580.22,-4373.19,449.265,1.51121,25,0,0,11001,0,0,0);
INSERT INTO creature VALUES (46396,29236,571,1,1,0,844,6601.91,-4466.62,450.597,2.44583,25,0,0,11379,0,0,0);
INSERT INTO creature VALUES (53186,29236,571,1,1,0,844,6602.03,-4536,452.598,3.82812,25,0,0,11001,0,0,0);
INSERT INTO creature VALUES (53327,29236,571,1,1,0,844,6670.79,-4537.92,451.608,5.38714,25,0,0,11001,0,0,0);
INSERT INTO creature VALUES (91549,29236,571,1,1,0,844,6667.37,-4473.93,451.634,0.851467,25,0,0,11379,0,0,0);
INSERT INTO creature VALUES (45368,29237,571,1,1,0,845,6641.8,-4479.74,474.44,0.755649,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (52528,29237,571,1,1,0,845,6659.88,-4498.8,474.441,0.771358,25,0,0,8800,8139,0,0);
INSERT INTO creature VALUES (59679,29237,571,1,1,0,845,6621.56,-4517.63,474.441,3.74801,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (127827,29237,571,1,1,0,845,6654.78,-4520.32,469.101,5.43662,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (127750,29237,571,1,1,0,845,6619.92,-4484.72,469.101,2.22042,25,0,0,9103,8313,0,0);
INSERT INTO creature VALUES (72784,29334,571,1,1,0,0,6589.47,-4613.47,450.522,2.35079,25,0,0,11379,0,0,0);

# Astoria
UPDATE creature SET position_x = '5804.161133', position_y = '631.893860', position_z = '647.495605', orientation = '0.144600' WHERE guid = '98373';
UPDATE creature SET position_x = '5806.567871', position_y = '632.181091', position_z = '647.503906', orientation = '3.266560' WHERE guid = '98372';

# Release
DELETE FROM `gameobject` WHERE (`guid`=20371);

# Krek
DELETE FROM `gameobject` WHERE `id`=176588;
DELETE FROM game_event_gameobject WHERE guid = '10235';
DELETE FROM game_event_gameobject WHERE guid = '10254';
DELETE FROM game_event_gameobject WHERE guid = '10282';
DELETE FROM game_event_gameobject WHERE guid = '10283';
DELETE FROM game_event_gameobject WHERE guid = '10284';
DELETE FROM game_event_gameobject WHERE guid = '10308';
DELETE FROM game_event_gameobject WHERE guid = '10428';
DELETE FROM game_event_gameobject WHERE guid = '10492';
DELETE FROM game_event_gameobject WHERE guid = '1054';
DELETE FROM game_event_gameobject WHERE guid = '10648';
DELETE FROM game_event_gameobject WHERE guid = '10658';
DELETE FROM game_event_gameobject WHERE guid = '10719';
DELETE FROM game_event_gameobject WHERE guid = '10763';
DELETE FROM game_event_gameobject WHERE guid = '10800';
DELETE FROM game_event_gameobject WHERE guid = '10837';
DELETE FROM game_event_gameobject WHERE guid = '10843';
DELETE FROM game_event_gameobject WHERE guid = '10887';
DELETE FROM game_event_gameobject WHERE guid = '10907';
DELETE FROM game_event_gameobject WHERE guid = '11005';
DELETE FROM game_event_gameobject WHERE guid = '11041';
DELETE FROM game_event_gameobject WHERE guid = '11044';
DELETE FROM game_event_gameobject WHERE guid = '11049';
DELETE FROM game_event_gameobject WHERE guid = '11050';
DELETE FROM game_event_gameobject WHERE guid = '1106';
DELETE FROM game_event_gameobject WHERE guid = '1107';
DELETE FROM game_event_gameobject WHERE guid = '1108';
DELETE FROM game_event_gameobject WHERE guid = '1109';
DELETE FROM game_event_gameobject WHERE guid = '11199';
DELETE FROM game_event_gameobject WHERE guid = '11219';
DELETE FROM game_event_gameobject WHERE guid = '11301';
DELETE FROM game_event_gameobject WHERE guid = '11326';
DELETE FROM game_event_gameobject WHERE guid = '11328';
DELETE FROM game_event_gameobject WHERE guid = '11360';
DELETE FROM game_event_gameobject WHERE guid = '1139';
DELETE FROM game_event_gameobject WHERE guid = '1141';
DELETE FROM game_event_gameobject WHERE guid = '11443';
DELETE FROM game_event_gameobject WHERE guid = '11493';
DELETE FROM game_event_gameobject WHERE guid = '11494';
DELETE FROM game_event_gameobject WHERE guid = '11516';
DELETE FROM game_event_gameobject WHERE guid = '11535';
DELETE FROM game_event_gameobject WHERE guid = '11554';
DELETE FROM game_event_gameobject WHERE guid = '11622';
DELETE FROM game_event_gameobject WHERE guid = '11641';
DELETE FROM game_event_gameobject WHERE guid = '11689';
DELETE FROM game_event_gameobject WHERE guid = '11737';
DELETE FROM game_event_gameobject WHERE guid = '11757';
DELETE FROM game_event_gameobject WHERE guid = '1184';
DELETE FROM game_event_gameobject WHERE guid = '11875';
DELETE FROM game_event_gameobject WHERE guid = '11946';
DELETE FROM game_event_gameobject WHERE guid = '12107';
DELETE FROM game_event_gameobject WHERE guid = '12214';
DELETE FROM game_event_gameobject WHERE guid = '12222';
DELETE FROM game_event_gameobject WHERE guid = '12292';
DELETE FROM game_event_gameobject WHERE guid = '1230';
DELETE FROM game_event_gameobject WHERE guid = '12381';
DELETE FROM game_event_gameobject WHERE guid = '12406';
DELETE FROM game_event_gameobject WHERE guid = '12448';
DELETE FROM game_event_gameobject WHERE guid = '12449';
DELETE FROM game_event_gameobject WHERE guid = '12506';
DELETE FROM game_event_gameobject WHERE guid = '12604';
DELETE FROM game_event_gameobject WHERE guid = '12608';
DELETE FROM game_event_gameobject WHERE guid = '12631';
DELETE FROM game_event_gameobject WHERE guid = '12695';
DELETE FROM game_event_gameobject WHERE guid = '12696';
DELETE FROM game_event_gameobject WHERE guid = '12698';
DELETE FROM game_event_gameobject WHERE guid = '12705';
DELETE FROM game_event_gameobject WHERE guid = '12707';
DELETE FROM game_event_gameobject WHERE guid = '12709';
DELETE FROM game_event_gameobject WHERE guid = '12742';
DELETE FROM game_event_gameobject WHERE guid = '12891';
DELETE FROM game_event_gameobject WHERE guid = '12894';
DELETE FROM game_event_gameobject WHERE guid = '12901';
DELETE FROM game_event_gameobject WHERE guid = '12902';
DELETE FROM game_event_gameobject WHERE guid = '12905';
DELETE FROM game_event_gameobject WHERE guid = '12976';
DELETE FROM game_event_gameobject WHERE guid = '12989';
DELETE FROM game_event_gameobject WHERE guid = '13059';
DELETE FROM game_event_gameobject WHERE guid = '13135';
DELETE FROM game_event_gameobject WHERE guid = '13136';
DELETE FROM game_event_gameobject WHERE guid = '13139';
DELETE FROM game_event_gameobject WHERE guid = '13176';
DELETE FROM game_event_gameobject WHERE guid = '13195';
DELETE FROM game_event_gameobject WHERE guid = '13206';
DELETE FROM game_event_gameobject WHERE guid = '13228';
DELETE FROM game_event_gameobject WHERE guid = '13247';
DELETE FROM game_event_gameobject WHERE guid = '13396';
DELETE FROM game_event_gameobject WHERE guid = '13397';
DELETE FROM game_event_gameobject WHERE guid = '1341';
DELETE FROM game_event_gameobject WHERE guid = '13441';
DELETE FROM game_event_gameobject WHERE guid = '13461';
DELETE FROM game_event_gameobject WHERE guid = '1347';
DELETE FROM game_event_gameobject WHERE guid = '13496';
DELETE FROM game_event_gameobject WHERE guid = '13512';
DELETE FROM game_event_gameobject WHERE guid = '13526';
DELETE FROM game_event_gameobject WHERE guid = '13527';
DELETE FROM game_event_gameobject WHERE guid = '13528';
DELETE FROM game_event_gameobject WHERE guid = '13533';
DELETE FROM game_event_gameobject WHERE guid = '13584';
DELETE FROM game_event_gameobject WHERE guid = '13585';
DELETE FROM game_event_gameobject WHERE guid = '13586';
DELETE FROM game_event_gameobject WHERE guid = '13690';
DELETE FROM game_event_gameobject WHERE guid = '13704';
DELETE FROM game_event_gameobject WHERE guid = '1379';
DELETE FROM game_event_gameobject WHERE guid = '13810';
DELETE FROM game_event_gameobject WHERE guid = '1386';
DELETE FROM game_event_gameobject WHERE guid = '13892';
DELETE FROM game_event_gameobject WHERE guid = '13965';
DELETE FROM game_event_gameobject WHERE guid = '13987';
DELETE FROM game_event_gameobject WHERE guid = '13988';
DELETE FROM game_event_gameobject WHERE guid = '14';
DELETE FROM game_event_gameobject WHERE guid = '14010';
DELETE FROM game_event_gameobject WHERE guid = '14200';
DELETE FROM game_event_gameobject WHERE guid = '14217';
DELETE FROM game_event_gameobject WHERE guid = '14220';
DELETE FROM game_event_gameobject WHERE guid = '14294';
DELETE FROM game_event_gameobject WHERE guid = '14389';
DELETE FROM game_event_gameobject WHERE guid = '14450';
DELETE FROM game_event_gameobject WHERE guid = '14461';
DELETE FROM game_event_gameobject WHERE guid = '14462';
DELETE FROM game_event_gameobject WHERE guid = '14463';
DELETE FROM game_event_gameobject WHERE guid = '14469';
DELETE FROM game_event_gameobject WHERE guid = '14471';
DELETE FROM game_event_gameobject WHERE guid = '14472';
DELETE FROM game_event_gameobject WHERE guid = '14473';
DELETE FROM game_event_gameobject WHERE guid = '14556';
DELETE FROM game_event_gameobject WHERE guid = '14586';
DELETE FROM game_event_gameobject WHERE guid = '14636';
DELETE FROM game_event_gameobject WHERE guid = '14656';
DELETE FROM game_event_gameobject WHERE guid = '14686';
DELETE FROM game_event_gameobject WHERE guid = '14732';
DELETE FROM game_event_gameobject WHERE guid = '14736';
DELETE FROM game_event_gameobject WHERE guid = '14746';
DELETE FROM game_event_gameobject WHERE guid = '14781';
DELETE FROM game_event_gameobject WHERE guid = '14800';
DELETE FROM game_event_gameobject WHERE guid = '14825';
DELETE FROM game_event_gameobject WHERE guid = '14835';
DELETE FROM game_event_gameobject WHERE guid = '14877';
DELETE FROM game_event_gameobject WHERE guid = '14884';
DELETE FROM game_event_gameobject WHERE guid = '14887';
DELETE FROM game_event_gameobject WHERE guid = '14989';
DELETE FROM game_event_gameobject WHERE guid = '15000';
DELETE FROM game_event_gameobject WHERE guid = '15073';
DELETE FROM game_event_gameobject WHERE guid = '15077';
DELETE FROM game_event_gameobject WHERE guid = '15084';
DELETE FROM game_event_gameobject WHERE guid = '15094';
DELETE FROM game_event_gameobject WHERE guid = '15103';
DELETE FROM game_event_gameobject WHERE guid = '15113';
DELETE FROM game_event_gameobject WHERE guid = '15136';
DELETE FROM game_event_gameobject WHERE guid = '15144';
DELETE FROM game_event_gameobject WHERE guid = '15155';
DELETE FROM game_event_gameobject WHERE guid = '15156';
DELETE FROM game_event_gameobject WHERE guid = '15238';
DELETE FROM game_event_gameobject WHERE guid = '15240';
DELETE FROM game_event_gameobject WHERE guid = '15241';
DELETE FROM game_event_gameobject WHERE guid = '15263';
DELETE FROM game_event_gameobject WHERE guid = '15310';
DELETE FROM game_event_gameobject WHERE guid = '15352';
DELETE FROM game_event_gameobject WHERE guid = '15353';
DELETE FROM game_event_gameobject WHERE guid = '15394';
DELETE FROM game_event_gameobject WHERE guid = '15446';
DELETE FROM game_event_gameobject WHERE guid = '15457';
DELETE FROM game_event_gameobject WHERE guid = '15480';
DELETE FROM game_event_gameobject WHERE guid = '15553';
DELETE FROM game_event_gameobject WHERE guid = '15564';
DELETE FROM game_event_gameobject WHERE guid = '15624';
DELETE FROM game_event_gameobject WHERE guid = '15745';
DELETE FROM game_event_gameobject WHERE guid = '15746';
DELETE FROM game_event_gameobject WHERE guid = '15747';
DELETE FROM game_event_gameobject WHERE guid = '15750';
DELETE FROM game_event_gameobject WHERE guid = '15751';
DELETE FROM game_event_gameobject WHERE guid = '15773';
DELETE FROM game_event_gameobject WHERE guid = '15774';
DELETE FROM game_event_gameobject WHERE guid = '15775';
DELETE FROM game_event_gameobject WHERE guid = '15778';
DELETE FROM game_event_gameobject WHERE guid = '15788';
DELETE FROM game_event_gameobject WHERE guid = '15851';
DELETE FROM game_event_gameobject WHERE guid = '15891';
DELETE FROM game_event_gameobject WHERE guid = '15963';
DELETE FROM game_event_gameobject WHERE guid = '15968';
DELETE FROM game_event_gameobject WHERE guid = '16033';
DELETE FROM game_event_gameobject WHERE guid = '16130';
DELETE FROM game_event_gameobject WHERE guid = '16135';
DELETE FROM game_event_gameobject WHERE guid = '16151';
DELETE FROM game_event_gameobject WHERE guid = '16152';
DELETE FROM game_event_gameobject WHERE guid = '16173';
DELETE FROM game_event_gameobject WHERE guid = '16193';
DELETE FROM game_event_gameobject WHERE guid = '16240';
DELETE FROM game_event_gameobject WHERE guid = '16243';
DELETE FROM game_event_gameobject WHERE guid = '16244';
DELETE FROM game_event_gameobject WHERE guid = '1629';
DELETE FROM game_event_gameobject WHERE guid = '16314';
DELETE FROM game_event_gameobject WHERE guid = '1634';
DELETE FROM game_event_gameobject WHERE guid = '16417';
DELETE FROM game_event_gameobject WHERE guid = '16450';
DELETE FROM game_event_gameobject WHERE guid = '16451';
DELETE FROM game_event_gameobject WHERE guid = '16455';
DELETE FROM game_event_gameobject WHERE guid = '16481';
DELETE FROM game_event_gameobject WHERE guid = '16520';
DELETE FROM game_event_gameobject WHERE guid = '16560';
DELETE FROM game_event_gameobject WHERE guid = '16635';
DELETE FROM game_event_gameobject WHERE guid = '16636';
DELETE FROM game_event_gameobject WHERE guid = '16638';
DELETE FROM game_event_gameobject WHERE guid = '16639';
DELETE FROM game_event_gameobject WHERE guid = '16640';
DELETE FROM game_event_gameobject WHERE guid = '16659';
DELETE FROM game_event_gameobject WHERE guid = '1667';
DELETE FROM game_event_gameobject WHERE guid = '16679';
DELETE FROM game_event_gameobject WHERE guid = '1669';
DELETE FROM game_event_gameobject WHERE guid = '16695';
DELETE FROM game_event_gameobject WHERE guid = '16696';
DELETE FROM game_event_gameobject WHERE guid = '16752';
DELETE FROM game_event_gameobject WHERE guid = '16790';
DELETE FROM game_event_gameobject WHERE guid = '16814';
DELETE FROM game_event_gameobject WHERE guid = '16850';
DELETE FROM game_event_gameobject WHERE guid = '16884';
DELETE FROM game_event_gameobject WHERE guid = '16892';
DELETE FROM game_event_gameobject WHERE guid = '16893';
DELETE FROM game_event_gameobject WHERE guid = '16928';
DELETE FROM game_event_gameobject WHERE guid = '16929';
DELETE FROM game_event_gameobject WHERE guid = '16930';
DELETE FROM game_event_gameobject WHERE guid = '16935';
DELETE FROM game_event_gameobject WHERE guid = '16936';
DELETE FROM game_event_gameobject WHERE guid = '16951';
DELETE FROM game_event_gameobject WHERE guid = '16971';
DELETE FROM game_event_gameobject WHERE guid = '17055';
DELETE FROM game_event_gameobject WHERE guid = '1764';
DELETE FROM game_event_gameobject WHERE guid = '1817';
DELETE FROM game_event_gameobject WHERE guid = '1818';
DELETE FROM game_event_gameobject WHERE guid = '1819';
DELETE FROM game_event_gameobject WHERE guid = '1820';
DELETE FROM game_event_gameobject WHERE guid = '1825';
DELETE FROM game_event_gameobject WHERE guid = '1828';
DELETE FROM game_event_gameobject WHERE guid = '1830';
DELETE FROM game_event_gameobject WHERE guid = '1831';
DELETE FROM game_event_gameobject WHERE guid = '1832';
DELETE FROM game_event_gameobject WHERE guid = '1834';
DELETE FROM game_event_gameobject WHERE guid = '1854';
DELETE FROM game_event_gameobject WHERE guid = '19167';
DELETE FROM game_event_gameobject WHERE guid = '1952';
DELETE FROM game_event_gameobject WHERE guid = '1954';
DELETE FROM game_event_gameobject WHERE guid = '1959';
DELETE FROM game_event_gameobject WHERE guid = '1963';
DELETE FROM game_event_gameobject WHERE guid = '19701';
DELETE FROM game_event_gameobject WHERE guid = '19711';
DELETE FROM game_event_gameobject WHERE guid = '19718';
DELETE FROM game_event_gameobject WHERE guid = '19721';
DELETE FROM game_event_gameobject WHERE guid = '1984';
DELETE FROM game_event_gameobject WHERE guid = '1985';
DELETE FROM game_event_gameobject WHERE guid = '1991';
DELETE FROM game_event_gameobject WHERE guid = '20086';
DELETE FROM game_event_gameobject WHERE guid = '20087';
DELETE FROM game_event_gameobject WHERE guid = '20088';
DELETE FROM game_event_gameobject WHERE guid = '20090';
DELETE FROM game_event_gameobject WHERE guid = '20092';
DELETE FROM game_event_gameobject WHERE guid = '20093';
DELETE FROM game_event_gameobject WHERE guid = '20094';
DELETE FROM game_event_gameobject WHERE guid = '20096';
DELETE FROM game_event_gameobject WHERE guid = '20097';
DELETE FROM game_event_gameobject WHERE guid = '20098';
DELETE FROM game_event_gameobject WHERE guid = '20099';
DELETE FROM game_event_gameobject WHERE guid = '20100';
DELETE FROM game_event_gameobject WHERE guid = '20101';
DELETE FROM game_event_gameobject WHERE guid = '20102';
DELETE FROM game_event_gameobject WHERE guid = '20103';
DELETE FROM game_event_gameobject WHERE guid = '20104';
DELETE FROM game_event_gameobject WHERE guid = '20105';
DELETE FROM game_event_gameobject WHERE guid = '20107';
DELETE FROM game_event_gameobject WHERE guid = '20108';
DELETE FROM game_event_gameobject WHERE guid = '20109';
DELETE FROM game_event_gameobject WHERE guid = '20110';
DELETE FROM game_event_gameobject WHERE guid = '20111';
DELETE FROM game_event_gameobject WHERE guid = '20113';
DELETE FROM game_event_gameobject WHERE guid = '20114';
DELETE FROM game_event_gameobject WHERE guid = '20115';
DELETE FROM game_event_gameobject WHERE guid = '20116';
DELETE FROM game_event_gameobject WHERE guid = '20117';
DELETE FROM game_event_gameobject WHERE guid = '20118';
DELETE FROM game_event_gameobject WHERE guid = '20119';
DELETE FROM game_event_gameobject WHERE guid = '20120';
DELETE FROM game_event_gameobject WHERE guid = '20121';
DELETE FROM game_event_gameobject WHERE guid = '20122';
DELETE FROM game_event_gameobject WHERE guid = '20123';
DELETE FROM game_event_gameobject WHERE guid = '20125';
DELETE FROM game_event_gameobject WHERE guid = '20126';
DELETE FROM game_event_gameobject WHERE guid = '20127';
DELETE FROM game_event_gameobject WHERE guid = '20128';
DELETE FROM game_event_gameobject WHERE guid = '20129';
DELETE FROM game_event_gameobject WHERE guid = '20130';
DELETE FROM game_event_gameobject WHERE guid = '20131';
DELETE FROM game_event_gameobject WHERE guid = '20132';
DELETE FROM game_event_gameobject WHERE guid = '20133';
DELETE FROM game_event_gameobject WHERE guid = '20134';
DELETE FROM game_event_gameobject WHERE guid = '20135';
DELETE FROM game_event_gameobject WHERE guid = '20136';
DELETE FROM game_event_gameobject WHERE guid = '20137';
DELETE FROM game_event_gameobject WHERE guid = '20139';
DELETE FROM game_event_gameobject WHERE guid = '20140';
DELETE FROM game_event_gameobject WHERE guid = '20141';
DELETE FROM game_event_gameobject WHERE guid = '20142';
DELETE FROM game_event_gameobject WHERE guid = '20143';
DELETE FROM game_event_gameobject WHERE guid = '20144';
DELETE FROM game_event_gameobject WHERE guid = '20145';
DELETE FROM game_event_gameobject WHERE guid = '20146';
DELETE FROM game_event_gameobject WHERE guid = '20147';
DELETE FROM game_event_gameobject WHERE guid = '20148';
DELETE FROM game_event_gameobject WHERE guid = '20149';
DELETE FROM game_event_gameobject WHERE guid = '20152';
DELETE FROM game_event_gameobject WHERE guid = '20153';
DELETE FROM game_event_gameobject WHERE guid = '20154';
DELETE FROM game_event_gameobject WHERE guid = '20155';
DELETE FROM game_event_gameobject WHERE guid = '20157';
DELETE FROM game_event_gameobject WHERE guid = '20158';
DELETE FROM game_event_gameobject WHERE guid = '20159';
DELETE FROM game_event_gameobject WHERE guid = '20161';
DELETE FROM game_event_gameobject WHERE guid = '20163';
DELETE FROM game_event_gameobject WHERE guid = '20165';
DELETE FROM game_event_gameobject WHERE guid = '20166';
DELETE FROM game_event_gameobject WHERE guid = '20167';
DELETE FROM game_event_gameobject WHERE guid = '20168';
DELETE FROM game_event_gameobject WHERE guid = '20169';
DELETE FROM game_event_gameobject WHERE guid = '20170';
DELETE FROM game_event_gameobject WHERE guid = '20172';
DELETE FROM game_event_gameobject WHERE guid = '20173';
DELETE FROM game_event_gameobject WHERE guid = '20174';
DELETE FROM game_event_gameobject WHERE guid = '20175';
DELETE FROM game_event_gameobject WHERE guid = '20176';
DELETE FROM game_event_gameobject WHERE guid = '20177';
DELETE FROM game_event_gameobject WHERE guid = '20178';
DELETE FROM game_event_gameobject WHERE guid = '20179';
DELETE FROM game_event_gameobject WHERE guid = '20180';
DELETE FROM game_event_gameobject WHERE guid = '20181';
DELETE FROM game_event_gameobject WHERE guid = '20182';
DELETE FROM game_event_gameobject WHERE guid = '20183';
DELETE FROM game_event_gameobject WHERE guid = '20184';
DELETE FROM game_event_gameobject WHERE guid = '20185';
DELETE FROM game_event_gameobject WHERE guid = '20186';
DELETE FROM game_event_gameobject WHERE guid = '20187';
DELETE FROM game_event_gameobject WHERE guid = '20188';
DELETE FROM game_event_gameobject WHERE guid = '20189';
DELETE FROM game_event_gameobject WHERE guid = '20190';
DELETE FROM game_event_gameobject WHERE guid = '20191';
DELETE FROM game_event_gameobject WHERE guid = '20192';
DELETE FROM game_event_gameobject WHERE guid = '20193';
DELETE FROM game_event_gameobject WHERE guid = '20194';
DELETE FROM game_event_gameobject WHERE guid = '20195';
DELETE FROM game_event_gameobject WHERE guid = '20196';
DELETE FROM game_event_gameobject WHERE guid = '20197';
DELETE FROM game_event_gameobject WHERE guid = '20198';
DELETE FROM game_event_gameobject WHERE guid = '20199';
DELETE FROM game_event_gameobject WHERE guid = '20200';
DELETE FROM game_event_gameobject WHERE guid = '20201';
DELETE FROM game_event_gameobject WHERE guid = '20203';
DELETE FROM game_event_gameobject WHERE guid = '20204';
DELETE FROM game_event_gameobject WHERE guid = '20207';
DELETE FROM game_event_gameobject WHERE guid = '20208';
DELETE FROM game_event_gameobject WHERE guid = '20212';
DELETE FROM game_event_gameobject WHERE guid = '20214';
DELETE FROM game_event_gameobject WHERE guid = '20533';
DELETE FROM game_event_gameobject WHERE guid = '20535';
DELETE FROM game_event_gameobject WHERE guid = '20538';
DELETE FROM game_event_gameobject WHERE guid = '20543';
DELETE FROM game_event_gameobject WHERE guid = '20547';
DELETE FROM game_event_gameobject WHERE guid = '20549';
DELETE FROM game_event_gameobject WHERE guid = '20550';
DELETE FROM game_event_gameobject WHERE guid = '20552';
DELETE FROM game_event_gameobject WHERE guid = '20553';
DELETE FROM game_event_gameobject WHERE guid = '20559';
DELETE FROM game_event_gameobject WHERE guid = '20606';
DELETE FROM game_event_gameobject WHERE guid = '20607';
DELETE FROM game_event_gameobject WHERE guid = '20609';
DELETE FROM game_event_gameobject WHERE guid = '20622';
DELETE FROM game_event_gameobject WHERE guid = '2090';
DELETE FROM game_event_gameobject WHERE guid = '2101';
DELETE FROM game_event_gameobject WHERE guid = '2148';
DELETE FROM game_event_gameobject WHERE guid = '2163';
DELETE FROM game_event_gameobject WHERE guid = '217';
DELETE FROM game_event_gameobject WHERE guid = '219';
DELETE FROM game_event_gameobject WHERE guid = '2258';
DELETE FROM game_event_gameobject WHERE guid = '2318';
DELETE FROM game_event_gameobject WHERE guid = '2320';
DELETE FROM game_event_gameobject WHERE guid = '2321';
DELETE FROM game_event_gameobject WHERE guid = '2322';
DELETE FROM game_event_gameobject WHERE guid = '2351';
DELETE FROM game_event_gameobject WHERE guid = '2352';
DELETE FROM game_event_gameobject WHERE guid = '2355';
DELETE FROM game_event_gameobject WHERE guid = '2375';
DELETE FROM game_event_gameobject WHERE guid = '2418';
DELETE FROM game_event_gameobject WHERE guid = '2426';
DELETE FROM game_event_gameobject WHERE guid = '2487';
DELETE FROM game_event_gameobject WHERE guid = '2554';
DELETE FROM game_event_gameobject WHERE guid = '256';
DELETE FROM game_event_gameobject WHERE guid = '257';
DELETE FROM game_event_gameobject WHERE guid = '259';
DELETE FROM game_event_gameobject WHERE guid = '2629';
DELETE FROM game_event_gameobject WHERE guid = '2638';
DELETE FROM game_event_gameobject WHERE guid = '2639';
DELETE FROM game_event_gameobject WHERE guid = '2641';
DELETE FROM game_event_gameobject WHERE guid = '2644';
DELETE FROM game_event_gameobject WHERE guid = '2645';
DELETE FROM game_event_gameobject WHERE guid = '2686';
DELETE FROM game_event_gameobject WHERE guid = '2705';
DELETE FROM game_event_gameobject WHERE guid = '2706';
DELETE FROM game_event_gameobject WHERE guid = '2729';
DELETE FROM game_event_gameobject WHERE guid = '273';
DELETE FROM game_event_gameobject WHERE guid = '2766';
DELETE FROM game_event_gameobject WHERE guid = '2852';
DELETE FROM game_event_gameobject WHERE guid = '2915';
DELETE FROM game_event_gameobject WHERE guid = '2920';
DELETE FROM game_event_gameobject WHERE guid = '2921';
DELETE FROM game_event_gameobject WHERE guid = '2936';
DELETE FROM game_event_gameobject WHERE guid = '2937';
DELETE FROM game_event_gameobject WHERE guid = '2938';
DELETE FROM game_event_gameobject WHERE guid = '2958';
DELETE FROM game_event_gameobject WHERE guid = '2975';
DELETE FROM game_event_gameobject WHERE guid = '3078';
DELETE FROM game_event_gameobject WHERE guid = '3156';
DELETE FROM game_event_gameobject WHERE guid = '31739';
DELETE FROM game_event_gameobject WHERE guid = '31740';
DELETE FROM game_event_gameobject WHERE guid = '31741';
DELETE FROM game_event_gameobject WHERE guid = '3182';
DELETE FROM game_event_gameobject WHERE guid = '3187';
DELETE FROM game_event_gameobject WHERE guid = '3199';
DELETE FROM game_event_gameobject WHERE guid = '3200';
DELETE FROM game_event_gameobject WHERE guid = '3214';
DELETE FROM game_event_gameobject WHERE guid = '3222';
DELETE FROM game_event_gameobject WHERE guid = '3423';
DELETE FROM game_event_gameobject WHERE guid = '3498';
DELETE FROM game_event_gameobject WHERE guid = '3510';
DELETE FROM game_event_gameobject WHERE guid = '3511';
DELETE FROM game_event_gameobject WHERE guid = '3515';
DELETE FROM game_event_gameobject WHERE guid = '3530';
DELETE FROM game_event_gameobject WHERE guid = '3533';
DELETE FROM game_event_gameobject WHERE guid = '3534';
DELETE FROM game_event_gameobject WHERE guid = '3549';
DELETE FROM game_event_gameobject WHERE guid = '3591';
DELETE FROM game_event_gameobject WHERE guid = '3602';
DELETE FROM game_event_gameobject WHERE guid = '3607';
DELETE FROM game_event_gameobject WHERE guid = '3609';
DELETE FROM game_event_gameobject WHERE guid = '3610';
DELETE FROM game_event_gameobject WHERE guid = '3785';
DELETE FROM game_event_gameobject WHERE guid = '3799';
DELETE FROM game_event_gameobject WHERE guid = '3872';
DELETE FROM game_event_gameobject WHERE guid = '3951';
DELETE FROM game_event_gameobject WHERE guid = '4008';
DELETE FROM game_event_gameobject WHERE guid = '4011';
DELETE FROM game_event_gameobject WHERE guid = '4123';
DELETE FROM game_event_gameobject WHERE guid = '414';
DELETE FROM game_event_gameobject WHERE guid = '4160';
DELETE FROM game_event_gameobject WHERE guid = '4166';
DELETE FROM game_event_gameobject WHERE guid = '4245';
DELETE FROM game_event_gameobject WHERE guid = '4253';
DELETE FROM game_event_gameobject WHERE guid = '4296';
DELETE FROM game_event_gameobject WHERE guid = '42985';
DELETE FROM game_event_gameobject WHERE guid = '43021';
DELETE FROM game_event_gameobject WHERE guid = '4306';
DELETE FROM game_event_gameobject WHERE guid = '4337';
DELETE FROM game_event_gameobject WHERE guid = '44063';
DELETE FROM game_event_gameobject WHERE guid = '4511';
DELETE FROM game_event_gameobject WHERE guid = '4525';
DELETE FROM game_event_gameobject WHERE guid = '4556';
DELETE FROM game_event_gameobject WHERE guid = '4569';
DELETE FROM game_event_gameobject WHERE guid = '4863';
DELETE FROM game_event_gameobject WHERE guid = '4911';
DELETE FROM game_event_gameobject WHERE guid = '4912';
DELETE FROM game_event_gameobject WHERE guid = '4926';
DELETE FROM game_event_gameobject WHERE guid = '4927';
DELETE FROM game_event_gameobject WHERE guid = '4949';
DELETE FROM game_event_gameobject WHERE guid = '4987';
DELETE FROM game_event_gameobject WHERE guid = '5018';
DELETE FROM game_event_gameobject WHERE guid = '5019';
DELETE FROM game_event_gameobject WHERE guid = '5021';
DELETE FROM game_event_gameobject WHERE guid = '5051';
DELETE FROM game_event_gameobject WHERE guid = '5053';
DELETE FROM game_event_gameobject WHERE guid = '5097';
DELETE FROM game_event_gameobject WHERE guid = '5098';
DELETE FROM game_event_gameobject WHERE guid = '5100';
DELETE FROM game_event_gameobject WHERE guid = '5101';
DELETE FROM game_event_gameobject WHERE guid = '5177';
DELETE FROM game_event_gameobject WHERE guid = '5187';
DELETE FROM game_event_gameobject WHERE guid = '5228';
DELETE FROM game_event_gameobject WHERE guid = '5252';
DELETE FROM game_event_gameobject WHERE guid = '5285';
DELETE FROM game_event_gameobject WHERE guid = '5379';
DELETE FROM game_event_gameobject WHERE guid = '5425';
DELETE FROM game_event_gameobject WHERE guid = '5504';
DELETE FROM game_event_gameobject WHERE guid = '5506';
DELETE FROM game_event_gameobject WHERE guid = '5537';
DELETE FROM game_event_gameobject WHERE guid = '564';
DELETE FROM game_event_gameobject WHERE guid = '5658';
DELETE FROM game_event_gameobject WHERE guid = '5715';
DELETE FROM game_event_gameobject WHERE guid = '5735';
DELETE FROM game_event_gameobject WHERE guid = '5749';
DELETE FROM game_event_gameobject WHERE guid = '5843';
DELETE FROM game_event_gameobject WHERE guid = '5845';
DELETE FROM game_event_gameobject WHERE guid = '5851';
DELETE FROM game_event_gameobject WHERE guid = '5852';
DELETE FROM game_event_gameobject WHERE guid = '595';
DELETE FROM game_event_gameobject WHERE guid = '5960';
DELETE FROM game_event_gameobject WHERE guid = '5967';
DELETE FROM game_event_gameobject WHERE guid = '6009';
DELETE FROM game_event_gameobject WHERE guid = '601';
DELETE FROM game_event_gameobject WHERE guid = '6017';
DELETE FROM game_event_gameobject WHERE guid = '602';
DELETE FROM game_event_gameobject WHERE guid = '6080';
DELETE FROM game_event_gameobject WHERE guid = '6081';
DELETE FROM game_event_gameobject WHERE guid = '6083';
DELETE FROM game_event_gameobject WHERE guid = '6090';
DELETE FROM game_event_gameobject WHERE guid = '612';
DELETE FROM game_event_gameobject WHERE guid = '6122';
DELETE FROM game_event_gameobject WHERE guid = '614';
DELETE FROM game_event_gameobject WHERE guid = '6159';
DELETE FROM game_event_gameobject WHERE guid = '6181';
DELETE FROM game_event_gameobject WHERE guid = '619';
DELETE FROM game_event_gameobject WHERE guid = '6330';
DELETE FROM game_event_gameobject WHERE guid = '635';
DELETE FROM game_event_gameobject WHERE guid = '636';
DELETE FROM game_event_gameobject WHERE guid = '6383';
DELETE FROM game_event_gameobject WHERE guid = '6484';
DELETE FROM game_event_gameobject WHERE guid = '6501';
DELETE FROM game_event_gameobject WHERE guid = '6509';
DELETE FROM game_event_gameobject WHERE guid = '6665';
DELETE FROM game_event_gameobject WHERE guid = '6666';
DELETE FROM game_event_gameobject WHERE guid = '6667';
DELETE FROM game_event_gameobject WHERE guid = '6668';
DELETE FROM game_event_gameobject WHERE guid = '6804';
DELETE FROM game_event_gameobject WHERE guid = '6812';
DELETE FROM game_event_gameobject WHERE guid = '6823';
DELETE FROM game_event_gameobject WHERE guid = '6910';
DELETE FROM game_event_gameobject WHERE guid = '697';
DELETE FROM game_event_gameobject WHERE guid = '7016';
DELETE FROM game_event_gameobject WHERE guid = '7119';
DELETE FROM game_event_gameobject WHERE guid = '7205';
DELETE FROM game_event_gameobject WHERE guid = '7225';
DELETE FROM game_event_gameobject WHERE guid = '7290';
DELETE FROM game_event_gameobject WHERE guid = '7326';
DELETE FROM game_event_gameobject WHERE guid = '7363';
DELETE FROM game_event_gameobject WHERE guid = '7365';
DELETE FROM game_event_gameobject WHERE guid = '7372';
DELETE FROM game_event_gameobject WHERE guid = '7392';
DELETE FROM game_event_gameobject WHERE guid = '7395';
DELETE FROM game_event_gameobject WHERE guid = '7423';
DELETE FROM game_event_gameobject WHERE guid = '747';
DELETE FROM game_event_gameobject WHERE guid = '7473';
DELETE FROM game_event_gameobject WHERE guid = '748';
DELETE FROM game_event_gameobject WHERE guid = '749';
DELETE FROM game_event_gameobject WHERE guid = '7544';
DELETE FROM game_event_gameobject WHERE guid = '7563';
DELETE FROM game_event_gameobject WHERE guid = '7588';
DELETE FROM game_event_gameobject WHERE guid = '7648';
DELETE FROM game_event_gameobject WHERE guid = '7651';
DELETE FROM game_event_gameobject WHERE guid = '7679';
DELETE FROM game_event_gameobject WHERE guid = '770';
DELETE FROM game_event_gameobject WHERE guid = '775';
DELETE FROM game_event_gameobject WHERE guid = '7783';
DELETE FROM game_event_gameobject WHERE guid = '7786';
DELETE FROM game_event_gameobject WHERE guid = '7809';
DELETE FROM game_event_gameobject WHERE guid = '7810';
DELETE FROM game_event_gameobject WHERE guid = '7811';
DELETE FROM game_event_gameobject WHERE guid = '7812';
DELETE FROM game_event_gameobject WHERE guid = '7821';
DELETE FROM game_event_gameobject WHERE guid = '7841';
DELETE FROM game_event_gameobject WHERE guid = '7859';
DELETE FROM game_event_gameobject WHERE guid = '7866';
DELETE FROM game_event_gameobject WHERE guid = '7873';
DELETE FROM game_event_gameobject WHERE guid = '794';
DELETE FROM game_event_gameobject WHERE guid = '795';
DELETE FROM game_event_gameobject WHERE guid = '7951';
DELETE FROM game_event_gameobject WHERE guid = '7964';
DELETE FROM game_event_gameobject WHERE guid = '7967';
DELETE FROM game_event_gameobject WHERE guid = '7968';
DELETE FROM game_event_gameobject WHERE guid = '7989';
DELETE FROM game_event_gameobject WHERE guid = '8004';
DELETE FROM game_event_gameobject WHERE guid = '808';
DELETE FROM game_event_gameobject WHERE guid = '810';
DELETE FROM game_event_gameobject WHERE guid = '8282';
DELETE FROM game_event_gameobject WHERE guid = '8368';
DELETE FROM game_event_gameobject WHERE guid = '8388';
DELETE FROM game_event_gameobject WHERE guid = '8432';
DELETE FROM game_event_gameobject WHERE guid = '8506';
DELETE FROM game_event_gameobject WHERE guid = '8706';
DELETE FROM game_event_gameobject WHERE guid = '8708';
DELETE FROM game_event_gameobject WHERE guid = '8759';
DELETE FROM game_event_gameobject WHERE guid = '88';
DELETE FROM game_event_gameobject WHERE guid = '8821';
DELETE FROM game_event_gameobject WHERE guid = '8839';
DELETE FROM game_event_gameobject WHERE guid = '8891';
DELETE FROM game_event_gameobject WHERE guid = '8906';
DELETE FROM game_event_gameobject WHERE guid = '8908';
DELETE FROM game_event_gameobject WHERE guid = '8932';
DELETE FROM game_event_gameobject WHERE guid = '8937';
DELETE FROM game_event_gameobject WHERE guid = '89631';
DELETE FROM game_event_gameobject WHERE guid = '8966';
DELETE FROM game_event_gameobject WHERE guid = '9040';
DELETE FROM game_event_gameobject WHERE guid = '906';
DELETE FROM game_event_gameobject WHERE guid = '9063';
DELETE FROM game_event_gameobject WHERE guid = '9065';
DELETE FROM game_event_gameobject WHERE guid = '9111';
DELETE FROM game_event_gameobject WHERE guid = '9127';
DELETE FROM game_event_gameobject WHERE guid = '9130';
DELETE FROM game_event_gameobject WHERE guid = '9131';
DELETE FROM game_event_gameobject WHERE guid = '9194';
DELETE FROM game_event_gameobject WHERE guid = '9202';
DELETE FROM game_event_gameobject WHERE guid = '9386';
DELETE FROM game_event_gameobject WHERE guid = '9472';
DELETE FROM game_event_gameobject WHERE guid = '9488';
DELETE FROM game_event_gameobject WHERE guid = '9607';
DELETE FROM game_event_gameobject WHERE guid = '9632';
DELETE FROM game_event_gameobject WHERE guid = '9694';
DELETE FROM game_event_gameobject WHERE guid = '9710';
DELETE FROM game_event_gameobject WHERE guid = '9711';
DELETE FROM game_event_gameobject WHERE guid = '9712';
DELETE FROM game_event_gameobject WHERE guid = '9713';
DELETE FROM game_event_gameobject WHERE guid = '9714';
DELETE FROM game_event_gameobject WHERE guid = '9853';
DELETE FROM game_event_gameobject WHERE guid = '9856';
DELETE FROM game_event_gameobject WHERE guid = '9857';
DELETE FROM game_event_gameobject WHERE guid = '9858';
DELETE FROM game_event_gameobject WHERE guid = '9866';
DELETE FROM game_event_gameobject WHERE guid = '9881';
DELETE FROM game_event_gameobject WHERE guid = '9930';
DELETE FROM game_event_gameobject WHERE guid = '9940';
DELETE FROM gameobject WHERE guid = '10235';
DELETE FROM gameobject WHERE guid = '10254';
DELETE FROM gameobject WHERE guid = '10282';
DELETE FROM gameobject WHERE guid = '10283';
DELETE FROM gameobject WHERE guid = '10284';
DELETE FROM gameobject WHERE guid = '10308';
DELETE FROM gameobject WHERE guid = '10428';
DELETE FROM gameobject WHERE guid = '10492';
DELETE FROM gameobject WHERE guid = '1054';
DELETE FROM gameobject WHERE guid = '10648';
DELETE FROM gameobject WHERE guid = '10658';
DELETE FROM gameobject WHERE guid = '10719';
DELETE FROM gameobject WHERE guid = '10763';
DELETE FROM gameobject WHERE guid = '10800';
DELETE FROM gameobject WHERE guid = '10837';
DELETE FROM gameobject WHERE guid = '10843';
DELETE FROM gameobject WHERE guid = '10887';
DELETE FROM gameobject WHERE guid = '10907';
DELETE FROM gameobject WHERE guid = '11005';
DELETE FROM gameobject WHERE guid = '11041';
DELETE FROM gameobject WHERE guid = '11044';
DELETE FROM gameobject WHERE guid = '11049';
DELETE FROM gameobject WHERE guid = '11050';
DELETE FROM gameobject WHERE guid = '1106';
DELETE FROM gameobject WHERE guid = '1107';
DELETE FROM gameobject WHERE guid = '1108';
DELETE FROM gameobject WHERE guid = '1109';
DELETE FROM gameobject WHERE guid = '11199';
DELETE FROM gameobject WHERE guid = '11219';
DELETE FROM gameobject WHERE guid = '11301';
DELETE FROM gameobject WHERE guid = '11326';
DELETE FROM gameobject WHERE guid = '11328';
DELETE FROM gameobject WHERE guid = '11360';
DELETE FROM gameobject WHERE guid = '1139';
DELETE FROM gameobject WHERE guid = '1141';
DELETE FROM gameobject WHERE guid = '11443';
DELETE FROM gameobject WHERE guid = '11493';
DELETE FROM gameobject WHERE guid = '11494';
DELETE FROM gameobject WHERE guid = '11516';
DELETE FROM gameobject WHERE guid = '11535';
DELETE FROM gameobject WHERE guid = '11554';
DELETE FROM gameobject WHERE guid = '11622';
DELETE FROM gameobject WHERE guid = '11641';
DELETE FROM gameobject WHERE guid = '11689';
DELETE FROM gameobject WHERE guid = '11737';
DELETE FROM gameobject WHERE guid = '11757';
DELETE FROM gameobject WHERE guid = '1184';
DELETE FROM gameobject WHERE guid = '11875';
DELETE FROM gameobject WHERE guid = '11946';
DELETE FROM gameobject WHERE guid = '12107';
DELETE FROM gameobject WHERE guid = '12214';
DELETE FROM gameobject WHERE guid = '12222';
DELETE FROM gameobject WHERE guid = '12292';
DELETE FROM gameobject WHERE guid = '1230';
DELETE FROM gameobject WHERE guid = '12381';
DELETE FROM gameobject WHERE guid = '12406';
DELETE FROM gameobject WHERE guid = '12448';
DELETE FROM gameobject WHERE guid = '12449';
DELETE FROM gameobject WHERE guid = '12506';
DELETE FROM gameobject WHERE guid = '12604';
DELETE FROM gameobject WHERE guid = '12608';
DELETE FROM gameobject WHERE guid = '12631';
DELETE FROM gameobject WHERE guid = '12695';
DELETE FROM gameobject WHERE guid = '12696';
DELETE FROM gameobject WHERE guid = '12698';
DELETE FROM gameobject WHERE guid = '12705';
DELETE FROM gameobject WHERE guid = '12707';
DELETE FROM gameobject WHERE guid = '12709';
DELETE FROM gameobject WHERE guid = '12742';
DELETE FROM gameobject WHERE guid = '12891';
DELETE FROM gameobject WHERE guid = '12894';
DELETE FROM gameobject WHERE guid = '12901';
DELETE FROM gameobject WHERE guid = '12902';
DELETE FROM gameobject WHERE guid = '12905';
DELETE FROM gameobject WHERE guid = '12976';
DELETE FROM gameobject WHERE guid = '12989';
DELETE FROM gameobject WHERE guid = '13059';
DELETE FROM gameobject WHERE guid = '13135';
DELETE FROM gameobject WHERE guid = '13136';
DELETE FROM gameobject WHERE guid = '13139';
DELETE FROM gameobject WHERE guid = '13176';
DELETE FROM gameobject WHERE guid = '13195';
DELETE FROM gameobject WHERE guid = '13206';
DELETE FROM gameobject WHERE guid = '13228';
DELETE FROM gameobject WHERE guid = '13247';
DELETE FROM gameobject WHERE guid = '13396';
DELETE FROM gameobject WHERE guid = '13397';
DELETE FROM gameobject WHERE guid = '1341';
DELETE FROM gameobject WHERE guid = '13441';
DELETE FROM gameobject WHERE guid = '13461';
DELETE FROM gameobject WHERE guid = '1347';
DELETE FROM gameobject WHERE guid = '13496';
DELETE FROM gameobject WHERE guid = '13512';
DELETE FROM gameobject WHERE guid = '13526';
DELETE FROM gameobject WHERE guid = '13527';
DELETE FROM gameobject WHERE guid = '13528';
DELETE FROM gameobject WHERE guid = '13533';
DELETE FROM gameobject WHERE guid = '13584';
DELETE FROM gameobject WHERE guid = '13585';
DELETE FROM gameobject WHERE guid = '13586';
DELETE FROM gameobject WHERE guid = '13690';
DELETE FROM gameobject WHERE guid = '13704';
DELETE FROM gameobject WHERE guid = '1379';
DELETE FROM gameobject WHERE guid = '13810';
DELETE FROM gameobject WHERE guid = '1386';
DELETE FROM gameobject WHERE guid = '13892';
DELETE FROM gameobject WHERE guid = '13965';
DELETE FROM gameobject WHERE guid = '13987';
DELETE FROM gameobject WHERE guid = '13988';
DELETE FROM gameobject WHERE guid = '14';
DELETE FROM gameobject WHERE guid = '14010';
DELETE FROM gameobject WHERE guid = '14200';
DELETE FROM gameobject WHERE guid = '14217';
DELETE FROM gameobject WHERE guid = '14220';
DELETE FROM gameobject WHERE guid = '14294';
DELETE FROM gameobject WHERE guid = '14389';
DELETE FROM gameobject WHERE guid = '14450';
DELETE FROM gameobject WHERE guid = '14461';
DELETE FROM gameobject WHERE guid = '14462';
DELETE FROM gameobject WHERE guid = '14463';
DELETE FROM gameobject WHERE guid = '14469';
DELETE FROM gameobject WHERE guid = '14471';
DELETE FROM gameobject WHERE guid = '14472';
DELETE FROM gameobject WHERE guid = '14473';
DELETE FROM gameobject WHERE guid = '14556';
DELETE FROM gameobject WHERE guid = '14586';
DELETE FROM gameobject WHERE guid = '14636';
DELETE FROM gameobject WHERE guid = '14656';
DELETE FROM gameobject WHERE guid = '14686';
DELETE FROM gameobject WHERE guid = '14732';
DELETE FROM gameobject WHERE guid = '14736';
DELETE FROM gameobject WHERE guid = '14746';
DELETE FROM gameobject WHERE guid = '14781';
DELETE FROM gameobject WHERE guid = '14800';
DELETE FROM gameobject WHERE guid = '14825';
DELETE FROM gameobject WHERE guid = '14835';
DELETE FROM gameobject WHERE guid = '14877';
DELETE FROM gameobject WHERE guid = '14884';
DELETE FROM gameobject WHERE guid = '14887';
DELETE FROM gameobject WHERE guid = '14989';
DELETE FROM gameobject WHERE guid = '15000';
DELETE FROM gameobject WHERE guid = '15073';
DELETE FROM gameobject WHERE guid = '15077';
DELETE FROM gameobject WHERE guid = '15084';
DELETE FROM gameobject WHERE guid = '15094';
DELETE FROM gameobject WHERE guid = '15103';
DELETE FROM gameobject WHERE guid = '15113';
DELETE FROM gameobject WHERE guid = '15136';
DELETE FROM gameobject WHERE guid = '15144';
DELETE FROM gameobject WHERE guid = '15155';
DELETE FROM gameobject WHERE guid = '15156';
DELETE FROM gameobject WHERE guid = '15238';
DELETE FROM gameobject WHERE guid = '15240';
DELETE FROM gameobject WHERE guid = '15241';
DELETE FROM gameobject WHERE guid = '15263';
DELETE FROM gameobject WHERE guid = '15310';
DELETE FROM gameobject WHERE guid = '15352';
DELETE FROM gameobject WHERE guid = '15353';
DELETE FROM gameobject WHERE guid = '15394';
DELETE FROM gameobject WHERE guid = '15446';
DELETE FROM gameobject WHERE guid = '15457';
DELETE FROM gameobject WHERE guid = '15480';
DELETE FROM gameobject WHERE guid = '15553';
DELETE FROM gameobject WHERE guid = '15564';
DELETE FROM gameobject WHERE guid = '15624';
DELETE FROM gameobject WHERE guid = '15745';
DELETE FROM gameobject WHERE guid = '15746';
DELETE FROM gameobject WHERE guid = '15747';
DELETE FROM gameobject WHERE guid = '15750';
DELETE FROM gameobject WHERE guid = '15751';
DELETE FROM gameobject WHERE guid = '15773';
DELETE FROM gameobject WHERE guid = '15774';
DELETE FROM gameobject WHERE guid = '15775';
DELETE FROM gameobject WHERE guid = '15778';
DELETE FROM gameobject WHERE guid = '15788';
DELETE FROM gameobject WHERE guid = '15851';
DELETE FROM gameobject WHERE guid = '15891';
DELETE FROM gameobject WHERE guid = '15963';
DELETE FROM gameobject WHERE guid = '15968';
DELETE FROM gameobject WHERE guid = '16033';
DELETE FROM gameobject WHERE guid = '16130';
DELETE FROM gameobject WHERE guid = '16135';
DELETE FROM gameobject WHERE guid = '16151';
DELETE FROM gameobject WHERE guid = '16152';
DELETE FROM gameobject WHERE guid = '16173';
DELETE FROM gameobject WHERE guid = '16193';
DELETE FROM gameobject WHERE guid = '16240';
DELETE FROM gameobject WHERE guid = '16243';
DELETE FROM gameobject WHERE guid = '16244';
DELETE FROM gameobject WHERE guid = '1629';
DELETE FROM gameobject WHERE guid = '16314';
DELETE FROM gameobject WHERE guid = '1634';
DELETE FROM gameobject WHERE guid = '16417';
DELETE FROM gameobject WHERE guid = '16450';
DELETE FROM gameobject WHERE guid = '16451';
DELETE FROM gameobject WHERE guid = '16455';
DELETE FROM gameobject WHERE guid = '16481';
DELETE FROM gameobject WHERE guid = '16520';
DELETE FROM gameobject WHERE guid = '16560';
DELETE FROM gameobject WHERE guid = '16635';
DELETE FROM gameobject WHERE guid = '16636';
DELETE FROM gameobject WHERE guid = '16638';
DELETE FROM gameobject WHERE guid = '16639';
DELETE FROM gameobject WHERE guid = '16640';
DELETE FROM gameobject WHERE guid = '16659';
DELETE FROM gameobject WHERE guid = '1667';
DELETE FROM gameobject WHERE guid = '16679';
DELETE FROM gameobject WHERE guid = '1669';
DELETE FROM gameobject WHERE guid = '16695';
DELETE FROM gameobject WHERE guid = '16696';
DELETE FROM gameobject WHERE guid = '16752';
DELETE FROM gameobject WHERE guid = '16790';
DELETE FROM gameobject WHERE guid = '16814';
DELETE FROM gameobject WHERE guid = '16850';
DELETE FROM gameobject WHERE guid = '16884';
DELETE FROM gameobject WHERE guid = '16892';
DELETE FROM gameobject WHERE guid = '16893';
DELETE FROM gameobject WHERE guid = '16928';
DELETE FROM gameobject WHERE guid = '16929';
DELETE FROM gameobject WHERE guid = '16930';
DELETE FROM gameobject WHERE guid = '16935';
DELETE FROM gameobject WHERE guid = '16936';
DELETE FROM gameobject WHERE guid = '16951';
DELETE FROM gameobject WHERE guid = '16971';
DELETE FROM gameobject WHERE guid = '17055';
DELETE FROM gameobject WHERE guid = '1764';
DELETE FROM gameobject WHERE guid = '1817';
DELETE FROM gameobject WHERE guid = '1818';
DELETE FROM gameobject WHERE guid = '1819';
DELETE FROM gameobject WHERE guid = '1820';
DELETE FROM gameobject WHERE guid = '1825';
DELETE FROM gameobject WHERE guid = '1828';
DELETE FROM gameobject WHERE guid = '1830';
DELETE FROM gameobject WHERE guid = '1831';
DELETE FROM gameobject WHERE guid = '1832';
DELETE FROM gameobject WHERE guid = '1834';
DELETE FROM gameobject WHERE guid = '1854';
DELETE FROM gameobject WHERE guid = '19167';
DELETE FROM gameobject WHERE guid = '1952';
DELETE FROM gameobject WHERE guid = '1954';
DELETE FROM gameobject WHERE guid = '1959';
DELETE FROM gameobject WHERE guid = '1963';
DELETE FROM gameobject WHERE guid = '19701';
DELETE FROM gameobject WHERE guid = '19711';
DELETE FROM gameobject WHERE guid = '19718';
DELETE FROM gameobject WHERE guid = '19721';
DELETE FROM gameobject WHERE guid = '1984';
DELETE FROM gameobject WHERE guid = '1985';
DELETE FROM gameobject WHERE guid = '1991';
DELETE FROM gameobject WHERE guid = '20086';
DELETE FROM gameobject WHERE guid = '20087';
DELETE FROM gameobject WHERE guid = '20088';
DELETE FROM gameobject WHERE guid = '20090';
DELETE FROM gameobject WHERE guid = '20092';
DELETE FROM gameobject WHERE guid = '20093';
DELETE FROM gameobject WHERE guid = '20094';
DELETE FROM gameobject WHERE guid = '20096';
DELETE FROM gameobject WHERE guid = '20097';
DELETE FROM gameobject WHERE guid = '20098';
DELETE FROM gameobject WHERE guid = '20099';
DELETE FROM gameobject WHERE guid = '20100';
DELETE FROM gameobject WHERE guid = '20101';
DELETE FROM gameobject WHERE guid = '20102';
DELETE FROM gameobject WHERE guid = '20103';
DELETE FROM gameobject WHERE guid = '20104';
DELETE FROM gameobject WHERE guid = '20105';
DELETE FROM gameobject WHERE guid = '20107';
DELETE FROM gameobject WHERE guid = '20108';
DELETE FROM gameobject WHERE guid = '20109';
DELETE FROM gameobject WHERE guid = '20110';
DELETE FROM gameobject WHERE guid = '20111';
DELETE FROM gameobject WHERE guid = '20113';
DELETE FROM gameobject WHERE guid = '20114';
DELETE FROM gameobject WHERE guid = '20115';
DELETE FROM gameobject WHERE guid = '20116';
DELETE FROM gameobject WHERE guid = '20117';
DELETE FROM gameobject WHERE guid = '20118';
DELETE FROM gameobject WHERE guid = '20119';
DELETE FROM gameobject WHERE guid = '20120';
DELETE FROM gameobject WHERE guid = '20121';
DELETE FROM gameobject WHERE guid = '20122';
DELETE FROM gameobject WHERE guid = '20123';
DELETE FROM gameobject WHERE guid = '20125';
DELETE FROM gameobject WHERE guid = '20126';
DELETE FROM gameobject WHERE guid = '20127';
DELETE FROM gameobject WHERE guid = '20128';
DELETE FROM gameobject WHERE guid = '20129';
DELETE FROM gameobject WHERE guid = '20130';
DELETE FROM gameobject WHERE guid = '20131';
DELETE FROM gameobject WHERE guid = '20132';
DELETE FROM gameobject WHERE guid = '20133';
DELETE FROM gameobject WHERE guid = '20134';
DELETE FROM gameobject WHERE guid = '20135';
DELETE FROM gameobject WHERE guid = '20136';
DELETE FROM gameobject WHERE guid = '20137';
DELETE FROM gameobject WHERE guid = '20139';
DELETE FROM gameobject WHERE guid = '20140';
DELETE FROM gameobject WHERE guid = '20141';
DELETE FROM gameobject WHERE guid = '20142';
DELETE FROM gameobject WHERE guid = '20143';
DELETE FROM gameobject WHERE guid = '20144';
DELETE FROM gameobject WHERE guid = '20145';
DELETE FROM gameobject WHERE guid = '20146';
DELETE FROM gameobject WHERE guid = '20147';
DELETE FROM gameobject WHERE guid = '20148';
DELETE FROM gameobject WHERE guid = '20149';
DELETE FROM gameobject WHERE guid = '20152';
DELETE FROM gameobject WHERE guid = '20153';
DELETE FROM gameobject WHERE guid = '20154';
DELETE FROM gameobject WHERE guid = '20155';
DELETE FROM gameobject WHERE guid = '20157';
DELETE FROM gameobject WHERE guid = '20158';
DELETE FROM gameobject WHERE guid = '20159';
DELETE FROM gameobject WHERE guid = '20161';
DELETE FROM gameobject WHERE guid = '20163';
DELETE FROM gameobject WHERE guid = '20165';
DELETE FROM gameobject WHERE guid = '20166';
DELETE FROM gameobject WHERE guid = '20167';
DELETE FROM gameobject WHERE guid = '20168';
DELETE FROM gameobject WHERE guid = '20169';
DELETE FROM gameobject WHERE guid = '20170';
DELETE FROM gameobject WHERE guid = '20172';
DELETE FROM gameobject WHERE guid = '20173';
DELETE FROM gameobject WHERE guid = '20174';
DELETE FROM gameobject WHERE guid = '20175';
DELETE FROM gameobject WHERE guid = '20176';
DELETE FROM gameobject WHERE guid = '20177';
DELETE FROM gameobject WHERE guid = '20178';
DELETE FROM gameobject WHERE guid = '20179';
DELETE FROM gameobject WHERE guid = '20180';
DELETE FROM gameobject WHERE guid = '20181';
DELETE FROM gameobject WHERE guid = '20182';
DELETE FROM gameobject WHERE guid = '20183';
DELETE FROM gameobject WHERE guid = '20184';
DELETE FROM gameobject WHERE guid = '20185';
DELETE FROM gameobject WHERE guid = '20186';
DELETE FROM gameobject WHERE guid = '20187';
DELETE FROM gameobject WHERE guid = '20188';
DELETE FROM gameobject WHERE guid = '20189';
DELETE FROM gameobject WHERE guid = '20190';
DELETE FROM gameobject WHERE guid = '20191';
DELETE FROM gameobject WHERE guid = '20192';
DELETE FROM gameobject WHERE guid = '20193';
DELETE FROM gameobject WHERE guid = '20194';
DELETE FROM gameobject WHERE guid = '20195';
DELETE FROM gameobject WHERE guid = '20196';
DELETE FROM gameobject WHERE guid = '20197';
DELETE FROM gameobject WHERE guid = '20198';
DELETE FROM gameobject WHERE guid = '20199';
DELETE FROM gameobject WHERE guid = '20200';
DELETE FROM gameobject WHERE guid = '20201';
DELETE FROM gameobject WHERE guid = '20203';
DELETE FROM gameobject WHERE guid = '20204';
DELETE FROM gameobject WHERE guid = '20207';
DELETE FROM gameobject WHERE guid = '20208';
DELETE FROM gameobject WHERE guid = '20212';
DELETE FROM gameobject WHERE guid = '20214';
DELETE FROM gameobject WHERE guid = '20533';
DELETE FROM gameobject WHERE guid = '20535';
DELETE FROM gameobject WHERE guid = '20538';
DELETE FROM gameobject WHERE guid = '20543';
DELETE FROM gameobject WHERE guid = '20547';
DELETE FROM gameobject WHERE guid = '20549';
DELETE FROM gameobject WHERE guid = '20550';
DELETE FROM gameobject WHERE guid = '20552';
DELETE FROM gameobject WHERE guid = '20553';
DELETE FROM gameobject WHERE guid = '20559';
DELETE FROM gameobject WHERE guid = '20606';
DELETE FROM gameobject WHERE guid = '20607';
DELETE FROM gameobject WHERE guid = '20609';
DELETE FROM gameobject WHERE guid = '20622';
DELETE FROM gameobject WHERE guid = '2090';
DELETE FROM gameobject WHERE guid = '2101';
DELETE FROM gameobject WHERE guid = '2148';
DELETE FROM gameobject WHERE guid = '2163';
DELETE FROM gameobject WHERE guid = '217';
DELETE FROM gameobject WHERE guid = '219';
DELETE FROM gameobject WHERE guid = '2258';
DELETE FROM gameobject WHERE guid = '2318';
DELETE FROM gameobject WHERE guid = '2320';
DELETE FROM gameobject WHERE guid = '2321';
DELETE FROM gameobject WHERE guid = '2322';
DELETE FROM gameobject WHERE guid = '2351';
DELETE FROM gameobject WHERE guid = '2352';
DELETE FROM gameobject WHERE guid = '2355';
DELETE FROM gameobject WHERE guid = '2375';
DELETE FROM gameobject WHERE guid = '2418';
DELETE FROM gameobject WHERE guid = '2426';
DELETE FROM gameobject WHERE guid = '2487';
DELETE FROM gameobject WHERE guid = '2554';
DELETE FROM gameobject WHERE guid = '256';
DELETE FROM gameobject WHERE guid = '257';
DELETE FROM gameobject WHERE guid = '259';
DELETE FROM gameobject WHERE guid = '2629';
DELETE FROM gameobject WHERE guid = '2638';
DELETE FROM gameobject WHERE guid = '2639';
DELETE FROM gameobject WHERE guid = '2641';
DELETE FROM gameobject WHERE guid = '2644';
DELETE FROM gameobject WHERE guid = '2645';
DELETE FROM gameobject WHERE guid = '2686';
DELETE FROM gameobject WHERE guid = '2705';
DELETE FROM gameobject WHERE guid = '2706';
DELETE FROM gameobject WHERE guid = '2729';
DELETE FROM gameobject WHERE guid = '273';
DELETE FROM gameobject WHERE guid = '2766';
DELETE FROM gameobject WHERE guid = '2852';
DELETE FROM gameobject WHERE guid = '2915';
DELETE FROM gameobject WHERE guid = '2920';
DELETE FROM gameobject WHERE guid = '2921';
DELETE FROM gameobject WHERE guid = '2936';
DELETE FROM gameobject WHERE guid = '2937';
DELETE FROM gameobject WHERE guid = '2938';
DELETE FROM gameobject WHERE guid = '2958';
DELETE FROM gameobject WHERE guid = '2975';
DELETE FROM gameobject WHERE guid = '3078';
DELETE FROM gameobject WHERE guid = '3156';
DELETE FROM gameobject WHERE guid = '31739';
DELETE FROM gameobject WHERE guid = '31740';
DELETE FROM gameobject WHERE guid = '31741';
DELETE FROM gameobject WHERE guid = '3182';
DELETE FROM gameobject WHERE guid = '3187';
DELETE FROM gameobject WHERE guid = '3199';
DELETE FROM gameobject WHERE guid = '3200';
DELETE FROM gameobject WHERE guid = '3214';
DELETE FROM gameobject WHERE guid = '3222';
DELETE FROM gameobject WHERE guid = '3423';
DELETE FROM gameobject WHERE guid = '3498';
DELETE FROM gameobject WHERE guid = '3510';
DELETE FROM gameobject WHERE guid = '3511';
DELETE FROM gameobject WHERE guid = '3515';
DELETE FROM gameobject WHERE guid = '3530';
DELETE FROM gameobject WHERE guid = '3533';
DELETE FROM gameobject WHERE guid = '3534';
DELETE FROM gameobject WHERE guid = '3549';
DELETE FROM gameobject WHERE guid = '3591';
DELETE FROM gameobject WHERE guid = '3602';
DELETE FROM gameobject WHERE guid = '3607';
DELETE FROM gameobject WHERE guid = '3609';
DELETE FROM gameobject WHERE guid = '3610';
DELETE FROM gameobject WHERE guid = '3785';
DELETE FROM gameobject WHERE guid = '3799';
DELETE FROM gameobject WHERE guid = '3872';
DELETE FROM gameobject WHERE guid = '3951';
DELETE FROM gameobject WHERE guid = '4008';
DELETE FROM gameobject WHERE guid = '4011';
DELETE FROM gameobject WHERE guid = '4123';
DELETE FROM gameobject WHERE guid = '414';
DELETE FROM gameobject WHERE guid = '4160';
DELETE FROM gameobject WHERE guid = '4166';
DELETE FROM gameobject WHERE guid = '4245';
DELETE FROM gameobject WHERE guid = '4253';
DELETE FROM gameobject WHERE guid = '4296';
DELETE FROM gameobject WHERE guid = '42985';
DELETE FROM gameobject WHERE guid = '43021';
DELETE FROM gameobject WHERE guid = '4306';
DELETE FROM gameobject WHERE guid = '4337';
DELETE FROM gameobject WHERE guid = '44063';
DELETE FROM gameobject WHERE guid = '4511';
DELETE FROM gameobject WHERE guid = '4525';
DELETE FROM gameobject WHERE guid = '4556';
DELETE FROM gameobject WHERE guid = '4569';
DELETE FROM gameobject WHERE guid = '4863';
DELETE FROM gameobject WHERE guid = '4911';
DELETE FROM gameobject WHERE guid = '4912';
DELETE FROM gameobject WHERE guid = '4926';
DELETE FROM gameobject WHERE guid = '4927';
DELETE FROM gameobject WHERE guid = '4949';
DELETE FROM gameobject WHERE guid = '4987';
DELETE FROM gameobject WHERE guid = '5018';
DELETE FROM gameobject WHERE guid = '5019';
DELETE FROM gameobject WHERE guid = '5021';
DELETE FROM gameobject WHERE guid = '5051';
DELETE FROM gameobject WHERE guid = '5053';
DELETE FROM gameobject WHERE guid = '5097';
DELETE FROM gameobject WHERE guid = '5098';
DELETE FROM gameobject WHERE guid = '5100';
DELETE FROM gameobject WHERE guid = '5101';
DELETE FROM gameobject WHERE guid = '5177';
DELETE FROM gameobject WHERE guid = '5187';
DELETE FROM gameobject WHERE guid = '5228';
DELETE FROM gameobject WHERE guid = '5252';
DELETE FROM gameobject WHERE guid = '5285';
DELETE FROM gameobject WHERE guid = '5379';
DELETE FROM gameobject WHERE guid = '5425';
DELETE FROM gameobject WHERE guid = '5504';
DELETE FROM gameobject WHERE guid = '5506';
DELETE FROM gameobject WHERE guid = '5537';
DELETE FROM gameobject WHERE guid = '564';
DELETE FROM gameobject WHERE guid = '5658';
DELETE FROM gameobject WHERE guid = '5715';
DELETE FROM gameobject WHERE guid = '5735';
DELETE FROM gameobject WHERE guid = '5749';
DELETE FROM gameobject WHERE guid = '5843';
DELETE FROM gameobject WHERE guid = '5845';
DELETE FROM gameobject WHERE guid = '5851';
DELETE FROM gameobject WHERE guid = '5852';
DELETE FROM gameobject WHERE guid = '595';
DELETE FROM gameobject WHERE guid = '5960';
DELETE FROM gameobject WHERE guid = '5967';
DELETE FROM gameobject WHERE guid = '6009';
DELETE FROM gameobject WHERE guid = '601';
DELETE FROM gameobject WHERE guid = '6017';
DELETE FROM gameobject WHERE guid = '602';
DELETE FROM gameobject WHERE guid = '6080';
DELETE FROM gameobject WHERE guid = '6081';
DELETE FROM gameobject WHERE guid = '6083';
DELETE FROM gameobject WHERE guid = '6090';
DELETE FROM gameobject WHERE guid = '612';
DELETE FROM gameobject WHERE guid = '6122';
DELETE FROM gameobject WHERE guid = '614';
DELETE FROM gameobject WHERE guid = '6159';
DELETE FROM gameobject WHERE guid = '6181';
DELETE FROM gameobject WHERE guid = '619';
DELETE FROM gameobject WHERE guid = '6330';
DELETE FROM gameobject WHERE guid = '635';
DELETE FROM gameobject WHERE guid = '636';
DELETE FROM gameobject WHERE guid = '6383';
DELETE FROM gameobject WHERE guid = '6484';
DELETE FROM gameobject WHERE guid = '6501';
DELETE FROM gameobject WHERE guid = '6509';
DELETE FROM gameobject WHERE guid = '6665';
DELETE FROM gameobject WHERE guid = '6666';
DELETE FROM gameobject WHERE guid = '6667';
DELETE FROM gameobject WHERE guid = '6668';
DELETE FROM gameobject WHERE guid = '6804';
DELETE FROM gameobject WHERE guid = '6812';
DELETE FROM gameobject WHERE guid = '6823';
DELETE FROM gameobject WHERE guid = '6910';
DELETE FROM gameobject WHERE guid = '697';
DELETE FROM gameobject WHERE guid = '7016';
DELETE FROM gameobject WHERE guid = '7119';
DELETE FROM gameobject WHERE guid = '7205';
DELETE FROM gameobject WHERE guid = '7225';
DELETE FROM gameobject WHERE guid = '7290';
DELETE FROM gameobject WHERE guid = '7326';
DELETE FROM gameobject WHERE guid = '7363';
DELETE FROM gameobject WHERE guid = '7365';
DELETE FROM gameobject WHERE guid = '7372';
DELETE FROM gameobject WHERE guid = '7392';
DELETE FROM gameobject WHERE guid = '7395';
DELETE FROM gameobject WHERE guid = '7423';
DELETE FROM gameobject WHERE guid = '747';
DELETE FROM gameobject WHERE guid = '7473';
DELETE FROM gameobject WHERE guid = '748';
DELETE FROM gameobject WHERE guid = '749';
DELETE FROM gameobject WHERE guid = '7544';
DELETE FROM gameobject WHERE guid = '7563';
DELETE FROM gameobject WHERE guid = '7588';
DELETE FROM gameobject WHERE guid = '7648';
DELETE FROM gameobject WHERE guid = '7651';
DELETE FROM gameobject WHERE guid = '7679';
DELETE FROM gameobject WHERE guid = '770';
DELETE FROM gameobject WHERE guid = '775';
DELETE FROM gameobject WHERE guid = '7783';
DELETE FROM gameobject WHERE guid = '7786';
DELETE FROM gameobject WHERE guid = '7809';
DELETE FROM gameobject WHERE guid = '7810';
DELETE FROM gameobject WHERE guid = '7811';
DELETE FROM gameobject WHERE guid = '7812';
DELETE FROM gameobject WHERE guid = '7821';
DELETE FROM gameobject WHERE guid = '7841';
DELETE FROM gameobject WHERE guid = '7859';
DELETE FROM gameobject WHERE guid = '7866';
DELETE FROM gameobject WHERE guid = '7873';
DELETE FROM gameobject WHERE guid = '794';
DELETE FROM gameobject WHERE guid = '795';
DELETE FROM gameobject WHERE guid = '7951';
DELETE FROM gameobject WHERE guid = '7964';
DELETE FROM gameobject WHERE guid = '7967';
DELETE FROM gameobject WHERE guid = '7968';
DELETE FROM gameobject WHERE guid = '7989';
DELETE FROM gameobject WHERE guid = '8004';
DELETE FROM gameobject WHERE guid = '808';
DELETE FROM gameobject WHERE guid = '810';
DELETE FROM gameobject WHERE guid = '8282';
DELETE FROM gameobject WHERE guid = '8368';
DELETE FROM gameobject WHERE guid = '8388';
DELETE FROM gameobject WHERE guid = '8432';
DELETE FROM gameobject WHERE guid = '8506';
DELETE FROM gameobject WHERE guid = '8706';
DELETE FROM gameobject WHERE guid = '8708';
DELETE FROM gameobject WHERE guid = '8759';
DELETE FROM gameobject WHERE guid = '88';
DELETE FROM gameobject WHERE guid = '8821';
DELETE FROM gameobject WHERE guid = '8839';
DELETE FROM gameobject WHERE guid = '8891';
DELETE FROM gameobject WHERE guid = '8906';
DELETE FROM gameobject WHERE guid = '8908';
DELETE FROM gameobject WHERE guid = '8932';
DELETE FROM gameobject WHERE guid = '8937';
DELETE FROM gameobject WHERE guid = '89631';
DELETE FROM gameobject WHERE guid = '8966';
DELETE FROM gameobject WHERE guid = '9040';
DELETE FROM gameobject WHERE guid = '906';
DELETE FROM gameobject WHERE guid = '9063';
DELETE FROM gameobject WHERE guid = '9065';
DELETE FROM gameobject WHERE guid = '9111';
DELETE FROM gameobject WHERE guid = '9127';
DELETE FROM gameobject WHERE guid = '9130';
DELETE FROM gameobject WHERE guid = '9131';
DELETE FROM gameobject WHERE guid = '9194';
DELETE FROM gameobject WHERE guid = '9202';
DELETE FROM gameobject WHERE guid = '9386';
DELETE FROM gameobject WHERE guid = '9472';
DELETE FROM gameobject WHERE guid = '9488';
DELETE FROM gameobject WHERE guid = '9607';
DELETE FROM gameobject WHERE guid = '9632';
DELETE FROM gameobject WHERE guid = '9694';
DELETE FROM gameobject WHERE guid = '9710';
DELETE FROM gameobject WHERE guid = '9711';
DELETE FROM gameobject WHERE guid = '9712';
DELETE FROM gameobject WHERE guid = '9713';
DELETE FROM gameobject WHERE guid = '9714';
DELETE FROM gameobject WHERE guid = '9853';
DELETE FROM gameobject WHERE guid = '9856';
DELETE FROM gameobject WHERE guid = '9857';
DELETE FROM gameobject WHERE guid = '9858';
DELETE FROM gameobject WHERE guid = '9866';
DELETE FROM gameobject WHERE guid = '9881';
DELETE FROM gameobject WHERE guid = '9930';
DELETE FROM gameobject WHERE guid = '9940';
DELETE FROM gameobject_battleground WHERE guid = '10235';
DELETE FROM gameobject_battleground WHERE guid = '10254';
DELETE FROM gameobject_battleground WHERE guid = '10282';
DELETE FROM gameobject_battleground WHERE guid = '10283';
DELETE FROM gameobject_battleground WHERE guid = '10284';
DELETE FROM gameobject_battleground WHERE guid = '10308';
DELETE FROM gameobject_battleground WHERE guid = '10428';
DELETE FROM gameobject_battleground WHERE guid = '10492';
DELETE FROM gameobject_battleground WHERE guid = '1054';
DELETE FROM gameobject_battleground WHERE guid = '10648';
DELETE FROM gameobject_battleground WHERE guid = '10658';
DELETE FROM gameobject_battleground WHERE guid = '10719';
DELETE FROM gameobject_battleground WHERE guid = '10763';
DELETE FROM gameobject_battleground WHERE guid = '10800';
DELETE FROM gameobject_battleground WHERE guid = '10837';
DELETE FROM gameobject_battleground WHERE guid = '10843';
DELETE FROM gameobject_battleground WHERE guid = '10887';
DELETE FROM gameobject_battleground WHERE guid = '10907';
DELETE FROM gameobject_battleground WHERE guid = '11005';
DELETE FROM gameobject_battleground WHERE guid = '11041';
DELETE FROM gameobject_battleground WHERE guid = '11044';
DELETE FROM gameobject_battleground WHERE guid = '11049';
DELETE FROM gameobject_battleground WHERE guid = '11050';
DELETE FROM gameobject_battleground WHERE guid = '1106';
DELETE FROM gameobject_battleground WHERE guid = '1107';
DELETE FROM gameobject_battleground WHERE guid = '1108';
DELETE FROM gameobject_battleground WHERE guid = '1109';
DELETE FROM gameobject_battleground WHERE guid = '11199';
DELETE FROM gameobject_battleground WHERE guid = '11219';
DELETE FROM gameobject_battleground WHERE guid = '11301';
DELETE FROM gameobject_battleground WHERE guid = '11326';
DELETE FROM gameobject_battleground WHERE guid = '11328';
DELETE FROM gameobject_battleground WHERE guid = '11360';
DELETE FROM gameobject_battleground WHERE guid = '1139';
DELETE FROM gameobject_battleground WHERE guid = '1141';
DELETE FROM gameobject_battleground WHERE guid = '11443';
DELETE FROM gameobject_battleground WHERE guid = '11493';
DELETE FROM gameobject_battleground WHERE guid = '11494';
DELETE FROM gameobject_battleground WHERE guid = '11516';
DELETE FROM gameobject_battleground WHERE guid = '11535';
DELETE FROM gameobject_battleground WHERE guid = '11554';
DELETE FROM gameobject_battleground WHERE guid = '11622';
DELETE FROM gameobject_battleground WHERE guid = '11641';
DELETE FROM gameobject_battleground WHERE guid = '11689';
DELETE FROM gameobject_battleground WHERE guid = '11737';
DELETE FROM gameobject_battleground WHERE guid = '11757';
DELETE FROM gameobject_battleground WHERE guid = '1184';
DELETE FROM gameobject_battleground WHERE guid = '11875';
DELETE FROM gameobject_battleground WHERE guid = '11946';
DELETE FROM gameobject_battleground WHERE guid = '12107';
DELETE FROM gameobject_battleground WHERE guid = '12214';
DELETE FROM gameobject_battleground WHERE guid = '12222';
DELETE FROM gameobject_battleground WHERE guid = '12292';
DELETE FROM gameobject_battleground WHERE guid = '1230';
DELETE FROM gameobject_battleground WHERE guid = '12381';
DELETE FROM gameobject_battleground WHERE guid = '12406';
DELETE FROM gameobject_battleground WHERE guid = '12448';
DELETE FROM gameobject_battleground WHERE guid = '12449';
DELETE FROM gameobject_battleground WHERE guid = '12506';
DELETE FROM gameobject_battleground WHERE guid = '12604';
DELETE FROM gameobject_battleground WHERE guid = '12608';
DELETE FROM gameobject_battleground WHERE guid = '12631';
DELETE FROM gameobject_battleground WHERE guid = '12695';
DELETE FROM gameobject_battleground WHERE guid = '12696';
DELETE FROM gameobject_battleground WHERE guid = '12698';
DELETE FROM gameobject_battleground WHERE guid = '12705';
DELETE FROM gameobject_battleground WHERE guid = '12707';
DELETE FROM gameobject_battleground WHERE guid = '12709';
DELETE FROM gameobject_battleground WHERE guid = '12742';
DELETE FROM gameobject_battleground WHERE guid = '12891';
DELETE FROM gameobject_battleground WHERE guid = '12894';
DELETE FROM gameobject_battleground WHERE guid = '12901';
DELETE FROM gameobject_battleground WHERE guid = '12902';
DELETE FROM gameobject_battleground WHERE guid = '12905';
DELETE FROM gameobject_battleground WHERE guid = '12976';
DELETE FROM gameobject_battleground WHERE guid = '12989';
DELETE FROM gameobject_battleground WHERE guid = '13059';
DELETE FROM gameobject_battleground WHERE guid = '13135';
DELETE FROM gameobject_battleground WHERE guid = '13136';
DELETE FROM gameobject_battleground WHERE guid = '13139';
DELETE FROM gameobject_battleground WHERE guid = '13176';
DELETE FROM gameobject_battleground WHERE guid = '13195';
DELETE FROM gameobject_battleground WHERE guid = '13206';
DELETE FROM gameobject_battleground WHERE guid = '13228';
DELETE FROM gameobject_battleground WHERE guid = '13247';
DELETE FROM gameobject_battleground WHERE guid = '13396';
DELETE FROM gameobject_battleground WHERE guid = '13397';
DELETE FROM gameobject_battleground WHERE guid = '1341';
DELETE FROM gameobject_battleground WHERE guid = '13441';
DELETE FROM gameobject_battleground WHERE guid = '13461';
DELETE FROM gameobject_battleground WHERE guid = '1347';
DELETE FROM gameobject_battleground WHERE guid = '13496';
DELETE FROM gameobject_battleground WHERE guid = '13512';
DELETE FROM gameobject_battleground WHERE guid = '13526';
DELETE FROM gameobject_battleground WHERE guid = '13527';
DELETE FROM gameobject_battleground WHERE guid = '13528';
DELETE FROM gameobject_battleground WHERE guid = '13533';
DELETE FROM gameobject_battleground WHERE guid = '13584';
DELETE FROM gameobject_battleground WHERE guid = '13585';
DELETE FROM gameobject_battleground WHERE guid = '13586';
DELETE FROM gameobject_battleground WHERE guid = '13690';
DELETE FROM gameobject_battleground WHERE guid = '13704';
DELETE FROM gameobject_battleground WHERE guid = '1379';
DELETE FROM gameobject_battleground WHERE guid = '13810';
DELETE FROM gameobject_battleground WHERE guid = '1386';
DELETE FROM gameobject_battleground WHERE guid = '13892';
DELETE FROM gameobject_battleground WHERE guid = '13965';
DELETE FROM gameobject_battleground WHERE guid = '13987';
DELETE FROM gameobject_battleground WHERE guid = '13988';
DELETE FROM gameobject_battleground WHERE guid = '14';
DELETE FROM gameobject_battleground WHERE guid = '14010';
DELETE FROM gameobject_battleground WHERE guid = '14200';
DELETE FROM gameobject_battleground WHERE guid = '14217';
DELETE FROM gameobject_battleground WHERE guid = '14220';
DELETE FROM gameobject_battleground WHERE guid = '14294';
DELETE FROM gameobject_battleground WHERE guid = '14389';
DELETE FROM gameobject_battleground WHERE guid = '14450';
DELETE FROM gameobject_battleground WHERE guid = '14461';
DELETE FROM gameobject_battleground WHERE guid = '14462';
DELETE FROM gameobject_battleground WHERE guid = '14463';
DELETE FROM gameobject_battleground WHERE guid = '14469';
DELETE FROM gameobject_battleground WHERE guid = '14471';
DELETE FROM gameobject_battleground WHERE guid = '14472';
DELETE FROM gameobject_battleground WHERE guid = '14473';
DELETE FROM gameobject_battleground WHERE guid = '14556';
DELETE FROM gameobject_battleground WHERE guid = '14586';
DELETE FROM gameobject_battleground WHERE guid = '14636';
DELETE FROM gameobject_battleground WHERE guid = '14656';
DELETE FROM gameobject_battleground WHERE guid = '14686';
DELETE FROM gameobject_battleground WHERE guid = '14732';
DELETE FROM gameobject_battleground WHERE guid = '14736';
DELETE FROM gameobject_battleground WHERE guid = '14746';
DELETE FROM gameobject_battleground WHERE guid = '14781';
DELETE FROM gameobject_battleground WHERE guid = '14800';
DELETE FROM gameobject_battleground WHERE guid = '14825';
DELETE FROM gameobject_battleground WHERE guid = '14835';
DELETE FROM gameobject_battleground WHERE guid = '14877';
DELETE FROM gameobject_battleground WHERE guid = '14884';
DELETE FROM gameobject_battleground WHERE guid = '14887';
DELETE FROM gameobject_battleground WHERE guid = '14989';
DELETE FROM gameobject_battleground WHERE guid = '15000';
DELETE FROM gameobject_battleground WHERE guid = '15073';
DELETE FROM gameobject_battleground WHERE guid = '15077';
DELETE FROM gameobject_battleground WHERE guid = '15084';
DELETE FROM gameobject_battleground WHERE guid = '15094';
DELETE FROM gameobject_battleground WHERE guid = '15103';
DELETE FROM gameobject_battleground WHERE guid = '15113';
DELETE FROM gameobject_battleground WHERE guid = '15136';
DELETE FROM gameobject_battleground WHERE guid = '15144';
DELETE FROM gameobject_battleground WHERE guid = '15155';
DELETE FROM gameobject_battleground WHERE guid = '15156';
DELETE FROM gameobject_battleground WHERE guid = '15238';
DELETE FROM gameobject_battleground WHERE guid = '15240';
DELETE FROM gameobject_battleground WHERE guid = '15241';
DELETE FROM gameobject_battleground WHERE guid = '15263';
DELETE FROM gameobject_battleground WHERE guid = '15310';
DELETE FROM gameobject_battleground WHERE guid = '15352';
DELETE FROM gameobject_battleground WHERE guid = '15353';
DELETE FROM gameobject_battleground WHERE guid = '15394';
DELETE FROM gameobject_battleground WHERE guid = '15446';
DELETE FROM gameobject_battleground WHERE guid = '15457';
DELETE FROM gameobject_battleground WHERE guid = '15480';
DELETE FROM gameobject_battleground WHERE guid = '15553';
DELETE FROM gameobject_battleground WHERE guid = '15564';
DELETE FROM gameobject_battleground WHERE guid = '15624';
DELETE FROM gameobject_battleground WHERE guid = '15745';
DELETE FROM gameobject_battleground WHERE guid = '15746';
DELETE FROM gameobject_battleground WHERE guid = '15747';
DELETE FROM gameobject_battleground WHERE guid = '15750';
DELETE FROM gameobject_battleground WHERE guid = '15751';
DELETE FROM gameobject_battleground WHERE guid = '15773';
DELETE FROM gameobject_battleground WHERE guid = '15774';
DELETE FROM gameobject_battleground WHERE guid = '15775';
DELETE FROM gameobject_battleground WHERE guid = '15778';
DELETE FROM gameobject_battleground WHERE guid = '15788';
DELETE FROM gameobject_battleground WHERE guid = '15851';
DELETE FROM gameobject_battleground WHERE guid = '15891';
DELETE FROM gameobject_battleground WHERE guid = '15963';
DELETE FROM gameobject_battleground WHERE guid = '15968';
DELETE FROM gameobject_battleground WHERE guid = '16033';
DELETE FROM gameobject_battleground WHERE guid = '16130';
DELETE FROM gameobject_battleground WHERE guid = '16135';
DELETE FROM gameobject_battleground WHERE guid = '16151';
DELETE FROM gameobject_battleground WHERE guid = '16152';
DELETE FROM gameobject_battleground WHERE guid = '16173';
DELETE FROM gameobject_battleground WHERE guid = '16193';
DELETE FROM gameobject_battleground WHERE guid = '16240';
DELETE FROM gameobject_battleground WHERE guid = '16243';
DELETE FROM gameobject_battleground WHERE guid = '16244';
DELETE FROM gameobject_battleground WHERE guid = '1629';
DELETE FROM gameobject_battleground WHERE guid = '16314';
DELETE FROM gameobject_battleground WHERE guid = '1634';
DELETE FROM gameobject_battleground WHERE guid = '16417';
DELETE FROM gameobject_battleground WHERE guid = '16450';
DELETE FROM gameobject_battleground WHERE guid = '16451';
DELETE FROM gameobject_battleground WHERE guid = '16455';
DELETE FROM gameobject_battleground WHERE guid = '16481';
DELETE FROM gameobject_battleground WHERE guid = '16520';
DELETE FROM gameobject_battleground WHERE guid = '16560';
DELETE FROM gameobject_battleground WHERE guid = '16635';
DELETE FROM gameobject_battleground WHERE guid = '16636';
DELETE FROM gameobject_battleground WHERE guid = '16638';
DELETE FROM gameobject_battleground WHERE guid = '16639';
DELETE FROM gameobject_battleground WHERE guid = '16640';
DELETE FROM gameobject_battleground WHERE guid = '16659';
DELETE FROM gameobject_battleground WHERE guid = '1667';
DELETE FROM gameobject_battleground WHERE guid = '16679';
DELETE FROM gameobject_battleground WHERE guid = '1669';
DELETE FROM gameobject_battleground WHERE guid = '16695';
DELETE FROM gameobject_battleground WHERE guid = '16696';
DELETE FROM gameobject_battleground WHERE guid = '16752';
DELETE FROM gameobject_battleground WHERE guid = '16790';
DELETE FROM gameobject_battleground WHERE guid = '16814';
DELETE FROM gameobject_battleground WHERE guid = '16850';
DELETE FROM gameobject_battleground WHERE guid = '16884';
DELETE FROM gameobject_battleground WHERE guid = '16892';
DELETE FROM gameobject_battleground WHERE guid = '16893';
DELETE FROM gameobject_battleground WHERE guid = '16928';
DELETE FROM gameobject_battleground WHERE guid = '16929';
DELETE FROM gameobject_battleground WHERE guid = '16930';
DELETE FROM gameobject_battleground WHERE guid = '16935';
DELETE FROM gameobject_battleground WHERE guid = '16936';
DELETE FROM gameobject_battleground WHERE guid = '16951';
DELETE FROM gameobject_battleground WHERE guid = '16971';
DELETE FROM gameobject_battleground WHERE guid = '17055';
DELETE FROM gameobject_battleground WHERE guid = '1764';
DELETE FROM gameobject_battleground WHERE guid = '1817';
DELETE FROM gameobject_battleground WHERE guid = '1818';
DELETE FROM gameobject_battleground WHERE guid = '1819';
DELETE FROM gameobject_battleground WHERE guid = '1820';
DELETE FROM gameobject_battleground WHERE guid = '1825';
DELETE FROM gameobject_battleground WHERE guid = '1828';
DELETE FROM gameobject_battleground WHERE guid = '1830';
DELETE FROM gameobject_battleground WHERE guid = '1831';
DELETE FROM gameobject_battleground WHERE guid = '1832';
DELETE FROM gameobject_battleground WHERE guid = '1834';
DELETE FROM gameobject_battleground WHERE guid = '1854';
DELETE FROM gameobject_battleground WHERE guid = '19167';
DELETE FROM gameobject_battleground WHERE guid = '1952';
DELETE FROM gameobject_battleground WHERE guid = '1954';
DELETE FROM gameobject_battleground WHERE guid = '1959';
DELETE FROM gameobject_battleground WHERE guid = '1963';
DELETE FROM gameobject_battleground WHERE guid = '19701';
DELETE FROM gameobject_battleground WHERE guid = '19711';
DELETE FROM gameobject_battleground WHERE guid = '19718';
DELETE FROM gameobject_battleground WHERE guid = '19721';
DELETE FROM gameobject_battleground WHERE guid = '1984';
DELETE FROM gameobject_battleground WHERE guid = '1985';
DELETE FROM gameobject_battleground WHERE guid = '1991';
DELETE FROM gameobject_battleground WHERE guid = '20086';
DELETE FROM gameobject_battleground WHERE guid = '20087';
DELETE FROM gameobject_battleground WHERE guid = '20088';
DELETE FROM gameobject_battleground WHERE guid = '20090';
DELETE FROM gameobject_battleground WHERE guid = '20092';
DELETE FROM gameobject_battleground WHERE guid = '20093';
DELETE FROM gameobject_battleground WHERE guid = '20094';
DELETE FROM gameobject_battleground WHERE guid = '20096';
DELETE FROM gameobject_battleground WHERE guid = '20097';
DELETE FROM gameobject_battleground WHERE guid = '20098';
DELETE FROM gameobject_battleground WHERE guid = '20099';
DELETE FROM gameobject_battleground WHERE guid = '20100';
DELETE FROM gameobject_battleground WHERE guid = '20101';
DELETE FROM gameobject_battleground WHERE guid = '20102';
DELETE FROM gameobject_battleground WHERE guid = '20103';
DELETE FROM gameobject_battleground WHERE guid = '20104';
DELETE FROM gameobject_battleground WHERE guid = '20105';
DELETE FROM gameobject_battleground WHERE guid = '20107';
DELETE FROM gameobject_battleground WHERE guid = '20108';
DELETE FROM gameobject_battleground WHERE guid = '20109';
DELETE FROM gameobject_battleground WHERE guid = '20110';
DELETE FROM gameobject_battleground WHERE guid = '20111';
DELETE FROM gameobject_battleground WHERE guid = '20113';
DELETE FROM gameobject_battleground WHERE guid = '20114';
DELETE FROM gameobject_battleground WHERE guid = '20115';
DELETE FROM gameobject_battleground WHERE guid = '20116';
DELETE FROM gameobject_battleground WHERE guid = '20117';
DELETE FROM gameobject_battleground WHERE guid = '20118';
DELETE FROM gameobject_battleground WHERE guid = '20119';
DELETE FROM gameobject_battleground WHERE guid = '20120';
DELETE FROM gameobject_battleground WHERE guid = '20121';
DELETE FROM gameobject_battleground WHERE guid = '20122';
DELETE FROM gameobject_battleground WHERE guid = '20123';
DELETE FROM gameobject_battleground WHERE guid = '20125';
DELETE FROM gameobject_battleground WHERE guid = '20126';
DELETE FROM gameobject_battleground WHERE guid = '20127';
DELETE FROM gameobject_battleground WHERE guid = '20128';
DELETE FROM gameobject_battleground WHERE guid = '20129';
DELETE FROM gameobject_battleground WHERE guid = '20130';
DELETE FROM gameobject_battleground WHERE guid = '20131';
DELETE FROM gameobject_battleground WHERE guid = '20132';
DELETE FROM gameobject_battleground WHERE guid = '20133';
DELETE FROM gameobject_battleground WHERE guid = '20134';
DELETE FROM gameobject_battleground WHERE guid = '20135';
DELETE FROM gameobject_battleground WHERE guid = '20136';
DELETE FROM gameobject_battleground WHERE guid = '20137';
DELETE FROM gameobject_battleground WHERE guid = '20139';
DELETE FROM gameobject_battleground WHERE guid = '20140';
DELETE FROM gameobject_battleground WHERE guid = '20141';
DELETE FROM gameobject_battleground WHERE guid = '20142';
DELETE FROM gameobject_battleground WHERE guid = '20143';
DELETE FROM gameobject_battleground WHERE guid = '20144';
DELETE FROM gameobject_battleground WHERE guid = '20145';
DELETE FROM gameobject_battleground WHERE guid = '20146';
DELETE FROM gameobject_battleground WHERE guid = '20147';
DELETE FROM gameobject_battleground WHERE guid = '20148';
DELETE FROM gameobject_battleground WHERE guid = '20149';
DELETE FROM gameobject_battleground WHERE guid = '20152';
DELETE FROM gameobject_battleground WHERE guid = '20153';
DELETE FROM gameobject_battleground WHERE guid = '20154';
DELETE FROM gameobject_battleground WHERE guid = '20155';
DELETE FROM gameobject_battleground WHERE guid = '20157';
DELETE FROM gameobject_battleground WHERE guid = '20158';
DELETE FROM gameobject_battleground WHERE guid = '20159';
DELETE FROM gameobject_battleground WHERE guid = '20161';
DELETE FROM gameobject_battleground WHERE guid = '20163';
DELETE FROM gameobject_battleground WHERE guid = '20165';
DELETE FROM gameobject_battleground WHERE guid = '20166';
DELETE FROM gameobject_battleground WHERE guid = '20167';
DELETE FROM gameobject_battleground WHERE guid = '20168';
DELETE FROM gameobject_battleground WHERE guid = '20169';
DELETE FROM gameobject_battleground WHERE guid = '20170';
DELETE FROM gameobject_battleground WHERE guid = '20172';
DELETE FROM gameobject_battleground WHERE guid = '20173';
DELETE FROM gameobject_battleground WHERE guid = '20174';
DELETE FROM gameobject_battleground WHERE guid = '20175';
DELETE FROM gameobject_battleground WHERE guid = '20176';
DELETE FROM gameobject_battleground WHERE guid = '20177';
DELETE FROM gameobject_battleground WHERE guid = '20178';
DELETE FROM gameobject_battleground WHERE guid = '20179';
DELETE FROM gameobject_battleground WHERE guid = '20180';
DELETE FROM gameobject_battleground WHERE guid = '20181';
DELETE FROM gameobject_battleground WHERE guid = '20182';
DELETE FROM gameobject_battleground WHERE guid = '20183';
DELETE FROM gameobject_battleground WHERE guid = '20184';
DELETE FROM gameobject_battleground WHERE guid = '20185';
DELETE FROM gameobject_battleground WHERE guid = '20186';
DELETE FROM gameobject_battleground WHERE guid = '20187';
DELETE FROM gameobject_battleground WHERE guid = '20188';
DELETE FROM gameobject_battleground WHERE guid = '20189';
DELETE FROM gameobject_battleground WHERE guid = '20190';
DELETE FROM gameobject_battleground WHERE guid = '20191';
DELETE FROM gameobject_battleground WHERE guid = '20192';
DELETE FROM gameobject_battleground WHERE guid = '20193';
DELETE FROM gameobject_battleground WHERE guid = '20194';
DELETE FROM gameobject_battleground WHERE guid = '20195';
DELETE FROM gameobject_battleground WHERE guid = '20196';
DELETE FROM gameobject_battleground WHERE guid = '20197';
DELETE FROM gameobject_battleground WHERE guid = '20198';
DELETE FROM gameobject_battleground WHERE guid = '20199';
DELETE FROM gameobject_battleground WHERE guid = '20200';
DELETE FROM gameobject_battleground WHERE guid = '20201';
DELETE FROM gameobject_battleground WHERE guid = '20203';
DELETE FROM gameobject_battleground WHERE guid = '20204';
DELETE FROM gameobject_battleground WHERE guid = '20207';
DELETE FROM gameobject_battleground WHERE guid = '20208';
DELETE FROM gameobject_battleground WHERE guid = '20212';
DELETE FROM gameobject_battleground WHERE guid = '20214';
DELETE FROM gameobject_battleground WHERE guid = '20533';
DELETE FROM gameobject_battleground WHERE guid = '20535';
DELETE FROM gameobject_battleground WHERE guid = '20538';
DELETE FROM gameobject_battleground WHERE guid = '20543';
DELETE FROM gameobject_battleground WHERE guid = '20547';
DELETE FROM gameobject_battleground WHERE guid = '20549';
DELETE FROM gameobject_battleground WHERE guid = '20550';
DELETE FROM gameobject_battleground WHERE guid = '20552';
DELETE FROM gameobject_battleground WHERE guid = '20553';
DELETE FROM gameobject_battleground WHERE guid = '20559';
DELETE FROM gameobject_battleground WHERE guid = '20606';
DELETE FROM gameobject_battleground WHERE guid = '20607';
DELETE FROM gameobject_battleground WHERE guid = '20609';
DELETE FROM gameobject_battleground WHERE guid = '20622';
DELETE FROM gameobject_battleground WHERE guid = '2090';
DELETE FROM gameobject_battleground WHERE guid = '2101';
DELETE FROM gameobject_battleground WHERE guid = '2148';
DELETE FROM gameobject_battleground WHERE guid = '2163';
DELETE FROM gameobject_battleground WHERE guid = '217';
DELETE FROM gameobject_battleground WHERE guid = '219';
DELETE FROM gameobject_battleground WHERE guid = '2258';
DELETE FROM gameobject_battleground WHERE guid = '2318';
DELETE FROM gameobject_battleground WHERE guid = '2320';
DELETE FROM gameobject_battleground WHERE guid = '2321';
DELETE FROM gameobject_battleground WHERE guid = '2322';
DELETE FROM gameobject_battleground WHERE guid = '2351';
DELETE FROM gameobject_battleground WHERE guid = '2352';
DELETE FROM gameobject_battleground WHERE guid = '2355';
DELETE FROM gameobject_battleground WHERE guid = '2375';
DELETE FROM gameobject_battleground WHERE guid = '2418';
DELETE FROM gameobject_battleground WHERE guid = '2426';
DELETE FROM gameobject_battleground WHERE guid = '2487';
DELETE FROM gameobject_battleground WHERE guid = '2554';
DELETE FROM gameobject_battleground WHERE guid = '256';
DELETE FROM gameobject_battleground WHERE guid = '257';
DELETE FROM gameobject_battleground WHERE guid = '259';
DELETE FROM gameobject_battleground WHERE guid = '2629';
DELETE FROM gameobject_battleground WHERE guid = '2638';
DELETE FROM gameobject_battleground WHERE guid = '2639';
DELETE FROM gameobject_battleground WHERE guid = '2641';
DELETE FROM gameobject_battleground WHERE guid = '2644';
DELETE FROM gameobject_battleground WHERE guid = '2645';
DELETE FROM gameobject_battleground WHERE guid = '2686';
DELETE FROM gameobject_battleground WHERE guid = '2705';
DELETE FROM gameobject_battleground WHERE guid = '2706';
DELETE FROM gameobject_battleground WHERE guid = '2729';
DELETE FROM gameobject_battleground WHERE guid = '273';
DELETE FROM gameobject_battleground WHERE guid = '2766';
DELETE FROM gameobject_battleground WHERE guid = '2852';
DELETE FROM gameobject_battleground WHERE guid = '2915';
DELETE FROM gameobject_battleground WHERE guid = '2920';
DELETE FROM gameobject_battleground WHERE guid = '2921';
DELETE FROM gameobject_battleground WHERE guid = '2936';
DELETE FROM gameobject_battleground WHERE guid = '2937';
DELETE FROM gameobject_battleground WHERE guid = '2938';
DELETE FROM gameobject_battleground WHERE guid = '2958';
DELETE FROM gameobject_battleground WHERE guid = '2975';
DELETE FROM gameobject_battleground WHERE guid = '3078';
DELETE FROM gameobject_battleground WHERE guid = '3156';
DELETE FROM gameobject_battleground WHERE guid = '31739';
DELETE FROM gameobject_battleground WHERE guid = '31740';
DELETE FROM gameobject_battleground WHERE guid = '31741';
DELETE FROM gameobject_battleground WHERE guid = '3182';
DELETE FROM gameobject_battleground WHERE guid = '3187';
DELETE FROM gameobject_battleground WHERE guid = '3199';
DELETE FROM gameobject_battleground WHERE guid = '3200';
DELETE FROM gameobject_battleground WHERE guid = '3214';
DELETE FROM gameobject_battleground WHERE guid = '3222';
DELETE FROM gameobject_battleground WHERE guid = '3423';
DELETE FROM gameobject_battleground WHERE guid = '3498';
DELETE FROM gameobject_battleground WHERE guid = '3510';
DELETE FROM gameobject_battleground WHERE guid = '3511';
DELETE FROM gameobject_battleground WHERE guid = '3515';
DELETE FROM gameobject_battleground WHERE guid = '3530';
DELETE FROM gameobject_battleground WHERE guid = '3533';
DELETE FROM gameobject_battleground WHERE guid = '3534';
DELETE FROM gameobject_battleground WHERE guid = '3549';
DELETE FROM gameobject_battleground WHERE guid = '3591';
DELETE FROM gameobject_battleground WHERE guid = '3602';
DELETE FROM gameobject_battleground WHERE guid = '3607';
DELETE FROM gameobject_battleground WHERE guid = '3609';
DELETE FROM gameobject_battleground WHERE guid = '3610';
DELETE FROM gameobject_battleground WHERE guid = '3785';
DELETE FROM gameobject_battleground WHERE guid = '3799';
DELETE FROM gameobject_battleground WHERE guid = '3872';
DELETE FROM gameobject_battleground WHERE guid = '3951';
DELETE FROM gameobject_battleground WHERE guid = '4008';
DELETE FROM gameobject_battleground WHERE guid = '4011';
DELETE FROM gameobject_battleground WHERE guid = '4123';
DELETE FROM gameobject_battleground WHERE guid = '414';
DELETE FROM gameobject_battleground WHERE guid = '4160';
DELETE FROM gameobject_battleground WHERE guid = '4166';
DELETE FROM gameobject_battleground WHERE guid = '4245';
DELETE FROM gameobject_battleground WHERE guid = '4253';
DELETE FROM gameobject_battleground WHERE guid = '4296';
DELETE FROM gameobject_battleground WHERE guid = '42985';
DELETE FROM gameobject_battleground WHERE guid = '43021';
DELETE FROM gameobject_battleground WHERE guid = '4306';
DELETE FROM gameobject_battleground WHERE guid = '4337';
DELETE FROM gameobject_battleground WHERE guid = '44063';
DELETE FROM gameobject_battleground WHERE guid = '4511';
DELETE FROM gameobject_battleground WHERE guid = '4525';
DELETE FROM gameobject_battleground WHERE guid = '4556';
DELETE FROM gameobject_battleground WHERE guid = '4569';
DELETE FROM gameobject_battleground WHERE guid = '4863';
DELETE FROM gameobject_battleground WHERE guid = '4911';
DELETE FROM gameobject_battleground WHERE guid = '4912';
DELETE FROM gameobject_battleground WHERE guid = '4926';
DELETE FROM gameobject_battleground WHERE guid = '4927';
DELETE FROM gameobject_battleground WHERE guid = '4949';
DELETE FROM gameobject_battleground WHERE guid = '4987';
DELETE FROM gameobject_battleground WHERE guid = '5018';
DELETE FROM gameobject_battleground WHERE guid = '5019';
DELETE FROM gameobject_battleground WHERE guid = '5021';
DELETE FROM gameobject_battleground WHERE guid = '5051';
DELETE FROM gameobject_battleground WHERE guid = '5053';
DELETE FROM gameobject_battleground WHERE guid = '5097';
DELETE FROM gameobject_battleground WHERE guid = '5098';
DELETE FROM gameobject_battleground WHERE guid = '5100';
DELETE FROM gameobject_battleground WHERE guid = '5101';
DELETE FROM gameobject_battleground WHERE guid = '5177';
DELETE FROM gameobject_battleground WHERE guid = '5187';
DELETE FROM gameobject_battleground WHERE guid = '5228';
DELETE FROM gameobject_battleground WHERE guid = '5252';
DELETE FROM gameobject_battleground WHERE guid = '5285';
DELETE FROM gameobject_battleground WHERE guid = '5379';
DELETE FROM gameobject_battleground WHERE guid = '5425';
DELETE FROM gameobject_battleground WHERE guid = '5504';
DELETE FROM gameobject_battleground WHERE guid = '5506';
DELETE FROM gameobject_battleground WHERE guid = '5537';
DELETE FROM gameobject_battleground WHERE guid = '564';
DELETE FROM gameobject_battleground WHERE guid = '5658';
DELETE FROM gameobject_battleground WHERE guid = '5715';
DELETE FROM gameobject_battleground WHERE guid = '5735';
DELETE FROM gameobject_battleground WHERE guid = '5749';
DELETE FROM gameobject_battleground WHERE guid = '5843';
DELETE FROM gameobject_battleground WHERE guid = '5845';
DELETE FROM gameobject_battleground WHERE guid = '5851';
DELETE FROM gameobject_battleground WHERE guid = '5852';
DELETE FROM gameobject_battleground WHERE guid = '595';
DELETE FROM gameobject_battleground WHERE guid = '5960';
DELETE FROM gameobject_battleground WHERE guid = '5967';
DELETE FROM gameobject_battleground WHERE guid = '6009';
DELETE FROM gameobject_battleground WHERE guid = '601';
DELETE FROM gameobject_battleground WHERE guid = '6017';
DELETE FROM gameobject_battleground WHERE guid = '602';
DELETE FROM gameobject_battleground WHERE guid = '6080';
DELETE FROM gameobject_battleground WHERE guid = '6081';
DELETE FROM gameobject_battleground WHERE guid = '6083';
DELETE FROM gameobject_battleground WHERE guid = '6090';
DELETE FROM gameobject_battleground WHERE guid = '612';
DELETE FROM gameobject_battleground WHERE guid = '6122';
DELETE FROM gameobject_battleground WHERE guid = '614';
DELETE FROM gameobject_battleground WHERE guid = '6159';
DELETE FROM gameobject_battleground WHERE guid = '6181';
DELETE FROM gameobject_battleground WHERE guid = '619';
DELETE FROM gameobject_battleground WHERE guid = '6330';
DELETE FROM gameobject_battleground WHERE guid = '635';
DELETE FROM gameobject_battleground WHERE guid = '636';
DELETE FROM gameobject_battleground WHERE guid = '6383';
DELETE FROM gameobject_battleground WHERE guid = '6484';
DELETE FROM gameobject_battleground WHERE guid = '6501';
DELETE FROM gameobject_battleground WHERE guid = '6509';
DELETE FROM gameobject_battleground WHERE guid = '6665';
DELETE FROM gameobject_battleground WHERE guid = '6666';
DELETE FROM gameobject_battleground WHERE guid = '6667';
DELETE FROM gameobject_battleground WHERE guid = '6668';
DELETE FROM gameobject_battleground WHERE guid = '6804';
DELETE FROM gameobject_battleground WHERE guid = '6812';
DELETE FROM gameobject_battleground WHERE guid = '6823';
DELETE FROM gameobject_battleground WHERE guid = '6910';
DELETE FROM gameobject_battleground WHERE guid = '697';
DELETE FROM gameobject_battleground WHERE guid = '7016';
DELETE FROM gameobject_battleground WHERE guid = '7119';
DELETE FROM gameobject_battleground WHERE guid = '7205';
DELETE FROM gameobject_battleground WHERE guid = '7225';
DELETE FROM gameobject_battleground WHERE guid = '7290';
DELETE FROM gameobject_battleground WHERE guid = '7326';
DELETE FROM gameobject_battleground WHERE guid = '7363';
DELETE FROM gameobject_battleground WHERE guid = '7365';
DELETE FROM gameobject_battleground WHERE guid = '7372';
DELETE FROM gameobject_battleground WHERE guid = '7392';
DELETE FROM gameobject_battleground WHERE guid = '7395';
DELETE FROM gameobject_battleground WHERE guid = '7423';
DELETE FROM gameobject_battleground WHERE guid = '747';
DELETE FROM gameobject_battleground WHERE guid = '7473';
DELETE FROM gameobject_battleground WHERE guid = '748';
DELETE FROM gameobject_battleground WHERE guid = '749';
DELETE FROM gameobject_battleground WHERE guid = '7544';
DELETE FROM gameobject_battleground WHERE guid = '7563';
DELETE FROM gameobject_battleground WHERE guid = '7588';
DELETE FROM gameobject_battleground WHERE guid = '7648';
DELETE FROM gameobject_battleground WHERE guid = '7651';
DELETE FROM gameobject_battleground WHERE guid = '7679';
DELETE FROM gameobject_battleground WHERE guid = '770';
DELETE FROM gameobject_battleground WHERE guid = '775';
DELETE FROM gameobject_battleground WHERE guid = '7783';
DELETE FROM gameobject_battleground WHERE guid = '7786';
DELETE FROM gameobject_battleground WHERE guid = '7809';
DELETE FROM gameobject_battleground WHERE guid = '7810';
DELETE FROM gameobject_battleground WHERE guid = '7811';
DELETE FROM gameobject_battleground WHERE guid = '7812';
DELETE FROM gameobject_battleground WHERE guid = '7821';
DELETE FROM gameobject_battleground WHERE guid = '7841';
DELETE FROM gameobject_battleground WHERE guid = '7859';
DELETE FROM gameobject_battleground WHERE guid = '7866';
DELETE FROM gameobject_battleground WHERE guid = '7873';
DELETE FROM gameobject_battleground WHERE guid = '794';
DELETE FROM gameobject_battleground WHERE guid = '795';
DELETE FROM gameobject_battleground WHERE guid = '7951';
DELETE FROM gameobject_battleground WHERE guid = '7964';
DELETE FROM gameobject_battleground WHERE guid = '7967';
DELETE FROM gameobject_battleground WHERE guid = '7968';
DELETE FROM gameobject_battleground WHERE guid = '7989';
DELETE FROM gameobject_battleground WHERE guid = '8004';
DELETE FROM gameobject_battleground WHERE guid = '808';
DELETE FROM gameobject_battleground WHERE guid = '810';
DELETE FROM gameobject_battleground WHERE guid = '8282';
DELETE FROM gameobject_battleground WHERE guid = '8368';
DELETE FROM gameobject_battleground WHERE guid = '8388';
DELETE FROM gameobject_battleground WHERE guid = '8432';
DELETE FROM gameobject_battleground WHERE guid = '8506';
DELETE FROM gameobject_battleground WHERE guid = '8706';
DELETE FROM gameobject_battleground WHERE guid = '8708';
DELETE FROM gameobject_battleground WHERE guid = '8759';
DELETE FROM gameobject_battleground WHERE guid = '88';
DELETE FROM gameobject_battleground WHERE guid = '8821';
DELETE FROM gameobject_battleground WHERE guid = '8839';
DELETE FROM gameobject_battleground WHERE guid = '8891';
DELETE FROM gameobject_battleground WHERE guid = '8906';
DELETE FROM gameobject_battleground WHERE guid = '8908';
DELETE FROM gameobject_battleground WHERE guid = '8932';
DELETE FROM gameobject_battleground WHERE guid = '8937';
DELETE FROM gameobject_battleground WHERE guid = '89631';
DELETE FROM gameobject_battleground WHERE guid = '8966';
DELETE FROM gameobject_battleground WHERE guid = '9040';
DELETE FROM gameobject_battleground WHERE guid = '906';
DELETE FROM gameobject_battleground WHERE guid = '9063';
DELETE FROM gameobject_battleground WHERE guid = '9065';
DELETE FROM gameobject_battleground WHERE guid = '9111';
DELETE FROM gameobject_battleground WHERE guid = '9127';
DELETE FROM gameobject_battleground WHERE guid = '9130';
DELETE FROM gameobject_battleground WHERE guid = '9131';
DELETE FROM gameobject_battleground WHERE guid = '9194';
DELETE FROM gameobject_battleground WHERE guid = '9202';
DELETE FROM gameobject_battleground WHERE guid = '9386';
DELETE FROM gameobject_battleground WHERE guid = '9472';
DELETE FROM gameobject_battleground WHERE guid = '9488';
DELETE FROM gameobject_battleground WHERE guid = '9607';
DELETE FROM gameobject_battleground WHERE guid = '9632';
DELETE FROM gameobject_battleground WHERE guid = '9694';
DELETE FROM gameobject_battleground WHERE guid = '9710';
DELETE FROM gameobject_battleground WHERE guid = '9711';
DELETE FROM gameobject_battleground WHERE guid = '9712';
DELETE FROM gameobject_battleground WHERE guid = '9713';
DELETE FROM gameobject_battleground WHERE guid = '9714';
DELETE FROM gameobject_battleground WHERE guid = '9853';
DELETE FROM gameobject_battleground WHERE guid = '9856';
DELETE FROM gameobject_battleground WHERE guid = '9857';
DELETE FROM gameobject_battleground WHERE guid = '9858';
DELETE FROM gameobject_battleground WHERE guid = '9866';
DELETE FROM gameobject_battleground WHERE guid = '9881';
DELETE FROM gameobject_battleground WHERE guid = '9930';
DELETE FROM gameobject_battleground WHERE guid = '9940';
INSERT INTO `gameobject` VALUES ('91482', '1624', '1', '1', '1', '2790.51', '-3103.41', '175.982', '4.51167', '0', '0', '0.774393', '-0.632704', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91483', '1624', '1', '1', '1', '2912.92', '-3452.73', '120.738', '1.03629', '0', '0', '0.495269', '0.868739', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91484', '1620', '1', '1', '1', '2519.64', '-3613.14', '56.9712', '0.580767', '0', '0', '0.28632', '0.958134', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91485', '1621', '1', '1', '1', '2555.08', '-3085.9', '134.609', '5.99609', '0', '0', '0.143056', '-0.989715', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91486', '1624', '1', '1', '1', '2507.35', '-3088.26', '126.005', '2.15157', '0', '0', '0.879962', '0.475044', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91487', '1624', '1', '1', '1', '2129.57', '-2957.45', '113.985', '1.00096', '0', '0', '0.479845', '0.877353', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91488', '142145', '1', '1', '1', '2046.51', '-3131.13', '103.517', '2.5364', '0', '0', '0.954567', '0.297998', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91489', '2041', '1', '1', '1', '2032.28', '-3297.26', '86.424', '4.97899', '0', '0', '0.606855', '-0.794813', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91490', '1620', '1', '1', '1', '2045.11', '-3345.64', '92.8995', '0.199841', '0', '0', '0.0997543', '0.995012', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91491', '1623', '1', '1', '1', '1711.49', '-3494.1', '143.061', '3.65559', '0', '0', '0.967157', '-0.25418', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91492', '1622', '1', '1', '1', '1715.84', '-3393.45', '151.664', '1.09519', '0', '0', '0.520637', '0.853778', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91493', '1623', '1', '1', '1', '1712.19', '-3375.14', '149.6', '1.64341', '0', '0', '0.732307', '0.680975', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91494', '1623', '1', '1', '1', '1709.82', '-3231.13', '148.361', '0.614533', '0', '0', '0.302454', '0.953164', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91495', '1622', '1', '1', '1', '1722.43', '-3212.41', '129.345', '1.85154', '0', '0', '0.799083', '0.601221', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91496', '1622', '1', '1', '1', '1659.47', '-3179.29', '126.874', '2.59767', '0', '0', '0.963245', '0.268623', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91497', '1623', '1', '1', '1', '1584.4', '-3166.15', '149.184', '4.36088', '0', '0', '0.819851', '-0.572577', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91498', '1622', '1', '1', '1', '1602.41', '-3012.55', '103.524', '2.42095', '0', '0', '0.935784', '0.352575', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91499', '1622', '1', '1', '1', '1518.43', '-2882.49', '183.781', '2.84742', '0', '0', '0.989202', '0.146556', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91500', '1622', '1', '1', '1', '1573.52', '-2842.62', '182.189', '1.65362', '0', '0', '0.735773', '0.677228', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91501', '1623', '1', '1', '1', '1715.3', '-3035.54', '129.939', '2.19554', '0', '0', '0.890194', '0.455582', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91502', '1622', '1', '1', '1', '1694.13', '-3067.01', '109.367', '3.36107', '0', '0', '0.993985', '-0.10952', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91503', '2041', '1', '1', '1', '1831.4', '-2838.47', '97.6402', '3.84016', '0', '0', '0.939618', '-0.342224', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91504', '2041', '1', '1', '1', '2227.24', '-2808.9', '128.018', '0.56505', '0', '0', '0.278781', '0.960355', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91505', '2041', '1', '1', '1', '2275.25', '-2863.99', '133.523', '5.12822', '0', '0', '0.545917', '-0.837839', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91506', '2045', '1', '1', '1', '2650.34', '-2822.56', '164.391', '2.27328', '0', '0', '0.907226', '0.420644', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91507', '1621', '1', '1', '1', '2762.7', '-2490.97', '192.914', '0.404038', '0', '0', '0.200647', '0.979663', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91508', '1622', '1', '1', '1', '2597.43', '-2129.06', '195.884', '3.26524', '0', '0', '0.998089', '-0.0617864', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91509', '1622', '1', '1', '1', '2530.82', '-2181.11', '197.941', '4.09777', '0', '0', '0.887877', '-0.460081', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91510', '1624', '1', '1', '1', '2585.35', '-1980.12', '147.622', '0.335709', '0', '0', '0.167067', '0.985946', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91511', '1620', '1', '1', '1', '2224.74', '-2294.5', '104.639', '4.60671', '0', '0', '0.743467', '-0.668772', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91512', '2045', '1', '1', '1', '2249.46', '-2241.06', '96.3243', '5.13685', '0', '0', '0.542296', '-0.840187', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91513', '2041', '1', '1', '1', '2312.03', '-2330.26', '112.261', '4.97976', '0', '0', '0.606547', '-0.795048', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91514', '1620', '1', '1', '1', '1877.12', '-1721.79', '55.2148', '0.934965', '0', '0', '0.450641', '0.892706', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91515', '1620', '1', '1', '1', '2366.88', '-1141.5', '94.8975', '5.49812', '0', '0', '0.382529', '-0.923944', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91516', '1623', '1', '1', '1', '3045.86', '-1015.42', '215.654', '5.89868', '0', '0', '0.191073', '-0.981576', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91517', '1624', '1', '1', '1', '3067.51', '-642.213', '164.538', '2.43114', '0', '0', '0.937568', '0.347802', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91518', '1623', '1', '1', '1', '3167.31', '-707.289', '191.101', '1.30802', '0', '0', '0.608374', '0.79365', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91519', '1623', '1', '1', '1', '3508.04', '-492.004', '186.906', '6.25996', '0', '0', '0.0116135', '-0.999933', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91520', '1622', '1', '1', '1', '3455.5', '-120.355', '7.74018', '2.7453', '0', '0', '0.980433', '0.196852', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91521', '1624', '1', '1', '1', '3465.66', '-45.2368', '5.16279', '1.94419', '0', '0', '0.826069', '0.563568', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91522', '1620', '1', '1', '1', '3581.94', '-223.3', '7.19184', '4.52423', '0', '0', '0.770405', '-0.637555', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91523', '1620', '1', '1', '1', '3681.29', '-75.5001', '-2.17764', '1.49652', '0', '0', '0.680364', '0.732874', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91524', '1621', '1', '1', '1', '3840.03', '-98.9515', '3.86239', '5.72589', '0', '0', '0.275054', '-0.961429', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91525', '1622', '1', '1', '1', '3854.6', '-194.333', '2.95161', '0.208471', '0', '0', '0.104047', '0.994572', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91526', '1621', '1', '1', '1', '3568.76', '85.1191', '8.7356', '0.915329', '0', '0', '0.441854', '0.897087', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91527', '1621', '1', '1', '1', '2954.44', '-114.477', '100.058', '5.72981', '0', '0', '0.27317', '-0.961966', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91528', '1620', '1', '1', '1', '2867.46', '48.1575', '94.059', '2.02273', '0', '0', '0.847558', '0.530703', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91529', '1624', '1', '1', '1', '2766.39', '633.941', '94.9379', '6.26389', '0', '0', '0.00964785', '-0.999953', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91530', '1621', '1', '1', '1', '2815.06', '724.862', '117.674', '1.95205', '0', '0', '0.828278', '0.560318', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91531', '1620', '1', '1', '1', '2958.49', '541.314', '5.9095', '3.65244', '0', '0', '0.967557', '-0.252653', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91532', '2045', '1', '1', '1', '3006.03', '533.92', '-3.31971', '2.25835', '0', '0', '0.90406', '0.427406', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91533', '1620', '1', '1', '1', '3206.44', '729.175', '5.61929', '2.76887', '0', '0', '0.982685', '0.185284', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91534', '2045', '1', '1', '1', '3034.28', '558.032', '-2.5747', '0.239888', '0', '0', '0.119657', '0.992815', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91535', '1624', '1', '1', '1', '3216.33', '480.406', '-1.48694', '4.71666', '0', '0', '0.705594', '-0.708617', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91536', '1620', '1', '1', '1', '3409.64', '397.436', '1.70056', '0.213973', '0', '0', '0.106782', '0.994282', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91537', '1620', '1', '1', '1', '3598.6', '415.984', '6.0078', '1.64733', '0', '0', '0.73364', '0.679539', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91538', '1624', '1', '1', '1', '3352.81', '596.781', '3.90217', '4.13311', '0', '0', '0.879609', '-0.475698', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91539', '1621', '1', '1', '1', '4419.81', '331.601', '58.0276', '4.54936', '0', '0', '0.762333', '-0.647185', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91540', '1620', '1', '1', '1', '4332.53', '565.385', '58.483', '0.850138', '0', '0', '0.412383', '0.91101', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91541', '1622', '1', '1', '1', '4605.53', '571.141', '1.39399', '5.20125', '0', '0', '0.514968', '-0.85721', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91542', '1622', '1', '1', '1', '4632.03', '625.001', '7.06411', '0.822659', '0', '0', '0.399828', '0.91659', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91543', '1619', '1', '1', '1', '4581.41', '712.434', '23.8371', '6.23012', '0', '0', '0.0265271', '-0.999648', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91544', '2045', '1', '1', '1', '4633.01', '938.673', '-8.11021', '3.60848', '0', '0', '0.972875', '-0.23133', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91545', '2045', '1', '1', '1', '4717.74', '742.807', '-2.71393', '3.29038', '0', '0', '0.997234', '-0.0743267', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91546', '2045', '1', '1', '1', '4807.69', '838.393', '-7.69782', '0.235185', '0', '0', '0.117321', '0.993094', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91547', '2045', '1', '1', '1', '4799.58', '905.899', '-14.419', '1.92772', '0', '0', '0.821399', '0.570355', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91548', '2045', '1', '1', '1', '4863.72', '802.143', '-9.47448', '4.76694', '0', '0', '0.68756', '-0.726127', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91549', '2045', '1', '1', '1', '5097.22', '640.593', '-14.1405', '1.16587', '0', '0', '0.550478', '0.834849', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91550', '2045', '1', '1', '1', '4953.99', '648.482', '-15.806', '2.93145', '0', '0', '0.994485', '0.104879', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91551', '1620', '1', '1', '1', '4763.28', '680.573', '11.7158', '0.535978', '0', '0', '0.264793', '0.964305', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91552', '1621', '1', '1', '1', '4741.66', '401.238', '36.6964', '0.484931', '0', '0', '0.240097', '0.970749', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91553', '1619', '1', '1', '1', '4799.47', '377.355', '46.8954', '4.98527', '0', '0', '0.604356', '-0.796715', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91554', '1621', '1', '1', '1', '4821.75', '280.136', '51.0357', '6.01413', '0', '0', '0.134121', '-0.990965', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91555', '1619', '1', '1', '1', '4607.47', '91.512', '65.9616', '4.09777', '0', '0', '0.887876', '-0.460083', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91556', '1621', '1', '1', '1', '4518', '38.6043', '82.7948', '5.20911', '0', '0', '0.511592', '-0.859228', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91557', '1621', '1', '1', '1', '4483.23', '101.47', '63.3049', '2.09501', '0', '0', '0.866179', '0.499734', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91558', '1619', '1', '1', '1', '4312.49', '-40.9797', '91.9357', '0.606676', '0', '0', '0.298708', '0.954345', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91559', '1619', '1', '1', '1', '4741.44', '21.5021', '70.8728', '1.54444', '0', '0', '0.697727', '0.716364', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91560', '1621', '1', '1', '1', '4755.62', '141.095', '54.5994', '0.704061', '0', '0', '0.344804', '0.938675', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91561', '1621', '1', '1', '1', '5098.61', '407.997', '32.0025', '3.18435', '0', '0', '0.999771', '-0.0213784', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91562', '1619', '1', '1', '1', '5186.55', '346.703', '38.2105', '0.836012', '0', '0', '0.405939', '0.9139', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91563', '2045', '1', '1', '1', '5266.02', '622.138', '-12.3246', '0.902771', '0', '0', '0.436213', '0.899844', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91564', '2045', '1', '1', '1', '5397.85', '570.54', '-7.5151', '1.87273', '0', '0', '0.80541', '0.592719', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91565', '2045', '1', '1', '1', '5533.26', '602.126', '-8.45217', '1.88294', '0', '0', '0.808424', '0.5886', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91566', '1622', '1', '1', '1', '5600.4', '71.5548', '27.1461', '4.0192', '0', '0', '0.905261', '-0.424857', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91567', '1619', '1', '1', '1', '5821.73', '-29.2645', '46.4587', '0.00188828', '0', '0', '0.000944137', '1', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91568', '1617', '1', '1', '1', '5831.45', '76.9496', '32.1876', '4.02078', '0', '0', '0.904925', '-0.425571', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91569', '1622', '1', '1', '1', '5795.39', '119.351', '32.4301', '2.21436', '0', '0', '0.894442', '0.447185', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91570', '1619', '1', '1', '1', '5786.69', '181.183', '40.9652', '1.37006', '0', '0', '0.632696', '0.7744', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91571', '1617', '1', '1', '1', '5741.79', '244.695', '32.3749', '1.81381', '0', '0', '0.7876', '0.616187', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91572', '2045', '1', '1', '1', '5661.82', '555.826', '-2.35238', '4.92792', '0', '0', '0.626951', '-0.779059', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91573', '1620', '1', '1', '1', '5832.99', '469.878', '12.5209', '5.35596', '0', '0', '0.447183', '-0.894442', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91574', '2045', '1', '1', '1', '5830.26', '607.156', '-34.8173', '1.91591', '0', '0', '0.818018', '0.575192', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91575', '2045', '1', '1', '1', '5919.86', '569.701', '-1.92148', '5.35204', '0', '0', '0.448937', '-0.893564', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91576', '2045', '1', '1', '1', '6130.28', '610.585', '-9.54083', '3.90297', '0', '0', '0.928409', '-0.371559', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91577', '1621', '1', '1', '1', '6079.6', '415.093', '25.2222', '3.38381', '0', '0', '0.992676', '-0.120811', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91578', '1617', '1', '1', '1', '6061.38', '338.087', '28.1774', '1.64336', '0', '0', '0.732292', '0.680991', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91579', '1617', '1', '1', '1', '5945.04', '176.432', '28.821', '0.139317', '0', '0', '0.0696024', '0.997575', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91580', '1619', '1', '1', '1', '6033.52', '-131.038', '73.4687', '0.638026', '0', '0', '0.31363', '0.949545', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91581', '1619', '1', '1', '1', '6200.24', '-151.756', '75.9679', '5.43682', '0', '0', '0.410667', '-0.911786', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91582', '1621', '1', '1', '1', '6011.9', '58.4646', '34.2554', '5.10302', '0', '0', '0.55643', '-0.830895', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91583', '1621', '1', '1', '1', '6309.64', '-51.0172', '39.4498', '3.82283', '0', '0', '0.942549', '-0.334068', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91584', '1617', '1', '1', '1', '6468.07', '-104.995', '36.2052', '5.70778', '0', '0', '0.283749', '-0.958899', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91585', '1622', '1', '1', '1', '6577.99', '-31.3021', '35.9952', '0.264971', '0', '0', '0.132098', '0.991237', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91586', '1622', '1', '1', '1', '6753.26', '-181.698', '32.2046', '0.561848', '0', '0', '0.277244', '0.9608', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91587', '1621', '1', '1', '1', '6666.52', '83.2977', '30.4569', '1.2962', '0', '0', '0.603672', '0.797233', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91588', '1621', '1', '1', '1', '6709.78', '353.28', '26.3569', '4.4103', '0', '0', '0.805454', '-0.592658', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91589', '2045', '1', '1', '1', '6608.2', '606.534', '-13.4234', '0.930989', '0', '0', '0.448865', '0.8936', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91590', '2045', '1', '1', '1', '6459.45', '701.84', '-32.7356', '1.5004', '0', '0', '0.681786', '0.731552', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91591', '2045', '1', '1', '1', '6300.93', '661.18', '-15.6324', '4.04117', '0', '0', '0.90054', '-0.434774', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91592', '2045', '1', '1', '1', '6764.31', '569.614', '-10.3249', '0.0827556', '0', '0', '0.041366', '0.999144', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91593', '2045', '1', '1', '1', '6939.37', '517.625', '-9.12177', '6.04', '0', '0', '0.121295', '-0.992617', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91594', '1621', '1', '1', '1', '6830.05', '353.119', '20.9353', '2.08551', '0', '0', '0.863796', '0.503841', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91595', '1620', '1', '1', '1', '6872.61', '294.173', '13.8552', '0.656074', '0', '0', '0.322185', '0.946677', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91596', '2045', '1', '1', '1', '7017.25', '284.746', '-10.2538', '5.21532', '0', '0', '0.508924', '-0.860812', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91597', '2045', '1', '1', '1', '7128.44', '255.539', '-13.0045', '1.57892', '0', '0', '0.709973', '0.704229', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91598', '1617', '1', '1', '1', '7013.86', '40.169', '17.8995', '2.54496', '0', '0', '0.955832', '0.293912', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91599', '1617', '1', '1', '1', '6887.4', '73.5542', '15.3887', '6.09103', '0', '0', '0.0959289', '-0.995388', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91600', '1621', '1', '1', '1', '6855.75', '153.62', '16.2058', '1.88522', '0', '0', '0.809096', '0.587676', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91601', '1617', '1', '1', '1', '6766.26', '-307.594', '40.0773', '0.14635', '0', '0', '0.0731096', '0.997324', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91602', '1617', '1', '1', '1', '6986.05', '-427.503', '48.1346', '6.09182', '0', '0', '0.0955373', '-0.995426', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91603', '1621', '1', '1', '1', '6909.45', '-322.892', '43.0495', '1.57971', '0', '0', '0.71025', '0.70395', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91604', '1621', '1', '1', '1', '6974.59', '-203.593', '40.2794', '3.96732', '0', '0', '0.915976', '-0.401234', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91605', '1621', '1', '1', '1', '7046.52', '-40.1994', '18.6163', '0.311288', '0', '0', '0.155016', '0.987912', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91606', '1617', '1', '1', '1', '7351.99', '121.697', '12.7674', '0.319145', '0', '0', '0.158896', '0.987295', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91607', '2045', '1', '1', '1', '7410.05', '234.567', '-11.0034', '4.25399', '0', '0', '0.849267', '-0.527963', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91608', '1617', '1', '1', '1', '7206.58', '-63.9172', '14.2149', '0.425176', '0', '0', '0.21099', '0.977488', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91609', '1617', '1', '1', '1', '7107.38', '-214.162', '36.2422', '5.01583', '0', '0', '0.592113', '-0.805855', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91610', '1620', '1', '1', '1', '7414.23', '-595.223', '9.30552', '2.07452', '0', '0', '0.861014', '0.508581', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91611', '1617', '1', '1', '1', '7339.36', '-646.891', '25.701', '3.10339', '0', '0', '0.999818', '0.0190984', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91612', '1619', '1', '1', '1', '6972.74', '-645.342', '70.0148', '5.79966', '0', '0', '0.239415', '-0.970917', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91613', '1619', '1', '1', '1', '7082.71', '-663.356', '68.6556', '1.91981', '0', '0', '0.819136', '0.5736', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91614', '1620', '1', '1', '1', '7096.01', '-623.905', '47.1991', '1.04016', '0', '0', '0.496949', '0.86778', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91615', '1620', '1', '1', '1', '7176.98', '-844.237', '47.7407', '3.94219', '0', '0', '0.920945', '-0.389693', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91616', '1619', '1', '1', '1', '7225.28', '-736.204', '54.727', '5.76039', '0', '0', '0.258432', '-0.966029', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91617', '1618', '1', '1', '1', '7221.75', '-662.661', '38.3295', '0.0976675', '0', '0', '0.0488143', '0.998808', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91618', '1622', '1', '1', '1', '7380.47', '-826.668', '17.2875', '0.206045', '0', '0', '0.10284', '0.994698', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91619', '1619', '1', '1', '1', '7146.4', '-954.695', '64.7806', '5.00483', '0', '0', '0.596535', '-0.802587', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91620', '1621', '1', '1', '1', '7454.78', '-1138.63', '41.6634', '5.24045', '0', '0', '0.498067', '-0.867139', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91621', '1620', '1', '1', '1', '7586.41', '-798.402', '15.7616', '1.52159', '0', '0', '0.689496', '0.724289', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91622', '1620', '1', '1', '1', '7742.31', '-878.529', '16.2811', '0.0607362', '0', '0', '0.0303634', '0.999539', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91623', '1619', '1', '1', '1', '7687.65', '-987.686', '38.1632', '1.16264', '0', '0', '0.549128', '0.835738', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91624', '142145', '1', '1', '1', '6851.95', '-1924.46', '550.92', '0.149623', '0', '0', '0.0747419', '0.997203', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91625', '176587', '1', '1', '1', '6848.73', '-1816.09', '563.833', '0.471641', '0', '0', '0.233641', '0.972323', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91626', '176586', '1', '1', '1', '6718.12', '-1797.35', '598.611', '1.90108', '0', '0', '0.81373', '0.581244', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91627', '142145', '1', '1', '1', '6885.52', '-1597.6', '499.605', '1.32853', '0', '0', '0.616479', '0.787372', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91628', '176584', '1', '1', '1', '6809.12', '-1579.16', '485.656', '6.18229', '0', '0', '0.0504274', '-0.998728', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91629', '176586', '1', '1', '1', '6713.32', '-1657.52', '500.386', '1.84295', '0', '0', '0.796494', '0.604646', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91630', '176583', '1', '1', '1', '6741.12', '-1593.43', '477.432', '1.84688', '0', '0', '0.79768', '0.603081', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91631', '142142', '1', '1', '1', '6741.48', '-1572.76', '477.844', '3.0446', '0', '0', '0.998824', '0.0484759', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91632', '176587', '1', '1', '1', '6705.15', '-1527.52', '474.226', '2.99748', '0', '0', '0.997405', '0.0719938', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91633', '176584', '1', '1', '1', '6678.09', '-1464.08', '473.398', '3.26059', '0', '0', '0.998231', '-0.0594628', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91634', '176583', '1', '1', '1', '6636.41', '-1303.15', '457.744', '2.26707', '0', '0', '0.905914', '0.423461', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91635', '176584', '1', '1', '1', '6642.13', '-1238.29', '456.125', '1.64268', '0', '0', '0.732058', '0.681242', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91636', '176583', '1', '1', '1', '6381.17', '-1925.27', '552.224', '1.66232', '0', '0', '0.738714', '0.674019', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91637', '142145', '1', '1', '1', '6311.77', '-1922.99', '551.899', '3.12316', '0', '0', '0.999958', '0.00921494', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91638', '176586', '1', '1', '1', '6286.89', '-2059.46', '592.815', '2.12179', '0', '0', '0.872794', '0.48809', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91639', '142145', '1', '1', '1', '6159.04', '-1971.39', '580.504', '1.57594', '0', '0', '0.708924', '0.705285', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91640', '176587', '1', '1', '1', '6144.3', '-1910.78', '575.866', '4.78822', '0', '0', '0.679794', '-0.733403', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91641', '176586', '1', '1', '1', '6317.28', '-1689.55', '502.955', '1.55238', '0', '0', '0.700567', '0.713586', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91642', '176584', '1', '1', '1', '6435.35', '-1688.09', '501.088', '0.0452059', '0', '0', '0.022601', '0.999745', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91643', '176583', '1', '1', '1', '6349.56', '-1614.3', '458.84', '0.04129', '0', '0', '0.0206435', '0.999787', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91644', '142145', '1', '1', '1', '6322.05', '-1554.44', '445.912', '1.39217', '0', '0', '0.64122', '0.767357', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91645', '176587', '1', '1', '1', '6349.94', '-1518.69', '439.841', '1.19425', '0', '0', '0.562269', '0.826954', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91646', '142141', '1', '1', '1', '6261.81', '-1554.74', '449.49', '2.55219', '0', '0', '0.956889', '0.290452', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91647', '176587', '1', '1', '1', '6113.51', '-1616.63', '481.122', '0.647605', '0', '0', '0.318174', '0.948032', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91648', '142142', '1', '1', '1', '6149.03', '-1483.94', '439.101', '0.871444', '0', '0', '0.422065', '0.906566', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91649', '176584', '1', '1', '1', '6097.08', '-1459.21', '428.744', '2.3637', '0', '0', '0.925309', '0.379214', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91650', '142145', '1', '1', '1', '6072.59', '-1425.61', '419.432', '1.95922', '0', '0', '0.83028', '0.557347', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91651', '176587', '1', '1', '1', '6092.83', '-1362.04', '389.726', '2.46187', '0', '0', '0.942802', '0.333354', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91652', '176586', '1', '1', '1', '6175.37', '-1419.4', '407.972', '0.502302', '0', '0', '0.248519', '0.968627', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91653', '176584', '1', '1', '1', '6250.59', '-1405.27', '370.891', '5.80296', '0', '0', '0.237813', '-0.971311', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91654', '176583', '1', '1', '1', '6212.89', '-1386.67', '376.021', '2.74776', '0', '0', '0.980674', '0.195647', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91655', '142145', '1', '1', '1', '6169.05', '-1316.39', '376.494', '1.83277', '0', '0', '0.793406', '0.608693', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91656', '176587', '1', '1', '1', '5881.82', '-1276.28', '407.546', '1.40631', '0', '0', '0.646628', '0.762805', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91657', '176586', '1', '1', '1', '5854.5', '-1275.39', '418.747', '5.47075', '0', '0', '0.395138', '-0.918622', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91658', '142142', '1', '1', '1', '5850.96', '-1177.34', '403.665', '0.45598', '0', '0', '0.22602', '0.974123', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91659', '176586', '1', '1', '1', '5957.84', '-1080.31', '436.786', '1.16676', '0', '0', '0.550849', '0.834605', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91660', '142145', '1', '1', '1', '6004.43', '-1175.99', '376.547', '4.71676', '0', '0', '0.705559', '-0.708651', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91661', '176587', '1', '1', '1', '6043.75', '-1116.94', '388.914', '1.17069', '0', '0', '0.552486', '0.833522', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91662', '176586', '1', '1', '1', '6178.6', '-1060.73', '385.68', '0.397073', '0', '0', '0.197235', '0.980356', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91663', '176584', '1', '1', '1', '6206.08', '-1028.47', '387.833', '0.797626', '0', '0', '0.388325', '0.921522', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91664', '176587', '1', '1', '1', '6256.38', '-1072.45', '374.318', '5.85952', '0', '0', '0.210252', '-0.977647', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91665', '176587', '1', '1', '1', '6414.54', '-1342.27', '377.036', '3.86067', '0', '0', '0.936059', '-0.351844', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91666', '176584', '1', '1', '1', '6515.32', '-1472.03', '439.005', '0.216415', '0', '0', '0.107996', '0.994151', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91667', '142141', '1', '1', '1', '6513.55', '-1384.43', '438.435', '3.49152', '0', '0', '0.984733', '-0.174074', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91668', '142141', '1', '1', '1', '6521.03', '-1007.91', '433.166', '0.59653', '0', '0', '0.293862', '0.955848', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91669', '176586', '1', '1', '1', '6634.29', '-932.587', '491.534', '2.5129', '0', '0', '0.950999', '0.309194', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91670', '142145', '1', '1', '1', '6597.54', '-905.65', '474.391', '4.99869', '0', '0', '0.598997', '-0.800751', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91671', '142141', '1', '1', '1', '6602.45', '-874.8', '474.627', '5.75267', '0', '0', '0.262158', '-0.965025', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91672', '142142', '1', '1', '1', '6491.42', '-803.218', '474.106', '2.53961', '0', '0', '0.955043', '0.296468', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91673', '176587', '1', '1', '1', '6513.64', '-782.239', '474.561', '1.08662', '0', '0', '0.516973', '0.856002', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91674', '142141', '1', '1', '1', '6390.83', '-740.982', '471.672', '5.99301', '0', '0', '0.144581', '-0.989493', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91675', '176583', '1', '1', '1', '6388.19', '-729.777', '473.511', '1.79505', '0', '0', '0.781787', '0.623546', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91676', '176586', '1', '1', '1', '6351.76', '-751.564', '480.56', '2.62758', '0', '0', '0.967155', '0.254187', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91677', '176587', '1', '1', '1', '6299.89', '-846.97', '419.376', '5.2351', '0', '0', '0.500385', '-0.865803', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91678', '176584', '1', '1', '1', '6426.15', '-933.968', '421.968', '5.61601', '0', '0', '0.327437', '-0.944873', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91679', '142145', '1', '1', '1', '6434.62', '-940.583', '423.046', '5.61993', '0', '0', '0.325581', '-0.945514', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91680', '176586', '1', '1', '1', '6170.41', '-644.845', '430.255', '1.14395', '0', '0', '0.541293', '0.840834', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91681', '142142', '1', '1', '1', '5965.18', '-618.083', '399.17', '1.55235', '0', '0', '0.700557', '0.713597', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91682', '176584', '1', '1', '1', '5816.11', '-720.734', '377.399', '0.378177', '0', '0', '0.187964', '0.982176', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91683', '176587', '1', '1', '1', '5694.04', '-710.937', '376.674', '2.2592', '0', '0', '0.904242', '0.427021', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91684', '142142', '1', '1', '1', '5626.25', '-515.675', '372.974', '2.00395', '0', '0', '0.842535', '0.538641', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91685', '176586', '1', '1', '1', '5712.02', '-489.668', '409.017', '6.25688', '0', '0', '0.0131524', '-0.999914', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91686', '142141', '1', '1', '1', '5426.07', '-537.395', '364.633', '5.91131', '0', '0', '0.18487', '-0.982763', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91687', '176586', '1', '1', '1', '5414.67', '-804.469', '376.753', '5.78486', '0', '0', '0.24659', '-0.96912', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91688', '176587', '1', '1', '1', '5486.74', '-842.144', '360.516', '2.82784', '0', '0', '0.98772', '0.156234', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91689', '142141', '1', '1', '1', '5465.3', '-863.683', '365.784', '4.09233', '0', '0', '0.889124', '-0.457666', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91690', '142145', '1', '1', '1', '5580.77', '-879.494', '377.343', '1.00571', '0', '0', '0.481931', '0.876209', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91691', '142145', '1', '1', '1', '5517.07', '-973.969', '371.143', '4.69316', '0', '0', '0.713873', '-0.700275', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91692', '176584', '1', '1', '1', '5604.88', '-1020.31', '375.639', '5.91052', '0', '0', '0.185256', '-0.98269', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91693', '142145', '1', '1', '1', '5621.32', '-1075.52', '378.212', '3.6368', '0', '0', '0.969502', '-0.245082', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91694', '176587', '1', '1', '1', '5645.95', '-1107.06', '380.615', '3.76246', '0', '0', '0.952201', '-0.305473', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91695', '176586', '1', '1', '1', '5596.24', '-1153.7', '407.046', '1.50446', '0', '0', '0.683267', '0.730169', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91696', '142145', '1', '1', '1', '5748.91', '-962.083', '400.205', '0.997873', '0', '0', '0.478492', '0.878092', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91697', '176586', '1', '1', '1', '5763.44', '-997.195', '413.405', '5.52569', '0', '0', '0.369755', '-0.929129', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91698', '176586', '1', '1', '1', '5772.35', '-807.021', '410.721', '1.25312', '0', '0', '0.586363', '0.810048', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91699', '142145', '1', '1', '1', '5679.53', '-852.362', '379.124', '0.349916', '0', '0', '0.174067', '0.984734', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91700', '176587', '1', '1', '1', '5538.88', '-736.706', '341.912', '1.98748', '0', '0', '0.838072', '0.54556', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91701', '176587', '1', '1', '1', '5219.18', '-771.822', '344.732', '2.57652', '0', '0', '0.960351', '0.278794', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91702', '176584', '1', '1', '1', '5188.4', '-592.385', '326.886', '1.44162', '0', '0', '0.659992', '0.751273', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91703', '176587', '1', '1', '1', '4973.12', '-550.393', '333.423', '0.208561', '0', '0', '0.104092', '0.994568', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91704', '142145', '1', '1', '1', '4950.06', '-617.035', '293.714', '6.10297', '0', '0', '0.0899836', '-0.995943', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91705', '176584', '1', '1', '1', '4945.46', '-642.299', '296.073', '6.1933', '0', '0', '0.0449298', '-0.99899', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91706', '142145', '1', '1', '1', '4770.63', '-431.005', '343.24', '1.39058', '0', '0', '0.640609', '0.767867', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91707', '142141', '1', '1', '1', '4789.81', '-405.148', '347.479', '0.829023', '0', '0', '0.402743', '0.915313', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91708', '176586', '1', '1', '1', '4785.12', '-335.67', '364.706', '1.33168', '0', '0', '0.617719', '0.786399', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91709', '176587', '1', '1', '1', '4882.83', '-775.01', '295.907', '5.31835', '0', '0', '0.463921', '-0.885877', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91710', '142142', '1', '1', '1', '4698.84', '-834.536', '315.042', '4.91859', '0', '0', '0.630579', '-0.776125', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91711', '142145', '1', '1', '1', '4709.59', '-869.881', '329.288', '3.11218', '0', '0', '0.999892', '0.0147069', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91712', '176587', '1', '1', '1', '4624.14', '-873.922', '318.364', '4.19916', '0', '0', '0.863421', '-0.504484', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91713', '142141', '1', '1', '1', '4537.95', '-933.448', '318.261', '4.94214', '0', '0', '0.621394', '-0.783498', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91714', '176584', '1', '1', '1', '4467.75', '-918.348', '311.577', '5.21704', '0', '0', '0.508184', '-0.861249', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91715', '176587', '1', '1', '1', '4443.8', '-931.003', '307.2', '0.198342', '0', '0', '0.0990083', '0.995087', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91716', '142145', '1', '1', '1', '4424.1', '-961.499', '317.042', '3.77191', '0', '0', '0.950747', '-0.309967', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91717', '142145', '1', '1', '1', '4335.69', '-968.633', '307.731', '2.88048', '0', '0', '0.99149', '0.130185', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91718', '176583', '1', '1', '1', '4352.8', '-946.634', '307.075', '0.936621', '0', '0', '0.451379', '0.892332', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91719', '176584', '1', '1', '1', '4248.44', '-990.575', '296.95', '3.43811', '0', '0', '0.98903', '-0.147718', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91720', '176584', '1', '1', '1', '4264.15', '-1112.05', '320.058', '3.81903', '0', '0', '0.943181', '-0.33228', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91721', '142145', '1', '1', '1', '4169.28', '-1030.25', '289.068', '2.82158', '0', '0', '0.987226', '0.159327', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91722', '176583', '1', '1', '1', '4086.43', '-1117.1', '276.686', '1.49033', '0', '0', '0.678094', '0.734976', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91723', '176587', '1', '1', '1', '3954.7', '-1409.52', '238.798', '1.75736', '0', '0', '0.769897', '0.638168', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91724', '142141', '1', '1', '1', '3899.11', '-1438.66', '216.751', '3.38314', '0', '0', '0.992716', '-0.120478', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91725', '142142', '1', '1', '1', '3879.11', '-1440.83', '214.268', '3.0729', '0', '0', '0.99941', '0.034338', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91726', '176587', '1', '1', '1', '3746.44', '-1562.96', '211.553', '5.01283', '0', '0', '0.59332', '-0.804967', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91727', '176583', '1', '1', '1', '3802.88', '-1597.08', '218.324', '0.162996', '0', '0', '0.081408', '0.996681', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91728', '142145', '1', '1', '1', '3919.47', '-1557.98', '251.285', '1.14553', '0', '0', '0.541956', '0.840407', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91729', '142141', '1', '1', '1', '3674.87', '-1596.24', '206.303', '6.04563', '0', '0', '0.118498', '-0.992954', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91730', '176583', '1', '1', '1', '3769.84', '-1238.98', '209.594', '3.14437', '0', '0', '0.999999', '-0.00139026', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91731', '176584', '1', '1', '1', '3753.72', '-1236.81', '208.863', '3.00693', '0', '0', '0.997734', '0.0672812', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91732', '142145', '1', '1', '1', '3713.13', '-1175.87', '207.375', '2.55218', '0', '0', '0.956888', '0.290458', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91733', '176584', '1', '1', '1', '3775.06', '-1100.21', '227.928', '2.03382', '0', '0', '0.850487', '0.525996', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91734', '142145', '1', '1', '1', '3668.57', '-1028', '222.407', '2.09273', '0', '0', '0.865608', '0.500723', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91735', '176587', '1', '1', '1', '3650.12', '-1040.87', '220.757', '4.25257', '0', '0', '0.849642', '-0.527359', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91736', '142142', '1', '1', '1', '3611.27', '-1037.6', '221.454', '3.12945', '0', '0', '0.999982', '0.00606958', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91737', '142141', '1', '1', '1', '3577.75', '-1126.96', '219.165', '4.1112', '0', '0', '0.884768', '-0.466033', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91738', '142141', '1', '1', '1', '3779.85', '-1011.02', '234.093', '1.1581', '0', '0', '0.547227', '0.836984', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91739', '142145', '1', '1', '1', '3829.87', '-1015.53', '239.407', '6.26711', '0', '0', '0.00803715', '-0.999968', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91740', '176584', '1', '1', '1', '3877.91', '-991.701', '245.58', '0.757543', '0', '0', '0.369779', '0.92912', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91741', '176584', '1', '1', '1', '3774.06', '-811.892', '313.434', '2.96059', '0', '0', '0.995907', '0.0903803', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91742', '142141', '1', '1', '1', '3812.04', '-751.865', '321.048', '1.41728', '0', '0', '0.650801', '0.759248', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91743', '142145', '1', '1', '1', '3827.94', '-738.114', '321.684', '5.19898', '0', '0', '0.51594', '-0.856625', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91744', '142142', '1', '1', '1', '3849', '-676.068', '328.577', '0.865934', '0', '0', '0.419566', '0.907725', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91745', '176584', '1', '1', '1', '3879.02', '-646.71', '335.38', '0.492869', '0', '0', '0.243948', '0.969788', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91746', '176587', '1', '1', '1', '3918.51', '-614.3', '341.05', '1.09762', '0', '0', '0.521674', '0.853145', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91747', '142141', '1', '1', '1', '3937.03', '-589.887', '342.33', '0.901273', '0', '0', '0.435539', '0.90017', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91748', '142141', '1', '1', '1', '3931.6', '-918.623', '266.643', '0.186558', '0', '0', '0.0931439', '0.995653', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91749', '142145', '1', '1', '1', '4004.11', '-926.441', '256.908', '1.61756', '0', '0', '0.723446', '0.690381', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91750', '176587', '1', '1', '1', '3973.9', '-882.076', '270.299', '4.47641', '0', '0', '0.785428', '-0.618953', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91751', '142145', '1', '1', '1', '3999.94', '-791.56', '286.465', '1.3466', '0', '0', '0.623569', '0.781769', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91752', '176583', '1', '1', '1', '4035.53', '-805.404', '280.015', '0.203844', '0', '0', '0.101745', '0.99481', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91753', '176587', '1', '1', '1', '4131.79', '-708.935', '282.447', '5.42282', '0', '0', '0.417036', '-0.90889', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91754', '176584', '1', '1', '1', '4142.15', '-686.72', '284.413', '2.37548', '0', '0', '0.927527', '0.373757', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91755', '176587', '1', '1', '1', '4348.44', '-671.701', '269.917', '2.73283', '0', '0', '0.979187', '0.20296', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91756', '176583', '1', '1', '1', '4289.05', '-601.542', '290.035', '2.48936', '0', '0', '0.947294', '0.320367', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91757', '142145', '1', '1', '1', '4279.72', '-521.85', '300.833', '1.85319', '0', '0', '0.799579', '0.600561', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91758', '142141', '1', '1', '1', '4348.14', '-504.755', '302.057', '1.05208', '0', '0', '0.502113', '0.864802', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91759', '176586', '1', '1', '1', '4432.96', '-469.969', '330.299', '2.89384', '0', '0', '0.992337', '0.123561', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91760', '142145', '1', '1', '1', '4450.95', '-644.313', '272.055', '5.36391', '0', '0', '0.443624', '-0.896213', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91761', '176587', '1', '1', '1', '4460.57', '-664.948', '269.226', '3.70279', '0', '0', '0.96089', '-0.276931', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91762', '176584', '1', '1', '1', '4518.92', '-654.607', '259.879', '0.490517', '0', '0', '0.242807', '0.970075', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91763', '176587', '1', '1', '1', '4505.7', '-763.102', '262.062', '4.09158', '0', '0', '0.889297', '-0.457331', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91764', '176587', '1', '1', '1', '4632.31', '-667.644', '260.519', '1.42908', '0', '0', '0.65527', '0.755394', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91765', '176586', '1', '1', '1', '4959.49', '-4681.15', '899.739', '1.71969', '0', '0', '0.757741', '0.652556', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91766', '176588', '1', '1', '1', '5029.15', '-4584.18', '853.796', '1.52411', '0', '0', '0.690411', '0.723417', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91767', '176588', '1', '1', '1', '5072.75', '-4707.42', '847.602', '5.15658', '0', '0', '0.53398', '-0.845497', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91768', '176589', '1', '1', '1', '5036.57', '-4852.24', '872.426', '4.23767', '0', '0', '0.853548', '-0.521014', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91769', '176588', '1', '1', '1', '5101.09', '-4913.2', '869.807', '4.99558', '0', '0', '0.600241', '-0.799819', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91770', '176588', '1', '1', '1', '5116.07', '-4969.3', '879.079', '4.7364', '0', '0', '0.698567', '-0.715545', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91771', '176588', '1', '1', '1', '5263.26', '-4877.79', '693.282', '0.514884', '0', '0', '0.254608', '0.967044', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91772', '176588', '1', '1', '1', '5205.36', '-4794.42', '691.837', '2.06997', '0', '0', '0.859855', '0.510538', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91773', '176588', '1', '1', '1', '5292.12', '-4784.62', '690.898', '5.98518', '0', '0', '0.148452', '-0.98892', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91774', '176588', '1', '1', '1', '5150.09', '-4551.58', '837.737', '1.25316', '0', '0', '0.586376', '0.810039', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91775', '176588', '1', '1', '1', '5185.55', '-4379.96', '898.945', '1.63407', '0', '0', '0.729121', '0.684384', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91776', '176588', '1', '1', '1', '5278.63', '-4445.16', '847.005', '6.16582', '0', '0', '0.0586489', '-0.998279', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91777', '176588', '1', '1', '1', '5337.63', '-4545.26', '696.972', '1.72047', '0', '0', '0.757996', '0.652259', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91778', '176588', '1', '1', '1', '5433.2', '-4553.98', '814.631', '0.982197', '0', '0', '0.471595', '0.881815', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91779', '176588', '1', '1', '1', '5417.65', '-4624.49', '801.587', '1.65372', '0', '0', '0.735808', '0.67719', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91780', '176588', '1', '1', '1', '5491.64', '-4618.08', '809.366', '1.30815', '0', '0', '0.608425', '0.793611', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91781', '176586', '1', '1', '1', '5495.99', '-4586.99', '826.356', '1.00184', '0', '0', '0.480235', '0.87714', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91782', '176588', '1', '1', '1', '5494.95', '-4491.15', '752.143', '4.84795', '0', '0', '0.657592', '-0.753374', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91783', '176588', '1', '1', '1', '5359.16', '-4847.29', '816.457', '3.12085', '0', '0', '0.999946', '0.0103719', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91784', '176588', '1', '1', '1', '5351.69', '-5068.72', '913.175', '5.27048', '0', '0', '0.484989', '-0.87452', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91785', '176586', '1', '1', '1', '5417.12', '-4963.19', '884.921', '1.62231', '0', '0', '0.725082', '0.688662', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91786', '176588', '1', '1', '1', '5443.63', '-4885.82', '865.513', '1.14714', '0', '0', '0.542635', '0.839969', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91787', '176588', '1', '1', '1', '5473.42', '-4836.51', '848.193', '1.25239', '0', '0', '0.586065', '0.810264', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91788', '176589', '1', '1', '1', '5489.62', '-4935.45', '854.654', '1.75976', '0', '0', '0.770663', '0.637243', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91789', '176588', '1', '1', '1', '5525.79', '-4935.84', '841.274', '1.4299', '0', '0', '0.655578', '0.755127', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91790', '176588', '1', '1', '1', '5567.42', '-4871.51', '843.828', '0.896611', '0', '0', '0.433439', '0.901183', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91791', '176588', '1', '1', '1', '5678.59', '-4964.66', '805.339', '0.511774', '0', '0', '0.253104', '0.967439', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91792', '176586', '1', '1', '1', '5693.39', '-5002.34', '806.914', '4.84325', '0', '0', '0.659361', '-0.751827', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91793', '176586', '1', '1', '1', '5869.66', '-4985.52', '837.23', '0.723839', '0', '0', '0.35407', '0.935219', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91794', '176588', '1', '1', '1', '5942.22', '-5025.06', '807.398', '1.9687', '0', '0', '0.832913', '0.553404', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91795', '176588', '1', '1', '1', '6009.35', '-5033.72', '783.34', '0.370413', '0', '0', '0.184149', '0.982898', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91796', '176588', '1', '1', '1', '6198.24', '-5062.2', '780.957', '0.0444708', '0', '0', '0.0222335', '0.999753', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91797', '176588', '1', '1', '1', '6380.49', '-5053.47', '752.063', '1.26183', '0', '0', '0.589884', '0.807488', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91798', '176586', '1', '1', '1', '6372.29', '-5145.45', '796.98', '4.69403', '0', '0', '0.713567', '-0.700587', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91799', '176588', '1', '1', '1', '6427.61', '-5040.21', '745.286', '1.10083', '0', '0', '0.523043', '0.852306', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91800', '176588', '1', '1', '1', '6482.19', '-5055.34', '747.655', '2.00797', '0', '0', '0.843618', '0.536944', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91801', '176589', '1', '1', '1', '6567.35', '-5101.42', '767.662', '0.739558', '0', '0', '0.361409', '0.932407', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91802', '176586', '1', '1', '1', '6663.75', '-5129.63', '785.282', '1.0655', '0', '0', '0.507904', '0.861414', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91803', '176588', '1', '1', '1', '6741.61', '-5171.71', '740.456', '4.96501', '0', '0', '0.612397', '-0.790551', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91804', '176586', '1', '1', '1', '6776.33', '-5206.04', '762.804', '1.74487', '0', '0', '0.765898', '0.642962', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91805', '176589', '1', '1', '1', '6793.91', '-5160.02', '732.814', '5.18886', '0', '0', '0.520268', '-0.854003', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91806', '176588', '1', '1', '1', '6842.68', '-5135.36', '698', '1.75274', '0', '0', '0.768421', '0.639945', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91807', '176586', '1', '1', '1', '6919.68', '-5237.86', '753.261', '4.63909', '0', '0', '0.73254', '-0.680724', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91808', '176588', '1', '1', '1', '7001.45', '-5183.34', '725.524', '0.907655', '0', '0', '0.438409', '0.898776', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91809', '176588', '1', '1', '1', '6986.99', '-5141.59', '698.581', '1.08437', '0', '0', '0.516008', '0.856583', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91810', '176586', '1', '1', '1', '7097.94', '-5168.09', '754.909', '5.44334', '0', '0', '0.407691', '-0.91312', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91811', '176588', '1', '1', '1', '7149.29', '-5147.14', '778.349', '5.34516', '0', '0', '0.452004', '-0.892016', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91812', '176588', '1', '1', '1', '7237.16', '-5159.2', '759.439', '3.82934', '0', '0', '0.941455', '-0.337138', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91813', '176588', '1', '1', '1', '6584.76', '-4945.41', '706.594', '1.19826', '0', '0', '0.563923', '0.825827', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91814', '176588', '1', '1', '1', '6659.84', '-4941.55', '718.141', '0.0515761', '0', '0', '0.0257852', '0.999668', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91815', '176588', '1', '1', '1', '6658.69', '-4848.83', '718.233', '1.61766', '0', '0', '0.72348', '0.690345', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91816', '176588', '1', '1', '1', '6744.43', '-4913.05', '771.421', '5.7952', '0', '0', '0.241579', '-0.970381', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91817', '176586', '1', '1', '1', '6798.36', '-4927.63', '762.886', '6.25073', '0', '0', '0.0162284', '-0.999868', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91818', '176586', '1', '1', '1', '7003', '-4825.28', '724.322', '6.13291', '0', '0', '0.0750673', '-0.997178', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91819', '176588', '1', '1', '1', '7045.58', '-4751.35', '741.78', '0.953209', '0', '0', '0.458765', '0.888558', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91820', '176586', '1', '1', '1', '7133.62', '-4723.03', '709.028', '0.144248', '0', '0', '0.0720617', '0.9974', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91821', '176588', '1', '1', '1', '7183.99', '-4759.3', '725.293', '1.76296', '0', '0', '0.77168', '0.636011', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91822', '176588', '1', '1', '1', '7207.04', '-4709.42', '741.079', '1.13857', '0', '0', '0.539028', '0.842288', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91823', '176588', '1', '1', '1', '7074.86', '-4989.08', '719.287', '4.97131', '0', '0', '0.609902', '-0.792477', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91824', '176588', '1', '1', '1', '7163.89', '-4929.56', '712.196', '0.60057', '0', '0', '0.295793', '0.955252', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91825', '176588', '1', '1', '1', '7267.8', '-4969.6', '728.134', '6.096', '0', '0', '0.0934567', '-0.995623', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91826', '176588', '1', '1', '1', '7342.54', '-4964.22', '709.779', '6.15569', '0', '0', '0.0637049', '-0.997969', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91827', '176586', '1', '1', '1', '7471.77', '-5095.72', '736.505', '5.32317', '0', '0', '0.461786', '-0.886991', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91828', '176588', '1', '1', '1', '7557.14', '-5081.22', '750.868', '4.72941', '0', '0', '0.701063', '-0.7131', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91829', '176588', '1', '1', '1', '7520.78', '-4979.4', '701.94', '2.09047', '0', '0', '0.865043', '0.501697', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91830', '176586', '1', '1', '1', '7353.33', '-4833.25', '717.593', '0.818128', '0', '0', '0.397751', '0.917493', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91831', '176586', '1', '1', '1', '7590.01', '-4778.32', '740.885', '1.14014', '0', '0', '0.539692', '0.841863', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91832', '176588', '1', '1', '1', '7528.68', '-4741.56', '677.692', '3.03688', '0', '0', '0.99863', '0.0523328', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91833', '176588', '1', '1', '1', '7414.79', '-4692.46', '630.001', '2.72665', '0', '0', '0.978555', '0.205988', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91834', '176588', '1', '1', '1', '7376.11', '-4572.95', '595.518', '1.96088', '0', '0', '0.830743', '0.556656', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91835', '176588', '1', '1', '1', '7126.2', '-4593.6', '636.728', '2.10618', '0', '0', '0.868957', '0.494887', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91836', '176588', '1', '1', '1', '7198.52', '-4495.59', '611.831', '0.771005', '0', '0', '0.376025', '0.92661', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91837', '176588', '1', '1', '1', '6871.08', '-4447.54', '747.55', '0.877032', '0', '0', '0.424596', '0.905383', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91838', '176586', '1', '1', '1', '6922.33', '-4294.78', '768.252', '1.74882', '0', '0', '0.767166', '0.641448', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91839', '176586', '1', '1', '1', '6985.75', '-4332.9', '773.834', '2.47925', '0', '0', '0.945662', '0.325152', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91840', '176586', '1', '1', '1', '6990.56', '-4415.76', '732.911', '4.74905', '0', '0', '0.694028', '-0.719948', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91841', '176588', '1', '1', '1', '7106.1', '-4226.98', '693.513', '0.782784', '0', '0', '0.381475', '0.924379', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91842', '176588', '1', '1', '1', '7149.3', '-4362.89', '652.731', '4.94932', '0', '0', '0.618577', '-0.785724', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91843', '176586', '1', '1', '1', '7255', '-4345.48', '663.342', '1.8038', '0', '0', '0.784507', '0.62012', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91844', '176586', '1', '1', '1', '7376.07', '-4257.47', '698.098', '1.24617', '0', '0', '0.583543', '0.812083', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91845', '176586', '1', '1', '1', '7317.95', '-4232.19', '744.363', '5.73472', '0', '0', '0.27081', '-0.962633', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91846', '176588', '1', '1', '1', '7506.39', '-4288.29', '648.904', '6.1392', '0', '0', '0.0719318', '-0.99741', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91847', '176588', '1', '1', '1', '7322.14', '-4414.25', '649.845', '3.5199', '0', '0', '0.982164', '-0.188027', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91848', '176588', '1', '1', '1', '7352.65', '-4429.02', '647.636', '6.04103', '0', '0', '0.120784', '-0.992679', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91849', '176588', '1', '1', '1', '7543.72', '-4501.51', '605.158', '0.00915885', '0', '0', '0.00457941', '0.99999', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91850', '176588', '1', '1', '1', '7692.34', '-4536.27', '648.321', '5.75513', '0', '0', '0.260973', '-0.965346', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91851', '176588', '1', '1', '1', '7768', '-4488.21', '655.919', '1.61216', '0', '0', '0.721577', '0.692334', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91852', '176588', '1', '1', '1', '7856.82', '-4592.51', '702.684', '2.55934', '0', '0', '0.957922', '0.28703', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91853', '176588', '1', '1', '1', '7907.34', '-4663.12', '748.264', '6.01117', '0', '0', '0.135588', '-0.990765', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91854', '176588', '1', '1', '1', '7920.26', '-4474.93', '707.278', '1.13777', '0', '0', '0.538695', '0.842501', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91855', '176588', '1', '1', '1', '7966.67', '-4348.55', '745.984', '0.513383', '0', '0', '0.253882', '0.967235', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91856', '176586', '1', '1', '1', '7963.72', '-4319.55', '733.302', '1.45193', '0', '0', '0.663859', '0.747858', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91857', '176588', '1', '1', '1', '7914.25', '-4211.9', '689.261', '0.580141', '0', '0', '0.28602', '0.958224', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91858', '176586', '1', '1', '1', '7726.75', '-4380.05', '696.513', '3.50575', '0', '0', '0.983469', '-0.181074', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91859', '176588', '1', '1', '1', '7752.9', '-4347.73', '721.051', '0.957134', '0', '0', '0.460507', '0.887656', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91860', '176588', '1', '1', '1', '7645.85', '-4246.42', '662.317', '1.73861', '0', '0', '0.763879', '0.64536', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91861', '176588', '1', '1', '1', '7643.73', '-4108.25', '735.504', '0.839324', '0', '0', '0.407452', '0.913227', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91862', '176586', '1', '1', '1', '7700.42', '-4104.64', '730.388', '4.21655', '0', '0', '0.859002', '-0.511972', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91863', '176588', '1', '1', '1', '7786.17', '-4056.76', '687.897', '1.10637', '0', '0', '0.525401', '0.850855', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91864', '176588', '1', '1', '1', '8172.84', '-3813.8', '698.916', '0.0500112', '0', '0', '0.025003', '0.999687', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91865', '176589', '1', '1', '1', '8090.14', '-3821.52', '697.715', '1.44409', '0', '0', '0.660922', '0.750455', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91866', '176588', '1', '1', '1', '7951.44', '-3761.97', '710.495', '3.74924', '0', '0', '0.9542', '-0.299169', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91867', '176588', '1', '1', '1', '7866.31', '-3847.06', '693.836', '2.66696', '0', '0', '0.971972', '0.235096', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91868', '176586', '1', '1', '1', '7725.6', '-3797.38', '726.998', '3.04395', '0', '0', '0.998808', '0.0488021', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91869', '176588', '1', '1', '1', '7709.77', '-3775.57', '726.077', '2.0622', '0', '0', '0.857865', '0.513875', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91870', '176588', '1', '1', '1', '7587.11', '-3844.63', '687.669', '4.01234', '0', '0', '0.906712', '-0.42175', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91871', '176588', '1', '1', '1', '7501.04', '-3938.98', '718.74', '0.101056', '0', '0', '0.0505066', '0.998724', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91872', '176586', '1', '1', '1', '7520.97', '-3919.23', '718.242', '0.544805', '0', '0', '0.269046', '0.963127', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91873', '176588', '1', '1', '1', '7384.01', '-4037.45', '689.617', '3.76887', '0', '0', '0.951218', '-0.30852', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91874', '176586', '1', '1', '1', '7310.52', '-3929.31', '700.862', '1.54226', '0', '0', '0.696947', '0.717122', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91875', '176586', '1', '1', '1', '7255.4', '-4030.62', '717.179', '5.67738', '0', '0', '0.298292', '-0.954475', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91876', '176586', '1', '1', '1', '6852.76', '-3756.61', '742.413', '2.25304', '0', '0', '0.902923', '0.429803', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91877', '176588', '1', '1', '1', '6849.41', '-3690.33', '743.314', '2.18236', '0', '0', '0.887172', '0.461439', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91878', '176588', '1', '1', '1', '6778.31', '-3669.04', '731.652', '1.89883', '0', '0', '0.813075', '0.582159', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91879', '176586', '1', '1', '1', '6868.94', '-3581.43', '735.618', '1.19983', '0', '0', '0.564571', '0.825385', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91880', '176588', '1', '1', '1', '6751.3', '-3463.22', '678.045', '2.49573', '0', '0', '0.94831', '0.317346', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91881', '176588', '1', '1', '1', '6821.6', '-3436.8', '704.367', '5.84153', '0', '0', '0.219037', '-0.975717', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91882', '176588', '1', '1', '1', '6917.87', '-3373.79', '753.435', '5.80304', '0', '0', '0.237771', '-0.971321', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91883', '176586', '1', '1', '1', '6921.04', '-3343.91', '741.395', '1.44801', '0', '0', '0.662391', '0.749159', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91884', '176586', '1', '1', '1', '6925.09', '-3242.14', '711.793', '1.48728', '0', '0', '0.676972', '0.736009', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91885', '176588', '1', '1', '1', '6852.3', '-3217.91', '638.327', '1.66792', '0', '0', '0.740599', '0.671947', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91886', '176588', '1', '1', '1', '6782.2', '-3277.53', '650.972', '4.79773', '0', '0', '0.676299', '-0.736628', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91887', '176586', '1', '1', '1', '6674.42', '-3207.54', '620.852', '2.53579', '0', '0', '0.954475', '0.298292', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91888', '176588', '1', '1', '1', '6639.05', '-3016.14', '574.56', '2.24676', '0', '0', '0.901568', '0.432637', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91889', '176588', '1', '1', '1', '6759.05', '-3117.9', '574.028', '5.35694', '0', '0', '0.446743', '-0.894662', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91890', '176588', '1', '1', '1', '6783', '-3073.86', '577.15', '1.04511', '0', '0', '0.499094', '0.866548', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91891', '176586', '1', '1', '1', '6880.4', '-3087.7', '636.247', '5.78891', '0', '0', '0.244631', '-0.969616', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91892', '176588', '1', '1', '1', '6870.65', '-3068.16', '617.34', '2.06612', '0', '0', '0.85887', '0.512194', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91893', '176586', '1', '1', '1', '6850.38', '-2983.46', '597.121', '0.562081', '0', '0', '0.277355', '0.960767', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91894', '176586', '1', '1', '1', '6876.86', '-2824.84', '622.671', '1.1472', '0', '0', '0.54266', '0.839952', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91895', '176586', '1', '1', '1', '6877.94', '-2712.74', '584.977', '5.6279', '0', '0', '0.321813', '-0.946803', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91896', '176588', '1', '1', '1', '6777.79', '-2769.83', '576.883', '4.93282', '0', '0', '0.625041', '-0.780592', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91897', '176586', '1', '1', '1', '6690.44', '-2744.37', '576.004', '2.94183', '0', '0', '0.995016', '0.0997134', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91898', '176588', '1', '1', '1', '6636.8', '-2744.65', '554.259', '3.2717', '0', '0', '0.997885', '-0.0650085', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91899', '176588', '1', '1', '1', '6675.69', '-2614.22', '522.218', '1.21003', '0', '0', '0.568775', '0.822493', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91900', '176588', '1', '1', '1', '6773.82', '-2535.3', '550.926', '0.817332', '0', '0', '0.397385', '0.917652', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91901', '176588', '1', '1', '1', '6675.29', '-2476.32', '537.591', '2.60019', '0', '0', '0.963583', '0.26741', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91902', '176586', '1', '1', '1', '6876.61', '-2538.41', '591.799', '2.23498', '0', '0', '0.899004', '0.43794', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91903', '176589', '1', '1', '1', '6847.56', '-2492.14', '561.877', '3.09893', '0', '0', '0.999772', '0.0213317', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91904', '176586', '1', '1', '1', '6305.42', '-2342.72', '588.731', '0.0869207', '0', '0', '0.0434467', '0.999056', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91905', '176588', '1', '1', '1', '6336.47', '-2456.65', '547.624', '4.97996', '0', '0', '0.606471', '-0.795105', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91906', '176588', '1', '1', '1', '6265.59', '-2521.46', '565.525', '4.66579', '0', '0', '0.723389', '-0.690441', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91907', '176588', '1', '1', '1', '6438.69', '-2484.29', '557.864', '0.723092', '0', '0', '0.353721', '0.935351', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91908', '176588', '1', '1', '1', '6453.3', '-2612.18', '566.071', '2.48239', '0', '0', '0.946171', '0.323666', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91909', '176586', '1', '1', '1', '6395.62', '-2618.78', '583.258', '4.22205', '0', '0', '0.857592', '-0.514331', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91910', '176588', '1', '1', '1', '6411.77', '-2747.69', '572.708', '2.38814', '0', '0', '0.929875', '0.367876', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91911', '176586', '1', '1', '1', '6392.54', '-2862.81', '606.325', '4.68151', '0', '0', '0.71794', '-0.696105', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91912', '176588', '1', '1', '1', '6444.85', '-3039.88', '575.992', '4.548', '0', '0', '0.762775', '-0.646664', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91913', '176586', '1', '1', '1', '6375.78', '-3140.05', '618.971', '0.106571', '0', '0', '0.0532605', '0.998581', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91914', '176589', '1', '1', '1', '6441.78', '-3168.12', '572.327', '0.0280383', '0', '0', '0.0140187', '0.999902', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91915', '176588', '1', '1', '1', '6474.31', '-3232.03', '572', '4.88965', '0', '0', '0.641742', '-0.766921', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91916', '176586', '1', '1', '1', '6378.64', '-3253.09', '622.034', '5.09778', '0', '0', '0.558606', '-0.829433', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91917', '176588', '1', '1', '1', '6517.28', '-3386.8', '594.819', '6.26487', '0', '0', '0.00915887', '-0.999958', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91918', '176586', '1', '1', '1', '6384.2', '-3475.51', '686.927', '3.29449', '0', '0', '0.997079', '-0.0763737', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91919', '176586', '1', '1', '1', '6390.52', '-3556.33', '705.391', '4.49223', '0', '0', '0.780509', '-0.625144', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91920', '176588', '1', '1', '1', '6375.21', '-3577.02', '719.23', '3.94245', '0', '0', '0.920894', '-0.389812', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91921', '176588', '1', '1', '1', '6451.92', '-3580.92', '681.719', '0.459207', '0', '0', '0.227591', '0.973757', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91922', '176588', '1', '1', '1', '6567.6', '-3571.8', '706.658', '4.91791', '0', '0', '0.630842', '-0.775911', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91923', '176586', '1', '1', '1', '6498.66', '-3635.4', '726.392', '4.93361', '0', '0', '0.62473', '-0.780841', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91924', '176586', '1', '1', '1', '6442.54', '-3707.86', '720.111', '5.63497', '0', '0', '0.318465', '-0.947935', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91925', '176588', '1', '1', '1', '6351.97', '-3705.95', '729.817', '3.84033', '0', '0', '0.939589', '-0.342306', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91926', '176588', '1', '1', '1', '6431.31', '-3890.46', '677.463', '4.22126', '0', '0', '0.857795', '-0.513993', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91927', '176588', '1', '1', '1', '6515.9', '-3897.17', '663.684', '1.81402', '0', '0', '0.787664', '0.616106', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91928', '176589', '1', '1', '1', '6624.89', '-4026.04', '659.926', '2.84682', '0', '0', '0.989158', '0.146853', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91929', '176588', '1', '1', '1', '6702.08', '-3949.79', '699.694', '0.726242', '0', '0', '0.355194', '0.934793', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91930', '176586', '1', '1', '1', '6781.32', '-4034.24', '703.281', '0.239292', '0', '0', '0.119361', '0.992851', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91931', '176588', '1', '1', '1', '6767.89', '-4151.91', '716.972', '4.46867', '0', '0', '0.787819', '-0.615907', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91932', '176588', '1', '1', '1', '6711.13', '-4400.06', '737.082', '5.06557', '0', '0', '0.571889', '-0.820331', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91933', '176588', '1', '1', '1', '6576.41', '-4337.23', '688.717', '2.03236', '0', '0', '0.850103', '0.526616', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91934', '176588', '1', '1', '1', '6524.62', '-4097.33', '661.561', '1.46688', '0', '0', '0.669428', '0.742877', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91935', '176586', '1', '1', '1', '6391.72', '-4153.59', '706.82', '4.79305', '0', '0', '0.678023', '-0.735041', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91936', '176588', '1', '1', '1', '6427.02', '-4223.53', '669.127', '5.37424', '0', '0', '0.438989', '-0.898492', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91937', '176588', '1', '1', '1', '6295.19', '-4207.22', '722.357', '2.95128', '0', '0', '0.995476', '0.0950108', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91938', '176588', '1', '1', '1', '6220.76', '-4179.16', '725.753', '2.64891', '0', '0', '0.969811', '0.24386', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91939', '176586', '1', '1', '1', '6505.64', '-4436.25', '729.724', '5.3169', '0', '0', '0.464566', '-0.885539', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91940', '176588', '1', '1', '1', '6449.35', '-4421.81', '723.299', '2.84289', '0', '0', '0.988868', '0.148795', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91941', '176588', '1', '1', '1', '6445.36', '-4509.26', '734.721', '4.64145', '0', '0', '0.731737', '-0.681587', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91942', '176588', '1', '1', '1', '6364.32', '-4543.22', '749.51', '3.4987', '0', '0', '0.984102', '-0.177606', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91943', '176586', '1', '1', '1', '6385.9', '-4621.26', '792.189', '4.37835', '0', '0', '0.814821', '-0.579713', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91944', '176586', '1', '1', '1', '6313.54', '-4544.13', '745.879', '6.15335', '0', '0', '0.0648745', '-0.997893', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91945', '176588', '1', '1', '1', '6325.85', '-4791.05', '749.504', '5.41114', '0', '0', '0.42234', '-0.906438', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91946', '176588', '1', '1', '1', '6260.83', '-4790.39', '756.138', '3.17668', '0', '0', '0.999846', '-0.0175419', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91947', '176588', '1', '1', '1', '6110.31', '-4847.92', '747.445', '4.0681', '0', '0', '0.894602', '-0.446863', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91948', '176586', '1', '1', '1', '6017.28', '-4708.87', '791.06', '4.75533', '0', '0', '0.691764', '-0.722123', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91949', '176588', '1', '1', '1', '6168.44', '-4608.32', '715.436', '0.131687', '0', '0', '0.0657959', '0.997833', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91950', '176588', '1', '1', '1', '6221.04', '-4495.04', '690.748', '1.50613', '0', '0', '0.68388', '0.729595', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91951', '176588', '1', '1', '1', '6175.78', '-4438.32', '662.398', '1.59645', '0', '0', '0.71612', '0.697977', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91952', '176589', '1', '1', '1', '6186.46', '-4400.1', '664.609', '5.14646', '0', '0', '0.538255', '-0.842782', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91953', '176588', '1', '1', '1', '6164.87', '-4338.94', '745.709', '4.32964', '0', '0', '0.828695', '-0.559701', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91954', '176588', '1', '1', '1', '6047.79', '-4386.76', '710.982', '2.35829', '0', '0', '0.92428', '0.381714', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91955', '176588', '1', '1', '1', '6001.75', '-4414.24', '711.415', '3.84269', '0', '0', '0.939184', '-0.343415', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91956', '176588', '1', '1', '1', '5998.43', '-4526.47', '705.3', '5.32316', '0', '0', '0.461789', '-0.88699', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91957', '176588', '1', '1', '1', '5934.18', '-4580.04', '717.809', '2.25619', '0', '0', '0.903597', '0.428384', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91958', '176588', '1', '1', '1', '5883.9', '-4642.79', '741.888', '4.17256', '0', '0', '0.870055', '-0.492954', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91959', '176588', '1', '1', '1', '5766.06', '-4599.35', '764.903', '2.28367', '0', '0', '0.909399', '0.415925', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91960', '176589', '1', '1', '1', '5684.76', '-4508.88', '765.505', '1.17861', '0', '0', '0.555784', '0.831327', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91961', '176588', '1', '1', '1', '5640.98', '-4570.65', '765.871', '3.92751', '0', '0', '0.92378', '-0.382923', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91962', '176586', '1', '1', '1', '5651.36', '-4438.02', '795.225', '0.566004', '0', '0', '0.279239', '0.960222', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91963', '176588', '1', '1', '1', '5753.29', '-4373.9', '797.845', '0.954777', '0', '0', '0.459461', '0.888198', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91964', '176588', '1', '1', '1', '5889.81', '-4315.26', '797.185', '6.16589', '0', '0', '0.0586115', '-0.998281', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91965', '176586', '1', '1', '1', '5938.5', '-4281.94', '802.647', '5.8321', '0', '0', '0.223634', '-0.974673', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91966', '176588', '1', '1', '1', '5830.75', '-4479.71', '836.711', '2.39206', '0', '0', '0.930594', '0.366053', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91967', '176586', '1', '1', '1', '5810.2', '-4520.97', '802.584', '4.31236', '0', '0', '0.8335', '-0.55252', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91968', '176588', '1', '1', '1', '5355.24', '-4657.93', '692.871', '0.397147', '0', '0', '0.197271', '0.980349', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91969', '1617', '1', '1', '1', '9698.41', '431.945', '1314.9', '0.439493', '0', '0', '0.217982', '0.975953', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91970', '1620', '1', '1', '1', '9658.49', '494.704', '1308.73', '3.25515', '0', '0', '0.998389', '-0.0567483', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91971', '1617', '1', '1', '1', '9624.26', '562.896', '1317.69', '2.64254', '0', '0', '0.969029', '0.246945', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91972', '1617', '1', '1', '1', '9524.13', '625.94', '1273.38', '0.527462', '0', '0', '0.260684', '0.965424', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91973', '1620', '1', '1', '1', '9489.84', '657.515', '1268.18', '2.10219', '0', '0', '0.867966', '0.496623', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91974', '1617', '1', '1', '1', '9421.4', '564.362', '1320.21', '4.88249', '0', '0', '0.644484', '-0.764618', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91975', '1617', '1', '1', '1', '9452.16', '537.826', '1320.2', '2.41241', '0', '0', '0.93427', '0.356565', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91976', '1617', '1', '1', '1', '9855.79', '268.422', '1326.67', '1.1165', '0', '0', '0.529703', '0.848183', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91977', '1617', '1', '1', '1', '9856.01', '376.474', '1312.05', '1.17933', '0', '0', '0.556084', '0.831126', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91978', '1617', '1', '1', '1', '9960.5', '281.608', '1322.66', '0.242349', '0', '0', '0.120878', '0.992667', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91979', '1617', '1', '1', '1', '10097.8', '440.56', '1324.37', '1.3262', '0', '0', '0.615562', '0.788089', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91980', '1617', '1', '1', '1', '10039.3', '456.984', '1315.73', '3.24335', '0', '0', '0.998706', '-0.0508588', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91981', '1620', '1', '1', '1', '10019.6', '486.978', '1313.84', '1.78251', '0', '0', '0.777862', '0.628435', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91982', '1617', '1', '1', '1', '9984.23', '465.931', '1309.99', '3.8324', '0', '0', '0.940938', '-0.338578', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91983', '1617', '1', '1', '1', '10002.6', '389.883', '1312.06', '5.80453', '0', '0', '0.237048', '-0.971498', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91984', '1617', '1', '1', '1', '9795.63', '567.932', '1299.62', '2.21605', '0', '0', '0.894818', '0.446431', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91985', '1617', '1', '1', '1', '9669.94', '644.032', '1301.32', '1.79978', '0', '0', '0.783258', '0.621696', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91986', '1617', '1', '1', '1', '9646.3', '628.828', '1309.01', '5.07882', '0', '0', '0.566444', '-0.8241', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91987', '1617', '1', '1', '1', '9720.27', '710.501', '1295.46', '2.62838', '0', '0', '0.967256', '0.253802', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91988', '1617', '1', '1', '1', '9696.17', '810.473', '1292.2', '5.60896', '0', '0', '0.330761', '-0.943714', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91989', '1617', '1', '1', '1', '9591.81', '861.734', '1254.89', '2.00399', '0', '0', '0.842546', '0.538624', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91990', '1617', '1', '1', '1', '9332.89', '633.508', '1317.92', '2.16499', '0', '0', '0.883131', '0.469126', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91991', '1620', '1', '1', '1', '9340.81', '653.242', '1314.47', '2.71006', '0', '0', '0.976812', '0.214097', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91992', '1617', '1', '1', '1', '9372.54', '680.149', '1307.27', '0.91935', '0', '0', '0.443657', '0.896197', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91993', '1619', '1', '1', '1', '9379.07', '710.673', '1297.96', '1.24529', '0', '0', '0.583186', '0.812339', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91994', '1617', '1', '1', '1', '9412.04', '791.816', '1256.68', '1.04109', '0', '0', '0.497352', '0.867549', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91995', '1617', '1', '1', '1', '9315.29', '945.035', '1303.03', '1.8579', '0', '0', '0.800992', '0.598675', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91996', '1617', '1', '1', '1', '9207.1', '1094.97', '1318.37', '1.54767', '0', '0', '0.698883', '0.715236', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91997', '1617', '1', '1', '1', '9254.08', '1243.51', '1298.01', '0.679803', '0', '0', '0.333394', '0.942787', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91998', '1619', '1', '1', '1', '9324.24', '1260.82', '1262.17', '3.36195', '0', '0', '0.993937', '-0.109953', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('91999', '1617', '1', '1', '1', '9356.19', '1307.47', '1254', '3.04386', '0', '0', '0.998806', '0.0488476', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92000', '1619', '1', '1', '1', '9428.35', '1259.34', '1259.73', '6.10298', '0', '0', '0.0899812', '-0.995943', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92001', '1619', '1', '1', '1', '9554.9', '1215.5', '1279.28', '4.69713', '0', '0', '0.712482', '-0.70169', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92002', '1617', '1', '1', '1', '9479.6', '1166.24', '1254.95', '0.126103', '0', '0', '0.0630098', '0.998013', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92003', '1617', '1', '1', '1', '9534.8', '1030.07', '1260.1', '1.49662', '0', '0', '0.6804', '0.732841', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92004', '1617', '1', '1', '1', '9619.31', '1136.7', '1270.61', '1.799', '0', '0', '0.783015', '0.622002', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92005', '1619', '1', '1', '1', '9677.83', '1161.34', '1276.49', '4.15127', '0', '0', '0.875252', '-0.483667', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92006', '1620', '1', '1', '1', '9711.34', '1172.06', '1272.3', '0.126105', '0', '0', '0.0630107', '0.998013', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92007', '1617', '1', '1', '1', '9779.31', '1171.94', '1281.7', '6.02052', '0', '0', '0.130955', '-0.991388', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92008', '1619', '1', '1', '1', '9702.13', '1321.04', '1330.13', '0.487393', '0', '0', '0.241292', '0.970453', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92009', '1619', '1', '1', '1', '9769.67', '1350.08', '1323.9', '4.72462', '0', '0', '0.702769', '-0.711418', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92010', '1619', '1', '1', '1', '9826.75', '1348.01', '1324.36', '1.26101', '0', '0', '0.589554', '0.807729', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92011', '1617', '1', '1', '1', '9845.68', '1323.2', '1310.82', '0.907584', '0', '0', '0.438377', '0.898791', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92012', '1619', '1', '1', '1', '9913.72', '1379.85', '1317.37', '0.962562', '0', '0', '0.462915', '0.886403', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92013', '1617', '1', '1', '1', '9968.61', '1405.87', '1291.52', '1.20996', '0', '0', '0.568747', '0.822513', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92014', '1617', '1', '1', '1', '10044.6', '1256.94', '1324.08', '1.88934', '0', '0', '0.810302', '0.586012', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92015', '1619', '1', '1', '1', '10003.6', '1524.73', '1301.07', '1.66942', '0', '0', '0.741101', '0.671394', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92016', '1617', '1', '1', '1', '9996.66', '1545.89', '1304.85', '0.0357887', '0', '0', '0.0178934', '0.99984', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92017', '1619', '1', '1', '1', '10001.4', '1654.78', '1332.43', '0.958631', '0', '0', '0.461172', '0.887311', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92018', '1617', '1', '1', '1', '9999.14', '1742.3', '1333.56', '2.35271', '0', '0', '0.923212', '0.384291', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92019', '1617', '1', '1', '1', '9877.68', '1749.84', '1326.98', '3.7625', '0', '0', '0.952195', '-0.305492', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92020', '1619', '1', '1', '1', '9815.09', '1790.15', '1320.51', '1.6812', '0', '0', '0.745042', '0.667017', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92021', '1617', '1', '1', '1', '9813.75', '1854.15', '1313.95', '0.71123', '0', '0', '0.348167', '0.937433', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92022', '1617', '1', '1', '1', '9728.73', '1804.76', '1298.25', '3.5583', '0', '0', '0.978373', '-0.206848', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92023', '1619', '1', '1', '1', '9675.57', '1760.44', '1293.87', '1.26493', '0', '0', '0.591135', '0.806573', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92024', '1619', '1', '1', '1', '9590.31', '1929.47', '1321.26', '1.22566', '0', '0', '0.575185', '0.818023', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92025', '1619', '1', '1', '1', '9488.76', '1850.19', '1336.43', '3.4287', '0', '0', '0.989714', '-0.143063', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92026', '1619', '1', '1', '1', '9417.27', '1799.71', '1340.79', '5.02306', '0', '0', '0.589196', '-0.80799', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92027', '1617', '1', '1', '1', '9413.88', '1607.67', '1287.44', '5.89092', '0', '0', '0.194876', '-0.980828', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92028', '1619', '1', '1', '1', '9277.27', '1539.72', '1286.75', '3.25984', '0', '0', '0.998253', '-0.0590913', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92029', '1617', '1', '1', '1', '9304.78', '1462.86', '1280.4', '5.72992', '0', '0', '0.27312', '-0.96198', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92030', '1617', '1', '1', '1', '9137.56', '1519.11', '1324.81', '2.40375', '0', '0', '0.932718', '0.360608', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92031', '1617', '1', '1', '1', '9179.22', '1579.59', '1313.07', '4.57146', '0', '0', '0.755138', '-0.655566', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92032', '1619', '1', '1', '1', '9115.99', '1745.12', '1325.89', '2.29773', '0', '0', '0.912299', '0.409524', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92033', '1617', '1', '1', '1', '9101.16', '1825.11', '1327.95', '3.09884', '0', '0', '0.999771', '0.0213767', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92034', '1619', '1', '1', '1', '9295.05', '1685.58', '1315.79', '5.64745', '0', '0', '0.312544', '-0.949903', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92035', '1619', '1', '1', '1', '10196.5', '1779.58', '1333.14', '5.50214', '0', '0', '0.380672', '-0.92471', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92036', '1617', '1', '1', '1', '10252.8', '1741.92', '1321.12', '0.440244', '0', '0', '0.218349', '0.975871', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92037', '1617', '1', '1', '1', '10289.6', '1904.85', '1324.49', '2.04089', '0', '0', '0.85234', '0.522989', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92038', '1619', '1', '1', '1', '10478.3', '2036.51', '1340.81', '4.81177', '0', '0', '0.671112', '-0.741356', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92039', '1619', '1', '1', '1', '10616', '2048.16', '1338.93', '3.00929', '0', '0', '0.997813', '0.0661052', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92040', '1617', '1', '1', '1', '10751.1', '2022.87', '1325.02', '5.24375', '0', '0', '0.496636', '-0.867959', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92041', '1617', '1', '1', '1', '10736.6', '1968.64', '1336.85', '4.92566', '0', '0', '0.627831', '-0.77835', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92042', '1618', '1', '1', '1', '10745.3', '1949.29', '1336.53', '6.02521', '0', '0', '0.128629', '-0.991693', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92043', '1617', '1', '1', '1', '10859.2', '2005.94', '1318.61', '0.558838', '0', '0', '0.275797', '0.961216', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92044', '1619', '1', '1', '1', '10903.9', '1902.98', '1337.71', '2.25137', '0', '0', '0.902562', '0.43056', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92045', '1617', '1', '1', '1', '10951.5', '1880.83', '1331.42', '1.78405', '0', '0', '0.778346', '0.627835', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92046', '1619', '1', '1', '1', '10935.9', '1781.05', '1328.26', '3.98318', '0', '0', '0.912766', '-0.408484', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92047', '1617', '1', '1', '1', '10911.3', '1761.01', '1324.09', '2.55375', '0', '0', '0.957116', '0.289707', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92048', '1617', '1', '1', '1', '10810.1', '1751.39', '1324.97', '2.49485', '0', '0', '0.948169', '0.317766', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92049', '1619', '1', '1', '1', '10788.2', '1712.23', '1308.43', '4.84712', '0', '0', '0.657906', '-0.7531', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92050', '1617', '1', '1', '1', '10734.3', '1790.56', '1330.71', '1.79559', '0', '0', '0.781955', '0.623335', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92051', '1617', '1', '1', '1', '10971.6', '1658.43', '1278.52', '0.927731', '0', '0', '0.447409', '0.89433', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92052', '1619', '1', '1', '1', '10626.1', '1717.39', '1319.88', '2.22757', '0', '0', '0.897374', '0.44127', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92053', '1617', '1', '1', '1', '10576.7', '1747.19', '1312.03', '1.83879', '0', '0', '0.795236', '0.6063', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92054', '1619', '1', '1', '1', '10609.2', '1787.73', '1322.43', '5.33225', '0', '0', '0.457756', '-0.889078', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92055', '1617', '1', '1', '1', '10602.7', '1827.24', '1319.11', '1.23247', '0', '0', '0.577966', '0.816061', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92056', '1619', '1', '1', '1', '10489.4', '1857.75', '1314.9', '2.05321', '0', '0', '0.855546', '0.517727', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92057', '1620', '1', '1', '1', '10336.4', '1617.9', '1298.25', '0.454921', '0', '0', '0.225504', '0.974242', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92058', '1617', '1', '1', '1', '10279.1', '1559.9', '1298.14', '5.39115', '0', '0', '0.431376', '-0.902172', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92059', '1617', '1', '1', '1', '10220.3', '1445.81', '1330.68', '6.1577', '0', '0', '0.0627022', '-0.998032', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92060', '1617', '1', '1', '1', '10261.5', '1426.21', '1337.09', '5.73358', '0', '0', '0.271355', '-0.962479', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92061', '1620', '1', '1', '1', '10299.4', '1414.09', '1341.98', '0.565663', '0', '0', '0.279076', '0.960269', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92062', '1619', '1', '1', '1', '10300.2', '1378.58', '1348.84', '3.46771', '0', '0', '0.986735', '-0.162338', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92063', '1619', '1', '1', '1', '10425.8', '1418.79', '1342.88', '2.36266', '0', '0', '0.925111', '0.379696', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92064', '1617', '1', '1', '1', '10481.8', '1448.25', '1329.86', '0.238154', '0', '0', '0.118796', '0.992919', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92065', '1617', '1', '1', '1', '10397.2', '1538.12', '1304.81', '0.945012', '0', '0', '0.455119', '0.890431', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92066', '1619', '1', '1', '1', '10494.3', '1544.26', '1307.59', '6.06581', '0', '0', '0.108474', '-0.994099', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92067', '1617', '1', '1', '1', '10504.5', '1606.64', '1294.3', '1.37305', '0', '0', '0.633855', '0.773452', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92068', '1618', '1', '1', '1', '10569', '1536.63', '1311.64', '5.73202', '0', '0', '0.27211', '-0.962266', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92069', '1619', '1', '1', '1', '10607', '1560.98', '1313.88', '1.09031', '0', '0', '0.518551', '0.855046', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92070', '1619', '1', '1', '1', '10561.5', '1463.78', '1326.67', '4.19263', '0', '0', '0.865063', '-0.501663', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92071', '1617', '1', '1', '1', '10609.3', '1440.6', '1322.92', '1.74612', '0', '0', '0.766297', '0.642487', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92072', '1619', '1', '1', '1', '10692.9', '1390.06', '1329.44', '5.87338', '0', '0', '0.203469', '-0.979081', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92073', '1619', '1', '1', '1', '10768.1', '1444.22', '1331.92', '6.22681', '0', '0', '0.0281835', '-0.999603', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92074', '1617', '1', '1', '1', '10813.4', '1462.6', '1315.29', '1.16492', '0', '0', '0.55008', '0.835112', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92075', '1619', '1', '1', '1', '10880', '1355.08', '1326.61', '4.95447', '0', '0', '0.616552', '-0.787314', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92076', '1617', '1', '1', '1', '10915', '1365.41', '1320.66', '6.05403', '0', '0', '0.114327', '-0.993443', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92077', '1617', '1', '1', '1', '10977.4', '1354.74', '1331.34', '6.05011', '0', '0', '0.116276', '-0.993217', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92078', '1617', '1', '1', '1', '10960.1', '1436.12', '1306.81', '1.42804', '0', '0', '0.654876', '0.755737', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92079', '1619', '1', '1', '1', '10947.4', '1517.59', '1281.46', '0.324551', '0', '0', '0.161564', '0.986862', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92080', '1617', '1', '1', '1', '10890.1', '1508.46', '1289.85', '3.43473', '0', '0', '0.989278', '-0.146044', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92081', '1619', '1', '1', '1', '10763.9', '1558.02', '1315.11', '6.08544', '0', '0', '0.0987104', '-0.995116', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92082', '1617', '1', '1', '1', '10718', '1519.36', '1304.83', '2.28019', '0', '0', '0.908673', '0.417509', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92083', '1619', '530', '1', '1', '-4412.57', '-11515.2', '21.752', '5.63987', '0', '0', '0.316142', '-0.948712', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92084', '1619', '530', '1', '1', '-4516.05', '-11457.8', '2.69554', '1.62648', '0', '0', '0.726519', '0.687147', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92085', '1619', '530', '1', '1', '-4622.5', '-11444', '24.0596', '0.232403', '0', '0', '0.11594', '0.993256', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92086', '1619', '530', '1', '1', '-4690.5', '-11536.7', '29.6259', '5.299', '0', '0', '0.472471', '-0.881346', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92087', '1619', '530', '1', '1', '-4778.92', '-11432.4', '2.93723', '3.66145', '0', '0', '0.966409', '-0.25701', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92088', '1619', '530', '1', '1', '-4861.21', '-11471.3', '22.232', '1.19922', '0', '0', '0.56432', '0.825556', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92089', '1619', '530', '1', '1', '-4966.15', '-11304.3', '7.96196', '2.11027', '0', '0', '0.869968', '0.493108', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92090', '1617', '530', '1', '1', '-4973.36', '-11260.6', '26.0111', '1.61547', '0', '0', '0.722725', '0.691136', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92091', '1619', '530', '1', '1', '-4985.92', '-11229.1', '17.6969', '2.04744', '0', '0', '0.85405', '0.520191', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92092', '1618', '530', '1', '1', '-4949.79', '-11135.6', '24.1222', '1.00679', '0', '0', '0.482402', '0.87595', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92093', '1619', '530', '1', '1', '-4905.59', '-11097.6', '10.5372', '0.186049', '0', '0', '0.0928902', '0.995676', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92094', '1618', '530', '1', '1', '-4948.31', '-10947.8', '12.8472', '1.88251', '0', '0', '0.808297', '0.588775', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92095', '1619', '530', '1', '1', '-4990.28', '-10980.5', '20.1565', '0.57482', '0', '0', '0.28347', '0.958981', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92096', '1617', '530', '1', '1', '-4993.71', '-11003.3', '22.2864', '5.13013', '0', '0', '0.545115', '-0.838361', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92097', '1618', '530', '1', '1', '-5057.54', '-11014.1', '27.389', '3.36691', '0', '0', '0.993661', '-0.112422', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92098', '1618', '530', '1', '1', '-5208.27', '-10938.4', '13.2284', '2.17311', '0', '0', '0.885028', '0.465538', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92099', '1618', '530', '1', '1', '-5283.94', '-11065.6', '13.5132', '4.69816', '0', '0', '0.71212', '-0.702058', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92100', '1619', '530', '1', '1', '-5225.53', '-11213.9', '37.9918', '4.70209', '0', '0', '0.710738', '-0.703456', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92101', '1619', '530', '1', '1', '-5143.62', '-11247.2', '3.83001', '6.13937', '0', '0', '0.0718476', '-0.997416', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92102', '1618', '530', '1', '1', '-5172.15', '-11173.6', '36.6049', '2.3184', '0', '0', '0.916484', '0.400071', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92103', '1619', '530', '1', '1', '-5171.8', '-11147.1', '35.0113', '1.6783', '0', '0', '0.744077', '0.668094', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92104', '1617', '530', '1', '1', '-4873.34', '-11752.8', '20.9415', '5.08302', '0', '0', '0.564711', '-0.825289', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92105', '1619', '530', '1', '1', '-4923.81', '-11724.3', '14.0416', '2.09065', '0', '0', '0.865088', '0.50162', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92106', '1619', '530', '1', '1', '-4965.28', '-11770.9', '15.5673', '5.30686', '0', '0', '0.469005', '-0.883196', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92107', '1619', '530', '1', '1', '-4873.46', '-12027.5', '25.5357', '4.75315', '0', '0', '0.692548', '-0.721371', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92108', '1619', '530', '1', '1', '-4795.84', '-12267.3', '2.31983', '5.11837', '0', '0', '0.550037', '-0.83514', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92109', '1617', '530', '1', '1', '-4620.74', '-12112.9', '41.0038', '0.543422', '0', '0', '0.26838', '0.963313', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92110', '1619', '530', '1', '1', '-4547.14', '-12115', '32.3973', '6.18258', '0', '0', '0.0502807', '-0.998735', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92111', '1618', '530', '1', '1', '-4375.8', '-11762.2', '4.06218', '5.59746', '0', '0', '0.336186', '-0.941796', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92112', '1617', '530', '1', '1', '-4440.63', '-11821.4', '9.40718', '5.2401', '0', '0', '0.498219', '-0.867051', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92113', '1618', '530', '1', '1', '-4454.15', '-11878.1', '12.9579', '4.53324', '0', '0', '0.767526', '-0.641018', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92114', '1618', '530', '1', '1', '-4301.68', '-12038.1', '1.89092', '4.92594', '0', '0', '0.62772', '-0.778439', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92115', '1617', '530', '1', '1', '-4224.06', '-12087.3', '6.07373', '2.50692', '0', '0', '0.95007', '0.312037', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92116', '1618', '530', '1', '1', '-4454.36', '-12213', '9.63746', '2.39461', '0', '0', '0.931059', '0.364868', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92117', '1617', '530', '1', '1', '-4557.46', '-12280.2', '16.8385', '4.32276', '0', '0', '0.830616', '-0.556845', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92118', '1619', '530', '1', '1', '-4650.24', '-12478.1', '26.7494', '4.53481', '0', '0', '0.767022', '-0.641621', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92119', '1617', '530', '1', '1', '-4510.09', '-12688.6', '14.6901', '0.63138', '0', '0', '0.310472', '0.950582', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92120', '1617', '530', '1', '1', '-4499.83', '-12837.2', '10.7106', '5.01704', '0', '0', '0.591625', '-0.806213', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92121', '1617', '530', '1', '1', '-4352.23', '-12811.4', '14.6132', '1.64768', '0', '0', '0.73376', '0.679408', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92122', '1617', '530', '1', '1', '-4362.28', '-12653.5', '19.4582', '1.19215', '0', '0', '0.561399', '0.827546', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92123', '1619', '530', '1', '1', '-4283.14', '-12708.3', '22.8336', '4.8364', '0', '0', '0.661932', '-0.749564', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92124', '1617', '530', '1', '1', '-4157.92', '-12866.3', '3.4625', '1.06885', '0', '0', '0.509345', '0.860563', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92125', '1619', '530', '1', '1', '-4147.4', '-12829.7', '10.5722', '1.68931', '0', '0', '0.747742', '0.663989', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92126', '1619', '530', '1', '1', '-4000.93', '-12725.5', '18.8479', '0.915694', '0', '0', '0.442018', '0.897006', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92127', '1619', '530', '1', '1', '-3988.15', '-12691.5', '66.0461', '3.84523', '0', '0', '0.938747', '-0.344606', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92128', '1619', '530', '1', '1', '-4106.01', '-12691', '17.9245', '3.73527', '0', '0', '0.956265', '-0.292501', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92129', '1619', '530', '1', '1', '-3868.55', '-12535.5', '35.6927', '0.970673', '0', '0', '0.466506', '0.884518', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92130', '1619', '530', '1', '1', '-3842.01', '-12716.2', '21.1784', '6.07183', '0', '0', '0.105483', '-0.994421', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92131', '1617', '530', '1', '1', '-3833.35', '-12770.4', '9.52279', '2.459', '0', '0', '0.942321', '0.334711', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92132', '1618', '530', '1', '1', '-3488.63', '-12805.4', '9.36568', '2.86349', '0', '0', '0.990348', '0.138606', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92133', '1618', '530', '1', '1', '-3440.9', '-12708.8', '18.3263', '1.39871', '0', '0', '0.643726', '0.765256', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92134', '1618', '530', '1', '1', '-3203.14', '-12865.3', '10.9114', '5.02333', '0', '0', '0.589087', '-0.80807', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92135', '1618', '530', '1', '1', '-3215.48', '-12677.2', '25.4193', '1.76785', '0', '0', '0.773235', '0.63412', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92136', '1617', '530', '1', '1', '-3255.32', '-12567.8', '49.2086', '1.55972', '0', '0', '0.703181', '0.711011', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92137', '1619', '530', '1', '1', '-3234.74', '-12577.4', '44.6329', '0.0792451', '0', '0', '0.0396122', '0.999215', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92138', '1618', '530', '1', '1', '-2996.2', '-12574.7', '13.8176', '1.87231', '0', '0', '0.805285', '0.592888', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92139', '1618', '530', '1', '1', '-3014.11', '-12421.3', '20.1334', '4.03216', '0', '0', '0.902489', '-0.430712', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92140', '1618', '530', '1', '1', '-3024.68', '-12289.9', '17.3944', '1.33824', '0', '0', '0.620296', '0.784368', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92141', '1619', '530', '1', '1', '-2991.65', '-12280.3', '19.038', '0.992664', '0', '0', '0.476203', '0.879335', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92142', '1619', '530', '1', '1', '-2995.73', '-12191.4', '14.7946', '1.55422', '0', '0', '0.701223', '0.712942', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92143', '1618', '530', '1', '1', '-3105.22', '-12117.1', '12.6638', '2.60666', '0', '0', '0.964443', '0.26429', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92144', '1618', '530', '1', '1', '-3181.93', '-12022.2', '9.82805', '1.88016', '0', '0', '0.807607', '0.589722', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92145', '1619', '530', '1', '1', '-3306.09', '-11942.7', '7.69831', '3.07397', '0', '0', '0.999428', '0.033805', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92146', '1619', '530', '1', '1', '-3510.22', '-11807.7', '5.31178', '0.21512', '0', '0', '0.107353', '0.994221', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92147', '1618', '530', '1', '1', '-3644.67', '-11904.1', '8.99551', '4.25207', '0', '0', '0.849776', '-0.527144', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92148', '1619', '530', '1', '1', '-3792.19', '-11808.8', '14.0011', '1.38536', '0', '0', '0.638603', '0.769537', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92149', '1618', '530', '1', '1', '-3819.36', '-12107.1', '3.35055', '6.08596', '0', '0', '0.0984525', '-0.995142', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92150', '1619', '530', '1', '1', '-3979.3', '-12379.1', '3.73539', '4.61726', '0', '0', '0.739926', '-0.672688', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92151', '1618', '530', '1', '1', '-3566.15', '-12189.4', '5.60379', '1.03192', '0', '0', '0.49337', '0.86982', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92152', '1617', '530', '1', '1', '-3634.58', '-12067.1', '22.6191', '2.8242', '0', '0', '0.987434', '0.158032', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92153', '1618', '530', '1', '1', '-3452', '-12042.3', '24.1816', '0.954947', '0', '0', '0.459537', '0.888159', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92154', '1619', '530', '1', '1', '-3304.11', '-12126.9', '38.195', '5.89511', '0', '0', '0.192823', '-0.981234', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92155', '1619', '530', '1', '1', '-3358.14', '-12223.9', '37.3672', '5.42387', '0', '0', '0.416561', '-0.909108', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92156', '1618', '530', '1', '1', '-3575.15', '-12462.4', '9.23764', '0.14599', '0', '0', '0.0729301', '0.997337', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92157', '1619', '530', '1', '1', '-3448.35', '-12435.4', '17.8201', '3.18155', '0', '0', '0.9998', '-0.0199793', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92158', '1619', '530', '1', '1', '-3360', '-12517.8', '56.3822', '5.51419', '0', '0', '0.375095', '-0.926987', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92159', '1619', '530', '1', '1', '-3162.5', '-12440.3', '52.4254', '3.65986', '0', '0', '0.966612', '-0.256244', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92160', '1619', '530', '1', '1', '-3202.48', '-12294.9', '62.3699', '5.58016', '0', '0', '0.344318', '-0.938853', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92161', '1618', '530', '1', '1', '-3183.05', '-12247.3', '44.5496', '1.17408', '0', '0', '0.553898', '0.832585', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92162', '1617', '530', '1', '1', '-2690.04', '-12053', '12.886', '6.15743', '0', '0', '0.0628364', '-0.998024', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92163', '1618', '530', '1', '1', '-2680.23', '-11958.2', '11.7944', '2.88232', '0', '0', '0.991609', '0.129275', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92164', '1617', '530', '1', '1', '-2651.93', '-11924.2', '14.5586', '0.871697', '0', '0', '0.42218', '0.906512', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92165', '1619', '530', '1', '1', '-2698.55', '-11900.3', '8.80028', '2.17153', '0', '0', '0.88466', '0.466236', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92166', '1617', '530', '1', '1', '-2570.58', '-11891.6', '23.8394', '4.78691', '0', '0', '0.680277', '-0.732955', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92167', '1619', '530', '1', '1', '-2541.48', '-11818', '15.3836', '2.15582', '0', '0', '0.880971', '0.473171', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92168', '1617', '530', '1', '1', '-2526.18', '-11994.7', '26.5231', '0.970661', '0', '0', '0.466501', '0.884521', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92169', '1617', '530', '1', '1', '-2426.08', '-12059.2', '33.0177', '1.12381', '0', '0', '0.532799', '0.846242', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92170', '1617', '530', '1', '1', '-2455.44', '-12149.4', '33.2414', '4.2654', '0', '0', '0.846242', '-0.532799', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92171', '1618', '530', '1', '1', '-2481.48', '-12190', '29.9037', '3.76275', '0', '0', '0.952157', '-0.305609', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92172', '1619', '530', '1', '1', '-2512.73', '-12260.2', '23.0883', '3.93946', '0', '0', '0.921475', '-0.388438', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92173', '1617', '530', '1', '1', '-2618.39', '-12212', '16.9117', '2.09771', '0', '0', '0.866852', '0.498566', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92174', '1618', '530', '1', '1', '-2499.26', '-12374.3', '14.2622', '5.27228', '0', '0', '0.484203', '-0.874956', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92175', '1617', '530', '1', '1', '-2433.89', '-12353.7', '18.5796', '0.504912', '0', '0', '0.249783', '0.968302', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92176', '1618', '530', '1', '1', '-2326.4', '-12199.1', '28.459', '5.07593', '0', '0', '0.567632', '-0.823282', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92177', '1618', '530', '1', '1', '-2338.46', '-12081.4', '30.9735', '0.650213', '0', '0', '0.319409', '0.947617', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92178', '1617', '530', '1', '1', '-2267.33', '-12160.8', '32.1085', '0.787654', '0', '0', '0.383725', '0.923447', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92179', '1619', '530', '1', '1', '-2222.72', '-12368.4', '50.0541', '0.561452', '0', '0', '0.277053', '0.960855', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92180', '1617', '530', '1', '1', '-2204.24', '-12369', '44.778', '0.490766', '0', '0', '0.242928', '0.970044', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92181', '1620', '530', '1', '1', '-2143.61', '-12349.2', '23.5649', '4.15858', '0', '0', '0.873479', '-0.486862', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92182', '1617', '530', '1', '1', '-2020.95', '-12203.9', '29.1689', '4.83402', '0', '0', '0.662823', '-0.748776', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92183', '1618', '530', '1', '1', '-2028.66', '-12135.5', '27.6601', '1.47252', '0', '0', '0.67152', '0.740987', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92184', '1617', '530', '1', '1', '-1979.58', '-12126.8', '19.0808', '0.013245', '0', '0', '0.00662247', '0.999978', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92185', '1618', '530', '1', '1', '-2124.74', '-11978.4', '33.07', '2.18958', '0', '0', '0.888833', '0.458232', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92186', '1617', '530', '1', '1', '-2167.27', '-11977.4', '33.0256', '3.04174', '0', '0', '0.998754', '0.0499053', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92187', '1617', '530', '1', '1', '-2252.06', '-11815.7', '32.3358', '4.88743', '0', '0', '0.642595', '-0.766206', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92188', '1619', '530', '1', '1', '-2273.42', '-11816.3', '23.3813', '3.23809', '0', '0', '0.998836', '-0.0482297', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92189', '1618', '530', '1', '1', '-2282.18', '-11740.9', '19.3347', '1.72149', '0', '0', '0.758327', '0.651874', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92190', '1617', '530', '1', '1', '-2698.47', '-11490.1', '17.9302', '5.1309', '0', '0', '0.544795', '-0.838569', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92191', '1619', '530', '1', '1', '-2660.25', '-11349.7', '18.3391', '5.39793', '0', '0', '0.428315', '-0.90363', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92192', '1619', '530', '1', '1', '-2560.95', '-11287.3', '40.0983', '3.30092', '0', '0', '0.996828', '-0.0795818', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92193', '1619', '530', '1', '1', '-2335.67', '-11238.3', '32.1428', '0.829276', '0', '0', '0.402859', '0.915262', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92194', '1617', '530', '1', '1', '-2376.88', '-11384.2', '28.6781', '5.02331', '0', '0', '0.589094', '-0.808065', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92195', '1619', '530', '1', '1', '-2418.24', '-11441.2', '32.1264', '0.574025', '0', '0', '0.283088', '0.959094', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92196', '1618', '530', '1', '1', '-2302.88', '-11566', '24.005', '3.75489', '0', '0', '0.953351', '-0.301865', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92197', '1621', '530', '1', '1', '-2229.88', '-11571.7', '28.0934', '0.460148', '0', '0', '0.228049', '0.97365', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92198', '1620', '530', '1', '1', '-2255.87', '-11464.4', '33.7115', '2.54145', '0', '0', '0.955316', '0.295587', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92199', '1617', '530', '1', '1', '-2394.18', '-11665.8', '17.8672', '5.03116', '0', '0', '0.585917', '-0.810371', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92200', '1618', '530', '1', '1', '-2083.61', '-11585.4', '47.5346', '0.805719', '0', '0', '0.392051', '0.919944', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92201', '1618', '530', '1', '1', '-1952', '-11673.2', '37.9728', '1.46545', '0', '0', '0.668897', '0.743355', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92202', '1618', '530', '1', '1', '-1987.75', '-11509.3', '60.4944', '0.581874', '0', '0', '0.28685', '0.957976', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92203', '1621', '530', '1', '1', '-1951.05', '-11498.8', '58.1581', '6.02076', '0', '0', '0.130838', '-0.991404', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92204', '1617', '530', '1', '1', '-2026.37', '-11460.5', '58.2099', '0.542602', '0', '0', '0.267985', '0.963423', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92205', '1621', '530', '1', '1', '-2143.37', '-11456.8', '87.1783', '4.17507', '0', '0', '0.869435', '-0.494047', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92206', '1619', '530', '1', '1', '-2152.78', '-11366.5', '60.674', '1.51257', '0', '0', '0.686224', '0.727391', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92207', '1619', '530', '1', '1', '-2105.93', '-11199.4', '78.3096', '2.38043', '0', '0', '0.92845', '0.371458', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92208', '1618', '530', '1', '1', '-2070.58', '-11092.5', '58.652', '1.06489', '0', '0', '0.507642', '0.861568', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92209', '1621', '530', '1', '1', '-2116.76', '-11008.2', '58.5991', '2.02308', '0', '0', '0.847649', '0.530557', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92210', '1617', '530', '1', '1', '-2122.18', '-10997', '58.4393', '2.02308', '0', '0', '0.847649', '0.530557', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92211', '1618', '530', '1', '1', '-2092.62', '-10939', '67.5101', '1.06882', '0', '0', '0.509333', '0.86057', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92212', '1617', '530', '1', '1', '-2008.33', '-10910.1', '60.2663', '5.27228', '0', '0', '0.484205', '-0.874955', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92213', '1621', '530', '1', '1', '-1975.09', '-11027.4', '58.742', '5.6414', '0', '0', '0.315412', '-0.948955', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92214', '1619', '530', '1', '1', '-1931.85', '-11035.2', '67.0069', '0.202521', '0', '0', '0.101087', '0.994878', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92215', '1618', '530', '1', '1', '-1950.71', '-11108.5', '58.3314', '4.33764', '0', '0', '0.826449', '-0.563012', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92216', '1618', '530', '1', '1', '-1849.22', '-11192.8', '60.5423', '5.95949', '0', '0', '0.161144', '-0.986931', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92217', '1617', '530', '1', '1', '-1943.09', '-11237.9', '66.745', '4.90077', '0', '0', '0.63747', '-0.770475', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92218', '1619', '530', '1', '1', '-1922.67', '-11402.8', '68.34', '5.31702', '0', '0', '0.46451', '-0.885568', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92219', '1618', '530', '1', '1', '-1862.17', '-11383.7', '50.51', '0.781347', '0', '0', '0.380811', '0.924653', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92220', '1617', '530', '1', '1', '-1810.65', '-11399.7', '47.2226', '5.88251', '0', '0', '0.199001', '-0.979999', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92221', '1621', '530', '1', '1', '-1825.74', '-11483.5', '45.356', '3.54594', '0', '0', '0.979632', '-0.2008', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92222', '1619', '530', '1', '1', '-1838.34', '-11541.8', '39.8424', '4.6023', '0', '0', '0.744938', '-0.667134', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92223', '1617', '530', '1', '1', '-1806.9', '-11537.2', '35.289', '0.459326', '0', '0', '0.227649', '0.973743', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92224', '1617', '530', '1', '1', '-1822.64', '-11630', '35.6606', '5.29401', '0', '0', '0.474669', '-0.880164', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92225', '1621', '530', '1', '1', '-1690.07', '-11446.2', '44.6731', '1.87282', '0', '0', '0.805436', '0.592682', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92226', '1619', '530', '1', '1', '-1759.41', '-11386', '58.8073', '2.48543', '0', '0', '0.946663', '0.322226', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92227', '1618', '530', '1', '1', '-1691.96', '-11368.9', '54.5208', '5.98438', '0', '0', '0.148846', '-0.98886', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92228', '1617', '530', '1', '1', '-1647.31', '-11419.3', '46.315', '0.730067', '0', '0', '0.35698', '0.934112', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92229', '1617', '530', '1', '1', '-1644.33', '-11472.7', '45.5622', '5.50529', '0', '0', '0.379217', '-0.925308', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92230', '1618', '530', '1', '1', '-1587.2', '-11465.8', '53.3602', '0.545495', '0', '0', '0.269379', '0.963034', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92231', '1620', '530', '1', '1', '-1579.95', '-11580.5', '32.8928', '6.25141', '0', '0', '0.0158875', '-0.999874', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92232', '1621', '530', '1', '1', '-1511.9', '-11577.7', '27.7685', '3.70672', '0', '0', '0.960344', '-0.278817', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92233', '1617', '530', '1', '1', '-1466.85', '-11513.8', '49.6424', '1.46048', '0', '0', '0.667048', '0.745015', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92234', '1617', '530', '1', '1', '-1471.5', '-11475.4', '69.2327', '1.51546', '0', '0', '0.687273', '0.726399', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92235', '1619', '530', '1', '1', '-1497.44', '-11469.9', '67.4416', '4.03658', '0', '0', '0.901534', '-0.432709', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92236', '1617', '530', '1', '1', '-1481.85', '-11376.2', '68.1139', '0.580831', '0', '0', '0.28635', '0.958125', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92237', '1618', '530', '1', '1', '-1477.05', '-11421', '67.9454', '0.235255', '0', '0', '0.117356', '0.99309', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92238', '1622', '530', '1', '1', '-1392.57', '-11410.1', '56.9232', '5.2029', '0', '0', '0.514257', '-0.857636', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92239', '1621', '530', '1', '1', '-1398.33', '-11454', '74.5878', '0.863577', '0', '0', '0.418496', '0.908219', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92240', '1620', '530', '1', '1', '-1338.77', '-11424.9', '21.9843', '1.23664', '0', '0', '0.579668', '0.814853', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92241', '1619', '530', '1', '1', '-1336.54', '-11404.9', '19.4172', '2.09665', '0', '0', '0.866589', '0.499022', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92242', '1617', '530', '1', '1', '-1292.67', '-11357', '22.8184', '5.43852', '0', '0', '0.409888', '-0.912136', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92243', '2045', '530', '1', '1', '-1279.57', '-11204.4', '-17.6825', '1.65683', '0', '0', '0.736861', '0.676045', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92244', '2045', '530', '1', '1', '-1094.73', '-11137.2', '-79.1706', '0.0978109', '0', '0', '0.048886', '0.998804', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92245', '1619', '530', '1', '1', '-1395.42', '-10701.9', '79.3513', '0.290233', '0', '0', '0.144608', '0.989489', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92246', '1621', '530', '1', '1', '-1428.14', '-10654.3', '80.8671', '2.0024', '0', '0', '0.842119', '0.539292', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92247', '1617', '530', '1', '1', '-1464.02', '-10688.4', '71.2473', '3.33758', '0', '0', '0.995203', '-0.0978357', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92248', '1620', '530', '1', '1', '-1702.88', '-10777.7', '61.4463', '2.99593', '0', '0', '0.997349', '0.0727653', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92249', '1621', '530', '1', '1', '-1735.97', '-10931', '66.0786', '4.38216', '0', '0', '0.813715', '-0.581264', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92250', '1617', '530', '1', '1', '-1644.86', '-11024.7', '69.0018', '1.60577', '0', '0', '0.719363', '0.694634', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92251', '1620', '530', '1', '1', '-1654.17', '-11067.7', '74.9092', '2.63857', '0', '0', '0.968538', '0.248867', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92252', '1617', '530', '1', '1', '-1620.01', '-11167.3', '75.1524', '5.90268', '0', '0', '0.189105', '-0.981957', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92253', '1622', '530', '1', '1', '-1505.55', '-11260.6', '68.6205', '0.512491', '0', '0', '0.25345', '0.967348', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92254', '1620', '530', '1', '1', '-1467.43', '-11253.1', '14.1017', '5.111', '0', '0', '0.55311', '-0.833108', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92255', '1619', '530', '1', '1', '-1461', '-11268.9', '11.1199', '2.91189', '0', '0', '0.993412', '0.1146', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92256', '1618', '530', '1', '1', '-1417.66', '-11286.7', '9.78107', '5.9396', '0', '0', '0.17095', '-0.98528', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92257', '1618', '530', '1', '1', '-1504.87', '-11076.5', '73.9806', '1.48639', '0', '0', '0.676644', '0.73631', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92258', '1619', '530', '1', '1', '-1483.95', '-11015.3', '68.2377', '1.00337', '0', '0', '0.480904', '0.876773', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92259', '1620', '530', '1', '1', '-1486.06', '-10951.4', '61.6311', '1.38036', '0', '0', '0.636677', '0.771131', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92260', '1619', '530', '1', '1', '-1519.78', '-10885.5', '58.6381', '0.881634', '0', '0', '0.426679', '0.904403', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92261', '1620', '530', '1', '1', '-2083.02', '-10697.3', '69.1001', '5.11886', '0', '0', '0.549831', '-0.835276', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92262', '1619', '530', '1', '1', '-1605.68', '-11708.7', '38.8174', '3.48131', '0', '0', '0.985609', '-0.169041', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92263', '1617', '530', '1', '1', '-1413.3', '-11836', '19.2996', '6.07312', '0', '0', '0.104841', '-0.994489', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92264', '1619', '530', '1', '1', '-1198.76', '-11758.2', '2.72865', '6.0497', '0', '0', '0.116478', '-0.993193', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92265', '1617', '530', '1', '1', '-1261.51', '-11565.1', '5.15077', '1.41585', '0', '0', '0.650259', '0.759713', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92266', '1617', '530', '1', '1', '-1523.67', '-11938.6', '19.1469', '6.23427', '0', '0', '0.0244535', '-0.999701', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92267', '1619', '530', '1', '1', '-1488.86', '-11890.3', '24.1277', '0.991741', '0', '0', '0.475797', '0.879555', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92268', '1620', '530', '1', '1', '-1606.68', '-11881.9', '11.3513', '2.98665', '0', '0', '0.997001', '0.0773928', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92269', '1617', '530', '1', '1', '-1665.26', '-11909.4', '9.10704', '5.63737', '0', '0', '0.317324', '-0.948317', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92270', '1619', '530', '1', '1', '-1646.5', '-11845.3', '21.8729', '0.740414', '0', '0', '0.361808', '0.932252', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92271', '1618', '530', '1', '1', '-1672.68', '-11991.8', '12.4053', '4.38074', '0', '0', '0.814127', '-0.580686', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92272', '2045', '530', '1', '1', '-1471.99', '-12199.9', '-15.8194', '2.63714', '0', '0', '0.96836', '0.249558', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92273', '1617', '530', '1', '1', '-1279.29', '-12316.8', '20.0985', '0.0806739', '0', '0', '0.040326', '0.999187', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92274', '1620', '530', '1', '1', '-1220.16', '-12349.7', '20.9839', '5.26038', '0', '0', '0.4894', '-0.872059', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92275', '1622', '530', '1', '1', '-1253.14', '-12443.7', '92.7391', '4.5496', '0', '0', '0.762257', '-0.647274', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92276', '1620', '530', '1', '1', '-1172.74', '-12574.3', '9.91781', '0.851158', '0', '0', '0.412848', '0.9108', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92277', '1620', '530', '1', '1', '-1311.81', '-12509.8', '26.3718', '1.62477', '0', '0', '0.725931', '0.687767', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92278', '2045', '530', '1', '1', '-1302.78', '-12728.6', '-20.2109', '5.32399', '0', '0', '0.461423', '-0.887181', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92279', '2045', '530', '1', '1', '-1558.54', '-12645.3', '-16.1325', '3.21518', '0', '0', '0.999323', '-0.0367876', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92280', '2045', '530', '1', '1', '-1564.68', '-12391.8', '-15.6053', '1.37343', '0', '0', '0.633998', '0.773334', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92281', '1618', '530', '1', '1', '-1782.25', '-12178.6', '12.1146', '2.18317', '0', '0', '0.887359', '0.461079', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92282', '1619', '530', '1', '1', '-1852.58', '-12046.9', '41.5407', '2.21459', '0', '0', '0.894492', '0.447084', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92283', '1617', '530', '1', '1', '-1803.53', '-12025.4', '36.1619', '0.529908', '0', '0', '0.261865', '0.965105', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92284', '1619', '530', '1', '1', '-1763.91', '-12043.7', '31.9407', '1.12681', '0', '0', '0.534069', '0.845441', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92285', '1619', '530', '1', '1', '-1717.71', '-12016.3', '16.8502', '0.482786', '0', '0', '0.239055', '0.971006', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92286', '1617', '530', '1', '1', '-1788.1', '-11944.6', '14.7515', '2.91752', '0', '0', '0.993731', '0.111802', '900', '100', '1');
INSERT INTO `gameobject` VALUES ('92287', '1618', '530', '1', '1', '-1770.51', '-11882', '18.0122', '1.10325', '0', '0', '0.524072', '0.851674', '900', '100', '1');

# Forum_FIX
DELETE FROM `creature_loot_template` WHERE (`entry`=36296);
INSERT INTO `creature_loot_template` VALUES 
(36296, 34057, 1, 0, 1, 1, 0, 0, 0),
(36296, 49641, 100, 0, 1, 1, 6, 67, 0),
(36296, 49715, 5, 0, 1, 1, 0, 0, 0),
(36296, 50250, 1, 0, 1, 1, 0, 0, 0),
(36296, 50320, 100, 0, 1, 1, 6, 469, 0),
(36296, 50446, 5, 0, 1, 1, 0, 0, 0),
(36296, 50471, 5, 0, 1, 1, 0, 0, 0),
(36296, 50741, 5, 0, 1, 1, 0, 0, 0),
(36296, 51804, 0, 1, 1, 1, 0, 0, 0),
(36296, 51805, 0, 1, 1, 1, 0, 0, 0),
(36296, 51806, 0, 1, 1, 1, 0, 0, 0),
(36296, 51807, 0, 1, 1, 1, 0, 0, 0),
(36296, 51808, 0, 1, 1, 1, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=33924;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(130040, 33939, 1, 1, 1, 0, 0, -7117.46, -3779.66, 8.68703, 0.205764, 300, 0, 0, 7000, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 33924;
DELETE FROM `npc_vendor` WHERE (`entry`=33924);
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minhealth` = 6986, `maxhealth` = 6986, `npcflag` = 384 WHERE `entry` = 33939;
DELETE FROM `npc_vendor` WHERE `entry` = 33939;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`extendedcost`) VALUES
(33939, 51452, 0, 0, 2950),
(33939, 51532, 0, 0, 2951),
(33939, 51404, 0, 0, 2936),
(33939, 51406, 0, 0, 2943),
(33939, 51445, 0, 0, 2946),
(33939, 51390, 0, 0, 2936),
(33939, 51458, 0, 0, 2949),
(33939, 51459, 0, 0, 2954),
(33939, 51460, 0, 0, 2949),
(33939, 51461, 0, 0, 2949),
(33939, 51462, 0, 0, 2948),
(33939, 51525, 0, 0, 2946),
(33939, 51515, 0, 0, 2945),
(33939, 51407, 0, 0, 2950),
(33939, 51388, 0, 0, 2936),
(33939, 51426, 0, 0, 2954),
(33939, 51427, 0, 0, 2949),
(33939, 51428, 0, 0, 2949),
(33939, 51425, 0, 0, 2949),
(33939, 51430, 0, 0, 2948),
(33939, 51413, 0, 0, 2949),
(33939, 51414, 0, 0, 2954),
(33939, 51415, 0, 0, 2949),
(33939, 51416, 0, 0, 2949),
(33939, 51418, 0, 0, 2948),
(33939, 51396, 0, 0, 2950),
(33939, 51456, 0, 0, 2936),
(33939, 51540, 0, 0, 2948),
(33939, 51538, 0, 0, 2949),
(33939, 51537, 0, 0, 2954),
(33939, 51536, 0, 0, 2949),
(33939, 51539, 0, 0, 2949),
(33939, 51402, 0, 0, 2936),
(33939, 51453, 0, 0, 2943),
(33939, 51392, 0, 0, 2936),
(33939, 51408, 0, 0, 2950),
(33939, 51439, 0, 0, 2946),
(33939, 51411, 0, 0, 2936),
(33939, 51429, 0, 0, 2951),
(33939, 51437, 0, 0, 2951),
(33939, 51423, 0, 0, 2951),
(33939, 51420, 0, 0, 2954),
(33939, 51421, 0, 0, 2949),
(33939, 51422, 0, 0, 2949),
(33939, 51419, 0, 0, 2949),
(33939, 51424, 0, 0, 2948),
(33939, 51493, 0, 0, 2954),
(33939, 51494, 0, 0, 2949),
(33939, 51495, 0, 0, 2949),
(33939, 51496, 0, 0, 2948),
(33939, 51492, 0, 0, 2949),
(33939, 51530, 0, 0, 2946),
(33939, 51443, 0, 0, 2946),
(33939, 51478, 0, 0, 2951),
(33939, 51472, 0, 0, 2951),
(33939, 51503, 0, 0, 2949),
(33939, 51504, 0, 0, 2954),
(33939, 51505, 0, 0, 2949),
(33939, 51506, 0, 0, 2949),
(33939, 51508, 0, 0, 2948),
(33939, 51394, 0, 0, 2936),
(33939, 51509, 0, 0, 2949),
(33939, 51510, 0, 0, 2954),
(33939, 51511, 0, 0, 2949),
(33939, 51512, 0, 0, 2949),
(33939, 51514, 0, 0, 2948),
(33939, 51483, 0, 0, 2954),
(33939, 51484, 0, 0, 2949),
(33939, 51485, 0, 0, 2949),
(33939, 51486, 0, 0, 2948),
(33939, 51482, 0, 0, 2949),
(33939, 51527, 0, 0, 2946),
(33939, 51468, 0, 0, 2949),
(33939, 51469, 0, 0, 2954),
(33939, 51470, 0, 0, 2949),
(33939, 51471, 0, 0, 2949),
(33939, 51473, 0, 0, 2948),
(33939, 51531, 0, 0, 2951),
(33939, 51480, 0, 0, 2936),
(33939, 51541, 0, 0, 2949),
(33939, 51542, 0, 0, 2954),
(33939, 51543, 0, 0, 2949),
(33939, 51544, 0, 0, 2949),
(33939, 51545, 0, 0, 2948),
(33939, 51519, 0, 0, 2945),
(33939, 51447, 0, 0, 2946),
(33939, 51455, 0, 0, 2950),
(33939, 51409, 0, 0, 2950),
(33939, 51449, 0, 0, 2936),
(33939, 51523, 0, 0, 2945),
(33939, 51497, 0, 0, 2949),
(33939, 51498, 0, 0, 2954),
(33939, 51499, 0, 0, 2949),
(33939, 51500, 0, 0, 2949),
(33939, 51502, 0, 0, 2948),
(33939, 51488, 0, 0, 2954),
(33939, 51489, 0, 0, 2949),
(33939, 51490, 0, 0, 2949),
(33939, 51491, 0, 0, 2948),
(33939, 51487, 0, 0, 2949),
(33939, 51474, 0, 0, 2949),
(33939, 51475, 0, 0, 2954),
(33939, 51476, 0, 0, 2949),
(33939, 51477, 0, 0, 2949),
(33939, 51479, 0, 0, 2948),
(33939, 51517, 0, 0, 2945),
(33939, 51533, 0, 0, 2950),
(33939, 51441, 0, 0, 2946),
(33939, 51417, 0, 0, 2951),
(33939, 51467, 0, 0, 2948),
(33939, 51465, 0, 0, 2949),
(33939, 51464, 0, 0, 2954),
(33939, 51463, 0, 0, 2949),
(33939, 51466, 0, 0, 2949),
(33939, 51521, 0, 0, 2945),
(33939, 51397, 0, 0, 2943),
(33939, 51431, 0, 0, 2936),
(33939, 51507, 0, 0, 2951),
(33939, 51513, 0, 0, 2951),
(33939, 51501, 0, 0, 2951),
(33939, 51410, 0, 0, 2951),
(33939, 51451, 0, 0, 2951),
(33939, 51535, 0, 0, 2951),
(33939, 51400, 0, 0, 2936),
(33939, 51434, 0, 0, 2954),
(33939, 51435, 0, 0, 2949),
(33939, 51436, 0, 0, 2949),
(33939, 51433, 0, 0, 2949),
(33939, 51438, 0, 0, 2948);
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 31863;
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 33921;
DELETE FROM `creature` WHERE `id`=33927;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(98362, 33936, 571, 1, 65535, 0, 0, 5753.39, 585.66, 614.969, 5.65498, 1200, 0, 0, 8025, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 33927;
DELETE FROM `npc_vendor` WHERE (`entry`=33927);
UPDATE `creature_template` SET `minlevel` = 75, `maxlevel` = 75, `minhealth` = 8025, `maxhealth` = 8025, `npcflag` = 4480 WHERE `entry` = 33936;
DELETE FROM `npc_vendor` WHERE `entry` = 33936;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`extendedcost`) VALUES
(33936, 51452, 0, 0, 2950),
(33936, 51532, 0, 0, 2951),
(33936, 51404, 0, 0, 2936),
(33936, 51406, 0, 0, 2943),
(33936, 51445, 0, 0, 2946),
(33936, 51390, 0, 0, 2936),
(33936, 51458, 0, 0, 2949),
(33936, 51459, 0, 0, 2954),
(33936, 51460, 0, 0, 2949),
(33936, 51461, 0, 0, 2949),
(33936, 51462, 0, 0, 2948),
(33936, 51525, 0, 0, 2946),
(33936, 51515, 0, 0, 2945),
(33936, 51407, 0, 0, 2950),
(33936, 51388, 0, 0, 2936),
(33936, 51426, 0, 0, 2954),
(33936, 51427, 0, 0, 2949),
(33936, 51428, 0, 0, 2949),
(33936, 51425, 0, 0, 2949),
(33936, 51430, 0, 0, 2948),
(33936, 51413, 0, 0, 2949),
(33936, 51414, 0, 0, 2954),
(33936, 51415, 0, 0, 2949),
(33936, 51416, 0, 0, 2949),
(33936, 51418, 0, 0, 2948),
(33936, 51396, 0, 0, 2950),
(33936, 51456, 0, 0, 2936),
(33936, 51540, 0, 0, 2948),
(33936, 51538, 0, 0, 2949),
(33936, 51537, 0, 0, 2954),
(33936, 51536, 0, 0, 2949),
(33936, 51539, 0, 0, 2949),
(33936, 51402, 0, 0, 2936),
(33936, 51453, 0, 0, 2943),
(33936, 51392, 0, 0, 2936),
(33936, 51408, 0, 0, 2950),
(33936, 51439, 0, 0, 2946),
(33936, 51411, 0, 0, 2936),
(33936, 51429, 0, 0, 2951),
(33936, 51437, 0, 0, 2951),
(33936, 51423, 0, 0, 2951),
(33936, 51420, 0, 0, 2954),
(33936, 51421, 0, 0, 2949),
(33936, 51422, 0, 0, 2949),
(33936, 51419, 0, 0, 2949),
(33936, 51424, 0, 0, 2948),
(33936, 51493, 0, 0, 2954),
(33936, 51494, 0, 0, 2949),
(33936, 51495, 0, 0, 2949),
(33936, 51496, 0, 0, 2948),
(33936, 51492, 0, 0, 2949),
(33936, 51530, 0, 0, 2946),
(33936, 51443, 0, 0, 2946),
(33936, 51478, 0, 0, 2951),
(33936, 51472, 0, 0, 2951),
(33936, 51503, 0, 0, 2949),
(33936, 51504, 0, 0, 2954),
(33936, 51505, 0, 0, 2949),
(33936, 51506, 0, 0, 2949),
(33936, 51508, 0, 0, 2948),
(33936, 51394, 0, 0, 2936),
(33936, 51509, 0, 0, 2949),
(33936, 51510, 0, 0, 2954),
(33936, 51511, 0, 0, 2949),
(33936, 51512, 0, 0, 2949),
(33936, 51514, 0, 0, 2948),
(33936, 51483, 0, 0, 2954),
(33936, 51484, 0, 0, 2949),
(33936, 51485, 0, 0, 2949),
(33936, 51486, 0, 0, 2948),
(33936, 51482, 0, 0, 2949),
(33936, 51527, 0, 0, 2946),
(33936, 51468, 0, 0, 2949),
(33936, 51469, 0, 0, 2954),
(33936, 51470, 0, 0, 2949),
(33936, 51471, 0, 0, 2949),
(33936, 51473, 0, 0, 2948),
(33936, 51531, 0, 0, 2951),
(33936, 51480, 0, 0, 2936),
(33936, 51541, 0, 0, 2949),
(33936, 51542, 0, 0, 2954),
(33936, 51543, 0, 0, 2949),
(33936, 51544, 0, 0, 2949),
(33936, 51545, 0, 0, 2948),
(33936, 51519, 0, 0, 2945),
(33936, 51447, 0, 0, 2946),
(33936, 51455, 0, 0, 2950),
(33936, 51409, 0, 0, 2950),
(33936, 51449, 0, 0, 2936),
(33936, 51523, 0, 0, 2945),
(33936, 51497, 0, 0, 2949),
(33936, 51498, 0, 0, 2954),
(33936, 51499, 0, 0, 2949),
(33936, 51500, 0, 0, 2949),
(33936, 51502, 0, 0, 2948),
(33936, 51488, 0, 0, 2954),
(33936, 51489, 0, 0, 2949),
(33936, 51490, 0, 0, 2949),
(33936, 51491, 0, 0, 2948),
(33936, 51487, 0, 0, 2949),
(33936, 51474, 0, 0, 2949),
(33936, 51475, 0, 0, 2954),
(33936, 51476, 0, 0, 2949),
(33936, 51477, 0, 0, 2949),
(33936, 51479, 0, 0, 2948),
(33936, 51517, 0, 0, 2945),
(33936, 51533, 0, 0, 2950),
(33936, 51441, 0, 0, 2946),
(33936, 51417, 0, 0, 2951),
(33936, 51467, 0, 0, 2948),
(33936, 51465, 0, 0, 2949),
(33936, 51464, 0, 0, 2954),
(33936, 51463, 0, 0, 2949),
(33936, 51466, 0, 0, 2949),
(33936, 51521, 0, 0, 2945),
(33936, 51397, 0, 0, 2943),
(33936, 51431, 0, 0, 2936),
(33936, 51507, 0, 0, 2951),
(33936, 51513, 0, 0, 2951),
(33936, 51501, 0, 0, 2951),
(33936, 51410, 0, 0, 2951),
(33936, 51451, 0, 0, 2951),
(33936, 51535, 0, 0, 2951),
(33936, 51400, 0, 0, 2936),
(33936, 51434, 0, 0, 2954),
(33936, 51435, 0, 0, 2949),
(33936, 51436, 0, 0, 2949),
(33936, 51433, 0, 0, 2949),
(33936, 51438, 0, 0, 2948);
DELETE FROM `creature` WHERE `id`=33931;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(130041, 33940, 530, 1, 1, 0, 0, 3066.1, 3638.35, 145.025, 0.910453, 360, 0, 0, 6986, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 33931;
DELETE FROM `npc_vendor` WHERE (`entry`=33931);
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minhealth` = 6986, `maxhealth` = 6986, `npcflag` = 384 WHERE `entry` = 33940;
DELETE FROM `npc_vendor` WHERE `entry` = 33940;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`extendedcost`) VALUES
(33940, 51452, 0, 0, 2950),
(33940, 51532, 0, 0, 2951),
(33940, 51404, 0, 0, 2936),
(33940, 51406, 0, 0, 2943),
(33940, 51445, 0, 0, 2946),
(33940, 51390, 0, 0, 2936),
(33940, 51458, 0, 0, 2949),
(33940, 51459, 0, 0, 2954),
(33940, 51460, 0, 0, 2949),
(33940, 51461, 0, 0, 2949),
(33940, 51462, 0, 0, 2948),
(33940, 51525, 0, 0, 2946),
(33940, 51515, 0, 0, 2945),
(33940, 51407, 0, 0, 2950),
(33940, 51388, 0, 0, 2936),
(33940, 51426, 0, 0, 2954),
(33940, 51427, 0, 0, 2949),
(33940, 51428, 0, 0, 2949),
(33940, 51425, 0, 0, 2949),
(33940, 51430, 0, 0, 2948),
(33940, 51413, 0, 0, 2949),
(33940, 51414, 0, 0, 2954),
(33940, 51415, 0, 0, 2949),
(33940, 51416, 0, 0, 2949),
(33940, 51418, 0, 0, 2948),
(33940, 51396, 0, 0, 2950),
(33940, 51456, 0, 0, 2936),
(33940, 51540, 0, 0, 2948),
(33940, 51538, 0, 0, 2949),
(33940, 51537, 0, 0, 2954),
(33940, 51536, 0, 0, 2949),
(33940, 51539, 0, 0, 2949),
(33940, 51402, 0, 0, 2936),
(33940, 51453, 0, 0, 2943),
(33940, 51392, 0, 0, 2936),
(33940, 51408, 0, 0, 2950),
(33940, 51439, 0, 0, 2946),
(33940, 51411, 0, 0, 2936),
(33940, 51429, 0, 0, 2951),
(33940, 51437, 0, 0, 2951),
(33940, 51423, 0, 0, 2951),
(33940, 51420, 0, 0, 2954),
(33940, 51421, 0, 0, 2949),
(33940, 51422, 0, 0, 2949),
(33940, 51419, 0, 0, 2949),
(33940, 51424, 0, 0, 2948),
(33940, 51493, 0, 0, 2954),
(33940, 51494, 0, 0, 2949),
(33940, 51495, 0, 0, 2949),
(33940, 51496, 0, 0, 2948),
(33940, 51492, 0, 0, 2949),
(33940, 51530, 0, 0, 2946),
(33940, 51443, 0, 0, 2946),
(33940, 51478, 0, 0, 2951),
(33940, 51472, 0, 0, 2951),
(33940, 51503, 0, 0, 2949),
(33940, 51504, 0, 0, 2954),
(33940, 51505, 0, 0, 2949),
(33940, 51506, 0, 0, 2949),
(33940, 51508, 0, 0, 2948),
(33940, 51394, 0, 0, 2936),
(33940, 51509, 0, 0, 2949),
(33940, 51510, 0, 0, 2954),
(33940, 51511, 0, 0, 2949),
(33940, 51512, 0, 0, 2949),
(33940, 51514, 0, 0, 2948),
(33940, 51483, 0, 0, 2954),
(33940, 51484, 0, 0, 2949),
(33940, 51485, 0, 0, 2949),
(33940, 51486, 0, 0, 2948),
(33940, 51482, 0, 0, 2949),
(33940, 51527, 0, 0, 2946),
(33940, 51468, 0, 0, 2949),
(33940, 51469, 0, 0, 2954),
(33940, 51470, 0, 0, 2949),
(33940, 51471, 0, 0, 2949),
(33940, 51473, 0, 0, 2948),
(33940, 51531, 0, 0, 2951),
(33940, 51480, 0, 0, 2936),
(33940, 51541, 0, 0, 2949),
(33940, 51542, 0, 0, 2954),
(33940, 51543, 0, 0, 2949),
(33940, 51544, 0, 0, 2949),
(33940, 51545, 0, 0, 2948),
(33940, 51519, 0, 0, 2945),
(33940, 51447, 0, 0, 2946),
(33940, 51455, 0, 0, 2950),
(33940, 51409, 0, 0, 2950),
(33940, 51449, 0, 0, 2936),
(33940, 51523, 0, 0, 2945),
(33940, 51497, 0, 0, 2949),
(33940, 51498, 0, 0, 2954),
(33940, 51499, 0, 0, 2949),
(33940, 51500, 0, 0, 2949),
(33940, 51502, 0, 0, 2948),
(33940, 51488, 0, 0, 2954),
(33940, 51489, 0, 0, 2949),
(33940, 51490, 0, 0, 2949),
(33940, 51491, 0, 0, 2948),
(33940, 51487, 0, 0, 2949),
(33940, 51474, 0, 0, 2949),
(33940, 51475, 0, 0, 2954),
(33940, 51476, 0, 0, 2949),
(33940, 51477, 0, 0, 2949),
(33940, 51479, 0, 0, 2948),
(33940, 51517, 0, 0, 2945),
(33940, 51533, 0, 0, 2950),
(33940, 51441, 0, 0, 2946),
(33940, 51417, 0, 0, 2951),
(33940, 51467, 0, 0, 2948),
(33940, 51465, 0, 0, 2949),
(33940, 51464, 0, 0, 2954),
(33940, 51463, 0, 0, 2949),
(33940, 51466, 0, 0, 2949),
(33940, 51521, 0, 0, 2945),
(33940, 51397, 0, 0, 2943),
(33940, 51431, 0, 0, 2936),
(33940, 51507, 0, 0, 2951),
(33940, 51513, 0, 0, 2951),
(33940, 51501, 0, 0, 2951),
(33940, 51410, 0, 0, 2951),
(33940, 51451, 0, 0, 2951),
(33940, 51535, 0, 0, 2951),
(33940, 51400, 0, 0, 2936),
(33940, 51434, 0, 0, 2954),
(33940, 51435, 0, 0, 2949),
(33940, 51436, 0, 0, 2949),
(33940, 51433, 0, 0, 2949),
(33940, 51438, 0, 0, 2948);
UPDATE `creature_template` SET `modelid_H` = 20570 WHERE `entry` = 24938;
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 24938;
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 25142;
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 25115;
UPDATE `creature_template` SET `modelid_H` = 20570 WHERE `entry` = 25115;
UPDATE `gameobject` SET `spawntimesecs` = 20 WHERE `guid` = 20976;

# timmit
delete from `creature` where `guid`=81156;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(81156, 28401, 571, 1, 1, 0, 0, 5743.96, -3608.98, 387.199, 1.12463, 600, 0, 0, 13945, 0, 0, 0);
DELETE FROM `creature_addon` WHERE (`guid`=81156);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (81156, 0, 0, 0, 0, 0, '52483 0');
UPDATE `creature_template` SET `gossip_menu_id` = 15864 WHERE `entry` = 15864;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(15864,8202),
(50054,8225);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES 
(15864, 0, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15864, 1, 0, 'How can i summon Omen?', 1, 1, 50054, 0, 0, 9, 8868, 0, 0, 0, 0, 0, 0, 0),
(15864, 2, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15864, 3, 0, 'Good luck.', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

# byterider
INSERT IGNORE INTO `spell_script_target` (`entry` , `type` , `targetEntry`) VALUES ('26517', '0', '180772');
INSERT IGNORE INTO `spell_script_target` (`entry` , `type` , `targetEntry`) VALUES ('26327', '0', '180772');

# Hummer
UPDATE `item_template` SET `spellid_1` = 0, `spelltrigger_1` = 0, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE `entry` = 40681;
UPDATE `item_template` SET `spellid_1` = 0, `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE `entry` = 40680;
UPDATE `item_template` SET `spellid_1` = 0, `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE `entry` = 40678;

# Forum_FIX
UPDATE `creature_template` SET `minlevel` = 10, `maxlevel` = 10 WHERE `entry` = 356;
UPDATE `creature_template` SET `minlevel` = 25, `maxlevel` = 25 WHERE `entry` = 3950;
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81 WHERE `entry` = 15047;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 30527;
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71 WHERE `entry` = 28116;
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71 WHERE `entry` = 30388;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 31143;
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 33089;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 33436;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 33437;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 33523;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82 WHERE `entry` = 33861;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 33862;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82 WHERE `entry` = 33877;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82 WHERE `entry` = 33878;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82 WHERE `entry` = 33879;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82 WHERE `entry` = 33880;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 34004;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 34044;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 34064;
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 34097;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 35482;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 35361;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 34995;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 34994;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 34990;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 34992;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 35372;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 35368;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 35321;
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81 WHERE `entry` = 35019;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 35771;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 36095;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 37119;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 37215;
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73 WHERE `entry` = 37763;
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73 WHERE `entry` = 37764;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 37846;
DELETE FROM `creature` WHERE `id`=38294;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(101905, 38294, 571, 1, 1, 0, 0, 5698.75, 615.661, 646.675, 0.924065, 120, 0, 0, 5342, 0, 0, 0);

# Krek
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('67915','1','4369.669922', '2732.989990', '361.946014', '1.002980', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('67915','2','4393.285645', '2768.110107', '362.385071', '1.081526', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('67915','3','4365.681152', '2803.014404', '360.972321', '2.385287', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('67915','4','4397.221680', '2772.376709', '362.323669', '4.050350', '0', '0');
DELETE FROM creature WHERE guid = '67915';
INSERT INTO creature VALUES (67915,37098,631,15,1,0,0,4369.98,2797.57,-163.819,2.24,7200,0,0,1008000,0,0,2);
DELETE FROM `creature_template_addon` WHERE (`entry`=37098);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (37098, 0, 50331648, 1, 0, 33562624, '');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('67912','1','4346.580078', '2806.100098', '366.928009', '4.058180', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('67912','2','4318.408691', '2769.075195', '363.567322', '4.073876', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('67912','3','4351.405762', '2735.063721', '363.055725', '5.648578', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('67912','4','4318.676758', '2766.265137', '363.875977', '0.916552', '0', '0');
DELETE FROM creature WHERE guid = '67912';
INSERT INTO creature VALUES (67912,37098,631,15,1,0,0,4349.15,2760.56,-159.478,1.62697,7200,0,0,1008000,0,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','1','4363.660156', '2903.860107', '351.100006', '4.497340', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','2','4382.892578', '2911.691895', '351.086609', '0.373998', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','3','4389.952637', '2926.464600', '351.174225', '1.124058', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','4','4393.143555', '2948.272705', '355.583344', '1.410728', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','5','4373.175293', '2968.794922', '360.488373', '2.494581', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','6','4357.321777', '2974.411621', '360.509979', '2.948543', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','7','4340.689453', '2969.040771', '360.510284', '3.694679', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','8','4324.076660', '2951.494873', '356.195465', '4.249950', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','9','4324.105957', '2926.227783', '351.099426', '5.066758', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68276','10','4343.054199', '2909.568359', '351.099548', '5.742198', '0', '0');
DELETE FROM creature WHERE guid = '68276';
INSERT INTO creature VALUES (68276,37038,631,15,1,0,0,4390.82,2932.37,352.368,1.4254,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69893','1','4353.155762', '2900.643311', '351.100128', '6.119187', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69893','2','4390.206543', '2924.136719', '351.095154', '0.860947', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69893','3','4389.530762', '2952.936768', '356.390015', '2.007629', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69893','4','4372.473633', '2970.124756', '360.510376', '2.761612', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69893','5','4357.767578', '2977.033203', '360.511261', '3.511674', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69893','6','4325.822266', '2955.467529', '356.936127', '4.528753', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69893','7','4321.301270', '2925.717773', '351.165070', '5.353415', '0', '0');
DELETE FROM creature WHERE guid = '69893';
INSERT INTO creature VALUES (69893,37038,631,15,1,0,0,4341.19,2908.69,351.092,5.69153,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','1','4342.078125', '2902.425781', '351.099854', '2.251083', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','2','4322.320313', '2925.191162', '351.098572', '1.881946', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','3','4324.391113', '2955.516357', '356.767181', '1.045501', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','4','4341.704102', '2969.001465', '360.510437', '0.664581', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','5','4357.455566', '2976.118164', '360.510742', '6.105815', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','6','4373.551758', '2969.616943', '360.503296', '5.559962', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','7','4389.275391', '2958.215088', '357.260284', '5.249725', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','8','4392.536621', '2925.037598', '351.099182', '4.118749', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69232','9','4362.030273', '2896.317383', '351.099548', '3.113439', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('71040','1','4342.164063', '2966.999023', '360.511505', '3.678929', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('71040','2','4328.682617', '2953.390625', '356.902222', '4.059846', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('71040','3','4326.615723', '2927.858643', '351.187012', '4.754922', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('71040','4','4328.477051', '2951.132324', '356.455536', '0.867200', '0', '0');
DELETE FROM creature WHERE guid = '71040';
INSERT INTO creature VALUES (71040,37038,631,15,1,0,0,4329.03,2953.73,356.992,0.790466,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('48199','1','4339.020020', '2972.330566', '360.509827', '3.576837', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('48199','2','4323.192871', '2955.924805', '356.766083', '3.997025', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('48199','3','4319.758789', '2923.698486', '351.098724', '4.943427', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('48199','4','4317.088379', '2950.018799', '355.734711', '0.851498', '0', '0');
DELETE FROM creature WHERE guid = '48199';
INSERT INTO creature VALUES (48199,37038,631,15,1,0,0,4324.64,2957.41,357.102,0.80405,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69259','1','4373.439941', '2971.685547', '360.511566', '5.713110', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69259','2','4396.401367', '2948.525391', '355.421753', '5.481421', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69259','3','4395.228516', '2923.462158', '351.100067', '4.617481', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('69259','4','4393.270508', '2951.985840', '356.121826', '2.198455', '0', '0');
DELETE FROM creature WHERE guid = '69259';
INSERT INTO creature VALUES (69259,37038,631,15,1,0,0,4372.81,2971.96,360.511,5.42019,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('61926','1','4370.590820', '2964.638672', '360.510834', '5.717031', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('61926','2','4387.207031', '2951.022461', '356.215424', '5.186892', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('61926','3','4386.409668', '2927.771484', '351.168427', '4.542866', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('61926','4','4383.303711', '2952.524170', '356.938507', '2.017810', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','1','4370.346680', '3042.796631', '372.795685', '1.517382', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','2','4370.665039', '3049.420898', '371.680420', '1.521309', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','3','4371.031250', '3065.978516', '372.427246', '1.466334', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','4','4370.953125', '3048.839844', '371.681122', '4.651135', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','5','4370.617188', '3042.356201', '372.797302', '6.257267', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','6','4377.940918', '3042.290039', '371.679199', '6.276901', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','7','4426.110840', '3040.925781', '371.680389', '6.272972', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','8','4432.167480', '3040.855713', '372.793945', '6.272972', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','9','4432.063477', '3048.791260', '371.709778', '1.544875', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','10','4433.069824', '3074.167236', '371.710022', '1.552729', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','11','4431.897461', '3040.916260', '372.793549', '3.151012', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','12','4424.569336', '3041.198730', '371.680206', '3.103889', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','13','4376.425781', '3042.515381', '371.680023', '3.111742', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68017','14','4370.491211', '3042.509766', '372.798584', '1.521312', '0', '0');
DELETE FROM creature WHERE guid = '68017';
INSERT INTO creature VALUES (68017,37038,631,15,1,0,0,4383.35,3046.42,371.68,2.9096,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','1','4432.445313', '3054.224609', '371.709412', '4.596152', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','2','4432.000488', '3040.433594', '372.798004', '3.080329', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','3','4424.471191', '3040.781006', '371.680298', '3.111745', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','4','4376.727051', '3042.340576', '371.678619', '3.103891', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','5','4370.430664', '3042.112305', '372.798737', '1.533093', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','6','4370.647461', '3049.424805', '371.680206', '1.540946', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','7','4371.211426', '3065.817627', '372.129456', '1.493822', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','8','4370.532227', '3048.701660', '371.680023', '4.725734', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','9','4371.081055', '3042.823730', '372.796570', '0.001548', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','10','4377.619629', '3042.454102', '371.679688', '6.202270', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','11','4425.922363', '3041.077393', '371.680298', '6.253319', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','12','4431.409180', '3040.957520', '372.793457', '6.253319', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68016','13','4431.997559', '3048.452881', '371.709229', '1.493805', '0', '0');
DELETE FROM creature WHERE guid = '68016';
INSERT INTO creature VALUES (68016,37038,631,15,1,0,0,4418.9,3040.9,372.398,6.24772,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','1','4341.621582', '3060.065918', '371.673401', '4.718235', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','2','4341.719238', '3050.898438', '371.673401', '4.706451', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','3','4342.068359', '3044.069580', '372.783813', '3.190633', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','4','4335.655762', '3042.267090', '371.673279', '3.194560', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','5','4287.021484', '3041.450439', '371.673279', '3.064969', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','6','4279.914063', '3041.131104', '372.788940', '1.588419', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','7','4279.921875', '3048.166504', '371.702545', '1.666960', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','8','4278.845703', '3074.564453', '371.100464', '1.529511', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','9','4281.053711', '3041.074707', '372.783264', '0.076516', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','10','4287.410645', '3041.668945', '371.673248', '0.115786', '0', '0');
DELETE FROM creature WHERE guid = '68007';
INSERT INTO creature VALUES (68007,37038,631,15,1,0,0,4304.79,3041.82,371.722,3.1626,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','1','4279.261719', '3076.168945', '372.005585', '4.761422', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','2','4280.295898', '3048.103027', '371.702484', '4.741783', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','3','4280.684570', '3040.547852', '372.788177', '0.068654', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','4','4287.020508', '3041.523682', '371.673584', '0.009749', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','5','4342.032227', '3043.998779', '372.786560', '1.611961', '0', '0');
DELETE FROM creature WHERE guid = '68009';
INSERT INTO creature VALUES (68009,37038,631,15,1,0,0,4280.47,3055.89,372.022,4.69027,7200,0,0,157500,3994,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','11','4335.765625', '3042.269531', '371.674042', '0.037245', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68007','12','4342.307129', '3044.051514', '372.785919', '1.564844', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','6','4335.469238', '3042.264648', '371.673401', '3.127785', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','7','4287.021973', '3041.588867', '371.673431', '3.159201', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','8','4280.091797', '3040.928955', '372.789978', '1.639455', '0', '0');
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES ('68009','9','4280.004395', '3047.626465', '371.702271', '1.608039', '0', '0');

# Alexstrasza
DELETE FROM creature WHERE guid = '92818';

# NeatElves
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =8874;
UPDATE `quest_template` SET `ExclusiveGroup` = '8873' WHERE `entry` =8873;
UPDATE `quest_template` SET `ExclusiveGroup` = '8873' WHERE `entry` =8875;
UPDATE `quest_template` SET `ExclusiveGroup` = '8873' WHERE `entry` =8874;
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES 
(45, '2010-01-02 14:00:00', '2020-12-26 15:00:00', 10140, 60, 0, 'Kalu''ak Fishing Derby');

# WDB
INSERT INTO `item_template` SET `name`='Fal\'inrush, Defender of Quel\'thalas',`description`='',`entry`=49981,`class`=2,`subclass`=18,`unk0`=-1,`displayid`=64371,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=961388,`SellPrice`=192277,`InventoryType`=26,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=271,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=72,`stat_type2`=3,`stat_value2`=54,`stat_type3`=7,`stat_value3`=54,`stat_type4`=32,`stat_value4`=36,`stat_type5`=44,`stat_value5`=36,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=688.07,`dmg_max1`=948.07,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3000,`ammo_type`=2,`RangedModRange`=100,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=2,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=90,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=56.69,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Sindragosa''s Flawless Fang',`description`='',`entry`=50361,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64251,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=455760,`SellPrice`=113940,`InventoryType`=12,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=1,`stackable`=1,`ContainerSlots`=0,`StatsCount`=1,`stat_type1`=7,`stat_value1`=228,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=71635,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=60000,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=120000,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=51,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Sindragosa''s Cruel Claw',`description`='',`entry`=50421,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64216,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=2,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=105,`stat_type2`=3,`stat_value2`=90,`stat_type3`=7,`stat_value3`=90,`stat_type4`=44,`stat_value4`=60,`stat_type5`=36,`stat_value5`=52,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=3,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2877,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Royal Scepter of Terenas II',`description`='',`entry`=50428,`class`=2,`subclass`=4,`unk0`=-1,`displayid`=64520,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1257756,`SellPrice`=251551,`InventoryType`=21,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=271,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=792,`stat_type2`=7,`stat_value2`=71,`stat_type3`=5,`stat_value3`=71,`stat_type4`=32,`stat_value4`=63,`stat_type5`=36,`stat_value5`=63,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=128.56,`dmg_max1`=387.56,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-95.8,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='The Heartbreaker',`description`='',`entry`=50471,`class`=0,`subclass`=0,`unk0`=-1,`displayid`=64034,`Quality`=3,`Flags`=65536,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=0,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=1,`RequiredLevel`=1,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=71909,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=60000,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Ahn''kahar Onyx Neckguard',`description`='',`entry`=50647,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64190,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=2,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=108,`stat_type2`=7,`stat_value2`=116,`stat_type3`=32,`stat_value3`=68,`stat_type4`=31,`stat_value4`=60,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=3,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2927,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Skeleton Lord''s Circle',`description`='',`entry`=50657,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64169,`Quality`=4,`Flags`=524296,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=11,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=108,`stat_type2`=7,`stat_value2`=116,`stat_type3`=32,`stat_value3`=68,`stat_type4`=37,`stat_value4`=60,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=0,`spellcategory_1`=0,`spellcategorycooldown_1`=0,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2927,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=70,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Polar Bear Claw Bracers',`description`='',`entry`=50659,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64800,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=460792,`SellPrice`=92158,`InventoryType`=9,`AllowableClass`=1535,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=108,`stat_type2`=7,`stat_value2`=116,`stat_type3`=32,`stat_value3`=68,`stat_type4`=31,`stat_value4`=60,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1206,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=55,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2927,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Ring of Rapid Ascent',`description`='',`entry`=50664,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64170,`Quality`=4,`Flags`=524296,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=11,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=110,`stat_type2`=7,`stat_value2`=78,`stat_type3`=5,`stat_value3`=78,`stat_type4`=32,`stat_value4`=68,`stat_type5`=36,`stat_value5`=60,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=3,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=69,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Leather Tunic',`description`='',`entry`=51492,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=65198,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=5,`AllowableClass`=8,`AllowableRace`=8388607,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=174,`stat_type2`=3,`stat_value2`=155,`stat_type3`=7,`stat_value3`=195,`stat_type4`=32,`stat_value4`=98,`stat_type5`=35,`stat_value5`=114,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=678,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=776,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3600,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Leather Helm',`description`='',`entry`=51494,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=65195,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=1,`AllowableClass`=8,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=174,`stat_type2`=3,`stat_value2`=155,`stat_type3`=7,`stat_value3`=195,`stat_type4`=32,`stat_value4`=98,`stat_type5`=35,`stat_value5`=98,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=551,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=776,`MaxDurability`=70,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=1,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3314,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Leather Spaulders',`description`='',`entry`=51496,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=65202,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=3,`AllowableClass`=8,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=129,`stat_type2`=3,`stat_value2`=119,`stat_type3`=7,`stat_value3`=145,`stat_type4`=32,`stat_value4`=77,`stat_type5`=35,`stat_value5`=85,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=509,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=776,`MaxDurability`=70,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2952,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Ringmail Armor',`description`='',`entry`=51497,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65218,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=20,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=7,`stat_value1`=195,`stat_type2`=5,`stat_value2`=87,`stat_type3`=45,`stat_value3`=182,`stat_type4`=43,`stat_value4`=49,`stat_type5`=35,`stat_value5`=114,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1507,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=771,`MaxDurability`=140,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3600,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Ringmail Gauntlets',`description`='',`entry`=51498,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65219,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=10,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=7,`stat_value1`=145,`stat_type2`=5,`stat_value2`=64,`stat_type3`=45,`stat_value3`=140,`stat_type4`=43,`stat_value4`=38,`stat_type5`=35,`stat_value5`=85,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=942,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=32973,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=771,`MaxDurability`=50,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2865,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Ringmail Helm',`description`='',`entry`=51499,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65221,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=1,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=7,`stat_value1`=195,`stat_type2`=5,`stat_value2`=87,`stat_type3`=45,`stat_value3`=182,`stat_type4`=43,`stat_value4`=49,`stat_type5`=35,`stat_value5`=98,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1225,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=771,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=1,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2854,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Ringmail Spaulders',`description`='',`entry`=51502,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65597,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=3,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=7,`stat_value1`=145,`stat_type2`=5,`stat_value2`=64,`stat_type3`=45,`stat_value3`=140,`stat_type4`=43,`stat_value4`=38,`stat_type5`=35,`stat_value5`=85,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1130,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=771,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2865,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Tel\'thas, Dagger of the Blood King',`description`='',`entry`=51803,`class`=2,`subclass`=15,`unk0`=-1,`displayid`=64651,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1228245,`SellPrice`=245649,`InventoryType`=21,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=1,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=701,`stat_type2`=7,`stat_value2`=47,`stat_type3`=5,`stat_value3`=65,`stat_type4`=32,`stat_value4`=51,`stat_type5`=36,`stat_value5`=65,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=108.12,`dmg_max1`=342.12,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-91.6,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Robes of Azure Downfall',`description`='',`entry`=51813,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=64312,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=521032,`SellPrice`=104206,`InventoryType`=20,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=162,`stat_type2`=7,`stat_value2`=123,`stat_type3`=5,`stat_value3`=115,`stat_type4`=36,`stat_value4`=108,`stat_type5`=32,`stat_value5`=87,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=354,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=1,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=100,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=2,`socketContent_3`=0,`socketBonus`=3753,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Taldron''s Long Neglected Boots',`description`='',`entry`=51891,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=64822,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=599502,`SellPrice`=119900,`InventoryType`=8,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=172,`stat_type2`=3,`stat_value2`=104,`stat_type3`=7,`stat_value3`=95,`stat_type4`=5,`stat_value4`=68,`stat_type5`=32,`stat_value5`=40,`stat_type6`=44,`stat_value6`=70,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1016,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=70,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3355,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Mag\'hari Chieftain\'s Staff',`description`='',`entry`=51898,`class`=2,`subclass`=10,`unk0`=-1,`displayid`=64341,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1539151,`SellPrice`=307830,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=6,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=741,`stat_type2`=7,`stat_value2`=105,`stat_type3`=5,`stat_value3`=111,`stat_type4`=36,`stat_value4`=150,`stat_type5`=6,`stat_value5`=150,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=434.02,`dmg_max1`=800.02,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3100,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=2,`sheath`=2,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=8,`socketContent_3`=0,`socketBonus`=3753,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-95.8,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Frost Needle',`description`='',`entry`=51932,`class`=2,`subclass`=7,`unk0`=-1,`displayid`=64549,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1236685,`SellPrice`=247337,`InventoryType`=21,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=1,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=741,`stat_type2`=7,`stat_value2`=67,`stat_type3`=5,`stat_value3`=59,`stat_type4`=36,`stat_value4`=56,`stat_type5`=31,`stat_value5`=52,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=112.92,`dmg_max1`=358.92,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3308,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-95.6,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Heaven''s Fall, Kryss of a Thousand Lies',`description`='',`entry`=50426,`class`=2,`subclass`=15,`unk0`=-1,`displayid`=64996,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1248196,`SellPrice`=249639,`InventoryType`=13,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=271,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=99,`stat_type2`=3,`stat_value2`=74,`stat_type3`=7,`stat_value3`=74,`stat_type4`=32,`stat_value4`=49,`stat_type5`=36,`stat_value5`=49,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=344,`dmg_max1`=517,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Bloodsurge, Kel\'Thuzad\'s Blade of Agony',`description`='',`entry`=50427,`class`=2,`subclass`=7,`unk0`=-1,`displayid`=64531,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1253042,`SellPrice`=250608,`InventoryType`=21,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=271,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=1,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=792,`stat_type2`=7,`stat_value2`=71,`stat_type3`=5,`stat_value3`=71,`stat_type4`=36,`stat_value4`=63,`stat_type5`=32,`stat_value5`=63,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=128.56,`dmg_max1`=387.56,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-95.8,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Archus, Greatstaff of Antonidas',`description`='',`entry`=50429,`class`=2,`subclass`=10,`unk0`=-1,`displayid`=64334,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1578251,`SellPrice`=315650,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=271,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=6,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=792,`stat_type2`=7,`stat_value2`=167,`stat_type3`=5,`stat_value3`=167,`stat_type4`=6,`stat_value4`=130,`stat_type5`=36,`stat_value5`=130,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=320.82,`dmg_max1`=582.82,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2100,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=2,`sheath`=2,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3602,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-95.8,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Chain Armor',`description`='',`entry`=51458,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65463,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=5,`AllowableClass`=4,`AllowableRace`=8388607,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=197,`stat_type2`=3,`stat_value2`=114,`stat_type3`=7,`stat_value3`=195,`stat_type4`=5,`stat_value4`=87,`stat_type5`=32,`stat_value5`=98,`stat_type6`=35,`stat_value6`=114,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1507,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=772,`MaxDurability`=140,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3600,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Chain Helm',`description`='',`entry`=51460,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65919,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=1,`AllowableClass`=4,`AllowableRace`=8388607,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=197,`stat_type2`=3,`stat_value2`=114,`stat_type3`=7,`stat_value3`=195,`stat_type4`=5,`stat_value4`=87,`stat_type5`=32,`stat_value5`=98,`stat_type6`=35,`stat_value6`=98,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1225,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=772,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=1,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2843,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Chain Spaulders',`description`='',`entry`=51462,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65214,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=3,`AllowableClass`=4,`AllowableRace`=8388607,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=154,`stat_type2`=3,`stat_value2`=85,`stat_type3`=7,`stat_value3`=145,`stat_type4`=5,`stat_value4`=64,`stat_type5`=32,`stat_value5`=77,`stat_type6`=35,`stat_value6`=85,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1130,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=772,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2874,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Linked Armor',`description`='',`entry`=51503,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65218,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=20,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=197,`stat_type2`=3,`stat_value2`=114,`stat_type3`=7,`stat_value3`=195,`stat_type4`=5,`stat_value4`=87,`stat_type5`=32,`stat_value5`=98,`stat_type6`=35,`stat_value6`=114,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1507,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=770,`MaxDurability`=140,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3600,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Linked Helm',`description`='',`entry`=51505,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65221,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=1,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=197,`stat_type2`=3,`stat_value2`=114,`stat_type3`=7,`stat_value3`=195,`stat_type4`=5,`stat_value4`=87,`stat_type5`=32,`stat_value5`=98,`stat_type6`=35,`stat_value6`=98,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1225,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=770,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=1,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2843,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Linked Spaulders',`description`='',`entry`=51508,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65597,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=3,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=154,`stat_type2`=3,`stat_value2`=85,`stat_type3`=7,`stat_value3`=145,`stat_type4`=5,`stat_value4`=64,`stat_type5`=32,`stat_value5`=77,`stat_type6`=35,`stat_value6`=85,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1130,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=770,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2874,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Mail Armor',`description`='',`entry`=51509,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65218,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=20,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=7,`stat_value1`=195,`stat_type2`=5,`stat_value2`=87,`stat_type3`=45,`stat_value3`=182,`stat_type4`=32,`stat_value4`=98,`stat_type5`=35,`stat_value5`=114,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1507,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=769,`MaxDurability`=140,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3600,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Mail Helm',`description`='',`entry`=51511,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65221,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=1,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=7,`stat_value1`=195,`stat_type2`=5,`stat_value2`=87,`stat_type3`=45,`stat_value3`=182,`stat_type4`=32,`stat_value4`=98,`stat_type5`=35,`stat_value5`=98,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1225,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=769,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=1,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2854,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Mail Spaulders',`description`='',`entry`=51514,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65597,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=3,`AllowableClass`=64,`AllowableRace`=-1,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=7,`stat_value1`=145,`stat_type2`=5,`stat_value2`=64,`stat_type3`=45,`stat_value3`=140,`stat_type4`=32,`stat_value4`=77,`stat_type5`=35,`stat_value5`=85,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1130,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=769,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2865,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Felweave Raiment',`description`='',`entry`=51536,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=65275,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=20,`AllowableClass`=256,`AllowableRace`=32767,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=182,`stat_type2`=7,`stat_value2`=195,`stat_type3`=5,`stat_value3`=87,`stat_type4`=32,`stat_value4`=98,`stat_type5`=35,`stat_value5`=114,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=361,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=780,`MaxDurability`=100,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3307,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Wrathful Gladiator''s Felweave Amice',`description`='',`entry`=51540,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=65288,`Quality`=4,`Flags`=36864,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=3,`AllowableClass`=256,`AllowableRace`=32767,`ItemLevel`=270,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=140,`stat_type2`=7,`stat_value2`=145,`stat_type3`=5,`stat_value3`=64,`stat_type4`=32,`stat_value4`=77,`stat_type5`=35,`stat_value5`=85,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=271,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=780,`MaxDurability`=60,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2868,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Warmace of Menethil',`description`='',`entry`=51796,`class`=2,`subclass`=5,`unk0`=-1,`displayid`=64555,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1610105,`SellPrice`=322021,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=158,`stat_type2`=7,`stat_value2`=174,`stat_type3`=32,`stat_value3`=94,`stat_type4`=44,`stat_value4`=94,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=811,`dmg_max1`=1217,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3600,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3357,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Valius, Gavel of the Lightbringer',`description`='',`entry`=51798,`class`=2,`subclass`=4,`unk0`=-1,`displayid`=64518,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1297328,`SellPrice`=259465,`InventoryType`=21,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=701,`stat_type2`=7,`stat_value2`=65,`stat_type3`=5,`stat_value3`=63,`stat_type4`=32,`stat_value4`=56,`stat_type5`=43,`stat_value5`=28,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=131.48,`dmg_max1`=418.48,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2200,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-91.6,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Halion, Staff of Forgotten Love',`description`='',`entry`=51799,`class`=2,`subclass`=10,`unk0`=-1,`displayid`=64172,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1627281,`SellPrice`=325456,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=6,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=701,`stat_type2`=7,`stat_value2`=116,`stat_type3`=5,`stat_value3`=137,`stat_type4`=32,`stat_value4`=145,`stat_type5`=36,`stat_value5`=108,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=346.84,`dmg_max1`=640.84,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2600,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=2,`sheath`=2,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2770,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-91.6,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Stormfury, Black Blade of the Betrayer',`description`='',`entry`=51800,`class`=2,`subclass`=15,`unk0`=-1,`displayid`=64678,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1306447,`SellPrice`=261289,`InventoryType`=13,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=3,`stat_value1`=66,`stat_type2`=38,`stat_value2`=100,`stat_type3`=7,`stat_value3`=50,`stat_type4`=32,`stat_value4`=44,`stat_type5`=37,`stat_value5`=44,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=273,`dmg_max1`=507,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Pugius, Fist of Defiance',`description`='',`entry`=51801,`class`=2,`subclass`=13,`unk0`=-1,`displayid`=64467,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1311069,`SellPrice`=262213,`InventoryType`=21,`AllowableClass`=262143,`AllowableRace`=32767,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=3,`stat_value1`=66,`stat_type2`=7,`stat_value2`=50,`stat_type3`=32,`stat_value3`=45,`stat_type4`=36,`stat_value4`=42,`stat_type5`=38,`stat_value5`=100,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=450,`dmg_max1`=676,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2600,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=7,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Windrunner\'s Heartseeker',`description`='',`entry`=51802,`class`=2,`subclass`=18,`unk0`=-1,`displayid`=64370,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=892982,`SellPrice`=178596,`InventoryType`=26,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=69,`stat_type2`=3,`stat_value2`=48,`stat_type3`=7,`stat_value3`=42,`stat_type4`=32,`stat_value4`=32,`stat_type5`=44,`stat_value5`=32,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=603.88,`dmg_max1`=839.88,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3000,`ammo_type`=2,`RangedModRange`=100,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=2,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=90,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=44.96,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Infernal Spear',`description`='',`entry`=50307,`class`=0,`subclass`=0,`unk0`=-1,`displayid`=50628,`Quality`=1,`Flags`=64,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=0,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=1,`RequiredLevel`=0,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=5,`stackable`=5,`ContainerSlots`=0,`StatsCount`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=71466,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=631,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `creature_template` SET `name`='Impaling Spear',`IconName`='Interact',`subname`='',`entry`=38248,`type_flags`=72,`type`=6,`family`=0,`rank`=1,`KillCredit1`=0,`KillCredit2`=0,`modelid_A`=31004,`modelid_A2`=0,`modelid_H`=0,`modelid_H2`=0,`unk16`=14,`unk17`=1,`RacialLeader`=0,`movementId`=164,`questItem1`=0,`questItem2`=0,`questItem3`=0,`questItem4`=0,`questItem5`=0,`questItem6`=0;
INSERT INTO `npc_text` SET `ID`=8162,`prob0`=1,`text0_0`='Elder Bronzebeard can be found in the ancestral home of the Bronzebeards, Ironforge.',`text0_1`='Elder Bronzebeard can be found in the ancestral home of the Bronzebeards, Ironforge.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8163,`prob0`=1,`text0_0`='Elder Silvervein can be found near Thelsamar in Loch Modan.',`text0_1`='Elder Silvervein can be found near Thelsamar in Loch Modan.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8225,`prob0`=1,`text0_0`='Omen sleeps in the depths of Lake Elune''ara, but may be summoned at the southeast banks near the Stormrage Barrow Dens.  There, you will find special cluster launchers...$B$BUse your rockets in the launchers and Omen''s minions will come.  Fire more rockets, nearly three dozen, or fire Elune''s Candles at his minions, and soon he will awaken.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13815,`prob0`=1,`text0_0`='Elder Thoim has spent many years at Moa''ki Harbor in Dragonblight.',`text0_1`='Elder Thoim has spent many years at Moa''ki Harbor in Dragonblight.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13823,`prob0`=1,`text0_0`='Elder Kilias can be found inside Drak''Tharon Keep.',`text0_1`='Elder Kilias can be found inside Drak''Tharon Keep.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `item_template` SET `name`='Tainted Twig of Nordrassil',`description`='',`entry`=51797,`class`=2,`subclass`=10,`unk0`=-1,`displayid`=64352,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1615882,`SellPrice`=323176,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=216,`stat_type2`=3,`stat_value2`=137,`stat_type3`=7,`stat_value3`=138,`stat_type4`=32,`stat_value4`=98,`stat_type5`=44,`stat_value5`=90,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=540,`dmg_max1`=811,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2400,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=2,`sheath`=2,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3355,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
UPDATE `gameobject_template` SET `data7` = 3605 WHERE `entry` = 202443;
INSERT INTO `page_text` VALUES ('3605', 'Dedicated to those that fell to the Scourge during the war in the frozen wastes.', '0');
INSERT INTO `npc_text` SET `ID`=15340,`prob0`=1,`text0_0`='',`text0_1`='After countless failures of our agents to secure workable samples of Scourge blight for analysis, I''ve come up to the front lines myself to oversee the efforts. Like they say, if you want a job done right....',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

# Forum_FIX
UPDATE `creature_template` SET `modelid_H` = 31004, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 176400, `maxhealth` = 176400, `faction_A` = 14, `faction_H` = 14, `mindmg` = 1, `maxdmg` = 1, `attackpower` = 1, `baseattacktime` = 2000, `rangeattacktime` = 1500, `rangedattackpower` = 100 WHERE `entry` = 38248;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `minhealth` = 17431250, `maxhealth` = 17431250, `faction_A` = 14, `faction_H` = 14, `rank` = 3, `attackpower` = 1, `rangeattacktime` = 1500, `rangedattackpower` = 100, `unk16` = 2000, `unk17` = 2000 WHERE `entry` = 36597;
UPDATE `creature_template` SET `name` = 'The Lich King', `minlevel` = 83, `maxlevel` = 83, `minhealth` = 17431250, `maxhealth` = 17431250, `faction_A` = 14, `faction_H` = 14, `rank` = 3, `rangedattackpower` = 100 WHERE `entry` = 29983;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 33441;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 35877;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 37857;
UPDATE `item_template` SET `RequiredReputationRank` = 0 WHERE `entry` = 50429;
UPDATE `item_template` SET `RequiredReputationRank` = 0 WHERE `entry` = 51799;
UPDATE `item_template` SET `RequiredReputationRank` = 0 WHERE `entry` = 51898;
INSERT IGNORE INTO `creature_model_info` VALUES ('31004', '0', '0', '2', '0');
UPDATE `gameobject` SET `animprogress` = 100 WHERE `guid` = 40557;
UPDATE `creature_template` SET `flags_extra` = '64' WHERE `entry` = 14748;
UPDATE `creature_template` SET `faction_A` = 1956, `faction_H` = 1956, `unit_flags` = 256, `flags_extra` = 2 WHERE `entry` = 25136;
INSERT IGNORE INTO `game_event_creature` SELECT `guid`,'45' FROM `creature` WHERE `id`=38294;

# Krek
UPDATE `creature_template` SET `difficulty_entry_1` = 10087, `difficulty_entry_2` = 10091, `difficulty_entry_3` = 10092, `speed` = 2, `spell1` = 68980, `spell2` = 70541, `spell3` = 72133, `spell4` = 68981, `unk16` = 1250, `unk17` = 1250, `mechanic_immune_mask` = 663437311, `ScriptName` = 'generic_creature' WHERE `entry` = 29983;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10091, 0, 0, 0, 0, 0, 24191, 0, 24191, 0, 'The Lich King', '', '', 0, 83, 83, 17431250, 17431250, 0, 0, 17, 14, 14, 0, 2, 1, 3, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 2, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68980, 70541, 72133, 68981, 0, 0, 0, '', 0, 3, 1250, 1250, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 663437311, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10087, 0, 0, 0, 0, 0, 24191, 0, 24191, 0, 'The Lich King', '', '', 0, 83, 83, 61009375, 61009375, 0, 0, 17, 14, 14, 0, 2, 1, 3, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 2, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68980, 70541, 72133, 68981, 0, 0, 0, '', 0, 3, 4375, 4375, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 663437311, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10092, 0, 0, 0, 0, 0, 24191, 0, 24191, 0, 'The Lich King', '', '', 0, 83, 83, 61009375, 61009375, 0, 0, 17, 14, 14, 0, 2, 1, 3, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 2, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68980, 70541, 72133, 68981, 0, 0, 0, '', 0, 3, 4375, 4375, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 663437311, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10093, `difficulty_entry_2` = 10094, `difficulty_entry_3` = 10095, `speed` = 2, `spell1` = 68980, `spell2` = 70541, `spell3` = 72133, `spell4` = 68981, `unk16` = 1250, `unk17` = 1250, `mechanic_immune_mask` = 663437311, `ScriptName` = 'generic_creature' WHERE `entry` = 29983;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10094, 0, 0, 0, 0, 0, 24191, 0, 24191, 0, 'The Lich King', '', '', 0, 83, 83, 17431250, 17431250, 0, 0, 17, 14, 14, 0, 2, 1, 3, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 2, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68980, 70541, 72133, 68981, 0, 0, 0, '', 0, 3, 1250, 1250, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 663437311, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10093, 0, 0, 0, 0, 0, 24191, 0, 24191, 0, 'The Lich King', '', '', 0, 83, 83, 61009375, 61009375, 0, 0, 17, 14, 14, 0, 2, 1, 3, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 2, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68980, 70541, 72133, 68981, 0, 0, 0, '', 0, 3, 4375, 4375, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 663437311, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10095, 0, 0, 0, 0, 0, 24191, 0, 24191, 0, 'The Lich King', '', '', 0, 83, 83, 61009375, 61009375, 0, 0, 17, 14, 14, 0, 2, 1, 3, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 2, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68980, 70541, 72133, 68981, 0, 0, 0, '', 0, 3, 4375, 4375, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 663437311, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10097, `difficulty_entry_2` = 10098, `difficulty_entry_3` = 10099, `minlevel` = 83, `maxlevel` = 83, `minhealth` = 278900, `maxhealth` = 278900, `faction_A` = 14, `faction_H` = 14, `unit_class` = 1, `spell1` = 70633, `ScriptName` = 'generic_creature' WHERE `entry` = 37886;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10098, 0, 0, 0, 0, 0, 7858, 0, 7858, 0, 'Gluttonous Abomination', '', '', 0, 83, 83, 278900, 278900, 0, 0, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70633, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10097, 0, 0, 0, 0, 0, 7858, 0, 7858, 0, 'Gluttonous Abomination', '', '', 0, 83, 83, 906425, 906425, 0, 0, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70633, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10099, 0, 0, 0, 0, 0, 7858, 0, 7858, 0, 'Gluttonous Abomination', '', '', 0, 83, 83, 906425, 906425, 0, 0, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70633, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10100, `difficulty_entry_2` = 10101, `difficulty_entry_3` = 10102, `minlevel` = 83, `maxlevel` = 83, `minhealth` = 83670, `maxhealth` = 83670, `minmana` = 85160, `maxmana` = 85160, `faction_A` = 14, `faction_H` = 14, `speed` = 1.5, `unit_class` = 2, `spell1` = 70754, `spell2` = 69325, `ScriptName` = 'generic_creature' WHERE `entry` = 36791;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10101, 0, 0, 0, 0, 0, 22773, 0, 22773, 0, 'Blazing Skeleton', '', '', 0, 83, 83, 83670, 83670, 85160, 85160, 17, 14, 14, 0, 1.5, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70754, 69325, 0, 0, 0, 0, 0, '', 0, 3, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10100, 0, 0, 0, 0, 0, 22773, 0, 22773, 0, 'Blazing Skeleton', '', '', 0, 83, 83, 251010, 251010, 85160, 85160, 17, 14, 14, 0, 1.5, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70754, 69325, 0, 0, 0, 0, 0, '', 0, 3, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10102, 0, 0, 0, 0, 0, 22773, 0, 22773, 0, 'Blazing Skeleton', '', '', 0, 83, 83, 251010, 251010, 85160, 85160, 17, 14, 14, 0, 1.5, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70754, 69325, 0, 0, 0, 0, 0, '', 0, 3, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10103, `difficulty_entry_2` = 10104, `difficulty_entry_3` = 10105, `minlevel` = 83, `maxlevel` = 83, `minhealth` = 278900, `maxhealth` = 278900, `faction_A` = 2050, `faction_H` = 2050, `unit_class` = 1, `ScriptName` = 'generic_creature' WHERE `entry` = 37129;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10104, 0, 0, 0, 0, 0, 30911, 0, 30911, 0, 'Crok Scourgebane', 'Grand Champion of the Ebon Blade', '', 0, 83, 83, 278900, 278900, 0, 0, 17, 2050, 2050, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10103, 0, 0, 0, 0, 0, 30911, 0, 30911, 0, 'Crok Scourgebane', 'Grand Champion of the Ebon Blade', '', 0, 83, 83, 1045875, 1045875, 0, 0, 17, 2050, 2050, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10105, 0, 0, 0, 0, 0, 30911, 0, 30911, 0, 'Crok Scourgebane', 'Grand Champion of the Ebon Blade', '', 0, 83, 83, 1045875, 1045875, 0, 0, 17, 2050, 2050, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10106, `difficulty_entry_2` = 10107, `difficulty_entry_3` = 10108, `maxhealth` = 107848, `faction_A` = 1802, `faction_H` = 1802, `speed` = 1.5, `unit_class` = 1 WHERE `entry` = 36950;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10107, 0, 0, 0, 0, 0, 30598, 30599, 30600, 30601, 'Skybreaker Marine', '', '', 0, 82, 82, 107848, 107848, 0, 0, 10328, 1802, 1802, 0, 1.5, 1, 1, 452, 678, 0, 169, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 135, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71335, 69647, 72536, 0, 0, 0, 0, '', 0, 3, 8, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10106, 0, 0, 0, 0, 0, 30598, 30599, 30600, 30601, 'Skybreaker Marine', '', '', 0, 82, 82, 215696, 215696, 0, 0, 10328, 1802, 1802, 0, 1.5, 1, 1, 452, 678, 0, 169, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 135, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71335, 69647, 72536, 0, 0, 0, 0, '', 0, 3, 8, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10108, 0, 0, 0, 0, 0, 30598, 30599, 30600, 30601, 'Skybreaker Marine', '', '', 0, 82, 82, 215696, 215696, 0, 0, 10328, 1802, 1802, 0, 1.5, 1, 1, 452, 678, 0, 169, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 135, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71335, 69647, 72536, 0, 0, 0, 0, '', 0, 3, 8, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10109, `difficulty_entry_2` = 10110, `difficulty_entry_3` = 10111, `minlevel` = 82, `maxlevel` = 82, `minhealth` = 3235440, `maxhealth` = 3235440, `minmana` = 41690, `maxmana` = 41690, `faction_A` = 14, `faction_H` = 14, `unit_class` = 2, `spell1` = 71387, `spell2` = 71386, `spell3` = 71376, `ScriptName` = 'generic_creature' WHERE `entry` = 37533;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10110, 0, 0, 0, 0, 0, 27982, 0, 27982, 0, 'Rimefang', '', '', 0, 82, 82, 3235440, 3235440, 41690, 41690, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71387, 71386, 71376, 0, 0, 0, 0, '', 0, 3, 240, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10109, 0, 0, 0, 0, 0, 27982, 0, 27982, 0, 'Rimefang', '', '', 0, 82, 82, 7414550, 7414550, 41690, 41690, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71387, 71386, 71376, 0, 0, 0, 0, '', 0, 3, 240, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10111, 0, 0, 0, 0, 0, 27982, 0, 27982, 0, 'Rimefang', '', '', 0, 82, 82, 7414550, 7414550, 41690, 41690, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71387, 71386, 71376, 0, 0, 0, 0, '', 0, 3, 240, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `minhealth` = 6066450, `maxhealth` = 6066450, `faction_A` = 14, `faction_H` = 14, `speed` = 1.5, `spell1` = 72865, `spell2` = 64652, `ScriptName` = 'generic_creature' WHERE `entry` = 38490;
UPDATE `creature_template` SET `difficulty_entry_1` = 10112, `difficulty_entry_2` = 10113, `difficulty_entry_3` = 10114, `minlevel` = 82, `maxlevel` = 82, `minhealth` = 1558800, `maxhealth` = 1558800, `minmana` = 83380, `maxmana` = 83380, `faction_A` = 14, `faction_H` = 14, `unit_class` = 2, `spell1` = 71468, `spell2` = 71463, `spell3` = 71465, `spell4` = 71443, `ScriptName` = 'generic_creature' WHERE `entry` = 37126;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10113, 0, 0, 0, 0, 0, 30521, 0, 30521, 0, 'Sister Svalna', '', '', 0, 82, 82, 1558800, 1558800, 83380, 83380, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 96, 37126, 0, 0, 0, 0, 0, 0, 0, 0, 71468, 71463, 71465, 71443, 0, 0, 0, '', 0, 5, 200, 20, 0, 0, 0, 0, 0, 0, 0, 200, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10112, 0, 0, 0, 0, 0, 30521, 0, 30521, 0, 'Sister Svalna', '', '', 0, 82, 82, 4676400, 4676400, 83380, 83380, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 96, 37126, 0, 0, 0, 0, 0, 0, 0, 0, 71468, 71463, 71465, 71443, 0, 0, 0, '', 0, 5, 200, 20, 0, 0, 0, 0, 0, 0, 0, 200, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10114, 0, 0, 0, 0, 0, 30521, 0, 30521, 0, 'Sister Svalna', '', '', 0, 82, 82, 4676400, 4676400, 83380, 83380, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 96, 37126, 0, 0, 0, 0, 0, 0, 0, 0, 71468, 71463, 71465, 71443, 0, 0, 0, '', 0, 5, 200, 20, 0, 0, 0, 0, 0, 0, 0, 200, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `minhealth` = 100000, `maxhealth` = 100000, `faction_A` = 14, `faction_H` = 14, `speed` = 1.5, `spell1` = 71822, `ScriptName` = 'generic_creature' WHERE `entry` = 38369;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `minhealth` = 22243650, `maxhealth` = 22243650, `faction_A` = 14, `faction_H` = 14, `speed` = 1.5, `spell1` = 72865, `spell2` = 64652, `ScriptName` = 'generic_creature' WHERE `entry` = 38494;
UPDATE `creature_template` SET `difficulty_entry_1` = 10115, `difficulty_entry_2` = 10121, `difficulty_entry_3` = 10122, `minlevel` = 82, `maxlevel` = 82, `minhealth` = 3235440, `maxhealth` = 3235440, `minmana` = 41690, `maxmana` = 41690, `faction_A` = 14, `faction_H` = 14, `unit_class` = 2, `spell1` = 36922, `spell2` = 40505, `spell3` = 71369, `ScriptName` = 'generic_creature' WHERE `entry` = 37534;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10121, 0, 0, 0, 0, 0, 27982, 0, 27982, 0, 'Spinestalker', '', '', 0, 82, 82, 3235440, 3235440, 41690, 41690, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36922, 40505, 71369, 0, 0, 0, 0, '', 0, 3, 240, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10115, 0, 0, 0, 0, 0, 27982, 0, 27982, 0, 'Spinestalker', '', '', 0, 82, 82, 7414550, 7414550, 41690, 41690, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36922, 40505, 71369, 0, 0, 0, 0, '', 0, 3, 240, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10122, 0, 0, 0, 0, 0, 27982, 0, 27982, 0, 'Spinestalker', '', '', 0, 82, 82, 7414550, 7414550, 41690, 41690, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36922, 40505, 71369, 0, 0, 0, 0, '', 0, 3, 240, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `minhealth` = 1000, `maxhealth` = 1000, `faction_A` = 14, `faction_H` = 14, `spell1` = 72800, `ScriptName` = 'generic_creature' WHERE `entry` = 38454;
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `minhealth` = 156396, `maxhealth` = 156396, `faction_A` = 14, `faction_H` = 14, `speed` = 1.8, `spell1` = 65947, `spell2` = 65927, `spell3` = 65930, `spell4` = 65926, `ScriptName` = 'generic_creature' WHERE `entry` = 38472;
UPDATE `creature_template` SET `difficulty_entry_1` = 10123, `difficulty_entry_2` = 10124, `difficulty_entry_3` = 10125, `minlevel` = 81, `maxlevel` = 81, `minhealth` = 104264, `maxhealth` = 104264, `minmana` = 81620, `maxmana` = 81620, `faction_A` = 14, `faction_H` = 14, `unit_class` = 2, `spell1` = 70602, `spell2` = 70759, `spell3` = 71179, `ScriptName` = 'generic_creature' WHERE `entry` = 37868;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10124, 0, 0, 0, 0, 0, 7919, 0, 7919, 0, 'Risen Archmage', '', '', 0, 81, 81, 104264, 104264, 81620, 81620, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70602, 70759, 71179, 0, 0, 0, 0, '', 0, 3, 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10123, 0, 0, 0, 0, 0, 7919, 0, 7919, 0, 'Risen Archmage', '', '', 0, 81, 81, 325825, 325825, 81620, 81620, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70602, 70759, 71179, 0, 0, 0, 0, '', 0, 3, 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10125, 0, 0, 0, 0, 0, 7919, 0, 7919, 0, 'Risen Archmage', '', '', 0, 81, 81, 325825, 325825, 81620, 81620, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70602, 70759, 71179, 0, 0, 0, 0, '', 0, 3, 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `minhealth` = 156396, `maxhealth` = 156396, `faction_A` = 14, `faction_H` = 14, `speed` = 1.8, `spell1` = 65947, `spell2` = 65927, `spell3` = 65930, `spell4` = 65926, `ScriptName` = 'generic_creature' WHERE `entry` = 38485;
UPDATE `creature_template` SET `difficulty_entry_1` = 10126, `difficulty_entry_2` = 10127, `difficulty_entry_3` = 10128, `minlevel` = 81, `maxlevel` = 81, `minhealth` = 130330, `maxhealth` = 130330, `faction_A` = 14, `faction_H` = 14, `speed` = 1.6, `spell1` = 71592, `spell2` = 71789, `spell3` = 71590, `spell4` = 70089, `ScriptName` = 'generic_creature' WHERE `entry` = 37125;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10127, 0, 0, 0, 0, 0, 30910, 0, 30910, 0, 'Captain Rupert', '', '', 0, 81, 81, 130330, 130330, 0, 0, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71592, 71789, 71590, 70089, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10126, 0, 0, 0, 0, 0, 30910, 0, 30910, 0, 'Captain Rupert', '', '', 0, 81, 81, 2280775, 2280775, 0, 0, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71592, 71789, 71590, 70089, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10128, 0, 0, 0, 0, 0, 30910, 0, 30910, 0, 'Captain Rupert', '', '', 0, 81, 81, 2280775, 2280775, 0, 0, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71592, 71789, 71590, 70089, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10129, `difficulty_entry_2` = 10130, `difficulty_entry_3` = 10131, `minlevel` = 81, `maxlevel` = 81, `minhealth` = 130330, `maxhealth` = 130330, `faction_A` = 14, `faction_H` = 14, `speed` = 1.7, `unit_class` = 1, `spell1` = 71553, `spell2` = 71785, `spell3` = 71552, `spell4` = 71554, `ScriptName` = 'generic_creature' WHERE `entry` = 37124;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10130, 0, 0, 0, 0, 0, 30909, 0, 30909, 0, 'Captain Grondel', '', '', 0, 81, 81, 130330, 130330, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71553, 71785, 71552, 71554, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10129, 0, 0, 0, 0, 0, 30909, 0, 30909, 0, 'Captain Grondel', '', '', 0, 81, 81, 2280775, 2280775, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71553, 71785, 71552, 71554, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10131, 0, 0, 0, 0, 0, 30909, 0, 30909, 0, 'Captain Grondel', '', '', 0, 81, 81, 2280775, 2280775, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71553, 71785, 71552, 71554, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10132, `difficulty_entry_2` = 10133, `difficulty_entry_3` = 10134, `minlevel` = 81, `maxlevel` = 81, `minhealth` = 130330, `maxhealth` = 130330, `faction_A` = 14, `faction_H` = 14, `speed` = 1.6, `spell1` = 14515, `spell2` = 71595, `spell3` = 71781, `spell4` = 71546, `ScriptName` = 'generic_creature', `minmana` = 4081, `maxmana` = 4081 WHERE `entry` = 37122;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10133, 0, 0, 0, 0, 0, 30907, 0, 30907, 0, 'Captain Arnath', '', '', 0, 81, 81, 130330, 130330, 4081, 4081, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14515, 71595, 71781, 71546, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10132, 0, 0, 0, 0, 0, 30907, 0, 30907, 0, 'Captain Arnath', '', '', 0, 81, 81, 195495, 195495, 4081, 4081, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14515, 71595, 71781, 71546, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10134, 0, 0, 0, 0, 0, 30907, 0, 30907, 0, 'Captain Arnath', '', '', 0, 81, 81, 195495, 195495, 4081, 4081, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14515, 71595, 71781, 71546, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10135, `difficulty_entry_2` = 10137, `difficulty_entry_3` = 10138, `minlevel` = 81, `maxlevel` = 81, `minhealth` = 130330, `maxhealth` = 130330, `minmana` = 61215, `maxmana` = 61215, `faction_A` = 2070, `faction_H` = 2070, `speed` = 1.8, `spell1` = 71549, `spell2` = 71550, `spell3` = 71784, `spell4` = 71551, `ScriptName` = 'generic_creature' WHERE `entry` = 37123;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10137, 0, 0, 0, 0, 0, 30908, 0, 30908, 0, 'Captain Brandon', '', '', 0, 81, 81, 130330, 130330, 61215, 61215, 17, 2070, 2070, 0, 1.8, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71549, 71550, 71784, 71551, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10135, 0, 0, 0, 0, 0, 30908, 0, 30908, 0, 'Captain Brandon', '', '', 0, 81, 81, 2280775, 2280775, 61215, 61215, 17, 2070, 2070, 0, 1.8, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71549, 71550, 71784, 71551, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10138, 0, 0, 0, 0, 0, 30908, 0, 30908, 0, 'Captain Brandon', '', '', 0, 81, 81, 2280775, 2280775, 61215, 61215, 17, 2070, 2070, 0, 1.8, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71549, 71550, 71784, 71551, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 25200, `maxhealth` = 25200 WHERE `entry` = 38491;
UPDATE `creature_template` SET `difficulty_entry_1` = 10139, `difficulty_entry_2` = 10140, `difficulty_entry_3` = 10141, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 315000, `maxhealth` = 315000, `faction_A` = 14, `faction_H` = 14, `speed` = 1.7, `spell1` = 71801, `mingold` = 7724, `maxgold` = 7724, `ScriptName` = 'generic_creature' WHERE `entry` = 37501;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10140, 0, 0, 0, 0, 0, 26194, 0, 26194, 0, 'Nerub\'ar Champion', '', '', 0, 80, 80, 315000, 315000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 37501, 0, 0, 0, 0, 0, 0, 0, 0, 71801, 0, 0, 0, 0, 7724, 7724, '', 0, 3, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10139, 0, 0, 0, 0, 0, 26194, 0, 26194, 0, 'Nerub\'ar Champion', '', '', 0, 80, 80, 1008000, 1008000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 37501, 0, 0, 0, 0, 0, 0, 0, 0, 71801, 0, 0, 0, 0, 7724, 7724, '', 0, 3, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10141, 0, 0, 0, 0, 0, 26194, 0, 26194, 0, 'Nerub\'ar Champion', '', '', 0, 80, 80, 1008000, 1008000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 37501, 0, 0, 0, 0, 0, 0, 0, 0, 71801, 0, 0, 0, 0, 7724, 7724, '', 0, 3, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10142, `difficulty_entry_2` = 10143, `difficulty_entry_3` = 10144, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 315000, `maxhealth` = 315000, `minmana` = 47928, `maxmana` = 47928, `faction_A` = 14, `faction_H` = 14, `speed` = 1.7, `unit_class` = 2, `mingold` = 7788, `maxgold` = 7788, `ScriptName` = 'generic_creature' WHERE `entry` = 37502;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10143, 0, 0, 0, 0, 0, 31050, 0, 31050, 0, 'Nerub\'ar Webweaver', '', '', 0, 80, 80, 315000, 315000, 47928, 47928, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 37502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7788, 7788, '', 0, 3, 25, 12, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10142, 0, 0, 0, 0, 0, 31050, 0, 31050, 0, 'Nerub\'ar Webweaver', '', '', 0, 80, 80, 756000, 756000, 47928, 47928, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 37502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7788, 7788, '', 0, 3, 25, 12, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10144, 0, 0, 0, 0, 0, 31050, 0, 31050, 0, 'Nerub\'ar Webweaver', '', '', 0, 80, 80, 756000, 756000, 47928, 47928, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 37502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7788, 7788, '', 0, 3, 25, 12, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10145, `difficulty_entry_2` = 10146, `difficulty_entry_3` = 10147, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 25200, `maxhealth` = 25200, `faction_A` = 14, `faction_H` = 14, `speed` = 1.8 WHERE `entry` = 37907;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10146, 0, 0, 0, 0, 0, 12346, 0, 12346, 0, 'Rot Worm', '', '', 0, 80, 80, 25200, 25200, 0, 0, 17, 14, 14, 0, 1.8, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10145, 0, 0, 0, 0, 0, 12346, 0, 12346, 0, 'Rot Worm', '', '', 0, 80, 80, 63000, 63000, 0, 0, 17, 14, 14, 0, 1.8, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10147, 0, 0, 0, 0, 0, 12346, 0, 12346, 0, 'Rot Worm', '', '', 0, 80, 80, 63000, 63000, 0, 0, 17, 14, 14, 0, 1.8, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10148, `difficulty_entry_2` = 10149, `difficulty_entry_3` = 10150, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 37800, `maxhealth` = 37800, `faction_A` = 14, `faction_H` = 14, `unit_class` = 1, `spell1` = 70588, `ScriptName` = 'generic_creature' WHERE `entry` = 37863;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10149, 0, 0, 0, 0, 0, 25592, 0, 25592, 0, 'Suppresser', '', '', 0, 80, 80, 37800, 37800, 0, 0, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70588, 0, 0, 0, 0, 0, 0, '', 0, 3, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10148, 0, 0, 0, 0, 0, 25592, 0, 25592, 0, 'Suppresser', '', '', 0, 80, 80, 126000, 126000, 0, 0, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70588, 0, 0, 0, 0, 0, 0, '', 0, 3, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10150, 0, 0, 0, 0, 0, 25592, 0, 25592, 0, 'Suppresser', '', '', 0, 80, 80, 126000, 126000, 0, 0, 17, 14, 14, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70588, 0, 0, 0, 0, 0, 0, '', 0, 3, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10151, `difficulty_entry_2` = 10152, `difficulty_entry_3` = 10153, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 567000, `maxhealth` = 567000, `faction_A` = 14, `faction_H` = 14, `speed` = 1.7, `unit_class` = 1, `spell1` = 71258, `spell2` = 71257, `ScriptName` = 'generic_creature' WHERE `entry` = 37132;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10152, 0, 0, 0, 0, 0, 27549, 0, 27549, 0, 'Ymirjar Battle-Maiden', '', '', 0, 80, 80, 567000, 567000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71258, 71257, 0, 0, 0, 0, 0, '', 0, 3, 45, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10151, 0, 0, 0, 0, 0, 27549, 0, 27549, 0, 'Ymirjar Battle-Maiden', '', '', 0, 80, 80, 1890000, 1890000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71258, 71257, 0, 0, 0, 0, 0, '', 0, 3, 45, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10153, 0, 0, 0, 0, 0, 27549, 0, 27549, 0, 'Ymirjar Battle-Maiden', '', '', 0, 80, 80, 1890000, 1890000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71258, 71257, 0, 0, 0, 0, 0, '', 0, 3, 45, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10154, `difficulty_entry_2` = 10155, `difficulty_entry_3` = 10163, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 567000, `maxhealth` = 567000, `minmana` = 3994, `maxmana` = 3994, `faction_A` = 14, `faction_H` = 14, `speed` = 1.6, `unit_class` = 2, `spell1` = 71298, `spell2` = 71299, `spell3` = 71296, `spell4` = 69929, `ScriptName` = 'generic_creature' WHERE `entry` = 38125;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10155, 0, 0, 0, 0, 0, 27548, 0, 27548, 0, 'Ymirjar Deathbringer', '', '', 0, 80, 80, 567000, 567000, 3994, 3994, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71298, 71299, 71296, 69929, 0, 0, 0, '', 0, 3, 45, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10154, 0, 0, 0, 0, 0, 27548, 0, 27548, 0, 'Ymirjar Deathbringer', '', '', 0, 80, 80, 1764000, 1764000, 3994, 3994, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71298, 71299, 71296, 69929, 0, 0, 0, '', 0, 3, 45, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10163, 0, 0, 0, 0, 0, 27548, 0, 27548, 0, 'Ymirjar Deathbringer', '', '', 0, 80, 80, 1764000, 1764000, 3994, 3994, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71298, 71299, 71296, 69929, 0, 0, 0, '', 0, 3, 45, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10164, `difficulty_entry_2` = 10165, `difficulty_entry_3` = 10166, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 453600, `maxhealth` = 453600, `minmana` = 8814, `maxmana` = 8814, `faction_A` = 14, `faction_H` = 14, `speed` = 1.6, `spell1` = 71270, `spell2` = 71274, `spell3` = 69929, `spell4` = 71306, `ScriptName` = 'generic_creature' WHERE `entry` = 37127;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10165, 0, 0, 0, 0, 0, 27548, 0, 27548, 0, 'Ymirjar Frostbinder', '', '', 0, 80, 80, 453600, 453600, 8814, 8814, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71270, 71274, 69929, 71306, 0, 0, 0, '', 0, 3, 45, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10164, 0, 0, 0, 0, 0, 27548, 0, 27548, 0, 'Ymirjar Frostbinder', '', '', 0, 80, 80, 1411200, 1411200, 8814, 8814, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71270, 71274, 69929, 71306, 0, 0, 0, '', 0, 3, 45, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10166, 0, 0, 0, 0, 0, 27548, 0, 27548, 0, 'Ymirjar Frostbinder', '', '', 0, 80, 80, 1411200, 1411200, 8814, 8814, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71270, 71274, 69929, 71306, 0, 0, 0, '', 0, 3, 45, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10167, `difficulty_entry_2` = 10168, `difficulty_entry_3` = 10169, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 441000, `maxhealth` = 441000, `minmana` = 3994, `maxmana` = 3994, `faction_A` = 14, `faction_H` = 14, `speed` = 1.7, `unit_class` = 2, `spell1` = 71249, `spell2` = 71251, `spell3` = 71253, `spell4` = 71252, `ScriptName` = 'generic_creature' WHERE `entry` = 37134;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10168, 0, 0, 0, 0, 0, 25771, 0, 25771, 0, 'Ymirjar Huntress', '', '', 0, 80, 80, 441000, 441000, 3994, 3994, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71249, 71251, 71253, 71252, 0, 0, 0, '', 0, 3, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10167, 0, 0, 0, 0, 0, 25771, 0, 25771, 0, 'Ymirjar Huntress', '', '', 0, 80, 80, 1260000, 1260000, 3994, 3994, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71249, 71251, 71253, 71252, 0, 0, 0, '', 0, 3, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10169, 0, 0, 0, 0, 0, 25771, 0, 25771, 0, 'Ymirjar Huntress', '', '', 0, 80, 80, 1260000, 1260000, 3994, 3994, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71249, 71251, 71253, 71252, 0, 0, 0, '', 0, 3, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10170, `difficulty_entry_2` = 10171, `difficulty_entry_3` = 10172, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 630000, `maxhealth` = 630000, `faction_A` = 14, `faction_H` = 14, `speed` = 1.7, `unit_class` = 1, `spell1` = 41057, `ScriptName` = 'generic_creature' WHERE `entry` = 37133;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10171, 0, 0, 0, 0, 0, 26623, 0, 26623, 0, 'Ymirjar Warlord', '', '', 0, 80, 80, 630000, 630000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41057, 0, 0, 0, 0, 0, 0, '', 0, 3, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10170, 0, 0, 0, 0, 0, 26623, 0, 26623, 0, 'Ymirjar Warlord', '', '', 0, 80, 80, 2016000, 2016000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41057, 0, 0, 0, 0, 0, 0, '', 0, 3, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10172, 0, 0, 0, 0, 0, 26623, 0, 26623, 0, 'Ymirjar Warlord', '', '', 0, 80, 80, 2016000, 2016000, 0, 0, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41057, 0, 0, 0, 0, 0, 0, '', 0, 3, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10173, `difficulty_entry_2` = 10174, `difficulty_entry_3` = 10175, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 75600, `maxhealth` = 75600, `faction_A` = 14, `faction_H` = 14, `speed` = 1.6, `ScriptName` = 'generic_creature' WHERE `entry` = 37934;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10174, 0, 0, 0, 0, 0, 22124, 0, 22124, 0, 'Blistering Zombie', '', '', 0, 80, 80, 75600, 75600, 0, 0, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 0, 0, 0, 0, 0, 0, 0, 94, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10173, 0, 0, 0, 0, 0, 22124, 0, 22124, 0, 'Blistering Zombie', '', '', 0, 80, 80, 252000, 252000, 0, 0, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 0, 0, 0, 0, 0, 0, 0, 94, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10175, 0, 0, 0, 0, 0, 22124, 0, 22124, 0, 'Blistering Zombie', '', '', 0, 80, 80, 252000, 252000, 0, 0, 17, 14, 14, 0, 1.6, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 0, 0, 0, 0, 0, 0, 0, 94, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10187, `difficulty_entry_2` = 10188, `difficulty_entry_3` = 10189, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 63000, `maxhealth` = 63000, `minmana` = 3994, `maxmana` = 3994, `faction_A` = 14, `faction_H` = 14, `speed` = 1.7, `unit_class` = 2 WHERE `entry` = 38184;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10188, 0, 0, 0, 0, 0, 25242, 0, 25242, 0, 'Corrupted Ymirjar', '', '', 0, 80, 80, 63000, 63000, 3994, 3994, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5, 1, 0, 0, 0, 0, 0, 0, 0, 121, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10187, 0, 0, 0, 0, 0, 25242, 0, 25242, 0, 'Corrupted Ymirjar', '', '', 0, 80, 80, 226800, 226800, 3994, 3994, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5, 1, 0, 0, 0, 0, 0, 0, 0, 121, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10189, 0, 0, 0, 0, 0, 25242, 0, 25242, 0, 'Corrupted Ymirjar', '', '', 0, 80, 80, 226800, 226800, 3994, 3994, 17, 14, 14, 0, 1.7, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5, 1, 0, 0, 0, 0, 0, 0, 0, 121, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 18900, `maxhealth` = 18900 WHERE `entry` = 38492;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 945000, `maxhealth` = 945000 WHERE `entry` = 38551;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 945000, `maxhealth` = 945000 WHERE `entry` = 38558;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 63000, `maxhealth` = 63000 WHERE `entry` = 37945;
UPDATE `creature_template` SET `difficulty_entry_1` = 10190, `difficulty_entry_2` = 10191, `difficulty_entry_3` = 10192, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 12600, `maxhealth` = 12600, `faction_A` = 14, `faction_H` = 14, `unit_class` = 1 WHERE `entry` = 37232;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10191, 0, 0, 0, 0, 0, 30597, 0, 30597, 0, 'Nerub\'ar Broodling', '', '', 0, 80, 80, 12600, 12600, 0, 0, 17, 14, 14, 0, 1, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 127, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10190, 0, 0, 0, 0, 0, 30597, 0, 30597, 0, 'Nerub\'ar Broodling', '', '', 0, 80, 80, 37800, 37800, 0, 0, 17, 14, 14, 0, 1, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 127, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10192, 0, 0, 0, 0, 0, 30597, 0, 30597, 0, 'Nerub\'ar Broodling', '', '', 0, 80, 80, 37800, 37800, 0, 0, 17, 14, 14, 0, 1, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 127, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = 10193, `difficulty_entry_2` = 10194, `difficulty_entry_3` = 10195, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 75600, `maxhealth` = 75600, `faction_A` = 14, `faction_H` = 14, `speed` = 1.6, `spell1` = 41290, `spell2` = 70671, `ScriptName` = 'generic_creature' WHERE `entry` = 37901;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10194, 0, 0, 0, 0, 0, 19110, 0, 19110, 0, 'Vampiric Fiend', '', '', 0, 80, 80, 75600, 75600, 0, 0, 17, 14, 14, 0, 1.6, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41290, 70671, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10193, 0, 0, 0, 0, 0, 19110, 0, 19110, 0, 'Vampiric Fiend', '', '', 0, 80, 80, 252000, 252000, 0, 0, 17, 14, 14, 0, 1.6, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41290, 70671, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10195, 0, 0, 0, 0, 0, 19110, 0, 19110, 0, 'Vampiric Fiend', '', '', 0, 80, 80, 252000, 252000, 0, 0, 17, 14, 14, 0, 1.6, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41290, 70671, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 315000, `maxhealth` = 315000, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 38154;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 50400, `maxhealth` = 50400, `minmana` = 44070, `maxmana` = 44070 WHERE `entry` = 38501;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 5342, `maxhealth` = 5342 WHERE `entry` = 39509;
UPDATE `creature_template` SET `difficulty_entry_1` = 10205, `difficulty_entry_2` = 10206, `difficulty_entry_3` = 10207, `minlevel` = 80, `maxlevel` = 80, `minhealth` = 99580, `maxhealth` = 99580 WHERE `entry` = 37930;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10206, 0, 0, 0, 0, 0, 23037, 23038, 23039, 0, 'Warsong Peon', '', '', 0, 80, 80, 99580, 99580, 0, 0, 17, 35, 35, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10205, 0, 0, 0, 0, 0, 23037, 23038, 23039, 0, 'Warsong Peon', '', '', 0, 80, 80, 99580, 99580, 0, 0, 17, 35, 35, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10207, 0, 0, 0, 0, 0, 23037, 23038, 23039, 0, 'Warsong Peon', '', '', 0, 80, 80, 99580, 99580, 0, 0, 17, 35, 35, 0, 1, 1, 1, 1, 1, 0, 1, 2, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '');
UPDATE `creature_template` SET `minhealth` = 13, `maxhealth` = 13, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 38228;
UPDATE `creature_template` SET `minhealth` = 13, `maxhealth` = 13, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 38229;
UPDATE `creature_template` SET `minhealth` = 13, `maxhealth` = 13, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 38370;
UPDATE `creature_template` SET `minhealth` = 13, `maxhealth` = 13, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 38231;
UPDATE `creature_template` SET `minhealth` = 13, `maxhealth` = 13, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 38232;
#Lord Marrowgar N10
DELETE FROM `creature_loot_template` WHERE `entry`=36612;
REPLACE INTO `creature_loot_template` VALUES 
(36612,50761,0,1,1,1,0,0,0),
(36612,50339,0,1,1,1,0,0,0),
(36612,50771,0,1,1,1,0,0,0),
(36612,50764,0,1,1,1,0,0,0),
(36612,50772,0,1,1,1,0,0,0),
(36612,50759,0,1,1,1,0,0,0),
(36612,50760,0,2,1,1,0,0,0),
(36612,50774,0,2,1,1,0,0,0),
(36612,50775,0,2,1,1,0,0,0),
(36612,50773,0,2,1,1,0,0,0),
(36612,50762,0,2,1,1,0,0,0),
(36612,50763,0,2,1,1,0,0,0),
(36612,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Lord Marrowgar N25
UPDATE `creature_template` SET `lootid` = 13100 WHERE `entry` = 13100;
DELETE FROM `creature_loot_template` WHERE `entry`=13100;
REPLACE INTO `creature_loot_template` VALUES 
(13100,49968,0,1,1,1,0,0,0),
(13100,49977,0,1,1,1,0,0,0),
(13100,50415,0,1,1,1,0,0,0),
(13100,49975,0,1,1,1,0,0,0),
(13100,49976,0,1,1,1,0,0,0),
(13100,49978,0,2,1,1,0,0,0),
(13100,49949,0,2,1,1,0,0,0),
(13100,49951,0,2,1,1,0,0,0),
(13100,49967,0,2,1,1,0,0,0),
(13100,49952,0,2,1,1,0,0,0),
(13100,49960,0,3,1,1,0,0,0),
(13100,49950,0,3,1,1,0,0,0),
(13100,49979,0,3,1,1,0,0,0),
(13100,49964,0,3,1,1,0,0,0),
(13100,49980,0,3,1,1,0,0,0),
(13100,49908,10,0,1,1,0,0,0),#Primordial Saronite
(13100,50274,37.5,0,1,1,0,0,0),#Shadowfrost Shard
(13100,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Lady Deathwhisper N10
DELETE FROM `creature_loot_template` WHERE `entry`=36855;
REPLACE INTO `creature_loot_template` VALUES 
(36855,50781,0,1,1,1,0,0,0),
(36855,50776,0,1,1,1,0,0,0),
(36855,50782,0,1,1,1,0,0,0),
(36855,50342,0,1,1,1,0,0,0),
(36855,50777,0,1,1,1,0,0,0),
(36855,50780,0,1,1,1,0,0,0),
(36855,50784,0,2,1,1,0,0,0),
(36855,50779,0,2,1,1,0,0,0),
(36855,50778,0,2,1,1,0,0,0),
(36855,50783,0,2,1,1,0,0,0),
(36855,50785,0,2,1,1,0,0,0),
(36855,50786,0,2,1,1,0,0,0),
(36855,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Lady Deathwhisper N25
UPDATE `creature_template` SET `lootid` = 13103 WHERE `entry` =13103;
DELETE FROM `creature_loot_template` WHERE `entry`=13103;
REPLACE INTO `creature_loot_template` VALUES 
(13103,49992,0,1,1,1,0,0,0),
(13103,50034,0,1,1,1,0,0,0),
(13103,49994,0,1,1,1,0,0,0),
(13103,49983,0,1,1,1,0,0,0),
(13103,49987,0,1,1,1,0,0,0),
(13103,49982,0,2,1,1,0,0,0),
(13103,49988,0,2,1,1,0,0,0),
(13103,49990,0,2,1,1,0,0,0),
(13103,49989,0,2,1,1,0,0,0),
(13103,49991,0,2,1,1,0,0,0),
(13103,49996,0,3,1,1,0,0,0),
(13103,49995,0,3,1,1,0,0,0),
(13103,49986,0,3,1,1,0,0,0),
(13103,49985,0,3,1,1,0,0,0),
(13103,49993,0,3,1,1,0,0,0),
(13103,49908,10,0,1,1,0,0,0),#Primordial Saronite
(13103,50274,37.5,0,1,1,0,0,0),#Shadowfrost Shard
(13103,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Gunship Armory N10
DELETE FROM `gameobject_loot_template` WHERE `entry`=201873;
INSERT INTO `gameobject_loot_template` VALUES 
(201873,50787,0,1,1,1,0,0,0),
(201873,50793,0,1,1,1,0,0,0),
(201873,50340,0,1,1,1,0,0,0),
(201873,50794,0,1,1,1,0,0,0),
(201873,50791,0,1,1,1,0,0,0),
(201873,50788,0,1,1,1,0,0,0),
(201873,50789,0,2,1,1,0,0,0),
(201873,50792,0,2,1,1,0,0,0),
(201873,50796,0,2,1,1,0,0,0),
(201873,50797,0,2,1,1,0,0,0),
(201873,50790,0,2,1,1,0,0,0),
(201873,50795,0,2,1,1,0,0,0),
(201873,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Gunship Armory N25
UPDATE `gameobject_template` SET `data1` = 201874 WHERE `entry` = 201874;
DELETE FROM `gameobject_loot_template` WHERE `entry`=201874;
INSERT INTO `gameobject_loot_template` VALUES 
(201874,50008,0,1,1,1,0,0,0),
(201874,49998,0,1,1,1,0,0,0),
(201874,50005,0,1,1,1,0,0,0),
(201874,50011,0,1,1,1,0,0,0),
(201874,50352,0,1,1,1,0,0,0),
(201874,50359,0,2,1,1,0,0,0),
(201874,50002,0,2,1,1,0,0,0),
(201874,50000,0,2,1,1,0,0,0),
(201874,49999,0,2,1,1,0,0,0),
(201874,50010,0,2,1,1,0,0,0),
(201874,50003,0,3,1,1,0,0,0),
(201874,50001,0,3,1,1,0,0,0),
(201874,50411,0,3,1,1,0,0,0),
(201874,50006,0,3,1,1,0,0,0),
(201874,50009,0,3,1,1,0,0,0),
(201874,49908,10,0,1,1,0,0,0),#Primordial Saronite
(201874,50274,37.5,0,1,1,0,0,0),#Shadowfrost Shard
(201874,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Gunship Armory N10
UPDATE `gameobject_template` SET `data1` = 202178 WHERE `entry` = 202178;
DELETE FROM `gameobject_loot_template` WHERE `entry`=202178;
INSERT INTO `gameobject_loot_template` VALUES 
(202178,50787,0,1,1,1,0,0,0),
(202178,50793,0,1,1,1,0,0,0),
(202178,50340,0,1,1,1,0,0,0),
(202178,50794,0,1,1,1,0,0,0),
(202178,50791,0,1,1,1,0,0,0),
(202178,50788,0,1,1,1,0,0,0),
(202178,50789,0,2,1,1,0,0,0),
(202178,50792,0,2,1,1,0,0,0),
(202178,50796,0,2,1,1,0,0,0),
(202178,50797,0,2,1,1,0,0,0),
(202178,50790,0,2,1,1,0,0,0),
(202178,50795,0,2,1,1,0,0,0),
(202178,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Gunship Armory N25
UPDATE `gameobject_template` SET `data1` = 202180 WHERE `entry` = 202180;
DELETE FROM `gameobject_loot_template` WHERE `entry`=202180;
INSERT INTO `gameobject_loot_template` VALUES 
(202180,50008,0,1,1,1,0,0,0),
(202180,49998,0,1,1,1,0,0,0),
(202180,50005,0,1,1,1,0,0,0),
(202180,50011,0,1,1,1,0,0,0),
(202180,50352,0,1,1,1,0,0,0),
(202180,50359,0,2,1,1,0,0,0),
(202180,50002,0,2,1,1,0,0,0),
(202180,50000,0,2,1,1,0,0,0),
(202180,49999,0,2,1,1,0,0,0),
(202180,50010,0,2,1,1,0,0,0),
(202180,50003,0,3,1,1,0,0,0),
(202180,50001,0,3,1,1,0,0,0),
(202180,50411,0,3,1,1,0,0,0),
(202180,50006,0,3,1,1,0,0,0),
(202180,50009,0,3,1,1,0,0,0),
(202180,49908,10,0,1,1,0,0,0),#Primordial Saronite
(202180,50274,37.5,0,1,1,0,0,0),#Shadowfrost Shard
(202180,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Deathbringer's Cache N10
DELETE FROM `gameobject_loot_template` WHERE `entry`=202239;
INSERT INTO `gameobject_loot_template` VALUES 
(202239,50798,0,1,1,1,0,0,0),
(202239,50805,0,1,1,1,0,0,0),
(202239,50809,0,1,1,1,0,0,0),
(202239,50803,0,1,1,1,0,0,0),
(202239,50804,0,1,1,1,0,0,0),
(202239,50800,0,1,1,1,0,0,0),
(202239,50799,0,2,1,1,0,0,0),
(202239,50801,0,2,1,1,0,0,0),
(202239,50808,0,2,1,1,0,0,0),
(202239,50806,0,2,1,1,0,0,0),
(202239,50807,0,2,1,1,0,0,0),
(202239,50802,0,2,1,1,0,0,0),
(202239,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Mark of Sanctification N Токены
DELETE FROM `reference_loot_template` WHERE `entry`=52025;
DELETE FROM `reference_loot_template` WHERE `item` IN 
(52025, 52027, 52026);
REPLACE INTO reference_loot_template VALUES
(52025, 52025, 40, 1, 1, 1, 0, 0, 0), 
(52025, 52027, 30, 1, 1, 1, 0, 0, 0), 
(52025, 52026, 30, 1, 1, 1, 0, 0, 0);
#Deathbringer's Cache N25
UPDATE `gameobject_template` SET `data1` = 202240 WHERE `entry` = 202240;
DELETE FROM `gameobject_loot_template` WHERE `entry`=202240;
INSERT INTO `gameobject_loot_template` VALUES 
(202240,50362,0,1,1,1,0,0,0),
(202240,50333,0,1,1,1,0,0,0),
(202240,50412,0,1,1,1,0,0,0),
(202240,50014,0,1,1,1,0,0,0),
(202240,50015,0,1,1,1,0,0,0),
(202240,52025,100,0,-52025,2,0,0,0),#Mark of Sanctification N Токены
(202240,49908,10,0,1,1,0,0,0),#Primordial Saronite
(202240,50274,37.5,0,1,1,0,0,0),#Shadowfrost Shard
(202240,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Festergutr N10
DELETE FROM `creature_loot_template` WHERE `entry`=36626;
REPLACE INTO `creature_loot_template` VALUES 
(36626,50966,0,1,1,1,0,0,0),
(36626,50810,0,1,1,1,0,0,0),
(36626,50852,0,1,1,1,0,0,0),
(36626,50990,0,1,1,1,0,0,0),
(36626,50811,0,1,1,1,0,0,0),
(36626,50858,0,1,1,1,0,0,0),
(36626,50812,0,2,1,1,0,0,0),
(36626,50988,0,2,1,1,0,0,0),
(36626,50967,0,2,1,1,0,0,0),
(36626,50986,0,2,1,1,0,0,0),
(36626,50985,0,2,1,1,0,0,0),
(36626,50859,0,2,1,1,0,0,0),
(36626,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Festergutr N25
UPDATE `creature_template` SET `lootid` = 13109 WHERE `entry` =13109;
DELETE FROM `creature_loot_template` WHERE `entry`=13109;
REPLACE INTO `creature_loot_template` VALUES 
(13109,50040,0,1,1,1,0,0,0),
(13109,50062,0,1,1,1,0,0,0),
(13109,50042,0,1,1,1,0,0,0),
(13109,50061,0,1,1,1,0,0,0),
(13109,50056,0,1,1,1,0,0,0),
(13109,50060,0,2,1,1,0,0,0),
(13109,50063,0,2,1,1,0,0,0),
(13109,50413,0,2,1,1,0,0,0),
(13109,50035,0,2,1,1,0,0,0),
(13109,50037,0,2,1,1,0,0,0),
(13109,50038,0,3,1,1,0,0,0),
(13109,50414,0,3,1,1,0,0,0),
(13109,50064,0,3,1,1,0,0,0),
(13109,50059,0,3,1,1,0,0,0),
(13109,50041,0,3,1,1,0,0,0),
(13109,50036,0,3,1,1,0,0,0),
(13109,50226,-100,0,1,1,0,0,0),#Quest item
(13109,49908,10,0,1,1,0,0,0),#Primordial Saronite
(13109,50274,37.5,0,1,1,0,0,0),#Shadowfrost Shard
(13109,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Rotface N10
DELETE FROM `creature_loot_template` WHERE `entry`=36627;
REPLACE INTO `creature_loot_template` VALUES 
(36627,51004,0,1,1,1,0,0,0),
(36627,50998,0,1,1,1,0,0,0),
(36627,51007,0,1,1,1,0,0,0),
(36627,51003,0,1,1,1,0,0,0),
(36627,50999,0,1,1,1,0,0,0),
(36627,51001,0,1,1,1,0,0,0),
(36627,51002,0,2,1,1,0,0,0),
(36627,51000,0,2,1,1,0,0,0),
(36627,51009,0,2,1,1,0,0,0),
(36627,51008,0,2,1,1,0,0,0),
(36627,51005,0,2,1,1,0,0,0),
(36627,51006,0,2,1,1,0,0,0),
(36627,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Rotface N25
UPDATE `creature_template` SET `lootid` = 13112 WHERE `entry` =13112;
DELETE FROM `creature_loot_template` WHERE `entry`=13112;
REPLACE INTO `creature_loot_template` VALUES 
(13112,50025,0,1,1,1,0,0,0),
(13112,50028,0,1,1,1,0,0,0),
(13112,50353,0,1,1,1,0,0,0),
(13112,50023,0,1,1,1,0,0,0),
(13112,50019,0,1,1,1,0,0,0),
(13112,50021,0,2,1,1,0,0,0),
(13112,50033,0,2,1,1,0,0,0),
(13112,50022,0,2,1,1,0,0,0),
(13112,50016,0,2,1,1,0,0,0),
(13112,50020,0,2,1,1,0,0,0),
(13112,50024,0,3,1,1,0,0,0),
(13112,50026,0,3,1,1,0,0,0),
(13112,50030,0,3,1,1,0,0,0),
(13112,50027,0,3,1,1,0,0,0),
(13112,50032,0,3,1,1,0,0,0),
(13112,50231,-100,0,1,1,0,0,0),#Quest item
(13112,49908,10,0,1,1,0,0,0),#Primordial Saronite
(13112,50274,37.5,0,1,1,0,0,0),#Shadowfrost Shard
(13112,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Professor Putricide N10
DELETE FROM `creature_loot_template` WHERE `entry`=36678;
REPLACE INTO `creature_loot_template` VALUES 
(36678,51016,0,1,1,1,0,0,0),
(36678,51020,0,1,1,1,0,0,0),
(36678,51015,0,1,1,1,0,0,0),
(36678,51017,0,1,1,1,0,0,0),
(36678,51011,0,1,1,1,0,0,0),
(36678,51012,0,1,1,1,0,0,0),
(36678,51014,0,2,1,1,0,0,0),
(36678,50341,0,2,1,1,0,0,0),
(36678,51013,0,2,1,1,0,0,0),
(36678,51010,0,2,1,1,0,0,0),
(36678,51018,0,2,1,1,0,0,0),
(36678,51019,0,2,1,1,0,0,0),
(36678,49426,100,0,2,2,0,0,0);#Emblem of Frost
#Professor Putricide N25
UPDATE `creature_template` SET `lootid` = 13119 WHERE `entry` =13119;
DELETE FROM `creature_loot_template` WHERE `entry`=13119;
REPLACE INTO `creature_loot_template` VALUES 
(13119,50351,0,1,1,1,0,0,0),
(13119,50179,0,1,1,1,0,0,0),
(13119,50068,0,1,1,1,0,0,0),
(13119,50067,0,1,1,1,0,0,0),
(13119,50069,0,1,1,1,0,0,0),
(13119,52025,100,0,-52025,2,0,0,0),#Mark of Sanctification N Токены
(13119,49908,10,0,1,1,0,0,0),#Primordial Saronite
(13119,50274,37.5,0,1,1,0,0,0),#Shadowfrost Shard
(13119,49426,100,0,2,2,0,0,0);#Emblem of Frost

# NeatElves
INSERT INTO `spell_target_position` ( `id` , `target_map` , `target_position_x` , `target_position_y` , `target_position_z` , `target_orientation` ) VALUES ('71436', '0', '-14456.247', '492.130', '15.124', '3.202');
DELETE FROM `creature_loot_template` WHERE `entry` = 25377;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =25377;

# Forum_FIX
DELETE FROM `creature_questrelation` WHERE `quest` = 24806;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 24806;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 24806;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38294, 24806);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 38294;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24806;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 24806;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38294, 24806);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=38294;
DELETE FROM `creature_questrelation` WHERE `quest` = 24803;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 24803;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 24803;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38294, 24803);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 38294;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24803;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 24803;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38294, 24803);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=38294;
INSERT IGNORE INTO `spell_script_target` VALUES ('26327', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26327', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26327', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26327', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26292', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26292', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26292', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26292', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26304', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26304', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26304', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26304', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26286', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26286', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26286', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26286', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26517', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26517', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26517', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26517', '0', '180772');
UPDATE `quest_template` SET `PrevQuestId` = 24803 WHERE `entry` = 24806;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 24806;
INSERT IGNORE INTO `spell_script_target` VALUES ('26294', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26294', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26294', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26294', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26295', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26295', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26295', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26295', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26333', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26333', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26333', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26333', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26334', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26334', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26334', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26334', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26336', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26336', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26336', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26336', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26337', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26337', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26337', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26337', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26338', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26338', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26338', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26338', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26490', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26490', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26490', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26490', '0', '180772');
INSERT IGNORE INTO `spell_script_target` VALUES ('26488', '0', '180859');
INSERT IGNORE INTO `spell_script_target` VALUES ('26488', '0', '180874');
INSERT IGNORE INTO `spell_script_target` VALUES ('26488', '0', '180869');
INSERT IGNORE INTO `spell_script_target` VALUES ('26488', '0', '180772');

# timmit
UPDATE `creature_template` SET `gossip_menu_id` = 15895, `ScriptName` = '' WHERE `entry` = 15895;
INSERT INTO `gossip_menu`(`entry`,`text_id`) VALUES 
(15895,8205);
INSERT INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES
(15895,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0),
(15895,1,0,'I would have want to get a new invitation to the Lunar Festival.',1,1,0,15895,0,0,0);
INSERT INTO `gossip_scripts` VALUES  
(15895,0,15,26375,2,0,0,0,0,0);

# NeatElves
DELETE FROM `creature` WHERE `guid` = 78111;

# WDB
INSERT INTO `npc_text` SET `ID`=6954,`prob0`=1,`text0_0`='<Demitrian falls to his knees.>$B$BYou have recovered my Master''s eternal prison!$B$BOh long have I waited for this day and finally, it is realized.$B$BHe must be released!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=16,`em0_2`=0,`em0_3`=20,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=6955,`prob0`=1,`text0_0`='I hold the vessel of his rebirth. Should you be prepared to take on this task, you will be required to fortify the vessel and ultimately, break the hold of Ragnaros himself!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=6956,`prob0`=1,`text0_0`='The vessel of rebirth must be fortified with elementium. I know of only one source of the mineral: the elemental planes, at the core of our world.$B$BThere is one, an Earthshaper, who may know more than I about the acquisition of such things. You must find this Earthshaper!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=6958,`prob0`=1,`text0_0`='The corporeal form of Ragnaros must be destroyed. From the remnants, his essence shall emerge. In this weakened state, Ragnaros'' grip on the prison of Thunderaan is loosed. The essence itself acting as a key...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8158,`prob0`=1,`text0_0`='Elder Goldwell spends his time in the village of Kharanos in Dun Morogh.',`text0_1`='Elder Goldwell spends his time in the village of Kharanos in Dun Morogh.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8167,`prob0`=1,`text0_0`='Elder Stonefort has taken to the dungeons of Blackrock Spire.',`text0_1`='Elder Stonefort has taken to the dungeons of Blackrock Spire.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8174,`prob0`=1,`text0_0`='Elder Hammershout can be found within the walls of Stormwind.',`text0_1`='Elder Hammershout can be found within the walls of Stormwind.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8177,`prob0`=1,`text0_0`='Elder Skygleam can be found near the Ravencrest Monument in Azshara.',`text0_1`='Elder Skygleam can be found near the Ravencrest Monument in Azshara.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8182,`prob0`=1,`text0_0`='Last I knew, Elder Stonespire was at Everlook in Winterspring.',`text0_1`='Last I knew, Elder Stonespire was at Everlook in Winterspring.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8183,`prob0`=1,`text0_0`='Elder Brightspear can be found wandering amongst the ruins of Kel''Theril in Winterspring.',`text0_1`='Elder Brightspear can be found wandering amongst the ruins of Kel''Theril in Winterspring.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8184,`prob0`=1,`text0_0`='Elder Bloodhoof can be found at Bloodhoof Village in Mulgore.',`text0_1`='Elder Bloodhoof can be found at Bloodhoof Village in Mulgore.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8185,`prob0`=1,`text0_0`='Elder Windtotem is keeping company with the goblins of Ratchet on the coast of the Barrens.',`text0_1`='Elder Windtotem is keeping company with the goblins of Ratchet on the coast of the Barrens.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8186,`prob0`=1,`text0_0`='Elder High Mountain is at Camp Taurajo in the Barrens.',`text0_1`='Elder High Mountain is at Camp Taurajo in the Barrens.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8187,`prob0`=1,`text0_0`='Elder Moonwarden is observing the Crossroads in the Barrens.',`text0_1`='Elder Moonwarden is observing the Crossroads in the Barrens.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8190,`prob0`=1,`text0_0`='Elder Morningdew has taken to watching the commotion at the Mirage Raceway in Thousand Needles.',`text0_1`='Elder Morningdew has taken to watching the commotion at the Mirage Raceway in Thousand Needles.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8192,`prob0`=1,`text0_0`='You''ll find Elder Grimtotem at the Lariss Pavilion in Feralas.',`text0_1`='You''ll find Elder Grimtotem at the Lariss Pavilion in Feralas.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8193,`prob0`=1,`text0_0`='Elder Mistwalker enjoys watching the struggles at the Maul in Feralas.',`text0_1`='Elder Mistwalker enjoys watching the struggles at the Maul in Feralas.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8194,`prob0`=1,`text0_0`='Go to the Freewind Post in Thousand Needles and you will find Elder Skyseer.',`text0_1`='Go to the Freewind Post in Thousand Needles and you will find Elder Skyseer.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8195,`prob0`=1,`text0_0`='I think Elder Splitrock has traveled to Maraudon in Desolace.',`text0_1`='I think Elder Splitrock has traveled to Maraudon in Desolace.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8197,`prob0`=1,`text0_0`='Elder Ragetotem spends her days at the Valley of the Watchers in Tanaris Desert.',`text0_1`='Elder Ragetotem spends her days at the Valley of the Watchers in Tanaris Desert.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=8198,`prob0`=1,`text0_0`='Zul''Farrak in Tanaris Desert is Elder Wildmane''s home.',`text0_1`='Zul''Farrak in Tanaris Desert is Elder Wildmane''s home.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13807,`prob0`=1,`text0_0`='Elder Pamuya is just outside Warsong Hold.',`text0_1`='Elder Pamuya is just outside Warsong Hold.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13812,`prob0`=1,`text0_0`='Elder Wanikaya can be found at Rainspeaker Rapids in Sholazar Basin.',`text0_1`='Elder Wanikaya can be found at Rainspeaker Rapids in Sholazar Basin.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13816,`prob0`=1,`text0_0`='Elder Skywarden can be found near Agmar''s Hammer in Dragonblight.',`text0_1`='Elder Skywarden can be found near Agmar''s Hammer in Dragonblight.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13817,`prob0`=1,`text0_0`='Last I knew, Elder Nurgen was in Azjol-Nerub.',`text0_1`='Last I knew, Elder Nurgen was in Azjol-Nerub.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13820,`prob0`=1,`text0_0`='Elder Lunaro is at the Ruins of Tethys in Grizzly Hills.',`text0_1`='Elder Lunaro is at the Ruins of Tethys in Grizzly Hills.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13824,`prob0`=1,`text0_0`='Elder Tauros found his way to Zim''Torga in Zul''Drak.',`text0_1`='Elder Tauros found his way to Zim''Torga in Zul''Drak.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13827,`prob0`=1,`text0_0`='Elder Muraco is just outside Camp Tunka''lo in Storm Peaks.',`text0_1`='Elder Muraco is just outside Camp Tunka''lo in Storm Peaks.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13829,`prob0`=1,`text0_0`='Elder Stonebeard resides at Bouldercrag''s Refuge in the Storm Peaks.',`text0_1`='Elder Stonebeard resides at Bouldercrag''s Refuge in the Storm Peaks.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=13830,`prob0`=1,`text0_0`='Elder Yurauk can be found in the Halls of Stone.',`text0_1`='Elder Yurauk can be found in the Halls of Stone.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `item_template` SET `name`='Spectral Tiger Cub',`description`='Teaches you how to summon this companion.',`entry`=49343,`class`=15,`subclass`=2,`unk0`=-1,`displayid`=63022,`Quality`=3,`Flags`=64,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=0,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=1,`RequiredLevel`=0,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=55884,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=68810,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=4096,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Big Love Rocket',`description`='Teaches you how to summon this mount.',`entry`=50250,`class`=15,`subclass`=5,`unk0`=-1,`displayid`=63856,`Quality`=4,`Flags`=32768,`Faction`=0,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=0,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=20,`RequiredLevel`=20,`RequiredSkill`=762,`RequiredSkillRank`=75,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=500,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=330,`spellcategorycooldown_1`=3000,`spellid_2`=71342,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=3000,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=2,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `creature_template` SET `name`='Shadow''s Edge Bunny',`IconName`='',`subname`='',`entry`=37801,`type_flags`=0,`type`=10,`family`=0,`rank`=0,`KillCredit1`=0,`KillCredit2`=0,`modelid_A`=16480,`modelid_A2`=21342,`modelid_H`=0,`modelid_H2`=0,`unk16`=1,`unk17`=1,`RacialLeader`=0,`movementId`=0,`questItem1`=0,`questItem2`=0,`questItem3`=0,`questItem4`=0,`questItem5`=0,`questItem6`=0;
INSERT INTO `creature_template` SET `name`='Shadow''s Edge',`IconName`='',`subname`='',`entry`=38191,`type_flags`=0,`type`=10,`family`=0,`rank`=0,`KillCredit1`=0,`KillCredit2`=0,`modelid_A`=30986,`modelid_A2`=0,`modelid_H`=0,`modelid_H2`=0,`unk16`=1,`unk17`=1,`RacialLeader`=0,`movementId`=0,`questItem1`=0,`questItem2`=0,`questItem3`=0,`questItem4`=0,`questItem5`=0,`questItem6`=0;
UPDATE `creature_template` SET `modelid_H` = 16480, `minhealth` = 1, `maxhealth` = 1, `faction_A` = 35, `faction_H` = 35, `mindmg` = 1, `maxdmg` = 1, `attackpower` = 1, `baseattacktime` = 2000, `rangeattacktime` = 1500, `rangedattackpower` = 100 WHERE `entry` = 37801;
UPDATE `creature_template` SET `modelid_H` = 30986, `minhealth` = 1, `maxhealth` = 1, `faction_A` = 35, `faction_H` = 35, `mindmg` = 1, `maxdmg` = 1, `attackpower` = 1, `baseattacktime` = 2000, `rangeattacktime` = 1500, `rangedattackpower` = 100 WHERE `entry` = 38191;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (37950, 0, 0, 0, 0, 0, 30318, 0, 30318, 0, 'Valithria Dreamwalker', '', '', 0, 1, 1, 1, 1, 0, 0, 0, 35, 35, 0, 1, 1, 3, 1, 1, 0, 1, 1, 2000, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 2, 4108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (37985, 0, 0, 0, 0, 0, 30877, 169, 30877, 0, 'Dream Cloud', '', '', 0, 1, 1, 1, 1, 0, 0, 0, 35, 35, 0, 1, 1, 0, 1, 1, 0, 1, 1, 2000, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
INSERT INTO `npc_text` VALUES ('8826', 'Your work here is complete, shaman.  Return to your people.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `npc_text` VALUES ('13646', 'Boktar thinks this crash an unfortunate event, but I believe we\'re intended to learn something from it.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `npc_text` VALUES ('9166', '', 'We cannot afford to let our guard down, $c. This world is crawling with agents and allies of the Burning Legion. If you come across anything strange, don\'t hestitate to show me.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `npc_text` VALUES ('12930', 'Hrm? Oh. Pardon me if I seem distracted; I fear for the men of Northwatch. I should have sent some of my students to aid them...', 'Hrm? Oh. Pardon me if I seem distracted; I fear for the men of Northwatch. I should have sent some of my students to aid them...', '7', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');

# NeatElves
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES 
(65, 50289, -10, 1, 1, 1, 12, 45, 0),
(394, 50289, -10, 1, 1, 1, 12, 45, 0),
(495, 50289, -10, 1, 1, 1, 12, 45, 0),
(3537, 50289, -10, 1, 1, 1, 12, 45, 0),
(3711, 50289, -10, 1, 1, 1, 12, 45, 0),
(4395, 50289, -10, 1, 1, 1, 12, 45, 0),
(2817, 50289, -10, 1, 1, 1, 12, 45, 0),
(66, 50289, -10, 1, 1, 1, 12, 45, 0),
(210, 50289, -10, 1, 1, 1, 12, 45, 0);

# cyrex
UPDATE creature SET spawndist=0 WHERE MovementType=2;
DELETE FROM `creature_movement` WHERE `id`=67447;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(67447, 1, 9512.21, -6840.16, 16.4934, 60000, 2000000217, 0, 0, 0, 0, 0, 0, 0, 1.0472, 0, 0);
DELETE FROM `creature_movement` WHERE `id`=68292;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(68292, 1, 9513.45, -6838.06, 16.4939, 55000, 2000000218, 0, 0, 0, 0, 20, 0, 0, 3.9968, 0, 0);
DELETE FROM `creature_movement` WHERE `id`=67443;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(67443, 1, 9520.85, -6858.46, 18.6936, 60000, 2000000220, 0, 0, 0, 0, 0, 0, 0, 5.39307, 0, 0);

# Krek
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=100, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=29983;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36961;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36969;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=11.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36950;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37116;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=4.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37021;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36978;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37833;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37920;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37189;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36971;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38491;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37930;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36839;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37117;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36960;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38712;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36968;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36957;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36982;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38711;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37034;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37134;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=53.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36627;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36725;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37571;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37232;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37595;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37501;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37665;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37502;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37666;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=30.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37023;
UPDATE `creature_template` SET `mindmg`=436, `maxdmg`=654, `attackpower`=163, `dmg_multiplier`=14, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38485;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=6.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38104;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36811;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=21, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37217;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=68.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36829;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=22.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10404;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=31.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36808;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36701;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37695;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37533;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37919;
UPDATE `creature_template` SET `mindmg`=436, `maxdmg`=654, `attackpower`=163, `dmg_multiplier`=14, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37868;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37546;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=9.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36844;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37229;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37907;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37532;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38490;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=59.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36626;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38494;
UPDATE `creature_template` SET `mindmg`=342, `maxdmg`=512, `attackpower`=128, `dmg_multiplier`=86.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36855;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36724;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36633;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=5.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38410;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37972;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37698;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38454;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36853;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37133;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37126;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=49.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37970;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37955;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36678;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37012;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=16.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37949;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37813;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=23.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37890;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36899;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38369;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36791;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37662;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37534;
UPDATE `creature_template` SET `mindmg`=436, `maxdmg`=654, `attackpower`=163, `dmg_multiplier`=14, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38472;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=52.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37230;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=9.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36807;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37544;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=77.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36880;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37545;
UPDATE `creature_template` SET `mindmg`=340, `maxdmg`=510, `attackpower`=128, `dmg_multiplier`=0.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37782;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=27.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37022;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37228;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=24.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37025;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37886;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37863;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36980;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38248;
UPDATE `creature_template` SET `mindmg`=436, `maxdmg`=654, `attackpower`=163, `dmg_multiplier`=14, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37125;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=49.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37973;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=100, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36597;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38184;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37934;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36897;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=13.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38508;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37663;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=44.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37098;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=9.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36805;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37901;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37531;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=9.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37038;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=49.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36612;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37697;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38159;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38154;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37664;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38028;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37127;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36619;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37007;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=33286;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37132;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38125;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37011;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37146;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37187;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37031;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37033;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37124;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37032;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37149;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37030;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37035;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36939;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37029;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37755;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37879;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37182;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36838;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37188;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36970;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37830;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37200;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38492;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37190;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37026;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37004;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37148;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=16.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36998;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37144;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36948;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=21.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37003;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=6.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37016;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37027;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37017;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=17.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37122;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37928;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38501;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38589;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38551;
UPDATE `creature_template` SET `mindmg`=436, `maxdmg`=654, `attackpower`=163, `dmg_multiplier`=14, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37965;
UPDATE `creature_template` SET `mindmg`=436, `maxdmg`=654, `attackpower`=163, `dmg_multiplier`=14, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37123;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37945;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37689;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=36789;
UPDATE `creature_template` SET `mindmg`=436, `maxdmg`=654, `attackpower`=163, `dmg_multiplier`=14, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37967;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37120;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38471;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37540;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38558;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37119;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37586;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37996;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38995;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=38194;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=47.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=37184;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14576;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14576;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14583;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=6.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14573;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14586;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14592;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14616;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14613;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14607;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14595;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14598;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14610;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14589;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=79.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13112;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14838;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10006;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10012;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10026;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10023;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=45.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14949;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14922;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=13.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14802;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=31.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14788;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=103.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14657;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=33.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14654;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=46.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14816;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14675;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=13.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14791;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=88.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13109;
UPDATE `creature_template` SET `mindmg`=342, `maxdmg`=512, `attackpower`=128, `dmg_multiplier`=129.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13103;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14797;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=8.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14805;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10029;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=74.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10035;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10073;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13119;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14794;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=24.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14785;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13106;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14678;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14808;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10020;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=78.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14917;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=14.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14651;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14925;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=116.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14835;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14931;
UPDATE `creature_template` SET `mindmg`=340, `maxdmg`=510, `attackpower`=128, `dmg_multiplier`=0.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14669;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=41.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14934;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=37.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14648;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=74.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10032;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14672;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=20.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14914;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10015;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=67.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14619;
UPDATE `creature_template` SET `mindmg`=462, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=14.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=16552;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=13.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14952;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=73.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13100;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14937;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10009;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14811;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=39.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14782;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14955;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15029;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14975;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15032;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15013;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15023;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15016;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14978;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14969;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14995;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14972;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10070;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15095;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15057;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15051;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=24.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15092;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15048;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15265;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=32.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15265;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=10.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15054;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15035;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=25.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15038;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14577;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14577;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14584;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=6.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14574;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14587;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14593;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14617;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14614;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14608;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14596;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14599;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14611;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14590;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=79.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13113;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14839;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10007;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10013;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10027;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10024;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=45.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14950;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14923;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=13.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14803;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=31.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14789;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=103.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14658;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=33.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14655;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=46.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14817;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14676;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=13.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14792;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=88.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13110;
UPDATE `creature_template` SET `mindmg`=342, `maxdmg`=512, `attackpower`=128, `dmg_multiplier`=129.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13104;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14798;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=8.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14806;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10030;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=74.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10039;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10074;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13120;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14795;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=24.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14786;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13107;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14679;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14809;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10021;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=78.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14918;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=14.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14652;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14926;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=116.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14836;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14932;
UPDATE `creature_template` SET `mindmg`=340, `maxdmg`=510, `attackpower`=128, `dmg_multiplier`=0.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14670;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=41.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14935;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=37.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14649;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=74.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10033;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14673;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=20.7, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14915;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10018;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=67.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14620;
UPDATE `creature_template` SET `mindmg`=462, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=14.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14814;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=13.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14953;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=73.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13101;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14938;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10010;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14812;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=39.1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14783;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14956;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15030;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14976;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15033;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15014;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15024;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15017;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14979;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14970;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14996;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14973;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10071;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15096;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15058;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15052;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=24.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15093;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15049;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=70.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15266;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=32.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15266;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=10.3, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15055;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=26.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15036;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=25.9, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15039;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14578;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14578;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14585;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=8.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14575;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14588;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14594;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14618;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=20, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14615;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14609;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14597;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14600;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=20, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14612;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14591;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=106.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13114;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=20, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14840;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10008;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10014;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10028;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10025;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=60.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14951;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=13.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14924;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=18, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14804;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=42, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14790;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=137.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14659;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=44.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14656;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=62.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14818;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14677;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=18.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14793;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=118.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13111;
UPDATE `creature_template` SET `mindmg`=342, `maxdmg`=512, `attackpower`=128, `dmg_multiplier`=172.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13105;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=20, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14799;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=10.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14807;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=94.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10031;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=99.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10064;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=94.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10075;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=94.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13121;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=20, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14796;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=33, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14787;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=94.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13108;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=47.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14680;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14810;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10022;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=104.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14919;
UPDATE `creature_template` SET `mindmg`=330, `maxdmg`=495, `attackpower`=124, `dmg_multiplier`=18.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14653;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14927;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=155.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14837;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14933;
UPDATE `creature_template` SET `mindmg`=340, `maxdmg`=510, `attackpower`=128, `dmg_multiplier`=0.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14671;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=55.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14936;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=49.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14650;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=99.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10034;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14674;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=27.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14916;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10019;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=89.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14647;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=19, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14815;
UPDATE `creature_template` SET `mindmg`=391, `maxdmg`=586, `attackpower`=147, `dmg_multiplier`=18.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14954;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=176, `dmg_multiplier`=98.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=13102;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14939;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10011;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=20, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14813;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=52.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14784;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=20, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14957;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15031;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=94.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14977;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15034;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15015;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15025;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15018;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14980;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14971;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=94.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14997;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=14974;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=94.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=10072;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15097;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15059;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15053;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=32.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15094;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15050;
UPDATE `creature_template` SET `mindmg`=468, `maxdmg`=702, `attackpower`=174, `dmg_multiplier`=94.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15267;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=43.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15267;
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=631, `attackpower`=158, `dmg_multiplier`=13.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15056;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=35.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15037;
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=34.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=15040;

# timmit
DELETE FROM `achievement_criteria_requirement` WHERE `criteria_id`='12846';
insert into `achievement_criteria_requirement` values (12846,16,335,0);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 24610;
UPDATE `item_template` SET `spellid_1` = 70577, `spellcharges_1` = -1 WHERE `entry` = 21816;
UPDATE `item_template` SET `spellid_1` = 70580, `spellcharges_1` = -1 WHERE `entry` = 21817;
UPDATE `item_template` SET `spellid_1` = 70579, `spellcharges_1` = -1 WHERE `entry` = 21818;
UPDATE `item_template` SET `spellid_1` = 70578, `spellcharges_1` = -1 WHERE `entry` = 21819;
UPDATE `item_template` SET `spellid_1` = 70576, `spellcharges_1` = -1 WHERE `entry` = 21820;
UPDATE `item_template` SET `spellid_1` = 70581, `spellcharges_1` = -1 WHERE `entry` = 21821;
UPDATE `item_template` SET `spellid_1` = 70575, `spellcharges_1` = -1 WHERE `entry` = 21822;
UPDATE `item_template` SET `spellid_1` = 70574, `spellcharges_1` = -1 WHERE `entry` = 21823;
UPDATE `item_template` SET `Flags` = 64 WHERE `entry` in (21816,21817,21818,21819,21820,21821,21822,21823);

# NeatElves
UPDATE `creature_template` SET `spell1` = '0' WHERE `entry` =15895;
UPDATE `creature_template` SET `flags_extra` = '130' WHERE `entry` in (15893,15894);

# Forum_FIX
UPDATE `gameobject` SET `position_x` = 9315.9, `position_y` = -7286.51, `position_z` = 15.3451, `orientation` = -1.64934, `rotation2` = -0.734322, `rotation3` = 0.678801 WHERE `guid` = 19444;
UPDATE `gameobject` SET `position_x` = 10241, `position_y` = -6166.87, `position_z` = 20.8556, `orientation` = 0.567232, `rotation2` = 0.279829, `rotation3` = 0.96005 WHERE `guid` = 19589;
DELETE FROM `achievement_criteria_requirement` WHERE criteria_id=12859;
INSERT INTO `achievement_criteria_requirement` VALUES ('12859', '18', '0', '0');
UPDATE `gameobject_template` SET `data3` = 1, `data14` = 19676 WHERE `entry` = 185497;
UPDATE `gameobject_template` SET `faction` = 0, `flags` = 0 WHERE `data0` = '259' AND `type` = 3;
UPDATE `gameobject` SET `position_x` = 9095.72, `position_y` = -6674.25, `position_z` = 25.1268, `orientation` = 2.53978, `rotation2` = 0.955068, `rotation3` = 0.296387 WHERE `guid` = 19555;
UPDATE `gameobject` SET `position_x` = 8815.21, `position_y` = -6640.79, `position_z` = 56.448, `orientation` = -0.462187, `rotation2` = -0.229042, `rotation3` = 0.973416 WHERE `guid` = 19529;
INSERT IGNORE INTO `spell_script_target` VALUES ('57806', '2', '30202');
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 9024;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestInChain` = 0 WHERE `entry` = 8903;
DELETE FROM `creature_loot_template` WHERE (`entry`=37755);
INSERT INTO `creature_loot_template` VALUES 
(36853, 49908, 0, 1, 1, 1, 0, 0, 0),
(36853, 50274, 0, 1, 1, 1, 0, 0, 0),
(36853, 52025, 0, 1, 1, 1, 0, 0, 0),
(36853, 52026, 0, 1, 1, 1, 0, 0, 0),
(36853, 52027, 0, 1, 1, 1, 0, 0, 0),
(36853, 52028, 0, 1, 1, 1, 0, 0, 0),
(36853, 52029, 0, 1, 1, 1, 0, 0, 0),
(36853, 52030, 0, 1, 1, 1, 0, 0, 0);
UPDATE `gameobject` SET `phaseMask` = 65535 WHERE `id` = 192187;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0, `lootid` = 0 WHERE `entry` = 37755;
UPDATE `creature_template` SET `minhealth` = 38348752, `maxhealth` = 38348752, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 10072;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 10070;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 10071;
UPDATE `creature_template` SET `minhealth` = 22156000, `maxhealth` = 22156000 WHERE `entry` = 10070;
UPDATE `creature_template` SET `minhealth` = 30156000, `maxhealth` = 30156000 WHERE `entry` = 10071;
DELETE FROM gameobject WHERE guid=66668;
UPDATE `creature_template` SET `modelid_A` = 16925, `modelid_A2` = 18783, `modelid_H2` = 18783, `flags_extra` = 2 WHERE `entry` = 22517;

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=9662,`prob0`=1,`text0_0`='The Lunar Festival celebration being held by the druids is taking place in Moonglade. If that''s too far for you to travel, they are offering transportation from the moonwell at the Park.',`text0_1`='The Lunar Festival celebration being held by the druids is taking place in Moonglade. If that''s too far for you to travel, they are offering transportation from the moonwell at the Park.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `item_template` SET `name`='Havoc''s Call, Blade of Lordaeron Kings',`description`='',`entry`=50012,`class`=2,`subclass`=0,`unk0`=-1,`displayid`=64480,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1369323,`SellPrice`=273864,`InventoryType`=13,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=271,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=99,`stat_type2`=3,`stat_value2`=74,`stat_type3`=7,`stat_value3`=74,`stat_type4`=32,`stat_value4`=49,`stat_type5`=36,`stat_value5`=49,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=435,`dmg_max1`=809,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2600,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Muradin''s Spyglass',`description`='',`entry`=50345,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=43609,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=455760,`SellPrice`=113940,`InventoryType`=12,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=1,`stackable`=1,`ContainerSlots`=0,`StatsCount`=1,`stat_type1`=32,`stat_value1`=152,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=71573,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=120000,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=73,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Oathbinder, Charge of the Ranger-General',`description`='',`entry`=50425,`class`=2,`subclass`=6,`unk0`=-1,`displayid`=64390,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1718038,`SellPrice`=343607,`InventoryType`=17,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=271,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=231,`stat_type2`=3,`stat_value2`=157,`stat_type3`=7,`stat_value3`=173,`stat_type4`=32,`stat_value4`=99,`stat_type5`=44,`stat_value5`=115,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=895,`dmg_max1`=1344,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3600,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=1,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3355,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Cryptmaker',`description`='',`entry`=50603,`class`=2,`subclass`=5,`unk0`=-1,`displayid`=63834,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1661579,`SellPrice`=332315,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=185,`stat_type2`=7,`stat_value2`=209,`stat_type3`=44,`stat_value3`=115,`stat_type4`=31,`stat_value4`=99,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=938,`dmg_max1`=1407,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3600,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=8,`socketContent_3`=0,`socketBonus`=3312,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Band of the Bone Colossus',`description`='',`entry`=50604,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64169,`Quality`=4,`Flags`=524296,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=11,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=120,`stat_type2`=3,`stat_value2`=102,`stat_type3`=7,`stat_value3`=102,`stat_type4`=31,`stat_value4`=62,`stat_type5`=36,`stat_value5`=65,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=0,`spellcategory_1`=0,`spellcategorycooldown_1`=0,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2877,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=59,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Frozen Bonespike',`description`='',`entry`=50608,`class`=2,`subclass`=15,`unk0`=-1,`displayid`=64649,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1353869,`SellPrice`=270773,`InventoryType`=21,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=1,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=836,`stat_type2`=7,`stat_value2`=75,`stat_type3`=5,`stat_value3`=75,`stat_type4`=6,`stat_value4`=66,`stat_type5`=32,`stat_value5`=50,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=142.56,`dmg_max1`=413.56,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-95.8,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Loop of the Endless Labyrinth',`description`='',`entry`=50614,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64176,`Quality`=4,`Flags`=524296,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=11,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=110,`stat_type2`=7,`stat_value2`=78,`stat_type3`=5,`stat_value3`=78,`stat_type4`=31,`stat_value4`=52,`stat_type5`=32,`stat_value5`=73,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=3,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=64,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Coldwraith Links',`description`='',`entry`=50620,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64798,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=462628,`SellPrice`=92525,`InventoryType`=6,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=139,`stat_type2`=7,`stat_value2`=155,`stat_type3`=32,`stat_value3`=85,`stat_type4`=44,`stat_value4`=78,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1550,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=6,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=55,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3357,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Grinning Skull Greatboots',`description`='',`entry`=50625,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64797,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=701579,`SellPrice`=140315,`InventoryType`=8,`AllowableClass`=1535,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=4,`stat_value1`=103,`stat_type2`=7,`stat_value2`=180,`stat_type3`=12,`stat_value3`=90,`stat_type4`=13,`stat_value4`=82,`stat_type5`=37,`stat_value5`=61,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1895,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3307,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Zod''s Repeating Longbow',`description`='Kneel before him.',`entry`=50638,`class`=2,`subclass`=2,`unk0`=-1,`displayid`=64356,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=978292,`SellPrice`=195658,`InventoryType`=15,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=2,`stat_type1`=3,`stat_value1`=22,`stat_type2`=7,`stat_value2`=57,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=618.28,`dmg_max1`=999.28,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2800,`ammo_type`=2,`RangedModRange`=100,`spellid_1`=71836,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=90,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2936,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=62.6,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Cultist''s Bloodsoaked Spaulders',`description`='',`entry`=50646,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=64431,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=517179,`SellPrice`=103435,`InventoryType`=3,`AllowableClass`=1535,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=165,`stat_type2`=3,`stat_value2`=128,`stat_type3`=7,`stat_value3`=136,`stat_type4`=32,`stat_value4`=90,`stat_type5`=36,`stat_value5`=74,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=521,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=70,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3355,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='The Lady''s Brittle Bracers',`description`='',`entry`=50651,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=64361,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=280723,`SellPrice`=56144,`InventoryType`=9,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=110,`stat_type2`=7,`stat_value2`=78,`stat_type3`=5,`stat_value3`=78,`stat_type4`=32,`stat_value4`=73,`stat_type5`=31,`stat_value5`=52,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=162,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=35,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Scourgeborne Waraxe',`description`='',`entry`=50654,`class`=2,`subclass`=0,`unk0`=-1,`displayid`=64472,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1284464,`SellPrice`=256892,`InventoryType`=13,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=88,`stat_type2`=3,`stat_value2`=78,`stat_type3`=7,`stat_value3`=78,`stat_type4`=32,`stat_value4`=52,`stat_type5`=44,`stat_value5`=44,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=263,`dmg_max1`=489,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1500,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2877,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Boneguard Commander''s Pauldrons',`description`='',`entry`=50660,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64707,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=688545,`SellPrice`=137709,`InventoryType`=3,`AllowableClass`=262143,`AllowableRace`=32767,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=4,`stat_value1`=136,`stat_type2`=7,`stat_value2`=180,`stat_type3`=12,`stat_value3`=71,`stat_type4`=14,`stat_value4`=63,`stat_type5`=13,`stat_value5`=63,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=2067,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=100,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3307,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Boots of Unnatural Growth',`description`='',`entry`=50665,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=64489,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=515273,`SellPrice`=103054,`InventoryType`=8,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=140,`stat_type2`=7,`stat_value2`=103,`stat_type3`=5,`stat_value3`=103,`stat_type4`=6,`stat_value4`=74,`stat_type5`=32,`stat_value5`=90,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=477,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=60,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3602,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Toskk''s Maximized Wristguards',`description`='',`entry`=50670,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=64439,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=349633,`SellPrice`=69926,`InventoryType`=9,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=120,`stat_type2`=3,`stat_value2`=102,`stat_type3`=7,`stat_value3`=102,`stat_type4`=32,`stat_value4`=60,`stat_type5`=44,`stat_value5`=68,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=304,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=40,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2877,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Aldriana''s Gloves of Secrecy',`description`='',`entry`=50675,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=64434,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=322319,`SellPrice`=64463,`InventoryType`=10,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=165,`stat_type2`=3,`stat_value2`=128,`stat_type3`=7,`stat_value3`=136,`stat_type4`=44,`stat_value4`=90,`stat_type5`=36,`stat_value5`=74,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=434,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=40,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3355,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Bile-Encrusted Medallion',`description`='',`entry`=50682,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64213,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=2,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=102,`stat_type2`=7,`stat_value2`=141,`stat_type3`=12,`stat_value3`=54,`stat_type4`=13,`stat_value4`=46,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=756,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2868,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Trauma',`description`='',`entry`=50685,`class`=2,`subclass`=4,`unk0`=-1,`displayid`=64515,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1373795,`SellPrice`=274759,`InventoryType`=21,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=3,`stat_type1`=45,`stat_value1`=836,`stat_type2`=7,`stat_value2`=48,`stat_type3`=5,`stat_value3`=52,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=142.56,`dmg_max1`=413.56,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=71868,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=3,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-95.8,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Nerub''ar Stalker''s Cord',`description`='',`entry`=50688,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=64837,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=416551,`SellPrice`=83310,`InventoryType`=6,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=181,`stat_type2`=3,`stat_value2`=120,`stat_type3`=7,`stat_value3`=107,`stat_type4`=5,`stat_value4`=71,`stat_type5`=32,`stat_value5`=74,`stat_type6`=44,`stat_value6`=71,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=867,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=50,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3355,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Horrific Flesh Epaulets',`description`='',`entry`=50698,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65176,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=605360,`SellPrice`=121072,`InventoryType`=3,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=140,`stat_type2`=7,`stat_value2`=103,`stat_type3`=5,`stat_value3`=103,`stat_type4`=32,`stat_value4`=90,`stat_type5`=36,`stat_value5`=74,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1157,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3602,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Holiday''s Grace',`description`='',`entry`=50700,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64203,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=2,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=110,`stat_type2`=7,`stat_value2`=78,`stat_type3`=5,`stat_value3`=78,`stat_type4`=32,`stat_value4`=60,`stat_type5`=43,`stat_value5`=34,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Dying Light',`description`='',`entry`=50725,`class`=2,`subclass`=10,`unk0`=-1,`displayid`=64337,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1716909,`SellPrice`=343381,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=277,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=6,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=837,`stat_type2`=7,`stat_value2`=176,`stat_type3`=5,`stat_value3`=176,`stat_type4`=6,`stat_value4`=131,`stat_type5`=36,`stat_value5`=131,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=388.24,`dmg_max1`=662.24,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2100,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=2,`sheath`=2,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=2,`socketContent_3`=0,`socketBonus`=3753,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=-75.6,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Troggbane, Axe of the Frostborne King',`description`='',`entry`=51795,`class`=2,`subclass`=0,`unk0`=-1,`displayid`=64485,`Quality`=4,`Flags`=0,`Faction`=0,`BuyPrice`=1283461,`SellPrice`=256692,`InventoryType`=13,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=258,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=4,`stat_value1`=66,`stat_type2`=7,`stat_value2`=99,`stat_type3`=12,`stat_value3`=35,`stat_type4`=14,`stat_value4`=37,`stat_type5`=13,`stat_value5`=30,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=242,`dmg_max1`=451,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1600,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Oxheart',`description`='',`entry`=51833,`class`=2,`subclass`=5,`unk0`=-1,`displayid`=63834,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1627906,`SellPrice`=325581,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=161,`stat_type2`=7,`stat_value2`=185,`stat_type3`=32,`stat_value3`=104,`stat_type4`=37,`stat_value4`=83,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=825,`dmg_max1`=1238,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3500,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=2,`socketContent_3`=0,`socketBonus`=3312,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Dreamhunter''s Carbine',`description`='',`entry`=51834,`class`=2,`subclass`=3,`unk0`=-1,`displayid`=64365,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=980287,`SellPrice`=196057,`InventoryType`=26,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=4,`stat_value1`=43,`stat_type2`=7,`stat_value2`=65,`stat_type3`=15,`stat_value3`=29,`stat_type4`=48,`stat_value4`=71,`stat_type5`=12,`stat_value5`=27,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=497.866,`dmg_max1`=817.866,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2600,`ammo_type`=3,`RangedModRange`=100,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=90,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2868,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=48.41,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Cowl of Malefic Repose',`description`='',`entry`=51837,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=64302,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=368132,`SellPrice`=73626,`InventoryType`=1,`AllowableClass`=262143,`AllowableRace`=32767,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=162,`stat_type2`=7,`stat_value2`=123,`stat_type3`=5,`stat_value3`=123,`stat_type4`=36,`stat_value4`=108,`stat_type5`=32,`stat_value5`=84,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=287,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=60,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=1,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3753,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Stakethrower',`description`='',`entry`=51845,`class`=2,`subclass`=3,`unk0`=-1,`displayid`=64363,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=948489,`SellPrice`=189697,`InventoryType`=26,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=79,`stat_type2`=3,`stat_value2`=43,`stat_type3`=7,`stat_value3`=36,`stat_type4`=44,`stat_value4`=36,`stat_type5`=36,`stat_value5`=23,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=575.23,`dmg_max1`=944.23,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3000,`ammo_type`=3,`RangedModRange`=100,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=90,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2877,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=48.41,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Spaulders of the Blood Princes',`description`='',`entry`=51847,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64705,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=667629,`SellPrice`=133525,`InventoryType`=3,`AllowableClass`=262143,`AllowableRace`=32767,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=4,`stat_value1`=84,`stat_type2`=7,`stat_value2`=157,`stat_type3`=12,`stat_value3`=87,`stat_type4`=14,`stat_value4`=53,`stat_type5`=31,`stat_value5`=74,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1980,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=100,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3871,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Cerise Coiled Ring',`description`='',`entry`=51849,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64225,`Quality`=4,`Flags`=524296,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=11,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=97,`stat_type2`=7,`stat_value2`=65,`stat_type3`=5,`stat_value3`=70,`stat_type4`=32,`stat_value4`=67,`stat_type5`=36,`stat_value5`=41,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=3,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=54,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Bloodsoul Raiment',`description`='',`entry`=51851,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=64168,`Quality`=4,`Flags`=4104,`Faction`=0,`BuyPrice`=530686,`SellPrice`=106137,`InventoryType`=20,`AllowableClass`=262143,`AllowableRace`=8388607,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=162,`stat_type2`=7,`stat_value2`=123,`stat_type3`=5,`stat_value3`=123,`stat_type4`=6,`stat_value4`=90,`stat_type5`=36,`stat_value5`=102,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=354,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=1,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=100,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=4,`socketContent_3`=0,`socketBonus`=3753,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Hersir''s Greatspear',`description`='',`entry`=51857,`class`=2,`subclass`=6,`unk0`=-1,`displayid`=64379,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1533724,`SellPrice`=306744,`InventoryType`=17,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=324,`stat_type2`=3,`stat_value2`=105,`stat_type3`=7,`stat_value3`=123,`stat_type4`=31,`stat_value4`=52,`stat_type5`=44,`stat_value5`=123,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=825,`dmg_max1`=1238,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3500,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=1,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=2,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=4,`socketContent_3`=0,`socketBonus`=3313,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Discarded Bag of Entrails',`description`='',`entry`=51866,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=64427,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=475968,`SellPrice`=95193,`InventoryType`=1,`AllowableClass`=262143,`AllowableRace`=8388607,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=3,`stat_value1`=154,`stat_type2`=7,`stat_value2`=111,`stat_type3`=38,`stat_value3`=230,`stat_type4`=36,`stat_value4`=92,`stat_type5`=44,`stat_value5`=100,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=540,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=70,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=1,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3882,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Choker of Filthy Diamonds',`description`='',`entry`=51871,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64203,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=2,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=97,`stat_type2`=7,`stat_value2`=71,`stat_type3`=5,`stat_value3`=68,`stat_type4`=36,`stat_value4`=60,`stat_type5`=43,`stat_value5`=26,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Ether-Soaked Bracers',`description`='',`entry`=51872,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=64298,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=266237,`SellPrice`=53247,`InventoryType`=9,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=97,`stat_type2`=7,`stat_value2`=69,`stat_type3`=5,`stat_value3`=69,`stat_type4`=31,`stat_value4`=38,`stat_type5`=36,`stat_value5`=69,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=155,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=35,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Gluth''s Fetching Knife',`description`='',`entry`=51880,`class`=2,`subclass`=16,`unk0`=-1,`displayid`=64452,`Quality`=4,`Flags`=4198408,`Faction`=0,`BuyPrice`=371197,`SellPrice`=92799,`InventoryType`=25,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=72,`stat_type2`=3,`stat_value2`=43,`stat_type3`=7,`stat_value3`=46,`stat_type4`=32,`stat_value4`=28,`stat_type5`=31,`stat_value5`=31,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=424,`dmg_max1`=637,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=1800,`ammo_type`=0,`RangedModRange`=100,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2936,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Kilt of Untreated Wounds',`description`='',`entry`=51882,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=64311,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=500088,`SellPrice`=100017,`InventoryType`=7,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=162,`stat_type2`=7,`stat_value2`=123,`stat_type3`=5,`stat_value3`=123,`stat_type4`=36,`stat_value4`=96,`stat_type5`=32,`stat_value5`=96,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=309,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=2,`socketContent_3`=0,`socketBonus`=3753,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Soulcleave Pendant',`description`='',`entry`=51894,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64218,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=2,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=97,`stat_type2`=7,`stat_value2`=69,`stat_type3`=5,`stat_value3`=69,`stat_type4`=32,`stat_value4`=62,`stat_type5`=36,`stat_value5`=49,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Blade-Scored Carapace',`description`='',`entry`=51902,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64592,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=898754,`SellPrice`=179750,`InventoryType`=5,`AllowableClass`=1535,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=173,`stat_type2`=7,`stat_value2`=185,`stat_type3`=32,`stat_value3`=84,`stat_type4`=36,`stat_value4`=96,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=2641,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=165,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=4,`socketContent_3`=0,`socketBonus`=3312,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Scourge Stranglers',`description`='',`entry`=51904,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=64424,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=323314,`SellPrice`=64662,`InventoryType`=10,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=155,`stat_type2`=3,`stat_value2`=120,`stat_type3`=7,`stat_value3`=86,`stat_type4`=32,`stat_value4`=72,`stat_type5`=44,`stat_value5`=72,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=416,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=40,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3355,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Ramaladni''s Blade of Culling',`description`='',`entry`=51905,`class`=2,`subclass`=1,`unk0`=-1,`displayid`=64320,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1622478,`SellPrice`=324495,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=161,`stat_type2`=7,`stat_value2`=185,`stat_type3`=44,`stat_value3`=91,`stat_type4`=37,`stat_value4`=99,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=825,`dmg_max1`=1238,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3500,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=2,`socketContent_3`=0,`socketBonus`=3312,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Ice-Reinforced Vrykul Helm',`description`='',`entry`=51906,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65040,`Quality`=4,`Flags`=4104,`Faction`=0,`BuyPrice`=586218,`SellPrice`=117243,`InventoryType`=1,`AllowableClass`=262143,`AllowableRace`=32767,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=171,`stat_type2`=7,`stat_value2`=111,`stat_type3`=5,`stat_value3`=117,`stat_type4`=36,`stat_value4`=100,`stat_type5`=43,`stat_value5`=49,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1200,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=85,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=1,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3753,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Saronite Gargoyle Cloak',`description`='Even longer than your average cloak or cape.',`entry`=51912,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=64325,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=399240,`SellPrice`=79848,`InventoryType`=16,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=95,`stat_type2`=7,`stat_value2`=103,`stat_type3`=32,`stat_value3`=38,`stat_type4`=36,`stat_value4`=69,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=177,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2892,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Abomination''s Bloody Ring',`description`='',`entry`=51913,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=64171,`Quality`=4,`Flags`=524296,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=11,`AllowableClass`=262143,`AllowableRace`=8388607,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=4,`stat_value1`=57,`stat_type2`=7,`stat_value2`=124,`stat_type3`=31,`stat_value3`=53,`stat_type4`=13,`stat_value4`=63,`stat_type5`=12,`stat_value5`=56,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=3,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2868,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=52,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Frost Giant''s Cleaver',`description`='',`entry`=51916,`class`=2,`subclass`=0,`unk0`=-1,`displayid`=64472,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1255585,`SellPrice`=251117,`InventoryType`=13,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=106,`stat_type2`=3,`stat_value2`=61,`stat_type3`=7,`stat_value3`=53,`stat_type4`=32,`stat_value4`=50,`stat_type5`=44,`stat_value5`=31,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=412,`dmg_max1`=766,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2600,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=105,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2936,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Ghoul Commander''s Cuirass',`description`='',`entry`=51917,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64787,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=882217,`SellPrice`=176443,`InventoryType`=5,`AllowableClass`=262143,`AllowableRace`=32767,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=4,`stat_value1`=162,`stat_type2`=7,`stat_value2`=207,`stat_type3`=12,`stat_value3`=91,`stat_type4`=14,`stat_value4`=85,`stat_type5`=13,`stat_value5`=51,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=2641,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=165,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=8,`socketContent_3`=0,`socketBonus`=3304,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Deathspeaker Disciple''s Belt',`description`='',`entry`=51919,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=65035,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=380928,`SellPrice`=76185,`InventoryType`=6,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=1,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=122,`stat_type2`=7,`stat_value2`=92,`stat_type3`=5,`stat_value3`=92,`stat_type4`=36,`stat_value4`=84,`stat_type5`=43,`stat_value5`=29,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=831,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=50,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2369,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Scourgelord''s Baton',`description`='',`entry`=51922,`class`=4,`subclass`=0,`unk0`=-1,`displayid`=40786,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=302495,`SellPrice`=75623,`InventoryType`=23,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=97,`stat_type2`=7,`stat_value2`=69,`stat_type3`=5,`stat_value3`=69,`stat_type4`=31,`stat_value4`=65,`stat_type5`=32,`stat_value5`=45,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=3,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3752,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Chestguard of the Frigid Noose',`description`='',`entry`=51923,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=64423,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=644202,`SellPrice`=128840,`InventoryType`=5,`AllowableClass`=262143,`AllowableRace`=32767,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=228,`stat_type2`=3,`stat_value2`=150,`stat_type3`=7,`stat_value3`=107,`stat_type4`=36,`stat_value4`=111,`stat_type5`=44,`stat_value5`=91,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=665,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=8,`socketContent_3`=0,`socketBonus`=3313,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Soulthief''s Braided Belt',`description`='',`entry`=51925,`class`=4,`subclass`=2,`unk0`=-1,`displayid`=64422,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=324463,`SellPrice`=64892,`InventoryType`=6,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=38,`stat_value1`=183,`stat_type2`=3,`stat_value2`=104,`stat_type3`=7,`stat_value3`=92,`stat_type4`=31,`stat_value4`=54,`stat_type5`=32,`stat_value5`=86,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=374,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=8,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=40,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3355,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Corrupted Silverplate Leggings',`description`='',`entry`=51928,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64667,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=918331,`SellPrice`=183666,`InventoryType`=7,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=162,`stat_type2`=7,`stat_value2`=123,`stat_type3`=5,`stat_value3`=123,`stat_type4`=32,`stat_value4`=93,`stat_type5`=36,`stat_value5`=99,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=2310,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=6,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=8,`socketContent_2`=0,`socketColor_3`=2,`socketContent_3`=0,`socketBonus`=3753,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Cord of the Patronizing Practitioner',`description`='',`entry`=51930,`class`=4,`subclass`=1,`unk0`=-1,`displayid`=64378,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=264270,`SellPrice`=52854,`InventoryType`=6,`AllowableClass`=32767,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=122,`stat_type2`=7,`stat_value2`=92,`stat_type3`=5,`stat_value3`=92,`stat_type4`=6,`stat_value4`=62,`stat_type5`=36,`stat_value5`=78,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=199,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=35,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2770,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Ancient Skeletal Boots',`description`='',`entry`=51931,`class`=4,`subclass`=4,`unk0`=-1,`displayid`=64664,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=645547,`SellPrice`=129109,`InventoryType`=8,`AllowableClass`=32767,`AllowableRace`=8388607,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=5,`stat_type1`=45,`stat_value1`=122,`stat_type2`=7,`stat_value2`=92,`stat_type3`=5,`stat_value3`=92,`stat_type4`=32,`stat_value4`=80,`stat_type5`=43,`stat_value5`=32,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=1815,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3316,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Linked Scourge Vertebrae',`description`='',`entry`=51935,`class`=4,`subclass`=3,`unk0`=-1,`displayid`=64820,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=375219,`SellPrice`=75043,`InventoryType`=6,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=6,`stat_type1`=38,`stat_value1`=161,`stat_type2`=3,`stat_value2`=104,`stat_type3`=7,`stat_value3`=95,`stat_type4`=5,`stat_value4`=63,`stat_type5`=31,`stat_value5`=47,`stat_type6`=32,`stat_value6`=80,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=831,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=5,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=50,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=8,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3764,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;
INSERT INTO `item_template` SET `name`='Citadel Enforcer''s Claymore',`description`='',`entry`=51936,`class`=2,`subclass`=8,`unk0`=-1,`displayid`=64556,`Quality`=4,`Flags`=8,`Faction`=0,`BuyPrice`=1569321,`SellPrice`=313864,`InventoryType`=17,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=264,`RequiredLevel`=80,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=4,`stat_type1`=4,`stat_value1`=169,`stat_type2`=7,`stat_value2`=185,`stat_type3`=32,`stat_value3`=79,`stat_type4`=31,`stat_value4`=116,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=801,`dmg_max1`=1203,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=3400,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=1,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=120,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=2,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=3357,`GemProperties`=0,`RequiredDisenchantSkill`=375,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0;

# FIX
UPDATE `item_template` SET `RequiredReputationRank` = 0 WHERE `entry` = 50725;
INSERT IGNORE INTO `creature_model_info` VALUES ('30877', '0', '0', '2', '0');
INSERT IGNORE INTO `creature_model_info` VALUES ('30986', '0', '0', '2', '0');
UPDATE `creature_template` SET `lootid` = 0 WHERE `lootid` = 37755;
DELETE FROM `event_scripts` WHERE ID=3203;

# FINAL_ITEM_FIX
UPDATE `item_template` SET `StatsCount`=1 WHERE `stat_type1`>0 AND `stat_value1`<>0; 
UPDATE `item_template` SET `StatsCount`=2 WHERE `stat_type2`>0 AND `stat_value2`<>0; 
UPDATE `item_template` SET `StatsCount`=3 WHERE `stat_type3`>0 AND `stat_value3`<>0; 
UPDATE `item_template` SET `StatsCount`=4 WHERE `stat_type4`>0 AND `stat_value4`<>0; 
UPDATE `item_template` SET `StatsCount`=5 WHERE `stat_type5`>0 AND `stat_value5`<>0; 
UPDATE `item_template` SET `StatsCount`=6 WHERE `stat_type6`>0 AND `stat_value6`<>0; 
UPDATE `item_template` SET `StatsCount`=7 WHERE `stat_type7`>0 AND `stat_value7`<>0; 
UPDATE `item_template` SET `StatsCount`=8 WHERE `stat_type8`>0 AND `stat_value8`<>0; 
UPDATE `item_template` SET `StatsCount`=9 WHERE `stat_type9`>0 AND `stat_value9`<>0; 
UPDATE `item_template` SET `StatsCount`=10 WHERE `stat_type10`>0 AND `stat_value10`<>0;

# Final_FIX
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry` and `creature_template`.`RegenHealth` = '1';
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE  MovementType=2 and guid not in (select distinct(id) from creature_movement);
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `creature_template` SET `dynamicflags` = `dynamicflags`&~4;
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;

UPDATE db_version SET `cache_id`= '535';
UPDATE db_version SET `version`= 'YTDB_0.11.0_R535_MaNGOS_R9403_SD2_R1581_ACID_R303_RuDB_R35.0';
