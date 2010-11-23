require File.join(File.dirname(__FILE__), '..', 'lib', 'texml.rb')
require 'test/unit'

class ConvertingTest < Test::Unit::TestCase
  def test_ctrl_backslash
    assert_equal '\\\\', TeXML.convert('<TeXML><ctrl ch="\\"></TeXML>')
  end

  def test_kanji
    assert_equal "\u6f22\u5b57", TeXML.convert("<TeXML>\u6f22\u5b57</TeXML>")
  end
end
