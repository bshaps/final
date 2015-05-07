#States
State.create(id: 1, state_name: 'Illinois', state_abbrev: 'IL')
State.create(id: 2, state_name: 'Arizona', state_abbrev: 'AZ')
State.create(id: 3, state_name: 'California', state_abbrev: 'CA')

#Cities
City.create(id: 1, state_id: 1, city_name: 'Chicago', city_abbrev: 'CHI')
City.create(id: 2, state_id: 2, city_name: 'Phoenix', city_abbrev: 'PHX')
City.create(id: 3, state_id: 2, city_name: 'Tucson', city_abbrev: 'TUC')
City.create(id: 4, state_id: 3, city_name: 'Los Angeles', city_abbrev: 'LA')

#Carrier Locations
CarrierLocation.create(id: 1, carrier_id: 1, street_addr: '555 Made Up Drive', street_addr2: 'Suite 300', city: 1, state: 1, zip: 60606)
CarrierLocation.create(id: 2, carrier_id: 2, street_addr: '233 Fake Street', street_addr2: nil, city: 2, state: 2, zip: 85254)
CarrierLocation.create(id: 3, carrier_id: 1, street_addr: '6577 Not Real Ave', street_addr2: 'Suite 2530', city: 4, state: 3, zip: 90002)

#Carriers
Carrier.create(id: 1, name: 'Sample Carrier', mc_number: 123455, dot_number: 233058)
Carrier.create(id: 2, name: 'Test Carrier', mc_number: 543221, dot_number: 546751)
Carrier.create(id: 3, name: 'Fast Carrier', mc_number: 235978, dot_number: 467531)