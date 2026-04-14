---
title: "Retrieve The Artefact"
date: 2026-04-09
image: /images/RetreiveTheArtefactHeadingImage.png
award: "ACC Best Games Design And Development Award 2023"
description: "Procedural Generation, Multiple Weapon and Bullet types, Blast your way through an abandoned space ship to retrieve the power cell!"
---
**Award:** ACC Best Games Design And Development Award 2023  
**College Award:** Best Games Design and Development

Retrieve the Artefact was the first ambitious project I created, at the very end of my college time, for my final major project. These are the features I implemented:

<p><iframe src="https://www.youtube.com/embed/hbd46-uPhKw" frameborder="0" allowfullscreen></iframe></p>

## Environment Features

- Environment Procedural Generation using the random walk algorithm.
- Procedural Corridor Generation using constrained random walk algorithm.
- Weighted Spawning using the Dykstra algorithm.

## Gameplay Features

- Multiple weapon support such as shotguns, snipers, pistols and miniguns, each with their own range, firing type (automatic, burst, manual), number of bullets and angle support (bullet spread).
- 2 gun holding, a primary and secondary gun you can switch to with key presses, along with dropping guns on the floor and picking them up.
- 3 Different bullet types: Split shot (mini bullets burst from the main bullet on impact), Homing (locks onto the enemies locations and does custom homing movement), and normal bullets.
- Multiple Enemy types: A centipede that uses a line tracer for procedural animation, a cursed dog enemy that runs at the player, and a stationary ranged enemy that will shoot with behaviours that change depending on how close the player is to it.
- Dodge Rolling - Avoids damage impact with its own animation and speed.
- Mini map - shows the environment, the player, enemies and the artefact.
- Chests - Randomised weighted weapon spawning and a custom programmed opening animation.
- Circular Player Health Bar around the mini map.
- Camera Zoom in and out mechanic to help with navigation.
- End screen timer systems saying how long it took you to get the artefact, to get home and the total time and a high score screen for if the time was low enough.

## UI Menu Features

- Main Menu with custom animations for the rest of the UI.
- Video settings - with FPS, Vsync, Fullscreen and resolution support.
- Sound Settings - Master, Music Ambience and SFX sliders.
- Controls Settings - 2 Different Rebind menus for controller and keyboard.

## Gameplay Screenshots
![Gameplay Screenshot 1](/images/RetreiveTheArtefactGameplayImage1.png)
![Gameplay Screenshot 2](/images/RetreiveTheArtefactGameplayImage2.png)
