import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A360402.P17555253377108157928

`A360392(A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360402.P17555253377108157928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A026430 (n + 1)).toNat

end

end A360402.P17555253377108157928

noncomputable section

/-- A360402: a(n) = A360392(A026430(n)).

Offset 1, canonical program `A360402.P17555253377108157928`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A360392(A026430(n+1))` (program `A360402.P17555253377108157928`, by `A360402.P17555253377108157928.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360402 (n : ℕ) : ℤ :=
  A360402.P17555253377108157928.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A360392(A026430(n+1))` (program `A360402.P17555253377108157928`, by `A360402.P17555253377108157928.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360402.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A353558.P5510355116585189927

`A000035(n+1)-A353557(n+1)`
-/

namespace A353558.P5510355116585189927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A353557 (n + 1)

end

end A353558.P5510355116585189927

noncomputable section

/-- A353558: a(n) = 1 if n is an odd number with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353558.P5510355116585189927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353558 (n : ℕ) : ℤ :=
  A353558.P5510355116585189927.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353644.P12499979160227092597

`A000010(n+1)/A353643(n+1)`
-/

namespace A353644.P12499979160227092597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P12499979160227092597

noncomputable section

/-- A353644: a(n) = phi(n) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353644.P12499979160227092597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353644.P12499979160227092597.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353646.P14527440753907412208

`A062401(n+1)/A353643(n+1)`
-/

namespace A353646.P14527440753907412208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P14527440753907412208

noncomputable section

/-- A353646: a(n) = phi(sigma(n)) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353646.P14527440753907412208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353646.P14527440753907412208.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358558.P4524358198685759852

`A049690(floor((n+1)/2))-A000523(n+1)`
-/

namespace A358558.P4524358198685759852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 ⌊(n + 1 : ℚ) / 2⌋.toNat - A000523 (n + 1)

end

end A358558.P4524358198685759852

noncomputable section

/-- A358558: a(n) is the number of pairs (k,m) of positive integers with 1 <= k < m <= n such that gcd(k,m) = 2^t, t > 0.

Offset 1, canonical program `A358558.P4524358198685759852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358558 (n : ℕ) : ℤ :=
  A358558.P4524358198685759852.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359162.P13529402606392842985

`A353557(n+1)-A359160(n+1)`
-/

namespace A359162.P13529402606392842985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A359160 (n + 1)

end

end A359162.P13529402606392842985

noncomputable section

/-- A359162: a(n) = 1 if n is a number of the form 4u+3 with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359162.P13529402606392842985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359162 (n : ℕ) : ℤ :=
  A359162.P13529402606392842985.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359378.P8655727792828051139

`A359170(n+1)-A359172(n+1)`
-/

namespace A359378.P8655727792828051139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (n + 1) - A359172 (n + 1)

end

end A359378.P8655727792828051139

noncomputable section

/-- A359378: Dirichlet inverse of A359377, where A359377(n) = 1 if 3*n is squarefree, otherwise 0.

Offset 1, canonical program `A359378.P8655727792828051139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359378 (n : ℕ) : ℤ :=
  A359378.P8655727792828051139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359465.P15801582525117201442

`A008966(n+1)*A353557(n+1)`
-/

namespace A359465.P15801582525117201442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A353557 (n + 1)

end

end A359465.P15801582525117201442

noncomputable section

/-- A359465: a(n) = 1 if n is an odd squarefree number with an even number of prime factors, otherwise 0.

Offset 1, canonical program `A359465.P15801582525117201442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359465 (n : ℕ) : ℤ :=
  A359465.P15801582525117201442.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359592.P9333331553555915030

`abs(A359591(n+1))`
-/

namespace A359592.P9333331553555915030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359591 (n + 1)|

end

end A359592.P9333331553555915030

noncomputable section

/-- A359592: Parity (and also absolute values) of Dirichlet inverse of A035263, where A035263(n) is parity of 2-adic valuation of 2n.

Offset 1, canonical program `A359592.P9333331553555915030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359592 (n : ℕ) : ℤ :=
  A359592.P9333331553555915030.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360134.P1092804426433472261

`A356133(1+A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360134.P1092804426433472261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (1 + A026430 (n + 1)).toNat

end

end A360134.P1092804426433472261

noncomputable section

/-- A360134: a(n) = A356133(1 + A026430(n)).

Offset 1, canonical program `A360134.P1092804426433472261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360134 (n : ℕ) : ℤ :=
  A360134.P1092804426433472261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360138.P2833924897830709977

`1+A026430(A356133(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360138.P2833924897830709977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026430 (A356133 (n + 1)).toNat

end

end A360138.P2833924897830709977

noncomputable section

/-- A360138: a(n) = 1 + A026430(A356133(n)).

Offset 1, canonical program `A360138.P2833924897830709977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360138 (n : ℕ) : ℤ :=
  A360138.P2833924897830709977.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360400.P9645885000250557637

`A356133(A360392(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360400.P9645885000250557637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A360392 (n + 1)).toNat

end

end A360400.P9645885000250557637

noncomputable section

/-- A360400: a(n) = A356133(A360392(n)).

Offset 1, canonical program `A360400.P9645885000250557637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360400 (n : ℕ) : ℤ :=
  A360400.P9645885000250557637.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360404.P16518747629998351864

`A360392(A356133(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360404.P16518747629998351864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A356133 (n + 1)).toNat

end

end A360404.P16518747629998351864

noncomputable section

/-- A360404: a(n) = A360392(A356133(n)).

Offset 1, canonical program `A360404.P16518747629998351864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360404 (n : ℕ) : ℤ :=
  A360404.P16518747629998351864.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360404.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374263.P12173342319894559668

`(A049690(n+2)-1)/2`
-/

namespace A374263.P12173342319894559668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049690 (n + 2) - 1 : ℚ) / 2

end

end A374263.P12173342319894559668

noncomputable section

/-- A374263: Number of distinct primitive Pythagorean triples (j^2 - k^2, 2*j*k, j^2 + k^2) where 1 <= k < j <= n.

Offset 2, canonical program `A374263.P12173342319894559668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374263.P12173342319894559668.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378548.P2736405864805168493

`∑{d}[n+1, A353557((n+1)/#)*#]`
-/

namespace A378548.P2736405864805168493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378548.P2736405864805168493

noncomputable section

/-- A378548: Sum of divisors d of n such that n/d is odd with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378548.P2736405864805168493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378548 (n : ℕ) : ℤ :=
  A378548.P2736405864805168493.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382511.P17328053456808510659

`(A069359(n+1)+A322078(n+1))/2`
-/

namespace A382511.P17328053456808510659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069359 (n + 1) + A322078 (n + 1) : ℚ) / 2

end

end A382511.P17328053456808510659

noncomputable section

/-- A382511: Expansion of Sum_{p prime} x^p / (1 - x^p)^3.

Offset 1, canonical program `A382511.P17328053456808510659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382511.P17328053456808510659.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387219.P4420504410131079771

`(-1)^A255070(n+1)`
-/

namespace A387219.P4420504410131079771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A255070 (n + 1) : ℤ)

end

end A387219.P4420504410131079771

noncomputable section

/-- A387219: Product of the first n terms of the paperfolding sequence A034947, or the Kronecker symbol (-1|n!).

Offset 1, canonical program `A387219.P4420504410131079771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387219 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387219.P4420504410131079771.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390806.P17797365199190271958

`(n+1+A008966(n+1))*A063659(n+1)/2`
-/

namespace A390806.P17797365199190271958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A008966 (n + 1)) * A063659 (n + 1) : ℚ) / 2

end

end A390806.P17797365199190271958

noncomputable section

/-- A390806: The sum of the integers k from 1 to n such that gcd(n, k) is squarefree (A005117).

Offset 1, canonical program `A390806.P17797365199190271958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390806 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390806.P17797365199190271958.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349396.P949036376249167062

`∑{d}[n+1, A055615(#)*A342001((n+1)/#)]`
-/

namespace A349396.P949036376249167062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349396.P949036376249167062

noncomputable section

/-- A349396: Dirichlet convolution of A342001 ({arithmetic derivative of n}/A003557(n)) with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349396.P949036376249167062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349396 (n : ℕ) : ℤ :=
  A349396.P949036376249167062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349909.P17520280238822638841

`A347870(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A349909.P17520280238822638841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A347870 (n + 1) + a (n - 1)

end

end A349909.P17520280238822638841

noncomputable section

/-- A349909: Partial sums of A347870; Number of terms of A347877 (numbers k with an odd arithmetic derivative of sigma(k)) in range 1..n.

Offset 1, canonical program `A349909.P17520280238822638841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349909 (n : ℕ) : ℤ :=
  A349909.P17520280238822638841.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353555.P6127306696939932195

`A065043(n+1)-A353557(n+1)`
-/

namespace A353555.P6127306696939932195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353557 (n + 1)

end

end A353555.P6127306696939932195

noncomputable section

/-- A353555: a(n) = 1 if n is an even number with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353555.P6127306696939932195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353555 (n : ℕ) : ℤ :=
  A353555.P6127306696939932195.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355689.P15683903993202269668

`A359156(n+1)-A359158(n+1)`
-/

namespace A355689.P15683903993202269668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (n + 1) - A359158 (n + 1)

end

end A355689.P15683903993202269668

noncomputable section

/-- A355689: Dirichlet inverse of A166486, characteristic function of numbers that are not multiples of 4.

Offset 1, canonical program `A355689.P15683903993202269668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355689 (n : ℕ) : ℤ :=
  A355689.P15683903993202269668.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360692.P11101891494698958030

`A101279(n+2)-1`
-/

namespace A360692.P11101891494698958030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (n + 2) - 1

end

end A360692.P11101891494698958030

noncomputable section

/-- A360692: a(0) = 0. Thereafter a(n+1) = a(a(n)) if a(n) has not occurred previously, otherwise a(n+1) = n - 1 - a(n-1).

Offset 0, canonical program `A360692.P11101891494698958030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360692 (n : ℕ) : ℤ :=
  A360692.P11101891494698958030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362412.P10869923801910997708

`(A001222(n+1)-A162642(n+1))/2`
-/

namespace A362412.P10869923801910997708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - A162642 (n + 1) : ℚ) / 2

end

end A362412.P10869923801910997708

noncomputable section

/-- A362412: The number of prime factors of the square root of the largest square dividing n, counted with multiplicity.

Offset 1, canonical program `A362412.P10869923801910997708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362412.P10869923801910997708.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366600.P10655762037839471457

`(1+A033264(n))*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366600.P10655762037839471457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A033264 n) * a (A053645 n).toNat

end

end A366600.P10655762037839471457

noncomputable section

/-- A366600: a(n) = (1 + A033264(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A366600.P10655762037839471457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366600 (n : ℕ) : ℤ :=
  A366600.P10655762037839471457.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368921.P16218200472489161701

`A003415(n)-A068346(n)`
-/

namespace A368921.P16218200472489161701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - A068346 n

end

end A368921.P16218200472489161701

noncomputable section

/-- A368921: a(n) = n' - n'', where n' is the arithmetic derivative of n, A003415(n) and n'' is its second arithmetic derivative, A068346(n).

Offset 0, canonical program `A368921.P16218200472489161701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368921 (n : ℕ) : ℤ :=
  A368921.P16218200472489161701.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368994.P10252783783940313295

`A121262(A342001(n+1))`
-/

namespace A368994.P10252783783940313295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A342001 (n + 1)).toNat

end

end A368994.P10252783783940313295

noncomputable section

/-- A368994: a(n) = 1 if A342001(k) is a multiple of four, and 0 otherwise.

Offset 1, canonical program `A368994.P10252783783940313295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368994 (n : ℕ) : ℤ :=
  A368994.P10252783783940313295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369008.P206606723966136315

`A085731(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369008.P206606723966136315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085731 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A369008.P206606723966136315

noncomputable section

/-- A369008: a(n) = A085731(n) / A003557(n).

Offset 1, canonical program `A369008.P206606723966136315`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369008.P206606723966136315.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369669.P5620005508573429478

`gcd(A003415(n), A068346(n))`
-/

namespace A369669.P5620005508573429478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A068346 n)

end

end A369669.P5620005508573429478

noncomputable section

/-- A369669: The greatest common divisor of the first and the second arithmetic derivative of n.

Offset 0, canonical program `A369669.P5620005508573429478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369669 (n : ℕ) : ℤ :=
  (A369669.P5620005508573429478.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373374.P7659164950999126342

`A059841(A373364(n+1))`
-/

namespace A373374.P7659164950999126342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A373364 (n + 1)).toNat

end

end A373374.P7659164950999126342

noncomputable section

/-- A373374: a(n) = 1 if both A001414(n) and A003415(n) are even, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373374.P7659164950999126342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373374 (n : ℕ) : ℤ :=
  A373374.P7659164950999126342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378542.P16518719972786175247

`A000203(n+1)-A378543(n+1)`
-/

namespace A378542.P16518719972786175247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378543 (n + 1)

end

end A378542.P16518719972786175247

noncomputable section

/-- A378542: Sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378542.P16518719972786175247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378542 (n : ℕ) : ℤ :=
  A378542.P16518719972786175247.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382723.P441862081197136108

`(A033264(n)+2)*2^(A000120(n)-1)`
-/

namespace A382723.P441862081197136108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033264 n + 2 : ℚ) * (2 : ℚ) ^ (A000120 n - 1 : ℤ)

end

end A382723.P441862081197136108

noncomputable section

/-- A382723: Number of entries in the n-th row of Pascal's triangle not divisible by 4.

Offset 0, canonical program `A382723.P441862081197136108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382723 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382723.P441862081197136108.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384056.P13183105280516576560

`(n+1)*A047994(n+1)/A384055(n+1)`
-/

namespace A384056.P13183105280516576560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A047994 (n + 1) : ℚ) / (A384055 (n + 1) : ℚ)

end

end A384056.P13183105280516576560

noncomputable section

/-- A384056: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a power of 2.

Offset 1, canonical program `A384056.P13183105280516576560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384056 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384056.P13183105280516576560.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390803.P15310609080008210001

`(n+1+A354354(n+1))*A384042(n+1)/2`
-/

namespace A390803.P15310609080008210001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A354354 (n + 1)) * A384042 (n + 1) : ℚ) / 2

end

end A390803.P15310609080008210001

noncomputable section

/-- A390803: The sum of the integers k from 1 to n such that gcd(n, k) is a 5-rough number (A007310).

Offset 1, canonical program `A390803.P15310609080008210001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390803 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390803.P15310609080008210001.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393435.P12847349373595133276

`(-1)^A033264(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393435.P12847349373595133276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A033264 n : ℤ)

end

end A393435.P12847349373595133276

noncomputable section

/-- A393435: a(n) = (-1)^A033264(n).

Offset 0, canonical program `A393435.P12847349373595133276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393435.P12847349373595133276.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397887.P4753864704729239179

`n+1+a(A026238(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397887.P4753864704729239179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A026238 (n + 1) - 1).toNat

end

end A397887.P4753864704729239179

noncomputable section

/-- A397887: a(1) = 1; a(n) = n + a(A026238(n)) for n > 1.

Offset 1, canonical program `A397887.P4753864704729239179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397887 (n : ℕ) : ℤ :=
  (A397887.P4753864704729239179.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400248.P4403918635695598036

`∑{d}[n+1, A055615((n+1)/#)*A085731(#)]`
-/

namespace A400248.P4403918635695598036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A085731 d

end

end A400248.P4403918635695598036

noncomputable section

/-- A400248: Dirichlet convolution of A085731 with A055615 (Dirichlet inverse of n), where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

Offset 1, canonical program `A400248.P4403918635695598036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400248 (n : ℕ) : ℤ :=
  A400248.P4403918635695598036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400249.P16858583021599629

`∑{d}[n+1, A008683((n+1)/#)*A085731(#)]`
-/

namespace A400249.P16858583021599629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A085731 d

end

end A400249.P16858583021599629

noncomputable section

/-- A400249: Möbius transform of A085731, where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

Offset 1, canonical program `A400249.P16858583021599629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400249 (n : ℕ) : ℤ :=
  A400249.P16858583021599629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349212.P10495563625750167007

`A001227(n+1)*(n+1+A007814(n+1))`
-/

namespace A349212.P10495563625750167007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * ((n + 1 : ℤ) + A007814 (n + 1))

end

end A349212.P10495563625750167007

noncomputable section

/-- A349212: a(n) = Sum_{d|n} n^(d mod 2).

Offset 1, canonical program `A349212.P10495563625750167007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349212 (n : ℕ) : ℤ :=
  A349212.P10495563625750167007.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349213.P11981718417061897043

`A001227(n+1)*(1+(n+1)*A007814(n+1))`
-/

namespace A349213.P11981718417061897043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * (1 + (n + 1 : ℤ) * A007814 (n + 1))

end

end A349213.P11981718417061897043

noncomputable section

/-- A349213: a(n) = Sum_{d|n} n^((d+1) mod 2).

Offset 1, canonical program `A349213.P11981718417061897043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349213 (n : ℕ) : ℤ :=
  A349213.P11981718417061897043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353374.P4573974283751582701

`A035263(n+1)*A065043(n+1)`
-/

namespace A353374.P4573974283751582701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A065043 (n + 1)

end

end A353374.P4573974283751582701

noncomputable section

/-- A353374: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an even number, otherwise 0.

Offset 1, canonical program `A353374.P4573974283751582701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353374 (n : ℕ) : ℤ :=
  A353374.P4573974283751582701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356006.P9495163879456603929

`A007814(n+1)+A007949(n+1)+A112765(n+1)`
-/

namespace A356006.P9495163879456603929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007949 (n + 1) + A112765 (n + 1)

end

end A356006.P9495163879456603929

noncomputable section

/-- A356006: The number of prime divisors of n that are not greater than 5, counted with multiplicity.

Offset 1, canonical program `A356006.P9495163879456603929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356006 (n : ℕ) : ℤ :=
  A356006.P9495163879456603929.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356274.P2384908976076462100

`1/(n+1)*∑{#}[n, n*(n+2)^A007814(#+1)+1]`
-/

namespace A356274.P2384908976076462100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), ((n : ℚ) * (n + 2 : ℚ) ^ (A007814 (k + 1) : ℤ) + 1))

end

end A356274.P2384908976076462100

noncomputable section

/-- A356274: a(n) is the number whose base-(n+1) expansion equals the binary expansion of n.

Offset 1, canonical program `A356274.P2384908976076462100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356274.P2384908976076462100.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358770.P14969810485770993373

`A035263(n+1)*A358769(n+1)`
-/

namespace A358770.P14969810485770993373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A358769 (n + 1)

end

end A358770.P14969810485770993373

noncomputable section

/-- A358770: a(n) = 1 if n is of the form p * m^2, where p is an odd prime and m is a natural number >= 1, otherwise 0.

Offset 1, canonical program `A358770.P14969810485770993373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358770 (n : ℕ) : ℤ :=
  A358770.P14969810485770993373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359430.P332625973379969903

`A267142(n)+A369658(n)`
-/

namespace A359430.P332625973379969903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 n + A369658 n

end

end A359430.P332625973379969903

noncomputable section

/-- A359430: a(n) = 1 if the arithmetic derivative of n is a multiple of 3, otherwise 0.

Offset 0, canonical program `A359430.P332625973379969903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359430 (n : ℕ) : ℤ :=
  A359430.P332625973379969903.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360323.P5397994935056253969

`A079458(A000040(n+1))`
-/

namespace A360323.P5397994935056253969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (A000040 (n + 1)).toNat

end

end A360323.P5397994935056253969

noncomputable section

/-- A360323: a(n) is the number of solutions to gcd(a^2 + b^2, p) = 1 where p is the n-th prime and 0 <= a,b <= p-1.

Offset 1, canonical program `A360323.P5397994935056253969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360323 (n : ℕ) : ℤ :=
  A360323.P5397994935056253969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360469.P3812770369488140680

`n+3-A007814(n+5)`
-/

namespace A360469.P3812770369488140680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A007814 (n + 5)

end

end A360469.P3812770369488140680

noncomputable section

/-- A360469: Only k >= 0 such that, for every odd r > 0, A093179(n) divides the generalized Fermat number (A007117(n)^r)^(2^k) + 1.

Offset 3, canonical program `A360469.P3812770369488140680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360469 (n : ℕ) : ℤ :=
  A360469.P3812770369488140680.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361025.P363613384465024841

`A007814(A000203(n+1))-A007814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361025.P363613384465024841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000203 (n + 1)).toNat - A007814 (n + 1)

end

end A361025.P363613384465024841

noncomputable section

/-- A361025: a(n) = A007814(sigma(n)) - A007814(n), where A007814(n) gives the 2-adic valuation of n, and sigma is the sum of divisors function.

Offset 1, canonical program `A361025.P363613384465024841`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000203(n+1))-A007814(n+1)` (program `A361025.P363613384465024841`, by `A361025.P363613384465024841.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A361025 (n : ℕ) : ℤ :=
  A361025.P363613384465024841.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000203(n+1))-A007814(n+1)` (program `A361025.P363613384465024841`, by `A361025.P363613384465024841.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A361025.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371093.P8625920196172340784

`A007814(A016777(n))`
-/

namespace A371093.P8625920196172340784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016777 n).toNat

end

end A371093.P8625920196172340784

noncomputable section

/-- A371093: a(n) is the 2-adic valuation of 3n+1.

Offset 0, canonical program `A371093.P8625920196172340784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371093 (n : ℕ) : ℤ :=
  A371093.P8625920196172340784.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372205.P8398281046845519076

`(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372205.P8398281046845519076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n * a (SequenceMachineLib.roundAway (((n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2)).toNat + a ⌊((2 * n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2⌋.toNat

end

end A372205.P8398281046845519076

noncomputable section

/-- A372205: a(n) = (-1)^n*a((n - 2^A007814(n))/2) + a(floor((2*n - 2^A007814(n))/2)) for n > 0 and a(0) = 1.

Offset 0, canonical program `A372205.P8398281046845519076`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` (program `A372205.P8398281046845519076`, by `A372205.P8398281046845519076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372205 (n : ℕ) : ℤ :=
  A372205.P8398281046845519076.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` (program `A372205.P8398281046845519076`, by `A372205.P8398281046845519076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372205.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373155.P8541549841256857123

`A011655(n+1)*A035263(n+1)`
-/

namespace A373155.P8541549841256857123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A035263 (n + 1)

end

end A373155.P8541549841256857123

noncomputable section

/-- A373155: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is even, otherwise 0.

Offset 1, canonical program `A373155.P8541549841256857123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373155 (n : ℕ) : ℤ :=
  A373155.P8541549841256857123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374113.P12323162382327089993

`A035263(n+1)*A373585(n+1)`
-/

namespace A374113.P12323162382327089993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A373585 (n + 1)

end

end A374113.P12323162382327089993

noncomputable section

/-- A374113: a(n) = 1 if A113177(n) and A276085(n) are both even, otherwise 0, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374113.P12323162382327089993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374113 (n : ℕ) : ℤ :=
  A374113.P12323162382327089993.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374216.P3301399781499645410

`A007814(A001414(n+2))`
-/

namespace A374216.P3301399781499645410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001414 (n + 2)).toNat

end

end A374216.P3301399781499645410

noncomputable section

/-- A374216: The 2-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

Offset 2, canonical program `A374216.P3301399781499645410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374216 (n : ℕ) : ℤ :=
  A374216.P3301399781499645410.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378888.P6768742438089139191

`gcd(n+1, A007814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378888.P6768742438089139191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007814 (n + 1))

end

end A378888.P6768742438089139191

noncomputable section

/-- A378888: a(n) = gcd(n, A007814(n)).

Offset 1, canonical program `A378888.P6768742438089139191`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A007814(n+1))` (program `A378888.P6768742438089139191`, by `A378888.P6768742438089139191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378888 (n : ℕ) : ℤ :=
  (A378888.P6768742438089139191.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A007814(n+1))` (program `A378888.P6768742438089139191`, by `A378888.P6768742438089139191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378888.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378998.P7086565219959481475

`A007814(A088580(n+1))`
-/

namespace A378998.P7086565219959481475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A088580 (n + 1)).toNat

end

end A378998.P7086565219959481475

noncomputable section

/-- A378998: Number of trailing 1-bits in the binary representation of sigma(n).

Offset 1, canonical program `A378998.P7086565219959481475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378998 (n : ℕ) : ℤ :=
  A378998.P7086565219959481475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388286.P13565212649214377843

`1/2*(A254503(n+1)+abs(A055615(n+1)))`
-/

namespace A388286.P13565212649214377843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A254503 (n + 1) + |A055615 (n + 1)| : ℚ)

end

end A388286.P13565212649214377843

noncomputable section

/-- A388286: Möbius transform of A325973, where A325973 is the arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors}.

Offset 1, canonical program `A388286.P13565212649214377843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388286.P13565212649214377843.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397779.P3478401780238339042

`a(n-3)+A007814(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A397779.P3478401780238339042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + A007814 n

end

end A397779.P3478401780238339042

noncomputable section

/-- A397779: 2-adic valuation of the triple factorial of n.

Offset 0, canonical program `A397779.P3478401780238339042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779 (n : ℕ) : ℤ :=
  A397779.P3478401780238339042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400413.P13849645286402086857

`∑{#}[n, 2^A007814(floor((n+1)/(#+1)))-1]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400413.P13849645286402086857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 : ℚ) ^ (A007814 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat : ℤ) - 1)

end

end A400413.P13849645286402086857

noncomputable section

/-- A400413: a(n) = Sum_{k=1..n} (2^A007814(floor(n/k)) - 1).

Offset 1, canonical program `A400413.P13849645286402086857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400413 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400413.P13849645286402086857.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400524.P13401482131933218640

`A007814(A005117(n+1)+1)`
-/

namespace A400524.P13401482131933218640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005117 (n + 1) + 1).toNat

end

end A400524.P13401482131933218640

noncomputable section

/-- A400524: The exponent of the highest power of 2 dividing the number following the n-th squarefree number.

Offset 1, canonical program `A400524.P13401482131933218640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400524 (n : ℕ) : ℤ :=
  A400524.P13401482131933218640.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400525.P4597029500458234892

`A007814(A005117(n+2)-1)`
-/

namespace A400525.P4597029500458234892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005117 (n + 2) - 1).toNat

end

end A400525.P4597029500458234892

noncomputable section

/-- A400525: The exponent of the highest power of 2 dividing the number preceding the n-th squarefree number.

Offset 2, canonical program `A400525.P4597029500458234892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400525 (n : ℕ) : ℤ :=
  A400525.P4597029500458234892.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373933.P14223243970326009727

`A373934(n+2)-A373934(n+1)`
-/

namespace A373933.P14223243970326009727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373934 (n + 2) - A373934 (n + 1)

end

end A373933.P14223243970326009727

noncomputable section

/-- A373933: Number of compositions of 7*n-1 into parts 6 and 7.

Offset 1, canonical program `A373933.P14223243970326009727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373933 (n : ℕ) : ℤ :=
  A373933.P14223243970326009727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349342.P11414406444135434568

`A026741(n+1)+A349341(n+1)`
-/

namespace A349342.P11414406444135434568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + A349341 (n + 1)

end

end A349342.P11414406444135434568

noncomputable section

/-- A349342: Sum of A026741 and its Dirichlet inverse.

Offset 1, canonical program `A349342.P11414406444135434568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349342 (n : ℕ) : ℤ :=
  A349342.P11414406444135434568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350700.P12913165554531738281

`Δ[A214923(abs(1-n))]`
-/

namespace A350700.P12913165554531738281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214923 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350700.P12913165554531738281

noncomputable section

/-- A350700: a(n) is the number of 1's minus the number of 0's in A004685(n).

Offset 0, canonical program `A350700.P12913165554531738281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350700 (n : ℕ) : ℤ :=
  A350700.P12913165554531738281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351114.P13024542866936842174

`A063524(A289412(n+1))`
-/

namespace A351114.P13024542866936842174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A289412 (n + 1)).toNat

end

end A351114.P13024542866936842174

noncomputable section

/-- A351114: Characteristic function of balanced numbers: a(n) = 1 if phi(n) divides sigma(n), otherwise 0.

Offset 1, canonical program `A351114.P13024542866936842174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351114 (n : ℕ) : ℤ :=
  A351114.P13024542866936842174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351604.P4214175923410223717

`∑{d}[n+1, A069091(#)*A351308((n+1)/#)]`
-/

namespace A351604.P4214175923410223717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069091 d * A351308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351604.P4214175923410223717

noncomputable section

/-- A351604: a(n) = n^6 * Sum_{d^2|n} 1 / d^6.

Offset 1, canonical program `A351604.P4214175923410223717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351604 (n : ℕ) : ℤ :=
  A351604.P4214175923410223717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352273.P15168054115810300813

`filter[A055048(n+1), A035263(#)]`
-/

namespace A352273.P15168054115810300813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A352273.P15168054115810300813

noncomputable section

/-- A352273: Numbers whose squarefree part is congruent to 5 modulo 6.

Offset 1, canonical program `A352273.P15168054115810300813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. -/
def A352273 (n : ℕ) : ℤ :=
  A352273.P15168054115810300813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. -/
def A352273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352291.P14610308504021664996

`A094694(eq[1, A094694(n+1)%2]+1)`
-/

namespace A352291.P14610308504021664996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094694 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352291.P14610308504021664996

noncomputable section

/-- A352291: Odd numbers k such that hammingweight(k^2) < hammingweight(k).

Offset 1, canonical program `A352291.P14610308504021664996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. -/
def A352291 (n : ℕ) : ℤ :=
  A352291.P14610308504021664996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. -/
def A352291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353137.P706346639936671998

`∩[A061771(n+1), A151800(A061771(n+1))]`
-/

namespace A353137.P706346639936671998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A061771 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353137.P706346639936671998

noncomputable section

/-- A353137: Primes whose gaps to both neighbor primes are powers of two.

Offset 1, canonical program `A353137.P706346639936671998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A353137 (n : ℕ) : ℤ :=
  (A353137.P706346639936671998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A353137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353498.P9279087021698104160

`and(A019427(n)²²², A318829(n+1))`
-/

namespace A353498.P9279087021698104160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((A019427 n ^ 2) ^ 2) ^ 2) (A318829 (n + 1))

end

end A353498.P9279087021698104160

noncomputable section

/-- A353498: a(n) = 1 if n > 1 and the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

Offset 1, canonical program `A353498.P9279087021698104160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498 (n : ℕ) : ℤ :=
  A353498.P9279087021698104160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354038.P758983584770723081

`lt[0, A354037(n+1)]+1`
-/

namespace A354038.P758983584770723081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354038.P758983584770723081

noncomputable section

/-- A354038: Numbers k such that sum of the proper divisors of k is a multiple of 4.

Offset 1, canonical program `A354038.P758983584770723081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354038 (n : ℕ) : ℤ :=
  (A354038.P758983584770723081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354098.P8617954858712711501

`lt[0, A354097(n+1)]+1`
-/

namespace A354098.P8617954858712711501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354098.P8617954858712711501

noncomputable section

/-- A354098: Numbers k such that the cototient of k (= k-phi(k)) is a multiple of 4.

Offset 1, canonical program `A354098.P8617954858712711501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354098 (n : ℕ) : ℤ :=
  (A354098.P8617954858712711501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357625.P1034363125234446896

`eq[1, A124754(and(n, A006068(n)))+1]`
-/

namespace A357625.P1034363125234446896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (A006068 n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357625.P1034363125234446896

noncomputable section

/-- A357625: Numbers k such that the k-th composition in standard order has half-alternating sum 0.

Offset 1, canonical program `A357625.P1034363125234446896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625 (n : ℕ) : ℤ :=
  (A357625.P1034363125234446896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358531.P7250430587380128327

`A258026(n+1)+2`
-/

namespace A358531.P7250430587380128327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1) + 2

end

end A358531.P7250430587380128327

noncomputable section

/-- A358531: Indices of the primes in A358530.

Offset 1, canonical program `A358531.P7250430587380128327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531 (n : ℕ) : ℤ :=
  A358531.P7250430587380128327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358680.P17815025508061281044

`A353494(n)+A353495(n)`
-/

namespace A358680.P17815025508061281044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n + A353495 n

end

end A358680.P17815025508061281044

noncomputable section

/-- A358680: a(n) = 1 if the arithmetic derivative of n is even, 0 otherwise.

Offset 0, canonical program `A358680.P17815025508061281044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680 (n : ℕ) : ℤ :=
  A358680.P17815025508061281044.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358772.P7530290515183113547

`eq[1, A353493(n)]`
-/

namespace A358772.P7530290515183113547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358772.P7530290515183113547

noncomputable section

/-- A358772: Numbers whose arithmetic derivative is of the form 4k+1, cf. A003415.

Offset 1, canonical program `A358772.P7530290515183113547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358772 (n : ℕ) : ℤ :=
  (A358772.P7530290515183113547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359121.P4053117108237885316

`∑[char[A068811(n+1)-1]]`
-/

namespace A359121.P4053117108237885316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359121.P4053117108237885316

noncomputable section

/-- A359121: a(n) = number of terms of A068811 that are <= n.

Offset 1, canonical program `A359121.P4053117108237885316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359121 (n : ℕ) : ℤ :=
  (A359121.P4053117108237885316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359123.P2533263003964580868

`A004525(A068811(n+2)-A068811(n+1))`
-/

namespace A359123.P2533263003964580868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A068811 (n + 2) - A068811 (n + 1)).toNat

end

end A359123.P2533263003964580868

noncomputable section

/-- A359123: First differences of A068811, halved.

Offset 1, canonical program `A359123.P2533263003964580868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359123 (n : ℕ) : ℤ :=
  A359123.P2533263003964580868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359161.P8726554361443463211

`filter[A091113(n+1), A353557(#)]`
-/

namespace A359161.P8726554361443463211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359161.P8726554361443463211

noncomputable section

/-- A359161: Numbers of the form 4u+1 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359161.P8726554361443463211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161 (n : ℕ) : ℤ :=
  A359161.P8726554361443463211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359163.P2654985658167397465

`filter[A091236(n+1), A353557(#)]`
-/

namespace A359163.P2654985658167397465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359163.P2654985658167397465

noncomputable section

/-- A359163: Numbers of the form 4u+3 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359163.P2654985658167397465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163 (n : ℕ) : ℤ :=
  A359163.P2654985658167397465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359381.P4166977693379255214

`lt[0, A359172(n+1)]+1`
-/

namespace A359381.P4166977693379255214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359381.P4166977693379255214

noncomputable section

/-- A359381: Nonmultiples of 3 that have an odd number of prime factors (with multiplicity).

Offset 1, canonical program `A359381.P4166977693379255214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359381 (n : ℕ) : ℤ :=
  (A359381.P4166977693379255214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359411.P11879795316904517508

`∏{e}[n+1, A092505(#)]`
-/

namespace A359411.P11879795316904517508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092505 (Nat.factorization (f1 n) p)

end

end A359411.P11879795316904517508

noncomputable section

/-- A359411: a(n) is the number of divisors of n that are both infinitary and exponential.

Offset 1, canonical program `A359411.P11879795316904517508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359411 (n : ℕ) : ℤ :=
  A359411.P11879795316904517508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359552.P1693999533399603662

`C(A085731(n+1), n+1)`
-/

namespace A359552.P1693999533399603662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085731 (n + 1)).toNat (n + 1)

end

end A359552.P1693999533399603662

noncomputable section

/-- A359552: Multiplicative with a(p^e) = 1 if e == 0 mod p, otherwise 0.

Offset 1, canonical program `A359552.P1693999533399603662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552 (n : ℕ) : ℤ :=
  (A359552.P1693999533399603662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360109.P9303785803174765081

`A166486(n)*A353494(n)`
-/

namespace A360109.P9303785803174765081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A353494 n

end

end A360109.P9303785803174765081

noncomputable section

/-- A360109: a(n) = 1 if n is not multiple of 4, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A360109.P9303785803174765081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109 (n : ℕ) : ℤ :=
  A360109.P9303785803174765081.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360125.P8640991440014561384

`A319684(gcd(xor(1, n²), ∑[n]))%2`
-/

namespace A360125.P8640991440014561384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319684 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A360125.P8640991440014561384

noncomputable section

/-- A360125: Parity of A359425, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360125.P8640991440014561384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125 (n : ℕ) : ℤ :=
  A360125.P8640991440014561384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360390.P9795167924610291332

`∑[A359485(n+1)]`
-/

namespace A360390.P9795167924610291332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360390.P9795167924610291332

noncomputable section

/-- A360390: a(1) = 1; a(n) = -Sum_{k=2..n} k^2 * a(floor(n/k)).

Offset 1, canonical program `A360390.P9795167924610291332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390 (n : ℕ) : ℤ :=
  A360390.P9795167924610291332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360396.P1664411454202365035

`∩[A356133(n+1), A360392(n+1)]`
-/

namespace A360396.P1664411454202365035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360396.P1664411454202365035

noncomputable section

/-- A360396: Intersection of A356133 and A360392.

Offset 1, canonical program `A360396.P1664411454202365035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A360396 (n : ℕ) : ℤ :=
  (A360396.P1664411454202365035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A360396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360397.P4343971559024488872

`record[(n+1)*(A316826(n)+1)-2]`
-/

namespace A360397.P4343971559024488872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A316826 n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360397.P4343971559024488872

noncomputable section

/-- A360397: Intersection of A356133 and A360393.

Offset 1, canonical program `A360397.P4343971559024488872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A360397 (n : ℕ) : ℤ :=
  A360397.P4343971559024488872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A360397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361123.P17185907231639651446

`1-A361122(n+1)`
-/

namespace A361123.P17185907231639651446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361122 (n + 1)

end

end A361123.P17185907231639651446

noncomputable section

/-- A361123: 1 if n-th composite number A002808(n) is divisible by 3, otherwise 0.

Offset 1, canonical program `A361123.P17185907231639651446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123 (n : ℕ) : ℤ :=
  A361123.P17185907231639651446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361338.P12830044282010602030

`A122856(C(floor(n/2), 56))`
-/

namespace A361338.P12830044282010602030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56)

end

end A361338.P12830044282010602030

noncomputable section

/-- A361338: Number of different single-digit numbers that can be reached from n by any permissible sequence of split-and-multiply operations.

Offset 0, canonical program `A361338.P12830044282010602030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338 (n : ℕ) : ℤ :=
  A361338.P12830044282010602030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362934.P7877997360191221463

`A000982(n+1)-A132188(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362934.P7877997360191221463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A132188 (n + 1)

end

end A362934.P7877997360191221463

noncomputable section

/-- A362934: a(n) = A000982(n) - A132188(n).

Offset 1, canonical program `A362934.P7877997360191221463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362934 (n : ℕ) : ℤ :=
  A362934.P7877997360191221463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363037.P17593486041959232839

`A188169(n+1)-A188171(n+1)`
-/

namespace A363037.P17593486041959232839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) - A188171 (n + 1)

end

end A363037.P17593486041959232839

noncomputable section

/-- A363037: Expansion of Sum_{k>0} x^k / (1 + x^(4*k)).

Offset 1, canonical program `A363037.P17593486041959232839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037 (n : ℕ) : ℤ :=
  A363037.P17593486041959232839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363718.P3369360157164842008

`Δ[record[A268289(n)]]`
-/

namespace A363718.P3369360157164842008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363718.P3369360157164842008

noncomputable section

/-- A363718: Irregular triangle read by rows. An infinite binary tree which has root node 1 in row n = 0. Each node then has left child m-1 if greater than 0 and right child m+1, where m is the value of the parent node.

Offset 0, canonical program `A363718.P3369360157164842008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A363718 (n : ℕ) : ℤ :=
  A363718.P3369360157164842008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A363718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365170.P4762611898248662452

`∑{d}[n+1, A254503(#)*A295295((n+1)/#)]`
-/

namespace A365170.P4762611898248662452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A295295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365170.P4762611898248662452

noncomputable section

/-- A365170: The sum of divisors d of n such that gcd(d, n/d) is squarefree.

Offset 1, canonical program `A365170.P4762611898248662452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365170 (n : ℕ) : ℤ :=
  A365170.P4762611898248662452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365683.P17416909633654039468

`A000190((n+1)*A053166(n+1))`
-/

namespace A365683.P17416909633654039468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 ((n + 1 : ℤ) * A053166 (n + 1)).toNat

end

end A365683.P17416909633654039468

noncomputable section

/-- A365683: The largest exponentially squarefree divisor of n.

Offset 1, canonical program `A365683.P17416909633654039468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A365683 (n : ℕ) : ℤ :=
  A365683.P17416909633654039468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A365683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366721.P14264005158293563005

`∑[char[A102477(A054541(3*n+4))]]+1`
-/

namespace A366721.P14264005158293563005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (A054541 (3 * n + 4)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A366721.P14264005158293563005

noncomputable section

/-- A366721: Number of digits left of the radix point of n when written in base Pi using a greedy algorithm representation.

Offset 0, canonical program `A366721.P14264005158293563005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366721 (n : ℕ) : ℤ :=
  (A366721.P14264005158293563005.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366840.P17137846369514752914

`A100006(n+1)-A366839(n+1)`
-/

namespace A366840.P17137846369514752914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A366839 (n + 1)

end

end A366840.P17137846369514752914

noncomputable section

/-- A366840: Sum of odd prime factors of n, counted with multiplicity.

Offset 1, canonical program `A366840.P17137846369514752914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366840 (n : ℕ) : ℤ :=
  A366840.P17137846369514752914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367516.P12997703582462291800

`2^A367512(n+1)`
-/

namespace A367516.P12997703582462291800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A367512 (n + 1) : ℤ)

end

end A367516.P12997703582462291800

noncomputable section

/-- A367516: The number of unitary divisors of n that are exponentially evil numbers (A262675).

Offset 1, canonical program `A367516.P12997703582462291800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367516 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367516.P12997703582462291800.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368533.P3880062833887801388

`eq[A007913(A271410(n)), A271410(n)]`
-/

namespace A368533.P3880062833887801388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A271410 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368533.P3880062833887801388

noncomputable section

/-- A368533: Numbers whose binary indices are all squarefree.

Offset 1, canonical program `A368533.P3880062833887801388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A368533 (n : ℕ) : ℤ :=
  (A368533.P3880062833887801388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A368533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368810.P15557103798044834844

`A096617(n+1)*A297382(n+1)`
-/

namespace A368810.P15557103798044834844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096617 (n + 1) * A297382 (n + 1)

end

end A368810.P15557103798044834844

noncomputable section

/-- A368810: a(n) = numerator of Sum_{i=1..n} Sum_{j=1..n} (1/i + 1/j).

Offset 1, canonical program `A368810.P15557103798044834844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A368810 (n : ℕ) : ℤ :=
  A368810.P15557103798044834844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A368810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369048.P3645363535030871227

`ceil(A168036(n)/record[xor(7, n)])`
-/

namespace A369048.P3645363535030871227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A369048.P3645363535030871227

noncomputable section

/-- A369048: a(n) = 1 if the arithmetic derivative of n is greater than n, otherwise 0.

Offset 0, canonical program `A369048.P3645363535030871227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048 (n : ℕ) : ℤ :=
  A369048.P3645363535030871227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369189.P17989487729230229152

`A185027(∏{p}[n+1, #])`
-/

namespace A369189.P17989487729230229152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A369189.P17989487729230229152

noncomputable section

/-- A369189: Sum of the squarefree triangular divisors of n.

Offset 1, canonical program `A369189.P17989487729230229152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189 (n : ℕ) : ℤ :=
  A369189.P17989487729230229152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369659.P4114768482975404549

`eq[1, A369658(n)]`
-/

namespace A369659.P4114768482975404549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369659.P4114768482975404549

noncomputable section

/-- A369659: Non-multiples of 3 whose arithmetic derivative, or equally, the sum of prime factors (with multiplicity) is a multiple of 3.

Offset 1, canonical program `A369659.P4114768482975404549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369659 (n : ℕ) : ℤ :=
  (A369659.P4114768482975404549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369904.P7842773644825472258

`∑{d}[n+1, #*A322078((n+1)/#)]`
-/

namespace A369904.P7842773644825472258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A322078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P7842773644825472258

noncomputable section

/-- A369904: a(n) = n * Sum_{p|n, p prime} sigma(n/p) / p.

Offset 1, canonical program `A369904.P7842773644825472258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369904 (n : ℕ) : ℤ :=
  A369904.P7842773644825472258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369968.P13152354729471573061

`A011558(n)*A369967(n)`
-/

namespace A369968.P13152354729471573061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n * A369967 n

end

end A369968.P13152354729471573061

noncomputable section

/-- A369968: a(n) = 1 if n is not multiple of 5, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A369968.P13152354729471573061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369968 (n : ℕ) : ℤ :=
  A369968.P13152354729471573061.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370597.P7414276233010119171

`record[root(A000027(2*(n+1)), A378887(n+1))]`
-/

namespace A370597.P7414276233010119171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℝ) ^ (1 / (A378887 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370597.P7414276233010119171

noncomputable section

/-- A370597: Even numbers k such that gcd(k, A007814(k)) = 1.

Offset 1, canonical program `A370597.P7414276233010119171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370597.P7414276233010119171.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371201.P4499511649538821653

`A138383(n)-A054541(n+1)`
-/

namespace A371201.P4499511649538821653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n - A054541 (n + 1)

end

end A371201.P4499511649538821653

noncomputable section

/-- A371201: a(n) = Sum_{k=prime(n)..prime(n+1)-1} k, with a(0) = 1.

Offset 0, canonical program `A371201.P4499511649538821653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371201 (n : ℕ) : ℤ :=
  A371201.P4499511649538821653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371492.P8329581871496110581

`∑{d}[n+1, A053191(#)*A084218((n+1)/#)]`
-/

namespace A371492.P8329581871496110581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A084218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371492.P8329581871496110581

noncomputable section

/-- A371492: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, n) )^2.

Offset 1, canonical program `A371492.P8329581871496110581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371492 (n : ℕ) : ℤ :=
  A371492.P8329581871496110581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372538.P6016142959646065391

`eq[1, A372516(n+1)]+1`
-/

namespace A372538.P6016142959646065391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372538.P6016142959646065391

noncomputable section

/-- A372538: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is 1.

Offset 1, canonical program `A372538.P6016142959646065391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A372538 (n : ℕ) : ℤ :=
  (A372538.P6016142959646065391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A372538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372539.P15910707666179442912

`A000720(A095072(n+1))`
-/

namespace A372539.P15910707666179442912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095072 (n + 1)).toNat

end

end A372539.P15910707666179442912

noncomputable section

/-- A372539: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is -1.

Offset 1, canonical program `A372539.P15910707666179442912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. -/
def A372539 (n : ℕ) : ℤ :=
  A372539.P15910707666179442912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. -/
def A372539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372962.P14331124591361525302

`∑{d}[n+1, A084218(#)*A238533((n+1)/#)]`
-/

namespace A372962.P14331124591361525302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372962.P14331124591361525302

noncomputable section

/-- A372962: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( n/gcd(x_1, x_2, x_3, n) )^2.

Offset 1, canonical program `A372962.P14331124591361525302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372962 (n : ℕ) : ℤ :=
  A372962.P14331124591361525302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373040.P10623131507799743519

`(A084218(n+1)-1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373040.P10623131507799743519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084218 (n + 1) - 1 : ℚ) / 12

end

end A373040.P10623131507799743519

noncomputable section

/-- A373040: a(n) = (A084218(n) - 1)/12.

Offset 1, canonical program `A373040.P10623131507799743519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373040.P10623131507799743519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373060.P5015462163291241472

`∑{d}[n+1, A053191(#)*A350156((n+1)/#)]`
-/

namespace A373060.P5015462163291241472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373060.P5015462163291241472

noncomputable section

/-- A373060: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, n)/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A373060.P5015462163291241472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373060 (n : ℕ) : ℤ :=
  A373060.P5015462163291241472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373082.P13712031001074262158

`A087116(xor(n, floor(n/2)))`
-/

namespace A373082.P13712031001074262158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A373082.P13712031001074262158

noncomputable section

/-- A373082: Number of runs of 0's in A014550(n).

Offset 0, canonical program `A373082.P13712031001074262158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A373082 (n : ℕ) : ℤ :=
  A373082.P13712031001074262158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A373082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373130.P1368605892545228178

`∑{d}[n+1, A000056(#)*A372998((n+1)/#)]`
-/

namespace A373130.P1368605892545228178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A372998 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373130.P1368605892545228178

noncomputable section

/-- A373130: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} sigma( n/gcd(x_1, x_2, x_3, n) ).

Offset 1, canonical program `A373130.P1368605892545228178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373130 (n : ℕ) : ℤ :=
  A373130.P1368605892545228178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373260.P13345870415244065994

`A372573(3*(n+1))`
-/

namespace A373260.P13345870415244065994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (3 * (n + 1))

end

end A373260.P13345870415244065994

noncomputable section

/-- A373260: a(n) = 1 if A276085(n) == +1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373260.P13345870415244065994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260 (n : ℕ) : ℤ :=
  A373260.P13345870415244065994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373261.P11625810487040253736

`eq[1, A373153(n+1)]+1`
-/

namespace A373261.P11625810487040253736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373261.P11625810487040253736

noncomputable section

/-- A373261: Numbers k for which A276085(k) == +1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373261.P11625810487040253736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261 (n : ℕ) : ℤ :=
  (A373261.P11625810487040253736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373262.P3920179608283670955

`lt[A373153(n+1), 0]+1`
-/

namespace A373262.P3920179608283670955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373262.P3920179608283670955

noncomputable section

/-- A373262: Numbers k for which A276085(k) == -1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373262.P3920179608283670955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373262 (n : ℕ) : ℤ :=
  (A373262.P3920179608283670955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373279.P11473354882696235237

`∑{d}[n+1, #*A046211(#)]`
-/

namespace A373279.P11473354882696235237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046211 d

end

end A373279.P11473354882696235237

noncomputable section

/-- A373279: Expansion of Sum_{k>=0} x^(3^k) / (1 - 3*x^(3^k)).

Offset 1, canonical program `A373279.P11473354882696235237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373279 (n : ℕ) : ℤ :=
  A373279.P11473354882696235237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373281.P14728433294096842931

`∑{d}[n+1, #*A054662(#)]`
-/

namespace A373281.P14728433294096842931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A054662 d

end

end A373281.P14728433294096842931

noncomputable section

/-- A373281: Expansion of Sum_{k>=0} x^(5^k) / (1 - 5*x^(5^k)).

Offset 1, canonical program `A373281.P14728433294096842931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373281 (n : ℕ) : ℤ :=
  A373281.P14728433294096842931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373308.P3476267260338702901

`∑{#}[n, A106400(#)*A106407(n-#+1)]`
-/

namespace A373308.P3476267260338702901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A106400 k * A106407 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A373308.P3476267260338702901

noncomputable section

/-- A373308: Expansion of Product_{n>=0} (1 - x^(2^n))^3.

Offset 0, canonical program `A373308.P3476267260338702901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373308 (n : ℕ) : ℤ :=
  A373308.P3476267260338702901.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373477.P8315579709806562220

`A079978(A373364(n+1))`
-/

namespace A373477.P8315579709806562220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373364 (n + 1)).toNat

end

end A373477.P8315579709806562220

noncomputable section

/-- A373477: a(n) = 1 if A001414(n) and A003415(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373477.P8315579709806562220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477 (n : ℕ) : ℤ :=
  A373477.P8315579709806562220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373481.P1918728620852161106

`C(A373364(n+1), A001414(n+1))`
-/

namespace A373481.P1918728620852161106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373364 (n + 1)).toNat (A001414 (n + 1)).toNat

end

end A373481.P1918728620852161106

noncomputable section

/-- A373481: a(n) = 1 if A003415(n) is a multiple of A001414(n), otherwise 0, where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 1, canonical program `A373481.P1918728620852161106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373481 (n : ℕ) : ℤ :=
  (A373481.P1918728620852161106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373493.P17147766796197231588

`A079978(A373378(n+1))`
-/

namespace A373493.P17147766796197231588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373378 (n + 1)).toNat

end

end A373493.P17147766796197231588

noncomputable section

/-- A373493: a(n) = 1 if A059975(n) and A003415(n) are both multiples of 3, otherwise 0, where A059975 is fully additive with a(p) = p-1, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373493.P17147766796197231588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373493 (n : ℕ) : ℤ :=
  A373493.P17147766796197231588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373592.P4059303154280305185

`A001222(n+1)-(A007949(n+1)+A373591(n+1))`
-/

namespace A373592.P4059303154280305185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (A007949 (n + 1) + A373591 (n + 1))

end

end A373592.P4059303154280305185

noncomputable section

/-- A373592: Number of primes congruent to 2 modulo 3 dividing n (with multiplicity).

Offset 1, canonical program `A373592.P4059303154280305185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373592 (n : ℕ) : ℤ :=
  A373592.P4059303154280305185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373834.P8702571557965328653

`(16^A373832(round(sqrt(n²+1))))%4`
-/

namespace A373834.P8702571557965328653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((16 : ℚ) ^ (A373832 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℤ))) 4

end

end A373834.P8702571557965328653

noncomputable section

/-- A373834: a(n) = 1 if n is a multiple of A276150(n), otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373834.P8702571557965328653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373834 (n : ℕ) : ℤ :=
  A373834.P8702571557965328653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373838.P492642340660410059

`A079978(A373833(n))`
-/

namespace A373838.P492642340660410059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373833 n).toNat

end

end A373838.P492642340660410059

noncomputable section

/-- A373838: a(n) = 1 if n and A276150(n) are both multiples of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373838.P492642340660410059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373838 (n : ℕ) : ℤ :=
  A373838.P492642340660410059.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373841.P18437281871460807394

`eq[n, n*A373840(n)]`
-/

namespace A373841.P18437281871460807394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373841.P18437281871460807394

noncomputable section

/-- A373841: Numbers whose digital sum in the primorial base is a multiple of 3.

Offset 1, canonical program `A373841.P18437281871460807394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373841 (n : ℕ) : ℤ :=
  (A373841.P18437281871460807394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374042.P17381506644215364162

`filter[A074232(n+1), A372573(#)]`
-/

namespace A374042.P17381506644215364162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A374042.P17381506644215364162

noncomputable section

/-- A374042: Numbers k such that A276085(k) and A328768(k) are both multiples of 3, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A374042.P17381506644215364162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6312 terms. -/
def A374042 (n : ℕ) : ℤ :=
  A374042.P17381506644215364162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6312 terms. -/
def A374042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374206.P12143354826922197723

`A007814(A113177(n+2))`
-/

namespace A374206.P12143354826922197723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113177 (n + 2)).toNat

end

end A374206.P12143354826922197723

noncomputable section

/-- A374206: The 2-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 2, canonical program `A374206.P12143354826922197723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374206 (n : ℕ) : ℤ :=
  A374206.P12143354826922197723.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374534.P17728637451671606639

`∑[A111938(n+1)]-A111938(n+1)`
-/

namespace A374534.P17728637451671606639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111938 (n + 1)

end

end A374534.P17728637451671606639

noncomputable section

/-- A374534: Expansion of (x/(4 * (1-x))) * d/dx(theta_3(x)^2).

Offset 0, canonical program `A374534.P17728637451671606639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534 (n : ℕ) : ℤ :=
  A374534.P17728637451671606639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375008.P4839878587626124872

`A046301(A333231(n+1))`
-/

namespace A375008.P4839878587626124872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (A333231 (n + 1)).toNat

end

end A375008.P4839878587626124872

noncomputable section

/-- A375008: Products m of k = 3 consecutive primes p_1..p_k, where only p_1 < m^(1/k).

Offset 1, canonical program `A375008.P4839878587626124872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008 (n : ℕ) : ℤ :=
  A375008.P4839878587626124872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377019.P8238063563762477433

`eq[A001221(n+1), A376885(n+1)]+1`
-/

namespace A377019.P8238063563762477433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A377019.P8238063563762477433

noncomputable section

/-- A377019: Numbers whose prime factorization has exponents that are all factorial numbers.

Offset 1, canonical program `A377019.P8238063563762477433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019 (n : ℕ) : ℤ :=
  (A377019.P8238063563762477433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377356.P5890288277493149309

`A002110(n)*A099795(n+1)`
-/

namespace A377356.P5890288277493149309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A099795 (n + 1)

end

end A377356.P5890288277493149309

noncomputable section

/-- A377356: a(n) = Product{i = 1..(n-1)} prime(i)^e_i, where prime(i)^e_i is the smallest power of prime(i) which exceeds prime(n).

Offset 1, canonical program `A377356.P5890288277493149309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377356 (n : ℕ) : ℤ :=
  A377356.P5890288277493149309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378298.P155601813315861815

`(A062803(n+1)-(n+1))/2`
-/

namespace A378298.P155601813315861815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062803 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A378298.P155601813315861815

noncomputable section

/-- A378298: Number of solutions that satisfy the congruence: i^2 == j^2 (mod n) with 1 <= i < j <= n.

Offset 1, canonical program `A378298.P155601813315861815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378298.P155601813315861815.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378443.P3282744420953376765

`∑{d}[n+1, A372573(#)]`
-/

namespace A378443.P3282744420953376765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372573 d

end

end A378443.P3282744420953376765

noncomputable section

/-- A378443: Inverse Möbius transform of A372573.

Offset 1, canonical program `A378443.P3282744420953376765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378443 (n : ℕ) : ℤ :=
  A378443.P3282744420953376765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378784.P5059854642230422677

`A164677(n)+a(n-1)` with `a(0)=1`
-/

namespace A378784.P5059854642230422677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164677 n + a (n - 1)

end

end A378784.P5059854642230422677

noncomputable section

/-- A378784: a(1)=1, a(2)=2, then the terms from a(2^k + 1) to a(2^(k+1)) are the first 2^k terms in reverse order, increased by a(2^k).

Offset 1, canonical program `A378784.P5059854642230422677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A378784 (n : ℕ) : ℤ :=
  A378784.P5059854642230422677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A378784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379705.P4574485097972664711

`A242219(n+1)²/(n+1)`
-/

namespace A379705.P4574485097972664711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242219 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A379705.P4574485097972664711

noncomputable section

/-- A379705: a(n) is the least integer k > n such that integers p, q exist for which n, p, k are in arithmetic and n, q, k are in geometric progression.

Offset 1, canonical program `A379705.P4574485097972664711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379705.P4574485097972664711.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381920.P15799259453814782413

`∩[A333771(n+1), A000384(n)]`
-/

namespace A381920.P15799259453814782413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P15799259453814782413

noncomputable section

/-- A381920: Hexagonal numbers that are products of exactly four distinct primes.

Offset 1, canonical program `A381920.P15799259453814782413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A381920 (n : ℕ) : ℤ :=
  (A381920.P15799259453814782413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A381920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382419.P6079477750325987353

`2^A376366(n+1)`
-/

namespace A382419.P6079477750325987353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A376366 (n + 1) : ℤ)

end

end A382419.P6079477750325987353

noncomputable section

/-- A382419: The product of exponents in the prime factorization of the cubefree numbers.

Offset 1, canonical program `A382419.P6079477750325987353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382419.P6079477750325987353.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382890.P5080446729015347365

`sqrt(A382889(n+1))`
-/

namespace A382890.P5080446729015347365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382889 (n + 1) : ℝ)

end

end A382890.P5080446729015347365

noncomputable section

/-- A382890: The square root of the largest square dividing the n-th cubefree number.

Offset 1, canonical program `A382890.P5080446729015347365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382890 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382890.P5080446729015347365.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382891.P5915587379995941909

`A004709(n+1)/A382889(n+1)`
-/

namespace A382891.P5915587379995941909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) / (A382889 (n + 1) : ℚ)

end

end A382891.P5915587379995941909

noncomputable section

/-- A382891: The powerfree part of the n-th cubefree number.

Offset 1, canonical program `A382891.P5915587379995941909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382891.P5915587379995941909.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382968.P9973608297298639006

`A056170(A382967(n+1))`
-/

namespace A382968.P9973608297298639006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A382967 (n + 1)).toNat

end

end A382968.P9973608297298639006

noncomputable section

/-- A382968: The number of non-unitary prime divisors of the n-th biquadratefree number that is not squarefree.

Offset 1, canonical program `A382968.P9973608297298639006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382968 (n : ℕ) : ℤ :=
  A382968.P9973608297298639006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383004.P7561396610622061570

`A007814(A004709(n+1))`
-/

namespace A383004.P7561396610622061570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004709 (n + 1)).toNat

end

end A383004.P7561396610622061570

noncomputable section

/-- A383004: Exponent of the highest power of 2 dividing the n-th cubefree number.

Offset 1, canonical program `A383004.P7561396610622061570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383004 (n : ℕ) : ℤ :=
  A383004.P7561396610622061570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383032.P9967081723231949955

`A007814(A028982(n+1))`
-/

namespace A383032.P9967081723231949955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A028982 (n + 1)).toNat

end

end A383032.P9967081723231949955

noncomputable section

/-- A383032: Exponent of the highest power of 2 dividing the n-th number that is either a square or twice a square.

Offset 1, canonical program `A383032.P9967081723231949955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383032 (n : ℕ) : ℤ :=
  A383032.P9967081723231949955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383685.P17659077601752719078

`A000040(lt[A054541(n+1), A038194(n+1)])`
-/

namespace A383685.P17659077601752719078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383685.P17659077601752719078

noncomputable section

/-- A383685: The lesser of two consecutive primes whose gap equals the difference between their digital roots.

Offset 1, canonical program `A383685.P17659077601752719078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A383685 (n : ℕ) : ℤ :=
  A383685.P17659077601752719078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A383685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384021.P7727466552774279921

`∪[A000079(n), A164874(n+1)]`
-/

namespace A384021.P7727466552774279921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384021.P7727466552774279921

noncomputable section

/-- A384021: Powers of 2 along with numbers one power of 2 less than binary repunits, but the power of two subtracted does not flip the leading bit.

Offset 1, canonical program `A384021.P7727466552774279921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A384021 (n : ℕ) : ℤ :=
  (A384021.P7727466552774279921.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A384021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386259.P13017037285920601135

`A007814(A066301(n+1)+1)`
-/

namespace A386259.P13017037285920601135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A066301 (n + 1) + 1).toNat

end

end A386259.P13017037285920601135

noncomputable section

/-- A386259: Exponent of the highest power of 2 dividing the maximum exponent in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A386259.P13017037285920601135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386259 (n : ℕ) : ℤ :=
  A386259.P13017037285920601135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386536.P5039393821723974418

`A007814(A067259(n+1))`
-/

namespace A386536.P5039393821723974418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A067259 (n + 1)).toNat

end

end A386536.P5039393821723974418

noncomputable section

/-- A386536: Exponent of the highest power of 2 dividing the n-th number that is cubefree but not squarefree.

Offset 1, canonical program `A386536.P5039393821723974418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386536 (n : ℕ) : ℤ :=
  A386536.P5039393821723974418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387216.P11263226985652021586

`lt[1, A373591(A004277(n))]`
-/

namespace A387216.P11263226985652021586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373591 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387216.P11263226985652021586

noncomputable section

/-- A387216: Numbers that have at least two prime factors (counting multiplicity) congruent to 1 mod 3.

Offset 1, canonical program `A387216.P11263226985652021586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1390 terms. -/
def A387216 (n : ℕ) : ℤ :=
  (A387216.P11263226985652021586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1390 terms. -/
def A387216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387349.P7395513142153534106

`comp[A190429(n+1)]+1`
-/

namespace A387349.P7395513142153534106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387349.P7395513142153534106

noncomputable section

/-- A387349: Positions of 0's in A387348.

Offset 1, canonical program `A387349.P7395513142153534106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A387349 (n : ℕ) : ℤ :=
  (A387349.P7395513142153534106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A387349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388044.P13308265605785602702

`A010846(eq[1, A056671(n+1)]+1)`
-/

namespace A388044.P13308265605785602702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A388044.P13308265605785602702

noncomputable section

/-- A388044: a(n) = number of k <= m such that rad(k) | m, where m = A001694(n) and rad(n) = A007947(n).

Offset 1, canonical program `A388044.P13308265605785602702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A388044 (n : ℕ) : ℤ :=
  A388044.P13308265605785602702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A388044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389947.P9755762612582178396

`A332785(n+1)²`
-/

namespace A389947.P9755762612582178396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) ^ 2

end

end A389947.P9755762612582178396

noncomputable section

/-- A389947: Squares of nonsquarefree numbers k that are not squareful.

Offset 1, canonical program `A389947.P9755762612582178396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389947 (n : ℕ) : ℤ :=
  A389947.P9755762612582178396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390692.P5551387115142065116

`A343430(A007913(n+1))`
-/

namespace A390692.P5551387115142065116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A007913 (n + 1)).toNat

end

end A390692.P5551387115142065116

noncomputable section

/-- A390692: a(n) is the smallest positive integer such that a(n) * n is a Loeschian number (A003136).

Offset 1, canonical program `A390692.P5551387115142065116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390692 (n : ℕ) : ℤ :=
  A390692.P5551387115142065116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391026.P7612980702264081441

`filter[A332785(n+1), A354034(#)]`
-/

namespace A391026.P7612980702264081441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A391026.P7612980702264081441

noncomputable section

/-- A391026: Even numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391026.P7612980702264081441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. -/
def A391026 (n : ℕ) : ℤ :=
  A391026.P7612980702264081441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. -/
def A391026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391211.P8292871902387921407

`A054541(A121543(n+2))`
-/

namespace A391211.P8292871902387921407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A121543 (n + 2)).toNat

end

end A391211.P8292871902387921407

noncomputable section

/-- A391211: Difference between A333242(n) and the next lower prime number.

Offset 2, canonical program `A391211.P8292871902387921407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8935 terms. -/
def A391211 (n : ℕ) : ℤ :=
  A391211.P8292871902387921407.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8935 terms. -/
def A391211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391712.P957787148813764837

`A000045(A063745(n+1))`
-/

namespace A391712.P957787148813764837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A063745 (n + 1)).toNat

end

end A391712.P957787148813764837

noncomputable section

/-- A391712: Fibonacci numbers whose indices are even positive numbers with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A391712.P957787148813764837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391712 (n : ℕ) : ℤ :=
  A391712.P957787148813764837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392450.P7898530236286233614

`∏{e}[n+1, A056671(#)]`
-/

namespace A392450.P7898530236286233614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056671 (Nat.factorization (f1 n) p)

end

end A392450.P7898530236286233614

noncomputable section

/-- A392450: The number of exponential unitary (or e-unitary) divisors of n that are exponentially squarefree numbers (A209061).

Offset 1, canonical program `A392450.P7898530236286233614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450 (n : ℕ) : ℤ :=
  A392450.P7898530236286233614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392537.P5789005694378708755

`∩[A332785(n+1), A382967(n+1)]`
-/

namespace A392537.P5789005694378708755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P5789005694378708755

noncomputable section

/-- A392537: Biquadratefree numbers that are neither squareful nor squarefree.

Offset 1, canonical program `A392537.P5789005694378708755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537 (n : ℕ) : ℤ :=
  (A392537.P5789005694378708755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392564.P9319350472348829098

`A332785(n+1)^3`
-/

namespace A392564.P9319350472348829098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) ^ 3

end

end A392564.P9319350472348829098

noncomputable section

/-- A392564: Cubes of numbers that are neither squarefree nor squareful.

Offset 1, canonical program `A392564.P9319350472348829098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392564 (n : ℕ) : ℤ :=
  A392564.P9319350472348829098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392842.P10202073856946613228

`A007814(record[A109168(3*n+2)])`
-/

namespace A392842.P10202073856946613228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A392842.P10202073856946613228

noncomputable section

/-- A392842: Number of trailing zeros in a type of Zeckendorf expansion based on Fibonacci numbers of even index.

Offset 1, canonical program `A392842.P10202073856946613228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842 (n : ℕ) : ℤ :=
  A392842.P10202073856946613228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394380.P12740966740896101419

`A264810(2^(n+1)-1)`
-/

namespace A394380.P12740966740896101419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (2 ^ (n + 1) - 1)

end

end A394380.P12740966740896101419

noncomputable section

/-- A394380: Number of totients below 2^n.

Offset 1, canonical program `A394380.P12740966740896101419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380 (n : ℕ) : ℤ :=
  A394380.P12740966740896101419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394381.P15980332945039088340

`A264810(A000149(n+1))`
-/

namespace A394381.P15980332945039088340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A000149 (n + 1)).toNat

end

end A394381.P15980332945039088340

noncomputable section

/-- A394381: Number of totients below exp(n).

Offset 1, canonical program `A394381.P15980332945039088340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381 (n : ℕ) : ℤ :=
  A394381.P15980332945039088340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394747.P2470656169310210325

`∩[A087680(n+1), A392199(n+1)]`
-/

namespace A394747.P2470656169310210325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394747.P2470656169310210325

noncomputable section

/-- A394747: Numbers k such that k-4 and k+4 are prime and gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A394747.P2470656169310210325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A394747 (n : ℕ) : ℤ :=
  (A394747.P2470656169310210325.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A394747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398547.P9174656088477173349

`A056558(n)^A056557(n)^A056556(n)`
-/

namespace A398547.P9174656088477173349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056558 n : ℝ) ^ ((A056557 n : ℚ) ^ (A056556 n : ℤ) : ℝ)

end

end A398547.P9174656088477173349

noncomputable section

/-- A398547: d^c^b, where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A398547.P9174656088477173349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398547.P9174656088477173349.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398547.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399430.P14427685385738939723

`A056556(n)*A056557(n)*A056558(n)`
-/

namespace A399430.P14427685385738939723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n * A056557 n * A056558 n

end

end A399430.P14427685385738939723

noncomputable section

/-- A399430: b * c * d where b >= c >= d >= 0 ordered by b then c then d.

Offset 1, canonical program `A399430.P14427685385738939723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399430 (n : ℕ) : ℤ :=
  A399430.P14427685385738939723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399504.P3432684880369202973

`A056556(n)-A056557(n)-A056558(n)`
-/

namespace A399504.P3432684880369202973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A056557 n - A056558 n

end

end A399504.P3432684880369202973

noncomputable section

/-- A399504: b - c - d where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A399504.P3432684880369202973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399504 (n : ℕ) : ℤ :=
  A399504.P3432684880369202973.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400198.P10752574168841274575

`A056556(n)^A056557(n)^A056558(n)`
-/

namespace A400198.P10752574168841274575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056556 n : ℝ) ^ ((A056557 n : ℚ) ^ (A056558 n : ℤ) : ℝ)

end

end A400198.P10752574168841274575

noncomputable section

/-- A400198: b^c^d, where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A400198.P10752574168841274575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A400198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400198.P10752574168841274575.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A400198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400252.P11412868992192274508

`∑{d}[n+1, A319684(#)*A359484((n+1)/#)]`
-/

namespace A400252.P11412868992192274508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319684 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400252.P11412868992192274508

noncomputable section

/-- A400252: The exponent of the highest power of 2 dividing A380459(n).

Offset 1, canonical program `A400252.P11412868992192274508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400252 (n : ℕ) : ℤ :=
  A400252.P11412868992192274508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400450.P6566241445451218318

`∑{d}[n+1, A008966(#)*A056170((n+1)/#)]`
-/

namespace A400450.P6566241445451218318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A056170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400450.P6566241445451218318

noncomputable section

/-- A400450: The number of divisors d of n such that gcd(d, n/d) is prime.

Offset 1, canonical program `A400450.P6566241445451218318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400450 (n : ℕ) : ℤ :=
  A400450.P6566241445451218318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400523.P6739092181508487678

`A007814(A197680(n+1))`
-/

namespace A400523.P6739092181508487678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A197680 (n + 1)).toNat

end

end A400523.P6739092181508487678

noncomputable section

/-- A400523: The exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are squares (A197680).

Offset 1, canonical program `A400523.P6739092181508487678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400523 (n : ℕ) : ℤ :=
  A400523.P6739092181508487678.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400930.P15269373887500136883

`A326195(∏{p}[n+1, #])`
-/

namespace A400930.P15269373887500136883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A400930.P15269373887500136883

noncomputable section

/-- A400930: Maximum length of a strictly increasing sequence of distinct prime divisors p_1, ..., p_k of n such that p_i divides p_{i+1} - 1 for 1 <= i < k.

Offset 1, canonical program `A400930.P15269373887500136883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400930 (n : ℕ) : ℤ :=
  A400930.P15269373887500136883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400955.P5010137716607798832

`A264802(n+1)-A057728(n+1)`
-/

namespace A400955.P5010137716607798832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A057728 (n + 1)

end

end A400955.P5010137716607798832

noncomputable section

/-- A400955: Triangle read by rows: T(n,k) is the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

Offset 1, canonical program `A400955.P5010137716607798832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400955 (n : ℕ) : ℤ :=
  A400955.P5010137716607798832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349434.P347975015890233595

`∑{d}[n+1, A129283((n+1)/#)*A349337(#)]`
-/

namespace A349434.P347975015890233595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349337 d

end

end A349434.P347975015890233595

noncomputable section

/-- A349434: Dirichlet convolution of A129283 (n + its arithmetic derivative) with A349337 (Dirichlet inverse of A230593).

Offset 1, canonical program `A349434.P347975015890233595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349434 (n : ℕ) : ℤ :=
  A349434.P347975015890233595.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350343.P17281856427666000810

`A350342(n+1)²`
-/

namespace A350343.P17281856427666000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1) ^ 2

end

end A350343.P17281856427666000810

noncomputable section

/-- A350343: Square numbers k that are abelian orders.

Offset 1, canonical program `A350343.P17281856427666000810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343 (n : ℕ) : ℤ :=
  A350343.P17281856427666000810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351359.P2301868971868708912

`A008965(n+1)-(A032190(n+1)+A000007(n))`
-/

namespace A351359.P2301868971868708912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - (A032190 (n + 1) + A000007 n)

end

end A351359.P2301868971868708912

noncomputable section

/-- A351359: Number of binary necklaces with n beads and at least two consecutive black beads.

Offset 1, canonical program `A351359.P2301868971868708912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A351359 (n : ℕ) : ℤ :=
  A351359.P2301868971868708912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A351359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351528.P8807216159401882128

`p?[ceil(A145341(n+1)/2)]`
-/

namespace A351528.P8807216159401882128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145341 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P8807216159401882128

noncomputable section

/-- A351528: Prime numbers ordered by their binary reversal.

Offset 1, canonical program `A351528.P8807216159401882128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A351528 (n : ℕ) : ℤ :=
  A351528.P8807216159401882128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A351528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351539.P10581206996454005610

`A005087(A306682(n+1)/A009194(n+1))`
-/

namespace A351539.P10581206996454005610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (SequenceMachineLib.roundAway ((A306682 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ))).toNat

end

end A351539.P10581206996454005610

noncomputable section

/-- A351539: Number of odd prime factors p of n such that p^(1+valuation(n,p)) divides sigma(n).

Offset 1, canonical program `A351539.P10581206996454005610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351539 (n : ℕ) : ℤ :=
  A351539.P10581206996454005610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352447.P16230586406353503362

`comp[A175787(n+1)]+1`
-/

namespace A352447.P16230586406353503362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P16230586406353503362

noncomputable section

/-- A352447: Numbers k such that BarnesG(k) is divisible by Gamma(k).

Offset 1, canonical program `A352447.P16230586406353503362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352447 (n : ℕ) : ℤ :=
  (A352447.P16230586406353503362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352775.P2048892064585624364

`A352753(n+1)+A352754(n+1)`
-/

namespace A352775.P2048892064585624364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352753 (n + 1) + A352754 (n + 1)

end

end A352775.P2048892064585624364

noncomputable section

/-- A352775: a(n) = pi(n) * (Sum_{n <= q < 2n, q prime} q) + (pi(2n-1) - pi(n-1)) * (Sum_{p <= n, p prime} p).

Offset 1, canonical program `A352775.P2048892064585624364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775 (n : ℕ) : ℤ :=
  A352775.P2048892064585624364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353084.P13564049963541245376

`A003265(n+1)-n`
-/

namespace A353084.P13564049963541245376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (n + 1) - (n : ℤ)

end

end A353084.P13564049963541245376

noncomputable section

/-- A353084: Column 0 of the extended Trithoff (tribonacci) array.

Offset 1, canonical program `A353084.P13564049963541245376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353084 (n : ℕ) : ℤ :=
  A353084.P13564049963541245376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353198.P877011731945880113

`filter[A024614(n+1), A353814(#)]`
-/

namespace A353198.P877011731945880113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A353198.P877011731945880113

noncomputable section

/-- A353198: Intersection of A000404 and A024614.

Offset 1, canonical program `A353198.P877011731945880113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2650 terms. -/
def A353198 (n : ℕ) : ℤ :=
  A353198.P877011731945880113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2650 terms. -/
def A353198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353371.P5704616763070307128

`A000005(n+1)-A353372(n+1)`
-/

namespace A353371.P5704616763070307128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353372 (n + 1)

end

end A353371.P5704616763070307128

noncomputable section

/-- A353371: Number of divisors of n that are not in A325698.

Offset 1, canonical program `A353371.P5704616763070307128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353371 (n : ℕ) : ℤ :=
  A353371.P5704616763070307128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353519.P6983840421202540414

`abs(A219009(n+1))`
-/

namespace A353519.P6983840421202540414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A219009 (n + 1)|

end

end A353519.P6983840421202540414

noncomputable section

/-- A353519: a(n) = 1 if n has an odd number of square divisors, otherwise 0.

Offset 1, canonical program `A353519.P6983840421202540414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353519 (n : ℕ) : ℤ :=
  A353519.P6983840421202540414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354923.P18081959809145531847

`C(A007814(n+1), C(A008480(n+1), 2))`
-/

namespace A354923.P18081959809145531847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (n + 1)).toNat (Nat.choose (A008480 (n + 1)).toNat 2)

end

end A354923.P18081959809145531847

noncomputable section

/-- A354923: a(n) = 1 if n is either a power of prime or 2*prime, otherwise 0.

Offset 1, canonical program `A354923.P18081959809145531847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923 (n : ℕ) : ℤ :=
  (A354923.P18081959809145531847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355173.P10850783007037289585

`A009766(abs(2-n)+2)-A130020(n)`
-/

namespace A355173.P10850783007037289585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (|2 - (n : ℤ)| + 2).toNat - A130020 n

end

end A355173.P10850783007037289585

noncomputable section

/-- A355173: The Fuss-Catalan triangle of order 1, read by rows. Related to binary trees.

Offset 0, canonical program `A355173.P10850783007037289585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355173 (n : ℕ) : ℤ :=
  A355173.P10850783007037289585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355450.P7145778670325853768

`A355451(1+(n+1)²)`
-/

namespace A355450.P7145778670325853768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (1 + (n + 1) ^ 2)

end

end A355450.P7145778670325853768

noncomputable section

/-- A355450: a(n) = 1 if n is odd and phi(x) = n^2 + 1 has no solutions, otherwise 0.

Offset 1, canonical program `A355450.P7145778670325853768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355450 (n : ℕ) : ℤ :=
  A355450.P7145778670325853768.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357590.P13214365663631185069

`∩[A061304(n+1), A076579(n+1)]`
-/

namespace A357590.P13214365663631185069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P13214365663631185069

noncomputable section

/-- A357590: Triangular numbers which are products of five distinct primes.

Offset 1, canonical program `A357590.P13214365663631185069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. -/
def A357590 (n : ℕ) : ℤ :=
  (A357590.P13214365663631185069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. -/
def A357590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357669.P7459688075800984872

`A000005(n+1)/A056671(n+1)`
-/

namespace A357669.P7459688075800984872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A357669.P7459688075800984872

noncomputable section

/-- A357669: a(n) is the number of divisors of the powerful part of n.

Offset 1, canonical program `A357669.P7459688075800984872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357669.P7459688075800984872.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357761.P12264452491752923310

`A227872(n+1)-A356018(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357761.P12264452491752923310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - A356018 (n + 1)

end

end A357761.P12264452491752923310

noncomputable section

/-- A357761: a(n) = A227872(n) - A356018(n).

Offset 1, canonical program `A357761.P12264452491752923310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357761 (n : ℕ) : ℤ :=
  A357761.P12264452491752923310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358530.P16462741210301020417

`A151800(A051634(n+1))`
-/

namespace A358530.P16462741210301020417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A051634 (n + 1)).toNat

end

end A358530.P16462741210301020417

noncomputable section

/-- A358530: a(n) = n-th prime prime(k) such that prime(k) - prime(k-1) < prime(k-1) - prime(k-2).

Offset 1, canonical program `A358530.P16462741210301020417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358530 (n : ℕ) : ℤ :=
  A358530.P16462741210301020417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359479.P2526974503153798656

`∑[∑{d}[n+1, A059841(#-1)*A327268((n+1)/#)]]`
-/

namespace A359479.P2526974503153798656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A059841 (d - 1) * A327268 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359479.P2526974503153798656

noncomputable section

/-- A359479: a(1) = 1; a(n) = Sum_{k=2..n} (-1)^k * k * a(floor(n/k)).

Offset 1, canonical program `A359479.P2526974503153798656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359479 (n : ℕ) : ℤ :=
  A359479.P2526974503153798656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361689.P3213455168666859639

`2*(1+A007814(n+1))*A275367(n+1)`
-/

namespace A361689.P3213455168666859639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A007814 (n + 1)) * A275367 (n + 1)

end

end A361689.P3213455168666859639

noncomputable section

/-- A361689: The number of divisors of 2*n^2.

Offset 1, canonical program `A361689.P3213455168666859639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361689 (n : ℕ) : ℤ :=
  A361689.P3213455168666859639.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361936.P9667667875036611583

`A217038((n+1)²)+1`
-/

namespace A361936.P9667667875036611583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 ((n + 1) ^ 2) + 1

end

end A361936.P9667667875036611583

noncomputable section

/-- A361936: Indices of the squares in the sequence of powerful numbers (A001694).

Offset 1, canonical program `A361936.P9667667875036611583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361936 (n : ℕ) : ℤ :=
  A361936.P9667667875036611583.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361985.P15140877785734381926

`∑{d}[n+1, A059841(#-1)*A327268((n+1)/#)]`
-/

namespace A361985.P15140877785734381926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A327268 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361985.P15140877785734381926

noncomputable section

/-- A361985: a(1) = 1, a(2) = 1; a(n) = n * Sum_{d|n, d < n} (-1)^(n/d) a(d) / d.

Offset 1, canonical program `A361985.P15140877785734381926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361985 (n : ℕ) : ℤ :=
  A361985.P15140877785734381926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363033.P3715738251278879840

`A284281(5*(n+1)-1)`
-/

namespace A363033.P3715738251278879840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 1)

end

end A363033.P3715738251278879840

noncomputable section

/-- A363033: Sum of divisors of 5*n-1 of form 5*k+3.

Offset 1, canonical program `A363033.P3715738251278879840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363033 (n : ℕ) : ℤ :=
  A363033.P3715738251278879840.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363034.P8832158960344729897

`A284281(5*(n+1)-2)`
-/

namespace A363034.P8832158960344729897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 2)

end

end A363034.P8832158960344729897

noncomputable section

/-- A363034: Sum of divisors of 5*n-2 of form 5*k+3.

Offset 1, canonical program `A363034.P8832158960344729897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363034 (n : ℕ) : ℤ :=
  A363034.P8832158960344729897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363035.P2703347928261583590

`A284281(5*(n+1)-3)`
-/

namespace A363035.P2703347928261583590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 3)

end

end A363035.P2703347928261583590

noncomputable section

/-- A363035: Sum of divisors of 5*n-3 of form 5*k+3.

Offset 1, canonical program `A363035.P2703347928261583590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363035 (n : ℕ) : ℤ :=
  A363035.P2703347928261583590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363053.P13013895526662378901

`A284281(5*n+1)`
-/

namespace A363053.P13013895526662378901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * n + 1)

end

end A363053.P13013895526662378901

noncomputable section

/-- A363053: Sum of divisors of 5*n-4 of form 5*k+3.

Offset 1, canonical program `A363053.P13013895526662378901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363053 (n : ℕ) : ℤ :=
  A363053.P13013895526662378901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363928.P10938334218304106877

`(2*A001878(n+1)+A284281(n+1))/5`
-/

namespace A363928.P10938334218304106877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001878 (n + 1) + A284281 (n + 1) : ℚ) / 5

end

end A363928.P10938334218304106877

noncomputable section

/-- A363928: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(5*k))^2.

Offset 1, canonical program `A363928.P10938334218304106877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363928.P10938334218304106877.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366378.P2407206345280088483

`eq[A010872(n), A010872(A057889(n))]`
-/

namespace A366378.P2407206345280088483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366378.P2407206345280088483

noncomputable section

/-- A366378: Numbers k such that A057889(k) == k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366378.P2407206345280088483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378 (n : ℕ) : ℤ :=
  (A366378.P2407206345280088483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366643.P15455375307676145949

`A046951(A165725(n+1)*A165725(n+1))`
-/

namespace A366643.P15455375307676145949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A165725 (n + 1) * A165725 (n + 1)).toNat

end

end A366643.P15455375307676145949

noncomputable section

/-- A366643: a(n) is the number of divisors of n that are coprime to the terms of A366642.

Offset 1, canonical program `A366643.P15455375307676145949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366643 (n : ℕ) : ℤ :=
  A366643.P15455375307676145949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368104.P6809811150617499491

`A286324(A057521(n+1))`
-/

namespace A368104.P6809811150617499491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A057521 (n + 1)).toNat

end

end A368104.P6809811150617499491

noncomputable section

/-- A368104: The number of bi-unitary divisors of the powerful part of n.

Offset 1, canonical program `A368104.P6809811150617499491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368104 (n : ℕ) : ℤ :=
  A368104.P6809811150617499491.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368883.P5151374445955228630

`A061389(A053165(n+1))`
-/

namespace A368883.P5151374445955228630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A053165 (n + 1)).toNat

end

end A368883.P5151374445955228630

noncomputable section

/-- A368883: The number of infinitary divisors of n that are cubefree.

Offset 1, canonical program `A368883.P5151374445955228630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883 (n : ℕ) : ℤ :=
  A368883.P5151374445955228630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370707.P9214374415212279062

`A008279(n)*A124320(n)`
-/

namespace A370707.P9214374415212279062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A124320 n

end

end A370707.P9214374415212279062

noncomputable section

/-- A370707: Triangle read by rows: T(n, k) = (-1)^k*Product_{j=0..k-1} (j - n)*(j + n), for 0 <= k <= n.

Offset 0, canonical program `A370707.P9214374415212279062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A370707 (n : ℕ) : ℤ :=
  A370707.P9214374415212279062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A370707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370983.P7991274931919617133

`A165680(n+1)*A253283(n)`
-/

namespace A370983.P7991274931919617133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165680 (n + 1) * A253283 n

end

end A370983.P7991274931919617133

noncomputable section

/-- A370983: Triangle read by rows: T(n, k) = (n + k - 1)! / (k!*(n - k)!) if k > 0 and T(n, 0) = 0^n.

Offset 0, canonical program `A370983.P7991274931919617133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A370983 (n : ℕ) : ℤ :=
  A370983.P7991274931919617133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A370983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371238.P16159629807628423493

`A000010(A048701(n+1))`
-/

namespace A371238.P16159629807628423493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048701 (n + 1)).toNat

end

end A371238.P16159629807628423493

noncomputable section

/-- A371238: Euler totient function applied to the binary palindromes of even length.

Offset 1, canonical program `A371238.P16159629807628423493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371238 (n : ℕ) : ℤ :=
  A371238.P16159629807628423493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371870.P16935794293074856516

`A000984(n)-A109262(n)`
-/

namespace A371870.P16935794293074856516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A109262 n

end

end A371870.P16935794293074856516

noncomputable section

/-- A371870: a(n) = Sum_{k=0..floor(n/2)} binomial(2*n-k-1,n-2*k).

Offset 0, canonical program `A371870.P16935794293074856516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A371870 (n : ℕ) : ℤ :=
  A371870.P16935794293074856516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A371870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373947.P8857403306256119126

`A037201(n+2)/2`
-/

namespace A373947.P8857403306256119126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037201 (n + 2) : ℚ) / 2

end

end A373947.P8857403306256119126

noncomputable section

/-- A373947: Halved and run-compressed first differences of consecutive odd primes.

Offset 1, canonical program `A373947.P8857403306256119126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373947.P8857403306256119126.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374119.P18024338057745193586

`A372573(n+1)*A374051(n+1)`
-/

namespace A374119.P18024338057745193586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A374051 (n + 1)

end

end A374119.P18024338057745193586

noncomputable section

/-- A374119: a(n) = 1 if A113177(n) and A276085(n) are both multiples of 3, otherwise 0, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374119.P18024338057745193586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374119 (n : ℕ) : ℤ :=
  A374119.P18024338057745193586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374276.P15801528438707414755

`A374093(n)+A214284(n)`
-/

namespace A374276.P15801528438707414755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374093 n + A214284 n

end

end A374276.P15801528438707414755

noncomputable section

/-- A374276: Number of representations of n by the quadratic form x^2 + 3*x*y + y^2 with 0 <= x <= y.

Offset 0, canonical program `A374276.P15801528438707414755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374276 (n : ℕ) : ℤ :=
  A374276.P15801528438707414755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375510.P4398942062596491998

`A185725(n+1)-A068344(n)`
-/

namespace A375510.P4398942062596491998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185725 (n + 1) - A068344 n

end

end A375510.P4398942062596491998

noncomputable section

/-- A375510: Fringe indices of Zernike polynomials.

Offset 0, canonical program `A375510.P4398942062596491998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375510 (n : ℕ) : ℤ :=
  A375510.P4398942062596491998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375707.P16340562935949203801

`A078147(n+1)-1`
-/

namespace A375707.P16340562935949203801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1) - 1

end

end A375707.P16340562935949203801

noncomputable section

/-- A375707: First differences minus 1 of nonsquarefree numbers.

Offset 1, canonical program `A375707.P16340562935949203801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375707 (n : ℕ) : ℤ :=
  A375707.P16340562935949203801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375735.P17339394773180058432

`A375708(n+2)`
-/

namespace A375735.P17339394773180058432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 2)

end

end A375735.P17339394773180058432

noncomputable section

/-- A375735: First differences of non-prime-powers (inclusive).

Offset 1, canonical program `A375735.P17339394773180058432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375735 (n : ℕ) : ℤ :=
  A375735.P17339394773180058432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375933.P3247189904836465685

`A051903(A375932(n+1))`
-/

namespace A375933.P3247189904836465685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375932 (n + 1)).toNat

end

end A375933.P3247189904836465685

noncomputable section

/-- A375933: The second-largest exponent in the prime factorization of n, or 0 if it does not exist.

Offset 1, canonical program `A375933.P3247189904836465685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933 (n : ℕ) : ℤ :=
  A375933.P3247189904836465685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376593.P2696437491636906986

`Δ[A078147(n+1)]`
-/

namespace A376593.P2696437491636906986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376593.P2696437491636906986

noncomputable section

/-- A376593: Second differences of consecutive nonsquarefree numbers (A013929). First differences of A078147.

Offset 1, canonical program `A376593.P2696437491636906986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376593 (n : ℕ) : ℤ :=
  A376593.P2696437491636906986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377783.P9497838708436341752

`A120327(A000040(n+1))`
-/

namespace A377783.P9497838708436341752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A000040 (n + 1)).toNat

end

end A377783.P9497838708436341752

noncomputable section

/-- A377783: Least nonsquarefree number > prime(n).

Offset 1, canonical program `A377783.P9497838708436341752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377783 (n : ℕ) : ℤ :=
  A377783.P9497838708436341752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378369.P16320352227413282998

`A120327(n+1)-(n+1)`
-/

namespace A378369.P16320352227413282998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (n + 1) - (n + 1 : ℤ)

end

end A378369.P16320352227413282998

noncomputable section

/-- A378369: Distance between n and the least nonsquarefree number >= n.

Offset 1, canonical program `A378369.P16320352227413282998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378369 (n : ℕ) : ℤ :=
  A378369.P16320352227413282998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378434.P1462916945159414399

`(A158523(n+1)+A178450(n+1))/2`
-/

namespace A378434.P1462916945159414399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158523 (n + 1) + A178450 (n + 1) : ℚ) / 2

end

end A378434.P1462916945159414399

noncomputable section

/-- A378434: Arithmetic mean between the Dirichlet inverses of {sum of unitary divisors} and {sum of squarefree divisors}.

Offset 1, canonical program `A378434.P1462916945159414399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378434.P1462916945159414399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378615.P14217085017096801148

`A000040(n+1)-A027883(n+1)`
-/

namespace A378615.P14217085017096801148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A027883 (n + 1)

end

end A378615.P14217085017096801148

noncomputable section

/-- A378615: Number of non prime powers <= prime(n).

Offset 1, canonical program `A378615.P14217085017096801148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378615 (n : ℕ) : ℤ :=
  A378615.P14217085017096801148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379099.P6794364004104742208

`A000108(n)*A006134(n)`
-/

namespace A379099.P6794364004104742208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A006134 n

end

end A379099.P6794364004104742208

noncomputable section

/-- A379099: a(n) = Sum_{k=0..n} binomial(2*k, k)*binomial(2*n, n)/(n + 1). Row sums of A379100.

Offset 0, canonical program `A379099.P6794364004104742208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099 (n : ℕ) : ℤ :=
  A379099.P6794364004104742208.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379561.P6001539951614561260

`A025558(n+1)+A027457(n+2)`
-/

namespace A379561.P6001539951614561260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025558 (n + 1) + A027457 (n + 2)

end

end A379561.P6001539951614561260

noncomputable section

/-- A379561: a(n) = A003418(n+1)*H(n), where H(n) = 1 + 1/2 + ... + 1/n is the n-th harmonic number.

Offset 1, canonical program `A379561.P6001539951614561260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379561 (n : ℕ) : ℤ :=
  A379561.P6001539951614561260.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380151.P6636326723691283784

`A035487(n+1)-A380804(n+1)`
-/

namespace A380151.P6636326723691283784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) - A380804 (n + 1)

end

end A380151.P6636326723691283784

noncomputable section

/-- A380151: Classification sequence for the Stolarsky array A035506.

Offset 1, canonical program `A380151.P6636326723691283784`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380151 (n : ℕ) : ℤ :=
  A380151.P6636326723691283784.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380372.P10366550130277599333

`char[A082851(n+1)-1]`
-/

namespace A380372.P10366550130277599333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082851 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380372.P10366550130277599333

noncomputable section

/-- A380372: Characteristic function of A082851.

Offset 1, canonical program `A380372.P10366550130277599333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380372 (n : ℕ) : ℤ :=
  (A380372.P10366550130277599333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380443.P17503996144246579122

`A004525(A378299(n+1))`
-/

namespace A380443.P17503996144246579122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A378299 (n + 1)).toNat

end

end A380443.P17503996144246579122

noncomputable section

/-- A380443: a(n) = numerator(b(n)), where b(n) = b(n/2)/2 for n even and 1 - b((n-1)/2)/2 for n odd with b(1) = 1.

Offset 1, canonical program `A380443.P17503996144246579122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A380443 (n : ℕ) : ℤ :=
  A380443.P17503996144246579122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A380443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380910.P6919724403864687655

`A004730(abs(1-n))`
-/

namespace A380910.P6919724403864687655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |1 - (n : ℤ)|.toNat

end

end A380910.P6919724403864687655

noncomputable section

/-- A380910: a(n) = denominator(n!! / (n - 1)!!).

Offset 0, canonical program `A380910.P6919724403864687655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A380910 (n : ℕ) : ℤ :=
  A380910.P6919724403864687655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A380910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380950.P16297941268626771220

`A004730(A289207(n))*A380909(n)`
-/

namespace A380950.P16297941268626771220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (A289207 n).toNat * A380909 n

end

end A380950.P16297941268626771220

noncomputable section

/-- A380950: a(n) = denominator(r(n)) where r(n) = (n/2)*(Pi/2)^cos(Pi*(n-1))*((n/2-1/2)!/(n/2)!)^2.

Offset 0, canonical program `A380950.P16297941268626771220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A380950 (n : ℕ) : ℤ :=
  A380950.P16297941268626771220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A380950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381314.P1696934832685863059

`∩[A386796(n+1), A393924(n+1)]`
-/

namespace A381314.P1696934832685863059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381314.P1696934832685863059

noncomputable section

/-- A381314: Powerful numbers that have a single exponent in their prime factorization that equals 2.

Offset 1, canonical program `A381314.P1696934832685863059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A381314 (n : ℕ) : ℤ :=
  (A381314.P1696934832685863059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A381314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381951.P13289787021626920291

`∩[2*n+1, A376142(n+1)]`
-/

namespace A381951.P13289787021626920291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P13289787021626920291

noncomputable section

/-- A381951: Nonsquarefree odd numbers whose prime factorization has an odd maximum exponent.

Offset 1, canonical program `A381951.P13289787021626920291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951 (n : ℕ) : ℤ :=
  (A381951.P13289787021626920291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382966.P5975578079117178061

`A056170(A375072(n+1))`
-/

namespace A382966.P5975578079117178061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A375072 (n + 1)).toNat

end

end A382966.P5975578079117178061

noncomputable section

/-- A382966: The number of non-unitary prime divisors of the n-th biquadratefree number that is not cubefree.

Offset 1, canonical program `A382966.P5975578079117178061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P5975578079117178061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383005.P1801605340694019833

`A007814(A046100(n+1))`
-/

namespace A383005.P1801605340694019833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046100 (n + 1)).toNat

end

end A383005.P1801605340694019833

noncomputable section

/-- A383005: Exponent of the highest power of 2 dividing the n-th biquadratefree number.

Offset 1, canonical program `A383005.P1801605340694019833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383005 (n : ℕ) : ℤ :=
  A383005.P1801605340694019833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383034.P16762733124447717769

`A306156(n+1)-A209229(n+1)`
-/

namespace A383034.P16762733124447717769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 1) - A209229 (n + 1)

end

end A383034.P16762733124447717769

noncomputable section

/-- A383034: Inverse Weigh transform of 2^(n-1).

Offset 1, canonical program `A383034.P16762733124447717769`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A306156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383034 (n : ℕ) : ℤ :=
  A383034.P16762733124447717769.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A306156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383423.P11431245251035309516

`∩[A022342(n+1), A383427(n+1)]`
-/

namespace A383423.P11431245251035309516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383423.P11431245251035309516

noncomputable section

/-- A383423: Indices k such that A003849(k) = 0 and A383422(k) = 0.

Offset 1, canonical program `A383423.P11431245251035309516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. -/
def A383423 (n : ℕ) : ℤ :=
  (A383423.P11431245251035309516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. -/
def A383423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383424.P17133997064317184709

`∩[A003622(n+1), A383427(n+1)]`
-/

namespace A383424.P17133997064317184709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383424.P17133997064317184709

noncomputable section

/-- A383424: Indices k such that A003849(k) = 1 and A383422(k) = 1.

Offset 1, canonical program `A383424.P17133997064317184709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. -/
def A383424 (n : ℕ) : ℤ :=
  (A383424.P17133997064317184709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. -/
def A383424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383793.P8012503440223215475

`A038502(n+1)*A256688(n+1)`
-/

namespace A383793.P8012503440223215475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) * A256688 (n + 1)

end

end A383793.P8012503440223215475

noncomputable section

/-- A383793: Numerators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

Offset 1, canonical program `A383793.P8012503440223215475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383793 (n : ℕ) : ℤ :=
  A383793.P8012503440223215475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384041.P8191093603258971194

`∑{d}[n+1, A007432(#)*A332730((n+1)/#)]`
-/

namespace A384041.P8191093603258971194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A332730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384041.P8191093603258971194

noncomputable section

/-- A384041: The number of integers k from 1 to n such that gcd(n,k) is an exponentially odd number.

Offset 1, canonical program `A384041.P8191093603258971194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384041 (n : ℕ) : ℤ :=
  A384041.P8191093603258971194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386258.P4775169082945672394

`A007814(A005361(n+1))`
-/

namespace A386258.P4775169082945672394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005361 (n + 1)).toNat

end

end A386258.P4775169082945672394

noncomputable section

/-- A386258: Exponent of the highest power of 2 dividing the product of exponents of the prime factorization of n.

Offset 1, canonical program `A386258.P4775169082945672394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386258 (n : ℕ) : ℤ :=
  A386258.P4775169082945672394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386537.P3580917112878141729

`A007814(A138302(n+1))`
-/

namespace A386537.P3580917112878141729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A138302 (n + 1)).toNat

end

end A386537.P3580917112878141729

noncomputable section

/-- A386537: Exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A386537.P3580917112878141729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386537 (n : ℕ) : ℤ :=
  A386537.P3580917112878141729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386602.P2913812941752451551

`∑{#}[floor(sqrt(10^n))-1, A008683(#+1)*A061202(floor(10^n/(#+1)²))]`
-/

namespace A386602.P2913812941752451551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (10 ^ n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A008683 (k + 1) * A061202 ⌊(10 ^ n : ℚ) / ((k + 1) ^ 2 : ℚ)⌋.toNat

end

end A386602.P2913812941752451551

noncomputable section

/-- A386602: a(n) = Sum_{k<=10^n} d(k)^2, where d(k) = number of divisors function A000005.

Offset 0, canonical program `A386602.P2913812941752451551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386602 (n : ℕ) : ℤ :=
  A386602.P2913812941752451551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388984.P10702588259379283515

`filter[A388983(n+1), A359770(#)]`
-/

namespace A388984.P10702588259379283515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A388984.P10702588259379283515

noncomputable section

/-- A388984: Even numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

Offset 1, canonical program `A388984.P10702588259379283515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5578 terms. -/
def A388984 (n : ℕ) : ℤ :=
  A388984.P10702588259379283515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5578 terms. -/
def A388984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389199.P2572344504919042834

`filter[A389197(n+1), A353814(#)]`
-/

namespace A389199.P2572344504919042834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389199.P2572344504919042834

noncomputable section

/-- A389199: Numbers whose sum of squarefree divisors (A048250) is congruent to 2 modulo 4.

Offset 1, canonical program `A389199.P2572344504919042834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9835 terms. -/
def A389199 (n : ℕ) : ℤ :=
  A389199.P2572344504919042834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9835 terms. -/
def A389199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`
-/

namespace A389425.P17457791161868218869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 2) - A199716 (n + 1)

end

end A389425.P17457791161868218869

noncomputable section

/-- A389425: First differences of A199716.

Offset 1, canonical program `A389425.P17457791161868218869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425 (n : ℕ) : ℤ :=
  A389425.P17457791161868218869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390128.P3065140226531891146

`filter[A375072(n+1), A389905(#)]`
-/

namespace A390128.P3065140226531891146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390128.P3065140226531891146

noncomputable section

/-- A390128: Biquadratefree numbers that are neither cubefree nor squareful.

Offset 1, canonical program `A390128.P3065140226531891146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128 (n : ℕ) : ℤ :=
  A390128.P3065140226531891146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390788.P17759256906105032846

`lt[A210882(A210882(2*n+1)), A210882(2*n+1)]`
-/

namespace A390788.P17759256906105032846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A210882 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390788.P17759256906105032846

noncomputable section

/-- A390788: Numbers k such that 2*k - (greatest prime < 2*k) < (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390788.P17759256906105032846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. -/
def A390788 (n : ℕ) : ℤ :=
  (A390788.P17759256906105032846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. -/
def A390788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390789.P3572526343516217248

`A072568(n+1)/2`
-/

namespace A390789.P3572526343516217248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072568 (n + 1) : ℚ) / 2

end

end A390789.P3572526343516217248

noncomputable section

/-- A390789: Numbers k such that 2*k - (greatest prime < 2*k) = (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390789.P3572526343516217248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390789.P3572526343516217248.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390957.P13897140593149333572

`A000005(n+1)-A286324(n+1)`
-/

namespace A390957.P13897140593149333572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A286324 (n + 1)

end

end A390957.P13897140593149333572

noncomputable section

/-- A390957: The number of non-bi-unitary divisors of n.

Offset 1, canonical program `A390957.P13897140593149333572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390957 (n : ℕ) : ℤ :=
  A390957.P13897140593149333572.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391025.P15150800664500928125

`filter[2*n+1, A389905(#)]`
-/

namespace A391025.P15150800664500928125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j) = 1) n)

end

end A391025.P15150800664500928125

noncomputable section

/-- A391025: Odd numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391025.P15150800664500928125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025 (n : ℕ) : ℤ :=
  (A391025.P15150800664500928125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393212.P8608727344683158324

`or(A005843(A007814(3*n+5)), A073575(3*n+5))`
-/

namespace A393212.P8608727344683158324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A007814 (3 * n + 5)).toNat) (A073575 (3 * n + 5))

end

end A393212.P8608727344683158324

noncomputable section

/-- A393212: Halting time for Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393212.P8608727344683158324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212 (n : ℕ) : ℤ :=
  A393212.P8608727344683158324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393697.P7831953345102612304

`A393562(n)-A172471(n)`
-/

namespace A393697.P7831953345102612304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393562 n - A172471 n

end

end A393697.P7831953345102612304

noncomputable section

/-- A393697: a(n) is the number of unit squares in the square lattice, divided by 4, that have 1 vertex strictly inside and 3 vertices strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393697.P7831953345102612304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393697 (n : ℕ) : ℤ :=
  A393697.P7831953345102612304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394346.P4603799114259171752

`A324528(n+1)*A306671(n+1)`
-/

namespace A394346.P4603799114259171752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324528 (n + 1) * A306671 (n + 1)

end

end A394346.P4603799114259171752

noncomputable section

/-- A394346: a(n) = tau(n) * pod(n) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A394346.P4603799114259171752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346 (n : ℕ) : ℤ :=
  A394346.P4603799114259171752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395301.P11832353311031738574

`A033273(n+1)+A345266(n+1)`
-/

namespace A395301.P11832353311031738574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A345266 (n + 1)

end

end A395301.P11832353311031738574

noncomputable section

/-- A395301: a(n) = tau(n) - omega(n) + Sum_{p|n, p prime} gcd(p,n/p).

Offset 1, canonical program `A395301.P11832353311031738574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395301 (n : ℕ) : ℤ :=
  A395301.P11832353311031738574.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395959.P2730340011751273461

`2*n+A395958(2*n)`
-/

namespace A395959.P2730340011751273461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A395958 (2 * n)

end

end A395959.P2730340011751273461

noncomputable section

/-- A395959: Numbers k such that A395958(k) = 0.

Offset 1, canonical program `A395959.P2730340011751273461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395959 (n : ℕ) : ℤ :=
  A395959.P2730340011751273461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395960.P5958715908451391238

`2*n+1-A395958(2*n)`
-/

namespace A395960.P5958715908451391238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395958 (2 * n)

end

end A395960.P5958715908451391238

noncomputable section

/-- A395960: Numbers k such that A395958(k) = 1.

Offset 1, canonical program `A395960.P5958715908451391238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395960 (n : ℕ) : ℤ :=
  A395960.P5958715908451391238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396336.P13045972141286078433

`∑{d}[n+1, A055615(#)*A333645((n+1)/#)]`
-/

namespace A396336.P13045972141286078433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396336.P13045972141286078433

noncomputable section

/-- A396336: Dirichlet convolution of A047994 with A023900.

Offset 1, canonical program `A396336.P13045972141286078433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396336 (n : ℕ) : ℤ :=
  A396336.P13045972141286078433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397623.P16201342378175094011

`A000040(A005652(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397623.P16201342378175094011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005652 (n + 1)).toNat

end

end A397623.P16201342378175094011

noncomputable section

/-- A397623: a(n) = prime(A005652(n)).

Offset 1, canonical program `A397623.P16201342378175094011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397623 (n : ℕ) : ℤ :=
  A397623.P16201342378175094011.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398569.P1103607179862908180

`∩[A072357(n+1), A216918(n+1)]`
-/

namespace A398569.P1103607179862908180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P1103607179862908180

noncomputable section

/-- A398569: Odd numbers of the form p^2*s, where p is prime, s is squarefree, gcd(p,s) = 1, and A001221(s) >= 2.

Offset 1, canonical program `A398569.P1103607179862908180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A398569 (n : ℕ) : ℤ :=
  (A398569.P1103607179862908180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A398569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399092.P10321508231479955331

`A051903(A068781(n+1))`
-/

namespace A399092.P10321508231479955331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A068781 (n + 1)).toNat

end

end A399092.P10321508231479955331

noncomputable section

/-- A399092: The maximum exponent in the prime factorization of the nonsquarefree numbers k such that k+1 is also nonsquarefree.

Offset 1, canonical program `A399092.P10321508231479955331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A068781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399092 (n : ℕ) : ℤ :=
  A399092.P10321508231479955331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A068781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399829.P142880181418372781

`∑{d}[n+1, A056671(#)*A112526((n+1)/#)]`
-/

namespace A399829.P142880181418372781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056671 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P142880181418372781

noncomputable section

/-- A399829: The number of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399829.P142880181418372781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399829 (n : ℕ) : ℤ :=
  A399829.P142880181418372781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399924.P7475448484565824650

`filter[A353511(n+1), A035263(#)]`
-/

namespace A399924.P7475448484565824650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A399924.P7475448484565824650

noncomputable section

/-- A399924: Numbers k such that A007429(k) is odd.

Offset 1, canonical program `A399924.P7475448484565824650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A399924 (n : ℕ) : ℤ :=
  A399924.P7475448484565824650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A399924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400142.P15885049014009625684

`A000005(n+1)*A001316(A007814(n+1))/(A007814(n+1)+1)`
-/

namespace A400142.P15885049014009625684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A001316 (A007814 (n + 1)).toNat : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A400142.P15885049014009625684

noncomputable section

/-- A400142: The number of divisors d of n such that gcid(d, n/d) is odd, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400142.P15885049014009625684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400142 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400142.P15885049014009625684.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400144.P1155357798941404441

`A035316(n+1)*A367991(n+1)`
-/

namespace A400144.P1155357798941404441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) * A367991 (n + 1)

end

end A400144.P1155357798941404441

noncomputable section

/-- A400144: The sum of divisors d of n such that gcid(d, n/d) is a square, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400144.P1155357798941404441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400144 (n : ℕ) : ℤ :=
  A400144.P1155357798941404441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400258.P3398933769381967192

`A267263(A003415(n))`
-/

namespace A400258.P3398933769381967192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A003415 n).toNat

end

end A400258.P3398933769381967192

noncomputable section

/-- A400258: Number of nonzero digits in primorial base representation of n' [where n' stands for the arithmetic derivative of n, A003415].

Offset 0, canonical program `A400258.P3398933769381967192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400258 (n : ℕ) : ℤ :=
  A400258.P3398933769381967192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400521.P1868779038590815743

`A007814(A209061(n+1))`
-/

namespace A400521.P1868779038590815743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A209061 (n + 1)).toNat

end

end A400521.P1868779038590815743

noncomputable section

/-- A400521: The exponent of the highest power of 2 dividing the n-th exponentially squarefree number (A209061).

Offset 1, canonical program `A400521.P1868779038590815743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400521 (n : ℕ) : ℤ :=
  A400521.P1868779038590815743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401086.P5847087061507170082

`∑{d}[n+1, A369307(#)]`
-/

namespace A401086.P5847087061507170082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369307 d

end

end A401086.P5847087061507170082

noncomputable section

/-- A401086: The number of ordered pairs of exponentially odd divisors (d_1, d_2) of n such that d_1 * d_2 is a divisor of n.

Offset 1, canonical program `A401086.P5847087061507170082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401086 (n : ℕ) : ℤ :=
  A401086.P5847087061507170082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401437.P81839502749205339

`∑[A401409(n)]`
-/

namespace A401437.P81839502749205339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401437.P81839502749205339

noncomputable section

/-- A401437: Partial sums of A401409.

Offset 0, canonical program `A401437.P81839502749205339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401437 (n : ℕ) : ℤ :=
  A401437.P81839502749205339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349693.P1618582373112485882

`1/3*A115364(n+1)*A372784(n+1)`
-/

namespace A349693.P1618582373112485882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A115364 (n + 1) : ℚ) * (A372784 (n + 1) : ℚ)

end

end A349693.P1618582373112485882

noncomputable section

/-- A349693: Dirichlet convolution of the ruler function (A001511) with itself.

Offset 1, canonical program `A349693.P1618582373112485882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349693.P1618582373112485882.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350344.P2038863926175919238

`filter[A050384(n+1), A355816(#)]`
-/

namespace A350344.P2038863926175919238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A350344.P2038863926175919238

noncomputable section

/-- A350344: Composite k such that k^2 is an abelian order.

Offset 1, canonical program `A350344.P2038863926175919238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344 (n : ℕ) : ℤ :=
  A350344.P2038863926175919238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350534.P1685177641505256515

`A038548(n+1)+A060872(n+1)-A060866(n+1)`
-/

namespace A350534.P1685177641505256515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A060872 (n + 1) - A060866 (n + 1))

end

end A350534.P1685177641505256515

noncomputable section

/-- A350534: Sum of the largest parts of the partitions of n into 3 parts whose largest part is equal to the product of the other two.

Offset 0, canonical program `A350534.P1685177641505256515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350534 (n : ℕ) : ℤ :=
  A350534.P1685177641505256515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351398.P4856848397706998263

`filter[A140826(n+1), A245656(#)]`
-/

namespace A351398.P4856848397706998263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A351398.P4856848397706998263

noncomputable section

/-- A351398: Numbers k >= 3 such that the arithmetic mean of the divisors of k AND the arithmetic mean of the nondivisors of k are integers.

Offset 1, canonical program `A351398.P4856848397706998263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398 (n : ℕ) : ℤ :=
  A351398.P4856848397706998263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351558.P12959759109943034203

`and(n, A248663(∏{p}[n, #]))`
-/

namespace A351558.P12959759109943034203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A248663 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A351558.P12959759109943034203

noncomputable section

/-- A351558: a(n) = A048675(gcd(n, A019565(n))).

Offset 0, canonical program `A351558.P12959759109943034203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A351558 (n : ℕ) : ℤ :=
  A351558.P12959759109943034203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A351558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351560.P4314084197358316879

`A087207(A000203(n+1))`
-/

namespace A351560.P4314084197358316879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A000203 (n + 1)).toNat

end

end A351560.P4314084197358316879

noncomputable section

/-- A351560: a(n) is a binary representation of the primes that divide sigma(n) [the sum of divisors of n function], shown in decimal.

Offset 1, canonical program `A351560.P4314084197358316879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351560 (n : ℕ) : ℤ :=
  A351560.P4314084197358316879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351752.P9465324655857387084

`floor(A079667(n+1)/A038548(n+1))`
-/

namespace A351752.P9465324655857387084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (A038548 (n + 1) : ℚ)⌋

end

end A351752.P9465324655857387084

noncomputable section

/-- A351752: Floor of the average of the numbers |x-y| over all pairs (x,y) with x*y = n, x <= y.

Offset 1, canonical program `A351752.P9465324655857387084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351752 (n : ℕ) : ℤ :=
  A351752.P9465324655857387084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353202.P16479654457777802616

`lt[A070176(n), 2]+1`
-/

namespace A353202.P16479654457777802616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353202.P16479654457777802616

noncomputable section

/-- A353202: Positive integers which can be expressed as the sum of three or fewer squares, no more than two of which are greater than 1.

Offset 1, canonical program `A353202.P16479654457777802616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. -/
def A353202 (n : ℕ) : ℤ :=
  (A353202.P16479654457777802616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. -/
def A353202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353352.P1673129124953599033

`∑{d}[n+1, A353350(#)]`
-/

namespace A353352.P1673129124953599033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353350 d

end

end A353352.P1673129124953599033

noncomputable section

/-- A353352: Number of divisors d of n for which A048675(d) is a multiple of 3.

Offset 1, canonical program `A353352.P1673129124953599033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353352 (n : ℕ) : ℤ :=
  A353352.P1673129124953599033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353380.P1519682102492887619

`1-abs(∑{d}[n+1, A332823(#)])`
-/

namespace A353380.P1519682102492887619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |∑ d ∈ Nat.divisors (f1 n), A332823 d|

end

end A353380.P1519682102492887619

noncomputable section

/-- A353380: a(n) = 1 if A353354(n) [= Sum_{d|n} A332823(d)] is zero, otherwise 0.

Offset 1, canonical program `A353380.P1519682102492887619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353380 (n : ℕ) : ℤ :=
  A353380.P1519682102492887619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353445.P139513798113643550

`2-3*A332823(n+1)²`
-/

namespace A353445.P139513798113643550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 3 * A332823 (n + 1) ^ 2

end

end A353445.P139513798113643550

noncomputable section

/-- A353445: Let f be the completely multiplicative function from the positive integers to the cube roots of unity defined by f(prime(m)) = w^(2^(m-1)), where w is the cube root with positive imaginary part. a(n) is twice the real part of f(n).

Offset 1, canonical program `A353445.P139513798113643550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353445 (n : ℕ) : ℤ :=
  A353445.P139513798113643550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354506.P3830637102415007409

`(n+1)!*∑{#}[n, A048272(#+1)/((#+1)*(n+1-(#+1))!)]`
-/

namespace A354506.P3830637102415007409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (A048272 (k + 1) : ℚ) / ((k + 1) * Nat.factorial ((n + 1 : ℤ) - (k + 1 : ℤ)).toNat : ℚ))

end

end A354506.P3830637102415007409

noncomputable section

/-- A354506: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(k/d+1) )/(k * (n-k)!).

Offset 1, canonical program `A354506.P3830637102415007409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354506.P3830637102415007409.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359830.P7538047403356094708

`eq[0, A353350(n+1)]+1`
-/

namespace A359830.P7538047403356094708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359830.P7538047403356094708

noncomputable section

/-- A359830: Numbers k such that A048675(k) is not a multiple of 3.

Offset 1, canonical program `A359830.P7538047403356094708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359830 (n : ℕ) : ℤ :=
  (A359830.P7538047403356094708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360280.P7719168232723027333

`A008846(n+1)²`
-/

namespace A360280.P7719168232723027333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) ^ 2

end

end A360280.P7719168232723027333

noncomputable section

/-- A360280: Squares that are the hypotenuse of a primitive Pythagorean triangle.

Offset 1, canonical program `A360280.P7719168232723027333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360280 (n : ℕ) : ℤ :=
  A360280.P7719168232723027333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360758.P7102341119995455638

`eq[2, A096501(A003415(n)+1)]`
-/

namespace A360758.P7102341119995455638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P7102341119995455638

noncomputable section

/-- A360758: Numbers k for which k' - 1 and k' + 1 are twin primes, where the prime denotes the arithmetic derivative.

Offset 1, canonical program `A360758.P7102341119995455638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758 (n : ℕ) : ℤ :=
  (A360758.P7102341119995455638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361121.P16839421460347675392

`A053542(n+1)%2`
-/

namespace A361121.P16839421460347675392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053542 (n + 1)) 2

end

end A361121.P16839421460347675392

noncomputable section

/-- A361121: 1 if n-th composite number A002808(n) is even, otherwise 0.

Offset 1, canonical program `A361121.P16839421460347675392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361121 (n : ℕ) : ℤ :=
  A361121.P16839421460347675392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362148.P4847235968772766025

`∩[A046099(n+1), A362147(n+1)]`
-/

namespace A362148.P4847235968772766025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362148.P4847235968772766025

noncomputable section

/-- A362148: Numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A362148.P4847235968772766025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A362148 (n : ℕ) : ℤ :=
  (A362148.P4847235968772766025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A362148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362789.P4013718917275567408

`A011973(n)*A344392(n)`
-/

namespace A362789.P4013718917275567408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A344392 n

end

end A362789.P4013718917275567408

noncomputable section

/-- A362789: Triangle read by rows. T(n, k) = FallingFactorial(n - k, k) * Stirling2(n - k, k), for n >= 0 and 0 <= k <= n//2, where '//' denotes integer division.

Offset 0, canonical program `A362789.P4013718917275567408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A362789 (n : ℕ) : ℤ :=
  A362789.P4013718917275567408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A362789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363615.P15240525384775454564

`(A321543(n+1)-3*A002129(n+1)+2*A048272(n+1))/2`
-/

namespace A363615.P15240525384775454564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321543 (n + 1) - 3 * A002129 (n + 1) + 2 * A048272 (n + 1) : ℚ) / 2

end

end A363615.P15240525384775454564

noncomputable section

/-- A363615: Expansion of Sum_{k>0} x^(3*k)/(1+x^k)^3.

Offset 1, canonical program `A363615.P15240525384775454564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363615.P15240525384775454564.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363629.P1618946847333743156

`-(A002129(n+1)+A048272(n+1))`
-/

namespace A363629.P1618946847333743156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002129 (n + 1) + A048272 (n + 1))

end

end A363629.P1618946847333743156

noncomputable section

/-- A363629: Expansion of Sum_{k>0} (1/(1+x^k)^2 - 1).

Offset 1, canonical program `A363629.P1618946847333743156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363629 (n : ℕ) : ℤ :=
  A363629.P1618946847333743156.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364343.P7180893498198076980

`(n+1)/2*(A002129(n+1)+A048272(n+1))`
-/

namespace A364343.P7180893498198076980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A002129 (n + 1) + A048272 (n + 1) : ℚ)

end

end A364343.P7180893498198076980

noncomputable section

/-- A364343: Expansion of Sum_{k>0} k * x^k/(1 + x^k)^3.

Offset 1, canonical program `A364343.P7180893498198076980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364343.P7180893498198076980.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364351.P8907097505146139643

`(n+1)/2*(A000593(n+1)+(n+1)*A048272(n+1))`
-/

namespace A364351.P8907097505146139643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000593 (n + 1) + (n + 1 : ℤ) * A048272 (n + 1) : ℚ)

end

end A364351.P8907097505146139643

noncomputable section

/-- A364351: Expansion of Sum_{k>0} k^2 * x^k/(1 + x^k)^3.

Offset 1, canonical program `A364351.P8907097505146139643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364351.P8907097505146139643.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365334.P7348562216077771551

`A033634(A008833(n+1))`
-/

namespace A365334.P7348562216077771551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A008833 (n + 1)).toNat

end

end A365334.P7348562216077771551

noncomputable section

/-- A365334: The sum of exponentially odd divisors of the largest square dividing n.

Offset 1, canonical program `A365334.P7348562216077771551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365334 (n : ℕ) : ℤ :=
  A365334.P7348562216077771551.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365336.P7053891073090803951

`A033634(A000188(n+1))`
-/

namespace A365336.P7053891073090803951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A000188 (n + 1)).toNat

end

end A365336.P7053891073090803951

noncomputable section

/-- A365336: The sum of exponentially odd divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365336.P7053891073090803951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365336 (n : ℕ) : ℤ :=
  A365336.P7053891073090803951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365535.P434274986920635891

`filter[A002035(n+1), A066247(#)]`
-/

namespace A365535.P434274986920635891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A365535.P434274986920635891

noncomputable section

/-- A365535: Composite numbers k such that the core and the kernel of k are equal.

Offset 1, canonical program `A365535.P434274986920635891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8331 terms. -/
def A365535 (n : ℕ) : ℤ :=
  A365535.P434274986920635891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8331 terms. -/
def A365535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366438.P4907338318269729299

`A000005(A268335(n+1))`
-/

namespace A366438.P4907338318269729299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A268335 (n + 1)).toNat

end

end A366438.P4907338318269729299

noncomputable section

/-- A366438: The number of divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366438.P4907338318269729299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366438 (n : ℕ) : ℤ :=
  A366438.P4907338318269729299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366439.P9566324691206801463

`A000203(A268335(n+1))`
-/

namespace A366439.P9566324691206801463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A268335 (n + 1)).toNat

end

end A366439.P9566324691206801463

noncomputable section

/-- A366439: The sum of divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366439.P9566324691206801463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366439 (n : ℕ) : ℤ :=
  A366439.P9566324691206801463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366534.P14908058348624275973

`A034444(A268335(n+1))`
-/

namespace A366534.P14908058348624275973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A268335 (n + 1)).toNat

end

end A366534.P14908058348624275973

noncomputable section

/-- A366534: The number of unitary divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366534.P14908058348624275973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366534 (n : ℕ) : ℤ :=
  A366534.P14908058348624275973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367417.P18277504886847390025

`A007947(A268335(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367417.P18277504886847390025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A268335 (n + 1)).toNat

end

end A367417.P18277504886847390025

noncomputable section

/-- A367417: The squarefree kernels of the exponentially odd numbers: a(n) = A007947(A268335(n)).

Offset 1, canonical program `A367417.P18277504886847390025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367417 (n : ℕ) : ℤ :=
  A367417.P18277504886847390025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367695.P14319411982053900779

`A268335(comp[comp[A268335(n+1)]-n])`
-/

namespace A367695.P14319411982053900779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A367695.P14319411982053900779

noncomputable section

/-- A367695: Numbers k such that k and k+1 are both exponentially odd numbers (A268335).

Offset 1, canonical program `A367695.P14319411982053900779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A367695 (n : ℕ) : ℤ :=
  A367695.P14319411982053900779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A367695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367696.P4831548240618922370

`∩[A270428(n+1)-1, A270428(n+1)]`
-/

namespace A367696.P4831548240618922370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367696.P4831548240618922370

noncomputable section

/-- A367696: Numbers k such that k and k+1 are both exponentially odious numbers (A270428).

Offset 1, canonical program `A367696.P4831548240618922370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. -/
def A367696 (n : ℕ) : ℤ :=
  (A367696.P4831548240618922370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. -/
def A367696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368468.P2584022470948144189

`A322483(A268335(n+1))`
-/

namespace A368468.P2584022470948144189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A268335 (n + 1)).toNat

end

end A368468.P2584022470948144189

noncomputable section

/-- A368468: a(n) is the number of exponentially odd divisors of the n-th exponentially odd number.

Offset 1, canonical program `A368468.P2584022470948144189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368468 (n : ℕ) : ℤ :=
  A368468.P2584022470948144189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368469.P12995681979237792953

`A033634(A268335(n+1))`
-/

namespace A368469.P12995681979237792953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A268335 (n + 1)).toNat

end

end A368469.P12995681979237792953

noncomputable section

/-- A368469: a(n) is the sum of exponentially odd divisors of the n-th exponentially odd number.

Offset 1, canonical program `A368469.P12995681979237792953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368469 (n : ℕ) : ℤ :=
  A368469.P12995681979237792953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368472.P18282956041258009745

`A005361(A268335(n+1))`
-/

namespace A368472.P18282956041258009745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A268335 (n + 1)).toNat

end

end A368472.P18282956041258009745

noncomputable section

/-- A368472: Product of exponents of prime factorization of the exponentially odd numbers.

Offset 1, canonical program `A368472.P18282956041258009745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368472 (n : ℕ) : ℤ :=
  A368472.P18282956041258009745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368711.P6715505457637909973

`A051903(A268335(n+1))`
-/

namespace A368711.P6715505457637909973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A268335 (n + 1)).toNat

end

end A368711.P6715505457637909973

noncomputable section

/-- A368711: The maximal exponent in the prime factorization of the exponentially odd numbers (A268335).

Offset 1, canonical program `A368711.P6715505457637909973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368711 (n : ℕ) : ℤ :=
  A368711.P6715505457637909973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369254.P14967059013545152487

`eq[1, A369253(n+1)]+1`
-/

namespace A369254.P14967059013545152487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369254.P14967059013545152487

noncomputable section

/-- A369254: Numbers k that have an odd number of divisors that are at most sqrt(k).

Offset 1, canonical program `A369254.P14967059013545152487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254 (n : ℕ) : ℤ :=
  (A369254.P14967059013545152487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370410.P7118795628727837074

`A007055(n+1)-A056458(n+1)`
-/

namespace A370410.P7118795628727837074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 (n + 1) - A056458 (n + 1)

end

end A370410.P7118795628727837074

noncomputable section

/-- A370410: Number of length-n binary strings that are the concatenation of two nonempty palindromes.

Offset 1, canonical program `A370410.P7118795628727837074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007055, A056458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370410 (n : ℕ) : ℤ :=
  A370410.P7118795628727837074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007055, A056458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371906.P54646913033196370

`xor(a(n-1), A087207(n+1))` with `a(0)=0`
-/

namespace A371906.P54646913033196370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A087207 (n + 1))

end

end A371906.P54646913033196370

noncomputable section

/-- A371906: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is odd.

Offset 1, canonical program `A371906.P54646913033196370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A371906 (n : ℕ) : ℤ :=
  A371906.P54646913033196370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A371906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372059.P3781003696721754099

`filter[A117285(n+1), A355937(#)]`
-/

namespace A372059.P3781003696721754099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A372059.P3781003696721754099

noncomputable section

/-- A372059: Indices of record high-points in A280741.

Offset 1, canonical program `A372059.P3781003696721754099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059 (n : ℕ) : ℤ :=
  A372059.P3781003696721754099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372467.P9198545942954414521

`log2(A372466(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372467.P9198545942954414521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372466 (n + 1) + 1 : ℝ)

end

end A372467.P9198545942954414521

noncomputable section

/-- A372467: a(n) = log_2(A372466(n) + 1).

Offset 1, canonical program `A372467.P9198545942954414521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372467 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372467.P9198545942954414521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372469.P15367913402660155872

`log2(A372468(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372469.P15367913402660155872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372468 (n + 1) : ℝ)

end

end A372469.P15367913402660155872

noncomputable section

/-- A372469: a(n) = log_2(A372468(n)).

Offset 1, canonical program `A372469.P15367913402660155872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372469 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372469.P15367913402660155872.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374456.P3778587499414482557

`A000010(A268335(n+1))`
-/

namespace A374456.P3778587499414482557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A268335 (n + 1)).toNat

end

end A374456.P3778587499414482557

noncomputable section

/-- A374456: The Euler phi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374456.P3778587499414482557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374456 (n : ℕ) : ℤ :=
  A374456.P3778587499414482557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374457.P2386240306145347940

`A001615(A268335(n+1))`
-/

namespace A374457.P2386240306145347940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A268335 (n + 1)).toNat

end

end A374457.P2386240306145347940

noncomputable section

/-- A374457: The Dedekind psi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374457.P2386240306145347940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374457 (n : ℕ) : ℤ :=
  A374457.P2386240306145347940.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374458.P2044124364577777506

`A268335(n+1)²`
-/

namespace A374458.P2044124364577777506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) ^ 2

end

end A374458.P2044124364577777506

noncomputable section

/-- A374458: Squares of exponentially odd numbers (A268335).

Offset 1, canonical program `A374458.P2044124364577777506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374458 (n : ℕ) : ℤ :=
  A374458.P2044124364577777506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376602.P2124917522490715053

`eq[0, A073445(n+1)]+1`
-/

namespace A376602.P2124917522490715053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376602.P2124917522490715053

noncomputable section

/-- A376602: Inflection and undulation points in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376602.P2124917522490715053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602 (n : ℕ) : ℤ :=
  (A376602.P2124917522490715053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376651.P6843983757789881629

`eq[2, A053542(n+1)]+1`
-/

namespace A376651.P6843983757789881629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376651.P6843983757789881629

noncomputable section

/-- A376651: Points of upward concavity in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376651.P6843983757789881629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376651 (n : ℕ) : ℤ :=
  (A376651.P6843983757789881629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378767.P14747477378798876079

`filter[A046099(n+1), A355447(#)]`
-/

namespace A378767.P14747477378798876079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A378767.P14747477378798876079

noncomputable section

/-- A378767: Numbers k that are not prime powers which are divisible by a cube greater than 1.

Offset 1, canonical program `A378767.P14747477378798876079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767 (n : ℕ) : ℤ :=
  A378767.P14747477378798876079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379832.P7411395680414309384

`A007434(A268335(n+1))`
-/

namespace A379832.P7411395680414309384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A268335 (n + 1)).toNat

end

end A379832.P7411395680414309384

noncomputable section

/-- A379832: The second Jordan totient function applied to the exponentially odd numbers.

Offset 1, canonical program `A379832.P7411395680414309384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379832 (n : ℕ) : ℤ :=
  A379832.P7411395680414309384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380322.P10413619903168285691

`A033634((n+1)²)`
-/

namespace A380322.P10413619903168285691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 ((n + 1) ^ 2)

end

end A380322.P10413619903168285691

noncomputable section

/-- A380322: a(n) is the sum of exponentially odd divisors of n^2.

Offset 1, canonical program `A380322.P10413619903168285691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380322 (n : ℕ) : ℤ :=
  A380322.P10413619903168285691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380323.P7609859064291809973

`A046951(A268335(n+1))`
-/

namespace A380323.P7609859064291809973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A268335 (n + 1)).toNat

end

end A380323.P7609859064291809973

noncomputable section

/-- A380323: The number of squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380323.P7609859064291809973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380323 (n : ℕ) : ℤ :=
  A380323.P7609859064291809973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380324.P6780080084449121011

`A035316(A268335(n+1))`
-/

namespace A380324.P6780080084449121011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A268335 (n + 1)).toNat

end

end A380324.P6780080084449121011

noncomputable section

/-- A380324: The sum of the squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380324.P6780080084449121011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380324 (n : ℕ) : ℤ :=
  A380324.P6780080084449121011.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380325.P11001594925613090436

`A069290(A268335(n+1))`
-/

namespace A380325.P11001594925613090436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A268335 (n + 1)).toNat

end

end A380325.P11001594925613090436

noncomputable section

/-- A380325: The sum of the square roots of the squares that divide the n-th exponentially odd number.

Offset 1, canonical program `A380325.P11001594925613090436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380325 (n : ℕ) : ℤ :=
  A380325.P11001594925613090436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380326.P5985966696173145077

`A048250(A268335(n+1))`
-/

namespace A380326.P5985966696173145077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A268335 (n + 1)).toNat

end

end A380326.P5985966696173145077

noncomputable section

/-- A380326: a(n) is the sum of squarefree divisors of the n-th exponentially odd number.

Offset 1, canonical program `A380326.P5985966696173145077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380326 (n : ℕ) : ℤ :=
  A380326.P5985966696173145077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382420.P7625293795778711111

`A056170(A046099(n+1))`
-/

namespace A382420.P7625293795778711111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A046099 (n + 1)).toNat

end

end A382420.P7625293795778711111

noncomputable section

/-- A382420: The number of non-unitary prime divisors of the noncubefree numbers.

Offset 1, canonical program `A382420.P7625293795778711111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382420 (n : ℕ) : ℤ :=
  A382420.P7625293795778711111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382421.P17694037240617820596

`A005361(A046099(n+1))`
-/

namespace A382421.P17694037240617820596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A046099 (n + 1)).toNat

end

end A382421.P17694037240617820596

noncomputable section

/-- A382421: The product of exponents in the prime factorization of the noncubefree numbers.

Offset 1, canonical program `A382421.P17694037240617820596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382421 (n : ℕ) : ℤ :=
  A382421.P17694037240617820596.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382660.P13276603593670196303

`A047994(A268335(n+1))`
-/

namespace A382660.P13276603593670196303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A268335 (n + 1)).toNat

end

end A382660.P13276603593670196303

noncomputable section

/-- A382660: The unitary totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382660.P13276603593670196303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382660 (n : ℕ) : ℤ :=
  A382660.P13276603593670196303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382664.P9972389899537758138

`∑[A268335(n+1)]`
-/

namespace A382664.P9972389899537758138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P9972389899537758138

noncomputable section

/-- A382664: Partial sums of the exponentially odd numbers (A268335).

Offset 1, canonical program `A382664.P9972389899537758138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382664 (n : ℕ) : ℤ :=
  A382664.P9972389899537758138.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382969.P16762746786205773467

`A046660(A046099(n+1))`
-/

namespace A382969.P16762746786205773467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A046099 (n + 1)).toNat

end

end A382969.P16762746786205773467

noncomputable section

/-- A382969: The excess of the n-th noncubefree number.

Offset 1, canonical program `A382969.P16762746786205773467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382969 (n : ℕ) : ℤ :=
  A382969.P16762746786205773467.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382987.P16727742091010566575

`A026269(n+2)-A005554(n+1)`
-/

namespace A382987.P16727742091010566575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2) - A005554 (n + 1)

end

end A382987.P16727742091010566575

noncomputable section

/-- A382987: a(n) is the total sum of the last symbol in all Catalan words of length n avoiding the pattern (>=,>=).

Offset 0, canonical program `A382987.P16727742091010566575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A382987 (n : ℕ) : ℤ :=
  A382987.P16727742091010566575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A382987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383029.P14010590280283821526

`A007814(A268335(n+1))`
-/

namespace A383029.P14010590280283821526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A268335 (n + 1)).toNat

end

end A383029.P14010590280283821526

noncomputable section

/-- A383029: Exponent of the highest power of 2 dividing the n-th exponentially odd number.

Offset 1, canonical program `A383029.P14010590280283821526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383029 (n : ℕ) : ℤ :=
  A383029.P14010590280283821526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383030.P6017071897384222791

`lt[A268335(n+1)%2, 1]+1`
-/

namespace A383030.P6017071897384222791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268335 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383030.P6017071897384222791

noncomputable section

/-- A383030: Indices of the even terms in the sequence of exponentially odd numbers.

Offset 1, canonical program `A383030.P6017071897384222791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A383030 (n : ℕ) : ℤ :=
  (A383030.P6017071897384222791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A383030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385350.P6185656812643599907

`filter[A007422(n+1), A035263(#)]`
-/

namespace A385350.P6185656812643599907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A385350.P6185656812643599907

noncomputable section

/-- A385350: Numbers j such that the product of odd proper divisors of j is j.

Offset 1, canonical program `A385350.P6185656812643599907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. -/
def A385350 (n : ℕ) : ℤ :=
  A385350.P6185656812643599907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. -/
def A385350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386020.P5151810573370523150

`∩[A160337(n+1), A380906(n+1)]`
-/

namespace A386020.P5151810573370523150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386020.P5151810573370523150

noncomputable section

/-- A386020: Primes having only {0, 1, 2, 7} as digits.

Offset 1, canonical program `A386020.P5151810573370523150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A386020 (n : ℕ) : ℤ :=
  (A386020.P5151810573370523150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A386020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386025.P16199978454777636192

`∩[A160337(n+1), A361822(n+1)]`
-/

namespace A386025.P16199978454777636192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386025.P16199978454777636192

noncomputable section

/-- A386025: Primes having only {0, 1, 3, 7} as digits.

Offset 1, canonical program `A386025.P16199978454777636192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A386025 (n : ℕ) : ℤ :=
  (A386025.P16199978454777636192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A386025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386111.P9785451128808228405

`∩[A030096(n+1), A190222(n+1)]`
-/

namespace A386111.P9785451128808228405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P9785451128808228405

noncomputable section

/-- A386111: Primes having only {1, 3, 5, 7} as digits.

Offset 1, canonical program `A386111.P9785451128808228405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2029 terms. -/
def A386111 (n : ℕ) : ℤ :=
  (A386111.P9785451128808228405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2029 terms. -/
def A386111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386342.P11450868314914418014

`∩[A038611(n+1), A038615(n+1)]`
-/

namespace A386342.P11450868314914418014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P11450868314914418014

noncomputable section

/-- A386342: Primes without {3, 7} as digits.

Offset 1, canonical program `A386342.P11450868314914418014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. -/
def A386342 (n : ℕ) : ℤ :=
  (A386342.P11450868314914418014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. -/
def A386342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386351.P7318400634088148714

`∩[A038613(n+1), A038615(n+1)]`
-/

namespace A386351.P7318400634088148714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P7318400634088148714

noncomputable section

/-- A386351: Primes without {5, 7} as digits.

Offset 1, canonical program `A386351.P7318400634088148714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386351 (n : ℕ) : ℤ :=
  (A386351.P7318400634088148714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386354.P16560442262164628227

`∩[A038614(n+1), A038615(n+1)]`
-/

namespace A386354.P16560442262164628227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P16560442262164628227

noncomputable section

/-- A386354: Primes without {6, 7} as digits.

Offset 1, canonical program `A386354.P16560442262164628227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A386354 (n : ℕ) : ℤ :=
  (A386354.P16560442262164628227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A386354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386357.P4558547617115754189

`∩[A038615(n+1), A038616(n+1)]`
-/

namespace A386357.P4558547617115754189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P4558547617115754189

noncomputable section

/-- A386357: Primes without {7, 8} as digits.

Offset 1, canonical program `A386357.P4558547617115754189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386357 (n : ℕ) : ℤ :=
  (A386357.P4558547617115754189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394424.P3558969678185483521

`A049419(A268335(n+1))`
-/

namespace A394424.P3558969678185483521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A268335 (n + 1)).toNat

end

end A394424.P3558969678185483521

noncomputable section

/-- A394424: The number of exponential divisors of the exponentially odd numbers.

Offset 1, canonical program `A394424.P3558969678185483521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394424 (n : ℕ) : ℤ :=
  A394424.P3558969678185483521.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399705.P7439880869776146323

`((A008846(n+1)-1)/4)%2`
-/

namespace A399705.P7439880869776146323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A008846 (n + 1) - 1 : ℚ) / 4)) 2

end

end A399705.P7439880869776146323

noncomputable section

/-- A399705: a(n) is 1 if A008846(n) is congruent to 5 modulo 8, and 0 if A008846(n) is congruent to 1 modulo 8.

Offset 1, canonical program `A399705.P7439880869776146323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399705 (n : ℕ) : ℤ :=
  A399705.P7439880869776146323.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399705.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400522.P3523999780646105483

`A007814(A036537(n+1))`
-/

namespace A400522.P3523999780646105483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A036537 (n + 1)).toNat

end

end A400522.P3523999780646105483

noncomputable section

/-- A400522: The exponent of the highest power of 2 dividing the n-th number whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A400522.P3523999780646105483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400522 (n : ℕ) : ℤ :=
  A400522.P3523999780646105483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350115.P2733816776076542397

`filter[A072989(n+1), A353798(#)]`
-/

namespace A350115.P2733816776076542397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A350115.P2733816776076542397

noncomputable section

/-- A350115: Numbers p^2*q, p<q primes such that p^2 divides q-1.

Offset 1, canonical program `A350115.P2733816776076542397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A350115 (n : ℕ) : ℤ :=
  A350115.P2733816776076542397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A350115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381579.P9755719263119690810

`A007089(A381608(n))`
-/

namespace A381579.P9755719263119690810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A381608 n).toNat

end

end A381579.P9755719263119690810

noncomputable section

/-- A381579: The Chung-Graham representation of n: representation of n in base of even-indexed Fibonacci numbers.

Offset 0, canonical program `A381579.P9755719263119690810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381579 (n : ℕ) : ℤ :=
  A381579.P9755719263119690810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383371.P1134250893838150847

`p?[A028846(n+1)]`
-/

namespace A383371.P1134250893838150847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383371.P1134250893838150847

noncomputable section

/-- A383371: Primes having only {1, 2, 4, 8} as digits.

Offset 1, canonical program `A383371.P1134250893838150847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A383371 (n : ℕ) : ℤ :=
  A383371.P1134250893838150847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A383371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386069.P385928273964232171

`∩[A072960(n+1), A386337(n+1)]`
-/

namespace A386069.P385928273964232171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P385928273964232171

noncomputable section

/-- A386069: Primes having only {0, 3, 8, 9} as digits.

Offset 1, canonical program `A386069.P385928273964232171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A386069 (n : ℕ) : ℤ :=
  (A386069.P385928273964232171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A386069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349612.P13385529495902003326

`∑{d}[n+1, A342001(#)*A325126((n+1)/#)]`
-/

namespace A349612.P13385529495902003326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342001 d * A325126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349612.P13385529495902003326

noncomputable section

/-- A349612: Dirichlet convolution of A342001 [{arithmetic derivative of n}/A003557(n)] with A325126 [Dirichlet inverse of rad(n)].

Offset 1, canonical program `A349612.P13385529495902003326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349612 (n : ℕ) : ℤ :=
  A349612.P13385529495902003326.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349618.P12586933095763914751

`∑{d}[n+1, A003415(#)*A325126((n+1)/#)]`
-/

namespace A349618.P12586933095763914751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A325126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349618.P12586933095763914751

noncomputable section

/-- A349618: Dirichlet convolution of arithmetic derivative with A325126 [Dirichlet inverse of rad(n)].

Offset 1, canonical program `A349618.P12586933095763914751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349618 (n : ℕ) : ℤ :=
  A349618.P12586933095763914751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350388.P14803128031435634268

`A071974(n+1)²`
-/

namespace A350388.P14803128031435634268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) ^ 2

end

end A350388.P14803128031435634268

noncomputable section

/-- A350388: a(n) is the largest unitary divisor of n that is a square.

Offset 1, canonical program `A350388.P14803128031435634268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350388 (n : ℕ) : ℤ :=
  A350388.P14803128031435634268.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353637.P5440180522401724762

`∏{d}[A353636(n+1), A001221(#)]`
-/

namespace A353637.P5440180522401724762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A353637.P5440180522401724762

noncomputable section

/-- A353637: a(n) = 1 if phi(sigma(n)) is equal to phi(n), otherwise 0.

Offset 1, canonical program `A353637.P5440180522401724762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637 (n : ℕ) : ℤ :=
  A353637.P5440180522401724762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353681.P403205491971656766

`ceil(A353636(n+1)/A008000(n))`
-/

namespace A353681.P403205491971656766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A008000 n : ℚ)⌉

end

end A353681.P403205491971656766

noncomputable section

/-- A353681: a(n) = 1 if phi(sigma(n)) > phi(n), otherwise 0.

Offset 1, canonical program `A353681.P403205491971656766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681 (n : ℕ) : ℤ :=
  A353681.P403205491971656766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354031.P5992259175605925891

`A024362(n+1)%2`
-/

namespace A354031.P5992259175605925891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024362 (n + 1)) 2

end

end A354031.P5992259175605925891

noncomputable section

/-- A354031: a(n) = 1 if n > 1 and n is a power of a Pythagorean prime (prime of the form 4m+1), otherwise 0.

Offset 1, canonical program `A354031.P5992259175605925891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354031 (n : ℕ) : ℤ :=
  A354031.P5992259175605925891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354039.P14555955065410119290

`lt[0, A354036(n+1)]+1`
-/

namespace A354039.P14555955065410119290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354039.P14555955065410119290

noncomputable section

/-- A354039: Odd numbers k for which sigma(k^2) == 1 (mod 4).

Offset 1, canonical program `A354039.P14555955065410119290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354039 (n : ℕ) : ℤ :=
  (A354039.P14555955065410119290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358274.P17704842436153696573

`A262275(n+1)-A348677(n+1)`
-/

namespace A358274.P17704842436153696573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1) - A348677 (n + 1)

end

end A358274.P17704842436153696573

noncomputable section

/-- A358274: a(n) is the prime before A262275(n).

Offset 1, canonical program `A358274.P17704842436153696573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, A348677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358274 (n : ℕ) : ℤ :=
  A358274.P17704842436153696573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, A348677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358771.P5761548446586358589

`C(A129283(n)+2-n, 3)%2`
-/

namespace A358771.P5761548446586358589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129283 n + (2 - (n : ℤ))).toNat 3 % 2

end

end A358771.P5761548446586358589

noncomputable section

/-- A358771: a(n) = 1 if the arithmetic derivative of n is of the form 4k+1, otherwise 0.

Offset 0, canonical program `A358771.P5761548446586358589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358771 (n : ℕ) : ℤ :=
  (A358771.P5761548446586358589.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359153.P11980574962426657024

`filter[A004767(n), A354036(#)]`
-/

namespace A359153.P11980574962426657024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A359153.P11980574962426657024

noncomputable section

/-- A359153: Numbers of the form 4u+3 with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359153.P11980574962426657024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A359153 (n : ℕ) : ℤ :=
  A359153.P11980574962426657024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A359153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360539.P1925901688017653991

`A050985(A058035(n+1))`
-/

namespace A360539.P1925901688017653991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A058035 (n + 1)).toNat

end

end A360539.P1925901688017653991

noncomputable section

/-- A360539: a(n) is the cubefree part of n: the largest unitary divisor of n that is a cubefree number (A004709).

Offset 1, canonical program `A360539.P1925901688017653991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360539 (n : ℕ) : ℤ :=
  A360539.P1925901688017653991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364017.P4674726286493129954

`∑{d}[n+1, A007438(#)*A364011((n+1)/#)]`
-/

namespace A364017.P4674726286493129954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A364011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364017.P4674726286493129954

noncomputable section

/-- A364017: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-2) / (1 - x^(3*k-2))^3.

Offset 1, canonical program `A364017.P4674726286493129954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364017 (n : ℕ) : ℤ :=
  A364017.P4674726286493129954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364018.P745909422124864912

`∑{d}[n+1, A007438(#)*A364014((n+1)/#)]`
-/

namespace A364018.P745909422124864912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A364014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364018.P745909422124864912

noncomputable section

/-- A364018: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-1) / (1 - x^(3*k-1))^3.

Offset 1, canonical program `A364018.P745909422124864912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364018 (n : ℕ) : ℤ :=
  A364018.P745909422124864912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364084.P12661241187166773764

`A363904(4*n+1)`
-/

namespace A364084.P12661241187166773764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (4 * n + 1)

end

end A364084.P12661241187166773764

noncomputable section

/-- A364084: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(4*k-1)).

Offset 1, canonical program `A364084.P12661241187166773764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364084 (n : ℕ) : ℤ :=
  A364084.P12661241187166773764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364085.P4521992801007173167

`A363904(4*(n+1)-1)`
-/

namespace A364085.P4521992801007173167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (4 * (n + 1) - 1)

end

end A364085.P4521992801007173167

noncomputable section

/-- A364085: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-1)).

Offset 1, canonical program `A364085.P4521992801007173167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364085 (n : ℕ) : ℤ :=
  A364085.P4521992801007173167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365857.P16907715730324159422

`A032189(2*(n+1))`
-/

namespace A365857.P16907715730324159422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (2 * (n + 1))

end

end A365857.P16907715730324159422

noncomputable section

/-- A365857: Number of cyclic compositions of 2*n into odd parts.

Offset 1, canonical program `A365857.P16907715730324159422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A365857 (n : ℕ) : ℤ :=
  A365857.P16907715730324159422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A365857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367076.P8374161418526432458

`abs(∑[A365968(n)])`
-/

namespace A367076.P8374161418526432458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A367076.P8374161418526432458

noncomputable section

/-- A367076: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). T(n,k) = -Sum_{i=0..k} A365968(n,i).

Offset 0, canonical program `A367076.P8374161418526432458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076 (n : ℕ) : ℤ :=
  A367076.P8374161418526432458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367987.P14204999189059379175

`A000005(A071974(n+1))`
-/

namespace A367987.P14204999189059379175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071974 (n + 1)).toNat

end

end A367987.P14204999189059379175

noncomputable section

/-- A367987: The number of square divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367987.P14204999189059379175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367987 (n : ℕ) : ℤ :=
  A367987.P14204999189059379175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367988.P14682528638246534316

`A000203(A071974(n+1))`
-/

namespace A367988.P14682528638246534316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071974 (n + 1)).toNat

end

end A367988.P14682528638246534316

noncomputable section

/-- A367988: The sum of the divisors of the square root of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367988.P14682528638246534316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367988 (n : ℕ) : ℤ :=
  A367988.P14682528638246534316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368171.P3649920215832031940

`(n+1)/A368170(n+1)`
-/

namespace A368171.P3649920215832031940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368170 (n + 1) : ℚ)

end

end A368171.P3649920215832031940

noncomputable section

/-- A368171: a(n) is the smallest divisor d of n such that n/d is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A368171.P3649920215832031940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368171.P3649920215832031940.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368172.P14008522485894596196

`A000005(A368170(n+1))`
-/

namespace A368172.P14008522485894596196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A368170 (n + 1)).toNat

end

end A368172.P14008522485894596196

noncomputable section

/-- A368172: The number of divisors of the largest cubefull exponentially odd divisor of n (A368170).

Offset 1, canonical program `A368172.P14008522485894596196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368172 (n : ℕ) : ℤ :=
  A368172.P14008522485894596196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369668.P5612230000554155073

`2*A359151(n+1)`
-/

namespace A369668.P5612230000554155073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359151 (n + 1)

end

end A369668.P5612230000554155073

noncomputable section

/-- A369668: Numbers that have an even number of prime factors with multiplicity and whose arithmetic derivative is of the form 4k+3.

Offset 1, canonical program `A369668.P5612230000554155073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668 (n : ℕ) : ℤ :=
  A369668.P5612230000554155073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384868.P5511449840220434533

`A231204(A054429(n+1))-A231204(n+1)`
-/

namespace A384868.P5511449840220434533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A054429 (n + 1)).toNat - A231204 (n + 1)

end

end A384868.P5511449840220434533

noncomputable section

/-- A384868: a(n) = Sum_{i=1...|b|} i*(-1)^b_i where b is the lexicographically n-th binary string.

Offset 0, canonical program `A384868.P5511449840220434533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868 (n : ℕ) : ℤ :=
  A384868.P5511449840220434533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385138.P14446959269686956335

`A064987(n+1)/A385137(n+1)`
-/

namespace A385138.P14446959269686956335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A385137 (n + 1) : ℚ)

end

end A385138.P14446959269686956335

noncomputable section

/-- A385138: The sum of divisors d of n such that n/d is a 5-rough number (A007310).

Offset 1, canonical program `A385138.P14446959269686956335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385138.P14446959269686956335.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385542.P11057182743894820874

`A183097(n+1)-A112526(n+1)*(n+1)`
-/

namespace A385542.P11057182743894820874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1) - A112526 (n + 1) * (n + 1 : ℤ)

end

end A385542.P11057182743894820874

noncomputable section

/-- A385542: The sum of the aliquot divisors of n that are powerful.

Offset 1, canonical program `A385542.P11057182743894820874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385542 (n : ℕ) : ℤ :=
  A385542.P11057182743894820874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397100.P2153576112342565242

`A007814(n+1)-A396409(n)`
-/

namespace A397100.P2153576112342565242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A396409 n

end

end A397100.P2153576112342565242

noncomputable section

/-- A397100: a(n) is the number of steps by which n's trajectory under f is ahead of 0's; i.e., f^k(0) = f^(k-a(n))(n) for all sufficiently large k, where f(n) = n XOR 2^A000120(n).

Offset 0, canonical program `A397100.P2153576112342565242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100 (n : ℕ) : ℤ :=
  A397100.P2153576112342565242.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349133.P1756529070579348651

`∑{d}[n+1, A003415(#)*A003958((n+1)/#)]`
-/

namespace A349133.P1756529070579348651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P1756529070579348651

noncomputable section

/-- A349133: Dirichlet convolution of A003415 with A003958, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A349133.P1756529070579348651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349133 (n : ℕ) : ℤ :=
  A349133.P1756529070579348651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349355.P2660659661651567786

`∑{d}[n+1, A003958((n+1)/#)*A063441(#)]`
-/

namespace A349355.P2660659661651567786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A063441 d

end

end A349355.P2660659661651567786

noncomputable section

/-- A349355: Dirichlet convolution of A003958 with A063441 (Dirichlet inverse of A003959), where A003958 and A003959 are fully multiplicative with a(p) = p-1 and p+1 respectively.

Offset 1, canonical program `A349355.P2660659661651567786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349355 (n : ℕ) : ℤ :=
  A349355.P2660659661651567786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351442.P14048376927472810043

`A003958(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351442.P14048376927472810043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000203 (n + 1)).toNat

end

end A351442.P14048376927472810043

noncomputable section

/-- A351442: a(n) = A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351442.P14048376927472810043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351442 (n : ℕ) : ℤ :=
  A351442.P14048376927472810043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351444.P6173397424864781659

`n+1-A003958(n+1)+A003958(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351444.P6173397424864781659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003958 (n + 1) + A003958 (A000203 (n + 1)).toNat

end

end A351444.P6173397424864781659

noncomputable section

/-- A351444: a(n) = n - A003958(n) + A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351444.P6173397424864781659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351444 (n : ℕ) : ℤ :=
  A351444.P6173397424864781659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351445.P15142338061005417043

`A003958(A000203(n+1))-A003958(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351445.P15142338061005417043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000203 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P15142338061005417043

noncomputable section

/-- A351445: a(n) = A003958(sigma(n)) - A003958(n), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351445.P15142338061005417043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351445 (n : ℕ) : ℤ :=
  A351445.P15142338061005417043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354112.P8571420097554948375

`A093653(A000225(n+1))`
-/

namespace A354112.P8571420097554948375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (A000225 (n + 1)).toNat

end

end A354112.P8571420097554948375

noncomputable section

/-- A354112: Total number of 1's in binary expansion of all divisors of 2^n-1.

Offset 1, canonical program `A354112.P8571420097554948375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354112 (n : ℕ) : ℤ :=
  A354112.P8571420097554948375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355280.P12882028884349807086

`A007088(A033015(n+1))`
-/

namespace A355280.P12882028884349807086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A033015 (n + 1)).toNat

end

end A355280.P12882028884349807086

noncomputable section

/-- A355280: Binary numbers (digits in {0, 1}) with no run of digits with length < 2.

Offset 1, canonical program `A355280.P12882028884349807086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355280 (n : ℕ) : ℤ :=
  A355280.P12882028884349807086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357696.P6244782871759486007

`filter[A357695(n+1), A294930(#)]`
-/

namespace A357696.P6244782871759486007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A357696.P6244782871759486007

noncomputable section

/-- A357696: Cubefree primitive abundant numbers: cubefree abundant numbers having no abundant proper divisor.

Offset 1, canonical program `A357696.P6244782871759486007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A357696 (n : ℕ) : ℤ :=
  A357696.P6244782871759486007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A357696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363259.P18232685269626442063

`A363904(Δ[n²])`
-/

namespace A363259.P18232685269626442063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363259.P18232685269626442063

noncomputable section

/-- A363259: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(4*k-1)).

Offset 1, canonical program `A363259.P18232685269626442063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363259 (n : ℕ) : ℤ :=
  A363259.P18232685269626442063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364019.P5738425657626568886

`∑{d}[n+1, A000010(#)*A364043((n+1)/#)]`
-/

namespace A364019.P5738425657626568886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364019.P5738425657626568886

noncomputable section

/-- A364019: Expansion of Sum_{k>0} k * x^k / (1 + x^(5*k)).

Offset 1, canonical program `A364019.P5738425657626568886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364019 (n : ℕ) : ℤ :=
  A364019.P5738425657626568886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368050.P9877690928199603770

`A193564(2*n+3)`
-/

namespace A368050.P9877690928199603770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (2 * n + 3)

end

end A368050.P9877690928199603770

noncomputable section

/-- A368050: Main diagonal of the array where row n=0 lists the natural numbers and each new row n=1,2,... is found by taking the number n in the previous row, and "leaping" it over the next n terms to its right, keeping the other numbers fixed (see example).

Offset 1, canonical program `A368050.P9877690928199603770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A368050 (n : ℕ) : ℤ :=
  A368050.P9877690928199603770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A368050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368804.P4492888258836152047

`A007088(A362030(n+1))`
-/

namespace A368804.P4492888258836152047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A362030 (n + 1)).toNat

end

end A368804.P4492888258836152047

noncomputable section

/-- A368804: Irregular triangle read by rows: T(n,k) is the k-th balanced binary word of length 2*n, where words within a row are in lexicographical order (with leading zeros removed and interpreted as decimal numbers).

Offset 1, canonical program `A368804.P4492888258836152047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804 (n : ℕ) : ℤ :=
  A368804.P4492888258836152047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371263.P7260451375417791318

`A371256(A117967(n))`
-/

namespace A371263.P7260451375417791318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A117967 n).toNat

end

end A371263.P7260451375417791318

noncomputable section

/-- A371263: The run lengths transform of the balanced ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

Offset 0, canonical program `A371263.P7260451375417791318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A371263 (n : ℕ) : ℤ :=
  A371263.P7260451375417791318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A371263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373189.P2339985558679468875

`∑{d}[n+1, A023896(#)*A373188((n+1)/#)]`
-/

namespace A373189.P2339985558679468875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373189.P2339985558679468875

noncomputable section

/-- A373189: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^3.

Offset 1, canonical program `A373189.P2339985558679468875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189 (n : ℕ) : ℤ :=
  A373189.P2339985558679468875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373303.P10871280826768265393

`A371176(n+2)-A371176(n+1)`
-/

namespace A373303.P10871280826768265393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 2) - A371176 (n + 1)

end

end A373303.P10871280826768265393

noncomputable section

/-- A373303: First differences of A371176.

Offset 1, canonical program `A373303.P10871280826768265393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303 (n : ℕ) : ℤ :=
  A373303.P10871280826768265393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374473.P16675953149575422784

`∪[A026424(n+1), A066427(n+1)]`
-/

namespace A374473.P16675953149575422784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374473.P16675953149575422784

noncomputable section

/-- A374473: Numbers k such that bigomega(k) and A064547(k) are not both even, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374473.P16675953149575422784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374473 (n : ℕ) : ℤ :=
  (A374473.P16675953149575422784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378200.P9582015431075575270

`A056023(A381664(A381664(n+1)))`
-/

namespace A378200.P9582015431075575270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A381664 (A381664 (n + 1)).toNat).toNat

end

end A378200.P9582015431075575270

noncomputable section

/-- A378200: Square array read by upward antidiagonals: T(n,k) = ((k + n - 1)^2 + (k - n + 1)*(-1)^n + (1 - k - n)*(-1)^k + (1 - k - n)*(-1)^(k + n) + 2)/2.

Offset 1, canonical program `A378200.P9582015431075575270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378200 (n : ℕ) : ℤ :=
  A378200.P9582015431075575270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378489.P17623488810974009379

`filter[A066427(n+1), A065043(#)]`
-/

namespace A378489.P17623488810974009379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A378489.P17623488810974009379

noncomputable section

/-- A378489: Intersection of A000028 and A028260.

Offset 1, canonical program `A378489.P17623488810974009379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8378 terms. -/
def A378489 (n : ℕ) : ℤ :=
  A378489.P17623488810974009379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8378 terms. -/
def A378489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378494.P8782437258541775153

`filter[A066428(n+1), A066829(#)]`
-/

namespace A378494.P8782437258541775153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A378494.P8782437258541775153

noncomputable section

/-- A378494: Intersection of A000379 and A026424.

Offset 1, canonical program `A378494.P8782437258541775153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8436 terms. -/
def A378494 (n : ℕ) : ℤ :=
  A378494.P8782437258541775153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8436 terms. -/
def A378494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378705.P16790697538674376241

`A381664(A056023(n+1))`
-/

namespace A378705.P16790697538674376241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A056023 (n + 1)).toNat

end

end A378705.P16790697538674376241

noncomputable section

/-- A378705: Inverse permutation to A378200.

Offset 1, canonical program `A378705.P16790697538674376241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378705 (n : ℕ) : ℤ :=
  A378705.P16790697538674376241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379739.P13853497522422973330

`A193564(2*(n+2))`
-/

namespace A379739.P13853497522422973330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (2 * (n + 2))

end

end A379739.P13853497522422973330

noncomputable section

/-- A379739: Subdiagonal of the Hurt-Sada array.

Offset 1, canonical program `A379739.P13853497522422973330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A379739 (n : ℕ) : ℤ :=
  A379739.P13853497522422973330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A379739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380079.P368606423001304580

`A026272(A022342(n+2))`
-/

namespace A380079.P368606423001304580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A022342 (n + 2)).toNat

end

end A380079.P368606423001304580

noncomputable section

/-- A380079: Start with a list of the positive integers L in increasing order. Then, at turn n>=1, element n jumps from its current position, m, to position m+n. Then a(n) = L(m+1).

Offset 1, canonical program `A380079.P368606423001304580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A380079 (n : ℕ) : ℤ :=
  A380079.P368606423001304580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A380079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387350.P5346268956136855131

`A002251(A005652(n+1))`
-/

namespace A387350.P5346268956136855131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A005652 (n + 1)).toNat

end

end A387350.P5346268956136855131

noncomputable section

/-- A387350: Positions of 1's in A387348.

Offset 1, canonical program `A387350.P5346268956136855131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A387350 (n : ℕ) : ℤ :=
  A387350.P5346268956136855131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A387350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389923.P9300526506479143406

`A371176(A003622(n+1))`
-/

namespace A389923.P9300526506479143406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A003622 (n + 1)).toNat

end

end A389923.P9300526506479143406

noncomputable section

/-- A389923: Standard composition numbers of integer compositions with last part = length.

Offset 1, canonical program `A389923.P9300526506479143406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A389923 (n : ℕ) : ℤ :=
  A389923.P9300526506479143406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A389923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390251.P1811341755956368526

`filter[A286228(n+1), A373585(#)]`
-/

namespace A390251.P1811341755956368526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A390251.P1811341755956368526

noncomputable section

/-- A390251: Numbers k such that sigma(k) = psi(k) + omega(k)^2.

Offset 1, canonical program `A390251.P1811341755956368526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A390251 (n : ℕ) : ℤ :=
  A390251.P1811341755956368526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A390251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392980.P15181118893878896143

`A392236(2*(n+1))/2`
-/

namespace A392980.P15181118893878896143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392236 (2 * (n + 1)) : ℚ) / 2

end

end A392980.P15181118893878896143

noncomputable section

/-- A392980: Positions of zeros in A393336.

Offset 1, canonical program `A392980.P15181118893878896143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392980 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392980.P15181118893878896143.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398421.P3891246051767450638

`∩[A053850(n+1), A054753(n+1)]`
-/

namespace A398421.P3891246051767450638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398421.P3891246051767450638

noncomputable section

/-- A398421: Odd numbers of the form p^2*q, where p and q are distinct odd primes.

Offset 1, canonical program `A398421.P3891246051767450638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. -/
def A398421 (n : ℕ) : ℤ :=
  (A398421.P3891246051767450638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. -/
def A398421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370650.P533710446170374147

`filter[A000379(n+1), A373975(#)]`
-/

namespace A370650.P533710446170374147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A370650.P533710446170374147

noncomputable section

/-- A370650: Numbers whose number of infinitary divisors that are terms of A366242 is equal to the number of infinitary divisors that are terms of A366243.

Offset 1, canonical program `A370650.P533710446170374147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A370650 (n : ℕ) : ℤ :=
  A370650.P533710446170374147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A370650.provenance : SequenceMachineLib.Provenance := .conjectured

