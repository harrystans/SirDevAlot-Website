---
title: "Retrieve The Artefact"
date: 2026-04-09
image: /images/RetreiveTheArtefactHeadingImage.png
award: "ACC Best Games Design And Development Award 2023"
description: "Procedural Generation, Multiple Weapon and Bullet types, Blast your way through an abandoned space ship to retrieve the power cell!"
tags: [Unity, 2D, C#]
---

**Project Overview:** Developed as a Final Major Project, Retrieve The Artefact is a top-down extraction shooter featuring a fully procedural world. The core focus was building modular gameplay systems that support diverse weapon types and complex AI behaviors.

**Award:** ACC Best Games Design And Development Award 2023  

<p><iframe src="https://www.youtube.com/embed/hbd46-uPhKw" frameborder="0" allowfullscreen></iframe></p>

## Technical Highlights

**Procedural World Generation**

**Dungeon Architecture:** Engineered a multi-stage generation pipeline using the Random Walk algorithm for organic room shapes and a Constrained Random Walk for corridor connectivity.

**Smart Spawning:** Implemented a weighted distribution system utilizing Dijkstra’s Algorithm to calculate path costs, ensuring balanced enemy density and item placement relative to the player’s spawn.

**Modular Gameplay Systems**

**Extensible Weapon Architecture:** Designed a data-driven weapon system supporting varied firing modes (Automatic, Burst, Manual) and projectile archetypes.

**Advanced Projectiles:** Scripted specialized projectile behaviors, including:

**Sub-emitter/Split-shot:** Recursive instantiation on impact.

**Vector-based Homing:** Dynamic target acquisition and course correction logic.

**State-Driven Inventory:** Built a robust swap-and-drop system for primary/secondary weapon management, utilizing a clean state-machine approach to handle animations and physics transitions.

**AI & Animation**

**Procedural Creature Animation:** Developed a multi-segment "Centipede" AI using Line Tracing and procedural animation to ensure segments realistically follow the lead head's terrain path.

**Context-Aware AI:** Programmed ranged enemies with adaptive behaviors that transitioned between aggressive states based on proximity and line-of-sight checks.

**Systems & UX**

**Rebindable Input Architecture:** Created a comprehensive UI system for real-time input remapping (Keyboard & Controller), supporting persistent player configurations.

**Performance-Optimized UI:** Developed a dynamic Minimap system using Render Textures and custom shaders to visualize real-time entity tracking and world discovery.

**Graphics & Audio Pipelines:** Integrated a modular settings menu handling Vsync, resolution scaling, and multi-channel audio mixers (Master/SFX/Ambience).

## Gameplay Screenshots
![Gameplay Screenshot 1](/images/RetreiveTheArtefactGameplayImage1.png)
![Gameplay Screenshot 2](/images/RetreiveTheArtefactGameplayImage2.png)
