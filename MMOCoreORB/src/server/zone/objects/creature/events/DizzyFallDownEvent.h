/*
 * DizzyFallDownEvent.h
 *
 *  Created on: 02/06/2010
 *      Author: victor
 */

#ifndef DIZZYFALLDOWNEVENT_H_
#define DIZZYFALLDOWNEVENT_H_

#include "server/zone/objects/creature/CreatureObject.h"

namespace server {
namespace zone {
namespace objects {
namespace creature {
namespace events {

class DizzyFallDownEvent : public Task {
	ManagedReference<CreatureObject*> creature;
public:

	DizzyFallDownEvent(CreatureObject* creat) : Task(200) {
		creature = creat;
	}

	void run() {
		Locker locker(creature);

		// Small chance to stand up while dizzy...
		int rand = System::random(100);
		int chance = 5; // Percent.

		if (creature->isDizzied() && (100 - rand >= chance)) {
			if (creature->isRidingMount()) {
				creature->updateCooldownTimer("mount_dismount", 0);
				creature->dismount();
			}
			creature->setPosture(CreaturePosture::KNOCKEDDOWN);
			creature->updateKnockdownRecovery();
//			creature->updateLastKnockdown();
			creature->sendSystemMessage("@cbt_spam:dizzy_fall_down_single");
//			creature->sendStateCombatSpam("cbt_spam", "dizzy_fall_down", 11);
		}

		creature->clearDizzyEvent();
	}
};

}
}
}
}
}


#endif /* DIZZYFALLDOWNEVENT_H_ */
