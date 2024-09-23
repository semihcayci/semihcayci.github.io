# Mathematical Foundations of Deep Learning at RWTH Aachen (Winter 2023-24)

Instructor: Semih Cayci (cayci[at]mathc.rwth-aachen.de)

## 0. Basics of Machine Learning

1. [Concentration inequalities: Chernoff-Hoeffding](https://github.com/semihcayci/deeplearningtheory/blob/17170abf7c283274caf01e2abf2629e0b55d2c1a/2_Concentration%20Inequalities%20for%20Machine%20Learning/1_ChernoffHoeffding.pdf)
2. [Concentration inequalities: Martingale-based bounds](https://github.com/semihcayci/deeplearningtheory/blob/17170abf7c283274caf01e2abf2629e0b55d2c1a/2_Concentration%20Inequalities%20for%20Machine%20Learning/2_Azuma-McDiarmid.pdf)
3. [Basic supervised learning](https://github.com/semihcayci/deeplearningtheory/blob/17170abf7c283274caf01e2abf2629e0b55d2c1a/3_Basics%20of%20(Supervised)%20Learning%20Theory/1_Basic%20Supervised%20Learning.pdf)
4. [Empirical risk minimization](https://github.com/semihcayci/deeplearningtheory/blob/17170abf7c283274caf01e2abf2629e0b55d2c1a/3_Basics%20of%20(Supervised)%20Learning%20Theory/2_ERM.pdf)

[Exercise sheet 0: Concentration inequalities](https://github.com/semihcayci/deeplearningtheory/blob/17170abf7c283274caf01e2abf2629e0b55d2c1a/voluntary-exercise-sheet0.pdf)

[Exercise sheet 1: Basics of PAC-SL](https://github.com/semihcayci/deeplearningtheory/blob/17170abf7c283274caf01e2abf2629e0b55d2c1a/Assignment1.pdf)

[References](https://github.com/semihcayci/deeplearningtheory/blob/a322fb0e36ebd7ae4caecd1bcfb24f7b6dedd3cb/2_Concentration%20Inequalities%20for%20Machine%20Learning/3_Supplementary%20References.html)

## 1. Optimization for Deep Learning

### Basics of Convex Optimization
1. [ERM as an optimization problem](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/1_ERM%20as%20Optimization.pdf)
2. [Convex optimization basics](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/2_Convex%20Optimization%20Basics.pdf)
3. [Projected subgradient descent](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/3_Projected%20Subgradient%20Descent.pdf)
4. [Gradient descent for strongly-convex and non-smooth optimization](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/4_Gradient%20Descent%20for%20Strongly___vex%20Nonsmooth%20Optimization.pdf)
5. [Gradient descent for smooth optimization](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/5_Gradient%20Descent%20for%20Smooth%20a___trongly%20Convex%20Functions%202.pdf)
6. [Stochastic gradient descent (SGD)](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/6_SGD%204.pdf)

[References](https://github.com/semihcayci/deeplearningtheory/blob/a322fb0e36ebd7ae4caecd1bcfb24f7b6dedd3cb/3_Basics%20of%20(Supervised)%20Learning%20Theory/3_Supplementary%20References.html)

### Gradient descent for overparameterized ReLU networks -- NTK-Based Approach
1. [Main idea: Linearization around random initialization](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/7_Optimization%20in%20Neural%20Tangent%20Kernel%20Regime/1.%20Linearization.pdf)
2. [Neural tangent kernel](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/7_Optimization%20in%20Neural%20Tangent%20Kernel%20Regime/2.%20Neural%20Tangent%20Kernel%20-%20Slides.pdf)
3. [Gradient descent for regression](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/7_Optimization%20in%20Neural%20Tangent%20Kernel%20Regime/3a.%20Gradient%20Descent%20-%20Regression.pdf)
4. [Supplementary: a study of linear regression](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/7_Optimization%20in%20Neural%20Tangent%20Kernel%20Regime/3b.%20Gradient%20Descent%20for%20Linear%20Regression%20-%20Slides.pdf)
5. [Massive overparameterization: Convergence of gradient flow](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/4_Optimization%20for%20Deep%20Learning/7_Optimization%20in%20Neural%20Tangent%20Kernel%20Regime/4.%20Gradient%20Flow%20under%20Overparameterization.pdf)

[Exercise sheet 2: Convex optimization algorithms](https://github.com/semihcayci/deeplearningtheory/blob/f99b7bc29671d3ea0fc0ebe3e67906e17e9f41eb/Assignment2.pdf)

[Exercise sheet 3: Analysis of GD in the NTK regime](https://github.com/semihcayci/deeplearningtheory/blob/c42abce4a47a1e0e73e7d04022b69f230416c17c/Assignment3.pdf)

[References](https://github.com/semihcayci/deeplearningtheory/blob/a322fb0e36ebd7ae4caecd1bcfb24f7b6dedd3cb/4_Optimization%20for%20Deep%20Learning/8_References.html)

## Generalization in Deep Learning
1. [Generalization in deep learning via uniform convergence: Rademacher complexity of ReLU networks](https://github.com/semihcayci/deeplearningtheory/blob/4bbdf0249d490eff1045cceb1e8450b120279c64/5_Generalization%20Bounds%20for%20Deep%20Learning/1_Generalization%20Bounds%20-%20Rademacher.pdf)
2. [Generalization in deep learning via covering bounds](https://github.com/semihcayci/deeplearningtheory/blob/4bbdf0249d490eff1045cceb1e8450b120279c64/5_Generalization%20Bounds%20for%20Deep%20Learning/2_Covering%20Bounds.pdf)
3. [Algorithm-dependent generalization via Donsker-Varadhan variational principle](https://github.com/semihcayci/deeplearningtheory/blob/4bbdf0249d490eff1045cceb1e8450b120279c64/5_Generalization%20Bounds%20for%20Deep%20Learning/3_Algorithm-Dependent%20Generalization%204.pdf)
4. [Implicit bias of gradient descent: linear regression](https://github.com/semihcayci/deeplearningtheory/blob/4bbdf0249d490eff1045cceb1e8450b120279c64/5_Generalization%20Bounds%20for%20Deep%20Learning/4_Implicit%20Bias.pdf)

[Exercise sheet 4: Generalization basics](https://github.com/semihcayci/deeplearningtheory/blob/4bbdf0249d490eff1045cceb1e8450b120279c64/Assignment4.pdf)

[Exercise sheet 5: Generalization in deep learning](https://github.com/semihcayci/deeplearningtheory/blob/4bbdf0249d490eff1045cceb1e8450b120279c64/Assignment5.pdf)

[References](https://github.com/semihcayci/deeplearningtheory/blob/a322fb0e36ebd7ae4caecd1bcfb24f7b6dedd3cb/5_Generalization%20Bounds%20for%20Deep%20Learning/5_References.html)

## Universal Approximation Theorems for Deep Learning

1. [Grid-based approximation and curse of dimensionality](https://github.com/semihcayci/deeplearningtheory/blob/736556737f894995943f9d3fb6fc9576a983ff8b/6_Approximation%20Bounds%20for%20Neural%20Networks/1_Grid-Based%20Approximation.pdf)
2. [Universal approximation theorem](https://github.com/semihcayci/deeplearningtheory/blob/736556737f894995943f9d3fb6fc9576a983ff8b/6_Approximation%20Bounds%20for%20Neural%20Networks/2_Universal%20Approximation.pdf)

[References](https://github.com/semihcayci/deeplearningtheory/blob/a322fb0e36ebd7ae4caecd1bcfb24f7b6dedd3cb/6_Approximation%20Bounds%20for%20Neural%20Networks/3_References.html)

## References
1. ["Deep Learning Theory Lecture Notes" by Matus Telgarsky, 2021](https://mjt.cs.illinois.edu/courses/dlt-f22/)
2. ["Learning Theory from First Principles" by Francis Bach, 2023](https://www.di.ens.fr/~fbach/ltfp_book.pdf)
