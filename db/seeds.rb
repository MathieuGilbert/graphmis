coverage_types = [
  CoverageType.find_or_create_by(name: 'Silver', monthly_price: 5.99, tow_distance: 5),
  CoverageType.find_or_create_by(name: 'Gold', monthly_price: 8.99, tow_distance: 50),
  CoverageType.find_or_create_by(name: 'Platinum', monthly_price: 12.99, tow_distance: 150)
]

memberships = [
  Membership.find_or_create_by(number: '123456', join_date: Date.new(2014, 5, 22), balance_due: 0, coverage_type_id: coverage_types[0].id),
  Membership.find_or_create_by(number: '234567', join_date: Date.new(2017, 7, 15), balance_due: 12.99, coverage_type_id: coverage_types[2].id),
  Membership.find_or_create_by(number: '345678', join_date: Date.new(2004, 12, 24), balance_due: 3, coverage_type_id: coverage_types[1].id),
  Membership.find_or_create_by(number: '456789', join_date: Date.new(2016, 10, 5), balance_due: 0, coverage_type_id: coverage_types[1].id)
]

addresses = [
  Address.find_or_create_by(address: '123 Street', city: 'Edmonton', province: 'AB', postal_code: 'T5R4E3'),
  Address.find_or_create_by(address: '555 Ave', city: 'Olds', province: 'AB', postal_code: 'T5R4E2'),
  Address.find_or_create_by(address: 'Maple Drive', city: 'Sherwood Pork', province: 'AB', postal_code: 'Q2Q2Q2'),
  Address.find_or_create_by(address: '123 Street SE', city: 'Calgary', province: 'AB', postal_code: 'T1X7E7')
]

User.find_or_create_by(first_name: 'Teddy', last_name: 'Ruxbin', email_address: 'teddy@example.com', birth_date: Date.new(1984, 6, 15), membership_id: memberships[0].id, address_id: addresses[0].id)
User.find_or_create_by(first_name: 'Franklin', last_name: 'Turtle', email_address: 'frank@example.com', birth_date: Date.new(1977, 1, 4), membership_id: memberships[1].id, address_id: addresses[1].id)
User.find_or_create_by(first_name: 'Donald', last_name: 'Tramp', email_address: 'donald@example.com', birth_date: Date.new(1924, 10, 22), membership_id: memberships[2].id, address_id: addresses[2].id)
User.find_or_create_by(first_name: 'Homer', last_name: 'Simpson', email_address: 'homer@example.com', birth_date: Date.new(1954, 4, 16), membership_id: memberships[3].id, address_id: addresses[3].id)
User.find_or_create_by(first_name: 'Marge', last_name: 'Simpson', email_address: 'marge@example.com', birth_date: Date.new(1960, 8, 26), membership_id: memberships[3].id, address_id: addresses[3].id)
User.find_or_create_by(first_name: 'Lisa', last_name: 'Simpson', email_address: 'lisa@example.com', birth_date: Date.new(1984, 6, 11), membership_id: memberships[3].id, address_id: addresses[3].id)
