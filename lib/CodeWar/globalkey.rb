module CodeWar
  class GlobalKey
    def initialize(key = 'rand')
      if key.to_s != 'rand'
        @key = key
      else #Screw good code
        clock = Time.new()
        pico = clock.strftime('%12N')
        day = clock.strftime('%j')
        comba = pico.to_i + day.to_i
        comb = comba.to_s
        @key = ""
        comb.each_char {|char| @key = "#{@key}#{comb[rand(comb.length)]}"
      end
    end
  end
end
