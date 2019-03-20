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

  def repeated_jokes?
    if @jokes.
  end


end
