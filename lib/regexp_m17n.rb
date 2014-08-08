module RegexpM17N
  def self.non_empty?(str)
    # Handle dummy encodings by forcing them to UTF-8
    str.force_encoding('utf-8') if str.encoding.dummy?
      
    # Use a regexp that matches str's encoding
    str =~ Regexp.new("^.+$".encode!(str.encoding))
  end
end