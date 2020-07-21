# Reverse-Cuthill-McKee-Ordering

**RCM**, a MATLAB library which computes the Reverse Cuthill McKee (RCM) ordering of the nodes of a graph.

The RCM ordering is frequently used when a matrix is to be generated whose rows and columns are numbered according to the numbering of the nodes. By an appropriate renumbering of the nodes, it is often possible to produce a matrix with a much smaller bandwidth.

The bandwidth of a matrix is computed as the maximum bandwidth of each row of the matrix. The bandwidth of a row of the matrix is essentially the number of matrix entries between the first and last nonzero entries in the row, with the proviso that the diagonal entry is always treated as though it were nonzero.

This library includes a few routines to handle the common case where the connectivity can be described in terms of a triangulation of the nodes, that is, a grouping of the nodes into sets of 3-node or 6-node triangles. The natural description of a triangulation is simply a listing of the nodes that make up each triangle. The library includes routines for determining the adjacency structure associated with a triangulation, and the test problems include examples of how the nodes in a triangulation can be relabeled with the RCM permutation.

Here is a simple example of how reordering can reduce the bandwidth. In our first picture, we have nine nodes:

         5--7--6
           |  | /
        4--8--2
        |  |  |
        9--1--3
        
The corresponding adjacency matrix is:

        * . 1 . . . . 1 1
        . * 1 . . 1 1 1 .
        1 1 * . . . . . .
        . . . * . . . 1 1
        . . . . * . 1 1 .
        . 1 . . . * 1 . .
        . 1 . . 1 1 * . .
        1 1 . 1 1 . . * .
        1 . . 1 . . . . *
        
which has a bandwidth of 7 (lower and upper bandwidths of 3, and 1 for the diagonal.)

## Licensing:

The computer code and data files described and made available on this web page are distributed under the GNU LGPL license.

## Reference:

1.  HL Crane, Norman Gibbs, William Poole, Paul Stockmeyer,
Algorithm 508: Matrix Bandwidth and Profile Reduction,
ACM Transactions on Mathematical Software,
Volume 2, Number 4, December 1976, pages 375-377.

2.  Alan George, Joseph Liu,
Computer Solution of Large Sparse Positive Definite Matrices,
Prentice Hall, 1981,
ISBN: 0131652745,
LC: QA188.G46

3.  Norman Gibbs,
Algorithm 509: A Hybrid Profile Reduction Algorithm,
ACM Transactions on Mathematical Software,
Volume 2, Number 4, December 1976, pages 378-387.

4.  Norman Gibbs, William Poole, Paul Stockmeyer,
An Algorithm for Reducing the Bandwidth and Profile of a Sparse Matrix,
SIAM Journal on Numerical Analysis,
Volume 13, Number 2, April 1976, pages 236-250.

5.  John Lewis,
Algorithm 582: The Gibbs-Poole-Stockmeyer and Gibbs-King Algorithms for Reordering Sparse Matrices,
ACM Transactions on Mathematical Software,
Volume 8, Number 2, June 1982, pages 190-194.
