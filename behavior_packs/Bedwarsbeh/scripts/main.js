import { world } from "@minecraft/server";

world.beforeEvents.chatSend.subscribe((eventData) => {
	const player = eventData.sender;
	if (!player.isOp())
		return;
	switch (eventData.message) {
		case '#help':
			eventData.cancel = true;
			player.runCommandAsync('function commands/command.help');
			break;
		case '#help.1':
			eventData.cancel = true;
			player.runCommandAsync('function commands/command.help.1');
			break;
		case '#help.2':
			eventData.cancel = true;
			player.runCommandAsync('function commands/command.help.2');
			break;
		case '#op':
			eventData.cancel = true;
			player.runCommandAsync('tag @s add op');
			break;
		case '#deop':
			eventData.cancel = true;
			player.runCommandAsync('tag @s remove op');
			break;
		case '#set.start.2':
			eventData.cancel = true;
			player.runCommandAsync('tag @s add set.start.players.2');
			break;
		case '#set.start.3':
			eventData.cancel = true;
			player.runCommandAsync('tag @s add set.start.players.3');
			break;
		case '#set.start.4':
			eventData.cancel = true;
			player.runCommandAsync('tag @s add set.start.players.4');
			break;
		case '#set.start.5':
			eventData.cancel = true;
			player.runCommandAsync('tag @s add set.start.players.5');
			break;
		case '#set.start.6':
			eventData.cancel = true;
			 player.runCommandAsync('tag @s add set.start.players.6');
			break;
		case '#set.start.7':
			eventData.cancel = true;
			player.runCommandAsync('tag @s add set.start.players.7');
			break;
		case '#set.start.8':
			eventData.cancel = true;
			player.runCommandAsync('tag @s add set.start.players.8');
			break;
		default: break;
	}
});