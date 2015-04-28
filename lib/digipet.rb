class DigiPet
  define_method(:initialize) do |name|
    @name = name
    @food_lvl = 10
    @sleep_lvl = 10
    @active_lvl = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_lvl) do
    @food_lvl
  end

  define_method(:sleep_lvl) do
    @sleep_lvl
  end

  define_method(:active_lvl) do
    @active_lvl
  end

  define_method(:time_passes) do
    @food_lvl -= 1
    @sleep_lvl -= 1
    @active_lvl -= 1
  end

  define_method(:alive) do
    return (@food_lvl > 0 &&
            @sleep_lvl > 0 &&
            @active_lvl > 0) ? true : false
  end

end
