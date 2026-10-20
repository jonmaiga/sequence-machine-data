import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A275700: a(n) = Product_{d|n} prime(d).

The programs for A275700, the canonical program `A275700.P2584852815537331579` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275700 has offset 1).

The definition of A275700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275700.P2584852815537331579

`∏{d}[n+1, A000040(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275700

/-- `∏{d}[n+1, A000040(#)]` -/
def P2584852815537331579.Spec : Prop :=
  ∀ n, P2584852815537331579.a n = A275700 (n + 1)

theorem P2584852815537331579.correct : P2584852815537331579.Spec := by
  intro n
  simp only [A275700, Nat.add_sub_cancel]

end A275700

/-! ## A275700.P143978444998426042

`∏{d}[n+1, A006093(#)+1]`
-/

namespace A275700.P143978444998426042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A006093 d + 1)

end

end A275700.P143978444998426042

namespace A275700

/-- `∏{d}[n+1, A006093(#)+1]` -/
def P143978444998426042.Spec : Prop :=
  ∀ n, P143978444998426042.a n = A275700 (n + 1)

end A275700

/-! ## A275700.P1054519639610756

`∏{d}[n+1, A008578(#+1)]`
-/

namespace A275700.P1054519639610756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008578 (d + 1)

end

end A275700.P1054519639610756

namespace A275700

/-- `∏{d}[n+1, A008578(#+1)]` -/
def P1054519639610756.Spec : Prop :=
  ∀ n, P1054519639610756.a n = A275700 (n + 1)

end A275700

/-! ## A275700.P3908130183377802853

`∏{d}[n+1, A158611(#+2)]`
-/

namespace A275700.P3908130183377802853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A158611 (d + 2)

end

end A275700.P3908130183377802853

namespace A275700

/-- `∏{d}[n+1, A158611(#+2)]` -/
def P3908130183377802853.Spec : Prop :=
  ∀ n, P3908130183377802853.a n = A275700 (n + 1)

end A275700

/-! ## A275700.P10859637869711197408

`∏{d}[n+1, A100484(#)/2]`
-/

namespace A275700.P10859637869711197408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A100484 d : ℚ) / 2

end

end A275700.P10859637869711197408

namespace A275700

/-- `∏{d}[n+1, A100484(#)/2]` -/
def P10859637869711197408.Spec : Prop :=
  ∀ n, P10859637869711197408.a n = (A275700 (n + 1) : ℚ)

end A275700

/-! ## A275700.P2151701926295885504

`A371285(A000040(n+1))`
-/

namespace A275700.P2151701926295885504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (A000040 (n + 1)).toNat

end

end A275700.P2151701926295885504

namespace A275700

/-- `A371285(A000040(n+1))` -/
def P2151701926295885504.Spec : Prop :=
  ∀ n, P2151701926295885504.a n = A275700 (n + 1)

end A275700

/-! ## A275700.P13258908953730414274

`A371285(A008578(n+2))`
-/

namespace A275700.P13258908953730414274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (A008578 (n + 2)).toNat

end

end A275700.P13258908953730414274

namespace A275700

/-- `A371285(A008578(n+2))` -/
def P13258908953730414274.Spec : Prop :=
  ∀ n, P13258908953730414274.a n = A275700 (n + 1)

end A275700

/-! ## A275700.P5805322448152384958

`A371285(A182986(n+2))`
-/

namespace A275700.P5805322448152384958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (A182986 (n + 2)).toNat

end

end A275700.P5805322448152384958

namespace A275700

/-- `A371285(A182986(n+2))` -/
def P5805322448152384958.Spec : Prop :=
  ∀ n, P5805322448152384958.a n = A275700 (n + 1)

end A275700

/-! ## A275700.P8789717870052595376

`A371285(A002110(n+1)/A002110(n))`
-/

namespace A275700.P8789717870052595376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (SequenceMachineLib.roundAway ((A002110 (n + 1) : ℚ) / (A002110 n : ℚ))).toNat

end

end A275700.P8789717870052595376

namespace A275700

/-- `A371285(A002110(n+1)/A002110(n))` -/
def P8789717870052595376.Spec : Prop :=
  ∀ n, P8789717870052595376.a n = A275700 (n + 1)

end A275700

/-!
# A275702: Numbers k whose deficiency is 26: 2*k - sigma(k) = 26.

The programs for A275702, there is no canonical definition to state claims against.
-/

/-! ## A275702.P1134742353232871357

`eq[26, A033879(A028310(n))]`
-/

namespace A275702.P1134742353232871357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275702.P1134742353232871357

/-!
# A275704: Digital root of n + (n+1)^2.

The programs for A275704, the canonical program `A275704.P12174991893892858084` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275704 has offset 0).

The definition of A275704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275704.P12174991893892858084

`A010888(A028387(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275704

/-- `A010888(A028387(n))` -/
def P12174991893892858084.Spec : Prop :=
  ∀ n, P12174991893892858084.a n = A275704 n

theorem P12174991893892858084.correct : P12174991893892858084.Spec := by
  intro n
  simp only [A275704]

end A275704

/-!
# A275706: a(n) = Re([n]_{1+i}!), where [n]_q! is the q-factorial, i = sqrt(-1).

The programs for A275706, there is no canonical definition to state claims against.
-/

/-! ## A275706.P11255312270471359586

`A305715(n+1)+A090192(A084961(n+1))`
-/

namespace A275706.P11255312270471359586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305715 (n + 1) + A090192 (A084961 (n + 1)).toNat

end

end A275706.P11255312270471359586

/-!
# A275707: Number of partial functions f:{1,2,...,n}->{1,2,...,n} such that every element in the domain of definition of f is mapped to a fixed point or to an element that is undefined by f.

The programs for A275707, there is no canonical definition to state claims against.
-/

/-! ## A275707.P2314179992205837111

`A187105(∑[n+1]+2)`
-/

namespace A275707.P2314179992205837111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187105 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A275707.P2314179992205837111

/-! ## A275707.P12785549216025905086

`record[A187105(A080036(n))]`
-/

namespace A275707.P12785549216025905086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187105 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275707.P12785549216025905086

/-! ## A275707.P5797690536811281719

`record[A187105(A133263(∑{digits}[n, #]))]`
-/

namespace A275707.P5797690536811281719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187105 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275707.P5797690536811281719

/-! ## A275707.P18426659828950839599

`record[A187105(record[A194916(n+1)])]`
-/

namespace A275707.P18426659828950839599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187105 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275707.P18426659828950839599

/-! ## A275707.P1303162461446649352

`record[A133607(n)*A187105(n+1)]`
-/

namespace A275707.P1303162461446649352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 n * A187105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275707.P1303162461446649352

/-!
# A275709: a(n) = 2*n^3 + 3*n^2.

The programs for A275709, the canonical program `A275709.P9405816799488244254` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275709 has offset 0).

The definition of A275709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3+3*n²` (program `A275709.P9405816799488244254`, by `A275709.P9405816799488244254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275709.P12066900911759097533

`n²*(2*n+3)`
-/

namespace A275709.P12066900911759097533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (2 * n + 3)

end

end A275709.P12066900911759097533

namespace A275709

/-- `n²*(2*n+3)` -/
def P12066900911759097533.Spec : Prop :=
  ∀ n, (P12066900911759097533.a n : ℤ) = A275709 n

theorem P12066900911759097533.correct : P12066900911759097533.Spec := by
  intro n
  simp only [A275709, Nat.add_sub_cancel, A275709.P12066900911759097533.a, A275709.P9405816799488244254.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A275709

/-! ## A275709.P9405816799488244254

`2*n^3+3*n²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275709

/-- `2*n^3+3*n²` -/
def P9405816799488244254.Spec : Prop :=
  ∀ n, (P9405816799488244254.a n : ℤ) = A275709 n

theorem P9405816799488244254.correct : P9405816799488244254.Spec := by
  intro n
  simp only [A275709]

end A275709

/-! ## A275709.P11531932729854565976

`Δ[A027441(n)-n²]`
-/

namespace A275709.P11531932729854565976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275709.P11531932729854565976

namespace A275709

/-- `Δ[A027441(n)-n²]` -/
def P11531932729854565976.Spec : Prop :=
  ∀ n, P11531932729854565976.a n = A275709 n

end A275709

/-!
# A275711: Nearest integer to 2*n!*(2/Pi)^(n+1).

The programs for A275711, the canonical program `A275711.P15908961039329647044` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275711 has offset 0).

The definition of A275711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275711.P15908961039329647044

`round(2*n!*(2/π)^(n+1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275711

/-- `round(2*n!*(2/π)^(n+1))` -/
def P15908961039329647044.Spec : Prop :=
  ∀ n, P15908961039329647044.a n = A275711 n

theorem P15908961039329647044.correct : P15908961039329647044.Spec := by
  intro n
  simp only [A275711]

end A275711

/-! ## A275711.P15752174156540797114

`A178780(A089408(n))+A000111(n)`
-/

namespace A275711.P15752174156540797114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A089408 n).toNat + A000111 n

end

end A275711.P15752174156540797114

namespace A275711

/-- `A178780(A089408(n))+A000111(n)` -/
def P15752174156540797114.Spec : Prop :=
  ∀ n, P15752174156540797114.a n = A275711 n

end A275711

/-! ## A275711.P6910215401058240867

`A324692(A250286(n))+A000111(n)`
-/

namespace A275711.P6910215401058240867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A250286 n).toNat + A000111 n

end

end A275711.P6910215401058240867

namespace A275711

/-- `A324692(A250286(n))+A000111(n)` -/
def P6910215401058240867.Spec : Prop :=
  ∀ n, P6910215401058240867.a n = A275711 n

end A275711

/-! ## A275711.P15638546871804291240

`A284503(A309864(n))+A000111(n)`
-/

namespace A275711.P15638546871804291240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284503 (A309864 n).toNat + A000111 n

end

end A275711.P15638546871804291240

namespace A275711

/-- `A284503(A309864(n))+A000111(n)` -/
def P15638546871804291240.Spec : Prop :=
  ∀ n, P15638546871804291240.a n = A275711 n

end A275711

/-! ## A275711.P2273231222839721635

`A000111(n)-A011731(A000129(n))`
-/

namespace A275711.P2273231222839721635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A011731 (A000129 n).toNat

end

end A275711.P2273231222839721635

namespace A275711

/-- `A000111(n)-A011731(A000129(n))` -/
def P2273231222839721635.Spec : Prop :=
  ∀ n, P2273231222839721635.a n = A275711 n

end A275711

/-!
# A275712: Decimal expansion of the sum of the alternating series of reciprocals of nonprime numbers.

The programs for A275712, there is no canonical definition to state claims against.
-/

/-! ## A275712.P12602654220565948682

`9-A269229(n)`
-/

namespace A275712.P12602654220565948682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A269229 n

end

end A275712.P12602654220565948682

/-!
# A275713: Algebraic degree of R(exp(-p * Pi)), where R(q) is the Rogers-Ramanujan continued fraction and p are successive n-th primes.

The programs for A275713, there is no canonical definition to state claims against.
-/

/-! ## A275713.P1332753489742147816

`A082682(or(A082664(n+1), A212997(n)))`
-/

namespace A275713.P1332753489742147816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082682 (Int.lor (A082664 (n + 1)) (A212997 n)).toNat

end

end A275713.P1332753489742147816

/-! ## A275713.P16387448382740813823

`A082682(or(A082664(n+1), A322200(n)))`
-/

namespace A275713.P16387448382740813823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082682 (Int.lor (A082664 (n + 1)) (A322200 n)).toNat

end

end A275713.P16387448382740813823

/-! ## A275713.P3258796659328739718

`A082682(or(A212997(n), A220969(n+1)))`
-/

namespace A275713.P3258796659328739718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082682 (Int.lor (A212997 n) (A220969 (n + 1))).toNat

end

end A275713.P3258796659328739718

/-! ## A275713.P2227464279393011983

`A082682(or(A062790(n+1), A082664(n+1)))`
-/

namespace A275713.P2227464279393011983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082682 (Int.lor (A062790 (n + 1)) (A082664 (n + 1))).toNat

end

end A275713.P2227464279393011983

/-! ## A275713.P13077438920629415425

`A082682(or(A082664(n+1), A260187(n+1)))`
-/

namespace A275713.P13077438920629415425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082682 (Int.lor (A082664 (n + 1)) (A260187 (n + 1))).toNat

end

end A275713.P13077438920629415425

/-!
# A275714: Number T(n,k) of set partitions of [n] into k blocks with equal element sum; triangle T(n,k), n>=0, 0<=k<=ceiling(n/2), read by rows.

The programs for A275714, there is no canonical definition to state claims against.
-/

/-! ## A275714.P5552172616157332639

`and(A159004(n+2), A350037(A031285(n)))`
-/

namespace A275714.P5552172616157332639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159004 (n + 2)) (A350037 (A031285 n).toNat)

end

end A275714.P5552172616157332639

/-! ## A275714.P5125979426881388053

`A350037(A031285(n))%dr(A033910(n+1))`
-/

namespace A275714.P5125979426881388053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350037 (A031285 n).toNat) (SequenceMachineLib.digitalRoot (A033910 (n + 1)) : ℤ)

end

end A275714.P5125979426881388053

/-! ## A275714.P11161947955860389945

`A350037(A031285(n))%A259838(A208879(n))`
-/

namespace A275714.P11161947955860389945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350037 (A031285 n).toNat) (A259838 (A208879 n).toNat)

end

end A275714.P11161947955860389945

/-! ## A275714.P15211608855687232421

`A350037(n+1)^A126226(n)²`
-/

namespace A275714.P15211608855687232421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350037 (n + 1) : ℚ) ^ (A126226 n ^ 2 : ℤ)

end

end A275714.P15211608855687232421

/-!
# A275715: Permutation of natural numbers: a(n) = A243071(A249823(n)).

The programs for A275715, the canonical program `A275715.P1041774854945764672` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275715 has offset 1).

The definition of A275715 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A249823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275715.P1041774854945764672

`A243071(A249823(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A275715

/-- `A243071(A249823(n+1))` -/
def P1041774854945764672.Spec : Prop :=
  ∀ n, P1041774854945764672.a n = A275715 (n + 1)

theorem P1041774854945764672.correct : P1041774854945764672.Spec := by
  intro n
  simp only [A275715, Nat.add_sub_cancel]

end A275715

/-! ## A275715.P9987163713974363868

`A245611(A249745(n+1))`
-/

namespace A275715.P9987163713974363868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A249745 (n + 1)).toNat

end

end A275715.P9987163713974363868

namespace A275715

/-- `A245611(A249745(n+1))` -/
def P9987163713974363868.Spec : Prop :=
  ∀ n, P9987163713974363868.a n = A275715 (n + 1)

end A275715

/-! ## A275715.P6418815468854656592

`A243071(A246277(A084967(n+1)))`
-/

namespace A275715.P6418815468854656592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A246277 (A084967 (n + 1)).toNat).toNat

end

end A275715.P6418815468854656592

namespace A275715

/-- `A243071(A246277(A084967(n+1)))` -/
def P6418815468854656592.Spec : Prop :=
  ∀ n, P6418815468854656592.a n = A275715 (n + 1)

end A275715

/-! ## A275715.P1131100301602640456

`A243071(A064989(A064989(A007310(n+1))))`
-/

namespace A275715.P1131100301602640456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A064989 (A064989 (A007310 (n + 1)).toNat).toNat).toNat

end

end A275715.P1131100301602640456

namespace A275715

/-- `A243071(A064989(A064989(A007310(n+1))))` -/
def P1131100301602640456.Spec : Prop :=
  ∀ n, P1131100301602640456.a n = A275715 (n + 1)

end A275715

/-! ## A275715.P11227128597390816919

`A243071(A064989(A064216(A032766(n+1))))`
-/

namespace A275715.P11227128597390816919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A064989 (A064216 (A032766 (n + 1)).toNat).toNat).toNat

end

end A275715.P11227128597390816919

namespace A275715

/-- `A243071(A064989(A064216(A032766(n+1))))` -/
def P11227128597390816919.Spec : Prop :=
  ∀ n, P11227128597390816919.a n = A275715 (n + 1)

end A275715

/-!
# A275716: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = A273669(a(n)), a(2n+1) = A273664(a(n)).

The programs for A275716, the canonical program `A275716.P7951773903952206727` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275716 has offset 0).

The definition of A275716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275716.P874239801645353454

`A249824(A163511(n))`
-/

namespace A275716.P874239801645353454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249824 (A163511 n).toNat

end

end A275716.P874239801645353454

namespace A275716

/-- `A249824(A163511(n))` -/
def P874239801645353454.Spec : Prop :=
  ∀ n, P874239801645353454.a n = A275716 n

end A275716

/-! ## A275716.P7951773903952206727

`ceil(A163511(4*n+3)/3)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A275716

/-- `ceil(A163511(4*n+3)/3)` -/
def P7951773903952206727.Spec : Prop :=
  ∀ n, P7951773903952206727.a n = A275716 n

theorem P7951773903952206727.correct : P7951773903952206727.Spec := by
  intro n
  simp only [A275716]

end A275716

/-! ## A275716.P14461887573392748

`A249746(A245612(n))`
-/

namespace A275716.P14461887573392748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A245612 n).toNat

end

end A275716.P14461887573392748

namespace A275716

/-- `A249746(A245612(n))` -/
def P14461887573392748.Spec : Prop :=
  ∀ n, P14461887573392748.a n = A275716 n

end A275716

/-! ## A275716.P11609914693175954625

`A249746(round(A163511(Δ[n²])/2))`
-/

namespace A275716.P11609914693175954625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (SequenceMachineLib.roundAway ((A163511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A275716.P11609914693175954625

namespace A275716

/-- `A249746(round(A163511(Δ[n²])/2))` -/
def P11609914693175954625.Spec : Prop :=
  ∀ n, P11609914693175954625.a n = A275716 n

end A275716

/-! ## A275716.P6131233518271689521

`A249746((A163511(2*n+1)+A057427(n))/2)`
-/

namespace A275716.P6131233518271689521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (SequenceMachineLib.roundAway ((A163511 (2 * n + 1) + A057427 n : ℚ) / 2)).toNat

end

end A275716.P6131233518271689521

namespace A275716

/-- `A249746((A163511(2*n+1)+A057427(n))/2)` -/
def P6131233518271689521.Spec : Prop :=
  ∀ n, P6131233518271689521.a n = A275716 n

end A275716

/-! ## A275716.P4993054084974078314

`A004396(A245612(2*n+1))`
-/

namespace A275716.P4993054084974078314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A245612 (2 * n + 1)).toNat

end

end A275716.P4993054084974078314

namespace A275716

/-- `A004396(A245612(2*n+1))` -/
def P4993054084974078314.Spec : Prop :=
  ∀ n, P4993054084974078314.a n = A275716 n

end A275716

/-!
# A275717: Numbers n for which A003961(n) > A003961(n-1).

The programs for A275717, the canonical program `A275717.P14163369272237695528` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275717 has offset 1).

The definition of A275717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275717.P17754764903388886563

`A275721(n+1)+1`
-/

namespace A275717.P17754764903388886563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275721 (n + 1) + 1

end

end A275717.P17754764903388886563

namespace A275717

/-- `A275721(n+1)+1` -/
def P17754764903388886563.Spec : Prop :=
  ∀ n, P17754764903388886563.a n = A275717 (n + 1)

end A275717

/-! ## A275717.P6204589886348208216

`comp[A275722(n+1)-1]+2`
-/

namespace A275717.P6204589886348208216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275722 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A275717.P6204589886348208216

namespace A275717

/-- `comp[A275722(n+1)-1]+2` -/
def P6204589886348208216.Spec : Prop :=
  ∀ n, (P6204589886348208216.a n : ℤ) = A275717 (n + 1)

end A275717

/-! ## A275717.P6974066776799158406

`A275718(n+1)-A275719(n+1)`
-/

namespace A275717.P6974066776799158406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1) - A275719 (n + 1)

end

end A275717.P6974066776799158406

namespace A275717

/-- `A275718(n+1)-A275719(n+1)` -/
def P6974066776799158406.Spec : Prop :=
  ∀ n, P6974066776799158406.a n = A275717 (n + 1)

end A275717

/-! ## A275717.P15645766834669216526

`A275722(n+1)+1-A275719(n+1)`
-/

namespace A275717.P15645766834669216526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275722 (n + 1) + (1 - A275719 (n + 1))

end

end A275717.P15645766834669216526

namespace A275717

/-- `A275722(n+1)+1-A275719(n+1)` -/
def P15645766834669216526.Spec : Prop :=
  ∀ n, P15645766834669216526.a n = A275717 (n + 1)

end A275717

/-! ## A275717.P14163369272237695528

`lt[0, Δ[A253885(n)]]+2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A275717

/-- `lt[0, Δ[A253885(n)]]+2` -/
def P14163369272237695528.Spec : Prop :=
  ∀ n, (P14163369272237695528.a n : ℤ) = A275717 (n + 1)

theorem P14163369272237695528.correct : P14163369272237695528.Spec := by
  intro n
  simp only [A275717, Nat.add_sub_cancel]

end A275717

/-! ## A275717.P1131605568549085794

`lt[1, Δ[A003961(n+1)]]+2`
-/

namespace A275717.P1131605568549085794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275717.P1131605568549085794

namespace A275717

/-- `lt[1, Δ[A003961(n+1)]]+2` -/
def P1131605568549085794.Spec : Prop :=
  ∀ n, (P1131605568549085794.a n : ℤ) = A275717 (n + 1)

end A275717

/-! ## A275717.P3169851230290397053

`A020725(A275721(n+1))`
-/

namespace A275717.P3169851230290397053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A275721 (n + 1)).toNat

end

end A275717.P3169851230290397053

namespace A275717

/-- `A020725(A275721(n+1))` -/
def P3169851230290397053.Spec : Prop :=
  ∀ n, P3169851230290397053.a n = A275717 (n + 1)

end A275717

/-! ## A275717.P737017775175451972

`lt[A253885(n), A253885(n+1)]+2`
-/

namespace A275717.P737017775175451972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A275717.P737017775175451972

namespace A275717

/-- `lt[A253885(n), A253885(n+1)]+2` -/
def P737017775175451972.Spec : Prop :=
  ∀ n, (P737017775175451972.a n : ℤ) = A275717 (n + 1)

theorem P737017775175451972.correct : P737017775175451972.Spec := by
  intro n
  simp only [A275717, Nat.add_sub_cancel, A275717.P737017775175451972.f1, A275717.P737017775175451972.f2, A275717.P737017775175451972.a, A275717.P14163369272237695528.f1, A275717.P14163369272237695528.f3, A275717.P14163369272237695528.f2, A275717.P14163369272237695528.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A275717

/-! ## A275717.P13044595510745042531

`lt[A048673(n+1), A048673(n+2)]+2`
-/

namespace A275717.P13044595510745042531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A275717.P13044595510745042531

namespace A275717

/-- `lt[A048673(n+1), A048673(n+2)]+2` -/
def P13044595510745042531.Spec : Prop :=
  ∀ n, (P13044595510745042531.a n : ℤ) = A275717 (n + 1)

end A275717

/-! ## A275717.P304789946190720179

`lt[A003961(A028310(n)), A253885(n)]+1`
-/

namespace A275717.P304789946190720179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275717.P304789946190720179

namespace A275717

/-- `lt[A003961(A028310(n)), A253885(n)]+1` -/
def P304789946190720179.Spec : Prop :=
  ∀ n, (P304789946190720179.a n : ℤ) = A275717 (n + 1)

end A275717

/-! ## A275717.P13907116913527787298

`lt[A003961(A028310(n)), A003961(n+1)]+1`
-/

namespace A275717.P13907116913527787298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275717.P13907116913527787298

namespace A275717

/-- `lt[A003961(A028310(n)), A003961(n+1)]+1` -/
def P13907116913527787298.Spec : Prop :=
  ∀ n, (P13907116913527787298.a n : ℤ) = A275717 (n + 1)

end A275717

/-! ## A275717.P4480912873022109099

`lt[0, Δ[A029715(A048673(n+1))]]+2`
-/

namespace A275717.P4480912873022109099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 (A048673 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275717.P4480912873022109099

namespace A275717

/-- `lt[0, Δ[A029715(A048673(n+1))]]+2` -/
def P4480912873022109099.Spec : Prop :=
  ∀ n, (P4480912873022109099.a n : ℤ) = A275717 (n + 1)

end A275717

/-!
# A275718: Numbers n for which A003961(n) < A003961(n-1).

The programs for A275718, there is no canonical definition to state claims against.
-/

/-! ## A275718.P3874273319094390265

`A275722(n+1)+1`
-/

namespace A275718.P3874273319094390265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275722 (n + 1) + 1

end

end A275718.P3874273319094390265

/-! ## A275718.P7044045996483380600

`A275719(n+1)+A275717(n+1)`
-/

namespace A275718.P7044045996483380600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275719 (n + 1) + A275717 (n + 1)

end

end A275718.P7044045996483380600

/-! ## A275718.P17435184540827583849

`A275719(n+1)+A275721(n+1)+1`
-/

namespace A275718.P17435184540827583849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275719 (n + 1) + (A275721 (n + 1) + 1)

end

end A275718.P17435184540827583849

/-! ## A275718.P16869306232442464454

`lt[Δ[A253885(n)], 0]+2`
-/

namespace A275718.P16869306232442464454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A275718.P16869306232442464454

/-! ## A275718.P2372895163473383189

`A020725(A275722(n+1))`
-/

namespace A275718.P2372895163473383189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A275722 (n + 1)).toNat

end

end A275718.P2372895163473383189

/-! ## A275718.P3504782470384307758

`lt[A253885(n+1), A253885(n)]+2`
-/

namespace A275718.P3504782470384307758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A275718.P3504782470384307758

/-! ## A275718.P17209657626041293513

`lt[Δ[A003961(n+1)], 1]+2`
-/

namespace A275718.P17209657626041293513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A275718.P17209657626041293513

/-! ## A275718.P17933768820038773766

`lt[Δ[A048673(n+1)], 1]+2`
-/

namespace A275718.P17933768820038773766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A275718.P17933768820038773766

/-! ## A275718.P17895367883422541843

`eq[char[A275721(n+1)], A000007(n)]+1`
-/

namespace A275718.P17895367883422541843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275721 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A275718.P17895367883422541843

/-! ## A275718.P11858387478144416952

`lt[A048673(n+2), A048673(n+1)]+2`
-/

namespace A275718.P11858387478144416952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A275718.P11858387478144416952

/-! ## A275718.P1112580124817499842

`lt[A003961(n+2), A003961(n+1)+1]+2`
-/

namespace A275718.P1112580124817499842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A275718.P1112580124817499842

/-! ## A275718.P9055682399476707029

`lt[A003961(n+1), A003961(A028310(n))]+1`
-/

namespace A275718.P9055682399476707029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275718.P9055682399476707029

/-! ## A275718.P3084952036203225350

`lt[A252748(n+1), A252748(A028310(n))]+1`
-/

namespace A275718.P3084952036203225350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275718.P3084952036203225350

/-! ## A275718.P6565067012260385625

`lt[Δ[A000040(A297166(2*(n+1))+n)], 1]+2`
-/

namespace A275718.P6565067012260385625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A297166 (2 * (n + 1)) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A275718.P6565067012260385625

/-!
# A275719: a(n) = A275718(n) - A275717(n).

The programs for A275719, there is no canonical definition to state claims against.
-/

/-! ## A275719.P5522747710788014234

`A275718(n+1)-A275717(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275719.P5522747710788014234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1) - A275717 (n + 1)

end

end A275719.P5522747710788014234

/-! ## A275719.P17041588515712130754

`A275722(n+1)-A275721(n+1)`
-/

namespace A275719.P17041588515712130754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275722 (n + 1) - A275721 (n + 1)

end

end A275719.P17041588515712130754

/-! ## A275719.P11305759183663392822

`A275718(n+1)-(A275721(n+1)+1)`
-/

namespace A275719.P11305759183663392822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1) - (A275721 (n + 1) + 1)

end

end A275719.P11305759183663392822

/-! ## A275719.P5941212984316857417

`A275722(n+1)+1-A275717(n+1)`
-/

namespace A275719.P5941212984316857417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275722 (n + 1) + (1 - A275717 (n + 1))

end

end A275719.P5941212984316857417

/-! ## A275719.P18052008355880781203

`A113520(A275718(n+1))-A275721(n+1)`
-/

namespace A275719.P18052008355880781203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A275718 (n + 1)).toNat - A275721 (n + 1)

end

end A275719.P18052008355880781203

/-!
# A275720: a(1) = 0; for n > 1, if A003961(n) > A003961(n-1) then a(n) = a(n-1) + 1, otherwise if A003961(n) < A003961(n-1), then a(n) = a(n-1) - 1.

The programs for A275720, there is no canonical definition to state claims against.
-/

/-! ## A275720.P14541538407642027734

`and(3, A000265(A000032(n+1))-(n+1))`
-/

namespace A275720.P14541538407642027734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000265 (A000032 (n + 1)).toNat - (n + 1 : ℤ))

end

end A275720.P14541538407642027734

/-! ## A275720.P4002737318572188677

`and(A010693(n), A029579(A140827(n)))`
-/

namespace A275720.P4002737318572188677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010693 n) (A029579 (A140827 n).toNat)

end

end A275720.P4002737318572188677

/-! ## A275720.P4816047342448942825

`and(A029579(A140827(n)), A158478(n))`
-/

namespace A275720.P4816047342448942825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029579 (A140827 n).toNat) (A158478 n)

end

end A275720.P4816047342448942825

/-! ## A275720.P6200058926266704261

`A158478(n)-A084360(A294306(A282503(n+1)))`
-/

namespace A275720.P6200058926266704261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n - A084360 (A294306 (A282503 (n + 1)).toNat).toNat

end

end A275720.P6200058926266704261

/-! ## A275720.P5664432062752092022

`A064179(A038503(n))+a(n-1)` with `a(0)=0`
-/

namespace A275720.P5664432062752092022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064179 (A038503 n).toNat + a (n - 1)

end

end A275720.P5664432062752092022

/-!
# A275721: Numbers n for which A003961(n+1) > A003961(n).

The programs for A275721, the canonical program `A275721.P606580914333847557` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275721 has offset 1).

The definition of A275721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275721.P606580914333847557

`A275717(n+1)-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A275721

/-- `A275717(n+1)-1` -/
def P606580914333847557.Spec : Prop :=
  ∀ n, P606580914333847557.a n = A275721 (n + 1)

theorem P606580914333847557.correct : P606580914333847557.Spec := by
  intro n
  simp only [A275721, Nat.add_sub_cancel]

end A275721

/-! ## A275721.P13637689865767203210

`comp[A275722(n+1)-1]+1`
-/

namespace A275721.P13637689865767203210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275722 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A275721.P13637689865767203210

namespace A275721

/-- `comp[A275722(n+1)-1]+1` -/
def P13637689865767203210.Spec : Prop :=
  ∀ n, (P13637689865767203210.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P15487237629670576387

`A275722(n+1)-A275719(n+1)`
-/

namespace A275721.P15487237629670576387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275722 (n + 1) - A275719 (n + 1)

end

end A275721.P15487237629670576387

namespace A275721

/-- `A275722(n+1)-A275719(n+1)` -/
def P15487237629670576387.Spec : Prop :=
  ∀ n, P15487237629670576387.a n = A275721 (n + 1)

end A275721

/-! ## A275721.P13344807046428640568

`A275718(n+1)-(A275719(n+1)+1)`
-/

namespace A275721.P13344807046428640568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1) - (A275719 (n + 1) + 1)

end

end A275721.P13344807046428640568

namespace A275721

/-- `A275718(n+1)-(A275719(n+1)+1)` -/
def P13344807046428640568.Spec : Prop :=
  ∀ n, P13344807046428640568.a n = A275721 (n + 1)

end A275721

/-! ## A275721.P15145508113064328071

`A305805(A000040(n+1))+A275717(n+1)`
-/

namespace A275721.P15145508113064328071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A000040 (n + 1)).toNat + A275717 (n + 1)

end

end A275721.P15145508113064328071

namespace A275721

/-- `A305805(A000040(n+1))+A275717(n+1)` -/
def P15145508113064328071.Spec : Prop :=
  ∀ n, P15145508113064328071.a n = A275721 (n + 1)

end A275721

/-! ## A275721.P4997246900826149330

`lt[0, Δ[A253885(n)]]+1`
-/

namespace A275721.P4997246900826149330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275721.P4997246900826149330

namespace A275721

/-- `lt[0, Δ[A253885(n)]]+1` -/
def P4997246900826149330.Spec : Prop :=
  ∀ n, (P4997246900826149330.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P7112341329851150332

`lt[1, Δ[A003961(n+1)]]+1`
-/

namespace A275721.P7112341329851150332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275721.P7112341329851150332

namespace A275721

/-- `lt[1, Δ[A003961(n+1)]]+1` -/
def P7112341329851150332.Spec : Prop :=
  ∀ n, (P7112341329851150332.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P2244060697927569527

`record[(n+1)*Δ[A336853(n+1)]%2]`
-/

namespace A275721.P2244060697927569527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275721.P2244060697927569527

namespace A275721

/-- `record[(n+1)*Δ[A336853(n+1)]%2]` -/
def P2244060697927569527.Spec : Prop :=
  ∀ n, P2244060697927569527.a n = A275721 (n + 1)

end A275721

/-! ## A275721.P7617002972257508288

`lt[A253885(n), A253885(n+1)]+1`
-/

namespace A275721.P7617002972257508288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275721.P7617002972257508288

namespace A275721

/-- `lt[A253885(n), A253885(n+1)]+1` -/
def P7617002972257508288.Spec : Prop :=
  ∀ n, (P7617002972257508288.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P2880422479135636261

`lt[A048673(n+1), A048673(n+2)]+1`
-/

namespace A275721.P2880422479135636261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275721.P2880422479135636261

namespace A275721

/-- `lt[A048673(n+1), A048673(n+2)]+1` -/
def P2880422479135636261.Spec : Prop :=
  ∀ n, (P2880422479135636261.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P10529607924080262112

`lt[A003961(A028310(n)), A253885(n)]`
-/

namespace A275721.P10529607924080262112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275721.P10529607924080262112

namespace A275721

/-- `lt[A003961(A028310(n)), A253885(n)]` -/
def P10529607924080262112.Spec : Prop :=
  ∀ n, (P10529607924080262112.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P14310391191377954068

`lt[A003961(A028310(n)), A003961(n+1)]`
-/

namespace A275721.P14310391191377954068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275721.P14310391191377954068

namespace A275721

/-- `lt[A003961(A028310(n)), A003961(n+1)]` -/
def P14310391191377954068.Spec : Prop :=
  ∀ n, (P14310391191377954068.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P175180209057726825

`lt[A048673(A028310(n)), A048673(n+1)]`
-/

namespace A275721.P175180209057726825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275721.P175180209057726825

namespace A275721

/-- `lt[A048673(A028310(n)), A048673(n+1)]` -/
def P175180209057726825.Spec : Prop :=
  ∀ n, (P175180209057726825.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P5736165610558690181

`lt[A253885(A028310(n)-1), A253885(n)]`
-/

namespace A275721.P5736165610558690181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A028310 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275721.P5736165610558690181

namespace A275721

/-- `lt[A253885(A028310(n)-1), A253885(n)]` -/
def P5736165610558690181.Spec : Prop :=
  ∀ n, (P5736165610558690181.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P9302658744631473771

`lt[A003961(A004277(n)-n), A003961(n+1)]`
-/

namespace A275721.P9302658744631473771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275721.P9302658744631473771

namespace A275721

/-- `lt[A003961(A004277(n)-n), A003961(n+1)]` -/
def P9302658744631473771.Spec : Prop :=
  ∀ n, (P9302658744631473771.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P16649620358812842890

`A023443(A275717(n+1))`
-/

namespace A275721.P16649620358812842890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275717 (n + 1)).toNat

end

end A275721.P16649620358812842890

namespace A275721

/-- `A023443(A275717(n+1))` -/
def P16649620358812842890.Spec : Prop :=
  ∀ n, P16649620358812842890.a n = A275721 (n + 1)

end A275721

/-! ## A275721.P8290421465773502731

`lt[A252748(A028310(2*n)), A252748(2*(n+1))]`
-/

namespace A275721.P8290421465773502731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A028310 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275721.P8290421465773502731

namespace A275721

/-- `lt[A252748(A028310(2*n)), A252748(2*(n+1))]` -/
def P8290421465773502731.Spec : Prop :=
  ∀ n, (P8290421465773502731.a n : ℤ) = A275721 (n + 1)

end A275721

/-! ## A275721.P3198026958365935154

`lt[A297166(A004277(n)), A253885(n)]`
-/

namespace A275721.P3198026958365935154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275721.P3198026958365935154

namespace A275721

/-- `lt[A297166(A004277(n)), A253885(n)]` -/
def P3198026958365935154.Spec : Prop :=
  ∀ n, (P3198026958365935154.a n : ℤ) = A275721 (n + 1)

end A275721

/-!
# A275722: Numbers n for which A003961(n+1) < A003961(n).

The programs for A275722, there is no canonical definition to state claims against.
-/

/-! ## A275722.P2924870431260604883

`A275718(n+1)-1`
-/

namespace A275722.P2924870431260604883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1) - 1

end

end A275722.P2924870431260604883

/-! ## A275722.P12966467997879284640

`A275721(n+1)+A275719(n+1)`
-/

namespace A275722.P12966467997879284640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275721 (n + 1) + A275719 (n + 1)

end

end A275722.P12966467997879284640

/-! ## A275722.P6554176459786143982

`A275717(n+1)+A275719(n+1)-1`
-/

namespace A275722.P6554176459786143982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275717 (n + 1) + (A275719 (n + 1) - 1)

end

end A275722.P6554176459786143982

/-! ## A275722.P10276606057684577482

`lt[Δ[A253885(n)], 0]+1`
-/

namespace A275722.P10276606057684577482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A275722.P10276606057684577482

/-! ## A275722.P12240934820856706123

`lt[A253885(n+1), A253885(n)]+1`
-/

namespace A275722.P12240934820856706123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275722.P12240934820856706123

/-! ## A275722.P11044422255948683382

`lt[A253885(n), A253885(A028310(n)-1)]`
-/

namespace A275722.P11044422255948683382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A028310 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275722.P11044422255948683382

/-! ## A275722.P4870248306090390370

`lt[Δ[A003961(n+1)], 1]+1`
-/

namespace A275722.P4870248306090390370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A275722.P4870248306090390370

/-! ## A275722.P13012002551040432544

`lt[Δ[A048673(n+1)], 1]+1`
-/

namespace A275722.P13012002551040432544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A275722.P13012002551040432544

/-! ## A275722.P2277769992735148493

`A023443(A275718(n+1))`
-/

namespace A275722.P2277769992735148493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275718 (n + 1)).toNat

end

end A275722.P2277769992735148493

/-! ## A275722.P17522448095066705397

`eq[char[A275721(n+1)], A000007(n)]`
-/

namespace A275722.P17522448095066705397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275721 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A275722.P17522448095066705397

/-! ## A275722.P11478205967182277407

`lt[A048673(n+2), A048673(n+1)]+1`
-/

namespace A275722.P11478205967182277407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275722.P11478205967182277407

/-! ## A275722.P6040318970007608300

`lt[A003961(n+1), A003961(A028310(n))]`
-/

namespace A275722.P6040318970007608300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275722.P6040318970007608300

/-! ## A275722.P1218850956326775109

`lt[A048673(n+1), A048673(A028310(n))]`
-/

namespace A275722.P1218850956326775109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275722.P1218850956326775109

/-! ## A275722.P2012027521812829565

`lt[A252748(n+1), A252748(A028310(n))]`
-/

namespace A275722.P2012027521812829565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275722.P2012027521812829565

/-! ## A275722.P8159627128475222816

`lt[A003961(n+1), A003961(A004277(n)-n)]`
-/

namespace A275722.P8159627128475222816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275722.P8159627128475222816

/-! ## A275722.P15203108184559349057

`A023449(A275718(n+1)+6)`
-/

namespace A275722.P15203108184559349057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A275718 (n + 1) + 6).toNat

end

end A275722.P15203108184559349057

/-! ## A275722.P12779016746665120614

`lt[A003961(2*(n+1)), A003961(A004277(n))]`
-/

namespace A275722.P12779016746665120614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275722.P12779016746665120614

/-! ## A275722.P2200477204950839466

`lt[A118306(2*(n+1)), A118306(A028310(2*n))]`
-/

namespace A275722.P2200477204950839466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275722.P2200477204950839466

/-! ## A275722.P2516703826607241080

`A056926(A243457(n+1))*A113520(A275718(n+1))`
-/

namespace A275722.P2516703826607241080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A243457 (n + 1)).toNat * A113520 (A275718 (n + 1)).toNat

end

end A275722.P2516703826607241080

/-! ## A275722.P16158295516675532348

`lt[Δ[A297166(2*(n+1))²], n]+1`
-/

namespace A275722.P16158295516675532348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A275722.P16158295516675532348

/-!
# A275723: Square array A(n,k) = prime factorization of n (= 1..) completely reduced by factorial base representation of k (= 0..), read by descending antidiagonals as A(1,0), A(1,1), A(2,0), A(1,2), A(2,1), A(3,0), etc. See the Comments section for the meaning of reduction in this context.

The programs for A275723, there is no canonical definition to state claims against.
-/

/-! ## A275723.P16823519293910435845

`A275724(A038722(n+1))`
-/

namespace A275723.P16823519293910435845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275724 (A038722 (n + 1)).toNat

end

end A275723.P16823519293910435845

/-! ## A275723.P5851404009273675823

`A275724(A061579(n)+1)`
-/

namespace A275723.P5851404009273675823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275724 (A061579 n + 1).toNat

end

end A275723.P5851404009273675823

/-! ## A275723.P8536024875326632705

`A275724(∑[A198954(n)]-n)`
-/

namespace A275723.P8536024875326632705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275724 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A275723.P8536024875326632705

/-! ## A275723.P892387850969849326

`A275724(A002024(n+1)²-n)`
-/

namespace A275723.P892387850969849326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275724 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A275723.P892387850969849326

/-! ## A275723.P16166691781051806171

`A275724(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A275723.P16166691781051806171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275724 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A275723.P16166691781051806171

/-!
# A275724: Transpose of square array A275723.

The programs for A275724, there is no canonical definition to state claims against.
-/

/-! ## A275724.P10031469517935499672

`A275723(A038722(n+1))`
-/

namespace A275724.P10031469517935499672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275723 (A038722 (n + 1)).toNat

end

end A275724.P10031469517935499672

/-! ## A275724.P5568125130581082067

`A275723(A061579(n)+1)`
-/

namespace A275724.P5568125130581082067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275723 (A061579 n + 1).toNat

end

end A275724.P5568125130581082067

/-! ## A275724.P13704554649277278473

`A275723(A114327(n)+1+n)`
-/

namespace A275724.P13704554649277278473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275723 (A114327 n + 1 + (n : ℤ)).toNat

end

end A275724.P13704554649277278473

/-! ## A275724.P12425692865118552913

`A275723(A002024(n+1)²-n)`
-/

namespace A275724.P12425692865118552913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275723 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A275724.P12425692865118552913

/-! ## A275724.P4090150203592788543

`A275723(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A275724.P4090150203592788543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275723 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A275724.P4090150203592788543

/-!
# A275725: a(n) = A275723(A002110(1+A084558(n)), n); prime factorization encodings of cycle-polynomials computed for finite permutations listed in the order that is used in tables A060117 / A060118.

The programs for A275725, there is no canonical definition to state claims against.
-/

/-! ## A275725.P16436988872859386713

`A290095(A060119(n))`
-/

namespace A275725.P16436988872859386713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290095 (A060119 n).toNat

end

end A275725.P16436988872859386713

/-! ## A275725.P9600190478595565170

`A290095(A060120(n))`
-/

namespace A275725.P9600190478595565170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290095 (A060120 n).toNat

end

end A275725.P9600190478595565170

/-! ## A275725.P3906962872714100557

`2*A275807(n)`
-/

namespace A275725.P3906962872714100557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275807 n

end

end A275725.P3906962872714100557

/-! ## A275725.P17448447726990088945

`A275807(n)+A275807(n%(n+1))`
-/

namespace A275725.P17448447726990088945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275807 n + A275807 (n % (n + 1))

end

end A275725.P17448447726990088945

/-! ## A275725.P5437709341322352744

`(A275807(n)/(1-1/2))%A094793(n)`
-/

namespace A275725.P5437709341322352744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A275807 n : ℚ) / (1 - (1 : ℚ) / 2))) (A094793 n)

end

end A275725.P5437709341322352744

/-! ## A275725.P1254162932672080951

`A275807(A060125(n))+A275807(n)`
-/

namespace A275725.P1254162932672080951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275807 (A060125 n).toNat + A275807 n

end

end A275725.P1254162932672080951

/-! ## A275725.P17080429803852811440

`A275807(sqrt(A000290(n)))+A275807(n)`
-/

namespace A275725.P17080429803852811440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275807 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A275807 n

end

end A275725.P17080429803852811440

/-! ## A275725.P16694160141562385983

`A275807(n)+lcm(A000034(n), A275807(n))`
-/

namespace A275725.P16694160141562385983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275807 n + (Int.lcm (A000034 n) (A275807 n) : ℤ)

end

end A275725.P16694160141562385983

/-! ## A275725.P12546070059647413435

`A004277(A275807(n))`
-/

namespace A275725.P12546070059647413435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A275807 n).toNat

end

end A275725.P12546070059647413435

/-!
# A275726: A275725-polynomials evaluated at x=2: a(n) = A048675(A275725(n)).

The programs for A275726, there is no canonical definition to state claims against.
-/

/-! ## A275726.P14245798405406294289

`A048675(A275725(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275726.P14245798405406294289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A275725 n).toNat

end

end A275726.P14245798405406294289

/-! ## A275726.P14607419153326155152

`A048675(A275807(n))+1`
-/

namespace A275726.P14607419153326155152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A275807 n).toNat + 1

end

end A275726.P14607419153326155152

/-! ## A275726.P11275715003463203361

`A048675(2*A275807(n))`
-/

namespace A275726.P11275715003463203361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (2 * A275807 n).toNat

end

end A275726.P11275715003463203361

/-!
# A275727: a(0) = 0, for n >= 1, a(n) = A275736(n) + 2*a(A257684(n)).

The programs for A275727, there is no canonical definition to state claims against.
-/

/-! ## A275727.P15456647924991442101

`A275736(n)+2*a(A257684(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275727.P15456647924991442101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A275736 n + 2 * a (A257684 n).toNat

end

end A275727.P15456647924991442101

/-! ## A275727.P13471162087910873228

`A048675(A275733(n))`
-/

namespace A275727.P13471162087910873228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A275733 n).toNat

end

end A275727.P13471162087910873228

/-! ## A275727.P701095003319980918

`A275728(n-A276009(n))`
-/

namespace A275727.P701095003319980918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 ((n : ℤ) - A276009 n).toNat

end

end A275727.P701095003319980918

/-! ## A275727.P16315918421442739771

`A275736(n-A276009(n))`
-/

namespace A275727.P16315918421442739771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275736 ((n : ℤ) - A276009 n).toNat

end

end A275727.P16315918421442739771

/-! ## A275727.P3652333147323518622

`A275808(n-A276009(n))`
-/

namespace A275727.P3652333147323518622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275808 ((n : ℤ) - A276009 n).toNat

end

end A275727.P3652333147323518622

/-! ## A275727.P4136363373311059516

`A276010(n-A276009(n))`
-/

namespace A275727.P4136363373311059516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276010 ((n : ℤ) - A276009 n).toNat

end

end A275727.P4136363373311059516

/-! ## A275727.P13623957561880683020

`A275728(2*(A225901(n)+n))`
-/

namespace A275727.P13623957561880683020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 (2 * (A225901 n + (n : ℤ))).toNat

end

end A275727.P13623957561880683020

/-! ## A275727.P4098932493790658025

`A275728(A225901(n)+n)/2`
-/

namespace A275727.P4098932493790658025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275728 (A225901 n + (n : ℤ)).toNat : ℚ) / 2

end

end A275727.P4098932493790658025

/-! ## A275727.P10149372355493130350

`A276074(n)+A276074(A255411(n))/2`
-/

namespace A275727.P10149372355493130350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276074 n : ℚ) + (A276074 (A255411 n).toNat : ℚ) / 2

end

end A275727.P10149372355493130350

/-! ## A275727.P17815690880421493892

`A248663(A275733(2*n-n))`
-/

namespace A275727.P17815690880421493892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A275733 (2 * n - n)).toNat

end

end A275727.P17815690880421493892

/-! ## A275727.P8013570266726682926

`A248663(A276076(n-A276009(n)))`
-/

namespace A275727.P8013570266726682926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A276076 ((n : ℤ) - A276009 n).toNat).toNat

end

end A275727.P8013570266726682926

/-! ## A275727.P16553755577525641255

`A248663(4*A275733(n))`
-/

namespace A275727.P16553755577525641255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (4 * A275733 n).toNat

end

end A275727.P16553755577525641255

/-! ## A275727.P3395844112199169470

`A344511(A007623(n))`
-/

namespace A275727.P3395844112199169470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (A007623 n).toNat

end

end A275727.P3395844112199169470

/-!
# A275728: a(0) = 0, for n >= 1, a(n) = A275736(n) + a(A257684(n)); a(n) = A048675(A275734(n)).

The programs for A275728, there is no canonical definition to state claims against.
-/

/-! ## A275728.P18406588423855008992

`A275736(n)+a(A257684(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275728.P18406588423855008992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A275736 n + a (A257684 n).toNat

end

end A275728.P18406588423855008992

/-! ## A275728.P3168299740308925118

`A048675(A275734(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275728.P3168299740308925118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A275734 n).toNat

end

end A275728.P3168299740308925118

/-! ## A275728.P10915940543361318553

`A275729(A255411(n)-(A153880(n)+n))`
-/

namespace A275728.P10915940543361318553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A275728.P10915940543361318553

/-! ## A275728.P10863742444352903754

`A275729(A255411(n)-n-A153880(n))`
-/

namespace A275728.P10863742444352903754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A275728.P10863742444352903754

/-! ## A275728.P2810416836241518908

`A275729(A225901(n))`
-/

namespace A275728.P2810416836241518908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 (A225901 n).toNat

end

end A275728.P2810416836241518908

/-! ## A275728.P4677561691126600678

`∑{d}[A275734(n), A297108(#)]`
-/

namespace A275728.P4677561691126600678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A275728.P4677561691126600678

/-!
# A275729: A275735-polynomials evaluated at x=2: a(n) = A048675(A275735(n)).

The programs for A275729, there is no canonical definition to state claims against.
-/

/-! ## A275729.P14926487915504344981

`A048675(A275735(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275729.P14926487915504344981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A275735 n).toNat

end

end A275729.P14926487915504344981

/-! ## A275729.P8681064197769967096

`∑{digits}[A007623(n), A131577(#)]`
-/

namespace A275729.P8681064197769967096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A131577 x).sum

end

end A275729.P8681064197769967096

/-! ## A275729.P12650203962448475864

`∑{digits}[A007623(n), A003188(A000225(#))]`
-/

namespace A275729.P12650203962448475864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003188 (A000225 x).toNat).sum

end

end A275729.P12650203962448475864

/-! ## A275729.P15673717520398988967

`A275728(A225901(n))`
-/

namespace A275729.P15673717520398988967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 (A225901 n).toNat

end

end A275729.P15673717520398988967

/-! ## A275729.P8472081677077635541

`A275728(A276008(A255411(n))-n)`
-/

namespace A275729.P8472081677077635541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 (A276008 (A255411 n).toNat - (n : ℤ)).toNat

end

end A275729.P8472081677077635541

/-! ## A275729.P709419352229311341

`∑{e}[A278236(n), A005282(#)]`
-/

namespace A275729.P709419352229311341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005282 (Nat.factorization (f1 n).natAbs p)

end

end A275729.P709419352229311341

/-! ## A275729.P728881961865771227

`∑{e}[A276076(n), A101466(#)]`
-/

namespace A275729.P728881961865771227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A101466 (Nat.factorization (f1 n).natAbs p)

end

end A275729.P728881961865771227

/-! ## A275729.P362445082651520333

`∑{e}[A276076(n), A347775(#)]`
-/

namespace A275729.P362445082651520333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A347775 (Nat.factorization (f1 n).natAbs p)

end

end A275729.P362445082651520333

/-! ## A275729.P10546953363693508659

`∑{e}[A276076(n), A048675(A000040(#))]`
-/

namespace A275729.P10546953363693508659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A275729.P10546953363693508659

/-! ## A275729.P15662287315658626723

`A328892(A278236(n))`
-/

namespace A275729.P15662287315658626723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328892 (A278236 n).toNat

end

end A275729.P15662287315658626723

/-!
# A275730: Square array A(n,d): overwrite with zero the digit at position d from right (indicating radix d+2) in the factorial base representation of n, then convert back to decimal, read by descending antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), etc.

The programs for A275730, there is no canonical definition to state claims against.
-/

/-! ## A275730.P8422250839082699412

`A275731(A061579(n))`
-/

namespace A275730.P8422250839082699412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275731 (A061579 n).toNat

end

end A275730.P8422250839082699412

/-! ## A275730.P4579596080742783221

`A275731(A114327(n)+n)`
-/

namespace A275730.P4579596080742783221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275731 (A114327 n + (n : ℤ)).toNat

end

end A275730.P4579596080742783221

/-! ## A275730.P16481108805486437879

`A275731(A038722(n+1)-1)`
-/

namespace A275730.P16481108805486437879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275731 (A038722 (n + 1) - 1).toNat

end

end A275730.P16481108805486437879

/-! ## A275730.P3151440882405910723

`A275731(A025581(n)+n-A002262(n))`
-/

namespace A275730.P3151440882405910723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275731 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A275730.P3151440882405910723

/-! ## A275730.P17859277829174789308

`A275731(n-(A002262(n)-A025581(n)))`
-/

namespace A275730.P17859277829174789308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275731 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A275730.P17859277829174789308

/-!
# A275731: Transpose of array A275730.

The programs for A275731, there is no canonical definition to state claims against.
-/

/-! ## A275731.P18152603119866005455

`A275730(∑[char[∑[n]]]²-(n+1))`
-/

namespace A275731.P18152603119866005455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275730 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A275731.P18152603119866005455

/-! ## A275731.P8119358039941365884

`A275730(A061579(n))%(n+1)`
-/

namespace A275731.P8119358039941365884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275730 (A061579 n).toNat) (n + 1 : ℤ)

end

end A275731.P8119358039941365884

/-! ## A275731.P12867374964609802111

`lcm(A033999(n), A275730(A061579(n)))`
-/

namespace A275731.P12867374964609802111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A275730 (A061579 n).toNat)

end

end A275731.P12867374964609802111

/-! ## A275731.P9291174030083531007

`∑{d}[A275730(A061579(n)), A000010(#)]`
-/

namespace A275731.P9291174030083531007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275730 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A275731.P9291174030083531007

/-! ## A275731.P10421618124120792181

`A000203(gcd(n, n+1))*A275730(A061579(n))`
-/

namespace A275731.P10421618124120792181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A275730 (A061579 n).toNat

end

end A275731.P10421618124120792181

/-! ## A275731.P4740386805803641192

`A275730(A061579(n))*A277543(A277550(n+1))`
-/

namespace A275731.P4740386805803641192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275730 (A061579 n).toNat * A277543 (A277550 (n + 1)).toNat

end

end A275731.P4740386805803641192

/-! ## A275731.P12570508145669683182

`and(A000225(n), A275730(A061579(n)))`
-/

namespace A275731.P12570508145669683182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A275730 (A061579 n).toNat)

end

end A275731.P12570508145669683182

/-! ## A275731.P3474066903428087961

`A014963(40*(n+1))*A275730(A061579(n))`
-/

namespace A275731.P3474066903428087961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (40 * (n + 1)) * A275730 (A061579 n).toNat

end

end A275731.P3474066903428087961

/-! ## A275731.P12385126399845741954

`and(A070198(n), A275730(A061579(n)))`
-/

namespace A275731.P12385126399845741954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070198 n) (A275730 (A061579 n).toNat)

end

end A275731.P12385126399845741954

/-! ## A275731.P9162347902520038372

`and(A072828(n+1), A275730(A061579(n)))`
-/

namespace A275731.P9162347902520038372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072828 (n + 1)) (A275730 (A061579 n).toNat)

end

end A275731.P9162347902520038372

/-!
# A275732: One-based positions of 1-digits in the factorial base representation of n are converted to primes with those indices, then multiplied together.

The programs for A275732, there is no canonical definition to state claims against.
-/

/-! ## A275732.P15781973793775442354

`A019565(A275736(n))`
-/

namespace A275732.P15781973793775442354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A275736 n).toNat

end

end A275732.P15781973793775442354

/-! ## A275732.P6226116272254303834

`A275734(n)/A275734(A257684(n))`
-/

namespace A275732.P6226116272254303834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275734 n : ℚ) / (A275734 (A257684 n).toNat : ℚ)

end

end A275732.P6226116272254303834

/-! ## A275732.P2191126446491760937

`A275733(n)/A275733(A276009(n))`
-/

namespace A275732.P2191126446491760937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275733 n : ℚ) / (A275733 (A276009 n).toNat : ℚ)

end

end A275732.P2191126446491760937

/-! ## A275732.P8418532992880045856

`A275733(n)/A275733(n-A276008(n))`
-/

namespace A275732.P8418532992880045856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275733 n : ℚ) / (A275733 ((n : ℤ) - A276008 n).toNat : ℚ)

end

end A275732.P8418532992880045856

/-! ## A275732.P10707465927734628262

`A275733(n)/A003961(A275733(A257684(n)))`
-/

namespace A275732.P10707465927734628262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275733 n : ℚ) / (A003961 (A275733 (A257684 n).toNat).toNat : ℚ)

end

end A275732.P10707465927734628262

/-! ## A275732.P9609406429267290883

`A276076(n)/gcd(A351950(n)², A276076(n))`
-/

namespace A275732.P9609406429267290883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276076 n : ℚ) / (Int.gcd (A351950 n ^ 2) (A276076 n) : ℚ)

end

end A275732.P9609406429267290883

/-! ## A275732.P18331769035415464366

`A293442(2^A275736(n))`
-/

namespace A275732.P18331769035415464366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A275736 n : ℤ))).toNat

end

end A275732.P18331769035415464366

/-! ## A275732.P11901583254329523542

`A331288(2^A275736(n))`
-/

namespace A275732.P11901583254329523542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A275736 n : ℤ))).toNat

end

end A275732.P11901583254329523542

/-! ## A275732.P8243920038207017956

`A055231(A276076(n))`
-/

namespace A275732.P8243920038207017956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A276076 n).toNat

end

end A275732.P8243920038207017956

/-!
# A275733: a(0) = 1; for n >= 1, a(n) = A275732(n) * A003961(a(A257684(n))).

The programs for A275733, there is no canonical definition to state claims against.
-/

/-! ## A275733.P7248340406287517523

`A275732(n)*A003961(a(A257684(n)))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275733.P7248340406287517523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275732 n * A003961 (a (A257684 n).toNat).toNat

end

end A275733.P7248340406287517523

/-! ## A275733.P1550132704329431615

`A019565(A275727(n))`
-/

namespace A275733.P1550132704329431615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A275727 n).toNat

end

end A275733.P1550132704329431615

/-! ## A275733.P8100768495800955119

`A275732(n-A276009(n))`
-/

namespace A275733.P8100768495800955119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 ((n : ℤ) - A276009 n).toNat

end

end A275733.P8100768495800955119

/-! ## A275733.P4923245396989175981

`A328571(A351576(n))`
-/

namespace A275733.P4923245396989175981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A351576 n).toNat

end

end A275733.P4923245396989175981

/-! ## A275733.P1311533388790744870

`A276076(n-A276009(n))`
-/

namespace A275733.P1311533388790744870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 ((n : ℤ) - A276009 n).toNat

end

end A275733.P1311533388790744870

/-! ## A275733.P18221582845547136895

`A276076(n)/A351577(n)`
-/

namespace A275733.P18221582845547136895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276076 n : ℚ) / (A351577 n : ℚ)

end

end A275733.P18221582845547136895

/-! ## A275733.P2188019326289375493

`A276076(n)/A276076(A276009(n))`
-/

namespace A275733.P2188019326289375493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276076 n : ℚ) / (A276076 (A276009 n).toNat : ℚ)

end

end A275733.P2188019326289375493

/-! ## A275733.P8072539140720966979

`A276076(n)/A276076(n-A276008(n))`
-/

namespace A275733.P8072539140720966979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276076 n : ℚ) / (A276076 ((n : ℤ) - A276008 n).toNat : ℚ)

end

end A275733.P8072539140720966979

/-! ## A275733.P10823084345462406339

`A276076(n)/gcd(A276076(n), A351950(n))`
-/

namespace A275733.P10823084345462406339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276076 n : ℚ) / (Int.gcd (A276076 n) (A351950 n) : ℚ)

end

end A275733.P10823084345462406339

/-! ## A275733.P14665872466142995549

`A275734(2*(A225901(n)+n))`
-/

namespace A275733.P14665872466142995549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 (2 * (A225901 n + (n : ℤ))).toNat

end

end A275733.P14665872466142995549

/-! ## A275733.P4626657469555284091

`A276076(n)/A328572(A351576(n))`
-/

namespace A275733.P4626657469555284091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276076 n : ℚ) / (A328572 (A351576 n).toNat : ℚ)

end

end A275733.P4626657469555284091

/-! ## A275733.P17061586437344894082

`gcd(A068510(n+1), A276076(n))`
-/

namespace A275733.P17061586437344894082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 1)) (A276076 n)

end

end A275733.P17061586437344894082

/-! ## A275733.P10074559717014382077

`∏{p}[A276076(n), #]`
-/

namespace A275733.P10074559717014382077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275733.P10074559717014382077

/-!
# A275734: Prime-factorization representations of "factorial base slope polynomials": a(0) = 1; for n >= 1, a(n) = A275732(n) * a(A257684(n)).

The programs for A275734, there is no canonical definition to state claims against.
-/

/-! ## A275734.P16448316404091599266

`A275732(n)*a(A257684(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275734.P16448316404091599266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275732 n * a (A257684 n).toNat

end

end A275734.P16448316404091599266

/-! ## A275734.P4231877627435016018

`A275735(A225901(n))`
-/

namespace A275734.P4231877627435016018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (A225901 n).toNat

end

end A275734.P4231877627435016018

/-! ## A275734.P6022689446783963763

`A275735(A255411(n)-(A153880(n)+n))`
-/

namespace A275734.P6022689446783963763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A275734.P6022689446783963763

/-! ## A275734.P9619719600410199002

`A275735(A255411(n)-n-A153880(n))`
-/

namespace A275734.P9619719600410199002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A275734.P9619719600410199002

/-! ## A275734.P4422912578950606086

`∏{e}[A278236(A225901(n)), A000040(#)]`
-/

namespace A275734.P4422912578950606086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A225901 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A275734.P4422912578950606086

/-!
# A275735: Prime-factorization representations of "factorial base level polynomials": a(0) = 1; for n >= 1, a(n) = 2^A257511(n) * A003961(a(A257684(n))).

The programs for A275735, there is no canonical definition to state claims against.
-/

/-! ## A275735.P2607423719422567153

`2^A257511(n)*A003961(a(A257684(n)))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275735.P2607423719422567153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (A257511 n : ℤ) * (A003961 (SequenceMachineLib.roundAway (a (A257684 n).toNat)).toNat : ℚ)

end

end A275735.P2607423719422567153

/-! ## A275735.P1011855247069144652

`A275734(A225901(n))`
-/

namespace A275735.P1011855247069144652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 (A225901 n).toNat

end

end A275735.P1011855247069144652

/-! ## A275735.P13123651452498445677

`A181819(A276076(n))`
-/

namespace A275735.P13123651452498445677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A276076 n).toNat

end

end A275735.P13123651452498445677

/-! ## A275735.P161974171497974405

`A328835(A351576(n))`
-/

namespace A275735.P161974171497974405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328835 (A351576 n).toNat

end

end A275735.P161974171497974405

/-! ## A275735.P15875044844216444861

`∏{e}[A278236(n), A000040(#)]`
-/

namespace A275735.P15875044844216444861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A275735.P15875044844216444861

/-! ## A275735.P10846806475193075316

`∏{e}[A278236(n), A007500(#)]`
-/

namespace A275735.P10846806475193075316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007500 (Nat.factorization (f1 n).natAbs p)

end

end A275735.P10846806475193075316

/-! ## A275735.P6938421392330422685

`∏{e}[A278236(n), A024678(#)]`
-/

namespace A275735.P6938421392330422685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A024678 (Nat.factorization (f1 n).natAbs p)

end

end A275735.P6938421392330422685

/-! ## A275735.P72933095953589888

`∏{e}[A278236(n), A209237(#)]`
-/

namespace A275735.P72933095953589888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A209237 (Nat.factorization (f1 n).natAbs p)

end

end A275735.P72933095953589888

/-! ## A275735.P2291742627735227611

`∏{e}[A278236(n), A238528(#)]`
-/

namespace A275735.P2291742627735227611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A238528 (Nat.factorization (f1 n).natAbs p)

end

end A275735.P2291742627735227611

/-! ## A275735.P14124813886762332643

`∏{e}[A278236(n), A093878(#)+#]`
-/

namespace A275735.P14124813886762332643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A093878 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A275735.P14124813886762332643

/-! ## A275735.P15269134773045401025

`∏{e}[A276076(n), A000040(#)]`
-/

namespace A275735.P15269134773045401025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A275735.P15269134773045401025

/-!
# A275736: a(n) has base-2 representation with ones in those digit-positions where n contains ones in its factorial base representation, and zeros in all the other positions.

The programs for A275736, there is no canonical definition to state claims against.
-/

/-! ## A275736.P7348986673966991856

`A048675(A275732(n))`
-/

namespace A275736.P7348986673966991856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A275732 n).toNat

end

end A275736.P7348986673966991856

/-! ## A275736.P1860928549758566247

`A275728(n)-A275728(A257684(n))`
-/

namespace A275736.P1860928549758566247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 n - A275728 (A257684 n).toNat

end

end A275736.P1860928549758566247

/-! ## A275736.P2987767769741512020

`A275727(n)-A275727(A276009(n))`
-/

namespace A275736.P2987767769741512020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 n - A275727 (A276009 n).toNat

end

end A275736.P2987767769741512020

/-! ## A275736.P4120962590943528382

`xor(A275808(A257684(n)), A275808(n))`
-/

namespace A275736.P4120962590943528382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A275808 (A257684 n).toNat) (A275808 n)

end

end A275736.P4120962590943528382

/-! ## A275736.P8298426652501641149

`A275727(n)-2*A275727(A257684(n))`
-/

namespace A275736.P8298426652501641149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 n - 2 * A275727 (A257684 n).toNat

end

end A275736.P8298426652501641149

/-! ## A275736.P6654657676349459314

`A275728(n)-A275728(A276009(n))/2`
-/

namespace A275736.P6654657676349459314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275728 n : ℚ) - (A275728 (A276009 n).toNat : ℚ) / 2

end

end A275736.P6654657676349459314

/-! ## A275736.P4122115498088166230

`A275727(n)-A275727(n-A276008(n))`
-/

namespace A275736.P4122115498088166230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 n - A275727 ((n : ℤ) - A276008 n).toNat

end

end A275736.P4122115498088166230

/-! ## A275736.P1506955585768945746

`A087207(A275732(2*n-n))`
-/

namespace A275736.P1506955585768945746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A275732 (2 * n - n)).toNat

end

end A275736.P1506955585768945746

/-! ## A275736.P3348071108634553871

`A248663(2*A275732(n)-A275732(n))`
-/

namespace A275736.P3348071108634553871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (2 * A275732 n - A275732 n).toNat

end

end A275736.P3348071108634553871

/-! ## A275736.P14087797826214778221

`A248663(∑{e}[A000040(n+1), #*A275732(n)])`
-/

namespace A275736.P14087797826214778221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A275732 n).toNat

end

end A275736.P14087797826214778221

/-! ## A275736.P14093667885298114169

`A248663(∑{e}[A000040(n+1), A275732(n)/#])`
-/

namespace A275736.P14093667885298114169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A275732 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A275736.P14093667885298114169

/-! ## A275736.P5203162863670134057

`A248663(∑{e}[A000040(n+1), A275732(n^#)])`
-/

namespace A275736.P5203162863670134057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A275732 (n ^ Nat.factorization (f1 n).natAbs p)).toNat

end

end A275736.P5203162863670134057

/-! ## A275736.P18429781369538638913

`∑{p}[A275732(n)², A294022(A094064(#))]`
-/

namespace A275736.P18429781369538638913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A294022 (A094064 p).toNat

end

end A275736.P18429781369538638913

/-! ## A275736.P16022841755009020090

`A248663(4*A275732(n))`
-/

namespace A275736.P16022841755009020090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (4 * A275732 n).toNat

end

end A275736.P16022841755009020090

/-!
# A275737: First differences of A275579.

The programs for A275737, there is no canonical definition to state claims against.
-/

/-! ## A275737.P5253488075718334003

`A275579(n+2)-A275579(n+1)`
-/

namespace A275737.P5253488075718334003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275579 (n + 2) - A275579 (n + 1)

end

end A275737.P5253488075718334003

/-! ## A275737.P1273967509360256743

`char[A275341(n+1)-1]`
-/

namespace A275737.P1273967509360256743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275341 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275737.P1273967509360256743

/-! ## A275737.P3326986896872384815

`Δ[A275579(n+1)]`
-/

namespace A275737.P3326986896872384815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275737.P3326986896872384815

/-! ## A275737.P15991994852540817484

`Δ[A167146(n+1)/2]`
-/

namespace A275737.P15991994852540817484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167146 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275737.P15991994852540817484

/-! ## A275737.P10006607250348384038

`A000045(Δ[A167146(n+1)])`
-/

namespace A275737.P10006607250348384038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A275737.P10006607250348384038

/-! ## A275737.P16887887477601837776

`A001281(Δ[A167146(n+1)])`
-/

namespace A275737.P16887887477601837776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A275737.P16887887477601837776

/-! ## A275737.P10836492080480367847

`A001221(Δ[A167146(n+1)]!)`
-/

namespace A275737.P10836492080480367847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A275737.P10836492080480367847

/-! ## A275737.P12378566826787566918

`A001222(Δ[A167146(n+1)]!)`
-/

namespace A275737.P12378566826787566918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A275737.P12378566826787566918

/-! ## A275737.P9645056367271661537

`dr(A167149(Δ[A167146(n+1)]))`
-/

namespace A275737.P9645056367271661537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A167149 (f1 (n + 1) - f1 n).toNat)

end

end A275737.P9645056367271661537

/-! ## A275737.P6434294390219807769

`A001221(Δ[A167146(n+1)]+1)`
-/

namespace A275737.P6434294390219807769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 1).toNat

end

end A275737.P6434294390219807769

/-! ## A275737.P3057014689592556791

`A001222(Δ[A167146(n+1)]+1)`
-/

namespace A275737.P3057014689592556791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 1).toNat

end

end A275737.P3057014689592556791

/-! ## A275737.P3449769109480065573

`A000045(A167146(n+2)-A167146(n+1))`
-/

namespace A275737.P3449769109480065573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A167146 (n + 2) - A167146 (n + 1)).toNat

end

end A275737.P3449769109480065573

/-! ## A275737.P10756144972445263368

`A046654(A167146(n+2)-A167146(n+1))`
-/

namespace A275737.P10756144972445263368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046654 (A167146 (n + 2) - A167146 (n + 1)).toNat

end

end A275737.P10756144972445263368

/-! ## A275737.P15442878925041860032

`A000045(A167146(n+2)%A167146(n+1))`
-/

namespace A275737.P15442878925041860032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A167146 (n + 2)) (A167146 (n + 1))).toNat

end

end A275737.P15442878925041860032

/-! ## A275737.P16227985422695643784

`A057641(A167146(n+2)-A167146(n+1)+1)`
-/

namespace A275737.P16227985422695643784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (A167146 (n + 2) - A167146 (n + 1) + 1).toNat

end

end A275737.P16227985422695643784

/-! ## A275737.P5907517049139587685

`A288777(A167146(n+2)-A167146(n+1)+1)-1`
-/

namespace A275737.P5907517049139587685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288777 (A167146 (n + 2) - A167146 (n + 1) + 1).toNat - 1

end

end A275737.P5907517049139587685

/-!
# A275738: Number of ordered ways to write n as w^2 + x^2*(1+y^2+z^2), where w,x,y,z are nonnegative integers with x > 0, y <= z and y == z (mod 2).

The programs for A275738, there is no canonical definition to state claims against.
-/

/-! ## A275738.P11436746872930199202

`or(A000035(A001060(n)), A275648(n+1))`
-/

namespace A275738.P11436746872930199202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A001060 n).toNat) (A275648 (n + 1))

end

end A275738.P11436746872930199202

/-! ## A275738.P7882006735113678270

`or(A000035(A001911(n)), A275648(n+1))`
-/

namespace A275738.P7882006735113678270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A001911 n).toNat) (A275648 (n + 1))

end

end A275738.P7882006735113678270

/-! ## A275738.P6323847443153355572

`or(A000035(A020695(n)), A275648(n+1))`
-/

namespace A275738.P6323847443153355572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A020695 n).toNat) (A275648 (n + 1))

end

end A275738.P6323847443153355572

/-! ## A275738.P13779434020196490315

`or(A051731(A038224(n)), A275648(n+1))`
-/

namespace A275738.P13779434020196490315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051731 (A038224 n).toNat) (A275648 (n + 1))

end

end A275738.P13779434020196490315

/-! ## A275738.P10579275230860000288

`or(A196389(A010049(n)), A275648(n+1))`
-/

namespace A275738.P10579275230860000288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196389 (A010049 n).toNat) (A275648 (n + 1))

end

end A275738.P10579275230860000288

/-!
# A275740: Sums of the next n consecutive nonsquare integers.

The programs for A275740, there is no canonical definition to state claims against.
-/

/-! ## A275740.P423994621837711255

`A011934(n)+A001221(A061955(n+1))`
-/

namespace A275740.P423994621837711255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n + A001221 (A061955 (n + 1)).toNat

end

end A275740.P423994621837711255

/-! ## A275740.P18434315854730152050

`A290090(A027891(n+1))+A011934(n)`
-/

namespace A275740.P18434315854730152050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290090 (A027891 (n + 1)).toNat + A011934 n

end

end A275740.P18434315854730152050

/-! ## A275740.P7212547747575138061

`A257839(A005898(n))-A097337(n+1)`
-/

namespace A275740.P7212547747575138061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A005898 n).toNat - A097337 (n + 1)

end

end A275740.P7212547747575138061

/-! ## A275740.P8027731579553984316

`A033183(A263998(n+5)+A152132(3*n+1))`
-/

namespace A275740.P8027731579553984316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A263998 (n + 5) + A152132 (3 * n + 1)).toNat

end

end A275740.P8027731579553984316

/-!
# A275741: Sum of Wilson and Lerch remainders of n-th prime.

The programs for A275741, there is no canonical definition to state claims against.
-/

/-! ## A275741.P12777277765577234450

`A002068(n+2)+A197631(n+2)`
-/

namespace A275741.P12777277765577234450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002068 (n + 2) + A197631 (n + 2)

end

end A275741.P12777277765577234450

/-!
# A275742: Number of solutions to the congruence y^2 + x*y + y == x^3 + x^2 - 10*x - 10 (mod p) as p runs through the primes.

The programs for A275742, there is no canonical definition to state claims against.
-/

/-! ## A275742.P6426835281576616966

`Δ[A007504(n)]-A275745(n+1)`
-/

namespace A275742.P6426835281576616966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A275745 (n + 1)

end

end A275742.P6426835281576616966

/-! ## A275742.P859370972011983950

`p?[A014681(n)]-A275745(n+1)`
-/

namespace A275742.P859370972011983950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A275745 (n + 1)

end

end A275742.P859370972011983950

/-! ## A275742.P8216219124701872075

`A000040(n+1)-A275745(n+1)`
-/

namespace A275742.P8216219124701872075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A275745 (n + 1)

end

end A275742.P8216219124701872075

/-! ## A275742.P14663968506073574950

`A008578(n+2)-A275745(n+1)`
-/

namespace A275742.P14663968506073574950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A275745 (n + 1)

end

end A275742.P14663968506073574950

/-! ## A275742.P6202670575365495821

`p?[A004280(n+1)]-A275745(n+1)`
-/

namespace A275742.P6202670575365495821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A275745 (n + 1)

end

end A275742.P6202670575365495821

/-! ## A275742.P16930892178152866672

`record[A020639(n+2)]-A275745(n+1)`
-/

namespace A275742.P16930892178152866672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A275745 (n + 1)

end

end A275742.P16930892178152866672

/-! ## A275742.P12904247426910647197

`A006530(A001749(n+1))-A275745(n+1)`
-/

namespace A275742.P12904247426910647197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001749 (n + 1)).toNat - A275745 (n + 1)

end

end A275742.P12904247426910647197

/-! ## A275742.P15480417448680570467

`A182986(n+2)-A030184(A182986(n+2))`
-/

namespace A275742.P15480417448680570467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A030184 (A182986 (n + 2)).toNat

end

end A275742.P15480417448680570467

/-! ## A275742.P17375527819102745779

`A276173(n+1)+A276193(n+1)-A275745(n+1)`
-/

namespace A275742.P17375527819102745779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276173 (n + 1) + (A276193 (n + 1) - A275745 (n + 1))

end

end A275742.P17375527819102745779

/-!
# A275744: Triangle read by rows: Number of unlabeled cubic graphs with 2n nodes and k components.

The programs for A275744, there is no canonical definition to state claims against.
-/

/-! ## A275744.P3761086051538392708

`A152595(A143983(n+1))`
-/

namespace A275744.P3761086051538392708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152595 (A143983 (n + 1)).toNat

end

end A275744.P3761086051538392708

/-! ## A275744.P1117044303652582105

`A008481(A178534(n+1)!)`
-/

namespace A275744.P1117044303652582105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (Nat.factorial (A178534 (n + 1)).toNat)

end

end A275744.P1117044303652582105

/-! ## A275744.P2132406829173522570

`round(A100795(A143983(n+1)²)/4)`
-/

namespace A275744.P2132406829173522570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100795 (A143983 (n + 1) ^ 2).toNat : ℚ) / 4)

end

end A275744.P2132406829173522570

/-! ## A275744.P16696298189617875806

`A003269(n+2)%A052382(A176088(n))`
-/

namespace A275744.P16696298189617875806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003269 (n + 2)) (A052382 (A176088 n).toNat)

end

end A275744.P16696298189617875806

/-!
# A275745: P-defects p - N(p) of the congruence y^2 + x*y + y == x^3 + x^2 - 10*x - 10 (mod p) for primes p,where N(p) is the number of solutions given for p = prime(n) by A275742(n).

The programs for A275745, there is no canonical definition to state claims against.
-/

/-! ## A275745.P10635018308756238796

`A030184(p?[comp[n²]])`
-/

namespace A275745.P10635018308756238796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A275745.P10635018308756238796

/-! ## A275745.P3090360516184057261

`A030184(Δ[A007504(n)])`
-/

namespace A275745.P3090360516184057261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (f1 (n + 1) - f1 n).toNat

end

end A275745.P3090360516184057261

/-! ## A275745.P3181513185777199446

`A122776(p?[A257143(n)])`
-/

namespace A275745.P3181513185777199446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A275745.P3181513185777199446

/-! ## A275745.P4496927750770940048

`A030184(A000040(n+1))`
-/

namespace A275745.P4496927750770940048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A000040 (n + 1)).toNat

end

end A275745.P4496927750770940048

/-! ## A275745.P6847381533776920781

`A030184(A161847(n+1))`
-/

namespace A275745.P6847381533776920781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A161847 (n + 1)).toNat

end

end A275745.P6847381533776920781

/-! ## A275745.P15482386996358121474

`A030184(A008578(n+2))`
-/

namespace A275745.P15482386996358121474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A008578 (n + 2)).toNat

end

end A275745.P15482386996358121474

/-! ## A275745.P16082018560310681789

`A030184(A175787(n+2))`
-/

namespace A275745.P16082018560310681789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A175787 (n + 2)).toNat

end

end A275745.P16082018560310681789

/-! ## A275745.P4651667691651897392

`A030184(A182986(n+2))`
-/

namespace A275745.P4651667691651897392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A182986 (n + 2)).toNat

end

end A275745.P4651667691651897392

/-! ## A275745.P1870979579892030760

`A030184(record[A006530(n+2)])`
-/

namespace A275745.P1870979579892030760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275745.P1870979579892030760

/-! ## A275745.P8602466569180418490

`A030184(record[A014963(n+2)])`
-/

namespace A275745.P8602466569180418490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275745.P8602466569180418490

/-! ## A275745.P12251584015013157435

`A030184(record[A020639(n+2)])`
-/

namespace A275745.P12251584015013157435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275745.P12251584015013157435

/-! ## A275745.P11526254732641652333

`A122776(p?[A080512(n+1)])`
-/

namespace A275745.P11526254732641652333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A275745.P11526254732641652333

/-! ## A275745.P10382399847846058265

`A000040(n+1)-A275742(n+1)`
-/

namespace A275745.P10382399847846058265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A275742 (n + 1)

end

end A275745.P10382399847846058265

/-! ## A275745.P3578347282610659352

`A030184(A276193(n+1)+A276173(n+1))`
-/

namespace A275745.P3578347282610659352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A276193 (n + 1) + A276173 (n + 1)).toNat

end

end A275745.P3578347282610659352

/-! ## A275745.P15439639018102107405

`A276173(n+1)+A276193(n+1)-A275742(n+1)`
-/

namespace A275745.P15439639018102107405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276173 (n + 1) + (A276193 (n + 1) - A275742 (n + 1))

end

end A275745.P15439639018102107405

/-! ## A275745.P12213164210723653581

`A030184(A001750(n+1))`
-/

namespace A275745.P12213164210723653581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A001750 (n + 1)).toNat

end

end A275745.P12213164210723653581

/-!
# A275750: Prime numbers of the form 4^k - 27.

The programs for A275750, there is no canonical definition to state claims against.
-/

/-! ## A275750.P3170618505109286858

`4^A274519(n+1)-27`
-/

namespace A275750.P3170618505109286858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A274519 (n + 1) : ℤ) - 27

end

end A275750.P3170618505109286858

/-!
# A275751: Self-convolution square root of the even bisection of A274965.

The programs for A275751, there is no canonical definition to state claims against.
-/

/-! ## A275751.P17878047743958588912

`5*a(n-1)-A083544(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A275751.P17878047743958588912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * a (n - 1) - A083544 (a (n - 2)).toNat

end

end A275751.P17878047743958588912

/-!
# A275752: Self-convolution square root of the odd bisection of A274965.

The programs for A275752, there is no canonical definition to state claims against.
-/

/-! ## A275752.P5617621450313142128

`or(A206902(n), A241825(A000105(n)))`
-/

namespace A275752.P5617621450313142128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A206902 n) (A241825 (A000105 n).toNat)

end

end A275752.P5617621450313142128

/-! ## A275752.P9217442106671496014

`A126760(A126473(n))-A112442(n+1)`
-/

namespace A275752.P9217442106671496014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A126473 n).toNat - A112442 (n + 1)

end

end A275752.P9217442106671496014

/-! ## A275752.P2676626198592519356

`A126760(A126473(n))-A337683(n+1)`
-/

namespace A275752.P2676626198592519356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A126473 n).toNat - A337683 (n + 1)

end

end A275752.P2676626198592519356

/-!
# A275753: G.f. A(x) satisfies: 1 = ...(((((A(x) - x) - x^2)^(1/2) - x^3)^(1/3) - x^4)^(1/4) - x^5)^(1/5) -...- x^n)^(1/n) -..., an infinite series of nested n-th roots.

The programs for A275753, there is no canonical definition to state claims against.
-/

/-! ## A275753.P3758825465281688189

`A297204(n)+A171874(A171874(n))`
-/

namespace A275753.P3758825465281688189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297204 n + A171874 (A171874 n).toNat

end

end A275753.P3758825465281688189

/-! ## A275753.P6556469721809227184

`A297247(A297201(n))+A297204(n)`
-/

namespace A275753.P6556469721809227184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (A297201 n).toNat + A297204 n

end

end A275753.P6556469721809227184

/-! ## A275753.P3945634012308539861

`A351358(A351342(n))+A297204(n)`
-/

namespace A275753.P3945634012308539861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (A351342 n).toNat + A297204 n

end

end A275753.P3945634012308539861

/-!
# A275754: G.f. A(x) satisfies: 1 = ...(((((A(x) - x)^(1/2) - x^2)^(1/3) - x^3)^(1/4) - x^4)^(1/5) - x^5)^(1/6) -...- x^n)^(1/(n+1)) -..., an infinite series of nested n-th roots.

The programs for A275754, there is no canonical definition to state claims against.
-/

/-! ## A275754.P5970031292869272935

`A346697(a(n-2))+n*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A275754.P5970031292869272935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A346697 (a (n - 2)).toNat + (n : ℤ) * a (n - 1)

end

end A275754.P5970031292869272935

/-! ## A275754.P4817911308902975287

`A059995(11*A349087(n))`
-/

namespace A275754.P4817911308902975287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A349087 n).toNat

end

end A275754.P4817911308902975287

/-! ## A275754.P7167751747422347308

`A160544(record[A166040(n)]!)`
-/

namespace A275754.P7167751747422347308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A275754.P7167751747422347308

/-!
# A275755: G.f. satisfies: A(x) = x + A( A(x)^2 - A(x)^5 ).

The programs for A275755, there is no canonical definition to state claims against.
-/

/-! ## A275755.P5726532241911455631

`floor(sqrt(A199136(n+1)))`
-/

namespace A275755.P5726532241911455631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A199136 (n + 1))

end

end A275755.P5726532241911455631

/-! ## A275755.P17246035189982113116

`A000006(A275385(n))`
-/

namespace A275755.P17246035189982113116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A275385 n).toNat

end

end A275755.P17246035189982113116

/-! ## A275755.P9161813148790079583

`A226762(A150521(n))`
-/

namespace A275755.P9161813148790079583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150521 n).toNat

end

end A275755.P9161813148790079583

/-!
# A275756: G.f. satisfies: A(x) = x + A( A(x)^2 - A(x)^6 ).

The programs for A275756, there is no canonical definition to state claims against.
-/

/-! ## A275756.P16127997965376088111

`A049124(n)+A001842(A291116(n))`
-/

namespace A275756.P16127997965376088111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049124 n + A001842 (A291116 n).toNat

end

end A275756.P16127997965376088111

/-! ## A275756.P6021387608234263565

`A326291(A291988(n))+A049124(n)`
-/

namespace A275756.P6021387608234263565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A291988 n).toNat + A049124 n

end

end A275756.P6021387608234263565

/-! ## A275756.P8738754519502755119

`A025442(A279571(n))+A006027(n+1)`
-/

namespace A275756.P8738754519502755119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A279571 n).toNat + A006027 (n + 1)

end

end A275756.P8738754519502755119

/-! ## A275756.P9238007730447447479

`A049139(n+1)-A025428(A000142(n))`
-/

namespace A275756.P9238007730447447479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049139 (n + 1) - A025428 (A000142 n).toNat

end

end A275756.P9238007730447447479

/-!
# A275757: G.f. satisfies: A(x) = x + A( A(x)^3 - A(x)^7 ), an odd function.

The programs for A275757, there is no canonical definition to state claims against.
-/

/-! ## A275757.P12558927388631783028

`A291090(n)-A096972(A020094(n))`
-/

namespace A275757.P12558927388631783028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291090 n - A096972 (A020094 n).toNat

end

end A275757.P12558927388631783028

/-! ## A275757.P304300323949405385

`A291090(n)-A185144(A079502(n))`
-/

namespace A275757.P304300323949405385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291090 n - A185144 (A079502 n).toNat

end

end A275757.P304300323949405385

/-! ## A275757.P10548183557507846817

`A291090(n)-A270417(A000522(n))`
-/

namespace A275757.P10548183557507846817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291090 n - A270417 (A000522 n).toNat

end

end A275757.P10548183557507846817

/-! ## A275757.P10165630743046951375

`A291090(n)-A001842(A291113(n))`
-/

namespace A275757.P10165630743046951375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291090 n - A001842 (A291113 n).toNat

end

end A275757.P10165630743046951375

/-!
# A275758: G.f. satisfies: A(x) = x + A( A(x)^4 - A(x)^10 ).

The programs for A275758, there is no canonical definition to state claims against.
-/

/-! ## A275758.P17788167164333020141

`A003168(n)-A122282(A224248(n))`
-/

namespace A275758.P17788167164333020141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003168 n - A122282 (A224248 n).toNat

end

end A275758.P17788167164333020141

/-! ## A275758.P276503681691207249

`A222253(A316867(n+1)+A003168(n))`
-/

namespace A275758.P276503681691207249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A316867 (n + 1) + A003168 n).toNat

end

end A275758.P276503681691207249

/-!
# A275759: E.g.f. satisfies: A(x)^A(-x) = exp(2*x) * A(-x)^A(x).

The programs for A275759, there is no canonical definition to state claims against.
-/

/-! ## A275759.P13730231758409716183

`(2^n-n²)*A000005(A289202(n+1))`
-/

namespace A275759.P13730231758409716183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (n ^ 2 : ℤ)) * A000005 (A289202 (n + 1)).toNat

end

end A275759.P13730231758409716183

/-!
# A275760: G.f. A(x,y) satisfies: A(x,y) = x*y + 1/A(x,x*y), with A(0,y) = 1.

The programs for A275760, there is no canonical definition to state claims against.
-/

/-! ## A275760.P13345453604627346358

`Δ[A285718(∑[A049885(n+1)])]`
-/

namespace A275760.P13345453604627346358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275760.P13345453604627346358

/-!
# A275762: G.f.: 2 - x/(1+2*x - x^3/(1+2*x^2 - x^5/(1+2*x^3 - x^7/(1+2*x^4 - x^9/(1+2*x^5 - x^11/(1 - ...)))))), a continued fraction.

The programs for A275762, there is no canonical definition to state claims against.
-/

/-! ## A275762.P16747717103066657234

`A000038(n)-A291940(A075349(n+1))`
-/

namespace A275762.P16747717103066657234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A291940 (A075349 (n + 1)).toNat

end

end A275762.P16747717103066657234

/-! ## A275762.P4783647591016819422

`A014197(2*n+1)-A291940(A075349(n+1))`
-/

namespace A275762.P4783647591016819422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * n + 1) - A291940 (A075349 (n + 1)).toNat

end

end A275762.P4783647591016819422

/-! ## A275762.P16042408690794375854

`A266220(A001223(n+1))-A291940(A075349(n+1))`
-/

namespace A275762.P16042408690794375854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (A001223 (n + 1)).toNat - A291940 (A075349 (n + 1)).toNat

end

end A275762.P16042408690794375854

/-! ## A275762.P5416270788195411988

`A266220(A006093(n+1))-A291940(A075349(n+1))`
-/

namespace A275762.P5416270788195411988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (A006093 (n + 1)).toNat - A291940 (A075349 (n + 1)).toNat

end

end A275762.P5416270788195411988

/-! ## A275762.P4768299161302242653

`A266220(A046644(n+1))-A291940(A075349(n+1))`
-/

namespace A275762.P4768299161302242653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (A046644 (n + 1)).toNat - A291940 (A075349 (n + 1)).toNat

end

end A275762.P4768299161302242653

/-! ## A275762.P1007884643112890871

`A147843(A102376(5*n)+1)-A291940(A075349(n+1))`
-/

namespace A275762.P1007884643112890871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (A102376 (5 * n) + 1).toNat - A291940 (A075349 (n + 1)).toNat

end

end A275762.P1007884643112890871

/-!
# A275763: G.f.: x = Sum_{n>=1} a(n-1) * x^n / Product_{k=1..n} (1 + n*k*x).

The programs for A275763, there is no canonical definition to state claims against.
-/

/-! ## A275763.P2274464461660993680

`A336557(Δ[n²]^(n-1))`
-/

namespace A275763.P2274464461660993680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336557 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A275763.P2274464461660993680

/-!
# A275764: E.g.f. satisfies: A(x) = exp(2*x) * A(-x).

The programs for A275764, there is no canonical definition to state claims against.
-/

/-! ## A275764.P16528361901748560031

`A265329(A077028(n)*A206850(n))`
-/

namespace A275764.P16528361901748560031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A077028 n * A206850 n).toNat

end

end A275764.P16528361901748560031

/-! ## A275764.P2671293154015561390

`A212831(A076325(n+1))-A284446(n+1)`
-/

namespace A275764.P2671293154015561390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A076325 (n + 1)).toNat - A284446 (n + 1)

end

end A275764.P2671293154015561390

/-! ## A275764.P3752762817497070282

`A162223(A083711(2*(n+2))+A000986(n))`
-/

namespace A275764.P3752762817497070282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162223 (A083711 (2 * (n + 2)) + A000986 n).toNat

end

end A275764.P3752762817497070282

/-!
# A275765: G.f. satisfies: A(x - A(x)^2) = x + A(x)^2.

The programs for A275765, there is no canonical definition to state claims against.
-/

/-! ## A275765.P14153728176172402999

`xor(7^n-6^n, A255918(3*2^n-1))`
-/

namespace A275765.P14153728176172402999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((7 ^ n : ℤ) - (6 ^ n : ℤ)) (A255918 (3 * 2 ^ n - 1))

end

end A275765.P14153728176172402999

/-!
# A275766: a(n) = (5^(2*(n + 1)) - 1)/4.

The programs for A275766, the canonical program `A275766.P834557470017193565` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275766 has offset 1).

The definition of A275766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275766.P15322754894457421959

`(5^(2*(n+2))-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275766.P15322754894457421959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (2 * (n + 2)) : ℤ) - 1 : ℚ) / 4

end

end A275766.P15322754894457421959

namespace A275766

/-- `(5^(2*(n+2))-1)/4` -/
def P15322754894457421959.Spec : Prop :=
  ∀ n, P15322754894457421959.a n = (A275766 (n + 1) : ℚ)

end A275766

/-! ## A275766.P834557470017193565

`A003463(2*(n+2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275766

/-- `A003463(2*(n+2))` -/
def P834557470017193565.Spec : Prop :=
  ∀ n, P834557470017193565.a n = A275766 (n + 1)

theorem P834557470017193565.correct : P834557470017193565.Spec := by
  intro n
  simp only [A275766, Nat.add_sub_cancel]

end A275766

/-! ## A275766.P14735459159538067194

`6*A218728(n+2)`
-/

namespace A275766.P14735459159538067194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A218728 (n + 2)

end

end A275766.P14735459159538067194

namespace A275766

/-- `6*A218728(n+2)` -/
def P14735459159538067194.Spec : Prop :=
  ∀ n, P14735459159538067194.a n = A275766 (n + 1)

end A275766

/-! ## A275766.P5986094797377323575

`Δ[A097139(2*n+3)]`
-/

namespace A275766.P5986094797377323575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097139 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275766.P5986094797377323575

namespace A275766

/-- `Δ[A097139(2*n+3)]` -/
def P5986094797377323575.Spec : Prop :=
  ∀ n, P5986094797377323575.a n = A275766 (n + 1)

end A275766

/-! ## A275766.P16093226858363200958

`Δ[6*A014914(n+1)]`
-/

namespace A275766.P16093226858363200958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A014914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275766.P16093226858363200958

namespace A275766

/-- `Δ[6*A014914(n+1)]` -/
def P16093226858363200958.Spec : Prop :=
  ∀ n, P16093226858363200958.a n = A275766 (n + 1)

end A275766

/-! ## A275766.P4026898847236662471

`A104891(2*n+3)+1`
-/

namespace A275766.P4026898847236662471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104891 (2 * n + 3) + 1

end

end A275766.P4026898847236662471

namespace A275766

/-- `A104891(2*n+3)+1` -/
def P4026898847236662471.Spec : Prop :=
  ∀ n, P4026898847236662471.a n = A275766 (n + 1)

end A275766

/-! ## A275766.P12379747856104276468

`2*A152417(2*(n+2))`
-/

namespace A275766.P12379747856104276468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152417 (2 * (n + 2))

end

end A275766.P12379747856104276468

namespace A275766

/-- `2*A152417(2*(n+2))` -/
def P12379747856104276468.Spec : Prop :=
  ∀ n, P12379747856104276468.a n = A275766 (n + 1)

end A275766

/-! ## A275766.P7709578718350794203

`A249222(3*(n+2)+n+1)`
-/

namespace A275766.P7709578718350794203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249222 (3 * (n + 2) + (n + 1))

end

end A275766.P7709578718350794203

namespace A275766

/-- `A249222(3*(n+2)+n+1)` -/
def P7709578718350794203.Spec : Prop :=
  ∀ n, P7709578718350794203.a n = A275766 (n + 1)

end A275766

/-!
# A275767: Numbers k for which 2*4^k - 27 is prime.

The programs for A275767, there is no canonical definition to state claims against.
-/

/-! ## A275767.P983671750722718729

`A068008(A046106(n+1))`
-/

namespace A275767.P983671750722718729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068008 (A046106 (n + 1)).toNat

end

end A275767.P983671750722718729

/-!
# A275768: a(n) is the number of ways to express n = (prime(i) + prime(j))/2 when (prime(i) - prime(j))/2 also is prime.

The programs for A275768, there is no canonical definition to state claims against.
-/

/-! ## A275768.P10046219469716619336

`A330166(A246368(n+1)-A330167(n))`
-/

namespace A275768.P10046219469716619336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (A246368 (n + 1) - A330167 n).toNat

end

end A275768.P10046219469716619336

/-! ## A275768.P15732977763344096337

`A056974(A001519(n)%A128093(n+1))`
-/

namespace A275768.P15732977763344096337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (Int.tmod (A001519 n) (A128093 (n + 1))).toNat

end

end A275768.P15732977763344096337

/-! ## A275768.P6031002276048273779

`A072000(A086661(n+1))%A229977(n)`
-/

namespace A275768.P6031002276048273779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072000 (A086661 (n + 1)).toNat) (A229977 n)

end

end A275768.P6031002276048273779

/-! ## A275768.P72620676638386616

`A248873(n)%A090387(A215981(n+1))`
-/

namespace A275768.P72620676638386616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248873 n) (A090387 (A215981 (n + 1)).toNat)

end

end A275768.P72620676638386616

/-! ## A275768.P11287962116489196882

`and(A124766(A263360(n+1)), A374763(n+3))`
-/

namespace A275768.P11287962116489196882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124766 (A263360 (n + 1)).toNat) (A374763 (n + 3))

end

end A275768.P11287962116489196882

/-!
# A275770: Primes p == 5 (mod 6) that are not Sophie Germain primes.

The programs for A275770, the canonical program `A275770.P3960562547820392168` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275770 has offset 1).

The definition of A275770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275770.P15562594336272978331

`floor(A259978(n+1)/2)`
-/

namespace A275770.P15562594336272978331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259978 (n + 1) : ℚ) / 2⌋

end

end A275770.P15562594336272978331

namespace A275770

/-- `floor(A259978(n+1)/2)` -/
def P15562594336272978331.Spec : Prop :=
  ∀ n, P15562594336272978331.a n = A275770 (n + 1)

end A275770

/-! ## A275770.P4603414831188009593

`∩[A007528(n+1), A043297(n+1)]`
-/

namespace A275770.P4603414831188009593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P4603414831188009593

namespace A275770

/-- `∩[A007528(n+1), A043297(n+1)]` -/
def P4603414831188009593.Spec : Prop :=
  ∀ n, (P4603414831188009593.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P16988555905836963263

`∩[A043297(n+1), A045410(n+1)]`
-/

namespace A275770.P16988555905836963263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P16988555905836963263

namespace A275770

/-- `∩[A043297(n+1), A045410(n+1)]` -/
def P16988555905836963263.Spec : Prop :=
  ∀ n, (P16988555905836963263.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P9208461154995184733

`∩[A043297(n+1), A056955(n+1)]`
-/

namespace A275770.P9208461154995184733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P9208461154995184733

namespace A275770

/-- `∩[A043297(n+1), A056955(n+1)]` -/
def P9208461154995184733.Spec : Prop :=
  ∀ n, (P9208461154995184733.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P4053672991774220515

`∩[A056955(n+1), A119480(n+1)]`
-/

namespace A275770.P4053672991774220515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P4053672991774220515

namespace A275770

/-- `∩[A056955(n+1), A119480(n+1)]` -/
def P4053672991774220515.Spec : Prop :=
  ∀ n, (P4053672991774220515.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P3960562547820392168

`∩[A003627(n+1), A068497(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A275770

/-- `∩[A003627(n+1), A068497(n+1)]` -/
def P3960562547820392168.Spec : Prop :=
  ∀ n, (P3960562547820392168.a n : ℤ) = A275770 (n + 1)

theorem P3960562547820392168.correct : P3960562547820392168.Spec := by
  intro n
  simp only [A275770, Nat.add_sub_cancel]

end A275770

/-! ## A275770.P17467259614383580066

`∩[A007528(n+1), A068497(n+1)]`
-/

namespace A275770.P17467259614383580066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P17467259614383580066

namespace A275770

/-- `∩[A007528(n+1), A068497(n+1)]` -/
def P17467259614383580066.Spec : Prop :=
  ∀ n, (P17467259614383580066.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P7827457386326880934

`∩[A045309(n+1), A068497(n+1)]`
-/

namespace A275770.P7827457386326880934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P7827457386326880934

namespace A275770

/-- `∩[A045309(n+1), A068497(n+1)]` -/
def P7827457386326880934.Spec : Prop :=
  ∀ n, (P7827457386326880934.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P16332355985888277148

`∩[A045410(n+1), A068497(n+1)]`
-/

namespace A275770.P16332355985888277148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P16332355985888277148

namespace A275770

/-- `∩[A045410(n+1), A068497(n+1)]` -/
def P16332355985888277148.Spec : Prop :=
  ∀ n, (P16332355985888277148.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P4976303779277357317

`∩[A056955(n+1), A068497(n+1)]`
-/

namespace A275770.P4976303779277357317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P4976303779277357317

namespace A275770

/-- `∩[A056955(n+1), A068497(n+1)]` -/
def P4976303779277357317.Spec : Prop :=
  ∀ n, (P4976303779277357317.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P10815689246739248818

`∩[A003627(n+1), A053176(n+1)]`
-/

namespace A275770.P10815689246739248818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P10815689246739248818

namespace A275770

/-- `∩[A003627(n+1), A053176(n+1)]` -/
def P10815689246739248818.Spec : Prop :=
  ∀ n, (P10815689246739248818.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P8319801705073765254

`∩[A007528(n+1), A053176(n+1)]`
-/

namespace A275770.P8319801705073765254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P8319801705073765254

namespace A275770

/-- `∩[A007528(n+1), A053176(n+1)]` -/
def P8319801705073765254.Spec : Prop :=
  ∀ n, (P8319801705073765254.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P13051717763304619870

`∩[A045309(n+1), A053176(n+1)]`
-/

namespace A275770.P13051717763304619870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P13051717763304619870

namespace A275770

/-- `∩[A045309(n+1), A053176(n+1)]` -/
def P13051717763304619870.Spec : Prop :=
  ∀ n, (P13051717763304619870.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P3944274656704137215

`∩[A045410(n+1), A053176(n+1)]`
-/

namespace A275770.P3944274656704137215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P3944274656704137215

namespace A275770

/-- `∩[A045410(n+1), A053176(n+1)]` -/
def P3944274656704137215.Spec : Prop :=
  ∀ n, (P3944274656704137215.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P3918844417772473984

`∩[A053176(n+1), A056955(n+1)]`
-/

namespace A275770.P3918844417772473984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P3918844417772473984

namespace A275770

/-- `∩[A053176(n+1), A056955(n+1)]` -/
def P3918844417772473984.Spec : Prop :=
  ∀ n, (P3918844417772473984.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P23575773791527960

`∩[A053176(n+1), A066501(n+1)]`
-/

namespace A275770.P23575773791527960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P23575773791527960

namespace A275770

/-- `∩[A053176(n+1), A066501(n+1)]` -/
def P23575773791527960.Spec : Prop :=
  ∀ n, (P23575773791527960.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P5570483355991794302

`∩[A259548(n+1), A043297(n+1)]`
-/

namespace A275770.P5570483355991794302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P5570483355991794302

namespace A275770

/-- `∩[A259548(n+1), A043297(n+1)]` -/
def P5570483355991794302.Spec : Prop :=
  ∀ n, (P5570483355991794302.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P6975514738245872082

`∩[A053176(n+1), A167409(n+1)]`
-/

namespace A275770.P6975514738245872082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P6975514738245872082

namespace A275770

/-- `∩[A053176(n+1), A167409(n+1)]` -/
def P6975514738245872082.Spec : Prop :=
  ∀ n, (P6975514738245872082.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P12064249093960403580

`∩[A043297(n+1), A016969(n)]`
-/

namespace A275770.P12064249093960403580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P12064249093960403580

namespace A275770

/-- `∩[A043297(n+1), A016969(n)]` -/
def P12064249093960403580.Spec : Prop :=
  ∀ n, (P12064249093960403580.a n : ℤ) = A275770 (n + 1)

end A275770

/-! ## A275770.P3152653055141049971

`∩[A053176(n+1), A016969(n)]`
-/

namespace A275770.P3152653055141049971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P3152653055141049971

namespace A275770

/-- `∩[A053176(n+1), A016969(n)]` -/
def P3152653055141049971.Spec : Prop :=
  ∀ n, (P3152653055141049971.a n : ℤ) = A275770 (n + 1)

end A275770

/-!
# A275771: a(n+3) = A008578(n+1) -a(n), a(0) = a(1) = a(2) = 0.

The programs for A275771, the canonical program `A275771.P3709999984210797197` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275771 has offset 0).

The definition of A275771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275771.P3709999984210797197

`A000040(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275771

/-- `A000040(n-3)-a(n-3)` -/
def P3709999984210797197.Spec : Prop :=
  ∀ n, P3709999984210797197.a n = A275771 n

theorem P3709999984210797197.correct : P3709999984210797197.Spec := by
  intro n
  simp only [A275771]

end A275771

/-!
# A275772: Average values of different permutations of digits of A275945(n).

The programs for A275772, there is no canonical definition to state claims against.
-/

/-! ## A275772.P2080070824305235084

`A045876(A275945(n+1))/A047726(A275945(n+1))`
-/

namespace A275772.P2080070824305235084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045876 (A275945 (n + 1)).toNat : ℚ) / (A047726 (A275945 (n + 1)).toNat : ℚ)

end

end A275772.P2080070824305235084

/-! ## A275772.P5607342971620694238

`A118759(A071242(n+1))`
-/

namespace A275772.P5607342971620694238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A071242 (n + 1)).toNat

end

end A275772.P5607342971620694238

/-! ## A275772.P11149085936135102433

`A000188(A071242(n+1)²)`
-/

namespace A275772.P11149085936135102433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A071242 (n + 1) ^ 2).toNat

end

end A275772.P11149085936135102433

/-! ## A275772.P17634582249559769436

`A000194(A071242(n+1)²)`
-/

namespace A275772.P17634582249559769436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A071242 (n + 1) ^ 2).toNat

end

end A275772.P17634582249559769436

/-! ## A275772.P3146752876139839008

`A000196(A071242(n+1)²)`
-/

namespace A275772.P3146752876139839008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A071242 (n + 1) ^ 2).toNat

end

end A275772.P3146752876139839008

/-! ## A275772.P11110401780269271305

`A004739(A071242(n+1)²)`
-/

namespace A275772.P11110401780269271305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A071242 (n + 1) ^ 2).toNat

end

end A275772.P11110401780269271305

/-! ## A275772.P11245926819320283448

`A019554(A071242(n+1)²)`
-/

namespace A275772.P11245926819320283448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A071242 (n + 1) ^ 2).toNat

end

end A275772.P11245926819320283448

/-! ## A275772.P13877101788527128452

`A033676(A071242(n+1)²)`
-/

namespace A275772.P13877101788527128452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A071242 (n + 1) ^ 2).toNat

end

end A275772.P13877101788527128452

/-! ## A275772.P14241531570292462618

`A033677(A071242(n+1)²)`
-/

namespace A275772.P14241531570292462618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A071242 (n + 1) ^ 2).toNat

end

end A275772.P14241531570292462618

/-! ## A275772.P5626528234557003382

`A000188(A071242(n+1)^2)`
-/

namespace A275772.P5626528234557003382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A071242 (n + 1) ^ 2).toNat

end

end A275772.P5626528234557003382

/-!
# A275774: Numbers m with the property that, when a and b are positive integers such that a*b = m, |a-b| is a Fibonacci number.

The programs for A275774, there is no canonical definition to state claims against.
-/

/-! ## A275774.P17355487660775145455

`A093467(A341015(n+1))`
-/

namespace A275774.P17355487660775145455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (A341015 (n + 1)).toNat

end

end A275774.P17355487660775145455

/-! ## A275774.P15360909603395413807

`A093467(∑[A147078(n+1)])`
-/

namespace A275774.P15360909603395413807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275774.P15360909603395413807

/-! ## A275774.P9861709942575515725

`A093467(∑[A006229(round(n²/12))])`
-/

namespace A275774.P9861709942575515725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275774.P9861709942575515725

/-! ## A275774.P15214500606866058757

`A001611(A250003(n)+comp[2*(n+1)])`
-/

namespace A275774.P15214500606866058757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A250003 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A275774.P15214500606866058757

/-!
# A275777: Primes p such that there are exactly p solutions to y^2 + x*y + y == x^3 + x^2 - 10*x - 10 (mod p).

The programs for A275777, there is no canonical definition to state claims against.
-/

/-! ## A275777.P12978273581900321081

`p?[eq[A008619(n), A121829(n)]]`
-/

namespace A275777.P12978273581900321081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121829 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A275777.P12978273581900321081

/-! ## A275777.P18373261347843123842

`eq[A121829(n), A133419(n+1)]`
-/

namespace A275777.P18373261347843123842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275777.P18373261347843123842

/-! ## A275777.P3454212699275056767

`p?[gcd(A030184(n+1), A089026(n+1))]`
-/

namespace A275777.P3454212699275056767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030184 (n + 1)) (A089026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A275777.P3454212699275056767

/-! ## A275777.P8519518458642488179

`eq[A028998(n), A055562(n)]`
-/

namespace A275777.P8519518458642488179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275777.P8519518458642488179

/-! ## A275777.P13614282413759182127

`p?[gcd(A000040(n+1), A275745(n+1))]`
-/

namespace A275777.P13614282413759182127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A275745 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A275777.P13614282413759182127

/-!
# A275778: Tribonacci-like sequence a(n) = a(n-1) + a(n-2) + a(n-3) for n >= 3, with a(0) = 1, a(1) = 2, a(2) = 1.

The programs for A275778, the canonical program `A275778.P8831256019444750021` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275778 has offset 0).

The definition of A275778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A275778.P8831256019444750021`, by `A275778.P8831256019444750021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275778.P8831256019444750021

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275778

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P8831256019444750021.Spec : Prop :=
  ∀ n, (P8831256019444750021.a n : ℤ) = A275778 n

theorem P8831256019444750021.correct : P8831256019444750021.Spec := by
  intro n
  simp only [A275778]

end A275778

/-! ## A275778.P4470213906320988185

`A276658(n)+A000073(n)`
-/

namespace A275778.P4470213906320988185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n + A000073 n

end

end A275778.P4470213906320988185

namespace A275778

/-- `A276658(n)+A000073(n)` -/
def P4470213906320988185.Spec : Prop :=
  ∀ n, P4470213906320988185.a n = A275778 n

end A275778

/-! ## A275778.P7414732839501182810

`ogf((-1-x+2x^2)/(-1+x+x^2+x^3))`
-/

namespace A275778.P7414732839501182810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -1, -1, -1] n

end

end A275778.P7414732839501182810

namespace A275778

/-- `ogf((-1-x+2x^2)/(-1+x+x^2+x^3))` -/
def P7414732839501182810.Spec : Prop :=
  ∀ n, P7414732839501182810.a n = A275778 n

end A275778

/-! ## A275778.P4368783244967876290

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A275778.P4368783244967876290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A275778.P4368783244967876290

namespace A275778

/-- `2*a(n-1)-a(n-4)` -/
def P4368783244967876290.Spec : Prop :=
  ∀ n, P4368783244967876290.a n = A275778 n

end A275778

/-! ## A275778.P17824307138718256592

`floor(a(n-1)-(a(n-4)-a(n-1)))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A275778.P17824307138718256592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 4] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A275778.P17824307138718256592

namespace A275778

/-- `floor(a(n-1)-(a(n-4)-a(n-1)))` -/
def P17824307138718256592.Spec : Prop :=
  ∀ n, P17824307138718256592.a n = A275778 n

end A275778

/-! ## A275778.P15934263379834945928

`A303005(n-1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A275778.P15934263379834945928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A303005 (n - 1) - a (n - 1)

end

end A275778.P15934263379834945928

namespace A275778

/-- `A303005(n-1)-a(n-1)` -/
def P15934263379834945928.Spec : Prop :=
  ∀ n, P15934263379834945928.a n = A275778 n

end A275778

/-! ## A275778.P274875652125711895

`A001590(n)+A000213(n)`
-/

namespace A275778.P274875652125711895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + A000213 n

end

end A275778.P274875652125711895

namespace A275778

/-- `A001590(n)+A000213(n)` -/
def P274875652125711895.Spec : Prop :=
  ∀ n, P274875652125711895.a n = A275778 n

end A275778

/-! ## A275778.P8592827962623012776

`A214727(n)-A000073(n)`
-/

namespace A275778.P8592827962623012776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A000073 n

end

end A275778.P8592827962623012776

namespace A275778

/-- `A214727(n)-A000073(n)` -/
def P8592827962623012776.Spec : Prop :=
  ∀ n, P8592827962623012776.a n = A275778 n

end A275778

/-! ## A275778.P17600729516675124455

`A000213(n)+Δ[A000073(n)]`
-/

namespace A275778.P17600729516675124455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (f1 (n + 1) - f1 n)

end

end A275778.P17600729516675124455

namespace A275778

/-- `A000213(n)+Δ[A000073(n)]` -/
def P17600729516675124455.Spec : Prop :=
  ∀ n, P17600729516675124455.a n = A275778 n

end A275778

/-! ## A275778.P4193693795325663743

`A214899(n)-Δ[A001590(n)]`
-/

namespace A275778.P4193693795325663743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - (f1 (n + 1) - f1 n)

end

end A275778.P4193693795325663743

namespace A275778

/-- `A214899(n)-Δ[A001590(n)]` -/
def P4193693795325663743.Spec : Prop :=
  ∀ n, P4193693795325663743.a n = A275778 n

end A275778

/-! ## A275778.P15672762256480908600

`A081172(n)+A000073(n+1)`
-/

namespace A275778.P15672762256480908600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + A000073 (n + 1)

end

end A275778.P15672762256480908600

namespace A275778

/-- `A081172(n)+A000073(n+1)` -/
def P15672762256480908600.Spec : Prop :=
  ∀ n, P15672762256480908600.a n = A275778 n

end A275778

/-! ## A275778.P4368927926009772881

`A276658(n)+A354784(n)/2`
-/

namespace A275778.P4368927926009772881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276658 n : ℚ) + (A354784 n : ℚ) / 2

end

end A275778.P4368927926009772881

namespace A275778

/-- `A276658(n)+A354784(n)/2` -/
def P4368927926009772881.Spec : Prop :=
  ∀ n, P4368927926009772881.a n = (A275778 n : ℚ)

end A275778

/-! ## A275778.P13989528954805526910

`A214727(n)-A354784(n)/2`
-/

namespace A275778.P13989528954805526910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214727 n : ℚ) - (A354784 n : ℚ) / 2

end

end A275778.P13989528954805526910

namespace A275778

/-- `A214727(n)-A354784(n)/2` -/
def P13989528954805526910.Spec : Prop :=
  ∀ n, P13989528954805526910.a n = (A275778 n : ℚ)

end A275778

/-! ## A275778.P556188279558762072

`A000213(n)+Δ[Δ[A192804(n)]]`
-/

namespace A275778.P556188279558762072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (f1 (n + 1) - f1 n)

end

end A275778.P556188279558762072

namespace A275778

/-- `A000213(n)+Δ[Δ[A192804(n)]]` -/
def P556188279558762072.Spec : Prop :=
  ∀ n, P556188279558762072.a n = A275778 n

end A275778

/-! ## A275778.P8847933210040192252

`A214899(n)-Δ[Δ[A000073(n)]]`
-/

namespace A275778.P8847933210040192252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - (f1 (n + 1) - f1 n)

end

end A275778.P8847933210040192252

namespace A275778

/-- `A214899(n)-Δ[Δ[A000073(n)]]` -/
def P8847933210040192252.Spec : Prop :=
  ∀ n, P8847933210040192252.a n = A275778 n

end A275778

/-! ## A275778.P16469012659120150789

`A001590(n+1)+2*A001590(n)`
-/

namespace A275778.P16469012659120150789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + 2 * A001590 n

end

end A275778.P16469012659120150789

namespace A275778

/-- `A001590(n+1)+2*A001590(n)` -/
def P16469012659120150789.Spec : Prop :=
  ∀ n, P16469012659120150789.a n = A275778 n

end A275778

/-! ## A275778.P3720970542235934753

`A020992(n)+A081172(n)-A001590(n)`
-/

namespace A275778.P3720970542235934753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + (A081172 n - A001590 n)

end

end A275778.P3720970542235934753

namespace A275778

/-- `A020992(n)+A081172(n)-A001590(n)` -/
def P3720970542235934753.Spec : Prop :=
  ∀ n, P3720970542235934753.a n = A275778 n

end A275778

/-! ## A275778.P2360401207501090862

`A081172(n)+A214727(n)-A000213(n)`
-/

namespace A275778.P2360401207501090862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + (A214727 n - A000213 n)

end

end A275778.P2360401207501090862

namespace A275778

/-- `A081172(n)+A214727(n)-A000213(n)` -/
def P2360401207501090862.Spec : Prop :=
  ∀ n, P2360401207501090862.a n = A275778 n

end A275778

/-! ## A275778.P7853358393141090356

`A276658(n)+A338192(n)-A000045(n)`
-/

namespace A275778.P7853358393141090356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n + (A338192 n - A000045 n)

end

end A275778.P7853358393141090356

namespace A275778

/-- `A276658(n)+A338192(n)-A000045(n)` -/
def P7853358393141090356.Spec : Prop :=
  ∀ n, P7853358393141090356.a n = A275778 n

end A275778

/-!
# A275779: a(n) = (2^(n^2) - 1)/(1 - 1/2^n).

The programs for A275779, the canonical program `A275779.P2801787369290771517` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275779 has offset 1).

The definition of A275779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275779.P2801787369290771517

`(2^(n+1)²-1)/(1-1/2^(n+1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275779

/-- `(2^(n+1)²-1)/(1-1/2^(n+1))` -/
def P2801787369290771517.Spec : Prop :=
  ∀ n, P2801787369290771517.a n = (A275779 (n + 1) : ℚ)

end A275779

/-! ## A275779.P17490526962163951494

`∑{d}[2^(n+1), #^(n+1)]-1`
-/

namespace A275779.P17490526962163951494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1) : ℕ) : ℤ) - 1

end

end A275779.P17490526962163951494

namespace A275779

/-- `∑{d}[2^(n+1), #^(n+1)]-1` -/
def P17490526962163951494.Spec : Prop :=
  ∀ n, P17490526962163951494.a n = A275779 (n + 1)

end A275779

/-! ## A275779.P227278664034787422

`2^(n+1)*∑{d}[2^n, #^(n+1)]`
-/

namespace A275779.P227278664034787422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * (∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1))

end

end A275779.P227278664034787422

namespace A275779

/-- `2^(n+1)*∑{d}[2^n, #^(n+1)]` -/
def P227278664034787422.Spec : Prop :=
  ∀ n, (P227278664034787422.a n : ℤ) = A275779 (n + 1)

end A275779

/-! ## A275779.P17999455741046879307

`∑[abs(Δ[A344260(n)])]`
-/

namespace A275779.P17999455741046879307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275779.P17999455741046879307

namespace A275779

/-- `∑[abs(Δ[A344260(n)])]` -/
def P17999455741046879307.Spec : Prop :=
  ∀ n, P17999455741046879307.a n = A275779 (n + 1)

end A275779

/-! ## A275779.P16315977786301494528

`A344260(n+1)-1`
-/

namespace A275779.P16315977786301494528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344260 (n + 1) - 1

end

end A275779.P16315977786301494528

namespace A275779

/-- `A344260(n+1)-1` -/
def P16315977786301494528.Spec : Prop :=
  ∀ n, P16315977786301494528.a n = A275779 (n + 1)

end A275779

/-!
# A275780: Number of set partitions of [n] into blocks with distinct element sums.

The programs for A275780, there is no canonical definition to state claims against.
-/

/-! ## A275780.P15451679361734262533

`A000110(n)-A275781(n)`
-/

namespace A275780.P15451679361734262533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A275781 n

end

end A275780.P15451679361734262533

/-! ## A275780.P5755027515301773251

`abs(A292935(n))-A275781(n)`
-/

namespace A275780.P5755027515301773251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A275781 n

end

end A275780.P5755027515301773251

/-! ## A275780.P5147721192688405522

`A011971(∑[n])-A275781(n)`
-/

namespace A275780.P5147721192688405522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A275781 n

end

end A275780.P5147721192688405522

/-! ## A275780.P2494772350631455612

`A033306(∑[n])-A275781(n)`
-/

namespace A275780.P2494772350631455612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 (∑ j ∈ Finset.range (n + 1), f1 j) - A275781 n

end

end A275780.P2494772350631455612

/-! ## A275780.P11955066838690152166

`A049020(∑[n])-A275781(n)`
-/

namespace A275780.P11955066838690152166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (∑ j ∈ Finset.range (n + 1), f1 j) - A275781 n

end

end A275780.P11955066838690152166

/-!
# A275781: Number of set partitions of [n] having at least two blocks with equal element sums.

The programs for A275781, there is no canonical definition to state claims against.
-/

/-! ## A275781.P10309334186769084089

`A000110(n)-A275780(n)`
-/

namespace A275781.P10309334186769084089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A275780 n

end

end A275781.P10309334186769084089

/-! ## A275781.P12523700269400460372

`abs(A292935(n))-A275780(n)`
-/

namespace A275781.P12523700269400460372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A275780 n

end

end A275781.P12523700269400460372

/-! ## A275781.P13587919679822514702

`A011971(∑[n])-A275780(n)`
-/

namespace A275781.P13587919679822514702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A275780 n

end

end A275781.P13587919679822514702

/-! ## A275781.P10341863729372590711

`A049020(∑[n])-A275780(n)`
-/

namespace A275781.P10341863729372590711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (∑ j ∈ Finset.range (n + 1), f1 j) - A275780 n

end

end A275781.P10341863729372590711

/-! ## A275781.P17670995735683263472

`A095149(∑[n])-A275780(n)`
-/

namespace A275781.P17670995735683263472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A275780 n

end

end A275781.P17670995735683263472

/-!
# A275782: a(n) = smallest k such that the digits of exactly n nonnegative numbers are a subsequence of the digits of k.

The programs for A275782, there is no canonical definition to state claims against.
-/

/-! ## A275782.P16272117524144127213

`A266946(n+1)+A121373(A006126(n))`
-/

namespace A275782.P16272117524144127213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1) + A121373 (A006126 n).toNat

end

end A275782.P16272117524144127213

/-! ## A275782.P4507209884896663838

`A081551(n+1)-A008683(A030539(n))`
-/

namespace A275782.P4507209884896663838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081551 (n + 1) - A008683 (A030539 n).toNat

end

end A275782.P4507209884896663838

/-!
# A275784: Number A(n,k) of up-down sequences with k copies each of 1,2,...,n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A275784, there is no canonical definition to state claims against.
-/

/-! ## A275784.P2363244621681405003

`A257232(A257253(n+1)%A056993(n))`
-/

namespace A275784.P2363244621681405003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257232 (Int.tmod (A257253 (n + 1)) (A056993 n)).toNat

end

end A275784.P2363244621681405003

/-! ## A275784.P6416466162038345366

`A257992(xor(1, A316622(n)+1))`
-/

namespace A275784.P6416466162038345366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (Int.xor 1 (A316622 n + 1)).toNat

end

end A275784.P6416466162038345366

/-! ## A275784.P1904431943229921525

`A359901(A099509(n)^A362871(n))`
-/

namespace A275784.P1904431943229921525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359901 (SequenceMachineLib.roundAway ((A099509 n : ℚ) ^ (A362871 n : ℤ))).toNat

end

end A275784.P1904431943229921525

/-! ## A275784.P11333643541037605689

`A345164(A172363(n)*A237753(n+5))`
-/

namespace A275784.P11333643541037605689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (A172363 n * A237753 (n + 5)).toNat

end

end A275784.P11333643541037605689

/-! ## A275784.P5547588710384539541

`A000030(A266854(n+1)^A108335(n))`
-/

namespace A275784.P5547588710384539541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A266854 (n + 1) : ℚ) ^ (A108335 n : ℤ))).toNat

end

end A275784.P5547588710384539541

/-!
# A275786: a(n) = Product_{d|n} T(d) where T(x) = x*(x+1)/2 = A000217(x) = x-th triangular number.

The programs for A275786, the canonical program `A275786.P3207911160864645398` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275786 has offset 1).

The definition of A275786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275786.P3207911160864645398

`∏{d}[n+1, C(#+1, 2)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275786

/-- `∏{d}[n+1, C(#+1, 2)]` -/
def P3207911160864645398.Spec : Prop :=
  ∀ n, (P3207911160864645398.a n : ℤ) = A275786 (n + 1)

theorem P3207911160864645398.correct : P3207911160864645398.Spec := by
  intro n
  simp only [A275786, Nat.add_sub_cancel]

end A275786

/-! ## A275786.P740463107922229023

`∏{d}[n+1, (#²+#)/2]`
-/

namespace A275786.P740463107922229023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d ^ 2 + d : ℚ) / 2

end

end A275786.P740463107922229023

namespace A275786

/-- `∏{d}[n+1, (#²+#)/2]` -/
def P740463107922229023.Spec : Prop :=
  ∀ n, P740463107922229023.a n = (A275786 (n + 1) : ℚ)

end A275786

/-! ## A275786.P15767236944977323479

`floor(∏{d}[n+1, (n+1+#)/2])`
-/

namespace A275786.P15767236944977323479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ d ∈ Nat.divisors (f1 n), (n + 1 + d : ℚ) / 2⌋

end

end A275786.P15767236944977323479

namespace A275786

/-- `floor(∏{d}[n+1, (n+1+#)/2])` -/
def P15767236944977323479.Spec : Prop :=
  ∀ n, P15767236944977323479.a n = A275786 (n + 1)

end A275786

/-! ## A275786.P10666798832164410546

`ceil(∏{d}[n+1, (n+1+#)/2])`
-/

namespace A275786.P10666798832164410546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ d ∈ Nat.divisors (f1 n), (n + 1 + d : ℚ) / 2⌉

end

end A275786.P10666798832164410546

namespace A275786

/-- `ceil(∏{d}[n+1, (n+1+#)/2])` -/
def P10666798832164410546.Spec : Prop :=
  ∀ n, P10666798832164410546.a n = A275786 (n + 1)

end A275786

/-! ## A275786.P2356452052975503525

`round(∏{d}[n+1, (n+1+#)/2])`
-/

namespace A275786.P2356452052975503525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ d ∈ Nat.divisors (f1 n), (n + 1 + d : ℚ) / 2)

end

end A275786.P2356452052975503525

namespace A275786

/-- `round(∏{d}[n+1, (n+1+#)/2])` -/
def P2356452052975503525.Spec : Prop :=
  ∀ n, P2356452052975503525.a n = A275786 (n + 1)

end A275786

/-! ## A275786.P10899010761010579745

`∏{d}[n+1, A000217(#)]^A057428(n)²`
-/

namespace A275786.P10899010761010579745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A000217 d : ℤ) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A275786.P10899010761010579745

namespace A275786

/-- `∏{d}[n+1, A000217(#)]^A057428(n)²` -/
def P10899010761010579745.Spec : Prop :=
  ∀ n, P10899010761010579745.a n = (A275786 (n + 1) : ℚ)

end A275786

/-! ## A275786.P8017575465855232398

`A000122(5*n+3)+∏{d}[n+1, A000217(#)]`
-/

namespace A275786.P8017575465855232398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (5 * n + 3) + ∏ d ∈ Nat.divisors (f1 n), A000217 d

end

end A275786.P8017575465855232398

namespace A275786

/-- `A000122(5*n+3)+∏{d}[n+1, A000217(#)]` -/
def P8017575465855232398.Spec : Prop :=
  ∀ n, P8017575465855232398.a n = A275786 (n + 1)

end A275786

/-! ## A275786.P10789169540250410466

`A001222(A275011(n+1))*∏{d}[n+1, A000217(#)]`
-/

namespace A275786.P10789169540250410466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275011 (n + 1)).toNat * (∏ d ∈ Nat.divisors (f1 n), A000217 d)

end

end A275786.P10789169540250410466

namespace A275786

/-- `A001222(A275011(n+1))*∏{d}[n+1, A000217(#)]` -/
def P10789169540250410466.Spec : Prop :=
  ∀ n, P10789169540250410466.a n = A275786 (n + 1)

end A275786

/-! ## A275786.P12791447711797906794

`sqrt(∏{d}[n+1, A000537(#)])`
-/

namespace A275786.P12791447711797906794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ d ∈ Nat.divisors (f1 n), A000537 d : ℤ) : ℝ)

end

end A275786.P12791447711797906794

namespace A275786

/-- `sqrt(∏{d}[n+1, A000537(#)])` -/
def P12791447711797906794.Spec : Prop :=
  ∀ n, P12791447711797906794.a n = (A275786 (n + 1) : ℝ)

end A275786

/-!
# A275788: a(0) = 0, a(n+1) = 2*a(n) + (-1)^floor(n/3).

The programs for A275788, the canonical program `A275788.P1294712123694769410` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275788 has offset 0).

The definition of A275788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275788.P1294712123694769410

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275788

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P1294712123694769410.Spec : Prop :=
  ∀ n, P1294712123694769410.a n = A275788 n

theorem P1294712123694769410.correct : P1294712123694769410.Spec := by
  intro n
  simp only [A275788]

end A275788

/-! ## A275788.P15090154494558564083

`ogf((x+x^2+x^3)/(1-2x+x^3-2x^4))`
-/

namespace A275788.P15090154494558564083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -2, 0, 1, -2] n

end

end A275788.P15090154494558564083

namespace A275788

/-- `ogf((x+x^2+x^3)/(1-2x+x^3-2x^4))` -/
def P15090154494558564083.Spec : Prop :=
  ∀ n, P15090154494558564083.a n = A275788 n

end A275788

/-! ## A275788.P10531016795691483137

`2^n-A132780(n)`
-/

namespace A275788.P10531016795691483137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A132780 n

end

end A275788.P10531016795691483137

namespace A275788

/-- `2^n-A132780(n)` -/
def P10531016795691483137.Spec : Prop :=
  ∀ n, P10531016795691483137.a n = A275788 n

end A275788

/-! ## A275788.P8391496949767026455

`A135350(n)-A113405(n)`
-/

namespace A275788.P8391496949767026455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135350 n - A113405 n

end

end A275788.P8391496949767026455

namespace A275788

/-- `A135350(n)-A113405(n)` -/
def P8391496949767026455.Spec : Prop :=
  ∀ n, P8391496949767026455.a n = A275788 n

end A275788

/-! ## A275788.P957608130236377370

`A113405(n)+∑[A131708(n)]`
-/

namespace A275788.P957608130236377370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275788.P957608130236377370

namespace A275788

/-- `A113405(n)+∑[A131708(n)]` -/
def P957608130236377370.Spec : Prop :=
  ∀ n, P957608130236377370.a n = A275788 n

end A275788

/-! ## A275788.P5667088000991632296

`A113405(n)+A024495(n+1)`
-/

namespace A275788.P5667088000991632296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + A024495 (n + 1)

end

end A275788.P5667088000991632296

namespace A275788

/-- `A113405(n)+A024495(n+1)` -/
def P5667088000991632296.Spec : Prop :=
  ∀ n, P5667088000991632296.a n = A275788 n

end A275788

/-! ## A275788.P5262288005102577405

`A153234(n+3)-A153234(n)`
-/

namespace A275788.P5262288005102577405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (n + 3) - A153234 n

end

end A275788.P5262288005102577405

namespace A275788

/-- `A153234(n+3)-A153234(n)` -/
def P5262288005102577405.Spec : Prop :=
  ∀ n, P5262288005102577405.a n = A275788 n

end A275788

/-! ## A275788.P8372954850592817699

`A000225(n)-2*A153234(n)`
-/

namespace A275788.P8372954850592817699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - 2 * A153234 n

end

end A275788.P8372954850592817699

namespace A275788

/-- `A000225(n)-2*A153234(n)` -/
def P8372954850592817699.Spec : Prop :=
  ∀ n, P8372954850592817699.a n = A275788 n

end A275788

/-! ## A275788.P9083205115256648979

`A113405(n+2)+Δ[A024493(n)]`
-/

namespace A275788.P9083205115256648979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 2) + (f1 (n + 1) - f1 n)

end

end A275788.P9083205115256648979

namespace A275788

/-- `A113405(n+2)+Δ[A024493(n)]` -/
def P9083205115256648979.Spec : Prop :=
  ∀ n, P9083205115256648979.a n = A275788 n

end A275788

/-! ## A275788.P7560594637436866485

`2^n-(A024493(n)-A113405(n))`
-/

namespace A275788.P7560594637436866485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A024493 n - A113405 n)

end

end A275788.P7560594637436866485

namespace A275788

/-- `2^n-(A024493(n)-A113405(n))` -/
def P7560594637436866485.Spec : Prop :=
  ∀ n, P7560594637436866485.a n = A275788 n

end A275788

/-! ## A275788.P6821780445991715409

`A001045(n)+A131666(n)+A024495(n)`
-/

namespace A275788.P6821780445991715409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A131666 n + A024495 n)

end

end A275788.P6821780445991715409

namespace A275788

/-- `A001045(n)+A131666(n)+A024495(n)` -/
def P6821780445991715409.Spec : Prop :=
  ∀ n, P6821780445991715409.a n = A275788 n

end A275788

/-! ## A275788.P10606790841808716681

`A000225(n)+A113405(n)-A111927(n)`
-/

namespace A275788.P10606790841808716681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A113405 n - A111927 n)

end

end A275788.P10606790841808716681

namespace A275788

/-- `A000225(n)+A113405(n)-A111927(n)` -/
def P10606790841808716681.Spec : Prop :=
  ∀ n, P10606790841808716681.a n = A275788 n

end A275788

/-! ## A275788.P11927481847812474235

`A001045(n+1)+A001045(n)-A132780(n)`
-/

namespace A275788.P11927481847812474235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A132780 n)

end

end A275788.P11927481847812474235

namespace A275788

/-- `A001045(n+1)+A001045(n)-A132780(n)` -/
def P11927481847812474235.Spec : Prop :=
  ∀ n, P11927481847812474235.a n = A275788 n

end A275788

/-! ## A275788.P6993761509186385116

`A001045(n+1)+A140428(n)-A141325(n)`
-/

namespace A275788.P6993761509186385116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A140428 n - A141325 n)

end

end A275788.P6993761509186385116

namespace A275788

/-- `A001045(n+1)+A140428(n)-A141325(n)` -/
def P6993761509186385116.Spec : Prop :=
  ∀ n, P6993761509186385116.a n = A275788 n

end A275788

/-! ## A275788.P17463545707938494232

`A113405(n)+∑[A131666(n)+A131666(n+1)]`
-/

namespace A275788.P17463545707938494232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + A131666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275788.P17463545707938494232

namespace A275788

/-- `A113405(n)+∑[A131666(n)+A131666(n+1)]` -/
def P17463545707938494232.Spec : Prop :=
  ∀ n, P17463545707938494232.a n = A275788 n

end A275788

/-! ## A275788.P7077515861586973283

`A113405(n+1)+A113405(n+1)+A001045(n)`
-/

namespace A275788.P7077515861586973283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1) + (A113405 (n + 1) + A001045 n)

end

end A275788.P7077515861586973283

namespace A275788

/-- `A113405(n+1)+A113405(n+1)+A001045(n)` -/
def P7077515861586973283.Spec : Prop :=
  ∀ n, P7077515861586973283.a n = A275788 n

end A275788

/-! ## A275788.P109290480280994092

`A024495(n+1)+A133511(n)+A131531(n+1)`
-/

namespace A275788.P109290480280994092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) + (A133511 n + A131531 (n + 1))

end

end A275788.P109290480280994092

namespace A275788

/-- `A024495(n+1)+A133511(n)+A131531(n+1)` -/
def P109290480280994092.Spec : Prop :=
  ∀ n, P109290480280994092.a n = A275788 n

end A275788

/-! ## A275788.P17306617302146139638

`A113405(n+1)+A328881(n+1)+A242563(n)`
-/

namespace A275788.P17306617302146139638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1) + (A328881 (n + 1) + A242563 n)

end

end A275788.P17306617302146139638

namespace A275788

/-- `A113405(n+1)+A328881(n+1)+A242563(n)` -/
def P17306617302146139638.Spec : Prop :=
  ∀ n, P17306617302146139638.a n = A275788 n

end A275788

/-! ## A275788.P15929564319624187982

`A001045(n+1)+A024495(n)-A131090(n+1)`
-/

namespace A275788.P15929564319624187982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A024495 n - A131090 (n + 1))

end

end A275788.P15929564319624187982

namespace A275788

/-- `A001045(n+1)+A024495(n)-A131090(n+1)` -/
def P15929564319624187982.Spec : Prop :=
  ∀ n, P15929564319624187982.a n = A275788 n

end A275788

/-! ## A275788.P2850379675370106907

`A140428(n+1)+A001045(n)-A140096(n+1)`
-/

namespace A275788.P2850379675370106907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140428 (n + 1) + (A001045 n - A140096 (n + 1))

end

end A275788.P2850379675370106907

namespace A275788

/-- `A140428(n+1)+A001045(n)-A140096(n+1)` -/
def P2850379675370106907.Spec : Prop :=
  ∀ n, P2850379675370106907.a n = A275788 n

end A275788

/-!
# A275789: Least k such that sigma(n) divides Fibonacci(k) (k > 0).

The programs for A275789, there is no canonical definition to state claims against.
-/

/-! ## A275789.P1978524079583274844

`A001177(A000203(n+1))`
-/

namespace A275789.P1978524079583274844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A000203 (n + 1)).toNat

end

end A275789.P1978524079583274844

/-! ## A275789.P11054875781520528118

`A001177(∑{d}[n+1, #])`
-/

namespace A275789.P11054875781520528118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A275789.P11054875781520528118

/-! ## A275789.P15941582954989180353

`A001177(A039653(n+1)+1)`
-/

namespace A275789.P15941582954989180353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A039653 (n + 1) + 1).toNat

end

end A275789.P15941582954989180353

/-! ## A275789.P3524154479633288412

`A001177(A001065(n+1)+1+n)`
-/

namespace A275789.P3524154479633288412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A275789.P3524154479633288412

/-! ## A275789.P2566061023924112296

`A001177(2*(n+1)-A033879(n+1))`
-/

namespace A275789.P2566061023924112296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A275789.P2566061023924112296

/-!
# A275793: The x members of the positive proper solutions (x = x1(n), y = y1(n)) of the first class for the Pell equation x^2 - 2*y^2 = +7^2.

The programs for A275793, the canonical program `A275793.P5134178716369053600` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275793 has offset 0).

The definition of A275793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275793.P5134178716369053600

`6*a(n-1)-a(n-2)` with `a(0)=9, a(1)=43`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275793

/-- `6*a(n-1)-a(n-2)` -/
def P5134178716369053600.Spec : Prop :=
  ∀ n, P5134178716369053600.a n = A275793 n

theorem P5134178716369053600.correct : P5134178716369053600.Spec := by
  intro n
  simp only [A275793]

end A275793

/-! ## A275793.P5605942706950944045

`9*A000129(2*n+1)-A000129(2*n)`
-/

namespace A275793.P5605942706950944045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000129 (2 * n + 1) - A000129 (2 * n)

end

end A275793.P5605942706950944045

namespace A275793

/-- `9*A000129(2*n+1)-A000129(2*n)` -/
def P5605942706950944045.Spec : Prop :=
  ∀ n, P5605942706950944045.a n = A275793 n

end A275793

/-! ## A275793.P13576642415392587556

`ogf((9-11x)/(1-6x+x^2))`
-/

namespace A275793.P13576642415392587556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -11] [1, -6, 1] n

end

end A275793.P13576642415392587556

namespace A275793

/-- `ogf((9-11x)/(1-6x+x^2))` -/
def P13576642415392587556.Spec : Prop :=
  ∀ n, P13576642415392587556.a n = A275793 n

end A275793

/-! ## A275793.P99554645340893452

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=9, a(1)=1, a(2)=9`
-/

namespace A275793.P99554645340893452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 1, 9] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275793.P99554645340893452

namespace A275793

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P99554645340893452.Spec : Prop :=
  ∀ n, P99554645340893452.a n = A275793 n

end A275793

/-! ## A275793.P9924188419160463395

`A106525(3*n+1)`
-/

namespace A275793.P9924188419160463395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106525 (3 * n + 1)

end

end A275793.P9924188419160463395

namespace A275793

/-- `A106525(3*n+1)` -/
def P9924188419160463395.Spec : Prop :=
  ∀ n, P9924188419160463395.a n = A275793 n

end A275793

/-! ## A275793.P522066780512430422

`A077239(n)+A003499(n)`
-/

namespace A275793.P522066780512430422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077239 n + A003499 n

end

end A275793.P522066780512430422

namespace A275793

/-- `A077239(n)+A003499(n)` -/
def P522066780512430422.Spec : Prop :=
  ∀ n, P522066780512430422.a n = A275793 n

end A275793

/-! ## A275793.P13868529682863552388

`Δ[A054490(n)]-A054490(n)`
-/

namespace A275793.P13868529682863552388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054490 n

end

end A275793.P13868529682863552388

namespace A275793

/-- `Δ[A054490(n)]-A054490(n)` -/
def P13868529682863552388.Spec : Prop :=
  ∀ n, P13868529682863552388.a n = A275793 n

end A275793

/-! ## A275793.P5281627747675076090

`A275795(n)-Δ[A001541(n)]`
-/

namespace A275793.P5281627747675076090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275795 n - (f1 (n + 1) - f1 n)

end

end A275793.P5281627747675076090

namespace A275793

/-- `A275795(n)-Δ[A001541(n)]` -/
def P5281627747675076090.Spec : Prop :=
  ∀ n, P5281627747675076090.a n = A275793 n

end A275793

/-! ## A275793.P11861450595602669118

`A077239(n)+2*A001541(n)`
-/

namespace A275793.P11861450595602669118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077239 n + 2 * A001541 n

end

end A275793.P11861450595602669118

namespace A275793

/-- `A077239(n)+2*A001541(n)` -/
def P11861450595602669118.Spec : Prop :=
  ∀ n, P11861450595602669118.a n = A275793 n

end A275793

/-! ## A275793.P13109607628864095291

`A077239(n)+A002203(2*n)`
-/

namespace A275793.P13109607628864095291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077239 n + A002203 (2 * n)

end

end A275793.P13109607628864095291

namespace A275793

/-- `A077239(n)+A002203(2*n)` -/
def P13109607628864095291.Spec : Prop :=
  ∀ n, P13109607628864095291.a n = A275793 n

end A275793

/-! ## A275793.P5678821397678076165

`A101386(n)+2*A266507(n)`
-/

namespace A275793.P5678821397678076165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101386 n + 2 * A266507 n

end

end A275793.P5678821397678076165

namespace A275793

/-- `A101386(n)+2*A266507(n)` -/
def P5678821397678076165.Spec : Prop :=
  ∀ n, P5678821397678076165.a n = A275793 n

end A275793

/-! ## A275793.P17081857711774342728

`2*A077240(n)-A001541(n)`
-/

namespace A275793.P17081857711774342728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077240 n - A001541 n

end

end A275793.P17081857711774342728

namespace A275793

/-- `2*A077240(n)-A001541(n)` -/
def P17081857711774342728.Spec : Prop :=
  ∀ n, P17081857711774342728.a n = A275793 n

end A275793

/-! ## A275793.P9043876624801670979

`A275795(n)-2*A002315(n)`
-/

namespace A275793.P9043876624801670979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275795 n - 2 * A002315 n

end

end A275793.P9043876624801670979

namespace A275793

/-- `A275795(n)-2*A002315(n)` -/
def P9043876624801670979.Spec : Prop :=
  ∀ n, P9043876624801670979.a n = A275793 n

end A275793

/-! ## A275793.P6698783732185786758

`Δ[Δ[A210695(n)]-A210695(n)]`
-/

namespace A275793.P6698783732185786758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A210695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275793.P6698783732185786758

namespace A275793

/-- `Δ[Δ[A210695(n)]-A210695(n)]` -/
def P6698783732185786758.Spec : Prop :=
  ∀ n, P6698783732185786758.a n = A275793 n

end A275793

/-! ## A275793.P3828349713357579193

`A001541(n)+Δ[2*A005319(n)]`
-/

namespace A275793.P3828349713357579193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (f1 (n + 1) - f1 n)

end

end A275793.P3828349713357579193

namespace A275793

/-- `A001541(n)+Δ[2*A005319(n)]` -/
def P3828349713357579193.Spec : Prop :=
  ∀ n, P3828349713357579193.a n = A275793 n

end A275793

/-! ## A275793.P9472825146216630281

`Δ[A275794(n)]-2*A275794(n)`
-/

namespace A275793.P9472825146216630281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A275794 n

end

end A275793.P9472825146216630281

namespace A275793

/-- `Δ[A275794(n)]-2*A275794(n)` -/
def P9472825146216630281.Spec : Prop :=
  ∀ n, P9472825146216630281.a n = A275793 n

end A275793

/-! ## A275793.P17721481515951631849

`A106329(n+1)+A003499(n+1)`
-/

namespace A275793.P17721481515951631849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106329 (n + 1) + A003499 (n + 1)

end

end A275793.P17721481515951631849

namespace A275793

/-- `A106329(n+1)+A003499(n+1)` -/
def P17721481515951631849.Spec : Prop :=
  ∀ n, P17721481515951631849.a n = A275793 n

end A275793

/-! ## A275793.P11392435776812724105

`A001541(n+1)+2*A038762(n)`
-/

namespace A275793.P11392435776812724105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) + 2 * A038762 n

end

end A275793.P11392435776812724105

namespace A275793

/-- `A001541(n+1)+2*A038762(n)` -/
def P11392435776812724105.Spec : Prop :=
  ∀ n, P11392435776812724105.a n = A275793 n

end A275793

/-! ## A275793.P16232434744803814055

`A001541(n)+2*A077445(n+1)`
-/

namespace A275793.P16232434744803814055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + 2 * A077445 (n + 1)

end

end A275793.P16232434744803814055

namespace A275793

/-- `A001541(n)+2*A077445(n+1)` -/
def P16232434744803814055.Spec : Prop :=
  ∀ n, P16232434744803814055.a n = A275793 n

end A275793

/-! ## A275793.P5466959387521490955

`A003499(n+1)+3*A001541(n)`
-/

namespace A275793.P5466959387521490955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 (n + 1) + 3 * A001541 n

end

end A275793.P5466959387521490955

namespace A275793

/-- `A003499(n+1)+3*A001541(n)` -/
def P5466959387521490955.Spec : Prop :=
  ∀ n, P5466959387521490955.a n = A275793 n

end A275793

/-!
# A275794: One half of the y members of the positive proper solutions (x = x1(n), y = y1(n)) of the first class for the Pell equation x^2 - 2*y^2 = +7^2.

The programs for A275794, the canonical program `A275794.P3495013120308704863` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275794 has offset 0).

The definition of A275794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275794.P3495013120308704863

`6*a(n-1)-a(n-2)` with `a(0)=2, a(1)=15`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275794

/-- `6*a(n-1)-a(n-2)` -/
def P3495013120308704863.Spec : Prop :=
  ∀ n, P3495013120308704863.a n = A275794 n

theorem P3495013120308704863.correct : P3495013120308704863.Spec := by
  intro n
  simp only [A275794]

end A275794

/-! ## A275794.P7704591796579382065

`ogf((2+3x)/(1-6x+x^2))`
-/

namespace A275794.P7704591796579382065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -6, 1] n

end

end A275794.P7704591796579382065

namespace A275794

/-- `ogf((2+3x)/(1-6x+x^2))` -/
def P7704591796579382065.Spec : Prop :=
  ∀ n, P7704591796579382065.a n = A275794 n

end A275794

/-! ## A275794.P10097295204335154902

`A276600(3*n+2)`
-/

namespace A275794.P10097295204335154902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (3 * n + 2)

end

end A275794.P10097295204335154902

namespace A275794

/-- `A276600(3*n+2)` -/
def P10097295204335154902.Spec : Prop :=
  ∀ n, P10097295204335154902.a n = A275794 n

end A275794

/-! ## A275794.P4457234049433173694

`A220414(n)+a(n-1)` with `a(0)=2`
-/

namespace A275794.P4457234049433173694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A220414 n + a (n - 1)

end

end A275794.P4457234049433173694

namespace A275794

/-- `A220414(n)+a(n-1)` -/
def P4457234049433173694.Spec : Prop :=
  ∀ n, P4457234049433173694.a n = A275794 n

end A275794

/-! ## A275794.P17577271376279807895

`A054488(n)+A002315(n)`
-/

namespace A275794.P17577271376279807895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + A002315 n

end

end A275794.P17577271376279807895

namespace A275794

/-- `A054488(n)+A002315(n)` -/
def P17577271376279807895.Spec : Prop :=
  ∀ n, P17577271376279807895.a n = A275794 n

end A275794

/-! ## A275794.P9174066266880665139

`A077413(n)+A001542(n)`
-/

namespace A275794.P9174066266880665139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n + A001542 n

end

end A275794.P9174066266880665139

namespace A275794

/-- `A077413(n)+A001542(n)` -/
def P9174066266880665139.Spec : Prop :=
  ∀ n, P9174066266880665139.a n = A275794 n

end A275794

/-! ## A275794.P3254879612351722345

`A054490(n)+A038723(n)`
-/

namespace A275794.P3254879612351722345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n + A038723 n

end

end A275794.P3254879612351722345

namespace A275794

/-- `A054490(n)+A038723(n)` -/
def P3254879612351722345.Spec : Prop :=
  ∀ n, P3254879612351722345.a n = A275794 n

end A275794

/-! ## A275794.P6109500834287412051

`A001109(n)+Δ[A001541(n)]`
-/

namespace A275794.P6109500834287412051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + (f1 (n + 1) - f1 n)

end

end A275794.P6109500834287412051

namespace A275794

/-- `A001109(n)+Δ[A001541(n)]` -/
def P6109500834287412051.Spec : Prop :=
  ∀ n, P6109500834287412051.a n = A275794 n

end A275794

/-! ## A275794.P14898236087187979140

`A054489(n)+Δ[A001109(n)]`
-/

namespace A275794.P14898236087187979140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n + (f1 (n + 1) - f1 n)

end

end A275794.P14898236087187979140

namespace A275794

/-- `A054489(n)+Δ[A001109(n)]` -/
def P14898236087187979140.Spec : Prop :=
  ∀ n, P14898236087187979140.a n = A275794 n

end A275794

/-! ## A275794.P13059902019505084928

`A038761(n)+A001109(n+1)`
-/

namespace A275794.P13059902019505084928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n + A001109 (n + 1)

end

end A275794.P13059902019505084928

namespace A275794

/-- `A038761(n)+A001109(n+1)` -/
def P13059902019505084928.Spec : Prop :=
  ∀ n, P13059902019505084928.a n = A275794 n

end A275794

/-! ## A275794.P911666666294101895

`A054489(n)+A001653(n+1)`
-/

namespace A275794.P911666666294101895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n + A001653 (n + 1)

end

end A275794.P911666666294101895

namespace A275794

/-- `A054489(n)+A001653(n+1)` -/
def P911666666294101895.Spec : Prop :=
  ∀ n, P911666666294101895.a n = A275794 n

end A275794

/-! ## A275794.P15117938457831028433

`A077444(n+1)+A001109(n)`
-/

namespace A275794.P15117938457831028433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (n + 1) + A001109 n

end

end A275794.P15117938457831028433

namespace A275794

/-- `A077444(n+1)+A001109(n)` -/
def P15117938457831028433.Spec : Prop :=
  ∀ n, P15117938457831028433.a n = A275794 n

end A275794

/-! ## A275794.P13901778734906311642

`A182435(n)+A053141(n+1)`
-/

namespace A275794.P13901778734906311642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 n + A053141 (n + 1)

end

end A275794.P13901778734906311642

namespace A275794

/-- `A182435(n)+A053141(n+1)` -/
def P13901778734906311642.Spec : Prop :=
  ∀ n, P13901778734906311642.a n = A275794 n

end A275794

/-! ## A275794.P9431561963959910225

`A054489(n)+A182190(n)+1`
-/

namespace A275794.P9431561963959910225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n + (A182190 n + 1)

end

end A275794.P9431561963959910225

namespace A275794

/-- `A054489(n)+A182190(n)+1` -/
def P9431561963959910225.Spec : Prop :=
  ∀ n, P9431561963959910225.a n = A275794 n

end A275794

/-! ## A275794.P11688302885212394171

`A001541(n+1)-A038725(n)`
-/

namespace A275794.P11688302885212394171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) - A038725 n

end

end A275794.P11688302885212394171

namespace A275794

/-- `A001541(n+1)-A038725(n)` -/
def P11688302885212394171.Spec : Prop :=
  ∀ n, P11688302885212394171.a n = A275794 n

end A275794

/-! ## A275794.P16901395957725593081

`A077413(n)+A182189(n)-1`
-/

namespace A275794.P16901395957725593081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n + (A182189 n - 1)

end

end A275794.P16901395957725593081

namespace A275794

/-- `A077413(n)+A182189(n)-1` -/
def P16901395957725593081.Spec : Prop :=
  ∀ n, P16901395957725593081.a n = A275794 n

end A275794

/-! ## A275794.P6999137617214555416

`A048655(n)*A078343(n+1)`
-/

namespace A275794.P6999137617214555416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n * A078343 (n + 1)

end

end A275794.P6999137617214555416

namespace A275794

/-- `A048655(n)*A078343(n+1)` -/
def P6999137617214555416.Spec : Prop :=
  ∀ n, P6999137617214555416.a n = A275794 n

end A275794

/-! ## A275794.P326109636117361964

`A001109(n)+2*A002315(n)`
-/

namespace A275794.P326109636117361964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + 2 * A002315 n

end

end A275794.P326109636117361964

namespace A275794

/-- `A001109(n)+2*A002315(n)` -/
def P326109636117361964.Spec : Prop :=
  ∀ n, P326109636117361964.a n = A275794 n

end A275794

/-! ## A275794.P10878707773135660478

`A077413(n)+A000129(2*n)`
-/

namespace A275794.P10878707773135660478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n + A000129 (2 * n)

end

end A275794.P10878707773135660478

namespace A275794

/-- `A077413(n)+A000129(2*n)` -/
def P10878707773135660478.Spec : Prop :=
  ∀ n, P10878707773135660478.a n = A275794 n

end A275794

/-! ## A275794.P8076374237569361058

`A077413(n)+2*A001109(n)`
-/

namespace A275794.P8076374237569361058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n + 2 * A001109 n

end

end A275794.P8076374237569361058

namespace A275794

/-- `A077413(n)+2*A001109(n)` -/
def P8076374237569361058.Spec : Prop :=
  ∀ n, P8076374237569361058.a n = A275794 n

end A275794

/-!
# A275795: The x members of the positive proper solutions (x = x2(n), y = y2(n)) of the second class for the Pell equation x^2 - 2*y^2 = +7^2.

The programs for A275795, the canonical program `A275795.P8308298548737595823` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275795 has offset 0).

The definition of A275795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275795.P8308298548737595823

`6*a(n-1)-a(n-2)` with `a(0)=11, a(1)=57`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275795

/-- `6*a(n-1)-a(n-2)` -/
def P8308298548737595823.Spec : Prop :=
  ∀ n, P8308298548737595823.a n = A275795 n

theorem P8308298548737595823.correct : P8308298548737595823.Spec := by
  intro n
  simp only [A275795]

end A275795

/-! ## A275795.P4278910052854630606

`ogf((11-9x)/(1-6x+x^2))`
-/

namespace A275795.P4278910052854630606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -9] [1, -6, 1] n

end

end A275795.P4278910052854630606

namespace A275795

/-- `ogf((11-9x)/(1-6x+x^2))` -/
def P4278910052854630606.Spec : Prop :=
  ∀ n, P4278910052854630606.a n = A275795 n

end A275795

/-! ## A275795.P1602600829244062512

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=11, a(1)=9, a(2)=-1`
-/

namespace A275795.P1602600829244062512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11, 9, -1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275795.P1602600829244062512

namespace A275795

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P1602600829244062512.Spec : Prop :=
  ∀ n, P1602600829244062512.a n = A275795 n

end A275795

/-! ## A275795.P4040389622089036682

`Δ[A076295(3*n)]`
-/

namespace A275795.P4040389622089036682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076295 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275795.P4040389622089036682

namespace A275795

/-- `Δ[A076295(3*n)]` -/
def P4040389622089036682.Spec : Prop :=
  ∀ n, P4040389622089036682.a n = A275795 n

end A275795

/-! ## A275795.P883200855245410333

`Δ[A076296(3*n)]`
-/

namespace A275795.P883200855245410333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275795.P883200855245410333

namespace A275795

/-- `Δ[A076296(3*n)]` -/
def P883200855245410333.Spec : Prop :=
  ∀ n, P883200855245410333.a n = A275795 n

end A275795

/-! ## A275795.P17512251971469220091

`A106525(3*n+2)`
-/

namespace A275795.P17512251971469220091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106525 (3 * n + 2)

end

end A275795.P17512251971469220091

namespace A275795

/-- `A106525(3*n+2)` -/
def P17512251971469220091.Spec : Prop :=
  ∀ n, P17512251971469220091.a n = A275795 n

end A275795

/-! ## A275795.P4229129912614972786

`A275155(n+1)-7`
-/

namespace A275795.P4229129912614972786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275155 (n + 1) - 7

end

end A275795.P4229129912614972786

namespace A275795

/-- `A275155(n+1)-7` -/
def P4229129912614972786.Spec : Prop :=
  ∀ n, P4229129912614972786.a n = A275795 n

end A275795

/-! ## A275795.P3857470362940339809

`A001541(n)+Δ[A054490(n)]`
-/

namespace A275795.P3857470362940339809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (f1 (n + 1) - f1 n)

end

end A275795.P3857470362940339809

namespace A275795

/-- `A001541(n)+Δ[A054490(n)]` -/
def P3857470362940339809.Spec : Prop :=
  ∀ n, P3857470362940339809.a n = A275795 n

end A275795

/-! ## A275795.P15350336924051024545

`Δ[A182435(n)+A054490(n)]`
-/

namespace A275795.P15350336924051024545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 n + A054490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275795.P15350336924051024545

namespace A275795

/-- `Δ[A182435(n)+A054490(n)]` -/
def P15350336924051024545.Spec : Prop :=
  ∀ n, P15350336924051024545.a n = A275795 n

end A275795

/-! ## A275795.P16330319459578445687

`A106329(n+2)+A003499(n)`
-/

namespace A275795.P16330319459578445687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106329 (n + 2) + A003499 n

end

end A275795.P16330319459578445687

namespace A275795

/-- `A106329(n+2)+A003499(n)` -/
def P16330319459578445687.Spec : Prop :=
  ∀ n, P16330319459578445687.a n = A275795 n

end A275795

/-! ## A275795.P13586825208715298046

`A054490(n+1)-A081554(n)`
-/

namespace A275795.P13586825208715298046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 (n + 1) - A081554 n

end

end A275795.P13586825208715298046

namespace A275795

/-- `A054490(n+1)-A081554(n)` -/
def P13586825208715298046.Spec : Prop :=
  ∀ n, P13586825208715298046.a n = A275795 n

end A275795

/-! ## A275795.P6581305210035646761

`A038762(n)+2*A100525(n)`
-/

namespace A275795.P6581305210035646761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038762 n + 2 * A100525 n

end

end A275795.P6581305210035646761

namespace A275795

/-- `A038762(n)+2*A100525(n)` -/
def P6581305210035646761.Spec : Prop :=
  ∀ n, P6581305210035646761.a n = A275795 n

end A275795

/-! ## A275795.P13366364115553906923

`A255236(n)+2*A038762(n)`
-/

namespace A275795.P13366364115553906923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255236 n + 2 * A038762 n

end

end A275795.P13366364115553906923

namespace A275795

/-- `A255236(n)+2*A038762(n)` -/
def P13366364115553906923.Spec : Prop :=
  ∀ n, P13366364115553906923.a n = A275795 n

end A275795

/-! ## A275795.P16314262876205510713

`Δ[2*A002315(n)]-A054490(n)`
-/

namespace A275795.P16314262876205510713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054490 n

end

end A275795.P16314262876205510713

namespace A275795

/-- `Δ[2*A002315(n)]-A054490(n)` -/
def P16314262876205510713.Spec : Prop :=
  ∀ n, P16314262876205510713.a n = A275795 n

end A275795

/-! ## A275795.P1829845724478999462

`A275793(n)+A002203(2*n+1)`
-/

namespace A275795.P1829845724478999462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275793 n + A002203 (2 * n + 1)

end

end A275795.P1829845724478999462

namespace A275795

/-- `A275793(n)+A002203(2*n+1)` -/
def P1829845724478999462.Spec : Prop :=
  ∀ n, P1829845724478999462.a n = A275795 n

end A275795

/-! ## A275795.P6727898065395154235

`A106329(n+2)+A002203(2*n)`
-/

namespace A275795.P6727898065395154235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106329 (n + 2) + A002203 (2 * n)

end

end A275795.P6727898065395154235

namespace A275795

/-- `A106329(n+2)+A002203(2*n)` -/
def P6727898065395154235.Spec : Prop :=
  ∀ n, P6727898065395154235.a n = A275795 n

end A275795

/-! ## A275795.P7654054562745369986

`A266507(n+1)+A221172(2*n+1)`
-/

namespace A275795.P7654054562745369986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266507 (n + 1) + A221172 (2 * n + 1)

end

end A275795.P7654054562745369986

namespace A275795

/-- `A266507(n+1)+A221172(2*n+1)` -/
def P7654054562745369986.Spec : Prop :=
  ∀ n, P7654054562745369986.a n = A275795 n

end A275795

/-! ## A275795.P6647995523206221260

`A106329(n+2)+2*A001333(2*n)`
-/

namespace A275795.P6647995523206221260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106329 (n + 2) + 2 * A001333 (2 * n)

end

end A275795.P6647995523206221260

namespace A275795

/-- `A106329(n+2)+2*A001333(2*n)` -/
def P6647995523206221260.Spec : Prop :=
  ∀ n, P6647995523206221260.a n = A275795 n

end A275795

/-! ## A275795.P8297705179979732338

`Δ[A077444(n+1)]-A077446(2*n+1)`
-/

namespace A275795.P8297705179979732338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077446 (2 * n + 1)

end

end A275795.P8297705179979732338

namespace A275795

/-- `Δ[A077444(n+1)]-A077446(2*n+1)` -/
def P8297705179979732338.Spec : Prop :=
  ∀ n, P8297705179979732338.a n = A275795 n

end A275795

/-!
# A275796: One half of the y members of the positive proper solutions (x = x2(n), y = y2(n)) of the second class for the Pell equation x^2 - 2*y^2 = +7^2.

The programs for A275796, the canonical program `A275796.P1951851008070087829` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275796 has offset 0).

The definition of A275796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275796.P1951851008070087829

`6*a(n-1)-a(n-2)` with `a(0)=3, a(1)=20`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275796

/-- `6*a(n-1)-a(n-2)` -/
def P1951851008070087829.Spec : Prop :=
  ∀ n, P1951851008070087829.a n = A275796 n

theorem P1951851008070087829.correct : P1951851008070087829.Spec := by
  intro n
  simp only [A275796]

end A275796

/-! ## A275796.P15178683735810045241

`ogf((3+2x)/(1-6x+x^2))`
-/

namespace A275796.P15178683735810045241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -6, 1] n

end

end A275796.P15178683735810045241

namespace A275796

/-- `ogf((3+2x)/(1-6x+x^2))` -/
def P15178683735810045241.Spec : Prop :=
  ∀ n, P15178683735810045241.a n = A275796 n

end A275796

/-! ## A275796.P1946242899971455826

`∑[lcm(6, a(n-1))-a(n-2)]` with `a(0)=3, a(1)=17, a(2)=97`
-/

namespace A275796.P1946242899971455826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 17, 97] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275796.P1946242899971455826

namespace A275796

/-- `∑[lcm(6, a(n-1))-a(n-2)]` -/
def P1946242899971455826.Spec : Prop :=
  ∀ n, P1946242899971455826.a n = A275796 n

end A275796

/-! ## A275796.P11489209740264700613

`∑[A254759(n)]-2`
-/

namespace A275796.P11489209740264700613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A275796.P11489209740264700613

namespace A275796

/-- `∑[A254759(n)]-2` -/
def P11489209740264700613.Spec : Prop :=
  ∀ n, P11489209740264700613.a n = A275796 n

end A275796

/-! ## A275796.P14708528361527811429

`A276600(3*(n+1))`
-/

namespace A275796.P14708528361527811429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (3 * (n + 1))

end

end A275796.P14708528361527811429

namespace A275796

/-- `A276600(3*(n+1))` -/
def P14708528361527811429.Spec : Prop :=
  ∀ n, P14708528361527811429.a n = A275796 n

end A275796

/-! ## A275796.P14626819383198178747

`A221174(2*(n+1))/2`
-/

namespace A275796.P14626819383198178747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221174 (2 * (n + 1)) : ℚ) / 2

end

end A275796.P14626819383198178747

namespace A275796

/-- `A221174(2*(n+1))/2` -/
def P14626819383198178747.Spec : Prop :=
  ∀ n, P14626819383198178747.a n = (A275796 n : ℚ)

end A275796

/-! ## A275796.P11467970535647598263

`Δ[∑[A221174(2*n)]/2]`
-/

namespace A275796.P11467970535647598263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275796.P11467970535647598263

namespace A275796

/-- `Δ[∑[A221174(2*n)]/2]` -/
def P11467970535647598263.Spec : Prop :=
  ∀ n, P11467970535647598263.a n = (A275796 n : ℚ)

end A275796

/-! ## A275796.P13219097807585004679

`∑[A221174(2*n+1)]-2`
-/

namespace A275796.P13219097807585004679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A275796.P13219097807585004679

namespace A275796

/-- `∑[A221174(2*n+1)]-2` -/
def P13219097807585004679.Spec : Prop :=
  ∀ n, P13219097807585004679.a n = A275796 n

end A275796

/-! ## A275796.P15985839093402998133

`A077413(n)+A002315(n)`
-/

namespace A275796.P15985839093402998133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n + A002315 n

end

end A275796.P15985839093402998133

namespace A275796

/-- `A077413(n)+A002315(n)` -/
def P15985839093402998133.Spec : Prop :=
  ∀ n, P15985839093402998133.a n = A275796 n

end A275796

/-! ## A275796.P10147982527128330893

`A253811(n)+A001109(n)`
-/

namespace A275796.P10147982527128330893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253811 n + A001109 n

end

end A275796.P10147982527128330893

namespace A275796

/-- `A253811(n)+A001109(n)` -/
def P10147982527128330893.Spec : Prop :=
  ∀ n, P10147982527128330893.a n = A275796 n

end A275796

/-! ## A275796.P14136831281328528986

`A100525(n)-A038725(n)`
-/

namespace A275796.P14136831281328528986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100525 n - A038725 n

end

end A275796.P14136831281328528986

namespace A275796

/-- `A100525(n)-A038725(n)` -/
def P14136831281328528986.Spec : Prop :=
  ∀ n, P14136831281328528986.a n = A275796 n

end A275796

/-! ## A275796.P4177945371077983849

`A001109(n)+Δ[A038723(n)]`
-/

namespace A275796.P4177945371077983849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + (f1 (n + 1) - f1 n)

end

end A275796.P4177945371077983849

namespace A275796

/-- `A001109(n)+Δ[A038723(n)]` -/
def P4177945371077983849.Spec : Prop :=
  ∀ n, P4177945371077983849.a n = A275796 n

end A275796

/-! ## A275796.P7465956862006108393

`Δ[A053142(n)+A001541(n)]`
-/

namespace A275796.P7465956862006108393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n + A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275796.P7465956862006108393

namespace A275796

/-- `Δ[A053142(n)+A001541(n)]` -/
def P7465956862006108393.Spec : Prop :=
  ∀ n, P7465956862006108393.a n = A275796 n

end A275796

/-! ## A275796.P8078691513509265190

`A054489(n)+Δ[A001542(n)]`
-/

namespace A275796.P8078691513509265190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n + (f1 (n + 1) - f1 n)

end

end A275796.P8078691513509265190

namespace A275796

/-- `A054489(n)+Δ[A001542(n)]` -/
def P8078691513509265190.Spec : Prop :=
  ∀ n, P8078691513509265190.a n = A275796 n

end A275796

/-! ## A275796.P5232550462250240518

`A054488(n)+Δ[A011900(n)]`
-/

namespace A275796.P5232550462250240518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + (f1 (n + 1) - f1 n)

end

end A275796.P5232550462250240518

namespace A275796

/-- `A054488(n)+Δ[A011900(n)]` -/
def P5232550462250240518.Spec : Prop :=
  ∀ n, P5232550462250240518.a n = A275796 n

end A275796

/-! ## A275796.P8102998341784068772

`A054488(n)+Δ[A053141(n)]`
-/

namespace A275796.P8102998341784068772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + (f1 (n + 1) - f1 n)

end

end A275796.P8102998341784068772

namespace A275796

/-- `A054488(n)+Δ[A053141(n)]` -/
def P8102998341784068772.Spec : Prop :=
  ∀ n, P8102998341784068772.a n = A275796 n

end A275796

/-! ## A275796.P10009602552260079015

`A054489(n)+Δ[A182189(n)]`
-/

namespace A275796.P10009602552260079015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n + (f1 (n + 1) - f1 n)

end

end A275796.P10009602552260079015

namespace A275796

/-- `A054489(n)+Δ[A182189(n)]` -/
def P10009602552260079015.Spec : Prop :=
  ∀ n, P10009602552260079015.a n = A275796 n

end A275796

/-! ## A275796.P11383255008565344963

`A275794(n)+Δ[A001109(n)]`
-/

namespace A275796.P11383255008565344963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n + (f1 (n + 1) - f1 n)

end

end A275796.P11383255008565344963

namespace A275796

/-- `A275794(n)+Δ[A001109(n)]` -/
def P11383255008565344963.Spec : Prop :=
  ∀ n, P11383255008565344963.a n = A275796 n

end A275796

/-! ## A275796.P16800147082494962718

`Δ[A072221(n)]-A001109(n)`
-/

namespace A275796.P16800147082494962718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001109 n

end

end A275796.P16800147082494962718

namespace A275796

/-- `Δ[A072221(n)]-A001109(n)` -/
def P16800147082494962718.Spec : Prop :=
  ∀ n, P16800147082494962718.a n = A275796 n

end A275796

/-! ## A275796.P17010942823118597088

`Δ[A048654(n)]*A048654(n)`
-/

namespace A275796.P17010942823118597088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048654 n

end

end A275796.P17010942823118597088

namespace A275796

/-- `Δ[A048654(n)]*A048654(n)` -/
def P17010942823118597088.Spec : Prop :=
  ∀ n, P17010942823118597088.a n = A275796 n

end A275796

/-!
# A275797: Primes for which the concatenation of the digits in the even positions and the concatenation of the digits in the odd positions are squares.

The programs for A275797, there is no canonical definition to state claims against.
-/

/-! ## A275797.P16458009175354262322

`∩[A034844(n+1), A326643(n)]`
-/

namespace A275797.P16458009175354262322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275797.P16458009175354262322

/-!
# A275798: One half of the number of n X n square grids with squares of two colors modulo operations of the dihedral group D_4.

The programs for A275798, there is no canonical definition to state claims against.
-/

/-! ## A275798.P2973918776379916562

`A054247(n+1)/2`
-/

namespace A275798.P2973918776379916562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054247 (n + 1) : ℚ) / 2

end

end A275798.P2973918776379916562

/-! ## A275798.P8698891697581077871

`Δ[A177793(n)/2]`
-/

namespace A275798.P8698891697581077871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177793 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275798.P8698891697581077871

/-! ## A275798.P10407283970815032709

`Δ[∑[A054247(n)]/2]`
-/

namespace A275798.P10407283970815032709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054247 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275798.P10407283970815032709

/-! ## A275798.P2967028239648468481

`record[A054247(A008611(n))/2]`
-/

namespace A275798.P2967028239648468481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054247 (A008611 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275798.P2967028239648468481

/-!
# A275799: Number of inequivalent (modulo C_4 rotations) square n X n grids with squares coming in two colors and three squares have one of the colors.

The programs for A275799, the canonical program `A275799.P1069378025426575222` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275799 has offset 2).

The definition of A275799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275799.P1069378025426575222

`∑[∑[A000583(n+1)+A007590(n+1)²]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275799

/-- `∑[∑[A000583(n+1)+A007590(n+1)²]]` -/
def P1069378025426575222.Spec : Prop :=
  ∀ n, P1069378025426575222.a n = A275799 (n + 2)

theorem P1069378025426575222.correct : P1069378025426575222.Spec := by
  intro n
  simp only [A275799, Nat.add_sub_cancel]

end A275799

/-! ## A275799.P8928116120237978752

`A024598(∑[or(1, n+1)])`
-/

namespace A275799.P8928116120237978752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024598 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275799.P8928116120237978752

namespace A275799

/-- `A024598(∑[or(1, n+1)])` -/
def P8928116120237978752.Spec : Prop :=
  ∀ n, P8928116120237978752.a n = A275799 (n + 2)

end A275799

/-! ## A275799.P13409992391336534854

`A024598(∑[and(1, n)+1+n])`
-/

namespace A275799.P13409992391336534854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024598 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275799.P13409992391336534854

namespace A275799

/-- `A024598(∑[and(1, n)+1+n])` -/
def P13409992391336534854.Spec : Prop :=
  ∀ n, P13409992391336534854.a n = A275799 (n + 2)

end A275799

/-! ## A275799.P2418794132076961229

`A024598(Δ[n²]+ceil(n²/2))`
-/

namespace A275799.P2418794132076961229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024598 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A275799.P2418794132076961229

namespace A275799

/-- `A024598(Δ[n²]+ceil(n²/2))` -/
def P2418794132076961229.Spec : Prop :=
  ∀ n, P2418794132076961229.a n = A275799 (n + 2)

end A275799

/-! ## A275799.P6075981182879239590

`A008610(n*(n+4)+1)`
-/

namespace A275799.P6075981182879239590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (n * (n + 4) + 1)

end

end A275799.P6075981182879239590

namespace A275799

/-- `A008610(n*(n+4)+1)` -/
def P6075981182879239590.Spec : Prop :=
  ∀ n, P6075981182879239590.a n = A275799 (n + 2)

end A275799

/-! ## A275799.P11672298175444323542

`A005993((n+2)²-3)/2`
-/

namespace A275799.P11672298175444323542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005993 ((n + 2) ^ 2 - 3) : ℚ) / 2

end

end A275799.P11672298175444323542

namespace A275799

/-- `A005993((n+2)²-3)/2` -/
def P11672298175444323542.Spec : Prop :=
  ∀ n, P11672298175444323542.a n = (A275799 (n + 2) : ℚ)

end A275799

/-! ## A275799.P5200493634884328889

`A295286(A120413(n+2))`
-/

namespace A275799.P5200493634884328889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (A120413 (n + 2)).toNat

end

end A275799.P5200493634884328889

namespace A275799

/-- `A295286(A120413(n+2))` -/
def P5200493634884328889.Spec : Prop :=
  ∀ n, P5200493634884328889.a n = A275799 (n + 2)

end A275799

/-! ## A275799.P10988864706772356443

`A159914((n+2)²)`
-/

namespace A275799.P10988864706772356443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159914 ((n + 2) ^ 2)

end

end A275799.P10988864706772356443

namespace A275799

/-- `A159914((n+2)²)` -/
def P10988864706772356443.Spec : Prop :=
  ∀ n, P10988864706772356443.a n = A275799 (n + 2)

end A275799

