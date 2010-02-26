ALTER TABLE db_version CHANGE COLUMN required_9244_02_mangos_spell_chain required_9262_01_mangos_quest_template bit;

ALTER TABLE quest_template CHANGE COLUMN QuestFlags QuestFlags mediumint(8) UNSIGNED NOT NULL default '0';

ALTER TABLE db_version CHANGE COLUMN required_9262_01_mangos_quest_template required_9277_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 60089;
INSERT INTO spell_bonus_data VALUES
(60089,0,0,0.15,'Druid - Faerie Fire (Feral) Triggered');

ALTER TABLE db_version CHANGE COLUMN required_9277_01_mangos_spell_bonus_data required_9288_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (31024,38395,5707,17712);
INSERT INTO spell_bonus_data VALUES
(31024,0,0,0,'Item - Living Ruby Pedant'),
(38395,0,0,0,'Item - Siphon Essence'),
(5707,0,0,0,'Item - Lifestone Regeneration'),
(17712,0,0,0,'Item - Lifestone Healing');

ALTER TABLE db_version CHANGE COLUMN required_9288_01_mangos_spell_bonus_data required_9289_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` IN (57870);
INSERT INTO `spell_proc_event` VALUES
(57870, 0x00000000, 9, 0x00800000, 0x00000000, 0x00000000, 0x00040000, 0x00000000, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_9289_01_mangos_spell_proc_event required_9291_01_mangos_quest_template bit;

ALTER TABLE quest_template ADD COLUMN CompletedText text AFTER EndText;

ALTER TABLE db_version CHANGE COLUMN required_9291_01_mangos_quest_template required_9291_02_mangos_locales_quest bit;

ALTER TABLE locales_quest ADD COLUMN CompletedText_loc1 text AFTER EndText_loc8;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc2 text AFTER CompletedText_loc1;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc3 text AFTER CompletedText_loc2;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc4 text AFTER CompletedText_loc3;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc5 text AFTER CompletedText_loc4;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc6 text AFTER CompletedText_loc5;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc7 text AFTER CompletedText_loc6;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc8 text AFTER CompletedText_loc7;

ALTER TABLE db_version CHANGE COLUMN required_9291_02_mangos_locales_quest required_9296_01_mangos_spell_chain bit;


/*Black Arrow*/
DELETE FROM spell_chain WHERE spell_id IN (3674,63668,63669,63670,63671,63672);

INSERT INTO spell_chain VALUES
(3674,0,3674,1,0),
(63668,3674,3674,2,0),
(63669,63668,3674,3,0),
(63670,63669,3674,4,0),
(63671,63670,3674,5,0),
(63672,63671,3674,6,0);

ALTER TABLE db_version CHANGE COLUMN required_9296_01_mangos_spell_chain required_9297_01_mangos_item_template bit;

ALTER TABLE item_template CHANGE COLUMN spellcharges_1 spellcharges_1 smallint(5) NOT NULL default '0';
ALTER TABLE item_template CHANGE COLUMN spellcharges_2 spellcharges_2 smallint(5) NOT NULL default '0';
ALTER TABLE item_template CHANGE COLUMN spellcharges_3 spellcharges_3 smallint(5) NOT NULL default '0';
ALTER TABLE item_template CHANGE COLUMN spellcharges_4 spellcharges_4 smallint(5) NOT NULL default '0';
ALTER TABLE item_template CHANGE COLUMN spellcharges_5 spellcharges_5 smallint(5) NOT NULL default '0';


# SD2_1565
UPDATE creature_template SET ScriptName='npc_apprentice_mirveda' WHERE entry=15402;
