require 'helper'
require 'birthdays'

class TestBirthdays < Minitest::Test

  def test_version
    version = Birthdays.const_get('VERSION')

    assert(!version.empty?, 'should have a VERSION constant')
  end

end
