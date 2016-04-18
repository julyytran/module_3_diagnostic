class NRELService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("https://developer.nrel.gov")
  end

  def get_by_zip(zipcode)
    parse("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["NREL_API_KEY"]}&location=#{zipcode}&radius=6&fuel_type=ELEC,LPG&limit=10")
  end

  private

  def parse(path)
    JSON.parse(@connection.get(path).body)
  end
end
