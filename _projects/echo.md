---
title: "Echo"
date: 2026-04-13
image: /images/ECHOHeader.png
award: "University Project Grade: 90"
description: "Puzzle platformer in darkness, echolocation mechanics, and a monster that hunts by sound."
---
**University Grade:** 90

Echo is a puzzle platformer that takes place in complete darkness. You have to use your echolocation to find keys to unlock the door and complete the level, but there is a monster that will know where you are when you make noise, and it's your job to traverse the environment without dying to escape.

<p><iframe src="https://www.youtube.com/embed/6WgSDusQ4-o" frameborder="0" allowfullscreen></iframe></p>

## Core Features

- **Echolocation Shader:** I created this effect with two programmed shaders: one is a dithered ring effect with variables for expansion and colours, and the other is an outline effect. I combined these shaders with a custom script to time the activation, making it look like the player has echolocation.
- **Tile Code:** Along with a basic rule tile, I created a custom script that can make certain tiles not reactive to ping colours. This allows for green tiles in my game that indicate to the player that they cannot grapple with them.
- **Grapple Hook:** The main way to traverse the world. It can pull physics objects to the player and pull the player to environment objects, and it also triggers the echolocation. Different grappable objects can emit different coloured pings.
- **Centipede Monster:** I created a monster which listens to noise. Depending on variables such as distance and sound, the monster's aggression changes using a state machine with states like explore, aggressive, attack, wander, and sleep.
- **Platformer Controller:** I created a platformer controller from scratch for this project that has features like Jump Buffering, Coyote Time, Anti-Gravity Apex, Speed Apex, Sticky Feet, Bumped Head and Corner Clipping Correction, and Variable Jump Height.
- **Dynamic UI:** Using the new UI Toolkit, I created key animations that move when you collect a key and also update at the start of the level to show how many keys you need to collect.
- **UI Toolkit Menu:** My first menu using UI Toolkit, featuring a settings menu, exit menu, and a level select that dynamically scales depending on the number of levels assigned.

## Gameplay Screenshots

![Gameplay Screenshot 1](/images/EchoGameplayShot1.png)
![Gameplay Screenshot 3](/images/EchoGameplayShot3.png)
![Gameplay Screenshot 2](/images/EchoGameplayShot2.png)

