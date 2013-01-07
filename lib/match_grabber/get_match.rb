require 'open-uri'

## First run ... TODO Needs refactor!!

module MatchGrabber::GetMatch

FIXTURE_URL = "http://www.bbc.co.uk/sport/football/premier-league/fixtures"

  def get_fixtures
    doc = Nokogiri::HTML(open(FIXTURE_URL))
    clean_dates = get_dates(doc)
    array_of_bodies =  doc.css("div.fixtures-table table.table-stats tbody")
    match_data = get_match_info(array_of_bodies)
    zipped = Hash[clean_dates.zip(match_data)]
  end

private

  def get_dates(object)

    ## to get date headers in array
    date_array = object.css("div.fixtures-table h2").text().split("\n")

    ## to empty nil entries:  
    date_array.delete_if {|x| x == "" }

    ## neaten up dates.
    date_array.map {|date| Date.parse(date)}
  end


  def get_match_info(object)
    cleaner_array = object.map do |a| 
      a.css("tr.preview").map {|m| m.css("td.match-details")}
    end
    
    cleaner_array.map do |m| 
      m.map {|b| detailed_match_array(b)}
    end
  end

  def detailed_match_array(object)
    response = object.text.split("\n").collect {|x| x.strip}
    response.delete_if {|x| x =="" }
  end

end