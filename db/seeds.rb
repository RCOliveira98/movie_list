# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# filmes - movies
movies = [
    {
        title: 'Rei leão',
        description: 'Traído e exilado de seu reino, o leãozinho Simba precisa descobrir como crescer e retomar seu destino como herdeiro real nas planícies da savana africana.',
        release_date: '18-jul-2019'
    },
    {
        title: 'O Poderoso Chefão',
        description: 'Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo...',
        release_date: '24-mar-1972'
    },
    {
        title: 'Vingadores: Ultimato',
        description: 'Após Thanos eliminar metade das criaturas vivas, os Vingadores precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark...',
        release_date: '11-jul-2019'
    }
]

movies.each do |movie|
    Movie.create!(movie)
end

# Atores - actors
actors = [
    { name: 'Roberto Justo' },
    { name: 'Carla Maria' },
    { name: 'Paulo Lima Neres' },
    { name: 'Mariane Sousa' }
]

actors.each do |actor|
    Actor.create!(actor)
end

# Diretores - directors
directors = [
    { name: 'Arthur Savóia' },
    { name: 'Juliana Mendes' },
    { name: 'Robert Figueredo' }
]