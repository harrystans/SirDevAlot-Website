---
title: "Shards of the Future"
date: 2026-04-10
image: /images/ShardsOfTheFutureHeader.png
award: "Staffordshire University Fresher Gamejam Best Game Award"
description: "Procedural sprite breaking, puzzle design, and infinite levels. Rearrange pots as they become increasingly fragmented."
tags: [Unity, 2D, C#]
---

**Project Overview:** Developed in under a week, this project is a procedural puzzle game focused on precision and spatial reconstruction. As the sole programmer, I was responsible for developing the core destruction engine and the level progression logic.

**Award:** Best Game - Staffordshire University Freshers Gamejam

<p><iframe src="https://www.youtube.com/embed/BjcMkTsQPXE" frameborder="0" allowfullscreen></iframe></p>

## Technical Highlights

**Dynamic 2D Sprite Slicing**

**Runtime Mesh Generation:** Developed a system to dynamically "shatter" 2D sprites at runtime. This involved calculating intersection points on the sprite's polygon and generating new, independent mesh objects from the resulting fragments.

**Procedural Fragmentation:** Implemented a difficulty-scaling algorithm that increases the number of slices and fragment complexity as the player progresses through infinite levels.

**State Management & Pattern Verification**

**Initial State Serialization:** Engineered a system to capture and store the "solved" transform data (position and rotation) of every fragment before randomization.

**Precision Validation:** Created a verification script that compares the player's current fragment layout against the stored "solved" state using a tolerance-based float comparison to determine puzzle completion.

**Game Jam Systems Architecture**

**Time-Attack Logic:** Programmed a scalable level-timer system that adjusts based on the complexity of the fragments generated.

**Performance Scoring:** Built a star-rating algorithm (1–3 stars) that calculates the delta between the player's completion time and the "perfect" par time.

**Rapid Prototyping:** Managed the full technical pipeline, ensuring seamless integration of 2D assets from the artist while maintaining a stable build under tight time constraints.

## Gameplay Screenshots

![Header Image](/images/ShardsOfTheFutureHeader.png)
![Gameplay Screenshot 1](/images/ShardsOfTheFutureGameplayShot1.png)
![Gameplay Screenshot 2](/images/ShardsOfTheFutureGameplayShot2.png)
![Gameplay Screenshot 3](/images/ShardsOfTheFutureGameplayShot3.png)
![Gameplay Screenshot 4](/images/ShardsOfTheFutureGameplayShot4.png)
