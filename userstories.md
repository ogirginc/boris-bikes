# User Story Breakdown


### User Story 1
Nouns: Person, Bike, Docking Station

Verbs: Use, Release

### User Story 2
Nouns: Person, Bike

Verbs: Use, See

### Functional Representation

| Objects        |  Messages      |
| -------------  | :-------------:|
| Person         |  				 |
| Bike	         |  working?     |
| DockingStation|  release_bike     |


### Object Message Communication
* Bike <-- available? --> true/false
* Bike <-- bike_is_working? --> true/false
* Docking Station <-- release_a_bike --> A bike

### User Story 3
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

Nouns: A member of public, a bike, docking station

Verbs: return bike, dock bike, hired

### User Story 4
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

Nouns: member of public, docking station, bike
Verbs: decision to use, see what is docked

### Functional Representation

| Objects              |  Messages      |
| -------------------  | :-------------:|
| A member of public   |              |
| Bike	               |    is_docked?  
| DockingStation       |   dock_bike |
|                     | see_bike        |



### Object Message Communication


Bike <-- is_docked?-->true/false
Bike --> dock_bike --> DockingStation --> Bike.is_docked? = true
DockingStation <-- see_bike --> a bike                    
