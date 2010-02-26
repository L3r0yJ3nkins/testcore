ALTER TABLE db_version CHANGE COLUMN required_9331_01_mangos_quest_template required_9366_01_mangos_spell_bonus_data bit;

ALTER TABLE spell_bonus_data
  CHANGE COLUMN entry entry mediumint(8) unsigned NOT NULL;


DELETE FROM spell_bonus_data WHERE entry = 71824;
INSERT INTO spell_bonus_data VALUES
(71824,0,0,0,'Item - Shaman T9 Elemental 4P Bonus');

ALTER TABLE db_version CHANGE COLUMN required_9366_01_mangos_spell_bonus_data required_9366_02_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 67228;
INSERT INTO `spell_proc_event` VALUES
(67228, 0x00000004, 11, 0x00000000, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0); 

ALTER TABLE db_version CHANGE COLUMN required_9366_02_mangos_spell_proc_event required_9379_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 65661;
INSERT INTO `spell_proc_event` VALUES
(65661, 0x00000000, 15, 0x00400011 ,0x20020004 ,0x00000000, 0x00000010, 0x00000000, 0.000000, 100.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_9379_01_mangos_spell_proc_event required_9380_01_mangos_command bit;

DELETE FROM command WHERE name IN ('modify fly', 'npc say', 'npc yell');
INSERT INTO command VALUES
('modify fly', 1, 'Syntax: .modify fly #rate\r\n.fly #rate\r\n\r\nModify the flying speed of the selected player to \"normal base fly speed\"*rate. If no player is selected, modify your fly.\r\n\r\n #rate may range from 0.1 to 10.'),
('npc say', 1, 'Syntax: .npc say #text\r\nMake the selected npc says #text.'),
('npc yell', 1, 'Syntax: .npc yell #text\r\nMake the selected npc yells #text.');

ALTER TABLE db_version CHANGE COLUMN required_9380_01_mangos_command required_9382_01_mangos_command bit;

ALTER TABLE db_version CHANGE COLUMN required_9382_01_mangos_command required_9385_01_mangos_command bit;

DELETE FROM command WHERE name IN ('reload all_scripts','reload all_achievement','reload all_item','reload all_eventai','reload all_npc');
INSERT INTO command VALUES
('reload all_achievement',3,'Syntax: .reload all_achievement\r\n\r\nReload all `achievement_*` tables if reload support added for this table and this table can be _safe_ reloaded.'),
('reload all_eventai',3,'Syntax: .reload all_eventai\r\n\r\nReload `creature_ai_*` tables if reload support added for these tables and these tables can be _safe_ reloaded.'),
('reload all_item',3,'Syntax: .reload all_item\r\n\r\nReload `item_required_target`, `page_texts` and `item_enchantment_template` tables.'),
('reload all_npc',3,'Syntax: .reload all_npc\r\n\r\nReload `points_of_interest` and `npc_*` tables if reload support added for these tables and these tables can be _safe_ reloaded.'),
('reload all_scripts',3,'Syntax: .reload all_scripts\r\n\r\nReload `*_scripts` tables.');


# SD2_1581
UPDATE creature_template SET ScriptName='npc_arugal' WHERE entry=10000;
UPDATE creature_template SET ScriptName='npc_deathstalker_vincent' WHERE entry=4444;
UPDATE creature_template SET ScriptName='mob_arugal_voidwalker' WHERE entry=4627;
UPDATE creature_template SET ScriptName='boss_arugal' WHERE entry=4275;
