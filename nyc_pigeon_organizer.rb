def nyc_pigeon_organizer(data)
hash = {}
data.each do |colors_gender_lives, values|
  values.each do |value, array|
    array.each do |name|
      if hash[name] == nil 
        hash[name] = {}
        hash[name][colors_gender_lives] = []
      else
        hash[name][colors_gender_lives] = []
      end
    end
  end
end
hash.each do |name, values|
  values.each do |hashvalue, array|
    data.each do |color_gender_lives, values|
      values.each do |value, array|
        array.each do |element|
          if element == name && hashvalue == color_gender_lives
            hash[name][hashvalue] << value.to_s 
          end
        end
      end
    end
  end
end
hash
end
