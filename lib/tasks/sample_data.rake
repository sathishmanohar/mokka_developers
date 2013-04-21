namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Faker::Config.locale = :en
    99.times do |n|
      title = Faker::Lorem.sentence(rand(2..8)).chomp('.')
      body  = Faker::Lorem.paragraphs(rand(2..6)).join('<br /> <br />')
      Topic.create!(title: title,
                   body: body)
    end
  end
end

