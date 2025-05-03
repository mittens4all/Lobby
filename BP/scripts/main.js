import { world } from "@minecraft/server";

// Scoreboard Objectives
world.scoreboard.getObjective("joined") ?? world.scoreboard.addObjective("joined");
world.scoreboard.getObjective("lobby") ?? world.scoreboard.addObjective("lobby");
world.scoreboard.getObjective("x.axis") ?? world.scoreboard.addObjective("x.axis");
world.scoreboard.getObjective("y.axis") ?? world.scoreboard.addObjective("y.axis");
world.scoreboard.getObjective("z.axis") ?? world.scoreboard.addObjective("z.axis");