--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute
--it and/or modify it under the terms of the GNU Lesser
--General Public License as published by the Free Software
--Foundation; either version 2 of the License,
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules
--is making a combined work based on Engine3.
--Thus, the terms and conditions of the GNU Lesser General Public License
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3
--give you permission to combine Engine3 program with free software
--programs or libraries that are released under the GNU LGPL and with
--code included in the standard release of Core3 under the GNU LGPL
--license (or modified versions of such code, with unchanged license).
--You may copy and distribute such a system following the terms of the
--GNU LGPL for Engine3 and the licenses of the other code concerned,
--provided that you include the source code of that other code when
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated
--to grant this special exception for their modified versions;
--it is their choice whether to do so. The GNU Lesser General Public License
--gives permission to release a modified version without this exception;
--this exception also makes it possible to release a modified version


object_tangible_event_perk_party_stage_theater = object_tangible_poi_base_shared_poi_base:new {
	invisible = 1,

	gameObjectType = 16410, -- Event Perk

	dataObjectComponent = "EventPerkDataComponent",
	attributeListComponent = "EventPerkAttributeListComponent",
	objectMenuComponent = {"cpp", "EventPerkMenuComponent"},

	childObjects = {
		{ templateFile = "object/tangible/microphone/microphone.iff", x = -0.05, z = 1.35, y = -0.52, ow = 1, ox = 0, oy = 0, oz = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/tangible/speaker/speaker.iff", x = -7.19, z = 1.35, y = 7.14, ow = 0.40394, ox = 0, oy = 0.91478, oz = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/tangible/speaker/speaker.iff", x = 7.09, z = 1.35, y = 7.12, ow = 0.36699, ox = 0, oy = -0.93023, oz = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/tangible/speaker/speaker.iff", x = -7.08, z = 1.35, y = -7.09, ow = 0.92679, ox = 0, oy = 0.37558, oz = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/tangible/speaker/speaker.iff", x = 7.11, z = 1.35, y = -7.09, ow = 0.92679, ox = 0, oy = -0.37558, oz = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/building/endor/endor_lake_platform.iff", x = -0.03, z = 1.16, y = 0, ow = 1, ox = 0, oy = 0, oz = 0, cellid = -1, containmentType = -1 },
	},
}

ObjectTemplates:addTemplate(object_tangible_event_perk_party_stage_theater, "object/tangible/event_perk/party_stage_theater.iff")
