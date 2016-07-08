require './lib/docking_station'

# I'd like vans to take broken bikes from docking stations and deliver them to
# garages to be fixed.

# from docking stations
#   first release broken bikes
#   take broke bikes
#   put in a van
#   deliver van(bikes) to garage

docking_station = DockingStation.new
broken_bikes = Bike.new.report_broken
docking_station.dock(broken_bikes)
broken_bikes = docking_station.release_broken_bikes
van.load(broken_bikes)

# deliver(broken_bikes)
