# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "piga",
             email: "darkopmfst@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

#Zadataks
# neki_tagovi = ['matrice', 'jednadžbe', 'pravci', 'parcijalna integracija']
 3.times do |i|
     problem = i
     solution = 'tu ide rješenje zadatka'
     Zadatak.create(problem: problem, solution: solution)
#     all_tags=()
 end

#Comments
zadataks = Zadatak.order(:created_at).take(2)
50.times do
  autor = Faker::Name.name
  content = Faker::Lorem.sentence(5)
  zadataks.each { |zadatak| zadatak.comments.create!(autor: autor, content: content) }
end

#peraićevi zadatci
problem = 'Dokaži   $\sqrt{1+i} = \sqrt{\frac{\sqrt{2}+1}{2}} + \sqrt{\frac{\sqrt{2}-1}{2}} \: i$.'
solution = '$$\begin{align}\sqrt{1+i} &= \sqrt{\frac{\sqrt{2}+1}{2}} +\sqrt{\frac{\sqrt{2}-1}{2}} \: i\quad  \Big/^2\\\\1+i&=\frac{\sqrt2+1}{2}+2\sqrt{\frac{\sqrt2+1}{2}\cdot{}\frac{\sqrt2-1}{2}}i-\frac{\sqrt2-1}{2}\\\\1+i&=\frac{\sqrt2+1-\sqrt2+1}{2}+\frac{2i}{2}\sqrt{(\sqrt2+1)(\sqrt2-1)}\\\\1+i&=1+i\sqrt{2-\sqrt2+\sqrt2-1}\\\\1+i&=1+i.\end{align}$$'
Zadatak.create(problem: problem, solution: solution).all_tags=('dokaži jednakost, korjeni')

problem = 'Ako je $f(x)=x^3-1$, $g(x)=x^3+1$, koliko je $f(a+1)-g(a-1)$?'
solution = '$$\begin{align}&f(x)=x^3-1, g(x)=x^3+1,\\\\&f(a+1)-g(a-1)=(a+1)^3-1-(a-1)^3-1\\\\&=a^3+3a^2+3a+1-1-a^3+3a^2-3a+1-1=6a^2.\end{align}$$'
Zadatak.create(problem: problem, solution: solution).all_tags=('funkcije')