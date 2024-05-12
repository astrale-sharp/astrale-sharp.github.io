+++
title = "Tactical RPG framework"
date = 2023-10-23
description = "Using Rust and godot, this project aims to help create complex tactical RPG games."
[extra]
order = 1
image = "assets/tactical_demo.gif"
+++



<div style="margin-left: 40%; margin-right: 40%;">

[github link](https://github.com/astrale-sharp/tacticalRPG/)

</div>



# The framework

Using Rust and godot, this project aims to help create complex tactical RPG games.

The tactical engine allows you to declare what entities can do in the form of messages they can send.

You can also describe any kind of reaction they have to an event happening in the world.

An event is either : 
- something that happened, a message that was sent.
- something an entity is about to do, which means if you're faster you can react to it before it happened.

It comes with a small in development tactical RPG game made to feature the framework.

The framework is usable but in active development.

According to `ein tool estimate-hours` (a git utility), I spent 290.9 hours working on it, excluding the Dijkstra implementation.

# The accompanying demo

This is also a work in a project, not technically a game yet and even farther from being a good one.

It features/will feature:
- 75% : Reliable and Clear UI system.
- 15% : Unique weapons with interesting synergies.
- 70% : Basic and clear animations.
- 0%  : Beautiful art and animations made by an artist.
- 45% : Procedurally generated terrains.
- 100%: Inherited weapons that can only be obtained by merging different weapons.
  
    <img width="60%" src="/assets/weapon_inheritance.gif"></img>

- 80% : Portal technology.
- 0%  : Interactive objects, Destructible environments.




<!-- {{ godot(id="equilibre_equation") }} -->