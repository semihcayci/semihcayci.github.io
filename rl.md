# Weekly Notes in Reinforcement Learning

## [A Shortnote on the Similarities between SSP and BwK](https://semihcayci.github.io/ShortNoteSSP.pdf)
August 25, 2020: In this note, I show that BwK is an SSP-RL problem with finite action space (and infinite state space) and unknown state transition probabilities. The state consists of (controlled random walk, number of choices(a) for all a) and the process stops when the random walk exceeds a given threshold. If the costs for each action are iid, then we have already solved this SSP-RL with O(log B) regret for a time-horizon B. This parallelism can be useful in continuous action space and Markovian cost structure.

## [Notes on "Is Q-Learning Sample Efficient?"](https://semihcayci.github.io/Q-Learning Exploration.pdf)
<b>August 25, 2020:<\b>

# Papers

## [1. Is Q-Learning Sample Efficient?](https://papers.nips.cc/paper/7735-is-q-learning-provably-efficient.pdf)
Sample-efficiency of Q-Learning with UCB-exploration in a finite-horizon MDP with two timescales (i.e., PR Kumar style setting) and finite action-state spaces. Two timescales make things considerably easier as Q_h^k (corresponding to the same steps h across different episodes k) are independent, thus concentration is easy to establish. They prove a minimax lower bound that grows \Omega(H sqrt(K)) and UCB-Hoeffding achieves \tilde{O}(H\sqrt{H K}) regret.

Weakness: Two-timescale assumption, finite |A x S|
