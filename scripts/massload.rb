list = List.find(17)
line_num=0
File.open('/Users/jcummins/Programming/rails/ChineseApp/scripts/words.csv').each do |line|
  chinese,pinyin,translation,*rest = line.split(/,/)
  word_params = { "chinese" => chinese,"pinyin" => pinyin, "translation" => translation } 
  word = list.words.create(word_params)
end
