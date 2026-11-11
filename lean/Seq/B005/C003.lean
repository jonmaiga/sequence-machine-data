import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A397549.P9260473788895763969

`∑{d}[n+1, A061391(#)]`
-/

namespace A397549.P9260473788895763969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061391 d

end

end A397549.P9260473788895763969

noncomputable section

/-- A397549: Multiplicative with a(p^e) = (e+1)^2*(e+2)/2.

Offset 1, canonical program `A397549.P9260473788895763969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397549 (n : ℕ) : ℤ :=
  A397549.P9260473788895763969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397645.P309890179960751511

`∑{d}[n+1, A358380(#)]`
-/

namespace A397645.P309890179960751511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358380 d

end

end A397645.P309890179960751511

noncomputable section

/-- A397645: Multiplicative with a(p^e) = (e+1)*(e+2)*(5*e+3)/6.

Offset 1, canonical program `A397645.P309890179960751511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397645 (n : ℕ) : ℤ :=
  A397645.P309890179960751511.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397686.P10496162093996895226

`∑{d}[n+1, A359037(#)]`
-/

namespace A397686.P10496162093996895226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359037 d

end

end A397686.P10496162093996895226

noncomputable section

/-- A397686: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+1)/2.

Offset 1, canonical program `A397686.P10496162093996895226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397686 (n : ℕ) : ℤ :=
  A397686.P10496162093996895226.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397686.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A401009.P808647470638771537

`A049820(n+1)-A401008(n+1)`
-/

namespace A401009.P808647470638771537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A401008 (n + 1)

end

end A401009.P808647470638771537

noncomputable section

/-- A401009: a(n) = the number of even non-divisors of n in 1..n.

Offset 1, canonical program `A401009.P808647470638771537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401009 (n : ℕ) : ℤ :=
  A401009.P808647470638771537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398166.P1860804899348792232

`∩[A023443(A197680(n+1)), A197680(n+1)]`
-/

namespace A398166.P1860804899348792232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A197680 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398166.P1860804899348792232

noncomputable section

/-- A398166: Numbers k such that all the exponents in the prime factorizations of k and k+1 are squares.

Offset 1, canonical program `A398166.P1860804899348792232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. -/
def A398166 (n : ℕ) : ℤ :=
  (A398166.P1860804899348792232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. -/
def A398166.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398922.P11315198121938335182

`A346759(n+1)-A065608(n+1)`
-/

namespace A398922.P11315198121938335182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346759 (n + 1) - A065608 (n + 1)

end

end A398922.P11315198121938335182

noncomputable section

/-- A398922: Number of distinct acute lattice trapezia of area n/2 with horizontal base.

Offset 1, canonical program `A398922.P11315198121938335182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398922 (n : ℕ) : ℤ :=
  A398922.P11315198121938335182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398922.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A399831.P4033865291944484204

`A000005(A003557(n+1)*A056554(n+1))`
-/

namespace A399831.P4033865291944484204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1) * A056554 (n + 1)).toNat

end

end A399831.P4033865291944484204

noncomputable section

/-- A399831: The number of divisors d of n such that gcud(d, n/d) is an exponentially odd number (A268335), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399831.P4033865291944484204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399831 (n : ℕ) : ℤ :=
  A399831.P4033865291944484204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399832.P9867324930414141992

`A001227(n+1)*A286324(2^val(n+1, 2))`
-/

namespace A399832.P9867324930414141992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A286324 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A399832.P9867324930414141992

noncomputable section

/-- A399832: The number of divisors d of n such that gcud(d, n/d) is odd, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399832.P9867324930414141992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399832 (n : ℕ) : ℤ :=
  A399832.P9867324930414141992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399833.P5824088692699989258

`(val(n+1, 2)+1)*A286324((n+1)/2^val(n+1, 2))`
-/

namespace A399833.P5824088692699989258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A286324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A399833.P5824088692699989258

noncomputable section

/-- A399833: The number of divisors d of n such that gcud(d, n/d) is a power of 2, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399833.P5824088692699989258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399833 (n : ℕ) : ℤ :=
  A399833.P5824088692699989258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399833.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A400872.P1320321163544664813

`∏{e}[1+n, A007425(#)]`
-/

namespace A400872.P1320321163544664813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007425 (Nat.factorization (f1 n) p)

end

end A400872.P1320321163544664813

noncomputable section

/-- A400872: The total number of exponential divisors of the exponential divisors of n.

Offset 1, canonical program `A400872.P1320321163544664813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400872 (n : ℕ) : ℤ :=
  A400872.P1320321163544664813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400930.P9795398723456261995

`A326195(∏{p}[1+n, #])`
-/

namespace A400930.P9795398723456261995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A400930.P9795398723456261995

noncomputable section

/-- A400930: Maximum length of a strictly increasing sequence of distinct prime divisors p_1, ..., p_k of n such that p_i divides p_{i+1} - 1 for 1 <= i < k.

Offset 1, canonical program `A400930.P9795398723456261995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400930 (n : ℕ) : ℤ :=
  A400930.P9795398723456261995.a (n - 1)

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

/-! ## A401241.P16677631895232613569

`∑{d}[n+1, A069513(#)*A359473(#)]`
-/

namespace A401241.P16677631895232613569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069513 d * A359473 d

end

end A401241.P16677631895232613569

noncomputable section

/-- A401241: The number of divisors of n that are prime powers (A246655) whose number of divisors is a power of 2.

Offset 1, canonical program `A401241.P16677631895232613569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401241 (n : ℕ) : ℤ :=
  A401241.P16677631895232613569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401404.P11769500404623702126

`A048989(2*(n+1))/2`
-/

namespace A401404.P11769500404623702126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048989 (2 * (n + 1)) : ℚ) / 2

end

end A401404.P11769500404623702126

noncomputable section

/-- A401404: Numbers m such that pi(2*m) is prime, where pi is A000720.

Offset 1, canonical program `A401404.P11769500404623702126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A401404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401404.P11769500404623702126.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A401404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401468.P2834647900088656958

`∑[A046801(n+1)]`
-/

namespace A401468.P2834647900088656958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401468.P2834647900088656958

noncomputable section

/-- A401468: a(n) = Sum_{k=1..n} A046801(k).

Offset 1, canonical program `A401468.P2834647900088656958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1212 terms. -/
def A401468 (n : ℕ) : ℤ :=
  A401468.P2834647900088656958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1212 terms. -/
def A401468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401710.P3001725798875368537

`A401709(n+1)/A009194(n+1)`
-/

namespace A401710.P3001725798875368537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401709 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A401710.P3001725798875368537

noncomputable section

/-- A401710: a(n) = A017665(n) / A401375(n), where A017665(n) = sigma(n)/gcd(n,sigma(n)), A401375(n) is the largest divisor of sigma(n) coprime with n, and sigma is the sum of divisors function.

Offset 1, canonical program `A401710.P3001725798875368537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401710 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401710.P3001725798875368537.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401710.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A398164.P2146957604628113734

`∩[A209061(n+1)-1, A209061(n+1)]`
-/

namespace A398164.P2146957604628113734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398164.P2146957604628113734

noncomputable section

/-- A398164: Numbers k such that both k and k+1 are both exponentially squarefree numbers.

Offset 1, canonical program `A398164.P2146957604628113734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A398164 (n : ℕ) : ℤ :=
  (A398164.P2146957604628113734.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A398164.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A401375.P4355950383220751313

`A000203(n+1)/A401709(n+1)`
-/

namespace A401375.P4355950383220751313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A401709 (n + 1) : ℚ)

end

end A401375.P4355950383220751313

noncomputable section

/-- A401375: Largest divisor of sigma(n) coprime with n, where sigma is the sum of divisors function.

Offset 1, canonical program `A401375.P4355950383220751313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401375 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401375.P4355950383220751313.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401375.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398228.P9245396481195177872

`A040000(3*n+4)+lt[A116543(n+2), 3]`
-/

namespace A398228.P9245396481195177872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (3 * n + 4) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A398228.P9245396481195177872

noncomputable section

/-- A398228: Numbers that are the sum of two Lucas numbers.

Offset 1, canonical program `A398228.P9245396481195177872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A398228 (n : ℕ) : ℤ :=
  A398228.P9245396481195177872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A398228.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398950.P7122882423077720818

`eq[A335341(n+4), A379971(n+1)]`
-/

namespace A398950.P7122882423077720818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398950.P7122882423077720818

noncomputable section

/-- A398950: Numbers k such that k, k+2, and k+4 are all squarefree.

Offset 1, canonical program `A398950.P7122882423077720818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4103 terms. -/
def A398950 (n : ℕ) : ℤ :=
  (A398950.P7122882423077720818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4103 terms. -/
def A398950.provenance : SequenceMachineLib.Provenance := .conjectured

