# your code goes here
require "pry"

def begins_with_r(array)
    is_r = true
    array.each do |x|
        if x[0] != "r"
            is_r = false
        end
    end
    is_r
end

def contain_a(array)
    new_array = []
    array.each do |x|
        if x.include?("a")
            new_array.push(x)
        end
    end
    new_array
end

def first_wa(array)

    array.find do |x|

        x[0..1] == "wa"
    end
    
end

def remove_non_strings(array)
    array.select do |x|
        x.class == String
    end
end

def count_elements(array)
    
    array.each do |x|
        name = x[:name]
        x[:count] = 0
        array.each do |y|
            if y[:name] == name
                x[:count]+=1
            end
        end
    end.uniq
    
    
end


def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end

def find_cool(thing)

    thing.select do |thing|
        thing[:temperature] == "cool"
        
    end
    
   
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end