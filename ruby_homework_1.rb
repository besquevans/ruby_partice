# 請想辦法讓以下程式正常執行並如預期印出結果

class Array
  def my_map
    my_array = []
    self.each do |i|
      my_array << yield(i)
    end
    return my_array
  end
end

class String
  def is_email?
    self.include?("@")
  end
end


p [1, 2, 3, 4, 5].my_map { |x| x * 2 }  
# 印出 [2, 4, 6, 8, 10]

p "yuu@5xruby.tw".is_email?             
# 印出 true

p "yuu.kk@5xruby.tw".is_email?          
# 印出 true

p "what".is_email?                      
# 印出 false