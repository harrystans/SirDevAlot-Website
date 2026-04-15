---
layout: post
title: Clock Towers (OOFSM AI) - Post Mortem 
date: 2024-03-12 12:00:00 +0000
image:  '/images/ClockTowerHeader.png'
tags: [Game Jam]
---

## The Project

The Clock Towers is a game made by me in under 30 hours for the D3T Game Jam that took place at my college. D3T contacted our college and hosted a game jam so that a D3T staff member could talk to us about what we created in the jam. I decided to make a game that showcased my OOFSM AI, that uses vision cones and has multiple states. The goal of the game is to get from the first level to the last one in a dungeon with a checkpoint mechanic in between every couple environments.  

<p><iframe src="https://www.youtube.com/embed/UH0bL3G5A0U" frameborder="0" allowfullscreen></iframe></p>

## The Technical Vision

This entire project was made for the purpose of showing the OOFSM I created for the jam. I created 4 states: patrol, chase, kill and lost. These states all have specific logic in their own scripts I also created a vision code system for the game that would be the way to show the player when they are detected.

<div class="gallery-box">
  <div class="gallery">
    <img src="/images/ClockTowerGameplayShot2.png" alt="Vision Cones">
  </div>
  <em>Clock Tower Vision Cones</em>
</div>


## Architecture Spotlight: OOFSM

The most impressive system I created was my OOFSM, this was the first time I ever made an ai like this. I created a state machine that takes in “Base States”; these states basically act as scripts that have custom enter, exit, update functions, as well as getting the next state. I then have the state machine use these and a context script that holds variables that are to persist through all states, and use this to make the basis of my OOFSM. I then create custom states that are derived from the base state class to hold my custom logic per state, and I assign these specific classes to the enemy state machine.

## C# Enemy State Machine Snippet

```csharp
public class EnemyStateMachine : StateManager<EnemyStateMachine.EEnemyState>
{
    public enum EEnemyState
    {
        Idle,
        Chase,
        Confused,
        Attack
    }

    private GameObject _playerGameobject;
    private GameObject _enemyGameObject;
    private Transform _targetTransform;
    private NavMeshAgent _agent;
    private IconManager _iconManager;
    private Animator _animator;
    private FieldOfView _fieldOfView;
    private EnemyStateContext _context;
    private bool _playerInView;
    private AudioSource _audioSource;
    private Vector3 startPos;
    public bool _triggered = false;

    [Header("Enemy Variables")]
    [SerializeField] private Transform[] _waypoints;
    [SerializeField] private float _idleSpeed;
    [SerializeField] private float _chaseSpeed;
    [SerializeField] private float _chaseTimer;
    [SerializeField] private Vector2 _attackDistanceRange;
    [SerializeField] private AudioClip _IdleSound;
    [SerializeField] private AudioClip _ChaseSound;

    [Header("Field Of View Variables")]
    [SerializeField] private Transform _pfFieldOfView;
    [SerializeField] private float _fov;
    [SerializeField] private float _viewDistance;
    void Awake()
    {
        InitializeVariables();
        ValidateVariables();

        _context = new EnemyStateContext(_playerGameobject, _enemyGameObject, _agent,
            _waypoints, _fieldOfView, _viewDistance, _fov, _playerInView, _targetTransform, _iconManager, _triggered, _animator, _attackDistanceRange, _idleSpeed, _chaseSpeed, _chaseTimer, _audioSource, _IdleSound, _ChaseSound);


        InitializeStates();
    }
    private void Start()
    {
        startPos = transform.position;
    }
    void InitializeVariables()
    {
        _playerGameobject = GameObject.FindGameObjectWithTag("Player");
        _enemyGameObject = gameObject;
        _agent = GetComponent<NavMeshAgent>();
        _agent.updateRotation = false;
        _agent.updateUpAxis = false;


        _fieldOfView = Instantiate(_pfFieldOfView, null).GetComponent<FieldOfView>();
        _fieldOfView.SetFov(_fov);
        _fieldOfView.SetViewDistance(_viewDistance);

        GameObject targets = new GameObject("Target");
        _targetTransform = targets.GetComponent<Transform>();

        _iconManager = GetComponentInChildren<IconManager>();

        _animator = GetComponent<Animator>();
        _audioSource = GetComponent<AudioSource>();
    }
    void ValidateVariables()
    {
        Assert.IsNotNull(_playerGameobject);
        Assert.IsNotNull(_enemyGameObject);
        Assert.IsNotNull(_agent);
        Assert.IsNotNull(_waypoints);
        Assert.IsNotNull(_iconManager);
        Assert.IsNotNull(_targetTransform);
        Assert.IsNotNull(_animator);
    }

    void InitializeStates()
    {
        States.Add(EEnemyState.Idle, new IdleState(_context, EEnemyState.Idle));
        States.Add(EEnemyState.Chase, new ChaseState(_context, EEnemyState.Chase));
        States.Add(EEnemyState.Confused, new ConfusedState(_context, EEnemyState.Confused));
        States.Add(EEnemyState.Attack, new AttackState(_context, EEnemyState.Attack));

        CurrentState = States[EEnemyState.Idle];
    }
    public void Die()
    {
        _agent.isStopped = true;
        _animator.SetTrigger("Death");
        _fieldOfView.DestroyFOV();
    }

    public void ResetToIdleState()
    {
        TransitionToState(EEnemyState.Idle);
        transform.position = startPos;
    }
}
```

## Overcoming Challenges: The OOFSM Learning Curve

The problem with learning OOFSM is that it requires a good understanding of object-oriented programming principles, such as encapsulation and inheritance, combined with FSM concepts (states, transitions, events). To learn it, I had to move away from using switch statements for every action and towards encapsulating behaviour within distinct states. However, after getting over the mental hump, OOFSM allowed me to add the complex behaviours I wanted while having the management be simple; new behaviours become a matter of adding a new state rather than rewriting existing logic 

<div class="gallery-box">
  <div class="gallery">
    <img src="/images/ClockTowerGameplayShot1.png" alt="Gameplay">
  </div>
  <em>Clock Tower Gameplay</em>
</div>

## Key Takeaways

**OOP-Driven Architecture:** Learning to design systems using OOP behaviours taught me how much better it feels to work with a language’s natural principles rather than trying to do whatever is simplest. Even though OOFSM took a while to step up, I now understand the benefits of OOP architecture, being able to create states by just inheriting from a class and creating a simple script for the behaviour. 

Looking back on this project, I feel like it really taught me the value of learning principles like SOLID and OOP, as there is a lot of value to working to your language’s strengths, especially when designing a large-scale system.


<div class="gallery-box">
  <div class="gallery">
    <img src="/images/ClockTowerGameplayShot3.png" alt="Gameplay">
        <img src="/images/ClockTowerGameplayShot4.png" alt="Gameplay">

  </div>
  <em>Clock Tower More Gameplay</em>
</div>