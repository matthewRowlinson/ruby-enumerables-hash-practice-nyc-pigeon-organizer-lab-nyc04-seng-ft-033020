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
        
        #adding colors to the hash 
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
  #adding gender to the hash 
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
  #adding where they live to the hash 
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
  hash
end
