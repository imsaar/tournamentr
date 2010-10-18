require "test/unit"

require "rulr"

class TestRulr < Test::Unit::TestCase
  def test_simple_rule
    rule = "1 match daily"
    tokens = rule.split(/\s+/)
    
    assert tokens == ["1", "match", "daily"]
  end
end