# encoding: utf-8

module ViewHelpers

  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year
    else
      "#{start_year}–#{end_year}"
    end
  end

end
