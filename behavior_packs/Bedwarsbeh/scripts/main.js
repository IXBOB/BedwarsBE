import { world } from "@minecraft/server";

world.events.beforeChat.subscribe(async (eventData) => {
	const player = eventData.sender;
	if (!player.isOp()) return;
	switch (eventData.message) {
		case ':op':
			eventData.cancel = true;
			await player.runCommandAsync('tag @s add op');
			break;
		case ':deop':
			eventData.cancel = true;
			await player.runCommandAsync('tag @s remove op');
			break;
		default: break;
	}
});