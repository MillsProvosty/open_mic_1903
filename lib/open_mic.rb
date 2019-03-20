class OpenMic
    attr_reader :location,
                :date,
                :performers
  def initialize(performance_info)
    @location = performance_info[:location]
    @date = performance_info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  #store all jokes into array
  #find the uniq length

  def repeated_jokes?
     jokes_told = []
    @performers.map do |performer|
      jokes_told << performer.jokes
    end
      if jokes_told.flatten.uniq.length != jokes_told.flatten.length
        return true
      else
        return false
      end
  end
end
