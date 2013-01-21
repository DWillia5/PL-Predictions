module MatchFixtures
  class MatchFixtures
    include MatchGrabber::GetMatch

    def perform
      update_fixtures
    end

  private 

    def update_fixtures
      Fixture.destroy_all
      fixtures = get_fixtures
      sort_fixtures(fixtures)
    end


    def sort_fixtures(fixtures)
      fixtures.each_pair do |date, matches|
        update_db(date, matches)
      end
    end

    def update_db(date, matches)
      matches.each do |match|
        fixture = Fixture.new(
          match_date: date,
          team_a_name: match.first,
          team_b_name: match.last
          )
        fixture.save
      end
    end
  end
end