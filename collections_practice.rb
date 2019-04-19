require "pry"

def begins_with_r(array)
  array.each do |element|
    if element[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  new_arr = array.map { |e|
    if e.include? "a"
      e
    end
    }
    new_arr.compact
end

def first_wa(arr)
  arr.each do |element|
    str = element.to_s
    if str.slice(0, 2) == "wa"
      return element
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if { |e|
    e != e.to_s
  }
  arr
end

def count_elements(arr)
  new_arr = arr.uniq
  new_arr.each do |e|
    count = 0
    arr.each do |i|
      if e == i
        count +=1
      end
    end
    e[:count] = count
  end
  new_arr
end

def merge_data(keys, data)
  i = 0
  while i < keys.length
    data.each do |h|
      h.each do |k, v|
        if keys[i].value?(k)
          keys[i].merge!(v)
        end
      end
    end
    i += 1
  end
  keys
end

def find_cool(data)
  new_arr = []
  data.each do |h|
    if h.value?("cool")
      new_arr << h
    end
  end
  new_arr
end

def organize_schools(data)
  new_hash = {}
  data.each do |school, hash|
    if !new_hash.include?(hash[:location])
      new_hash[hash[:location]] = []
    end
  end
  data.each do |s, h|
    h.each do |k, loc|
      new_hash.each do |l, arr|
        if loc == l
          new_hash[l] << s
        end
      end
    end
  end 
  new_hash
end
