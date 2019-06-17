class Pirate
  attr_reader :name, :weight, :height

  def initialize(params)
    # hash_info.each do |k,v|
    #   self.send(("#{k}="), v)
    # end
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
  end
end
