require File.dirname(__FILE__) + '/../test_helper.rb'

class TestTinyThomas::TestPermalink < Test::Unit::TestCase
	include TinyThomas
	
	context "TinyThomas.permalink" do
		setup do
		  @link = TinyThomas.permalink("http://thomas.loc.gov/cgi-bin/bdquery/D?d112:1:./temp/~bdh7MP:@@@L&summ2=m&|/home/LegislativeData.php|")
		end
		
		should "return a string URL" do
			assert_equal(@link, "http://thomas.loc.gov/cgi-bin/bdquery/z?d112:hr145:@@@L&summ2=m&")
		end
  end
end