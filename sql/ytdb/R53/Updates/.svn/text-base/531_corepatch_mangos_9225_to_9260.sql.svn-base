ALTER TABLE db_version CHANGE COLUMN required_9222_01_mangos_playercreateinfo_spell required_9244_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (49188,56822,59057);
INSERT INTO `spell_proc_event` VALUES
(49188, 0x00000000, 15, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_9244_01_mangos_spell_proc_event required_9244_02_mangos_spell_chain bit;

INSERT INTO `spell_chain` VALUES
(49188, 0, 49188, 1, 0),
(56822, 49188, 49188, 2, 0),
(59057, 56822, 49188, 3, 0);


# SD2_1556
UPDATE instance_template SET script='instance_violet_hold' WHERE map=608;
UPDATE creature_template SET ScriptName='npc_door_seal' WHERE entry=30896;
UPDATE creature_template SET ScriptName='npc_sinclari' WHERE entry=30658;
UPDATE creature_template SET ScriptName='npc_teleportation_portal' WHERE entry IN (31011,30679,32174);
UPDATE gameobject_template SET ScriptName='go_activation_crystal' WHERE entry=193611;
