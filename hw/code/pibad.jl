function compute_semiperimeters()
  N = 4
  L = zeros(31)
  s = zeros(31)
  L[1] = sqrt(2)
  s[1] = N*L[1]/2
  for k = 1:30
    N = N*2
    L[k+1] = sqrt( 2*(1-sqrt(1-L[k]^2/4)) )
    s[k+1] = N*L[k+1]/2
  end
  return s
end

function plot_semiperimeters(s)
  semilogy(1:length(s), abs.(s.-pi))
  ylabel("|s_k-π|")
  xlabel("k")
end

using PyPlot
plot_semiperimeters(compute_semiperimeters())
