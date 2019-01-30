require 'httparty'
require 'json'
class ApiFetcher
  def initialize
    @secret_key = '32006c2d'
  end
  def fetch_series(name)
    response =  HTTParty.get("http://www.omdbapi.com/?apikey=#{@secret_key}&type=series&t=#{name}", headers: {
      "Content-Type" => "application/json"
    })
    JSON.parse(response.body)
  end
end


def add_series_to_csv
  api = ApiFetcher.new
  File.open('i_love_series.csv','w') do |file|
    file.puts ('Title,Year,Genre,Poster,Imdb Rating,Type')

    ['Fargo','24','The Knick','Breaking Bad','Game of Thrones','Milap'].each do |title|
      response_data = api.fetch_series(title)
      if(response_data["Response"] == "True")
        file.puts("#{response_data["Title"]},#{response_data["Year"]},#{response_data["Genre"].split(", ").join("|")},#{response_data["Poster"]},#{response_data["imdbRating"]},#{response_data["Type"]}")  
      else
        file.puts("#{title},N/A,N/A,N/A,N/A,N/A")  
      end
    end
  end
end


add_series_to_csv