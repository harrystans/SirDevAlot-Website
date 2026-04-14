---
layout: post
title:  Retrieve The Artefact - Post Mortem
date:   2023-12-15 12:00:00 +0000
image:  '/images/RetreiveTheArtefactHeadingImage.png'
tags: [College Work]
---
Retrieve the Artefact was the first ambitious project I created, at the very end of my college time, for my final major project. This post mortem covers the development journey, what went well, what I learned, and what I would do differently.

## The Project

Retrieve the Artefact is a top-down shooter with procedurally generated environments. The player blasts their way through an abandoned spaceship to retrieve a power cell and escape. It won the ACC Best Games Design and Development Award 2023.

<p><iframe src="https://www.youtube.com/embed/hbd46-uPhKw" frameborder="0" allowfullscreen></iframe></p>

## What Went Well

The procedural generation systems were the highlight of this project. Using the random walk algorithm for environment generation and constrained random walk for corridor generation gave each playthrough a unique feel. The weighted spawning system using the Dijkstra algorithm ensured enemies and items were placed in a balanced way throughout the levels.

The weapon system was another success. Supporting multiple weapon types such as shotguns, snipers, pistols and miniguns, each with their own range, firing type (automatic, burst, manual), number of bullets and angle support for bullet spread, gave the gameplay real variety. The 2 gun holding system with primary and secondary switching, along with dropping and picking up guns, added a layer of strategy.

<div class="gallery-box">
  <div class="gallery">
    <img src="/images/RetreiveTheArtefactGameplayImage1.png" alt="Gameplay">
    <img src="/images/RetreiveTheArtefactGameplayImage2.png" alt="Gameplay">
  </div>
  <em>Retrieve The Artefact Gameplay</em>
</div>

## Challenges

The three different bullet types — Split shot, Homing, and Normal — each posed their own programming challenges. The homing bullets in particular required careful tuning of the custom movement logic to feel satisfying without being overpowered.

Creating multiple enemy types was a significant undertaking. The centipede enemy using a line tracer for procedural animation, the cursed dog that rushes the player, and the stationary ranged enemy with distance-based behaviour changes all required different approaches to AI and animation.

## Features I'm Proud Of

- Dodge Rolling with its own animation and speed, avoiding damage on impact
- Mini map showing the environment, player, enemies and the artefact
- Chests with randomised weighted weapon spawning and custom opening animations
- Circular Player Health Bar displayed around the mini map
- Camera zoom in and out mechanic for better navigation
- End screen timer systems with high score tracking

## UI and Menus

The UI work was extensive for this project. I built a main menu with custom animations, video settings with FPS, VSync, fullscreen and resolution support, sound settings with Master, Music, Ambience and SFX sliders, and two different rebind menus for controller and keyboard.

## What I Learned

This project taught me the value of scope management and iterative development. Building so many systems from scratch gave me a deep understanding of game architecture, but also showed me where I could have saved time by being more strategic about which features to prioritise.

> Retrieve the Artefact was a turning point in my development journey — it proved to me that I could take on an ambitious project and see it through to completion.

Looking back, this project laid the foundation for everything that followed. The lessons I learned here about procedural generation, weapon systems, and enemy AI have carried forward into all my subsequent work.
