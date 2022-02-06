function normal    (shader, t_base, t_second, t_detail)
  shader:begin  ("model_distort4glass","particle")
      : sorting  (2,true)
      : blend    (true,blend.srcalpha,blend.invsrcalpha)
      : aref     (true,0)
      : zb     (true,true)
      : fog    (false)
      : distort   (false)
  shader:sampler  ("s_base")      :texture  (t_base)
end

function l_special  (shader, t_base, t_second, t_detail)
  shader:begin  ("model_distort4glass","particle_distort")
      : sorting  (2, true)
      : blend    (true,blend.srcalpha,blend.invsrcalpha)
      : zb     (true,true)
      : fog    (false)
      : distort   (true)
  shader:sampler  ("s_base")      :texture  (t_base)
  shader:sampler  ("s_distort")   :texture  ("pfx\\pfx_dist_glass3")
end
