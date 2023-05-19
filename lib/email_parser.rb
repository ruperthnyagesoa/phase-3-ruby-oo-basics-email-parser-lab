# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#  class EmailAddressParser
#     def initialize(emails ="avi@test.com, arel@test.com")
#         @emails = emails
#     end
# end

# EmailAddressParser.new("test@avi.com", "test@arel.com")

class EmailAddressParser
    attr_reader :emails
  
    def initialize(emails)
      @emails = emails
    end
  
    def parse
      email_array = emails.gsub(/\s*,\s*/, ',').split(/[\s,]+/)
      email_array.uniq
    end
  end
  
