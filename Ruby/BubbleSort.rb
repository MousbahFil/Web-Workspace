def bubble_sort(i)
i.each_with_index do |x, index|
   i[0...-1].each_with_index do |y, new_index|
       if(((y <=> i[new_index+1]) >0))
           j=i[new_index+1] 
           i[new_index]=j
           i[new_index+1]=y           
           end       
       end    
    end    
i
end

puts bubble_sort([17,12,114,5,6,2,3,4,99,111,45])