![GitHub repo size](https://img.shields.io/github/repo-size/Saniee/furnacesPlus)
# furnacesPlus
 Adds new Advanced furnaces from the old ones! from the first 3 its just normal furnaces from the game that are modified to be electric and do less pollution. After mk3 there is no pollution and furnaces go extremly fast.

## Furnace stats

| Furnace | Based on | Crafting speed | Energy | Module slots | Pollution/min |
|---|---|---|---|---|---|
| Advanced Stone Furnace (MK1) | Stone furnace | 2 | Electric, 90 kW (+100 W drain) | 0 | 1 |
| Advanced Steel Furnace (MK2) | Steel furnace | 4 | Electric, 90 kW (+200 W drain) | 0 | 2 |
| Advanced Electric Furnace (MK3) | Electric furnace | 4 | Electric, 560 kW (+300 W drain) | 4 | 0.5 |
| Industrial Rocket Fueled Furnace (MK4) | Custom | 12 | Rocket fuel, 1 MW (effectivity 4) | 4 | 0.2 |
| Nuclear Furnace (MK5) | Custom | 24 | Nuclear fuel, 50 MW | 6 | 0 |

For comparison, the vanilla stone, steel and electric furnaces have crafting speeds of 1, 2 and 2.

Rocket fuel is moved into a new "rocket" fuel category so it can be used by the MK4 furnace. Stone and steel furnaces, boilers, locomotives, cars and burner inserters are also allowed to burn rocket fuel.

## Recipes

| Furnace | Ingredients | Craft time |
|---|---|---|
| MK1 | 25 stone, 20 electronic circuit, 20 iron stick | 30 s |
| MK2 | 45 steel plate, 35 advanced circuit, 30 stone brick, 25 iron stick | 60 s |
| MK3 | 120 steel plate, 45 processing unit, 60 stone brick, 20 electric engine unit | 120 s |
| MK4 | 240 steel plate, 90 processing unit, 120 stone brick, 40 electric engine unit, 50 low density structure | 120 s |
| MK5 | 500 steel plate, 150 processing unit, 200 stone brick, 100 electric engine unit, 10 low density structure, 20 uranium-238, 1 uranium-235 | 120 s |

## Technologies

| Technology | Prerequisites | Cost |
|---|---|---|
| MK1 | Electronics, Automation, Logistics | 250 x automation (20 s) |
| MK2 | MK1, Logistic science, Steel processing, Advanced material processing, Advanced circuit | 600 x automation + logistic (40 s) |
| MK3 | MK2, Chemical science, Advanced material processing 2, Electronics, Electric engine | 1000 x automation + logistic + chemical (50 s) |
| MK4 | MK3, Processing unit, Electric engine, Utility science, Rocket fuel | 1200 x automation + logistic + chemical + utility (65 s) |
| MK5 | MK4, Electric engine, Production science, Uranium processing | 1800 x automation + logistic + chemical + utility + production (80 s) |
