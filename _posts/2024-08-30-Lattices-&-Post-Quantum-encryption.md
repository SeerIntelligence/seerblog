---
layout: post
title: "Lattices & Post-Quantum Encryption"
use_math: true
--- 

Say hi to our lord and savior, Lattice-based cryptography, or not.


### Introduction
Quantum computing threatens traditional encryption algorithms via a method called the Shor algorithm. Shor's algorithm uses Quantum Fourier Transform (QFT) to extract the periodicity of a function, leveraging quantum mechanics and thus only being feasible on a quantum computer.

Although it is theoretically possible to run Shor's algorithm on a classical binary computer, it defeats the whole purpose of its existence, because one would need to emulate quantum behavior (mainly qubits, superposition, and entanglement).
There are other important quantum-specific algorithms that threaten classical cryptography, mainly Grover's algorithm, ECC attacks, Harrow-Hassidim-Lloyd, and future advancements on HSP problems, but Shor's is the topic of discussion today.

### What Are Lattices?
Basically, a **lattice** in mathematics is just a regular and repeating grid of points. These points span infinitely in all directions.
Imagine a 2D grid of points on a piece of paper where each point has integer coordinates like $$(1, 1)$$, $$(2, 3)$$, or $$(4, 5)$$. This grid essentially makes a lattice, and you can create a higher-dimensional lattice using the same principles.

#### Rigorous Explanation:
Mathematically, a **lattice** is a discrete subset of $$\mathbb{R}^n$$ (n-dimensional real space) that is formed by all **integer** linear combinations of a set of vectors that are linearly *independent*. If you have vectors $$\mathbf{v}_1, \mathbf{v}_2, \ldots, \mathbf{v}_n$$ in $$\mathbb{R}^n$$, the lattice $$\Lambda$$ that can be generated from these vectors is defined as:

$$
\Lambda = \left\{ \sum_{i=1}^{n} a_i \mathbf{v}_i \mid a_i \in \mathbb{Z} \right\}
$$

where $$\mathbb{Z}$$ represents the set of all integers, and likewise, each $$a_i$$ is an integer coefficient. The vectors $$\mathbf{v}_1, \mathbf{v}_2, \ldots, \mathbf{v}_n$$ are called the **basis vectors** of the lattice, because they determine the shape and structure of the lattice.


#### So How Are Lattices Used in Cryptography?

Basically, they work on the same idea that makes our current prime-factor cryptography tick, which is "find problems that are computationally hard to reverse."
In lattice-based cryptography, these problems are the Shortest Vector Problem (SVP) and Learning With Errors (LWE).

### How Are Lattices Quantum Resistant?
Lattice problems are hard to solve on both classical and quantum computers, and there is no known quantum algorithm that can solve them quicker.
Although a breakthrough can happen, mainly because proving that lattice-based cryptography is quantum resilient is one of the open problems of cryptography, meaning that there is no mathematical proof of lattice-based cryptography being quantum resilient, lattice-based cryptography is one of the few candidates for post-quantum cryptography.

### Let's Talk NTRUEncrypt.

**NTRUEncrypt** is one of the earliest forms of lattice-based public-key encryption schemes, introduced in 1996 by Hoffstein, Pipher, and Silverman.

**How It Works**:
- **Key Generation**:
  - Choose polynomials $$f(x)$$ and $$g(x)$$ from a certain polynomial ring $$\mathbb{Z}_q[x]/(x^n - 1)$$, such that $$f(x)$$ is invertible modulo $$q$$ and a smaller modulus $$p$$.
  - The public key is the polynomial $$h(x) = p \cdot g(x) \cdot f^{-1}(x) \mod q$$.
  - The private key is $$f(x)$$ (and optionally $$g(x)$$ for decryption).

- **Encryption**:
  - To encrypt a message polynomial $$m(x)$$, first choose a random polynomial $$r(x)$$ and compute the ciphertext as $$c(x) = h(x) \cdot r(x) + m(x) \mod q$$.

- **Decryption**:
  - The recipient uses the private key $$f(x)$$ to compute $$a(x) = f(x) \cdot c(x) \mod q$$, which will yield a polynomial close to $$p \cdot m(x)$$. By reducing modulo $$p$$, the receiver can recover the message $$m(x)$$.

NTRUEncrypt is considered to be secure against both classical and quantum attacks. It runs on the complexity of SVP problems, and although there's no mathematical proof of its hardness against quantum computing, it is still considered secure due to the lack of speedy brute-force algorithms.
It can essentially be used as a drop-in replacement for our current encryption algorithms. It's fast and quite secure, but I suppose the reason we don't switch to it is the lack of mathematical proof of its security. As in, why bother with such a significant architectural migration when a) there's no real threat of quantum computers on the horizon, and b) even if there was, lattice-based cryptography might warrant a second migration in the case that it is proved to be ineffective.
For a PGP alternative, a signing algorithm based on NTRUEncrypt exists and is cleverly called NTRUSign. It works in pretty much the same way except it's fitted to sign messages instead of encrypting data.

### Will That Ever Matter?

I believe that we do not have a quantum threat looming on the horizon. As of the time of this writing, the fastest quantum computer only has a modest one-thousand-qubit chip, and it can factor numbers up to 56,153, which is not even close to being an actual threat to RSA.
Considering the exponential growth of quantum computers, we can assume that cryptography will (hopefully) grow at the same rate, and we can have secure encryption before quantum computers are available even to agencies, let alone threat actors.
