import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A336645.P7716507073345907638

`n+1-A326129(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336645.P7716507073345907638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326129 (n + 1)

end

end A336645.P7716507073345907638

noncomputable section

/-- A336645: a(n) = n - A326129(n).

Offset 1, canonical program `A336645.P7716507073345907638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336645 (n : ℕ) : ℤ :=
  A336645.P7716507073345907638.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336645.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A360402.P17555253377108157928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A360392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360402 (n : ℕ) : ℤ :=
  A360402.P17555253377108157928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A360392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336567.P8607660645956000214

`A335341(n+1)-A003557(n+1)`
-/

namespace A336567.P8607660645956000214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (n + 1) - A003557 (n + 1)

end

end A336567.P8607660645956000214

noncomputable section

/-- A336567: Sum of proper divisors of {n divided by its largest squarefree divisor}.

Offset 1, canonical program `A336567.P8607660645956000214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336567 (n : ℕ) : ℤ :=
  A336567.P8607660645956000214.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336647.P1661556818682037462

`n+1-A336566(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336647.P1661556818682037462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A336566 (n + 1)

end

end A336647.P1661556818682037462

noncomputable section

/-- A336647: a(n) = n - A336566(n).

Offset 1, canonical program `A336647.P1661556818682037462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336647 (n : ℕ) : ℤ :=
  A336647.P1661556818682037462.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336649.P1375712288515144548

`A335341(A000265(n+1))`
-/

namespace A336649.P1375712288515144548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A000265 (n + 1)).toNat

end

end A336649.P1375712288515144548

noncomputable section

/-- A336649: Sum of divisors of A336651(n) (odd part of n divided by its largest squarefree divisor).

Offset 1, canonical program `A336649.P1375712288515144548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336649 (n : ℕ) : ℤ :=
  A336649.P1375712288515144548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345938.P13711634937950283158

`A047994(n+1)/A345937(n+1)`
-/

namespace A345938.P13711634937950283158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P13711634937950283158

noncomputable section

/-- A345938: a(n) = uphi(n) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345938.P13711634937950283158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A345937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345938 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345938.P13711634937950283158.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A345937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345939.P16885342451554269271

`n/A345937(n+1)`
-/

namespace A345939.P16885342451554269271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345939.P16885342451554269271

noncomputable section

/-- A345939: a(n) = (n-1) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345939.P16885342451554269271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345939.P16885342451554269271.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345939.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A353644.P12499979160227092597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353644.P12499979160227092597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353644.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A353646.P14527440753907412208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353646.P14527440753907412208.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353646.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A358558.P4524358198685759852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358558 (n : ℕ) : ℤ :=
  A358558.P4524358198685759852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358558.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A359378.P8655727792828051139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, A359172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359378 (n : ℕ) : ℤ :=
  A359378.P8655727792828051139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, A359172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359378.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A359592.P9333331553555915030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359592 (n : ℕ) : ℤ :=
  A359592.P9333331553555915030.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359592.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A360134.P1092804426433472261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360134 (n : ℕ) : ℤ :=
  A360134.P1092804426433472261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360134.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A360138.P2833924897830709977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360138 (n : ℕ) : ℤ :=
  A360138.P2833924897830709977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360138.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A360400.P9645885000250557637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360400 (n : ℕ) : ℤ :=
  A360400.P9645885000250557637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360400.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A360404.P16518747629998351864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360404 (n : ℕ) : ℤ :=
  A360404.P16518747629998351864.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360404.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A374263.P12173342319894559668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374263.P12173342319894559668.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374263.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A343174.P1593472062629477177

`A004526(n+2)+A033264(n+1)`
-/

namespace A343174.P1593472062629477177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 2) + A033264 (n + 1)

end

end A343174.P1593472062629477177

noncomputable section

/-- A343174: Partial sums of paper-folding sequence A014577.

Offset 0, canonical program `A343174.P1593472062629477177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343174 (n : ℕ) : ℤ :=
  A343174.P1593472062629477177.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346422.P4569030555854337770

`(1+A014081(n))*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346422.P4569030555854337770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A014081 n) * a (A053645 n).toNat

end

end A346422.P4569030555854337770

noncomputable section

/-- A346422: a(n) = (1 + A014081(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A346422.P4569030555854337770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346422 (n : ℕ) : ℤ :=
  A346422.P4569030555854337770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346422.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A355689.P15683903993202269668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359156, A359158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355689 (n : ℕ) : ℤ :=
  A355689.P15683903993202269668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359156, A359158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355689.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A362412.P10869923801910997708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362412.P10869923801910997708.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366600.P7705734904773832928

`(1+A033264(n))*a(A053645(n))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366600.P7705734904773832928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 + A033264 n) * a (A053645 n).toNat

end

end A366600.P7705734904773832928

noncomputable section

/-- A366600: a(n) = (1 + A033264(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A366600.P7705734904773832928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366600 (n : ℕ) : ℤ :=
  A366600.P7705734904773832928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366600.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A384056.P13183105280516576560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A384055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384056 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384056.P13183105280516576560.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A384055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384056.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A336937.P4577035631224528791

`A286357(n+1)-1`
-/

namespace A336937.P4577035631224528791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1) - 1

end

end A336937.P4577035631224528791

noncomputable section

/-- A336937: The 2-adic valuation of sigma(n), the sum of divisors of n.

Offset 1, canonical program `A336937.P4577035631224528791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336937 (n : ℕ) : ℤ :=
  A336937.P4577035631224528791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337195.P206722843149984959

`A007814(1+A000265(A000203(n+1)))`
-/

namespace A337195.P206722843149984959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A000265 (A000203 (n + 1)).toNat).toNat

end

end A337195.P206722843149984959

noncomputable section

/-- A337195: The 2-adic valuation of 1+A000265(sigma(n)), where A000265 gives the odd part.

Offset 1, canonical program `A337195.P206722843149984959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337195 (n : ℕ) : ℤ :=
  A337195.P206722843149984959.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337923.P10900891668975764083

`A007814(A000045(n+1))`
-/

namespace A337923.P10900891668975764083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000045 (n + 1)).toNat

end

end A337923.P10900891668975764083

noncomputable section

/-- A337923: a(n) is the exponent of the highest power of 2 dividing the n-th Fibonacci number.

Offset 1, canonical program `A337923.P10900891668975764083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337923 (n : ℕ) : ℤ :=
  A337923.P10900891668975764083.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346070.P15866064965806631537

`A007814(n+1)%4`
-/

namespace A346070.P15866064965806631537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 4

end

end A346070.P15866064965806631537

noncomputable section

/-- A346070: Symbolic code for the corner turns in the Lévy dragon curve.

Offset 1, canonical program `A346070.P15866064965806631537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346070 (n : ℕ) : ℤ :=
  A346070.P15866064965806631537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348513.P206487317806841830

`n+1-A254503(n+1)`
-/

namespace A348513.P206487317806841830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A254503 (n + 1)

end

end A348513.P206487317806841830

noncomputable section

/-- A348513: Möbius transform of A048146, the sum of non-unitary divisors of n.

Offset 1, canonical program `A348513.P206487317806841830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348513 (n : ℕ) : ℤ :=
  A348513.P206487317806841830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348513.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A353374.P4573974283751582701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353374 (n : ℕ) : ℤ :=
  A353374.P4573974283751582701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353374.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A358770.P14969810485770993373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358769, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358770 (n : ℕ) : ℤ :=
  A358770.P14969810485770993373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358769, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358770.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A374113.P12323162382327089993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374113 (n : ℕ) : ℤ :=
  A374113.P12323162382327089993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374113.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A374216.P3301399781499645410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374216 (n : ℕ) : ℤ :=
  A374216.P3301399781499645410.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374216.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A388286.P13565212649214377843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, A254503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388286.P13565212649214377843.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, A254503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388286.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A335003.P13569162527481826655

`A000051(A002024(n+1))*A057728(A080036(n))`
-/

namespace A335003.P13569162527481826655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002024 (n + 1)).toNat * A057728 (A080036 n).toNat

end

end A335003.P13569162527481826655

noncomputable section

/-- A335003: Triangle read by rows where the n-th row is the cycle trajectory of 2^n+1 in the divide-or-choose 2 rule.

Offset 1, canonical program `A335003.P13569162527481826655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A335003 (n : ℕ) : ℤ :=
  A335003.P13569162527481826655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A335003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335438.P3356434190855580502

`floor((A000188(A335437(n+1))-1)/2)`
-/

namespace A335438.P3356434190855580502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (A335437 (n + 1)).toNat - 1 : ℚ) / 2⌋

end

end A335438.P3356434190855580502

noncomputable section

/-- A335438: Number of partitions of k_n into two distinct parts (s,t) such that k_n | s*t, where k_n = A335437(n).

Offset 1, canonical program `A335438.P3356434190855580502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A335437, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335438 (n : ℕ) : ℤ :=
  A335438.P3356434190855580502.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A335437, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335657.P17958321216927884544

`A036348(n+1)/2`
-/

namespace A335657.P17958321216927884544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036348 (n + 1) : ℚ) / 2

end

end A335657.P17958321216927884544

noncomputable section

/-- A335657: Numbers whose prime factors (including repetitions) sum to an odd number.

Offset 1, canonical program `A335657.P17958321216927884544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335657.P17958321216927884544.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336615.P1929992287404199022

`eq[2, A295878(n+1)]+1`
-/

namespace A336615.P1929992287404199022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336615.P1929992287404199022

noncomputable section

/-- A336615: Numbers of the form p * m^2, where p is prime and m > 0 is not divisible by p.

Offset 1, canonical program `A336615.P1929992287404199022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. -/
def A336615 (n : ℕ) : ℤ :=
  (A336615.P1929992287404199022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. -/
def A336615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338038.P9375141477363809092

`A275812(n+1)+A008472(n+1)`
-/

namespace A338038.P9375141477363809092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (n + 1) + A008472 (n + 1)

end

end A338038.P9375141477363809092

noncomputable section

/-- A338038: a(n) is the sum of the primes and exponents in the prime factorization of n, but ignoring 1-exponents.

Offset 1, canonical program `A338038.P9375141477363809092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338038 (n : ℕ) : ℤ :=
  A338038.P9375141477363809092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341636.P2295451022923596252

`∑{d}[n+1, #*A333645((n+1)/#)]`
-/

namespace A341636.P2295451022923596252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341636.P2295451022923596252

noncomputable section

/-- A341636: a(n) = Sum_{d|n} phi(d) * tau(d) * tau(n/d).

Offset 1, canonical program `A341636.P2295451022923596252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341636 (n : ℕ) : ℤ :=
  A341636.P2295451022923596252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341836.P13945260103919537689

`∑{d}[n+1, A007427(#)*A341834((n+1)/#)]`
-/

namespace A341836.P13945260103919537689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341836.P13945260103919537689

noncomputable section

/-- A341836: Dirichlet g.f.: 1 / zeta(s)^10.

Offset 1, canonical program `A341836.P13945260103919537689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341836 (n : ℕ) : ℤ :=
  A341836.P13945260103919537689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342051.P3922930689487154872

`record[(n+1)*A008683(n+1-A276151(n+1))]`
-/

namespace A342051.P3922930689487154872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 ((n + 1 : ℤ) - A276151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342051.P3922930689487154872

noncomputable section

/-- A342051: Numbers k which have an even number of trailing zeros in their primorial base representation A049345(k).

Offset 1, canonical program `A342051.P3922930689487154872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6376 terms. -/
def A342051 (n : ℕ) : ℤ :=
  A342051.P3922930689487154872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6376 terms. -/
def A342051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343785.P5171936398951743688

`A008836(A343430(n+1))`
-/

namespace A343785.P5171936398951743688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A343430 (n + 1)).toNat

end

end A343785.P5171936398951743688

noncomputable section

/-- A343785: a(n) is completely multiplicative with a(p^e) = (-1)^e if p == 2 (mod 3) and a(p^e) = 1 otherwise.

Offset 1, canonical program `A343785.P5171936398951743688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A343430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343785 (n : ℕ) : ℤ :=
  A343785.P5171936398951743688.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A343430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343785.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344343.P11569095817677921307

`A344342(eq[1, A344342(n+2)-A344342(n+1)]+1)`
-/

namespace A344343.P11569095817677921307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 2) - A344342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A344343.P11569095817677921307

noncomputable section

/-- A344343: Starts of runs of 3 consecutive Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344343.P11569095817677921307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A344343 (n : ℕ) : ℤ :=
  A344343.P11569095817677921307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A344343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344596.P2719881451078791433

`A122553(n)!*A326419(n+1)`
-/

namespace A344596.P2719881451078791433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122553 n).toNat : ℤ) * A326419 (n + 1)

end

end A344596.P2719881451078791433

noncomputable section

/-- A344596: a(n) = Sum_{k=1..n} mu(k) * (floor(n/k)^3 - floor((n-1)/k)^3).

Offset 1, canonical program `A344596.P2719881451078791433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344596 (n : ℕ) : ℤ :=
  A344596.P2719881451078791433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344875.P1341474813427060519

`2*(n+1)-A323410(2*(n+1))`
-/

namespace A344875.P1341474813427060519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A323410 (2 * (n + 1))

end

end A344875.P1341474813427060519

noncomputable section

/-- A344875: Multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e - 1 for odd primes p.

Offset 1, canonical program `A344875.P1341474813427060519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344875 (n : ℕ) : ℤ :=
  A344875.P1341474813427060519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345039.P8520321823126508405

`A057860(n+1)%A008619(A016035(n+1))`
-/

namespace A345039.P8520321823126508405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057860 (n + 1)) (A008619 (A016035 (n + 1)).toNat)

end

end A345039.P8520321823126508405

noncomputable section

/-- A345039: Number of partitions of n into two composite parts that share a nontrivial divisor.

Offset 1, canonical program `A345039.P8520321823126508405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039 (n : ℕ) : ℤ :=
  A345039.P8520321823126508405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347026.P1087206353886803899

`or(1, A253580(n))`
-/

namespace A347026.P1087206353886803899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253580 n)

end

end A347026.P1087206353886803899

noncomputable section

/-- A347026: Irregular triangle read by rows in which row n lists the first n odd numbers, followed by the first n odd numbers in decreasing order.

Offset 1, canonical program `A347026.P1087206353886803899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347026 (n : ℕ) : ℤ :=
  A347026.P1087206353886803899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347204.P9262415258510155147

`a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`
-/

namespace A347204.P9262415258510155147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2)).toNat + a ⌊((2 * n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2⌋.toNat

end

end A347204.P9262415258510155147

noncomputable section

/-- A347204: a(n) = a(f(n)/2) + a(floor((n+f(n))/2)) for n > 0 with a(0) = 1 where f(n) = A129760(n).

Offset 0, canonical program `A347204.P9262415258510155147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A347204 (n : ℕ) : ℤ :=
  (A347204.P9262415258510155147.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A347204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348097.P16199017349381684825

`eq[A056169(n+1), A056170(n+1)]+1`
-/

namespace A348097.P16199017349381684825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348097.P16199017349381684825

noncomputable section

/-- A348097: Numbers having equally many unitary and nonunitary prime divisors.

Offset 1, canonical program `A348097.P16199017349381684825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A348097 (n : ℕ) : ℤ :=
  (A348097.P16199017349381684825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A348097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348121.P4983876733815640948

`lt[A056169(n+1), A056170(n+1)]+1`
-/

namespace A348121.P4983876733815640948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348121.P4983876733815640948

noncomputable section

/-- A348121: Numbers having more nonunitary than unitary prime divisors.

Offset 1, canonical program `A348121.P4983876733815640948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A348121 (n : ℕ) : ℤ :=
  (A348121.P4983876733815640948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A348121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348933.P13259023024269002684

`∩[A007310(n+1), A072864(n+1)]`
-/

namespace A348933.P13259023024269002684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348933.P13259023024269002684

noncomputable section

/-- A348933: Numbers k congruent to 1 or 5 mod 6, for which A348930(k^2) < k^2.

Offset 1, canonical program `A348933.P13259023024269002684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. -/
def A348933 (n : ℕ) : ℤ :=
  (A348933.P13259023024269002684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. -/
def A348933.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A351247.P9442226858346152668

`∑{d}[n+1, A239442(#)*A351246((n+1)/#)]`
-/

namespace A351247.P9442226858346152668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A351246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351247.P9442226858346152668

noncomputable section

/-- A351247: a(n) = n^7 * Sum_{p|n, p prime} 1/p^7.

Offset 1, canonical program `A351247.P9442226858346152668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351247 (n : ℕ) : ℤ :=
  A351247.P9442226858346152668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351602.P15349090548129750929

`(n+1)²*A328271(n+1)`
-/

namespace A351602.P15349090548129750929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A328271 (n + 1)

end

end A351602.P15349090548129750929

noncomputable section

/-- A351602: a(n) = n^4 * Sum_{d^2|n} 1 / d^4.

Offset 1, canonical program `A351602.P15349090548129750929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351602 (n : ℕ) : ℤ :=
  A351602.P15349090548129750929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351602.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A356473.P6255297414268024719

`(n+1)/gcd(n+1, A209295(n+1))`
-/

namespace A356473.P6255297414268024719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A209295 (n + 1)) : ℚ)

end

end A356473.P6255297414268024719

noncomputable section

/-- A356473: Denominator of the average of gcd(i,n) for i = 1..n.

Offset 1, canonical program `A356473.P6255297414268024719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356473.P6255297414268024719.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356473.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359152.P7216444529102150674

`A353558(n+1)-A359150(n+1)`
-/

namespace A359152.P7216444529102150674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (n + 1) - A359150 (n + 1)

end

end A359152.P7216444529102150674

noncomputable section

/-- A359152: a(n) = 1 if n is a number of the form 4u+3 with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359152.P7216444529102150674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353558, A359150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359152 (n : ℕ) : ℤ :=
  A359152.P7216444529102150674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353558, A359150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359152.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A362196.P10325085165088880186

`A008861(n)-n`
-/

namespace A362196.P10325085165088880186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n - (n : ℤ)

end

end A362196.P10325085165088880186

noncomputable section

/-- A362196: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 9 with exactly one descent.

Offset 0, canonical program `A362196.P10325085165088880186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362196 (n : ℕ) : ℤ :=
  A362196.P10325085165088880186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362196.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364205.P2014408668369465084

`A364204(n+1)-A122860(n+1)`
-/

namespace A364205.P2014408668369465084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 (n + 1) - A122860 (n + 1)

end

end A364205.P2014408668369465084

noncomputable section

/-- A364205: Expansion of Sum_{k>=0} x^(3*k+2) / (1 + x^(3*k+2)).

Offset 1, canonical program `A364205.P2014408668369465084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364205 (n : ℕ) : ℤ :=
  A364205.P2014408668369465084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364205.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369100.P3381107726307047957

`∑{d}[n+1, A115607(#)*A130054((n+1)/#)]`
-/

namespace A369100.P3381107726307047957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115607 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369100.P3381107726307047957

noncomputable section

/-- A369100: Dirichlet g.f.: zeta(s)^3 * (1 - 2^(1-s))^2.

Offset 1, canonical program `A369100.P3381107726307047957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369100 (n : ℕ) : ℤ :=
  A369100.P3381107726307047957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369100.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369359.P11914376555270565853

`A225034(n)-A002426(n)`
-/

namespace A369359.P11914376555270565853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - A002426 n

end

end A369359.P11914376555270565853

noncomputable section

/-- A369359: a(n) is the total semiperimeter over all Motzkin polyominoes of length n.

Offset 0, canonical program `A369359.P11914376555270565853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359 (n : ℕ) : ℤ :=
  A369359.P11914376555270565853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372503.P833081788414773444

`A001222(n+1)-A349258(n+1)`
-/

namespace A372503.P833081788414773444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A349258 (n + 1)

end

end A372503.P833081788414773444

noncomputable section

/-- A372503: The number of prime powers that are noninfinitary divisors of n.

Offset 1, canonical program `A372503.P833081788414773444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A349258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372503 (n : ℕ) : ℤ :=
  A372503.P833081788414773444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A349258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372503.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A372929.P17628262349535249383

`∑{d}[n+1, A068970(#)*A338165((n+1)/#)]`
-/

namespace A372929.P17628262349535249383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A338165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372929.P17628262349535249383

noncomputable section

/-- A372929: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^4.

Offset 1, canonical program `A372929.P17628262349535249383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372929 (n : ℕ) : ℤ :=
  A372929.P17628262349535249383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372937.P5162355273622128373

`∑{d}[n+1, A189393(#)*A372930((n+1)/#)]`
-/

namespace A372937.P5162355273622128373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A372930 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372937.P5162355273622128373

noncomputable section

/-- A372937: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^5.

Offset 1, canonical program `A372937.P5162355273622128373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372937 (n : ℕ) : ℤ :=
  A372937.P5162355273622128373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372950.P9193589771118210262

`∑{d}[n+1, A068970(#)*A238533((n+1)/#)]`
-/

namespace A372950.P9193589771118210262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372950.P9193589771118210262

noncomputable section

/-- A372950: a(n) = Sum_{1 <= x_1, x_2 <= n} ( n/gcd(x_1, x_2, n) )^3.

Offset 1, canonical program `A372950.P9193589771118210262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950 (n : ℕ) : ℤ :=
  A372950.P9193589771118210262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373041.P17794873688395257527

`(A123323(n+5)-3*A023022(n+5))/2`
-/

namespace A373041.P17794873688395257527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123323 (n + 5) - 3 * A023022 (n + 5) : ℚ) / 2

end

end A373041.P17794873688395257527

noncomputable section

/-- A373041: 2*a(n) is the number of triangles with integer sides (x, y, n), x < y < n, and gcd(x, y, n) = 1.

Offset 5, canonical program `A373041.P17794873688395257527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, A123323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373041 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373041.P17794873688395257527.a (n - 5))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, A123323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373041.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A373184.P13347508952625175779

`A168570(n+1)+A327625(n+1)+A284413(n+1)`
-/

namespace A373184.P13347508952625175779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (n + 1) + (A327625 (n + 1) + A284413 (n + 1))

end

end A373184.P13347508952625175779

noncomputable section

/-- A373184: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^3).

Offset 1, canonical program `A373184.P13347508952625175779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184 (n : ℕ) : ℤ :=
  A373184.P13347508952625175779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A373281.P14728433294096842931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A373281 (n : ℕ) : ℤ :=
  A373281.P14728433294096842931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A373281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373360.P3869209732951132874

`A373347(n+2)-A373347(n+1)`
-/

namespace A373360.P3869209732951132874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373347 (n + 2) - A373347 (n + 1)

end

end A373360.P3869209732951132874

noncomputable section

/-- A373360: First differences of A373347.

Offset 1, canonical program `A373360.P3869209732951132874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373360 (n : ℕ) : ℤ :=
  A373360.P3869209732951132874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373360.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A373592.P4059303154280305185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A373591, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373592 (n : ℕ) : ℤ :=
  A373592.P4059303154280305185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A373591, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A382968.P9973608297298639006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A382967, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382968 (n : ℕ) : ℤ :=
  A382968.P9973608297298639006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A382967, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382968.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A387319.P17597783198726216255

`A343311(n+1)-A063524(n)`
-/

namespace A387319.P17597783198726216255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) - A063524 n

end

end A387319.P17597783198726216255

noncomputable section

/-- A387319: Numbers k for which modulo 3 and modulo another multiple of 3 are coincident among the fractions (2*k mod m)/m for 1 <= m <= k.

Offset 1, canonical program `A387319.P17597783198726216255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319 (n : ℕ) : ℤ :=
  A387319.P17597783198726216255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390808.P15368856780448354872

`∑{d}[n+1, A125287(#)*A351600((n+1)/#)]`
-/

namespace A390808.P15368856780448354872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125287 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P15368856780448354872

noncomputable section

/-- A390808: The sum of the integers k from 1 to n such that gcd(n, k) is a square.

Offset 1, canonical program `A390808.P15368856780448354872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390808 (n : ℕ) : ℤ :=
  A390808.P15368856780448354872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390808.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392341.P17720603421166545301

`A370905(n+1)-A000196(n+1)`
-/

namespace A392341.P17720603421166545301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370905 (n + 1) - A000196 (n + 1)

end

end A392341.P17720603421166545301

noncomputable section

/-- A392341: Number of pairs (x, y) with 1 <= x < y <= n such that gcd(x, y) is a perfect square.

Offset 1, canonical program `A392341.P17720603421166545301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341 (n : ℕ) : ℤ :=
  A392341.P17720603421166545301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395768.P1059238046107922784

`∑{d}[n+1, #*A374367((n+1)/#)]`
-/

namespace A395768.P1059238046107922784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P1059238046107922784

noncomputable section

/-- A395768: The twisted Euler phi-function for the Dirichlet character kronecker(-4,.) mod 4.

Offset 1, canonical program `A395768.P1059238046107922784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768 (n : ℕ) : ℤ :=
  A395768.P1059238046107922784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A334731.P13809390634519434863

`∏{d}[n+1, A306682(#)]`
-/

namespace A334731.P13809390634519434863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A306682 d

end

end A334731.P13809390634519434863

noncomputable section

/-- A334731: a(n) = Product_{d|n} gcd(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334731.P13809390634519434863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334731 (n : ℕ) : ℤ :=
  A334731.P13809390634519434863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334793.P7332075651216311592

`∑{d}[n+1, A324528(#)]`
-/

namespace A334793.P7332075651216311592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324528 d

end

end A334793.P7332075651216311592

noncomputable section

/-- A334793: a(n) = Sum_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334793.P7332075651216311592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334793 (n : ℕ) : ℤ :=
  A334793.P7332075651216311592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334800.P4513335297567322539

`A062774(n+1)-A062799(n+1)`
-/

namespace A334800.P4513335297567322539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1) - A062799 (n + 1)

end

end A334800.P4513335297567322539

noncomputable section

/-- A334800: a(n) is the number of values d*p less than n, where d is a divisor of n, p is a prime, and d*p is not a divisor of n.

Offset 1, canonical program `A334800.P4513335297567322539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334800 (n : ℕ) : ℤ :=
  A334800.P4513335297567322539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334807.P16460342696752361550

`∏{d}[n+1, A324528(#)]`
-/

namespace A334807.P16460342696752361550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A324528 d

end

end A334807.P16460342696752361550

noncomputable section

/-- A334807: a(n) = Product_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334807.P16460342696752361550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334807 (n : ℕ) : ℤ :=
  A334807.P16460342696752361550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334919.P14357513930265192530

`lt[1, A046079(3*n+1)]`
-/

namespace A334919.P14357513930265192530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P14357513930265192530

noncomputable section

/-- A334919: Numbers of the form i + j + 3*i*j for i,j >= 1 together with numbers of the form -i - j + 3*i*j for i,j >= 2.

Offset 1, canonical program `A334919.P14357513930265192530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334919 (n : ℕ) : ℤ :=
  (A334919.P14357513930265192530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335431.P1130457591279741781

`∩[A054784(n+1), A175332(n+1)]`
-/

namespace A335431.P1130457591279741781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P1130457591279741781

noncomputable section

/-- A335431: Numbers of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0.

Offset 1, canonical program `A335431.P1130457591279741781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A335431 (n : ℕ) : ℤ :=
  (A335431.P1130457591279741781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A335431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336377.P11303749911854219269

`A000040(A336375(n+1))`
-/

namespace A336377.P11303749911854219269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336375 (n + 1)).toNat

end

end A336377.P11303749911854219269

noncomputable section

/-- A336377: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) > 1.

Offset 1, canonical program `A336377.P11303749911854219269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. -/
def A336377 (n : ℕ) : ℤ :=
  A336377.P11303749911854219269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. -/
def A336377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337532.P17091941672721247953

`A000217(A000005(A000265(n+1)))+A000217(A000005(A000265(n+1))*A007814(n+1))`
-/

namespace A337532.P17091941672721247953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (A000265 (n + 1)).toNat).toNat + A000217 (A000005 (A000265 (n + 1)).toNat * A007814 (n + 1)).toNat

end

end A337532.P17091941672721247953

noncomputable section

/-- A337532: a(n) = Sum_{d1|n, d2|n, d1<=d2} [(d1 mod 2) = (d2 mod 2)], where [ ] is the Iverson bracket.

Offset 1, canonical program `A337532.P17091941672721247953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337532 (n : ℕ) : ℤ :=
  A337532.P17091941672721247953.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338533.P15816568125547245429

`p?[A102770(n+3)-A102770(n+1)]`
-/

namespace A338533.P15816568125547245429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 3) - A102770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338533.P15816568125547245429

noncomputable section

/-- A338533: Primes in A338529/2.

Offset 1, canonical program `A338533.P15816568125547245429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A338533 (n : ℕ) : ℤ :=
  A338533.P15816568125547245429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A338533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338549.P13915775322579867345

`∑{d}[n+1, A321560(#)*A327274((n+1)/#)]`
-/

namespace A338549.P13915775322579867345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321560 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338549.P13915775322579867345

noncomputable section

/-- A338549: a(n) = n^4 * Sum_{d|n} (-1)^(n/d + 1) * mu(d) / d^4.

Offset 1, canonical program `A338549.P13915775322579867345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338549 (n : ℕ) : ℤ :=
  A338549.P13915775322579867345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339194.P3840768483066506201

`A034960(n+1)-A143215(n+1)`
-/

namespace A339194.P3840768483066506201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - A143215 (n + 1)

end

end A339194.P3840768483066506201

noncomputable section

/-- A339194: Sum of all squarefree semiprimes with greater prime factor prime(n).

Offset 1, canonical program `A339194.P3840768483066506201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339194 (n : ℕ) : ℤ :=
  A339194.P3840768483066506201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339640.P13360000113742845411

`(A062772(n+1)+A054270(n+1))/2-A001248(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339640.P13360000113742845411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062772 (n + 1) + A054270 (n + 1) : ℚ) / 2 - (A001248 (n + 1) : ℚ)

end

end A339640.P13360000113742845411

noncomputable section

/-- A339640: a(n) = (A062772(n) + A054270(n)) / 2 - A001248(n).

Offset 1, canonical program `A339640.P13360000113742845411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339640.P13360000113742845411.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341833.P7490125277756735496

`∑{d}[n+1, A341834(#)]`
-/

namespace A341833.P7490125277756735496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341834 d

end

end A341833.P7490125277756735496

noncomputable section

/-- A341833: Dirichlet g.f.: 1 / zeta(s)^7.

Offset 1, canonical program `A341833.P7490125277756735496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833 (n : ℕ) : ℤ :=
  A341833.P7490125277756735496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341916.P17753814801162057676

`A006068(A145342(n+1)-1)`
-/

namespace A341916.P17753814801162057676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A145342 (n + 1) - 1).toNat

end

end A341916.P17753814801162057676

noncomputable section

/-- A341916: Inverse permutation to A341915.

Offset 0, canonical program `A341916.P17753814801162057676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A341916 (n : ℕ) : ℤ :=
  A341916.P17753814801162057676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A341916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342185.P15363331262892615647

`p?[ceil(A074822(n+1)/10)]`
-/

namespace A342185.P15363331262892615647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074822 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342185.P15363331262892615647

noncomputable section

/-- A342185: Primes q such that 10*q-1 and 10*q+3 are cousin primes.

Offset 1, canonical program `A342185.P15363331262892615647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A342185 (n : ℕ) : ℤ :=
  A342185.P15363331262892615647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A342185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344221.P10470935627830531370

`∑{d}[n+1, A007432(#)*A397549((n+1)/#)]`
-/

namespace A344221.P10470935627830531370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A397549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P10470935627830531370

noncomputable section

/-- A344221: a(n) = Sum_{k=1..n} tau(gcd(k,n)^3), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344221.P10470935627830531370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344221 (n : ℕ) : ℤ :=
  A344221.P10470935627830531370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344222.P16415953736657626465

`∑{d}[n+1, A007432(#)*A062368((n+1)/#)]`
-/

namespace A344222.P16415953736657626465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A062368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344222.P16415953736657626465

noncomputable section

/-- A344222: a(n) = Sum_{k=1..n} tau(gcd(k,n)^4), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344222.P16415953736657626465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344222 (n : ℕ) : ℤ :=
  A344222.P16415953736657626465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344313.P8586429644628599476

`eq[0, Δ[A286324(n+1)]]+1`
-/

namespace A344313.P8586429644628599476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344313.P8586429644628599476

noncomputable section

/-- A344313: Number k such that k and k+1 have the same number of bi-unitary divisors (A286324).

Offset 1, canonical program `A344313.P8586429644628599476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A344313 (n : ℕ) : ℤ :=
  (A344313.P8586429644628599476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A344313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345366.P10256940836531311170

`A023523(n+2)%A001043(n+1)`
-/

namespace A345366.P10256940836531311170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023523 (n + 2)) (A001043 (n + 1))

end

end A345366.P10256940836531311170

noncomputable section

/-- A345366: a(n) = (p*q+1) mod (p+q) where p=prime(n) and q=prime(n+1).

Offset 1, canonical program `A345366.P10256940836531311170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345366 (n : ℕ) : ℤ :=
  A345366.P10256940836531311170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345978.P5377370654684222569

`-A307013(n)`
-/

namespace A345978.P5377370654684222569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A307013 n

end

end A345978.P5377370654684222569

noncomputable section

/-- A345978: Third coordinate of the points of a counterclockwise spiral on a hexagonal grid in a symmetric redundant hexagonal coordinate system.

Offset 0, canonical program `A345978.P5377370654684222569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345978 (n : ℕ) : ℤ :=
  A345978.P5377370654684222569.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346010.P5513981083379835901

`A000005(n+1)/gcd(A000005(n+1), A062799(n+1))`
-/

namespace A346010.P5513981083379835901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A062799 (n + 1)) : ℚ)

end

end A346010.P5513981083379835901

noncomputable section

/-- A346010: a(n) is the denominator of the average number of distinct prime factors of the divisors of n.

Offset 1, canonical program `A346010.P5513981083379835901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346010.P5513981083379835901.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346612.P17658702918821457984

`∑{d}[n+1, A046692(#)*A057670((n+1)/#)]`
-/

namespace A346612.P17658702918821457984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A057670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346612.P17658702918821457984

noncomputable section

/-- A346612: Moebius transform of A019554.

Offset 1, canonical program `A346612.P17658702918821457984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346612 (n : ℕ) : ℤ :=
  A346612.P17658702918821457984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346956.P6151444584231932237

`eq[A187680(n+1), A306682(n+1)]+1`
-/

namespace A346956.P6151444584231932237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346956.P6151444584231932237

noncomputable section

/-- A346956: Numbers k such that A000203(k) and A007955(k) are both divisible by A187680(k).

Offset 1, canonical program `A346956.P6151444584231932237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A346956 (n : ℕ) : ℤ :=
  (A346956.P6151444584231932237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A346956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347090.P2915293843078708431

`∑{d}[n+1, A046692(#)*A271102((n+1)/#)]`
-/

namespace A347090.P2915293843078708431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347090.P2915293843078708431

noncomputable section

/-- A347090: Dirichlet inverse of A332844.

Offset 1, canonical program `A347090.P2915293843078708431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347090 (n : ℕ) : ℤ :=
  A347090.P2915293843078708431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348825.P9957985684775902156

`record[(n+2)%A099378(n+2)]`
-/

namespace A348825.P9957985684775902156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A099378 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348825.P9957985684775902156

noncomputable section

/-- A348825: Numbers k such that the denominator of the harmonic mean of the divisors of k is larger than k.

Offset 1, canonical program `A348825.P9957985684775902156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A348825 (n : ℕ) : ℤ :=
  A348825.P9957985684775902156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A348825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348907.P8875665345231982490

`A008578(A342165(n+2))`
-/

namespace A348907.P8875665345231982490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A342165 (n + 2)).toNat

end

end A348907.P8875665345231982490

noncomputable section

/-- A348907: If n is prime, a(n) = n, else a(n) = a(n-pi(n)), n >= 2; where pi is the prime counting function A000720.

Offset 2, canonical program `A348907.P8875665345231982490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907 (n : ℕ) : ℤ :=
  A348907.P8875665345231982490.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348932.P8495340966039162489

`filter[A260682(n+2), A070563(#)]`
-/

namespace A348932.P8495340966039162489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A348932.P8495340966039162489

noncomputable section

/-- A348932: Numbers k congruent to 1 or 5 mod 6, for which A348930(k) > k.

Offset 1, canonical program `A348932.P8495340966039162489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9610 terms. -/
def A348932 (n : ℕ) : ℤ :=
  A348932.P8495340966039162489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9610 terms. -/
def A348932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349374.P2436747337903792946

`∑{d}[n+1, A332618(#)*A349431((n+1)/#)]`
-/

namespace A349374.P2436747337903792946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332618 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349374.P2436747337903792946

noncomputable section

/-- A349374: Dirichlet convolution of Kimberling's paraphrase, A003602, with squarefree part of n (A007913).

Offset 1, canonical program `A349374.P2436747337903792946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349374 (n : ℕ) : ℤ :=
  A349374.P2436747337903792946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349375.P5202373796057387530

`∑{d}[n+1, A074722(#)*A349373((n+1)/#)]`
-/

namespace A349375.P5202373796057387530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P5202373796057387530

noncomputable section

/-- A349375: Dirichlet convolution of Kimberling's paraphrase, A003602, with Liouville's lambda.

Offset 1, canonical program `A349375.P5202373796057387530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349375 (n : ℕ) : ℤ :=
  A349375.P5202373796057387530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349444.P9210141452199048946

`∑{d}[n+1, A007427(#)*A113415((n+1)/#)]`
-/

namespace A349444.P9210141452199048946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A113415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P9210141452199048946

noncomputable section

/-- A349444: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A092673 (Dirichlet inverse of A001511).

Offset 1, canonical program `A349444.P9210141452199048946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349444 (n : ℕ) : ℤ :=
  A349444.P9210141452199048946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349629.P6415063026675190056

`A046692(n+1)/gcd(n+1, A046692(n+1))`
-/

namespace A349629.P6415063026675190056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046692 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A046692 (n + 1)) : ℚ)

end

end A349629.P6415063026675190056

noncomputable section

/-- A349629: Numerators of the Dirichlet inverse of the abundancy index, sigma(n)/n.

Offset 1, canonical program `A349629.P6415063026675190056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349629 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349629.P6415063026675190056.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349630.P15265834467087415735

`(n+1)/gcd(n+1, A046692(n+1))`
-/

namespace A349630.P15265834467087415735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A046692 (n + 1)) : ℚ)

end

end A349630.P15265834467087415735

noncomputable section

/-- A349630: Denominators of the Dirichlet inverse of the abundancy index, sigma(n)/n.

Offset 1, canonical program `A349630.P15265834467087415735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349630 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349630.P15265834467087415735.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349664.P7684518333172414269

`A046079((n+1)²)`
-/

namespace A349664.P7684518333172414269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 ((n + 1) ^ 2)

end

end A349664.P7684518333172414269

noncomputable section

/-- A349664: a(n) is the number of solutions for n^4 = z^2 - x^2 with {z,x} >= 1.

Offset 1, canonical program `A349664.P7684518333172414269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664 (n : ℕ) : ℤ :=
  A349664.P7684518333172414269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A351654.P14786926509315681649

`∑{d}[n+1, #*A046692(#)]`
-/

namespace A351654.P14786926509315681649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046692 d

end

end A351654.P14786926509315681649

noncomputable section

/-- A351654: Dirichlet g.f.: zeta(s) / (zeta(s-1) * zeta(s-2)).

Offset 1, canonical program `A351654.P14786926509315681649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351654 (n : ℕ) : ℤ :=
  A351654.P14786926509315681649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351654.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A355825.P15495116383470503426

`A363329(n+1)%3`
-/

namespace A355825.P15495116383470503426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363329 (n + 1)) 3

end

end A355825.P15495116383470503426

noncomputable section

/-- A355825: a(n) = 1 if all exponents in prime factorization of n have an odd binary weight, otherwise 0.

Offset 1, canonical program `A355825.P15495116383470503426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355825 (n : ℕ) : ℤ :=
  A355825.P15495116383470503426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357070.P10423961064623382199

`A010054(n)+A053603(n)-A110654(A053603(n))`
-/

namespace A357070.P10423961064623382199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A053603 n - A110654 (A053603 n).toNat)

end

end A357070.P10423961064623382199

noncomputable section

/-- A357070: Number of partitions of n into at most 2 distinct positive triangular numbers.

Offset 0, canonical program `A357070.P10423961064623382199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A357070 (n : ℕ) : ℤ :=
  A357070.P10423961064623382199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A357070.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A357669.P7459688075800984872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357669.P7459688075800984872.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357669.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A357761.P12264452491752923310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, A356018, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357761 (n : ℕ) : ℤ :=
  A357761.P12264452491752923310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, A356018, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357761.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A359769.P3510413858819511961

`A353557(n+1)-A353556(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359769.P3510413858819511961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A353556 (n + 1)

end

end A359769.P3510413858819511961

noncomputable section

/-- A359769: a(n) = A353557(n) - A353556(n).

Offset 1, canonical program `A359769.P3510413858819511961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353556, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359769 (n : ℕ) : ℤ :=
  A359769.P3510413858819511961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353556, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359954.P251505247951898520

`∑{d}[n+1, A007432(#)*A333645((n+1)/#)]`
-/

namespace A359954.P251505247951898520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P251505247951898520

noncomputable section

/-- A359954: a(n) = Sum_{d|n} tau(d)*phi(d)*mu(n/d).

Offset 1, canonical program `A359954.P251505247951898520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359954 (n : ℕ) : ℤ :=
  A359954.P251505247951898520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360452.P5231315610190854606

`record[A049691(n)-a(n-1)]` with `a(0)=0`
-/

namespace A360452.P5231315610190854606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A049691 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360452.P5231315610190854606

noncomputable section

/-- A360452: Number of fractions c/d with |c| <= d <= 2n and odd denominator when factors of 2 are canceled.

Offset 0, canonical program `A360452.P5231315610190854606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452 (n : ℕ) : ℤ :=
  A360452.P5231315610190854606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360525.P13636672009762808303

`lt[2*n+3, A360522(n+1)]+1`
-/

namespace A360525.P13636672009762808303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360525.P13636672009762808303

noncomputable section

/-- A360525: Numbers k such that A360522(k) > 2*k.

Offset 1, canonical program `A360525.P13636672009762808303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525 (n : ℕ) : ℤ :=
  (A360525.P13636672009762808303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361341.P8255711080193377984

`eq[2, A361338(n)]`
-/

namespace A361341.P8255711080193377984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361341.P8255711080193377984

noncomputable section

/-- A361341: Numbers k such that A361338(k) = 2.

Offset 1, canonical program `A361341.P8255711080193377984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1398 terms. -/
def A361341 (n : ℕ) : ℤ :=
  (A361341.P8255711080193377984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1398 terms. -/
def A361341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361342.P1528223230497361746

`eq[3, A361338(n)]`
-/

namespace A361342.P1528223230497361746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361342.P1528223230497361746

noncomputable section

/-- A361342: Numbers k such that A361338(k) = 3.

Offset 1, canonical program `A361342.P1528223230497361746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A361342 (n : ℕ) : ℤ :=
  (A361342.P1528223230497361746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A361342.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363571.P3654018862182972144

`(A084771(n)-1)/4`
-/

namespace A363571.P3654018862182972144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084771 n - 1 : ℚ) / 4

end

end A363571.P3654018862182972144

noncomputable section

/-- A363571: Expansion of (1 / sqrt(1 - 10*x + 9*x^2) - 1 / (1 - x)) / 4.

Offset 0, canonical program `A363571.P3654018862182972144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363571.P3654018862182972144.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363571.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A365829.P2680897813873898775

`record[A007913(A246716(n+1))]`
-/

namespace A365829.P2680897813873898775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A246716 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365829.P2680897813873898775

noncomputable section

/-- A365829: Squarefree non-semiprimes.

Offset 1, canonical program `A365829.P2680897813873898775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4722 terms. -/
def A365829 (n : ℕ) : ℤ :=
  A365829.P2680897813873898775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4722 terms. -/
def A365829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366379.P3372752632855876333

`comp[A366378(n+1)]`
-/

namespace A366379.P3372752632855876333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366379.P3372752632855876333

noncomputable section

/-- A366379: Numbers k such that A057889(k) != k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366379.P3372752632855876333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5754 terms. -/
def A366379 (n : ℕ) : ℤ :=
  (A366379.P3372752632855876333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5754 terms. -/
def A366379.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372511.P6889518927263151039

`∑[A290081(n)]`
-/

namespace A372511.P6889518927263151039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372511.P6889518927263151039

noncomputable section

/-- A372511: Number of solutions to x^2 + y^2 <= n, where x, y are positive odd integers.

Offset 0, canonical program `A372511.P6889518927263151039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A372511 (n : ℕ) : ℤ :=
  A372511.P6889518927263151039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A372511.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373836.P14977565913195360682

`A372573(n+1)*A373975(n+1)`
-/

namespace A373836.P14977565913195360682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A373975 (n + 1)

end

end A373836.P14977565913195360682

noncomputable section

/-- A373836: a(n) = 1 if bigomega(n) and A276085(n) are both multiples of 3, otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373836.P14977565913195360682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373836 (n : ℕ) : ℤ :=
  A373836.P14977565913195360682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373836.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A377421.P16177160434784500960

`filter[A204232(n+1), A178226(#)]`
-/

namespace A377421.P16177160434784500960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A377421.P16177160434784500960

noncomputable section

/-- A377421: Numbers whose binary reversal is prime and unequal to the original number.

Offset 1, canonical program `A377421.P16177160434784500960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421 (n : ℕ) : ℤ :=
  A377421.P16177160434784500960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378211.P10174579376731078055

`2*A046692(n+1)-A055615(n+1)`
-/

namespace A378211.P10174579376731078055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046692 (n + 1) - A055615 (n + 1)

end

end A378211.P10174579376731078055

noncomputable section

/-- A378211: Dirichlet inverse of A191161, hypersigma variant 2.

Offset 1, canonical program `A378211.P10174579376731078055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378211 (n : ℕ) : ℤ :=
  A378211.P10174579376731078055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378224.P17280632333159008747

`∑{d}[n+1, A033879(#)*A326938((n+1)/#)]`
-/

namespace A378224.P17280632333159008747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378224.P17280632333159008747

noncomputable section

/-- A378224: Dirichlet inverse of A378223.

Offset 1, canonical program `A378224.P17280632333159008747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378224 (n : ℕ) : ℤ :=
  A378224.P17280632333159008747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378224.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A378434.P1462916945159414399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158523, A178450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378434.P1462916945159414399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158523, A178450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378434.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A378443.P3282744420953376765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378443 (n : ℕ) : ℤ :=
  A378443.P3282744420953376765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378535.P6218946312386172264

`(A074722(n+1)+n+1)/2`
-/

namespace A378535.P6218946312386172264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074722 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A378535.P6218946312386172264

noncomputable section

/-- A378535: Möbius transform of A378542, where A378542 is the sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378535.P6218946312386172264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378535.P6218946312386172264.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378535.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379109.P7269606756069471216

`∑{d}[n+1, A046692(#)*A336923((n+1)/#)]`
-/

namespace A379109.P7269606756069471216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A336923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379109.P7269606756069471216

noncomputable section

/-- A379109: Dirichlet convolution of A046692 (inverse of sigma) with A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A379109.P7269606756069471216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379109 (n : ℕ) : ℤ :=
  A379109.P7269606756069471216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379109.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A381823.P9333839630862203631

`filter[A053850(n+1), A212793(#)]`
-/

namespace A381823.P9333839630862203631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A381823.P9333839630862203631

noncomputable section

/-- A381823: Odd cubefree numbers that are not squarefree.

Offset 1, canonical program `A381823.P9333839630862203631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7009 terms. -/
def A381823 (n : ℕ) : ℤ :=
  A381823.P9333839630862203631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7009 terms. -/
def A381823.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A382966.P5975578079117178061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A375072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P5975578079117178061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A375072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A384039.P10188407723644566643

`∑{d}[n+1, A074722(#)*A368248((n+1)/#)]`
-/

namespace A384039.P10188407723644566643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A368248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384039.P10188407723644566643

noncomputable section

/-- A384039: The number of integers k from 1 to n such that gcd(n,k) is a powerful number.

Offset 1, canonical program `A384039.P10188407723644566643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384039 (n : ℕ) : ℤ :=
  A384039.P10188407723644566643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384039.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A388060.P10420952751908136420

`A084771(n)+2*A059231(n)*2*n`
-/

namespace A388060.P10420952751908136420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + 2 * A059231 n * (2 * n : ℤ)

end

end A388060.P10420952751908136420

noncomputable section

/-- A388060: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+1,k).

Offset 0, canonical program `A388060.P10420952751908136420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A388060 (n : ℕ) : ℤ :=
  A388060.P10420952751908136420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A388060.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391025.P17647453908498382360

`filter[A053850(n+1), A389905(#)]`
-/

namespace A391025.P17647453908498382360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P17647453908498382360

noncomputable section

/-- A391025: Odd numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391025.P17647453908498382360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025 (n : ℕ) : ℤ :=
  A391025.P17647453908498382360.a (n - 1)

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

Offset 1, canonical program `A395301.P11832353311031738574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A345266, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395301 (n : ℕ) : ℤ :=
  A395301.P11832353311031738574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A345266, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395301.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397238.P14966536247982268415

`A046692(A057521(n+1))`
-/

namespace A397238.P14966536247982268415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A057521 (n + 1)).toNat

end

end A397238.P14966536247982268415

noncomputable section

/-- A397238: Dirichlet g.f.: Product_{p prime} (1 + 1/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397238.P14966536247982268415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397238 (n : ℕ) : ℤ :=
  A397238.P14966536247982268415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397238.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A334871.P12161263468435973650

`A331740(n+1)+A299090(A000188(n+1))`
-/

namespace A334871.P12161263468435973650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1) + A299090 (A000188 (n + 1)).toNat

end

end A334871.P12161263468435973650

noncomputable section

/-- A334871: Number of steps needed to reach 1 when starting from n and iterating with A334870.

Offset 1, canonical program `A334871.P12161263468435973650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A334871 (n : ℕ) : ℤ :=
  A334871.P12161263468435973650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A334871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334985.P2617165009463626642

`A336723(n+1)/A337323(n+1)`
-/

namespace A334985.P2617165009463626642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (A337323 (n + 1) : ℚ)

end

end A334985.P2617165009463626642

noncomputable section

/-- A334985: a(n) = lcm(n, tau(n), sigma(n), pod(n)) / gcd(n, tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334985.P2617165009463626642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336723, A337323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334985.P2617165009463626642.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336723, A337323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335397.P14891039673154172877

`∩[A335328(n+1)-1, A335328(n+1)]`
-/

namespace A335397.P14891039673154172877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335397.P14891039673154172877

noncomputable section

/-- A335397: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary divisors (A048109).

Offset 1, canonical program `A335397.P14891039673154172877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A335397 (n : ℕ) : ℤ :=
  (A335397.P14891039673154172877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A335397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335969.P8452878406880024569

`∩[A034961(n+1), A046389(n+1)]`
-/

namespace A335969.P8452878406880024569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P8452878406880024569

noncomputable section

/-- A335969: Sphenic numbers that are also the sum of three consecutive primes.

Offset 1, canonical program `A335969.P8452878406880024569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. -/
def A335969 (n : ℕ) : ℤ :=
  (A335969.P8452878406880024569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. -/
def A335969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336510.P14148724725539657442

`xor(a(n-1), A248663(n+1))` with `a(0)=0`
-/

namespace A336510.P14148724725539657442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A248663 (n + 1))

end

end A336510.P14148724725539657442

noncomputable section

/-- A336510: a(n) = Sum_{p | A055204(n)} 2^(pi(p) - 1).

Offset 1, canonical program `A336510.P14148724725539657442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A336510 (n : ℕ) : ℤ :=
  A336510.P14148724725539657442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A336510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337135.P2317708887760458389

`A349326(A338506(n+1))-A063962(n+1)`
-/

namespace A337135.P2317708887760458389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349326 (A338506 (n + 1)).toNat - A063962 (n + 1)

end

end A337135.P2317708887760458389

noncomputable section

/-- A337135: a(1) = 1; for n > 1, a(n) = Sum_{d|n, d <= sqrt(n)} a(d).

Offset 1, canonical program `A337135.P2317708887760458389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A337135 (n : ℕ) : ℤ :=
  A337135.P2317708887760458389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A337135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338713.P15967198908333661238

`A230980(n)^A024008(A072670(n))`
-/

namespace A338713.P15967198908333661238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230980 n : ℚ) ^ (A024008 (A072670 n).toNat : ℤ)

end

end A338713.P15967198908333661238

noncomputable section

/-- A338713: Number of numbers of the form i*n with 1 <= i <= n and tau(i*n) = 4.

Offset 1, canonical program `A338713.P15967198908333661238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338713.P15967198908333661238.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339746.P14149983824418019061

`eq[1, A372573(n+1)]+1`
-/

namespace A339746.P14149983824418019061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339746.P14149983824418019061

noncomputable section

/-- A339746: Positive integers of the form 2^i*3^j*k, gcd(k,6)=1, and i == j (mod 3).

Offset 1, canonical program `A339746.P14149983824418019061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339746 (n : ℕ) : ℤ :=
  (A339746.P14149983824418019061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340070.P6497847320767913254

`gcd(A003415(n+1), A069359(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340070.P6497847320767913254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A069359 (n + 1))

end

end A340070.P6497847320767913254

noncomputable section

/-- A340070: a(n) = gcd(A003415(n), A069359(n)).

Offset 1, canonical program `A340070.P6497847320767913254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340070 (n : ℕ) : ℤ :=
  (A340070.P6497847320767913254.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341998.P3260792565066439335

`A003557(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341998.P3260792565066439335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003415 (n + 2)).toNat

end

end A341998.P3260792565066439335

noncomputable section

/-- A341998: Arithmetic derivative of n divided by its largest squarefree divisor: a(n) = A003557(A003415(n)).

Offset 2, canonical program `A341998.P3260792565066439335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341998 (n : ℕ) : ℤ :=
  A341998.P3260792565066439335.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342001.P4805983025243635594

`A003415(n+1)/A003557(n+1)`
-/

namespace A342001.P4805983025243635594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342001.P4805983025243635594

noncomputable section

/-- A342001: Arithmetic derivative without its inherited divisor; the arithmetic derivative of n divided by A003557(n), which is a common divisor of both n and A003415(n).

Offset 1, canonical program `A342001.P4805983025243635594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342001.P4805983025243635594.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342003.P12697586407558100656

`A051903(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342003.P12697586407558100656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003415 (n + 2)).toNat

end

end A342003.P12697586407558100656

noncomputable section

/-- A342003: Maximal exponent in the prime factorization of the arithmetic derivative of n: a(n) = A051903(A003415(n)).

Offset 2, canonical program `A342003.P12697586407558100656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342003 (n : ℕ) : ℤ :=
  A342003.P12697586407558100656.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342014.P7987334312565012006

`A003415(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342014.P7987334312565012006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 1)) (n + 1 : ℤ)

end

end A342014.P7987334312565012006

noncomputable section

/-- A342014: Arithmetic derivative of n, taken modulo n: a(n) = A003415(n) mod n.

Offset 1, canonical program `A342014.P7987334312565012006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342014 (n : ℕ) : ℤ :=
  A342014.P7987334312565012006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342190.P10398113537479394527

`lt[A070176(A001065(n+1)), 1]+1`
-/

namespace A342190.P10398113537479394527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A001065 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A342190.P10398113537479394527

noncomputable section

/-- A342190: Numbers k such that A001065(k) = sigma(k) - k is the sum of 2 squares.

Offset 1, canonical program `A342190.P10398113537479394527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. -/
def A342190 (n : ℕ) : ℤ :=
  (A342190.P10398113537479394527.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. -/
def A342190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342413.P16306425456188570454

`gcd(A000010(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342413.P16306425456188570454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A003415 (n + 1))

end

end A342413.P16306425456188570454

noncomputable section

/-- A342413: a(n) = gcd(phi(n), A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

Offset 1, canonical program `A342413.P16306425456188570454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342413 (n : ℕ) : ℤ :=
  (A342413.P16306425456188570454.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342413.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342458.P90921969619416405

`gcd(A001615(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342458.P90921969619416405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (n + 1)) (A003415 (n + 1))

end

end A342458.P90921969619416405

noncomputable section

/-- A342458: a(n) = gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A342458.P90921969619416405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342458 (n : ℕ) : ℤ :=
  (A342458.P90921969619416405.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342925.P15548023362340798578

`A003415(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342925.P15548023362340798578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000203 (n + 1)).toNat

end

end A342925.P15548023362340798578

noncomputable section

/-- A342925: a(n) = A003415(sigma(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A342925.P15548023362340798578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342925 (n : ℕ) : ℤ :=
  A342925.P15548023362340798578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342926.P4470252803445258283

`A003415(A000203(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342926.P4470252803445258283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000203 (n + 1)).toNat - (n + 1 : ℤ)

end

end A342926.P4470252803445258283

noncomputable section

/-- A342926: a(n) = A003415(sigma(n)) - n, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A342926.P4470252803445258283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342926 (n : ℕ) : ℤ :=
  A342926.P4470252803445258283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343223.P16005087766060085566

`gcd(A003415(n+1), A003415(A000203(n+1))-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343223.P16005087766060085566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A003415 (A000203 (n + 1)).toNat - (n + 1 : ℤ))

end

end A343223.P16005087766060085566

noncomputable section

/-- A343223: a(n) = gcd(A003415(n), A003415(sigma(n))-n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343223.P16005087766060085566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343223 (n : ℕ) : ℤ :=
  (A343223.P16005087766060085566.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343223.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343224.P18101851413978261599

`A000203(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343224.P18101851413978261599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A003415 (n + 1)

end

end A343224.P18101851413978261599

noncomputable section

/-- A343224: a(n) = sigma(n) - A003415(n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343224.P18101851413978261599`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343224 (n : ℕ) : ℤ :=
  A343224.P18101851413978261599.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343226.P5865503827985673324

`gcd(A000203(n+1), n+1+A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343226.P5865503827985673324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) ((n + 1 : ℤ) + A003415 (n + 1))

end

end A343226.P5865503827985673324

noncomputable section

/-- A343226: a(n) = gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343226.P5865503827985673324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343226 (n : ℕ) : ℤ :=
  (A343226.P5865503827985673324.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344024.P3749631349074452751

`A003415(A001615(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344024.P3749631349074452751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001615 (n + 1)).toNat

end

end A344024.P3749631349074452751

noncomputable section

/-- A344024: a(n) = A003415(A001615(n)).

Offset 1, canonical program `A344024.P3749631349074452751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344024 (n : ℕ) : ℤ :=
  A344024.P3749631349074452751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344178.P7382453285315687724

`A003415(n+1)-A051953(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344178.P7382453285315687724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A051953 (n + 1)

end

end A344178.P7382453285315687724

noncomputable section

/-- A344178: Difference between the arithmetic derivative of n and the cototient of n: a(n) = A003415(n) - A051953(n).

Offset 1, canonical program `A344178.P7382453285315687724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344178 (n : ℕ) : ℤ :=
  A344178.P7382453285315687724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345298.P9232387955265906661

`2*A087207(n+1)`
-/

namespace A345298.P9232387955265906661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087207 (n + 1)

end

end A345298.P9232387955265906661

noncomputable section

/-- A345298: a(n) = Sum_{p|n, p prime} tau(p #).

Offset 1, canonical program `A345298.P9232387955265906661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A345298 (n : ℕ) : ℤ :=
  A345298.P9232387955265906661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A345298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347870.P16417163983135192984

`A003415(A000203(n+1))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347870.P16417163983135192984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A000203 (n + 1)).toNat) 2

end

end A347870.P16417163983135192984

noncomputable section

/-- A347870: a(n) = A003415(sigma(n)) mod 2, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A347870.P16417163983135192984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347870 (n : ℕ) : ℤ :=
  A347870.P16417163983135192984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347870.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347871.P15661038044456868434

`(n+1+A003415(A000203(n+1)))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347871.P15661038044456868434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) + A003415 (A000203 (n + 1)).toNat) 2

end

end A347871.P15661038044456868434

noncomputable section

/-- A347871: a(n) = (n+A003415(sigma(n))) mod 2, where A003415 gives the arithmetic derivative of its argument.

Offset 1, canonical program `A347871.P15661038044456868434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347871 (n : ℕ) : ℤ :=
  A347871.P15661038044456868434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348028.P15680681678257223699

`gcd(A000203(n+1), A003415(n+1))`
-/

namespace A348028.P15680681678257223699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003415 (n + 1))

end

end A348028.P15680681678257223699

noncomputable section

/-- A348028: Greatest common divisor of A003415 (arithmetic derivative) and sigma, the sum of divisors function.

Offset 1, canonical program `A348028.P15680681678257223699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348028 (n : ℕ) : ℤ :=
  (A348028.P15680681678257223699.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348193.P14696204599237552078

`A348195(n+1)-A348196(n+1)`
-/

namespace A348193.P14696204599237552078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1) - A348196 (n + 1)

end

end A348193.P14696204599237552078

noncomputable section

/-- A348193: (Number of primes == 3 mod 4 less than n^2) - (number of primes == 1 mod 4 less than n^2).

Offset 1, canonical program `A348193.P14696204599237552078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348195, A348196, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348193 (n : ℕ) : ℤ :=
  A348193.P14696204599237552078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348195, A348196, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348193.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348510.P9117605113874141124

`A099377(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348510.P9117605113874141124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (n + 1) - (n + 1 : ℤ)

end

end A348510.P9117605113874141124

noncomputable section

/-- A348510: a(n) = A099377(n) - n, where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348510.P9117605113874141124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348510 (n : ℕ) : ℤ :=
  A348510.P9117605113874141124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348968.P179748498785656082

`gcd(n+1, A099377(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348968.P179748498785656082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A099377 (n + 1))

end

end A348968.P179748498785656082

noncomputable section

/-- A348968: a(n) = gcd(n, A099377(n)), where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348968.P179748498785656082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348968 (n : ℕ) : ℤ :=
  (A348968.P179748498785656082.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349621.P11464347812441813831

`∑{d}[n+1, A003415(#)*A063441((n+1)/#)]`
-/

namespace A349621.P11464347812441813831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A063441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349621.P11464347812441813831

noncomputable section

/-- A349621: Dirichlet convolution of A003415 with the Dirichlet inverse of A003959.

Offset 1, canonical program `A349621.P11464347812441813831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349621 (n : ℕ) : ℤ :=
  A349621.P11464347812441813831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349621.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A350221.P7711641196611513956

`A309081((n+1)²)`
-/

namespace A350221.P7711641196611513956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309081 ((n + 1) ^ 2)

end

end A350221.P7711641196611513956

noncomputable section

/-- A350221: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/k)^2).

Offset 1, canonical program `A350221.P7711641196611513956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350221 (n : ℕ) : ℤ :=
  A350221.P7711641196611513956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350221.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A353352.P1673129124953599033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353352 (n : ℕ) : ℤ :=
  A353352.P1673129124953599033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353352.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A353493.P11274573970098312358

`A003415(n)%4`
-/

namespace A353493.P11274573970098312358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) 4

end

end A353493.P11274573970098312358

noncomputable section

/-- A353493: The arithmetic derivative of n, reduced modulo 4.

Offset 0, canonical program `A353493.P11274573970098312358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353493 (n : ℕ) : ℤ :=
  A353493.P11274573970098312358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353494.P3598383137759262776

`round(gcd(4, A003415(n))/8)`
-/

namespace A353494.P3598383137759262776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.gcd 4 (A003415 n) : ℚ) / 8)

end

end A353494.P3598383137759262776

noncomputable section

/-- A353494: a(n) = 1 if the arithmetic derivative of n is a multiple of 4, otherwise 0.

Offset 0, canonical program `A353494.P3598383137759262776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494 (n : ℕ) : ℤ :=
  A353494.P3598383137759262776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353495.P17772211378509351063

`C(A003415(n)+5, 3)%2`
-/

namespace A353495.P17772211378509351063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003415 n + 5).toNat 3 % 2

end

end A353495.P17772211378509351063

noncomputable section

/-- A353495: a(n) = 1 if the arithmetic derivative of n is of the form 4k+2, otherwise 0.

Offset 0, canonical program `A353495.P17772211378509351063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495 (n : ℕ) : ℤ :=
  (A353495.P17772211378509351063.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355003.P5537165438358420567

`gcd(A003415(n+1), A277791(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355003.P5537165438358420567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A277791 (n + 1))

end

end A355003.P5537165438358420567

noncomputable section

/-- A355003: a(n) = gcd(A003415(n), A277791(n)), where A003415 is the arithmetic derivative and A277791 is the denominator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A355003.P5537165438358420567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A277791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355003 (n : ℕ) : ℤ :=
  (A355003.P5537165438358420567.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A277791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355947.P8187086082936947056

`A362625(n+1)+A339370(n+1)`
-/

namespace A355947.P8187086082936947056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362625 (n + 1) + A339370 (n + 1)

end

end A355947.P8187086082936947056

noncomputable section

/-- A355947: a(n) = Sum_{k=1..n} (n+1-k)*floor(n/k).

Offset 0, canonical program `A355947.P8187086082936947056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355947 (n : ℕ) : ℤ :=
  A355947.P8187086082936947056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359430.P17743289433619034511

`val(gcd(3, A003415(n)), 3)`
-/

namespace A359430.P17743289433619034511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd 3 (A003415 n)) 3

end

end A359430.P17743289433619034511

noncomputable section

/-- A359430: a(n) = 1 if the arithmetic derivative of n is a multiple of 3, otherwise 0.

Offset 0, canonical program `A359430.P17743289433619034511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359430 (n : ℕ) : ℤ :=
  (A359430.P17743289433619034511.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359820.P4426895942293485706

`(n+A003415(n))%2`
-/

namespace A359820.P4426895942293485706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) + A003415 n) 2

end

end A359820.P4426895942293485706

noncomputable section

/-- A359820: a(n) = 1 if n and n' are of different parity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A359820.P4426895942293485706`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359820 (n : ℕ) : ℤ :=
  A359820.P4426895942293485706.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359820.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A360428.P9068250880525305499

`∑{d}[n+1, A338164(#)]`
-/

namespace A360428.P9068250880525305499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338164 d

end

end A360428.P9068250880525305499

noncomputable section

/-- A360428: Inverse Mobius transformation of A338164.

Offset 1, canonical program `A360428.P9068250880525305499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360428 (n : ℕ) : ℤ :=
  A360428.P9068250880525305499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360428.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363553.P1066074787311457405

`A011582(A369306(n+1))`
-/

namespace A363553.P1066074787311457405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A369306 (n + 1)).toNat

end

end A363553.P1066074787311457405

noncomputable section

/-- A363553: Möbius function of rank 5: a(n) = lambda(n) = A008836(n) if n is 5-free and 0 otherwise.

Offset 1, canonical program `A363553.P1066074787311457405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363553 (n : ℕ) : ℤ :=
  A363553.P1066074787311457405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363553.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A363615.P15240525384775454564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002129, A321543, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363615.P15240525384775454564.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002129, A321543, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363615.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A363629.P1618946847333743156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363629 (n : ℕ) : ℤ :=
  A363629.P1618946847333743156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363629.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A364343.P7180893498198076980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364343.P7180893498198076980.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364343.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A364351.P8907097505146139643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364351.P8907097505146139643.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365174.P1377516069112288599

`∑{d}[n+1, A254503(#)*A365336((n+1)/#)]`
-/

namespace A365174.P1377516069112288599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A365336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365174.P1377516069112288599

noncomputable section

/-- A365174: The sum of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

Offset 1, canonical program `A365174.P1377516069112288599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365174 (n : ℕ) : ℤ :=
  A365174.P1377516069112288599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365174.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A366534.P14908058348624275973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366534 (n : ℕ) : ℤ :=
  A366534.P14908058348624275973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A368469.P12995681979237792953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368469 (n : ℕ) : ℤ :=
  A368469.P12995681979237792953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A369049.P9666257041072368809

`(n+2)%A003415(n+2)`
-/

namespace A369049.P9666257041072368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A003415 (n + 2))

end

end A369049.P9666257041072368809

noncomputable section

/-- A369049: a(n) = n mod n', where n' is the arithmetic derivative of n, A003415.

Offset 2, canonical program `A369049.P9666257041072368809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369049 (n : ℕ) : ℤ :=
  A369049.P9666257041072368809.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369052.P13766350415687932564

`n-2*A003415(n)`
-/

namespace A369052.P13766350415687932564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A003415 n

end

end A369052.P13766350415687932564

noncomputable section

/-- A369052: a(n) = n - n'*2, where n' is the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369052.P13766350415687932564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369052 (n : ℕ) : ℤ :=
  A369052.P13766350415687932564.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369252.P4904178596976423146

`A003415(A046316(n+1))`
-/

namespace A369252.P4904178596976423146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046316 (n + 1)).toNat

end

end A369252.P4904178596976423146

noncomputable section

/-- A369252: Arithmetic derivative applied to the numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

Offset 1, canonical program `A369252.P4904178596976423146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369252 (n : ℕ) : ℤ :=
  A369252.P4904178596976423146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369252.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A369465.P18253036522274647247

`A003415(A000265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369465.P18253036522274647247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000265 (n + 1)).toNat

end

end A369465.P18253036522274647247

noncomputable section

/-- A369465: Arithmetic derivative of the odd part of n: a(n) = A003415(A000265(n)).

Offset 1, canonical program `A369465.P18253036522274647247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369465 (n : ℕ) : ℤ :=
  A369465.P18253036522274647247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369660.P11962281434868844871

`A369965(A003415(n))`
-/

namespace A369660.P11962281434868844871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A003415 n).toNat

end

end A369660.P11962281434868844871

noncomputable section

/-- A369660: a(n) = 1 if n' is of the form 4k+2, and n' has an even number of prime factors, otherwise a(n) = 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369660.P11962281434868844871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369660 (n : ℕ) : ℤ :=
  A369660.P11962281434868844871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369967.P2338115965869939887

`1-A011558(A003415(n))`
-/

namespace A369967.P2338115965869939887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011558 (A003415 n).toNat

end

end A369967.P2338115965869939887

noncomputable section

/-- A369967: a(n) = 1 if the arithmetic derivative of n is a multiple of 5, otherwise 0.

Offset 0, canonical program `A369967.P2338115965869939887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967 (n : ℕ) : ℤ :=
  A369967.P2338115965869939887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370129.P9840769803165545033

`A003415(A002110(col(n))+A002110(row(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370129.P9840769803165545033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002110 (SequenceMachineLib.triCol n) + A002110 (SequenceMachineLib.triRow n)).toNat

end

end A370129.P9840769803165545033

noncomputable section

/-- A370129: Triangle read by rows: T(n,k) = A003415(A002110(n)+A002110(k)), 0 <= k <= n; arithmetic derivatives of the sums of two primorial numbers.

Offset 0, canonical program `A370129.P9840769803165545033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370129 (n : ℕ) : ℤ :=
  A370129.P9840769803165545033.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370136.P9101358364246055497

`A003415(A370135(n+1))`
-/

namespace A370136.P9101358364246055497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370135 (n + 1)).toNat

end

end A370136.P9101358364246055497

noncomputable section

/-- A370136: Triangle read by rows: T(n,k) = arithmetic derivative of ((A002110(n) + A002110(k)) / A002110(k)), 1 <= k <= n.

Offset 1, canonical program `A370136.P9101358364246055497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370136 (n : ℕ) : ℤ :=
  A370136.P9101358364246055497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370596.P16435059816555867442

`eq[(-1)^n, A003415(A327491(n))]`
-/

namespace A370596.P16435059816555867442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A327491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P16435059816555867442

noncomputable section

/-- A370596: Numbers k such that A007814(k) is a prime number.

Offset 1, canonical program `A370596.P16435059816555867442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596 (n : ℕ) : ℤ :=
  (A370596.P16435059816555867442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373364.P8547950682954605811

`gcd(A001414(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373364.P8547950682954605811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A003415 (n + 1))

end

end A373364.P8547950682954605811

noncomputable section

/-- A373364: a(n) = gcd(A001414(n), A003415(n)), where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373364.P8547950682954605811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373364 (n : ℕ) : ℤ :=
  (A373364.P8547950682954605811.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373378.P10527804260792404236

`gcd(A003415(n+1), A059975(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373378.P10527804260792404236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A059975 (n + 1))

end

end A373378.P10527804260792404236

noncomputable section

/-- A373378: a(n) = gcd(A003415(n), A059975(n)), where A003415 is the arithmetic derivative and A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373378.P10527804260792404236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A059975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373378 (n : ℕ) : ℤ :=
  (A373378.P10527804260792404236.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A059975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373480.P17278960438644468592

`A003415(n+2)%A001414(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373480.P17278960438644468592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 2)) (A001414 (n + 2))

end

end A373480.P17278960438644468592

noncomputable section

/-- A373480: a(n) = A003415(n) mod A001414(n), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 2, canonical program `A373480.P17278960438644468592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373480 (n : ℕ) : ℤ :=
  A373480.P17278960438644468592.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373480.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A374456.P3778587499414482557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374456 (n : ℕ) : ℤ :=
  A374456.P3778587499414482557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A377897.P9367662986809864385

`eq[A131378(n), A135528(n+1)]`
-/

namespace A377897.P9367662986809864385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377897.P9367662986809864385

noncomputable section

/-- A377897: Numbers k such that k + PrimePi(k) is even.

Offset 1, canonical program `A377897.P9367662986809864385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A377897 (n : ℕ) : ℤ :=
  (A377897.P9367662986809864385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A377897.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A379832.P7411395680414309384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379832 (n : ℕ) : ℤ :=
  A379832.P7411395680414309384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379916.P8861778669536379572

`A033879(A046389(n+1))/2`
-/

namespace A379916.P8861778669536379572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (A046389 (n + 1)).toNat : ℚ) / 2

end

end A379916.P8861778669536379572

noncomputable section

/-- A379916: a(n) is the deficiency of A046389(n), divided by 2.

Offset 1, canonical program `A379916.P8861778669536379572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379916 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379916.P8861778669536379572.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379916.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379967.P12250939003195279045

`A003415(A003557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379967.P12250939003195279045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003557 (n + 1)).toNat

end

end A379967.P12250939003195279045

noncomputable section

/-- A379967: Arithmetic derivative of {n divided by its largest squarefree divisor}: a(n) = A003415(A003557(n)).

Offset 1, canonical program `A379967.P12250939003195279045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379967 (n : ℕ) : ℤ :=
  A379967.P12250939003195279045.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379967.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A380323.P7609859064291809973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380323 (n : ℕ) : ℤ :=
  A380323.P7609859064291809973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A380325.P11001594925613090436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380325 (n : ℕ) : ℤ :=
  A380325.P11001594925613090436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A380326.P5985966696173145077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380326 (n : ℕ) : ℤ :=
  A380326.P5985966696173145077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382133.P15663710745626438162

`∩[A046386(n+1), A162800(n)]`
-/

namespace A382133.P15663710745626438162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382133.P15663710745626438162

noncomputable section

/-- A382133: Products of 4 distinct primes that are the average of two consecutive primes.

Offset 1, canonical program `A382133.P15663710745626438162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A382133 (n : ℕ) : ℤ :=
  (A382133.P15663710745626438162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A382133.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A382420.P7625293795778711111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382420 (n : ℕ) : ℤ :=
  A382420.P7625293795778711111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A382660.P13276603593670196303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382660 (n : ℕ) : ℤ :=
  A382660.P13276603593670196303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A382969.P16762746786205773467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A046660, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382969 (n : ℕ) : ℤ :=
  A382969.P16762746786205773467.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A046660, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A386843.P18321489374068669319

`(n+1)*A062992(n)`
-/

namespace A386843.P18321489374068669319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062992 n

end

end A386843.P18321489374068669319

noncomputable section

/-- A386843: a(n) = Sum_{k=0..n} binomial(2*n+2,k) * binomial(2*n-k,n-k).

Offset 0, canonical program `A386843.P18321489374068669319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A386843 (n : ℕ) : ℤ :=
  A386843.P18321489374068669319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A386843.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A339497.P16863875644910275612

`lt[n, A000190(n+1)²]+1`
-/

namespace A339497.P16863875644910275612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339497.P16863875644910275612

noncomputable section

/-- A339497: Numbers k such that (k*i)^(1/4) is an integer for some i in 1 <= i <= k.

Offset 1, canonical program `A339497.P16863875644910275612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A339497 (n : ℕ) : ℤ :=
  (A339497.P16863875644910275612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A339497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348961.P8503093187257780372

`eq[1, A004736(A000190(n+1)²)]+1`
-/

namespace A348961.P8503093187257780372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000190 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348961.P8503093187257780372

noncomputable section

/-- A348961: Exponential harmonic (or e-harmonic) numbers of type 1: numbers k such that esigma(k) | k * d_e(k), where d_e(k) is the number of exponential divisors of k (A049419) and esigma(k) is their sum (A051377).

Offset 1, canonical program `A348961.P8503093187257780372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A348961 (n : ℕ) : ℤ :=
  (A348961.P8503093187257780372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A348961.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A337362.P16917080066168618758

`A184389(n+1)-A129308(n+1)`
-/

namespace A337362.P16917080066168618758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A129308 (n + 1)

end

end A337362.P16917080066168618758

noncomputable section

/-- A337362: Number of pairs of divisors of n, (d1,d2), with d1 <= d2 such that d1 and d2 are nonconsecutive integers.

Offset 1, canonical program `A337362.P16917080066168618758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337362 (n : ℕ) : ℤ :=
  A337362.P16917080066168618758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337363.P11598784413067799807

`A066446(n+1)-A129308(n+1)`
-/

namespace A337363.P11598784413067799807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A129308 (n + 1)

end

end A337363.P11598784413067799807

noncomputable section

/-- A337363: a(n) = Sum_{d1|n, d2|n, d1<d2} (1 - [d1 + 1 = d2]), where [ ] is the Iverson bracket.

Offset 1, canonical program `A337363.P11598784413067799807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337363 (n : ℕ) : ℤ :=
  A337363.P11598784413067799807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339451.P5257208981662838490

`∑[A079559(n)]-A182105(n+1)`
-/

namespace A339451.P5257208981662838490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)

end

end A339451.P5257208981662838490

noncomputable section

/-- A339451: Gray-code-like sequence in which, at each step, the least significant bit that has never been toggled from the previous value, is toggled.

Offset 0, canonical program `A339451.P5257208981662838490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339451 (n : ℕ) : ℤ :=
  A339451.P5257208981662838490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340196.P13204647791419670441

`n+1-A340195(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340196.P13204647791419670441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340195 (n + 1)

end

end A340196.P13204647791419670441

noncomputable section

/-- A340196: a(n) = n - A340195(n).

Offset 1, canonical program `A340196.P13204647791419670441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340196 (n : ℕ) : ℤ :=
  A340196.P13204647791419670441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343819.P12164081537324373688

`eq[A064547(n+1), A064547(n+2)]+1`
-/

namespace A343819.P12164081537324373688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343819.P12164081537324373688

noncomputable section

/-- A343819: Numbers k such that k and k+1 have the same number of Fermi-Dirac factors (A064547).

Offset 1, canonical program `A343819.P12164081537324373688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. -/
def A343819 (n : ℕ) : ℤ :=
  (A343819.P12164081537324373688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. -/
def A343819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345279.P7115677743287407116

`A344931(n+1)+A324966(n+1)`
-/

namespace A345279.P7115677743287407116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A324966 (n + 1)

end

end A345279.P7115677743287407116

noncomputable section

/-- A345279: a(n) = Sum_{p|n} p^((pi(p)+1) mod 2).

Offset 1, canonical program `A345279.P7115677743287407116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345279 (n : ℕ) : ℤ :=
  A345279.P7115677743287407116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347955.P12154340568705559514

`∑{d}[n+1, A319684(#)*A349136((n+1)/#)]`
-/

namespace A347955.P12154340568705559514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319684 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347955.P12154340568705559514

noncomputable section

/-- A347955: Dirichlet convolution of A003415 (arithmetic derivative) with A003602 (a Kimberling paraphrase).

Offset 1, canonical program `A347955.P12154340568705559514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347955 (n : ℕ) : ℤ :=
  A347955.P12154340568705559514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347955.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A349618.P12586933095763914751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349618 (n : ℕ) : ℤ :=
  A349618.P12586933095763914751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A351517.P17553045902605292487

`∏{p}[n+1, A345278(#)]`
-/

namespace A351517.P17553045902605292487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A345278 p

end

end A351517.P17553045902605292487

noncomputable section

/-- A351517: a(n) = Product_{p|n, p prime} p^(pi(p) mod 2).

Offset 1, canonical program `A351517.P17553045902605292487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351517 (n : ℕ) : ℤ :=
  A351517.P17553045902605292487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351517.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360126.P9027795698661320514

`eq[0, A360125(n+1)]+1`
-/

namespace A360126.P9027795698661320514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360126.P9027795698661320514

noncomputable section

/-- A360126: Numbers k for which A359425(k) is even, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360126.P9027795698661320514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360126 (n : ℕ) : ℤ :=
  (A360126.P9027795698661320514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360127.P2447225170114496464

`eq[1, A360125(n+1)]+1`
-/

namespace A360127.P2447225170114496464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360127.P2447225170114496464

noncomputable section

/-- A360127: Numbers k for which A359425(k) is odd, where A359425 is the Dirichlet convolution of the arithmetic derivative with the primorial base exp function.

Offset 1, canonical program `A360127.P2447225170114496464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A360127 (n : ℕ) : ℤ :=
  (A360127.P2447225170114496464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A360127.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364014.P12076871723784190955

`A002324(n+1)-A364204(n+1)`
-/

namespace A364014.P12076871723784190955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - A364204 (n + 1)

end

end A364014.P12076871723784190955

noncomputable section

/-- A364014: Expansion of Sum_{k>0} x^(2*k) / (1 + x^(3*k)).

Offset 1, canonical program `A364014.P12076871723784190955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364014 (n : ℕ) : ℤ :=
  A364014.P12076871723784190955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364014.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366247.P12546709701483345304

`A064547(n+1)-A366246(n+1)`
-/

namespace A366247.P12546709701483345304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A366246 (n + 1)

end

end A366247.P12546709701483345304

noncomputable section

/-- A366247: The number of infinitary divisors of n that are "Fermi-Dirac primes" (A050376) and terms of A366243.

Offset 1, canonical program `A366247.P12546709701483345304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A366246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366247 (n : ℕ) : ℤ :=
  A366247.P12546709701483345304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A366246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366247.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374470.P7123859455402799222

`gcd(A001222(n+1), A064547(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374470.P7123859455402799222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A064547 (n + 1))

end

end A374470.P7123859455402799222

noncomputable section

/-- A374470: a(n) = gcd(bigomega(n), A064547(n)), where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374470.P7123859455402799222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374470 (n : ℕ) : ℤ :=
  (A374470.P7123859455402799222.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375230.P7295009914355440211

`3^A064547(n+1)`
-/

namespace A375230.P7295009914355440211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A064547 (n + 1) : ℤ)

end

end A375230.P7295009914355440211

noncomputable section

/-- A375230: The total number of infinitary divisors of the infinitary divisors of n.

Offset 1, canonical program `A375230.P7295009914355440211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375230 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375230.P7295009914355440211.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381852.P9783243754932668671

`A053644(2*n+1)-A049773(A049773(2*n+1))`
-/

namespace A381852.P9783243754932668671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) - A049773 (A049773 (2 * n + 1)).toNat

end

end A381852.P9783243754932668671

noncomputable section

/-- A381852: In the binary expansion of n (without leading zeros): complement the bits strictly to the right of the leftmost zero digit, if any.

Offset 0, canonical program `A381852.P9783243754932668671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A381852 (n : ℕ) : ℤ :=
  A381852.P9783243754932668671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A381852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382290.P2377806297881400849

`A064547(n+1)-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382290.P2377806297881400849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A001221 (n + 1)

end

end A382290.P2377806297881400849

noncomputable section

/-- A382290: a(n) = A064547(n) - A001221(n).

Offset 1, canonical program `A382290.P2377806297881400849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382290 (n : ℕ) : ℤ :=
  A382290.P2377806297881400849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382292.P11441178726949856059

`eq[A001221(n+1)+1, A064547(n+1)]+1`
-/

namespace A382292.P11441178726949856059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382292.P11441178726949856059

noncomputable section

/-- A382292: Numbers k such that A382290(k) = 1.

Offset 1, canonical program `A382292.P11441178726949856059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A382292 (n : ℕ) : ℤ :=
  (A382292.P11441178726949856059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A382292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383769.P11406854060680008032

`ceil(A318512(n+1)/2^val(n+1, 2))`
-/

namespace A383769.P11406854060680008032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318512 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉

end

end A383769.P11406854060680008032

noncomputable section

/-- A383769: Denominators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

Offset 1, canonical program `A383769.P11406854060680008032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769 (n : ℕ) : ℤ :=
  A383769.P11406854060680008032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A336466.P16200719452775638290

`A000265(A003958(n+1))`
-/

namespace A336466.P16200719452775638290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (n + 1)).toNat

end

end A336466.P16200719452775638290

noncomputable section

/-- A336466: Fully multiplicative with a(p) = A000265(p-1) for any prime p, where A000265(k) gives the odd part of k.

Offset 1, canonical program `A336466.P16200719452775638290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336466 (n : ℕ) : ℤ :=
  A336466.P16200719452775638290.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338452.P13216430907170277132

`eq[A093653(n+2), A093653(n+3)]+2`
-/

namespace A338452.P13216430907170277132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A338452.P13216430907170277132

noncomputable section

/-- A338452: Numbers k such that k and k+1 have the same total binary weight of their divisors (A093653).

Offset 1, canonical program `A338452.P13216430907170277132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A338452 (n : ℕ) : ℤ :=
  (A338452.P13216430907170277132.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A338452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340081.P14898792459419955035

`gcd(n, A003958(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340081.P14898792459419955035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003958 (n + 1))

end

end A340081.P14898792459419955035

noncomputable section

/-- A340081: a(n) = gcd(n-1, A003958(n)).

Offset 1, canonical program `A340081.P14898792459419955035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340081 (n : ℕ) : ℤ :=
  (A340081.P14898792459419955035.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342184.P10340909780046926633

`p?[ceil(A289353(n+1)/10)]`
-/

namespace A342184.P10340909780046926633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289353 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342184.P10340909780046926633

noncomputable section

/-- A342184: Primes q such that 10*q-3 and 10*q+1 are cousin primes.

Offset 1, canonical program `A342184.P10340909780046926633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A342184 (n : ℕ) : ℤ :=
  A342184.P10340909780046926633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A342184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343501.P17916702806192043918

`2*A338691(n+1)`
-/

namespace A343501.P17916702806192043918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338691 (n + 1)

end

end A343501.P17916702806192043918

noncomputable section

/-- A343501: Positions of 4's in A003324.

Offset 1, canonical program `A343501.P17916702806192043918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343501 (n : ℕ) : ℤ :=
  A343501.P17916702806192043918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348928.P1977074338902689538

`gcd(n+1, A003958(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348928.P1977074338902689538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003958 (n + 1))

end

end A348928.P1977074338902689538

noncomputable section

/-- A348928: a(n) = gcd(n, A003958(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e.

Offset 1, canonical program `A348928.P1977074338902689538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348928 (n : ℕ) : ℤ :=
  (A348928.P1977074338902689538.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348975.P14334171170777144493

`A003415(n+1)+A003958(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348975.P14334171170777144493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + A003958 (n + 1) - (n + 1 : ℤ)

end

end A348975.P14334171170777144493

noncomputable section

/-- A348975: a(n) = A003415(n) + A003958(n) - n, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348975.P14334171170777144493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348975 (n : ℕ) : ℤ :=
  A348975.P14334171170777144493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349659.P4651749158989321582

`A000203(n+1)-A335182(n+1)`
-/

namespace A349659.P4651749158989321582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A335182 (n + 1)

end

end A349659.P4651749158989321582

noncomputable section

/-- A349659: Sum of the nonrefactorable divisors of n.

Offset 1, canonical program `A349659.P4651749158989321582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349659 (n : ℕ) : ℤ :=
  A349659.P4651749158989321582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349659.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368612.P6816572192409665287

`A368610(n+1)-A092494(n+1)`
-/

namespace A368612.P6816572192409665287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - A092494 (n + 1)

end

end A368612.P6816572192409665287

noncomputable section

/-- A368612: a(n) = Sum_{k=2..n} pi(k-1) * ceiling(n/k).

Offset 1, canonical program `A368612.P6816572192409665287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092494, A368610, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368612 (n : ℕ) : ℤ :=
  A368612.P6816572192409665287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092494, A368610, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368612.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A378542.P16518719972786175247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378542 (n : ℕ) : ℤ :=
  A378542.P16518719972786175247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378542.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A337690.P488329027084497173

`∑{d}[n+1, A341619(#)]`
-/

namespace A337690.P488329027084497173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341619 d

end

end A337690.P488329027084497173

noncomputable section

/-- A337690: a(n) is the number of primitive nondeficient numbers (A006039) dividing n.

Offset 1, canonical program `A337690.P488329027084497173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337690 (n : ℕ) : ℤ :=
  A337690.P488329027084497173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337690.provenance : SequenceMachineLib.Provenance := .conjectured

