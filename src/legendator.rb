module Legendator
  class File
    def initialize(file)
      @file = ::File.open(file,"r")
      #fix the file encode to remove the InvalidArgument error
      @file_content = IO.read(@file).force_encoding("ISO-8859-1").encode("utf-8",replace: nil)
      @subtitle_regex =  /(\d+)\s+(\d+:\d+:\d+,\d+)\s+-->\s+(\d+:\d+:\d+,\d+)\s+(.+)/
    end
    
    def subtitle(position)
      matches = @file_content.scan @subtitle_regex
      matched = nil
      
      matches.each do |match|
        matched ||= match if match[0] == position.to_s 
      end
			
      return nil if matched.nil?

      subtitle = {position: matched[0].to_i,starts_at: matched[1],ends_at: matched[2],text: matched[3]}
    end
  end
end
