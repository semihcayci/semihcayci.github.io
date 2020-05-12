# Interesting Material in Bandit Theory

## [Decision-Making Side of Machine Learning - Michael I. Jordan](https://iclr.cc/virtual_2020/speaker_8.html)
This is the plenary talk of Michael I. Jordan at ICLR 2020. He describes the state of the art and potential challenges in the decision-making side of machine learning, particularly in bandits and reinforcement learning.

## [Gaussian Process Optimization in the Bandit Setting: No Regret and Experimental Design - Srinivas et al.](https://arxiv.org/abs/0912.3995)

The classical bandit theory is interested in finitely many arms. When the action space is continuous, things become complicated as a result of the decreased separability between the optimal arm and its suboptimal neighbors. At this point, the notion of **information structure** comes to our help. If the function to be learned satisfies certain smoothness properties, O(\sqrt{N}) regret is achievable. One way to impose these smoothness properties is Lipschitz continuity, which is considered in a variety of papers. This paper takes a different (Bayesian) approach, and models the unknown function to be learned as an outcome from a Gaussian process prior. By following this approach, the smoothness of the unknown function is encoded via a kernel_ function, and the posterior update is performed via simple operations. I personally like the notion of _information gain_ introduced in this paper: in decision-making, the information content of an action is considered besides its immediate reward.
