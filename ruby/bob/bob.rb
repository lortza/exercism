class Bob

  RESPONSE_MAP = {/^[^a-z]*[A-Z]{2,}\?$\Z/ => "Calm down, I know what I'm doing!",
                 /\?$\Z/ => 'Sure.',
                 /^[^a-z]*[A-Z]{2,}/ => 'Whoa, chill out!',
                 /.+/ => 'Whatever.',
                 /^$/ => "Fine. Be that way!"}

  def self.hey(msg)
    RESPONSE_MAP.each{|p, r| return r if p.match(msg.strip) != nil}
  end

end

module BookKeeping
  VERSION = 2
end
