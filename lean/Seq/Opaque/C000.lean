import SequenceMachineLib.Basic

/-!
# Undefined sequences

Sequences without a canonical program (provenance `undefined`), they can be referenced but not evaluated.
-/

/-- A000001: Number of groups of order n. -/
opaque A000001 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000001.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000003: Number of classes of primitive positive definite binary quadratic forms of discriminant D = -4n; or equivalently the class number of the quadratic order of discriminant D = -4n. -/
opaque A000003 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000003.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000009: Expansion of Product_{m >= 1} (1 + x^m); number of partitions of n into distinct parts; number of partitions of n into odd parts. -/
opaque A000009 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000009.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000014: Number of series-reduced trees with n nodes. -/
opaque A000014 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000014.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000018: Number of positive integers <= 2^n of form x^2 + 16*y^2. -/
opaque A000018 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000018.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000019: Number of primitive permutation groups of degree n. -/
opaque A000019 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000019.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000021: Number of positive integers <= 2^n of form x^2 + 12 y^2. -/
opaque A000021 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000021.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000022: Number of centered hydrocarbons with n atoms. -/
opaque A000022 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000022.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000024: Number of positive integers <= 2^n of form x^2 + 10 y^2. -/
opaque A000024 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000024.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000025: Coefficients of the 3rd-order mock theta function f(q). -/
opaque A000025 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000025.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000033: a(n) = A058087(n,n-2). -/
opaque A000033 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000033.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000039: Coefficient of q^(2n) in the series expansion of Ramanujan's mock theta function f(q). -/
opaque A000039 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000039.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000041: a(n) is the number of partitions of n (the partition numbers). -/
opaque A000041 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000041.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000043: Mersenne exponents: primes p such that 2^p - 1 is prime. Then 2^p - 1 is called a Mersenne prime. -/
opaque A000043 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000043.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000044: Dying rabbits: a(0) = 1; for 1 <= n <= 12, a(n) = Fibonacci(n); for n >= 13, a(n) = a(n-1) + a(n-2) - a(n-13). -/
opaque A000044 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000044.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000047: Number of integers <= 2^n of form x^2 - 2y^2. -/
opaque A000047 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000047.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000049: Number of positive integers <= 2^n of the form 3*x^2 + 4*y^2. -/
opaque A000049 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000049.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000053: Local stops on New York City 1 Train (Broadway-7 Avenue Local) subway. -/
opaque A000053 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000053.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000055: Number of trees with n unlabeled nodes. -/
opaque A000055 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000055.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000057: Primes that divide at least one term in every Fibonacci sequence. -/
opaque A000057 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000057.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000060: Number of signed trees with n nodes. -/
opaque A000060 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000060.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000061: Generalized tangent numbers d(n,1). -/
opaque A000061 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000061.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000063: Symmetrical dissections of an n-gon. -/
opaque A000063 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000063.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000065: -1 + number of partitions of n. -/
opaque A000065 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000065.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000066: Smallest number of vertices in trivalent graph with girth (shortest cycle) = n. -/
opaque A000066 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000066.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000067: Number of positive integers <= 2^n of form x^2 + 2 y^2. -/
opaque A000067 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000067.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000070: a(n) = Sum_{k=0..n} p(k) where p(k) = number of partitions of k (A000041). -/
opaque A000070 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000070.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000072: Number of positive integers <= 2^n of form x^2 + 4 y^2. -/
opaque A000072 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000072.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000074: Number of odd integers <= 2^n of form x^2 + y^2. -/
opaque A000074 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000074.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000075: Number of positive integers <= 2^n of form 2*x^2 + 3*y^2. -/
opaque A000075 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000075.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000076: Number of integers <= 2^n of form 4 x^2 + 4 x y + 5 y^2. -/
opaque A000076 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000076.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000077: Number of positive integers <= 2^n of form x^2 + 6 y^2. -/
opaque A000077 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000077.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000080: Number of nonisomorphic minimal triangle graphs. -/
opaque A000080 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000080.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000081: Number of unlabeled rooted trees with n nodes (or connected functions with a fixed point). -/
opaque A000081 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000081.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000083: Number of mixed Husimi trees with n nodes; or polygonal cacti with bridges. -/
opaque A000083 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000083.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000084: Number of series-parallel networks with n unlabeled edges. Also called yoke-chains by Cayley and MacMahon. -/
opaque A000084 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000084.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000087: Number of unrooted nonseparable planar maps with n edges and a distinguished face. -/
opaque A000087 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000087.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000088: Number of simple graphs on n unlabeled nodes. -/
opaque A000088 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000088.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000090: Expansion of e.g.f. exp((-x^3)/3)/(1-x). -/
opaque A000090 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000090.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000092: Let A(n) = #{(i,j,k): i^2 + j^2 + k^2 <= n}, V(n) = (4/3)Pi*n^(3/2), P(n) = A(n) - V(n); sequence gives values of n where |P(n)| sets a new record. -/
opaque A000092 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000092.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000094: Number of trees of diameter 4. -/
opaque A000094 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000094.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000097: Number of partitions of n if there are two kinds of 1's and two kinds of 2's. -/
opaque A000097 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000097.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000098: Number of partitions of n if there are two kinds of 1, two kinds of 2 and two kinds of 3. -/
opaque A000098 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000098.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000099: Let A(n) = #{(i,j): i^2 + j^2 <= n}, V(n) = Pi*n, P(n) = A(n) - V(n); sequence gives values of n where |P(n)| sets a new record. -/
opaque A000099 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000099.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000101: Record gaps between primes (upper end) (compare A002386, which gives lower ends of these gaps). -/
opaque A000101 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000101.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000103: Number of n-node triangulations of sphere in which every node has degree >= 4. -/
opaque A000103 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000103.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000104: Number of n-celled free polyominoes without holes. -/
opaque A000104 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000104.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000105: Number of free polyominoes (or square animals) with n cells. -/
opaque A000105 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000105.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000106: 2nd power of rooted tree enumerator; number of linear forests of 2 rooted trees. -/
opaque A000106 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000106.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000107: Number of rooted trees with n nodes and a single labeled node; pointed rooted trees; vertebrates. -/
opaque A000107 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000107.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000109: Number of simplicial polyhedra with n vertices; simple planar graphs with n vertices and 3n-6 edges; maximal simple planar graphs with n vertices; planar triangulations with n vertices; triangulations of the sphere with n vertices; 3-connected cubic planar graphs on 2n-4 vertices. -/
opaque A000109 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000109.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000110: Bell or exponential numbers: number of ways to partition a set of n labeled elements. -/
opaque A000110 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000110.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000111: Euler or up/down numbers: e.g.f. sec(x) + tan(x). Also for n >= 2, half the number of alternating permutations on n letters (A001250). -/
opaque A000111 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000111.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000112: Number of partially ordered sets ("posets") with n unlabeled elements. -/
opaque A000112 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000112.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000113: Number of transformation groups of order n. -/
opaque A000113 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000113.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000118: Number of ways of writing n as a sum of 4 squares; also theta series of four-dimensional cubic lattice Z^4. -/
opaque A000118 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000118.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000119: Number of representations of n as a sum of distinct Fibonacci numbers. -/
opaque A000119 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000119.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000121: Number of representations of n as a sum of Fibonacci numbers (1 is allowed twice as a part). -/
opaque A000121 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000121.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000130: One-half the number of permutations of length n with exactly 1 rising or falling succession. -/
opaque A000130 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000130.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000131: Number of asymmetrical dissections of n-gon. -/
opaque A000131 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000131.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000132: Number of ways of writing n as a sum of 5 squares. -/
opaque A000132 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000132.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000133: Number of Boolean functions of n variables. -/
opaque A000133 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000133.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000135: Number of partitions into non-integral powers. -/
opaque A000135 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000135.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000136: Number of ways of folding a strip of n labeled stamps. -/
opaque A000136 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000136.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000137: Series-parallel numbers. -/
opaque A000137 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000137.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000138: Expansion of e.g.f. exp(-x^4/4)/(1-x). -/
opaque A000138 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000138.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000140: Kendall-Mann numbers: the most common number of inversions in a permutation on n letters is floor(n*(n-1)/4); a(n) is the number of permutations with this many inversions. -/
opaque A000140 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000140.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000141: Number of ways of writing n as a sum of 6 squares. -/
opaque A000141 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000141.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000143: Number of ways of writing n as a sum of 8 squares. -/
opaque A000143 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000143.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000144: Number of ways of writing n as a sum of 10 squares. -/
opaque A000144 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000144.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000145: Number of ways of writing n as a sum of 12 squares. -/
opaque A000145 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000145.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000146: From von Staudt-Clausen representation of Bernoulli numbers: a(n) = Bernoulli(2n) + Sum_{(p-1)|2n} 1/p. -/
opaque A000146 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000146.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000147: Number of trees of diameter 5. -/
opaque A000147 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000147.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000148: Number of partitions into non-integral powers. -/
opaque A000148 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000148.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000151: Number of oriented rooted trees with n nodes. Also rooted trees with n nodes and 2-colored non-root nodes. -/
opaque A000151 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000151.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000152: Number of ways of writing n as a sum of 16 squares. -/
opaque A000152 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000152.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000156: Number of ways of writing n as a sum of 24 squares. -/
opaque A000156 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000156.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000157: Number of Boolean functions of n variables. -/
opaque A000157 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000157.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000158: Number of partitions into non-integral powers. -/
opaque A000158 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000158.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000159: a(n) = A058087(n,n-3). -/
opaque A000159 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000159.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000160: Number of partitions into non-integral powers. -/
opaque A000160 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000160.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000162: Number of 3-dimensional polyominoes (or polycubes) with n cells. -/
opaque A000162 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000162.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000163: Series-parallel numbers. -/
opaque A000163 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000163.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000164: Number of partitions of n into 3 squares (allowing part zero). -/
opaque A000164 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000164.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000167: Nearest integer to modified Bessel function K_n(2). -/
opaque A000167 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000167.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000169: Number of labeled rooted trees with n nodes: n^(n-1). -/
opaque A000169 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000169.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000170: Number of ways of placing n nonattacking queens on an n X n board. -/
opaque A000170 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000170.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000171: Number of self-complementary graphs with n nodes. -/
opaque A000171 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000171.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000172: The Franel number a(n) = Sum_{k = 0..n} binomial(n,k)^3. -/
opaque A000172 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000172.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000173: Unitary-sociable numbers (smallest member of each cycle). -/
opaque A000173 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000173.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000174: Number of partitions of n into 5 squares. -/
opaque A000174 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000174.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000175: Related to zeros of Bessel function. -/
opaque A000175 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000175.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000176: Generalized tangent numbers d_(n,2). -/
opaque A000176 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000176.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000177: Number of partitions of n into 6 squares. -/
opaque A000177 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000177.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000181: a(n) = A058087(n,n-4). -/
opaque A000181 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000181.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000182: Tangent (or "Zag") numbers: e.g.f. tan(x), also (up to signs) e.g.f. tanh(x). -/
opaque A000182 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000182.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000183: Number of discordant permutations of length n. -/
opaque A000183 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000183.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000185: a(n) = A058087(n,n-5). -/
opaque A000185 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000185.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000186: Number of 3 X n Latin rectangles in which the first row is in order. -/
opaque A000186 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000186.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000187: Generalized Euler numbers, c(5,n). -/
opaque A000187 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000187.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000191: Generalized tangent numbers d(3, n). -/
opaque A000191 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000191.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000192: Generalized Euler numbers c(6,n). -/
opaque A000192 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000192.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000197:  -/
opaque A000197 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000197.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000198: Largest order of automorphism group of a tournament with n nodes. -/
opaque A000198 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000198.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000199: Coefficient of q^(2n-1) in the series expansion of Ramanujan's mock theta function f(q). -/
opaque A000199 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000199.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000200: Number of bicentered hydrocarbons with n atoms. -/
opaque A000200 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000200.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000205: Number of positive integers <= 2^n of form x^2 + 3 y^2. -/
opaque A000205 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000205.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000207: Number of inequivalent ways of dissecting a regular (n+2)-gon into n triangles by n-1 non-intersecting diagonals under rotations and reflections; also the number of (unlabeled) maximal outerplanar graphs on n+2 vertices. -/
opaque A000207 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000207.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000208: Number of even sequences with period 2n. -/
opaque A000208 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000208.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000214: Number of equivalence classes of Boolean functions of n variables under action of AG(n,2). -/
opaque A000214 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000214.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000219: Number of plane partitions (or planar partitions) of n. -/
opaque A000219 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000219.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000220: Number of asymmetric trees with n nodes (also called identity trees). -/
opaque A000220 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000220.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000222: a(n) = A058057(n,n-2). -/
opaque A000222 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000222.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000223: Let A(n) = #{(i,j,k): i^2 + j^2 + k^2 <= n}, V(n) = (4/3)Pi*n^(3/2), P(n) = A(n) - V(n); A000092 gives values of n where |P(n)| sets a new record; sequence gives nearest integer to P(A000092(n)). -/
opaque A000223 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000223.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000224: Number of squares mod n. -/
opaque A000224 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000224.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000226: Number of n-node unlabeled connected graphs with one cycle of length 3. -/
opaque A000226 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000226.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000228: Number of hexagonal polyominoes (or hexagonal polyforms, or planar polyhexes) with n cells. -/
opaque A000228 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000228.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000229: a(n) is the least number m such that the n-th prime is the least quadratic nonresidue modulo m. -/
opaque A000229 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000229.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000230: a(0)=2; for n>=1, a(n) = smallest prime p such that there is a gap of exactly 2n between p and next prime, or -1 if no such prime exists. -/
opaque A000230 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000230.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000232: Construct a triangle as in A036262. Sequence is one less than the position of the first number larger than 2 in the n-th row (n-th difference). -/
opaque A000232 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000232.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000233: Generalized class numbers c_(n,1). -/
opaque A000233 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000233.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000234: Partitions into non-integral powers (see Comments for precise definition). -/
opaque A000234 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000234.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000235: Number of n-node rooted trees of height 3. -/
opaque A000235 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000235.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000237: Number of mixed Husimi trees with n nodes; or rooted polygonal cacti with bridges. -/
opaque A000237 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000237.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000238: Number of oriented trees with n nodes. -/
opaque A000238 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000238.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000239: One-half of number of permutations of [n] with exactly one run of adjacent symbols differing by 1. -/
opaque A000239 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000239.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000240: Rencontres numbers: number of permutations of [n] with exactly one fixed point. -/
opaque A000240 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000240.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000242: 3rd power of rooted tree enumerator; number of linear forests of 3 rooted trees. -/
opaque A000242 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000242.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000243: Number of trees with n nodes, 2 of which are labeled. -/
opaque A000243 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000243.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000248: Expansion of e.g.f. exp(x*exp(x)). -/
opaque A000248 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000248.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000249: Nearest integer to modified Bessel function K_n(5). -/
opaque A000249 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000249.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000250: Number of symmetric reflexive relations on n nodes: (1/2)*A000666. -/
opaque A000250 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000250.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000251: Number of trees of diameter 6. -/
opaque A000251 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000251.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000254: Unsigned Stirling numbers of first kind, s(n+1,2): a(n+1) = (n+1)*a(n) + n!. -/
opaque A000254 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000254.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000256: Number of simple triangulations of the plane with n nodes. -/
opaque A000256 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000256.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000258: Expansion of e.g.f. exp(exp(exp(x)-1)-1). -/
opaque A000258 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000258.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000259: Number of certain rooted planar maps. -/
opaque A000259 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000259.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000261: a(n) = n*a(n-1) + (n-3)*a(n-2), with a(1) = 0, a(2) = 1. -/
opaque A000261 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000261.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000263: Number of partitions into non-integral powers. -/
opaque A000263 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000263.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000264: Number of 3-edge-connected rooted cubic maps with 2n nodes and a distinguished Hamiltonian cycle. -/
opaque A000264 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000264.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000266: Expansion of e.g.f. exp(-x^2/2) / (1-x). -/
opaque A000266 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000266.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000268: E.g.f.: -log(1+log(1+log(1-x))). -/
opaque A000268 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000268.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000269: Number of trees with n nodes, 3 of which are labeled. -/
opaque A000269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000270: For n >= 2, a(n) = b(n+1)+b(n)+b(n-1), where the b(i) are the ménage numbers A000179; a(0)=a(1)=1. -/
opaque A000270 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000270.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000272: Number of trees on n labeled nodes: n^(n-2) with a(0)=1. -/
opaque A000272 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000272.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000273: Number of unlabeled simple digraphs with n nodes. -/
opaque A000273 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000273.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000274: Number of permutations of length n with 2 consecutive ascending pairs. -/
opaque A000274 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000274.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000275: Coefficients of a Bessel function (reciprocal of J_0(z)); also pairs of permutations with rise/rise forbidden. -/
opaque A000275 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000275.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000276: Associated Stirling numbers. -/
opaque A000276 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000276.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000278: a(n) = a(n-1) + a(n-2)^2 for n >= 2 with a(0) = 0 and a(1) = 1. -/
opaque A000278 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000278.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000279: Card matching: coefficients B[n,1] of t in the reduced hit polynomial A[n,n,n](t). -/
opaque A000279 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000279.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000280: a(n) = a(n-1) + a(n-2)^3. -/
opaque A000280 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000280.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000281: Expansion of cos(x)/cos(2x). -/
opaque A000281 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000281.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000283: a(n) = a(n-1)^2 + a(n-2)^2 for n >= 2 with a(0) = 0 and a(1) = 1. -/
opaque A000283 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000283.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000286: Number of positive integers <= 2^n of form 2 x^2 + 5 y^2. -/
opaque A000286 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000286.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000287: Number of rooted polyhedral graphs with n edges. -/
opaque A000287 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000287.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000291: Number of bipartite partitions of n white objects and 2 black ones. -/
opaque A000291 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000291.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000293: a(n) = number of solid (i.e., three-dimensional) partitions of n. -/
opaque A000293 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000293.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000294: Expansion of g.f. Product_{k >= 1} (1 - x^k)^(-k*(k+1)/2). -/
opaque A000294 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000294.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000296: Set partitions without singletons: number of partitions of an n-set into blocks of size > 1. Also number of cyclically spaced (or feasible) partitions. -/
opaque A000296 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000296.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000297: a(n) = (n+1)*(n+3)*(n+8)/6. -/
opaque A000297 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000297.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000298: Number of partitions into non-integral powers. -/
opaque A000298 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000298.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000299: Number of n-node rooted trees of height 4. -/
opaque A000299 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000299.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000300: 4th power of rooted tree enumerator: linear forests of 4 rooted trees. -/
opaque A000300 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000300.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000303: Number of permutations of [n] in which the longest increasing run has length 2. -/
opaque A000303 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000303.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000305: Number of certain rooted planar maps. -/
opaque A000305 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000305.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000306: Number of trees of diameter 8. -/
opaque A000306 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000306.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000307: Number of 4-level labeled rooted trees with n leaves. -/
opaque A000307 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000307.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000310: Coefficients of iterated exponentials. -/
opaque A000310 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000310.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000311: Schroeder's fourth problem; also series-reduced rooted trees with n labeled leaves; also number of total partitions of n. -/
opaque A000311 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000311.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000313: Number of permutations of length n with 3 consecutive ascending pairs. -/
opaque A000313 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000313.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000314: Number of mixed Husimi trees with n nodes; or labeled polygonal cacti with bridges. -/
opaque A000314 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000314.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000315: Number of reduced Latin squares of order n; also number of labeled loops (quasigroups with an identity element) with a fixed identity element. -/
opaque A000315 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000315.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000317: a(n+1) = a(n)^2 - a(n)*a(n-1) + a(n-1)^2. -/
opaque A000317 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000317.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000318: Generalized tangent numbers d(4,n). -/
opaque A000318 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000318.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000319: a(n) = floor(b(n)), where b(n) = tan(b(n-1)), b(0)=1. -/
opaque A000319 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000319.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000320: Generalized tangent numbers d(5,n). -/
opaque A000320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000323: Let A(n) = #{(i,j): i^2 + j^2 <= n}, V(n) = Pi*n, P(n) = A(n) - V(n); A000099 gives values of n where |P(n)| sets a new record; sequence gives A(A000099(n)). -/
opaque A000323 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000323.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000327: Number of partitions into non-integral powers. -/
opaque A000327 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000327.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000329: Nearest integer to b(n), where b(n) = tan(b(n-1)), b(0) = 1. -/
opaque A000329 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000329.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000331: Related to zeros of Bessel function. -/
opaque A000331 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000331.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000333: Number of partitions into non-integral powers. -/
opaque A000333 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000333.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000334: Number of 4-dimensional partitions of n. -/
opaque A000334 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000334.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000335: Euler transform of A000292. -/
opaque A000335 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000335.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000339: Number of partitions into non-integral powers. -/
opaque A000339 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000339.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000341: Number of ways to pair up {1..2n} so sum of each pair is prime. -/
opaque A000341 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000341.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000342: Number of n-node rooted trees of height 5. -/
opaque A000342 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000342.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000343: 5th power of rooted tree enumerator; number of linear forests of 5 rooted trees. -/
opaque A000343 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000343.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000345: Number of partitions into non-integral powers. -/
opaque A000345 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000345.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000347: Number of partitions into non-integral powers. -/
opaque A000347 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000347.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000348: Number of ways to pair up {1^2, 2^2, ..., (2n)^2 } so sum of each pair is prime. -/
opaque A000348 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000348.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000349: One-half the number of permutations of length n with exactly 2 rising or falling successions. -/
opaque A000349 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000349.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000350: Numbers m such that Fibonacci(m) ends with m. -/
opaque A000350 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000350.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000353: Primes p == 7, 19, 23 (mod 40) such that (p-1)/2 is also prime. -/
opaque A000353 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000353.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000355: Primes p == 3, 9, 11 (mod 20) such that 2p+1 is also prime. -/
opaque A000355 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000355.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000356: Number of rooted cubic maps with 2n nodes and a distinguished Hamiltonian cycle: (2n)!(2n+1)! / (n!^2*(n+1)!(n+2)!). -/
opaque A000356 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000356.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000357: Number of 5-level labeled rooted trees with n leaves. -/
opaque A000357 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000357.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000358: Number of binary necklaces of length n with no subsequence 00, excluding the necklace "0". -/
opaque A000358 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000358.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000359: Coefficients of iterated exponentials. -/
opaque A000359 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000359.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000362: Generalized class numbers c_(n,2). -/
opaque A000362 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000362.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000363: Number of permutations of [n] with exactly 2 increasing runs of length at least 2. -/
opaque A000363 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000363.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000364: Euler (or secant or "Zig") numbers: e.g.f. (even powers only) sec(x) = 1/cos(x). -/
opaque A000364 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000364.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000365: Number of genus 0 rooted planar maps with 4 faces and n vertices. -/
opaque A000365 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000365.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000366: Genocchi numbers of second kind (A005439) divided by 2^(n-1). -/
opaque A000366 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000366.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000367: Numerators of Bernoulli numbers B_2n. -/
opaque A000367 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000367.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000368: Number of connected graphs with one cycle of length 4. -/
opaque A000368 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000368.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000369: Triangle of numbers related to triangle A049213; generalization of Stirling numbers of second kind A008277, Bessel triangle A001497. -/
opaque A000369 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000369.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000370: Number of NPN-equivalence classes of Boolean functions of n or fewer variables. -/
opaque A000370 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000370.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000371: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n,k)*2^(2^k). -/
opaque A000371 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000371.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000372: Dedekind numbers or Dedekind's problem: number of monotone Boolean functions of n variables, number of antichains of subsets of an n-set, number of elements in a free distributive lattice on n generators, number of Sperner families. -/
opaque A000372 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000372.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000373: Conjectured dimension of a module associated with the free commutative Moufang loop with n generators. -/
opaque A000373 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000373.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000374: Number of cycles (mod n) under doubling map. -/
opaque A000374 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000374.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000375: Topswops (1): start by shuffling n cards labeled 1..n. If top card is m, reverse order of top m cards, then repeat. a(n) is the maximal number of steps before top card is 1. -/
opaque A000375 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000375.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000376: Topswops (2): start by shuffling n cards labeled 1..n. If the top card is m, reverse the order of the top m cards. Repeat until 1 gets to the top, then stop. Suppose the whole deck is now sorted (if not, discard this case). a(n) is the maximal number of steps before 1 got to the top. -/
opaque A000376 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000376.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000377: Expansion of f(-q^3) * f(-q^8) * chi(-q^12) / chi(-q) in powers of q where chi(), f() are Ramanujan theta functions. -/
opaque A000377 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000377.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000378: Sums of three squares: numbers of the form x^2 + y^2 + z^2. -/
opaque A000378 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000378.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000380: Number of permutations of an n-sequence discordant with three given permutations (see reference) in n-3 places. -/
opaque A000380 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000380.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000385: Convolution of A000203 with itself. -/
opaque A000385 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000385.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000386: a(n) = A058057(n,n-3). -/
opaque A000386 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000386.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000388: Number of permutations of an n-sequence discordant with three given permutations (see reference) in n-2 places. -/
opaque A000388 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000388.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000390: Number of 5-dimensional partitions of n. -/
opaque A000390 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000390.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000391: Euler transform of A000332. -/
opaque A000391 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000391.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000393: Number of n-node rooted trees of height 6. -/
opaque A000393 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000393.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000394: Numbers of form x^2 + y^2 + 7z^2. -/
opaque A000394 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000394.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000395: 6th power of rooted tree enumerator; number of linear forests of 6 rooted trees. -/
opaque A000395 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000395.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000396: Perfect numbers k: k is equal to the sum of the proper divisors of k. -/
opaque A000396 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000396.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000397: Number of partitions into non-integral powers. -/
opaque A000397 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000397.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000398: Numbers of form x^2 + 2y^2 + 2yz + 4z^2. -/
opaque A000398 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000398.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000399: Unsigned Stirling numbers of first kind s(n,3). -/
opaque A000399 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000399.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000401: Numbers of form x^2 + y^2 + 2*z^2. -/
opaque A000401 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000401.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000402: Number of permutations of [n] in which the longest increasing run has length 3. -/
opaque A000402 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000402.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000405: Number of 6-level labeled rooted trees with n leaves. -/
opaque A000405 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000405.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000406: Coefficients of iterated exponentials. -/
opaque A000406 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000406.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000408: Numbers that are the sum of three nonzero squares. -/
opaque A000408 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000408.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000409: Singular n X n (0,1)-matrices: the number of n X n (0,1)-matrices having distinct, nonzero ordered rows, but having at least two equal columns or at least one zero column. -/
opaque A000409 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000409.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000410: Number of singular n X n rational (0,1)-matrices. -/
opaque A000410 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000410.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000411: Generalized tangent numbers d(6,n). -/
opaque A000411 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000411.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000412: Number of bipartite partitions of n white objects and 3 black ones. -/
opaque A000412 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000412.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000413: Let A(n) = #{(i,j,k): i^2 + j^2 + k^2 <= n}, V(n) = (4/3)*Pi*n^(3/2), P(n) = A(n) - V(n); A000092 gives values of n where |P(n)| sets a new record; sequence gives A(A000092(n)). -/
opaque A000413 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000413.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000414: Numbers that are the sum of 4 nonzero squares. -/
opaque A000414 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000414.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000416: Number of 6-dimensional partitions of n. -/
opaque A000416 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000416.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000417: Euler transform of A000389. -/
opaque A000417 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000417.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000418: Number of n-node rooted trees of height 7. -/
opaque A000418 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000418.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000419: Numbers that are the sum of 3 but no fewer nonzero squares. -/
opaque A000419 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000419.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000421: Number of isomorphism classes of connected 3-regular (trivalent, cubic) loopless multigraphs of order 2n. -/
opaque A000421 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000421.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000422: Concatenation of numbers from n down to 1. -/
opaque A000422 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000422.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000423: a(n) is smallest number > a(n-1) of form a(i)*a(j), i < j < n. -/
opaque A000423 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000423.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000424: Differences of reciprocals of unity. -/
opaque A000424 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000424.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000425: Coefficients of ménage hit polynomials. -/
opaque A000425 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000425.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000426: Coefficients of ménage hit polynomials. -/
opaque A000426 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000426.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000427: Number of 7-dimensional partitions of n. -/
opaque A000427 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000427.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000428: Euler transform of A000579. -/
opaque A000428 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000428.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000429: Number of n-node rooted trees of height 8. -/
opaque A000429 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000429.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000432: Series-parallel numbers. -/
opaque A000432 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000432.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000433: n written in base where place values are positive cubes. -/
opaque A000433 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000433.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000434: Number of permutations of [n] in which the longest increasing run has length 4. -/
opaque A000434 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000434.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000435: Normalized total height of all nodes in all rooted trees with n labeled nodes. -/
opaque A000435 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000435.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000436: Generalized Euler numbers c(3,n). -/
opaque A000436 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000436.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000437: Smallest nonnegative number that is the sum of 3 squares in exactly n ways. -/
opaque A000437 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000437.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000438: Number of 1-factorizations of complete graph K_{2n}. -/
opaque A000438 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000438.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000440: Number of permutations of an n-sequence discordant with three given permutations (see reference) in n-4 places. -/
opaque A000440 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000440.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000441: a(n) = Sum_{k=1..n-1} k*sigma(k)*sigma(n-k). -/
opaque A000441 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000441.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000444: Number of partially labeled rooted trees with n nodes (3 of which are labeled). -/
opaque A000444 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000444.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000446: Smallest number that is the sum of 2 squares (allowing zeros) in exactly n ways. -/
opaque A000446 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000446.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000448: Smallest number that is the sum of 2 squares in at least n ways. -/
opaque A000448 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000448.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000449: Rencontres numbers: number of permutations of [n] with exactly 3 fixed points. -/
opaque A000449 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000449.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000450: a(n) = A058057(n,n-4). -/
opaque A000450 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000450.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000451: Smallest number that is the sum of 3 squares in at least n ways. -/
opaque A000451 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000451.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000454: Unsigned Stirling numbers of first kind s(n,4). -/
opaque A000454 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000454.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000456: Number of permutations of [n] in which the longest increasing run has length 5. -/
opaque A000456 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000456.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000458: a(0) = a(1) = 1; thereafter a(n) = sigma(a(n-1)) + sigma(a(n-2)). -/
opaque A000458 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000458.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000461: Concatenate n n times. -/
opaque A000461 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000461.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000462: Numbers written in base of triangular numbers. -/
opaque A000462 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000462.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000464: Expansion of e.g.f. sin(x)/cos(2*x). -/
opaque A000464 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000464.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000465: Number of bipartite partitions of n white objects and 4 black ones. -/
opaque A000465 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000465.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000467: Number of permutations of [n] in which the longest increasing run has length 6. -/
opaque A000467 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000467.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000468: Powers of ten written in base 8. -/
opaque A000468 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000468.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000472: a(n) = a(n-1)^2 + (a(n-2) + 1)*(a(n-1) - a(n-2)^2). -/
opaque A000472 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000472.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000473: Number of genus 0 rooted maps with 5 faces and n vertices. -/
opaque A000473 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000473.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000474: Number of nonisomorphic 1-factorizations of complete graph K_{2n}. -/
opaque A000474 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000474.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000475: Rencontres numbers: number of permutations of [n] with exactly 4 fixed points. -/
opaque A000475 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000475.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000477: a(n) = Sum_{k=1..n-1} k^2*sigma(k)*sigma(n-k). -/
opaque A000477 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000477.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000478: Number of ways of placing n labeled balls into 3 indistinguishable boxes with at least 2 balls in each box. -/
opaque A000478 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000478.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000479: Number of 1-factorizations of K_{n,n}. -/
opaque A000479 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000479.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000482: Unsigned Stirling numbers of first kind s(n,5). -/
opaque A000482 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000482.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000483: Associated Stirling numbers: second-order reciprocal Stirling numbers (Fekete) a(n) = [[n, 3]]. The number of 3-orbit permutations of an n-set with at least 2 elements in each orbit. -/
opaque A000483 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000483.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000485: Number of partially labeled trees with n nodes (4 of which are labeled). -/
opaque A000485 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000485.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000487: Number of permutations of length n with exactly two valleys. -/
opaque A000487 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000487.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000488: Generalized tangent numbers d_(n,3). -/
opaque A000488 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000488.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000489: Card matching: Coefficients B[n,3] of t^3 in the reduced hit polynomial A[n,n,n](t). -/
opaque A000489 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000489.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000490: Generalized Euler numbers c(4,n). -/
opaque A000490 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000490.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000491: Number of bipartite partitions of n white objects and 5 black ones. -/
opaque A000491 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000491.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000496: Restricted permutations. -/
opaque A000496 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000496.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000497: S2(j,2j+2) where S2(n,k) is a 2-associated Stirling number of the second kind. -/
opaque A000497 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000497.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000498: Eulerian numbers (Euler's triangle: column k=4 of A008292, column k=3 of A173018). -/
opaque A000498 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000498.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000499: a(n) = Sum_{k=1..n-1} k^3*sigma(k)*sigma(n-k). -/
opaque A000499 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000499.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000502: Number of genus 0 rooted maps with 6 faces and n vertices. -/
opaque A000502 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000502.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000504: S2(j,2j+3) where S2(n,k) is a 2-associated Stirling number of the second kind. -/
opaque A000504 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000504.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000505: Eulerian numbers (Euler's triangle: column k=5 of A008292, column k=4 of A173018). -/
opaque A000505 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000505.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000506: One half of the number of permutations of [n] such that the differences have 5 runs with the same signs. -/
opaque A000506 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000506.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000507: Number of permutations of [n] with exactly 3 increasing runs of length at least 2. -/
opaque A000507 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000507.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000508: Generalized class numbers c_(n,3). -/
opaque A000508 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000508.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000511: Number of n-step spiral self-avoiding walks on hexagonal lattice, where at each step one may continue in same direction or make turn of 2*Pi/3 counterclockwise. -/
opaque A000511 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000511.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000512: Number of equivalence classes of n X n matrices over {0,1} with rows and columns summing to 3, where equivalence is defined by row and column permutations. -/
opaque A000512 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000512.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000513: Number of equivalence classes of n X n matrices over {0,1} with rows and columns summing to 4, where equivalence is defined by row and column permutations. Also number of isomorphism classes of bicolored quartic bipartite graphs, where isomorphism cannot exchange the colors. -/
opaque A000513 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000513.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000514: Eulerian numbers (Euler's triangle: column k=6 of A008292, column k=5 of A173018). -/
opaque A000514 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000514.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000515: a(n) = (2n)!(2n+1)!/n!^4, or equally (2n+1)*binomial(2n,n)^2. -/
opaque A000515 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000515.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000516: Number of equivalence classes of n X n matrices over {0,1} with rows and columns summing to 5, where equivalence is defined by row and column permutations. Isomorphism classes of bicolored 5-regular bipartite graphs, where isomorphism cannot exchange the colors. -/
opaque A000516 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000516.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000517: Number of permutations of length n with exactly three valleys. -/
opaque A000517 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000517.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000518: Generalized tangent numbers d_(n,4). -/
opaque A000518 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000518.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000519: Number of equivalence classes of nonzero regular 0-1 matrices of order n. -/
opaque A000519 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000519.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000521: Coefficients of modular function j as power series in q = e^(2 Pi i t). Another name is the elliptic modular invariant J(tau). -/
opaque A000521 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000521.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000524: Number of rooted trees with n nodes, 2 of which are labeled. -/
opaque A000524 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000524.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000525: Number of partially labeled rooted trees with n nodes (4 of which are labeled). -/
opaque A000525 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000525.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000526: Number of partially labeled trees with n nodes (5 of which are labeled). -/
opaque A000526 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000526.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000527: Series-parallel numbers. -/
opaque A000527 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000527.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000528: Number of types of Latin squares of order n. Equivalently, number of nonisomorphic 1-factorizations of K_{n,n}. -/
opaque A000528 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000528.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000530: Let p(n, s, x) be predicate that number of occurrences of s's in x >= 2*n - the length of the longest sequence of s's in x. Then a(n)=#{x in {0,1}* | x ends in 0 and p(n,0,x) and (there is no prefix y of x such that p(n,0,y) or p(n,1,y))}. -/
opaque A000530 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000530.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000532: Number of Hamiltonian paths from NW to SW corners in an n X n grid. -/
opaque A000532 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000532.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000534: Numbers that are not the sum of 4 nonzero squares. -/
opaque A000534 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000534.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000535: Card matching: coefficients B[n,2] of t^2 in the reduced hit polynomial A[n,n,n](t). -/
opaque A000535 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000535.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000536: Number of 3-line Latin rectangles. -/
opaque A000536 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000536.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000544: Number of permutations of length n by rises. -/
opaque A000544 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000544.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000545: Number of ways of n-coloring a dodecahedron. -/
opaque A000545 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000545.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000546: First occurrence of n consecutive numbers that take same number of steps to reach 1 in 3x+1 problem. -/
opaque A000546 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000546.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000547: Number of steps to reach 1 in sequence A000546. -/
opaque A000547 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000547.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000549: Numbers that are the sum of 2 squares but not sum of 3 nonzero squares. -/
opaque A000549 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000549.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000550: Number of trees of diameter 7. -/
opaque A000550 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000550.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000551: Number of labeled rooted trees of height 2 with n nodes. -/
opaque A000551 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000551.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000552: Number of labeled rooted trees of height 3 with n nodes. -/
opaque A000552 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000552.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000553: Number of labeled rooted trees of height 4 with n nodes. -/
opaque A000553 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000553.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000555: Number of labeled trees of diameter 4 with n nodes. -/
opaque A000555 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000555.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000556: Expansion of exp(-x) / (1 - exp(x) + exp(-x)). -/
opaque A000556 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000556.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000557: Expansion of e.g.f. 1/(1 - 2*sinh(x)). -/
opaque A000557 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000557.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000558: Generalized Stirling numbers of second kind. -/
opaque A000558 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000558.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000559: Generalized Stirling numbers of second kind. -/
opaque A000559 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000559.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000560: Number of symmetric ways of folding a strip of n labeled stamps. -/
opaque A000560 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000560.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000562: Number of discordant permutations. -/
opaque A000562 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000562.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000563: Number of discordant permutations. -/
opaque A000563 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000563.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000564: Number of discordant permutations. -/
opaque A000564 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000564.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000565: Number of discordant permutations. -/
opaque A000565 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000565.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000568: Number of outcomes of unlabeled n-team round-robin tournaments. -/
opaque A000568 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000568.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000569: Number of graphical partitions of 2n. -/
opaque A000569 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000569.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000571: Number of different score sequences that are possible in an n-team round-robin tournament. -/
opaque A000571 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000571.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000573: Number of 4 X n normalized Latin rectangles. -/
opaque A000573 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000573.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000576: a(n) is the number of (n-2) X n normalized Latin rectangles. -/
opaque A000576 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000576.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000577: Number of triangular polyominoes (or triangular polyforms, or polyiamonds) with n cells (turning over is allowed, holes are allowed, must be connected along edges). -/
opaque A000577 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000577.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000585: Number of equivalence classes of Boolean functions of n variables under GL(n,2). -/
opaque A000585 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000585.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000586: Number of partitions of n into distinct primes. -/
opaque A000586 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000586.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000587: Rao Uppuluri-Carpenter numbers (or complementary Bell numbers): e.g.f. = exp(1 - exp(x)). -/
opaque A000587 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000587.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000594: Ramanujan's tau function (or Ramanujan numbers, or tau numbers). -/
opaque A000594 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000594.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000595: Number of binary relations on n unlabeled points. -/
opaque A000595 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000595.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000598: Number of rooted ternary trees with n nodes; number of n-carbon alkyl radicals C(n)H(2n+1) ignoring stereoisomers. -/
opaque A000598 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000598.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000599: Number of secondary alcohols (alkanols or alkyl alcohols C_n H_{2n+1} OH) with n carbon atoms. -/
opaque A000599 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000599.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000600: Number of tertiary alcohols (alkanols or alkyl alcohols C_n H_{2n+1} OH) with n carbon atoms. -/
opaque A000600 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000600.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000602: Number of n-node unrooted quartic trees; number of n-carbon alkanes C(n)H(2n+2) ignoring stereoisomers. -/
opaque A000602 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000602.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000604: Number of nonnegative solutions to x^2 + y^2 + z^2 <= n^2. -/
opaque A000604 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000604.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000605: Number of points of norm <= n in cubic lattice. -/
opaque A000605 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000605.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000606: Number of nonnegative solutions to x^2 + y^2 + z^2 <= n. -/
opaque A000606 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000606.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000607: Number of partitions of n into prime parts. -/
opaque A000607 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000607.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000608: Number of connected partially ordered sets with n unlabeled elements. -/
opaque A000608 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000608.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000609: Number of threshold functions of n or fewer variables. -/
opaque A000609 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000609.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000610: Number of self-complementary Boolean functions of n variables: see Comments for precise definition. -/
opaque A000610 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000610.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000612: Number of P-equivalence classes of switching functions of n or fewer variables, divided by 2. -/
opaque A000612 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000612.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000613: Number of Boolean functions of n variables. -/
opaque A000613 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000613.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000614: Number of complemented types of Boolean functions of n variables under action of AG(n,2). -/
opaque A000614 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000614.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000615: Threshold functions of exactly n variables. -/
opaque A000615 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000615.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000616: a(-1)=1 by convention; for n >= 0, a(n) = number of irreducible Boolean functions of n variables. -/
opaque A000616 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000616.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000617: Number of NP-equivalence classes of threshold functions of n or fewer variables. -/
opaque A000617 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000617.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000618: Number of nondegenerate Boolean functions of n variables: For n > 0, a(n) = A000616(n) - A000616(n-1). -/
opaque A000618 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000618.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000619: NP-equivalence classes of threshold functions of exactly n variables. -/
opaque A000619 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000619.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000620: Number of monosubstituted alkanes C(n-1)H(2n-1)-X with n-1 carbon atoms that are stereoisomers. -/
opaque A000620 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000620.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000621: Number of monosubstituted alkanes C(n-1)H(2n-1)-X with n-1 carbon atoms that are not stereoisomers. -/
opaque A000621 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000621.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000622: Number of monosubstituted alkanes C(n)H(2n+1)-X of the form shown in the Comments lines that are stereoisomers. -/
opaque A000622 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000622.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000623: Number of monosubstituted alkanes C(n)H(2n+1)-X of the form shown in the Comments lines that are stereoisomers. -/
opaque A000623 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000623.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000624: Number of monosubstituted alkanes C(n)H(2n+1)-X of the form shown in the Comments lines that are not stereoisomers. -/
opaque A000624 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000624.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000625: Number of n-node steric rooted ternary trees; number of n carbon alkyl radicals C(n)H(2n+1) taking stereoisomers into account. -/
opaque A000625 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000625.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000626: Number of stereoisomeric paraffins with n carbon atoms. -/
opaque A000626 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000626.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000627: Number of non-stereoisomeric paraffins with n carbon atoms. -/
opaque A000627 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000627.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000628: Number of n-node unrooted steric quartic trees; number of n-carbon alkanes C(n)H(2n+2) taking stereoisomers into account. -/
opaque A000628 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000628.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000629: Number of necklaces of partitions of n+1 labeled beads. -/
opaque A000629 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000629.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000630: Number of ways to represent n using the binary operator a * b = 2^a + b. -/
opaque A000630 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000630.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000631: Number of ethylene derivatives with n carbon atoms. -/
opaque A000631 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000631.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000632: Number of esters with n carbon atoms up to structural isomerism. -/
opaque A000632 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000632.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000633: Number of acyclic quaternary ammonium ions with n carbon atoms. -/
opaque A000633 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000633.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000634: Number of glycols with n carbon atoms. -/
opaque A000634 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000634.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000635: Number of paraffins C_n H_{2n} X Y with n carbon atoms. -/
opaque A000635 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000635.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000636: Number of paraffins C_n H_{2n} X_2 with n carbon atoms. -/
opaque A000636 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000636.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000637: Number of fixed-point-free permutation groups of degree n. -/
opaque A000637 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000637.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000638: Number of permutation groups of degree n; also number of conjugacy classes of subgroups of symmetric group S_n; also number of molecular species of degree n. -/
opaque A000638 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000638.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000639: Number of alkyl benzenes with n carbon atoms: C(n)H(2n-6). -/
opaque A000639 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000639.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000640: Number of paraffins C_n H_{2n-1} XYZ with n carbon atoms. -/
opaque A000640 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000640.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000641: Number of paraffins C_n H_{2n-1} X_3 with n carbon atoms. -/
opaque A000641 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000641.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000642: a(n) = number of isomeric hydrocarbons of the acetylene series with carbon content n. -/
opaque A000642 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000642.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000644: Number of loops of length 4n on square grid that turn at each step and return to start in original direction. -/
opaque A000644 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000644.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000645: Number of alkyls X^{II} C_n H_{2n+1} Y with n carbon atoms. -/
opaque A000645 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000645.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000646: Number of alkyls Y^{II} C_n H_{2n+2} with n carbon atoms. -/
opaque A000646 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000646.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000647: Alkyl naphthalenes C_{n+10} H_{2n+8} with n+10 carbon atoms. -/
opaque A000647 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000647.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000648: Number of alkyls C_{n+15} H_{2n+10} (Anthr.) with n carbon atoms. -/
opaque A000648 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000648.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000649: Number of alkyls C_{n+15} H_{2n+10} (Phenan) with n carbon atoms. -/
opaque A000649 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000649.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000650: Number of alkyls S C_{n+4} H_{2n+4} with n carbon atoms. -/
opaque A000650 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000650.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000651: Running time of Takeuchi function. -/
opaque A000651 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000651.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000657: Median Euler numbers (the middle numbers of Arnold's shuttle triangle). -/
opaque A000657 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000657.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000658: Strehl's sequence "C_n^(3)". -/
opaque A000658 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000658.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000660: Boustrophedon transform of 1,1,2,3,4,5,... -/
opaque A000660 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000660.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000661: Shifts 2 places left under boustrophedon transform. -/
opaque A000661 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000661.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000663: Number of binary relations on an infinite set, each with exactly n ordered pairs, up to isomorphism. -/
opaque A000663 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000663.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000664: Number of graphs with n edges. -/
opaque A000664 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000664.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000665: Number of 3-uniform hypergraphs on n unlabeled nodes, or equivalently number of relations with 3 arguments on n nodes. -/
opaque A000665 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000665.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000666: Number of symmetric relations on n nodes. -/
opaque A000666 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000666.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000667: Boustrophedon transform of all-1's sequence. -/
opaque A000667 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000667.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000668: Mersenne primes (primes of the form 2^n - 1). -/
opaque A000668 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000668.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000669: Number of series-reduced planted trees with n leaves. Also the number of essentially series series-parallel networks with n edges; also the number of essentially parallel series-parallel networks with n edges. -/
opaque A000669 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000669.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000670: Fubini numbers: number of preferential arrangements of n labeled elements; or number of weak orders on n labeled elements; or number of ordered partitions of [n]. -/
opaque A000670 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000670.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000671: Number of boron trees with n nodes, i.e. n-node rooted trees with degree <= 3 at root and out-degree <= 2 elsewhere. -/
opaque A000671 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000671.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000672: Number of 3-valent trees (= boron trees or binary trees) with n nodes. -/
opaque A000672 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000672.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000673: Number of bicentered 3-valent (or boron, or binary) trees with n nodes. -/
opaque A000673 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000673.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000674: Boustrophedon transform of 1, 2, 2, 2, 2, ... -/
opaque A000674 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000674.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000675: Number of centered 3-valent (or boron, or binary) trees with n nodes. -/
opaque A000675 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000675.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000676: Number of centered trees with n nodes. -/
opaque A000676 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000676.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000677: Number of bicentered trees with n nodes. -/
opaque A000677 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000677.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000678: Number of carbon (rooted) trees with n carbon atoms = unordered 4-tuples of ternary trees. -/
opaque A000678 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000678.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000679: Number of groups of order 2^n. -/
opaque A000679 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000679.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000681: Number of n X n matrices with nonnegative entries and every row and column sum 2. -/
opaque A000681 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000681.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000682: Semi-meanders: number of ways a semi-infinite directed curve can cross a straight line n times. -/
opaque A000682 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000682.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000683: Number of colorings of labeled graphs on n nodes using exactly 2 colors, divided by 4. -/
opaque A000683 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000683.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000684: Number of colored labeled n-node graphs with 2 interchangeable colors. -/
opaque A000684 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000684.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000685: Number of 3-colored labeled graphs on n nodes, divided by 3. -/
opaque A000685 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000685.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000686: Number of 4-colored labeled graphs on n nodes, divided by 4. -/
opaque A000686 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000686.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000687: Boustrophedon transform (first version) of Fibonacci numbers 0,1,1,2,3,5,... -/
opaque A000687 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000687.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000688: Number of Abelian groups of order n; number of factorizations of n into prime powers. -/
opaque A000688 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000688.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000690: Landau's approximation to population of x^2 + y^2 <= 2^n. -/
opaque A000690 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000690.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000691: Ramanujan's approximation to population of x^2 + y^2 <= 2^n. -/
opaque A000691 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000691.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000692: An approximation to population of x^2 + y^2 <= 2^n. -/
opaque A000692 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000692.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000693: Related to population of numbers of form x^2 + y^2. -/
opaque A000693 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000693.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000694: Related to population of numbers of form x^2 + y^2. -/
opaque A000694 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000694.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000696: Numbers k such that (1,k) is "good". -/
opaque A000696 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000696.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000697: Boustrophedon transform of 1, 1, 4, 9, 16, ... -/
opaque A000697 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000697.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000698: A problem of configurations: a(0) = 1; for n>0, a(n) = (2n-1)!! - Sum_{k=1..n-1} (2k-1)!! a(n-k). Also the number of shellings of an n-cube, divided by 2^n n!. -/
opaque A000698 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000698.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000699: Number of irreducible chord diagrams with 2n nodes. -/
opaque A000699 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000699.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000700: Expansion of Product_{k>=0} (1 + x^(2k+1)); number of partitions of n into distinct odd parts; number of self-conjugate partitions; number of symmetric Ferrers graphs with n nodes. -/
opaque A000700 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000700.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000701: One half of number of non-self-conjugate partitions; also half of number of asymmetric Ferrers graphs with n nodes. -/
opaque A000701 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000701.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000702: a(n) is the number of conjugacy classes in the alternating group A_n. -/
opaque A000702 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000702.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000705: n-th superior highly composite number A002201(n) is product of first n terms of this sequence. -/
opaque A000705 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000705.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000707: Number of permutations of [1,2,...,n] with n-1 inversions. -/
opaque A000707 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000707.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000708: a(n) = E(n+1) - 2*E(n), where E(i) is the Euler number A000111(i). -/
opaque A000708 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000708.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000709: Related to population of numbers of form x^2 + y^2. -/
opaque A000709 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000709.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000710: Number of partitions of n, with two kinds of 1, 2, 3 and 4. -/
opaque A000710 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000710.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000711: Number of partitions of n, with three kinds of 1,2,3 and 4 and two kinds of 5,6,7,... -/
opaque A000711 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000711.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000712: a(n) = number of partitions of n into parts of 2 kinds. -/
opaque A000712 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000712.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000713: EULER transform of 3, 2, 2, 2, 2, 2, 2, 2, ... -/
opaque A000713 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000713.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000714: Number of partitions of n, with three kinds of 1 and 2 and two kinds of 3,4,5,.... -/
opaque A000714 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000714.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000715: Number of partitions of n, with three kinds of 1,2 and 3 and two kinds of 4,5,6,.... -/
opaque A000715 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000715.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000716: Number of partitions of n into parts of 3 kinds. -/
opaque A000716 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000716.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000717: Number of graphs with n nodes and floor(n(n-1)/4) edges. -/
opaque A000717 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000717.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000718: Boustrophedon transform of triangular numbers 1,1,3,6,10,... -/
opaque A000718 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000718.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000719: Number of disconnected graphs with n nodes. -/
opaque A000719 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000719.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000721: Number of NP-equivalence classes of balanced Boolean functions of n variables. -/
opaque A000721 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000721.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000723:  -/
opaque A000723 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000723.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000726: Number of partitions of n in which no parts are multiples of 3. -/
opaque A000726 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000726.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000727: Expansion of Product_{k >= 1} (1 - x^k)^4. -/
opaque A000727 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000727.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000728: Expansion of Product_{n>=1} (1-x^n)^5. -/
opaque A000728 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000728.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000729: Expansion of Product_{k >= 1} (1 - x^k)^6. -/
opaque A000729 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000729.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000730: Expansion of Product_{n>=1} (1 - x^n)^7. -/
opaque A000730 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000730.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000731: Expansion of Product (1 - x^k)^8 in powers of x. -/
opaque A000731 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000731.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000732: Boustrophedon transform of 1 & primes: 1,2,3,5,7,... -/
opaque A000732 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000732.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000733: Boustrophedon transform of partition numbers 1, 1, 1, 2, 3, 5, 7, ... -/
opaque A000733 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000733.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000734: Boustrophedon transform of 1,1,2,4,8,16,32,... -/
opaque A000734 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000734.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000735: Expansion of Product_{k>=1} (1 - x^k)^12. -/
opaque A000735 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000735.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000736: Boustrophedon transform of Catalan numbers 1, 1, 1, 2, 5, 14, ... -/
opaque A000736 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000736.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000737: Boustrophedon transform of natural numbers, cf. A000027. -/
opaque A000737 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000737.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000738: Boustrophedon transform (first version) of Fibonacci numbers 0,1,1,2,3,... -/
opaque A000738 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000738.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000739: Expansion of Product_{k>=1} (1 - x^k)^16. -/
opaque A000739 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000739.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000744: Boustrophedon transform (second version) of Fibonacci numbers 1,1,2,3,... -/
opaque A000744 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000744.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000745: Boustrophedon transform of squares. -/
opaque A000745 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000745.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000746: Boustrophedon transform of triangular numbers. -/
opaque A000746 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000746.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000747: Boustrophedon transform of primes. -/
opaque A000747 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000747.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000751: Boustrophedon transform of partition numbers. -/
opaque A000751 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000751.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000752: Boustrophedon transform of powers of 2. -/
opaque A000752 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000752.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000753: Boustrophedon transform of Catalan numbers. -/
opaque A000753 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000753.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000754: Boustrophedon transform of odd numbers. -/
opaque A000754 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000754.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000755: No-3-in-line problem on n X n grid: total number of ways of placing 2n points on n X n grid so no 3 are in a line. No symmetries are taken into account. -/
opaque A000755 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000755.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000756: Boustrophedon transform of sequence 1,1,0,0,0,0,... -/
opaque A000756 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000756.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000758: Related to cumulative height of rooted plane trees. -/
opaque A000758 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000758.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000759: Number of n-step self-avoiding walks on cubic lattice ending at point with x=0. -/
opaque A000759 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000759.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000760: Number of n-step self-avoiding walks on cubic lattice ending at point with x=1. -/
opaque A000760 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000760.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000761: Number of n-step self-avoiding walks on cubic lattice ending at point with x=2. -/
opaque A000761 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000761.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000762: Number of n-step self-avoiding walks on cubic lattice ending at point with x=3. -/
opaque A000762 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000762.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000763: Number of interval orders constructed from n intervals of generic lengths. -/
opaque A000763 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000763.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000764: Boustrophedon transform of Bell numbers. -/
opaque A000764 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000764.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000765: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = 0. -/
opaque A000765 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000765.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000766: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = 1. -/
opaque A000766 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000766.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000767: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = 2. -/
opaque A000767 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000767.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000768: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = 3. -/
opaque A000768 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000768.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000769: No-3-in-line problem: number of inequivalent ways of placing 2n points on an n X n grid so that no 3 are in a line. -/
opaque A000769 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000769.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000771: Stirling numbers of second kind, S(n,7). -/
opaque A000771 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000771.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000772: E.g.f. exp(tan(x) + sec(x) - 1). -/
opaque A000772 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000772.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000774: a(n) = n!*(1 + Sum_{i=1..n} 1/i). -/
opaque A000774 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000774.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000775: a(n) = n! * (n + 1 + 2*Sum_{k=1...n} 1/k). -/
opaque A000775 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000775.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000779: a(n) = 2*(2n-1)!!-(n-1)!*2^(n-1), where (2n-1)!! is A001147(n). -/
opaque A000779 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000779.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000780: a(n) = (n+1)!/2 + (n-1)(n-1)!. -/
opaque A000780 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000780.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000784: Number of symmetrical planar partitions of n (planar partitions (A000219) that when regarded as 3-D objects have just one symmetry plane). -/
opaque A000784 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000784.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000785: Number of asymmetrical planar partitions of n: planar partitions (A000219) that when regarded as 3-D objects have no symmetry. -/
opaque A000785 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000785.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000786: Number of inequivalent planar partitions of n, when considering them as 3D objects. -/
opaque A000786 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000786.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000787: Strobogrammatic numbers: the same upside down. -/
opaque A000787 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000787.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000789: Maximal order of a triangle-free cyclic graph with no independent set of size n. -/
opaque A000789 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000789.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000791: Ramsey numbers R(3,n). -/
opaque A000791 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000791.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000793: Landau's function g(n): largest order of permutation of n elements. Equivalently, largest LCM of partitions of n. -/
opaque A000793 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000793.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000795: Salié numbers: expansion of cosh x / cos x = Sum_{n >= 0} a(n)*x^(2n)/(2n)!. -/
opaque A000795 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000795.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000796: Decimal expansion of Pi (or digits of Pi). -/
opaque A000796 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000796.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000797: Numbers that are not the sum of 4 tetrahedral numbers. -/
opaque A000797 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000797.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000798: Number of different quasi-orders (or topologies, or transitive digraphs) with n labeled elements. -/
opaque A000798 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000798.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000800: Sum of upward diagonals of Eulerian triangle. -/
opaque A000800 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000800.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000802: Maximal number of states in the minimal deterministic finite automaton accepting a language over a binary alphabet consisting of some words of length n. -/
opaque A000802 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000802.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000804: Permanent of a certain cyclic n X n (0,1) matrix. -/
opaque A000804 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000804.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000805: Permanent of a certain cyclic n X n (0,1) matrix. -/
opaque A000805 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000805.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000806: Bessel polynomial y_n(-1). -/
opaque A000806 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000806.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000807: Quadratic invariants. -/
opaque A000807 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000807.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000810: Expansion of e.g.f. (sin x + cos x)/cos 3x. -/
opaque A000810 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000810.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000811:  -/
opaque A000811 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000811.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000812:  -/
opaque A000812 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000812.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000813: Expansion of (sin x + cos x)/cos 4x. -/
opaque A000813 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000813.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000814: Number of switching networks (see Harrison reference for precise definition). -/
opaque A000814 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000814.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000816: E.g.f.: Sum_{n >= 0} a(n) * x^(2*n) / (2*n)! = sin(x)^2 / cos(2*x). -/
opaque A000816 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000816.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000817: Number of switching networks under action of GL_n(Z_2) acting on 2 variables. -/
opaque A000817 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000817.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000818:  -/
opaque A000818 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000818.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000819: E.g.f.: cos(x)^2 / cos(2x) = Sum_{n >= 0} a(n) * x^(2n) / (2n)!. -/
opaque A000819 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000819.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000822: Expansion of (sin^2 x + sin x) /cos 2x. -/
opaque A000822 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000822.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000823:  -/
opaque A000823 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000823.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000825: Expansion of cos x (1 + sin x ) /cos 2x. -/
opaque A000825 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000825.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000828: E.g.f. cos(x)/(cos(x) - sin(x)). -/
opaque A000828 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000828.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000831: Expansion of e.g.f. (1 + tan(x))/(1 - tan(x)). -/
opaque A000831 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000831.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000834: Expansion of e.g.f. exp(x)*(1 + tan(x))/(1 - tan(x)). -/
opaque A000834 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000834.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000837: Number of partitions of n into relatively prime parts. Also aperiodic partitions. -/
opaque A000837 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000837.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000840: Number of cubic bicolored graphs on n unlabeled nodes admitting an automorphism exchanging the colors. -/
opaque A000840 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000840.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000841:  -/
opaque A000841 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000841.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000842:  -/
opaque A000842 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000842.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000843: Number of quartic bicolored graphs on n unlabeled nodes admitting an automorphism exchanging the colors. -/
opaque A000843 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000843.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000847: Number of n-input 2-output switching networks under action of GL(n,2) on the inputs and complementing group C(2,2) on the outputs. -/
opaque A000847 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000847.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000848:  -/
opaque A000848 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000848.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000849: Number of primes <= product of first n primes, A002110(n). -/
opaque A000849 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000849.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000864: Deceptive nonprimes: composite numbers k that divide the repunit R_{k-1}. -/
opaque A000864 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000864.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000866: 2^n written in base 5. -/
opaque A000866 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000866.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000871:  -/
opaque A000871 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000871.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000877: Number of switching networks with GL(n,2) acting on the domain and GL(2,2) acting on the range. -/
opaque A000877 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000877.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000882: Number of twin prime pairs <= product of first n primes. -/
opaque A000882 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000882.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000885: Number of twin prime pairs < square of n-th prime. -/
opaque A000885 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000885.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000888: a(n) = (2*n)!^2 / ((n+1)!*n!^3). -/
opaque A000888 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000888.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000892: Number of switching networks with GL(n,2) acting on the domain and AG(2,2) acting on the range. -/
opaque A000892 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000892.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000899: Number of solutions to the rook problem on an n X n board having a certain symmetry group (see Robinson for details). -/
opaque A000899 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000899.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000901: Number of solutions to the rook problem on a 2n X 2n board having a certain symmetry group (see Robinson for details). -/
opaque A000901 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000901.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000903: Number of inequivalent ways of placing n nonattacking rooks on n X n board up to rotations and reflections of the board. -/
opaque A000903 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000903.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000904: a(n) = (n+1)*a(n-1) + (n+2)*a(n-2) + a(n-3); a(1)=0, a(2)=3, a(3)=13. -/
opaque A000904 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000904.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000905: Hamilton numbers. -/
opaque A000905 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000905.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000907: Second-order reciprocal Stirling number (Fekete) a(n) = [[2n+2, n]]. The number of n-orbit permutations of a (2n+2)-set with at least 2 elements in each orbit. Also known as associated Stirling numbers of the first kind (e.g., Comtet). -/
opaque A000907 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000907.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000908: Atom-rooted polyenoids with n edges with symmetry class C_s. -/
opaque A000908 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000908.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000913: Number of bond-rooted polyenoids with n edges. -/
opaque A000913 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000913.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000920: Differences of 0: 6!*Stirling2(n,6). -/
opaque A000920 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000920.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000921: Primes p of the form 3k+1 such that Sum_{x=1..p} cos(2*Pi*x^3/p) > sqrt(p). -/
opaque A000921 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000921.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000922: Primes p of the form 3k+1 such that -sqrt(p) < Sum_{x=1..p} cos(2*Pi*x^3/p) < sqrt(p). -/
opaque A000922 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000922.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000923: Primes p of the form 3k+1 such that Sum_{x=1..p} cos(2*Pi*x^3/p) < -sqrt(p). -/
opaque A000923 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000923.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000924: Class number of Q(sqrt(-n)), n squarefree. -/
opaque A000924 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000924.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000926: Euler's "numerus idoneus" (or "numeri idonei", or idoneal, or suitable, or convenient numbers). -/
opaque A000926 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000926.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000927: "First factor" (or relative class number) h- for cyclotomic field Q( exp(2 Pi / prime(n)) ). -/
opaque A000927 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000927.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000928: Irregular primes: primes p such that at least one of the numerators of the Bernoulli numbers B_2, B_4, ..., B_{p-3} (A000367) is divisible by p. -/
opaque A000928 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000928.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000929: Dimension of the n-th graded piece of the mod-2 Steenrod algebra A_2. -/
opaque A000929 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000929.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000935: Number of free planar polyenoids with 2n nodes and symmetry point group C_{2h}. -/
opaque A000935 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000935.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000938: Number of collinear point-triples in an n X n grid. -/
opaque A000938 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000938.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000939: Number of inequivalent n-gons. -/
opaque A000939 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000939.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000940: Number of n-gons with n vertices. -/
opaque A000940 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000940.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000941: Number of free planar polyenoids with n nodes and symmetry point group C_s. -/
opaque A000941 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000941.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000944: Number of polyhedra (or 3-connected simple planar graphs) with n nodes. -/
opaque A000944 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000944.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000945: Euclid-Mullin sequence: a(1) = 2, a(n+1) is smallest prime factor of 1 + Product_{k=1..n} a(k). -/
opaque A000945 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000945.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000946: Euclid-Mullin sequence: a(1) = 2, a(n+1) is the largest prime factor of 1 + Product_{k=1..n} a(k). -/
opaque A000946 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000946.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000948: Number of free nonplanar polyenoids with n nodes and symmetry point group C_s. -/
opaque A000948 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000948.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000949: Number of forests with n nodes and height at most 2. -/
opaque A000949 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000949.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000950: Number of forests with n nodes and height at most 3. -/
opaque A000950 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000950.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000951: Number of forests with n nodes and height at most 4. -/
opaque A000951 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000951.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000952: Numbers k == 2 (mod 4) that are the orders of conference matrices. -/
opaque A000952 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000952.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000953: Number of free nonplanar polyenoids with n nodes. -/
opaque A000953 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000953.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000954: Conjecturally largest even integer which is an unordered sum of two primes in exactly n ways. -/
opaque A000954 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000954.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000955: A sequence satisfying (a(2n+1) + 1)^3 = Sum_{k=1..2n+1} a(k)^3. -/
opaque A000955 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000955.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000959: Lucky numbers. -/
opaque A000959 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000959.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000960: Flavius Josephus's sieve: Start with the natural numbers; at the k-th sieving step, remove every (k+1)-st term of the sequence remaining after the (k-1)-st sieving step; iterate. -/
opaque A000960 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000960.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000962: The convergent sequence A_n for the ternary continued fraction (3,1;2,2) of period 2. -/
opaque A000962 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000962.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000965: Numerators of expansion of e.g.f. sinh(x) / sin(x) (even powers only). -/
opaque A000965 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000965.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000974: Conjecturally the number of even integers the sum of two primes in exactly n ways. -/
opaque A000974 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000974.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000976: Period of 1/n! in base 10. -/
opaque A000976 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000976.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000978: Wagstaff numbers: numbers k such that (2^k + 1)/3 is prime. -/
opaque A000978 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000978.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000979: Wagstaff primes: primes of form (2^p + 1)/3. -/
opaque A000979 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000979.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000980: Number of ways of writing 0 as Sum_{k=-n..n} e(k)*k, where e(k) is 0 or 1. -/
opaque A000980 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000980.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000983: Size of minimal binary covering code of length n and covering radius 1. -/
opaque A000983 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000983.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000985: Number of n X n symmetric matrices with nonnegative entries and all row sums 2. -/
opaque A000985 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000985.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000986: Number of n X n symmetric matrices with (0,1) entries and all row sums 2. -/
opaque A000986 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000986.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000987: Number of stochastic matrices of integers. -/
opaque A000987 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000987.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000988: Number of one-sided polyominoes with n cells. -/
opaque A000988 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000988.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000990: Number of plane partitions of n with at most two rows. -/
opaque A000990 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000990.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000991: Number of 3-line partitions of n. -/
opaque A000991 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000991.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000992: "Half-Catalan numbers": a(n) = Sum_{k=1..floor(n/2)} a(k)*a(n-k) with a(1) = 1. -/
opaque A000992 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000992.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000994: Shifts 2 places left under binomial transform. -/
opaque A000994 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000994.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000995: Shifts left two terms under the binomial transform. -/
opaque A000995 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000995.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000996: Shifts 3 places left under binomial transform. -/
opaque A000996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000997: From a differential equation. -/
opaque A000997 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000997.provenance : SequenceMachineLib.Provenance := .undefined

/-- A000998: From a differential equation. -/
opaque A000998 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A000998.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001009: Triangle giving number L(n,k) of normalized k X n Latin rectangles. -/
opaque A001009 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001009.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001035: Number of partially ordered sets ("posets") with n labeled elements (or labeled acyclic transitive digraphs). -/
opaque A001035 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001035.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001100: Triangle read by rows: T(n,k) = number of permutations of length n with exactly k rising or falling successions, for n >= 1, 0 <= k <= n-1. -/
opaque A001100 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001100.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001104: Numbers k such that k / product of digits of k is a square. -/
opaque A001104 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001104.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001113: Decimal expansion of e. -/
opaque A001113 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001113.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001150: Number of n-input 2-output switching networks with GL(n,2) acting on the input and S(2) and C(2,2) acting on the output. -/
opaque A001150 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001150.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001168: Number of fixed polyominoes with n cells. -/
opaque A001168 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001168.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001175: Pisano periods (or Pisano numbers): period of Fibonacci numbers mod n. -/
opaque A001175 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001175.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001190: Wedderburn-Etherington numbers: unlabeled binary rooted trees (every node has outdegree 0 or 2) with n endpoints (and 2n-1 nodes in all). -/
opaque A001190 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001190.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001235: Taxi-cab numbers: sums of 2 cubes in more than 1 way. -/
opaque A001235 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001235.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001250: Number of alternating permutations of order n. -/
opaque A001250 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001250.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001253: Number of permutations of order n with the length of longest run equal to 5. -/
opaque A001253 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001253.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001255: Squares of partition numbers. -/
opaque A001255 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001255.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001256: Squares of numbers of trees. -/
opaque A001256 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001256.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001260: Number of permutations of length n with 4 consecutive ascending pairs. -/
opaque A001260 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001260.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001267: One-half the number of permutations of length n with exactly 3 rising or falling successions. -/
opaque A001267 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001267.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001269: Table T(n,k) in which n-th row lists prime factors of 2^n + 1 (n >= 0), with repetition. -/
opaque A001269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001320: Number of self-complementary Boolean functions of n variables, up to equivalence under the group (C_2)^n of all 2^n complementations of variables. -/
opaque A001320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001339: a(n) = Sum_{k=0..n} (k+1)! binomial(n,k). -/
opaque A001339 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001339.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001349: Number of simple connected graphs on n unlabeled nodes. -/
opaque A001349 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001349.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001371: Number of n-bead necklaces with beads of 2 colors and primitive period n, when turning over is allowed. -/
opaque A001371 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001371.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001383: Number of n-node rooted trees of height at most 3. -/
opaque A001383 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001383.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001384: Number of n-node trees of height at most 4. -/
opaque A001384 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001384.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001385: Number of n-node trees of height at most 5. -/
opaque A001385 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001385.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001419: Number of n-celled polyominoes with holes. -/
opaque A001419 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001419.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001586: Generalized Euler numbers, or Springer numbers. -/
opaque A001586 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001586.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001587: Generalized Euler numbers. -/
opaque A001587 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001587.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001597: Perfect powers: m^k where m > 0 and k >= 2. -/
opaque A001597 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001597.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001622: Decimal expansion of golden ratio phi (or tau) = (1 + sqrt(5))/2. -/
opaque A001622 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001622.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001660: Hypotenusal numbers. -/
opaque A001660 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001660.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001863: Normalized total height of rooted trees with n nodes. -/
opaque A001863 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001863.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001865: Number of connected functions on n labeled nodes. -/
opaque A001865 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001865.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001867: Number of n-bead necklaces with 3 colors. -/
opaque A001867 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001867.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001880: Coefficients of Bessel polynomials y_n (x). -/
opaque A001880 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001880.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001895: Number of rooted planar 2-trees with n nodes. -/
opaque A001895 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001895.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001913: Full reptend primes: primes with primitive root 10. -/
opaque A001913 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001913.provenance : SequenceMachineLib.Provenance := .undefined

/-- A001935: Number of partitions with no even part repeated; partitions of n in which no parts are multiples of 4. -/
opaque A001935 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A001935.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002050: Number of simplices in barycentric subdivision of n-simplex. -/
opaque A002050 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002050.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002079: Number of N-equivalence classes of threshold functions of exactly n variables. -/
opaque A002079 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002079.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002093: Highly abundant numbers: numbers k such that sigma(k) > sigma(m) for all m < k. -/
opaque A002093 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002093.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002094: Number of unlabeled connected loop-less graphs on n nodes containing exactly one cycle (of length at least 2) and with all nodes of degree <= 4. -/
opaque A002094 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002094.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002102: Number of nonnegative solutions to x^2 + y^2 + z^2 = n. -/
opaque A002102 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002102.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002110: Primorial numbers (first definition): product of first n primes. Sometimes written prime(n)#. -/
opaque A002110 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002110.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002201: Superior highly composite numbers: positive integers n for which there is an e > 0 such that d(n)/n^e >= d(k)/k^e for all k > 1, where the function d(n) counts the divisors of n (A000005). -/
opaque A002201 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002201.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002386: Primes (lower end) with record gaps to the next consecutive prime: primes p(k) where p(k+1) - p(k) exceeds p(j+1) - p(j) for all j < k. -/
opaque A002386 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002386.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002436: E.g.f.: Sum_{n >= 0} a(n)*x^(2*n)/(2*n)! = sec(2*x). -/
opaque A002436 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002436.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002439: Glaisher's T numbers. -/
opaque A002439 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002439.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002482: Theta series of Borcherds' 27-dimensional unimodular lattice U_27. -/
opaque A002482 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002482.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002494: Number of n-node graphs without isolated nodes. -/
opaque A002494 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002494.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002500: Number of self-converse relations on n points. -/
opaque A002500 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002500.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002635: Number of partitions of n into 4 squares. -/
opaque A002635 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002635.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002809: Increasing values of A000793 (largest order of permutation of n elements). -/
opaque A002809 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002809.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002828: Least number of squares that add up to n. -/
opaque A002828 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002828.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002854: Number of unlabeled Euler graphs with n nodes; number of unlabeled two-graphs with n nodes; number of unlabeled switching classes of graphs with n nodes; number of switching classes of unlabeled signed complete graphs on n nodes; number of Seidel matrices of order n. -/
opaque A002854 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002854.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002860: Number of Latin squares of order n; or labeled quasigroups. -/
opaque A002860 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002860.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002865: Number of partitions of n that do not contain 1 as a part. -/
opaque A002865 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002865.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002882: Nearest integer to Bernoulli number B_{2n}. -/
opaque A002882 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002882.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002906: High temperature series for spin-1/2 Ising magnetic susceptibility on 2D square lattice. -/
opaque A002906 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002906.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002991: Number of n-node trees with a forbidden limb of length 5. -/
opaque A002991 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002991.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002995: Number of unlabeled planar trees (also called plane trees) with n nodes. -/
opaque A002995 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002995.provenance : SequenceMachineLib.Provenance := .undefined

/-- A002998: Smallest multiple of n whose digits sum to n. -/
opaque A002998 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A002998.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003003: Size of the largest subset of the numbers [1...n] which doesn't contain a 4-term arithmetic progression. -/
opaque A003003 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003003.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003094: Number of unlabeled connected planar simple graphs with n nodes. -/
opaque A003094 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003094.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003100: Decimal Gray code for n. -/
opaque A003100 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003100.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003106: Number of partitions of n into parts 5k+2 or 5k+3. -/
opaque A003106 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003106.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003114: Number of partitions of n into parts 5k+1 or 5k+4. -/
opaque A003114 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003114.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003171: Negated discriminants of orders of imaginary quadratic fields with 1 class per genus (a finite sequence). -/
opaque A003171 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003171.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003180: Number of equivalence classes of Boolean functions of n variables under action of symmetric group. -/
opaque A003180 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003180.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003181: Number of P-equivalence classes of nondegenerate Boolean functions of n variables. -/
opaque A003181 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003181.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003214: Number of binary forests with n nodes. -/
opaque A003214 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003214.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003239: Number of rooted planar trees with n non-root nodes: circularly cycling the subtrees at the root gives equivalent trees. -/
opaque A003239 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003239.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003245: Nearest integer to -4n/Bernoulli(2n). -/
opaque A003245 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003245.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003263: Number of representations of n as a sum of distinct Lucas numbers 1, 3, 4, 7, 11, ... (A000204). -/
opaque A003263 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003263.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003292: Number of 4-line partitions of n decreasing across rows. -/
opaque A003292 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003292.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003375: Numbers that are the sum of 8 positive 7th powers. -/
opaque A003375 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003375.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003465: Number of ways to cover an n-set. -/
opaque A003465 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003465.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003471: Number of permutations with no hits on 2 main diagonals. -/
opaque A003471 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003471.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003483: Number of square permutations of n elements. -/
opaque A003483 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003483.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003558: Least number m > 0 such that 2^m == +-1 (mod 2n + 1). -/
opaque A003558 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003558.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003586: 3-smooth numbers: numbers of the form 2^i*3^j with i, j >= 0. -/
opaque A003586 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003586.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003639: Number of classes per genus in Q(sqrt -n), n squarefree. -/
opaque A003639 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003639.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003643: Number of genera of Q(sqrt(-n)), n squarefree. -/
opaque A003643 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003643.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003701: Expansion of e.g.f. exp(x)/cos(x). -/
opaque A003701 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003701.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003707: Expansion of e.g.f. log(1 + tan(x)). -/
opaque A003707 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003707.provenance : SequenceMachineLib.Provenance := .undefined

/-- A003814: Numbers k such that the continued fraction for sqrt(k) has odd period length. -/
opaque A003814 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A003814.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004011: Theta series of D_4 lattice; Fourier coefficients of Eisenstein series E_{gamma,2}. -/
opaque A004011 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004011.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004014: Norms of vectors in the b.c.c. lattice. -/
opaque A004014 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004014.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004015: Theta series of face-centered cubic (f.c.c.) lattice. -/
opaque A004015 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004015.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004016: Theta series of planar hexagonal lattice A_2. -/
opaque A004016 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004016.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004018: Theta series of square lattice (or number of ways of writing n as a sum of 2 squares). Often denoted by r(n) or r_2(n). -/
opaque A004018 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004018.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004066: Number of simple regular trivalent bicolored graphs with 2n nodes. -/
opaque A004066 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004066.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004086: Read n backwards (referred to as R(n) in many sequences). -/
opaque A004086 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004086.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004184: Omit 9's from n. -/
opaque A004184 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004184.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004214: Positive numbers that are not the sum of three nonzero squares. -/
opaque A004214 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004214.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004215: Numbers that are the sum of 4 but no fewer nonzero squares. -/
opaque A004215 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004215.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004304: Number of nonseparable planar tree-rooted maps with n edges. -/
opaque A004304 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004304.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004409: Expansion of ( Sum_{n = -infinity..infinity} x^(n^2) )^(-8). -/
opaque A004409 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004409.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004432: Numbers that are the sum of 3 distinct nonzero squares. -/
opaque A004432 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004432.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004666: Powers of 3 written in base 12. (Next term contains a non-decimal character.) -/
opaque A004666 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004666.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004890: Numbers that are the sum of at most 6 positive 9th powers. -/
opaque A004890 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004890.provenance : SequenceMachineLib.Provenance := .undefined

/-- A004903: Numbers that are the sum of at most 8 nonzero 10th powers. -/
opaque A004903 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A004903.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005001: a(n) = Sum_{k=0..n-1} Bell(k), where the Bell numbers Bell(k) are given in A000110. -/
opaque A005001 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005001.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005109: Class 1- (or Pierpont) primes: primes of the form 2^t*3^u + 1. -/
opaque A005109 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005109.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005179: Smallest number with exactly n divisors. -/
opaque A005179 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005179.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005250: Record gaps between primes. -/
opaque A005250 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005250.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005279: Numbers having divisors d, e with d < e < 2*d. -/
opaque A005279 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005279.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005368: Occurrences of principal character. -/
opaque A005368 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005368.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005384: Sophie Germain primes p: 2p+1 is also prime. -/
opaque A005384 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005384.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005385: Safe primes p: (p-1)/2 is also prime. -/
opaque A005385 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005385.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005437: Column of Kempner tableau. -/
opaque A005437 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005437.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005627: Number of achiral planted trees with n nodes. -/
opaque A005627 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005627.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005628: Number of chiral planted trees with n nodes. -/
opaque A005628 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005628.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005638: Number of unlabeled trivalent (or cubic) graphs with 2n nodes. -/
opaque A005638 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005638.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005647: Salié numbers. -/
opaque A005647 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005647.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005703: Number of n-node connected graphs with at most one cycle. -/
opaque A005703 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005703.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005751: Number of matched trees with 2n nodes. -/
opaque A005751 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005751.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005867: a(0) = 1; for n > 0, a(n) = (prime(n)-1)*a(n-1). -/
opaque A005867 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005867.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005873: Theta series of hexagonal close-packing with respect to tetrahedral hole. -/
opaque A005873 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005873.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005875: Theta series of simple cubic lattice; also number of ways of writing a nonnegative integer n as a sum of 3 squares (zero being allowed). -/
opaque A005875 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005875.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005923: From solution to a difference equation. -/
opaque A005923 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005923.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005939: Pseudoprimes to base 10. -/
opaque A005939 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005939.provenance : SequenceMachineLib.Provenance := .undefined

/-- A005987: Number of symmetric plane partitions of n. -/
opaque A005987 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A005987.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006058: Number of connected labeled T_4-topologies with n points. -/
opaque A006058 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006058.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006206: Number of aperiodic binary necklaces of length n with no subsequence 00, excluding the necklace "0". -/
opaque A006206 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006206.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006330: Number of corners, or planar partitions of n with only one row and one column. -/
opaque A006330 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006330.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006534: Number of one-sided triangular polyominoes (n-iamonds) with n cells; turning over not allowed, holes are allowed. -/
opaque A006534 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006534.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006535: Number of one-sided hexagonal polyominoes with n cells. -/
opaque A006535 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006535.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006577: Number of halving and tripling steps to reach 1 in '3x+1' problem, or -1 if 1 is never reached. -/
opaque A006577 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006577.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006644: Indices of records in Landau's function A000793. -/
opaque A006644 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006644.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006706: Self-convolution of numbers of trees on n nodes. -/
opaque A006706 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006706.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006719: a(n) = A000905(n) + 1. -/
opaque A006719 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006719.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006759: Number of one-sided strictly 3-dimensional polyominoes with n cells. -/
opaque A006759 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006759.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006765: Number of strictly 2-dimensional polyominoes with n cells. -/
opaque A006765 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006765.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006822: Number of connected regular graphs of degree 6 (or sextic graphs) with n nodes. -/
opaque A006822 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006822.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006856: Maximal number of edges in n-node graph of girth at least 5. -/
opaque A006856 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006856.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006874: Number of mu-atoms of period n on continent of Mandelbrot set. -/
opaque A006874 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006874.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006883: Long period primes: the decimal expansion of 1/p has period p-1. -/
opaque A006883 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006883.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006897: a(n) is the number of hierarchical linear models on n unlabeled factors allowing 2-way interactions (but no higher order interactions); or the number of unlabeled simple graphs with <= n nodes. -/
opaque A006897 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006897.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006905: Number of transitive relations on n labeled nodes. -/
opaque A006905 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006905.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006961: Number of mappings from n points to themselves with in-degree <= 2. -/
opaque A006961 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006961.provenance : SequenceMachineLib.Provenance := .undefined

/-- A006983: Number of simple perfect squared squares of order n up to symmetry. -/
opaque A006983 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A006983.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007014: Largest prime <= Product prime(k). -/
opaque A007014 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007014.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007047: Number of chains in power set of n-set. -/
opaque A007047 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007047.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007153: Dedekind numbers: number of monotone Boolean functions or antichains of subsets of an n-set containing at least one nonempty set. -/
opaque A007153 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007153.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007289: Expansion of e.g.f. (sin(2*x) + cos(x)) / cos(3*x). -/
opaque A007289 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007289.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007326: Difference between A000294 and the number of solid partitions of n (A000293). -/
opaque A007326 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007326.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007327: Difference between two partition g.f.s. -/
opaque A007327 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007327.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007328: Difference between the number of 5-dimensional partitions of n and an approximation derived from binomial(n,4). -/
opaque A007328 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007328.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007329: Unexplained difference between two partition generating functions. -/
opaque A007329 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007329.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007330: Difference between the number of 7-dimensional partitions of n and an approximation derived from binomial(n,6). -/
opaque A007330 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007330.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007335: MU-numbers: next term is uniquely the product of 2 earlier terms. -/
opaque A007335 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007335.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007376: The almost-natural numbers: write n in base 10 and juxtapose digits. -/
opaque A007376 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007376.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007418: Numerators of expansion of exp x / sin x. -/
opaque A007418 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007418.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007476: Shifts 2 places left under binomial transform. -/
opaque A007476 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007476.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007653: Coefficients of L-series for elliptic curve "37a1": y^2 + y = x^3 - x. -/
opaque A007653 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007653.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007692: Numbers that are the sum of 2 nonzero squares in 2 or more ways. -/
opaque A007692 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007692.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007694: Numbers k such that phi(k) divides k. -/
opaque A007694 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007694.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007716: Number of polynomial symmetric functions of matrix of order n under separate row and column permutations. -/
opaque A007716 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007716.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007743: Number of achiral polyominoes with n cubical cells of the regular tiling with Schläfli symbol {4,3,4} (or polycubes). -/
opaque A007743 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007743.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007748: Number of self-converse oriented trees with n nodes. -/
opaque A007748 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007748.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007782: Number of factors in the infinite word formed by the Kolakoski sequence A000002. -/
opaque A007782 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007782.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007867: Complementary pairs of `homogenized' N-free graphs with n nodes. -/
opaque A007867 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007867.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007869: Number of complementary pairs of graphs on n nodes. Also number of unlabeled graphs with n nodes and an even number of edges. -/
opaque A007869 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007869.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007878: Number of terms in discriminant of generic polynomial of degree n. -/
opaque A007878 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007878.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007908: Triangle of the gods: to get a(n), concatenate the decimal numbers 1,2,3,...,n. -/
opaque A007908 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007908.provenance : SequenceMachineLib.Provenance := .undefined

/-- A007966: First factor in happy factorization of n. -/
opaque A007966 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A007966.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008275: Triangle read by rows of Stirling numbers of first kind, s(n,k), n >= 1, 1 <= k <= n. -/
opaque A008275 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008275.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008276: Triangle of Stirling numbers of first kind, s(n, n-k+1), n >= 1, 1 <= k <= n. Also triangle T(n,k) giving coefficients in expansion of n!*binomial(x,n)/x in powers of x. -/
opaque A008276 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008276.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008277: Triangle of Stirling numbers of the second kind, S2(n,k), n >= 1, 1 <= k <= n. -/
opaque A008277 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008277.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008280: Boustrophedon version of triangle of Euler-Bernoulli or Entringer numbers read by rows. -/
opaque A008280 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008280.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008281: Triangle of Euler-Bernoulli or Entringer numbers read by rows. -/
opaque A008281 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008281.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008282: Triangle of Euler-Bernoulli or Entringer numbers read by rows: T(n,k) is the number of down-up permutations of n+1 starting with k+1. -/
opaque A008282 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008282.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008292: Triangle of Eulerian numbers T(n,k) (n >= 1, 1 <= k <= n) read by rows. -/
opaque A008292 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008292.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008295: Triangle read by rows: T(n,k) is the number of partially labeled rooted trees with n vertices, k of which are labeled, 0 <= k <= n. -/
opaque A008295 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008295.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008299: Triangle T(n,k) of associated Stirling numbers of second kind, n >= 2, 1 <= k <= floor(n/2). -/
opaque A008299 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008299.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008302: Triangle of Mahonian numbers T(n,k): coefficients in expansion of Product_{i=0..n-1} (1 + x + ... + x^i), where k ranges from 0 to A000217(n-1). Also enumerates permutations by their major index. -/
opaque A008302 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008302.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008304: Triangle read by rows: T(n,k) (n>=1; 1<=k<=n) is the number of permutations of [n] in which the longest increasing run has length k. -/
opaque A008304 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008304.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008307: Table T(n,k) giving number of permutations of [1..n] with order dividing k, read by antidiagonals. -/
opaque A008307 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008307.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008348: a(0)=0; thereafter a(n) = a(n-1) + prime(n) if a(n-1) < prime(n), otherwise a(n) = a(n-1) - prime(n). -/
opaque A008348 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008348.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008406: Triangle T(n,k) read by rows, giving number of graphs with n nodes (n >= 1) and k edges (0 <= k <= n(n-1)/2). -/
opaque A008406 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008406.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008422: Theta series of D*_5 lattice. -/
opaque A008422 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008422.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008425: Theta series of {D_6}* lattice. -/
opaque A008425 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008425.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008426: Theta series of {D_10}* lattice. -/
opaque A008426 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008426.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008451: Number of ways of writing n as a sum of 7 squares. -/
opaque A008451 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008451.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008452: Number of ways of writing n as a sum of 9 squares. -/
opaque A008452 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008452.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008453: Number of ways of writing n as a sum of 11 squares. -/
opaque A008453 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008453.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008665: Theta series of direct sum of 2 copies of b.c.c. lattice. -/
opaque A008665 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008665.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008705: Coefficient of x^n in (Product_{m=1..n}(1-x^m))^n. -/
opaque A008705 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008705.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008908: a(n) = (1 + number of halving and tripling steps to reach 1 in the Collatz (3x+1) problem), or -1 if 1 is never reached. -/
opaque A008908 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008908.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008922: Crystal ball sequence for lattice {E_7}*. -/
opaque A008922 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008922.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008955: Triangle of central factorial numbers |t(2n,2n-2k)| read by rows. -/
opaque A008955 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008955.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008969: Triangle read by rows of differences of reciprocals of unity. -/
opaque A008969 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008969.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008970: Triangle T(n,k) = P(n,k)/2, n >= 2, 1 <= k < n, of one-half of number of permutations of 1..n such that the differences have k runs with the same signs. -/
opaque A008970 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008970.provenance : SequenceMachineLib.Provenance := .undefined

/-- A008971: Triangle read by rows: T(n,k) is the number of permutations of [n] with k increasing runs of length at least 2. -/
opaque A008971 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A008971.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009002: Expansion of (1+x)/cos(x). -/
opaque A009002 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009002.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009006: Expansion of e.g.f.: 1 + tan(x). -/
opaque A009006 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009006.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009121: Expansion of e.g.f. cosh(exp(x)*x). -/
opaque A009121 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009121.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009337: Expansion of e.g.f.: log(1+sin(x))/exp(x). -/
opaque A009337 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009337.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009565: Expansion of e.g.f. sinh(exp(x)*x). -/
opaque A009565 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009565.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009569: Expansion of e.g.f. sinh(log(1+tan(x))). -/
opaque A009569 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009569.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009574: Expansion of e.g.f. sinh(log(1+x))*exp(x). -/
opaque A009574 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009574.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009578: E.g.f. sinh(log(1+x))/exp(x). Unsigned sequence gives degrees of (finite by nilpotent) representations of Braid groups. -/
opaque A009578 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009578.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009725: Expansion of e.g.f.: tan(x)*(1+x). -/
opaque A009725 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009725.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009739: E.g.f. tan(x)*exp(x). -/
opaque A009739 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009739.provenance : SequenceMachineLib.Provenance := .undefined

/-- A009849: Coordination sequence T4 for Zeolite Code -CHI. -/
opaque A009849 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A009849.provenance : SequenceMachineLib.Provenance := .undefined

/-- A010030: Irregular triangle read by rows: T(n,k) (n >= 1, 0 <= k <= [n/2]) = number of permutations of 1..n with [n/2]-k runs of consecutive pairs up and down (divided by 2). -/
opaque A010030 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A010030.provenance : SequenceMachineLib.Provenance := .undefined

/-- A010094: Triangle of Euler-Bernoulli or Entringer numbers. -/
opaque A010094 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A010094.provenance : SequenceMachineLib.Provenance := .undefined

/-- A010122: Continued fraction for sqrt(13). -/
opaque A010122 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A010122.provenance : SequenceMachineLib.Provenance := .undefined

/-- A010152: Continued fraction for sqrt(74). -/
opaque A010152 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A010152.provenance : SequenceMachineLib.Provenance := .undefined

/-- A011621: Legendre symbol (n,193). -/
opaque A011621 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A011621.provenance : SequenceMachineLib.Provenance := .undefined

/-- A011744: A binary m-sequence: expansion of reciprocal of x^31 + x^3 + 1 (mod 2, shifted by 30 initial 0's). -/
opaque A011744 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A011744.provenance : SequenceMachineLib.Provenance := .undefined

/-- A011971: Aitken's array: triangle of numbers {a(n,k), n >= 0, 0 <= k <= n} read by rows, defined by a(0,0)=1, a(n,0) = a(n-1,n-1), a(n,k) = a(n,k-1) + a(n-1,k-1). -/
opaque A011971 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A011971.provenance : SequenceMachineLib.Provenance := .undefined

/-- A012150: Expansion of e.g.f. exp(tan(arcsin(x))). -/
opaque A012150 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A012150.provenance : SequenceMachineLib.Provenance := .undefined

/-- A012265: x - x^3/3! + x^5/5! - ... + (-1)^n*x^(2n+1)/(2n+1)! has 2a(n)+1 real roots. -/
opaque A012265 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A012265.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014085: Number of primes between n^2 and (n+1)^2. -/
opaque A014085 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014085.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014153: Expansion of 1/((1-x)^2*Product_{k>=1} (1-x^k)). -/
opaque A014153 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014153.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014160: Apply partial sum operator thrice to partition numbers. -/
opaque A014160 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014160.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014265: Number of trees on n nodes with forbidden limbs. -/
opaque A014265 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014265.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014320: The next new gap between successive primes. -/
opaque A014320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014376: Number of trivalent connected simple graphs with 2n nodes and girth at least 8. -/
opaque A014376 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014376.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014452: Theta series of quadratic form with Gram matrix [ 1, 0, 0; 0, 2, 1; 0, 1, 2 ]. -/
opaque A014452 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014452.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014453: Theta series of quadratic form with Gram matrix [ 2, 0, 0; 0, 2, 1; 0, 1, 2 ]. -/
opaque A014453 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014453.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014455: Theta series of quadratic form with Gram matrix [ 1, 0, 0; 0, 1, 0; 0, 0, 2 ]. Number of integer solutions to x^2 + y^2 + 2*z^2 = n. -/
opaque A014455 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014455.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014466: Dedekind numbers: monotone Boolean functions, or nonempty antichains of subsets of an n-set. -/
opaque A014466 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014466.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014580: Binary irreducible polynomials (primes in the ring GF(2)[X]), evaluated at X=2. -/
opaque A014580 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014580.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014600: Class numbers h(D) of imaginary quadratic orders with discriminant D == 0 or 1 mod 4, D -/
opaque A014600 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014600.provenance : SequenceMachineLib.Provenance := .undefined

/-- A014784: Triangle of numbers associated with Genocchi numbers. -/
opaque A014784 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A014784.provenance : SequenceMachineLib.Provenance := .undefined

/-- A015156: Inverse of 1147th cyclotomic polynomial. -/
opaque A015156 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A015156.provenance : SequenceMachineLib.Provenance := .undefined

/-- A015161: Theta series of 17-dimensional lattice Q_17(6)^{+6}. -/
opaque A015161 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A015161.provenance : SequenceMachineLib.Provenance := .undefined

/-- A015549: Inverse of 1540th cyclotomic polynomial. -/
opaque A015549 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A015549.provenance : SequenceMachineLib.Provenance := .undefined

/-- A015567: Inverse of 1558th cyclotomic polynomial. -/
opaque A015567 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A015567.provenance : SequenceMachineLib.Provenance := .undefined

/-- A016389: 350th cyclotomic polynomial. -/
opaque A016389 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A016389.provenance : SequenceMachineLib.Provenance := .undefined

/-- A016514: Continued fraction for log(86). -/
opaque A016514 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A016514.provenance : SequenceMachineLib.Provenance := .undefined

/-- A016725: Number of integer solutions to x^2+y^2+z^2 = n^2, allowing zeros and distinguishing signs and order. -/
opaque A016725 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A016725.provenance : SequenceMachineLib.Provenance := .undefined

/-- A018190: Number of planar simply-connected polyhexes (or benzenoid hydrocarbons) with n hexagons. -/
opaque A018190 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A018190.provenance : SequenceMachineLib.Provenance := .undefined

/-- A018213: Alkane (or paraffin) numbers l(12,n). -/
opaque A018213 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A018213.provenance : SequenceMachineLib.Provenance := .undefined

/-- A018717: Divisors of 910. -/
opaque A018717 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A018717.provenance : SequenceMachineLib.Provenance := .undefined

/-- A018783: Number of partitions of n into parts having a common factor. -/
opaque A018783 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A018783.provenance : SequenceMachineLib.Provenance := .undefined

/-- A018846: Strobogrammatic numbers: numbers that are the same upside down (using calculator-style numerals). -/
opaque A018846 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A018846.provenance : SequenceMachineLib.Provenance := .undefined

/-- A019279: Superperfect numbers: numbers k such that sigma(sigma(k)) = 2*k where sigma is the sum-of-divisors function (A000203). -/
opaque A019279 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A019279.provenance : SequenceMachineLib.Provenance := .undefined

/-- A019566: The differences 1-1, 21-12, 321-123, ..., 10987654321-12345678910, 1110987654321-1234567891011, etc. -/
opaque A019566 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A019566.provenance : SequenceMachineLib.Provenance := .undefined

/-- A019586: Vertical para-Fibonacci sequence: takes value i on later (i.e., b_j, j >= 2) terms of i-th Fibonacci sequence defined by b_0 = i, b_1 = [ tau(i+1) ]. -/
opaque A019586 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A019586.provenance : SequenceMachineLib.Provenance := .undefined

/-- A020077: a(n) = floor( Gamma(n+3/7)/Gamma(3/7) ). -/
opaque A020077 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A020077.provenance : SequenceMachineLib.Provenance := .undefined

/-- A020079: a(n) = floor( Gamma(n+1/7)/Gamma(1/7) ). -/
opaque A020079 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A020079.provenance : SequenceMachineLib.Provenance := .undefined

/-- A020091: Ceiling of Gamma(n + 11/12)/Gamma(11/12). -/
opaque A020091 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A020091.provenance : SequenceMachineLib.Provenance := .undefined

/-- A020228: Pseudoprimes to base 100. -/
opaque A020228 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A020228.provenance : SequenceMachineLib.Provenance := .undefined

/-- A020639: Lpf(n): least prime dividing n (when n > 1); a(1) = 1. Or, smallest prime factor of n, or smallest prime divisor of n. -/
opaque A020639 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A020639.provenance : SequenceMachineLib.Provenance := .undefined

/-- A022564: Number of 2-connected non-Hamiltonian claw-free graphs on n nodes. -/
opaque A022564 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A022564.provenance : SequenceMachineLib.Provenance := .undefined

/-- A022765: Ordered sequence of distinct terms of the form floor(exp(i) * floor(exp(j))), i,j >= 0. -/
opaque A022765 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A022765.provenance : SequenceMachineLib.Provenance := .undefined

/-- A022837: a(n) = c(0)*p(0) + ... + c(n)*p(n), where c(i) = 1 if a(i-1) < p(i) and c(i) = -1 if a(i-1) >= p(i) (p(0) = 1, p(i) = prime(i)). -/
opaque A022837 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A022837.provenance : SequenceMachineLib.Provenance := .undefined

/-- A023190: Conjecturally, maximum number of primes in an infinitely-recurring prime pattern of width 2*n-1. -/
opaque A023190 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A023190.provenance : SequenceMachineLib.Provenance := .undefined

/-- A023193: a(n) gives the largest number k for which there is at least one admissible k-tuple taken from [0, 1, ..., n-1] if the tuple starts with 0. Admissibility is defined in a comment. -/
opaque A023193 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A023193.provenance : SequenceMachineLib.Provenance := .undefined

/-- A023212: Primes p such that 4*p+1 is also prime. -/
opaque A023212 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A023212.provenance : SequenceMachineLib.Provenance := .undefined

/-- A023566: Convolution of A023531 and A014306. -/
opaque A023566 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A023566.provenance : SequenceMachineLib.Provenance := .undefined

/-- A023939: Theta series of laminated lattice LAMBDA_17. -/
opaque A023939 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A023939.provenance : SequenceMachineLib.Provenance := .undefined

/-- A024417: s(n,a(n)) = max{s(n,k): k=1,2,...,n}, n >= 1, where s(n,k) = Stirling numbers of the second kind. -/
opaque A024417 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A024417.provenance : SequenceMachineLib.Provenance := .undefined

/-- A024429: Expansion of e.g.f. sinh(exp(x)-1). -/
opaque A024429 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A024429.provenance : SequenceMachineLib.Provenance := .undefined

/-- A024430: Expansion of e.g.f. cosh(exp(x)-1). -/
opaque A024430 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A024430.provenance : SequenceMachineLib.Provenance := .undefined

/-- A024786: Number of 2's in all partitions of n. -/
opaque A024786 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A024786.provenance : SequenceMachineLib.Provenance := .undefined

/-- A024787: Number of 3's in all partitions of n. -/
opaque A024787 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A024787.provenance : SequenceMachineLib.Provenance := .undefined

/-- A024937: a(n) = number of 2's in all partitions of n into distinct primes. -/
opaque A024937 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A024937.provenance : SequenceMachineLib.Provenance := .undefined

/-- A024939: Number of partitions of n into distinct odd primes. -/
opaque A024939 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A024939.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025065: Number of palindromic partitions of n. -/
opaque A025065 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025065.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025147: Number of partitions of n into distinct parts >= 2. -/
opaque A025147 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025147.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025422: Number of partitions of n into 7 squares. -/
opaque A025422 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025422.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025423: Number of partitions of n into 8 squares. -/
opaque A025423 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025423.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025427: Number of partitions of n into 3 nonzero squares. -/
opaque A025427 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025427.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025428: Number of partitions of n into 4 nonzero squares. -/
opaque A025428 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025428.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025429: Number of partitions of n into 5 nonzero squares. -/
opaque A025429 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025429.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025430: Number of partitions of n into 6 nonzero squares. -/
opaque A025430 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025430.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025431: Number of partitions of n into 7 nonzero squares. -/
opaque A025431 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025431.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025432: Number of partitions of n into 8 nonzero squares. -/
opaque A025432 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025432.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025434: Number of partitions of n into 10 nonzero squares. -/
opaque A025434 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025434.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025436: Number of partitions of n into 3 distinct squares. -/
opaque A025436 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025436.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025453: Number of partitions of n into 9 nonnegative cubes. -/
opaque A025453 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025453.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025454: Number of partitions of n into 10 nonnegative cubes. -/
opaque A025454 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025454.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025458: Number of partitions of n into 5 positive cubes. -/
opaque A025458 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025458.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025466: Number of partitions of n into 4 distinct nonnegative cubes. -/
opaque A025466 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025466.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025475: 1 and the prime powers p^m where m >= 2, thus excluding the primes. -/
opaque A025475 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025475.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025527: a(n) = n!/lcm{1,2,...,n} = (n-1)!/lcm{C(n-1,0), C(n-1,1), ..., C(n-1,n-1)}. -/
opaque A025527 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025527.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025620: Numbers of the form 4^i * 9^j, with i, j >= 0. -/
opaque A025620 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025620.provenance : SequenceMachineLib.Provenance := .undefined

/-- A025675: Exponent of 8 (value of j) in n-th number of form 7^i*8^j. -/
opaque A025675 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A025675.provenance : SequenceMachineLib.Provenance := .undefined

/-- A026099: Row of A026098 that contains n. -/
opaque A026099 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A026099.provenance : SequenceMachineLib.Provenance := .undefined

/-- A026569: a(n) = T(n,n), T given by A026568. Also a(n) = number of integer strings s(0),...,s(n) counted by T, such that s(n)=0. -/
opaque A026569 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A026569.provenance : SequenceMachineLib.Provenance := .undefined

/-- A026713: Sum{T(n-k,k)}, 0<=k<=[ n/2 ], T given by A026703. -/
opaque A026713 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A026713.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027088: a(n) = A027082(n, 2n-1). -/
opaque A027088 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027088.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027187: Number of partitions of n into an even number of parts. -/
opaque A027187 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027187.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027193: Number of partitions of n into an odd number of parts. -/
opaque A027193 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027193.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027336: Number of partitions of n that do not contain 2 as a part. -/
opaque A027336 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027336.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027337: Number of partitions of n that do not contain 3 as a part. -/
opaque A027337 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027337.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027359: Triangular array T read by rows: T(n,k) = number of partitions of n into distinct odd parts, all <= k. -/
opaque A027359 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027359.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027447: Triangle read by rows: cube of the lower triangular mean matrix. -/
opaque A027447 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027447.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027569: Initial members of prime decaplets (p, p+2, p+6, p+8, p+12, p+18, p+20, p+26, p+30, p+32). -/
opaque A027569 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027569.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027617: Number of permutations of n elements containing a 3-cycle. -/
opaque A027617 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027617.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027641: Numerator of Bernoulli number B_n. -/
opaque A027641 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027641.provenance : SequenceMachineLib.Provenance := .undefined

/-- A027761: Numerator of sum_{p prime, p-1 divides 2*n} 1/p. -/
opaque A027761 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A027761.provenance : SequenceMachineLib.Provenance := .undefined

/-- A028296: Expansion of e.g.f. Gudermannian(x) = 2*arctan(exp(x)) - Pi/2. -/
opaque A028296 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A028296.provenance : SequenceMachineLib.Provenance := .undefined

/-- A028431: Clog sequence in base 10. Right to left concatenation of n, int(log_10(n)), int(log_10(int(log_10(n)))),... in base10. -/
opaque A028431 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A028431.provenance : SequenceMachineLib.Provenance := .undefined

/-- A028584: Expansion of (theta_3(z)*theta_3(4z)+theta_2(z)*theta_2(4z))^3. -/
opaque A028584 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A028584.provenance : SequenceMachineLib.Provenance := .undefined

/-- A028659: Expansion of (theta_3(z)*theta_3(23z) + theta_2(z)*theta_2(23z))^3. -/
opaque A028659 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A028659.provenance : SequenceMachineLib.Provenance := .undefined

/-- A028900: Map n = Sum c_i 10^i to a(n) = Sum c_i 5^i. -/
opaque A028900 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A028900.provenance : SequenceMachineLib.Provenance := .undefined

/-- A028920: Pit harvesting sequence for winning solitaire Tchoukaillon (or Mancala). -/
opaque A028920 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A028920.provenance : SequenceMachineLib.Provenance := .undefined

/-- A029571: Number of permutations of an n-set containing a 4-cycle. -/
opaque A029571 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A029571.provenance : SequenceMachineLib.Provenance := .undefined

/-- A029849: Number of nonisomorphic and nonantiisomorphic relations. -/
opaque A029849 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A029849.provenance : SequenceMachineLib.Provenance := .undefined

/-- A030223: Number of achiral triangular n-ominoes (n-iamonds) (holes are allowed). -/
opaque A030223 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A030223.provenance : SequenceMachineLib.Provenance := .undefined

/-- A030224: Triangular polyominoes (n-iamonds) without bilateral symmetry (holes are allowed). -/
opaque A030224 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A030224.provenance : SequenceMachineLib.Provenance := .undefined

/-- A030225: Number of achiral hexagonal polyominoes with n cells. -/
opaque A030225 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A030225.provenance : SequenceMachineLib.Provenance := .undefined

/-- A030226: Number of n-celled polyhexes (hexagonal polyominoes) without bilateral symmetry. -/
opaque A030226 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A030226.provenance : SequenceMachineLib.Provenance := .undefined

/-- A030227: Number of achiral polyominoes with n cells. -/
opaque A030227 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A030227.provenance : SequenceMachineLib.Provenance := .undefined

/-- A030228: Number of chiral pairs of polyominoes with n cells. -/
opaque A030228 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A030228.provenance : SequenceMachineLib.Provenance := .undefined

/-- A030644: Decimal expansion of 10 - Pi. -/
opaque A030644 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A030644.provenance : SequenceMachineLib.Provenance := .undefined

/-- A031125: Number of proper factorizations of p1^n*p2^2, where p1 and p2 are distinct primes. -/
opaque A031125 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A031125.provenance : SequenceMachineLib.Provenance := .undefined

/-- A031126: Number of proper factorizations of p1^n*p2^3, where p1 and p2 are distinct primes. -/
opaque A031126 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A031126.provenance : SequenceMachineLib.Provenance := .undefined

/-- A031127: Number of proper factorizations of p1^n*p2^4, where p1 and p2 are distinct primes. -/
opaque A031127 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A031127.provenance : SequenceMachineLib.Provenance := .undefined

/-- A031128: Number of proper factorizations of p1^n*p2^5, where p1 and p2 are distinct primes. -/
opaque A031128 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A031128.provenance : SequenceMachineLib.Provenance := .undefined

/-- A031157: Numbers that are both lucky and prime. -/
opaque A031157 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A031157.provenance : SequenceMachineLib.Provenance := .undefined

/-- A031193: Numbers having period-22 5-digitized sequences. -/
opaque A031193 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A031193.provenance : SequenceMachineLib.Provenance := .undefined

/-- A031879: Nonprime lucky numbers. -/
opaque A031879 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A031879.provenance : SequenceMachineLib.Provenance := .undefined

/-- A031883: First differences of lucky numbers. -/
opaque A031883 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A031883.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032020: Number of compositions (ordered partitions) of n into distinct parts. -/
opaque A032020 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032020.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032189: Number of ways to partition n elements into pie slices each with an odd number of elements. -/
opaque A032189 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032189.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032190: Number of cyclic compositions of n into parts >= 2. -/
opaque A032190 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032190.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032193: Number of necklaces with 8 black beads and n-8 white beads. -/
opaque A032193 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032193.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032551: Numbers that, when expressed in base 8 and then interpreted in base 10, yield a multiple of the original number. -/
opaque A032551 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032551.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032575: Numbers k whose decimal representation, read as a base-22 value and divided by k, yields an integer. -/
opaque A032575 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032575.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032598: Squares of lucky numbers. -/
opaque A032598 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032598.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032599: Cubes of lucky numbers. -/
opaque A032599 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032599.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032600: Difference between n-th lucky number and n-th prime number. -/
opaque A032600 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032600.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032601: a(n) = n-th prime number * n-th lucky number. -/
opaque A032601 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032601.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032602: a(n) = n-th prime number + n-th lucky number. -/
opaque A032602 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032602.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032603: Concatenation of n-th prime number and n-th lucky number. -/
opaque A032603 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032603.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032629: Primes that are concatenations of k with k + 6. -/
opaque A032629 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032629.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032631: Primes that are concatenations of n with n + 8. -/
opaque A032631 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032631.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032632: Primes that are decimal concatenations of n with n + 9. -/
opaque A032632 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032632.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032650: Lucky numbers that are concatenations of a number k with itself. -/
opaque A032650 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032650.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032742: a(1) = 1; for n > 1, a(n) = largest proper divisor of n (that is, for n>1, maximum divisor d of n in range 1 <= d < n). -/
opaque A032742 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032742.provenance : SequenceMachineLib.Provenance := .undefined

/-- A032762: Take list of integers n >= 0, move left digit of each term to end of previous term. -/
opaque A032762 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A032762.provenance : SequenceMachineLib.Provenance := .undefined

/-- A033061: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i has odd d(m-i) for all odd i. -/
opaque A033061 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A033061.provenance : SequenceMachineLib.Provenance := .undefined

/-- A033185: Rooted tree triangle read by rows: a(n,k) = number of forests with n nodes and k rooted trees. -/
opaque A033185 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A033185.provenance : SequenceMachineLib.Provenance := .undefined

/-- A033543: Expansion of (1 - sqrt((1-2*x)*(1-6*x)))/(2*x*(2-3*x)). -/
opaque A033543 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A033543.provenance : SequenceMachineLib.Provenance := .undefined

/-- A033630: Number of partitions of n into distinct divisors of n. -/
opaque A033630 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A033630.provenance : SequenceMachineLib.Provenance := .undefined

/-- A033810: Number of people needed so that probability of at least two sharing a birthday out of n possible days is at least 50%. -/
opaque A033810 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A033810.provenance : SequenceMachineLib.Provenance := .undefined

/-- A033845: Numbers k of the form 2^i*3^j, where i and j >= 1. -/
opaque A033845 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A033845.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034043: Numbers that are imprimitively represented by x^2+y^2+z^2. -/
opaque A034043 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034043.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034045: Numbers that are imprimitively but not primitively represented by x^2+y^2+z^2. -/
opaque A034045 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034045.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034699: Largest prime power factor of n. -/
opaque A034699 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034699.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034777: Dirichlet convolution of [ 1,1,1,... ] with Ramanujan numbers (A000594). -/
opaque A034777 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034777.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034778: Dirichlet convolution of Ramanujan numbers (A000594) with themselves. -/
opaque A034778 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034778.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034799: Triangle read by rows: T(n,k) is the number of partially labeled trees with n nodes, k of which are labeled, 0 <= k <= n. -/
opaque A034799 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034799.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034823: Number of n-node rooted trees of height at most 6. -/
opaque A034823 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034823.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034824: Number of n-node rooted trees of height at most 7. -/
opaque A034824 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034824.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034825: Number of n-node rooted trees of height at most 8. -/
opaque A034825 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034825.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034853: Triangle giving number of trees with n >= 3 nodes and diameter d >= 2. -/
opaque A034853 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034853.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034854: Triangle giving number of labeled trees with n >= 3 nodes and diameter d >= 2. -/
opaque A034854 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034854.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034855: Triangle read by rows giving number of rooted labeled trees with n >= 2 nodes and height d >= 1. -/
opaque A034855 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034855.provenance : SequenceMachineLib.Provenance := .undefined

/-- A034891: Number of different products of partitions of n; number of partitions of n into prime parts (1 included); number of distinct orders of Abelian subgroups of symmetric group S_n. -/
opaque A034891 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A034891.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035009: STIRLING transform of [1,1,2,4,8,16,32,...]. -/
opaque A035009 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035009.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035016: Fourier coefficients of E_{0,4}. -/
opaque A035016 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035016.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035343: Triangle of coefficients in expansion of (1 + x + x^2 + x^3 + x^4)^n. -/
opaque A035343 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035343.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035351: Number of labeled rooted polygonal cacti with bridges (mixed Husimi trees) with n nodes. -/
opaque A035351 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035351.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035363: Number of partitions of n into even parts. -/
opaque A035363 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035363.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035377: Number of partitions of n into parts 6k or 6k+3. -/
opaque A035377 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035377.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035385: Number of partitions of n into parts 6k+2 or 6k+4. -/
opaque A035385 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035385.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035481: Number of n X n symmetric matrices whose first row is 1..n and whose rows and columns are all permutations of 1..n. -/
opaque A035481 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035481.provenance : SequenceMachineLib.Provenance := .undefined

/-- A035538: Number of partitions of n with equal nonzero number of parts congruent to each of 0 and 2 (mod 3). -/
opaque A035538 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A035538.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036277: Position of first term > 2 in n-th row of Gilbreath array shown in A036262. -/
opaque A036277 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036277.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036375: Number of ternary rooted trees with n nodes and height at most 7. -/
opaque A036375 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036375.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036376: Number of ternary rooted trees with n nodes and height at most 8. -/
opaque A036376 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036376.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036378: Number of primes p between powers of 2, 2^n < p <= 2^(n+1). -/
opaque A036378 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036378.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036497: Number of partitions of n into distinct primes (counting 1 as a prime). -/
opaque A036497 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036497.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036541: Deficit of central binomial coefficients in terms of number of prime factors: a(n) shows how many fewer prime factors the n-th central binomial coefficient has than n!. -/
opaque A036541 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036541.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036624: Number of 6-ary rooted trees with n nodes and height at most 7. -/
opaque A036624 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036624.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036643: Number of 6-ary rooted trees with n nodes and height exactly 5. -/
opaque A036643 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036643.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036644: Number of 6-ary rooted trees with n nodes and height exactly 6. -/
opaque A036644 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036644.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036645: Number of 6-ary rooted trees with n nodes and height exactly 7. -/
opaque A036645 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036645.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036646: Number of 6-ary rooted trees with n nodes and height exactly 8. -/
opaque A036646 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036646.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036647: Number of 6-ary rooted trees with n nodes and height exactly 9. -/
opaque A036647 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036647.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036654: Triangle of series-parallel numbers. -/
opaque A036654 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036654.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036656: Number of n-node rooted unlabeled trees with outdegree <= 2 and exactly 1 edge at the root. -/
opaque A036656 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036656.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036657: Number of n-node rooted unlabeled trees with out-degree <=2 and exactly 2 edges at the root. -/
opaque A036657 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036657.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036658: Number of n-node rooted unlabeled trees with exactly 3 edges at root and otherwise out-degree <= 2. -/
opaque A036658 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036658.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036669: G.f.: A(x) = x*cycle_index(S4, B(x)-1), where B(x) is g.f. for A000598. -/
opaque A036669 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036669.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036671: Number of isomers C_n H_{2n} without double bonds. -/
opaque A036671 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036671.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036693: Number of Gaussian integers z = a + bi satisfying n-1 < |z| <= n. -/
opaque A036693 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036693.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036694: a(n) = (1/4)*A036693(n) for n >= 1. -/
opaque A036694 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036694.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036696: a(n)=number of Gaussian integers z=a+bi satisfying n-1<|z|<=n, b>=0. -/
opaque A036696 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036696.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036697: a(n)=number of Gaussian integers z=a+bi satisfying n-1<|z|<=n, a>=0, b>=0. -/
opaque A036697 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036697.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036700: Number of Gaussian integers z=a+bi satisfying |z|<=n, a>=0, 0<=b -/
opaque A036700 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036700.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036701: a(n)=number of Gaussian integers z=a+bi satisfying n-1<|z|<=n, a>=0, 0<=b -/
opaque A036701 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036701.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036702: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n, a>=0, 0<=b<=a. -/
opaque A036702 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036702.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036703: a(n)=number of Gaussian integers z=a+bi satisfying n-1<|z|<=n, a>=0, 0<=b<=a. -/
opaque A036703 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036703.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036719: G.f. satisfies A(x) = 1 + x*cycle_index(Cyclic(4), A(x)). -/
opaque A036719 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036719.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036768: Number of ordered rooted trees with n non-root nodes and all outdegrees <= six. -/
opaque A036768 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036768.provenance : SequenceMachineLib.Provenance := .undefined

/-- A036996: Number of isomers of alkyl homologs of adamantane with n carbon atoms. -/
opaque A036996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A036996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A037184: Functional digraphs with 1 node not in the image. -/
opaque A037184 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A037184.provenance : SequenceMachineLib.Provenance := .undefined

/-- A037215: Expansion of ( Sum_{k>=0} k*q^(k^2) )^3. -/
opaque A037215 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A037215.provenance : SequenceMachineLib.Provenance := .undefined

/-- A037216: Expansion of ( Sum_{k>=0} k*q^(k^2) )^4. -/
opaque A037216 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A037216.provenance : SequenceMachineLib.Provenance := .undefined

/-- A037256: a(n) = n!*Sum_{i=0..n-1} (n-i)*(-2)^i/(i+1)!. -/
opaque A037256 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A037256.provenance : SequenceMachineLib.Provenance := .undefined

/-- A037306: Triangle T(n,k) read by rows: the number of compositions of n into k parts, modulo cyclic shifts. -/
opaque A037306 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A037306.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038001: Inverse WEIGH transform of A038000. -/
opaque A038001 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038001.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038055: Number of n-node rooted trees with nodes of 2 colors. -/
opaque A038055 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038055.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038056: Number of trees with n 2-colored nodes. -/
opaque A038056 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038056.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038078: Number of identity trees with 2-colored nodes. -/
opaque A038078 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038078.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038107: Number of primes < n^2. -/
opaque A038107 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038107.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038119: Number of n-celled solid polyominoes (or free polycubes, allowing mirror-image identification). -/
opaque A038119 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038119.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038144: Number of planar n-hexes, or polyhexes (in the sense of A000228, so rotations and reflections count as the same shape) with at least one hole. -/
opaque A038144 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038144.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038533: Denominator of coefficients of both EllipticK/Pi and EllipticE/Pi. -/
opaque A038533 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038533.provenance : SequenceMachineLib.Provenance := .undefined

/-- A038720: a(n) = (n+3)*n!/2. -/
opaque A038720 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A038720.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039754: Irregular triangle read by rows: T(n,k) = number of binary codes of length n with k words (n >= 0, 0 <= k <= 2^n); also number of 0/1-polytopes with vertices from the unit n-cube; also number of inequivalent Boolean functions of n variables with exactly k nonzero values under action of Jevons group. -/
opaque A039754 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039754.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039810: Matrix square of Stirling2 triangle A008277: 2-levels set partitions of [n] into k first-level subsets. -/
opaque A039810 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039810.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039811: Triangle read by rows: matrix cube of the Stirling2 triangle A008277. -/
opaque A039811 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039811.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039812: Triangle read by rows: matrix 4th power of the Stirling2 triangle A008277. -/
opaque A039812 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039812.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039813: Matrix 5th power of Stirling2 triangle A008277. -/
opaque A039813 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039813.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039815: Triangle read by rows: matrix cube of the Stirling-1 triangle A008275. -/
opaque A039815 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039815.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039816: Triangle read by rows: matrix 4th power of the Stirling-1 triangle A008275. -/
opaque A039816 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039816.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039817: Triangle read by rows: matrix 5th power of the Stirling-1 triangle A008275. -/
opaque A039817 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039817.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039900: Number of partitions satisfying 0 < cn(0,5) + cn(1,5) + cn(4,5). -/
opaque A039900 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039900.provenance : SequenceMachineLib.Provenance := .undefined

/-- A039912: Triangle related to number of compositions of n into relatively prime summands. -/
opaque A039912 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A039912.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040001: 1 followed by {1, 2} repeated. -/
opaque A040001 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040001.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040003: Continued fraction for sqrt(6). -/
opaque A040003 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040003.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040005: Continued fraction for sqrt(8). -/
opaque A040005 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040005.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040020: Continued fraction for sqrt(26). -/
opaque A040020 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040020.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040070: Primes p such that x^3 = 15 has no solution mod p. -/
opaque A040070 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040070.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040092: Primes p such that x^3 = 22 has no solution mod p. -/
opaque A040092 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040092.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040159: Primes p such that x^5 = 2 has a solution mod p. -/
opaque A040159 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040159.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040161: Primes p such that x^5 = 3 has a solution mod p. -/
opaque A040161 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040161.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040165: Primes p such that x^5 = 5 has a solution mod p. -/
opaque A040165 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040165.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040169: Primes p such that x^5 = 6 has a solution mod p. -/
opaque A040169 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040169.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040171: Primes p such that x^5 = 7 has a solution mod p. -/
opaque A040171 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040171.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040177: Primes p such that x^5 = 10 has a solution mod p. -/
opaque A040177 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040177.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040179: Primes p such that x^5 = 11 has a solution mod p. -/
opaque A040179 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040179.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040184: Primes p such that x^5 = 12 has a solution mod p. -/
opaque A040184 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040184.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040240: Continued fraction for sqrt(257). -/
opaque A040240 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040240.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040259: Continued fraction for sqrt(276). -/
opaque A040259 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040259.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040419: Continued fraction for sqrt(440). -/
opaque A040419 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040419.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040970: Primes p such that x^5 = 13 has a solution mod p. -/
opaque A040970 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040970.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040972: Primes p such that x^5 = 14 has a solution mod p. -/
opaque A040972 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040972.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040974: Primes p such that x^5 = 15 has a solution mod p. -/
opaque A040974 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040974.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040978: Primes p such that x^5 = 17 has a solution mod p. -/
opaque A040978 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040978.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040980: Primes p such that x^5 = 18 has a solution mod p. -/
opaque A040980 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040980.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040982: Primes p such that x^5 = 19 has a solution mod p. -/
opaque A040982 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040982.provenance : SequenceMachineLib.Provenance := .undefined

/-- A040986: Primes p such that x^5 = 21 has a solution mod p. -/
opaque A040986 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A040986.provenance : SequenceMachineLib.Provenance := .undefined

/-- A042723: Denominators of continued fraction convergents to sqrt(891). -/
opaque A042723 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A042723.provenance : SequenceMachineLib.Provenance := .undefined

/-- A043316: a(n)=s(n)/13, where s=A033010. -/
opaque A043316 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A043316.provenance : SequenceMachineLib.Provenance := .undefined

/-- A043318: a(n)=A033012(n)/15. -/
opaque A043318 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A043318.provenance : SequenceMachineLib.Provenance := .undefined

/-- A043319: a(n)=A033013(n)/16. -/
opaque A043319 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A043319.provenance : SequenceMachineLib.Provenance := .undefined

/-- A043320: Numbers which, written in base 256, have all digits less than 16 and no two adjacent digits equal. -/
opaque A043320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A043320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A043471: Numbers having three 4's in base 9. -/
opaque A043471 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A043471.provenance : SequenceMachineLib.Provenance := .undefined

/-- A043568: Number of runs in base-16 representation of n. -/
opaque A043568 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A043568.provenance : SequenceMachineLib.Provenance := .undefined

/-- A043772: Numbers k such that all divisors of k are lucky numbers. -/
opaque A043772 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A043772.provenance : SequenceMachineLib.Provenance := .undefined

/-- A044377: Numbers n such that string 4,5 occurs in the base 10 representation of n but not of n-1. -/
opaque A044377 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A044377.provenance : SequenceMachineLib.Provenance := .undefined

/-- A044385: Numbers n such that string 5,3 occurs in the base 10 representation of n but not of n-1. -/
opaque A044385 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A044385.provenance : SequenceMachineLib.Provenance := .undefined

/-- A044913: Numbers whose base-12 run lengths alternate: odd, even, odd, ... -/
opaque A044913 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A044913.provenance : SequenceMachineLib.Provenance := .undefined

/-- A044915: Numbers whose base-14 run lengths alternate: odd, even, odd, ... -/
opaque A044915 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A044915.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045629: Number of 2n-bead black-white complementable necklaces with n black beads. -/
opaque A045629 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045629.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045630: Number of 2n-bead black-white complementable strings with n black beads and fundamental period 2n. -/
opaque A045630 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045630.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045631: Number of 2n-bead black-white reversible complementable strings with n black beads and fundamental period 2n. -/
opaque A045631 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045631.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045662: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reverse. -/
opaque A045662 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045662.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045680: Number of 2n-bead balanced binary necklaces of fundamental period 2n equivalent to reverse. -/
opaque A045680 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045680.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045685: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reverse, but not equivalent to their complement and reversed complement. -/
opaque A045685 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045685.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045847: Matrix whose (i,j)-th entry is number of representations of j as a sum of i squares of nonnegative integers; read by diagonals. -/
opaque A045847 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045847.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045881: Smallest of first string of exactly 2n-1 consecutive composite integers. -/
opaque A045881 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045881.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045931: Number of partitions of n with equal number of even and odd parts. -/
opaque A045931 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045931.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045954: Even-Lucky-Numbers: generated by a sieve process like that for Lucky numbers but starting with even numbers. -/
opaque A045954 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045954.provenance : SequenceMachineLib.Provenance := .undefined

/-- A045996: Number of triangles in an n X n grid (or geoplane). -/
opaque A045996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A045996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046109: Number of lattice points (x,y) on the circumference of a circle of radius n with center at (0,0). -/
opaque A046109 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046109.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046113: Coefficients in expansion of theta_3(q) * theta_3(q^6) in powers of q. -/
opaque A046113 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046113.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046118: Smallest member of a sexy prime triple: value of p such that p, p+6 and p+12 are all prime, but p+18 is not (although p-6 might be). -/
opaque A046118 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046118.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046119: Middle member of a sexy prime triple: value of p+6 such that p, p+6 and p+12 are all prime, but p+18 is not (although p-6 might be). -/
opaque A046119 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046119.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046155: k that maximizes partitions of n into exactly k parts. -/
opaque A046155 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046155.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046658: Triangle related to A001700 and A000302 (powers of 4). -/
opaque A046658 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046658.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046675: Expansion of Product_{i>0} (1-x^{p_i}), where p_i are the primes. -/
opaque A046675 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046675.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046676: Expansion of 1 + Sum_{k>=1} x^(p_1+p_2+...+p_k)/((1-x)*(1-x^2)*(1-x^3)*...*(1-x^k)) (where p_i are the primes). -/
opaque A046676 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046676.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046682: Number of cycle types of conjugacy classes of all even permutations of n elements. -/
opaque A046682 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046682.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046715: Secondary root edges in doubly rooted tree maps with n edges. -/
opaque A046715 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046715.provenance : SequenceMachineLib.Provenance := .undefined

/-- A046817: Triangle of generalized Stirling numbers of 2nd kind. -/
opaque A046817 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A046817.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047152: T(n,n), array T as in A047150. -/
opaque A047152 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047152.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047178: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n-1)/2. -/
opaque A047178 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047178.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047653: Constant term in expansion of (1/2) * Product_{k=-n..n} (1 + x^k). -/
opaque A047653 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047653.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047761: a(n) = A047760(2n+1). -/
opaque A047761 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047761.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047764: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type Q. -/
opaque A047764 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047764.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047808: a(n) counts different values of i^2 + j^2 <= n^2 or number of distances from the origin to all integer points inside a circle of radius n. -/
opaque A047808 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047808.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047863: Number of labeled graphs with 2-colored nodes where black nodes are only connected to white nodes and vice versa. -/
opaque A047863 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047863.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047922: Triangle of numbers a(n,k) = number of terms in n X n determinant with 2 adjacent diagonals of k and k-1 0's (0<=k<=n). -/
opaque A047922 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047922.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047967: Number of partitions of n with some part repeated. -/
opaque A047967 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047967.provenance : SequenceMachineLib.Provenance := .undefined

/-- A047996: Triangle read by rows: T(n,k) is the (n,k)-th circular binomial coefficient, where 0 <= k <= n. -/
opaque A047996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A047996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048004: Triangular array read by rows: T(n,k) = number of binary vectors of length n whose longest run of consecutive 1's has length k, for n >= 0, 0 <= k <= n. -/
opaque A048004 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048004.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048139: Number of planar partitions of n, when partitions that are rotations of each other (when regarded as 3-D objects) are counted only once. -/
opaque A048139 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048139.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048141: Number of symmetrical planar partitions of n: planar partitions (A000219) that when regarded as 3-D objects have a threefold axis of symmetry that is the intersection of 3 mirror planes, i.e., C3v symmetry. -/
opaque A048141 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048141.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048142: Number of symmetrical planar partitions of n: planar partitions (A000219) that when regarded as 3-D objects have only a threefold axis of symmetry, i.e., C3 symmetry. -/
opaque A048142 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048142.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048165: Expansion of Product_{k > 0} 1/(1 + x^prime(k)). -/
opaque A048165 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048165.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048184: Primes with nontrivial omnipower group. -/
opaque A048184 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048184.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048240: Number of new colors that can be mixed with n units of yellow, blue, red. -/
opaque A048240 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048240.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048320: Numbers whose base-9 expansions, read from left to right, have run lengths that strictly decrease. -/
opaque A048320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048379: Apply the transformation 0->1->2->3->4->5->6->7->8->9->0 to digits of n. -/
opaque A048379 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048379.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048862: Number of primes in the reduced residue system of n-th primorial number (=A002110(n)). -/
opaque A048862 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048862.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048863: Number of nonprimes (1 and composites) in the reduced residue system of n-th primorial number (A002110). -/
opaque A048863 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048863.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048888: a(n) = Sum_{m=1..n} T(m,n+1-m), array T as in A048887. -/
opaque A048888 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048888.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048993: Triangle of Stirling numbers of 2nd kind, S(n,k), n >= 0, 0 <= k <= n. -/
opaque A048993 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048993.provenance : SequenceMachineLib.Provenance := .undefined

/-- A048994: Triangle of Stirling numbers of first kind, s(n,k), n >= 0, 0 <= k <= n. -/
opaque A048994 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A048994.provenance : SequenceMachineLib.Provenance := .undefined

/-- A049157: Recip transform of 2*(1 + x^3 + x^5)-1/(1-x). -/
opaque A049157 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A049157.provenance : SequenceMachineLib.Provenance := .undefined

/-- A049283: a(n) is the smallest k such that phi(k) = n, where phi is Euler's totient function, or a(n) = 0 if no such k exists. -/
opaque A049283 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A049283.provenance : SequenceMachineLib.Provenance := .undefined

/-- A049461: Number of equivalence classes of self-dual Boolean functions of n variables under action of LSD(n,2). -/
opaque A049461 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A049461.provenance : SequenceMachineLib.Provenance := .undefined

/-- A049774: Number of permutations of n elements not containing the consecutive pattern 123. -/
opaque A049774 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A049774.provenance : SequenceMachineLib.Provenance := .undefined

/-- A049781: a(n) = (b(n) + 1)/2, where b = A000959 (the lucky numbers). -/
opaque A049781 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A049781.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050181: T(2n+3, n), array T as in A051168; a count of Lyndon words. -/
opaque A050181 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050181.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050308: Matrix 5th power of inverse partition triangle A038498. -/
opaque A050308 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050308.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050309: Matrix 6th power of inverse partition triangle A038498. -/
opaque A050309 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050309.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050310: Matrix 7th power of inverse partition triangle A038498. -/
opaque A050310 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050310.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050320: Number of ways n is a product of squarefree numbers > 1. -/
opaque A050320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050354: Number of ordered factorizations of n with one level of parentheses. -/
opaque A050354 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050354.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050360: Abelian groups (factorizations into prime powers >1) indexed by prime signatures. A000688(A025487). -/
opaque A050360 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050360.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050433: Length of longest palindromic subword of (n base 5). -/
opaque A050433 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050433.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050475: Numbers k such that x = 2^k-2 satisfies phi(x)+2 = phi(x+2). -/
opaque A050475 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050475.provenance : SequenceMachineLib.Provenance := .undefined

/-- A050535: Number of loopless multigraphs on infinite set of nodes with n edges. -/
opaque A050535 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A050535.provenance : SequenceMachineLib.Provenance := .undefined

/-- A051132: Number of ordered pairs of integers (x,y) with x^2+y^2 < n^2. -/
opaque A051132 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A051132.provenance : SequenceMachineLib.Provenance := .undefined

/-- A051161: a(n) is the exponent of n-th prime in the order (A003131) of the Monster simple group. -/
opaque A051161 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A051161.provenance : SequenceMachineLib.Provenance := .undefined

/-- A051168: Triangular array T(h,k) for 0 <= k <= h read by rows: T(h,k) = number of binary Lyndon words with k ones and h-k zeros. -/
opaque A051168 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A051168.provenance : SequenceMachineLib.Provenance := .undefined

/-- A051196: T(2n+3,n), array T as in A050186; a count of aperiodic binary words. -/
opaque A051196 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A051196.provenance : SequenceMachineLib.Provenance := .undefined

/-- A051419: Local stops on New York City 1 Train (Broadway-7 Avenue Local) subway, but with 33rd St instead of 34th St. -/
opaque A051419 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A051419.provenance : SequenceMachineLib.Provenance := .undefined

/-- A051626: Period of decimal representation of 1/n, or 0 if 1/n terminates. -/
opaque A051626 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A051626.provenance : SequenceMachineLib.Provenance := .undefined

/-- A051716: Numerators of Bernoulli twin numbers C(n). -/
opaque A051716 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A051716.provenance : SequenceMachineLib.Provenance := .undefined

/-- A051791: Numbers that are unchanged when turned upside down, when written in a font in which 7 looks like upside-down 2. -/
opaque A051791 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A051791.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052120: Number of 3-valent trees (= boron trees or binary trees) with n nodes. -/
opaque A052120 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052120.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052144: a(n) = A000172(n)^2. -/
opaque A052144 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052144.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052175: Triangle of numbers arising in enumeration of walks on square lattice. -/
opaque A052175 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052175.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052246: Concatenation of integers from n down to 0. -/
opaque A052246 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052246.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052310: Triangle read by rows: matrix square of A052307. -/
opaque A052310 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052310.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052512: Number of rooted labeled trees of height at most 2. -/
opaque A052512 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052512.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052513: Number of labeled trees of height at most 3. -/
opaque A052513 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052513.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052514: Number of labeled trees of height at most 4. -/
opaque A052514 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052514.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052517: Number of ordered pairs of cycles over all n-permutations having two cycles. -/
opaque A052517 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052517.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052518: Number of pairs of cycles of cardinality at least 2. -/
opaque A052518 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052518.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052805: If B is a collection in which there are C(n-1) [Catalan numbers, A000108] things with n points, a(n) is the number of subsets without repetition of B with a total of n points. -/
opaque A052805 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052805.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052810: a(n) = 1 + (number of partitions of n, n>0). -/
opaque A052810 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052810.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052839: Number of partitions of n into distinct summands (A000009), plus 1 (apart from the first term). -/
opaque A052839 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052839.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052882: A simple grammar: rooted ordered set partitions. -/
opaque A052882 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052882.provenance : SequenceMachineLib.Provenance := .undefined

/-- A052896: E.g.f.: (exp(exp(x)-1)-1)^2. -/
opaque A052896 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A052896.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053037: Number of self-complementary types of Boolean functions of n variables under action of AG(n,2). -/
opaque A053037 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053037.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053250: Coefficients of the '3rd-order' mock theta function phi(q). -/
opaque A053250 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053250.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053251: Coefficients of the '3rd-order' mock theta function psi(q). -/
opaque A053251 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053251.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053411: Circle numbers (version 1): a(n)= number of points (i,j), i,j integers, contained in a circle of diameter n, centered at the origin. -/
opaque A053411 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053411.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053456: Open disk numbers (version 1): a(n) is the number of points (i,j), i,j, integers, contained in an open disk of diameter n, centered at (0,0). -/
opaque A053456 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053456.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053497: Number of degree-n permutations of order dividing 7. -/
opaque A053497 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053497.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053506: a(n) = (n-1)*n^(n-2). -/
opaque A053506 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053506.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053591: Closed 3-dimensional ball numbers (version 1): a(n)= number of integer points (i,j,k) contained in a closed ball of diameter n, centered at (0,0,0). -/
opaque A053591 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053591.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053592: Open 3-dimensional ball numbers (version 1): a(n) is the number of integer points (i,j,k) contained in an open ball of diameter n, centered at (0,0,0). -/
opaque A053592 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053592.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053598: Number of n-node unlabeled digraphs without isolated nodes. -/
opaque A053598 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053598.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053633: Triangular array T(n,k) giving coefficients in expansion of Product_{j=1..n} (1+x^j) mod x^(n+1)-1. -/
opaque A053633 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053633.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053695: Differences between record prime gaps. -/
opaque A053695 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053695.provenance : SequenceMachineLib.Provenance := .undefined

/-- A053786: a(n) = next prime after n^4. -/
opaque A053786 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A053786.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054169: Number of positive integers <= 2^n of form 4 x^2 + 5 y^2. -/
opaque A054169 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054169.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054225: Triangle read by rows: row n (n>=0) gives the number of partitions of (n,0), (n-1,1), (n-2,2), ..., (0,n) respectively into sums of pairs. -/
opaque A054225 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054225.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054227: Number of positive integers <= 2^n of form x^2 + 13 y^2. -/
opaque A054227 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054227.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054244: Number of partitions of n into distinct positive parts <= n, with parts combined by IOR (inclusive or). -/
opaque A054244 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054244.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054249: Alternately subtract and add 1 to digits in decimal expansion of Pi. -/
opaque A054249 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054249.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054255: Triangle T(n,k) (n >= 1, 0<=k<=n) giving number of preferential arrangements of n things beginning with k (transposed, then read by rows). -/
opaque A054255 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054255.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054348: Triangular array whose rows are successive generations of the variant of the Kolakoski sequence described in A042942. -/
opaque A054348 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054348.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054576: Largest proper factor of the largest proper factor of n. -/
opaque A054576 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054576.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054654: Triangle of Stirling numbers of 1st kind, S(n, n-k), n >= 0, 0 <= k <= n. -/
opaque A054654 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054654.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054911: Number of n-dimensional odd unimodular lattices (or quadratic forms). -/
opaque A054911 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054911.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054915: Number of unlabeled connected graphs with n nodes such that complement is also connected. -/
opaque A054915 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054915.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054931: Number of unlabeled connected graphs up to complementarity. -/
opaque A054931 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054931.provenance : SequenceMachineLib.Provenance := .undefined

/-- A054960: Number of unlabeled graphs with n nodes and an odd number of edges. -/
opaque A054960 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A054960.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055039: Numbers of the form 2^(2i+1)*(8j+7). -/
opaque A055039 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055039.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055133: Matrix inverse of A008459 (squares of entries of Pascal's triangle). -/
opaque A055133 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055133.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055175: Number of new numbers in n-th segment of A055174; see example line of A055174. -/
opaque A055175 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055175.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055314: Triangle T(n,k) read by rows: number of labeled trees with n nodes and k leaves, n >= 2, 2 <= k <= n. -/
opaque A055314 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055314.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055396: Smallest prime dividing n is a(n)-th prime (a(1)=0). -/
opaque A055396 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055396.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055456: a(n) is the smallest number which is not the sum of exactly 1 or of n earlier terms. -/
opaque A055456 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055456.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055476: Powers of ten written in base 5. -/
opaque A055476 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055476.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055621: Number of covers of an unlabeled n-set. -/
opaque A055621 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055621.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055648: Integers in base 13 with each base 13 digit represented by 2 decimal digits. -/
opaque A055648 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055648.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055973: Number of unlabeled digraphs with loops (relations) on n nodes and with an even number of arcs. -/
opaque A055973 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055973.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055974: Number of unlabeled digraphs with loops (relations) on n nodes and with an odd number of arcs. -/
opaque A055974 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055974.provenance : SequenceMachineLib.Provenance := .undefined

/-- A055978: A sequence related to Ramanujan's tau function. -/
opaque A055978 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A055978.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056271: Number of primitive (aperiodic) words of length n which contain exactly six different symbols. -/
opaque A056271 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056271.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056291: Number of primitive (period n) n-bead necklaces with exactly six different colored beads. -/
opaque A056291 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056291.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056313: Number of reversible strings with n beads using exactly six different colors. -/
opaque A056313 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056313.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056322: Number of primitive (aperiodic) reversible strings with n beads using exactly six different colors. -/
opaque A056322 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056322.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056457: Palindromes using exactly six different symbols. -/
opaque A056457 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056457.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056467: Number of primitive (aperiodic) palindromes using exactly six different symbols. -/
opaque A056467 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056467.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056474: Number of palindromic structures using exactly five different symbols. -/
opaque A056474 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056474.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056475: Number of palindromic structures using exactly six different symbols. -/
opaque A056475 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056475.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056492: Number of periodic palindromes using exactly six different symbols. -/
opaque A056492 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056492.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056502: Number of primitive (period n) periodic palindromes using exactly six different symbols. -/
opaque A056502 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056502.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056509: Number of periodic palindromic structures of length n using exactly three different symbols. -/
opaque A056509 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056509.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056510: Number of periodic palindromic structures of length n using exactly four different symbols. -/
opaque A056510 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056510.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056511: Number of periodic palindromic structures of length n using exactly five different symbols. -/
opaque A056511 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056511.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056512: Number of periodic palindromic structures of length n using exactly six different symbols. -/
opaque A056512 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056512.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056526: First differences of Flavius Josephus's sieve. -/
opaque A056526 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056526.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056636: Conjecturally largest even integer which is the sum of two primes in at most n ways. -/
opaque A056636 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056636.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056649: a(n) = A056061(n) - A034444(A056647(n)). -/
opaque A056649 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056649.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056710: Near-repdigit primes such that all digits are equal except for an end-digit. -/
opaque A056710 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056710.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056753: Only odd numbers occur and for all k there are k numbers between any two successive occurrences of k. -/
opaque A056753 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056753.provenance : SequenceMachineLib.Provenance := .undefined

/-- A056965: a(n) = n - (reversal of digits of n). -/
opaque A056965 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A056965.provenance : SequenceMachineLib.Provenance := .undefined

/-- A057237: Maximum k <= n such that 1, 2, ..., k are all relatively prime to n. -/
opaque A057237 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A057237.provenance : SequenceMachineLib.Provenance := .undefined

/-- A057500: Number of connected labeled graphs with n edges and n nodes. -/
opaque A057500 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A057500.provenance : SequenceMachineLib.Provenance := .undefined

/-- A057767: Number of twin prime pairs between P(n)^2 and P(n+1)^2 where P(n) is the n-th prime. -/
opaque A057767 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A057767.provenance : SequenceMachineLib.Provenance := .undefined

/-- A057857: Number of residue classes modulo n-th primorial number which contain a prime. -/
opaque A057857 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A057857.provenance : SequenceMachineLib.Provenance := .undefined

/-- A057961: Number of points in square lattice covered by a disc centered at (0,0) as its radius increases. -/
opaque A057961 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A057961.provenance : SequenceMachineLib.Provenance := .undefined

/-- A057997: Number of labeled loops (quasigroups with an identity element). -/
opaque A057997 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A057997.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058008: Numbers k such that (2*k - 1)!/(k!)^2 is an integer. -/
opaque A058008 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058008.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058057: Triangle giving coefficients of ménage hit polynomials. -/
opaque A058057 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058057.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058087: Triangle read by rows, giving coefficients of the ménage hit polynomials ordered by descending powers. T(n, k) for 0 <= k <= n. -/
opaque A058087 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058087.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058351: Partial sums of A000084. -/
opaque A058351 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058351.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058353: n*A000084(n). -/
opaque A058353 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058353.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058528: Number of n X n (0,1) matrices with all column and row sums equal to 4. -/
opaque A058528 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058528.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058682: a(n) = p(0) + p(1) + ... + p(n) - n - 1, where p = partition numbers, A000041. -/
opaque A058682 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058682.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058692: a(n) = B(n) - 1, where B(n) = Bell numbers, A000110. -/
opaque A058692 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058692.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058696: Number of ways to partition 2n into positive integers. -/
opaque A058696 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058696.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058872: Number of 2-colored labeled graphs with n nodes. -/
opaque A058872 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058872.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058879: Triangle read by rows: T(n,k) = number of connected graphs with one cycle of length m = n - k + 1 and n nodes (n >= 3 and 1 <= k <= n - 2). -/
opaque A058879 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058879.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058884: Partial sums of the partition function (A000041), with the last term subtracted. Also the sum of the row of the character table for S_n corresponding to the partition n-1,1 for n>1. Also the sum over all partitions lambda of n of one less than the number of 1's in lambda. -/
opaque A058884 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058884.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058933: Let k be bigomega(n) (i.e., n is a k-almost-prime). a(n) = number of k-almost-primes <= n. -/
opaque A058933 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058933.provenance : SequenceMachineLib.Provenance := .undefined

/-- A058984: Number of partitions of n in which number of parts is not 2. -/
opaque A058984 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A058984.provenance : SequenceMachineLib.Provenance := .undefined

/-- A059056: Penrice Christmas gift numbers, Card-matching numbers (Dinner-Diner matching numbers): Triangle T(n,k) = number of ways to get k matches for a deck with n cards, 2 of each kind. -/
opaque A059056 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A059056.provenance : SequenceMachineLib.Provenance := .undefined

/-- A059057: Penrice Christmas gift numbers, Card-matching numbers (Dinner-Diner matching numbers). -/
opaque A059057 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A059057.provenance : SequenceMachineLib.Provenance := .undefined

/-- A059066: Card-matching numbers (Dinner-Diner matching numbers). -/
opaque A059066 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A059066.provenance : SequenceMachineLib.Provenance := .undefined

/-- A059110: Triangle T = A007318*A271703; T(n,m)= Sum_{i=0..n} L'(n,i)*binomial(i,m), m=0..n. -/
opaque A059110 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A059110.provenance : SequenceMachineLib.Provenance := .undefined

/-- A059251: A sequence related to numeric partitions and Fermat Coefficients. -/
opaque A059251 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A059251.provenance : SequenceMachineLib.Provenance := .undefined

/-- A059341: Triangle giving numerators of coefficients of Euler polynomials, highest powers first. -/
opaque A059341 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A059341.provenance : SequenceMachineLib.Provenance := .undefined

/-- A059496: a(1) = 2; a(n+1) is obtained by and trying to change just one digit of a(n), starting with the least significant digit, until a new prime is reached. Take the lexicographically earliest sequence. Digits may be replaced by any nonzero digit. -/
opaque A059496 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A059496.provenance : SequenceMachineLib.Provenance := .undefined

/-- A059816: Let g_n be the ball packing n-width for the manifold torus X square; sequence gives denominator of (g_n/Pi)^2. -/
opaque A059816 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A059816.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060074: Triangle A060058 by diagonals. -/
opaque A060074 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060074.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060128: a(n) is the number of disjoint cycles (excluding 1-cycles, i.e., fixed elements) in the n-th permutation of A060117 and A060118. -/
opaque A060128 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060128.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060166: Number of orbits of length n under the map whose periodic points are counted by A001641. -/
opaque A060166 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060166.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060237: a(n) = n!^2 * Sum_{m=1..n}( Sum_{k=1..m} 1/(k*m) ). -/
opaque A060237 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060237.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060281: Triangle T(n,k) read by rows giving number of labeled mappings (or functional digraphs) from n points to themselves (endofunctions) with exactly k cycles, k=1..n. -/
opaque A060281 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060281.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060438: Triangle T(n,k), 1 <= k <= n, giving maximal size of binary code of length n and covering radius k. -/
opaque A060438 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060438.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060475: Triangular array formed from successive differences of factorial numbers, then with factorials removed. -/
opaque A060475 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060475.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060689: Number of nonabelian groups of order n. -/
opaque A060689 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060689.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060701: Table by antidiagonals of Mahonian numbers T(n,k): permutations of n letters with k inversions. -/
opaque A060701 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060701.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060850: Array of the coefficients A(n,k) in the expansion of Product_{i>=1} 1/(1-x^i)^n = Sum_{k>=0} A(n,k)*x^k, n >= 1, k >= 0. -/
opaque A060850 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060850.provenance : SequenceMachineLib.Provenance := .undefined

/-- A060974: Irregular primes with irregularity > 1. -/
opaque A060974 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A060974.provenance : SequenceMachineLib.Provenance := .undefined

/-- A061071: Number of distinct values in the list of number of divisors, d(j), j=1...n. -/
opaque A061071 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A061071.provenance : SequenceMachineLib.Provenance := .undefined

/-- A061095: Number of ways of dividing n labeled items into labeled boxes with an equal number of items in each box. -/
opaque A061095 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A061095.provenance : SequenceMachineLib.Provenance := .undefined

/-- A061354: Numerator of Sum_{k=0..n} 1/k!. -/
opaque A061354 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A061354.provenance : SequenceMachineLib.Provenance := .undefined

/-- A061509: Write n in decimal, omit 0's, replace the k-th digit d[k] with the k-th prime, raised to d[k]-th power and multiply. -/
opaque A061509 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A061509.provenance : SequenceMachineLib.Provenance := .undefined

/-- A061645: a(n) is the number of divisors of n-th even perfect number. -/
opaque A061645 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A061645.provenance : SequenceMachineLib.Provenance := .undefined

/-- A061653: Relative class number h- of cyclotomic field Q(zeta_n). -/
opaque A061653 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A061653.provenance : SequenceMachineLib.Provenance := .undefined

/-- A061702: Triangle T(n,k) defined by Sum_{n >= 0,m >= 0} T(n,m)*x^m*y^n = 1 + y*(1 + 3*x - 4*x^2*y - 3*x^2*y^2 - 3*x^3*y^2 + 4*x^4*y^3)/((1 - y - 2*x*y - x*y^2 + x^3*y^3)*(1 - x*y)). -/
opaque A061702 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A061702.provenance : SequenceMachineLib.Provenance := .undefined

/-- A062161: Boustrophedon transform of n mod 2. -/
opaque A062161 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A062161.provenance : SequenceMachineLib.Provenance := .undefined

/-- A062178: a(n+1) = 2a(n)-a([n/2]) starting with a(0)=0 and a(1)=1. -/
opaque A062178 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A062178.provenance : SequenceMachineLib.Provenance := .undefined

/-- A062272: Boustrophedon transform of (n+1) mod 2. -/
opaque A062272 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A062272.provenance : SequenceMachineLib.Provenance := .undefined

/-- A062282: Number of permutations of n elements with an even number of fixed points. -/
opaque A062282 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A062282.provenance : SequenceMachineLib.Provenance := .undefined

/-- A062399: Smallest multiple of n with property that each digit is one less (mod 10) than the previous digit; or 0 if no such multiple exists. -/
opaque A062399 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A062399.provenance : SequenceMachineLib.Provenance := .undefined

/-- A063041: Image of n under Collatz-2 map, a generalization of the classical '3x+1' - function: instead of dividing an even number by 2 a nonprime will be divided by its smallest prime factor and a prime will be multiplied not by 3 but by its prime-predecessor, before one is added. -/
opaque A063041 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A063041.provenance : SequenceMachineLib.Provenance := .undefined

/-- A063660: Min{ m | m > n and both numbers have at least one common decimal digit}. -/
opaque A063660 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A063660.provenance : SequenceMachineLib.Provenance := .undefined

/-- A063691: Number of solutions to x^2 + y^2 + z^2 = n in positive integers. -/
opaque A063691 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A063691.provenance : SequenceMachineLib.Provenance := .undefined

/-- A063730: Number of solutions to w^2 + x^2 + y^2 + z^2 = n in positive integers. -/
opaque A063730 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A063730.provenance : SequenceMachineLib.Provenance := .undefined

/-- A063889: Composite numbers not divisible by 5 which in base 5 contain their largest proper factor as a substring. -/
opaque A063889 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A063889.provenance : SequenceMachineLib.Provenance := .undefined

/-- A063918: a(1) = 1 and - applying the sieve of Eratosthenes - for n > 1: a(n) = if n is prime then 0 else the first prime p which marks n as composite. -/
opaque A063918 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A063918.provenance : SequenceMachineLib.Provenance := .undefined

/-- A064190: Triangle T(n,k) generalizing the tangent numbers. -/
opaque A064190 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A064190.provenance : SequenceMachineLib.Provenance := .undefined

/-- A064414: Numbers that divide at least one term in every Fibonacci sequence. -/
opaque A064414 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A064414.provenance : SequenceMachineLib.Provenance := .undefined

/-- A064436: Number of switching functions of n or fewer variables which cannot be realized as threshold gates. -/
opaque A064436 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A064436.provenance : SequenceMachineLib.Provenance := .undefined

/-- A064542: a(n) = Max { k | k! <= n! / k! } where m! = A000142(m), factorial. -/
opaque A064542 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A064542.provenance : SequenceMachineLib.Provenance := .undefined

/-- A064745: Inverse permutation to A064736. -/
opaque A064745 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A064745.provenance : SequenceMachineLib.Provenance := .undefined

/-- A064856: Stirling transform of Catalan numbers: a(n) = Sum_{k=0..n} Stirling2(n, k)*binomial(2*k, k) / (k+1). -/
opaque A064856 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A064856.provenance : SequenceMachineLib.Provenance := .undefined

/-- A064873: First of four sequences representing the lexicographical minimal decomposition of n in 4 squares: n = a(n)^2 + A064874(n)^2 + A064875(n)^2 + A064876(n)^2. -/
opaque A064873 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A064873.provenance : SequenceMachineLib.Provenance := .undefined

/-- A064874: Second of four sequences representing the lexicographical minimal decomposition of n in 4 squares: n = A064873(n)^2 + a(n)^2 + A064875(n)^2 + A064876(n)^2. -/
opaque A064874 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A064874.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065031: In the decimal expansion of n, replace each odd digit with 1 and each even digit with 2. -/
opaque A065031 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065031.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065087: a(n) = A000166(n)*binomial(n+1,2). -/
opaque A065087 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065087.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065119: Numbers k such that the k-th cyclotomic polynomial is a trinomial. -/
opaque A065119 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065119.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065253: a(n) = 10*(A064823(n)-1) + A000796(n). -/
opaque A065253 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065253.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065600: Triangle T(n,k) giving number of Dyck paths of length 2n with exactly k hills (0 <= k <= n). -/
opaque A065600 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065600.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065642: a(1) = 1; for n > 1, a(n) = Min {m > n | m has same prime factors as n ignoring multiplicity}. -/
opaque A065642 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065642.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065719: Number of 8's in decimal expansion of 2^n. -/
opaque A065719 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065719.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065841: a(1) = 1; a(2) = 2; a(3) = 3; a(n) is concatenation of a(n-3), a(n-2) and a(n-1). -/
opaque A065841 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065841.provenance : SequenceMachineLib.Provenance := .undefined

/-- A065842: a(1) = 1; a(2) = 2; a(3) = 3; a(n) is concatenation of a(n-3), a(n-2) and a(n-1); the digits on the right of the first 3 (if any) are then swapped with the digits on the left. -/
opaque A065842 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A065842.provenance : SequenceMachineLib.Provenance := .undefined

/-- A066060: Number of nilpotent groups of order n. -/
opaque A066060 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A066060.provenance : SequenceMachineLib.Provenance := .undefined

/-- A066069: a(n) is the smallest positive integer m such that n divides (n + m)^m. -/
opaque A066069 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A066069.provenance : SequenceMachineLib.Provenance := .undefined

/-- A066295: Number of Abelian groups of order n minus the number of non-Abelian groups of order n. -/
opaque A066295 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A066295.provenance : SequenceMachineLib.Provenance := .undefined

/-- A066447: Number of basis partitions (or basic partitions) of n. -/
opaque A066447 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A066447.provenance : SequenceMachineLib.Provenance := .undefined

/-- A066657: Numerators of rational numbers produced in order by A066720(j)/A066720(i) for i >= 1, 1 <= j -/
opaque A066657 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A066657.provenance : SequenceMachineLib.Provenance := .undefined

/-- A066882: Number of partitions of n into prime divisors of n. -/
opaque A066882 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A066882.provenance : SequenceMachineLib.Provenance := .undefined

/-- A066912: Fourth column of the Eulerian triangle A008292 in square array format. -/
opaque A066912 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A066912.provenance : SequenceMachineLib.Provenance := .undefined

/-- A067176: A triangle of generalized Stirling numbers: sum of consecutive terms in the harmonic sequence multiplied by the product of their denominators. -/
opaque A067176 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A067176.provenance : SequenceMachineLib.Provenance := .undefined

/-- A067582: Nonprime values of n such that bigomega(n)^omega(n)=omega(n)^bigomega(n) where bigomega(n) is the number of prime factors of n (counted with multiplicity) and omega(n) the number of distinct prime factors of n. -/
opaque A067582 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A067582.provenance : SequenceMachineLib.Provenance := .undefined

/-- A067595: Number of partitions of n into distinct Lucas parts (A000032). -/
opaque A067595 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A067595.provenance : SequenceMachineLib.Provenance := .undefined

/-- A067653: Denominators of the coefficients in exp(x/(1-x)) power series. -/
opaque A067653 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A067653.provenance : SequenceMachineLib.Provenance := .undefined

/-- A067659: Number of partitions of n into distinct parts such that number of parts is odd. -/
opaque A067659 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A067659.provenance : SequenceMachineLib.Provenance := .undefined

/-- A067661: Number of partitions of n into distinct parts such that number of parts is even. -/
opaque A067661 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A067661.provenance : SequenceMachineLib.Provenance := .undefined

/-- A067764: Numerators of the coefficients in exp(x/(1-x)) power series. -/
opaque A067764 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A067764.provenance : SequenceMachineLib.Provenance := .undefined

/-- A067824: a(1) = 1; for n > 1, a(n) = 1 + Sum_{0 < d < n, d|n} a(d). -/
opaque A067824 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A067824.provenance : SequenceMachineLib.Provenance := .undefined

/-- A068051: Number of n-node connected graphs with one cycle, possibly of length 1 or 2. -/
opaque A068051 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A068051.provenance : SequenceMachineLib.Provenance := .undefined

/-- A068106: Euler's difference table: triangle read by rows, formed by starting with factorial numbers (A000142) and repeatedly taking differences. T(n,n) = n!, T(n,k) = T(n,k+1) - T(n-1,k). -/
opaque A068106 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A068106.provenance : SequenceMachineLib.Provenance := .undefined

/-- A068325: Self-conjugate digitized partition numbers. -/
opaque A068325 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A068325.provenance : SequenceMachineLib.Provenance := .undefined

/-- A068958: Smallest value of k such that p | (10^k + 1), where p is the n-th prime; or 0 if no such k exists. -/
opaque A068958 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A068958.provenance : SequenceMachineLib.Provenance := .undefined

/-- A069050: Numbers k such that 2^k mod phi(k) = 2^phi(k) mod k. -/
opaque A069050 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A069050.provenance : SequenceMachineLib.Provenance := .undefined

/-- A069169: Nonprimes k such that sigma(k)*Sum_{d|k} 1/sigma(d) is an integer. -/
opaque A069169 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A069169.provenance : SequenceMachineLib.Provenance := .undefined

/-- A069270: Third level generalization of Catalan triangle (0th level is Pascal's triangle A007318; first level is Catalan triangle A009766; 2nd level is A069269). -/
opaque A069270 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A069270.provenance : SequenceMachineLib.Provenance := .undefined

/-- A069360: Number of prime pairs (p,q), p <= q, such that (p+q)/2 = 2*n. -/
opaque A069360 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A069360.provenance : SequenceMachineLib.Provenance := .undefined

/-- A069853: Numerators of coefficients of expansion of sinh(x)/sin(x) (even powers only). -/
opaque A069853 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A069853.provenance : SequenceMachineLib.Provenance := .undefined

/-- A069877: Smallest number with a prime signature whose indices are the decimal digits of n. -/
opaque A069877 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A069877.provenance : SequenceMachineLib.Provenance := .undefined

/-- A070094: Number of acute integer triangles with perimeter n and relatively prime side lengths. -/
opaque A070094 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A070094.provenance : SequenceMachineLib.Provenance := .undefined

/-- A070115: Numbers m such that [A070080(m), A070081(m), A070082(m)] is an isosceles integer triangle. -/
opaque A070115 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A070115.provenance : SequenceMachineLib.Provenance := .undefined

/-- A070766: Number of polyhexes with n cells that tile the plane. -/
opaque A070766 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A070766.provenance : SequenceMachineLib.Provenance := .undefined

/-- A070767: Number of polyhexes with n cells that do not tile the plane. -/
opaque A070767 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A070767.provenance : SequenceMachineLib.Provenance := .undefined

/-- A070895: Triangle read by rows where T(n+1,k)=T(n,k)+n*T(n-1,k) starting with T(n,n)=1 and T(n,k)=0 if n -/
opaque A070895 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A070895.provenance : SequenceMachineLib.Provenance := .undefined

/-- A071161: Integers whose decimal expansion satisfies the condition that if we read each term from the left to right (the most significant to the least significant digit) then each nonzero digit gives a distance to the next nonzero digit to right (with a cyclic wrap-over from the least-significant to the most significant nonzero digit). -/
opaque A071161 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A071161.provenance : SequenceMachineLib.Provenance := .undefined

/-- A071222: Smallest k such that gcd(n,k) = gcd(n+1,k+1). -/
opaque A071222 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A071222.provenance : SequenceMachineLib.Provenance := .undefined

/-- A071340: a(n) = least positive r <= n such that the origin-centered circle of radius sqrt(r) touches A071339(n) lattice points. -/
opaque A071340 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A071340.provenance : SequenceMachineLib.Provenance := .undefined

/-- A071374: 0 iff n is of the form 4^a*(8k+7), otherwise 1. -/
opaque A071374 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A071374.provenance : SequenceMachineLib.Provenance := .undefined

/-- A071967: Theta series of 9-dimensional odd unimodular lattice E_8 + Z. -/
opaque A071967 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A071967.provenance : SequenceMachineLib.Provenance := .undefined

/-- A072157: Denominator of Sum_{k=1..n} phi(k)/k^2. -/
opaque A072157 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A072157.provenance : SequenceMachineLib.Provenance := .undefined

/-- A072401: 1 iff n is of the form 4^m*(8k+7). -/
opaque A072401 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A072401.provenance : SequenceMachineLib.Provenance := .undefined

/-- A072448: Squares of the terms of the decimal expansion of Pi. -/
opaque A072448 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A072448.provenance : SequenceMachineLib.Provenance := .undefined

/-- A072453: Shadow transform of A000522. -/
opaque A072453 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A072453.provenance : SequenceMachineLib.Provenance := .undefined

/-- A073146: Triangle of numbers {a(n,k), n >= 0, 0 <= k <= n} defined by a(0,0)=1, a(n,0)=A000670(n), a(n,n)=A000629(n), a(n,k) = a(n,k-1) + a(n-1,k-1); a(n+1,0) = Sum_{k=0..n} a(n,k). -/
opaque A073146 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A073146.provenance : SequenceMachineLib.Provenance := .undefined

/-- A073174: a(n) = a(phi(n-1)) + a(phi(n-2)), a(0)=0, a(1)=1. -/
opaque A073174 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A073174.provenance : SequenceMachineLib.Provenance := .undefined

/-- A073192: Number of general plane trees whose n-th subtree from the left is equal to the n-th subtree from the right, for all its subtrees (i.e., are palindromic in the shallow sense). -/
opaque A073192 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A073192.provenance : SequenceMachineLib.Provenance := .undefined

/-- A073212: n-th digit of Pi + n-th digit of e. -/
opaque A073212 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A073212.provenance : SequenceMachineLib.Provenance := .undefined

/-- A073276: Irregular primes (A000928) with irregularity index one. -/
opaque A073276 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A073276.provenance : SequenceMachineLib.Provenance := .undefined

/-- A073364: Number of permutations p of (1,2,3,...,n) such that k+p(k) is prime for 1<=k<=n. -/
opaque A073364 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A073364.provenance : SequenceMachineLib.Provenance := .undefined

/-- A073899: a(1) = 1; then k-th prime prime(k) followed by prime(k) consecutive composite numbers not occurring earlier. -/
opaque A073899 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A073899.provenance : SequenceMachineLib.Provenance := .undefined

/-- A073900: a(1) = 1; then k-th prime prime(k) followed by Floor[e^k] consecutive composite numbers not occurring earlier. -/
opaque A073900 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A073900.provenance : SequenceMachineLib.Provenance := .undefined

/-- A074103: a(n) = n!/A074859(n). -/
opaque A074103 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A074103.provenance : SequenceMachineLib.Provenance := .undefined

/-- A074115: a(n) = n!/A000793(n). -/
opaque A074115 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A074115.provenance : SequenceMachineLib.Provenance := .undefined

/-- A074143: a(1) = 1; a(n) = n * Sum_{k=1..n-1} a(k). -/
opaque A074143 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A074143.provenance : SequenceMachineLib.Provenance := .undefined

/-- A074427: Number of 6-ary Lyndon words of length n with trace 0 and subtrace 5 over Z_6. -/
opaque A074427 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A074427.provenance : SequenceMachineLib.Provenance := .undefined

/-- A074473: Dropping time for the 3x+1 problem: for n >= 2, number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated starting at n; a(1)=1 by convention. -/
opaque A074473 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A074473.provenance : SequenceMachineLib.Provenance := .undefined

/-- A074779: Numbers k such that 2^k+1 and F(k) are relatively prime, where F(k) denotes the k-th Fibonacci number. -/
opaque A074779 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A074779.provenance : SequenceMachineLib.Provenance := .undefined

/-- A074859: Number of elements of S_n having the maximum possible order g(n), where g(n) is Landau's function (A000793). -/
opaque A074859 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A074859.provenance : SequenceMachineLib.Provenance := .undefined

/-- A075342: a(1) = 1, a(n+1) is the smallest number such that there are n primes between a(n) and a(n+1) exclusive. -/
opaque A075342 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A075342.provenance : SequenceMachineLib.Provenance := .undefined

/-- A075511: Sixth column of triangle A075497. -/
opaque A075511 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A075511.provenance : SequenceMachineLib.Provenance := .undefined

/-- A075512: Seventh column of triangle A075497. -/
opaque A075512 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A075512.provenance : SequenceMachineLib.Provenance := .undefined

/-- A075929: Basis for code in A075928. -/
opaque A075929 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A075929.provenance : SequenceMachineLib.Provenance := .undefined

/-- A076141: Number of times n occurs as a binary sub-pattern of n^2. -/
opaque A076141 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A076141.provenance : SequenceMachineLib.Provenance := .undefined

/-- A076726: a(n) = Sum_{k>=0} k^n/2^k. -/
opaque A076726 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A076726.provenance : SequenceMachineLib.Provenance := .undefined

/-- A076731: Table T(n,k) giving number of ways of obtaining exactly 0 correct answers on an (n,k)-matching problem (1 <= k <= n). -/
opaque A076731 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A076731.provenance : SequenceMachineLib.Provenance := .undefined

/-- A076732: Table T(n,k) giving number of ways of obtaining exactly one correct answer on an (n,k)-matching problem (1 <= k <= n). -/
opaque A076732 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A076732.provenance : SequenceMachineLib.Provenance := .undefined

/-- A076864: Number of connected loopless multigraphs with n edges. -/
opaque A076864 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A076864.provenance : SequenceMachineLib.Provenance := .undefined

/-- A077003: a(n) = index of triangular number A077002(n). -/
opaque A077003 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A077003.provenance : SequenceMachineLib.Provenance := .undefined

/-- A077168: Lexicographically earliest infinite sequence of distinct positive numbers with the property that when written as a triangle, the product of each row is a factorial. -/
opaque A077168 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A077168.provenance : SequenceMachineLib.Provenance := .undefined

/-- A077435: Number of right triangles whose vertices are lattice points in {1,2,...,n} X {1,2,...,n}. -/
opaque A077435 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A077435.provenance : SequenceMachineLib.Provenance := .undefined

/-- A077462: Prime factor configuration patterns. -/
opaque A077462 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A077462.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078129: Numbers which cannot be written as sum of cubes > 1. -/
opaque A078129 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078129.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078160: a(n) = A055086(n!). -/
opaque A078160 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078160.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078183: Number of solutions to x^2 + y^2 + z^2 < n^2; number of lattice points inside a sphere of radius n. -/
opaque A078183 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078183.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078184: Number of solutions to n^2 < x^2 + y^2 + z^2 < (n+1)^2; number of lattice points between spheres of radii n and n+1. -/
opaque A078184 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078184.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078191: a(n) = concatenation of n n times divided by n. -/
opaque A078191 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078191.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078463: a(n) = A000594(n+1) - A000594(n). -/
opaque A078463 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078463.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078587: Largest prime p such that p -/
opaque A078587 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078587.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078866: The quadruples (d1,d2,d3,d4) with elements in {2,4,6} are listed in lexicographic order; for each quadruple, this sequence lists the smallest prime p >= 5 such that the differences between the 5 consecutive primes starting with p are (d1,d2,d3,d4), if such a prime exists. -/
opaque A078866 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078866.provenance : SequenceMachineLib.Provenance := .undefined

/-- A078998: Choose a(n) so that a(1)+a(2)+...+a(n) = concatenation of n first natural numbers. -/
opaque A078998 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A078998.provenance : SequenceMachineLib.Provenance := .undefined

/-- A079148: Primes p such that p-1 has at most 2 prime factors, counted with multiplicity; i.e., primes p such that bigomega(p-1) = A001222(p-1) <= 2. -/
opaque A079148 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A079148.provenance : SequenceMachineLib.Provenance := .undefined

/-- A079210: Positive divisors of n!, listed in increasing order for each n, a new row for each n. -/
opaque A079210 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A079210.provenance : SequenceMachineLib.Provenance := .undefined

/-- A079267: d(n,s) = number of perfect matchings on {1, 2, ..., 2*n} with s short pairs. -/
opaque A079267 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A079267.provenance : SequenceMachineLib.Provenance := .undefined

/-- A079346: Primes p such that F(p-(p/5)) is the first Fibonacci number that p divides. -/
opaque A079346 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A079346.provenance : SequenceMachineLib.Provenance := .undefined

/-- A079510: Triangle T(n,k) read by rows; related to number of preorders. -/
opaque A079510 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A079510.provenance : SequenceMachineLib.Provenance := .undefined

/-- A079641: Matrix product of Stirling2-triangle A008277(n,k) and unsigned Stirling1-triangle |A008275(n,k)|. -/
opaque A079641 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A079641.provenance : SequenceMachineLib.Provenance := .undefined

/-- A080247: Formal inverse of triangle A080246. Unsigned version of A080245. -/
opaque A080247 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A080247.provenance : SequenceMachineLib.Provenance := .undefined

/-- A080362: a(n) is the number of positive integers x such that the number of unitary-prime-divisors of x! equals n. Same as the number of positive integers x such that the number of primes in (x/2,x] equals n. -/
opaque A080362 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A080362.provenance : SequenceMachineLib.Provenance := .undefined

/-- A080695: Concatenation of the prime power factors (with maximal exponent) of n; a(1) = 1 by convention. -/
opaque A080695 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A080695.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081046: Difference of the first two Stirling numbers of the first kind. -/
opaque A081046 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081046.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081047: Difference of Stirling numbers of the first kind. -/
opaque A081047 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081047.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081048: a(n) = Stirling1(n+1, 2) where Stirling1 is A048994. -/
opaque A081048 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081048.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081051: Stirling numbers of the first kind. -/
opaque A081051 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081051.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081315: Lexicographically earliest sequence of positive integers such that n occurs a(n)-1 times, starting at n=0. -/
opaque A081315 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081315.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081358: E.g.f.: log((1+x) / (1-x)) / (2*(1-x)). -/
opaque A081358 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081358.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081360: Expansion of q^(-1/24) (m (1-m) / 16)^(1/24) in powers of q, where m = k^2 is the parameter and q is the nome for Jacobian elliptic functions. -/
opaque A081360 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081360.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081362: Expansion of q^(1/24) * eta(q) / eta(q^2) in powers of q. -/
opaque A081362 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081362.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081562: Binomial transform of expansion of exp(2cosh(x)), A000807. -/
opaque A081562 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081562.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081563: Second binomial transform of expansion of exp(2*cosh(x)). -/
opaque A081563 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081563.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081737: a(n) = (n-1)*10 + n-th decimal digit of Pi=3.14159... -/
opaque A081737 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081737.provenance : SequenceMachineLib.Provenance := .undefined

/-- A081844: Number of irreducible factors of x^(2n+1) - 1 over GF(2). -/
opaque A081844 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A081844.provenance : SequenceMachineLib.Provenance := .undefined

/-- A082216: Smallest palindrome beginning with n. -/
opaque A082216 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A082216.provenance : SequenceMachineLib.Provenance := .undefined

/-- A082775: Convolution of natural numbers >= 2 and the partition numbers (A000041). -/
opaque A082775 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A082775.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083249: Numbers k with A045763(k) = k + 1 - d(k) - phi(k) < d(k) < phi(k). -/
opaque A083249 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083249.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083451: (n concatenated n times) - n^n. -/
opaque A083451 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083451.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083453: a(n) = (concatenation of numbers from n to 1) - n^n. -/
opaque A083453 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083453.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083751: Number of partitions of n into >= 2 parts and with minimum part >= 2. -/
opaque A083751 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083751.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083888: Number of divisors of n with largest digit = 1 (base 10). -/
opaque A083888 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083888.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083889: Number of divisors of n with largest digit = 2 (base 10). -/
opaque A083889 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083889.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083891: Number of divisors of n with largest digit = 4 (base 10). -/
opaque A083891 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083891.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083895: Number of divisors of n with largest digit = 8 (base 10). -/
opaque A083895 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083895.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083896: Number of divisors of n with largest digit = 9 (base 10). -/
opaque A083896 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083896.provenance : SequenceMachineLib.Provenance := .undefined

/-- A083952: Integer coefficients a(n) of A(x), where a(n) = 1 or 2 for all n, such that A(x)^(1/2) has only integer coefficients. -/
opaque A083952 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A083952.provenance : SequenceMachineLib.Provenance := .undefined

/-- A084098: Expansion of e.g.f. exp(x)*tan(2*x)/2. -/
opaque A084098 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A084098.provenance : SequenceMachineLib.Provenance := .undefined

/-- A084376: G.f.: (1+x)/Product_{m>0} (1 - x^m). -/
opaque A084376 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A084376.provenance : SequenceMachineLib.Provenance := .undefined

/-- A084520: a(0)=0, after which each n occurs A084526(n) times. -/
opaque A084520 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A084520.provenance : SequenceMachineLib.Provenance := .undefined

/-- A084540: a(n) is the algebraic order of the elliptic lambda function lambda^*(n), where lambda^*(n) is the value of k_n such that K'(k_n)/K(k_n) = sqrt(n), K(k) is a complete elliptic function and K'(k) is the complementary function. -/
opaque A084540 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A084540.provenance : SequenceMachineLib.Provenance := .undefined

/-- A084904: Number of places to insert a division operator in the decimal string of n such that an integer results. -/
opaque A084904 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A084904.provenance : SequenceMachineLib.Provenance := .undefined

/-- A084938: Triangle read by rows: T(n,k) = Sum_{j>=0} j!*T(n-j-1, k-1) for n >= 0, k >= 0. -/
opaque A084938 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A084938.provenance : SequenceMachineLib.Provenance := .undefined

/-- A085099: Least natural number k such that k^2 + n is prime. -/
opaque A085099 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A085099.provenance : SequenceMachineLib.Provenance := .undefined

/-- A085331: Numbers k such that phi(rev(k)) = k. -/
opaque A085331 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A085331.provenance : SequenceMachineLib.Provenance := .undefined

/-- A085734: Triangle read by rows: T(0,0) = 1, T(n,k) = Sum_{j=max(0,1-k)..n-k} (2^j)*(binomial(k+j,1+j) + binomial(k+j+1,1+j))*T(n-1,k-1+j). -/
opaque A085734 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A085734.provenance : SequenceMachineLib.Provenance := .undefined

/-- A085811: Number of partitions of n including 3, but not 1. -/
opaque A085811 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A085811.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086044: Position of the first occurrence of n in concatenated numbers (A007376, Champernowne constant). -/
opaque A086044 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086044.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086045: Position of the second occurrence of n in concatenated numbers (A007376, Champernowne constant). -/
opaque A086045 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086045.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086066: a(n) = Sum_{d in D(n)} 2^d, where D(n) = set of digits of n in decimal representation. -/
opaque A086066 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086066.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086543: Number of partitions of n with at least one odd part. -/
opaque A086543 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086543.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086631: Antidiagonal sums of square table A086629. -/
opaque A086631 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086631.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086646: Triangle, read by rows, of numbers T(n,k), 0 <= k <= n, given by T(n,k) = A000364(n-k)*binomial(2*n, 2*k). -/
opaque A086646 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086646.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086764: Triangle T(n, k), read by row, related to Euler's difference table A068106 (divide column k of A068106 by k!). -/
opaque A086764 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086764.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086852: Number of permutations of length n with exactly 1 rising or falling succession. -/
opaque A086852 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086852.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086853: Number of permutations of length n with exactly 2 rising or falling successions. -/
opaque A086853 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086853.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086854: Number of permutations of length n with exactly 3 rising or falling successions. -/
opaque A086854 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086854.provenance : SequenceMachineLib.Provenance := .undefined

/-- A086856: Triangle read by rows: T(n,k) = one-half number of permutations of length n with exactly k rising or falling successions, for n >= 1, 0 <= k <= n-1. T(1,0) = 1 by convention. -/
opaque A086856 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A086856.provenance : SequenceMachineLib.Provenance := .undefined

/-- A087000: Half length of periodic part of decimal expansion of 1/p for those primes having a periodic part of even length. -/
opaque A087000 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A087000.provenance : SequenceMachineLib.Provenance := .undefined

/-- A087036: Lunar cubes: n*n*n, where * is lunar multiplication. -/
opaque A087036 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A087036.provenance : SequenceMachineLib.Provenance := .undefined

/-- A087061: Array A(n, k) = lunar sum n + k (n >= 0, k >= 0) read by antidiagonals. -/
opaque A087061 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A087061.provenance : SequenceMachineLib.Provenance := .undefined

/-- A087135: Number of positive numbers m such that A073642(m) = n. -/
opaque A087135 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A087135.provenance : SequenceMachineLib.Provenance := .undefined

/-- A087787: a(n) = Sum_{k=0..n} (-1)^(n-k)*A000041(k). -/
opaque A087787 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A087787.provenance : SequenceMachineLib.Provenance := .undefined

/-- A087845: a[n] =a[Min[n-1,Abs[n - a[n-1]]]] + a[a[a[Abs[n - a[n-3]]]]]. -/
opaque A087845 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A087845.provenance : SequenceMachineLib.Provenance := .undefined

/-- A087897: Number of partitions of n into odd parts greater than 1. -/
opaque A087897 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A087897.provenance : SequenceMachineLib.Provenance := .undefined

/-- A088127: E.g.f. exp(-x)*cosh(x)/(1-x)^2. -/
opaque A088127 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A088127.provenance : SequenceMachineLib.Provenance := .undefined

/-- A088190: Largest quadratic residue modulo prime(n). -/
opaque A088190 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A088190.provenance : SequenceMachineLib.Provenance := .undefined

/-- A088239: Triangle read by rows: T(n,k) is the number of primes not less than n-k and not greater than n+k, 0<=k -/
opaque A088239 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A088239.provenance : SequenceMachineLib.Provenance := .undefined

/-- A088262: Triangle in which row n gives n primes ending in k where k is the n-th odd number not divisible by 5. -/
opaque A088262 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A088262.provenance : SequenceMachineLib.Provenance := .undefined

/-- A088577: Position of the first location of n in the digits of phi = 1.61803398874989.... -/
opaque A088577 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A088577.provenance : SequenceMachineLib.Provenance := .undefined

/-- A088806: Number of non-Abelian nilpotent groups of order n. -/
opaque A088806 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A088806.provenance : SequenceMachineLib.Provenance := .undefined

/-- A089052: Triangle read by rows: T(n,k) (n >= 0, 0 <= k <= n) = number of partitions of n into exactly k powers of 2. -/
opaque A089052 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A089052.provenance : SequenceMachineLib.Provenance := .undefined

/-- A089088: a(0) = 1, a(1) = 2; for n > 1, a(n) = smallest positive number not already in sequence which has GCD > 1 with some earlier term. -/
opaque A089088 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A089088.provenance : SequenceMachineLib.Provenance := .undefined

/-- A089552: Sum of legs of primitive Pythagorean triangles having legs that add up to a square, sorted on hypotenuse. -/
opaque A089552 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A089552.provenance : SequenceMachineLib.Provenance := .undefined

/-- A089740: Primes which are digital complements (A055120) of primes. -/
opaque A089740 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A089740.provenance : SequenceMachineLib.Provenance := .undefined

/-- A089848: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A089851/A089853. -/
opaque A089848 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A089848.provenance : SequenceMachineLib.Provenance := .undefined

/-- A089983: 1, 1, 1, 1, ... a, b, c, d, ab-cd, ... -/
opaque A089983 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A089983.provenance : SequenceMachineLib.Provenance := .undefined

/-- A090108: Values of k such that {P(k), P(k+1), ..., P(k+8)} are all prime numbers, whereP(k) = k^2 - 79*k + 1601. -/
opaque A090108 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A090108.provenance : SequenceMachineLib.Provenance := .undefined

/-- A090665: Triangle read by rows: T(n,k) = number of preferential arrangements of n things where the first object has rank k. -/
opaque A090665 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A090665.provenance : SequenceMachineLib.Provenance := .undefined

/-- A090748: Numbers k such that 2^(k+1) - 1 is prime. -/
opaque A090748 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A090748.provenance : SequenceMachineLib.Provenance := .undefined

/-- A090798: Irregular primes in the ratio numerator(Bernoulli(2*n)/(2*n)) / numerator(Bernoulli(2*n)/(2*n*(2*n-r))) when these numerators are different and n is a minimum for some integer r. Duplication indicates irregularity index > 1. -/
opaque A090798 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A090798.provenance : SequenceMachineLib.Provenance := .undefined

/-- A090827: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089869/A089870. -/
opaque A090827 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A090827.provenance : SequenceMachineLib.Provenance := .undefined

/-- A091225: Characteristic function of A014580: 1 if the n-th GF(2)[X] polynomial is irreducible, 0 otherwise. -/
opaque A091225 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A091225.provenance : SequenceMachineLib.Provenance := .undefined

/-- A091248: Number of irreducible factors in the factorization of X^n + 1 over GF(2) (counted with multiplicity). -/
opaque A091248 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A091248.provenance : SequenceMachineLib.Provenance := .undefined

/-- A091360: Partial sums of A000219. -/
opaque A091360 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A091360.provenance : SequenceMachineLib.Provenance := .undefined

/-- A091732: Iphi(n): infinitary analog of Euler's phi function. -/
opaque A091732 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A091732.provenance : SequenceMachineLib.Provenance := .undefined

/-- A091887: Irregularity index of the n-th irregular prime A000928(n). -/
opaque A091887 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A091887.provenance : SequenceMachineLib.Provenance := .undefined

/-- A092073: Boustrophedon transform (first version) of Fibonacci numbers 1, 1, 2, 3, 5, 8, ... -/
opaque A092073 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A092073.provenance : SequenceMachineLib.Provenance := .undefined

/-- A092090: Boustrophedon transform of Fibonacci numbers 1, 2, 3, 5, 8, ... -/
opaque A092090 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A092090.provenance : SequenceMachineLib.Provenance := .undefined

/-- A092269: Spt function: total number of smallest parts (counted with multiplicity) in all partitions of n. -/
opaque A092269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A092269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A092489: Arises in enumeration of 321-hexagon-avoiding permutations. -/
opaque A092489 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A092489.provenance : SequenceMachineLib.Provenance := .undefined

/-- A092575: Number of representations of n of the form x^2 + 3y^2 with (x,y)=1. -/
opaque A092575 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A092575.provenance : SequenceMachineLib.Provenance := .undefined

/-- A092684: First column and main diagonal of triangle A092683, in which the convolution of each row with {1,1} produces a triangle that, when flattened, equals the flattened form of A092683. -/
opaque A092684 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A092684.provenance : SequenceMachineLib.Provenance := .undefined

/-- A092691: a(n) = n! * Sum_{k=1..floor(n/2)} 1/(2k). -/
opaque A092691 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A092691.provenance : SequenceMachineLib.Provenance := .undefined

/-- A092976: Consider all partitions of n into parts all of which are divisors of n; a(n) = number of distinct values taken by the product of the parts. -/
opaque A092976 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A092976.provenance : SequenceMachineLib.Provenance := .undefined

/-- A093101: Cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms. -/
opaque A093101 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A093101.provenance : SequenceMachineLib.Provenance := .undefined

/-- A093115: Number of partitions of n^2 into squares not greater than n. -/
opaque A093115 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A093115.provenance : SequenceMachineLib.Provenance := .undefined

/-- A093695: Number of one-element transitions among partitions of the integer n for unlabeled parts. -/
opaque A093695 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A093695.provenance : SequenceMachineLib.Provenance := .undefined

/-- A093996: G.f.: Product_{k>=2} (1 - x^{F_k}) where F_k are the Fibonacci numbers. -/
opaque A093996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A093996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A093997: Number of partitions of n with an odd number of distinct Fibonacci parts. -/
opaque A093997 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A093997.provenance : SequenceMachineLib.Provenance := .undefined

/-- A093998: Number of partitions of n with an even number of distinct Fibonacci parts. -/
opaque A093998 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A093998.provenance : SequenceMachineLib.Provenance := .undefined

/-- A094147: Numbers that can be written as sum of squares of two divisors. -/
opaque A094147 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A094147.provenance : SequenceMachineLib.Provenance := .undefined

/-- A094156: Bisection of A000940. -/
opaque A094156 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A094156.provenance : SequenceMachineLib.Provenance := .undefined

/-- A094157: Bisection of A000940. -/
opaque A094157 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A094157.provenance : SequenceMachineLib.Provenance := .undefined

/-- A094314: Triangle read by rows: T(n,k) = number of ways of seating n couples around a circular table so that exactly k married couples are adjacent (0 <= k <= n). -/
opaque A094314 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A094314.provenance : SequenceMachineLib.Provenance := .undefined

/-- A094315: Triangle read by rows giving number of circular permutations of n letters such that all letters are displaced by no more than k places from their original position. -/
opaque A094315 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A094315.provenance : SequenceMachineLib.Provenance := .undefined

/-- A094424: Array read by antidiagonals: Solutions to Schmidt's Problem. -/
opaque A094424 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A094424.provenance : SequenceMachineLib.Provenance := .undefined

/-- A094603: a(n) is the length of the maximal sequence of rightmost black cells in the n-th row of Rule 30 (begun from an initial black cell). -/
opaque A094603 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A094603.provenance : SequenceMachineLib.Provenance := .undefined

/-- A094638: Triangle read by rows: T(n,k) = |s(n,n+1-k)|, where s(n,k) are the signed Stirling numbers of the first kind A008276 (1 <= k <= n; in other words, the unsigned Stirling numbers of the first kind in reverse order). -/
opaque A094638 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A094638.provenance : SequenceMachineLib.Provenance := .undefined

/-- A095133: Triangle of numbers of forests on n nodes containing k trees. -/
opaque A095133 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A095133.provenance : SequenceMachineLib.Provenance := .undefined

/-- A095149: Triangle read by rows: Aitken's array (A011971) but with a leading diagonal before it given by the Bell numbers (A000110), 1, 1, 2, 5, 15, 52, ... -/
opaque A095149 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A095149.provenance : SequenceMachineLib.Provenance := .undefined

/-- A095320: Primes in whose binary expansion the number of 1-bits is > number of 0-bits minus 3. -/
opaque A095320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A095320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A095341: Total number of nodes in all planted trees on n nodes. -/
opaque A095341 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A095341.provenance : SequenceMachineLib.Provenance := .undefined

/-- A095703: Integer part of the (positive) solution to x^x = 10^n. -/
opaque A095703 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A095703.provenance : SequenceMachineLib.Provenance := .undefined

/-- A095809: Least positive number having exactly n partitions into three squares. -/
opaque A095809 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A095809.provenance : SequenceMachineLib.Provenance := .undefined

/-- A095916: Differences between adjacent digits of Pi. -/
opaque A095916 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A095916.provenance : SequenceMachineLib.Provenance := .undefined

/-- A095972: Number of quadratic nonresidues modulo n. -/
opaque A095972 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A095972.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096172: Largest prime factor of n^4 + 1. -/
opaque A096172 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096172.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096235: Number of n-bit base-2 deletable primes. -/
opaque A096235 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096235.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096371: Arithmetic derivative of n-th partition number. -/
opaque A096371 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096371.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096419: Number of cyclically symmetric plane partitions (Macdonald's plane partition conjecture). -/
opaque A096419 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096419.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096586: Number of one-element transitions among all integer partitions of the integers from m=0 to m=n in the unlabeled case. -/
opaque A096586 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096586.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096651: Lower triangular matrix T, read by rows, such that the row sums of T^n form the n-dimensional partitions. -/
opaque A096651 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096651.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096727: Expansion of eta(q)^8 / eta(q^2)^4 in powers of q. -/
opaque A096727 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096727.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096751: Square table, read by antidiagonals, where T(n,k) equals the number of n-dimensional partitions of k. -/
opaque A096751 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096751.provenance : SequenceMachineLib.Provenance := .undefined

/-- A096765: Number of partitions of n into distinct parts, the least being 1. -/
opaque A096765 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A096765.provenance : SequenceMachineLib.Provenance := .undefined

/-- A097029: Fixed points when the function f(x) = phi(x) + floor(x/2) is iterated, i.e., solutions to f(x) = x. -/
opaque A097029 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A097029.provenance : SequenceMachineLib.Provenance := .undefined

/-- A097057: Number of integer solutions to a^2 + b^2 + 2*c^2 + 2*d^2 = n. -/
opaque A097057 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A097057.provenance : SequenceMachineLib.Provenance := .undefined

/-- A097148: Total sum of maximum block sizes in all partitions of n-set. -/
opaque A097148 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A097148.provenance : SequenceMachineLib.Provenance := .undefined

/-- A097323: One sixth of the unitary sociable numbers. -/
opaque A097323 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A097323.provenance : SequenceMachineLib.Provenance := .undefined

/-- A097633: Numbers not of form x^2 + y^2 + 7z^2. -/
opaque A097633 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A097633.provenance : SequenceMachineLib.Provenance := .undefined

/-- A097634: Numbers not of form x^2 + 2y^2 + 2yz + 4z^2. -/
opaque A097634 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A097634.provenance : SequenceMachineLib.Provenance := .undefined

/-- A097863: Sum of 5-infinitary divisors of n. -/
opaque A097863 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A097863.provenance : SequenceMachineLib.Provenance := .undefined

/-- A098057: Number of peakless Motzkin paths with no U H^j U, no D H^j D and no D H^jU (j>0), where U=(1,1), D=(1,-1) and H=(1,0) (can be easily expressed using RNA secondary structure terminology). -/
opaque A098057 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A098057.provenance : SequenceMachineLib.Provenance := .undefined

/-- A098370: Multiplication table of the binary digits of the natural numbers read by antidiagonals. -/
opaque A098370 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A098370.provenance : SequenceMachineLib.Provenance := .undefined

/-- A098885: Number of nonisomorphic p^m-groups (i.e., groups of prime power orders). -/
opaque A098885 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A098885.provenance : SequenceMachineLib.Provenance := .undefined

/-- A098976: Upper prime of a difference of 22 between consecutive primes. -/
opaque A098976 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A098976.provenance : SequenceMachineLib.Provenance := .undefined

/-- A099020: Euler-Seidel matrix T(k,n) with start sequence A001147, read by antidiagonals. -/
opaque A099020 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A099020.provenance : SequenceMachineLib.Provenance := .undefined

/-- A099061: A bisection of A000960. -/
opaque A099061 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A099061.provenance : SequenceMachineLib.Provenance := .undefined

/-- A099062: A bisection of A000960. -/
opaque A099062 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A099062.provenance : SequenceMachineLib.Provenance := .undefined

/-- A099773: Number of partitions of n into odd prime parts. -/
opaque A099773 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A099773.provenance : SequenceMachineLib.Provenance := .undefined

/-- A099837: Expansion of (1 - x^2) / (1 + x + x^2) in powers of x. -/
opaque A099837 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A099837.provenance : SequenceMachineLib.Provenance := .undefined

/-- A099988: Bisection of lucky numbers, A000959. -/
opaque A099988 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A099988.provenance : SequenceMachineLib.Provenance := .undefined

/-- A099989: Bisection of lucky numbers, A000959. -/
opaque A099989 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A099989.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100346: Number of compositions of n into divisors of n. -/
opaque A100346 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100346.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100534: Number of partitions of 2*n into parts of two kinds. -/
opaque A100534 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100534.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100535: Number of partitions of 2*n + 1 into parts of two kinds. -/
opaque A100535 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100535.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100584: a(n) = A000676(n) - A000677(n). -/
opaque A100584 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100584.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100660: Composite numbers whose prime factors have different digital roots. -/
opaque A100660 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100660.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100664: Number of inequivalent ways to dissect a square into n rectangles of equal perimeter. -/
opaque A100664 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100664.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100824: Number of partitions of n with at most one odd part. -/
opaque A100824 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100824.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100835: Number of partitions of n with at most 2 odd parts. -/
opaque A100835 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100835.provenance : SequenceMachineLib.Provenance := .undefined

/-- A100953: Number of partitions of n into relatively prime parts such that multiplicities of parts are also relatively prime. -/
opaque A100953 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A100953.provenance : SequenceMachineLib.Provenance := .undefined

/-- A101113: Let t(G) = number of unitary factors of the Abelian group G. Then a(n) = Sum t(G) over all Abelian groups G of order exactly n. -/
opaque A101113 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A101113.provenance : SequenceMachineLib.Provenance := .undefined

/-- A101296: n has the a(n)-th distinct prime signature. -/
opaque A101296 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A101296.provenance : SequenceMachineLib.Provenance := .undefined

/-- A101509: Binomial transform of tau(n) (see A000005). -/
opaque A101509 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A101509.provenance : SequenceMachineLib.Provenance := .undefined

/-- A101513: a(1) = 1, a(2) = 2, a(3) = 3; triangle where n-th row has lowest n positive integers not yet in the sequence such that each integer has a prime divisor in common with at least one element of the (n-1)th row. -/
opaque A101513 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A101513.provenance : SequenceMachineLib.Provenance := .undefined

/-- A101707: Number of partitions of n having positive odd rank (the rank of a partition is the largest part minus the number of parts). -/
opaque A101707 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A101707.provenance : SequenceMachineLib.Provenance := .undefined

/-- A101788: a(n) = n - A101787(n). -/
opaque A101788 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A101788.provenance : SequenceMachineLib.Provenance := .undefined

/-- A101872: Number of Abelian groups of order 2n. -/
opaque A101872 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A101872.provenance : SequenceMachineLib.Provenance := .undefined

/-- A102705: Numbers not of the form 7x + 9y with nonnegative x and y. -/
opaque A102705 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A102705.provenance : SequenceMachineLib.Provenance := .undefined

/-- A102761: Same as A000179, except that a(0) = 2. -/
opaque A102761 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A102761.provenance : SequenceMachineLib.Provenance := .undefined

/-- A103344: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 1, 4, 5, 9, 14, 23, 37, 60, .... -/
opaque A103344 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A103344.provenance : SequenceMachineLib.Provenance := .undefined

/-- A103640: Expansion of theta_4(q)^4 - theta_2(q)^4, where theta_2 and theta_4 are the Jacobi theta series. -/
opaque A103640 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A103640.provenance : SequenceMachineLib.Provenance := .undefined

/-- A103650: G.f.: x^2/((1-x^2)^2*Product_{i>0}(1-x^i)). -/
opaque A103650 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A103650.provenance : SequenceMachineLib.Provenance := .undefined

/-- A103687: Number of permutations p of (1,2,...,n) such that 1+k+p(k) is prime for all k=1,2,...,n. -/
opaque A103687 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A103687.provenance : SequenceMachineLib.Provenance := .undefined

/-- A103718: Triangle of coefficients of certain polynomials used with prime numbers as variables in the computation of the array A103728. -/
opaque A103718 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A103718.provenance : SequenceMachineLib.Provenance := .undefined

/-- A103923: Triangle of partitions of n with parts of sizes 1,2,...,m, each of two different kinds, m>=1. -/
opaque A103923 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A103923.provenance : SequenceMachineLib.Provenance := .undefined

/-- A104138: Smallest prime followed by n or more composites. -/
opaque A104138 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A104138.provenance : SequenceMachineLib.Provenance := .undefined

/-- A104150: Shifted factorial numbers: a(0)=0, a(n) = (n-1)!. -/
opaque A104150 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A104150.provenance : SequenceMachineLib.Provenance := .undefined

/-- A104246: Minimal number of tetrahedral numbers (A000292(k) = k(k+1)(k+2)/6) needed to sum to n. -/
opaque A104246 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A104246.provenance : SequenceMachineLib.Provenance := .undefined

/-- A104345: Triangle read by rows: T(n,k) is the number of alternating permutations on [n+1] with 1 in position k+1, 0<=k<=n. -/
opaque A104345 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A104345.provenance : SequenceMachineLib.Provenance := .undefined

/-- A104404: Number of groups of order n all of whose subgroups are normal. -/
opaque A104404 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A104404.provenance : SequenceMachineLib.Provenance := .undefined

/-- A104450: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 3, 2, 5, 7, 12, 19, 31, 50, .... -/
opaque A104450 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A104450.provenance : SequenceMachineLib.Provenance := .undefined

/-- A104488: Number of Hamiltonian groups of order n. -/
opaque A104488 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A104488.provenance : SequenceMachineLib.Provenance := .undefined

/-- A104794: Expansion of theta_4(q)^2 in powers of q. -/
opaque A104794 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A104794.provenance : SequenceMachineLib.Provenance := .undefined

/-- A105018: Indices of the irregular primes. -/
opaque A105018 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A105018.provenance : SequenceMachineLib.Provenance := .undefined

/-- A105471: a(n) = Fibonacci(n) mod 100. -/
opaque A105471 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A105471.provenance : SequenceMachineLib.Provenance := .undefined

/-- A105524: Diagonal sums of number triangle A105522. -/
opaque A105524 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A105524.provenance : SequenceMachineLib.Provenance := .undefined

/-- A105609: Sylvester numbers for 1/(1+x^2). -/
opaque A105609 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A105609.provenance : SequenceMachineLib.Provenance := .undefined

/-- A105612: Number of nonzero quadratic residues (mod n) (cf. A000224). -/
opaque A105612 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A105612.provenance : SequenceMachineLib.Provenance := .undefined

/-- A105794: Inverse of a generalized Stirling number triangle of first kind. -/
opaque A105794 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A105794.provenance : SequenceMachineLib.Provenance := .undefined

/-- A105812: Expansion of (1+x-x^2)/(1+x). -/
opaque A105812 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A105812.provenance : SequenceMachineLib.Provenance := .undefined

/-- A105821: Triangle of the numbers of different forests with one or more isolated vertices. Those forests have order N and m trees. -/
opaque A105821 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A105821.provenance : SequenceMachineLib.Provenance := .undefined

/-- A106234: Triangle of the numbers of different forests with one or more isolated vertices. Those forests of rooted trees, have order N and m trees. -/
opaque A106234 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A106234.provenance : SequenceMachineLib.Provenance := .undefined

/-- A106237: Triangle of the numbers of different forests with m trees having distinct orders. -/
opaque A106237 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A106237.provenance : SequenceMachineLib.Provenance := .undefined

/-- A106240: Triangle read by rows: T(n,m) = number of unlabeled cographs on n nodes with m connected components. -/
opaque A106240 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A106240.provenance : SequenceMachineLib.Provenance := .undefined

/-- A106436: Difference array of Bell numbers A000110 read by antidiagonals. -/
opaque A106436 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A106436.provenance : SequenceMachineLib.Provenance := .undefined

/-- A106479: First column in inverse of Euler phi sequence matrix. -/
opaque A106479 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A106479.provenance : SequenceMachineLib.Provenance := .undefined

/-- A106508: Expansion of psi(x)^4 * chi(-x^2)^2 in powers of x where psi(), chi() are Ramanujan theta functions. -/
opaque A106508 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A106508.provenance : SequenceMachineLib.Provenance := .undefined

/-- A106747: Replace each odd digit d of n with (d-1)/2 and each even digit d with d/2. -/
opaque A106747 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A106747.provenance : SequenceMachineLib.Provenance := .undefined

/-- A106828: Triangle T(n,k) read by rows: associated Stirling numbers of first kind (n >= 0 and 0 <= k <= floor(n/2)). -/
opaque A106828 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A106828.provenance : SequenceMachineLib.Provenance := .undefined

/-- A107036: Indices of prime Jacobsthal numbers. -/
opaque A107036 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A107036.provenance : SequenceMachineLib.Provenance := .undefined

/-- A107408: Form the sum of the digits of a(n); a(n+1) is the smallest unused integer having a copy of every digit of this sum. -/
opaque A107408 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A107408.provenance : SequenceMachineLib.Provenance := .undefined

/-- A107842: A number triangle of lattice walks. -/
opaque A107842 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A107842.provenance : SequenceMachineLib.Provenance := .undefined

/-- A108040: Reflection of triangle in A008280 in vertical axis. -/
opaque A108040 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A108040.provenance : SequenceMachineLib.Provenance := .undefined

/-- A108087: Array, read by antidiagonals, where A(n,k) = exp(-1)*Sum_{i>=0} (i+k)^n/i!. -/
opaque A108087 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A108087.provenance : SequenceMachineLib.Provenance := .undefined

/-- A108563: Number of representations of n as sum of twice a square plus thrice a square. -/
opaque A108563 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A108563.provenance : SequenceMachineLib.Provenance := .undefined

/-- A108599: Self-inverse integer permutation induced by Beatty sequences for e and e/(e-1). -/
opaque A108599 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A108599.provenance : SequenceMachineLib.Provenance := .undefined

/-- A108707: Minimum side in Pythagorean triangles with hypotenuse of n. -/
opaque A108707 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A108707.provenance : SequenceMachineLib.Provenance := .undefined

/-- A108708: Maximum side length in Pythagorean triangles with hypotenuse n. -/
opaque A108708 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A108708.provenance : SequenceMachineLib.Provenance := .undefined

/-- A108783: Positions of 1's in A083952, where A083952 gives the integer coefficients a(n) of A(x), where a(n) = 1 or 2 for all n, such that A(x)^(1/2) has only integer coefficients. -/
opaque A108783 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A108783.provenance : SequenceMachineLib.Provenance := .undefined

/-- A109054: Squares and numbers k such that the continued fraction expansion of sqrt(k) is multiplicative. -/
opaque A109054 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A109054.provenance : SequenceMachineLib.Provenance := .undefined

/-- A109389: Expansion of q^(-1/12)eta(q)eta(q^6)/(eta(q^2)eta(q^3)) in powers of q. -/
opaque A109389 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A109389.provenance : SequenceMachineLib.Provenance := .undefined

/-- A109449: Triangle read by rows, T(n,k) = binomial(n,k)*A000111(n-k), 0 <= k <= n. -/
opaque A109449 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A109449.provenance : SequenceMachineLib.Provenance := .undefined

/-- A109469: Cumulative sum of coefficients of ménage hit polynomials (A000033). -/
opaque A109469 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A109469.provenance : SequenceMachineLib.Provenance := .undefined

/-- A109497: Number of lucky numbers <= n. -/
opaque A109497 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A109497.provenance : SequenceMachineLib.Provenance := .undefined

/-- A109573: E.g.f.: 2*x/(1+exp(-2*x)). -/
opaque A109573 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A109573.provenance : SequenceMachineLib.Provenance := .undefined

/-- A109833: Smallest prime starting an arithmetic progression meeting also prime(n) and having a maximal number of terms less than prime(n). -/
opaque A109833 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A109833.provenance : SequenceMachineLib.Provenance := .undefined

/-- A110335: Number of valleys (i.e., (1,-1) followed by (1,1)) at level zero in all peakless Motzkin paths of length n+6 (can be easily translated into RNA secondary structure terminology). -/
opaque A110335 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A110335.provenance : SequenceMachineLib.Provenance := .undefined

/-- A110616: A convolution triangle of numbers based on A001764. -/
opaque A110616 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A110616.provenance : SequenceMachineLib.Provenance := .undefined

/-- A110618: Number of partitions of n with no part larger than n/2. Also partitions of n into n/2 or fewer parts. -/
opaque A110618 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A110618.provenance : SequenceMachineLib.Provenance := .undefined

/-- A110738: a(n) = common ratio for row n in A112668. -/
opaque A110738 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A110738.provenance : SequenceMachineLib.Provenance := .undefined

/-- A110883: Sum of consecutive digits in the decimal expansion of Pi. -/
opaque A110883 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A110883.provenance : SequenceMachineLib.Provenance := .undefined

/-- A111008: a(n) = A000367(n)/A141590(n). -/
opaque A111008 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A111008.provenance : SequenceMachineLib.Provenance := .undefined

/-- A111133: Number of partitions of n into at least two distinct parts. -/
opaque A111133 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A111133.provenance : SequenceMachineLib.Provenance := .undefined

/-- A111160: G.f.: C - Z; where C is the g.f. for the Catalan numbers (A000108) and Z is the g.f. for A055113 with offset 0. -/
opaque A111160 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A111160.provenance : SequenceMachineLib.Provenance := .undefined

/-- A111672: Array T(n,k) = A153277(n-1,k) = A144150(n,k-1) read by downwards antidiagonals. -/
opaque A111672 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A111672.provenance : SequenceMachineLib.Provenance := .undefined

/-- A111924: Triangle of Bessel numbers read by rows. Row n gives T(n,n), T(n,n-1), T(n,n-2), ..., T(n,1) for n >= 1. -/
opaque A111924 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A111924.provenance : SequenceMachineLib.Provenance := .undefined

/-- A111933: Triangle read by rows, generated from Stirling cycle numbers. -/
opaque A111933 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A111933.provenance : SequenceMachineLib.Provenance := .undefined

/-- A111999: T(n, k) = [x^k] (-1)^n*Sum_{k=0..n} E2(n, n-k)*(1+x)^(n-k) where E2(n, k) are the second-order Eulerian numbers. Triangle read by rows, T(n, k) for n >= 1 and 0 <= k <= n. -/
opaque A111999 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A111999.provenance : SequenceMachineLib.Provenance := .undefined

/-- A112300: Expansion of x * (1 - x)^2 * (1 - x^2) / (1 - x^6) in powers of x. -/
opaque A112300 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A112300.provenance : SequenceMachineLib.Provenance := .undefined

/-- A112488: Third column of triangle A112486 used for e.g.f.s of |Stirling1| = |A008275| diagonals. -/
opaque A112488 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A112488.provenance : SequenceMachineLib.Provenance := .undefined

/-- A112520: Expansion of 2/(3-sqrt(3-2*sqrt(1-4x))). -/
opaque A112520 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A112520.provenance : SequenceMachineLib.Provenance := .undefined

/-- A113409: A transform of the central binomial coefficients A001405. -/
opaque A113409 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A113409.provenance : SequenceMachineLib.Provenance := .undefined

/-- A113715: Row sums of triangle A113711, in which row n forms a polynomial in y=2*k that generates diagonal n as k=0,1,2,... for n>=0. -/
opaque A113715 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A113715.provenance : SequenceMachineLib.Provenance := .undefined

/-- A113749: Consider the generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next k multiples of n-1, n-2, ..., 1, for n>=1. Now construct the array, t, such that t(n,k) is the n-th and successively rounding up to the next k multiples. This sequence is the presentation of that array by reading the antidiagonals. -/
opaque A113749 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A113749.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114058: Start of record gap in even semiprimes (A100484). -/
opaque A114058 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114058.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114099: Number of partitions of n into parts with digital root = 9. -/
opaque A114099 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114099.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114312: Number of partitions of n with at most 3 odd parts. -/
opaque A114312 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114312.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114320: Triangle T(n,k) = number of permutations of n elements with k 2-cycles. -/
opaque A114320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114511: a(0) = 0. s(0) = {0}. s(n+1) = s(n) U s(a(n)) U {n}, where U represents a concatenation of finite sequences. The sequence {a(n)} is the limit of s(m) as m -> infinity. -/
opaque A114511 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114511.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114562: The first occurrence of n in A111701. -/
opaque A114562 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114562.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114873: Numbers representable in exactly one way as (p-1)p^k (where p is a prime and k>=0), in ascending order. -/
opaque A114873 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114873.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114921: Number of unimodal compositions of n+2 where the maximal part appears exactly twice. -/
opaque A114921 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114921.provenance : SequenceMachineLib.Provenance := .undefined

/-- A114952: Expansion of -x^2*(x^9-x^8+2*x^7-x^6+x^5-2*x^4+x^2+1) / ((x^6-x^4+x^2+1) * (x^6+x^4+x^2-1)). -/
opaque A114952 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A114952.provenance : SequenceMachineLib.Provenance := .undefined

/-- A115119: Number of imprimitive (periodic) n-bead necklaces with beads of 2 colors when turning over is allowed. -/
opaque A115119 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A115119.provenance : SequenceMachineLib.Provenance := .undefined

/-- A115142: Third convolution of A115140. -/
opaque A115142 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A115142.provenance : SequenceMachineLib.Provenance := .undefined

/-- A115144: Fifth convolution of A115140. -/
opaque A115144 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A115144.provenance : SequenceMachineLib.Provenance := .undefined

/-- A115146: Seventh convolution of A115140. -/
opaque A115146 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A115146.provenance : SequenceMachineLib.Provenance := .undefined

/-- A115570: Array read by rows: row n (n>= 1) gives the Betti numbers for the n-th element of the Weyl group of type A3 (in Goresky's standard ordering). -/
opaque A115570 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A115570.provenance : SequenceMachineLib.Provenance := .undefined

/-- A116071: Triangle T, read by rows, equal to Pascal's triangle to the matrix power of Pascal's triangle, so that T = C^C, where C(n,k) = binomial(n,k) and T(n,k) = A000248(n-k)*C(n,k). -/
opaque A116071 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A116071.provenance : SequenceMachineLib.Provenance := .undefined

/-- A116402: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 1, 5, 6, 11, 17, ... -/
opaque A116402 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A116402.provenance : SequenceMachineLib.Provenance := .undefined

/-- A116527: Number of singular n X n rational {0,1}-matrices with no zero rows or columns and with all rows distinct and all columns distinct, up to permutation of rows. -/
opaque A116527 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A116527.provenance : SequenceMachineLib.Provenance := .undefined

/-- A116560: Expansion of g.f. x*(1+x+x^4+x^5-x^6+x^8+x^9)/(1-2*x^6-x^12). -/
opaque A116560 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A116560.provenance : SequenceMachineLib.Provenance := .undefined

/-- A116600: a(n) = A011782(n) + A000219(n) - A000712(n). -/
opaque A116600 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A116600.provenance : SequenceMachineLib.Provenance := .undefined

/-- A116634: Number of partitions of n having exactly one part that is a multiple of 3. -/
opaque A116634 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A116634.provenance : SequenceMachineLib.Provenance := .undefined

/-- A116646: Number of doubletons in all partitions of n. By a doubleton in a partition we mean an occurrence of a part exactly twice (the partition [4,(3,3),2,2,2,(1,1)] has two doubletons, shown between parentheses). -/
opaque A116646 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A116646.provenance : SequenceMachineLib.Provenance := .undefined

/-- A117158: Number of permutations avoiding the consecutive pattern 1234. -/
opaque A117158 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A117158.provenance : SequenceMachineLib.Provenance := .undefined

/-- A117267: Difference row triangle of A117189. -/
opaque A117267 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A117267.provenance : SequenceMachineLib.Provenance := .undefined

/-- A117437: Expansion of e.g.f.: exp(x)*sec(2*x). -/
opaque A117437 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A117437.provenance : SequenceMachineLib.Provenance := .undefined

/-- A117442: Number triangle read by rows, related to exp(x)/(cos(x) + sin(x)). -/
opaque A117442 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A117442.provenance : SequenceMachineLib.Provenance := .undefined

/-- A117574: Total number of permutations p of [n] such that |p(i+3) - p(i)| is not equal to 3 for 1 <= i <= n-3. -/
opaque A117574 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A117574.provenance : SequenceMachineLib.Provenance := .undefined

/-- A117609: Number of lattice points inside the ball x^2 + y^2 + z^2 <= n. -/
opaque A117609 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A117609.provenance : SequenceMachineLib.Provenance := .undefined

/-- A117924: A117922(A117922(n)). -/
opaque A117924 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A117924.provenance : SequenceMachineLib.Provenance := .undefined

/-- A118029: a(0)=1. a(n) = a(n-1) + (smallest integer that is >= n and occurs among the earlier terms of the sequence). -/
opaque A118029 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A118029.provenance : SequenceMachineLib.Provenance := .undefined

/-- A118125: Difference between the even Lucky numbers (A045954) minus the odd Lucky numbers (A000959). -/
opaque A118125 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A118125.provenance : SequenceMachineLib.Provenance := .undefined

/-- A118168: a(n) = x for which abs(x^x-n!) is minimal. -/
opaque A118168 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A118168.provenance : SequenceMachineLib.Provenance := .undefined

/-- A118394: Triangle T(n,k) = n!/(k!*(n-3*k)!), for n >= 3*k >= 0, read by rows. -/
opaque A118394 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A118394.provenance : SequenceMachineLib.Provenance := .undefined

/-- A118643: Lucky numbers whose prime factors are also lucky numbers. -/
opaque A118643 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A118643.provenance : SequenceMachineLib.Provenance := .undefined

/-- A118757: Permutation of the natural numbers such that the Levenshtein distance between decimal representations of successive terms is 1, and a(n+1) is the largest such m < a(n) if it exists, or else the smallest such m > a(n); a(0) = 0. -/
opaque A118757 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A118757.provenance : SequenceMachineLib.Provenance := .undefined

/-- A118882: Numbers which are the sum of two squares in two or more different ways. -/
opaque A118882 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A118882.provenance : SequenceMachineLib.Provenance := .undefined

/-- A119269: Table by antidiagonals: number of m-dimensional partitions of n up to conjugacy, for n >= 1, m >= 0. -/
opaque A119269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A119269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A119338: Table by antidiagonals: a(m,n) is the number of m-dimensional partitions of n up to conjugacy, for m >= 0, n >= 1. -/
opaque A119338 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A119338.provenance : SequenceMachineLib.Provenance := .undefined

/-- A119358: Number of n-element subsets of [2n] having an even sum. -/
opaque A119358 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A119358.provenance : SequenceMachineLib.Provenance := .undefined

/-- A119532: Number of n-ominoes plus number of n-iamonds. -/
opaque A119532 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A119532.provenance : SequenceMachineLib.Provenance := .undefined

/-- A119620: Number of partitions of floor(3*n/2) into n parts each from {1,2,...,n}. -/
opaque A119620 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A119620.provenance : SequenceMachineLib.Provenance := .undefined

/-- A119825: Triangle read by rows: T(n,k) is the number of ternary sequences of length n containing k subsequences 000 (consecutively; n,k>=0). -/
opaque A119825 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A119825.provenance : SequenceMachineLib.Provenance := .undefined

/-- A119882: Expansion of e.g.f.: (1+x)*sech(x). -/
opaque A119882 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A119882.provenance : SequenceMachineLib.Provenance := .undefined

/-- A120126: Index of first occurrence of n in A120125, or 0 if not present. -/
opaque A120126 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A120126.provenance : SequenceMachineLib.Provenance := .undefined

/-- A120452: Number of partitions of n-1 boys and one girl with no couple. -/
opaque A120452 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A120452.provenance : SequenceMachineLib.Provenance := .undefined

/-- A120635: Replace each prime power in the prime-factorization of n with the next higher prime-power. -/
opaque A120635 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A120635.provenance : SequenceMachineLib.Provenance := .undefined

/-- A120643: Table T(n,k) = number of fractal initial sequences (where new values are successive integers) of length n whose last term is k. -/
opaque A120643 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A120643.provenance : SequenceMachineLib.Provenance := .undefined

/-- A120900: G.f. satisfies: A(x) = C(x)*A(x^3*C(x)^4), where C(x) is the g.f. of the Catalan numbers (A000108). -/
opaque A120900 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A120900.provenance : SequenceMachineLib.Provenance := .undefined

/-- A121244: Number of score vectors for tournaments on n nodes that do not determine the tournament uniquely. -/
opaque A121244 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A121244.provenance : SequenceMachineLib.Provenance := .undefined

/-- A121272: Number of outcomes of unlabeled n-team round-robin tournaments that are not uniquely defined by their score vectors. -/
opaque A121272 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A121272.provenance : SequenceMachineLib.Provenance := .undefined

/-- A121525: Number of up steps starting at an odd level in all nondecreasing Dyck paths of semilength n. A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing. -/
opaque A121525 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A121525.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122141: Array: T(d,n) = number of ways of writing n as a sum of d squares, read by ascending antidiagonals. -/
opaque A122141 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122141.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122649: Difference between the double factorial of the n-th nonnegative odd number and the double factorial of the n-th nonnegative even number. -/
opaque A122649 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122649.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122699: Least integer that can be written as a sum of 3 squares in n nontrivial ways (ignoring order and signs). -/
opaque A122699 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122699.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122731: Primes that are the sum of 7 positive cubes. -/
opaque A122731 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122731.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122768: Number of combinations which can be taken from the integer partitions of n. Total number of cases in the (n,m)-fragmentation process. -/
opaque A122768 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122768.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122835: Number of topologies on n labeled elements in which no element belongs to any pair of noncomparable members of the topology. -/
opaque A122835 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122835.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122836: Number of topologies on n labeled elements in which at least one element belongs to some pair of noncomparable members of the topology. -/
opaque A122836 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122836.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122858: Expansion of E(k) * K(k) * (2/Pi)^2 in powers of q^2 where E(), K() are complete elliptic integrals and the nome q = exp( -Pi * K(k') / K(k)). -/
opaque A122858 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122858.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122921: Express n as the sum of four squares, x^2+y^2+z^2+w^2, x>=y>=z>=w>=0, minimizing the value of x. a(n) is that x. -/
opaque A122921 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122921.provenance : SequenceMachineLib.Provenance := .undefined

/-- A122974: Triangle T(n,k), the number of permutations on n elements that have no cycles of length k. -/
opaque A122974 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A122974.provenance : SequenceMachineLib.Provenance := .undefined

/-- A123081: Infinite square array read by antidiagonals: T(n,k) = Bell(n+k) = A000110(n+k). -/
opaque A123081 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A123081.provenance : SequenceMachineLib.Provenance := .undefined

/-- A123125: Triangle of Eulerian numbers T(n,k), 0 <= k <= n, read by rows. -/
opaque A123125 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A123125.provenance : SequenceMachineLib.Provenance := .undefined

/-- A123152: a(n) = (n-th decimal digit of Pi) + 1. -/
opaque A123152 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A123152.provenance : SequenceMachineLib.Provenance := .undefined

/-- A123153: a(n) = (n-th digit of Pi) times (the n-th prime number). -/
opaque A123153 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A123153.provenance : SequenceMachineLib.Provenance := .undefined

/-- A123192: Triangle read by rows: row n gives the coefficients in the expansion of x^abs(3*n - 2)*p(n;x), where p(n;x) denotes the bracket polynomial for the (2,n)-torus knots. -/
opaque A123192 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A123192.provenance : SequenceMachineLib.Provenance := .undefined

/-- A123719: An involution of nonnegative integers: signature permutation of Catalan automorphism which is obtained with recursion schema RIBS from automorphism *A085161. -/
opaque A123719 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A123719.provenance : SequenceMachineLib.Provenance := .undefined

/-- A123932: a(0) = 1, a(n) = 4 for n > 0. -/
opaque A123932 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A123932.provenance : SequenceMachineLib.Provenance := .undefined

/-- A124323: Triangle read by rows: T(n,k) is the number of partitions of an n-set having k singleton blocks (0<=k<=n). -/
opaque A124323 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A124323.provenance : SequenceMachineLib.Provenance := .undefined

/-- A124389: A square array of Kolakoski string lengths, read by antidiagonals. -/
opaque A124389 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A124389.provenance : SequenceMachineLib.Provenance := .undefined

/-- A124682: a(n) = A002861(n) + A000081(n). -/
opaque A124682 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A124682.provenance : SequenceMachineLib.Provenance := .undefined

/-- A124970: Smallest positive integer which can be expressed as the ordered sum of 3 squares in exactly n different ways. -/
opaque A124970 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A124970.provenance : SequenceMachineLib.Provenance := .undefined

/-- A124980: Smallest strictly positive number decomposable in n different ways as a sum of two squares. -/
opaque A124980 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A124980.provenance : SequenceMachineLib.Provenance := .undefined

/-- A124997: Number of fault-free domino tilings (or dimer coverings) of a 2n X 2n square. -/
opaque A124997 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A124997.provenance : SequenceMachineLib.Provenance := .undefined

/-- A125005: Numbers of orders of nontrivial positive magic-squares with magic sum n. A nontrivial positive magic square is a k-by-k array of consecutive positive integers (not necessarily including 1) such that all rows, all columns and the two diagonals each add up to the same constant (the "magic sum"), with the additional restriction that k (the "order") is greater than 1. -/
opaque A125005 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A125005.provenance : SequenceMachineLib.Provenance := .undefined

/-- A125053: Variant of triangle A008301, read by rows of 2*n+1 terms, such that the first column is the secant numbers (A000364). -/
opaque A125053 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A125053.provenance : SequenceMachineLib.Provenance := .undefined

/-- A125084: Cubes which have a partition as the sum of 3 squares. -/
opaque A125084 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A125084.provenance : SequenceMachineLib.Provenance := .undefined

/-- A125229: a(n) = j such that i^j is maximized subject to i+j = n (i >= 0, j >= 0). -/
opaque A125229 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A125229.provenance : SequenceMachineLib.Provenance := .undefined

/-- A125510: Theta series of 4-dimensional lattice QQF.4.g. -/
opaque A125510 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A125510.provenance : SequenceMachineLib.Provenance := .undefined

/-- A126605: Final three digits of 2^n. -/
opaque A126605 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A126605.provenance : SequenceMachineLib.Provenance := .undefined

/-- A126759: a(0) = 1; a(2n) = a(n); a(3n) = a(n); otherwise write n = 6i+j, where j = 1 or 5 and set a(n) = 2i+2 if j = 1, otherwise a(n) = 2i+3. -/
opaque A126759 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A126759.provenance : SequenceMachineLib.Provenance := .undefined

/-- A126796: Number of complete partitions of n. -/
opaque A126796 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A126796.provenance : SequenceMachineLib.Provenance := .undefined

/-- A127548: O.g.f.: Sum_{n>=0} n!*(x/(1+x)^2)^n. -/
opaque A127548 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A127548.provenance : SequenceMachineLib.Provenance := .undefined

/-- A127898: Inverse of Riordan array (1/(1+x)^3, x/(1+x)^3). -/
opaque A127898 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A127898.provenance : SequenceMachineLib.Provenance := .undefined

/-- A127909: Number of different digraphs on n unlabeled nodes which are not graphs. -/
opaque A127909 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A127909.provenance : SequenceMachineLib.Provenance := .undefined

/-- A127936: Numbers k such that 1 + Sum_{i=1..k} 2^(2*i-1) is prime. -/
opaque A127936 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A127936.provenance : SequenceMachineLib.Provenance := .undefined

/-- A127963: Number of 1's in A127962(n). -/
opaque A127963 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A127963.provenance : SequenceMachineLib.Provenance := .undefined

/-- A127964: Number of 0's in the binary expansion of A127962(n). -/
opaque A127964 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A127964.provenance : SequenceMachineLib.Provenance := .undefined

/-- A127965: Number of bits in A127962(n). -/
opaque A127965 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A127965.provenance : SequenceMachineLib.Provenance := .undefined

/-- A128033: Least number k>0 such that ((n+3)^k - 3^k)/n is prime, or 0 if no such prime exists. -/
opaque A128033 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A128033.provenance : SequenceMachineLib.Provenance := .undefined

/-- A128527: Number of 5-indecomposable (connected) graphs on n nodes. -/
opaque A128527 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A128527.provenance : SequenceMachineLib.Provenance := .undefined

/-- A129727: Primes p for which the period length of 1/p is a semiprime. -/
opaque A129727 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A129727.provenance : SequenceMachineLib.Provenance := .undefined

/-- A130130: a(0)=0, a(1)=1, a(n)=2 for n >= 2. -/
opaque A130130 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A130130.provenance : SequenceMachineLib.Provenance := .undefined

/-- A130191: Square of the Stirling2 matrix A048993. -/
opaque A130191 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A130191.provenance : SequenceMachineLib.Provenance := .undefined

/-- A130514: To compute the next term, add to n the number t, where t is the number of [last digit of n]'s used so far in the sequence. -/
opaque A130514 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A130514.provenance : SequenceMachineLib.Provenance := .undefined

/-- A130534: Triangle T(n,k), 0 <= k <= n, read by rows, giving coefficients of the polynomial (x+1)(x+2)...(x+n), expanded in increasing powers of x. T(n,k) is also the unsigned Stirling number |s(n+1, k+1)|, denoting the number of permutations on n+1 elements that contain exactly k+1 cycles. -/
opaque A130534 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A130534.provenance : SequenceMachineLib.Provenance := .undefined

/-- A130651: 1/16 the number of permutations of 0..n having exactly 3 maxima. -/
opaque A130651 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A130651.provenance : SequenceMachineLib.Provenance := .undefined

/-- A130780: Number of partitions of n such that number of odd parts is greater than or equal to number of even parts. -/
opaque A130780 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A130780.provenance : SequenceMachineLib.Provenance := .undefined

/-- A131909: Triangle, read by rows, where T(n,k) = T(n-1,k-2) + T(n-1,k-1) for n>=k>1, with T(0,0)=1 and T(n,0) = T(n+1,1) = T(n-1,n-1) for n>0. -/
opaque A131909 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A131909.provenance : SequenceMachineLib.Provenance := .undefined

/-- A132085: Number of partitions of n into distinct parts such that (u+1)^2 <= v for all pairs (u,v) of parts with u -/
opaque A132085 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A132085.provenance : SequenceMachineLib.Provenance := .undefined

/-- A132220: Number of line graphs on n unlabeled nodes. -/
opaque A132220 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A132220.provenance : SequenceMachineLib.Provenance := .undefined

/-- A132264: Product{0<=k<=floor(log_12(n)), floor(n/12^k)}, n>=1. -/
opaque A132264 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A132264.provenance : SequenceMachineLib.Provenance := .undefined

/-- A132393: Triangle of unsigned Stirling numbers of the first kind (see A048994), read by rows, T(n,k) for 0 <= k <= n. -/
opaque A132393 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A132393.provenance : SequenceMachineLib.Provenance := .undefined

/-- A132581: Number of antichains in the first n elements of the infinite Boolean lattice. -/
opaque A132581 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A132581.provenance : SequenceMachineLib.Provenance := .undefined

/-- A132582: First differences of A132581. -/
opaque A132582 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A132582.provenance : SequenceMachineLib.Provenance := .undefined

/-- A132969: Expansion of phi(q) * chi(q) in powers of q where phi(), chi() are Ramanujan theta functions. -/
opaque A132969 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A132969.provenance : SequenceMachineLib.Provenance := .undefined

/-- A132970: Expansion of phi(-x) * chi(-x) in powers of x where phi(), chi() are Ramanujan theta functions. -/
opaque A132970 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A132970.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133033: Number of proper divisors of n-th even perfect number. -/
opaque A133033 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133033.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133041: Sum of n and partition number of n. -/
opaque A133041 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133041.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133049: Squares of Mersenne primes A000668(n). -/
opaque A133049 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133049.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133406: Half the number of ways of placing up to n pawns on a length n chessboard row so that the row balances at its middle. -/
opaque A133406 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133406.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133435: Records in A000229. -/
opaque A133435 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133435.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133573: Expansion of ( 5 * phi(-q^5)^2 - phi(-q)^2 ) / 4 in powers of q where phi() is a Ramanujan theta function. -/
opaque A133573 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133573.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133574: Expansion of (5 * phi(q^5)^2 - phi(q)^2) / 4 in powers of q where phi() is a Ramanujan theta function. -/
opaque A133574 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133574.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133687: Triangle with number of equivalence classes of n X n matrices over {0,1} with rows and columns summing to k (0<=k<=n), where equivalence is defined by row and column permutations. -/
opaque A133687 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133687.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133732: A054525 * A000041. -/
opaque A133732 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133732.provenance : SequenceMachineLib.Provenance := .undefined

/-- A133773: Number of runs (of equal bits) in the maximal "phinary" (A130601) representation of n. -/
opaque A133773 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A133773.provenance : SequenceMachineLib.Provenance := .undefined

/-- A134542: Triangle read by rows: T(n,k) = Sum_{i=k..n} A134541(n,i). -/
opaque A134542 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A134542.provenance : SequenceMachineLib.Provenance := .undefined

/-- A134709: Even superperfect numbers divided by 2, minus 1. -/
opaque A134709 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A134709.provenance : SequenceMachineLib.Provenance := .undefined

/-- A134746: Expansion of 1+k in powers of q^(1/2) where q is Jacobi's nome and k is the elliptic modulus. -/
opaque A134746 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A134746.provenance : SequenceMachineLib.Provenance := .undefined

/-- A134830: Triangle of rank k of permutations of {1,2,...,n}. -/
opaque A134830 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A134830.provenance : SequenceMachineLib.Provenance := .undefined

/-- A134833: Alternating row sums of triangle A134832. -/
opaque A134833 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A134833.provenance : SequenceMachineLib.Provenance := .undefined

/-- A134991: Triangle of Ward numbers T(n,k) read by rows. -/
opaque A134991 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A134991.provenance : SequenceMachineLib.Provenance := .undefined

/-- A135304: Maximal size of conflict-avoiding code of length 2n+1. -/
opaque A135304 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A135304.provenance : SequenceMachineLib.Provenance := .undefined

/-- A135339: Number of Dyck paths of semilength n having no DUDU's starting at level 1. -/
opaque A135339 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A135339.provenance : SequenceMachineLib.Provenance := .undefined

/-- A135348: Total sum of squares of number of distinct parts in all partitions of n. -/
opaque A135348 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A135348.provenance : SequenceMachineLib.Provenance := .undefined

/-- A135643: Straight-line numbers > 99. -/
opaque A135643 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A135643.provenance : SequenceMachineLib.Provenance := .undefined

/-- A136028: Expansion of (phi(q) * phi(q^2))^3 in powers of q where phi() is a Ramanujan theta function. -/
opaque A136028 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A136028.provenance : SequenceMachineLib.Provenance := .undefined

/-- A136400: Replace all digits greater than 1 with 1 (in decimal representation). -/
opaque A136400 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A136400.provenance : SequenceMachineLib.Provenance := .undefined

/-- A136439: Sum of heights of all 1-watermelons with wall of length 2*n. -/
opaque A136439 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A136439.provenance : SequenceMachineLib.Provenance := .undefined

/-- A136483: Number of unit square lattice cells inside quadrant of origin-centered circle of diameter n. -/
opaque A136483 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A136483.provenance : SequenceMachineLib.Provenance := .undefined

/-- A136605: Triangle read by rows: T(n,k) = number of forests on n unlabeled nodes with k edges (n>=1, 0<=k<=n-1). -/
opaque A136605 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A136605.provenance : SequenceMachineLib.Provenance := .undefined

/-- A136986: Numbers k such that k and k^2 use only the digits 1, 2 and 4. -/
opaque A136986 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A136986.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137164: Lucky numbers (A000959) which are congruent to 0 mod 3. -/
opaque A137164 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137164.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137165: Lucky numbers (A000959) which are congruent to 1 mod 3. -/
opaque A137165 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137165.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137168: Lucky numbers (A000959) which are congruent to 1 mod 4. -/
opaque A137168 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137168.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137170: Lucky numbers (A000959) which are congruent to 3 mod 4. -/
opaque A137170 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137170.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137171: Interleaved reading of A000749 and its first to third differences. -/
opaque A137171 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137171.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137313: Numbers k such that a type-6 Gaussian normal basis over GF(2^k) exists. -/
opaque A137313 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137313.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137346: Coefficients of a special case of Poisson-Charlier polynomials. Triangle read by rows, T(n, k) for 0 <= k <= n. -/
opaque A137346 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137346.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137748: Number of different strings of length n obtained from "abcdefgh" by iteratively duplicating any substring. -/
opaque A137748 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137748.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137858: Number of unlabeled graphs with n nodes and an even sum of nodes and edges. -/
opaque A137858 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137858.provenance : SequenceMachineLib.Provenance := .undefined

/-- A137861: Number of unlabeled graphs with n nodes and an odd sum of nodes and edges. -/
opaque A137861 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A137861.provenance : SequenceMachineLib.Provenance := .undefined

/-- A138202: a(n) = A005875(n)^2. -/
opaque A138202 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A138202.provenance : SequenceMachineLib.Provenance := .undefined

/-- A138772: Number of entries in the second cycles of all permutations of {1,2,...,n}; each cycle is written with the smallest element first and cycles are arranged in increasing order of their first elements. -/
opaque A138772 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A138772.provenance : SequenceMachineLib.Provenance := .undefined

/-- A138811: Theta series of quadratic form x^2 + x*y + 11*y^2. -/
opaque A138811 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A138811.provenance : SequenceMachineLib.Provenance := .undefined

/-- A139115: a(n) = p*(p - 1), where p is A000043(n). -/
opaque A139115 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A139115.provenance : SequenceMachineLib.Provenance := .undefined

/-- A139269: Twice lucky numbers. -/
opaque A139269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A139269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A139399: Number of steps to reach a cycle in Collatz problem. -/
opaque A139399 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A139399.provenance : SequenceMachineLib.Provenance := .undefined

/-- A139582: Twice partition numbers. -/
opaque A139582 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A139582.provenance : SequenceMachineLib.Provenance := .undefined

/-- A139621: Triangle read by rows: T(n,k) is the number of connected directed multigraphs with loops, with n arcs and k vertices. -/
opaque A139621 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A139621.provenance : SequenceMachineLib.Provenance := .undefined

/-- A140080: Fix e = 3; a(n) = minimal Hamming distance between the binary representation of n and the binary representation of any multiple ke (0 <= k <= n/e) which is a child of n. -/
opaque A140080 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A140080.provenance : SequenceMachineLib.Provenance := .undefined

/-- A140207: Triangle read by rows in which row n (n>=0) gives the first n terms of A000041. -/
opaque A140207 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A140207.provenance : SequenceMachineLib.Provenance := .undefined

/-- A140456: a(n) is the number of indecomposable involutions of length n. -/
opaque A140456 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A140456.provenance : SequenceMachineLib.Provenance := .undefined

/-- A140996: Triangle G(n, k) read by rows for 0 <= k <= n, where G(n, 0) = G(n+1, n+1) = 1, G(n+2, n+1) = 2, G(n+3, n+1) = 4, G(n+4, n+1) = 8, and G(n+5, m) = G(n+1, m-1) + G(n+1, m) + G(n+2, m) + G(n+3, m) + G(n+4, m) for n >= 0 for m = 1..(n+1). -/
opaque A140996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A140996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A141213: Defining A to be the interior angle of a regular polygon, the number of constructible regular polygons such that A is in a field extension = degree 2^n, starting with n=0. This is also the number of values of x such that phi(x)/2 = 2^n (where phi is Euler's phi function), also starting with n=0. -/
opaque A141213 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A141213.provenance : SequenceMachineLib.Provenance := .undefined

/-- A141214: Defining A to be the interior angle of a regular polygon, the number of constructible regular polygons such that A is in a field extension <= degree 2^n, starting with n=0. This is also the number of values of x such that phi(x)/2 is a power of 2 <= 2^n (where phi is Euler's phi function), also starting with n=0. -/
opaque A141214 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A141214.provenance : SequenceMachineLib.Provenance := .undefined

/-- A141256: An Okazaki-like composition, see A126759. -/
opaque A141256 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A141256.provenance : SequenceMachineLib.Provenance := .undefined

/-- A141553: Transformed nonprime products of prime factors of the composites, the largest prime decremented by 2 and the smallest prime incremented by 1. -/
opaque A141553 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A141553.provenance : SequenceMachineLib.Provenance := .undefined

/-- A141590: a(n) = numerator of Bernoulli(2*n)/(2*n + 1)!. Bisection of A120082. -/
opaque A141590 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A141590.provenance : SequenceMachineLib.Provenance := .undefined

/-- A141807: Numbers k such that the maximal prime power divisors of k form a run of integers. -/
opaque A141807 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A141807.provenance : SequenceMachineLib.Provenance := .undefined

/-- A142876: A bisection of A142870. -/
opaque A142876 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A142876.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143173: Partition number array, called M32(-3), related to A000369(n,m) = |S2(-3;n,m)| (generalized Stirling triangle). -/
opaque A143173 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143173.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143229: a(n) = A000041(n) * A000070(n). -/
opaque A143229 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143229.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143330: G.f. satisfies: A(x) = (1 + x*A(x)^2)/(1 - x^2). -/
opaque A143330 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143330.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143398: Triangle T(n,k) = number of forests of labeled rooted trees of height at most 1, with n labels, where each root contains k labels, n>=0, 0<=k<=n. -/
opaque A143398 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143398.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143628: Define E(n) = Sum_{k >= 0} (-1)^floor(k/3)*k^n/k! for n = 0,1,2,... . Then E(n) is an integral linear combination of E(0), E(1) and E(2). This sequence lists the coefficients of E(0). -/
opaque A143628 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143628.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143630: Define E(n) = Sum_{k >= 0} (-1)^floor(k/3)*k^n/k! for n = 0,1,2,.... Then E(n) is an integral linear combination of E(0), E(1) and E(2). This sequence lists the coefficients of E(2). -/
opaque A143630 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143630.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143631: Let A(0) = 1, B(0) = 0 and C(0) = 0. Let A(n+1) = - Sum_{k = 0..n} binomial(n,k)*C(k), B(n+1) = Sum_{k = 0..n} binomial(n,k)*A(k) and C(n+1) = Sum_{k = 0..n} binomial(n,k)*B(k). This entry gives the sequence B(n). -/
opaque A143631 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143631.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143691: Lexicographically earliest permutation of the natural numbers having alternating even and odd numbers of prime factors. -/
opaque A143691 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143691.provenance : SequenceMachineLib.Provenance := .undefined

/-- A143983: Triangle T(n,k), n>=1, 1<=k<=n, read by rows, where sequence a_k of column k has a_k(0)=1, followed by (k-1)-fold 0 and a_k(n) shifts k places down under binomial transform. -/
opaque A143983 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A143983.provenance : SequenceMachineLib.Provenance := .undefined

/-- A144020: Numbers of the form 1+i^2+j^2+k^2 with 1 <= i <= j <= k. -/
opaque A144020 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A144020.provenance : SequenceMachineLib.Provenance := .undefined

/-- A144064: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is Euler transform of (j->k). -/
opaque A144064 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A144064.provenance : SequenceMachineLib.Provenance := .undefined

/-- A144150: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where the e.g.f. of column k is 1+g^(k+1)(x) with g = x-> exp(x)-1. -/
opaque A144150 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A144150.provenance : SequenceMachineLib.Provenance := .undefined

/-- A144155: Bell convolution triangle, T(n,k) = A000110(n-k)*A000110(k). -/
opaque A144155 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A144155.provenance : SequenceMachineLib.Provenance := .undefined

/-- A144520: a(n) = A000055(n) - 1. -/
opaque A144520 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A144520.provenance : SequenceMachineLib.Provenance := .undefined

/-- A145155: Coefficients in expansion of Delta'(q). -/
opaque A145155 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A145155.provenance : SequenceMachineLib.Provenance := .undefined

/-- A145222: a(n) is the number of odd permutations (of an n-set) with exactly 1 fixed point. -/
opaque A145222 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A145222.provenance : SequenceMachineLib.Provenance := .undefined

/-- A145460: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where sequence a_k of column k is the exponential transform of C(n,k). -/
opaque A145460 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A145460.provenance : SequenceMachineLib.Provenance := .undefined

/-- A146023: Triangle read by rows, square of A027293. -/
opaque A146023 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A146023.provenance : SequenceMachineLib.Provenance := .undefined

/-- A146305: Array T(n,m) = 2*(2m+3)!*(4n+2m+1)!/(m!*(m+2)!*n!*(3n+2m+3)!) read by antidiagonals. -/
opaque A146305 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A146305.provenance : SequenceMachineLib.Provenance := .undefined

/-- A147349: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 01010-11111-00100 pattern in any orientation. -/
opaque A147349 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A147349.provenance : SequenceMachineLib.Provenance := .undefined

/-- A147766: Successive differences of A000990. -/
opaque A147766 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A147766.provenance : SequenceMachineLib.Provenance := .undefined

/-- A147767: Triangle read by rows, square of A116598. -/
opaque A147767 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A147767.provenance : SequenceMachineLib.Provenance := .undefined

/-- A148208: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}. -/
opaque A148208 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A148208.provenance : SequenceMachineLib.Provenance := .undefined

/-- A148281: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 1, -1)}. -/
opaque A148281 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A148281.provenance : SequenceMachineLib.Provenance := .undefined

/-- A148337: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 0)}. -/
opaque A148337 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A148337.provenance : SequenceMachineLib.Provenance := .undefined

/-- A148364: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}. -/
opaque A148364 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A148364.provenance : SequenceMachineLib.Provenance := .undefined

/-- A148745: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}. -/
opaque A148745 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A148745.provenance : SequenceMachineLib.Provenance := .undefined

/-- A148804: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}. -/
opaque A148804 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A148804.provenance : SequenceMachineLib.Provenance := .undefined

/-- A148856: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1)}. -/
opaque A148856 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A148856.provenance : SequenceMachineLib.Provenance := .undefined

/-- A148997: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}. -/
opaque A148997 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A148997.provenance : SequenceMachineLib.Provenance := .undefined

/-- A149119: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, -1, 0), (1, 1, 0)}. -/
opaque A149119 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A149119.provenance : SequenceMachineLib.Provenance := .undefined

/-- A149736: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}. -/
opaque A149736 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A149736.provenance : SequenceMachineLib.Provenance := .undefined

/-- A149737: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 1, -1), (1, 1, 1)}. -/
opaque A149737 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A149737.provenance : SequenceMachineLib.Provenance := .undefined

/-- A149814: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0)}. -/
opaque A149814 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A149814.provenance : SequenceMachineLib.Provenance := .undefined

/-- A150119: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 0, 0), (1, 1, 0)}. -/
opaque A150119 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A150119.provenance : SequenceMachineLib.Provenance := .undefined

/-- A150337: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 1), (1, 0, 0), (1, 1, 0)}. -/
opaque A150337 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A150337.provenance : SequenceMachineLib.Provenance := .undefined

/-- A150799: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, 0, 0), (1, 1, 1)}. -/
opaque A150799 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A150799.provenance : SequenceMachineLib.Provenance := .undefined

/-- A151082: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, 0, 0), (1, 0, 1)}. -/
opaque A151082 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A151082.provenance : SequenceMachineLib.Provenance := .undefined

/-- A151878: Weight distribution of [255,37,91] primitive binary BCH code. -/
opaque A151878 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A151878.provenance : SequenceMachineLib.Provenance := .undefined

/-- A151881: Sum (number of cycles)^2 over all n! permutations of [1..n]. -/
opaque A151881 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A151881.provenance : SequenceMachineLib.Provenance := .undefined

/-- A151909: Weight distribution of [255,45,87] primitive binary BCH code. -/
opaque A151909 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A151909.provenance : SequenceMachineLib.Provenance := .undefined

/-- A151933: Weight distribution of [255,47,85] primitive binary BCH code. -/
opaque A151933 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A151933.provenance : SequenceMachineLib.Provenance := .undefined

/-- A152917: A000169 prefixed by an initial 0. -/
opaque A152917 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A152917.provenance : SequenceMachineLib.Provenance := .undefined

/-- A153176: Coefficients of the eighth-order mock theta function V_0(q). -/
opaque A153176 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A153176.provenance : SequenceMachineLib.Provenance := .undefined

/-- A153198: Triangle read by rows, T(n,k) = A006789(k) if (n=k) otherwise zero. = (A006789 * 0^(n-k)). -/
opaque A153198 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A153198.provenance : SequenceMachineLib.Provenance := .undefined

/-- A153277: Array read by antidiagonals of higher order Bell numbers. -/
opaque A153277 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A153277.provenance : SequenceMachineLib.Provenance := .undefined

/-- A153278: Array read by antidiagonals of higher order Fubini numbers. -/
opaque A153278 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A153278.provenance : SequenceMachineLib.Provenance := .undefined

/-- A153729: Expansion of q^(-1/3) * (eta(q)^8 + 32 * eta(q^4)^8) in powers of q. -/
opaque A153729 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A153729.provenance : SequenceMachineLib.Provenance := .undefined

/-- A153798: a(n) = A000043(n)-2. -/
opaque A153798 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A153798.provenance : SequenceMachineLib.Provenance := .undefined

/-- A153967: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 9 ones in any 4 X 4 X 4 subtriangle. -/
opaque A153967 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A153967.provenance : SequenceMachineLib.Provenance := .undefined

/-- A154125: Self-inverse signature permutation of a Catalan bijection: row 83 of A089840. -/
opaque A154125 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A154125.provenance : SequenceMachineLib.Provenance := .undefined

/-- A154380: The Riordan square of the Bell numbers. Triangle T(n, k), 0 <= k <= n, read by rows. -/
opaque A154380 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A154380.provenance : SequenceMachineLib.Provenance := .undefined

/-- A154638: a(n) is the number of distinct reduced words of length n in the Coxeter group of "Apollonian reflections" in three dimensions. -/
opaque A154638 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A154638.provenance : SequenceMachineLib.Provenance := .undefined

/-- A156187: Numerator of Euler(n, 1/6). -/
opaque A156187 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A156187.provenance : SequenceMachineLib.Provenance := .undefined

/-- A156205: Numerator of Euler(n, 3/8). -/
opaque A156205 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A156205.provenance : SequenceMachineLib.Provenance := .undefined

/-- A156330: Numerator of Euler(n, 1/12). -/
opaque A156330 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A156330.provenance : SequenceMachineLib.Provenance := .undefined

/-- A156332: Numerator of Euler(n, 5/12). -/
opaque A156332 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A156332.provenance : SequenceMachineLib.Provenance := .undefined

/-- A156368: A ménage triangle. -/
opaque A156368 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A156368.provenance : SequenceMachineLib.Provenance := .undefined

/-- A156684: The number of primitive Pythagorean triples A^2+B^2=C^2 with 0 < A < B < C and gcd(A,B)=1, and both legs less than n. -/
opaque A156684 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A156684.provenance : SequenceMachineLib.Provenance := .undefined

/-- A156996: Triangle T(n, k) = coefficients of p(n,x), where p(n,x) = Sum_{j=0..n} (2*n*(n-j)!/(2*n-j)) * binomial(2*n-j, j) * (x-1)^j and p(0,x) = 1, read by rows. -/
opaque A156996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A156996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A157015: Number of graphs with n vertices having a bipartite connected component. -/
opaque A157015 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A157015.provenance : SequenceMachineLib.Provenance := .undefined

/-- A157016: Number of graphs with n vertices such that a bipartite connected component doesn't exist. -/
opaque A157016 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A157016.provenance : SequenceMachineLib.Provenance := .undefined

/-- A157162: 1/Product_{n>=1} (1 - a(n)*x^n) = 1 + Sum_{k>=1} F(k+1)*x^k = 1/(1-x-x^2), where F(n) = A000045(n) (Fibonacci numbers). -/
opaque A157162 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A157162.provenance : SequenceMachineLib.Provenance := .undefined

/-- A157195: a(n) = 0 if n is 1 or a prime, otherwise a(n) = product of the proper divisors of n. -/
opaque A157195 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A157195.provenance : SequenceMachineLib.Provenance := .undefined

/-- A157271: Size of the largest set encompassing no {x, 2x} nor {x, 3x} contained in D(n) = the first n 3-smooth numbers {1, 2, 3, 4, 6, 8, 9, 12, 16, 18, 24, 27,...} (A003586). -/
opaque A157271 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A157271.provenance : SequenceMachineLib.Provenance := .undefined

/-- A158377: a(1) = 0, a(n) = lcm(A034684(n), A034699(n)) for n >= 2. -/
opaque A158377 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A158377.provenance : SequenceMachineLib.Provenance := .undefined

/-- A158616: Table of expansion coefficients [x^m] of the Rayleigh polynomial of index 2n. -/
opaque A158616 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A158616.provenance : SequenceMachineLib.Provenance := .undefined

/-- A159324: n! times the average number of comparisons required by an insertion sort of n (distinct) elements. -/
opaque A159324 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A159324.provenance : SequenceMachineLib.Provenance := .undefined

/-- A159711: Number of permutations of 1..n arranged in a circle with exactly 3 local maxima. -/
opaque A159711 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A159711.provenance : SequenceMachineLib.Provenance := .undefined

/-- A159712: Number of permutations of 1..n arranged in a circle with exactly 4 local maxima. -/
opaque A159712 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A159712.provenance : SequenceMachineLib.Provenance := .undefined

/-- A160357: Sign of first differences of Recamán's sequence A005132. -/
opaque A160357 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A160357.provenance : SequenceMachineLib.Provenance := .undefined

/-- A160612: Denominator of Laguerre(n, -4). -/
opaque A160612 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A160612.provenance : SequenceMachineLib.Provenance := .undefined

/-- A160755: Number of correct digits of the MRB constant derived from the sequence of partial sums up to m=10^n terms as defined by S[n]= Sum[(-1)^k*(k^(1/k)-1),{k,m}]. -/
opaque A160755 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A160755.provenance : SequenceMachineLib.Provenance := .undefined

/-- A160786: The number of odd partitions of consecutive odd integers. -/
opaque A160786 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A160786.provenance : SequenceMachineLib.Provenance := .undefined

/-- A160999: Row sums of A027052. -/
opaque A160999 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A160999.provenance : SequenceMachineLib.Provenance := .undefined

/-- A161198: Triangle of polynomial coefficients related to the series expansions of (1-x)^((-1-2*n)/2). -/
opaque A161198 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A161198.provenance : SequenceMachineLib.Provenance := .undefined

/-- A161969: Expansion of f(q)^8 in powers of q where f() is a Ramanujan theta function. -/
opaque A161969 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A161969.provenance : SequenceMachineLib.Provenance := .undefined

/-- A162298: Faulhaber's triangle: triangle T(k,y) read by rows, giving numerator of the coefficient [m^y] of the polynomial Sum_{x=1..m} x^(k-1). -/
opaque A162298 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A162298.provenance : SequenceMachineLib.Provenance := .undefined

/-- A162312: Triangular array, inverse of 2*P - I, where P is Pascal's triangle and I is the identity matrix. -/
opaque A162312 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A162312.provenance : SequenceMachineLib.Provenance := .undefined

/-- A162401: a(n) is the largest integer whose square, when represented in binary, is a substring within the binary representation of n. -/
opaque A162401 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A162401.provenance : SequenceMachineLib.Provenance := .undefined

/-- A162428: Antidiagonal sums of table A162424. -/
opaque A162428 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A162428.provenance : SequenceMachineLib.Provenance := .undefined

/-- A162509: Row sums of the absolute values of a triangular array related to the Bernoulli numbers. -/
opaque A162509 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A162509.provenance : SequenceMachineLib.Provenance := .undefined

/-- A162975: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k doubledescents (0 <= k <= n-2). We say that i is a doubledescent (also called a double fall) of a permutation p if p(i) > p(i+1) > p(i+2). -/
opaque A162975 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A162975.provenance : SequenceMachineLib.Provenance := .undefined

/-- A163096: Odd numbers with an even number of partitions. -/
opaque A163096 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A163096.provenance : SequenceMachineLib.Provenance := .undefined

/-- A163295: Binary order of n plus number of partitions of n-1. -/
opaque A163295 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A163295.provenance : SequenceMachineLib.Provenance := .undefined

/-- A163517: If m-th composite is the product of k1-th prime, k2-th prime,..,kr-th prime and prime=k1+k2+..+kr then set a(n)=m. -/
opaque A163517 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A163517.provenance : SequenceMachineLib.Provenance := .undefined

/-- A163540: The absolute direction (0=east, 1=south, 2=west, 3=north) taken by the type I Hilbert's Hamiltonian walk A163357 at the step n. -/
opaque A163540 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A163540.provenance : SequenceMachineLib.Provenance := .undefined

/-- A163747: Expansion of e.g.f. 2*exp(x)*(1-exp(x))/(1+exp(2*x)). -/
opaque A163747 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A163747.provenance : SequenceMachineLib.Provenance := .undefined

/-- A163810: Expansion of (1 - x) * (1 - x^2) * (1 - x^3) / (1 - x^6) in powers of x. -/
opaque A163810 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A163810.provenance : SequenceMachineLib.Provenance := .undefined

/-- A163948: The number of functions on a finite set that are obtainable by a composition power (excluding identity as power). -/
opaque A163948 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A163948.provenance : SequenceMachineLib.Provenance := .undefined

/-- A164508: Number of binary strings of length n with no substrings equal to 0101, 0110, or 1001. -/
opaque A164508 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A164508.provenance : SequenceMachineLib.Provenance := .undefined

/-- A164555: Numerators of the "original" Bernoulli numbers; also the numerators of the Bernoulli polynomials at x=1. -/
opaque A164555 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A164555.provenance : SequenceMachineLib.Provenance := .undefined

/-- A164558: Numerators of the n-th term of the binomial transform of the original Bernoulli numbers. -/
opaque A164558 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A164558.provenance : SequenceMachineLib.Provenance := .undefined

/-- A165471: Legendre symbol (n,65537). -/
opaque A165471 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A165471.provenance : SequenceMachineLib.Provenance := .undefined

/-- A165915: a(n) = number of squarefree nonzero quadratic residues of n. -/
opaque A165915 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A165915.provenance : SequenceMachineLib.Provenance := .undefined

/-- A165924: a(n) = number of squareful nonzero quadratic residues of n. -/
opaque A165924 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A165924.provenance : SequenceMachineLib.Provenance := .undefined

/-- A166087: a(n) = Position of the first occurrence of n in A166040. -1 if it does not occur there. -/
opaque A166087 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A166087.provenance : SequenceMachineLib.Provenance := .undefined

/-- A166267: Number of 1's in the binary representation of A000129(n). -/
opaque A166267 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A166267.provenance : SequenceMachineLib.Provenance := .undefined

/-- A166799: Number of nX2 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order. -/
opaque A166799 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A166799.provenance : SequenceMachineLib.Provenance := .undefined

/-- A166817: Number of n X 2 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order. -/
opaque A166817 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A166817.provenance : SequenceMachineLib.Provenance := .undefined

/-- A166828: Number of n X 2 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order. -/
opaque A166828 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A166828.provenance : SequenceMachineLib.Provenance := .undefined

/-- A166829: Number of nX2 1..7 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order. -/
opaque A166829 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A166829.provenance : SequenceMachineLib.Provenance := .undefined

/-- A166840: Number of n X 2 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order. -/
opaque A166840 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A166840.provenance : SequenceMachineLib.Provenance := .undefined

/-- A166841: Number of nX2 1..7 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order. -/
opaque A166841 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A166841.provenance : SequenceMachineLib.Provenance := .undefined

/-- A167932: Number of partitions of n such that all parts are equal or all parts are distinct. -/
opaque A167932 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A167932.provenance : SequenceMachineLib.Provenance := .undefined

/-- A167934: a(n) = A000041(n) - A032741(n). -/
opaque A167934 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A167934.provenance : SequenceMachineLib.Provenance := .undefined

/-- A168377: Riordan array (1/(1 + x), x*c(x)), where c(x) is the o.g.f. of Catalan numbers A000108. -/
opaque A168377 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A168377.provenance : SequenceMachineLib.Provenance := .undefined

/-- A169808: Array T(n,k) read by antidiagonals: T(n,k) is the number of [n,k]-triangulations in the plane, n >= 0, k >= 0. -/
opaque A169808 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A169808.provenance : SequenceMachineLib.Provenance := .undefined

/-- A171003: A lower bound for A094837. -/
opaque A171003 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A171003.provenance : SequenceMachineLib.Provenance := .undefined

/-- A171085: A "run" means a maximal string of numbers that includes exactly one prime; this sequence has the property that the sequence of run lengths is the sequence itself and all natural numbers appear exactly once. -/
opaque A171085 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A171085.provenance : SequenceMachineLib.Provenance := .undefined

/-- A171881: Square array, read by antidiagonals, where T(n,k)=n^^k for n>=0, k>=1. -/
opaque A171881 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A171881.provenance : SequenceMachineLib.Provenance := .undefined

/-- A171966: Number of partitions of n having no more odd than even parts. -/
opaque A171966 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A171966.provenance : SequenceMachineLib.Provenance := .undefined

/-- A171967: Number of partitions of n with distinct numbers of odd and even parts. -/
opaque A171967 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A171967.provenance : SequenceMachineLib.Provenance := .undefined

/-- A172101: Triangle, read by rows, given by [0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, ...] DELTA [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, ...] where DELTA is the operator defined in A084938. -/
opaque A172101 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A172101.provenance : SequenceMachineLib.Provenance := .undefined

/-- A172394: G.f. satisfies: A(x) = G(x/A(x)) where o.g.f. G(x) = A(x*G(x)) = Sum_{n>=0} A001464(n)*x^n. -/
opaque A172394 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A172394.provenance : SequenceMachineLib.Provenance := .undefined

/-- A172395: G.f. satisfies: A(x) = G(x/A(x)) where o.g.f. G(x) = A(x*G(x)) = Sum_{n>=0} A000085(n)*x^n. -/
opaque A172395 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A172395.provenance : SequenceMachineLib.Provenance := .undefined

/-- A172405: G.f. satisfies: A(x) = G(x*A(x)) where G(x) = A(x/G(x)) = Sum_{n>=0} x^(n(n+1)/2)*(1+x)^n. -/
opaque A172405 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A172405.provenance : SequenceMachineLib.Provenance := .undefined

/-- A172541: Number of n X n 0..1 arrays with row sums 7 and column sums 7. -/
opaque A172541 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A172541.provenance : SequenceMachineLib.Provenance := .undefined

/-- A173018: Euler's triangle: triangle of Eulerian numbers T(n,k) (n>=0, 0 <= k <= n) read by rows. -/
opaque A173018 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A173018.provenance : SequenceMachineLib.Provenance := .undefined

/-- A173271: Partial sums of A000105. -/
opaque A173271 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A173271.provenance : SequenceMachineLib.Provenance := .undefined

/-- A173383: Partial sums of A000014. -/
opaque A173383 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A173383.provenance : SequenceMachineLib.Provenance := .undefined

/-- A173397: Partial sums of A000019. -/
opaque A173397 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A173397.provenance : SequenceMachineLib.Provenance := .undefined

/-- A173466: a(n) is the number of prime knots with n crossings such that the empirical unknotting numbers cannot be decided minimals using their signatures. -/
opaque A173466 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A173466.provenance : SequenceMachineLib.Provenance := .undefined

/-- A173478: a(n) = the smallest number ending in n-1 zeros divisible by n. -/
opaque A173478 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A173478.provenance : SequenceMachineLib.Provenance := .undefined

/-- A173599: a(n) = a(n-1) + a(n-2) - [a(n-2)/4] - [a(n-4)/2] - [a(n-6)/4]. -/
opaque A173599 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A173599.provenance : SequenceMachineLib.Provenance := .undefined

/-- A173760: Partials sums of A000410. -/
opaque A173760 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A173760.provenance : SequenceMachineLib.Provenance := .undefined

/-- A174145: Number of rooted forests with n nodes in which each component contains at least two nodes. -/
opaque A174145 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A174145.provenance : SequenceMachineLib.Provenance := .undefined

/-- A174327: Conjecturally, even numbers n such that every even number greater than n has more decompositions as the sum of two primes. -/
opaque A174327 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A174327.provenance : SequenceMachineLib.Provenance := .undefined

/-- A174350: Square array: row n >= 1 lists the primes p for which the next prime is p+2n; read by antidiagonals. -/
opaque A174350 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A174350.provenance : SequenceMachineLib.Provenance := .undefined

/-- A174992: a(n) = n! - A000800(n). -/
opaque A174992 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A174992.provenance : SequenceMachineLib.Provenance := .undefined

/-- A175087: Number of numbers whose product of perfect divisors is equal to n. -/
opaque A175087 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A175087.provenance : SequenceMachineLib.Provenance := .undefined

/-- A175433: a(n) = the smallest number m such that sigma(n) = m^k for any k >= 1 (sigma = A000203). -/
opaque A175433 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A175433.provenance : SequenceMachineLib.Provenance := .undefined

/-- A175779: Triangle T(n,m) read by rows: numerator of 1/(n-m)^2 - 1/n^2. -/
opaque A175779 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A175779.provenance : SequenceMachineLib.Provenance := .undefined

/-- A176327: Numerators of the rational sequence with e.g.f. (x/2)*(1+exp(-x))/(1-exp(-x)). -/
opaque A176327 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A176327.provenance : SequenceMachineLib.Provenance := .undefined

/-- A176503: Leading column of triangle in A176463. -/
opaque A176503 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A176503.provenance : SequenceMachineLib.Provenance := .undefined

/-- A177517: Triangle T(n,k) read by rows defined by recurrence T(n,1)=A000007(n-1) and T(n,k) = sum_{i=1..k-1} T(n-i,k-1) if k>1. -/
opaque A177517 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A177517.provenance : SequenceMachineLib.Provenance := .undefined

/-- A177519: Number of permutations of 1..n avoiding adjacent step pattern up, down, down, up. -/
opaque A177519 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A177519.provenance : SequenceMachineLib.Provenance := .undefined

/-- A177523: Number of permutations of 1..n avoiding adjacent step pattern up, up, up, up. -/
opaque A177523 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A177523.provenance : SequenceMachineLib.Provenance := .undefined

/-- A177533: Number of permutations of 1..n avoiding adjacent step pattern up, up, up, up, up. -/
opaque A177533 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A177533.provenance : SequenceMachineLib.Provenance := .undefined

/-- A177553: Number of permutations of 1..n avoiding adjacent step pattern up, up, up, up, up, up. -/
opaque A177553 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A177553.provenance : SequenceMachineLib.Provenance := .undefined

/-- A177797: Number of decomposable fixed-point free involutions, also the number of disconnected chord diagrams with 2n nodes on an open string. -/
opaque A177797 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A177797.provenance : SequenceMachineLib.Provenance := .undefined

/-- A178334: Number of mountain numbers <= n. -/
opaque A178334 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A178334.provenance : SequenceMachineLib.Provenance := .undefined

/-- A178343: Triangle T(n,m)= binomial(n, m)/Beta(m + 1, n - m + 1) read by rows. -/
opaque A178343 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A178343.provenance : SequenceMachineLib.Provenance := .undefined

/-- A178798: Expansion of the polynomial x^36*(x^12-1)*(x^9+1)*(x^8-1)*(x^6-1)*(x^5-1)*(x^2-1) in increasing powers of x. -/
opaque A178798 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A178798.provenance : SequenceMachineLib.Provenance := .undefined

/-- A179401: Numbers k such that phi(phi(k)) = lambda(lambda(k)). -/
opaque A179401 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A179401.provenance : SequenceMachineLib.Provenance := .undefined

/-- A179527: Characteristic function of Zumkeller numbers (A083207). -/
opaque A179527 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A179527.provenance : SequenceMachineLib.Provenance := .undefined

/-- A179906: (1, 1, 2, 3, 5, 7, 11, ...) convolved with (1, 0, 1, 2, 3, 5, 7, 11, ...); given A000041 = (1, 1, 2, 3, 5, 7, ...). -/
opaque A179906 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A179906.provenance : SequenceMachineLib.Provenance := .undefined

/-- A181104: Dirichlet inverse of Ramanujan's L-series (A000594). -/
opaque A181104 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A181104.provenance : SequenceMachineLib.Provenance := .undefined

/-- A181418: a(n) = A000984(n)*A000172(n), which is the term-wise product of the Central binomial coefficients and Franel numbers, respectively. -/
opaque A181418 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A181418.provenance : SequenceMachineLib.Provenance := .undefined

/-- A181502: Triangle read by rows: number of solutions of n queens problem for given n and given maximal size of a connection component in the conflict constellation. -/
opaque A181502 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A181502.provenance : SequenceMachineLib.Provenance := .undefined

/-- A181765: Number of subsets of the interval [-n .. +n] with sums > 0. -/
opaque A181765 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A181765.provenance : SequenceMachineLib.Provenance := .undefined

/-- A181937: André numbers. Square array A(n,k), n>=2, k>=0, read by antidiagonals upwards, A(n,k) = n-alternating permutations of length k. -/
opaque A181937 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A181937.provenance : SequenceMachineLib.Provenance := .undefined

/-- A182160: Number of iterations of the map n -> sum of the n-powers of the decimal digits of n. -/
opaque A182160 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A182160.provenance : SequenceMachineLib.Provenance := .undefined

/-- A182222: Number T(n,k) of standard Young tableaux of n cells and height >= k; triangle T(n,k), n>=0, 0<=k<=n, read by rows. -/
opaque A182222 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A182222.provenance : SequenceMachineLib.Provenance := .undefined

/-- A182661: Expansion of x^3*exp(-x)/(3*(1-x)). -/
opaque A182661 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A182661.provenance : SequenceMachineLib.Provenance := .undefined

/-- A182712: Number of 2's in the last section of the set of partitions of n. -/
opaque A182712 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A182712.provenance : SequenceMachineLib.Provenance := .undefined

/-- A183011: (24n - 1)p(n): traces of partition class polynomials, with a(0) = -1. -/
opaque A183011 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A183011.provenance : SequenceMachineLib.Provenance := .undefined

/-- A183989: Ranks of (odd i)+(odd j)*r when all i+j*r are ranked, where r=golden ratio, i>=0, j>=0. -/
opaque A183989 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A183989.provenance : SequenceMachineLib.Provenance := .undefined

/-- A184159: The difference between the levels of the highest and lowest leaves in the rooted tree with Matula-Goebel number n. -/
opaque A184159 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A184159.provenance : SequenceMachineLib.Provenance := .undefined

/-- A184171: Number of partitions of n into an even number of distinct primes. -/
opaque A184171 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A184171.provenance : SequenceMachineLib.Provenance := .undefined

/-- A184172: Number of partitions of n into an odd number of distinct primes. -/
opaque A184172 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A184172.provenance : SequenceMachineLib.Provenance := .undefined

/-- A184198: Number of partitions of n into an even number of primes. -/
opaque A184198 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A184198.provenance : SequenceMachineLib.Provenance := .undefined

/-- A184199: Number of partitions of n into an odd number of primes. -/
opaque A184199 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A184199.provenance : SequenceMachineLib.Provenance := .undefined

/-- A184421: Lower s-Wythoff sequence, where s=upper Wythoff sequence. Complement of A184422. -/
opaque A184421 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A184421.provenance : SequenceMachineLib.Provenance := .undefined

/-- A184642: Number of partitions of n having no parts with multiplicity 7. -/
opaque A184642 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A184642.provenance : SequenceMachineLib.Provenance := .undefined

/-- A185011: Numbers k such that P(k^2+1) < P((k+1)^2+1) where P(n) (A006530) is the largest prime factor of n. -/
opaque A185011 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A185011.provenance : SequenceMachineLib.Provenance := .undefined

/-- A185245: Number of disconnected 4-regular simple graphs on n vertices with girth at least 5. -/
opaque A185245 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A185245.provenance : SequenceMachineLib.Provenance := .undefined

/-- A185264: Number of disconnected 6-regular simple graphs on n vertices with girth at least 4. -/
opaque A185264 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A185264.provenance : SequenceMachineLib.Provenance := .undefined

/-- A185284: Number of disconnected 8-regular simple graphs on n vertices with girth at least 4. -/
opaque A185284 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A185284.provenance : SequenceMachineLib.Provenance := .undefined

/-- A185293: Number of disconnected 9-regular graphs with 2n nodes. -/
opaque A185293 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A185293.provenance : SequenceMachineLib.Provenance := .undefined

/-- A185971: Convolution inverse of A001147. -/
opaque A185971 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A185971.provenance : SequenceMachineLib.Provenance := .undefined

/-- A186020: Eigentriangle of the binomial matrix. -/
opaque A186020 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A186020.provenance : SequenceMachineLib.Provenance := .undefined

/-- A186264: Expansion of 3F2( 1, 3/2, 3/2; 3, 4;16 x). -/
opaque A186264 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A186264.provenance : SequenceMachineLib.Provenance := .undefined

/-- A186272: The sum of the Fibonacci and shifted tribonacci sequences. -/
opaque A186272 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A186272.provenance : SequenceMachineLib.Provenance := .undefined

/-- A186417: The number of unlabeled graphs on n nodes with degree of 1 or 2. -/
opaque A186417 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A186417.provenance : SequenceMachineLib.Provenance := .undefined

/-- A186526: Number T(n,k) of permutations on n elements with exactly k 3-cycles; triangle read by rows. -/
opaque A186526 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A186526.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187076: Coefficients of L-series for elliptic curve "144a1": y^2 = x^3 - 1. -/
opaque A187076 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187076.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187149: Expansion of psi(-x)^4 * chi(-x^2)^2 in powers of x where psi(), chi() are Ramanujan theta functions. -/
opaque A187149 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187149.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187184: Parse the infinite string 0123450123450123450... into distinct phrases 0, 1, 2, 3, 4, 5, 01, 23, 45, 012, 34, ...; a(n) = length of n-th phrase. -/
opaque A187184 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187184.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187185: Parse the infinite string 0123456012345601234560... into distinct phrases 0, 1, 2, 3, 4, 5, 6, 01, 23, 45, 60, 12, 34, 56, 012, ...; a(n) = length of n-th phrase. -/
opaque A187185 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187185.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187219: Number of partitions of n that do not contain parts less than the smallest part of the partitions of n-1. -/
opaque A187219 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187219.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187747: (n-th digit of Pi) - (n-th digit of e). -/
opaque A187747 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187747.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187778: Numbers k dividing psi(k), where psi is the Dedekind psi function (A001615). -/
opaque A187778 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187778.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187829: Numbers that when converted to hexadecimal and the letters are replaced by base 10 equivalents, result in the same number. -/
opaque A187829 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187829.provenance : SequenceMachineLib.Provenance := .undefined

/-- A187831: Smallest number m > n such that n occurs in Collatz trajectory starting with m; a(0) = 1 by convention. -/
opaque A187831 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A187831.provenance : SequenceMachineLib.Provenance := .undefined

/-- A188108: Triangle T(n,m) read by rows, obtained from [A(x)]^m = Sum_{n>=m} T(n,m)*x^n, where A(x) (the g.f. for A069271) satisfies 2*x^2*A(x)^3 = 1 - 2*x*A(x) - sqrt(1-4*x*A(x)). -/
opaque A188108 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A188108.provenance : SequenceMachineLib.Provenance := .undefined

/-- A188403: T(n,k) = Number of (n*k) X k binary arrays with rows in nonincreasing order, n ones in every column and no more than 2 ones in any row. -/
opaque A188403 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A188403.provenance : SequenceMachineLib.Provenance := .undefined

/-- A188458: Expansion of e.g.f. exp(x)/cosh(2*x). -/
opaque A188458 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A188458.provenance : SequenceMachineLib.Provenance := .undefined

/-- A188567: T(n,k)=Number of nXk binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally. -/
opaque A188567 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A188567.provenance : SequenceMachineLib.Provenance := .undefined

/-- A188581: Inverse Moebius transform of A000688, the number of factorizations of n into prime powers greater than 1. -/
opaque A188581 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A188581.provenance : SequenceMachineLib.Provenance := .undefined

/-- A188585: Moebius inversion of sequence A000688, the number of factorizations of n into prime powers greater than 1. -/
opaque A188585 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A188585.provenance : SequenceMachineLib.Provenance := .undefined

/-- A190019: Number of acute triangles on an n X n grid (or geoboard). -/
opaque A190019 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A190019.provenance : SequenceMachineLib.Provenance := .undefined

/-- A190020: Number of obtuse triangles on an n X n grid (or geoboard). -/
opaque A190020 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A190020.provenance : SequenceMachineLib.Provenance := .undefined

/-- A190611: Expansion of f(q^3) * f(-q^8) * chi(-q^12) / chi(q) in powers of q where f(), chi() are Ramanujan theta functions. -/
opaque A190611 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A190611.provenance : SequenceMachineLib.Provenance := .undefined

/-- A191365: Expansion of e.g.f. (1/(1-x))^exp(x). -/
opaque A191365 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A191365.provenance : SequenceMachineLib.Provenance := .undefined

/-- A191371: Number of simple labeled graphs with (at most) 3-colored nodes such that no edge connects two nodes of the same color. -/
opaque A191371 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A191371.provenance : SequenceMachineLib.Provenance := .undefined

/-- A191659: First differences of A000219. -/
opaque A191659 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A191659.provenance : SequenceMachineLib.Provenance := .undefined

/-- A191869: First differences of the dying rabbits sequence A000044. -/
opaque A191869 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A191869.provenance : SequenceMachineLib.Provenance := .undefined

/-- A192013: a(n) = Sum_{d|n} Kronecker(-6, d). -/
opaque A192013 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A192013.provenance : SequenceMachineLib.Provenance := .undefined

/-- A192455: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n*A(-x)^A001650(n+1), where A001650 is defined by "n appears n times (n odd).". -/
opaque A192455 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A192455.provenance : SequenceMachineLib.Provenance := .undefined

/-- A192490: Characteristic function of ludic numbers (A003309). -/
opaque A192490 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A192490.provenance : SequenceMachineLib.Provenance := .undefined

/-- A192541: A046676(n) - A000607(n). -/
opaque A192541 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A192541.provenance : SequenceMachineLib.Provenance := .undefined

/-- A192721: The number of pairs of permutations in the product group S_n X S_n with k common descents, n >= 1 and 0 <= k <= n-1. -/
opaque A192721 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A192721.provenance : SequenceMachineLib.Provenance := .undefined

/-- A193856: Triangular array: the fission of (p(n,x)) by ((2x+1)^n), where p(n,x)=(x+1)^n. -/
opaque A193856 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A193856.provenance : SequenceMachineLib.Provenance := .undefined

/-- A193857: Mirror of the triangle A193856. -/
opaque A193857 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A193857.provenance : SequenceMachineLib.Provenance := .undefined

/-- A193860: Triangular array: the fission of ((2x+1)^n) by (q(n,x)), where q(n,x)=x^n+x^(n-1)+...+x+1. -/
opaque A193860 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A193860.provenance : SequenceMachineLib.Provenance := .undefined

/-- A193861: Mirror of the triangle A193860. -/
opaque A193861 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A193861.provenance : SequenceMachineLib.Provenance := .undefined

/-- A193908: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+2)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=2x*q(n-1,x)+1 with q(0,x)=1. -/
opaque A193908 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A193908.provenance : SequenceMachineLib.Provenance := .undefined

/-- A194193: Square array read by antidiagonals downwards: T(n,k) = number of ways to arrange k indistinguishable points on an n X n square grid so that no three points are collinear at any angle. -/
opaque A194193 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A194193.provenance : SequenceMachineLib.Provenance := .undefined

/-- A194323: Triangular array: g(n,k)=number of fractional parts (i*sqrt(1/2)) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n. -/
opaque A194323 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A194323.provenance : SequenceMachineLib.Provenance := .undefined

/-- A194339: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n, r=3-sqrt(5). -/
opaque A194339 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A194339.provenance : SequenceMachineLib.Provenance := .undefined

/-- A194543: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) is the number of partitions of n into parts p_i such that |p_i - p_j| >= k for i != j. -/
opaque A194543 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A194543.provenance : SequenceMachineLib.Provenance := .undefined

/-- A195820: Total number of smallest parts in all partitions of n that do not contain 1 as a part. -/
opaque A195820 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A195820.provenance : SequenceMachineLib.Provenance := .undefined

/-- A196555: O.g.f.: Sum_{n>=0} 2*(n+2)^(n-1) * x^n / Product_{k=1..n} (1+k*x). -/
opaque A196555 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A196555.provenance : SequenceMachineLib.Provenance := .undefined

/-- A198464: Consider triples a<=b -/
opaque A198464 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A198464.provenance : SequenceMachineLib.Provenance := .undefined

/-- A199103: G.f. satisfies: A(x) = exp( Sum_{n>=1} (1+x)^n * A(x^n) * x^n/n ). -/
opaque A199103 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A199103.provenance : SequenceMachineLib.Provenance := .undefined

/-- A199343: Least integer > n having a larger or the same digital sum as n. -/
opaque A199343 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A199343.provenance : SequenceMachineLib.Provenance := .undefined

/-- A199660: Number of parity alternating permutations of [n] avoiding descents from odd to even numbers. -/
opaque A199660 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A199660.provenance : SequenceMachineLib.Provenance := .undefined

/-- A200142: Number of near-matchings on the complete graph over 2n+1 vertices. -/
opaque A200142 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A200142.provenance : SequenceMachineLib.Provenance := .undefined

/-- A200370: T(n,k)=Number of 0..k arrays x(0..n+4) of n+5 elements with zero n-1st differences. -/
opaque A200370 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A200370.provenance : SequenceMachineLib.Provenance := .undefined

/-- A200405: Number of permutations of [n] avoiding the pattern 214-3. -/
opaque A200405 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A200405.provenance : SequenceMachineLib.Provenance := .undefined

/-- A201922: Triangle read by rows: T(n,m) = number of unlabeled graphs on n nodes with m connected components, m = 1,2,...,n. -/
opaque A201922 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A201922.provenance : SequenceMachineLib.Provenance := .undefined

/-- A202084: Class number of sqrt(-n). -/
opaque A202084 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A202084.provenance : SequenceMachineLib.Provenance := .undefined

/-- A202692: The first of three triangles counting 3-colored alternating permutations by their last value. -/
opaque A202692 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A202692.provenance : SequenceMachineLib.Provenance := .undefined

/-- A202693: The second of three triangles counting 3-colored alternating permutations by their last value. -/
opaque A202693 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A202693.provenance : SequenceMachineLib.Provenance := .undefined

/-- A204217: G.f.: Sum_{n>=1} n * x^(n*(n+1)/2) / (1 - x^n). -/
opaque A204217 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A204217.provenance : SequenceMachineLib.Provenance := .undefined

/-- A205352: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..3 introduced in row major order. -/
opaque A205352 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A205352.provenance : SequenceMachineLib.Provenance := .undefined

/-- A205574: Triangle T(n,k), 0<=k<=n, given by (0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, ...) DELTA (1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938. -/
opaque A205574 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A205574.provenance : SequenceMachineLib.Provenance := .undefined

/-- A205963: a(n) = Fibonacci(n)*A000118(n) for n>=1 with a(0)=1, where A000118(n) is the number of ways of writing n as a sum of 4 squares. -/
opaque A205963 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A205963.provenance : SequenceMachineLib.Provenance := .undefined

/-- A205964: a(n) = Fibonacci(n)*A000143(n) for n>=1 with a(0)=1, where A000143(n) is the number of ways of writing n as a sum of 8 squares. -/
opaque A205964 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A205964.provenance : SequenceMachineLib.Provenance := .undefined

/-- A206994: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 horizontally and 1 1 1 vertically. -/
opaque A206994 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A206994.provenance : SequenceMachineLib.Provenance := .undefined

/-- A207318: a(n) = Sum_{k=0..n-1} (-1)^k*A000172(k). -/
opaque A207318 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A207318.provenance : SequenceMachineLib.Provenance := .undefined

/-- A208723: Number of 2n-bead necklaces labeled with numbers 1..4 not allowing reversal, with neighbors differing by exactly 1. -/
opaque A208723 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A208723.provenance : SequenceMachineLib.Provenance := .undefined

/-- A208773: Number of n-bead necklaces labeled with numbers 1..4 not allowing reversal, with no adjacent beads differing by more than 1. -/
opaque A208773 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A208773.provenance : SequenceMachineLib.Provenance := .undefined

/-- A208849: Number of Josephus subsets of n people. -/
opaque A208849 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A208849.provenance : SequenceMachineLib.Provenance := .undefined

/-- A208975: G.f. satisfies: A(x) = 1 + x*A(x) * [d/dx x/A(x)^2]. -/
opaque A208975 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A208975.provenance : SequenceMachineLib.Provenance := .undefined

/-- A208988: Number of n-bead necklaces labeled with numbers -3..3 not allowing reversal, with sum zero and first differences in -3..3. -/
opaque A208988 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A208988.provenance : SequenceMachineLib.Provenance := .undefined

/-- A208993: T(n,k) is the number of n-bead necklaces labeled with numbers -k..k not allowing reversal, with sum zero and first differences in -k..k. -/
opaque A208993 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A208993.provenance : SequenceMachineLib.Provenance := .undefined

/-- A209001: Number of n-bead necklaces labeled with numbers -2..2 not allowing reversal, with sum zero and first and second differences in -2..2. -/
opaque A209001 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A209001.provenance : SequenceMachineLib.Provenance := .undefined

/-- A209430: Denominator of l(n), where l(1)=1, l(2)=2, l(n)=l(n-1)+2*l(n-2)/n. -/
opaque A209430 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A209430.provenance : SequenceMachineLib.Provenance := .undefined

/-- A209435: Table T(m,n), read by antidiagonals, is the number of subsets of {1,...,n} which do not contain two elements whose difference is m+1. -/
opaque A209435 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A209435.provenance : SequenceMachineLib.Provenance := .undefined

/-- A209443: a(n) = Pell(n)*A000118(n) for n>=1 with a(0)=1, where A000118(n) is the number of ways of writing n as a sum of 4 squares. -/
opaque A209443 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A209443.provenance : SequenceMachineLib.Provenance := .undefined

/-- A209444: a(n) = Pell(n)*A000143(n) for n>=1 with a(0)=1, where A000143(n) is the number of ways of writing n as a sum of 8 squares. -/
opaque A209444 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A209444.provenance : SequenceMachineLib.Provenance := .undefined

/-- A209676: Expansion of f(x)^12 in powers of x where f() is a Ramanujan theta function. -/
opaque A209676 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A209676.provenance : SequenceMachineLib.Provenance := .undefined

/-- A209941: Expansion of f(x)^6 in powers of x where f() is a Ramanujan theta function. -/
opaque A209941 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A209941.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210111: Left half of triangle A125053. -/
opaque A210111 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210111.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210323: Number of 2-divided words of length n over a 3-letter alphabet. -/
opaque A210323 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210323.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210540: Number of arrays of n nonnegative integers with value i>0 appearing only after i-1 has appeared at least 3 times. -/
opaque A210540 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210540.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210545: T(n,k) = number of arrays of n nonnegative integers with value i>0 appearing only after i-1 has appeared at least k times. -/
opaque A210545 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210545.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210590: Triangle of numbers generated by the Nekrasov-Okounkov formula. -/
opaque A210590 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210590.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210636: Riordan array ((1-x)/(1-2*x-x^2), x*(1+x)/(1-2*x-x^2)). -/
opaque A210636 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210636.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210641: A117609(n)-A210639(n): Difference between number of lattice points in the ball x^2+y^2+z^2 <= n and the volume of this ball rounded to the nearest integer. -/
opaque A210641 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210641.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210657: a(0)=1; thereafter a(n) = -2*Sum_{k=1..n} binomial(2n,2k)*a(n-k). -/
opaque A210657 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210657.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210664: Square array read by upwards antidiagonals: T(m,n) is the number of simple 3-connected triangulations of a closed region in the plane with m+3 given external edges and 3n+m internal edges, m>=0, n>=1. -/
opaque A210664 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210664.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210725: Triangle read by rows: T(n,k) = number of forests of labeled rooted trees with n nodes and height at most k (n>=1, 0<=k<=n-1). -/
opaque A210725 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210725.provenance : SequenceMachineLib.Provenance := .undefined

/-- A210764: Square array T(n,k), n>=0, k>=0, read by antidiagonals in which column k gives the partial sums of column k of A144064. -/
opaque A210764 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A210764.provenance : SequenceMachineLib.Provenance := .undefined

/-- A211183: Triangle T(n,k), 0<=k<=n, read by rows, given by (0, 1, 1, 3, 3, 6, 6, 10, 10, 15, ...) DELTA (1, 0, 2, 0, 3, 0, 4, 0, 5, ...) where DELTA is the operator defined in A084938. -/
opaque A211183 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A211183.provenance : SequenceMachineLib.Provenance := .undefined

/-- A211192: Consider all distinct functions f representable as x -> x^x^...^x with n x's and parentheses inserted in all possible ways; sequence gives difference between numbers of f with f(0)=1 and numbers of f with f(0)=0, with conventions that 0^0=1^0=1^1=1, 0^1=0. -/
opaque A211192 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A211192.provenance : SequenceMachineLib.Provenance := .undefined

/-- A211241: Order of 5 mod n-th prime: least k such that prime(n) divides 5^k-1. -/
opaque A211241 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A211241.provenance : SequenceMachineLib.Provenance := .undefined

/-- A211639: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2<=n. -/
opaque A211639 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A211639.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212291: Number of permutations of n elements with at most one fixed point. -/
opaque A212291 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212291.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212352: Row sums of A047997. -/
opaque A212352 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212352.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212431: Triangle read by rows: row sums, right and left borders are the Bell sequence, or a shifted variant. See Comments for precise definition. -/
opaque A212431 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212431.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212435: Expansion of e.g.f.: exp(-x) / cosh(2*x). -/
opaque A212435 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212435.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212438: Irregular triangle read by rows: T(n,k) is the number of polyhedra with n faces and k vertices (n >= 4, k=4..2n-4). -/
opaque A212438 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212438.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212551: Number of partitions T(n,k) of n containing at least one other part m-k if m is the largest part; triangle T(n,k), n>=0, 0<=k<=n. -/
opaque A212551 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212551.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212827: Number of 0..6 arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..6 order. -/
opaque A212827 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212827.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212828: Number of 0..7 arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..7 order. -/
opaque A212828 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212828.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212855: T(n,k) = number of n X k arrays with rows being permutations of 0..k-1 and no column j greater than column j-1 in all rows (n, k >= 1). -/
opaque A212855 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212855.provenance : SequenceMachineLib.Provenance := .undefined

/-- A212885: Expansion of phi(q) * phi(-q)^2 in powers of q where phi() is a Ramanujan theta function. -/
opaque A212885 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A212885.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213001: Base-13 analog of A208059. -/
opaque A213001 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213001.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213091: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^2). -/
opaque A213091 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213091.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213226: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^5)). -/
opaque A213226 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213226.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213242: Number of generalizations of the partition 1^n. -/
opaque A213242 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213242.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213251: a(n) = smallest m such that there exists an m X m (0,1)-matrix with permanent n. -/
opaque A213251 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213251.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213441: Number of 2-colored graphs on n labeled nodes. -/
opaque A213441 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213441.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213443: a(0)=5, thereafter a(n) = chromatic number (or Heawood number) Chi(n) of surface of genus n. -/
opaque A213443 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213443.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213454: a(n) = A001253(n)/2. -/
opaque A213454 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213454.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213521: a(n) = prime(A213520(n)). -/
opaque A213521 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213521.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213598: Number of partitions of n in which no parts are multiples of 49. -/
opaque A213598 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213598.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213674: Number of rooted trees with n nodes, where cycles are allowed instead of subtrees. -/
opaque A213674 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213674.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213683: Number of rooted trees with n nodes having some subtrees replaced by cycles. -/
opaque A213683 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213683.provenance : SequenceMachineLib.Provenance := .undefined

/-- A213953: Triangle by rows, inverse of A208891. -/
opaque A213953 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A213953.provenance : SequenceMachineLib.Provenance := .undefined

/-- A214329: Complement of A214328. -/
opaque A214329 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A214329.provenance : SequenceMachineLib.Provenance := .undefined

/-- A216053: a(n) is the position of the last two-tuple within the reverse lexicographic set of partitions of 2n and 2n+1, with a(1)-a(n) representing the positions of every 2-tuple partition of 2n and 2n+1. -/
opaque A216053 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A216053.provenance : SequenceMachineLib.Provenance := .undefined

/-- A216094: a(1) = 2; a(n+1) = a(n) + |A036263(n)| + 2. -/
opaque A216094 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A216094.provenance : SequenceMachineLib.Provenance := .undefined

/-- A216294: Triangular array read by rows: T(n,k) is the number of partial permutations of {1,2,...,n} that have exactly k cycles, 0<=k<=n. -/
opaque A216294 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A216294.provenance : SequenceMachineLib.Provenance := .undefined

/-- A216635: T(n,k)=Number of nondecreasing arrays of n 0..n-1 integers with the sum of their k'th powers equal to sum(i^k,i=0..n-1). -/
opaque A216635 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A216635.provenance : SequenceMachineLib.Provenance := .undefined

/-- A216883: Primes p such that x^31 = 2 has a solution mod p. -/
opaque A216883 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A216883.provenance : SequenceMachineLib.Provenance := .undefined

/-- A216885: Primes p such that x^47 = 2 has a solution mod p. -/
opaque A216885 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A216885.provenance : SequenceMachineLib.Provenance := .undefined

/-- A217420: Number of rooted unlabeled trees where the root node has degree 2 and both branches are distinct. -/
opaque A217420 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A217420.provenance : SequenceMachineLib.Provenance := .undefined

/-- A217653: Triangular array read by rows: T(n,k) is the number of unlabeled simple graphs with n nodes that have exactly k isolated nodes, (n>=0, 0<=k<=n). -/
opaque A217653 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A217653.provenance : SequenceMachineLib.Provenance := .undefined

/-- A217654: Triangular array read by rows. T(n,k) is the number of unlabeled directed graphs of n nodes that have exactly k isolated nodes. -/
opaque A217654 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A217654.provenance : SequenceMachineLib.Provenance := .undefined

/-- A217781: Triangular array read by rows: T(n,k) is the number of n-node connected graphs with exactly one cycle of length k (and no other cycles) for n >= 1 and 1 <= k <= n. -/
opaque A217781 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A217781.provenance : SequenceMachineLib.Provenance := .undefined

/-- A217832: Number of sequences of n 2's and 3's with curling number 2 and which have the form XY^2 with Y = 2. -/
opaque A217832 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A217832.provenance : SequenceMachineLib.Provenance := .undefined

/-- A218004: Number of equivalence classes of compositions of n where two compositions a,b are considered equivalent if the summands of a can be permuted into the summands of b with an even number of transpositions. -/
opaque A218004 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A218004.provenance : SequenceMachineLib.Provenance := .undefined

/-- A218127: Number of 10-ary sequences with primitive period n. -/
opaque A218127 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A218127.provenance : SequenceMachineLib.Provenance := .undefined

/-- A218260: E.g.f.: Sum_{n>=0} Product_{k=1..n} tanh((2*k-1)*x). -/
opaque A218260 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A218260.provenance : SequenceMachineLib.Provenance := .undefined

/-- A218467: A variant of the Euclid-Mullin sequence A000945: a(1) = 2, a(n+1) is smallest prime factor congruent to 3 (mod 4) of Product_{k=1..n} a(k) + 1. -/
opaque A218467 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A218467.provenance : SequenceMachineLib.Provenance := .undefined

/-- A218965: Number of conjugacy classes of subgroups of the symmetric group which are not subgroups of the alternating group. -/
opaque A218965 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A218965.provenance : SequenceMachineLib.Provenance := .undefined

/-- A218966: Number of conjugacy classes of subgroups of the symmetric which are also subgroups of the alternating group. -/
opaque A218966 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A218966.provenance : SequenceMachineLib.Provenance := .undefined

/-- A219222: Numbers that can be expressed as the sum of 2 positive squares but not as the sum of 3 positive squares. -/
opaque A219222 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A219222.provenance : SequenceMachineLib.Provenance := .undefined

/-- A219347: Number of partitions of n into distinct parts with smallest possible largest part. -/
opaque A219347 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A219347.provenance : SequenceMachineLib.Provenance := .undefined

/-- A219865: First differences of A219795. -/
opaque A219865 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A219865.provenance : SequenceMachineLib.Provenance := .undefined

/-- A220881: Number of nonequivalent dissections of an n-gon into n-3 polygons by nonintersecting diagonals up to rotation. -/
opaque A220881 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A220881.provenance : SequenceMachineLib.Provenance := .undefined

/-- A220905: Triangle read by rows: rook numbers of certain "probleme des rencontres" boards of the second kind of size n X k (0 <= k <= n). -/
opaque A220905 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A220905.provenance : SequenceMachineLib.Provenance := .undefined

/-- A222012: G.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(x)^n / (1 + n*x*A(x))^n. -/
opaque A222012 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A222012.provenance : SequenceMachineLib.Provenance := .undefined

/-- A222210: In the number n, replace all (decimal) digits '0' with '1' and vice versa. -/
opaque A222210 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A222210.provenance : SequenceMachineLib.Provenance := .undefined

/-- A222233: In the number n, replace all (decimal) digits '2' with '9' and vice versa. -/
opaque A222233 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A222233.provenance : SequenceMachineLib.Provenance := .undefined

/-- A222236: In the number n, replace all (decimal) digits '3' with '6' and vice versa. -/
opaque A222236 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A222236.provenance : SequenceMachineLib.Provenance := .undefined

/-- A222307: Write down the nonprime numbers 1, 4, 6, 8, 9, 10, 12, 14, 15, 16, 18, ... and insert between two nonprimes the smallest prime not yet present in the sequence such that two neighboring integers sum to a nonprime. -/
opaque A222307 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A222307.provenance : SequenceMachineLib.Provenance := .undefined

/-- A222379: Number of distinct functions f representable as x -> x^x^...^x with n x's and parentheses inserted in all possible ways giving result f(0)=0, with conventions that 0^0=1^0=1^1=1, 0^1=0. -/
opaque A222379 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A222379.provenance : SequenceMachineLib.Provenance := .undefined

/-- A222380: Number of distinct functions f representable as x -> x^x^...^x with n x's and parentheses inserted in all possible ways giving result f(0)=1, with conventions that 0^0=1^0=1^1=1, 0^1=0. -/
opaque A222380 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A222380.provenance : SequenceMachineLib.Provenance := .undefined

/-- A222955: Number of n X 1 0..1 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope. -/
opaque A222955 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A222955.provenance : SequenceMachineLib.Provenance := .undefined

/-- A223731: All positive numbers that are primitive sums of three nonzero squares. -/
opaque A223731 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A223731.provenance : SequenceMachineLib.Provenance := .undefined

/-- A223887: Number of 4-colored labeled graphs on n vertices. -/
opaque A223887 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A223887.provenance : SequenceMachineLib.Provenance := .undefined

/-- A224541: Number of doubly-surjective functions f:[n]->[3]. -/
opaque A224541 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A224541.provenance : SequenceMachineLib.Provenance := .undefined

/-- A224712: The number of unordered partitions {a, b} of n such that a or b is composite and the other is prime. -/
opaque A224712 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A224712.provenance : SequenceMachineLib.Provenance := .undefined

/-- A225147: a(n) = Im((1-I)^(1-n)*A_{n, 3}(I)) where A_{n, k}(x) are the generalized Eulerian polynomials. -/
opaque A225147 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A225147.provenance : SequenceMachineLib.Provenance := .undefined

/-- A225543: G.f.: Product_{k>0} (1 - x^k)^4 * (1 - (-x)^k)^8. -/
opaque A225543 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A225543.provenance : SequenceMachineLib.Provenance := .undefined

/-- A225558: a(n) = A003418(n)/A000793(n). -/
opaque A225558 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A225558.provenance : SequenceMachineLib.Provenance := .undefined

/-- A225644: a(n) = number of distinct values in column n of A225640. -/
opaque A225644 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A225644.provenance : SequenceMachineLib.Provenance := .undefined

/-- A225660: Number of nonrepeating vectors in a counting procedure that starts with the digits of (n base 2). -/
opaque A225660 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A225660.provenance : SequenceMachineLib.Provenance := .undefined

/-- A225923: Expansion of q^(-1/2) * k(q) * (1 - k(q)^4) * (K(q) / (Pi/2))^6 / 4 in powers of q where k(), k'(), K() are Jacobi elliptic functions. -/
opaque A225923 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A225923.provenance : SequenceMachineLib.Provenance := .undefined

/-- A226143: a(n) is the smallest k > 0 such that A000793(n)^k >= n!. -/
opaque A226143 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A226143.provenance : SequenceMachineLib.Provenance := .undefined

/-- A226757: a(n) = number of distinct quadruples of squares modulo n. -/
opaque A226757 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A226757.provenance : SequenceMachineLib.Provenance := .undefined

/-- A226916: Number of (17,11)-reverse multiples with n digits. -/
opaque A226916 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A226916.provenance : SequenceMachineLib.Provenance := .undefined

/-- A227083: Number of ways to write n as a + b/2 with a and b terms of the sequence A008407. -/
opaque A227083 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A227083.provenance : SequenceMachineLib.Provenance := .undefined

/-- A227167: The number of meandering curves of order n. -/
opaque A227167 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A227167.provenance : SequenceMachineLib.Provenance := .undefined

/-- A227239: Expansion of q * f(-q^2)^12 + 8 * q^2 * f(-q^4)^12 in powers of q where f() is a Ramanujan theta function. -/
opaque A227239 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A227239.provenance : SequenceMachineLib.Provenance := .undefined

/-- A227338: Number of n-step self-avoiding walks on cubic lattice ending at point with x = k. -/
opaque A227338 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A227338.provenance : SequenceMachineLib.Provenance := .undefined

/-- A227511: Triangle read by rows: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = k. -/
opaque A227511 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A227511.provenance : SequenceMachineLib.Provenance := .undefined

/-- A228601: Triangle read by rows: T(n,k) is the number of trees with n vertices and having k distinct rootings (1 <= k <= n). -/
opaque A228601 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A228601.provenance : SequenceMachineLib.Provenance := .undefined

/-- A228954: Bisection of A195240(n). -/
opaque A228954 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A228954.provenance : SequenceMachineLib.Provenance := .undefined

/-- A229039: G.f.: Sum_{n>=0} (n+2)^n * x^n / (1 + (n+2)*x)^n. -/
opaque A229039 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A229039.provenance : SequenceMachineLib.Provenance := .undefined

/-- A229186: Beginning position of n in the decimal expansion of the Champernowne constant. -/
opaque A229186 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A229186.provenance : SequenceMachineLib.Provenance := .undefined

/-- A229492: Conjectured number of positive even numbers having exactly n representations as the unordered sum of two odd primes. -/
opaque A229492 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A229492.provenance : SequenceMachineLib.Provenance := .undefined

/-- A229651: Cogrowth function of the group Baumslag-Solitar(9,9). -/
opaque A229651 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A229651.provenance : SequenceMachineLib.Provenance := .undefined

/-- A229892: Number T(n,k) of k up, k down permutations of [n]; triangle T(n,k), n>=0, 0<=k<=n, read by rows. -/
opaque A229892 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A229892.provenance : SequenceMachineLib.Provenance := .undefined

/-- A230014: Triangle E(n,k), 1<=k<=n, giving the cardinality of optimal binary covering codes of empty spheres of length n and radius k. -/
opaque A230014 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A230014.provenance : SequenceMachineLib.Provenance := .undefined

/-- A230049: Triangle such that the g.f. of column k equals 1/(1-x)^(k^3) for k>=0, as read by rows. -/
opaque A230049 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A230049.provenance : SequenceMachineLib.Provenance := .undefined

/-- A230833: Sum of the first n strobogrammatic numbers. -/
opaque A230833 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A230833.provenance : SequenceMachineLib.Provenance := .undefined

/-- A230950: Boustrophedon transform of Thue-Morse sequence A010060. -/
opaque A230950 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A230950.provenance : SequenceMachineLib.Provenance := .undefined

/-- A230951: Boustrophedon transform of Thue-Morse sequence A010059. -/
opaque A230951 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A230951.provenance : SequenceMachineLib.Provenance := .undefined

/-- A230958: Boustrophedon transform of Thue-Morse sequence A001285. -/
opaque A230958 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A230958.provenance : SequenceMachineLib.Provenance := .undefined

/-- A230989: T(n,k)=Number of white square subarrays of (n+1)X(k+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero. -/
opaque A230989 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A230989.provenance : SequenceMachineLib.Provenance := .undefined

/-- A231179: Boustrophedon transform of nonnegative integers, cf. A001477. -/
opaque A231179 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A231179.provenance : SequenceMachineLib.Provenance := .undefined

/-- A231200: Boustrophedon transform of even numbers. -/
opaque A231200 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A231200.provenance : SequenceMachineLib.Provenance := .undefined

/-- A232528: Numbers n such that for all primes p where p and p-n are quadratic residues (mod 4*n), 4*p can be written as x^2 + n*y^2. -/
opaque A232528 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A232528.provenance : SequenceMachineLib.Provenance := .undefined

/-- A232697: Number of partitions of 2n into parts such that the largest multiplicity equals n. -/
opaque A232697 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A232697.provenance : SequenceMachineLib.Provenance := .undefined

/-- A232705: Number of Gaussian integers z satisfying (n-1)/2 < |z| < n/2. -/
opaque A232705 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A232705.provenance : SequenceMachineLib.Provenance := .undefined

/-- A233267: a(n) = A055881(A001110(n)); the largest m such that m! divides the n-th positive number which is both triangular and square. -/
opaque A233267 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A233267.provenance : SequenceMachineLib.Provenance := .undefined

/-- A233269: a(n) = A055881(A001109(n)). -/
opaque A233269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A233269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A233386: Number of ways to write n = i + j + k with 0 < i <= j <= k and i, j, k not all equal such that phi(i)*phi(j)*phi(k) is a cube. -/
opaque A233386 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A233386.provenance : SequenceMachineLib.Provenance := .undefined

/-- A234300: Number of unit squares, aligned with a Cartesian grid, partially encircled along the edge of the first quadrant of a circle centered at the origin ordered by increasing radius. -/
opaque A234300 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A234300.provenance : SequenceMachineLib.Provenance := .undefined

/-- A235049: Subtract one from each nonzero digit in decimal representation of n. -/
opaque A235049 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A235049.provenance : SequenceMachineLib.Provenance := .undefined

/-- A235141: First differences of A234300. -/
opaque A235141 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A235141.provenance : SequenceMachineLib.Provenance := .undefined

/-- A235453: Triangle T(n, k) = Number of non-equivalent (mod D_4) ways to arrange k indistinguishable points on an n X n square grid so that no three of them are collinear. Triangle read by rows. -/
opaque A235453 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A235453.provenance : SequenceMachineLib.Provenance := .undefined

/-- A235595: Triangle read by rows: the triangle in A034855, with the n-th row normalized by dividing it by n. -/
opaque A235595 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A235595.provenance : SequenceMachineLib.Provenance := .undefined

/-- A235596: Second column of triangle in A235595. -/
opaque A235596 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A235596.provenance : SequenceMachineLib.Provenance := .undefined

/-- A235605: Shanks's array c_{a,n} (a >= 1, n >= 0) that generalizes Euler and class numbers, read by antidiagonals upwards. -/
opaque A235605 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A235605.provenance : SequenceMachineLib.Provenance := .undefined

/-- A235606: Shanks's array d_{a,n} (a >= 1, n >= 1) that generalizes the tangent numbers, read by antidiagonals upwards. -/
opaque A235606 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A235606.provenance : SequenceMachineLib.Provenance := .undefined

/-- A235791: Irregular triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists k copies of every positive integer in nondecreasing order, and the first element of column k is in row k(k+1)/2. -/
opaque A235791 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A235791.provenance : SequenceMachineLib.Provenance := .undefined

/-- A236378: Difference between n and the result obtained when n is remultiplied from N to GF(2)[X]: a(n) = n - A234741(n). -/
opaque A236378 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A236378.provenance : SequenceMachineLib.Provenance := .undefined

/-- A237122: Smallest lucky number that is divisible by n-th lucky number. -/
opaque A237122 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A237122.provenance : SequenceMachineLib.Provenance := .undefined

/-- A237126: a(0)=0, a(1) = 1, a(2n) = nonludic(a(n)), a(2n+1) = ludic(a(n)+1), where ludic = A003309, nonludic = A192607. -/
opaque A237126 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A237126.provenance : SequenceMachineLib.Provenance := .undefined

/-- A237583: Automorphic numbers: n^2 ends with n in base 6. -/
opaque A237583 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A237583.provenance : SequenceMachineLib.Provenance := .undefined

/-- A238106: a(n) = A238104(n)/9. -/
opaque A238106 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A238106.provenance : SequenceMachineLib.Provenance := .undefined

/-- A238346: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n where the k-th part is the last occurrence of a largest part, n>=1, 1<=k<=n. -/
opaque A238346 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A238346.provenance : SequenceMachineLib.Provenance := .undefined

/-- A238394: Number of partitions of n that sorted in increasing order do not contain a part k in position k. -/
opaque A238394 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A238394.provenance : SequenceMachineLib.Provenance := .undefined

/-- A238395: Number of partitions of n that sorted in increasing order contain a part k in position k for some k. -/
opaque A238395 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A238395.provenance : SequenceMachineLib.Provenance := .undefined

/-- A238646: Number of primes p < n such that the number of squarefree numbers among 1, ..., n-p is prime. -/
opaque A238646 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A238646.provenance : SequenceMachineLib.Provenance := .undefined

/-- A238708: Number of strict partitions of n that include a pair of consecutive integers. -/
opaque A238708 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A238708.provenance : SequenceMachineLib.Provenance := .undefined

/-- A238877: Members of a pair (a,b) such that a is the number of Abelian groups of order n and b is the number of non-Abelian groups of order n. -/
opaque A238877 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A238877.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239002: Number of partitions of n into distinct parts all of which are Fibonacci numbers greater than 1. -/
opaque A239002 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239002.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239239: Number of strict partitions of n having fewer odd parts than even. -/
opaque A239239 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239239.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239240: Number of partitions of n into distinct parts for which (number of odd parts) <= (number of even parts). -/
opaque A239240 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239240.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239242: Number of partitions of n into distinct parts for which (number of odd parts) > (number of even parts). -/
opaque A239242 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239242.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239243: Number of partitions of n into distinct parts for which (number of odd parts) >= (number of even parts). -/
opaque A239243 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239243.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239259: Number of partitions of n having (sum of odd parts) < (sum of even parts). -/
opaque A239259 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239259.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239260: Number of partitions of n having (sum of odd parts) <= (sum of even parts). -/
opaque A239260 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239260.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239262: Number of partitions of n having (sum of odd parts) > (sum of even parts). -/
opaque A239262 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239262.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239263: Number of partitions of n having (sum of odd parts) >= (sum of even parts). -/
opaque A239263 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239263.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239829: Triangular array: T(n,k) = number of partitions of 2n - 1 that have alternating sum 2k - 1. -/
opaque A239829 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239829.provenance : SequenceMachineLib.Provenance := .undefined

/-- A239830: Triangular array: T(n,k) = number of partitions of 2n that have alternating sum 2k, with T(0,0) = 1 for convenience. -/
opaque A239830 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A239830.provenance : SequenceMachineLib.Provenance := .undefined

/-- A240352: Inverse of 67th cyclotomic polynomial. -/
opaque A240352 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A240352.provenance : SequenceMachineLib.Provenance := .undefined

/-- A240354: Inverse of 71st cyclotomic polynomial. -/
opaque A240354 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A240354.provenance : SequenceMachineLib.Provenance := .undefined

/-- A240665: Least k such that 10^k == -1 (mod prime(n)), or 0 if no such k exists. -/
opaque A240665 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A240665.provenance : SequenceMachineLib.Provenance := .undefined

/-- A241447: Number of partitions p of n such that the number of parts having multiplicity 1 is a part and max(p) - min(p) is a part. -/
opaque A241447 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A241447.provenance : SequenceMachineLib.Provenance := .undefined

/-- A241741: Number of partitions p of n such that (number of numbers in p of form 3k+2) = (number of numbers in p of form 3k). -/
opaque A241741 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A241741.provenance : SequenceMachineLib.Provenance := .undefined

/-- A241985: The number of P-positions in the At-Most-2-Jars game with up to three piles, allowing for piles of zero, that are born in generation n. -/
opaque A241985 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A241985.provenance : SequenceMachineLib.Provenance := .undefined

/-- A241988: The number of P-positions in the Consecutive game with at most three piles, allowing for piles of zero, that are born by generation n. -/
opaque A241988 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A241988.provenance : SequenceMachineLib.Provenance := .undefined

/-- A242101: Number of conjugacy classes of the symmetric group S_n when conjugating only by even permutations. -/
opaque A242101 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A242101.provenance : SequenceMachineLib.Provenance := .undefined

/-- A242249: Number A(n,k) of rooted trees with n nodes and k-colored non-root nodes; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A242249 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A242249.provenance : SequenceMachineLib.Provenance := .undefined

/-- A242474: Numbers n such that A = n - digitsum(n) is divisible by the largest power of 10 <= A. -/
opaque A242474 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A242474.provenance : SequenceMachineLib.Provenance := .undefined

/-- A242641: Array read by antidiagonals upwards: B(s,n) ( s>=1, n >= 0) = number of s-line partitions of n. -/
opaque A242641 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A242641.provenance : SequenceMachineLib.Provenance := .undefined

/-- A242642: Triangle read by rows: T(s,n) (n>=1, 1 <= s <= n) = number of s-line partitions of n. -/
opaque A242642 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A242642.provenance : SequenceMachineLib.Provenance := .undefined

/-- A242699: Number of partitions of n with difference 8 between the number of odd parts and the number of even parts, both counted without multiplicity. -/
opaque A242699 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A242699.provenance : SequenceMachineLib.Provenance := .undefined

/-- A242748: Number of ordered ways to write n = k + m with 0 < k <= m such that k is a primitive root modulo prime(k) and m is a primitive root modulo prime(m). -/
opaque A242748 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A242748.provenance : SequenceMachineLib.Provenance := .undefined

/-- A242784: Number A(n,k) of permutations of [n] avoiding the consecutive step pattern given by the binary expansion of k, where 1=up and 0=down; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A242784 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A242784.provenance : SequenceMachineLib.Provenance := .undefined

/-- A243148: Triangle read by rows: T(n,k) = number of partitions of n into k nonzero squares; n >= 0, 0 <= k <= n. -/
opaque A243148 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A243148.provenance : SequenceMachineLib.Provenance := .undefined

/-- A243284: a(n) = the number of distinct ways of writing such products m = k^2 * j, 0 < j <= k, (j and k natural numbers) that m is in range [1,n]; Partial sums of A102354. -/
opaque A243284 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A243284.provenance : SequenceMachineLib.Provenance := .undefined

/-- A243585: Expansion of x*log'(C(C(x)-1)-1), C(x) = (1-sqrt(1-4*x))/(2*x). -/
opaque A243585 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A243585.provenance : SequenceMachineLib.Provenance := .undefined

/-- A243763: Expansion of q * phi(q)^3 * psi(q^2)^4 in powers of q where phi(), psi() are Ramanujan theta functions. -/
opaque A243763 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A243763.provenance : SequenceMachineLib.Provenance := .undefined

/-- A243833: Number A(n,k) of Dyck paths of semilength n having exactly seven (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A243833 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A243833.provenance : SequenceMachineLib.Provenance := .undefined

/-- A243963: a(n) = n*4^n*(-Z(1-n, 1/4)/2 + Z(1-n, 3/4)/2 - Z(1-n, 1)*(1 - 2^(-n))) for n > 0 and a(0) = 0, where Z(n, c) is the Hurwitz zeta function. -/
opaque A243963 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A243963.provenance : SequenceMachineLib.Provenance := .undefined

/-- A245115: E.g.f. satisfies: A'(x) = (cos(x) + sin(x)*A(x)) / (cos(x)*A(x) - sin(x)). -/
opaque A245115 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A245115.provenance : SequenceMachineLib.Provenance := .undefined

/-- A245155: E.g.f.: (cosh(3*x) + sinh(3*x)*cosh(x)) / (cosh(x) - sinh(x)*cosh(3*x)). -/
opaque A245155 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A245155.provenance : SequenceMachineLib.Provenance := .undefined

/-- A245163: T(n,k)=Number of length n 0..k arrays with new values introduced in order from both ends. -/
opaque A245163 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A245163.provenance : SequenceMachineLib.Provenance := .undefined

/-- A245226: Values of n such that the equation x^2 - n*y^2 = n has integer solutions. -/
opaque A245226 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A245226.provenance : SequenceMachineLib.Provenance := .undefined

/-- A245767: Triangular array read by rows: T(n,k) is the number of transitive relations on {1,2,...,n} that have exactly k reflexive points, n>=0, 0<=k<=n. -/
opaque A245767 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A245767.provenance : SequenceMachineLib.Provenance := .undefined

/-- A246037: Number of odd terms in f^n, where f = (1/x+1+x)*(1/y+y). -/
opaque A246037 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A246037.provenance : SequenceMachineLib.Provenance := .undefined

/-- A246148: Number of inequivalent n X 3 binary matrices, where equivalence means permutations of rows or columns or the symbol set. -/
opaque A246148 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A246148.provenance : SequenceMachineLib.Provenance := .undefined

/-- A246631: Number of integer solutions to x^2 + 2*y^2 + 2*z^2 = n. -/
opaque A246631 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A246631.provenance : SequenceMachineLib.Provenance := .undefined

/-- A246777: a(n) = A246776(A005669(n)): using the indices of maximal primes in A002386 in order to verify the Firoozbakht conjecture for 0 <= floor(prime(n)^(1+1/n)) - prime(n+1). -/
opaque A246777 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A246777.provenance : SequenceMachineLib.Provenance := .undefined

/-- A246789: a(n) = A246778(A005669(n)). -/
opaque A246789 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A246789.provenance : SequenceMachineLib.Provenance := .undefined

/-- A246928: Number of integer solutions to x^2 + 3*y^2 + 3*z^2 = n. -/
opaque A246928 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A246928.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247151: Numbers n such that abs(36*n^2 - 810*n + 2753) is prime. -/
opaque A247151 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247151.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247181: Total domination number of the n-hypercube graph. -/
opaque A247181 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247181.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247258: The first of four consecutive primes that add up to a fourth power. -/
opaque A247258 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247258.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247339: a(n) is the least number k such that the greatest prime divisor of k^2+1 is the smallest prime divisor of n^2+1. -/
opaque A247339 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247339.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247453: T(n,k) = binomial(n,k)*A000111(n-k)*(-1)^(n-k), 0 <= k <= n. -/
opaque A247453 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247453.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247490: Square array read by antidiagonals: A(k, n) = (-1)^(n+1)* hypergeom([k, -n+1], [], 1) for n>0 and A(k,0) = 0 (n>=0, k>=1). -/
opaque A247490 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247490.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247491: Number of crossing partitions of {1,2,...,n} that contain no singletons. -/
opaque A247491 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247491.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247505: Generalized Lucas numbers: square array A(n,k) read by antidiagonals, A(n,k)=(-1)^(k+1)*k*[x^k](-log((1+sum_{j=1..n}(-1)^(j+1)*x^j)^(-1))), (n>=0, k>=0). -/
opaque A247505 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247505.provenance : SequenceMachineLib.Provenance := .undefined

/-- A247908: Least number k such that e - 2*k/u(2*k) < 1/n^n, where u is defined as in Comments. -/
opaque A247908 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A247908.provenance : SequenceMachineLib.Provenance := .undefined

/-- A248101: Completely multiplicative with a(prime(n)) = prime(n)^((n+1) mod 2). -/
opaque A248101 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A248101.provenance : SequenceMachineLib.Provenance := .undefined

/-- A248201: Numbers n such that n-1, n and n+1 are all squarefree semiprimes. -/
opaque A248201 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A248201.provenance : SequenceMachineLib.Provenance := .undefined

/-- A248333: Number of unit squares enclosed by n lattice points in and along the first quadrant of the coordinate plane starting from (0,0) and moving along each square gnomon starting on the y-axis and ending on the x-axis. -/
opaque A248333 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A248333.provenance : SequenceMachineLib.Provenance := .undefined

/-- A248748: Number of rooted binary trees with n leaves and each internal vertex colored in one of two colors. -/
opaque A248748 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A248748.provenance : SequenceMachineLib.Provenance := .undefined

/-- A249122: a(n) = floor(n / lpf(n^2 + 1)) where lpf(n^2 + 1) is the smallest prime divisor of n^2 + 1. -/
opaque A249122 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A249122.provenance : SequenceMachineLib.Provenance := .undefined

/-- A249244: Numbers k such that A249243(k+1) = A249243(k). -/
opaque A249244 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A249244.provenance : SequenceMachineLib.Provenance := .undefined

/-- A250253: First row of spectral array W(gamma+1). -/
opaque A250253 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A250253.provenance : SequenceMachineLib.Provenance := .undefined

/-- A250259: The number of 4-alternating permutations of [n]. -/
opaque A250259 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A250259.provenance : SequenceMachineLib.Provenance := .undefined

/-- A250261: Number A(n,k) of permutations p of [n] such that p(i) > p(i+1) iff i = 1 + k*m for some m >= 0; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A250261 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A250261.provenance : SequenceMachineLib.Provenance := .undefined

/-- A250265: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 1 (mod 9). -/
opaque A250265 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A250265.provenance : SequenceMachineLib.Provenance := .undefined

/-- A250266: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 1 (mod 10). -/
opaque A250266 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A250266.provenance : SequenceMachineLib.Provenance := .undefined

/-- A250301: First differences of A250300. -/
opaque A250301 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A250301.provenance : SequenceMachineLib.Provenance := .undefined

/-- A252043: a(n) is the concatenation of first n terms of A033307. -/
opaque A252043 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A252043.provenance : SequenceMachineLib.Provenance := .undefined

/-- A252705: The number of ways to color the faces of a regular dodecahedron with n colors, counting mirror images as one. -/
opaque A252705 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A252705.provenance : SequenceMachineLib.Provenance := .undefined

/-- A253165: a(n) = (-1)^n*2^(6*n+3)*(zeta(-2*n-1,1/2) - zeta(-2*n-1,1)), where zeta(a,z) is the generalized Riemann zeta function. -/
opaque A253165 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A253165.provenance : SequenceMachineLib.Provenance := .undefined

/-- A253190: Triangle T(n, m)=Sum_{k=1..(n-m)/2} C(m+k-1, k)*T((n-m)/2, k), T(n,n)=1. -/
opaque A253190 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A253190.provenance : SequenceMachineLib.Provenance := .undefined

/-- A253207: a(n) = number of permutations of (1,2,...,n) producible by an ordered quadruple of distinct transpositions. -/
opaque A253207 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A253207.provenance : SequenceMachineLib.Provenance := .undefined

/-- A253554: a(1) = 1, a(2n) = n, a(2n+1) = A250470(2n+1). -/
opaque A253554 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A253554.provenance : SequenceMachineLib.Provenance := .undefined

/-- A253663: Number of positive solutions to x^2+y^2+z^2 <= n^2. -/
opaque A253663 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A253663.provenance : SequenceMachineLib.Provenance := .undefined

/-- A254730: Triangle read by rows: T(n,k) = A243758(n)/(A243758(k)*A243758(n-k)). -/
opaque A254730 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A254730.provenance : SequenceMachineLib.Provenance := .undefined

/-- A255131: n minus the least number of squares that add up to n: a(n) = n - A002828(n). -/
opaque A255131 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A255131.provenance : SequenceMachineLib.Provenance := .undefined

/-- A255705: Number of 2n+1-node rooted trees in which the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root equals n+1. -/
opaque A255705 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A255705.provenance : SequenceMachineLib.Provenance := .undefined

/-- A255938: Langton's ant walk: number of black cells on the infinite grid after the ant moves n times. -/
opaque A255938 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A255938.provenance : SequenceMachineLib.Provenance := .undefined

/-- A256665: Triangle of Arnold L(b) for Springer numbers. -/
opaque A256665 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A256665.provenance : SequenceMachineLib.Provenance := .undefined

/-- A256679: A signed triangle of V. I. Arnold for the Springer numbers (A001586). -/
opaque A256679 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A256679.provenance : SequenceMachineLib.Provenance := .undefined

/-- A257000: Characteristic function for A206074. -/
opaque A257000 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A257000.provenance : SequenceMachineLib.Provenance := .undefined

/-- A257493: Number A(n,k) of n X n nonnegative integer matrices with all row and column sums equal to k; square array A(n,k), n >= 0, k >= 0, read by antidiagonals. -/
opaque A257493 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A257493.provenance : SequenceMachineLib.Provenance := .undefined

/-- A257639: a(n) is the minimal position at which the maximal value of row n appears in row n of triangle A008289. -/
opaque A257639 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A257639.provenance : SequenceMachineLib.Provenance := .undefined

/-- A257673: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: row n is the inverse binomial transform of the n-th row of array A255961, which has the Euler transform of (j->j*k) in column k. -/
opaque A257673 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A257673.provenance : SequenceMachineLib.Provenance := .undefined

/-- A257935: Numerators of the inverse binomial transform of the Bernoulli numbers with B(1)=1. -/
opaque A257935 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A257935.provenance : SequenceMachineLib.Provenance := .undefined

/-- A258219: A(n,k) is the sum over all Dyck paths of semilength n of products over all peaks p of (x_p+k*y_p)/y_p, where x_p and y_p are the coordinates of peak p; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A258219 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A258219.provenance : SequenceMachineLib.Provenance := .undefined

/-- A258651: A(n,k) = n^(k) = k-th arithmetic derivative of n; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A258651 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A258651.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259117: G.f. A(x) satisfies: A(x)^2 = A( x^2*(1+x)/(1-x) ), with A(0) = 0. -/
opaque A259117 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259117.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259153: Triangle T(n,k) in which n-th row lists in increasing order the values v whose pi-based arithmetic derivative equals n; n>=0, 1<=k<=A259154(n). -/
opaque A259153 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259153.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259356: Triangle T(n,k) read by rows: T(n,k) is the number of closed lambda-terms of size n with size 0 for the variables and k abstractions. -/
opaque A259356 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259356.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259447: Triangle read by rows arising from enumeration of partitions into non-integral powers. -/
opaque A259447 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259447.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259448: Triangle read by rows arising from enumeration of partitions into non-integral powers. -/
opaque A259448 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259448.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259449: Triangle read by rows arising from enumeration of partitions into non-integral powers. -/
opaque A259449 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259449.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259450: Triangle read by rows arising from enumeration of partitions into non-integral powers. -/
opaque A259450 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259450.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259475: Array read by antidiagonals: row n gives coefficients of Taylor series expansion of 1/F_{n+1}(t), where F_i(t) is a Fibonacci polynomial defined by F_0=1, F_1=1, F_{i+1} = F_i-t*F_{i-1}. -/
opaque A259475 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259475.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259491: Expansion of (eta(q)^2 * eta(q^2) * eta(q^4)^3 / eta(q^8)^2)^2 in powers of q. -/
opaque A259491 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259491.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259691: Triangle read by rows: T(n,k) number of arrangements of non-attacking rooks on an n X n right triangular board where the top rook is in row k (n >= 0, 1 <= k <= n+1). -/
opaque A259691 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259691.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259702: Row sums of A259701 except first column. -/
opaque A259702 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259702.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259834: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals n-1. -/
opaque A259834 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259834.provenance : SequenceMachineLib.Provenance := .undefined

/-- A259984: a(n) = A000787(n) + 1. -/
opaque A259984 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A259984.provenance : SequenceMachineLib.Provenance := .undefined

/-- A260460: Expansion of f(-q) in powers of q where f() is a 3rd order mock theta function. -/
opaque A260460 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A260460.provenance : SequenceMachineLib.Provenance := .undefined

/-- A260545: Expansion of phi(-x^6)^2 / (chi(x) * phi(-x)^2) in powers of x where phi(), chi() are Ramanujan theta functions. -/
opaque A260545 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A260545.provenance : SequenceMachineLib.Provenance := .undefined

/-- A260786: Twice the Euler or up/down numbers A000111. -/
opaque A260786 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A260786.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261122: Expansion of f(-x) * f(x^4, x^8)^2 / f(-x^3, -x^9) in powers of x where f(,) is Ramanujan's general theta function. -/
opaque A261122 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261122.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261137: Number of set partitions B'_t(n) of {1,2,...,t} into at most n parts, so that no part contains both 1 and t, or both i and i+1 with 1 <= i < t; triangle B'_t(n), t>=0, 0<=n<=t, read by rows. -/
opaque A261137 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261137.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261197: Cubes of the successive terms of the decimal expansion of Pi. -/
opaque A261197 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261197.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261278: Expansion of eta(q^3)^8 + 4 * eta(q^6)^8 in powers of q. -/
opaque A261278 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261278.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261336: Number of achiral molecules containing two linear or branched chiral alkyl chains of n carbon atoms each. -/
opaque A261336 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261336.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261394: Expansion of phi(q)^4 / phi(q^3) in powers of q where phi() is a Ramanujan theta function. -/
opaque A261394 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261394.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261564: a(1)=2; thereafter a(n) = mpf(1+Product_{k=1..n-1} a(k)), where mpf(n) = f-th prime factor with multiplicity of n, for f=ceiling(bigomega(n)/2). -/
opaque A261564 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261564.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261764: Triangle read by rows: T(n,k) is the number of nilpotent subpermutations on an n-set, each of nilpotency index less than or equal to k. -/
opaque A261764 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261764.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261904: Largest x such that n can be written as n = x^2 + y^2 + z^2 with x >= y >= z >= 0, or -1 if no such x exists. -/
opaque A261904 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261904.provenance : SequenceMachineLib.Provenance := .undefined

/-- A261915: Smallest x such that n can be written as n = x^2 + y^2 + z^2 with x >= y >= z >= 0, or -1 if no such x exists. -/
opaque A261915 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A261915.provenance : SequenceMachineLib.Provenance := .undefined

/-- A262407: a(n) = Sum_{k=0..n-1} C(n,k+1)*C(n,k)*C(n-1,k). -/
opaque A262407 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A262407.provenance : SequenceMachineLib.Provenance := .undefined

/-- A262442: a(n) = Sum_{k=0..n}(binomial(n-1,n-k)*binomial(n+k-1,n-k)). -/
opaque A262442 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A262442.provenance : SequenceMachineLib.Provenance := .undefined

/-- A262508: Numbers that occur only once in A155043; positions of zeros in A262505, ones in A262507. -/
opaque A262508 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A262508.provenance : SequenceMachineLib.Provenance := .undefined

/-- A262678: a(n) = n - A262690(n), where A262690(n) = largest square k <= n such that A002828(n-k) = A002828(n)-1. -/
opaque A262678 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A262678.provenance : SequenceMachineLib.Provenance := .undefined

/-- A262689: a(n) = largest number k <= A000196(n) for which A002828(n-(k^2)) = A002828(n)-1. -/
opaque A262689 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A262689.provenance : SequenceMachineLib.Provenance := .undefined

/-- A262693: Characteristic function for A259934. -/
opaque A262693 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A262693.provenance : SequenceMachineLib.Provenance := .undefined

/-- A263275: One-based row-index to array A263255. -/
opaque A263275 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A263275.provenance : SequenceMachineLib.Provenance := .undefined

/-- A263864: Triangle read by rows: T(n,k) (n>=1, k>=1) is the number of posets with n elements whose Hasse diagram has k connected components. -/
opaque A263864 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A263864.provenance : SequenceMachineLib.Provenance := .undefined

/-- A264428: Triangle read by rows, Bell transform of Bell numbers. -/
opaque A264428 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A264428.provenance : SequenceMachineLib.Provenance := .undefined

/-- A265260: Number of partitions of n into even squares. -/
opaque A265260 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A265260.provenance : SequenceMachineLib.Provenance := .undefined

/-- A266534: Total number of ON cells after n-th stage in a 90-degree sector of the cellular automaton of A151895. -/
opaque A266534 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A266534.provenance : SequenceMachineLib.Provenance := .undefined

/-- A266691: Number of partitions of n with product of multiplicities of parts equal to 8. -/
opaque A266691 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A266691.provenance : SequenceMachineLib.Provenance := .undefined

/-- A266730: Appears to be an erroneous version of A000066. -/
opaque A266730 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A266730.provenance : SequenceMachineLib.Provenance := .undefined

/-- A267295: Circulant Ramsey numbers RC_2(3,n) of the second kind. -/
opaque A267295 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A267295.provenance : SequenceMachineLib.Provenance := .undefined

/-- A267312: Integers n such that n^3 is the sum of 3 nonzero squares. -/
opaque A267312 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A267312.provenance : SequenceMachineLib.Provenance := .undefined

/-- A267987: a(n) = Catalan(n)^2*(4n + 4). -/
opaque A267987 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A267987.provenance : SequenceMachineLib.Provenance := .undefined

/-- A268386: a(n) = A193231(A268387(n)). -/
opaque A268386 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A268386.provenance : SequenceMachineLib.Provenance := .undefined

/-- A268669: a(n) = polynomial quotient (computed over GF(2), result is its binary encoding) that is left after all instances of polynomial (X+1) have been factored out of the polynomial that is encoded by the binary expansion of n. (See comments for details). -/
opaque A268669 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A268669.provenance : SequenceMachineLib.Provenance := .undefined

/-- A269371: Least monotonic left inverse of A179016. -/
opaque A269371 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A269371.provenance : SequenceMachineLib.Provenance := .undefined

/-- A269920: Triangle read by rows: T(n,f) is the number of rooted maps with n edges and f faces on an orientable surface of genus 0. -/
opaque A269920 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A269920.provenance : SequenceMachineLib.Provenance := .undefined

/-- A269939: Triangle read by rows, Ward numbers T(n, k) = Sum_{m=0..k} (-1)^(m + k) * binomial(n + k, n + m) * Stirling2(n + m, m), for n >= 0, 0 <= k <= n. -/
opaque A269939 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A269939.provenance : SequenceMachineLib.Provenance := .undefined

/-- A269940: Triangle read by rows, T(n, k) = Sum_{m=0..k} (-1)^(m + k)*binomial(n + k, n + m) * |Stirling1(n + m, m)|, for n >= 0, 0 <= k <= n. -/
opaque A269940 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A269940.provenance : SequenceMachineLib.Provenance := .undefined

/-- A269948: Triangle read by rows, Stirling set numbers of order 3, T(n,n) = 1, T(n,k) = 0 if kn, otherwise T(n,k) = T(n-1,k-1)+k^3*T(n-1, k), for n>=0 and 0<=k<=n. -/
opaque A269948 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A269948.provenance : SequenceMachineLib.Provenance := .undefined

/-- A270407: Triangle read by rows: T(n,g) is the number of rooted maps with n edges and 3 faces on an orientable surface of genus g. -/
opaque A270407 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A270407.provenance : SequenceMachineLib.Provenance := .undefined

/-- A270753: The least prime q > p for which n = p + q - r for some prime r, where p = A270003(n). -/
opaque A270753 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A270753.provenance : SequenceMachineLib.Provenance := .undefined

/-- A270927: Smallest k such that k*n^m + 1 is prime, case m=4. -/
opaque A270927 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A270927.provenance : SequenceMachineLib.Provenance := .undefined

/-- A271592: Array read by antidiagonals: T(n,m) = number of directed Hamiltonian walks from NW to SW corners on a grid with n rows and m columns. -/
opaque A271592 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A271592.provenance : SequenceMachineLib.Provenance := .undefined

/-- A271878: Triangle T(n,t) read by rows: number of rooted forests with n 2-colored nodes and t rooted trees. -/
opaque A271878 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A271878.provenance : SequenceMachineLib.Provenance := .undefined

/-- A272384: Primes p == 1 (mod 3) for which A261029(22*p) = 2. -/
opaque A272384 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A272384.provenance : SequenceMachineLib.Provenance := .undefined

/-- A272407: Primes p == 1 (mod 3) for which A261029(38*p) = 3. -/
opaque A272407 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A272407.provenance : SequenceMachineLib.Provenance := .undefined

/-- A273859: The successive numbers of integers visible between two primes are given by the sequence itself. -/
opaque A273859 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A273859.provenance : SequenceMachineLib.Provenance := .undefined

/-- A274017: Number of n-bead binary necklaces (no turning over allowed) that avoid the subsequence 110. -/
opaque A274017 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A274017.provenance : SequenceMachineLib.Provenance := .undefined

/-- A274759: Modified quadranacci series. -/
opaque A274759 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A274759.provenance : SequenceMachineLib.Provenance := .undefined

/-- A274887: Triangle read by rows: coefficients of the q-factorial. -/
opaque A274887 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A274887.provenance : SequenceMachineLib.Provenance := .undefined

/-- A274935: Number of n-node unlabeled forests with two connected components. -/
opaque A274935 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A274935.provenance : SequenceMachineLib.Provenance := .undefined

/-- A274936: Number of n-node unlabeled forests that have 2 non-isomorphic components. -/
opaque A274936 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A274936.provenance : SequenceMachineLib.Provenance := .undefined

/-- A274937: Number of unlabeled forests on n nodes that have exactly two nonempty components. -/
opaque A274937 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A274937.provenance : SequenceMachineLib.Provenance := .undefined

/-- A274950: Trajectory of 0 under the morphism 0 -> 0001101, 1 -> 0011001. -/
opaque A274950 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A274950.provenance : SequenceMachineLib.Provenance := .undefined

/-- A275012: Number of nonzero coefficients in the polynomial factor of the expression counting binomial coefficients with 2-adic valuation n. -/
opaque A275012 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A275012.provenance : SequenceMachineLib.Provenance := .undefined

/-- A275281: Number T(n,k) of set partitions of [n] with symmetric block size list of length k; triangle T(n,k), n>=0, 0<=k<=n, read by rows. -/
opaque A275281 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A275281.provenance : SequenceMachineLib.Provenance := .undefined

/-- A275521: Number of (n+floor(n/2))-block bicoverings of an n-set. -/
opaque A275521 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A275521.provenance : SequenceMachineLib.Provenance := .undefined

/-- A275607: a(n) = 2*12^n*Gamma(n+1/2)*(n+1)/(sqrt(Pi)*Gamma(n+3)). -/
opaque A275607 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A275607.provenance : SequenceMachineLib.Provenance := .undefined

/-- A275780: Number of set partitions of [n] into blocks with distinct element sums. -/
opaque A275780 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A275780.provenance : SequenceMachineLib.Provenance := .undefined

/-- A276086: Primorial base exp-function: digits in primorial base representation of n become the exponents of successive prime factors whose product a(n) is. -/
opaque A276086 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A276086.provenance : SequenceMachineLib.Provenance := .undefined

/-- A276581: After a(0)=0, each n occurs A261224(n) times. -/
opaque A276581 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A276581.provenance : SequenceMachineLib.Provenance := .undefined

/-- A276633: a(n) = smallest integer not yet in the sequence with no digits in common with a(n-1) and a(n-2); a(0)=0, a(1)=1. -/
opaque A276633 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A276633.provenance : SequenceMachineLib.Provenance := .undefined

/-- A276875: Sums-complement of the Beatty sequence for e. -/
opaque A276875 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A276875.provenance : SequenceMachineLib.Provenance := .undefined

/-- A277609: Fourth column of Euler's difference table in A068106. It is 6 times the sequence A000261. -/
opaque A277609 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A277609.provenance : SequenceMachineLib.Provenance := .undefined

/-- A277963: G.f.: 1/(1+x) * Product_{k>=1} 1/(1-x^k)^k. -/
opaque A277963 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A277963.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278482: Square array A(n,k): A(0, n) = n; A(k, n) = A(k-1, floor(n*(k+1)/k)), for k >= 1, read by descending antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ... -/
opaque A278482 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278482.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278484: Main diagonal of A278482. -/
opaque A278484 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278484.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278492: Square array where row n (n >= 0) gives the numbers remaining after the n-th round of the Flavius sieve, read by descending antidiagonals. -/
opaque A278492 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278492.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278503: Transpose of square array A278505. -/
opaque A278503 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278503.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278505: Square array constructed from Flavius sieve: Each row n (n >= 1) starts with A000960(n), followed by all numbers removed at the stage n of the sieve. -/
opaque A278505 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278505.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278506: Inverse permutation to A278505. -/
opaque A278506 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278506.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278529: a(n) = one-based position in the round in which n is removed in the Flavius sieve, 0 if n is never removed (when n is one of the terms of A000960). -/
opaque A278529 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278529.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278539: a(n) = index of the column where n is located in array A278505. -/
opaque A278539 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278539.provenance : SequenceMachineLib.Provenance := .undefined

/-- A278668: Expansion of Product_{n>=1} (1 - x^(5*n))/(1 - x^n)^3 in powers of x. -/
opaque A278668 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A278668.provenance : SequenceMachineLib.Provenance := .undefined

/-- A279199: Number of reducible ways to split 1, 2, 3, ..., 3n into n arithmetic progressions each with 3 terms: a(n) = A104429(n) - A202705(n). -/
opaque A279199 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A279199.provenance : SequenceMachineLib.Provenance := .undefined

/-- A279551: Number of length n inversion sequences avoiding the patterns 000, 010, 110, and 120. -/
opaque A279551 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A279551.provenance : SequenceMachineLib.Provenance := .undefined

/-- A280328: Expansion of f(-x)^3 * f(-x^2) * chi(-x^3)^3 in powers of x where chi(), f() are Ramanujan theta functions. -/
opaque A280328 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A280328.provenance : SequenceMachineLib.Provenance := .undefined

/-- A280384: Expansion of f(x)^3 * f(-x^2) * chi(x^3)^3 in powers of x where chi(), f() are Ramanujan theta functions. -/
opaque A280384 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A280384.provenance : SequenceMachineLib.Provenance := .undefined

/-- A280864: Lexicographically earliest infinite sequence of distinct positive terms such that, for any prime p, any run of consecutive multiples of p has length exactly 2. -/
opaque A280864 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A280864.provenance : SequenceMachineLib.Provenance := .undefined

/-- A280996: Prime Matula-Goebel numbers of generalized Bethe trees. -/
opaque A280996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A280996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A281357: G.f.: (Product_{j>=1} 1/(1-q^j)^2 + Product_{j>=1} 1/(1-q^(2*j)))/2. -/
opaque A281357 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A281357.provenance : SequenceMachineLib.Provenance := .undefined

/-- A282077: Number of 9-element subsets of [n+9] having an even sum. -/
opaque A282077 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A282077.provenance : SequenceMachineLib.Provenance := .undefined

/-- A282083: Number of n-element subsets of [n+7] having an even sum. -/
opaque A282083 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A282083.provenance : SequenceMachineLib.Provenance := .undefined

/-- A282192: Number of ways of writing n as a sum of a prime and a squarefree semiprime. -/
opaque A282192 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A282192.provenance : SequenceMachineLib.Provenance := .undefined

/-- A282503: Denominator of Sum_{i = 1..n} (if(isprime(i), 0, 1/i)). -/
opaque A282503 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A282503.provenance : SequenceMachineLib.Provenance := .undefined

/-- A282544: Expansion of (phi(x)^4 + 3*phi(x^3)^4) / 4 in powers of x where phi() is a Ramanujan theta function. -/
opaque A282544 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A282544.provenance : SequenceMachineLib.Provenance := .undefined

/-- A282892: The difference between the number of partitions of n into odd parts (A000009) and the number of partitions of n into even parts (A035363). -/
opaque A282892 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A282892.provenance : SequenceMachineLib.Provenance := .undefined

/-- A283108: Number of fixed polyominoes minus number of free polyominoes for order n. -/
opaque A283108 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A283108.provenance : SequenceMachineLib.Provenance := .undefined

/-- A283109: Increase in the number of free polyominoes from order n to n+1. -/
opaque A283109 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A283109.provenance : SequenceMachineLib.Provenance := .undefined

/-- A283273: Number of ways to write n as x^2 + y^2 + z^2 with x,y integers and z a nonnegative integer such that x + 2*y + 3*z is a square or twice a square. -/
opaque A283273 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A283273.provenance : SequenceMachineLib.Provenance := .undefined

/-- A283477: If 2n = 2^e1 + 2^e2 + ... + 2^ek [e1 .. ek distinct], then a(n) = A002110(e1) * A002110(e2) * ... * A002110(ek). -/
opaque A283477 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A283477.provenance : SequenceMachineLib.Provenance := .undefined

/-- A284076: Number of 2Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements. -/
opaque A284076 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A284076.provenance : SequenceMachineLib.Provenance := .undefined

/-- A284345: Number of partitions of n into squares dividing n. -/
opaque A284345 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A284345.provenance : SequenceMachineLib.Provenance := .undefined

/-- A284553: Prime factorization representation of Stern polynomials B(n,x) with only the even powers of x present: a(n) = A247503(A260443(n)). -/
opaque A284553 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A284553.provenance : SequenceMachineLib.Provenance := .undefined

/-- A285109: a(n) = n multiplied by its smallest prime factor; a(1) = 1. -/
opaque A285109 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A285109.provenance : SequenceMachineLib.Provenance := .undefined

/-- A285407: G.f.: 1/(1 - x^2/(1 - x^3/(1 - x^5/(1 - x^7/(1 - x^11/(1 - ... - x^prime(k)/(1 - ... ))))))), a continued fraction. -/
opaque A285407 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A285407.provenance : SequenceMachineLib.Provenance := .undefined

/-- A285942: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood. -/
opaque A285942 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A285942.provenance : SequenceMachineLib.Provenance := .undefined

/-- A285944: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood. -/
opaque A285944 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A285944.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286346: Expansion of eta(q)^24 / eta(q^2)^12 in powers of q. -/
opaque A286346 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286346.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286354: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - x^j)^k. -/
opaque A286354 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286354.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286361: Least number with the same prime signature as {the largest divisor of n with only prime factors of the form 4k+1} has: a(n) = A046523(A170818(n)). -/
opaque A286361 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286361.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286368: a(n) = 4*A072401(n) + 2*A229062(n) + A010052(n). -/
opaque A286368 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286368.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286567: Smallest prime factor of the n-th Jacobsthal number: a(n) = A020639(A001045(n)), with a(1)=a(2)=1. -/
opaque A286567 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286567.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286636: Even numbers that are a sum of two squares plus 1. -/
opaque A286636 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286636.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286781: Triangle T(n,k) read by rows: coefficients of polynomials P_n(t) defined in Formula section. -/
opaque A286781 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286781.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286782: Triangle T(n,k) read by rows: coefficients of polynomials P_n(t) defined in Formula section. -/
opaque A286782 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286782.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286783: Triangle T(n,k) read by rows: coefficients of polynomials P_n(t) defined in Formula section. -/
opaque A286783 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286783.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286796: Triangle T(n,k) read by rows: coefficients of polynomials P_n(t) defined in Formula section. -/
opaque A286796 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286796.provenance : SequenceMachineLib.Provenance := .undefined

/-- A286815: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of (Product_{j>=1} (1 - x^(2*j))^5/((1 - x^j)*(1 - x^(4*j)))^2)^k. -/
opaque A286815 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A286815.provenance : SequenceMachineLib.Provenance := .undefined

/-- A287038: Column 8 of A286782. -/
opaque A287038 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A287038.provenance : SequenceMachineLib.Provenance := .undefined

/-- A287039: Row sums of A286782. -/
opaque A287039 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A287039.provenance : SequenceMachineLib.Provenance := .undefined

/-- A287383: Triangle read by rows: T(n,m) is the number of inequivalent n X m matrices under action of the Klein group, with one-ninth each of 1's, 2's, 3's, 4's, 5's, 6's, 7's, 8's and 9's (ordered occurrences rounded up/down if n*m != 0 mod 9). -/
opaque A287383 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A287383.provenance : SequenceMachineLib.Provenance := .undefined

/-- A287729: The c-fusc function c(n) = a(n): a(1)=1, a(2n) = s(n), a(2n+1) = s(n)+s(n+1), where s(n) = A287730(n). -/
opaque A287729 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A287729.provenance : SequenceMachineLib.Provenance := .undefined

/-- A287730: The s-fusc function s(n) = a(n): a(1) = 0, a(2n) = A287729(n), a(2n+1) = A287729(n) + A287729(n+1). -/
opaque A287730 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A287730.provenance : SequenceMachineLib.Provenance := .undefined

/-- A288113: Number of Dyck paths of semilength n such that each level has exactly six peaks or no peaks. -/
opaque A288113 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A288113.provenance : SequenceMachineLib.Provenance := .undefined

/-- A288146: Number of Dyck paths of semilength n such that the number of peaks is weakly increasing from lower to higher levels and no positive level is peakless. -/
opaque A288146 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A288146.provenance : SequenceMachineLib.Provenance := .undefined

/-- A288578: q-Expansion of wedge character chi^(2)(q). -/
opaque A288578 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A288578.provenance : SequenceMachineLib.Provenance := .undefined

/-- A289158: Number of unlabeled connected loopless multigraphs with n nodes of degree 4 or less and with at most double edges. -/
opaque A289158 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A289158.provenance : SequenceMachineLib.Provenance := .undefined

/-- A289192: A(n,k) = n! * Laguerre(n,-k); square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A289192 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A289192.provenance : SequenceMachineLib.Provenance := .undefined

/-- A289501: Number of enriched p-trees of weight n. -/
opaque A289501 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A289501.provenance : SequenceMachineLib.Provenance := .undefined

/-- A290416: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood. -/
opaque A290416 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A290416.provenance : SequenceMachineLib.Provenance := .undefined

/-- A290420: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood. -/
opaque A290420 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A290420.provenance : SequenceMachineLib.Provenance := .undefined

/-- A290671: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood. -/
opaque A290671 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A290671.provenance : SequenceMachineLib.Provenance := .undefined

/-- A290676: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood. -/
opaque A290676 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A290676.provenance : SequenceMachineLib.Provenance := .undefined

/-- A290870: a(n) is the number of ways to represent n as n = x*y + y*z + z*x where 0 < x < y < z. -/
opaque A290870 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A290870.provenance : SequenceMachineLib.Provenance := .undefined

/-- A291336: Number F(n,h,t) of forests of t unlabeled rooted trees with n vertices such that h is the maximum of 0 and the tree heights; triangle of triangles F(n,h,t), n>=0, h=0..n, t=0..n-h, read by layers, then by rows. -/
opaque A291336 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A291336.provenance : SequenceMachineLib.Provenance := .undefined

/-- A291553: Column 3 of A060244. -/
opaque A291553 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A291553.provenance : SequenceMachineLib.Provenance := .undefined

/-- A292505: Number of complete orderless tree-factorizations of n >= 2. -/
opaque A292505 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A292505.provenance : SequenceMachineLib.Provenance := .undefined

/-- A292556: Number of rooted unlabeled trees on n nodes where each node has at most 11 children. -/
opaque A292556 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A292556.provenance : SequenceMachineLib.Provenance := .undefined

/-- A292577: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} 1/(1 + Sum_{j=1..k} (-1)^j*j*x^(j*i))^2. -/
opaque A292577 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A292577.provenance : SequenceMachineLib.Provenance := .undefined

/-- A292781: Triangle read by rows: T(n,k) = T(n-k,k-1) with T(0,0) = 1 and T(n,0) = -1/n * Sum_{k=1..A003056(n)} (-1)^k * (2*k+1) * (n+1-A060544(k+1)) * T(n,k). -/
opaque A292781 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A292781.provenance : SequenceMachineLib.Provenance := .undefined

/-- A292796: Number of sets of nonempty words with a total of n letters over n-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter. -/
opaque A292796 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A292796.provenance : SequenceMachineLib.Provenance := .undefined

/-- A292861: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(k*(1 - exp(x))). -/
opaque A292861 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A292861.provenance : SequenceMachineLib.Provenance := .undefined

/-- A292935: Expansion of e.g.f.: exp(exp(-x) - 1). -/
opaque A292935 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A292935.provenance : SequenceMachineLib.Provenance := .undefined

/-- A292975: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(k*x)*(sec(x) + tan(x)). -/
opaque A292975 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A292975.provenance : SequenceMachineLib.Provenance := .undefined

/-- A293051: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(Sum_{i=0..k} x^i/i! - exp(x)). -/
opaque A293051 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A293051.provenance : SequenceMachineLib.Provenance := .undefined

/-- A293053: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. Product_{i>k} exp(x^i). -/
opaque A293053 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A293053.provenance : SequenceMachineLib.Provenance := .undefined

/-- A293551: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of exp(Sum_{j>=1} x^j/(j*(1 - x^j)^k)). -/
opaque A293551 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A293551.provenance : SequenceMachineLib.Provenance := .undefined

/-- A293754: Numbers k such that c(k,0) < c(k,1), where c(k,d) = number of d's in the first k digits of the base-2 expansion of phi (the golden ratio, (1+sqrt(5))/2). -/
opaque A293754 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A293754.provenance : SequenceMachineLib.Provenance := .undefined

/-- A293808: Number T(n,k) of multisets of exactly k nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; triangle T(n,k), n>=0, 0<=k<=n, read by rows. -/
opaque A293808 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A293808.provenance : SequenceMachineLib.Provenance := .undefined

/-- A293995: Number of linear chord diagrams having n chords and no chord length larger than three. -/
opaque A293995 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A293995.provenance : SequenceMachineLib.Provenance := .undefined

/-- A294203: Number of partitions of n into distinct Lucas parts (A000204) greater than 1. -/
opaque A294203 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A294203.provenance : SequenceMachineLib.Provenance := .undefined

/-- A294932: Multiplicative with a(p^e) = A019565(A289814(e)). -/
opaque A294932 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A294932.provenance : SequenceMachineLib.Provenance := .undefined

/-- A295260: Array read by antidiagonals: T(n,k) = number of nonequivalent dissections of a polygon into n k-gons by nonintersecting diagonals up to rotation and reflection (k >= 3). -/
opaque A295260 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A295260.provenance : SequenceMachineLib.Provenance := .undefined

/-- A295341: The number of partitions of n in which at least one part is a multiple of 3. -/
opaque A295341 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A295341.provenance : SequenceMachineLib.Provenance := .undefined

/-- A295342: The number of partitions of n in which at least one part is a multiple of 4. -/
opaque A295342 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A295342.provenance : SequenceMachineLib.Provenance := .undefined

/-- A295634: Triangle read by rows: T(n,k) = number of nonequivalent dissections of an n-gon into k polygons by nonintersecting diagonals up to rotation and reflection. -/
opaque A295634 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A295634.provenance : SequenceMachineLib.Provenance := .undefined

/-- A297420: Square of the number of groups of order n. -/
opaque A297420 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A297420.provenance : SequenceMachineLib.Provenance := .undefined

/-- A298269: Number of partitions of the n-th tetrahedral number into tetrahedral numbers. -/
opaque A298269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A298269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A298596: Expansion of Product_{k>=2} 1/(1 + x^k). -/
opaque A298596 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A298596.provenance : SequenceMachineLib.Provenance := .undefined

/-- A298603: Number of partitions of n into odd prime parts (including 1). -/
opaque A298603 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A298603.provenance : SequenceMachineLib.Provenance := .undefined

/-- A299010: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero. -/
opaque A299010 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A299010.provenance : SequenceMachineLib.Provenance := .undefined

/-- A299038: Number A(n,k) of rooted trees with n nodes where each node has at most k children; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A299038 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A299038.provenance : SequenceMachineLib.Provenance := .undefined

/-- A299757: Weight of the strict integer partition with FDH number n. -/
opaque A299757 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A299757.provenance : SequenceMachineLib.Provenance := .undefined

/-- A299779: Triangle read by rows: T(n,k) is the total number of cliques of size k in all partitions of all positive integers <= n. -/
opaque A299779 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A299779.provenance : SequenceMachineLib.Provenance := .undefined

/-- A300921: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero. -/
opaque A300921 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A300921.provenance : SequenceMachineLib.Provenance := .undefined

/-- A300931: a(n) is the number of Klein four orbits of permutations generated by the operations of inverse permutation and conjugation by w_0 = [n, n-1, ..., 1]. -/
opaque A300931 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A300931.provenance : SequenceMachineLib.Provenance := .undefined

/-- A301308: G.f.: Sum_{n>=0} x^n * ( (1+x)^n + (1-x)^n )^n / 2^n. -/
opaque A301308 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A301308.provenance : SequenceMachineLib.Provenance := .undefined

/-- A301368: Regular triangle where T(n,k) is the number of binary enriched p-trees of weight n with k leaves. -/
opaque A301368 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A301368.provenance : SequenceMachineLib.Provenance := .undefined

/-- A301467: Number of enriched r-trees of size n with no empty subtrees. -/
opaque A301467 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A301467.provenance : SequenceMachineLib.Provenance := .undefined

/-- A301969: Number of 7Xn 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero. -/
opaque A301969 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A301969.provenance : SequenceMachineLib.Provenance := .undefined

/-- A302025: Permutation of natural numbers mapping ordinary factorization to "Ludic factorization": a(1) = 1, a(2n) = 2*a(n), a(A003961(n)) = A269379(a(n)). -/
opaque A302025 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A302025.provenance : SequenceMachineLib.Provenance := .undefined

/-- A302029: Inverse permutation of A207901: a(n) = A006068(A052331(n)). -/
opaque A302029 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A302029.provenance : SequenceMachineLib.Provenance := .undefined

/-- A302034: A028234 analog for a factorization process based on the Ludic sieve (A255127); Discard all instances of the (smallest) Ludic factor A272565(n) from n. -/
opaque A302034 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A302034.provenance : SequenceMachineLib.Provenance := .undefined

/-- A302044: A028234 analog for factorization process based on the sieve of Eratosthenes (A083221). -/
opaque A302044 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A302044.provenance : SequenceMachineLib.Provenance := .undefined

/-- A302093: a(n) = floor(C(n/2)*C(n/2+1)), where C = Catalan numbers (A000108). -/
opaque A302093 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A302093.provenance : SequenceMachineLib.Provenance := .undefined

/-- A302287: G.f. A(x) satisfies: A(x) = Product_{k>=1} (1 + x^k*A(x))^k. -/
opaque A302287 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A302287.provenance : SequenceMachineLib.Provenance := .undefined

/-- A302359: Numbers that are the sum of 3 squares > 1. -/
opaque A302359 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A302359.provenance : SequenceMachineLib.Provenance := .undefined

/-- A303280: Number of strict integer partitions of n whose parts have a common divisor other than 1. -/
opaque A303280 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A303280.provenance : SequenceMachineLib.Provenance := .undefined

/-- A303608: Repunit pseudoprimes: composite numbers k such that (10^k - 1)/9 == 1 (mod k). -/
opaque A303608 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A303608.provenance : SequenceMachineLib.Provenance := .undefined

/-- A303763: Permutation of nonnegative integers: a(0) = 0 and for n > 0, a(n) = the least k for which bitor(k,a(n-1)) = a(n-1) and k is not already present, and otherwise, if no such k exists, the least number not already present that can be obtained by cumulatively filling the successive vacant bits of a(n-1) from its least significant end (by toggling 0's to 1's, possibly also one or more leading zeros). -/
opaque A303763 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A303763.provenance : SequenceMachineLib.Provenance := .undefined

/-- A303903: Expansion of (1 - x^2)*Product_{k>=3} (1 + x^Fibonacci(k)). -/
opaque A303903 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A303903.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304042: Triangle read by rows: T(n,k) is the denominator of R(n,k) defined implicitly by the identity Sum_{i=0..l-1} Sum_{j=0..m} R(m,j)*(l-i)^j*i^j = l^(2*m+1) holding for all l,m >= 0. -/
opaque A304042 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304042.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304233: If n = Product (p_j^k_j) then a(n) = min{p_j^k_j}*max{p_j^k_j}. -/
opaque A304233 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304233.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304311: Triangle T(n,k) read by rows: number of bicolored connected graphs with n nodes and k nodes of the first color. -/
opaque A304311 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304311.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304435: Numbers n such that n^5 is the sum of two distinct perfect powers > 1 (x^k + y^m; x, y, k, m >= 2). -/
opaque A304435 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304435.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304489: Triangle read by rows: T(n,k) = number of rooted signed trees with n nodes and k positive edges (0 <= k < n). -/
opaque A304489 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304489.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304620: Expansion of (1/(1 - x)) * Sum_{k>=0} x^(2*k) / Product_{j=1..2*k} (1 - x^j). -/
opaque A304620 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304620.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304710: Number of partitions of 2n whose Ferrers-Young diagram cannot be tiled with dominoes. -/
opaque A304710 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304710.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304867: Number of non-isomorphic hypertrees of weight n. -/
opaque A304867 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304867.provenance : SequenceMachineLib.Provenance := .undefined

/-- A304972: Triangle read by rows of achiral color patterns (set partitions) for a row or loop of length n. T(n,k) is the number using exactly k colors (sets). -/
opaque A304972 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A304972.provenance : SequenceMachineLib.Provenance := .undefined

/-- A305626: Number of chiral pairs of rows of n colors with exactly 6 different colors. -/
opaque A305626 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A305626.provenance : SequenceMachineLib.Provenance := .undefined

/-- A306098: Number of equivalence classes, modulo transposition, of non-symmetric plane partitions of n. -/
opaque A306098 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A306098.provenance : SequenceMachineLib.Provenance := .undefined

/-- A306145: Expansion of (1/(1 - x)) * Sum_{k>=0} x^(2*k+1) / Product_{j=1..2*k+1} (1 - x^j). -/
opaque A306145 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A306145.provenance : SequenceMachineLib.Provenance := .undefined

/-- A306347: Expansion of e.g.f. exp((sin(x) + sinh(x))/2). -/
opaque A306347 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A306347.provenance : SequenceMachineLib.Provenance := .undefined

/-- A306355: Numbers k such that the period of 1/k, or 0 if 1/k terminates, is strictly greater than the period of the decimal expansion of 1/m for all m < k. -/
opaque A306355 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A306355.provenance : SequenceMachineLib.Provenance := .undefined

/-- A306433: Number of partitions of n into 2 distinct prime powers (not including 1). -/
opaque A306433 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A306433.provenance : SequenceMachineLib.Provenance := .undefined

/-- A306556: Integers that appear as (unreduced) numerators of segment endpoints when a ternary Cantor set is created. -/
opaque A306556 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A306556.provenance : SequenceMachineLib.Provenance := .undefined

/-- A306718: Numbers not of the form x^2+y^2+14*z^2. -/
opaque A306718 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A306718.provenance : SequenceMachineLib.Provenance := .undefined

/-- A307047: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. 1/((1+x)^k-x^k). -/
opaque A307047 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A307047.provenance : SequenceMachineLib.Provenance := .undefined

/-- A307074: a(n) is the smallest k such that A307092(k) = n. -/
opaque A307074 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A307074.provenance : SequenceMachineLib.Provenance := .undefined

/-- A307148: Number of binary partitions of n in which exactly one of the powers of 2 is used an odd number of times. -/
opaque A307148 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A307148.provenance : SequenceMachineLib.Provenance := .undefined

/-- A307510: a(n) is the greatest product i*j*k*l where i^2 + j^2 + k^2 + l^2 = n and 0 <= i <= j <= k <= l. -/
opaque A307510 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A307510.provenance : SequenceMachineLib.Provenance := .undefined

/-- A307855: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 1/sqrt(1 - 2*x + (1-4*k)*x^2). -/
opaque A307855 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A307855.provenance : SequenceMachineLib.Provenance := .undefined

/-- A308492: Expansion of Sum_{i>=1} mu(i) * x^i * Product_{j>=1} (1 - x^(i*j))^24. -/
opaque A308492 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A308492.provenance : SequenceMachineLib.Provenance := .undefined

/-- A308520: Expansion of e.g.f. exp(x)*(1 + x + x^2/2)*(sec(x) + tan(x)). -/
opaque A308520 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A308520.provenance : SequenceMachineLib.Provenance := .undefined

/-- A308973: Langton's ant on a truncated square tiling: number of black cells after n moves of the ant when starting on an octagon and looking towards an edge where the tile meets another octagon. -/
opaque A308973 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A308973.provenance : SequenceMachineLib.Provenance := .undefined

/-- A309064: Langton's ant on a snub square tiling: number of black cells after n moves of the ant when starting on a square. -/
opaque A309064 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A309064.provenance : SequenceMachineLib.Provenance := .undefined

/-- A309166: Langton's ant on a truncated hexagonal tiling: number of black cells after n moves of the ant when starting on a dodecagon and looking towards an edge where the dodecagon meets a triangle. -/
opaque A309166 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A309166.provenance : SequenceMachineLib.Provenance := .undefined

/-- A309228: a(n) is the greatest possible height of a binary tree where all nodes hold positive squares and all interior nodes also equal the sum of their two children and the root node has value n^2. -/
opaque A309228 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A309228.provenance : SequenceMachineLib.Provenance := .undefined

/-- A309267: Expansion of (1 + x) * Product_{k>=1} 1/(1 - x^k)^k. -/
opaque A309267 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A309267.provenance : SequenceMachineLib.Provenance := .undefined

/-- A309858: Number A(n,k) of k-uniform hypergraphs on n unlabeled nodes; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A309858 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A309858.provenance : SequenceMachineLib.Provenance := .undefined

/-- A309861: Number of 7-uniform hypergraphs on n unlabeled nodes. -/
opaque A309861 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A309861.provenance : SequenceMachineLib.Provenance := .undefined

/-- A309862: Number of 8-uniform hypergraphs on n unlabeled nodes. -/
opaque A309862 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A309862.provenance : SequenceMachineLib.Provenance := .undefined

/-- A314994: Coordination sequence Gal.6.547.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings. -/
opaque A314994 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A314994.provenance : SequenceMachineLib.Provenance := .undefined

/-- A315087: Coordination sequence Gal.6.542.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings. -/
opaque A315087 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A315087.provenance : SequenceMachineLib.Provenance := .undefined

/-- A315854: Coordination sequence Gal.6.456.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings. -/
opaque A315854 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A315854.provenance : SequenceMachineLib.Provenance := .undefined

/-- A315969: Coordination sequence Gal.6.472.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings. -/
opaque A315969 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A315969.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316074: Sequence a_k of column k shifts left k places under Weigh transform and equals signum(n) for n=1, 1<=k<=n, read by rows. -/
opaque A316074 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316074.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316093: Non-isomorphic colorings of the cube under rotations, using at most N colors on the faces and M colors on the vertices. Square array H(N,M) with N,M > 0 read by antidiagonals. -/
opaque A316093 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316093.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316434: a(n) = a(pi(n)) + a(n-pi(n)) with a(1) = a(2) = 1. -/
opaque A316434 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316434.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316441: a(n) = Sum (-1)^k where the sum is over all factorizations of n into factors > 1 and k is the number of factors. -/
opaque A316441 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316441.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316660: Number of n-bit binary necklaces (unmarked cyclic n-bit binary strings) containing no runs of length > 2. -/
opaque A316660 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316660.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316694: Number of lone-child-avoiding locally disjoint rooted identity trees whose leaves form an integer partition of n. -/
opaque A316694 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316694.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316789: Number of same-tree-factorizations of n. -/
opaque A316789 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316789.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316861: a(n) = Sum_{p in P} y(1)*y(2), where P is the set of partitions of n, and y(k) is the number of parts with multiplicity at least k in p. -/
opaque A316861 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316861.provenance : SequenceMachineLib.Provenance := .undefined

/-- A316996: Consider a partition of n into distinct parts with the summands written in binary notation. a(n) is the number of such partitions whose binary representation has an odd number of binary ones. -/
opaque A316996 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A316996.provenance : SequenceMachineLib.Provenance := .undefined

/-- A317239: Number of partitions of n into distinct parts with an even sum of Hamming weights. -/
opaque A317239 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A317239.provenance : SequenceMachineLib.Provenance := .undefined

/-- A317243: a(n) is the number of open intervals (m, m+1) containing at least one fraction n/k, where m and k are integers between 1 and n. -/
opaque A317243 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A317243.provenance : SequenceMachineLib.Provenance := .undefined

/-- A317794: Number of non-isomorphic set-systems on n vertices with no singletons. -/
opaque A317794 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A317794.provenance : SequenceMachineLib.Provenance := .undefined

/-- A317795: Number of non-isomorphic set-systems spanning n vertices with no singletons. -/
opaque A317795 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A317795.provenance : SequenceMachineLib.Provenance := .undefined

/-- A318130: Number of sets of subsets of {1,...,n} with intersection {}. -/
opaque A318130 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A318130.provenance : SequenceMachineLib.Provenance := .undefined

/-- A318590: Number of connected balanced simple signed graphs on n unlabeled nodes. -/
opaque A318590 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A318590.provenance : SequenceMachineLib.Provenance := .undefined

/-- A318622: Number of irreducible factors in the factorization of the n-th cyclotomic polynomial over GF(2) (counted with multiplicity). -/
opaque A318622 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A318622.provenance : SequenceMachineLib.Provenance := .undefined

/-- A318753: Number A(n,k) of rooted trees with n nodes such that no more than k subtrees extending from the same node have the same number of nodes; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A318753 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A318753.provenance : SequenceMachineLib.Provenance := .undefined

/-- A318754: Number T(n,k) of rooted trees with n nodes such that k equals the maximal number of subtrees extending from the same node and having the same number of nodes; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows. -/
opaque A318754 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A318754.provenance : SequenceMachineLib.Provenance := .undefined

/-- A318758: Number T(n,k) of rooted trees with n nodes such that k equals the maximal number of isomorphic subtrees extending from the same node; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows. -/
opaque A318758 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A318758.provenance : SequenceMachineLib.Provenance := .undefined

/-- A318799: Number of rooted trees with n nodes such that no more than five subtrees of the same size extend from the same node. -/
opaque A318799 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A318799.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319083: Coefficients of polynomials related to the D'Arcais polynomials and Dedekind's eta(q) function, triangle read by rows, T(n,k) for 0 <= k <= n. -/
opaque A319083 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319083.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319171: Square array, read by antidiagonals, upwards: T(n,k) is the number of groups of order prime(k+1)^n. -/
opaque A319171 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319171.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319284: The profiles of the backtrack tree for the n queens problem, triangle read by rows. -/
opaque A319284 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319284.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319307: Expansion of theta_4(q)^16 in powers of q = exp(Pi i t). -/
opaque A319307 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319307.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319309: Expansion of theta_4(q)^24 in powers of q = exp(Pi i t). -/
opaque A319309 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319309.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319553: Expansion of 1/theta_4(q)^8 in powers of q = exp(Pi i t). -/
opaque A319553 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319553.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319558: The squarefree dual of a multiset partition has, for each vertex, one block consisting of the indices (or positions) of the blocks containing that vertex, counted without multiplicity. Then a(n) is the number of non-isomorphic multiset partitions of weight n whose squarefree dual is strict (no repeated blocks). -/
opaque A319558 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319558.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319560: Number of non-isomorphic strict T_0 multiset partitions of weight n. -/
opaque A319560 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319560.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319564: Number of T_0 integer partitions of n. -/
opaque A319564 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319564.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319574: A(n, k) = [x^k] JacobiTheta3(x)^n, square array read by descending antidiagonals, A(n, k) for n >= 0 and k >= 0. -/
opaque A319574 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319574.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319618: Number of non-isomorphic weight-n antichains of multisets whose dual is a chain of multisets. -/
opaque A319618 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319618.provenance : SequenceMachineLib.Provenance := .undefined

/-- A319925: Number of integer partitions with no 1's whose parts can be combined together using additions and multiplications to obtain n. -/
opaque A319925 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A319925.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320032: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of the e.g.f. exp(-x)/(1 - k*x). -/
opaque A320032 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320032.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320045: Smallest k such that (Z/kZ)* is isomorphic to (Z/nZ)*. -/
opaque A320045 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320045.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320268: Number of unlabeled series-reduced rooted trees with n nodes where the non-leaf branches directly under any given node are all equal. -/
opaque A320268 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320268.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320313: Number of ways to write n as the sum of 4 positive integers a, b, c, d such that d < b and a/b - c/d = (a - c)/(b - d). -/
opaque A320313 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320313.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320328: Number of square multiset partitions of integer partitions of n. -/
opaque A320328 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320328.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320352: Expansion of e.g.f. (exp(x) - 1)/(exp(x) - exp(2*x) + 1). -/
opaque A320352 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320352.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320540: (1/4) * number of ways to select 3 distinct collinear points from a square of grid points with side length n. -/
opaque A320540 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320540.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320797: Number of non-isomorphic self-dual multiset partitions of weight n with no singletons. -/
opaque A320797 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320797.provenance : SequenceMachineLib.Provenance := .undefined

/-- A320835: a(n) = Sum (-1)^k where the sum is over all multiset partitions of a multiset whose multiplicities are the prime indices of n and k is the number of parts, or factorizations of A181821(n). -/
opaque A320835 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A320835.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321090: Sequence {a(n), n>=0} satisfying the continued fraction relation: if z = [a(0) + 1; a(1) + 1, a(2) + 1, a(3) + 1, ..., a(n) + 1, ...], then 3*z = [a(0) + 9; a(1) + 11, a(2) + 11, a(3) + 11, ..., a(n) + 11, ...]. -/
opaque A321090 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321090.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321228: Number of non-isomorphic hypertrees of weight n with singletons. -/
opaque A321228 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321228.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321352: Triangle T(n,k) giving the number of permutations pi of {1,2,...,n} such that for all i, pi(i) is not in {i, i+1, ..., i+k-1} (mod n), with 0 <= k <= n - 1. -/
opaque A321352 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321352.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321408: Number of non-isomorphic self-dual multiset partitions of weight n whose parts are aperiodic. -/
opaque A321408 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321408.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321610: Number of permutations tau of {1,...,n} such that k^2 + tau(k)^2 is prime for every k = 1,...,n. -/
opaque A321610 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321610.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321611: Number of permutations tau of {1,...,n} such that k^4 + tau(k)^4 is prime for every k = 1,...,n. -/
opaque A321611 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321611.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321638: Number of (7-n)-faces of the 1_42 polytope. -/
opaque A321638 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321638.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321710: Triangle read by rows: T(n,k) is the number of rooted hypermaps of genus k with n darts. -/
opaque A321710 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321710.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321716: Triangle read by rows: T(n,k) is the number of n X k Young tableaux, where 0 <= k <= n. -/
opaque A321716 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321716.provenance : SequenceMachineLib.Provenance := .undefined

/-- A321800: Delete the decimal digits of n that appear exactly once; write -1 if all digits disappear. -/
opaque A321800 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A321800.provenance : SequenceMachineLib.Provenance := .undefined

/-- A322057: Array read by upwards antidiagonals: T(i,n) is the number of binary necklaces of length n that avoid 00...0 (i 0's). -/
opaque A322057 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A322057.provenance : SequenceMachineLib.Provenance := .undefined

/-- A322280: Array read by antidiagonals: T(n,k) is the number of graphs on n labeled nodes, each node being colored with one of k colors, where no edge connects two nodes of the same color. -/
opaque A322280 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A322280.provenance : SequenceMachineLib.Provenance := .undefined

/-- A322451: Number of unlabeled 3-uniform hypergraphs spanning n vertices. -/
opaque A322451 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A322451.provenance : SequenceMachineLib.Provenance := .undefined

/-- A322700: Number of unlabeled graphs with loops spanning n vertices. -/
opaque A322700 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A322700.provenance : SequenceMachineLib.Provenance := .undefined

/-- A324343: Lexicographically earliest positive sequence such that a(i) = a(j) => A278222(i) = A278222(j) and A324342(i) = A324342(j), for all i, j >= 0. -/
opaque A324343 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A324343.provenance : SequenceMachineLib.Provenance := .undefined

/-- A324409: Number of achiral polyomino rings of length 4n with fourfold rotational symmetry. -/
opaque A324409 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A324409.provenance : SequenceMachineLib.Provenance := .undefined

/-- A324421: Number of minimally 7-connected non-isomorphic n-vertex graphs. -/
opaque A324421 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A324421.provenance : SequenceMachineLib.Provenance := .undefined

/-- A324823: a(n) = 1 if n > 1 and A156552(n) is a square or a twice a square, 0 otherwise. -/
opaque A324823 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A324823.provenance : SequenceMachineLib.Provenance := .undefined

/-- A325013: Array read by descending antidiagonals: A(n,k) is the number of unoriented colorings of the facets of a regular n-dimensional orthoplex using up to k colors. -/
opaque A325013 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A325013.provenance : SequenceMachineLib.Provenance := .undefined

/-- A326203: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n > 2 and gcd(n,phi(n)) = 1, with f(n) = n for all other numbers. -/
opaque A326203 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A326203.provenance : SequenceMachineLib.Provenance := .undefined

/-- A326622: Number of factorizations of n into factors > 1 with integer average. -/
opaque A326622 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A326622.provenance : SequenceMachineLib.Provenance := .undefined

/-- A326678: Sum of all the parts in the partitions of n into 10 primes. -/
opaque A326678 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A326678.provenance : SequenceMachineLib.Provenance := .undefined

/-- A326681: Sum of the eighth largest parts of the partitions of n into 10 primes. -/
opaque A326681 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A326681.provenance : SequenceMachineLib.Provenance := .undefined

/-- A326909: Number of sets of subsets of {1..n} closed under union and intersection and covering all of the vertices. -/
opaque A326909 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A326909.provenance : SequenceMachineLib.Provenance := .undefined

/-- A327105: BII-numbers of set-systems with minimum degree 1. -/
opaque A327105 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A327105.provenance : SequenceMachineLib.Provenance := .undefined

/-- A327469: Number of nonempty subsets of [1..n] which are geometric progressions of length >= 3 with rational ratio and are locally maximal. -/
opaque A327469 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A327469.provenance : SequenceMachineLib.Provenance := .undefined

/-- A327549: Number T(n,k) of compositions of partitions of n with exactly k compositions; triangle T(n,k), n>=0, 0<=k<=n, read by rows. -/
opaque A327549 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A327549.provenance : SequenceMachineLib.Provenance := .undefined

/-- A327805: Triangle read by rows where T(n,k) is the number of unlabeled simple graphs with n vertices and vertex-connectivity >= k. -/
opaque A327805 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A327805.provenance : SequenceMachineLib.Provenance := .undefined

/-- A328335: Numbers whose consecutive prime indices are relatively prime. -/
opaque A328335 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A328335.provenance : SequenceMachineLib.Provenance := .undefined

/-- A328395: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(A276087(i)) = A046523(A276087(j)) for all i, j. -/
opaque A328395 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A328395.provenance : SequenceMachineLib.Provenance := .undefined

/-- A328399: Lexicographically earliest infinite sequence such that a(i) = a(j) => A328475(i) = A328475(j) for all i, j. -/
opaque A328399 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A328399.provenance : SequenceMachineLib.Provenance := .undefined

/-- A328617: Multiplicative with a(p^e) = p^e, if e = 0 mod p, otherwise a(p^e) = p^((p*floor(e/p)) + A124223(A000720(p),e mod p)). -/
opaque A328617 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A328617.provenance : SequenceMachineLib.Provenance := .undefined

/-- A328618: Multiplicative with a(p^e) = p^e if p = 2 or e is a multiple of p, otherwise a(p^e) = p^((p*floor(e/p)) + (2e mod p)). -/
opaque A328618 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A328618.provenance : SequenceMachineLib.Provenance := .undefined

/-- A328682: Array read by antidiagonals: T(n,r) is the number of connected r-regular loopless multigraphs on n unlabeled nodes. -/
opaque A328682 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A328682.provenance : SequenceMachineLib.Provenance := .undefined

/-- A328705: Dirichlet g.f.: Product_{k>=1} zeta(k*s)^2. -/
opaque A328705 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A328705.provenance : SequenceMachineLib.Provenance := .undefined

/-- A328779: a(n) is the number of unlabeled unrooted trees (as in A000055) on n nodes with one designated node (exclusive) or one designated edge. -/
opaque A328779 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A328779.provenance : SequenceMachineLib.Provenance := .undefined

/-- A329033: a(n) = A003415(A122111(n)). -/
opaque A329033 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A329033.provenance : SequenceMachineLib.Provenance := .undefined

/-- A329675: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps UD and HH. -/
opaque A329675 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A329675.provenance : SequenceMachineLib.Provenance := .undefined

/-- A330058: Number of non-isomorphic multiset partitions of weight n with at least one endpoint. -/
opaque A330058 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A330058.provenance : SequenceMachineLib.Provenance := .undefined

/-- A330269: The number of semi-meanders with n top arches and concentric arches within the starting arch or a starting arch with length one. -/
opaque A330269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A330269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A330608: T(n, k) = P(n-k, k) where P(n, x) = Sum_{k=0..n} A053121(n, k)*x^k. Triangle read by rows, for 0 <= k <= n. -/
opaque A330608 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A330608.provenance : SequenceMachineLib.Provenance := .undefined

/-- A330642: a(n) is the number of partitions of n with Durfee square of size <= 4. -/
opaque A330642 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A330642.provenance : SequenceMachineLib.Provenance := .undefined

/-- A330644: Number of non-self-conjugate partitions of n. -/
opaque A330644 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A330644.provenance : SequenceMachineLib.Provenance := .undefined

/-- A330719: a(n) = denominator(Sum_{k=1..n} (2^(k-1) - 1)/k). -/
opaque A330719 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A330719.provenance : SequenceMachineLib.Provenance := .undefined

/-- A330725: a(0) = 0; thereafter a(n) = a(n-1) + sigma(n) if sigma(n) > a(n-1), otherwise a(n) = a(n-1) - sigma(n), where sigma is the sum of divisors function A000203. -/
opaque A330725 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A330725.provenance : SequenceMachineLib.Provenance := .undefined

/-- A331007: Number of derangements of a set of n elements where 2 specific elements cannot appear in each other's positions. -/
opaque A331007 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A331007.provenance : SequenceMachineLib.Provenance := .undefined

/-- A331508: Array read by antidiagonals: A(n,k) is the number of nonisomorphic T_0 n-regular set multipartitions (multisets of sets) on a k-set. -/
opaque A331508 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A331508.provenance : SequenceMachineLib.Provenance := .undefined

/-- A331683: One and all numbers of the form 2^k * prime(j) for k > 0 and j already in the sequence. -/
opaque A331683 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A331683.provenance : SequenceMachineLib.Provenance := .undefined

/-- A331728: Negabinary-Niven numbers: numbers divisible by the sum of digits in their negabinary representation (A027615). -/
opaque A331728 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A331728.provenance : SequenceMachineLib.Provenance := .undefined

/-- A331848: Number of partitions of n into odd parts with some part repeated. -/
opaque A331848 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A331848.provenance : SequenceMachineLib.Provenance := .undefined

/-- A331849: Number of partitions of n into prime parts with some part repeated. -/
opaque A331849 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A331849.provenance : SequenceMachineLib.Provenance := .undefined

/-- A332257: E.g.f.: (1 - sinh(x)) / (1 - 2*sinh(x)). -/
opaque A332257 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A332257.provenance : SequenceMachineLib.Provenance := .undefined

/-- A332280: Number of integer partitions of n with unimodal run-lengths. -/
opaque A332280 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A332280.provenance : SequenceMachineLib.Provenance := .undefined

/-- A332281: Number of integer partitions of n whose run-lengths are not unimodal. -/
opaque A332281 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A332281.provenance : SequenceMachineLib.Provenance := .undefined

/-- A332710: Maximum value in n-th row of A332709. -/
opaque A332710 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A332710.provenance : SequenceMachineLib.Provenance := .undefined

/-- A332746: Number of integer partitions of n such that either the run-lengths or the negated run-lengths are unimodal. -/
opaque A332746 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A332746.provenance : SequenceMachineLib.Provenance := .undefined

/-- A333147: Number of compositions of n that are either strictly increasing or strictly decreasing. -/
opaque A333147 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A333147.provenance : SequenceMachineLib.Provenance := .undefined

/-- A333157: Triangle read by rows: T(n,k) is the number of n X n symmetric binary matrices with k ones in every row and column. -/
opaque A333157 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A333157.provenance : SequenceMachineLib.Provenance := .undefined

/-- A333159: Triangle read by rows: T(n,k) is the number of non-isomorphic n X n symmetric binary matrices with k ones in every row and column up to permutation of rows and columns. -/
opaque A333159 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A333159.provenance : SequenceMachineLib.Provenance := .undefined

/-- A333382: Number of adjacent unequal parts in the n-th composition in standard-order. -/
opaque A333382 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A333382.provenance : SequenceMachineLib.Provenance := .undefined

/-- A333485: Heinz numbers of all integer partitions sorted first by sum, then by decreasing length, and finally lexicographically. A code for the Fenner-Loizou tree A228100. -/
opaque A333485 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A333485.provenance : SequenceMachineLib.Provenance := .undefined

/-- A333638: Numbers m such that (m * sigma(m)) / tau(m) is an integer k. -/
opaque A333638 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A333638.provenance : SequenceMachineLib.Provenance := .undefined

/-- A333681: Number of non-isomorphic n X n binary matrices with all row and column sums equal up to permutation of rows and columns. -/
opaque A333681 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A333681.provenance : SequenceMachineLib.Provenance := .undefined

/-- A333882: Expansion of e.g.f. exp(Sum_{k>=0} x^(5*k + 1) / (5*k + 1)!). -/
opaque A333882 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A333882.provenance : SequenceMachineLib.Provenance := .undefined

/-- A334230: Triangle read by rows: T(n,k) gives the meet of n and k in the graded lattice of the positive integers defined by covering relations "n covers (n - n/p)" for all divisors p of n. -/
opaque A334230 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A334230.provenance : SequenceMachineLib.Provenance := .undefined

/-- A334561: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals downwards, where column k is the expansion of e.g.f. exp(-Sum_{j=1..k} x^j). -/
opaque A334561 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A334561.provenance : SequenceMachineLib.Provenance := .undefined

/-- A334742: Pascal's spiral: starting with a(1) = 1, proceed in a square spiral, computing each term as the sum of horizontally and vertically adjacent prior terms. -/
opaque A334742 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A334742.provenance : SequenceMachineLib.Provenance := .undefined

/-- A334872: Number of steps needed to reach either 1 or one of the "Fermi-Dirac primes" (A050376) when starting from n and iterating with A334870. -/
opaque A334872 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A334872.provenance : SequenceMachineLib.Provenance := .undefined

/-- A335362: Triangle T(n,d) read by rows: the number of mixed trees with n>=1 nodes and 0<=d -/
opaque A335362 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A335362.provenance : SequenceMachineLib.Provenance := .undefined

/-- A335470: Number of compositions of n matching the pattern (1,2,1). -/
opaque A335470 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A335470.provenance : SequenceMachineLib.Provenance := .undefined

/-- A335693: A000904(n) - (-1)^n. -/
opaque A335693 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A335693.provenance : SequenceMachineLib.Provenance := .undefined

/-- A336009: a(0) = ... = a(3) = 1; a(n) = Sum_{k=0..n-4} binomial(n-4,k) * a(k) * a(n-k-4). -/
opaque A336009 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A336009.provenance : SequenceMachineLib.Provenance := .undefined

/-- A336163: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} k^j * binomial(n,j)^3. -/
opaque A336163 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A336163.provenance : SequenceMachineLib.Provenance := .undefined

/-- A336201: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} (-k)^j * binomial(n,j)^k. -/
opaque A336201 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A336201.provenance : SequenceMachineLib.Provenance := .undefined

/-- A336501: Decimal expansion of lima bean curve perimeter. -/
opaque A336501 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A336501.provenance : SequenceMachineLib.Provenance := .undefined

/-- A336866: Number of integer partitions of n without all distinct multiplicities. -/
opaque A336866 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A336866.provenance : SequenceMachineLib.Provenance := .undefined

/-- A336945: a(n) = binomial(3*n,n)/(2*n + 1) - 2*binomial(3*(n - 1),n - 1)/(2*n - 1) for n > 0 with a(0) = 1. -/
opaque A336945 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A336945.provenance : SequenceMachineLib.Provenance := .undefined

/-- A336990: Expansion of Product_{k>=1} 1/(1 - x^k / (1 - k*x)). -/
opaque A336990 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A336990.provenance : SequenceMachineLib.Provenance := .undefined

/-- A337961: Number of chiral pairs of colorings of the 12 pentagonal faces of a regular dodecahedron or the 12 vertices of a regular icosahedron using n or fewer colors. -/
opaque A337961 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A337961.provenance : SequenceMachineLib.Provenance := .undefined

/-- A337962: Number of achiral colorings of the 12 pentagonal faces of a regular dodecahedron or the 12 vertices of a regular icosahedron using n or fewer colors. -/
opaque A337962 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A337962.provenance : SequenceMachineLib.Provenance := .undefined

/-- A338190: Integers m such that A337454(m) = tau(m), the number of divisors of n. -/
opaque A338190 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A338190.provenance : SequenceMachineLib.Provenance := .undefined

/-- A338430: Number of numbers less than sqrt(n) whose square does not divide n. -/
opaque A338430 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A338430.provenance : SequenceMachineLib.Provenance := .undefined

/-- A338492: Least number of centered heptagonal numbers needed to represent n. -/
opaque A338492 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A338492.provenance : SequenceMachineLib.Provenance := .undefined

/-- A338498: a(n) is the square root of n AND A335615(n) (where AND denotes the bitwise AND operator). -/
opaque A338498 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A338498.provenance : SequenceMachineLib.Provenance := .undefined

/-- A338553: Number of integer partitions of n that are either constant or relatively prime. -/
opaque A338553 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A338553.provenance : SequenceMachineLib.Provenance := .undefined

/-- A338554: Number of non-constant integer partitions of n whose parts have a common divisor > 1. -/
opaque A338554 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A338554.provenance : SequenceMachineLib.Provenance := .undefined

/-- A338706: Number of 2-linear trees on n nodes. -/
opaque A338706 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A338706.provenance : SequenceMachineLib.Provenance := .undefined

/-- A338924: Every prime term k of the sequence is the cumulative sum of the prime digits used so far (the digits of k are included in the sum). -/
opaque A338924 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A338924.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339067: Triangle read by rows: T(n,k) is the number of linear forests with n nodes and k rooted trees. -/
opaque A339067 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339067.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339382: Number of partitions of n into an even number of distinct primes (counting 1 as a prime). -/
opaque A339382 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339382.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339383: Number of partitions of n into an odd number of distinct primes (counting 1 as a prime). -/
opaque A339383 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339383.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339404: Number of partitions of n into an even number of parts that are not multiples of 3. -/
opaque A339404 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339404.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339405: Number of partitions of n into an odd number of parts that are not multiples of 3. -/
opaque A339405 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339405.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339617: Number of non-graphical integer partitions of 2n. -/
opaque A339617 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339617.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339629: Number of compositions (ordered partitions) of n into distinct parts such that the sum of reciprocals of parts is 1. -/
opaque A339629 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339629.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339642: Number of rooted trees with n nodes colored using exactly 2 colors. -/
opaque A339642 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339642.provenance : SequenceMachineLib.Provenance := .undefined

/-- A339780: Triangle read by rows: T(n,k) is the number of homeomorphically irreducible leaf colored trees with n leaves using exactly k colors. -/
opaque A339780 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A339780.provenance : SequenceMachineLib.Provenance := .undefined

/-- A340601: Number of integer partitions of n of even rank. -/
opaque A340601 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A340601.provenance : SequenceMachineLib.Provenance := .undefined

/-- A340692: Number of integer partitions of n of odd rank. -/
opaque A340692 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A340692.provenance : SequenceMachineLib.Provenance := .undefined

/-- A340785: Number of factorizations of 2n into even factors > 1. -/
opaque A340785 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A340785.provenance : SequenceMachineLib.Provenance := .undefined

/-- A340941: G.f. A(x) satisfies: A(x) = (A(x) - x)*(1 - x*A(x)) * Sum_{n>=0} x^n/(1 - x*A(x)^n). -/
opaque A340941 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A340941.provenance : SequenceMachineLib.Provenance := .undefined

/-- A340986: Square array read by descending antidiagonals. T(n,k) is the number of ways to separate the columns of an ordered pair of n-permutations (that have been written as a 2 X n array, one atop the other) into k cells so that no cell has a column rise. For n >= 0, k >= 0. -/
opaque A340986 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A340986.provenance : SequenceMachineLib.Provenance := .undefined

/-- A341024: Number of partitions of n into 7 distinct nonzero triangular numbers. -/
opaque A341024 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A341024.provenance : SequenceMachineLib.Provenance := .undefined

/-- A341624: a(n) = 0 if n is a deficient number, otherwise a(n) is the number of nondeficient divisors of the last number in the iteration x -> A003961(x) (starting from x=n) for which that count (A341620) is nonzero. -/
opaque A341624 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A341624.provenance : SequenceMachineLib.Provenance := .undefined

/-- A341972: Number of partitions of n into 10 primes (counting 1 as a prime). -/
opaque A341972 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A341972.provenance : SequenceMachineLib.Provenance := .undefined

/-- A342461: Number of nonzero digits when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree. -/
opaque A342461 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A342461.provenance : SequenceMachineLib.Provenance := .undefined

/-- A342533: a(n) is the number of n-gons in A000940 that display symmetry (reflection / rotation). -/
opaque A342533 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A342533.provenance : SequenceMachineLib.Provenance := .undefined

/-- A342910: Concatenation of all 01-words, in the order induced by A032766; see Comments. -/
opaque A342910 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A342910.provenance : SequenceMachineLib.Provenance := .undefined

/-- A342952: a(n) is the least term in A007602 such that the product of digits equals A342950(n) or 0 if no such number exists. -/
opaque A342952 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A342952.provenance : SequenceMachineLib.Provenance := .undefined

/-- A343350: Expansion of Product_{k>=1} 1 / (1 - x^k)^(5^(k-1)). -/
opaque A343350 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A343350.provenance : SequenceMachineLib.Provenance := .undefined

/-- A343381: Number of strict integer partitions of n with a part dividing all the others but no part divisible by all the others. -/
opaque A343381 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A343381.provenance : SequenceMachineLib.Provenance := .undefined

/-- A343665: Number of partitions of an n-set without blocks of size 5. -/
opaque A343665 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A343665.provenance : SequenceMachineLib.Provenance := .undefined

/-- A343733: Primes p at which tau(p^p) is a prime power, where tau is the number-of-divisors function A000005. -/
opaque A343733 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A343733.provenance : SequenceMachineLib.Provenance := .undefined

/-- A343843: a(n) = Sum_{k=0..n} (-1)^k*binomial(n, k)*A000831(k). -/
opaque A343843 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A343843.provenance : SequenceMachineLib.Provenance := .undefined

/-- A344693: a(n) is the number of joint preference profiles in a stable marriage problem with n men and n women. -/
opaque A344693 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A344693.provenance : SequenceMachineLib.Provenance := .undefined

/-- A344888: a(n) is the least base k >= 2 where n is an undulating number (i.e., with digits of the form abababab...). -/
opaque A344888 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A344888.provenance : SequenceMachineLib.Provenance := .undefined

/-- A345064: a(n) = 1 if A071324(n) is equal to A206369(n), otherwise 0; characteristic function of A317923. -/
opaque A345064 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A345064.provenance : SequenceMachineLib.Provenance := .undefined

/-- A346050: G.f. A(x) satisfies: A(x) = x + x^2 + x^3 * A(x/(1 - x)) / (1 - x). -/
opaque A346050 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A346050.provenance : SequenceMachineLib.Provenance := .undefined

/-- A346051: G.f. A(x) satisfies: A(x) = 1 + x^2 + x^3 * A(x/(1 - x)) / (1 - x). -/
opaque A346051 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A346051.provenance : SequenceMachineLib.Provenance := .undefined

/-- A346052: G.f. A(x) satisfies: A(x) = 1 + x + x^3 * A(x/(1 - x)) / (1 - x). -/
opaque A346052 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A346052.provenance : SequenceMachineLib.Provenance := .undefined

/-- A346426: Number A(n,k) of partitions of the (n+k)-multiset {0,...,0,1,2,...,k} with n 0's; square array A(n,k), n>=0, k>=0, read by antidiagonals. -/
opaque A346426 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A346426.provenance : SequenceMachineLib.Provenance := .undefined

/-- A346488: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), for all i, j >= 1, where f(n) = 0 if mu(n) = -1, and f(n) = n for all other numbers (with mu = Möbius mu, A008683). -/
opaque A346488 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A346488.provenance : SequenceMachineLib.Provenance := .undefined

/-- A346838: a(n) = (PolyLog(-n, -i) - exp(i*Pi*n)*PolyLog(-n, i)) * i / exp(i*Pi*n/2). -/
opaque A346838 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A346838.provenance : SequenceMachineLib.Provenance := .undefined

/-- A347254: Positive integers k such that 10*k+6 is equal to the product of two integers ending with 4 (A347253). -/
opaque A347254 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A347254.provenance : SequenceMachineLib.Provenance := .undefined

/-- A347317: An alternative version of the inventory sequence A342585: now a row only ends when a 0 is reached that would not be followed by any further terms. -/
opaque A347317 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A347317.provenance : SequenceMachineLib.Provenance := .undefined

/-- A347440: Number of factorizations of n with alternating product < 1. -/
opaque A347440 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A347440.provenance : SequenceMachineLib.Provenance := .undefined

/-- A347579: Irregular triangle read by rows: T(n,k) = 1 iff there is no partition of n into exactly k consecutive parts, for n >= 1, 1 <= k <= A003056(n). -/
opaque A347579 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A347579.provenance : SequenceMachineLib.Provenance := .undefined

/-- A347623: Number of partitions of n into at most 4 prime parts (counting 1 as a prime). -/
opaque A347623 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A347623.provenance : SequenceMachineLib.Provenance := .undefined

/-- A347802: Expansion of ( Sum_{k>=0} k^2 * q^(k^2) )^3. -/
opaque A347802 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A347802.provenance : SequenceMachineLib.Provenance := .undefined

/-- A347803: Expansion of ( Sum_{k>=0} k^2 * q^(k^2) )^4. -/
opaque A347803 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A347803.provenance : SequenceMachineLib.Provenance := .undefined

/-- A348377: Number of non-alternating compositions of n, excluding twins (x,x). -/
opaque A348377 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A348377.provenance : SequenceMachineLib.Provenance := .undefined

/-- A348580: Expansion of e.g.f. exp(x) / (1 - sin(x)). -/
opaque A348580 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A348580.provenance : SequenceMachineLib.Provenance := .undefined

/-- A348582: a(n) is the greatest factor among all the products A307720(k) * A307720(k+1) equal to n. -/
opaque A348582 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A348582.provenance : SequenceMachineLib.Provenance := .undefined

/-- A348853: Delete any least significant 0's from the Zeckendorf representation of n, leaving its "odd" part. -/
opaque A348853 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A348853.provenance : SequenceMachineLib.Provenance := .undefined

/-- A348888: Triangle read by rows: T(n,k) = number of basins of attraction of the multiplication by k in the integers modulo n, n >= 1, 0 <= k < n. -/
opaque A348888 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A348888.provenance : SequenceMachineLib.Provenance := .undefined

/-- A349264: Generalized Euler numbers, a(n) = n!*[x^n](sec(4*x)*(sin(4*x) + 1)). -/
opaque A349264 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A349264.provenance : SequenceMachineLib.Provenance := .undefined

/-- A349265: Generalized Euler numbers, a(n) = n!*[x^n](sec(5*x)*(sin(x) + sin(3*x) + cos(2*x) + cos(4*x))). -/
opaque A349265 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A349265.provenance : SequenceMachineLib.Provenance := .undefined

/-- A349401: Number of unlabeled disconnected posets with n elements. -/
opaque A349401 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A349401.provenance : SequenceMachineLib.Provenance := .undefined

/-- A349542: Number of partitions of n into distinct unitary divisors of n. -/
opaque A349542 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A349542.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350012: Number of ways to write n as 4*x^4 + y^2 + (z^2 + 4^w)/2 with x,y,z,w nonnegative integers. -/
opaque A350012 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350012.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350016: Irregular triangle read by rows: T(n,k) is the number of n-permutations whose third-shortest cycle has length exactly k; n >= 0, 0 <= k <= max(0,n-2). -/
opaque A350016 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350016.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350017: Number of isotopism classes containing symmetric unipotent reduced Latin squares of order 2n. -/
opaque A350017 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350017.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350079: Triangle read by rows: T(n,k) is the number of endofunctions on [n] whose second-smallest component has size exactly k; n >= 0, 0 <= k <= max(0,n-1). -/
opaque A350079 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350079.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350240: Number of representations of n as a sum of distinct Fibonacci numbers where 1 can be included twice. -/
opaque A350240 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350240.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350452: Number T(n,k) of endofunctions on [n] with exactly k connected components and no fixed points; triangle T(n,k), n>=0, 0<=k<=floor(n/2), read by rows. -/
opaque A350452 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350452.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350636: a(n) is the number of partitions of n in which no part is divisible by 3 minus the number of basis partitions of n. -/
opaque A350636 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350636.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350789: Triangle read by rows: T(n,k) is the number of unlabeled weakly connected digraphs with n arcs and k vertices, k = 1..n+1. -/
opaque A350789 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350789.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350797: Triangle read by rows: T(n,k) is the number of digraphs on n unlabeled nodes with k arcs and a global source (or sink), n >= 1, k = 0..(n-1)^2. -/
opaque A350797 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350797.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350912: Triangle read by rows: T(n,k) is the number of oriented graphs on n unlabeled nodes whose underlying graph is k-regular, k = 0..n-1. -/
opaque A350912 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350912.provenance : SequenceMachineLib.Provenance := .undefined

/-- A350914: Triangle read by rows: T(n,k) is the number of unlabeled weakly connected oriented graphs with n arcs and k vertices, k = 1..n+1. -/
opaque A350914 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A350914.provenance : SequenceMachineLib.Provenance := .undefined

/-- A352269: Irregular triangle read by rows: T(n,k) is the number of parts in the partition of n into 2*k-1 consecutive parts, 1 <= k <= A351846(n). T(n,k) = 0 if no such partition exists. -/
opaque A352269 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A352269.provenance : SequenceMachineLib.Provenance := .undefined

/-- A352280: a(0) = 1; a(n) = 3 * Sum_{k=0..floor((n-1)/2)} binomial(n-1,2*k) * a(n-2*k-1). -/
opaque A352280 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A352280.provenance : SequenceMachineLib.Provenance := .undefined

/-- A352298: Conjectured largest number that can be expressed as the sum of two primes in exactly n ways or -1 if no such number exists. -/
opaque A352298 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A352298.provenance : SequenceMachineLib.Provenance := .undefined

/-- A352624: Expansion of e.g.f. exp(exp(x) + cosh(x) - 2). -/
opaque A352624 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A352624.provenance : SequenceMachineLib.Provenance := .undefined

/-- A352977: Expansion of e.g.f. cos(2*x) cos(3*x) / cos(6*x) (even powers only). -/
opaque A352977 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A352977.provenance : SequenceMachineLib.Provenance := .undefined

/-- A353549: Expansion of e.g.f. log(1+3*x) * exp(x)/3. -/
opaque A353549 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A353549.provenance : SequenceMachineLib.Provenance := .undefined

/-- A353838: Numbers whose prime indices have all distinct run-sums. -/
opaque A353838 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A353838.provenance : SequenceMachineLib.Provenance := .undefined

/-- A354896: A fixed point of the two-block substitution 00->001, 01->010, 10->101, 11->110. -/
opaque A354896 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A354896.provenance : SequenceMachineLib.Provenance := .undefined

/-- A355350: G.f. A(x,y) satisfies: x*y = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x,y)^n, with coefficients T(n,k) of x^n*y^k in A(x,y) given as a triangle read by rows. -/
opaque A355350 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A355350.provenance : SequenceMachineLib.Provenance := .undefined

/-- A355360: G.f. A(x,y) satisfies: x*y*A(x,y) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x,y)^n, with coefficients T(n,k) of x^n*y^k in A(x,y) given as a triangle read by rows. -/
opaque A355360 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A355360.provenance : SequenceMachineLib.Provenance := .undefined

/-- A356698: Number of Catalan words of length n avoiding the pattern 00000. -/
opaque A356698 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A356698.provenance : SequenceMachineLib.Provenance := .undefined

/-- A357456: Number of partitions of n into two or more odd parts. -/
opaque A357456 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A357456.provenance : SequenceMachineLib.Provenance := .undefined

/-- A357457: Number of partitions of n into two or more distinct odd parts. -/
opaque A357457 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A357457.provenance : SequenceMachineLib.Provenance := .undefined

/-- A357586: Triangle read by rows. Convolution triangle of A002467 (number of permutations with fixed points). -/
opaque A357586 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A357586.provenance : SequenceMachineLib.Provenance := .undefined

/-- A357602: a(n) is the number of n-gons in A000940 that are asymmetric. -/
opaque A357602 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A357602.provenance : SequenceMachineLib.Provenance := .undefined

/-- A357904: a(n) = Sum_{k=0..floor(n/4)} Stirling2(n - 3*k,k). -/
opaque A357904 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A357904.provenance : SequenceMachineLib.Provenance := .undefined

/-- A359133: Sum of square end-to-end displacements over all n-step self-avoiding walks of A359741. -/
opaque A359133 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A359133.provenance : SequenceMachineLib.Provenance := .undefined

/-- A359374: Parity of A252463(n). -/
opaque A359374 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A359374.provenance : SequenceMachineLib.Provenance := .undefined

/-- A359605: a(n) = 1 if A355690(n) is positive (+1), otherwise 0. -/
opaque A359605 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A359605.provenance : SequenceMachineLib.Provenance := .undefined

/-- A360475: Smallest prime factor of (2^prime(n) + 1) / 3. -/
opaque A360475 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A360475.provenance : SequenceMachineLib.Provenance := .undefined

/-- A360952: Number of strict integer partitions of n with non-integer median; a(0) = 1. -/
opaque A360952 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A360952.provenance : SequenceMachineLib.Provenance := .undefined

/-- A361321: Lexicographically earliest infinite sequence of distinct elements of A000469 such that, for n > 2, a(n) has a common factor with a(n-1) but not with a(n-2). -/
opaque A361321 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A361321.provenance : SequenceMachineLib.Provenance := .undefined

/-- A361324: a(n) = k such that A361321(k) = A000469(n), or -1 if A000469(n) never appears in A361321. -/
opaque A361324 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A361324.provenance : SequenceMachineLib.Provenance := .undefined

/-- A361404: Triangle read by rows: T(n,k) is the number of graphs with loops on n unlabeled vertices with k loops. -/
opaque A361404 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A361404.provenance : SequenceMachineLib.Provenance := .undefined

/-- A361782: Numerators of the harmonic means of the bi-unitary divisors of the positive integers. -/
opaque A361782 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A361782.provenance : SequenceMachineLib.Provenance := .undefined

/-- A361870: Array read by downward antidiagonals: A(n,k) is the number of nonequivalent 2-colorings of the cells of an n-dimensional hypercube with edges k cells long under action of symmetry. -/
opaque A361870 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A361870.provenance : SequenceMachineLib.Provenance := .undefined

/-- A362068: a(n) is the smallest positive integer k such that n can be expressed as the arithmetic mean of k squares. -/
opaque A362068 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A362068.provenance : SequenceMachineLib.Provenance := .undefined

/-- A362076: a(1) = 1, a(2) = 2; for n > 2, a(n) is the least positive integer not occurring earlier such that a(n) shares no digit with a(n-2) * a(n-1). -/
opaque A362076 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A362076.provenance : SequenceMachineLib.Provenance := .undefined

/-- A362478: E.g.f. satisfies A(x) = exp(x + x^3/3 * A(x)^3). -/
opaque A362478 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A362478.provenance : SequenceMachineLib.Provenance := .undefined

/-- A362548: Number of partitions of n with at least three parts larger than 1. -/
opaque A362548 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A362548.provenance : SequenceMachineLib.Provenance := .undefined

/-- A362906: Number of n element multisets of length 3 vectors over GF(2) that sum to zero. -/
opaque A362906 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A362906.provenance : SequenceMachineLib.Provenance := .undefined

/-- A363225: Number of integer partitions of n containing three parts (a,b,c) (repeats allowed) such that a + b = c. A variation of sum-full partitions. -/
opaque A363225 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A363225.provenance : SequenceMachineLib.Provenance := .undefined

/-- A363448: Number of noncrossing partitions of the n-set with no pair of singletons {i} and {j} that can be merged into {i,j} and leave the partition a noncrossing partition. -/
opaque A363448 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A363448.provenance : SequenceMachineLib.Provenance := .undefined

/-- A363449: Number of noncrossing partitions of the n-set with some pair of singletons {i} and {j} that can be merged into {i,j} and leave the partition a noncrossing-partition. -/
opaque A363449 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A363449.provenance : SequenceMachineLib.Provenance := .undefined

/-- A363465: G.f. A(x) satisfies: A(x) = x + x^2 * exp( Sum_{k>=1} A(x^k)^3 / (k*x^(2*k)) ). -/
opaque A363465 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A363465.provenance : SequenceMachineLib.Provenance := .undefined

/-- A364822: Expansion of e.g.f. cosh(x) / (1 - 2*sinh(x)). -/
opaque A364822 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A364822.provenance : SequenceMachineLib.Provenance := .undefined

/-- A365279: Inverse permutation to A365278. -/
opaque A365279 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A365279.provenance : SequenceMachineLib.Provenance := .undefined

/-- A365520: Number of 1-factorizations of complete graph K_{2n} that all share one arbitrary pairing in common. -/
opaque A365520 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A365520.provenance : SequenceMachineLib.Provenance := .undefined

/-- A365924: Number of incomplete integer partitions of n, meaning not every number from 0 to n is the sum of some submultiset. -/
opaque A365924 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A365924.provenance : SequenceMachineLib.Provenance := .undefined

/-- A367193: The x-coordinate of the point where x + y = n, x and y are integers and x/y is as close as possible to Pi. -/
opaque A367193 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A367193.provenance : SequenceMachineLib.Provenance := .undefined

/-- A367219: Number of integer partitions of n whose length cannot be written as a nonnegative linear combination of the distinct parts. -/
opaque A367219 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A367219.provenance : SequenceMachineLib.Provenance := .undefined

/-- A367887: Expansion of e.g.f. exp(2*x) / (1 - 2*sinh(x)). -/
opaque A367887 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A367887.provenance : SequenceMachineLib.Provenance := .undefined

/-- A369289: Number of connected graphs with loops (symmetric relations) on n unlabeled vertices with at most n edges. -/
opaque A369289 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A369289.provenance : SequenceMachineLib.Provenance := .undefined

/-- A369472: Number of achiral polyominoes composed of n pentagonal cells of the hyperbolic regular tiling with Schläfli symbol {5,oo}. -/
opaque A369472 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A369472.provenance : SequenceMachineLib.Provenance := .undefined

/-- A369607: Greedy solution a(1) < a(2) < ... to 1/a(1) + 1/a(2) + ... = (1 - 1/a(1)) * (1 - 1/a(2)) * .... -/
opaque A369607 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A369607.provenance : SequenceMachineLib.Provenance := .undefined

/-- A369682: Expansion of g.f. A(x) satisfying Sum_{n>=0} (-1)^n * x^n * Product_{k=0..n} (x^k + A(x)) = theta_2(x^(1/2)) / x^(1/8). -/
opaque A369682 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A369682.provenance : SequenceMachineLib.Provenance := .undefined

/-- A370524: Number of permutations of [n] having exactly one adjacent 2-cycle. -/
opaque A370524 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A370524.provenance : SequenceMachineLib.Provenance := .undefined

/-- A370527: Triangle read by rows: T(n,k) = number of permutations of [n] having exactly one adjacent k-cycle. (n>=1, 1<=k<=n). -/
opaque A370527 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A370527.provenance : SequenceMachineLib.Provenance := .undefined

/-- A370886: Number of Git graphs (also called Git feature branch graphs) with n vertices. -/
opaque A370886 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A370886.provenance : SequenceMachineLib.Provenance := .undefined

/-- A371397: Number of chiral pairs of polyominoes with n cubical cells of the regular tiling with Schläfli symbol {4,3,4}. -/
opaque A371397 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A371397.provenance : SequenceMachineLib.Provenance := .undefined

/-- A372192: a(n) = A010846(n) - A373738(n). -/
opaque A372192 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A372192.provenance : SequenceMachineLib.Provenance := .undefined

/-- A372982: a(n) = floor((a(n-1)+a(n-2)+n)/(a(n-3)+1)), where a(1)=1, a(2)=2, a(3)=3. -/
opaque A372982 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A372982.provenance : SequenceMachineLib.Provenance := .undefined

/-- A373069: Number of partitions of n such that (smallest part) >= 4*(number of parts). -/
opaque A373069 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A373069.provenance : SequenceMachineLib.Provenance := .undefined

/-- A373070: Number of partitions of n such that (smallest part) >= 5*(number of parts). -/
opaque A373070 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A373070.provenance : SequenceMachineLib.Provenance := .undefined

/-- A373139: a(n) = 1 if A276085(n) is a multiple of 5, otherwise 0, where A276085 is the primorial base log-function. -/
opaque A373139 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A373139.provenance : SequenceMachineLib.Provenance := .undefined

/-- A374517: Number of integer compositions of n whose leaders of anti-runs are identical. -/
opaque A374517 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A374517.provenance : SequenceMachineLib.Provenance := .undefined

/-- A375202: a(n) is the least integer x >= 0 such that n = x^2 + y^2 + z^2 for some integers y, z, or -1 if there is no such x. -/
opaque A375202 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A375202.provenance : SequenceMachineLib.Provenance := .undefined

/-- A375815: Lexicographically earliest sequence of positive integers such that for any n > 0, Sum_{k = 1..n} 1/(a(k)*a(n+1-k)) <= 1. -/
opaque A375815 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A375815.provenance : SequenceMachineLib.Provenance := .undefined

/-- A376064: Number of quasi-orders on an n-set that are not partial orders. -/
opaque A376064 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A376064.provenance : SequenceMachineLib.Provenance := .undefined

/-- A376863: Triangle of generalized Stirling numbers of the lower level of the hierarchy (section m=1). -/
opaque A376863 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A376863.provenance : SequenceMachineLib.Provenance := .undefined

/-- A377043: The n-th perfect-power A001597(n) minus the n-th power of a prime A000961(n). -/
opaque A377043 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A377043.provenance : SequenceMachineLib.Provenance := .undefined

/-- A377044: The n-th perfect-power A001597(n) minus the n-th prime-power A246655(n). -/
opaque A377044 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A377044.provenance : SequenceMachineLib.Provenance := .undefined

/-- A377432: Number of perfect-powers x in the range prime(n) < x < prime(n+1). -/
opaque A377432 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A377432.provenance : SequenceMachineLib.Provenance := .undefined

/-- A379053: Lexicographically earliest infinite sequence of distinct positive numbers with the property that n is a member of the sequence iff a(n) is not a prime. -/
opaque A379053 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A379053.provenance : SequenceMachineLib.Provenance := .undefined

/-- A380402: Number of proper prime powers (in A246547) that do not exceed primorial A002110(n). -/
opaque A380402 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A380402.provenance : SequenceMachineLib.Provenance := .undefined

/-- A380404: Number of prime powers that do not exceed the primorial number A002110(n). -/
opaque A380404 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A380404.provenance : SequenceMachineLib.Provenance := .undefined

/-- A380578: Number of nonisomorphic abelian groups of order n which appear as the group of units of the ring Z/kZ taken over every k such that phi(k) = n. -/
opaque A380578 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A380578.provenance : SequenceMachineLib.Provenance := .undefined

/-- A381089: Number of binary relations on n unlabeled points without isolated points. -/
opaque A381089 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A381089.provenance : SequenceMachineLib.Provenance := .undefined

/-- A381121: Number of partially ordered sets ("posets") covering n unlabeled elements. -/
opaque A381121 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A381121.provenance : SequenceMachineLib.Provenance := .undefined

/-- A381291: Number of subsets of 8 integers between 1 and n such that their sum is 0 modulo n. -/
opaque A381291 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A381291.provenance : SequenceMachineLib.Provenance := .undefined

/-- A381350: Number of subsets of 8 integers between 1 and n such that their sum is 2 modulo n. -/
opaque A381350 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A381350.provenance : SequenceMachineLib.Provenance := .undefined

/-- A382955: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = [x^n * y^k] Product_{p prime} (1 + x^p + y^p). -/
opaque A382955 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A382955.provenance : SequenceMachineLib.Provenance := .undefined

/-- A382956: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = [x^n * y^k] Product_{p prime} 1/(1 - x^p - y^p). -/
opaque A382956 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A382956.provenance : SequenceMachineLib.Provenance := .undefined

/-- A383354: Squares of plane partition numbers. -/
opaque A383354 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A383354.provenance : SequenceMachineLib.Provenance := .undefined

/-- A384251: The number of integers k from 1 to n such that the greatest divisor of k that is an infinitary divisor of n is odd. -/
opaque A384251 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A384251.provenance : SequenceMachineLib.Provenance := .undefined

/-- A385222: a(n) is the multiplicative order of -10 modulo prime(n); a(1) = a(3) = 0 for completion. -/
opaque A385222 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A385222.provenance : SequenceMachineLib.Provenance := .undefined

/-- A386388: a(n) is the number of complement pairs of 2n-bead balanced bicolor necklaces. -/
opaque A386388 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A386388.provenance : SequenceMachineLib.Provenance := .undefined

/-- A387179: Number of twice-partitions of n into distinct constant partitions. -/
opaque A387179 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A387179.provenance : SequenceMachineLib.Provenance := .undefined

/-- A388788: Array read by downward antidiagonals: T(n,k) is the number of partitions of [n], n >= 1, k >= 1, into cycles labeled with positive integers, such that the labels sum to k. -/
opaque A388788 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A388788.provenance : SequenceMachineLib.Provenance := .undefined

/-- A389920: Number of integer partitions of n not forming an arithmetic progression with offset 0. -/
opaque A389920 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A389920.provenance : SequenceMachineLib.Provenance := .undefined

/-- A390480: a(n) = Sum_{k=0..floor(n/5)} (6*k+1) * binomial(2*n-4*k+1,n-5*k)/(2*n-4*k+1). -/
opaque A390480 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A390480.provenance : SequenceMachineLib.Provenance := .undefined

/-- A392539: a(n) = the least common multiple of all natural numbers k such that phi(k) <= n. -/
opaque A392539 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A392539.provenance : SequenceMachineLib.Provenance := .undefined

/-- A394320: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = (2*n)! * [x^(2*n)] (f(x)^k + f(-x)^k)/2 and f(x) = 1/(cos(x) + sin(x)). -/
opaque A394320 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A394320.provenance : SequenceMachineLib.Provenance := .undefined

/-- A394390: Number of nonisomorphic abelian groups of order n which do not appear as the group of units of the ring Z/kZ taken over every k such that phi(k) = n. -/
opaque A394390 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A394390.provenance : SequenceMachineLib.Provenance := .undefined

/-- A394405: Number of transitive relations, on an n-set, that are not quasi-orders. -/
opaque A394405 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A394405.provenance : SequenceMachineLib.Provenance := .undefined

/-- A394589: Number of partitions of n with at least one even part minus the number of partitions of n into odd parts. -/
opaque A394589 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A394589.provenance : SequenceMachineLib.Provenance := .undefined

/-- A395563: Indices of 2 in A395473: Number k such that Q(chi) takes 2 different fields for chi running through the Dirichlet characters modulo k, where Q(chi) is the field generated by the values of chi. -/
opaque A395563 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A395563.provenance : SequenceMachineLib.Provenance := .undefined

/-- A396090: Number of integer partitions of 2*n with reverse-alternating sum 6. -/
opaque A396090 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A396090.provenance : SequenceMachineLib.Provenance := .undefined

/-- A396478: Numbers k such that psi(k) has primitive roots (i.e., is in A033948), where psi = A002322. -/
opaque A396478 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A396478.provenance : SequenceMachineLib.Provenance := .undefined

/-- A396480: Primes p such that p-1 has primitive roots (i.e., is in A033948). -/
opaque A396480 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A396480.provenance : SequenceMachineLib.Provenance := .undefined

/-- A397496: Triangle read by rows: T(n, k) is the concatenation of numbers from n down to n + 1 - k, n >= k >= 1. -/
opaque A397496 : ℕ → ℤ

/-- Undefined: none of its formulas qualifies as a definition, so it is an opaque constant: other definitions can use it, but Lean knows nothing about its values. -/
def A397496.provenance : SequenceMachineLib.Provenance := .undefined

