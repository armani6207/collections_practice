require "pry"

def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort {|a, b| b <=> a}
end

def sort_array_char_count(array)
    array.sort_by {|i| i.length}
end

def swap_elements (array)
    cache = []
    cache << array.pop
    cache << array.pop
    array << cache.shift
    array << cache.shift
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    final_ary = []
    array.each do |word|
        temp_ary = []
        temp_ary << word.chars
        temp_ary = temp_ary.pop
        word_str = ""
        character = temp_ary[2]
        temp_ary[temp_ary.index(character)] = "$"
        word_str = temp_ary.join
        final_ary << word_str
    end
    final_ary
end

def find_a(array)
    a_array = []
    array.each do |word|
        if word.start_with?('a')
            a_array << word
        end
    end
    a_array
end

def sum_array(array)
    array.sum
end

def add_s(array)
    new_ary = []
    counter=0
    array.each do |word|
        if counter == 1
            new_ary << word
        else
            new_ary << "#{word}s"
        end
        counter += 1
    end
    new_ary
end
        
kesha_maker(["blake", "ashley"])
