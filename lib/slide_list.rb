class SlideList
  BASE_PATH = Pathname.new(ROOT) + ".." + "doc"

  SLIDES = [
    "introduction",
    "covermymeds",
    "cover-all-mymeds",
    "a-gem",
  ]

  def initialize(start = 0)
    @current = start - 1
  end

  def next
    @current += 1
    @current = SLIDES.size - 1 if @current >= SLIDES.size
    BASE_PATH + "#{SLIDES[@current]}.cml"
  end

  def previous
    @current -= 1
    @current = 0 if @current < 0
    BASE_PATH + "#{SLIDES[@current]}.cml"
  end
end