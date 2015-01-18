# coding: utf-8
jonny = User.create!(name:  "Jonathan Cummins",
             email: "jcummin@tcd.ie",
             username: "VaccinalBowl",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now
            )

seedwords = Array.new
line_num=0
File.open('db/words.csv').each do |line|
  chinese,pinyin,translation,*rest = line.split(/,/)
  translation = translation.to_s.chomp
  word_params = { "chinese" => chinese,"pinyin" => pinyin, "translation" => translation }
  word = Word.create!(word_params)
  seedwords << word
end
list_params = { "name" => "Jonathan's Text Book Words" , "description"=> "Words from my text book" ,user_id: 1}
list = List.create!(list_params)
list.words << seedwords


andi = User.create!(name:  "Andreas Hecker",
             email: "andreas@hecker.com",
             username: "Andi",
             password: "foobar",
             password_confirmation: "foobar",
             admin: false,
             activated: true,
             activated_at: Time.zone.now
            )

seedwords = Array.new
line_num=0
File.open('db/words.csv').each do |line|
  chinese,pinyin,translation,*rest = line.split(/,/)
  translation = translation.to_s.chomp
  word_params = { "chinese" => chinese,"pinyin" => pinyin, "translation" => translation }
  word = Word.create!(word_params)
  seedwords << word
end
list_params = { "name" => "Andi's Text Book Words" , "description"=> "Words from my text book" ,user_id: 2}
list = List.create!(list_params)
list.words << seedwords



serena = User.create!(name:  "Serena Liu",
             email: "serena@liu.com",
             username: "刘秉洁",
             password: "foobar",
             password_confirmation: "foobar",
             admin: false,
             activated: true,
             activated_at: Time.zone.now
            )
seedwords = Array.new
line_num=0
File.open('db/words.csv').each do |line|
  chinese,pinyin,translation,*rest = line.split(/,/)
  translation = translation.to_s.chomp
  word_params = { "chinese" => chinese,"pinyin" => pinyin, "translation" => translation }
  word = Word.create!(word_params)
  seedwords << word
end
list_params = { "name" => "Serena's Text Book Words" , "description"=> "Words from my text book" ,user_id: 3}
list = List.create!(list_params)
list.words << seedwords
List.first.collaborators<< serena
