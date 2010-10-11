require 'stories'

class TourneyStoriesTest < Test::Unit::TestCase

  story "As an organizer I want to setup a schedule" do
    setup do
      @teams = [:w, :x, :y, :z]
    end

    scenario "every team plays all other teams once" do
      tournament = Tournamentr.new(@teams)
      draw = tournament.draw

      expected_draw = [ [:w, :x], [:y, :z],
                            [:w, :y], [:x, :x],
                            [:w, :z], [:x, :y]
                          ]

      draw.each do |match|
        assert expected_draw.include?(match)
      end
    end

  end

end
