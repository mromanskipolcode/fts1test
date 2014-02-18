class Text < ActiveRecord::Base
  def self.addlorem(i)
    i.times do |x|
      t = Text.new
      t.title = Faker::Lorem.words(1..10).join(" ")
      t.subtitle = Faker::Lorem.words(1..10).join(" ")
      t.short_description = Faker::Lorem.paragraphs(1).join(" ")
      t.full_description = Faker::Lorem.paragraphs(2..10).join(" ")
      t.save
    end
  end
end
