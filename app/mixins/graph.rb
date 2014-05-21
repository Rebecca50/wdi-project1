require 'rubyvis'

module Graph
  def self.barchart(data_array)
    vis = Rubyvis::Panel.new do
      width 800
      height 500
      bar do
        data (data_array)
        width ((800 / data_array.length) - 15)
        height {|d| d * 6}
        bottom (0)
        left {index * ((800 / data_array.length))}
      end
    end
      vis.render()
      vis.to_svg # Output final SVG
  end
end

