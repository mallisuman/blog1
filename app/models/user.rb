class User < ApplicationRecord
	validates :first_name, :last_name, presence: true

		
	before_create :test#, if: :false
	after_create :abc
	before_destroy :xyz

     around_create :abcd
     def abcd
     	puts "hhiii"
     end

	def test
		 puts "ydgsygd"
end
    def abc
    	puts'djfjb'
end
    def xyz
    	puts "sdjndndfh"

       end
end

	