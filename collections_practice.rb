require "pry"

def begins_with_r(array)
  start_r = true

    array.collect do |words|
       if !words.start_with?("r")
        start_r = false
       end
     end
     start_r
end

def contain_a (array)

  array.select do |words|
    words.include?("a")
  end
end
####
def first_wa(array)

  array.collect do |words|
     words.to_s
  end.find do |words|
    words.start_with?("wa")
  end
end
#you can call a method to the results.
# here, #find is being called on the results
# or #collect. comparative to using a new array
# or setting #collect to a variable.
####
def remove_non_strings(array)

    array.delete_if do |words|
      !(words.is_a? String)
    end
end
####


def count_elements(array)

  newHash = {}
  newArr = []
  elArr=[]

   array.collect do |el|
     el.collect do |k,v|
       if !(elArr.include?(el))
         elArr << el
       newHash[k]=v
       newHash[:count] = array.count(el)
       newArr << newHash
       newHash = {}

     end
   end
 end

newArr

 end

def merge_data(keys, data)

      newArr = []
      mergeArr=[]
      keys.map.with_index do |hash, index|
        newArr << keys[index]
      end
      data.collect do |hash2|
        hash2.collect do |name, info|
           newArr << info
        end
      end
      mergeArr << newArr[0].merge(newArr[2])
      mergeArr << newArr[1].merge(newArr[3])
      mergeArr

end

def find_cool(cool)

  cool.collect do |element|
    element.collect do |k,v|
      if v == "cool"
        element
      end
    end
  end.flatten.compact

end

def organize_schools(schools)

  nycSch=[]
  sfSch=[]
  chiSch=[]
  schoolHash={}

  schools.collect do |school, info|
    info.collect do |location, city|
      if city == "NYC"
        nycSch << school
        schoolHash[city]=nycSch
      elsif city == "SF"
        sfSch << school
        schoolHash[city]=sfSch
      else city == "Chicago"
        chiSch << school
        schoolHash[city]=chiSch
      end
    end
  end
  # schoolHash["NYC"]=nycSch
  # schoolHash["SF"]=sfSch
  # schoolHash["Chicago"]=chiSch
  schoolHash

end
