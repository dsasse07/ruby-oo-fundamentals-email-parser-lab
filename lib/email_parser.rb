# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser 
    def initialize(emails)
        @emails = emails
    end

    attr_accessor :emails

    def parse
        # if @emails.include?(",")
            @parsed = (@emails.split(",")).map(&:strip)
            @parsed.each do |entry|
                if entry.include?(" ")
                    index = @parsed.index(entry)
                    split_entry = entry.split
                    @parsed[index] = split_entry
                    @parsed.flatten!
                end
            end
            @parsed.uniq!
            @parsed
     end

end

