module Enumerable
  def my_each
      i = 0
    while i < self.size
      yield( self[i] )
        i+=1
        end
    self
  end
    
  def my_each_with_index
      i = 0
    while i < self.size
      yield( self[i],i )
        i+=1
    end
    self
  end

        
  def my_select
    a=[]
    i = 0
    while i < self.size
       a<<self[i] if(yield( self[i] ))          
        i+=1
    end
    a
  end

    
     def my_all?
    a=[]
    i = 0
    while i < self.size
        if(!yield( self[i] ))
            return false
            end
        i+=1
    end
    true 
  end


end

a=[1,2,3,4,5,6,7]
a.my_all?{|x| x>0}

