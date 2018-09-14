# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

requests = Request.create([
    {
        title: 'Brisbane delivery',
        owner: 'Henry',
        cost: 200,
        urgency: 'ASAP',
    },

    {
        title: 'Sunshine Coast',
        owner: 'Kelly',
        cost: 400,
        urgency: 'ASAP',
    },

    {
        title: 'Gold Coast',
        owner: 'Mike',
        cost: 100,
        urgency: '3 weeks',
    },

    {
        title: 'Townsville',
        owner: 'Jane',
        cost: 350,
        urgency: '1 month',
    },

    {
        title: 'Mt Isa',
        owner: 'Steve',
        cost: 850,
        urgency: 'ASAP',
    }
])

providers = Provider.create ([
    {
        title: 'Brisbane delivery',
        owner: 'Russell',
        cost: 150,
        vehicle: 'Truck',
    },

    {
        title: 'Gold Coast trip',
        owner: 'Ted',
        cost: 100,
        vehicle: 'Ute',
    },

    {
        title: 'Sunshine Coast movers',
        owner: 'Matt',
        cost: 200,
        vehicle: 'Trailer',
    },

    {
        title: 'Pick ups in Brisbane',
        owner: 'Rachel',
        cost: 50,
        vehicle: 'Car',
    },

    {
        title: 'Queensland Services',
        owner: 'Jacob',
        cost: 1000,
        vehicle: 'Truck',
    }

])