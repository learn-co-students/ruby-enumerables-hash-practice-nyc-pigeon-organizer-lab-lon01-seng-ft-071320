# data is hash of hash of arrays

def nyc_pigeon_organizer(data)
  pp data
  
  result = {}
  
  data.each_pair do |key, value|
    new_attribute = key
    puts new_attribute
    value.each_pair do |key, value|
      new_value = key.to_s
      puts new_value
      
      value.each do |name|
        if result[name]
          if result[name][new_attribute]
            result[name][new_attribute] << new_value
          else 
            result[name][new_attribute] = [new_value]
          end        
        else
          result[name]= {}
          result[name][new_attribute] = [new_value]
        end
        pp result
      end
        
      #value.each do |el|
      #  puts "#{el} => #{new_attribute} => #{new_value}"
      #end
    end
  end
  
  result
end




