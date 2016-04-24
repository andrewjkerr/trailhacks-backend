users = User.create!([{ email: 'andrew@trailhacks.io', password: 'whatever', is_admin: true },
                      { email: 'takashi@gmail.com',    password: 'whatever'                 }])

trails = Trail.create!([{ name: 'Domi Station', beacon_number: 1 }])

markers = Marker.create!([{ name: 'Florida Blue Room', beacon_number: 3, trail: trails.first },
                          { name: 'Cat Room',          beacon_number: 4, trail: trails.first }])
