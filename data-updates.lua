-- A lot of the ratios are caused by the wonky temperature
-- difference between ambient and max of 985 degrees
local ambient_temperature = 15
local high_temperature = 500 + ambient_temperature
local max_temperature = 1000 + ambient_temperature

-- Steam energy content is calculated as a function of
-- its temperature above ambient temperature
data.raw.fluid.steam.max_temperature = max_temperature

-- Heat buffers work at the same temperature as steam
-- (maybe they use water as a working fluid?)
data.raw.reactor['nuclear-reactor'].heat_buffer.max_temperature = max_temperature
data.raw['heat-pipe']['heat-pipe'].heat_buffer.max_temperature = max_temperature
data.raw.boiler['heat-exchanger'].energy_source.max_temperature = max_temperature

-- Energy production happens at 500 above ambient temperature
-- for nice numbers
data.raw.boiler['heat-exchanger'].target_temperature = high_temperature
data.raw.boiler['heat-exchanger'].energy_source.min_working_temperature = high_temperature
data.raw.generator['steam-turbine'].maximum_temperature = high_temperature
data.raw.generator['steam-turbine'].energy_source.max_temperature = high_temperature

-- The ratio of offshore pumps to hx's is 1:10 (1:100 as of 2.0 changes to steam)
-- The ratio of hx's to turbines is 1:2
-- These values are exact and derived by the game
-- local heat_exchanger_fluid_consumption_per_second = 120
-- local steam_turbine_fluid_consumption_per_second = 60

-- Nuclear reactors are 'dumb' and burn fuel constantly
-- It presents a challenge, sure, but feels inconsistent with
-- every other avenue of power generation being 'smart'
data.raw.reactor['nuclear-reactor'].scale_energy_usage = true

-- Energy output of a nuclear reactor is buffed slightly
-- Coincidentally, an 8 GJ nuclear fuel cell will last
-- precisely 8000 ticks
-- 1 Reactor : 5 HX
data.raw.reactor['nuclear-reactor'].consumption = "60MW"
data.raw.boiler['heat-exchanger'].energy_consumption = "12MW"

-- Neighbor bonus of 50% rather than 100%, meaning to count
-- 'effective reactors' one need only count each reactor and
-- each each interface between two adjacent reactors
data.raw.reactor['nuclear-reactor'].neighbour_bonus = 0.5
