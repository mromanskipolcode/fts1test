class Text < ActiveRecord::Base
  def self.addlorem(i)
    require 'benchmark'
    
    i.times do |x|
      t = Text.new
      t.title = Faker::Lorem.words(1..10).join(" ")
      t.subtitle = Faker::Lorem.words(1..10).join(" ")
      t.short_description = Faker::Lorem.paragraphs(1).join(" ")
      t.full_description = Faker::Lorem.paragraphs(2..10).join(" ")
      t.save
    end
  end
  
  def self.searchByLike(string)
    require 'benchmark'
    require 'bigdecimal/math'
    
    puts 'Like question:'
    puts Text.where("short_description LIKE '%"+string.to_s+"%'").count, "like"
    puts 'iLike question:'
    puts Text.where("short_description ILIKE '%"+string.to_s+"%'").count, "ilike"
  end
  
  
end
