const seconds_earth_year = 31_557_600
const planet_orbital_period_factors = Dict(
    :mercury => 0.2408467,
    :venus => 0.61519726,
    :mars => 1.8808158,
    :jupiter => 11.862615,
    :saturn => 29.447498,
    :uranus => 84.016846,
    :neptune => 164.79132,
)

onEarth(seconds) = seconds / seconds_earth_year

onMercury(seconds) = seconds / (seconds_earth_year * planet_orbital_period_factors[:mercury])

onVenus(seconds) = seconds / (seconds_earth_year * planet_orbital_period_factors[:venus])

onMars(seconds) = seconds / (seconds_earth_year * planet_orbital_period_factors[:mars])

onJupiter(seconds) = seconds / (seconds_earth_year * planet_orbital_period_factors[:jupiter])

onSaturn(seconds) = seconds / (seconds_earth_year * planet_orbital_period_factors[:saturn])

onUranus(seconds) = seconds / (seconds_earth_year * planet_orbital_period_factors[:uranus])

onNeptune(seconds) = seconds / (seconds_earth_year * planet_orbital_period_factors[:neptune])