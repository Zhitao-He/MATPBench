theory Cylindrical_Pipe_Weight
  imports Complex_Main
begin
definition outer_radius :: real where
  "outer_radius = 2.1"
definition inner_radius :: real where
  "inner_radius = 1.8"
definition height :: real where
  "height = 13"
definition density :: real where
  "density = 53"
definition pipe_volume :: real where
  "pipe_volume = pi * (outer_radius^2 - inner_radius^2) * height"
definition pipe_weight :: real where
  "pipe_weight = pipe_volume * density"
definition pipe_weight_rounded :: real where
  "pipe_weight_rounded = (round (pipe_weight * 10)) / 10"
end