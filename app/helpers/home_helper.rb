module HomeHelper
  
  #def test
    #"testA"
  #end
  
  require 'thinreports'
  
  def test
    
    report = Thinreports::Report.new layout: 'kikankoshinP1'

    report.start_new_page

    report.page.item(:Immigration).value('高松')
    report.page.item(:Nationality).value('フィリピン')
    report.page.item(:BirthYear).value('1987')
    report.page.item(:BirthMonth).value('01')
    report.page.item(:BirthDay).value('06')
    report.page.item(:ApplicantName).value('VICENTE ALOBA BAYON-ON')
    
    report.generate(filename: 'kikankoshinP1.pdf')
    
    #puts 'Done!'
    
  end

end
