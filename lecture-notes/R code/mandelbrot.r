# Mandelbrot set
# ====================================================\==== 
# Jarek Tuszynski, PhD.                           o / \ 
# Science Applications International Corporation  <\__,|  
# (703) 676-4192                                   ">  \ 
# Jaroslaw.W.Tuszynski at saic.com          

library(fields)  # for tim.colors
library(caTools) # for write.gif
m = 400          # grid size
C = complex( real=rep(seq(-1.8,0.6, length.out=m), each=m ), 
             imag=rep(seq(-1.2,1.2, length.out=m),      m ) )
C = matrix(C,m,m)
Z = 0
X = array(0, c(m,m,20))
for (k in 1:20) {
  Z = Z^2+C
  X[,,k] = exp(-abs(Z))
}
image(X[,,k], col=tim.colors(256)) # show final image in R
write.gif(X, "Mandelbrot.gif", col=tim.colors(256), delay=100)

# drop "Mandelbrot.gif" file from current directory on any web brouser to
# see the animation
