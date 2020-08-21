Given three elastic constants _C_<sub>11</sub>, _C_<sub>12</sub>, and _C_<sub>44</sub> of a cubic system, directions _l_, _n_, and _m_, as well as plane normal _i_, _j_, and _k_, the program, `moduli_cubic.f90`, calculates Young's modulus and shear modulus of the rotated system.

To compile the program:

	gfortran -o moduli_cubic moduli_cubic.f90

Then to run the program:

	./moduli_cubic

which then prompts for input parameters.

If you use this program in your published work, please cite:

Shuozhi Xu, Liming Xiong, Youping Chen, David L. McDowell, [An analysis of key characteristics of the Frank-Read source process in FCC metals](http://dx.doi.org/10.1016/j.jmps.2016.08.002), J. Mech. Phys. Solids 96 (2016) 460--476