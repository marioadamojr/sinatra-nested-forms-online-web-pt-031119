class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(args)
    # hash_info.each do |k,v|
    #   self.send(("#{k}="), v)
    # end
    @name=args[:name]
    @type=args[:type]
    @booty=args[:booty]
    @@ships << self
  end

  def self.clear
    @@ships.clear
  end

  def self.all
    @@ships
  end
end
