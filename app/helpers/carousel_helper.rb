module CarouselHelper
  # Super dumb implementation to convert numbers to words
  # we don't need anything greater than 10 anyway
  def carousel_page(number)
    {
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten'
    }.fetch(number + 1, 0)
  end

  def formatted_carousel_page(number)
    "%02d" % (number + 1)
  end
end