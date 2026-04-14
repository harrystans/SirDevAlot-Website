---
title: "The Last Harvest"
date: 2026-04-14
image: /images/TheLastHarvestHeader.png
award: "Indie Project"
description: "A narrative-driven farming adventure with a custom dialogue tool and branching storylines."
tags: [Unity, 3D, C#]
---

**Project Overview:** The Last Harvest is a first-person narrative farming simulator blended with progressive survival-horror mechanics. I am the core Programmer and Designer in a two-person indie studio, I architected the game's core loops, balancing with dynamic, tension-building AI and branching narrative structures.

## Technical Highlights

**Core Game Loop & Progression Systems**

**Dynamic Objective Architecture:** Developed a scalable quest and objective system that tracks player milestones, listens for global event triggers, and updates UI seamlessly without tightly coupling logic.

**Narrative and Dialogue Architecture**

**Data-Driven Dialogue System:** Engineered a custom, node-based dialogue parser that handles branching conversations, variable state-checks, and custom text events for unique entities (e.g., the Crows and the Pumpking).

**Context-Aware NPCs:** Programmed narrative NPCs with state-driven interactions, ensuring their dialogue and behaviors evolve based on the player’s progress and past dialogue choices.

**Economic Shopkeeper Mechanics**

**Transactional Systems:** Built robust merchant and shopkeeper mechanics to handle in-game economy. This includes transactional validation (checking funds/stock), and a modular system for tool upgrades.

**Adversarial AI (The Scarecrow)**

**Tension-Driven AI:** Developed the "Scarecrow" enemy utilising a Finite State Machine (FSM). The AI transitions seamlessly between stalking, hiding, and attacking based on player proximity and line-of-sight raycasting.

**Navigational Logic:** Implemented dynamic pathfinding [e.g., using Unity's NavMesh] that adapts to the player's ever-changing farm layout, ensuring the enemy remains a persistent threat.

## Gameplay Screenshots

![Gameplay Screenshot 1](/images/TheLastHarvestGameplayShot.png)
![Gameplay Screenshot 2](/images/TheLastHarvestGameplayShot2.png)
![Gameplay Screenshot 3](/images/TheLastHarvestGameplayShot3.png)
![Gameplay Screenshot 4](/images/TheLastHarvestGameplayShot4.png)
