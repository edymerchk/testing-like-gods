class Temperature
  URL = 'http://api.openweathermap.org/data/2.5/weather?q=Medellin&units=metric'

  def self.get
    response = Net::HTTP.get_response(URI(URL))
    JSON.parse(response.body)['main']['temp']
  end
end
