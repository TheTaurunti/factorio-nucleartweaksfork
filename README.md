# Eveything Narrative's Nuclear Tweaks for Nicer Ratios

[Original mod by "everything-narrative" here.](https://mods.factorio.com/mod/NuclearTweaks)

This mod reduces the difficulty associated with nuclear power by making the numbers nice and round.

# Summary of changes:

### Nuclear Reactors

- Fuel is no longer wasted when at max temperature
- Energy output rate increased from 40 MW to 60 MW, so one 8 GJ fuel cell will last exactly 8000 ticks (133⅓ seconds)
- Neighbor bonus reduced to +50% (from +100%), meaning each interface between adjacent reactors counts as _one_ additional reactor, rather than two.

### Heat Exchangers

- Steam is produced at 515°C (exactly 500°C above ambient temperature) for an energy density of a round 10kJ per unit nuclear steam.
- Heat-to-steam rate increased from 10.3 MW to a round 12 MW, now producing 120 units of 515°C steam per second.

### Steam Turbine

- Steam turbines convert 60 steam/second (unchanged) into 6 MW of power (up from 5.82 MW).

### Vanilla heat interfaces (Reactor, heat pipe, heat exchanger, steam)

- Maximum temperature changed to 1015°C, exactly 1000°C above ambient temperature.

### Ratios:

|   Reactors    | Heat Exchangers | Steam Turbines  |       Pumps        |     Power Output     |
| :-----------: | :-------------: | :-------------: | :----------------: | :------------------: |
|       1       |        5        |       10        |        0.05        |        60 MW         |
|       2       |       15        |       30        |        0.15        |        180 MW        |
|       3       |       25        |       50        |        0.25        |        300 MW        |
|       4       |       40        |       80        |        0.4         |        480 MW        |
|       6       |       65        |       130       |        0.65        |        780 MW        |
|       8       |       90        |       180       |        0.9         |       1080 MW        |
| (2 × _n_) + 4 | (25 × _n_) + 40 | (50 × _n_) + 80 | (0.25 × _n_) + 0.4 | (300 × _n_) + 480 MW |

### Ratios cont... Ice Melting and Quality:

Quality mentioned in below legend applies to modules and beacons both.

- Chem: no modules, no beacons
- Chem+: Common: Prod-3, 1 beacon w/ Speed-3
- Chem Q5: Legendary: Prod-3, 1 beacon
- Chem Q5-2: Legendary: Prod-3, 2 beacons
- Chem Q5-8: Legendary: Prod-3, 8 beacon

|   Reactors    |      Chem       |     Chem+      |    Chem Q5     | Chem Q5-2 |    Chem Q5-8    |
| :-----------: | :-------------: | :------------: | :------------: | :-------: | :-------------: |
|       1       |        3        |    2 (1.13)    |   1 (0.252)    | 1 (0.183) |     1 (0.1)     |
|       2       |        9        |       4        |       1        |     1     |        1        |
|       3       |       15        |    6 (5.65)    |    2 (1.26)    | 1 (0.915) |     1 (0.5)     |
|       4       |       24        |    10 (9.6)    |   ~2 (2.016)   | 2 (1.464) |     1 (0.8)     |
|       6       |       39        |       16       |       4        |     3     |        2        |
|       8       |       54        |       22       |       5        |     4     |        2        |
| (2 × _n_) + 4 | (15 × _n_) + 24 | (6 × _n_) + 10 | (2 × _n_) + ~2 |  _n_ + 2  | (0.5 x _n_) + 1 |
