# Weekly Notes in Reinforcement Learning

## August 25, 2020 [A Shortnote on the Similarities between SSP and BwK](https://github.com/semihcayci/ShortNoteSSP.pdf)


Here I will list papers in reinforcement learning.

## [1. Is Q-Learning Sample Efficient?](https://papers.nips.cc/paper/7735-is-q-learning-provably-efficient.pdf)
Sample-efficiency of Q-Learning with UCB-exploration in a finite-horizon MDP with two timescales (i.e., PR Kumar style setting) and finite action-state spaces. Two timescales make things considerably easier as Q_h^k (corresponding to the same steps h across different episodes k) are independent, thus concentration is easy to establish. They prove a minimax lower bound that grows \Omega(H sqrt(K)) and UCB-Hoeffding achieves \tilde{O}(H\sqrt{H K}) regret.

Weakness: Two-timescale assumption, finite |A x S|
