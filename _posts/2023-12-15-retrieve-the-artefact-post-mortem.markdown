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

## The Technical Vision

The main technical goal of the project was to create a project that acculimated my all my skills as a programmer into one project. The core features for this project are the procedural generation, complex weapon and enemy systems, and complex UI features such as rebinding.

## Architecture Spotlight: Procedural Generation using the Random Walk Algorithm

I utilised variations of the random walk algorithm and combined them to create custom room and corridor spawning. I then use the information and locations (Vector2D<ints>) and pass it into a Dijkstra algorithm with the start location being the player to spawn the “artefact” at the furthest possible point from the player and using the rest to weight chests and environmental objects and enemies. 

## C# Procedural Generation Snippet

```csharp
      protected override void RunProceduralGeneration()
    {
        HashSet<Vector2Int> floorPositions = RunRandomWalk(randomWalkParameters, startPosition);
        tilemapVisualizer.Clear();
        tilemapVisualizer.PaintFloorTiles(floorPositions);
        WallGenerator.CreateWalls(floorPositions, tilemapVisualizer);
    }

    protected HashSet<Vector2Int> RunRandomWalk(SimpleRandomWalkSO parameters, Vector2Int position)
    {
        var currentPosition = position;
        HashSet<Vector2Int> floorPositions = new HashSet<Vector2Int>();
        for (int i = 0; i < parameters.iterations; i++)
        {
            var path = ProceduralGenerationAlgorithms.SimpleRandomWalk(currentPosition, parameters.walkLength);
            floorPositions.UnionWith(path);
            if (parameters.startRandomlyEachIteration)
                currentPosition = floorPositions.ElementAt(Random.Range(0, floorPositions.Count));
        }
        return floorPositions;
    }
```

<div class="gallery-box">
  <div class="gallery">
    <img src="/images/RetreiveTheArtefactGameplayImage1.png" alt="Gameplay">
    <img src="/images/RetreiveTheArtefactGameplayImage2.png" alt="Gameplay">
  </div>
  <em>Retrieve The Artefact UI and Gameplay</em>
</div>

## Overcoming Challenges: Procedural Generation Algorithm

The thing I want with my game was rooms that felt ordered in size and shape, but also natural and not “box-like”. Since this was one of my earliest attempts at procedural generation, it took me over a month just to choose the right algorithm. This is because I started with binary space partitioning, which is the process of taking a bounding box and using its positions to procedurally generate rooms with tiles, but this created boxes for rooms, and it didn’t feel right for my project. 

The solution ended up being to scrap that months worth of development and to use my new knowledge to choose a more appropriate algorithm for what I wanted, which ended up being random walk. 

## Key Takeaways & Optimisation

One of the main points of optimisation and a good learning opportunity for me was object pooling, the process of replacing spawning and destroying with activation and inactivation to create pools of reusable objects. 

- **Takeaway 1 -** The power of persistence: Retreive the artefact is the first project where I saw my vision through to the end, the total culmination of all my features, and being persistent with development is the key to being able to develop a game by myself.
- **Takeaway 2 -** Scope Management: This was also the first project where I learned that scope isn’t just about the scale of a project, but where to focus your efforts, overall retreive the artefact was a big game for me, but It would have been even more polished if I focused on the core features like the PCG and weapons over stuff like rebinding.

Looking back on this project, it laid the foundation for making fun gameplay systems, UI and weird game ideas that persisted throughout the rest of my work.
