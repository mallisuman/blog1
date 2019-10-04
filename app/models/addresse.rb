class Addresse < ApplicationRecord
    validates :user_id, :street, presence: true
    	before_create :test
    	after_create :abc
    	   before_update :xyz
    	   after_update :bacd
    	   after_save :aaa
     def aaa
    	   	
    	  puts "uuuu"
         end    	   	
    def bacd
    	 puts "ddd"
    end
    	  

     def xyz
    	   	puts "tttt"
    	   end
      def test
	         puts "hdfjk"
           end

      def abc
	         puts "erret"

          end

end