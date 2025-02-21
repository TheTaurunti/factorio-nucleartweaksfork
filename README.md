# Eveything Narrative's Nuclear Tweaks for Nicer Ratios

This is a standalone mod to reduce the difficulty associated with nuclear power by making
the numbers nice and round.

The downside is a somewhat higher fuel consumption.

It contains the following changes:

1. Nuclear reactors no longer waste fuel when at maximum temperature.
2. Nuclear reactors product 60 MW of power instead of 40 MW, meaning a
   single uranium fuel cell of 8GJ lasts exactly 8000 ticks, or 133⅓ seconds.
3. All vanilla heat interfaces operate at a maximum temperature of 1015°C, which is
   exactly 1000°C above ambient temperature.
4. The maximum temperature of steam has likewise been taised to 1015°C.
5. Heat exchangers produce steam at 515°C, exactly 500°C above ambient temperature
   for an energy density of a round 10kJ per unit nuclear steam.
6. Heat exchangers exchange 12MW of heat energy and 120 units of water into 120 units of 515°C steam per second.
7. Steam turbines convert 60 units of steam per second into 6 MW of power.
8. The neighbor bonus has been reduced to 50%, meaning each interface between two
   reactors counts as _one_ additional reactor, rather than two.

The ratios are as follows:

|  Reactors   | Heat Exchangers | Steam Turbines |  Offshore Pumps  |     Power Output     |
| :---------: | :-------------: | :------------: | :--------------: | :------------------: |
|      1      |        5        |       10       |       0.05       |        60 MW         |
|      2      |       15        |       30       |       0.15       |        180 MW        |
|      3      |       25        |       50       |       0.25       |        300 MW        |
|      4      |       40        |       80       |       0.4        |        480 MW        |
|      6      |       65        |      130       |       0.65       |        780 MW        |
|      8      |       90        |      180       |       0.9        |       1080 MW        |
| 2 × _n_ + 4 |  25 × _n_ + 40  | 50 × _n_ + 80  | 0.25 × _n_ + 0.4 | (300 × _n_ + 480) MW |
