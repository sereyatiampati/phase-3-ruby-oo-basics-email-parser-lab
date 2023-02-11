# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :str
    def initialize(str)
        @str=str
    end
    def parse
        # arr= self.str.gsub(" ", ", ").split(/[,] /).delete(",")
        arr=self.str.scan(/\b\w+@\w+\.\w+\b/)
        arr.uniq
    end
end
# binding.pry