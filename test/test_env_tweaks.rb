# encoding: UTF-8
# frozen_string_literal: true

Bundler.require

class ENVTweaksTest < Test::Unit::TestCase
  def test_true
    ENV["VAR"] = "1"
    assert_true ENV.true?("VAR")

    ENV["VAR"] = "true"
    assert_true ENV.true?("VAR")

    ENV["VAR"] = "foobarbaz"
    assert_true ENV.true?("VAR")
  end

  def test_false
    ENV.delete("VAR")
    assert_true ENV.false?("VAR")

    ENV["VAR"] = ""
    assert_true ENV.false?("VAR")

    ENV["VAR"] = " "
    assert_true ENV.false?("VAR")

    ENV["VAR"] = "\n"
    assert_true ENV.false?("VAR")

    ENV["VAR"] = "\t"
    assert_true ENV.false?("VAR")

    ENV["VAR"] = "0"
    assert_true ENV.false?("VAR")

    ENV["VAR"] = "false"
    assert_true ENV.false?("VAR")

    ENV["VAR"] = "nil"
    assert_true ENV.false?("VAR")

    ENV["VAR"] = "null"
    assert_true ENV.false?("VAR")
  end
end

