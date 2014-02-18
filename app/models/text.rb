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
   puts Benchmark.measure{ puts BigMath.PI(10_000) }
   true
  end
end
