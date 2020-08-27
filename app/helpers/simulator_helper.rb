module SimulatorHelper
  def room_aspect_padding_bottom
    d = @room.room_depth.to_f
    w = @room.room_width.to_f
    ratio = d < w ? d / w : w / d
    "padding-bottom: #{ratio * 100}%"
  end
end
