
# Hyperforce or Laserforce
## Hacking
Like mastermind but with 6 sided dice.

## Cool Equipment
- Glow Stick
- Ultra Glue
- Laser Saw
- Glue Gun
- Bounce Jelly
- Anti-friction paint
- GPS
- Recon drone (upgradeable)
- Clippy
- Invisible ink Pen
- AI enhanced contact lenses
- Tru-site glasses
- easy reach grabber

## Classes
Scanners

## pregens
Death Wish
Grenadier.  
Can do all sorts of things with grenades. Blow through doors in front of her while running. Hold them up in her heavy glove and take out a number of targets. Disappear in a flash bang. 

## sanity
Roll sanity pool (sometimes called marbles). 1s are removed until you have none. 

Roll brains when you see the horror. Each one on a die removes a brains pip until you lose all of your brains dice (marbles). 


https://www.drivethrurpg.com/m/product/131691

https://www.reddit.com/r/rpg/comments/pq2wr1/system_suggestions/

## Auto Attributes

- Class
- Top Speed
- Acceleratiom
- Armor
- Handling
- Weapons
- Countermeasures

## Spacecraft Attributes

- Class
- Energy Core
- Speed
- Manueverability
- Acceleration
- Shields
- Hull
- Life Support
- Communications
- Sensors

### Subsystems

- Hyperdrive
- AI
- Internal Defense
- Damage Control
- Cloaking
- Weapons
- Countermeasures
- Teleporter
- Launch Bay


# Someday
## Powers / Classes

- Precognition: spend Luck[A] to effect rolls after t

- Assassins get a die for each fact they know about a target.

- Theives can earn reknown like other classes but mostly among other theives and their marks.

## Potions

Find a potion. What color is it? Roll to see what color equals which effect when you imbibe it. Potions of a particular color always have the same effect.

### Potion Color Table (d6)

1. Crimson
1. cerulean
1. Puce
1. chartreuse
1. Silver
1. Gold
2. Purple Metal Flake
1. Black
1. Periwinkle
1. Lavender
1. Pthalocyanine

### Potion Effect Table (d6)

1. Poison 
2. Ice
1. Fire
1. Floating
1. Growth
1. Health
1. Power
1. Iron Skin
1. Focus
1. Invisibility
1. Love

## Homebase Attributes

- Happiness
- Defense
- Food Production
- Food Stocks
- Arts
- Library
- Crafts
- Weapon smithing
- Animals
- Medicine
- Health

## Loot Boxes

# Deprecated
## Weapon tags
Here are the different tags I use for my own system:

Reach - melee, but longer than normal, allowing you to control a greater area
Quick - can attack multiple times per turn
Tricky - can be used for grappling/tripping/disarming/etc
Sweeping - can attack a swathe of enemies all at once
Dueling - can be used to deftly parry and riposte
Striking - packs a serious punch, can smash through defenses
Small - small enough to wield easily in your offhand
Heavy - heavy enough to require 2 hands unless you're exceptionally strong
Massive - requires 2 hands, no matter how strong you are

And here are some example weapons I've created with those tags:

Dagger - Quick, Small
Sword - Dueling
Longsword - Dueling, Reach, Heavy
Mace - Striking, Sweeping
Lance - Striking, Reach, Massive
Bullwhip - Tricky, Reach
Shortbow - Quick, Massive
Longbow - Striking, Massive
Pistol - Small
Submachine Gun - Quick, Sweeping

## hirelings
take red shirts with you. they can level up.

# dice symbols
⚅ &#9861;
⚄ &#9860;
⚃ &#9859;
⚂ &#9858;
⚁ &#9857;
⚁ &#9857;
⛤ &#9956;
⛧ &#9959;
💀 &#128128;
⚔ &#9876;
🛡 &#128737;
🏹 &#127993;
🏺 &#127994;
🗡 &#128481;
🩸 &#129656;
☠ &#9760;
# Anydice
BASEDIE: d6

function: target TARGET:n reroll REROLL:n VALUE:n {
  if VALUE = REROLL {
    result: 1 + [target TARGET reroll REROLL BASEDIE]
  }
  if VALUE  > TARGET {
    result: 1
  }
  result: 0
}

DIE: [target 3 reroll 6 BASEDIE]

loop N over {1..10}{
  output NdDIE named "[N]"
}

