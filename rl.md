# Weekly Notes in Reinforcement Learning

## [1. A Shortnote on the Similarities between SSP and BwK](https://semihcayci.github.io/ShortNoteSSP.pdf) <b>Date: August 25, 2020</b>

In this note, I show that BwK is an SSP-RL problem with finite action space (and infinite state space) and unknown state transition probabilities. Tight bounds (i.e., Reg(B) ~ log B) is proved for iid costs. This parallelism can be useful in continuous action space and Markovian cost structure. Interestingly, any discounted-cost MDP can be translated into SSP (see Section 2.3 in (Bertsekas, Tsitsiklis; 1996)). Thus, the BwK approach can be used for discounted-cost problems as well.

## [2. Notes on Online Exploration for Q-Learning](https://semihcayci.github.io/Q-Learning-Exploration.pdf) <b>Date: August 25, 2020</b>

Model-free RL algorithms are known to suffer from high sample complexity under current exploration strategies (e.g., epsilon-greedy, greedy). The problem of efficient online exploration for non-generative models (i.e., without simulators) was open for even finite action-state spaces until recently. It is still open for large/continuous state-action spaces. In this note, I briefly describe a simple algorithm for Q-Learning with online exploration based on the following paper, and plan an attack on how to solve it for large state-action spaces.    

# Papers

## [1. Is Q-Learning Sample Efficient?](https://papers.nips.cc/paper/7735-is-q-learning-provably-efficient.pdf)
Sample-efficiency of Q-Learning with UCB-exploration in a finite-horizon MDP with two timescales (i.e., PR Kumar style setting) and finite action-state spaces. Two timescales make things considerably easier as Q_h^k (corresponding to the same steps h across different episodes k) are independent, thus concentration is easy to establish. They prove a minimax lower bound that grows \Omega(H sqrt(K)) and UCB-Hoeffding achieves \tilde{O}(H\sqrt{H K}) regret.

Weakness: Two-timescale finite horizon assumption, finite |A x S|
Remedies: Note #1 above.

## [2. Neural Temporal-Difference and Q-Learning Provably Converge to Global Optima](https://arxiv.org/abs/1905.10027)

<b>High-level comments:</b> Complicated problem that consists of integrated components exploration & generalization
<b>Weakness:</b> Despite the coupling, exploration dynamics is circumvented. How to choose the control given a state? They assume sampling iid from the stationary distribution.

Independence is OK because of the experience replay in DQN models. But stationary distribution assumption is too unrealistic. They claim to prove a non-asymptotic convergence result, but they are starting from the stationary distribution with iid sampling. This is like restless bandits comparing the performance w.r.t. stationary performance. <b>Goal is transient, but they use steady-state.</b>

Why is Stationarity required? Projected Bellman operator: Contraction only with weighted L2 norm with "weights = stationary distribution". Thus, starting from the stationary distribution is very simplifying.

Without these dynamics, the problem turns into a fitted Q-iteration (Munos & Szepesvari, 2008) instead of Q-learning.
