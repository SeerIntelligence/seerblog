---
layout: post
title: "codewords & how matrices are used to encode information"
category: mathematics
use_math: true
--- 

Linear algebra is often one of the tougher opponents of an average comp-sci student's life. This is mainly because unlike calculus and other mathematical courses that an computer science student takes, linear algebra is by far the most un-intuitive and hostile to get into.

### Starting simple: information words

An **Information word** is essentially just a vector of information in form of **q**-nary data, in our case, for simplicity we will consider this data to be **bi**nary.

This n-bit sequence of information can be encoded into a k-bit codeword, so a codeword is essentially that information with some added data & that added data can be used to detect and/or correct errors within that information.

For a simple linear code with a generator matrix: 

$$
G = \begin{pmatrix} 1 & 0 & 1 & 1 \\ 0 & 1 & 1 & 0 \end{pmatrix}
$$

Encoding the information word $$\mathbf{u} = (1, 0), \mathbf{c} = (1, 0)$$:

$$
G = (1, 0) \begin{pmatrix} 1 & 0 & 1 & 1 \\ 0 & 1 & 1 & 0 \end{pmatrix} = (1, 0, 1, 1)
$$



**Example:**  
For a code with a parity check matrix:

$$
H = \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 1 & 1 \end{pmatrix}
$$

The syndrome for codeword $$\mathbf{c} = (1, 0, 1, 1)$$:

$$
\mathbf{s} = \begin{pmatrix} 1 & 0 & 1 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & 1 \\ 1 & 1 \\ 0 & 1 \end{pmatrix} = (0, 1)
$$

If $$\mathbf{s}$$ is non-zero, the received word contains errors.
