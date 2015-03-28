class Stock
    
    include Comparable
    
    attr_accessor :buy_index
    attr_accessor :sell_index
    attr_accessor :profit
    
    def initialize(buy_index,sell_index,profit)
        @buy_index=buy_index
        @sell_index=sell_index
        @profit=profit
    end
    
  def <=>(anOther)
    profit <=> anOther.profit
  end
    
end


def stock_picker(values)
    map=[]
    
for i in 0... values.length
    buy=values[i]
    max_index=i
    max=0
    
    for j in i... values.length
    sell=values[j]
        if(sell-buy>max)
            max_index=j
            max=sell-buy           
        end    
    end
    stock=Stock.new(i,max_index, max)
    map <<stock

end
 
absolute_max=map.max
print absolute_max.buy_index.to_s+ " "+  absolute_max.sell_index.to_s + " "+ absolute_max.profit.to_s

    
end


print stock_picker([17,3,6,9,15,8,6,1,10])