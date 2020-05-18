require "minitest/autorun"
require "fileutils"
require "nokogiri"

describe "omemo.top" do
  before do
    FileUtils.rm_rf "./_site/"
    system "jekyll build"
  end

  describe "After running Jekyll Build" do
    it "must have an index.html file" do
      assert_equal true, File.exists?("./_site/index.html")
    end

    it "should have at least one Client in it" do
      h = Nokogiri::HTML.parse(open("_site/index.html"))
      assert_equal h.title, "Are we OMEMO yet? | Tracking the progress of OMEMO integration in XMPP clients."
      assert_equal h.xpath("//a[@href='#Dino']").length, 1
    end
  end
end
