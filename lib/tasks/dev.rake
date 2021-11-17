namespace :dev do
  DEFAULT_PASSWORD = 123456
  desc 'fake create user'
  task setup: :environment do
    require 'faker'
    50.times do
      User.create!(
        email: Faker::Internet.email,
        password: DEFAULT_PASSWORD,
        password_confirmation: DEFAULT_PASSWORD
      )
    end
  end

  task admin: :environment do
    User.create([
      {nome: 'LUCAS DA SILVA LEMOS',  email: 'lucas@gmail.com',    password: '123456', password_confirmation: '123456'},
      {nome: 'HUMBERTO CORTEZIA',     email: 'marcelo@gmail.com',  password: '123456', password_confirmation: '123456'}
  ])
  end
  
end
