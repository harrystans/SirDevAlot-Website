---
title: "Echo"
date: 2026-04-13
image: /images/ECHOHeader.png
award: "University Project Grade: 90"
description: "Puzzle platformer in darkness, echolocation mechanics, and a monster that hunts by sound."
tags: [Unity, 2D, C#]
---
**Grade:** 90%

**Project Overview:** Echo is a sensory-driven puzzle platformer built around the concept of acoustic visualization. In a pitch-black environment, players must use echolocation to navigate and survive. The project focus was on developing a custom rendering pipeline for the "ping" effect and a high-fidelity character controller.

<p><iframe src="https://www.youtube.com/embed/6WgSDusQ4-o" frameborder="0" allowfullscreen></iframe></p>

## Technical Highlights

**Acoustic Visualization Shader Pipeline**

**Multi-Pass Shader Effects:** Engineered a custom shader system combining a Dithered Circular Expansion effect with a Depth-based Outline Pass. This simulates sound waves hitting geometry in a purely black environment.

**Script-to-Shader Synchronization:** Developed a C# controller to pass real-time position and expansion variables to the GPU, allowing for dynamic, timed "pings" that reveal the world based on player actions.

**Selective Tile Interaction:** Extended the Unity Rule Tile system with a custom scriptable layer that toggles shader reactivity. This allows specific environment types (e.g, non-grappable green zones) to remain visually distinct during pings.

**High-Fidelity Platformer Controller**

**Tactile "Juice" Implementation:** Built a 2D controller from the ground up focusing on professional "game feel." Key features include:

**Temporal Forgiveness:** Jump Buffering and Coyote Time.

**Air Control Logic:** Anti-Gravity Apex and Speed Apex modifiers for fluid platforming.

**Collision Polishing:** Corner Clipping Correction and "Bumped Head" logic to prevent momentum loss on geometry edges.

**Physics-Driven Grappling:** Implemented a dual-purpose grapple system using Vector physics to either pull external objects toward the player or propel the player toward anchored geometry.

**Sound-Reactive AI (The Centipede)**

**Acoustic Sensing Model:** Developed an AI agent that "hears" the environment. It calculates aggression levels based on the distance and amplitude of player-generated pings.

**Heuristic State Machine:** Architected a Finite State Machine (FSM) with 5 distinct states (Wander, Sleep, Explore, Aggressive, Attack). The AI uses a proximity-based weighted system to transition between searching for the player and active pursuit.

**Modern UI Architecture**
**Data-Driven UI Toolkit:** Leveraged Unity’s UI Toolkit (USS/UXML) to create a decoupled UI system.

**Dynamic Content Scaling:** Built a level-select menu that procedurally generates and scales UI elements based on the assigned level count, ensuring a scalable and maintainable front-end.

## Gameplay Screenshots

![Gameplay Screenshot 1](/images/EchoGameplayShot1.png)
![Gameplay Screenshot 3](/images/EchoGameplayShot3.png)
![Gameplay Screenshot 2](/images/EchoGameplayShot2.png)

