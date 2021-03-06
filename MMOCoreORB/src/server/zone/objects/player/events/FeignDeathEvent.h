/*
Copyright (C) 2014 <SWGEmu>

This File is part of Core3.

This program is free software; you can redistribute
it and/or modify it under the terms of the GNU Lesser
General Public License as published by the Free Software
Foundation; either version 2 of the License,
or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU Lesser General Public License for
more details.

You should have received a copy of the GNU Lesser General
Public License along with this program; if not, write to
the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

Linking Engine3 statically or dynamically with other modules
is making a combined work based on Engine3.
Thus, the terms and conditions of the GNU Lesser General Public License
cover the whole combination.

In addition, as a special exception, the copyright holders of Engine3
give you permission to combine Engine3 program with free software
programs or libraries that are released under the GNU LGPL and with
code included in the standard release of Core3 under the GNU LGPL
license (or modified versions of such code, with unchanged license).
You may copy and distribute such a system following the terms of the
GNU LGPL for Engine3 and the licenses of the other code concerned,
provided that you include the source code of that other code when
and as the GNU LGPL requires distribution of source code.

Note that people who make modified versions of Engine3 are not obligated
to grant this special exception for their modified versions;
it is their choice whether to do so. The GNU Lesser General Public License
gives permission to release a modified version without this exception;
this exception also makes it possible to release a modified version
which carries forward this exception.
*/

#ifndef FEIGNDEATHEVENT_H_
#define FEIGNDEATHEVENT_H_


#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/PlayClientEffectObjectMessage.h"
#include "server/zone/packets/scene/PlayClientEffectLocMessage.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/chat/ChatManager.h"

class FeignDeathEvent: public Task {
	ManagedReference<CreatureObject*> player;
	String moodString;

public:
	FeignDeathEvent(CreatureObject* pl) {
		player = pl;
	}

	void setMoodString(const String& ms) {
		moodString = ms;
	}

	String getMoodString() {
		return moodString;
	}

	void run() {
		Locker playerLocker(player);


		try {
			Reference<FeignDeathEvent*> fdeathTask = player->getPendingTask("feigndeathevent").castTo<FeignDeathEvent*>();

        		uint32 buffcrc;

        		uint32 buffcrc1 = BuffCRC::JEDI_AVOID_INCAPACITATION;
        		uint32 buffcrc2 = BuffCRC::JEDI_AVOID_INCAPACITATION_1;
        		uint32 buffcrc3 = BuffCRC::JEDI_AVOID_INCAPACITATION_2;
        		uint32 buffcrc4 = BuffCRC::JEDI_AVOID_INCAPACITATION_3;
        		uint32 buffcrc5 = BuffCRC::JEDI_AVOID_INCAPACITATION_4;
        		uint32 buffcrc6 = BuffCRC::JEDI_AVOID_INCAPACITATION_5;

        		if(player->hasBuff(buffcrc1)) {
        ;			buffcrc = buffcrc2;
        		}

        		else if (player->hasBuff(buffcrc2)) {
        			buffcrc = buffcrc3;
        		}


        		else if (player->hasBuff(buffcrc3)) {
        			buffcrc = buffcrc4;
        		}

        		else if (player->hasBuff(buffcrc4)) {
        			buffcrc = buffcrc5;
        		}

        		else if (player->hasBuff(buffcrc5)) {
        			buffcrc = buffcrc6;
        		}

        		else buffcrc = buffcrc1;


        			int duration = 30;
        			ManagedReference<Buff*> buff = new Buff(player, buffcrc, duration, BuffType::OTHER);
         			buff->setSkillModifier("avoid_incapacitation", 1);

        			player->addBuff(buff);

        			if (fdeathTask != NULL)
        				fdeathTask->reschedule(6000);
        		} catch (Exception& e) {
        			player->error("unreported exception caught in FeignDeathEvent::activate");
        		}

        }

};


#endif /* FEIGNDEATHEVENT_H_ */
