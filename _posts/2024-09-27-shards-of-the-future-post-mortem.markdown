---
layout: post
title: Shards of the Future - Post Mortem
image:  '/images/ShardsOfTheFutureHeader.png'
date: 2024-09-27 12:00:00 +0000
tags: [Game Jam]
---

## The Project
This game was made by me and 1 other artist in the Staffordshire University freshers’ game jam most teams had 6+ people but for some reason my team was left with just us two, despite these challenges we managed to win the award “Best Game”, and I received a medal and a goody bag from developers from EA, Code Master and Sumo Digital. 

<p><iframe src="https://www.youtube.com/embed/BjcMkTsQPXE" frameborder="0" allowfullscreen></iframe></p>

## The Overall Vision

The Jam theme was super unique and hard. We had 1 week to make a game about the future, but we also had to include something about Stoke-on-Trent’s history, which is mainly pottery. This is where shards of the future was born. The premise of the game is that you are given broken pottery pieces, and it’s your job to rearrange them in the right order, like a jigsaw puzzle. You also have a “foresight mechanic” that allows you to see what the pot will look like when fully assembled.


## Architecture Spotlight: Procedural Sprite Breaking

This was the main part of the game that I am most proud of, the sprite-breaking mechanic. The game takes a sprite, gets its geometry, and takes an int variable (number of pieces) and splits it up as equally as it can.  To get the sprites geometry I used a polygon collider, then used that to procedurally take the bounds of the colliders and split it up, then each piece was given a script that called pottery piece that takes it start location and tweens it to a random location, and once its position is close enough to the start position, it locks itself back in place.


<div class="gallery-box">
  <div class="gallery">
    <img src="/images/ShardsOfTheFutureGameplayShot1.png" alt="Gameplay">
        <img src="/images/ShardsOfTheFutureGameplayShot2.png" alt="Gameplay">

  </div>
  <em>Shards Of The Future Gameplay</em>
</div>

## Overcoming Challenges: Time Constraints

The problem with this idea was I had no idea if I was able to create the sprite breaking mechanic in a couple days, as I had to commit at least 1-2 days to overall polish, we had to come up with a solution that allowed me to try this system while also having the fallback of the artist manually shattering the pottery. What I ended up coming up with is assigning the artist to create all the pots not broken over the next 2 days, that should give me enough time to see if the system was doable in the time we had, If I am unable to do it by the time the artists had finished all her pottery drawings then her next task would be to luckily after 3 different attempts I manged to find a system that worked 

## Key Takeaways

This project taught me the value of managing GitHub correctly. Due to the rush and the time constraints, I ended up not committing the final changes of the sprite splitting code of a university computer, luckily, since the deadline was so close at the point I also submitted to itch, but that work and code are forever lost now. This situation really pushed me to bee more strict with GitHub and how I use which is a skill that has saved me many times since this project. 

Looking back on this project, I get a great sense of pride with what I managed to accomplish, being able to win the best game award and actually receive a medal for my work felt super satisfying.

<div class="gallery-box">
  <div class="gallery">
    <img src="/images/ShardsOfTheFutureGameplayShot3.png" alt="Gameplay">
        <img src="/images/ShardsOfTheFutureGameplayShot4.png" alt="Gameplay">

  </div>
  <em>Shards Of The Future More Gameplay</em>
</div>
