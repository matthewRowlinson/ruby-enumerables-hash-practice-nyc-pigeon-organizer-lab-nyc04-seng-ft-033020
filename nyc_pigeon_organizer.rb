require 'pry'
def nyc_pigeon_organizer(data)
  pp data
  names = []
  data.each do |key, value|
    if key == :gender
      value.each do |gender, name|
      names << name 
      end
    end
  end
  names.flatten!
  hash = Hash[names.map {|x| [x, {}]}]
  # continue making the hash 
  hash.each do |key, value|
    value[:color] = []
    value[:gender] = []
    value[:lives] = []
  end
   data.each do |key, value|
    if key == :color 
      value.each do |color, name|
        
<<<<<<< HEAD
        #adding colors to the hash 
=======
        #adding purple to each bird that is purple 
        
>>>>>>> ce955b064c6d46386dfa5839ccc709b8603e7106
          name.each do |n|
            hash.each do |bird, info|
              if bird == n 
                info[:color] << color.to_s
              end
            end
          end
        end  
      end
    end
<<<<<<< HEAD
  #adding gender to the hash 
=======
>>>>>>> ce955b064c6d46386dfa5839ccc709b8603e7106
  data.each do |key, value| 
    if key == :gender
      value.each do |gender, name| 
        name.each do |n|
          hash.each do |bird, info|
            if bird == n
              info[:gender] << gender.to_s 
            end
          end
        end
      end
    end
  end
<<<<<<< HEAD
  #adding where they live to the hash 
=======
>>>>>>> ce955b064c6d46386dfa5839ccc709b8603e7106
  data.each do |key, value|
    if key == :lives
      value.each do |lives, name|
        name.each do |n|
          hash.each do |bird, info|
            if bird == n 
              info[:lives] << lives
            end
          end
        end
      end
    end
  end
<<<<<<< HEAD
  hash
=======
>>>>>>> ce955b064c6d46386dfa5839ccc709b8603e7106
end
