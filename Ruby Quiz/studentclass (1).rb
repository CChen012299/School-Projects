#Christopher Chen
# Defines a Student

class Student
   def initialize( first, last, id )
      @first = first
      @last  = last
      @email = id 
   end

   def userid

      @first[0].downcase.gsub(/\s+/, "") + @last.downcase.gsub(/\s+/, "")
   end

   def show
      puts "#{@first}  #{@last}  #{@email}"
   end
end

# Problem 2 - Test code
chen = Student.new("Christopher", "Chen", 1165676)

chen.show

puts chen.userid