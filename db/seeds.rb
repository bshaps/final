#States
State.create(id: 1, state_name: 'Illinois', state_abbrev: 'IL')
State.create(id: 2, state_name: 'Arizona', state_abbrev: 'AZ')
State.create(id: 3, state_name: 'California', state_abbrev: 'CA')
State.create(id: 4, state_name: 'New York', state_abbrev: 'NY')
State.create(id: 5, state_name: 'Florida', state_abbrev: 'FL')

#Cities
City.create(id: 1, state_id: 1, city_name: 'Chicago', city_abbrev: 'CHI')
City.create(id: 2, state_id: 2, city_name: 'Phoenix', city_abbrev: 'PHX')
City.create(id: 3, state_id: 2, city_name: 'Tucson', city_abbrev: 'TUC')
City.create(id: 4, state_id: 3, city_name: 'Los Angeles', city_abbrev: 'LA')
City.create(id: 5, state_id: 4, city_name: 'New York', city_abbrev: 'NYC')
City.create(id: 6, state_id: 5, city_name: 'Miami', city_abbrev: 'MIA')
City.create(id: 7, state_id: 3, city_name: 'San Francisco', city_abbrev: 'SFA')

#Carriers
Carrier.create(id: 1, name: 'Turbo Shipper', mc_number: 123455, dot_number: 233058)
Carrier.create(id: 2, name: 'Carry International', mc_number: 543221, dot_number: 546751)
Carrier.create(id: 3, name: 'CargoMax', mc_number: 235978, dot_number: 467531)
Carrier.create(id: 4, name: 'Food Express', mc_number: 654278, dot_number: 245498)
Carrier.create(id: 5, name: 'Long Haul', mc_number: 231812, dot_number: 651421)

#Carrier Locations
CarrierLocation.create(id: 1, carrier_id: 1, street_addr: '2015 Blackhawks Drive', street_addr2: 'Suite 300', city_id: 1, state_id: 1, zip: 60606)
CarrierLocation.create(id: 2, carrier_id: 2, street_addr: '233 Hot Street', street_addr2: nil, city_id: 2, state_id: 2, zip: 85254)
CarrierLocation.create(id: 3, carrier_id: 1, street_addr: '6577 Celebrity Ave', street_addr2: 'Suite 2530', city_id: 4, state_id: 3, zip: 90002)
CarrierLocation.create(id: 4, carrier_id: 3, street_addr: '2421 Palm Drive', street_addr2: nil, city_id: 6, state_id: 5, zip: 33102)
CarrierLocation.create(id: 5, carrier_id: 4, street_addr: '664 5th Ave', street_addr2: 'Suite 6410', city_id: 5, state_id: 4, zip: 10019)
CarrierLocation.create(id: 6, carrier_id: 5, street_addr: '522 Relax Lane', street_addr2: nil, city_id: 7, state_id: 3, zip: 94108)

#Tractors
Tractor.create(id: 1, name: 'Flat Bed', max_weight: 48000)
Tractor.create(id: 2, name: 'Dry Van', max_weight: 42000)
Tractor.create(id: 3, name: 'Refrigerated', max_weight: 43000)
Tractor.create(id: 4, name: 'Lowboy', max_weight: 40000)
Tractor.create(id: 5, name: 'Step Deck', max_weight: 48000)
Tractor.create(id: 6, name: 'Extendable Flatbed', max_weight: 43000)