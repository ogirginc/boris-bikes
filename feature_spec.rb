require './lib/docking_station'

# I'd like vans to take broken bikes from docking stations and deliver them to
# garages to be fixed.

# from docking stations
#   first release broken bikes
#   take broke bikes
#   put in a van

docking_station = DockingStation.new
broken_bikes = Bike.new.report_broken
docking_station.dock(broken_bikes)
broken_bikes = docking_station.release_broken_bikes
van.load(broken_bikes)

# Release broken bikes
# Garage accepts them
# Fix broken bikes
# Return bikes to the van

garage = Garage.new
van.unload
garage.fix
van.load(fixed_bikes)
