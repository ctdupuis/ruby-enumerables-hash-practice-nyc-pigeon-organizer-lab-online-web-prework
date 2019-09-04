def nyc_pigeon_organizer(data)
hash = {}
data.each do |colors_gender_lives, values|
  #targets keys and their values
  
  values.each do |value, array| 
    #targets values and their arrays
    
    array.each do |name| 
      #targets each array and their individual elements
      
      if hash[name] == nil #if the name targeted doesn't exist in the new hash,
        hash[name] = {}   #add that name in there
        hash[name][colors_gender_lives] = [] #reassign the data keys to be subcategories of the names
      else
        hash[name][colors_gender_lives] = []
      end
    end
  end
end  
#move through the new hash to pull the rest of the data
hash.each do |name, values| 
  #targets all pigeon names and their attributes
  
  values.each do |hashvalue, array| 
     #targets where we want the attributes placed in the new hash
    
    data.each do |color_gender_lives, values| 
      #back to data hash to pull values
    
      values.each do |value, array| 
        #all the way back to their values
      
        array.each do |element|   
          #and the arrays with their individual elements
        
          if element == name && hashvalue == color_gender_lives
            #if the element of the targeted array is the same as a name in the new array AND the attributes from the new hash are the same as the values from the data hash,
            
            hash[name][hashvalue] << value.to_s
            #shovel the values from the data hash into the new hash
          end
        end
      end
    end
  end
end
hash
end
