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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A280100: a(n) = 4^(2*n) * (n!)^3 * (n+1)!.

The programs for A280100, the canonical program `A280100.P7942976532048955260` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280100 has offset 0).

The definition of A280100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(2*n)*n!^3*(n+1)!` (program `A280100.P7942976532048955260`, by `A280100.P7942976532048955260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280100.P7942976532048955260

`4^(2*n)*n!^3*(n+1)!`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280100

/-- `4^(2*n)*n!^3*(n+1)!` -/
def P7942976532048955260.Spec : Prop :=
  ∀ n, (P7942976532048955260.a n : ℤ) = A280100 n

theorem P7942976532048955260.correct : P7942976532048955260.Spec := by
  intro n
  simp only [A280100]

end A280100

/-! ## A280100.P10374389912383329437

`(n+1)*∏[floor(2/acot(n))²]²`
-/

namespace A280100.P10374389912383329437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A280100.P10374389912383329437

namespace A280100

/-- `(n+1)*∏[floor(2/acot(n))²]²` -/
def P10374389912383329437.Spec : Prop :=
  ∀ n, P10374389912383329437.a n = A280100 n

end A280100

/-! ## A280100.P1999204439774902753

`(n+1)*(n!/2^-n)²²`
-/

namespace A280100.P1999204439774902753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)) ^ 2) ^ 2

end

end A280100.P1999204439774902753

namespace A280100

/-- `(n+1)*(n!/2^-n)²²` -/
def P1999204439774902753.Spec : Prop :=
  ∀ n, P1999204439774902753.a n = (A280100 n : ℚ)

end A280100

/-! ## A280100.P7293886092978885425

`(n+1)*(2^(log2(n!)+n))²²`
-/

namespace A280100.P7293886092978885425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (((2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))) ^ 2) ^ 2

end

end A280100.P7293886092978885425

namespace A280100

/-- `(n+1)*(2^(log2(n!)+n))²²` -/
def P7293886092978885425.Spec : Prop :=
  ∀ n, P7293886092978885425.a n = (A280100 n : ℝ)

end A280100

/-! ## A280100.P12862003746370322044

`(n+1)*∏[(floor(acot(n))+2*n)²]²`
-/

namespace A280100.P12862003746370322044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A280100.P12862003746370322044

namespace A280100

/-- `(n+1)*∏[(floor(acot(n))+2*n)²]²` -/
def P12862003746370322044.Spec : Prop :=
  ∀ n, P12862003746370322044.a n = A280100 n

end A280100

/-!
# A280101: a(n) = sigma(sigma(p(n))) = sum of the divisors of the sum of the divisors of number of partitions of n.

The programs for A280101, there is no canonical definition to state claims against.
-/

/-! ## A280101.P12167820400223520708

`A000203(A000203(A000041(n)))`
-/

namespace A280101.P12167820400223520708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A000041 n).toNat).toNat

end

end A280101.P12167820400223520708

/-! ## A280101.P4405737025223981719

`A051027(A000041(n))`
-/

namespace A280101.P4405737025223981719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A000041 n).toNat

end

end A280101.P4405737025223981719

/-! ## A280101.P15771137338569551858

`∑{d}[∑{d}[∑[A002865(n)], #], #]`
-/

namespace A280101.P15771137338569551858
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A280101.P15771137338569551858

/-! ## A280101.P5231390138383201975

`∑{d}[∑{d}[A239830(∑[n]), #], #]`
-/

namespace A280101.P5231390138383201975
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A280101.P5231390138383201975

/-! ## A280101.P2494095294839202128

`∑{d}[∑{d}[A000065(n)+1, #], #]`
-/

namespace A280101.P2494095294839202128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A280101.P2494095294839202128

/-! ## A280101.P8864967361523215349

`∑{d}[∑{d}[A139582(n)/2, #], #]`
-/

namespace A280101.P8864967361523215349
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A280101.P8864967361523215349

/-! ## A280101.P4176468761343186792

`∑{d}[∑{d}[A321449(A000096(n)), #], #]`
-/

namespace A280101.P4176468761343186792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321449 (A000096 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A280101.P4176468761343186792

/-!
# A280102: Engel expansion of e to the base Pi.

The programs for A280102, there is no canonical definition to state claims against.
-/

/-! ## A280102.P8913936584764722609

`A227544(n)+A064657(A092440(n))`
-/

namespace A280102.P8913936584764722609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227544 n + A064657 (A092440 n).toNat

end

end A280102.P8913936584764722609

/-!
# A280104: a(n) = smallest prime factor of n-th Lucas number A000032(n), or 1 if there are none.

The programs for A280104, there is no canonical definition to state claims against.
-/

/-! ## A280104.P15411161946546657146

`A020639(A000032(n))`
-/

namespace A280104.P15411161946546657146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000032 n).toNat

end

end A280104.P15411161946546657146

/-! ## A280104.P680598494660775194

`A238899(eq[1, A238899(n)]+1)`
-/

namespace A280104.P680598494660775194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280104.P680598494660775194

/-! ## A280104.P8968179315317732403

`A238899(record[2-A238899(n)+n])`
-/

namespace A280104.P8968179315317732403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238899 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238899 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280104.P8968179315317732403

/-! ## A280104.P17063140048349445454

`A238899(record[(n+1)/A238899(n)])`
-/

namespace A280104.P17063140048349445454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A238899 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238899 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A280104.P17063140048349445454

/-! ## A280104.P13599910612243288085

`A020639(sqrt(A001254(n))/A194086(n))`
-/

namespace A280104.P13599910612243288085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A001254 n : ℝ) / (A194086 n : ℝ))).toNat

end

end A280104.P13599910612243288085

/-!
# A280105: a(n) = prime(Fibonacci(n)) written in base 2.

The programs for A280105, there is no canonical definition to state claims against.
-/

/-! ## A280105.P11308800462278026822

`A004676(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A280105.P11308800462278026822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280105.P11308800462278026822

/-! ## A280105.P12497492141291443269

`A004676(A000045(n+1))`
-/

namespace A280105.P12497492141291443269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (A000045 (n + 1)).toNat

end

end A280105.P12497492141291443269

/-! ## A280105.P544108025224755104

`A004676(A324969(n+2))`
-/

namespace A280105.P544108025224755104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (A324969 (n + 2)).toNat

end

end A280105.P544108025224755104

/-! ## A280105.P2338775461355973210

`A004676(∑[A000045(abs(1-n))])`
-/

namespace A280105.P2338775461355973210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280105.P2338775461355973210

/-!
# A280107: Numbers m with the property that the symmetric representation of sigma(m) has four parts.

The programs for A280107, there is no canonical definition to state claims against.
-/

/-! ## A280107.P9218065152382263839

`eq[4, A237271(n+1)]+1`
-/

namespace A280107.P9218065152382263839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280107.P9218065152382263839

/-! ## A280107.P15004432032117852395

`eq[12, A244971(n+1)]+1`
-/

namespace A280107.P15004432032117852395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280107.P15004432032117852395

/-! ## A280107.P2150904763295003207

`eq[4, A237271(A028310(n))]`
-/

namespace A280107.P2150904763295003207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280107.P2150904763295003207

/-! ## A280107.P3416619290732408829

`A020725(eq[4, A237271(n+1)])`
-/

namespace A280107.P3416619290732408829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280107.P3416619290732408829

/-! ## A280107.P12661251571719638182

`A065475(eq[4, A237271(n+1)])`
-/

namespace A280107.P12661251571719638182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280107.P12661251571719638182

/-! ## A280107.P2756800512588225920

`A153152(eq[4, A237271(n+1)])`
-/

namespace A280107.P2756800512588225920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280107.P2756800512588225920

/-! ## A280107.P112977282873971729

`A181569(eq[4, A237271(n+1)])`
-/

namespace A280107.P112977282873971729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280107.P112977282873971729

/-! ## A280107.P1770766971336788605

`eq[4, A237271(A233583(n+1))]`
-/

namespace A280107.P1770766971336788605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280107.P1770766971336788605

/-! ## A280107.P3556700986802068797

`eq[4, A237271(A123108(2*n))]`
-/

namespace A280107.P3556700986802068797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280107.P3556700986802068797

/-!
# A280108: Sum of odd divisors of Lucas(n).

The programs for A280108, the canonical program `A280108.P11591801532326893364` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280108 has offset 1).

The definition of A280108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280108.P11591801532326893364

`A000593(A000032(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A280108

/-- `A000593(A000032(n+1))` -/
def P11591801532326893364.Spec : Prop :=
  ∀ n, P11591801532326893364.a n = A280108 (n + 1)

theorem P11591801532326893364.correct : P11591801532326893364.Spec := by
  intro n
  simp only [A280108, Nat.add_sub_cancel]

end A280108

/-! ## A280108.P7452217929531243152

`A193293(2*(n+1))/A193293(n+1)`
-/

namespace A280108.P7452217929531243152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193293 (2 * (n + 1)) : ℚ) / (A193293 (n + 1) : ℚ)

end

end A280108.P7452217929531243152

namespace A280108

/-- `A193293(2*(n+1))/A193293(n+1)` -/
def P7452217929531243152.Spec : Prop :=
  ∀ n, P7452217929531243152.a n = (A280108 (n + 1) : ℚ)

end A280108

/-! ## A280108.P9375943533314513918

`∑{d}[record[A000032(n)], #*#%2]`
-/

namespace A280108.P9375943533314513918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (d % 2)

end

end A280108.P9375943533314513918

namespace A280108

/-- `∑{d}[record[A000032(n)], #*#%2]` -/
def P9375943533314513918.Spec : Prop :=
  ∀ n, (P9375943533314513918.a n : ℤ) = A280108 (n + 1)

end A280108

/-! ## A280108.P8886331262384196618

`∑{d}[A000204(n+1), #*and(1, #)]`
-/

namespace A280108.P8886331262384196618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * Nat.land 1 d

end

end A280108.P8886331262384196618

namespace A280108

/-- `∑{d}[A000204(n+1), #*and(1, #)]` -/
def P8886331262384196618.Spec : Prop :=
  ∀ n, (P8886331262384196618.a n : ℤ) = A280108 (n + 1)

end A280108

/-! ## A280108.P6310577255363010202

`∑{d}[Δ[A000032(n+2)], #*and(1, #)]`
-/

namespace A280108.P6310577255363010202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * Nat.land 1 d

end

end A280108.P6310577255363010202

namespace A280108

/-- `∑{d}[Δ[A000032(n+2)], #*and(1, #)]` -/
def P6310577255363010202.Spec : Prop :=
  ∀ n, (P6310577255363010202.a n : ℤ) = A280108 (n + 1)

end A280108

/-!
# A280109: a(n) is the decimal value corresponding to the binary representation of the distribution of quadratic residues (value=1) and non-quadratic residues (value=0) mod n, where numbers are ordered left to right from 0 to n-1.

The programs for A280109, there is no canonical definition to state claims against.
-/

/-! ## A280109.P3749377345786844128

`A055094(n+1)+2^n`
-/

namespace A280109.P3749377345786844128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055094 (n + 1) + (2 ^ n : ℤ)

end

end A280109.P3749377345786844128

/-! ## A280109.P974573420538752880

`or(A003945(n), A055094(n+1))`
-/

namespace A280109.P974573420538752880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 n) (A055094 (n + 1))

end

end A280109.P974573420538752880

/-! ## A280109.P13544196866680477121

`xor(A000079(n), A055094(n+1))`
-/

namespace A280109.P13544196866680477121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A055094 (n + 1))

end

end A280109.P13544196866680477121

/-! ## A280109.P17233802867870280846

`or(record[A077957(n)], A055094(n+1))`
-/

namespace A280109.P17233802867870280846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A055094 (n + 1))

end

end A280109.P17233802867870280846

/-! ## A280109.P13625930891069130949

`A077957(2*n)+A055094(n+1)`
-/

namespace A280109.P13625930891069130949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) + A055094 (n + 1)

end

end A280109.P13625930891069130949

/-! ## A280109.P441046873521824461

`or(A016116(2*n), A055094(n+1))`
-/

namespace A280109.P441046873521824461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 (2 * n)) (A055094 (n + 1))

end

end A280109.P441046873521824461

/-! ## A280109.P13751117799584701382

`or(A055094(n+1)+A016116(n)², A055094(n+1))`
-/

namespace A280109.P13751117799584701382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055094 (n + 1) + A016116 n ^ 2) (A055094 (n + 1))

end

end A280109.P13751117799584701382

/-!
# A280110: Numbers n such that A278981(n) > A278981(m) for 2 <= m < n.

The programs for A280110, there is no canonical definition to state claims against.
-/

/-! ## A280110.P4120642057592275224

`A070566(A070116(n+1))`
-/

namespace A280110.P4120642057592275224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070566 (A070116 (n + 1)).toNat

end

end A280110.P4120642057592275224

/-! ## A280110.P7979695001205400726

`A196499(A299101(n+1))`
-/

namespace A280110.P7979695001205400726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (A299101 (n + 1)).toNat

end

end A280110.P7979695001205400726

/-! ## A280110.P311653697830713179

`A305103(A276005(n+1))`
-/

namespace A280110.P311653697830713179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (A276005 (n + 1)).toNat

end

end A280110.P311653697830713179

/-! ## A280110.P13356393171464362935

`A098284(A058314(n+2))`
-/

namespace A280110.P13356393171464362935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098284 (A058314 (n + 2)).toNat

end

end A280110.P13356393171464362935

/-! ## A280110.P16771400717919195547

`A156899(A015841(n+2))`
-/

namespace A280110.P16771400717919195547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156899 (A015841 (n + 2)).toNat

end

end A280110.P16771400717919195547

/-!
# A280111: Indices of triangular numbers (A000217) that are also centered 10-gonal numbers (A062786).

The programs for A280111, there is no canonical definition to state claims against.
-/

/-! ## A280111.P17116386413880483322

`floor(A173127(n+1)/2)`
-/

namespace A280111.P17116386413880483322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173127 (n + 1) : ℚ) / 2⌋

end

end A280111.P17116386413880483322

/-! ## A280111.P16293705479795742820

`(A228471(4*n)-1)/2`
-/

namespace A280111.P16293705479795742820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228471 (4 * n) - 1 : ℚ) / 2

end

end A280111.P16293705479795742820

/-! ## A280111.P15781905001591510408

`floor(A005667(2*n+1)/2)`
-/

namespace A280111.P15781905001591510408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005667 (2 * n + 1) : ℚ) / 2⌋

end

end A280111.P15781905001591510408

/-! ## A280111.P2092685606126047905

`floor(A097314(n)+A097314(n)/2)`
-/

namespace A280111.P2092685606126047905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097314 n : ℚ) + (A097314 n : ℚ) / 2⌋

end

end A280111.P2092685606126047905

/-! ## A280111.P15631820743909241502

`A129556(2*n+1)+A097315(n)`
-/

namespace A280111.P15631820743909241502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129556 (2 * n + 1) + A097315 n

end

end A280111.P15631820743909241502

/-! ## A280111.P2792531977563566016

`A222390(2*n+1)+A015451(2*n+1)`
-/

namespace A280111.P2792531977563566016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222390 (2 * n + 1) + A015451 (2 * n + 1)

end

end A280111.P2792531977563566016

/-! ## A280111.P932306366099870959

`A005668(2*n+1)+A254332(2*n+1)-1`
-/

namespace A280111.P932306366099870959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (2 * n + 1) + (A254332 (2 * n + 1) - 1)

end

end A280111.P932306366099870959

/-! ## A280111.P4339243147246649987

`(A129556(2*n+1)+A129556(2*(n+1)))/2`
-/

namespace A280111.P4339243147246649987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129556 (2 * n + 1) + A129556 (2 * (n + 1)) : ℚ) / 2

end

end A280111.P4339243147246649987

/-! ## A280111.P3219852655473926720

`A005668(2*n+1)+A222390(2*n+1)+A005668(2*n)`
-/

namespace A280111.P3219852655473926720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (2 * n + 1) + (A222390 (2 * n + 1) + A005668 (2 * n))

end

end A280111.P3219852655473926720

/-! ## A280111.P12552483203800735391

`(round((sqrt(10)+3)^(2*n+1))-2)/4`
-/

namespace A280111.P12552483203800735391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((Real.sqrt (10 : ℝ) + 3) ^ (2 * n + 1)) - 2 : ℚ) / 4

end

end A280111.P12552483203800735391

/-!
# A280112: Indices of centered 10-gonal numbers (A062786) that are also triangular numbers (A000217).

The programs for A280112, the canonical program `A280112.P7758651864820590712` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280112 has offset 1).

The definition of A280112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280112.P7758651864820590712

`39*a(n-1)-39*a(n-2)+a(n-3)` with `a(0)=1, a(1)=19, a(2)=703`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280112

/-- `39*a(n-1)-39*a(n-2)+a(n-3)` -/
def P7758651864820590712.Spec : Prop :=
  ∀ n, P7758651864820590712.a n = A280112 (n + 1)

theorem P7758651864820590712.correct : P7758651864820590712.Spec := by
  intro n
  simp only [A280112, Nat.add_sub_cancel]

end A280112

/-! ## A280112.P4774698271157347515

`ceil(A097315(n)/2)`
-/

namespace A280112.P4774698271157347515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097315 n : ℚ) / 2⌉

end

end A280112.P4774698271157347515

namespace A280112

/-- `ceil(A097315(n)/2)` -/
def P4774698271157347515.Spec : Prop :=
  ∀ n, P4774698271157347515.a n = A280112 (n + 1)

end A280112

/-! ## A280112.P17168353791748812031

`ceil(A041683(2*n)/2)`
-/

namespace A280112.P17168353791748812031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041683 (2 * n) : ℚ) / 2⌉

end

end A280112.P17168353791748812031

namespace A280112

/-- `ceil(A041683(2*n)/2)` -/
def P17168353791748812031.Spec : Prop :=
  ∀ n, P17168353791748812031.a n = A280112 (n + 1)

end A280112

/-! ## A280112.P6490085565210702580

`(A041067(2*n)+1)/2`
-/

namespace A280112.P6490085565210702580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041067 (2 * n) + 1 : ℚ) / 2

end

end A280112.P6490085565210702580

namespace A280112

/-- `(A041067(2*n)+1)/2` -/
def P6490085565210702580.Spec : Prop :=
  ∀ n, P6490085565210702580.a n = (A280112 (n + 1) : ℚ)

end A280112

/-! ## A280112.P3266207831628381042

`(A041161(2*n)+1)/2`
-/

namespace A280112.P3266207831628381042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041161 (2 * n) + 1 : ℚ) / 2

end

end A280112.P3266207831628381042

namespace A280112

/-- `(A041161(2*n)+1)/2` -/
def P3266207831628381042.Spec : Prop :=
  ∀ n, P3266207831628381042.a n = (A280112 (n + 1) : ℚ)

end A280112

/-! ## A280112.P874727935148684885

`ceil(A280111(n+1)/sqrt(10))`
-/

namespace A280112.P874727935148684885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280111 (n + 1) : ℝ) / Real.sqrt (10 : ℝ)⌉

end

end A280112.P874727935148684885

namespace A280112

/-- `ceil(A280111(n+1)/sqrt(10))` -/
def P874727935148684885.Spec : Prop :=
  ∀ n, P874727935148684885.a n = A280112 (n + 1)

end A280112

/-! ## A280112.P3710515748650030373

`(A005668(2*n+1)+1)/2`
-/

namespace A280112.P3710515748650030373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005668 (2 * n + 1) + 1 : ℚ) / 2

end

end A280112.P3710515748650030373

namespace A280112

/-- `(A005668(2*n+1)+1)/2` -/
def P3710515748650030373.Spec : Prop :=
  ∀ n, P3710515748650030373.a n = (A280112 (n + 1) : ℚ)

end A280112

/-! ## A280112.P5105625409808397629

`A078986(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A280112.P5105625409808397629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078986 n + (1 - a (n - 1))

end

end A280112.P5105625409808397629

namespace A280112

/-- `A078986(n)+1-a(n-1)` -/
def P5105625409808397629.Spec : Prop :=
  ∀ n, P5105625409808397629.a n = A280112 (n + 1)

end A280112

/-! ## A280112.P13204273134255530163

`(A041295(A047451(n+1))+1)/2`
-/

namespace A280112.P13204273134255530163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041295 (A047451 (n + 1)).toNat + 1 : ℚ) / 2

end

end A280112.P13204273134255530163

namespace A280112

/-- `(A041295(A047451(n+1))+1)/2` -/
def P13204273134255530163.Spec : Prop :=
  ∀ n, P13204273134255530163.a n = (A280112 (n + 1) : ℚ)

end A280112

/-! ## A280112.P12296398864761921978

`A041161(2*n)-floor(A097315(n)/2)`
-/

namespace A280112.P12296398864761921978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041161 (2 * n) - ⌊(A097315 n : ℚ) / 2⌋

end

end A280112.P12296398864761921978

namespace A280112

/-- `A041161(2*n)-floor(A097315(n)/2)` -/
def P12296398864761921978.Spec : Prop :=
  ∀ n, P12296398864761921978.a n = A280112 (n + 1)

end A280112

/-!
# A280113: Triangular numbers (A000217) that are also centered 10-gonal numbers (A062786).

The programs for A280113, there is no canonical definition to state claims against.
-/

/-! ## A280113.P2216858002242259253

`(A280111(n+1)+A280111(n+1)²)/2`
-/

namespace A280113.P2216858002242259253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280111 (n + 1) + A280111 (n + 1) ^ 2 : ℚ) / 2

end

end A280113.P2216858002242259253

/-!
# A280114: Partial sums of A175317 (Sum_{d|n} pod(d)).

The programs for A280114, the canonical program `A280114.P2386266783669017223` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280114 has offset 1).

The definition of A280114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280114.P2386266783669017223

`∑[A175317(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A280114

/-- `∑[A175317(n+1)]` -/
def P2386266783669017223.Spec : Prop :=
  ∀ n, P2386266783669017223.a n = A280114 (n + 1)

theorem P2386266783669017223.correct : P2386266783669017223.Spec := by
  intro n
  simp only [A280114, Nat.add_sub_cancel]

end A280114

/-! ## A280114.P8397699465385305866

`∑[∑{d}[n+1, A007955(#)]]`
-/

namespace A280114.P8397699465385305866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007955 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280114.P8397699465385305866

namespace A280114

/-- `∑[∑{d}[n+1, A007955(#)]]` -/
def P8397699465385305866.Spec : Prop :=
  ∀ n, P8397699465385305866.a n = A280114 (n + 1)

end A280114

/-! ## A280114.P17815840435982645872

`∑[∑{d}[n+1, #*A007956(#)]]`
-/

namespace A280114.P17815840435982645872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A007956 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280114.P17815840435982645872

namespace A280114

/-- `∑[∑{d}[n+1, #*A007956(#)]]` -/
def P17815840435982645872.Spec : Prop :=
  ∀ n, P17815840435982645872.a n = A280114 (n + 1)

end A280114

/-! ## A280114.P14870778697606399315

`∑[∑{d}[n+1, sqrt(#)^A000005(#)]]`
-/

namespace A280114.P14870778697606399315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Real.sqrt (d : ℝ) ^ (A000005 d : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280114.P14870778697606399315

namespace A280114

/-- `∑[∑{d}[n+1, sqrt(#)^A000005(#)]]` -/
def P14870778697606399315.Spec : Prop :=
  ∀ n, P14870778697606399315.a n = (A280114 (n + 1) : ℝ)

end A280114

/-! ## A280114.P5321163490542298929

`∑[∑{d}[n+1, sqrt(A062758(#))]]`
-/

namespace A280114.P5321163490542298929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Real.sqrt (A062758 d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280114.P5321163490542298929

namespace A280114

/-- `∑[∑{d}[n+1, sqrt(A062758(#))]]` -/
def P5321163490542298929.Spec : Prop :=
  ∀ n, P5321163490542298929.a n = (A280114 (n + 1) : ℝ)

end A280114

/-!
# A280115: Partial products of A175317 (Sum_{d|n} pod(d)).

The programs for A280115, there is no canonical definition to state claims against.
-/

/-! ## A280115.P15287992597315848535

`∏[A175317(n+1)]`
-/

namespace A280115.P15287992597315848535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280115.P15287992597315848535

/-! ## A280115.P2557638087059108947

`∏[∑{d}[n+1, A007955(#)]]`
-/

namespace A280115.P2557638087059108947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007955 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280115.P2557638087059108947

/-! ## A280115.P3563190899736311928

`a(n-1)*∑{d}[n+1, sqrt(A062758(#))]` with `a(0)=1`
-/

namespace A280115.P3563190899736311928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A062758 d : ℝ))

end

end A280115.P3563190899736311928

/-! ## A280115.P6309844068161792007

`∏[∑{d}[n+1, A240694(A006218(#))]]`
-/

namespace A280115.P6309844068161792007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A240694 (A006218 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280115.P6309844068161792007

/-! ## A280115.P2690681235724368491

`(A175317(n+1)-A000007(n))*a(n-1)` with `a(0)=1`
-/

namespace A280115.P2690681235724368491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A175317 (n + 1) - A000007 n) * a (n - 1)

end

end A280115.P2690681235724368491

/-!
# A280116: Partial sums of A266265 (Product_{d|n} pod(d)).

The programs for A280116, the canonical program `A280116.P3577260603132501466` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280116 has offset 1).

The definition of A280116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280116.P10457362533198635585

`∑[A266265(n+1)]`
-/

namespace A280116.P10457362533198635585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280116.P10457362533198635585

namespace A280116

/-- `∑[A266265(n+1)]` -/
def P10457362533198635585.Spec : Prop :=
  ∀ n, P10457362533198635585.a n = A280116 (n + 1)

end A280116

/-! ## A280116.P13246365476034692356

`∑[∏{d}[n+1, A007955(#)]]`
-/

namespace A280116.P13246365476034692356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A007955 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280116.P13246365476034692356

namespace A280116

/-- `∑[∏{d}[n+1, A007955(#)]]` -/
def P13246365476034692356.Spec : Prop :=
  ∀ n, P13246365476034692356.a n = A280116 (n + 1)

end A280116

/-! ## A280116.P3409977908771632299

`∑[∏{d}[n+1, sqrt(A062758(#))]]`
-/

namespace A280116.P3409977908771632299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), Real.sqrt (A062758 d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280116.P3409977908771632299

namespace A280116

/-- `∑[∏{d}[n+1, sqrt(A062758(#))]]` -/
def P3409977908771632299.Spec : Prop :=
  ∀ n, P3409977908771632299.a n = (A280116 (n + 1) : ℝ)

end A280116

/-! ## A280116.P3577260603132501466

`∑[∏{d}[n+1, #*A007956(#)]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280116

/-- `∑[∏{d}[n+1, #*A007956(#)]]` -/
def P3577260603132501466.Spec : Prop :=
  ∀ n, P3577260603132501466.a n = A280116 (n + 1)

theorem P3577260603132501466.correct : P3577260603132501466.Spec := by
  intro n
  simp only [A280116, Nat.add_sub_cancel]

end A280116

/-! ## A280116.P11928212174389223006

`∑[∏{d}[n+1, sqrt(#^A000005(#))]]`
-/

namespace A280116.P11928212174389223006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), Real.sqrt ((d : ℚ) ^ (A000005 d : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280116.P11928212174389223006

namespace A280116

/-- `∑[∏{d}[n+1, sqrt(#^A000005(#))]]` -/
def P11928212174389223006.Spec : Prop :=
  ∀ n, P11928212174389223006.a n = (A280116 (n + 1) : ℝ)

end A280116

/-!
# A280117: Partial products of A266265 (Product_{d|n} pod(d)), where pod(n) is the product of the divisors of n (A007955).

The programs for A280117, there is no canonical definition to state claims against.
-/

/-! ## A280117.P16834735731420505117

`∏[A266265(n+1)]`
-/

namespace A280117.P16834735731420505117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280117.P16834735731420505117

/-! ## A280117.P2930793330627167815

`∏[∏{d}[n+1, A007955(#)]]`
-/

namespace A280117.P2930793330627167815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A007955 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280117.P2930793330627167815

/-! ## A280117.P10491372515566484975

`∏[A007955(n+1)*A322672(n+1)]`
-/

namespace A280117.P10491372515566484975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A322672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280117.P10491372515566484975

/-! ## A280117.P8915462930729957914

`∏[A324981(n+1)/A007955(n+1)]`
-/

namespace A280117.P8915462930729957914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324981 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280117.P8915462930729957914

/-! ## A280117.P9270355047984092006

`∏[A307101(n+1)/A211776(n+1)]`
-/

namespace A280117.P9270355047984092006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307101 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280117.P9270355047984092006

/-!
# A280118: Number of n X 2 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280118, there is no canonical definition to state claims against.
-/

/-! ## A280118.P5105213242654570549

`A280124(∑[n+1]+2)`
-/

namespace A280118.P5105213242654570549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280118.P5105213242654570549

/-! ## A280118.P17236769679810569428

`lcm(4, A280124(A133263(n+1)))`
-/

namespace A280118.P17236769679810569428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A280124 (A133263 (n + 1)).toNat)

end

end A280118.P17236769679810569428

/-! ## A280118.P34641398602604890

`record[A010054(n)*A280124(n+2)]`
-/

namespace A280118.P34641398602604890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A280124 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280118.P34641398602604890

/-! ## A280118.P4973579386929014987

`A280124(A252752(2*(n+2)))+A027641(2*n+3)`
-/

namespace A280118.P4973579386929014987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A252752 (2 * (n + 2))).toNat + A027641 (2 * n + 3)

end

end A280118.P4973579386929014987

/-! ## A280118.P1281580191001820210

`record[A280124(∑[A152271(n)])]`
-/

namespace A280118.P1281580191001820210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280118.P1281580191001820210

/-!
# A280119: Number of nX3 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280119, there is no canonical definition to state claims against.
-/

/-! ## A280119.P7999479314803431452

`A280124(∑[n+2]+4)`
-/

namespace A280119.P7999479314803431452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280119.P7999479314803431452

/-! ## A280119.P11422792800323327937

`record[A280124(n+4)/A104990(n)]`
-/

namespace A280119.P11422792800323327937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280124 (n + 4) : ℚ) / (A104990 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280119.P11422792800323327937

/-! ## A280119.P6401744450404705488

`lcm(val(n+1, 2)+1, A280124(A167614(n+1)))`
-/

namespace A280119.P6401744450404705488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (A280124 (A167614 (n + 1)).toNat)

end

end A280119.P6401744450404705488

/-! ## A280119.P13996054757912575995

`A280124(A167614(n+1))+A025444(n)`
-/

namespace A280119.P13996054757912575995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A167614 (n + 1)).toNat + A025444 n

end

end A280119.P13996054757912575995

/-! ## A280119.P10482573625570759363

`A280124(A167614(n+1))+A025469(n)`
-/

namespace A280119.P10482573625570759363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A167614 (n + 1)).toNat + A025469 n

end

end A280119.P10482573625570759363

/-!
# A280120: Number of nX4 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280120, there is no canonical definition to state claims against.
-/

/-! ## A280120.P7160659231196811940

`A280124(∑[n+3]+7)`
-/

namespace A280120.P7160659231196811940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280120.P7160659231196811940

/-! ## A280120.P3373023661107762501

`A061674(n)^12*A280124(A027379(n+2))`
-/

namespace A280120.P3373023661107762501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n ^ 12 * A280124 (A027379 (n + 2)).toNat

end

end A280120.P3373023661107762501

/-!
# A280121: Number of nX5 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280121, there is no canonical definition to state claims against.
-/

/-! ## A280121.P7751358661972391531

`A280124(A374005(n+1))`
-/

namespace A280121.P7751358661972391531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A374005 (n + 1)).toNat

end

end A280121.P7751358661972391531

/-! ## A280121.P10928419852665442271

`A280124(A167499(n+3))`
-/

namespace A280121.P10928419852665442271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A167499 (n + 3)).toNat

end

end A280121.P10928419852665442271

/-! ## A280121.P11765220709600498927

`A280124(A155212(n)+13)`
-/

namespace A280121.P11765220709600498927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A155212 n + 13).toNat

end

end A280121.P11765220709600498927

/-! ## A280121.P3254686470804752873

`A280124(A056000(n)+15)`
-/

namespace A280121.P3254686470804752873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A056000 n + 15).toNat

end

end A280121.P3254686470804752873

/-! ## A280121.P11811711842120140348

`A280124(eq[7, A066657(n)])`
-/

namespace A280121.P11811711842120140348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280121.P11811711842120140348

/-!
# A280122: Number of nX6 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280122, there is no canonical definition to state claims against.
-/

/-! ## A280122.P7687755503435346961

`A280124(A374007(n+1))`
-/

namespace A280122.P7687755503435346961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A374007 (n + 1)).toNat

end

end A280122.P7687755503435346961

/-! ## A280122.P11758674180654727555

`A280124(A056115(n)+21)`
-/

namespace A280122.P11758674180654727555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A056115 n + 21).toNat

end

end A280122.P11758674180654727555

/-! ## A280122.P4463710309648215187

`A280124(A167499(n+4)+1)`
-/

namespace A280122.P4463710309648215187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A167499 (n + 4) + 1).toNat

end

end A280122.P4463710309648215187

/-! ## A280122.P17406751637477257288

`A280124(A167614(n+4)+3)`
-/

namespace A280122.P17406751637477257288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A167614 (n + 4) + 3).toNat

end

end A280122.P17406751637477257288

/-! ## A280122.P18229394820467456368

`A280124(A000217(n+5)+6)`
-/

namespace A280122.P18229394820467456368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A000217 (n + 5) + 6).toNat

end

end A280122.P18229394820467456368

/-!
# A280123: Number of nX7 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280123, there is no canonical definition to state claims against.
-/

/-! ## A280123.P10315466508363774766

`A280124(A374008(n+1))`
-/

namespace A280123.P10315466508363774766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A374008 (n + 1)).toNat

end

end A280123.P10315466508363774766

/-! ## A280123.P8793758704327369006

`A280124(eq[11, A066657(n)])`
-/

namespace A280123.P8793758704327369006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280123.P8793758704327369006

/-! ## A280123.P9503471054952922236

`A280124(A167614(n+5)+4)`
-/

namespace A280123.P9503471054952922236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A167614 (n + 5) + 4).toNat

end

end A280123.P9503471054952922236

/-! ## A280123.P6482996289140835626

`A280124(eq[6, A002262(n)]+1)`
-/

namespace A280123.P6482996289140835626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280123.P6482996289140835626

/-! ## A280123.P14340967088608052915

`A280124(eq[8, A131818(n+1)])`
-/

namespace A280123.P14340967088608052915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280123.P14340967088608052915

/-!
# A280125: Expansion of Product_{k>=1} 1/((1 - x^(prime(k)^2))*(1 - x^(prime(k)^3))).

The programs for A280125, there is no canonical definition to state claims against.
-/

/-! ## A280125.P1674407155347158859

`A327778(A058348(n+1))+A025872(n)`
-/

namespace A280125.P1674407155347158859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327778 (A058348 (n + 1)).toNat + A025872 n

end

end A280125.P1674407155347158859

/-! ## A280125.P14557251948796582405

`ceil(∑{e}[4^A280586(n), #]/3)`
-/

namespace A280125.P14557251948796582405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A280586 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p : ℕ) : ℚ) / 3⌉

end

end A280125.P14557251948796582405

/-! ## A280125.P14894688641948425753

`A004218(4^A280586(n))`
-/

namespace A280125.P14894688641948425753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A280586 n : ℤ))).toNat

end

end A280125.P14894688641948425753

/-! ## A280125.P6811913014301506716

`A353381(4^A280586(n))`
-/

namespace A280125.P6811913014301506716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A280586 n : ℤ))).toNat

end

end A280125.P6811913014301506716

/-! ## A280125.P15741878991743587315

`A055640(A280586(n)^5)`
-/

namespace A280125.P15741878991743587315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A280586 n ^ 5).toNat

end

end A280125.P15741878991743587315

/-!
# A280126: Expansion of Product_{k>=1} (1 + x^(prime(k)^2))*(1 + x^(prime(k)^3)).

The programs for A280126, there is no canonical definition to state claims against.
-/

/-! ## A280126.P17085197209280310406

`and(A278538(A050932(n)), A369573(n))`
-/

namespace A280126.P17085197209280310406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278538 (A050932 n).toNat) (A369573 n)

end

end A280126.P17085197209280310406

/-! ## A280126.P17359085798075329602

`and(A273945(n+1), A369573(n))`
-/

namespace A280126.P17359085798075329602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273945 (n + 1)) (A369573 n)

end

end A280126.P17359085798075329602

/-! ## A280126.P9499626005376568054

`and(A273947(n+1), A369573(n))`
-/

namespace A280126.P9499626005376568054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273947 (n + 1)) (A369573 n)

end

end A280126.P9499626005376568054

/-! ## A280126.P10646055968399193950

`and(A273948(n+1), A369573(n))`
-/

namespace A280126.P10646055968399193950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273948 (n + 1)) (A369573 n)

end

end A280126.P10646055968399193950

/-! ## A280126.P6820586819588346664

`and(A294133(n+1), A369573(n))`
-/

namespace A280126.P6820586819588346664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294133 (n + 1)) (A369573 n)

end

end A280126.P6820586819588346664

/-!
# A280127: Expansion of Product_{k>=2} 1/(1 - mu(k)^2*x^k), where mu(k) is the Moebius function (A008683).

The programs for A280127, there is no canonical definition to state claims against.
-/

/-! ## A280127.P6604130398015751615

`floor(sqrt(∑[(n+1)/A265800(n+2)]^n))`
-/

namespace A280127.P6604130398015751615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A265800 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) ^ n : ℚ) : ℝ)⌋

end

end A280127.P6604130398015751615

/-! ## A280127.P4681117694970349207

`floor(sqrt(A350948(3*n+1)/A190852(n+1)))`
-/

namespace A280127.P4681117694970349207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A350948 (3 * n + 1) : ℚ) / (A190852 (n + 1) : ℚ) : ℝ)⌋

end

end A280127.P4681117694970349207

/-! ## A280127.P15858006031063659915

`A048766(A125896(n)-n)`
-/

namespace A280127.P15858006031063659915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A125896 n - (n : ℤ)).toNat

end

end A280127.P15858006031063659915

/-! ## A280127.P12310056446504483783

`A048766(A020992(n+1)-n)`
-/

namespace A280127.P12310056446504483783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A020992 (n + 1) - (n : ℤ)).toNat

end

end A280127.P12310056446504483783

/-! ## A280127.P673784909923792734

`A048766(A326081(abs(1-n))-1)`
-/

namespace A280127.P673784909923792734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A326081 |1 - (n : ℤ)|.toNat - 1).toNat

end

end A280127.P673784909923792734

/-!
# A280128: Expansion of Product_{k>=2} (1 + mu(k)^2*x^k), where mu(k) is the Moebius function (A008683).

The programs for A280128, there is no canonical definition to state claims against.
-/

/-! ## A280128.P13825056315893399213

`A087188(n)-a(n-1)` with `a(0)=1`
-/

namespace A280128.P13825056315893399213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087188 n - a (n - 1)

end

end A280128.P13825056315893399213

/-! ## A280128.P10280716383484936386

`abs(∑[A033999(n)*A087188(n)])`
-/

namespace A280128.P10280716383484936386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A087188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A280128.P10280716383484936386

/-! ## A280128.P1704087406909689063

`A157142(n)%2*∑[A033999(n)*A087188(n)]`
-/

namespace A280128.P1704087406909689063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A087188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157142 n) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280128.P1704087406909689063

/-! ## A280128.P15601482366883563936

`(A004442(n)-n)*∑[A033999(n)*A087188(n)]`
-/

namespace A280128.P15601482366883563936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A087188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280128.P15601482366883563936

/-! ## A280128.P9539487050729232578

`∑[A033999(n)*A087188(n)]*A033999(n+2)`
-/

namespace A280128.P9539487050729232578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A087188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 2)

end

end A280128.P9539487050729232578

/-! ## A280128.P13524585843451619741

`∑[A033999(n)*A087188(n)]*A056594(2*n)`
-/

namespace A280128.P13524585843451619741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A087188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A280128.P13524585843451619741

/-!
# A280129: Expansion of Product_{k>=2} (1 + x^(k^2)).

The programs for A280129, there is no canonical definition to state claims against.
-/

/-! ## A280129.P6765610190627202693

`A033461(n)-a(n-1)` with `a(0)=1`
-/

namespace A280129.P6765610190627202693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033461 n - a (n - 1)

end

end A280129.P6765610190627202693

/-! ## A280129.P9539260786305024519

`abs(∑[A033461(n)/A062157(n+1)])`
-/

namespace A280129.P9539260786305024519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033461 n : ℚ) / (A062157 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A280129.P9539260786305024519

/-! ## A280129.P10207404899031687194

`abs(a(n-1)-(A339367(n)+A339366(n)))` with `a(0)=1`
-/

namespace A280129.P10207404899031687194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - (A339367 n + A339366 n)|

end

end A280129.P10207404899031687194

/-! ## A280129.P2104081798315510660

`A276516(n)+2*A339367(n)-a(n-1)` with `a(0)=1`
-/

namespace A280129.P2104081798315510660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276516 n + 2 * A339367 n - a (n - 1)

end

end A280129.P2104081798315510660

/-! ## A280129.P10724734321872741205

`∑[A033461(n)*A033999(n)]*A033999(n)`
-/

namespace A280129.P10724734321872741205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A280129.P10724734321872741205

/-! ## A280129.P17608456697167260432

`abs(∑[A033461(n)*A034947(2*n+1)])`
-/

namespace A280129.P17608456697167260432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n * A034947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A280129.P17608456697167260432

/-! ## A280129.P3112292155751762740

`A034968(A331983(n))+A000038(A005382(n+1))`
-/

namespace A280129.P3112292155751762740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A331983 n).toNat + A000038 (A005382 (n + 1)).toNat

end

end A280129.P3112292155751762740

/-! ## A280129.P2091213840062814477

`A008683(A019546(n+1))²*A034968(A331983(n))`
-/

namespace A280129.P2091213840062814477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A019546 (n + 1)).toNat ^ 2 * A034968 (A331983 n).toNat

end

end A280129.P2091213840062814477

/-! ## A280129.P9074401275115588121

`A034968(A331983(n))^A014963(A023057(n+1))`
-/

namespace A280129.P9074401275115588121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034968 (A331983 n).toNat : ℚ) ^ (A014963 (A023057 (n + 1)).toNat : ℤ)

end

end A280129.P9074401275115588121

/-! ## A280129.P7906554112407409889

`∑{e}[A276076(A331983(n)), #]`
-/

namespace A280129.P7906554112407409889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (A331983 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A280129.P7906554112407409889

/-! ## A280129.P14850712604271485802

`A000265(A130321(n))*A034968(A331983(n))`
-/

namespace A280129.P14850712604271485802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A130321 n).toNat * A034968 (A331983 n).toNat

end

end A280129.P14850712604271485802

/-! ## A280129.P131594278109404065

`A001221(A011756(n+1))*A034968(A331983(n))`
-/

namespace A280129.P131594278109404065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A011756 (n + 1)).toNat * A034968 (A331983 n).toNat

end

end A280129.P131594278109404065

/-! ## A280129.P6971096036095947128

`A034968(A331983(n)%A291791(n+1))`
-/

namespace A280129.P6971096036095947128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.tmod (A331983 n) (A291791 (n + 1))).toNat

end

end A280129.P6971096036095947128

/-! ## A280129.P11949640425690344910

`A034968(A331983(n)%A198277(n))`
-/

namespace A280129.P11949640425690344910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.tmod (A331983 n) (A198277 n)).toNat

end

end A280129.P11949640425690344910

/-! ## A280129.P4369796592171579738

`A001222(A077317(n+1))*A034968(A331983(n))`
-/

namespace A280129.P4369796592171579738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077317 (n + 1)).toNat * A034968 (A331983 n).toNat

end

end A280129.P4369796592171579738

/-!
# A280130: Expansion of Product_{k>=2} (1 + x^(k^3)).

The programs for A280130, there is no canonical definition to state claims against.
-/

/-! ## A280130.P11913013191546680012

`A279329(n)-a(n-1)` with `a(0)=1`
-/

namespace A280130.P11913013191546680012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A279329 n - a (n - 1)

end

end A280130.P11913013191546680012

/-! ## A280130.P14347443976662621756

`A034968(A331845(n))-a(n-1)` with `a(0)=1`
-/

namespace A280130.P14347443976662621756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034968 (A331845 n).toNat - a (n - 1)

end

end A280130.P14347443976662621756

/-! ## A280130.P14874485729323525184

`dr(∑[A279484(n)]^A014963(n+2))`
-/

namespace A280130.P14874485729323525184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A014963 (n + 2) : ℤ)))

end

end A280130.P14874485729323525184

/-! ## A280130.P16288047850599414266

`sqrt(∑[A279484(n)]^A079612(n+1))`
-/

namespace A280130.P16288047850599414266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A079612 (n + 1) : ℤ) : ℝ)

end

end A280130.P16288047850599414266

/-! ## A280130.P13561059439475185795

`lcm(∑[A279484(n)], A007913((n+2)²))`
-/

namespace A280130.P13561059439475185795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A007913 ((n + 2) ^ 2))

end

end A280130.P13561059439475185795

/-! ## A280130.P11416958303452774692

`A000035(A117142(n+1))*A279329(n)`
-/

namespace A280130.P11416958303452774692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A117142 (n + 1)).toNat * A279329 n

end

end A280130.P11416958303452774692

/-! ## A280130.P16282098761807694810

`lcm(A124764(lcm(6, A331845(n))), A279484(n+1))`
-/

namespace A280130.P16282098761807694810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124764 (Int.lcm 6 (A331845 n))) (A279484 (n + 1))

end

end A280130.P16282098761807694810

/-! ## A280130.P4279350256621497174

`(∑[A279484(n)]^n)²`
-/

namespace A280130.P4279350256621497174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n) ^ 2

end

end A280130.P4279350256621497174

/-! ## A280130.P60678499394723638

`∑[A279484(n)]^A002378(n)`
-/

namespace A280130.P60678499394723638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A002378 n : ℤ)

end

end A280130.P60678499394723638

/-! ## A280130.P16089557184597446487

`∑[A279484(n)]^A004277(n)`
-/

namespace A280130.P16089557184597446487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A004277 n : ℤ)

end

end A280130.P16089557184597446487

/-! ## A280130.P5469841466382461100

`∑[A279484(n)]^A008574(n)`
-/

namespace A280130.P5469841466382461100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A008574 n : ℤ)

end

end A280130.P5469841466382461100

/-! ## A280130.P6521676396232083293

`∑[A279484(n)]^A008586(n)`
-/

namespace A280130.P6521676396232083293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A008586 n : ℤ)

end

end A280130.P6521676396232083293

/-! ## A280130.P11530001909167266216

`∑[A279484(n)]^A013609(n)`
-/

namespace A280130.P11530001909167266216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A013609 n : ℤ)

end

end A280130.P11530001909167266216

/-! ## A280130.P5180879125045868980

`∑[A279484(n)]^A016825(n)`
-/

namespace A280130.P5180879125045868980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A016825 n : ℤ)

end

end A280130.P5180879125045868980

/-! ## A280130.P2973477866603529428

`∑[A279484(n)]^A016934(n)`
-/

namespace A280130.P2973477866603529428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A016934 n : ℤ)

end

end A280130.P2973477866603529428

/-! ## A280130.P12869757610673282886

`∑[A279484(n)]^A046092(n)`
-/

namespace A280130.P12869757610673282886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A046092 n : ℤ)

end

end A280130.P12869757610673282886

/-! ## A280130.P17735718077485750153

`∑[A279484(n)]^A260955(n)`
-/

namespace A280130.P17735718077485750153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A260955 n : ℤ)

end

end A280130.P17735718077485750153

/-! ## A280130.P1806529597974775653

`A279329(A279329(n)^51+n)`
-/

namespace A280130.P1806529597974775653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A279329 n ^ 51 + (n : ℤ)).toNat

end

end A280130.P1806529597974775653

/-! ## A280130.P5805294226415052811

`∑[A279484(n)]^lcm(2, A000040(n+1))`
-/

namespace A280130.P5805294226415052811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Int.lcm 2 (A000040 (n + 1))

end

end A280130.P5805294226415052811

/-!
# A280131: Partial sums of A029940 (Product_{d|n} phi(d)).

The programs for A280131, the canonical program `A280131.P12740549784646320561` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280131 has offset 1).

The definition of A280131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280131.P12740549784646320561

`∑[A029940(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280131

/-- `∑[A029940(n+1)]` -/
def P12740549784646320561.Spec : Prop :=
  ∀ n, P12740549784646320561.a n = A280131 (n + 1)

theorem P12740549784646320561.correct : P12740549784646320561.Spec := by
  intro n
  simp only [A280131, Nat.add_sub_cancel]

end A280131

/-! ## A280131.P17464006172191160832

`∑[∏{d}[n+1, A000010(#)]]`
-/

namespace A280131.P17464006172191160832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280131.P17464006172191160832

namespace A280131

/-- `∑[∏{d}[n+1, A000010(#)]]` -/
def P17464006172191160832.Spec : Prop :=
  ∀ n, P17464006172191160832.a n = A280131 (n + 1)

end A280131

/-! ## A280131.P15801252454531223119

`∑[∏{d}[n+1, A002618(#)/#]]`
-/

namespace A280131.P15801252454531223119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (A002618 d : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280131.P15801252454531223119

namespace A280131

/-- `∑[∏{d}[n+1, A002618(#)/#]]` -/
def P15801252454531223119.Spec : Prop :=
  ∀ n, P15801252454531223119.a n = (A280131 (n + 1) : ℚ)

end A280131

/-! ## A280131.P184621217561540105

`∑[∏{d}[n+1, A318830(#)+A049559(#)]]`
-/

namespace A280131.P184621217561540105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (A318830 d + A049559 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280131.P184621217561540105

namespace A280131

/-- `∑[∏{d}[n+1, A318830(#)+A049559(#)]]` -/
def P184621217561540105.Spec : Prop :=
  ∀ n, P184621217561540105.a n = A280131 (n + 1)

end A280131

/-! ## A280131.P10789727329081039580

`∑[∏{d}[n+1, A065387(#)-A000203(#)]]`
-/

namespace A280131.P10789727329081039580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (A065387 d - A000203 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280131.P10789727329081039580

namespace A280131

/-- `∑[∏{d}[n+1, A065387(#)-A000203(#)]]` -/
def P10789727329081039580.Spec : Prop :=
  ∀ n, P10789727329081039580.a n = A280131 (n + 1)

theorem P10789727329081039580.correct : P10789727329081039580.Spec := by
  intro n
  simp only [A280131, Nat.add_sub_cancel, A280131.P10789727329081039580.f2, A280131.P10789727329081039580.f1, A280131.P10789727329081039580.a, A280131.P12740549784646320561.f1, A280131.P12740549784646320561.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A029940, A029940.P9006398651141651236.f1, A029940.P9006398651141651236.a, A065387, A065387.P11284875715279330998.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280131

/-! ## A280131.P15091180431545685212

`∑[∏{d}[n+1, A054522(A000217(#))]]`
-/

namespace A280131.P15091180431545685212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A054522 (A000217 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280131.P15091180431545685212

namespace A280131

/-- `∑[∏{d}[n+1, A054522(A000217(#))]]` -/
def P15091180431545685212.Spec : Prop :=
  ∀ n, P15091180431545685212.a n = A280131 (n + 1)

end A280131

/-!
# A280132: Partial products of A029940 (Product_{d|n} phi(d)).

The programs for A280132, there is no canonical definition to state claims against.
-/

/-! ## A280132.P14271440527943795866

`∏[A029940(n+1)]`
-/

namespace A280132.P14271440527943795866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280132.P14271440527943795866

/-! ## A280132.P8912480280175260242

`∏[∏{d}[n+1, A000010(#)]]`
-/

namespace A280132.P8912480280175260242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280132.P8912480280175260242

/-! ## A280132.P8688619637128370211

`∏[∏{d}[n+1, A057828(#²)]]`
-/

namespace A280132.P8688619637128370211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A057828 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280132.P8688619637128370211

/-! ## A280132.P6690706724148304577

`a(n-1)*A029940(1-(n-2*n))` with `a(0)=1`
-/

namespace A280132.P6690706724148304577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A029940 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A280132.P6690706724148304577

/-! ## A280132.P10788442153768717784

`∏[∏{d}[n+1, A318830(#)+A049559(#)]]`
-/

namespace A280132.P10788442153768717784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (A318830 d + A049559 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280132.P10788442153768717784

/-!
# A280133: Partial products of A057661 (Sum_{d|n} psi(d)).

The programs for A280133, there is no canonical definition to state claims against.
-/

/-! ## A280133.P4716988444633268647

`∏[A057661(n+1)]`
-/

namespace A280133.P4716988444633268647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280133.P4716988444633268647

/-! ## A280133.P4511894945955083666

`∏[A332049(n+1)+1]`
-/

namespace A280133.P4511894945955083666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332049 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280133.P4511894945955083666

/-! ## A280133.P6151313145812092614

`∏[round(A057660(n+1)/2)]`
-/

namespace A280133.P6151313145812092614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057660 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280133.P6151313145812092614

/-! ## A280133.P1769742941146519833

`a(n-1)*∑{d}[n+1, A023896(#)]` with `a(0)=1, a(1)=2`
-/

namespace A280133.P1769742941146519833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * (∑ d ∈ Nat.divisors (f1 n), A023896 d)

end

end A280133.P1769742941146519833

/-! ## A280133.P14802148370766676363

`∏[A000463(A057660(n+1))]`
-/

namespace A280133.P14802148370766676363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A057660 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280133.P14802148370766676363

/-!
# A280134: Number of primes of the form 4(n - k - 1) + 3 where 0 <= k and prime of the form 4k + 3 <= n.

The programs for A280134, there is no canonical definition to state claims against.
-/

/-! ## A280134.P3161968009732026442

`A045347(A005712(n+2))%A342651(3*(n+2))`
-/

namespace A280134.P3161968009732026442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045347 (A005712 (n + 2)).toNat) (A342651 (3 * (n + 2)))

end

end A280134.P3161968009732026442

/-!
# A280135: Negative continued fraction of Pi (also called negative continued fraction expansion of Pi).

The programs for A280135, there is no canonical definition to state claims against.
-/

/-! ## A280135.P7438348084789019483

`ceil(ratio[A046956(n)])`
-/

namespace A280135.P7438348084789019483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A280135.P7438348084789019483

/-!
# A280136: Negative continued fraction of e (or negative continued fraction expansion of e).

The programs for A280136, there is no canonical definition to state claims against.
-/

/-! ## A280136.P8776778176320166889

`Δ[comp[A358511(n+2)-1]]+1`
-/

namespace A280136.P8776778176320166889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358511 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A280136.P8776778176320166889

/-!
# A280137: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A280137, there is no canonical definition to state claims against.
-/

/-! ## A280137.P2113681950319347056

`A007088(A280139(n))`
-/

namespace A280137.P2113681950319347056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280139 n).toNat

end

end A280137.P2113681950319347056

/-! ## A280137.P2433013233884103599

`A185544(2*A280139(n))`
-/

namespace A280137.P2433013233884103599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280139 n).toNat

end

end A280137.P2433013233884103599

/-! ## A280137.P17925493809381113691

`A282276(n^A238010(n+4))`
-/

namespace A280137.P17925493809381113691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282276 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A238010 (n + 4) : ℤ))).toNat

end

end A280137.P17925493809381113691

/-!
# A280138: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A280138, there is no canonical definition to state claims against.
-/

/-! ## A280138.P17344176471290916212

`A007088(A280140(n))`
-/

namespace A280138.P17344176471290916212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280140 n).toNat

end

end A280138.P17344176471290916212

/-! ## A280138.P367138416153472055

`A185544(2*A280140(n))`
-/

namespace A280138.P367138416153472055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280140 n).toNat

end

end A280138.P367138416153472055

/-!
# A280139: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A280139, there is no canonical definition to state claims against.
-/

/-! ## A280139.P16166084485388442162

`A280124(A114712(3*n))+A279599(n)`
-/

namespace A280139.P16166084485388442162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280124 (A114712 (3 * n)).toNat + A279599 n

end

end A280139.P16166084485388442162

/-! ## A280139.P7917813233119878885

`or(A053735(A337893(n+2)), A279599(n))`
-/

namespace A280139.P7917813233119878885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053735 (A337893 (n + 2)).toNat) (A279599 n)

end

end A280139.P7917813233119878885

/-! ## A280139.P14352865564198214339

`or(A279599(n), A339627(A279611(3*n+1)))`
-/

namespace A280139.P14352865564198214339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279599 n) (A339627 (A279611 (3 * n + 1)).toNat)

end

end A280139.P14352865564198214339

/-!
# A280140: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A280140, there is no canonical definition to state claims against.
-/

/-! ## A280140.P1912176525664540938

`or(A053200(A279563(n)), A279600(n))`
-/

namespace A280140.P1912176525664540938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053200 (A279563 n).toNat) (A279600 n)

end

end A280140.P1912176525664540938

/-!
# A280141: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A280141, there is no canonical definition to state claims against.
-/

/-! ## A280141.P12160236350780586969

`A007088(A280143(n))`
-/

namespace A280141.P12160236350780586969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280143 n).toNat

end

end A280141.P12160236350780586969

/-! ## A280141.P1629232152317617491

`A185544(2*A280143(n))`
-/

namespace A280141.P1629232152317617491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280143 n).toNat

end

end A280141.P1629232152317617491

/-! ## A280141.P9503085058405921509

`A185544(A280143(n)+A280143(n))`
-/

namespace A280141.P9503085058405921509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A280143 n + A280143 n).toNat

end

end A280141.P9503085058405921509

/-!
# A280142: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A280142, there is no canonical definition to state claims against.
-/

/-! ## A280142.P6471590234092423467

`A007088(A280144(n))`
-/

namespace A280142.P6471590234092423467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280144 n).toNat

end

end A280142.P6471590234092423467

/-! ## A280142.P3652551913640366555

`A185544(2*A280144(n))`
-/

namespace A280142.P3652551913640366555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280144 n).toNat

end

end A280142.P3652551913640366555

/-! ## A280142.P15725699715846867126

`A280141(n)^A306860(n)`
-/

namespace A280142.P15725699715846867126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280141 n : ℚ) ^ (A306860 n : ℤ)

end

end A280142.P15725699715846867126

/-! ## A280142.P12827538701691816183

`A280141(n)^Δ[A029970(n+1)]`
-/

namespace A280142.P12827538701691816183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029970 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280141 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A280142.P12827538701691816183

/-! ## A280142.P11867346175852895814

`A280141(n)^A000034(A094033(n))`
-/

namespace A280142.P11867346175852895814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280141 n : ℚ) ^ (A000034 (A094033 n).toNat : ℤ)

end

end A280142.P11867346175852895814

/-!
# A280144: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A280144, there is no canonical definition to state claims against.
-/

/-! ## A280144.P8062248978583448399

`A280143(n)^A000034(A094033(n))`
-/

namespace A280144.P8062248978583448399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280143 n : ℚ) ^ (A000034 (A094033 n).toNat : ℤ)

end

end A280144.P8062248978583448399

/-! ## A280144.P11876549102661791351

`A280143(n)^A356224(A017221(n))`
-/

namespace A280144.P11876549102661791351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280143 n : ℚ) ^ (A356224 (A017221 n).toNat : ℤ)

end

end A280144.P11876549102661791351

/-! ## A280144.P1645295459872111625

`A091684(A280143(n)^A286574(n))`
-/

namespace A280144.P1645295459872111625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (SequenceMachineLib.roundAway ((A280143 n : ℚ) ^ (A286574 n : ℤ))).toNat

end

end A280144.P1645295459872111625

/-! ## A280144.P9634793623722386869

`A130481(A280143(n)^A286574(n))`
-/

namespace A280144.P9634793623722386869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (SequenceMachineLib.roundAway ((A280143 n : ℚ) ^ (A286574 n : ℤ))).toNat

end

end A280144.P9634793623722386869

/-! ## A280144.P5049601418214193096

`A280143(n)*A349059(A146704(n+1))`
-/

namespace A280144.P5049601418214193096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280143 n * A349059 (A146704 (n + 1)).toNat

end

end A280144.P5049601418214193096

/-!
# A280145: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A280145, there is no canonical definition to state claims against.
-/

/-! ## A280145.P3825389353394617400

`A007088(A280147(n))`
-/

namespace A280145.P3825389353394617400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280147 n).toNat

end

end A280145.P3825389353394617400

/-! ## A280145.P2957062342021430502

`A305989(A280148(n)/A000034(n))`
-/

namespace A280145.P2957062342021430502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A280148 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A280145.P2957062342021430502

/-!
# A280146: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A280146, there is no canonical definition to state claims against.
-/

/-! ## A280146.P11558362070994595871

`A007088(A280148(n))`
-/

namespace A280146.P11558362070994595871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280148 n).toNat

end

end A280146.P11558362070994595871

/-! ## A280146.P8119373690249026133

`A007088(and(A284139(n+4), A284139(n)))`
-/

namespace A280146.P8119373690249026133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A284139 (n + 4)) (A284139 n)).toNat

end

end A280146.P8119373690249026133

/-!
# A280147: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A280147, there is no canonical definition to state claims against.
-/

/-! ## A280147.P9891680965087448628

`and(A126646(n), A264618(A280148(n)))`
-/

namespace A280147.P9891680965087448628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A280148 n).toNat)

end

end A280147.P9891680965087448628

/-! ## A280147.P13843640475452655054

`and(A264618(A280148(n)), A284182(n))`
-/

namespace A280147.P13843640475452655054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A280148 n).toNat) (A284182 n)

end

end A280147.P13843640475452655054

/-! ## A280147.P2564354846840304587

`and(A264618(A280148(n)), A284482(n))`
-/

namespace A280147.P2564354846840304587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A280148 n).toNat) (A284482 n)

end

end A280147.P2564354846840304587

/-! ## A280147.P9204226735832508612

`or(A000537(A124120(n+1)), A052992(n))`
-/

namespace A280147.P9204226735832508612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000537 (A124120 (n + 1)).toNat) (A052992 n)

end

end A280147.P9204226735832508612

/-! ## A280147.P3968558099304484893

`A325401(A280148(n))`
-/

namespace A280147.P3968558099304484893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A280148 n).toNat

end

end A280147.P3968558099304484893

/-!
# A280148: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A280148, there is no canonical definition to state claims against.
-/

/-! ## A280148.P2993992279023295105

`and(A000027(A284139(n+4)), A284139(n))`
-/

namespace A280148.P2993992279023295105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A284139 (n + 4)).toNat) (A284139 n)

end

end A280148.P2993992279023295105

/-! ## A280148.P11165824467968857838

`A126646(n+1)-A279751(A077168(n))`
-/

namespace A280148.P11165824467968857838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A279751 (A077168 n).toNat

end

end A280148.P11165824467968857838

/-! ## A280148.P11850565777467418628

`A126646(A077168(n))%A279751(n+1)`
-/

namespace A280148.P11850565777467418628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 (A077168 n).toNat) (A279751 (n + 1))

end

end A280148.P11850565777467418628

/-!
# A280149: Numbers k such that 3^k - 2^k is not squarefree.

The programs for A280149, there is no canonical definition to state claims against.
-/

/-! ## A280149.P12423739340614461361

`lt[A000302(A217928(n)), A300121(n+1)]`
-/

namespace A280149.P12423739340614461361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A217928 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280149.P12423739340614461361

/-!
# A280150: Primes p such that 68^(p-1) == 1 (mod p^2).

The programs for A280150, there is no canonical definition to state claims against.
-/

/-! ## A280150.P4800267628973776617

`A099382(A360696(n)+n)`
-/

namespace A280150.P4800267628973776617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099382 (A360696 n + (n : ℤ)).toNat

end

end A280150.P4800267628973776617

/-!
# A280151: Expansion of Product_{k>=1} 1/(1 - floor(1/omega(2*k+1))*x^(2*k+1)), where omega() is the number of distinct prime factors (A001221).

The programs for A280151, there is no canonical definition to state claims against.
-/

/-! ## A280151.P882114665602638293

`∑[(-1)^n*∑[A329097(n)]]`
-/

namespace A280151.P882114665602638293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280151.P882114665602638293

/-! ## A280151.P11640929268468834404

`∑[∑[A329097(n)]*A033999(n)]`
-/

namespace A280151.P11640929268468834404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280151.P11640929268468834404

/-! ## A280151.P146949341386638909

`∑[∑[A329097(n)]*A056594(2*n)]`
-/

namespace A280151.P146949341386638909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280151.P146949341386638909

/-! ## A280151.P6101543550774311731

`∑[∑[A329097(n)]*A057077(2*n)]`
-/

namespace A280151.P6101543550774311731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280151.P6101543550774311731

/-! ## A280151.P10162071277466824290

`A000196(A263150(n)%A276625(3*n+5))`
-/

namespace A280151.P10162071277466824290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A263150 n) (A276625 (3 * n + 5))).toNat

end

end A280151.P10162071277466824290

/-!
# A280152: Expansion of Product_{k>=1} (1 + floor(1/omega(2*k+1))*x^(2*k+1)), where omega() is the number of distinct prime factors (A001221).

The programs for A280152, there is no canonical definition to state claims against.
-/

/-! ## A280152.P14930990019334673862

`A352166(n)-a(n-1)` with `a(0)=1`
-/

namespace A280152.P14930990019334673862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A352166 n - a (n - 1)

end

end A280152.P14930990019334673862

/-! ## A280152.P4095419500030571632

`A000007(n)+Δ[A106244(abs(1-n))]`
-/

namespace A280152.P4095419500030571632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A280152.P4095419500030571632

/-! ## A280152.P10063936518891993538

`Δ[A106244(abs(1-n))]+1-A057427(n)`
-/

namespace A280152.P10063936518891993538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A057427 n)

end

end A280152.P10063936518891993538

/-! ## A280152.P5494779971224200791

`Δ[A106244(abs(1-n))]+A008458(n)%2`
-/

namespace A280152.P5494779971224200791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A008458 n) 2

end

end A280152.P5494779971224200791

/-! ## A280152.P128566650288494340

`Δ[A106244(abs(1-n))]+(A004273(n)+1)%2`
-/

namespace A280152.P128566650288494340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A004273 n + 1) 2

end

end A280152.P128566650288494340

/-! ## A280152.P2730649475831347440

`Δ[A106244(abs(1-n))]^(A106864(n+1)%2)`
-/

namespace A280152.P2730649475831347440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 |1 - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A106864 (n + 1)) 2 : ℤ)

end

end A280152.P2730649475831347440

/-! ## A280152.P14979549244972865777

`Δ[A106244(abs(1-n))-A057428(n)]`
-/

namespace A280152.P14979549244972865777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 |1 - (n : ℤ)|.toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280152.P14979549244972865777

/-! ## A280152.P11290555190267540319

`A352166(n+1)+A106244(n)-A106244(n+1)`
-/

namespace A280152.P11290555190267540319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352166 (n + 1) + (A106244 n - A106244 (n + 1))

end

end A280152.P11290555190267540319

/-! ## A280152.P9301557153614262903

`A039975(2*n+1)+Δ[A106244(abs(1-n))]`
-/

namespace A280152.P9301557153614262903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A280152.P9301557153614262903

/-! ## A280152.P6213956001994344868

`Δ[A106244(abs(1-n))%A000984(n)]`
-/

namespace A280152.P6213956001994344868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106244 |1 - (n : ℤ)|.toNat) (A000984 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280152.P6213956001994344868

/-!
# A280153: Number of ways to write n as x^3 + 2*y^3 + z^2 + 4^k, where x is a positive integer and y,z,k are nonnegative integers.

The programs for A280153, there is no canonical definition to state claims against.
-/

/-! ## A280153.P17200647910685036051

`A037830(xor(8, A232237(n+1)))`
-/

namespace A280153.P17200647910685036051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (Int.xor 8 (A232237 (n + 1))).toNat

end

end A280153.P17200647910685036051

/-! ## A280153.P8133327472397911946

`A302790(or(2*n+1, A084214(n)))`
-/

namespace A280153.P8133327472397911946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302790 (Int.lor (2 * n + 1 : ℤ) (A084214 n)).toNat

end

end A280153.P8133327472397911946

/-! ## A280153.P2561984867496311517

`A001221(∑[A051597(n)^A047110(n)])`
-/

namespace A280153.P2561984867496311517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051597 n : ℚ) ^ (A047110 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A280153.P2561984867496311517

/-! ## A280153.P17279847582912466767

`A001221(A056040(n)+A037014(n+1))`
-/

namespace A280153.P17279847582912466767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056040 n + A037014 (n + 1)).toNat

end

end A280153.P17279847582912466767

/-! ## A280153.P8780269110082853006

`A001221(or(A145004(n), A319436(n+1)))`
-/

namespace A280153.P8780269110082853006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A145004 n) (A319436 (n + 1))).toNat

end

end A280153.P8780269110082853006

/-!
# A280154: a(n) = 5*Lucas(n).

The programs for A280154, the canonical program `A280154.P2275525319764460113` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280154 has offset 0).

The definition of A280154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*A000032(n)` (program `A280154.P2275525319764460113`, by `A280154.P2275525319764460113.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280154.P15772124211533309739

`a(n-1)+a(n-2)` with `a(0)=10, a(1)=5`
-/

namespace A280154.P15772124211533309739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 5] fun n a =>
  a (n - 1) + a (n - 2)

end

end A280154.P15772124211533309739

namespace A280154

/-- `a(n-1)+a(n-2)` -/
def P15772124211533309739.Spec : Prop :=
  ∀ n, (P15772124211533309739.a n : ℤ) = A280154 n

end A280154

/-! ## A280154.P2275525319764460113

`5*A000032(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A280154

/-- `5*A000032(n)` -/
def P2275525319764460113.Spec : Prop :=
  ∀ n, P2275525319764460113.a n = A280154 n

theorem P2275525319764460113.correct : P2275525319764460113.Spec := by
  intro n
  simp only [A280154]

end A280154

/-! ## A280154.P3750481229330997596

`ogf((-10+5x)/(-1+x+x^2))`
-/

namespace A280154.P3750481229330997596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -5] [1, -1, -1] n

end

end A280154.P3750481229330997596

namespace A280154

/-- `ogf((-10+5x)/(-1+x+x^2))` -/
def P3750481229330997596.Spec : Prop :=
  ∀ n, P3750481229330997596.a n = A280154 n

end A280154

/-! ## A280154.P2925306495008449888

`a(n-1)-floor(-a(n-2))` with `a(0)=10, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A280154.P2925306495008449888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A280154.P2925306495008449888

namespace A280154

/-- `a(n-1)-floor(-a(n-2))` -/
def P2925306495008449888.Spec : Prop :=
  ∀ n, P2925306495008449888.a n = A280154 n

end A280154

/-! ## A280154.P13797599242843222837

`a(n-1)-ceil(-a(n-2))` with `a(0)=10, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A280154.P13797599242843222837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A280154.P13797599242843222837

namespace A280154

/-- `a(n-1)-ceil(-a(n-2))` -/
def P13797599242843222837.Spec : Prop :=
  ∀ n, P13797599242843222837.a n = A280154 n

end A280154

/-! ## A280154.P18231738776280661115

`a(n-1)-round(-a(n-2))` with `a(0)=10, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A280154.P18231738776280661115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A280154.P18231738776280661115

namespace A280154

/-- `a(n-1)-round(-a(n-2))` -/
def P18231738776280661115.Spec : Prop :=
  ∀ n, P18231738776280661115.a n = A280154 n

end A280154

/-! ## A280154.P14728891654899839229

`5*(A001612(n)-1)`
-/

namespace A280154.P14728891654899839229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A001612 n - 1)

end

end A280154.P14728891654899839229

namespace A280154

/-- `5*(A001612(n)-1)` -/
def P14728891654899839229.Spec : Prop :=
  ∀ n, P14728891654899839229.a n = A280154 n

end A280154

/-! ## A280154.P10070406905430661086

`5*A329723(n+2)`
-/

namespace A280154.P10070406905430661086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A329723 (n + 2)

end

end A280154.P10070406905430661086

namespace A280154

/-- `5*A329723(n+2)` -/
def P10070406905430661086.Spec : Prop :=
  ∀ n, P10070406905430661086.a n = A280154 n

end A280154

/-! ## A280154.P5788468152929924613

`5*(A000211(n)-2)`
-/

namespace A280154.P5788468152929924613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000211 n - 2)

end

end A280154.P5788468152929924613

namespace A280154

/-- `5*(A000211(n)-2)` -/
def P5788468152929924613.Spec : Prop :=
  ∀ n, P5788468152929924613.a n = A280154 n

end A280154

/-! ## A280154.P16920337108272309647

`5*A127218(2*n)`
-/

namespace A280154.P16920337108272309647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A127218 (2 * n)

end

end A280154.P16920337108272309647

namespace A280154

/-- `5*A127218(2*n)` -/
def P16920337108272309647.Spec : Prop :=
  ∀ n, P16920337108272309647.a n = A280154 n

end A280154

/-! ## A280154.P10315717305507709233

`5*A303427(2*n)`
-/

namespace A280154.P10315717305507709233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A303427 (2 * n)

end

end A280154.P10315717305507709233

namespace A280154

/-- `5*A303427(2*n)` -/
def P10315717305507709233.Spec : Prop :=
  ∀ n, P10315717305507709233.a n = A280154 n

end A280154

/-! ## A280154.P7606624540582689942

`5/4*A156279(n)`
-/

namespace A280154.P7606624540582689942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A156279 n : ℚ)

end

end A280154.P7606624540582689942

namespace A280154

/-- `5/4*A156279(n)` -/
def P7606624540582689942.Spec : Prop :=
  ∀ n, P7606624540582689942.a n = (A280154 n : ℚ)

end A280154

/-! ## A280154.P4792185677675487533

`lcm(5, A061084(n+1))`
-/

namespace A280154.P4792185677675487533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A061084 (n + 1))

end

end A280154.P4792185677675487533

namespace A280154

/-- `lcm(5, A061084(n+1))` -/
def P4792185677675487533.Spec : Prop :=
  ∀ n, (P4792185677675487533.a n : ℤ) = A280154 n

end A280154

/-! ## A280154.P1138148049660988180

`5*A090244(2*n+1)`
-/

namespace A280154.P1138148049660988180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A090244 (2 * n + 1)

end

end A280154.P1138148049660988180

namespace A280154

/-- `5*A090244(2*n+1)` -/
def P1138148049660988180.Spec : Prop :=
  ∀ n, P1138148049660988180.a n = A280154 n

end A280154

/-! ## A280154.P18203859011939000807

`5*A302126(2*n+1)`
-/

namespace A280154.P18203859011939000807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A302126 (2 * n + 1)

end

end A280154.P18203859011939000807

namespace A280154

/-- `5*A302126(2*n+1)` -/
def P18203859011939000807.Spec : Prop :=
  ∀ n, P18203859011939000807.a n = A280154 n

end A280154

/-! ## A280154.P10188595390485702029

`A156279(n)+A000032(n)`
-/

namespace A280154.P10188595390485702029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A000032 n

end

end A280154.P10188595390485702029

namespace A280154

/-- `A156279(n)+A000032(n)` -/
def P10188595390485702029.Spec : Prop :=
  ∀ n, P10188595390485702029.a n = A280154 n

end A280154

/-! ## A280154.P13799858082423771445

`A022088(n+1)+Δ[A022088(n)]`
-/

namespace A280154.P13799858082423771445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (n + 1) + (f1 (n + 1) - f1 n)

end

end A280154.P13799858082423771445

namespace A280154

/-- `A022088(n+1)+Δ[A022088(n)]` -/
def P13799858082423771445.Spec : Prop :=
  ∀ n, P13799858082423771445.a n = A280154 n

end A280154

/-! ## A280154.P10230924271083409047

`(A000204(n+2)-A000204(n+1))*5`
-/

namespace A280154.P10230924271083409047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 2) - A000204 (n + 1)) * 5

end

end A280154.P10230924271083409047

namespace A280154

/-- `(A000204(n+2)-A000204(n+1))*5` -/
def P10230924271083409047.Spec : Prop :=
  ∀ n, P10230924271083409047.a n = A280154 n

end A280154

/-! ## A280154.P2837905843312441804

`A022086(n+1)+A022090(n+1)-A022088(n)`
-/

namespace A280154.P2837905843312441804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (n + 1) + (A022090 (n + 1) - A022088 n)

end

end A280154.P2837905843312441804

namespace A280154

/-- `A022086(n+1)+A022090(n+1)-A022088(n)` -/
def P2837905843312441804.Spec : Prop :=
  ∀ n, P2837905843312441804.a n = A280154 n

end A280154

/-! ## A280154.P4791707001212680647

`A022087(n+1)+A022089(n+1)-A022088(n)`
-/

namespace A280154.P4791707001212680647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 1) + (A022089 (n + 1) - A022088 n)

end

end A280154.P4791707001212680647

namespace A280154

/-- `A022087(n+1)+A022089(n+1)-A022088(n)` -/
def P4791707001212680647.Spec : Prop :=
  ∀ n, P4791707001212680647.a n = A280154 n

end A280154

/-!
# A280155: Number of n X 2 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280155, there is no canonical definition to state claims against.
-/

/-! ## A280155.P12986374593827538729

`A280161(∑[n+1]+2)`
-/

namespace A280155.P12986374593827538729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280155.P12986374593827538729

/-! ## A280155.P18274785008623203840

`record[A010054(n)*A280161(n+2)]`
-/

namespace A280155.P18274785008623203840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A280161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280155.P18274785008623203840

/-! ## A280155.P7382864874360695553

`record[char[A000124(n)]*A280161(n+1)]`
-/

namespace A280155.P7382864874360695553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A280161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280155.P7382864874360695553

/-! ## A280155.P2608332649871957502

`record[A280161(∑[A152271(n)])]`
-/

namespace A280155.P2608332649871957502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280155.P2608332649871957502

/-! ## A280155.P9704058686083637927

`record[A280161(A193739(n)+n)]`
-/

namespace A280155.P9704058686083637927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A193739 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280155.P9704058686083637927

/-!
# A280156: Number of nX3 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280156, there is no canonical definition to state claims against.
-/

/-! ## A280156.P11171882506988962240

`A280161(∑[n+2]+4)`
-/

namespace A280156.P11171882506988962240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280156.P11171882506988962240

/-! ## A280156.P2071852474935198757

`A280161(A167614(n+1))+char[19]`
-/

namespace A280156.P2071852474935198757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280156.P2071852474935198757

/-! ## A280156.P6368912820252210381

`A280161(A055998(n)+6)+char[19]`
-/

namespace A280156.P6368912820252210381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280156.P6368912820252210381

/-! ## A280156.P7342999809590043610

`record[A280161(eq[1, A004197(n)]+2)]`
-/

namespace A280156.P7342999809590043610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280156.P7342999809590043610

/-! ## A280156.P3366402897065136967

`or(A185284(n), A280161(A167614(n+1)))`
-/

namespace A280156.P3366402897065136967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 n) (A280161 (A167614 (n + 1)).toNat)

end

end A280156.P3366402897065136967

/-!
# A280157: Number of nX4 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280157, there is no canonical definition to state claims against.
-/

/-! ## A280157.P9550929190947682190

`A280161(∑[n+3]+7)`
-/

namespace A280157.P9550929190947682190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280157.P9550929190947682190

/-! ## A280157.P15433159417874901089

`lcm(2, A280161(A000217(n+3)+4))`
-/

namespace A280157.P15433159417874901089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A280161 (A000217 (n + 3) + 4).toNat)

end

end A280157.P15433159417874901089

/-! ## A280157.P13192952130144599294

`A007318(C(2, n))*A280161(A000217(n+3)+4)`
-/

namespace A280157.P13192952130144599294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A280161 (A000217 (n + 3) + 4).toNat

end

end A280157.P13192952130144599294

/-! ## A280157.P8375949465751480473

`A280161(A000217(n+3)+4)+A008683(4*(n+1))`
-/

namespace A280157.P8375949465751480473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A000217 (n + 3) + 4).toNat + A008683 (4 * (n + 1))

end

end A280157.P8375949465751480473

/-! ## A280157.P803303963303653483

`A280161(A000217(n+3)+4)%A000041(10*(n+1))`
-/

namespace A280157.P803303963303653483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280161 (A000217 (n + 3) + 4).toNat) (A000041 (10 * (n + 1)))

end

end A280157.P803303963303653483

/-!
# A280158: Number of nX5 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280158, there is no canonical definition to state claims against.
-/

/-! ## A280158.P12318896244484591194

`A280161(A167499(n+3))`
-/

namespace A280158.P12318896244484591194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A167499 (n + 3)).toNat

end

end A280158.P12318896244484591194

/-! ## A280158.P3006174475008168496

`A280161(A155212(n)+13)`
-/

namespace A280158.P3006174475008168496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A155212 n + 13).toNat

end

end A280158.P3006174475008168496

/-! ## A280158.P5400945733399178103

`A280161(A056000(n)+15)`
-/

namespace A280158.P5400945733399178103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A056000 n + 15).toNat

end

end A280158.P5400945733399178103

/-! ## A280158.P1238257363719698579

`A280161(eq[7, A066657(n)])`
-/

namespace A280158.P1238257363719698579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280158.P1238257363719698579

/-! ## A280158.P8871671392932269239

`A280161(A133263(n+4)+3)`
-/

namespace A280158.P8871671392932269239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A133263 (n + 4) + 3).toNat

end

end A280158.P8871671392932269239

/-!
# A280159: Number of nX6 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280159, there is no canonical definition to state claims against.
-/

/-! ## A280159.P2067433364707102865

`A280161(A167499(n+4)+1)`
-/

namespace A280159.P2067433364707102865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A167499 (n + 4) + 1).toNat

end

end A280159.P2067433364707102865

/-! ## A280159.P3247920171300950049

`A280161(A167614(n+4)+3)`
-/

namespace A280159.P3247920171300950049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A167614 (n + 4) + 3).toNat

end

end A280159.P3247920171300950049

/-! ## A280159.P13915454178520084249

`A280161(A000124(n+5)+5)`
-/

namespace A280159.P13915454178520084249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A000124 (n + 5) + 5).toNat

end

end A280159.P13915454178520084249

/-! ## A280159.P274963936182265568

`A280161(A000096(n+4)+7)`
-/

namespace A280159.P274963936182265568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A000096 (n + 4) + 7).toNat

end

end A280159.P274963936182265568

/-! ## A280159.P12933949956677155885

`A280161(A000217(n+5)+6)`
-/

namespace A280159.P12933949956677155885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A000217 (n + 5) + 6).toNat

end

end A280159.P12933949956677155885

/-!
# A280160: Number of nX7 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280160, there is no canonical definition to state claims against.
-/

/-! ## A280160.P17105884613725990284

`A280161(A167499(n+5)+2)`
-/

namespace A280160.P17105884613725990284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A167499 (n + 5) + 2).toNat

end

end A280160.P17105884613725990284

/-! ## A280160.P2410743033178523796

`A280161(A141214(n+3)+10)`
-/

namespace A280160.P2410743033178523796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A141214 (n + 3) + 10).toNat

end

end A280160.P2410743033178523796

/-! ## A280160.P11429148128736259655

`A280161(A134227(n+4)+13)`
-/

namespace A280160.P11429148128736259655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A134227 (n + 4) + 13).toNat

end

end A280160.P11429148128736259655

/-! ## A280160.P12834907350652538485

`A280161(A155212(n+2)+15)`
-/

namespace A280160.P12834907350652538485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (A155212 (n + 2) + 15).toNat

end

end A280160.P12834907350652538485

/-! ## A280160.P1613370155383150852

`A280161(eq[8, A131818(n+1)])`
-/

namespace A280160.P1613370155383150852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280160.P1613370155383150852

/-!
# A280164: Number of integer pairs (k, b) such that n and k*n are anagrams in base-b (k > 1).

The programs for A280164, there is no canonical definition to state claims against.
-/

/-! ## A280164.P4421513136753437869

`A292739(A025487(3*(n+1)))%A319989(n+1)`
-/

namespace A280164.P4421513136753437869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292739 (A025487 (3 * (n + 1))).toNat) (A319989 (n + 1))

end

end A280164.P4421513136753437869

/-! ## A280164.P1034253739054522658

`A034380(n+1)-A183134(A360672(3*n+1))`
-/

namespace A280164.P1034253739054522658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1) - A183134 (A360672 (3 * n + 1)).toNat

end

end A280164.P1034253739054522658

/-! ## A280164.P11809881673010387026

`A084849(A115323(3*n+2))%A060775(n+1)`
-/

namespace A280164.P11809881673010387026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084849 (A115323 (3 * n + 2)).toNat) (A060775 (n + 1))

end

end A280164.P11809881673010387026

/-! ## A280164.P8906111841856390751

`A054015(A324505(n+1))`
-/

namespace A280164.P8906111841856390751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (A324505 (n + 1)).toNat

end

end A280164.P8906111841856390751

/-! ## A280164.P820518951114894155

`A231122(A105604(n+1)+1)`
-/

namespace A280164.P820518951114894155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231122 (A105604 (n + 1) + 1).toNat

end

end A280164.P820518951114894155

/-!
# A280165: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A280165, there is no canonical definition to state claims against.
-/

/-! ## A280165.P3544072730773974030

`A007088(A281213(n))`
-/

namespace A280165.P3544072730773974030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281213 n).toNat

end

end A280165.P3544072730773974030

/-! ## A280165.P3690082992130899408

`A305989(A281212(n))`
-/

namespace A280165.P3690082992130899408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A281212 n).toNat

end

end A280165.P3690082992130899408

/-! ## A280165.P17768374308044584759

`A305989(∑[A198633(n)]-A283059(n+1))`
-/

namespace A280165.P17768374308044584759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (∑ j ∈ Finset.range (n + 1), f1 j - A283059 (n + 1)).toNat

end

end A280165.P17768374308044584759

/-! ## A280165.P10411813907984970236

`A305989(A000225(n+2)-A283059(n+1))`
-/

namespace A280165.P10411813907984970236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A000225 (n + 2) - A283059 (n + 1)).toNat

end

end A280165.P10411813907984970236

/-! ## A280165.P3734953361196935804

`A305989(A255047(n+2)-A283059(n+1))`
-/

namespace A280165.P3734953361196935804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A255047 (n + 2) - A283059 (n + 1)).toNat

end

end A280165.P3734953361196935804

/-!
# A280166: a(2*n) = 4*n if n > 0, a(2*n + 1) = -(2*n + 1), a(0) = 1.

The programs for A280166, the canonical program `A280166.P11037172666201527614` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280166 has offset 0).

The definition of A280166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280166.P11037172666201527614

`(-1)^n*A257088(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A280166

/-- `(-1)^n*A257088(n)` -/
def P11037172666201527614.Spec : Prop :=
  ∀ n, P11037172666201527614.a n = A280166 n

theorem P11037172666201527614.correct : P11037172666201527614.Spec := by
  intro n
  simp only [A280166]

end A280166

/-! ## A280166.P88486826802047150

`xor(1, n)-or(1, a(n-1))` with `a(0)=1`
-/

namespace A280166.P88486826802047150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.xor 1 n : ℤ) - Int.lor 1 (a (n - 1))

end

end A280166.P88486826802047150

namespace A280166

/-- `xor(1, n)-or(1, a(n-1))` -/
def P88486826802047150.Spec : Prop :=
  ∀ n, P88486826802047150.a n = A280166 n

end A280166

/-! ## A280166.P15080936222300308239

`n*(2-3*a(n-1))%3` with `a(0)=1`
-/

namespace A280166.P15080936222300308239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * Int.tmod (2 - 3 * a (n - 1)) 3

end

end A280166.P15080936222300308239

namespace A280166

/-- `n*(2-3*a(n-1))%3` -/
def P15080936222300308239.Spec : Prop :=
  ∀ n, P15080936222300308239.a n = A280166 n

end A280166

/-! ## A280166.P802020191511436883

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=-1, a(2)=4`
-/

namespace A280166.P802020191511436883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 4] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A280166.P802020191511436883

namespace A280166

/-- `a(n-2)/(1-2/n)` -/
def P802020191511436883.Spec : Prop :=
  ∀ n, P802020191511436883.a n = (A280166 n : ℚ)

end A280166

/-! ## A280166.P15601751434884296402

`3*n-(lcm(2, a(n-1)+1)+2)` with `a(0)=1`
-/

namespace A280166.P15601751434884296402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) - (Int.lcm 2 (a (n - 1) + 1) + 2 : ℤ)

end

end A280166.P15601751434884296402

namespace A280166

/-- `3*n-(lcm(2, a(n-1)+1)+2)` -/
def P15601751434884296402.Spec : Prop :=
  ∀ n, P15601751434884296402.a n = A280166 n

end A280166

/-! ## A280166.P3809802010865989466

`n+1-or(2*and(1, n)+1, a(n-1))` with `a(0)=1`
-/

namespace A280166.P3809802010865989466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - Int.lor (2 * Nat.land 1 n + 1 : ℤ) (a (n - 1))

end

end A280166.P3809802010865989466

namespace A280166

/-- `n+1-or(2*and(1, n)+1, a(n-1))` -/
def P3809802010865989466.Spec : Prop :=
  ∀ n, P3809802010865989466.a n = A280166 n

end A280166

/-! ## A280166.P11008981003470130628

`Δ[floor(n²/(2*n+1)+n)²]-4*n`
-/

namespace A280166.P11008981003470130628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / (2 * n + 1 : ℚ) + (n : ℚ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (4 * n : ℤ)

end

end A280166.P11008981003470130628

namespace A280166

/-- `Δ[floor(n²/(2*n+1)+n)²]-4*n` -/
def P11008981003470130628.Spec : Prop :=
  ∀ n, P11008981003470130628.a n = A280166 n

end A280166

/-! ## A280166.P6866229457765819273

`∑[Δ[A019426(n)]-1]`
-/

namespace A280166.P6866229457765819273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280166.P6866229457765819273

namespace A280166

/-- `∑[Δ[A019426(n)]-1]` -/
def P6866229457765819273.Spec : Prop :=
  ∀ n, P6866229457765819273.a n = A280166 n

end A280166

/-! ## A280166.P9926363609232226899

`floor(sqrt(n²+1+n))*A280193(n)`
-/

namespace A280166.P9926363609232226899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n ^ 2 + 1 + n) : ℤ) * A280193 n

end

end A280166.P9926363609232226899

namespace A280166

/-- `floor(sqrt(n²+1+n))*A280193(n)` -/
def P9926363609232226899.Spec : Prop :=
  ∀ n, P9926363609232226899.a n = A280166 n

end A280166

/-! ## A280166.P2622740933647512591

`A040001(n)*A274922(n)`
-/

namespace A280166.P2622740933647512591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A274922 n

end

end A280166.P2622740933647512591

namespace A280166

/-- `A040001(n)*A274922(n)` -/
def P2622740933647512591.Spec : Prop :=
  ∀ n, P2622740933647512591.a n = A280166 n

end A280166

/-! ## A280166.P3917382678863884821

`A004277(n)/A327767(n+1)`
-/

namespace A280166.P3917382678863884821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A327767 (n + 1) : ℚ)

end

end A280166.P3917382678863884821

namespace A280166

/-- `A004277(n)/A327767(n+1)` -/
def P3917382678863884821.Spec : Prop :=
  ∀ n, P3917382678863884821.a n = (A280166 n : ℚ)

end A280166

/-! ## A280166.P18399963254842107158

`Δ[Δ[a(n-2)+n-2]²]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A280166.P18399963254842107158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 2) + ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280166.P18399963254842107158

namespace A280166

/-- `Δ[Δ[a(n-2)+n-2]²]` -/
def P18399963254842107158.Spec : Prop :=
  ∀ n, P18399963254842107158.a n = A280166 n

end A280166

/-! ## A280166.P15439595120410212466

`Δ[(∑[A010685(n)]%(n+1))²]`
-/

namespace A280166.P15439595120410212466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280166.P15439595120410212466

namespace A280166

/-- `Δ[(∑[A010685(n)]%(n+1))²]` -/
def P15439595120410212466.Spec : Prop :=
  ∀ n, P15439595120410212466.a n = A280166 n

end A280166

/-! ## A280166.P14826532532904417828

`Δ[(A033999(n)-A123108(n))²]`
-/

namespace A280166.P14826532532904417828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n - A123108 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280166.P14826532532904417828

namespace A280166

/-- `Δ[(A033999(n)-A123108(n))²]` -/
def P14826532532904417828.Spec : Prop :=
  ∀ n, P14826532532904417828.a n = A280166 n

end A280166

/-! ## A280166.P12983646010469947117

`Δ[(A280193(n)-∑[A280193(n)])²]`
-/

namespace A280166.P12983646010469947117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280193 n - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280166.P12983646010469947117

namespace A280166

/-- `Δ[(A280193(n)-∑[A280193(n)])²]` -/
def P12983646010469947117.Spec : Prop :=
  ∀ n, P12983646010469947117.a n = A280166 n

end A280166

/-! ## A280166.P16998269370921438853

`Δ[(Δ[A026741(n)]-A040001(n))²]`
-/

namespace A280166.P16998269370921438853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n - A040001 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280166.P16998269370921438853

namespace A280166

/-- `Δ[(Δ[A026741(n)]-A040001(n))²]` -/
def P16998269370921438853.Spec : Prop :=
  ∀ n, P16998269370921438853.a n = A280166 n

end A280166

/-! ## A280166.P17367865497994025568

`Δ[(A004277(n)-n-A028242(n))²]`
-/

namespace A280166.P17367865497994025568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - (n : ℤ) - A028242 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280166.P17367865497994025568

namespace A280166

/-- `Δ[(A004277(n)-n-A028242(n))²]` -/
def P17367865497994025568.Spec : Prop :=
  ∀ n, P17367865497994025568.a n = A280166 n

end A280166

/-! ## A280166.P2611017527808178596

`A274922(A022998(n))`
-/

namespace A280166.P2611017527808178596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (A022998 n).toNat

end

end A280166.P2611017527808178596

namespace A280166

/-- `A274922(A022998(n))` -/
def P2611017527808178596.Spec : Prop :=
  ∀ n, P2611017527808178596.a n = A280166 n

end A280166

/-! ## A280166.P17495793262118895723

`A257088(A257088(n))/A280193(n)`
-/

namespace A280166.P17495793262118895723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257088 (A257088 n).toNat : ℚ) / (A280193 n : ℚ)

end

end A280166.P17495793262118895723

namespace A280166

/-- `A257088(A257088(n))/A280193(n)` -/
def P17495793262118895723.Spec : Prop :=
  ∀ n, P17495793262118895723.a n = (A280166 n : ℚ)

end A280166

/-! ## A280166.P12454828870946013624

`A076118(A298028(n))`
-/

namespace A280166.P12454828870946013624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (A298028 n).toNat

end

end A280166.P12454828870946013624

namespace A280166

/-- `A076118(A298028(n))` -/
def P12454828870946013624.Spec : Prop :=
  ∀ n, P12454828870946013624.a n = A280166 n

end A280166

/-!
# A280167: a(2*n) = 3*n if n > 0, a(2*n + 1) = -(2*n + 1), a(0) = 1.

The programs for A280167, the canonical program `A280167.P6416678742977905605` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280167 has offset 0).

The definition of A280167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257143, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280167.P6416678742977905605

`(-1)^n*A257143(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A280167

/-- `(-1)^n*A257143(n)` -/
def P6416678742977905605.Spec : Prop :=
  ∀ n, P6416678742977905605.a n = A280167 n

theorem P6416678742977905605.correct : P6416678742977905605.Spec := by
  intro n
  simp only [A280167]

end A280167

/-! ## A280167.P12434107792092064155

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A280167.P12434107792092064155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A280167.P12434107792092064155

namespace A280167

/-- `a(n-2)/(1-2/n)` -/
def P12434107792092064155.Spec : Prop :=
  ∀ n, P12434107792092064155.a n = (A280167 n : ℚ)

end A280167

/-! ## A280167.P1129363782818870549

`∑[3-a(n-1)]-(a(n-1)+n)` with `a(0)=1, a(1)=-1`
-/

namespace A280167.P1129363782818870549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 1) + (n : ℤ))

end

end A280167.P1129363782818870549

namespace A280167

/-- `∑[3-a(n-1)]-(a(n-1)+n)` -/
def P1129363782818870549.Spec : Prop :=
  ∀ n, P1129363782818870549.a n = A280167 n

end A280167

/-! ## A280167.P4978704792465933073

`∑[3-a(n-1)]-a(n-1)-n` with `a(0)=1, a(1)=-1`
-/

namespace A280167.P4978704792465933073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - (n : ℤ)

end

end A280167.P4978704792465933073

namespace A280167

/-- `∑[3-a(n-1)]-a(n-1)-n` -/
def P4978704792465933073.Spec : Prop :=
  ∀ n, P4978704792465933073.a n = A280167 n

end A280167

/-! ## A280167.P700927446287131956

`Δ[C(A267182(n), 2)]`
-/

namespace A280167.P700927446287131956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A267182 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A280167.P700927446287131956

namespace A280167

/-- `Δ[C(A267182(n), 2)]` -/
def P700927446287131956.Spec : Prop :=
  ∀ n, P700927446287131956.a n = A280167 n

end A280167

/-! ## A280167.P13459706249935850372

`A160413(n+1)-comp[3*n]`
-/

namespace A280167.P13459706249935850372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A280167.P13459706249935850372

namespace A280167

/-- `A160413(n+1)-comp[3*n]` -/
def P13459706249935850372.Spec : Prop :=
  ∀ n, P13459706249935850372.a n = A280167 n

end A280167

/-! ## A280167.P2404362790875609114

`(A028310(n)+comp[3*n+1])*char[2*n]-n`
-/

namespace A280167.P2404362790875609114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)

end

end A280167.P2404362790875609114

namespace A280167

/-- `(A028310(n)+comp[3*n+1])*char[2*n]-n` -/
def P2404362790875609114.Spec : Prop :=
  ∀ n, P2404362790875609114.a n = A280167 n

end A280167

/-! ## A280167.P14813852603134620989

`A274922(n)+A142150(n)`
-/

namespace A280167.P14813852603134620989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n + A142150 n

end

end A280167.P14813852603134620989

namespace A280167

/-- `A274922(n)+A142150(n)` -/
def P14813852603134620989.Spec : Prop :=
  ∀ n, P14813852603134620989.a n = A280167 n

end A280167

/-! ## A280167.P12731382602851025513

`A257088(n)-A064680(n)`
-/

namespace A280167.P12731382602851025513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n - A064680 n

end

end A280167.P12731382602851025513

namespace A280167

/-- `A257088(n)-A064680(n)` -/
def P12731382602851025513.Spec : Prop :=
  ∀ n, P12731382602851025513.a n = A280167 n

end A280167

/-! ## A280167.P2589203782597488168

`A280166(n)-A142150(n)`
-/

namespace A280167.P2589203782597488168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n - A142150 n

end

end A280167.P2589203782597488168

namespace A280167

/-- `A280166(n)-A142150(n)` -/
def P2589203782597488168.Spec : Prop :=
  ∀ n, P2589203782597488168.a n = A280167 n

end A280167

/-! ## A280167.P16399365661708039111

`A184418(n)-A347365(n)`
-/

namespace A280167.P16399365661708039111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 n - A347365 n

end

end A280167.P16399365661708039111

namespace A280167

/-- `A184418(n)-A347365(n)` -/
def P16399365661708039111.Spec : Prop :=
  ∀ n, P16399365661708039111.a n = A280167 n

end A280167

/-! ## A280167.P11759289255049621869

`A257143(n)/A033999(n)`
-/

namespace A280167.P11759289255049621869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257143 n : ℚ) / (A033999 n : ℚ)

end

end A280167.P11759289255049621869

namespace A280167

/-- `A257143(n)/A033999(n)` -/
def P11759289255049621869.Spec : Prop :=
  ∀ n, P11759289255049621869.a n = (A280167 n : ℚ)

end A280167

/-! ## A280167.P17498724371643768949

`A274922(n)+A237420(n)/2`
-/

namespace A280167.P17498724371643768949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274922 n : ℚ) + (A237420 n : ℚ) / 2

end

end A280167.P17498724371643768949

namespace A280167

/-- `A274922(n)+A237420(n)/2` -/
def P17498724371643768949.Spec : Prop :=
  ∀ n, P17498724371643768949.a n = (A280167 n : ℚ)

end A280167

/-! ## A280167.P16224894276618734668

`(A004273(n)+1)*char[2*n]-A026741(n)`
-/

namespace A280167.P16224894276618734668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A026741 n

end

end A280167.P16224894276618734668

namespace A280167

/-- `(A004273(n)+1)*char[2*n]-A026741(n)` -/
def P16224894276618734668.Spec : Prop :=
  ∀ n, P16224894276618734668.a n = A280167 n

end A280167

/-! ## A280167.P1687429874934526344

`floor(((C(5, A010690(n))-2)*A004277(n)+1)/4)`
-/

namespace A280167.P1687429874934526344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((Nat.choose 5 (A010690 n).toNat : ℤ) - 2) * A004277 n + 1 : ℚ) / 4⌋

end

end A280167.P1687429874934526344

namespace A280167

/-- `floor(((C(5, A010690(n))-2)*A004277(n)+1)/4)` -/
def P1687429874934526344.Spec : Prop :=
  ∀ n, P1687429874934526344.a n = A280167 n

end A280167

/-! ## A280167.P11375755981047392584

`A178414(n+1)-(A026741(n)+comp[A004277(n)])`
-/

namespace A280167.P11375755981047392584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (n + 1) - (A026741 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A280167.P11375755981047392584

namespace A280167

/-- `A178414(n+1)-(A026741(n)+comp[A004277(n)])` -/
def P11375755981047392584.Spec : Prop :=
  ∀ n, P11375755981047392584.a n = A280167 n

end A280167

/-! ## A280167.P1763934431186538995

`A019425(n+1)+1-A026741(n+2)`
-/

namespace A280167.P1763934431186538995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 1) + 1 - A026741 (n + 2)

end

end A280167.P1763934431186538995

namespace A280167

/-- `A019425(n+1)+1-A026741(n+2)` -/
def P1763934431186538995.Spec : Prop :=
  ∀ n, P1763934431186538995.a n = A280167 n

end A280167

/-! ## A280167.P5090936373127369719

`A266662(n+1)-A066043(n+2)/2`
-/

namespace A280167.P5090936373127369719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266662 (n + 1) : ℚ) - (A066043 (n + 2) : ℚ) / 2

end

end A280167.P5090936373127369719

namespace A280167

/-- `A266662(n+1)-A066043(n+2)/2` -/
def P5090936373127369719.Spec : Prop :=
  ∀ n, P5090936373127369719.a n = (A280167 n : ℚ)

end A280167

/-! ## A280167.P6306515256721444554

`A008486(A142150(n))-2*A142150(n+1)`
-/

namespace A280167.P6306515256721444554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A142150 n).toNat - 2 * A142150 (n + 1)

end

end A280167.P6306515256721444554

namespace A280167

/-- `A008486(A142150(n))-2*A142150(n+1)` -/
def P6306515256721444554.Spec : Prop :=
  ∀ n, P6306515256721444554.a n = A280167 n

end A280167

/-!
# A280168: Expansion of Product_{k>=2} 1/(1 - x^(Fibonacci(k)^2)).

The programs for A280168, there is no canonical definition to state claims against.
-/

/-! ## A280168.P6178077804212240051

`∑[A090677(n)]%A333035(n)`
-/

namespace A280168.P6178077804212240051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A333035 n)

end

end A280168.P6178077804212240051

/-! ## A280168.P2684645149275442981

`∑[A090677(n)%A119714(n+1)]`
-/

namespace A280168.P2684645149275442981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090677 n) (A119714 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280168.P2684645149275442981

/-! ## A280168.P14357034653946311904

`∑[A002262(A241787(n+1)+A090677(n))]`
-/

namespace A280168.P14357034653946311904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A241787 (n + 1) + A090677 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280168.P14357034653946311904

/-! ## A280168.P14182081924888969415

`∑[and(A090677(n), A185007(n+1))]`
-/

namespace A280168.P14182081924888969415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090677 n) (A185007 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280168.P14182081924888969415

/-! ## A280168.P4480894529318720908

`∑[A090677(n)%A117459(n)]`
-/

namespace A280168.P4480894529318720908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090677 n) (A117459 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280168.P4480894529318720908

/-!
# A280169: Expansion of Product_{k>=2} 1/(1 - mu(2*k-1)^2*x^(2*k-1)), where mu() is the Moebius function (A008683).

The programs for A280169, there is no canonical definition to state claims against.
-/

/-! ## A280169.P5326791910666370828

`Δ[A008619(A117409(n+4))]%A092585(n+2)`
-/

namespace A280169.P5326791910666370828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A117409 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A092585 (n + 2))

end

end A280169.P5326791910666370828

/-! ## A280169.P10891109421059472013

`Δ[A057554(A000009(n+2)²)]`
-/

namespace A280169.P10891109421059472013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000009 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280169.P10891109421059472013

/-! ## A280169.P15927458983244979736

`A008676(record[A061358(A002522(n))])`
-/

namespace A280169.P15927458983244979736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A002522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280169.P15927458983244979736

/-! ## A280169.P17794861841739095650

`A325678(A245145(n+6)+A005171(n+1))`
-/

namespace A280169.P17794861841739095650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A245145 (n + 6) + A005171 (n + 1)).toNat

end

end A280169.P17794861841739095650

/-! ## A280169.P4483646504424940946

`Δ[A057555(A000009(n+2)²)]`
-/

namespace A280169.P4483646504424940946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A000009 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280169.P4483646504424940946

/-!
# A280170: Primes p such that both 2^(p-1) - 1 and 2^(p+1) - 1 are not squarefree.

The programs for A280170, there is no canonical definition to state claims against.
-/

/-! ## A280170.P7389225537171171462

`p?[A064429(A049094(n+1))]`
-/

namespace A280170.P7389225537171171462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A049094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280170.P7389225537171171462

/-! ## A280170.P3259005424710344663

`p?[A064429(2*A260042(n+1))]`
-/

namespace A280170.P3259005424710344663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (2 * A260042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280170.P3259005424710344663

/-! ## A280170.P11505159707586947962

`p?[A064429(eq[2, 2%A272334(n+1)]+1)]`
-/

namespace A280170.P11505159707586947962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A272334 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280170.P11505159707586947962

/-! ## A280170.P4283657956364677215

`p?[A064429(A005843(A260042(n+1)))]`
-/

namespace A280170.P4283657956364677215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A005843 (A260042 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280170.P4283657956364677215

/-!
# A280171: a(n) is the least positive number whose divisors have all possible residues mod n.

The programs for A280171, there is no canonical definition to state claims against.
-/

/-! ## A280171.P16092860816520887582

`lcm(n+1, A140539(n+1))`
-/

namespace A280171.P16092860816520887582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A140539 (n + 1))

end

end A280171.P16092860816520887582

/-! ## A280171.P11517695096489002507

`A014963(n+1)*A140539(n+1)`
-/

namespace A280171.P11517695096489002507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A140539 (n + 1)

end

end A280171.P11517695096489002507

/-! ## A280171.P7214885385335925695

`A006530(ceil((n+1)/∏{p}[n+1, (n+1)/#]))*A140539(n+1)`
-/

namespace A280171.P7214885385335925695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat * A140539 (n + 1)

end

end A280171.P7214885385335925695

/-! ## A280171.P9913317086260983792

`A020639(ceil((n+1)/∏{p}[n+1, (n+1)/#]))*A140539(n+1)`
-/

namespace A280171.P9913317086260983792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat * A140539 (n + 1)

end

end A280171.P9913317086260983792

/-! ## A280171.P13364450145833786307

`A028310(A020500(n+1))*A140539(n+1)`
-/

namespace A280171.P13364450145833786307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020500 (n + 1)).toNat * A140539 (n + 1)

end

end A280171.P13364450145833786307

/-! ## A280171.P547615612760649048

`A003418(n+1)*A140539(n+1)/A003418(n)`
-/

namespace A280171.P547615612760649048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) * A140539 (n + 1) : ℚ) / (A003418 n : ℚ)

end

end A280171.P547615612760649048

/-! ## A280171.P6779328588824003514

`lcm(A140539(n+1), A274346(n))`
-/

namespace A280171.P6779328588824003514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140539 (n + 1)) (A274346 n)

end

end A280171.P6779328588824003514

/-!
# A280172: Lexicographically earliest table of positive integers read by antidiagonals such that no row or column contains a repeated term.

The programs for A280172, the canonical program `A280172.P14429094366416205304` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280172 has offset 1).

The definition of A280172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280172.P14429094366416205304

`A003987(n)+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A280172

/-- `A003987(n)+1` -/
def P14429094366416205304.Spec : Prop :=
  ∀ n, P14429094366416205304.a n = A280172 (n + 1)

theorem P14429094366416205304.correct : P14429094366416205304.Spec := by
  intro n
  simp only [A280172, Nat.add_sub_cancel]

end A280172

/-! ## A280172.P12663707021996277134

`A143182(A286098(n))`
-/

namespace A280172.P12663707021996277134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A286098 n).toNat

end

end A280172.P12663707021996277134

namespace A280172

/-- `A143182(A286098(n))` -/
def P12663707021996277134.Spec : Prop :=
  ∀ n, P12663707021996277134.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P1720670787996335435

`A059253(A163907(n))+1`
-/

namespace A280172.P1720670787996335435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163907 n).toNat + 1

end

end A280172.P1720670787996335435

namespace A280172

/-- `A059253(A163907(n))+1` -/
def P1720670787996335435.Spec : Prop :=
  ∀ n, P1720670787996335435.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P16244397413227817438

`A002260(A286109(n)+1)`
-/

namespace A280172.P16244397413227817438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286109 n + 1).toNat

end

end A280172.P16244397413227817438

namespace A280172

/-- `A002260(A286109(n)+1)` -/
def P16244397413227817438.Spec : Prop :=
  ∀ n, P16244397413227817438.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P17964129906423647721

`A130517(A286098(n)+1)`
-/

namespace A280172.P17964129906423647721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A286098 n + 1).toNat

end

end A280172.P17964129906423647721

namespace A280172

/-- `A130517(A286098(n)+1)` -/
def P17964129906423647721.Spec : Prop :=
  ∀ n, P17964129906423647721.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P6489800739808536465

`A008619(2*A003987(n))`
-/

namespace A280172.P6489800739808536465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A003987 n).toNat

end

end A280172.P6489800739808536465

namespace A280172

/-- `A008619(2*A003987(n))` -/
def P6489800739808536465.Spec : Prop :=
  ∀ n, P6489800739808536465.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P14379702332968493595

`A008621(2*2*A003987(n))`
-/

namespace A280172.P14379702332968493595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * (2 * A003987 n)).toNat

end

end A280172.P14379702332968493595

namespace A280172

/-- `A008621(2*2*A003987(n))` -/
def P14379702332968493595.Spec : Prop :=
  ∀ n, P14379702332968493595.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P10345269152183938456

`A003986(n)+1-A004198(n)`
-/

namespace A280172.P10345269152183938456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + (1 - A004198 n)

end

end A280172.P10345269152183938456

namespace A280172

/-- `A003986(n)+1-A004198(n)` -/
def P10345269152183938456.Spec : Prop :=
  ∀ n, P10345269152183938456.a n = A280172 (n + 1)

theorem P10345269152183938456.correct : P10345269152183938456.Spec := by
  intro n
  simp only [A280172, Nat.add_sub_cancel, A280172.P10345269152183938456.a, A280172.P14429094366416205304.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A004198, A004198.P12357337643379645634.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280172

/-! ## A280172.P6932388135799305185

`A002024(n+1)-A221146(n)`
-/

namespace A280172.P6932388135799305185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A221146 n

end

end A280172.P6932388135799305185

namespace A280172

/-- `A002024(n+1)-A221146(n)` -/
def P6932388135799305185.Spec : Prop :=
  ∀ n, P6932388135799305185.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P17880641408113366748

`A003056(n)+1-A221146(n)`
-/

namespace A280172.P17880641408113366748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (1 - A221146 n)

end

end A280172.P17880641408113366748

namespace A280172

/-- `A003056(n)+1-A221146(n)` -/
def P17880641408113366748.Spec : Prop :=
  ∀ n, P17880641408113366748.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P3347125485875344275

`A286109(n)+1-A057944(n)`
-/

namespace A280172.P3347125485875344275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n + (1 - A057944 n)

end

end A280172.P3347125485875344275

namespace A280172

/-- `A286109(n)+1-A057944(n)` -/
def P3347125485875344275.Spec : Prop :=
  ∀ n, P3347125485875344275.a n = A280172 (n + 1)

theorem P3347125485875344275.correct : P3347125485875344275.Spec := by
  intro n
  simp only [A280172, Nat.add_sub_cancel, A280172.P3347125485875344275.a, A280172.P14429094366416205304.a, A003987, A003987.P6522273903622706452.a, A057944, A057944.P16851463738746886639.a, A286109, A286109.P13280078457702034505.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A280172

/-! ## A280172.P1269197694510484624

`A127739(n+1)-A286108(n)`
-/

namespace A280172.P1269197694510484624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A286108 n

end

end A280172.P1269197694510484624

namespace A280172

/-- `A127739(n+1)-A286108(n)` -/
def P1269197694510484624.Spec : Prop :=
  ∀ n, P1269197694510484624.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P10089418616978838982

`A286099(n)+1-A286098(n)`
-/

namespace A280172.P10089418616978838982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n + (1 - A286098 n)

end

end A280172.P10089418616978838982

namespace A280172

/-- `A286099(n)+1-A286098(n)` -/
def P10089418616978838982.Spec : Prop :=
  ∀ n, P10089418616978838982.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P1605825610824954081

`xor(A003984(n), A004197(n))+1`
-/

namespace A280172.P1605825610824954081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003984 n) (A004197 n) + 1

end

end A280172.P1605825610824954081

namespace A280172

/-- `xor(A003984(n), A004197(n))+1` -/
def P1605825610824954081.Spec : Prop :=
  ∀ n, P1605825610824954081.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P10074947868248375228

`xor(A002262(n), A025581(n))+1`
-/

namespace A280172.P10074947868248375228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A025581 n) + 1

end

end A280172.P10074947868248375228

namespace A280172

/-- `xor(A002262(n), A025581(n))+1` -/
def P10074947868248375228.Spec : Prop :=
  ∀ n, P10074947868248375228.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P5603641429963226600

`xor(A103822(n), A103823(n))+1`
-/

namespace A280172.P5603641429963226600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103822 n) (A103823 n) + 1

end

end A280172.P5603641429963226600

namespace A280172

/-- `xor(A103822(n), A103823(n))+1` -/
def P5603641429963226600.Spec : Prop :=
  ∀ n, P5603641429963226600.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P6252746421725868582

`xor(A341839(n), A341840(n))+1`
-/

namespace A280172.P6252746421725868582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A341839 n) (A341840 n) + 1

end

end A280172.P6252746421725868582

namespace A280172

/-- `xor(A341839(n), A341840(n))+1` -/
def P6252746421725868582.Spec : Prop :=
  ∀ n, P6252746421725868582.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P7000679712811575504

`xor(A004736(n+1)-1, A002262(n))+1`
-/

namespace A280172.P7000679712811575504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004736 (n + 1) - 1) (A002262 n) + 1

end

end A280172.P7000679712811575504

namespace A280172

/-- `xor(A004736(n+1)-1, A002262(n))+1` -/
def P7000679712811575504.Spec : Prop :=
  ∀ n, P7000679712811575504.a n = A280172 (n + 1)

end A280172

/-! ## A280172.P16468849123362273901

`xor(A002260(n+1)-1, A025581(n))+1`
-/

namespace A280172.P16468849123362273901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002260 (n + 1) - 1) (A025581 n) + 1

end

end A280172.P16468849123362273901

namespace A280172

/-- `xor(A002260(n+1)-1, A025581(n))+1` -/
def P16468849123362273901.Spec : Prop :=
  ∀ n, P16468849123362273901.a n = A280172 (n + 1)

theorem P16468849123362273901.correct : P16468849123362273901.Spec := by
  intro n
  simp only [A280172, Nat.add_sub_cancel, A280172.P16468849123362273901.a, A280172.P14429094366416205304.a, A002260, A002260.P9170571874073898642.a, A003987, A003987.P6522273903622706452.a, A025581, A025581.P16112744757063613497.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280172

/-! ## A280172.P7874629464626221955

`A003986(n)-(A004198(A286098(n))-1)`
-/

namespace A280172.P7874629464626221955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - (A004198 (A286098 n).toNat - 1)

end

end A280172.P7874629464626221955

namespace A280172

/-- `A003986(n)-(A004198(A286098(n))-1)` -/
def P7874629464626221955.Spec : Prop :=
  ∀ n, P7874629464626221955.a n = A280172 (n + 1)

end A280172

/-!
# A280173: a(0) = 1, a(n+1) = 2*a(n) + periodic sequence of length 2: repeat [5, -4].

The programs for A280173, the canonical program `A280173.P18437683699057164213` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280173 has offset 0).

The definition of A280173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280173.P18437683699057164213

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=7, a(2)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280173

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P18437683699057164213.Spec : Prop :=
  ∀ n, P18437683699057164213.a n = A280173 n

theorem P18437683699057164213.correct : P18437683699057164213.Spec := by
  intro n
  simp only [A280173]

end A280173

/-! ## A280173.P6744244856882675345

`2*A051049(n+1)-A051049(n)`
-/

namespace A280173.P6744244856882675345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051049 (n + 1) - A051049 n

end

end A280173.P6744244856882675345

namespace A280173

/-- `2*A051049(n+1)-A051049(n)` -/
def P6744244856882675345.Spec : Prop :=
  ∀ n, P6744244856882675345.a n = A280173 n

end A280173

/-! ## A280173.P9994835412327201709

`ogf((1+5x-5x^2)/(1-2x-x^2+2x^3))`
-/

namespace A280173.P9994835412327201709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -5] [1, -2, -1, 2] n

end

end A280173.P9994835412327201709

namespace A280173

/-- `ogf((1+5x-5x^2)/(1-2x-x^2+2x^3))` -/
def P9994835412327201709.Spec : Prop :=
  ∀ n, P9994835412327201709.a n = A280173 n

end A280173

/-! ## A280173.P9846197021072827855

`3*(2^n-gcd(2, n))+4`
-/

namespace A280173.P9846197021072827855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 ^ n : ℤ) - (Nat.gcd 2 n : ℤ)) + 4

end

end A280173.P9846197021072827855

namespace A280173

/-- `3*(2^n-gcd(2, n))+4` -/
def P9846197021072827855.Spec : Prop :=
  ∀ n, P9846197021072827855.a n = A280173 n

end A280173

/-! ## A280173.P16311972264929787571

`3*(2^n-char[2*n])+1`
-/

namespace A280173.P16311972264929787571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 ^ n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + 1

end

end A280173.P16311972264929787571

namespace A280173

/-- `3*(2^n-char[2*n])+1` -/
def P16311972264929787571.Spec : Prop :=
  ∀ n, P16311972264929787571.a n = A280173 n

end A280173

/-! ## A280173.P1754919068773586772

`∑[a(n-1)+2*a(n-2)]` with `a(0)=1, a(1)=6, a(2)=3`
-/

namespace A280173.P1754919068773586772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 3] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280173.P1754919068773586772

namespace A280173

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P1754919068773586772.Spec : Prop :=
  ∀ n, (P1754919068773586772.a n : ℤ) = A280173 n

end A280173

/-! ## A280173.P1984587383184961248

`xor(A201630(n)-1, n%2)`
-/

namespace A280173.P1984587383184961248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A201630 n - 1) ((n % 2 : ℕ) : ℤ)

end

end A280173.P1984587383184961248

namespace A280173

/-- `xor(A201630(n)-1, n%2)` -/
def P1984587383184961248.Spec : Prop :=
  ∀ n, P1984587383184961248.a n = A280173 n

end A280173

/-! ## A280173.P4866748520103299586

`∪[A096045(n), A199116(n)]`
-/

namespace A280173.P4866748520103299586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280173.P4866748520103299586

namespace A280173

/-- `∪[A096045(n), A199116(n)]` -/
def P4866748520103299586.Spec : Prop :=
  ∀ n, (P4866748520103299586.a n : ℤ) = A280173 n

end A280173

/-! ## A280173.P6915731754879967682

`Δ[A007283(n)-A052938(n)]`
-/

namespace A280173.P6915731754879967682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280173.P6915731754879967682

namespace A280173

/-- `Δ[A007283(n)-A052938(n)]` -/
def P6915731754879967682.Spec : Prop :=
  ∀ n, P6915731754879967682.a n = A280173 n

end A280173

/-! ## A280173.P7846006029589300148

`Δ[A033484(n)-A030451(n)]`
-/

namespace A280173.P7846006029589300148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A030451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280173.P7846006029589300148

namespace A280173

/-- `Δ[A033484(n)-A030451(n)]` -/
def P7846006029589300148.Spec : Prop :=
  ∀ n, P7846006029589300148.a n = A280173 n

end A280173

/-! ## A280173.P4539298522465868648

`Δ[A033484(n)-A052938(n)]`
-/

namespace A280173.P4539298522465868648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280173.P4539298522465868648

namespace A280173

/-- `Δ[A033484(n)-A052938(n)]` -/
def P4539298522465868648.Spec : Prop :=
  ∀ n, P4539298522465868648.a n = A280173 n

end A280173

/-! ## A280173.P13445652153038722479

`Δ[A153893(n)-A030451(n)]`
-/

namespace A280173.P13445652153038722479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - A030451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280173.P13445652153038722479

namespace A280173

/-- `Δ[A153893(n)-A030451(n)]` -/
def P13445652153038722479.Spec : Prop :=
  ∀ n, P13445652153038722479.a n = A280173 n

end A280173

/-! ## A280173.P13392089396871140230

`∪[A096045(n), A140788(n)-1]`
-/

namespace A280173.P13392089396871140230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140788 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280173.P13392089396871140230

namespace A280173

/-- `∪[A096045(n), A140788(n)-1]` -/
def P13392089396871140230.Spec : Prop :=
  ∀ n, (P13392089396871140230.a n : ℤ) = A280173 n

end A280173

/-! ## A280173.P12552915225342535384

`∪[A164346(n)-2, A199116(n)]`
-/

namespace A280173.P12552915225342535384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280173.P12552915225342535384

namespace A280173

/-- `∪[A164346(n)-2, A199116(n)]` -/
def P12552915225342535384.Spec : Prop :=
  ∀ n, (P12552915225342535384.a n : ℤ) = A280173 n

end A280173

/-! ## A280173.P7304885017107641668

`Δ[A033484(n)-3-val(A135530(n+1), 2)]`
-/

namespace A280173.P7304885017107641668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - 3 - (SequenceMachineLib.valuation (A135530 (n + 1)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280173.P7304885017107641668

namespace A280173

/-- `Δ[A033484(n)-3-val(A135530(n+1), 2)]` -/
def P7304885017107641668.Spec : Prop :=
  ∀ n, P7304885017107641668.a n = A280173 n

end A280173

/-! ## A280173.P8388011741113582135

`∪[A153893(2*n+1)+2, A033484(2*n)]`
-/

namespace A280173.P8388011741113582135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280173.P8388011741113582135

namespace A280173

/-- `∪[A153893(2*n+1)+2, A033484(2*n)]` -/
def P8388011741113582135.Spec : Prop :=
  ∀ n, (P8388011741113582135.a n : ℤ) = A280173 n

end A280173

/-! ## A280173.P697152697548613639

`∪[A181565(2*n+1), A153893(2*n)-1]`
-/

namespace A280173.P697152697548613639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280173.P697152697548613639

namespace A280173

/-- `∪[A181565(2*n+1), A153893(2*n)-1]` -/
def P697152697548613639.Spec : Prop :=
  ∀ n, (P697152697548613639.a n : ℤ) = A280173 n

end A280173

/-!
# A280174: Number of n X 2 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280174, there is no canonical definition to state claims against.
-/

/-! ## A280174.P8653723620832819407

`A280180(∑[n+1]+2)`
-/

namespace A280174.P8653723620832819407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280174.P8653723620832819407

/-! ## A280174.P11984536226264972194

`record[A280180(A133263(abs(1-n)))]`
-/

namespace A280174.P11984536226264972194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280174.P11984536226264972194

/-! ## A280174.P3626479626825311874

`record[A280180(A255546(n+1)+1)]`
-/

namespace A280174.P3626479626825311874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A255546 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280174.P3626479626825311874

/-! ## A280174.P9549628435453345298

`record[A010054(n)*A280180(n+2)]`
-/

namespace A280174.P9549628435453345298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A280180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280174.P9549628435453345298

/-! ## A280174.P14931900688864169370

`record[gcd(A098825(n), A280180(n+1))]`
-/

namespace A280174.P14931900688864169370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A280180 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280174.P14931900688864169370

/-!
# A280175: Number of nX3 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280175, there is no canonical definition to state claims against.
-/

/-! ## A280175.P1302625289921810113

`A280180(∑[n+2]+4)`
-/

namespace A280175.P1302625289921810113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280175.P1302625289921810113

/-! ## A280175.P7378801809547828497

`lcm((-1)^n, A280180(A167614(n+1)))`
-/

namespace A280175.P7378801809547828497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A280180 (A167614 (n + 1)).toNat)

end

end A280175.P7378801809547828497

/-! ## A280175.P2530137099733842853

`record[A155031(n+1)*A280180(n+4)]`
-/

namespace A280175.P2530137099733842853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155031 (n + 1) * A280180 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280175.P2530137099733842853

/-! ## A280175.P9082422566408417569

`record[A174557(n+1)*A280180(n+4)]`
-/

namespace A280175.P9082422566408417569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174557 (n + 1) * A280180 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280175.P9082422566408417569

/-! ## A280175.P8124834581297334169

`A280180(A167614(n+1))+A025438(n)`
-/

namespace A280175.P8124834581297334169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A167614 (n + 1)).toNat + A025438 n

end

end A280175.P8124834581297334169

/-!
# A280176: Number of nX4 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280176, there is no canonical definition to state claims against.
-/

/-! ## A280176.P728701139088379270

`A280180(∑[n+3]+7)`
-/

namespace A280176.P728701139088379270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280176.P728701139088379270

/-! ## A280176.P7360925385986567915

`A280180(A055999(n)+10)+char[16]`
-/

namespace A280176.P7360925385986567915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280176.P7360925385986567915

/-! ## A280176.P17205930020274593742

`A007318(C(2, n))*A280180(A055999(n)+10)`
-/

namespace A280176.P17205930020274593742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A280180 (A055999 n + 10).toNat

end

end A280176.P17205930020274593742

/-! ## A280176.P1111446757729107134

`A280180(A055999(n)+10)/A007318(C(n, n²))`
-/

namespace A280176.P1111446757729107134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280180 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A280176.P1111446757729107134

/-! ## A280176.P11071810899052550428

`A280180(A055999(n)+10)%A010971(2*n+1)`
-/

namespace A280176.P11071810899052550428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280180 (A055999 n + 10).toNat) (A010971 (2 * n + 1 + 18))

end

end A280176.P11071810899052550428

/-!
# A280177: Number of nX5 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280177, there is no canonical definition to state claims against.
-/

/-! ## A280177.P14720021295075149074

`A280180(A374005(n+1))`
-/

namespace A280177.P14720021295075149074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A374005 (n + 1)).toNat

end

end A280177.P14720021295075149074

/-! ## A280177.P4607907583729010399

`A280180(A155212(n)+13)`
-/

namespace A280177.P4607907583729010399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A155212 n + 13).toNat

end

end A280177.P4607907583729010399

/-! ## A280177.P1072274344320448648

`A280180(A056000(n)+15)`
-/

namespace A280177.P1072274344320448648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A056000 n + 15).toNat

end

end A280177.P1072274344320448648

/-! ## A280177.P4875380523347828169

`A280180(eq[7, A066657(n)])`
-/

namespace A280177.P4875380523347828169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280177.P4875380523347828169

/-! ## A280177.P6037863894455234497

`A280180(A000124(n+4)+4)`
-/

namespace A280177.P6037863894455234497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A000124 (n + 4) + 4).toNat

end

end A280177.P6037863894455234497

/-!
# A280178: Number of nX6 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280178, there is no canonical definition to state claims against.
-/

/-! ## A280178.P12925725391283641606

`A280180(A374007(n+1))`
-/

namespace A280178.P12925725391283641606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A374007 (n + 1)).toNat

end

end A280178.P12925725391283641606

/-! ## A280178.P1910531342441518462

`A280180(A055999(n+2)+12)`
-/

namespace A280178.P1910531342441518462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A055999 (n + 2) + 12).toNat

end

end A280178.P1910531342441518462

/-! ## A280178.P11217097966077102756

`A280180(eq[7, A131818(n+1)])`
-/

namespace A280178.P11217097966077102756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280178.P11217097966077102756

/-! ## A280178.P587091769138128218

`A280180(abs(n-A000217(n+6)))`
-/

namespace A280178.P587091769138128218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 |(n : ℤ) - A000217 (n + 6)|.toNat

end

end A280178.P587091769138128218

/-! ## A280178.P18140103882235696566

`A280180(A052905(n+3))`
-/

namespace A280178.P18140103882235696566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A052905 (n + 3)).toNat

end

end A280178.P18140103882235696566

/-!
# A280179: Number of nX7 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280179, there is no canonical definition to state claims against.
-/

/-! ## A280179.P18156766210139872457

`A280180(A374008(n+1))`
-/

namespace A280179.P18156766210139872457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A374008 (n + 1)).toNat

end

end A280179.P18156766210139872457

/-! ## A280179.P10564842511091205689

`A280180(A056119(n)+28)`
-/

namespace A280179.P10564842511091205689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A056119 n + 28).toNat

end

end A280179.P10564842511091205689

/-! ## A280179.P4143704191109551910

`A280180(eq[11, A066657(n)])`
-/

namespace A280179.P4143704191109551910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280179.P4143704191109551910

/-! ## A280179.P8229534385535570629

`A280180(A167499(n+5)+2)`
-/

namespace A280179.P8229534385535570629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A167499 (n + 5) + 2).toNat

end

end A280179.P8229534385535570629

/-! ## A280179.P8047854381373258375

`A280180(A167614(n+5)+4)`
-/

namespace A280179.P8047854381373258375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (A167614 (n + 5) + 4).toNat

end

end A280179.P8047854381373258375

/-!
# A280181: Indices of centered 9-gonal numbers (A060544) that are also squares (A000290).

The programs for A280181, the canonical program `A280181.P1753188078015422073` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280181 has offset 1).

The definition of A280181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280181.P1753188078015422073

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=1, a(1)=17, a(2)=561`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280181

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P1753188078015422073.Spec : Prop :=
  ∀ n, P1753188078015422073.a n = A280181 (n + 1)

theorem P1753188078015422073.correct : P1753188078015422073.Spec := by
  intro n
  simp only [A280181, Nat.add_sub_cancel]

end A280181

/-! ## A280181.P14297820110902655751

`(A002315(n)²+2)/3`
-/

namespace A280181.P14297820110902655751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n ^ 2 + 2 : ℚ) / 3

end

end A280181.P14297820110902655751

namespace A280181

/-- `(A002315(n)²+2)/3` -/
def P14297820110902655751.Spec : Prop :=
  ∀ n, P14297820110902655751.a n = (A280181 (n + 1) : ℚ)

end A280181

/-! ## A280181.P15861601891361681949

`(2*A001653(n+1)²+1)/3`
-/

namespace A280181.P15861601891361681949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001653 (n + 1) ^ 2 + 1 : ℚ) / 3

end

end A280181.P15861601891361681949

namespace A280181

/-- `(2*A001653(n+1)²+1)/3` -/
def P15861601891361681949.Spec : Prop :=
  ∀ n, P15861601891361681949.a n = (A280181 (n + 1) : ℚ)

end A280181

/-! ## A280181.P13849186094400086871

`A077420(floor(n/2))*A056771(floor((n+1)/2))`
-/

namespace A280181.P13849186094400086871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077420 ⌊(n : ℚ) / 2⌋.toNat * A056771 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A280181.P13849186094400086871

namespace A280181

/-- `A077420(floor(n/2))*A056771(floor((n+1)/2))` -/
def P13849186094400086871.Spec : Prop :=
  ∀ n, P13849186094400086871.a n = A280181 (n + 1)

end A280181

/-! ## A280181.P1239658514363074575

`ceil(ceil(∑[((sqrt(2)+1)^n)²])²/3)`
-/

namespace A280181.P1239658514363074575
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2 : ℚ) / 3⌉

end

end A280181.P1239658514363074575

namespace A280181

/-- `ceil(ceil(∑[((sqrt(2)+1)^n)²])²/3)` -/
def P1239658514363074575.Spec : Prop :=
  ∀ n, P1239658514363074575.a n = A280181 (n + 1)

end A280181

/-! ## A280181.P2575867807458959796

`2*∑[34*a(n-1)-a(n-2)]+1` with `a(0)=0, a(1)=8`
-/

namespace A280181.P2575867807458959796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A280181.P2575867807458959796

namespace A280181

/-- `2*∑[34*a(n-1)-a(n-2)]+1` -/
def P2575867807458959796.Spec : Prop :=
  ∀ n, P2575867807458959796.a n = A280181 (n + 1)

end A280181

/-! ## A280181.P10006382458252833098

`round(A077420(n)/2)`
-/

namespace A280181.P10006382458252833098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077420 n : ℚ) / 2)

end

end A280181.P10006382458252833098

namespace A280181

/-- `round(A077420(n)/2)` -/
def P10006382458252833098.Spec : Prop :=
  ∀ n, P10006382458252833098.a n = A280181 (n + 1)

end A280181

/-! ## A280181.P4972721555070076525

`A008845(n)/3+1`
-/

namespace A280181.P4972721555070076525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008845 n : ℚ) / 3 + 1

end

end A280181.P4972721555070076525

namespace A280181

/-- `A008845(n)/3+1` -/
def P4972721555070076525.Spec : Prop :=
  ∀ n, P4972721555070076525.a n = (A280181 (n + 1) : ℚ)

end A280181

/-! ## A280181.P11736415212192641881

`(A008843(n)+2)/3`
-/

namespace A280181.P11736415212192641881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008843 n + 2 : ℚ) / 3

end

end A280181.P11736415212192641881

namespace A280181

/-- `(A008843(n)+2)/3` -/
def P11736415212192641881.Spec : Prop :=
  ∀ n, P11736415212192641881.a n = (A280181 (n + 1) : ℚ)

end A280181

/-! ## A280181.P3954591535562755978

`∑[A144533(2*n)]+1`
-/

namespace A280181.P3954591535562755978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144533 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A280181.P3954591535562755978

namespace A280181

/-- `∑[A144533(2*n)]+1` -/
def P3954591535562755978.Spec : Prop :=
  ∀ n, P3954591535562755978.a n = A280181 (n + 1)

end A280181

/-!
# A280183: Positions of pandigital 10-digit numbers after the decimal point in the decimal expansion of Pi.

The programs for A280183, there is no canonical definition to state claims against.
-/

/-! ## A280183.P11559812244427437660

`A258157(n+1)-1`
-/

namespace A280183.P11559812244427437660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258157 (n + 1) - 1

end

end A280183.P11559812244427437660

/-! ## A280183.P1163957316651779727

`xor(-A258157(n+1), A033999(Δ[n²]))`
-/

namespace A280183.P1163957316651779727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A258157 (n + 1)) (A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A280183.P1163957316651779727

/-! ## A280183.P4845374410413344606

`A291200(A014963(2*(n+1)))+A258157(n+1)`
-/

namespace A280183.P4845374410413344606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291200 (A014963 (2 * (n + 1))).toNat + A258157 (n + 1)

end

end A280183.P4845374410413344606

/-! ## A280183.P10474122229242913037

`A305974(A005384(n+1))+A258157(n+1)`
-/

namespace A280183.P10474122229242913037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A005384 (n + 1)).toNat + A258157 (n + 1)

end

end A280183.P10474122229242913037

/-! ## A280183.P6419035212166377072

`A307428(A067208(n+1))+A258157(n+1)`
-/

namespace A280183.P6419035212166377072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A067208 (n + 1)).toNat + A258157 (n + 1)

end

end A280183.P6419035212166377072

/-! ## A280183.P1124131977867260111

`A341621(A057728(n+1))+A258157(n+1)`
-/

namespace A280183.P1124131977867260111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (A057728 (n + 1)).toNat + A258157 (n + 1)

end

end A280183.P1124131977867260111

/-!
# A280184: Number of cyclic subgroups of the group C_n x C_n x C_n x C_n, where C_n is the cyclic group of order n.

The programs for A280184, the canonical program `A280184.P6105905186965531621` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280184 has offset 1).

The definition of A280184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280184.P6105905186965531621

`∑{d}[n+1, A160891(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280184

/-- `∑{d}[n+1, A160891(#)]` -/
def P6105905186965531621.Spec : Prop :=
  ∀ n, P6105905186965531621.a n = A280184 (n + 1)

theorem P6105905186965531621.correct : P6105905186965531621.Spec := by
  intro n
  simp only [A280184, Nat.add_sub_cancel]

end A280184

/-! ## A280184.P15392170762466702513

`∑{d}[A000583(n+1), A000190(#)]`
-/

namespace A280184.P15392170762466702513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000190 d

end

end A280184.P15392170762466702513

namespace A280184

/-- `∑{d}[A000583(n+1), A000190(#)]` -/
def P15392170762466702513.Spec : Prop :=
  ∀ n, P15392170762466702513.a n = A280184 (n + 1)

end A280184

/-!
# A280185: a(n) = n - A004090(n), where A004090 is the sum of digits of the Fibonacci numbers A000045.

The programs for A280185, the canonical program `A280185.P338572658367298625` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280185 has offset 0).

The definition of A280185 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280185.P338572658367298625

`n-A004090(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A280185

/-- `n-A004090(n)` -/
def P338572658367298625.Spec : Prop :=
  ∀ n, P338572658367298625.a n = A280185 n

theorem P338572658367298625.correct : P338572658367298625.Spec := by
  intro n
  simp only [A280185]

end A280185

/-! ## A280185.P3591039035137821296

`n-A007953(A000045(n))`
-/

namespace A280185.P3591039035137821296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 (A000045 n).toNat

end

end A280185.P3591039035137821296

namespace A280185

/-- `n-A007953(A000045(n))` -/
def P3591039035137821296.Spec : Prop :=
  ∀ n, P3591039035137821296.a n = A280185 n

end A280185

/-! ## A280185.P14832192974316893847

`n-∑{digits}[A272918(n), #]`
-/

namespace A280185.P14832192974316893847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P14832192974316893847

namespace A280185

/-- `n-∑{digits}[A272918(n), #]` -/
def P14832192974316893847.Spec : Prop :=
  ∀ n, P14832192974316893847.a n = A280185 n

end A280185

/-! ## A280185.P11579489742573950920

`n-∑{digits}[a(n-2)+a(n-1), #]` with `a(0)=0, a(1)=1`
-/

namespace A280185.P11579489742573950920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P11579489742573950920

namespace A280185

/-- `n-∑{digits}[a(n-2)+a(n-1), #]` -/
def P11579489742573950920.Spec : Prop :=
  ∀ n, P11579489742573950920.a n = A280185 n

end A280185

/-! ## A280185.P2074501521289899896

`n-∑{digits}[A004091(n), #]`
-/

namespace A280185.P2074501521289899896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P2074501521289899896

namespace A280185

/-- `n-∑{digits}[A004091(n), #]` -/
def P2074501521289899896.Spec : Prop :=
  ∀ n, P2074501521289899896.a n = A280185 n

end A280185

/-! ## A280185.P12943921950285573287

`n-∑{digits}[A236191(n), #]`
-/

namespace A280185.P12943921950285573287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P12943921950285573287

namespace A280185

/-- `n-∑{digits}[A236191(n), #]` -/
def P12943921950285573287.Spec : Prop :=
  ∀ n, P12943921950285573287.a n = A280185 n

end A280185

/-! ## A280185.P410956004535985976

`n-∑{digits}[A273003(n), #]`
-/

namespace A280185.P410956004535985976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P410956004535985976

namespace A280185

/-- `n-∑{digits}[A273003(n), #]` -/
def P410956004535985976.Spec : Prop :=
  ∀ n, P410956004535985976.a n = A280185 n

end A280185

/-! ## A280185.P14205912319815320085

`n-∑{digits}[A212804(n+1), #]`
-/

namespace A280185.P14205912319815320085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P14205912319815320085

namespace A280185

/-- `n-∑{digits}[A212804(n+1), #]` -/
def P14205912319815320085.Spec : Prop :=
  ∀ n, P14205912319815320085.a n = A280185 n

end A280185

/-! ## A280185.P8048626090742953094

`n-∑{digits}[A103609(2*n), #]`
-/

namespace A280185.P8048626090742953094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P8048626090742953094

namespace A280185

/-- `n-∑{digits}[A103609(2*n), #]` -/
def P8048626090742953094.Spec : Prop :=
  ∀ n, P8048626090742953094.a n = A280185 n

end A280185

/-! ## A280185.P18160408621838733598

`n-∑{digits}[A129982(2*n+1), #]`
-/

namespace A280185.P18160408621838733598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P18160408621838733598

namespace A280185

/-- `n-∑{digits}[A129982(2*n+1), #]` -/
def P18160408621838733598.Spec : Prop :=
  ∀ n, P18160408621838733598.a n = A280185 n

end A280185

/-! ## A280185.P1847706937233764212

`2*n-∑{digits}[1-A001611(n), #]-n`
-/

namespace A280185.P1847706937233764212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)

end

end A280185.P1847706937233764212

namespace A280185

/-- `2*n-∑{digits}[1-A001611(n), #]-n` -/
def P1847706937233764212.Spec : Prop :=
  ∀ n, P1847706937233764212.a n = A280185 n

end A280185

/-! ## A280185.P14776522574940853601

`n-∑{digits}[A053602(2*n), #]`
-/

namespace A280185.P14776522574940853601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P14776522574940853601

namespace A280185

/-- `n-∑{digits}[A053602(2*n), #]` -/
def P14776522574940853601.Spec : Prop :=
  ∀ n, P14776522574940853601.a n = A280185 n

end A280185

/-! ## A280185.P17054120658110257717

`n-∑{digits}[A302126(2*n), #]`
-/

namespace A280185.P17054120658110257717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P17054120658110257717

namespace A280185

/-- `n-∑{digits}[A302126(2*n), #]` -/
def P17054120658110257717.Spec : Prop :=
  ∀ n, P17054120658110257717.a n = A280185 n

end A280185

/-! ## A280185.P4087013164104109673

`n-∑{digits}[A333378(n), #]`
-/

namespace A280185.P4087013164104109673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P4087013164104109673

namespace A280185

/-- `n-∑{digits}[A333378(n), #]` -/
def P4087013164104109673.Spec : Prop :=
  ∀ n, P4087013164104109673.a n = A280185 n

end A280185

/-! ## A280185.P7073842235506426007

`n-∑{digits}[A303427(2*n+1), #]`
-/

namespace A280185.P7073842235506426007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P7073842235506426007

namespace A280185

/-- `n-∑{digits}[A303427(2*n+1), #]` -/
def P7073842235506426007.Spec : Prop :=
  ∀ n, P7073842235506426007.a n = A280185 n

end A280185

/-! ## A280185.P10533626015554292587

`n-∑{digits}[A022093(n), #]`
-/

namespace A280185.P10533626015554292587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A280185.P10533626015554292587

namespace A280185

/-- `n-∑{digits}[A022093(n), #]` -/
def P10533626015554292587.Spec : Prop :=
  ∀ n, P10533626015554292587.a n = A280185 n

end A280185

/-!
# A280186: Number of 3-element subsets of S = {1..n} whose sum is odd.

The programs for A280186, the canonical program `A280186.P2609744935068537347` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280186 has offset 0).

The definition of A280186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280186.P2609744935068537347

`∑[2*C(floor(n/2), 2)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280186

/-- `∑[2*C(floor(n/2), 2)]` -/
def P2609744935068537347.Spec : Prop :=
  ∀ n, (P2609744935068537347.a n : ℤ) = A280186 n

theorem P2609744935068537347.correct : P2609744935068537347.Spec := by
  intro n
  simp only [A280186]

end A280186

/-! ## A280186.P6488225834801081985

`∑[∑[(3*n)%or(1, n)]]`
-/

namespace A280186.P6488225834801081985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n % Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280186.P6488225834801081985

namespace A280186

/-- `∑[∑[(3*n)%or(1, n)]]` -/
def P6488225834801081985.Spec : Prop :=
  ∀ n, (P6488225834801081985.a n : ℤ) = A280186 n

end A280186

/-! ## A280186.P4803434189994795423

`∑[∑[(2*n)%(xor(1, n)+1)]]`
-/

namespace A280186.P4803434189994795423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % (Nat.xor 1 n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280186.P4803434189994795423

namespace A280186

/-- `∑[∑[(2*n)%(xor(1, n)+1)]]` -/
def P4803434189994795423.Spec : Prop :=
  ∀ n, (P4803434189994795423.a n : ℤ) = A280186 n

end A280186

/-! ## A280186.P12575336684505227979

`∑[floor(n/2)²-floor(n/2)]`
-/

namespace A280186.P12575336684505227979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2 - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280186.P12575336684505227979

namespace A280186

/-- `∑[floor(n/2)²-floor(n/2)]` -/
def P12575336684505227979.Spec : Prop :=
  ∀ n, P12575336684505227979.a n = A280186 n

end A280186

/-! ## A280186.P8551839839931286617

`floor(a(n-2)+(2-n)²/2)` with `a(0)=0, a(1)=0`
-/

namespace A280186.P8551839839931286617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((2 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

end

end A280186.P8551839839931286617

namespace A280186

/-- `floor(a(n-2)+(2-n)²/2)` -/
def P8551839839931286617.Spec : Prop :=
  ∀ n, P8551839839931286617.a n = A280186 n

end A280186

/-! ## A280186.P2875419512903076653

`∑[a(n-2)+2]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A280186.P2875419512903076653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A280186.P2875419512903076653

namespace A280186

/-- `∑[a(n-2)+2]+a(n-2)` -/
def P2875419512903076653.Spec : Prop :=
  ∀ n, (P2875419512903076653.a n : ℤ) = A280186 n

end A280186

/-! ## A280186.P6776532057672774571

`a(n-2)-∑[a(n-2)-2]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A280186.P6776532057672774571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f1 =>
  f1 (n - 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  a (n - 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280186.P6776532057672774571

namespace A280186

/-- `a(n-2)-∑[a(n-2)-2]` -/
def P6776532057672774571.Spec : Prop :=
  ∀ n, P6776532057672774571.a n = A280186 n

end A280186

/-! ## A280186.P7272063386308172363

`C(n, 3)/2-(1-(-1)^n)*(n-1)/8`
-/

namespace A280186.P7272063386308172363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℚ) / 2 - ((1 - (-1) ^ n) * ((n : ℤ) - 1) : ℚ) / 8

end

end A280186.P7272063386308172363

namespace A280186

/-- `C(n, 3)/2-(1-(-1)^n)*(n-1)/8` -/
def P7272063386308172363.Spec : Prop :=
  ∀ n, P7272063386308172363.a n = (A280186 n : ℚ)

end A280186

/-! ## A280186.P6283241372812351338

`A006584(abs(1-n))`
-/

namespace A280186.P6283241372812351338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 |1 - (n : ℤ)|.toNat

end

end A280186.P6283241372812351338

namespace A280186

/-- `A006584(abs(1-n))` -/
def P6283241372812351338.Spec : Prop :=
  ∀ n, P6283241372812351338.a n = A280186 n

end A280186

/-! ## A280186.P8144822220978606372

`∑[A264754(n)]-(n+1)²`
-/

namespace A280186.P8144822220978606372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A280186.P8144822220978606372

namespace A280186

/-- `∑[A264754(n)]-(n+1)²` -/
def P8144822220978606372.Spec : Prop :=
  ∀ n, P8144822220978606372.a n = A280186 n

end A280186

/-! ## A280186.P18428128629448611502

`A175287(n)-A001318(n)`
-/

namespace A280186.P18428128629448611502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n - A001318 n

end

end A280186.P18428128629448611502

namespace A280186

/-- `A175287(n)-A001318(n)` -/
def P18428128629448611502.Spec : Prop :=
  ∀ n, P18428128629448611502.a n = A280186 n

end A280186

/-! ## A280186.P10494979623473070455

`A212964(n)-A006584(n)`
-/

namespace A280186.P10494979623473070455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n - A006584 n

end

end A280186.P10494979623473070455

namespace A280186

/-- `A212964(n)-A006584(n)` -/
def P10494979623473070455.Spec : Prop :=
  ∀ n, P10494979623473070455.a n = A280186 n

end A280186

/-! ## A280186.P6225683775123099277

`A005993(n)-A238377(n)`
-/

namespace A280186.P6225683775123099277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - A238377 n

end

end A280186.P6225683775123099277

namespace A280186

/-- `A005993(n)-A238377(n)` -/
def P6225683775123099277.Spec : Prop :=
  ∀ n, P6225683775123099277.a n = A280186 n

end A280186

/-! ## A280186.P749911794893091736

`A361272(n)-A131355(n)`
-/

namespace A280186.P749911794893091736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361272 n - A131355 n

end

end A280186.P749911794893091736

namespace A280186

/-- `A361272(n)-A131355(n)` -/
def P749911794893091736.Spec : Prop :=
  ∀ n, P749911794893091736.a n = A280186 n

end A280186

/-! ## A280186.P3762327974733885738

`A274772(n)-A325517(n)`
-/

namespace A280186.P3762327974733885738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274772 n - A325517 n

end

end A280186.P3762327974733885738

namespace A280186

/-- `A274772(n)-A325517(n)` -/
def P3762327974733885738.Spec : Prop :=
  ∀ n, P3762327974733885738.a n = A280186 n

end A280186

/-! ## A280186.P10342398643529860077

`2*(A175287(n)-A006918(n))`
-/

namespace A280186.P10342398643529860077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A175287 n - A006918 n)

end

end A280186.P10342398643529860077

namespace A280186

/-- `2*(A175287(n)-A006918(n))` -/
def P10342398643529860077.Spec : Prop :=
  ∀ n, P10342398643529860077.a n = A280186 n

end A280186

/-! ## A280186.P5729209388540756870

`2*(A361276(n)-A361275(n))`
-/

namespace A280186.P5729209388540756870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A361276 n - A361275 n)

end

end A280186.P5729209388540756870

namespace A280186

/-- `2*(A361276(n)-A361275(n))` -/
def P5729209388540756870.Spec : Prop :=
  ∀ n, P5729209388540756870.a n = A280186 n

end A280186

/-! ## A280186.P141173913415972263

`A212960(n)/2-A212970(n)`
-/

namespace A280186.P141173913415972263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212960 n : ℚ) / 2 - (A212970 n : ℚ)

end

end A280186.P141173913415972263

namespace A280186

/-- `A212960(n)/2-A212970(n)` -/
def P141173913415972263.Spec : Prop :=
  ∀ n, P141173913415972263.a n = (A280186 n : ℚ)

end A280186

/-! ## A280186.P12789070448603851387

`∑[A004526(n)²]-A002620(n)`
-/

namespace A280186.P12789070448603851387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002620 n

end

end A280186.P12789070448603851387

namespace A280186

/-- `∑[A004526(n)²]-A002620(n)` -/
def P12789070448603851387.Spec : Prop :=
  ∀ n, P12789070448603851387.a n = A280186 n

end A280186

/-! ## A280186.P10586468740221246417

`A005998(n+1)-A014112(n+1)`
-/

namespace A280186.P10586468740221246417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005998 (n + 1) - A014112 (n + 1)

end

end A280186.P10586468740221246417

namespace A280186

/-- `A005998(n+1)-A014112(n+1)` -/
def P10586468740221246417.Spec : Prop :=
  ∀ n, P10586468740221246417.a n = A280186 n

end A280186

/-!
# A280187: Numbers n such that 2 * (1^n + 2^n + 3^n + ... + n^n) is not 0 (mod n), but 2 * (1^d + 2^d + 3^d + ... + d^d) is 0 (mod d) for each other d | n.

The programs for A280187, the canonical program `A280187.P1686758095884757779` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280187 has offset 1).

The definition of A280187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280187.P1686758095884757779

`p?[A226872(n+2)+1]²-p?[A226872(n+2)+1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A280187

/-- `p?[A226872(n+2)+1]²-p?[A226872(n+2)+1]` -/
def P1686758095884757779.Spec : Prop :=
  ∀ n, P1686758095884757779.a n = A280187 (n + 1)

theorem P1686758095884757779.correct : P1686758095884757779.Spec := by
  intro n
  simp only [A280187, Nat.add_sub_cancel]

end A280187

/-! ## A280187.P15193941601156603752

`A103505(p?[A226872(n+2)+1])`
-/

namespace A280187.P15193941601156603752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280187.P15193941601156603752

namespace A280187

/-- `A103505(p?[A226872(n+2)+1])` -/
def P15193941601156603752.Spec : Prop :=
  ∀ n, P15193941601156603752.a n = A280187 (n + 1)

end A280187

/-! ## A280187.P11186611460953516837

`A345988(p?[A226872(n+2)+1])`
-/

namespace A280187.P11186611460953516837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345988 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280187.P11186611460953516837

namespace A280187

/-- `A345988(p?[A226872(n+2)+1])` -/
def P11186611460953516837.Spec : Prop :=
  ∀ n, P11186611460953516837.a n = A280187 (n + 1)

end A280187

/-! ## A280187.P6135548587840384914

`A002378(p?[A226872(n+2)+1]-1)`
-/

namespace A280187.P6135548587840384914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A280187.P6135548587840384914

namespace A280187

/-- `A002378(p?[A226872(n+2)+1]-1)` -/
def P6135548587840384914.Spec : Prop :=
  ∀ n, P6135548587840384914.a n = A280187 (n + 1)

end A280187

/-! ## A280187.P5090675670053544619

`A064400(p?[A226872(n+2)+1])/3`
-/

namespace A280187.P5090675670053544619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064400 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 3

end

end A280187.P5090675670053544619

namespace A280187

/-- `A064400(p?[A226872(n+2)+1])/3` -/
def P5090675670053544619.Spec : Prop :=
  ∀ n, P5090675670053544619.a n = (A280187 (n + 1) : ℚ)

end A280187

/-! ## A280187.P2340972508257156460

`A002378(xor(1, p?[A226872(n+2)+1]))`
-/

namespace A280187.P2340972508257156460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A280187.P2340972508257156460

namespace A280187

/-- `A002378(xor(1, p?[A226872(n+2)+1]))` -/
def P2340972508257156460.Spec : Prop :=
  ∀ n, P2340972508257156460.a n = A280187 (n + 1)

end A280187

/-! ## A280187.P15002222788100326298

`A002378(and(-2, p?[A226872(n+2)+1]))`
-/

namespace A280187.P15002222788100326298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (Int.land (-2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A280187.P15002222788100326298

namespace A280187

/-- `A002378(and(-2, p?[A226872(n+2)+1]))` -/
def P15002222788100326298.Spec : Prop :=
  ∀ n, P15002222788100326298.a n = A280187 (n + 1)

end A280187

/-! ## A280187.P15148688117627153981

`2*A229311(n+1)`
-/

namespace A280187.P15148688117627153981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229311 (n + 1)

end

end A280187.P15148688117627153981

namespace A280187

/-- `2*A229311(n+1)` -/
def P15148688117627153981.Spec : Prop :=
  ∀ n, P15148688117627153981.a n = A280187 (n + 1)

end A280187

/-! ## A280187.P3237122026373859849

`A229311(A000027(n+1))+A229311(n+1)`
-/

namespace A280187.P3237122026373859849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229311 (A000027 (n + 1)).toNat + A229311 (n + 1)

end

end A280187.P3237122026373859849

namespace A280187

/-- `A229311(A000027(n+1))+A229311(n+1)` -/
def P3237122026373859849.Spec : Prop :=
  ∀ n, P3237122026373859849.a n = A280187 (n + 1)

end A280187

/-!
# A280193: a(2*n) = 2, a(2*n + 1) = -1, a(0) = 1.

The programs for A280193, there is no canonical definition to state claims against.
-/

/-! ## A280193.P18151427591479514080

`(-1)^n*A040001(n)`
-/

namespace A280193.P18151427591479514080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A040001 n

end

end A280193.P18151427591479514080

/-!
# A280194: Expansion of 1/(1 - Sum_{k>=1} mu(k)^2*x^k), where mu(k) is the Moebius function (A008683).

The programs for A280194, there is no canonical definition to state claims against.
-/

/-! ## A280194.P8657340034388272069

`A038567(A078483(n)-A036721(n))`
-/

namespace A280194.P8657340034388272069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A078483 n - A036721 n).toNat

end

end A280194.P8657340034388272069

/-! ## A280194.P9236253868726545714

`A353593(A000217(n))-A001591(n)`
-/

namespace A280194.P9236253868726545714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353593 (A000217 n).toNat - A001591 n

end

end A280194.P9236253868726545714

/-! ## A280194.P15072900074284224684

`Δ[record[A337223(A079262(n))]]`
-/

namespace A280194.P15072900074284224684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (A079262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280194.P15072900074284224684

/-! ## A280194.P6967120713874551852

`A046155(A086581(n)+A001519(n))`
-/

namespace A280194.P6967120713874551852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A086581 n + A001519 n).toNat

end

end A280194.P6967120713874551852

/-! ## A280194.P6215909214240808534

`A137579(A003242(n))+A079968(n)`
-/

namespace A280194.P6215909214240808534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A003242 n).toNat + A079968 n

end

end A280194.P6215909214240808534

/-!
# A280195: Expansion of 1/(1 - Sum_{k>=2} floor(1/omega(k))*x^k), where omega(k) is the number of distinct prime factors (A001221).

The programs for A280195, there is no canonical definition to state claims against.
-/

/-! ## A280195.P16361436029596129828

`A286224(n)-A025456(A185255(n))`
-/

namespace A280195.P16361436029596129828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286224 n - A025456 (A185255 n).toNat

end

end A280195.P16361436029596129828

/-! ## A280195.P16607809504262759816

`A286224(n)-A185284(A094994(n))`
-/

namespace A280195.P16607809504262759816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286224 n - A185284 (A094994 n).toNat

end

end A280195.P16607809504262759816

/-! ## A280195.P16429934516659033815

`A286224(n)-A340998(A099597(n))`
-/

namespace A280195.P16429934516659033815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286224 n - A340998 ((A099597 n).toNat + 140)

end

end A280195.P16429934516659033815

/-! ## A280195.P7557627772517118842

`A286224(n)%A002907(n)`
-/

namespace A280195.P7557627772517118842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286224 n) (A002907 n)

end

end A280195.P7557627772517118842

/-! ## A280195.P2715459557476264025

`and(A286224(n), A383046(n+3))`
-/

namespace A280195.P2715459557476264025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286224 n) (A383046 (n + 3))

end

end A280195.P2715459557476264025

/-!
# A280196: Numbers n such that a^(n-1) == 1 (mod n^2) has no solutions with 1 < a < n^2-1.

The programs for A280196, the canonical program `A280196.P16878667472138717475` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280196 has offset 1).

The definition of A280196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280196.P16878667472138717475

`lt[n, A318828(n+1)+2]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A280196

/-- `lt[n, A318828(n+1)+2]+1` -/
def P16878667472138717475.Spec : Prop :=
  ∀ n, (P16878667472138717475.a n : ℤ) = A280196 (n + 1)

theorem P16878667472138717475.correct : P16878667472138717475.Spec := by
  intro n
  simp only [A280196, Nat.add_sub_cancel]

end A280196

/-! ## A280196.P1464321933412386836

`∪[A000244(n), A209211(n+1)]`
-/

namespace A280196.P1464321933412386836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280196.P1464321933412386836

namespace A280196

/-- `∪[A000244(n), A209211(n+1)]` -/
def P1464321933412386836.Spec : Prop :=
  ∀ n, (P1464321933412386836.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P16250104871259054

`∪[A038754(n), A209211(n+1)]`
-/

namespace A280196.P16250104871259054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280196.P16250104871259054

namespace A280196

/-- `∪[A038754(n), A209211(n+1)]` -/
def P16250104871259054.Spec : Prop :=
  ∀ n, (P16250104871259054.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P13448721352446433825

`∪[A025616(n+1), A209211(n+1)]`
-/

namespace A280196.P13448721352446433825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280196.P13448721352446433825

namespace A280196

/-- `∪[A025616(n+1), A209211(n+1)]` -/
def P13448721352446433825.Spec : Prop :=
  ∀ n, (P13448721352446433825.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P7987028116320654815

`lt[A001222(gcd(2*n, A000010(n+1))), 2]+1`
-/

namespace A280196.P7987028116320654815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 * n : ℤ) (A000010 (n + 1)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A280196.P7987028116320654815

namespace A280196

/-- `lt[A001222(gcd(2*n, A000010(n+1))), 2]+1` -/
def P7987028116320654815.Spec : Prop :=
  ∀ n, (P7987028116320654815.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P9465956585893786149

`lt[A348259(n+1), 2]+1`
-/

namespace A280196.P9465956585893786149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A280196.P9465956585893786149

namespace A280196

/-- `lt[A348259(n+1), 2]+1` -/
def P9465956585893786149.Spec : Prop :=
  ∀ n, (P9465956585893786149.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P11185415128381835940

`lt[n, A105222(n+1)+1]+1`
-/

namespace A280196.P11185415128381835940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A280196.P11185415128381835940

namespace A280196

/-- `lt[n, A105222(n+1)+1]+1` -/
def P11185415128381835940.Spec : Prop :=
  ∀ n, (P11185415128381835940.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P17184471199652035699

`eq[1, gcd(n, A055034(n+1))]+1`
-/

namespace A280196.P17184471199652035699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A055034 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280196.P17184471199652035699

namespace A280196

/-- `eq[1, gcd(n, A055034(n+1))]+1` -/
def P17184471199652035699.Spec : Prop :=
  ∀ n, (P17184471199652035699.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P10651006616387847492

`eq[1, A000010(A063994(n+1))]+1`
-/

namespace A280196.P10651006616387847492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A063994 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280196.P10651006616387847492

namespace A280196

/-- `eq[1, A000010(A063994(n+1))]+1` -/
def P10651006616387847492.Spec : Prop :=
  ∀ n, (P10651006616387847492.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P4665827558711279965

`eq[2, A175306(A063994(n+1)+1)]+1`
-/

namespace A280196.P4665827558711279965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175306 (A063994 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280196.P4665827558711279965

namespace A280196

/-- `eq[2, A175306(A063994(n+1)+1)]+1` -/
def P4665827558711279965.Spec : Prop :=
  ∀ n, (P4665827558711279965.a n : ℤ) = A280196 (n + 1)

end A280196

/-! ## A280196.P6762689671379185027

`record[gcd(n+1, A063994(n+1)+A007310(n+1))]`
-/

namespace A280196.P6762689671379185027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A063994 (n + 1) + A007310 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280196.P6762689671379185027

namespace A280196

/-- `record[gcd(n+1, A063994(n+1)+A007310(n+1))]` -/
def P6762689671379185027.Spec : Prop :=
  ∀ n, (P6762689671379185027.a n : ℤ) = A280196 (n + 1)

end A280196

/-!
# A280198: Expansion of 1/(1 - Sum_{k>=1} mu(2*k-1)^2*x^(2*k-1)), where mu() is the Moebius function (A008683).

The programs for A280198, there is no canonical definition to state claims against.
-/

/-! ## A280198.P8737540723336074190

`A309676(n)+A185284(A002125(n))`
-/

namespace A280198.P8737540723336074190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309676 n + A185284 (A002125 n).toNat

end

end A280198.P8737540723336074190

/-! ## A280198.P7236293481057269334

`A309676(n)+A184964(A309662(n))`
-/

namespace A280198.P7236293481057269334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309676 n + A184964 (A309662 n).toNat

end

end A280198.P7236293481057269334

/-! ## A280198.P14319721612657514717

`A309676(A055646(n))`
-/

namespace A280198.P14319721612657514717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309676 (A055646 n).toNat

end

end A280198.P14319721612657514717

/-! ## A280198.P16626678189364425849

`A309676(A330336(n))`
-/

namespace A280198.P16626678189364425849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309676 (A330336 n).toNat

end

end A280198.P16626678189364425849

/-! ## A280198.P15795301486842923296

`A309676(A055647(n))`
-/

namespace A280198.P15795301486842923296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309676 (A055647 n).toNat

end

end A280198.P15795301486842923296

/-!
# A280199: Numbers n such that a^(n-1) == 1 (mod n^2) has solutions with 1 < a < n^2-1.

The programs for A280199, the canonical program `A280199.P9968655352959598236` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280199 has offset 1).

The definition of A280199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280199.P9968655352959598236

`lt[1, A348259(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A280199

/-- `lt[1, A348259(n+1)]+1` -/
def P9968655352959598236.Spec : Prop :=
  ∀ n, (P9968655352959598236.a n : ℤ) = A280199 (n + 1)

theorem P9968655352959598236.correct : P9968655352959598236.Spec := by
  intro n
  simp only [A280199, Nat.add_sub_cancel]

end A280199

/-! ## A280199.P10256366474948233940

`lt[A318828(n+2), n]+2`
-/

namespace A280199.P10256366474948233940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A280199.P10256366474948233940

namespace A280199

/-- `lt[A318828(n+2), n]+2` -/
def P10256366474948233940.Spec : Prop :=
  ∀ n, (P10256366474948233940.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P15148654492732553669

`comp[A280196(n+1)-1]+1`
-/

namespace A280199.P15148654492732553669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A280199.P15148654492732553669

namespace A280199

/-- `comp[A280196(n+1)-1]+1` -/
def P15148654492732553669.Spec : Prop :=
  ∀ n, (P15148654492732553669.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P562436142146954147

`lt[2, gcd(n², A000010(n+1))]+1`
-/

namespace A280199.P562436142146954147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A280199.P562436142146954147

namespace A280199

/-- `lt[2, gcd(n², A000010(n+1))]+1` -/
def P562436142146954147.Spec : Prop :=
  ∀ n, (P562436142146954147.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P8395802470102648929

`∪[A066047(n+1), A181780(n+1)]`
-/

namespace A280199.P8395802470102648929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280199.P8395802470102648929

namespace A280199

/-- `∪[A066047(n+1), A181780(n+1)]` -/
def P8395802470102648929.Spec : Prop :=
  ∀ n, (P8395802470102648929.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P4618528338110032749

`∪[A181780(n+1), A215848(n+1)]`
-/

namespace A280199.P4618528338110032749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280199.P4618528338110032749

namespace A280199

/-- `∪[A181780(n+1), A215848(n+1)]` -/
def P4618528338110032749.Spec : Prop :=
  ∀ n, (P4618528338110032749.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P54653221240059343

`∪[A181780(n+1), A286265(n+1)]`
-/

namespace A280199.P54653221240059343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280199.P54653221240059343

namespace A280199

/-- `∪[A181780(n+1), A286265(n+1)]` -/
def P54653221240059343.Spec : Prop :=
  ∀ n, (P54653221240059343.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P7096899990852618711

`∪[A181780(n+1), A348753(n+1)]`
-/

namespace A280199.P7096899990852618711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280199.P7096899990852618711

namespace A280199

/-- `∪[A181780(n+1), A348753(n+1)]` -/
def P7096899990852618711.Spec : Prop :=
  ∀ n, (P7096899990852618711.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P7487430770941302318

`lt[2, A063994(n+1)]+1`
-/

namespace A280199.P7487430770941302318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A280199.P7487430770941302318

namespace A280199

/-- `lt[2, A063994(n+1)]+1` -/
def P7487430770941302318.Spec : Prop :=
  ∀ n, (P7487430770941302318.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P18416856744101751669

`lt[A105222(n+1), n]+1`
-/

namespace A280199.P18416856744101751669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A280199.P18416856744101751669

namespace A280199

/-- `lt[A105222(n+1), n]+1` -/
def P18416856744101751669.Spec : Prop :=
  ∀ n, (P18416856744101751669.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P11154986660837189232

`lt[A185103(n+2), n²]+2`
-/

namespace A280199.P11154986660837189232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A280199.P11154986660837189232

namespace A280199

/-- `lt[A185103(n+2), n²]+2` -/
def P11154986660837189232.Spec : Prop :=
  ∀ n, (P11154986660837189232.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P3402043335715511735

`lt[1, gcd(n, A055034(n+1))]+1`
-/

namespace A280199.P3402043335715511735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A055034 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A280199.P3402043335715511735

namespace A280199

/-- `lt[1, gcd(n, A055034(n+1))]+1` -/
def P3402043335715511735.Spec : Prop :=
  ∀ n, (P3402043335715511735.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P15377435631640827659

`lt[2, A063994(A028310(n))]`
-/

namespace A280199.P15377435631640827659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A280199.P15377435631640827659

namespace A280199

/-- `lt[2, A063994(A028310(n))]` -/
def P15377435631640827659.Spec : Prop :=
  ∀ n, (P15377435631640827659.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P16281133390089106074

`A020725(lt[2, A063994(n+1)])`
-/

namespace A280199.P16281133390089106074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280199.P16281133390089106074

namespace A280199

/-- `A020725(lt[2, A063994(n+1)])` -/
def P16281133390089106074.Spec : Prop :=
  ∀ n, P16281133390089106074.a n = A280199 (n + 1)

end A280199

/-! ## A280199.P12566127227369147401

`eq[char[A280196(n+1)], A000007(n)]`
-/

namespace A280199.P12566127227369147401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A280199.P12566127227369147401

namespace A280199

/-- `eq[char[A280196(n+1)], A000007(n)]` -/
def P12566127227369147401.Spec : Prop :=
  ∀ n, (P12566127227369147401.a n : ℤ) = A280199 (n + 1)

end A280199

/-! ## A280199.P7602244217403837999

`∪[A181780(n+1), A243292(n+1)]`
-/

namespace A280199.P7602244217403837999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280199.P7602244217403837999

namespace A280199

/-- `∪[A181780(n+1), A243292(n+1)]` -/
def P7602244217403837999.Spec : Prop :=
  ∀ n, (P7602244217403837999.a n : ℤ) = A280199 (n + 1)

end A280199

