   program moduli_cubic

!  Author: Shuozhi Xu (shuozhixu@gatech.edu)

!  The code, which comes with no warranty of any kind, is free to distribute
!  under the terms of GNU General Public License (GPL)

!  This program read 3 elastic contants of cubic system
!  and calculates the elastic moduli along direction [lmn] on plane (ijk):
!  Young's modulus E and shear modulus G

!  to run
!  ./moduli_cubic

   implicit none

   double precision :: i, j, k, l, m, n, norm, E, E_true, G, G_true, Poisson, T

   double precision, dimension(3) :: c, s

   i = 0.

   j = 0.

   k = 0.

   l = 0.

   m = 0.

   n = 0.

   E = 0.

   E_true = 0.

   G = 0.

   G_true = 0.

   Poisson = 0.

   T = 0.

   c(:) = 0.

   s(:) = 0.

   print *, 'Begin to read elastic constants in unit of 10^11 Pa'

   print * , 'c11, c12, and c44 are'

   read(*, *) c(1:3)

   print * , 'direction l, m, and n are'

   read(*, *) l, m, n

   norm = sqrt( l**2. + m**2. + n**2. )

   l = l / norm

   m = m / norm

   n = n / norm

   print * , 'plane normal i, j, and k are'

   read(*, *) i, j, k

   norm = sqrt( i**2. + j**2. + k**2. )

   i = i / norm

   j = j / norm

   k = k / norm

   E = ( c(1)**2. + c(1)*c(2) - 2.*c(2)**2. ) / ( c(1) + c(2) )

   s(1) = 1. / E

   Poisson = c(2) / ( c(1) + c(2) )

   s(2) = -Poisson / E

   G = c(3)

   s(3) = 1. / G

   T = l**2.*m**2. + l**2.*n**2. + m**2.*n**2.

   E_true = s(1) - 2.*( s(1) - s(2) - s(3) / 2. ) * T

   E_true = 1. / E_true

   T = l**2.*i**2. + m**2.*j**2. + n**2.*k**2.

   G_true = c(3) + ( c(1) - c(2) - 2.*c(3) ) * T

   print *, 'Elastic constants are', E_true, ' and', G_true, ' in unit of 10^11 Pa'

   stop
   end program moduli_cubic
