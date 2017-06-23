require 'test_helper'

class DragonTest < ActiveSupport::TestCase

  def test_that_dragon_shoots_fire
    dragon = build(:dragon)
    assert_equal( "#{dragon.name} emits a jet of flame!", dragon.dracarys )
  end

  def test_that_normal_dragon_cannot_eat_forty_sheep
    dragon = build(:dragon)
    refute( dragon.can_eat_40_sheep? )
  end

  def test_that_insatiable_dragon_can_eat_forty_sheep
    hungry_dragon = build(:dragon, appetite: 'Insatiable')
    assert( hungry_dragon.can_eat_40_sheep? )
  end

  def test_that_young_dragons_from_asoiaf
    # use your knowledge of factories to make this test pass!
    young_dragon = build(:dragon, age: 2)

    # not allowed to change the assert statement!
    skip unless young_dragon
    assert_equal( 'A Song of Ice and Fire', young_dragon.period_alive)
  end

  def test_that_middle_dragons_from_targ_dynasty
    # use your knowledge of factories to make this test pass!
    middle_dragon = build(:dragon, age: 19)
    # not allowed to change the assert statement!
    skip unless middle_dragon
    assert_equal( 'Targaryen Dynasty', middle_dragon.period_alive)
  end

  def test_that_ancient_dragons_from_age_of_valyria
    # use your knowledge of factories to make this test pass!
    ancient_dragon = build(:dragon, age: 444)
    # not allowed to change the assert statement!
    skip unless ancient_dragon
    assert_equal( 'Age of Valyria', ancient_dragon.period_alive)
  end

  def test_that_stranger_cannot_mount
    # use your knowledge of factories to make this test pass!
    stranger = nil
    dragon = nil

    # not allowed to change the assert statement!
    skip unless stranger && dragon
    assert_equal("Balerion bucks off Rhaenys!", dragon.mount(stranger))
  end

  def test_that_the_right_rider_can_mount
    # use your knowledge of factories to make this test pass!
    owner = nil
    dragon = nil

    # not allowed to change the assert statement!
    skip unless owner && dragon
    assert_equal("Aegon soars into the air on Balerion's back!", dragon.mount(owner))
  end

end
