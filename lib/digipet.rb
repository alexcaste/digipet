class DigiPet
  define_method(:initialize) do |name|
    @name = name
    @food_lvl = 10
    @sleep_lvl = 10
    @active_lvl = 10
    @last_update = Time.now.to_i
  end

  define_method(:name) do
    @name
  end

  define_method(:food_lvl) do
    @food_lvl
  end

  define_method(:feed) do
    @food_lvl += 1
    self.update()
    @food_lvl
  end

  define_method(:sleep_lvl) do
    @sleep_lvl
  end

  define_method(:sleep) do
    @sleep_lvl += 1
    self.update()
    @sleep_lvl
  end

  define_method(:active_lvl) do
    @active_lvl
  end

  define_method(:play) do
    @active_lvl += 1
    self.update()
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

  define_method(:update) do
    this_update = Time.now.to_i
    @amount = (this_update.-(@last_update))/30
    @amount >= 1 ? self.time_passes : nil
    @last_update = Time.now.to_i
    "#{@amount} half minutes have passed since last update."
  end

end
