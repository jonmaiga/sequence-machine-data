import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A140800: Total number of vertices in all finite n-dimensional convex regular polytopes, or 0 if the number is infinite.

The programs for A140800, there is no canonical definition to state claims against.
-/

/-! ## A140800.P2044808517553241859

`A281110(A281037(n))-A281050(n+1)`
-/

namespace A140800.P2044808517553241859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281110 (A281037 n).toNat - A281050 (n + 1)

end

end A140800.P2044808517553241859

/-!
# A140801: a(0)=360, a(n) = a(n-1) + 720 for n>=1.

The programs for A140801, the canonical program `A140801.P4761049125752980202` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140801 has offset 0).

The definition of A140801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140801.P4761049125752980202

`360+720*n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140801

/-- `360+720*n` -/
def P4761049125752980202.Spec : Prop :=
  ∀ n, (P4761049125752980202.a n : ℤ) = A140801 n

theorem P4761049125752980202.correct : P4761049125752980202.Spec := by
  intro n
  simp only [A140801]

end A140801

/-!
# A140802: a(n) = binomial(n+3, 3)*8^n.

The programs for A140802, the canonical program `A140802.P1949364510775223919` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140802 has offset 0).

The definition of A140802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140802.P1949364510775223919

`8^n*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140802

/-- `8^n*C(n+3, 3)` -/
def P1949364510775223919.Spec : Prop :=
  ∀ n, (P1949364510775223919.a n : ℤ) = A140802 n

theorem P1949364510775223919.correct : P1949364510775223919.Spec := by
  intro n
  simp only [A140802]

end A140802

/-! ## A140802.P15062153390407797785

`8^n*∑[∑[n+1]]`
-/

namespace A140802.P15062153390407797785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140802.P15062153390407797785

namespace A140802

/-- `8^n*∑[∑[n+1]]` -/
def P15062153390407797785.Spec : Prop :=
  ∀ n, (P15062153390407797785.a n : ℤ) = A140802 n

end A140802

/-! ## A140802.P16592546238169406

`abs(4*(6/n+2)*a(n-1))` with `a(0)=1`
-/

namespace A140802.P16592546238169406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  |4 * ((6 / (n : ℚ) + 2) * a (n - 1))|

end

end A140802.P16592546238169406

namespace A140802

/-- `abs(4*(6/n+2)*a(n-1))` -/
def P16592546238169406.Spec : Prop :=
  ∀ n, P16592546238169406.a n = (A140802 n : ℚ)

end A140802

/-! ## A140802.P7729977278454074067

`round(4*(6/n+2)*a(n-1))` with `a(0)=1`
-/

namespace A140802.P7729977278454074067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (4 * ((6 / (n : ℚ) + 2) * (a (n - 1) : ℚ)))

end

end A140802.P7729977278454074067

namespace A140802

/-- `round(4*(6/n+2)*a(n-1))` -/
def P7729977278454074067.Spec : Prop :=
  ∀ n, P7729977278454074067.a n = A140802 n

end A140802

/-! ## A140802.P6887304845418450276

`4*((6/n+2)*a(n-1)+1)-4` with `a(0)=1`
-/

namespace A140802.P6887304845418450276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((6 / (n : ℚ) + 2) * a (n - 1) + 1) - 4

end

end A140802.P6887304845418450276

namespace A140802

/-- `4*((6/n+2)*a(n-1)+1)-4` -/
def P6887304845418450276.Spec : Prop :=
  ∀ n, P6887304845418450276.a n = (A140802 n : ℚ)

end A140802

/-! ## A140802.P9759669915389692043

`∑[∑[2*(n+1)]]*A000079(3*n+1)/4`
-/

namespace A140802.P9759669915389692043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 (3 * n + 1) : ℚ) / 4

end

end A140802.P9759669915389692043

namespace A140802

/-- `∑[∑[2*(n+1)]]*A000079(3*n+1)/4` -/
def P9759669915389692043.Spec : Prop :=
  ∀ n, P9759669915389692043.a n = (A140802 n : ℚ)

end A140802

/-! ## A140802.P5667990506523303697

`lcm(A000079(n)*A038846(n), A000079(n))`
-/

namespace A140802.P5667990506523303697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n * A038846 n) (A000079 n)

end

end A140802.P5667990506523303697

namespace A140802

/-- `lcm(A000079(n)*A038846(n), A000079(n))` -/
def P5667990506523303697.Spec : Prop :=
  ∀ n, (P5667990506523303697.a n : ℤ) = A140802 n

end A140802

/-! ## A140802.P2967846966172571869

`A038279(A167614(n+2))`
-/

namespace A140802.P2967846966172571869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (A167614 (n + 2)).toNat

end

end A140802.P2967846966172571869

namespace A140802

/-- `A038279(A167614(n+2))` -/
def P2967846966172571869.Spec : Prop :=
  ∀ n, P2967846966172571869.a n = A140802 n

end A140802

/-! ## A140802.P4530528119647777705

`A038279(eq[3, A002262(n)])`
-/

namespace A140802.P4530528119647777705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140802.P4530528119647777705

namespace A140802

/-- `A038279(eq[3, A002262(n)])` -/
def P4530528119647777705.Spec : Prop :=
  ∀ n, P4530528119647777705.a n = A140802 n

end A140802

/-! ## A140802.P13889477595510471941

`A038279(eq[2, A002260(n+1)-2])`
-/

namespace A140802.P13889477595510471941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140802.P13889477595510471941

namespace A140802

/-- `A038279(eq[2, A002260(n+1)-2])` -/
def P13889477595510471941.Spec : Prop :=
  ∀ n, P13889477595510471941.a n = A140802 n

end A140802

/-! ## A140802.P4589911546119436795

`A038279(eq[2, A002260(n+1)/2])`
-/

namespace A140802.P4589911546119436795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A140802.P4589911546119436795

namespace A140802

/-- `A038279(eq[2, A002260(n+1)/2])` -/
def P4589911546119436795.Spec : Prop :=
  ∀ n, P4589911546119436795.a n = A140802 n

end A140802

/-! ## A140802.P9783436180361507976

`A013615(∑[n+3]+n+3)`
-/

namespace A140802.P9783436180361507976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A140802.P9783436180361507976

namespace A140802

/-- `A013615(∑[n+3]+n+3)` -/
def P9783436180361507976.Spec : Prop :=
  ∀ n, P9783436180361507976.a n = A140802 n

end A140802

/-! ## A140802.P12184797453383287095

`A001788(n+1)*A038846(n)/A000217(n+1)`
-/

namespace A140802.P12184797453383287095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 (n + 1) * A038846 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A140802.P12184797453383287095

namespace A140802

/-- `A001788(n+1)*A038846(n)/A000217(n+1)` -/
def P12184797453383287095.Spec : Prop :=
  ∀ n, P12184797453383287095.a n = (A140802 n : ℚ)

end A140802

/-!
# A140803: Numbers of the form (2^(p*q)-1) /((2^p-1)*(2^q-1)), where p>q are primes.

The programs for A140803, there is no canonical definition to state claims against.
-/

/-! ## A140803.P11418565792339693113

`∪[A143012(n+1), A126614(n+2)]%A187453(n+1)`
-/

namespace A140803.P11418565792339693113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126614 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A187453 (n + 1))

end

end A140803.P11418565792339693113

/-! ## A140803.P18326961261456730841

`filter[A112674(n+1), A296084(#)]`
-/

namespace A140803.P18326961261456730841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296084 (f1 j).toNat = 1) n)

end

end A140803.P18326961261456730841

/-! ## A140803.P3709786675137814517

`filter[A112674(n+2), A355820(#)]`
-/

namespace A140803.P3709786675137814517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A140803.P3709786675137814517

/-!
# A140804: Positions of harmonic numbers in the EKG sequence.

The programs for A140804, there is no canonical definition to state claims against.
-/

/-! ## A140804.P3120769079937461965

`∑{d}[A001599(n+1), A304526(#)]`
-/

namespace A140804.P3120769079937461965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A140804.P3120769079937461965

/-! ## A140804.P5916198637437908398

`A271839(n)+A064421(A001599(n+1))`
-/

namespace A140804.P5916198637437908398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271839 n + A064421 (A001599 (n + 1)).toNat

end

end A140804.P5916198637437908398

/-! ## A140804.P9122478861549879927

`A184348(n+1)+A064421(A001599(n+1))`
-/

namespace A140804.P9122478861549879927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (n + 1) + A064421 (A001599 (n + 1)).toNat

end

end A140804.P9122478861549879927

/-! ## A140804.P11114137238366232350

`A064664(A001599(n+1))`
-/

namespace A140804.P11114137238366232350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A001599 (n + 1)).toNat

end

end A140804.P11114137238366232350

/-! ## A140804.P10846948712116159177

`A064664(∑[A153789(n+1)]+1-A153789(n+1))`
-/

namespace A140804.P10846948712116159177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A153789 (n + 1))).toNat

end

end A140804.P10846948712116159177

/-!
# A140805: Triangle T(n, k) read by rows T(n,k) = binomial(n, k)^binomial(n, k).

The programs for A140805, there is no canonical definition to state claims against.
-/

/-! ## A140805.P11749183885627152042

`A000312(A007318(n))`
-/

namespace A140805.P11749183885627152042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A007318 n).toNat

end

end A140805.P11749183885627152042

/-! ## A140805.P7086844447107314935

`A094054(A008459(n))`
-/

namespace A140805.P7086844447107314935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A008459 n).toNat

end

end A140805.P7086844447107314935

/-! ## A140805.P3427772554912197055

`A110132(A028326(n))`
-/

namespace A140805.P3427772554912197055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (A028326 n).toNat

end

end A140805.P3427772554912197055

/-! ## A140805.P555375636523377199

`A033918(A107105(n))`
-/

namespace A140805.P555375636523377199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (A107105 n).toNat

end

end A140805.P555375636523377199

/-! ## A140805.P6268247598633988348

`A009998(A141597(n))`
-/

namespace A140805.P6268247598633988348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A141597 n).toNat

end

end A140805.P6268247598633988348

/-!
# A140806: Expansion of x *(1+x) *(x^2+1) *(15*x^4+1) / ( (x^4-2*x^3+2*x^2+2*x+1) *(x^4+2*x^3+2*x^2-2*x+1) ).

The programs for A140806, there is no canonical definition to state claims against.
-/

/-! ## A140806.P157089302639912134

`A122572(floor(n/4)+1)`
-/

namespace A140806.P157089302639912134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122572 (⌊(n : ℚ) / 4⌋ + 1).toNat

end

end A140806.P157089302639912134

/-! ## A140806.P2803761244024159102

`A122572(A008621(n))+A023531(3*n+4)`
-/

namespace A140806.P2803761244024159102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122572 (A008621 n).toNat + A023531 (3 * n + 4)

end

end A140806.P2803761244024159102

/-! ## A140806.P6112495729653863255

`A122572(A008621(n))+A082075(n+1)%4`
-/

namespace A140806.P6112495729653863255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122572 (A008621 n).toNat + Int.tmod (A082075 (n + 1)) 4

end

end A140806.P6112495729653863255

/-! ## A140806.P6037049077018884933

`A122572(A008621(n))+A079275(A020639(n+1))`
-/

namespace A140806.P6037049077018884933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122572 (A008621 n).toNat + A079275 (A020639 (n + 1)).toNat

end

end A140806.P6037049077018884933

/-! ## A140806.P17710270356295290118

`A122572(A008621(n))+A079275(A027697(n+1))`
-/

namespace A140806.P17710270356295290118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122572 (A008621 n).toNat + A079275 (A027697 (n + 1)).toNat

end

end A140806.P17710270356295290118

/-! ## A140806.P9248497016810904724

`A182687(A089765(n+3))+A122572(A008621(n))`
-/

namespace A140806.P9248497016810904724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182687 (A089765 (n + 3)).toNat + A122572 (A008621 n).toNat

end

end A140806.P9248497016810904724

/-! ## A140806.P12848190825262769894

`A182687(A295006(n+5))+A122572(A008621(n))`
-/

namespace A140806.P12848190825262769894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182687 (A295006 (n + 5)).toNat + A122572 (A008621 n).toNat

end

end A140806.P12848190825262769894

/-!
# A140807: a(n) is the largest integer such that n^k is palindromic in binary for all nonnegative integers k that are <= a(n).

The programs for A140807, the canonical program `A140807.P3846438794985278792` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140807 has offset 2).

The definition of A140807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140807.P10874412343102213316

`val(A264618(n+2), n+2)`
-/

namespace A140807.P10874412343102213316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A264618 (n + 2)).toNat (n + 2)

end

end A140807.P10874412343102213316

namespace A140807

/-- `val(A264618(n+2), n+2)` -/
def P10874412343102213316.Spec : Prop :=
  ∀ n, (P10874412343102213316.a n : ℤ) = A140807 (n + 2)

end A140807

/-! ## A140807.P791512833944535934

`C(A175297(n+2), 2-char[1]+n)`
-/

namespace A140807.P791512833944535934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175297 (n + 2)).toNat (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A140807.P791512833944535934

namespace A140807

/-- `C(A175297(n+2), 2-char[1]+n)` -/
def P791512833944535934.Spec : Prop :=
  ∀ n, (P791512833944535934.a n : ℤ) = A140807 (n + 2)

end A140807

/-! ## A140807.P6716333764139497707

`A006995(ceil(ratio[A206913(n+1)]))`
-/

namespace A140807.P6716333764139497707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A140807.P6716333764139497707

namespace A140807

/-- `A006995(ceil(ratio[A206913(n+1)]))` -/
def P6716333764139497707.Spec : Prop :=
  ∀ n, P6716333764139497707.a n = A140807 (n + 2)

end A140807

/-! ## A140807.P3846438794985278792

`floor(A175297(n+2)/(A175298(n+1)-2))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140807

/-- `floor(A175297(n+2)/(A175298(n+1)-2))` -/
def P3846438794985278792.Spec : Prop :=
  ∀ n, P3846438794985278792.a n = A140807 (n + 2)

theorem P3846438794985278792.correct : P3846438794985278792.Spec := by
  intro n
  simp only [A140807, Nat.add_sub_cancel]

end A140807

/-! ## A140807.P13507353541330028788

`floor(A175297(n+2)/(A206914(n+1)-2))`
-/

namespace A140807.P13507353541330028788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175297 (n + 2) : ℚ) / (A206914 (n + 1) - 2 : ℚ)⌋

end

end A140807.P13507353541330028788

namespace A140807

/-- `floor(A175297(n+2)/(A206914(n+1)-2))` -/
def P13507353541330028788.Spec : Prop :=
  ∀ n, P13507353541330028788.a n = A140807 (n + 2)

end A140807

/-! ## A140807.P3395372743625462500

`A014963(∑[n+1])-A178226(n+2)`
-/

namespace A140807.P3395372743625462500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) - A178226 (n + 2)

end

end A140807.P3395372743625462500

namespace A140807

/-- `A014963(∑[n+1])-A178226(n+2)` -/
def P3395372743625462500.Spec : Prop :=
  ∀ n, P3395372743625462500.a n = A140807 (n + 2)

end A140807

/-! ## A140807.P10911871100715800399

`floor(A014963(∑[n+1])/A259656(n+2))`
-/

namespace A140807.P10911871100715800399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A259656 (n + 2) : ℚ)⌋

end

end A140807.P10911871100715800399

namespace A140807

/-- `floor(A014963(∑[n+1])/A259656(n+2))` -/
def P10911871100715800399.Spec : Prop :=
  ∀ n, P10911871100715800399.a n = A140807 (n + 2)

end A140807

/-!
# A140809: 10^n-th squarefree number > 1.

The programs for A140809, there is no canonical definition to state claims against.
-/

/-! ## A140809.P12009705173782716880

`A144338(10^n)`
-/

namespace A140809.P12009705173782716880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (10 ^ n)

end

end A140809.P12009705173782716880

/-!
# A140811: a(n) = 6*n^2 - 1.

The programs for A140811, the canonical program `A140811.P17716776478933671421` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140811 has offset 0).

The definition of A140811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²-1` (program `A140811.P17716776478933671421`, by `A140811.P17716776478933671421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140811.P17716776478933671421

`6*n²-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140811

/-- `6*n²-1` -/
def P17716776478933671421.Spec : Prop :=
  ∀ n, P17716776478933671421.a n = A140811 n

theorem P17716776478933671421.correct : P17716776478933671421.Spec := by
  intro n
  simp only [A140811]

end A140811

/-! ## A140811.P859888373141308826

`xor(-6*n², -1)`
-/

namespace A140811.P859888373141308826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(6 * n ^ 2 : ℤ)) (-1)

end

end A140811.P859888373141308826

namespace A140811

/-- `xor(-6*n², -1)` -/
def P859888373141308826.Spec : Prop :=
  ∀ n, P859888373141308826.a n = A140811 n

end A140811

/-! ## A140811.P2591146407127830976

`or(1, n*6*n-1)`
-/

namespace A140811.P2591146407127830976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n * (6 * n) : ℤ) - 1)

end

end A140811.P2591146407127830976

namespace A140811

/-- `or(1, n*6*n-1)` -/
def P2591146407127830976.Spec : Prop :=
  ∀ n, P2591146407127830976.a n = A140811 n

end A140811

/-! ## A140811.P11997430317863514459

`∑[a(n-1)+12]` with `a(0)=-1, a(1)=6`
-/

namespace A140811.P11997430317863514459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 6] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140811.P11997430317863514459

namespace A140811

/-- `∑[a(n-1)+12]` -/
def P11997430317863514459.Spec : Prop :=
  ∀ n, P11997430317863514459.a n = A140811 n

end A140811

/-! ## A140811.P8269166385403572687

`Δ[(C(2*n, 2)-1)*(n-1)]`
-/

namespace A140811.P8269166385403572687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℤ) - 1) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140811.P8269166385403572687

namespace A140811

/-- `Δ[(C(2*n, 2)-1)*(n-1)]` -/
def P8269166385403572687.Spec : Prop :=
  ∀ n, P8269166385403572687.a n = A140811 n

end A140811

/-! ## A140811.P1950233711640212655

`Δ[(lcm(n, 2*n+1)+2)*(n-2)]`
-/

namespace A140811.P1950233711640212655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (2 * n + 1) + 2 : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140811.P1950233711640212655

namespace A140811

/-- `Δ[(lcm(n, 2*n+1)+2)*(n-2)]` -/
def P1950233711640212655.Spec : Prop :=
  ∀ n, P1950233711640212655.a n = A140811 n

end A140811

/-! ## A140811.P13026812566930145118

`Δ[(n-1)*(n-1)*xor(1, 2*n)]`
-/

namespace A140811.P13026812566930145118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((n : ℤ) - 1) * (Nat.xor 1 (2 * n) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140811.P13026812566930145118

namespace A140811

/-- `Δ[(n-1)*(n-1)*xor(1, 2*n)]` -/
def P13026812566930145118.Spec : Prop :=
  ∀ n, P13026812566930145118.a n = A140811 n

end A140811

/-! ## A140811.P10662999611520187070

`Δ[(2*n+1)*(n-1)^gcd(2, 2*n)]`
-/

namespace A140811.P10662999611520187070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n : ℤ) - 1) ^ Nat.gcd 2 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140811.P10662999611520187070

namespace A140811

/-- `Δ[(2*n+1)*(n-1)^gcd(2, 2*n)]` -/
def P10662999611520187070.Spec : Prop :=
  ∀ n, P10662999611520187070.a n = A140811 n

theorem P10662999611520187070.correct : P10662999611520187070.Spec := by
  intro n
  simp only [A140811, Nat.add_sub_cancel, A140811.P10662999611520187070.f1, A140811.P10662999611520187070.a, A140811.P17716776478933671421.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A140811

/-! ## A140811.P8355197360205094898

`Δ[(2*n+1)*((2*n+1)%(n+2))²]`
-/

namespace A140811.P8355197360205094898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((2 * n + 1) % (n + 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140811.P8355197360205094898

namespace A140811

/-- `Δ[(2*n+1)*((2*n+1)%(n+2))²]` -/
def P8355197360205094898.Spec : Prop :=
  ∀ n, P8355197360205094898.a n = A140811 n

end A140811

/-! ## A140811.P8933365257072222911

`record[(2*n+1)*(n+2)-lcm(n+1, n+3)]`
-/

namespace A140811.P8933365257072222911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 2) : ℤ) - (Nat.lcm (n + 1) (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140811.P8933365257072222911

namespace A140811

/-- `record[(2*n+1)*(n+2)-lcm(n+1, n+3)]` -/
def P8933365257072222911.Spec : Prop :=
  ∀ n, P8933365257072222911.a n = A140811 n

end A140811

/-! ## A140811.P10876026638794789860

`Δ[A152064(n)]`
-/

namespace A140811.P10876026638794789860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140811.P10876026638794789860

namespace A140811

/-- `Δ[A152064(n)]` -/
def P10876026638794789860.Spec : Prop :=
  ∀ n, P10876026638794789860.a n = A140811 n

end A140811

/-! ## A140811.P16831916121100721803

`floor(A158463(n)/2)`
-/

namespace A140811.P16831916121100721803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158463 n : ℚ) / 2⌋

end

end A140811.P16831916121100721803

namespace A140811

/-- `floor(A158463(n)/2)` -/
def P16831916121100721803.Spec : Prop :=
  ∀ n, P16831916121100721803.a n = A140811 n

end A140811

/-! ## A140811.P1732056669305015634

`(A135453(n)-2)/2`
-/

namespace A140811.P1732056669305015634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135453 n - 2 : ℚ) / 2

end

end A140811.P1732056669305015634

namespace A140811

/-- `(A135453(n)-2)/2` -/
def P1732056669305015634.Spec : Prop :=
  ∀ n, P1732056669305015634.a n = (A140811 n : ℚ)

end A140811

/-! ## A140811.P2434334983485193415

`(A158480(n)-3)/2`
-/

namespace A140811.P2434334983485193415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158480 n - 3 : ℚ) / 2

end

end A140811.P2434334983485193415

namespace A140811

/-- `(A158480(n)-3)/2` -/
def P2434334983485193415.Spec : Prop :=
  ∀ n, P2434334983485193415.a n = (A140811 n : ℚ)

end A140811

/-!
# A140812: a(n) = A051717(2n) + A051717(2n+1).

The programs for A140812, the canonical program `A140812.P6882242940985377112` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140812 has offset 0).

The definition of A140812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140812.P6882242940985377112

`A051717(2*n)+A051717(2*n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A140812

/-- `A051717(2*n)+A051717(2*n+1)` -/
def P6882242940985377112.Spec : Prop :=
  ∀ n, P6882242940985377112.a n = A140812 n

theorem P6882242940985377112.correct : P6882242940985377112.Spec := by
  intro n
  simp only [A140812]

end A140812

/-! ## A140812.P936722733733487854

`(A020639(A000010(n+1))+2)*A001897(n)`
-/

namespace A140812.P936722733733487854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A000010 (n + 1)).toNat + 2) * A001897 n

end

end A140812.P936722733733487854

namespace A140812

/-- `(A020639(A000010(n+1))+2)*A001897(n)` -/
def P936722733733487854.Spec : Prop :=
  ∀ n, P936722733733487854.a n = A140812 n

end A140812

/-! ## A140812.P4185650188095226175

`A051717(2*n)+A006954(n+1)`
-/

namespace A140812.P4185650188095226175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (2 * n) + A006954 (n + 1)

end

end A140812.P4185650188095226175

namespace A140812

/-- `A051717(2*n)+A006954(n+1)` -/
def P4185650188095226175.Spec : Prop :=
  ∀ n, P4185650188095226175.a n = A140812 n

end A140812

/-! ## A140812.P14911120638600823495

`A132084(n)+A006954(n+1)`
-/

namespace A140812.P14911120638600823495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132084 n + A006954 (n + 1)

end

end A140812.P14911120638600823495

namespace A140812

/-- `A132084(n)+A006954(n+1)` -/
def P14911120638600823495.Spec : Prop :=
  ∀ n, P14911120638600823495.a n = A140812 n

end A140812

/-! ## A140812.P3688591402232726717

`A132084(n)+A051717(2*n+1)`
-/

namespace A140812.P3688591402232726717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132084 n + A051717 (2 * n + 1)

end

end A140812.P3688591402232726717

namespace A140812

/-- `A132084(n)+A051717(2*n+1)` -/
def P3688591402232726717.Spec : Prop :=
  ∀ n, P3688591402232726717.a n = A140812 n

end A140812

/-!
# A140814: a(0)=3, a(n)=A002445(n) for n >= 1.

The programs for A140814, the canonical program `A140814.P18246206347557195138` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140814 has offset 0).

The definition of A140814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106458, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140814.P18246206347557195138

`A106458(2*n)+A106458(2*n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A140814

/-- `A106458(2*n)+A106458(2*n+1)` -/
def P18246206347557195138.Spec : Prop :=
  ∀ n, P18246206347557195138.a n = A140814 n

theorem P18246206347557195138.correct : P18246206347557195138.Spec := by
  intro n
  simp only [A140814]

end A140814

/-! ## A140814.P12646631395954297392

`3*A277087(n)`
-/

namespace A140814.P12646631395954297392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A277087 n

end

end A140814.P12646631395954297392

namespace A140814

/-- `3*A277087(n)` -/
def P12646631395954297392.Spec : Prop :=
  ∀ n, P12646631395954297392.a n = A140814 n

end A140814

/-! ## A140814.P9551843723031217386

`lcm(3, A002445(n))`
-/

namespace A140814.P9551843723031217386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A002445 n)

end

end A140814.P9551843723031217386

namespace A140814

/-- `lcm(3, A002445(n))` -/
def P9551843723031217386.Spec : Prop :=
  ∀ n, (P9551843723031217386.a n : ℤ) = A140814 n

end A140814

/-! ## A140814.P7256385170917251510

`or(2, A027642(2*n))`
-/

namespace A140814.P7256385170917251510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A027642 (2 * n))

end

end A140814.P7256385170917251510

namespace A140814

/-- `or(2, A027642(2*n))` -/
def P7256385170917251510.Spec : Prop :=
  ∀ n, P7256385170917251510.a n = A140814 n

end A140814

/-! ## A140814.P1730480249067426048

`or(2, A106458(2*n))`
-/

namespace A140814.P1730480249067426048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A106458 (2 * n))

end

end A140814.P1730480249067426048

namespace A140814

/-- `or(2, A106458(2*n))` -/
def P1730480249067426048.Spec : Prop :=
  ∀ n, P1730480249067426048.a n = A140814 n

end A140814

/-! ## A140814.P16779623738489045642

`or(2, A141056(2*n))`
-/

namespace A140814.P16779623738489045642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A141056 (2 * n))

end

end A140814.P16779623738489045642

namespace A140814

/-- `or(2, A141056(2*n))` -/
def P16779623738489045642.Spec : Prop :=
  ∀ n, P16779623738489045642.a n = A140814 n

end A140814

/-! ## A140814.P2370455049669997726

`or(2, A176289(2*n))`
-/

namespace A140814.P2370455049669997726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A176289 (2 * n))

end

end A140814.P2370455049669997726

namespace A140814

/-- `or(2, A176289(2*n))` -/
def P2370455049669997726.Spec : Prop :=
  ∀ n, P2370455049669997726.a n = A140814 n

end A140814

/-! ## A140814.P13433082196420904602

`or(2, A176591(2*n))`
-/

namespace A140814.P13433082196420904602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A176591 (2 * n))

end

end A140814.P13433082196420904602

namespace A140814

/-- `or(2, A176591(2*n))` -/
def P13433082196420904602.Spec : Prop :=
  ∀ n, P13433082196420904602.a n = A140814 n

end A140814

/-! ## A140814.P11681868389817361996

`round(2/acot(A141459(2*n)))`
-/

namespace A140814.P11681868389817361996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (A141459 (2 * n) : ℝ))

end

end A140814.P11681868389817361996

namespace A140814

/-- `round(2/acot(A141459(2*n)))` -/
def P11681868389817361996.Spec : Prop :=
  ∀ n, P11681868389817361996.a n = A140814 n

end A140814

/-! ## A140814.P2926247704108231294

`A051717(A004277(n)+1)`
-/

namespace A140814.P2926247704108231294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A004277 n + 1).toNat

end

end A140814.P2926247704108231294

namespace A140814

/-- `A051717(A004277(n)+1)` -/
def P2926247704108231294.Spec : Prop :=
  ∀ n, P2926247704108231294.a n = A140814 n

end A140814

/-! ## A140814.P17632106159627357476

`A051717(A171781(n+1))`
-/

namespace A140814.P17632106159627357476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A171781 (n + 1)).toNat

end

end A140814.P17632106159627357476

namespace A140814

/-- `A051717(A171781(n+1))` -/
def P17632106159627357476.Spec : Prop :=
  ∀ n, P17632106159627357476.a n = A140814 n

end A140814

/-! ## A140814.P896260820522652078

`A051717(A004278(n+2))`
-/

namespace A140814.P896260820522652078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A004278 (n + 2)).toNat

end

end A140814.P896260820522652078

namespace A140814

/-- `A051717(A004278(n+2))` -/
def P896260820522652078.Spec : Prop :=
  ∀ n, P896260820522652078.a n = A140814 n

end A140814

/-! ## A140814.P8557634194509903635

`A051717(A004273(n)+2)`
-/

namespace A140814.P8557634194509903635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A004273 n + 2).toNat

end

end A140814.P8557634194509903635

namespace A140814

/-- `A051717(A004273(n)+2)` -/
def P8557634194509903635.Spec : Prop :=
  ∀ n, P8557634194509903635.a n = A140814 n

end A140814

/-! ## A140814.P12217050766302178393

`A051717(A004280(n+2))`
-/

namespace A140814.P12217050766302178393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A004280 (n + 2)).toNat

end

end A140814.P12217050766302178393

namespace A140814

/-- `A051717(A004280(n+2))` -/
def P12217050766302178393.Spec : Prop :=
  ∀ n, P12217050766302178393.a n = A140814 n

end A140814

/-! ## A140814.P8688434900210498845

`A051717(A144429(n+2))`
-/

namespace A140814.P8688434900210498845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A144429 (n + 2)).toNat

end

end A140814.P8688434900210498845

namespace A140814

/-- `A051717(A144429(n+2))` -/
def P8688434900210498845.Spec : Prop :=
  ∀ n, P8688434900210498845.a n = A140814 n

end A140814

/-! ## A140814.P10541323537201107646

`A002445(n)+A000038(n)`
-/

namespace A140814.P10541323537201107646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n + A000038 n

end

end A140814.P10541323537201107646

namespace A140814

/-- `A002445(n)+A000038(n)` -/
def P10541323537201107646.Spec : Prop :=
  ∀ n, P10541323537201107646.a n = A140814 n

end A140814

/-! ## A140814.P7853848998191879293

`A040006(n)*A177735(n)`
-/

namespace A140814.P7853848998191879293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n * A177735 n

end

end A140814.P7853848998191879293

namespace A140814

/-- `A040006(n)*A177735(n)` -/
def P7853848998191879293.Spec : Prop :=
  ∀ n, P7853848998191879293.a n = A140814 n

end A140814

/-! ## A140814.P2044953071236744552

`lcm(A040007(n), A277087(n))`
-/

namespace A140814.P2044953071236744552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040007 n) (A277087 n)

end

end A140814.P2044953071236744552

namespace A140814

/-- `lcm(A040007(n), A277087(n))` -/
def P2044953071236744552.Spec : Prop :=
  ∀ n, (P2044953071236744552.a n : ℤ) = A140814 n

end A140814

/-! ## A140814.P9978314679226272455

`A051717(record[A006257(n)+2])`
-/

namespace A140814.P9978314679226272455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140814.P9978314679226272455

namespace A140814

/-- `A051717(record[A006257(n)+2])` -/
def P9978314679226272455.Spec : Prop :=
  ∀ n, P9978314679226272455.a n = A140814 n

end A140814

/-! ## A140814.P10132098184721273704

`A051717(record[A006369(n)+2])`
-/

namespace A140814.P10132098184721273704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140814.P10132098184721273704

namespace A140814

/-- `A051717(record[A006369(n)+2])` -/
def P10132098184721273704.Spec : Prop :=
  ∀ n, P10132098184721273704.a n = A140814 n

end A140814

/-!
# A140816: A third of digital roots of Bernoulli number denominators.

The programs for A140816, the canonical program `A140816.P7336394330774029488` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140816 has offset 0).

The definition of A140816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140816.P7336394330774029488

`A277087(n)%3`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A140816

/-- `A277087(n)%3` -/
def P7336394330774029488.Spec : Prop :=
  ∀ n, P7336394330774029488.a n = A140816 n

theorem P7336394330774029488.correct : P7336394330774029488.Spec := by
  intro n
  simp only [A140816]

end A140816

/-! ## A140816.P1062831807632048264

`dr(A140814(n))/3`
-/

namespace A140816.P1062831807632048264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A140814 n) : ℚ) / 3

end

end A140816.P1062831807632048264

namespace A140816

/-- `dr(A140814(n))/3` -/
def P1062831807632048264.Spec : Prop :=
  ∀ n, P1062831807632048264.a n = (A140816 n : ℚ)

end A140816

/-! ## A140816.P16643304278007335905

`gcd(2, dr(A002445(n)))`
-/

namespace A140816.P16643304278007335905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.digitalRoot (A002445 n))

end

end A140816.P16643304278007335905

namespace A140816

/-- `gcd(2, dr(A002445(n)))` -/
def P16643304278007335905.Spec : Prop :=
  ∀ n, (P16643304278007335905.a n : ℤ) = A140816 n

end A140816

/-! ## A140816.P16127757720284215882

`A166306(n+1)%3`
-/

namespace A140816.P16127757720284215882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166306 (n + 1)) 3

end

end A140816.P16127757720284215882

namespace A140816

/-- `A166306(n+1)%3` -/
def P16127757720284215882.Spec : Prop :=
  ∀ n, P16127757720284215882.a n = A140816 n

end A140816

/-! ## A140816.P472120209575704147

`gcd(4, dr(A027642(2*n)))`
-/

namespace A140816.P472120209575704147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (SequenceMachineLib.digitalRoot (A027642 (2 * n)))

end

end A140816.P472120209575704147

namespace A140816

/-- `gcd(4, dr(A027642(2*n)))` -/
def P472120209575704147.Spec : Prop :=
  ∀ n, (P472120209575704147.a n : ℤ) = A140816 n

end A140816

/-! ## A140816.P10266826931653453760

`A027761(or(n, round(acot(n))))%3`
-/

namespace A140816.P10266826931653453760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027761 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)))).toNat) 3

end

end A140816.P10266826931653453760

namespace A140816

/-- `A027761(or(n, round(acot(n))))%3` -/
def P10266826931653453760.Spec : Prop :=
  ∀ n, P10266826931653453760.a n = A140816 n

end A140816

/-! ## A140816.P1138946855410963389

`A027759(A004277(n))%3`
-/

namespace A140816.P1138946855410963389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027759 (A004277 n).toNat) 3

end

end A140816.P1138946855410963389

namespace A140816

/-- `A027759(A004277(n))%3` -/
def P1138946855410963389.Spec : Prop :=
  ∀ n, P1138946855410963389.a n = A140816 n

end A140816

/-! ## A140816.P6362582846897772895

`A060236(∑{digits}[A002445(n), #])`
-/

namespace A140816.P6362582846897772895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140816.P6362582846897772895

namespace A140816

/-- `A060236(∑{digits}[A002445(n), #])` -/
def P6362582846897772895.Spec : Prop :=
  ∀ n, P6362582846897772895.a n = A140816 n

end A140816

/-! ## A140816.P6577041129522803300

`A027759(Δ[A010000(n)]-1)%3`
-/

namespace A140816.P6577041129522803300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027759 (f1 (n + 1) - f1 n - 1).toNat) 3

end

end A140816.P6577041129522803300

namespace A140816

/-- `A027759(Δ[A010000(n)]-1)%3` -/
def P6577041129522803300.Spec : Prop :=
  ∀ n, P6577041129522803300.a n = A140816 n

end A140816

/-! ## A140816.P15869132989291324383

`round(log(dr(A006954(n+1))))`
-/

namespace A140816.P15869132989291324383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (SequenceMachineLib.digitalRoot (A006954 (n + 1)) : ℝ))

end

end A140816.P15869132989291324383

namespace A140816

/-- `round(log(dr(A006954(n+1))))` -/
def P15869132989291324383.Spec : Prop :=
  ∀ n, P15869132989291324383.a n = A140816 n

end A140816

/-! ## A140816.P15928208612308335501

`A040001(A090629(n)+n)`
-/

namespace A140816.P15928208612308335501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A090629 n + (n : ℤ)).toNat

end

end A140816.P15928208612308335501

namespace A140816

/-- `A040001(A090629(n)+n)` -/
def P15928208612308335501.Spec : Prop :=
  ∀ n, P15928208612308335501.a n = A140816 n

end A140816

/-! ## A140816.P14264939256853589178

`xor(A010674(n), A090629(n))`
-/

namespace A140816.P14264939256853589178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A090629 n)

end

end A140816.P14264939256853589178

namespace A140816

/-- `xor(A010674(n), A090629(n))` -/
def P14264939256853589178.Spec : Prop :=
  ∀ n, P14264939256853589178.a n = A140816 n

end A140816

/-! ## A140816.P990179442722137784

`A040001(2-(A090629(n)-n))`
-/

namespace A140816.P990179442722137784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 - (A090629 n - (n : ℤ))).toNat

end

end A140816.P990179442722137784

namespace A140816

/-- `A040001(2-(A090629(n)-n))` -/
def P990179442722137784.Spec : Prop :=
  ∀ n, P990179442722137784.a n = A140816 n

end A140816

/-! ## A140816.P12182377061793769329

`A285068(2*n)%3`
-/

namespace A140816.P12182377061793769329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285068 (2 * n)) 3

end

end A140816.P12182377061793769329

namespace A140816

/-- `A285068(2*n)%3` -/
def P12182377061793769329.Spec : Prop :=
  ∀ n, P12182377061793769329.a n = A140816 n

end A140816

/-!
# A140817: Primes congruent to 103 or 107 mod 210.

The programs for A140817, there is no canonical definition to state claims against.
-/

/-! ## A140817.P16942189374026380773

`∩[A140533(n+1), A315671(n)+2]`
-/

namespace A140817.P16942189374026380773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140817.P16942189374026380773

/-! ## A140817.P12159289582516472881

`∩[A140533(n+1), A313100(n)]`
-/

namespace A140817.P12159289582516472881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140817.P12159289582516472881

/-! ## A140817.P7256677760679753364

`∩[A140533(n+1), A313201(n)]`
-/

namespace A140817.P7256677760679753364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140817.P7256677760679753364

/-! ## A140817.P8652677933557460983

`∩[A140533(n+1), A311440(n)+2]`
-/

namespace A140817.P8652677933557460983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140817.P8652677933557460983

/-!
# A140818: Coefficients of Hodge diamond binomial 'X' matrices as polynomials: matrix example; M={{1,0,1}. {0,2,0], {1,0,1}: M(d, x, y)= Sum[Sum[If[n == m, Binomial[d - 1, m - 1], If[n == d - m + 1, Binomial[d - 1, n - 1], 0]]*x^(n - 1)*y^(m - 1), {n, 1, d}], {m, 1, d}] .

The programs for A140818, there is no canonical definition to state claims against.
-/

/-! ## A140818.P9484889324302866225

`A139813(n+1)%(p?[round(8*n/7)]+n)`
-/

namespace A140818.P9484889324302866225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139813 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ))

end

end A140818.P9484889324302866225

/-! ## A140818.P16742477925260382200

`A139813(A122080(n+1)/2)`
-/

namespace A140818.P16742477925260382200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139813 (SequenceMachineLib.roundAway ((A122080 (n + 1) : ℚ) / 2)).toNat

end

end A140818.P16742477925260382200

/-! ## A140818.P15613182691527400895

`A139813(n+1)%A035337(n)`
-/

namespace A140818.P15613182691527400895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139813 (n + 1)) (A035337 n)

end

end A140818.P15613182691527400895

/-! ## A140818.P3473939951506448234

`lcm(A000999(n)!, A139813(n+1))`
-/

namespace A140818.P3473939951506448234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000999 n).toNat : ℤ) (A139813 (n + 1))

end

end A140818.P3473939951506448234

/-! ## A140818.P7554512430562402080

`A139813(n+1)+char[A017366(n)]`
-/

namespace A140818.P7554512430562402080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139813 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A140818.P7554512430562402080

/-! ## A140818.P15599425686804449984

`A007318(n)*A324534(2*n+1)`
-/

namespace A140818.P15599425686804449984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A324534 (2 * n + 1)

end

end A140818.P15599425686804449984

/-! ## A140818.P6957671153127729761

`((2-and(1, A000203(2*n+1)))*A007318(n))%A076380(∑{d}[n+1, #])`
-/

namespace A140818.P6957671153127729761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 - Int.land 1 (A000203 (2 * n + 1))) * A007318 n) (A076380 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A140818.P6957671153127729761

/-! ## A140818.P3460701434330044696

`(A007318(n)*A140685(n+1))%A000032(∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A140818.P3460701434330044696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n * A140685 (n + 1)) (A000032 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p))

end

end A140818.P3460701434330044696

/-! ## A140818.P8290620873151928064

`char[A076378(6*n+20)]+(2-and(1, A000203(2*n+1)))*A007318(n)`
-/

namespace A140818.P8290620873151928064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076378 (6 * n + 20)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (2 - Int.land 1 (A000203 (2 * n + 1))) * A007318 n

end

end A140818.P8290620873151928064

/-!
# A140819: Triangle read by rows: T(n, m) = m if 2*m = n, otherwise 2*gcd(n, m).

The programs for A140819, there is no canonical definition to state claims against.
-/

/-! ## A140819.P9152892151352474297

`(2-char[∑[4*n]])*A109004(n)`
-/

namespace A140819.P9152892151352474297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A109004 n

end

end A140819.P9152892151352474297

/-! ## A140819.P3001538368592047193

`A109004(n)*A140685(n+1)`
-/

namespace A140819.P3001538368592047193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n * A140685 (n + 1)

end

end A140819.P3001538368592047193

/-! ## A140819.P9515718458127643356

`A140685(n+1)*A159335(n)`
-/

namespace A140819.P9515718458127643356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140685 (n + 1) * A159335 n

end

end A140819.P9515718458127643356

/-! ## A140819.P4862598090450295464

`gcd(A109042(n), A114327(n))*A140685(n+1)`
-/

namespace A140819.P4862598090450295464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A109042 n) (A114327 n) : ℤ) * A140685 (n + 1)

end

end A140819.P4862598090450295464

/-! ## A140819.P10374084216992226530

`gcd(A002024(n+1)-1, A057554(2*n+1))*A140685(n+1)`
-/

namespace A140819.P10374084216992226530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002024 (n + 1) - 1) (A057554 (2 * n + 1)) : ℤ) * A140685 (n + 1)

end

end A140819.P10374084216992226530

/-!
# A140820: Triangle read by rows: T(n,k) = 1 if and only if the Gray codes for n and k have no bits in common.

The programs for A140820, there is no canonical definition to state claims against.
-/

/-! ## A140820.P9834089914354521567

`A000007(A341840(A245300(n)))`
-/

namespace A140820.P9834089914354521567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A341840 (A245300 n).toNat).toNat

end

end A140820.P9834089914354521567

/-! ## A140820.P7757600947305914959

`A130706(2*A341840(A245300(n)))`
-/

namespace A140820.P7757600947305914959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * A341840 (A245300 n).toNat).toNat

end

end A140820.P7757600947305914959

/-! ## A140820.P7952953017009024419

`A000038(n)^A341840(A245300(n))`
-/

namespace A140820.P7952953017009024419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A341840 (A245300 n).toNat : ℤ)

end

end A140820.P7952953017009024419

/-! ## A140820.P15732594546025293299

`A130706(n)^A341840(A245300(n))`
-/

namespace A140820.P15732594546025293299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130706 n : ℚ) ^ (A341840 (A245300 n).toNat : ℤ)

end

end A140820.P15732594546025293299

/-! ## A140820.P14046186717506442494

`A143433(n)^A341840(A245300(n))`
-/

namespace A140820.P14046186717506442494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143433 n : ℚ) ^ (A341840 (A245300 n).toNat : ℤ)

end

end A140820.P14046186717506442494

/-! ## A140820.P750339686142943384

`∏{d}[A341840(A245300(n)), A001222(#)]`
-/

namespace A140820.P750339686142943384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A140820.P750339686142943384

/-! ## A140820.P6104864848802685261

`∏{d}[A341840(A245300(n)), A341840(#)]`
-/

namespace A140820.P6104864848802685261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A341840 d

end

end A140820.P6104864848802685261

/-! ## A140820.P11303528502079755988

`A131218(A245300(n))`
-/

namespace A140820.P11303528502079755988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131218 (A245300 n).toNat

end

end A140820.P11303528502079755988

/-!
# A140821: Coefficients of Hodge diamond GCD binomial product 'X' matrices as polynomials: matrix example; M={{2,0,2}. {0,2,0], {2,0,2}: M(d, x, y)= Sum[Sum[If[n == m, GCD[d - 1, m - 1], If[n == d - m + 1, GCD[d - 1, n - 1], 0]]*x^(n - 1)*y^(m - 1), {n, 1, d}], {m, 1, d}] .

The programs for A140821, there is no canonical definition to state claims against.
-/

/-! ## A140821.P2155268397151962327

`A007318(n+1)*A140819(n+1)`
-/

namespace A140821.P2155268397151962327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) * A140819 (n + 1)

end

end A140821.P2155268397151962327

/-!
# A140822: Triangle T(n,m) = binomial(n,gcd(n,m)) read by rows, 0<=m<=n.

The programs for A140822, the canonical program `A140822.P16643342834966947300` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140822 has offset 0).

The definition of A140822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140822.P7763366544297314668

`C(∑[char[∑[n+1]]], gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]]))`
-/

namespace A140822.P7763366544297314668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (Nat.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 + n) (∑ j ∈ Finset.range (n + 1), f7 j))

end

end A140822.P7763366544297314668

namespace A140822

/-- `C(∑[char[∑[n+1]]], gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]]))` -/
def P7763366544297314668.Spec : Prop :=
  ∀ n, (P7763366544297314668.a n : ℤ) = A140822 n

end A140822

/-! ## A140822.P1292836574629311617

`C(∑[char[∑[n+1]]], A109004(n))`
-/

namespace A140822.P1292836574629311617
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A109004 n).toNat

end

end A140822.P1292836574629311617

namespace A140822

/-- `C(∑[char[∑[n+1]]], A109004(n))` -/
def P1292836574629311617.Spec : Prop :=
  ∀ n, (P1292836574629311617.a n : ℤ) = A140822 n

end A140822

/-! ## A140822.P16643342834966947300

`C(A003056(n), A281726(n+1)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140822

/-- `C(A003056(n), A281726(n+1)-1)` -/
def P16643342834966947300.Spec : Prop :=
  ∀ n, (P16643342834966947300.a n : ℤ) = A140822 n

theorem P16643342834966947300.correct : P16643342834966947300.Spec := by
  intro n
  simp only [A140822]

end A140822

/-! ## A140822.P10624543848696972005

`A007318(A109004(n)+A057944(n))`
-/

namespace A140822.P10624543848696972005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A109004 n + A057944 n).toNat

end

end A140822.P10624543848696972005

namespace A140822

/-- `A007318(A109004(n)+A057944(n))` -/
def P10624543848696972005.Spec : Prop :=
  ∀ n, P10624543848696972005.a n = A140822 n

end A140822

/-! ## A140822.P11212908288445651996

`A007318(A109004(n)+n-A002262(n))`
-/

namespace A140822.P11212908288445651996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A109004 n + ((n : ℤ) - A002262 n)).toNat

end

end A140822.P11212908288445651996

namespace A140822

/-- `A007318(A109004(n)+n-A002262(n))` -/
def P11212908288445651996.Spec : Prop :=
  ∀ n, P11212908288445651996.a n = A140822 n

end A140822

/-! ## A140822.P11200090840511692402

`A007318(A025581(n)+n-A109004(n))`
-/

namespace A140822.P11200090840511692402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A025581 n + ((n : ℤ) - A109004 n)).toNat

end

end A140822.P11200090840511692402

namespace A140822

/-- `A007318(A025581(n)+n-A109004(n))` -/
def P11200090840511692402.Spec : Prop :=
  ∀ n, P11200090840511692402.a n = A140822 n

end A140822

/-! ## A140822.P13410758206945129123

`A007318(n-(A002262(n)-A109004(n)))`
-/

namespace A140822.P13410758206945129123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) - (A002262 n - A109004 n)).toNat

end

end A140822.P13410758206945129123

namespace A140822

/-- `A007318(n-(A002262(n)-A109004(n)))` -/
def P13410758206945129123.Spec : Prop :=
  ∀ n, P13410758206945129123.a n = A140822 n

end A140822

/-! ## A140822.P3656379322195483203

`A135227(A109004(n)+A057944(n))`
-/

namespace A140822.P3656379322195483203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 (A109004 n + A057944 n).toNat

end

end A140822.P3656379322195483203

namespace A140822

/-- `A135227(A109004(n)+A057944(n))` -/
def P3656379322195483203.Spec : Prop :=
  ∀ n, P3656379322195483203.a n = A140822 n

end A140822

/-! ## A140822.P14063721690501683500

`A000027(C(A003056(n), A109004(n)))`
-/

namespace A140822.P14063721690501683500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (A003056 n).toNat (A109004 n).toNat)

end

end A140822.P14063721690501683500

namespace A140822

/-- `A000027(C(A003056(n), A109004(n)))` -/
def P14063721690501683500.Spec : Prop :=
  ∀ n, P14063721690501683500.a n = A140822 n

end A140822

/-! ## A140822.P9624257096318166640

`A028310(C(A003056(n), A109004(n)))`
-/

namespace A140822.P9624257096318166640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A003056 n).toNat (A109004 n).toNat)

end

end A140822.P9624257096318166640

namespace A140822

/-- `A028310(C(A003056(n), A109004(n)))` -/
def P9624257096318166640.Spec : Prop :=
  ∀ n, P9624257096318166640.a n = A140822 n

end A140822

/-!
# A140823: Integers that are not perfect fourth powers.

The programs for A140823, there is no canonical definition to state claims against.
-/

/-! ## A140823.P4925891019033961093

`comp[n^4]`
-/

namespace A140823.P4925891019033961093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A140823.P4925891019033961093

/-!
# A140824: Expansion of (x-x^3)/(1-3*x+2*x^2-3*x^3+x^4).

The programs for A140824, the canonical program `A140824.P610267472179100939` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140824 has offset 0).

The definition of A140824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140824.P610267472179100939

`A005248(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140824

/-- `A005248(n-1)-a(n-2)` -/
def P610267472179100939.Spec : Prop :=
  ∀ n, P610267472179100939.a n = A140824 n

theorem P610267472179100939.correct : P610267472179100939.Spec := by
  intro n
  simp only [A140824]

end A140824

/-! ## A140824.P11047001455363878778

`A000032(2*(n-1))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A140824.P11047001455363878778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000032 (2 * ((n : ℤ) - 1)).toNat - a (n - 2)

end

end A140824.P11047001455363878778

namespace A140824

/-- `A000032(2*(n-1))-a(n-2)` -/
def P11047001455363878778.Spec : Prop :=
  ∀ n, P11047001455363878778.a n = A140824 n

end A140824

/-! ## A140824.P12132880971185252035

`A099483(n)-A099483(floor(n-atan(n)))`
-/

namespace A140824.P12132880971185252035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099483 n - A099483 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A140824.P12132880971185252035

namespace A140824

/-- `A099483(n)-A099483(floor(n-atan(n)))` -/
def P12132880971185252035.Spec : Prop :=
  ∀ n, P12132880971185252035.a n = A140824 n

end A140824

/-! ## A140824.P1397090907690713801

`A099483(n)-A099483(A289207(n))`
-/

namespace A140824.P1397090907690713801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099483 n - A099483 (A289207 n).toNat

end

end A140824.P1397090907690713801

namespace A140824

/-- `A099483(n)-A099483(A289207(n))` -/
def P1397090907690713801.Spec : Prop :=
  ∀ n, P1397090907690713801.a n = A140824 n

end A140824

/-! ## A140824.P15866467210825691232

`A099483(n)+A099483(n)-A001906(n)`
-/

namespace A140824.P15866467210825691232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099483 n + (A099483 n - A001906 n)

end

end A140824.P15866467210825691232

namespace A140824

/-- `A099483(n)+A099483(n)-A001906(n)` -/
def P15866467210825691232.Spec : Prop :=
  ∀ n, P15866467210825691232.a n = A140824 n

end A140824

/-! ## A140824.P14154402088333688001

`record[A293544(A065190(n+1))+A293544(n)]`
-/

namespace A140824.P14154402088333688001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (A065190 (n + 1)).toNat + A293544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140824.P14154402088333688001

namespace A140824

/-- `record[A293544(A065190(n+1))+A293544(n)]` -/
def P14154402088333688001.Spec : Prop :=
  ∀ n, P14154402088333688001.a n = A140824 n

end A140824

/-! ## A140824.P12914740104679169812

`Δ[A000032(n-3+n)-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A140824.P12914740104679169812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000032 ((n : ℤ) - 3 + (n : ℤ)).toNat - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140824.P12914740104679169812

namespace A140824

/-- `Δ[A000032(n-3+n)-a(n-2)]` -/
def P12914740104679169812.Spec : Prop :=
  ∀ n, P12914740104679169812.a n = A140824 n

end A140824

/-! ## A140824.P12948663298527172549

`A122367(n)-A099484(n)`
-/

namespace A140824.P12948663298527172549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A099484 n

end

end A140824.P12948663298527172549

namespace A140824

/-- `A122367(n)-A099484(n)` -/
def P12948663298527172549.Spec : Prop :=
  ∀ n, P12948663298527172549.a n = A140824 n

end A140824

/-! ## A140824.P14409279609076925529

`Δ[A001906(n)]-A099484(n)`
-/

namespace A140824.P14409279609076925529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099484 n

end

end A140824.P14409279609076925529

namespace A140824

/-- `Δ[A001906(n)]-A099484(n)` -/
def P14409279609076925529.Spec : Prop :=
  ∀ n, P14409279609076925529.a n = A140824 n

end A140824

/-! ## A140824.P3309225389973639608

`A001519(n+1)-A099484(n)`
-/

namespace A140824.P3309225389973639608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A099484 n

end

end A140824.P3309225389973639608

namespace A140824

/-- `A001519(n+1)-A099484(n)` -/
def P3309225389973639608.Spec : Prop :=
  ∀ n, P3309225389973639608.a n = A140824 n

end A140824

/-! ## A140824.P8642523178218365017

`2*A099483(n)-A001906(n)`
-/

namespace A140824.P8642523178218365017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099483 n - A001906 n

end

end A140824.P8642523178218365017

namespace A140824

/-- `2*A099483(n)-A001906(n)` -/
def P8642523178218365017.Spec : Prop :=
  ∀ n, P8642523178218365017.a n = A140824 n

end A140824

/-! ## A140824.P3688803294866065461

`A000045(2*n+1)-A099484(n)`
-/

namespace A140824.P3688803294866065461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - A099484 n

end

end A140824.P3688803294866065461

namespace A140824

/-- `A000045(2*n+1)-A099484(n)` -/
def P3688803294866065461.Spec : Prop :=
  ∀ n, P3688803294866065461.a n = A140824 n

end A140824

/-! ## A140824.P10642421088113963416

`A099485(n)-(A056594(n)+A001906(n))`
-/

namespace A140824.P10642421088113963416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099485 n - (A056594 n + A001906 n)

end

end A140824.P10642421088113963416

namespace A140824

/-- `A099485(n)-(A056594(n)+A001906(n))` -/
def P10642421088113963416.Spec : Prop :=
  ∀ n, P10642421088113963416.a n = A140824 n

end A140824

/-! ## A140824.P474673481052163882

`A001906(n+1)-(A099484(n)+A001906(n))`
-/

namespace A140824.P474673481052163882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - (A099484 n + A001906 n)

end

end A140824.P474673481052163882

namespace A140824

/-- `A001906(n+1)-(A099484(n)+A001906(n))` -/
def P474673481052163882.Spec : Prop :=
  ∀ n, P474673481052163882.a n = A140824 n

end A140824

/-! ## A140824.P14230109754436760717

`A048575(n)%A099485(n)`
-/

namespace A140824.P14230109754436760717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048575 n) (A099485 n)

end

end A140824.P14230109754436760717

namespace A140824

/-- `A048575(n)%A099485(n)` -/
def P14230109754436760717.Spec : Prop :=
  ∀ n, P14230109754436760717.a n = A140824 n

end A140824

/-!
# A140826: Arithmetic nondivisor means.

The programs for A140826, the canonical program `A140826.P13460497171487579116` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140826 has offset 1).

The definition of A140826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140826.P13460497171487579116

`lt[A231167(n+3), 1]+3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140826

/-- `lt[A231167(n+3), 1]+3` -/
def P13460497171487579116.Spec : Prop :=
  ∀ n, (P13460497171487579116.a n : ℤ) = A140826 (n + 1)

theorem P13460497171487579116.correct : P13460497171487579116.Spec := by
  intro n
  simp only [A140826, Nat.add_sub_cancel]

end A140826

/-! ## A140826.P12824882067564494219

`eq[A130716(n), A231167(A028310(n))]`
-/

namespace A140826.P12824882067564494219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231167 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140826.P12824882067564494219

namespace A140826

/-- `eq[A130716(n), A231167(A028310(n))]` -/
def P12824882067564494219.Spec : Prop :=
  ∀ n, (P12824882067564494219.a n : ℤ) = A140826 (n + 1)

end A140826

/-! ## A140826.P8672968236549873759

`eq[A130716(n), A231167(A130716(n)+n)]`
-/

namespace A140826.P8672968236549873759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231167 (A130716 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140826.P8672968236549873759

namespace A140826

/-- `eq[A130716(n), A231167(A130716(n)+n)]` -/
def P8672968236549873759.Spec : Prop :=
  ∀ n, (P8672968236549873759.a n : ℤ) = A140826 (n + 1)

end A140826

/-! ## A140826.P15123480287994198768

`eq[A331998(A331991(n+1)), A332029(n+1)]`
-/

namespace A140826.P15123480287994198768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331998 (A331991 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140826.P15123480287994198768

namespace A140826

/-- `eq[A331998(A331991(n+1)), A332029(n+1)]` -/
def P15123480287994198768.Spec : Prop :=
  ∀ n, (P15123480287994198768.a n : ℤ) = A140826 (n + 1)

end A140826

/-!
# A140827: Interleave denominators and numerators of convergents to sqrt(3).

The programs for A140827, the canonical program `A140827.P16115100538548681983` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140827 has offset 0).

The definition of A140827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140827.P16115100538548681983

`4*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140827

/-- `4*a(n-3)-a(n-6)` -/
def P16115100538548681983.Spec : Prop :=
  ∀ n, P16115100538548681983.a n = A140827 n

theorem P16115100538548681983.correct : P16115100538548681983.Spec := by
  intro n
  simp only [A140827]

end A140827

/-! ## A140827.P3531147592124242884

`A254308(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A140827.P3531147592124242884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A254308 n + a (n - 3)

end

end A140827.P3531147592124242884

namespace A140827

/-- `A254308(n)+a(n-3)` -/
def P3531147592124242884.Spec : Prop :=
  ∀ n, P3531147592124242884.a n = A140827 n

end A140827

/-! ## A140827.P6793240803047917892

`∑[A002530(A004523(n))]+1`
-/

namespace A140827.P6793240803047917892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140827.P6793240803047917892

namespace A140827

/-- `∑[A002530(A004523(n))]+1` -/
def P6793240803047917892.Spec : Prop :=
  ∀ n, P6793240803047917892.a n = A140827 n

end A140827

/-! ## A140827.P12918235856419972262

`∑[A002530(A123108(A004773(n)))]`
-/

namespace A140827.P12918235856419972262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A123108 (A004773 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140827.P12918235856419972262

namespace A140827

/-- `∑[A002530(A123108(A004773(n)))]` -/
def P12918235856419972262.Spec : Prop :=
  ∀ n, P12918235856419972262.a n = A140827 n

end A140827

/-! ## A140827.P12012042150725899471

`A143642(n+1)-A254308(n)`
-/

namespace A140827.P12012042150725899471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (n + 1) - A254308 n

end

end A140827.P12012042150725899471

namespace A140827

/-- `A143642(n+1)-A254308(n)` -/
def P12012042150725899471.Spec : Prop :=
  ∀ n, P12012042150725899471.a n = A140827 n

end A140827

/-! ## A140827.P305461970793360327

`(A254308(n+3)-A254308(n))/2`
-/

namespace A140827.P305461970793360327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254308 (n + 3) - A254308 n : ℚ) / 2

end

end A140827.P305461970793360327

namespace A140827

/-- `(A254308(n+3)-A254308(n))/2` -/
def P305461970793360327.Spec : Prop :=
  ∀ n, P305461970793360327.a n = (A140827 n : ℚ)

end A140827

/-!
# A140828: a(0)=1, a(n) = ceiling(prime(n)/a(n-1)), where prime(n) is the n-th prime.

The programs for A140828, the canonical program `A140828.P8834970046235719719` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140828 has offset 0).

The definition of A140828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140828.P8834970046235719719

`ceil(A000040(n)/a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140828

/-- `ceil(A000040(n)/a(n-1))` -/
def P8834970046235719719.Spec : Prop :=
  ∀ n, P8834970046235719719.a n = A140828 n

theorem P8834970046235719719.correct : P8834970046235719719.Spec := by
  intro n
  simp only [A140828]

end A140828

/-! ## A140828.P2716257700727819037

`floor(A006005(n)/a(n-1))+1` with `a(0)=1`
-/

namespace A140828.P2716257700727819037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A006005 n : ℚ) / (a (n - 1) : ℚ)⌋ + 1

end

end A140828.P2716257700727819037

namespace A140828

/-- `floor(A006005(n)/a(n-1))+1` -/
def P2716257700727819037.Spec : Prop :=
  ∀ n, P2716257700727819037.a n = A140828 n

end A140828

/-! ## A140828.P9992671381719761600

`ceil(A008578(n+1)/a(n-1))` with `a(0)=1`
-/

namespace A140828.P9992671381719761600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A008578 (n + 1) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140828.P9992671381719761600

namespace A140828

/-- `ceil(A008578(n+1)/a(n-1))` -/
def P9992671381719761600.Spec : Prop :=
  ∀ n, P9992671381719761600.a n = A140828 n

end A140828

/-! ## A140828.P10734803145938423220

`ceil(record[A006530(n+1)]/a(n-1))` with `a(0)=1`
-/

namespace A140828.P10734803145938423220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140828.P10734803145938423220

namespace A140828

/-- `ceil(record[A006530(n+1)]/a(n-1))` -/
def P10734803145938423220.Spec : Prop :=
  ∀ n, P10734803145938423220.a n = A140828 n

end A140828

/-! ## A140828.P11954250362747455983

`ceil(record[A020639(n+1)]/a(n-1))` with `a(0)=1`
-/

namespace A140828.P11954250362747455983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140828.P11954250362747455983

namespace A140828

/-- `ceil(record[A020639(n+1)]/a(n-1))` -/
def P11954250362747455983.Spec : Prop :=
  ∀ n, P11954250362747455983.a n = A140828 n

end A140828

/-! ## A140828.P3802746767485949306

`ceil(record[A014963(n+1)]/a(n-1))` with `a(0)=1`
-/

namespace A140828.P3802746767485949306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140828.P3802746767485949306

namespace A140828

/-- `ceil(record[A014963(n+1)]/a(n-1))` -/
def P3802746767485949306.Spec : Prop :=
  ∀ n, P3802746767485949306.a n = A140828 n

end A140828

/-!
# A140829: a(0)=1; for n >= 1, a(n) = ceiling(Fibonacci(n)/a(n-1)).

The programs for A140829, the canonical program `A140829.P7126162964414764134` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140829 has offset 0).

The definition of A140829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140829.P7126162964414764134

`ceil(A000045(n)/a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140829

/-- `ceil(A000045(n)/a(n-1))` -/
def P7126162964414764134.Spec : Prop :=
  ∀ n, P7126162964414764134.a n = A140829 n

theorem P7126162964414764134.correct : P7126162964414764134.Spec := by
  intro n
  simp only [A140829]

end A140829

/-! ## A140829.P861908856079712292

`floor(A000071(n)/a(n-1))+1` with `a(0)=1`
-/

namespace A140829.P861908856079712292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A000071 n : ℚ) / (a (n - 1) : ℚ)⌋ + 1

end

end A140829.P861908856079712292

namespace A140829

/-- `floor(A000071(n)/a(n-1))+1` -/
def P861908856079712292.Spec : Prop :=
  ∀ n, P861908856079712292.a n = A140829 n

end A140829

/-! ## A140829.P17872685906564043947

`ceil(A212804(n+1)/a(n-1))` with `a(0)=1`
-/

namespace A140829.P17872685906564043947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A212804 (n + 1) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140829.P17872685906564043947

namespace A140829

/-- `ceil(A212804(n+1)/a(n-1))` -/
def P17872685906564043947.Spec : Prop :=
  ∀ n, P17872685906564043947.a n = A140829 n

end A140829

/-! ## A140829.P11924051872742211524

`ceil(A324969(n+1)/a(n-1))` with `a(0)=1`
-/

namespace A140829.P11924051872742211524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A324969 (n + 1) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140829.P11924051872742211524

namespace A140829

/-- `ceil(A324969(n+1)/a(n-1))` -/
def P11924051872742211524.Spec : Prop :=
  ∀ n, P11924051872742211524.a n = A140829 n

end A140829

/-! ## A140829.P9816411259784946056

`ceil((A001611(n)-1)/a(n-1))` with `a(0)=1`
-/

namespace A140829.P9816411259784946056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A001611 n - 1 : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140829.P9816411259784946056

namespace A140829

/-- `ceil((A001611(n)-1)/a(n-1))` -/
def P9816411259784946056.Spec : Prop :=
  ∀ n, P9816411259784946056.a n = A140829 n

end A140829

/-! ## A140829.P11956732429694766548

`ceil((A157725(n)-2)/a(n-1))` with `a(0)=1`
-/

namespace A140829.P11956732429694766548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A157725 n - 2 : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140829.P11956732429694766548

namespace A140829

/-- `ceil((A157725(n)-2)/a(n-1))` -/
def P11956732429694766548.Spec : Prop :=
  ∀ n, P11956732429694766548.a n = A140829 n

end A140829

/-! ## A140829.P850728202758017970

`ceil(Δ[a(n-1)+a(n-2)]/a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A140829.P850728202758017970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140829.P850728202758017970

namespace A140829

/-- `ceil(Δ[a(n-1)+a(n-2)]/a(n-1))` -/
def P850728202758017970.Spec : Prop :=
  ∀ n, P850728202758017970.a n = A140829 n

end A140829

/-! ## A140829.P2695341719731109324

`ceil(A303427(2*n+1)/a(n-1))` with `a(0)=1`
-/

namespace A140829.P2695341719731109324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A303427 (2 * n + 1) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140829.P2695341719731109324

namespace A140829

/-- `ceil(A303427(2*n+1)/a(n-1))` -/
def P2695341719731109324.Spec : Prop :=
  ∀ n, P2695341719731109324.a n = A140829 n

end A140829

/-! ## A140829.P13429888582791312336

`ceil(Δ[A000045(n+1)]*acot(a(n-1)))` with `a(0)=1`
-/

namespace A140829.P13429888582791312336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(f1 (n + 1) - f1 n : ℝ) * SequenceMachineLib.acot (a (n - 1) : ℝ)⌉

end

end A140829.P13429888582791312336

namespace A140829

/-- `ceil(Δ[A000045(n+1)]*acot(a(n-1)))` -/
def P13429888582791312336.Spec : Prop :=
  ∀ n, P13429888582791312336.a n = A140829 n

end A140829

/-!
# A140830: Primes congruent to 97 or 113 mod 210.

The programs for A140830, the canonical program `A140830.P13152895047364481512` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140830 has offset 1).

The definition of A140830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140830.P13152895047364481512

`p?[abs(a(n-1)-5*21*n)]` with `a(0)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140830

/-- `p?[abs(a(n-1)-5*21*n)]` -/
def P13152895047364481512.Spec : Prop :=
  ∀ n, P13152895047364481512.a n = A140830 (n + 1)

theorem P13152895047364481512.correct : P13152895047364481512.Spec := by
  intro n
  simp only [A140830, Nat.add_sub_cancel]

end A140830

/-! ## A140830.P6417314568293152448

`p?[A159254(n+1)+A047201(n+1)]`
-/

namespace A140830.P6417314568293152448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140830.P6417314568293152448

namespace A140830

/-- `p?[A159254(n+1)+A047201(n+1)]` -/
def P6417314568293152448.Spec : Prop :=
  ∀ n, P6417314568293152448.a n = A140830 (n + 1)

end A140830

/-! ## A140830.P9320530633752423453

`p?[A166517(A008620(n))+A154612(n)]`
-/

namespace A140830.P9320530633752423453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A008620 n).toNat + A154612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140830.P9320530633752423453

namespace A140830

/-- `p?[A166517(A008620(n))+A154612(n)]` -/
def P9320530633752423453.Spec : Prop :=
  ∀ n, P9320530633752423453.a n = A140830 (n + 1)

end A140830

/-! ## A140830.P3440724311739798878

`p?[A063226(A047524(n+1))+A056021(n+1)]`
-/

namespace A140830.P3440724311739798878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A047524 (n + 1)).toNat + A056021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140830.P3440724311739798878

namespace A140830

/-- `p?[A063226(A047524(n+1))+A056021(n+1)]` -/
def P3440724311739798878.Spec : Prop :=
  ∀ n, P3440724311739798878.a n = A140830 (n + 1)

end A140830

/-! ## A140830.P13728417401966422148

`p?[A315492(n)+A008486(A314720(n))]`
-/

namespace A140830.P13728417401966422148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315492 n + A008486 (A314720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140830.P13728417401966422148

namespace A140830

/-- `p?[A315492(n)+A008486(A314720(n))]` -/
def P13728417401966422148.Spec : Prop :=
  ∀ n, P13728417401966422148.a n = A140830 (n + 1)

end A140830

/-! ## A140830.P8375256997879505813

`p?[A047336(2*A113801(n+1)+n+1)]`
-/

namespace A140830.P8375256997879505813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (2 * A113801 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140830.P8375256997879505813

namespace A140830

/-- `p?[A047336(2*A113801(n+1)+n+1)]` -/
def P8375256997879505813.Spec : Prop :=
  ∀ n, P8375256997879505813.a n = A140830 (n + 1)

end A140830

/-! ## A140830.P12280513537555759768

`p?[A047336(lcm(2, A113801(n+1))+n+1)]`
-/

namespace A140830.P12280513537555759768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (Int.lcm 2 (A113801 (n + 1)) + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140830.P12280513537555759768

namespace A140830

/-- `p?[A047336(lcm(2, A113801(n+1))+n+1)]` -/
def P12280513537555759768.Spec : Prop :=
  ∀ n, P12280513537555759768.a n = A140830 (n + 1)

end A140830

/-! ## A140830.P17019862400037298989

`p?[A057362(3*n+5)+A008585(5*(n+1))]`
-/

namespace A140830.P17019862400037298989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (3 * n + 5) + A008585 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140830.P17019862400037298989

namespace A140830

/-- `p?[A057362(3*n+5)+A008585(5*(n+1))]` -/
def P17019862400037298989.Spec : Prop :=
  ∀ n, P17019862400037298989.a n = A140830 (n + 1)

end A140830

/-! ## A140830.P2948522818488577606

`∩[A132237(n+1), A312160(n)]`
-/

namespace A140830.P2948522818488577606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140830.P2948522818488577606

namespace A140830

/-- `∩[A132237(n+1), A312160(n)]` -/
def P2948522818488577606.Spec : Prop :=
  ∀ n, (P2948522818488577606.a n : ℤ) = A140830 (n + 1)

end A140830

/-!
# A140831: Numbers in whose canonical prime factorization the powers of the primes do not form an increasing sequence.

The programs for A140831, there is no canonical definition to state claims against.
-/

/-! ## A140831.P4385359705600585014

`∪[A057715(n+1), A379094(n+1)]`
-/

namespace A140831.P4385359705600585014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140831.P4385359705600585014

/-! ## A140831.P9379900108669501718

`∪[A085231(n+1), A379094(n+1)]`
-/

namespace A140831.P9379900108669501718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140831.P9379900108669501718

/-! ## A140831.P7890388497597656267

`∪[A102749(n+1), A379094(n+1)]`
-/

namespace A140831.P7890388497597656267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140831.P7890388497597656267

/-! ## A140831.P2847095979319445333

`∪[A102749(n+1), A379097(n+1)]`
-/

namespace A140831.P2847095979319445333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140831.P2847095979319445333

/-! ## A140831.P6184530574501518716

`∪[A126855(n+1), A379094(n+1)]`
-/

namespace A140831.P6184530574501518716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140831.P6184530574501518716

/-! ## A140831.P7284038613224612112

`∪[A126855(n+2), A357863(n+1)]`
-/

namespace A140831.P7284038613224612112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140831.P7284038613224612112

/-!
# A140832: a(0) = 1; if a(n) is even, a(n + 1) = 5a(n)/2; if a(n) is odd, a(n + 1) is 5a(n)/2 rounded to the nearest even integer.

The programs for A140832, there is no canonical definition to state claims against.
-/

/-! ## A140832.P7062729681030496785

`A047273(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A140832.P7062729681030496785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047273 (a (n - 1) + 1).toNat + a (n - 1)

end

end A140832.P7062729681030496785

/-! ## A140832.P1099823421377012245

`3*a(n-1)-A004525(a(n-1))` with `a(0)=1`
-/

namespace A140832.P1099823421377012245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A004525 (a (n - 1)).toNat

end

end A140832.P1099823421377012245

/-! ## A140832.P3333816513074661139

`A301293(a(n-1))-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A140832.P3333816513074661139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301293 (a (n - 1)).toNat - (a (n - 1) + a (n - 1))

end

end A140832.P3333816513074661139

/-! ## A140832.P10177852076340337186

`A049206(3*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A140832.P10177852076340337186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049206 (3 * a (n - 1)).toNat + a (n - 1)

end

end A140832.P10177852076340337186

/-! ## A140832.P7016833884488922531

`A047222(A047237(a(n-1)+2))` with `a(0)=1`
-/

namespace A140832.P7016833884488922531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047222 (A047237 (a (n - 1) + 2).toNat).toNat

end

end A140832.P7016833884488922531

/-!
# A140833: Sum of Fibonacci numbers between F(-n)....F(n), inclusive.

The programs for A140833, the canonical program `A140833.P3254759350296627235` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140833 has offset 0).

The definition of A140833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140833.P3254759350296627235

`3*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140833

/-- `3*a(n-2)-a(n-4)` -/
def P3254759350296627235.Spec : Prop :=
  ∀ n, P3254759350296627235.a n = A140833 n

theorem P3254759350296627235.correct : P3254759350296627235.Spec := by
  intro n
  simp only [A140833]

end A140833

/-! ## A140833.P4639331878992286026

`2*A094966(n)`
-/

namespace A140833.P4639331878992286026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094966 n

end

end A140833.P4639331878992286026

namespace A140833

/-- `2*A094966(n)` -/
def P4639331878992286026.Spec : Prop :=
  ∀ n, P4639331878992286026.a n = A140833 n

end A140833

/-! ## A140833.P469570854100525384

`2*A000045(ceil(n/2)*2)`
-/

namespace A140833.P469570854100525384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (⌈(n : ℚ) / 2⌉ * 2).toNat

end

end A140833.P469570854100525384

namespace A140833

/-- `2*A000045(ceil(n/2)*2)` -/
def P469570854100525384.Spec : Prop :=
  ∀ n, P469570854100525384.a n = A140833 n

end A140833

/-! ## A140833.P1548894814737651127

`ceil(ϕ²*a(n-2))` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A140833.P1548894814737651127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌉

end

end A140833.P1548894814737651127

namespace A140833

/-- `ceil(ϕ²*a(n-2))` -/
def P1548894814737651127.Spec : Prop :=
  ∀ n, P1548894814737651127.a n = A140833 n

end A140833

/-! ## A140833.P4243717028500110568

`A006355(or(1, n+1))`
-/

namespace A140833.P4243717028500110568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (Nat.lor 1 (n + 1))

end

end A140833.P4243717028500110568

namespace A140833

/-- `A006355(or(1, n+1))` -/
def P4243717028500110568.Spec : Prop :=
  ∀ n, P4243717028500110568.a n = A140833 n

end A140833

/-! ## A140833.P3356124223036071788

`A118658(or(1, n+1))`
-/

namespace A140833.P3356124223036071788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (Nat.lor 1 (n + 1))

end

end A140833.P3356124223036071788

namespace A140833

/-- `A118658(or(1, n+1))` -/
def P3356124223036071788.Spec : Prop :=
  ∀ n, P3356124223036071788.a n = A140833 n

end A140833

/-! ## A140833.P16658666695374929599

`∑[2*n%2*A000045(n)]`
-/

namespace A140833.P16658666695374929599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n % 2) : ℕ) : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140833.P16658666695374929599

namespace A140833

/-- `∑[2*n%2*A000045(n)]` -/
def P16658666695374929599.Spec : Prop :=
  ∀ n, P16658666695374929599.a n = A140833 n

end A140833

/-! ## A140833.P12436384451494543837

`∑[2*A000045(lcm(2, n)-n)]`
-/

namespace A140833.P12436384451494543837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (Nat.lcm 2 n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140833.P12436384451494543837

namespace A140833

/-- `∑[2*A000045(lcm(2, n)-n)]` -/
def P12436384451494543837.Spec : Prop :=
  ∀ n, P12436384451494543837.a n = A140833 n

end A140833

/-! ## A140833.P15261995415035732436

`2*∑[A000045(C(n, xor(1, n)))]`
-/

namespace A140833.P15261995415035732436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (Nat.xor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140833.P15261995415035732436

namespace A140833

/-- `2*∑[A000045(C(n, xor(1, n)))]` -/
def P15261995415035732436.Spec : Prop :=
  ∀ n, P15261995415035732436.a n = A140833 n

end A140833

/-! ## A140833.P14200847562058410743

`2*A001906(∑[char[2*n+1]])`
-/

namespace A140833.P14200847562058410743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140833.P14200847562058410743

namespace A140833

/-- `2*A001906(∑[char[2*n+1]])` -/
def P14200847562058410743.Spec : Prop :=
  ∀ n, P14200847562058410743.a n = A140833 n

end A140833

/-! ## A140833.P1208633480023407431

`A006355(char[2*n+1]+n+1)`
-/

namespace A140833.P1208633480023407431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)

end

end A140833.P1208633480023407431

namespace A140833

/-- `A006355(char[2*n+1]+n+1)` -/
def P1208633480023407431.Spec : Prop :=
  ∀ n, P1208633480023407431.a n = A140833 n

end A140833

/-! ## A140833.P13748378630823289298

`∑[2*A000045(n*char[2*n+1])]`
-/

namespace A140833.P13748378630823289298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140833.P13748378630823289298

namespace A140833

/-- `∑[2*A000045(n*char[2*n+1])]` -/
def P13748378630823289298.Spec : Prop :=
  ∀ n, P13748378630823289298.a n = A140833 n

end A140833

/-! ## A140833.P14455910359606363666

`A198834(A265283(n))`
-/

namespace A140833.P14455910359606363666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (A265283 n).toNat

end

end A140833.P14455910359606363666

namespace A140833

/-- `A198834(A265283(n))` -/
def P14455910359606363666.Spec : Prop :=
  ∀ n, P14455910359606363666.a n = A140833 n

end A140833

/-! ## A140833.P16708265090600059829

`A062114(A052928(n+1))`
-/

namespace A140833.P16708265090600059829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 (A052928 (n + 1)).toNat

end

end A140833.P16708265090600059829

namespace A140833

/-- `A062114(A052928(n+1))` -/
def P16708265090600059829.Spec : Prop :=
  ∀ n, P16708265090600059829.a n = A140833 n

end A140833

/-! ## A140833.P12531361473295037674

`A214927(A168205(n+1))`
-/

namespace A140833.P12531361473295037674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (A168205 (n + 1)).toNat

end

end A140833.P12531361473295037674

namespace A140833

/-- `A214927(A168205(n+1))` -/
def P12531361473295037674.Spec : Prop :=
  ∀ n, P12531361473295037674.a n = A140833 n

end A140833

/-! ## A140833.P6850991016727216089

`A214927(A042964(n+2))`
-/

namespace A140833.P6850991016727216089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (A042964 (n + 2)).toNat

end

end A140833.P6850991016727216089

namespace A140833

/-- `A214927(A042964(n+2))` -/
def P6850991016727216089.Spec : Prop :=
  ∀ n, P6850991016727216089.a n = A140833 n

end A140833

/-! ## A140833.P11923322154535727097

`A214927(A063210(n+2))`
-/

namespace A140833.P11923322154535727097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (A063210 (n + 2)).toNat

end

end A140833.P11923322154535727097

namespace A140833

/-- `A214927(A063210(n+2))` -/
def P11923322154535727097.Spec : Prop :=
  ∀ n, P11923322154535727097.a n = A140833 n

end A140833

/-! ## A140833.P3882664503127977154

`A214927(A168269(n+2))`
-/

namespace A140833.P3882664503127977154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (A168269 (n + 2)).toNat

end

end A140833.P3882664503127977154

namespace A140833

/-- `A214927(A168269(n+2))` -/
def P3882664503127977154.Spec : Prop :=
  ∀ n, P3882664503127977154.a n = A140833 n

end A140833

/-!
# A140834: Primes that are the sum of at most four nonzero 4th powers.

The programs for A140834, there is no canonical definition to state claims against.
-/

/-! ## A140834.P14183563774887989559

`p?[A004833(n+1)]`
-/

namespace A140834.P14183563774887989559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140834.P14183563774887989559

/-! ## A140834.P13890940812681746382

`∩[A004833(n+1), A033203(n+1)]`
-/

namespace A140834.P13890940812681746382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P13890940812681746382

/-! ## A140834.P16876511474268882129

`∩[A004833(n+1), A214588(n+1)]`
-/

namespace A140834.P16876511474268882129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P16876511474268882129

/-! ## A140834.P15046968906339887375

`∩[A004833(n+1), A042998(n+1)]`
-/

namespace A140834.P15046968906339887375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P15046968906339887375

/-! ## A140834.P6869507630909999628

`∩[A004833(n+1), A045323(n+1)]`
-/

namespace A140834.P6869507630909999628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P6869507630909999628

/-! ## A140834.P17702377338711324929

`∩[A000040(n+1), A004833(n+1)]`
-/

namespace A140834.P17702377338711324929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P17702377338711324929

/-! ## A140834.P5190636733854716239

`∩[A004833(n+1), A045319(n+1)]`
-/

namespace A140834.P5190636733854716239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P5190636733854716239

/-! ## A140834.P3237679153003018127

`∩[A004833(n+1), A106118(n+1)]`
-/

namespace A140834.P3237679153003018127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P3237679153003018127

/-! ## A140834.P9811458362754125622

`∩[A004833(n+1), A116974(n+1)]`
-/

namespace A140834.P9811458362754125622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P9811458362754125622

/-! ## A140834.P12355584880492404889

`∩[A004833(n+1), A197636(n+1)]`
-/

namespace A140834.P12355584880492404889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P12355584880492404889

/-! ## A140834.P6736142720632743255

`∩[A004833(n+1), A053813(n+1)]`
-/

namespace A140834.P6736142720632743255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P6736142720632743255

/-! ## A140834.P14515711703500302360

`∩[A004833(n+1), A182140(n+1)]`
-/

namespace A140834.P14515711703500302360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140834.P14515711703500302360

/-! ## A140834.P15334083589067958815

`filter[A004833(n+2), A010051(#)]`
-/

namespace A140834.P15334083589067958815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A140834.P15334083589067958815

/-! ## A140834.P16942896708621384116

`filter[A004833(n+2), A323153(#)]`
-/

namespace A140834.P16942896708621384116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A140834.P16942896708621384116

/-! ## A140834.P5575525190215749524

`filter[A004833(n+3), A323152(#)]`
-/

namespace A140834.P5575525190215749524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A140834.P5575525190215749524

/-!
# A140835: A triangular sequence from a vector a(n) times a triangular tensor t(n,m): T(n,m)=a(n).t(n,m); a(n)=Fibonacci(n);A000045(n): t(n,m)=Binomial(n,GCD(n,m)).

The programs for A140835, there is no canonical definition to state claims against.
-/

/-! ## A140835.P10604264444633730594

`A108037(n)*A140822(n)`
-/

namespace A140835.P10604264444633730594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n * A140822 n

end

end A140835.P10604264444633730594

/-! ## A140835.P17339714160316015309

`A000045(A003056(n))*A140822(n)`
-/

namespace A140835.P17339714160316015309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003056 n).toNat * A140822 n

end

end A140835.P17339714160316015309

/-! ## A140835.P3783310824636602671

`A140822(n)*A212804(A002024(n+1))`
-/

namespace A140835.P3783310824636602671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140822 n * A212804 (A002024 (n + 1)).toNat

end

end A140835.P3783310824636602671

/-! ## A140835.P16218680217605488762

`A000045(∑[A073423(n)]-2)*A140822(n)`
-/

namespace A140835.P16218680217605488762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat * A140822 n

end

end A140835.P16218680217605488762

/-! ## A140835.P18381790974565746501

`A000045(A001222(A036561(n)))*A140822(n)`
-/

namespace A140835.P18381790974565746501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001222 (A036561 n).toNat).toNat * A140822 n

end

end A140835.P18381790974565746501

/-!
# A140840: Primes of the form 210n+11.

The programs for A140840, the canonical program `A140840.P7071296738797076077` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140840 has offset 1).

The definition of A140840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140840.P16741585735205893536

`210*A076355(n+1)+11`
-/

namespace A140840.P16741585735205893536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A076355 (n + 1) + 11

end

end A140840.P16741585735205893536

namespace A140840

/-- `210*A076355(n+1)+11` -/
def P16741585735205893536.Spec : Prop :=
  ∀ n, P16741585735205893536.a n = A140840 (n + 1)

end A140840

/-! ## A140840.P7071296738797076077

`∩[A140534(n+1), A142083(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140840

/-- `∩[A140534(n+1), A142083(n+1)]` -/
def P7071296738797076077.Spec : Prop :=
  ∀ n, (P7071296738797076077.a n : ℤ) = A140840 (n + 1)

theorem P7071296738797076077.correct : P7071296738797076077.Spec := by
  intro n
  simp only [A140840, Nat.add_sub_cancel]

end A140840

/-! ## A140840.P4635275666758099825

`∩[A089720(n+1), A140534(n+1)]`
-/

namespace A140840.P4635275666758099825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P4635275666758099825

namespace A140840

/-- `∩[A089720(n+1), A140534(n+1)]` -/
def P4635275666758099825.Spec : Prop :=
  ∀ n, (P4635275666758099825.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P13130096937154018966

`∩[A089720(n+1), A141893(n+1)]`
-/

namespace A140840.P13130096937154018966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P13130096937154018966

namespace A140840

/-- `∩[A089720(n+1), A141893(n+1)]` -/
def P13130096937154018966.Spec : Prop :=
  ∀ n, (P13130096937154018966.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P12243765114653898211

`∩[A140534(n+1), A141893(n+1)]`
-/

namespace A140840.P12243765114653898211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P12243765114653898211

namespace A140840

/-- `∩[A140534(n+1), A141893(n+1)]` -/
def P12243765114653898211.Spec : Prop :=
  ∀ n, (P12243765114653898211.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P5090169462650833075

`∩[A141893(n+1), A142083(n+1)]`
-/

namespace A140840.P5090169462650833075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P5090169462650833075

namespace A140840

/-- `∩[A141893(n+1), A142083(n+1)]` -/
def P5090169462650833075.Spec : Prop :=
  ∀ n, (P5090169462650833075.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P7553353764373594268

`∩[A132232(n+1), A140534(n+1)]`
-/

namespace A140840.P7553353764373594268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P7553353764373594268

namespace A140840

/-- `∩[A132232(n+1), A140534(n+1)]` -/
def P7553353764373594268.Spec : Prop :=
  ∀ n, (P7553353764373594268.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P5405105538961060814

`∩[A132232(n+1), A141893(n+1)]`
-/

namespace A140840.P5405105538961060814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P5405105538961060814

namespace A140840

/-- `∩[A132232(n+1), A141893(n+1)]` -/
def P5405105538961060814.Spec : Prop :=
  ∀ n, (P5405105538961060814.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P8344153769590507537

`∩[A132232(n+1), A142083(n+1)]`
-/

namespace A140840.P8344153769590507537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P8344153769590507537

namespace A140840

/-- `∩[A132232(n+1), A142083(n+1)]` -/
def P8344153769590507537.Spec : Prop :=
  ∀ n, (P8344153769590507537.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P3322058794293707145

`p?[7*15*n+11]`
-/

namespace A140840.P3322058794293707145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140840.P3322058794293707145

namespace A140840

/-- `p?[7*15*n+11]` -/
def P3322058794293707145.Spec : Prop :=
  ∀ n, (P3322058794293707145.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P8387790317592918432

`∩[A045462(n+1), A132232(n+1)]`
-/

namespace A140840.P8387790317592918432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P8387790317592918432

namespace A140840

/-- `∩[A045462(n+1), A132232(n+1)]` -/
def P8387790317592918432.Spec : Prop :=
  ∀ n, (P8387790317592918432.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P17892099120014650741

`∩[A045471(n+1), A132232(n+1)]`
-/

namespace A140840.P17892099120014650741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P17892099120014650741

namespace A140840

/-- `∩[A045471(n+1), A132232(n+1)]` -/
def P17892099120014650741.Spec : Prop :=
  ∀ n, (P17892099120014650741.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P17118134341354175965

`∩[A045462(n+1), A140534(n+1)]`
-/

namespace A140840.P17118134341354175965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P17118134341354175965

namespace A140840

/-- `∩[A045462(n+1), A140534(n+1)]` -/
def P17118134341354175965.Spec : Prop :=
  ∀ n, (P17118134341354175965.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P4687417841008452085

`∩[A045471(n+1), A140534(n+1)]`
-/

namespace A140840.P4687417841008452085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P4687417841008452085

namespace A140840

/-- `∩[A045471(n+1), A140534(n+1)]` -/
def P4687417841008452085.Spec : Prop :=
  ∀ n, (P4687417841008452085.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P15792996942567899778

`∩[A004622(n+1), A132232(n+1)]`
-/

namespace A140840.P15792996942567899778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P15792996942567899778

namespace A140840

/-- `∩[A004622(n+1), A132232(n+1)]` -/
def P15792996942567899778.Spec : Prop :=
  ∀ n, (P15792996942567899778.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P8706808209722254229

`∩[A004622(n+1), A140534(n+1)]`
-/

namespace A140840.P8706808209722254229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P8706808209722254229

namespace A140840

/-- `∩[A004622(n+1), A140534(n+1)]` -/
def P8706808209722254229.Spec : Prop :=
  ∀ n, (P8706808209722254229.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P14435976734912777738

`∩[A106881(n+1), A140534(n+1)]`
-/

namespace A140840.P14435976734912777738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P14435976734912777738

namespace A140840

/-- `∩[A106881(n+1), A140534(n+1)]` -/
def P14435976734912777738.Spec : Prop :=
  ∀ n, (P14435976734912777738.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P3525599530272555700

`∩[A106927(n+1), A140534(n+1)]`
-/

namespace A140840.P3525599530272555700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P3525599530272555700

namespace A140840

/-- `∩[A106927(n+1), A140534(n+1)]` -/
def P3525599530272555700.Spec : Prop :=
  ∀ n, (P3525599530272555700.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P15934048065912116928

`∩[A106927(n+1), A142083(n+1)]`
-/

namespace A140840.P15934048065912116928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P15934048065912116928

namespace A140840

/-- `∩[A106927(n+1), A142083(n+1)]` -/
def P15934048065912116928.Spec : Prop :=
  ∀ n, (P15934048065912116928.a n : ℤ) = A140840 (n + 1)

end A140840

/-! ## A140840.P14774799144564547533

`∩[A140506(n+1), A141893(n+1)]`
-/

namespace A140840.P14774799144564547533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P14774799144564547533

namespace A140840

/-- `∩[A140506(n+1), A141893(n+1)]` -/
def P14774799144564547533.Spec : Prop :=
  ∀ n, (P14774799144564547533.a n : ℤ) = A140840 (n + 1)

end A140840

/-!
# A140841: Primes of the form 210n + 13.

The programs for A140841, there is no canonical definition to state claims against.
-/

/-! ## A140841.P7675218665716790579

`∩[A140536(n+1), A142085(n+1)]`
-/

namespace A140841.P7675218665716790579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P7675218665716790579

/-! ## A140841.P13984364708194136947

`∩[A140536(n+1), A141894(n+1)]`
-/

namespace A140841.P13984364708194136947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P13984364708194136947

/-! ## A140841.P5527695447736868439

`∩[A141894(n+1), A142085(n+1)]`
-/

namespace A140841.P5527695447736868439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P5527695447736868439

/-! ## A140841.P6628798119634670445

`∩[A132233(n+1), A140536(n+1)]`
-/

namespace A140841.P6628798119634670445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P6628798119634670445

/-! ## A140841.P7846000969268093977

`∩[A132233(n+1), A141894(n+1)]`
-/

namespace A140841.P7846000969268093977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P7846000969268093977

/-! ## A140841.P1557032822215346695

`∩[A132233(n+1), A142085(n+1)]`
-/

namespace A140841.P1557032822215346695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P1557032822215346695

/-! ## A140841.P18219521760042701542

`p?[7*15*n+13]`
-/

namespace A140841.P18219521760042701542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140841.P18219521760042701542

/-! ## A140841.P10644440841231598524

`∩[A045464(n+1), A132233(n+1)]`
-/

namespace A140841.P10644440841231598524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P10644440841231598524

/-! ## A140841.P16280613010718624834

`∩[A045473(n+1), A132233(n+1)]`
-/

namespace A140841.P16280613010718624834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P16280613010718624834

/-! ## A140841.P14773601210902888729

`∩[A045464(n+1), A140536(n+1)]`
-/

namespace A140841.P14773601210902888729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P14773601210902888729

/-! ## A140841.P14553069112409989109

`∩[A045473(n+1), A140536(n+1)]`
-/

namespace A140841.P14553069112409989109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P14553069112409989109

/-! ## A140841.P3017280001810819799

`∩[A004624(n+1), A132233(n+1)]`
-/

namespace A140841.P3017280001810819799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P3017280001810819799

/-! ## A140841.P14855014680049444589

`∩[A004624(n+1), A140536(n+1)]`
-/

namespace A140841.P14855014680049444589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P14855014680049444589

/-! ## A140841.P8028280117442468543

`∩[A030431(n+1), A140536(n+1)]`
-/

namespace A140841.P8028280117442468543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P8028280117442468543

/-! ## A140841.P8218955955915696722

`∩[A030431(n+1), A141894(n+1)]`
-/

namespace A140841.P8218955955915696722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P8218955955915696722

/-! ## A140841.P11526513917946069845

`∩[A045414(n+1), A140536(n+1)]`
-/

namespace A140841.P11526513917946069845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P11526513917946069845

/-! ## A140841.P8841281819162717834

`∩[A045414(n+1), A141894(n+1)]`
-/

namespace A140841.P8841281819162717834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P8841281819162717834

/-! ## A140841.P2795990348820162296

`∩[A106878(n+1), A140536(n+1)]`
-/

namespace A140841.P2795990348820162296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P2795990348820162296

/-! ## A140841.P9909656047136307007

`∩[A140533(n+1), A141894(n+1)]`
-/

namespace A140841.P9909656047136307007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P9909656047136307007

/-! ## A140841.P11805199777389406941

`∩[A140533(n+1), A142085(n+1)]`
-/

namespace A140841.P11805199777389406941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P11805199777389406941

/-!
# A140842: Primes of the form 210k + 17.

The programs for A140842, the canonical program `A140842.P4312162986771692173` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140842 has offset 1).

The definition of A140842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140842.P4312162986771692173

`∩[A140537(n+1), A142087(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140842

/-- `∩[A140537(n+1), A142087(n+1)]` -/
def P4312162986771692173.Spec : Prop :=
  ∀ n, (P4312162986771692173.a n : ℤ) = A140842 (n + 1)

theorem P4312162986771692173.correct : P4312162986771692173.Spec := by
  intro n
  simp only [A140842, Nat.add_sub_cancel]

end A140842

/-! ## A140842.P936044438518031078

`∩[A140537(n+1), A141896(n+1)]`
-/

namespace A140842.P936044438518031078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P936044438518031078

namespace A140842

/-- `∩[A140537(n+1), A141896(n+1)]` -/
def P936044438518031078.Spec : Prop :=
  ∀ n, (P936044438518031078.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P2201544965588908265

`∩[A141896(n+1), A142087(n+1)]`
-/

namespace A140842.P2201544965588908265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P2201544965588908265

namespace A140842

/-- `∩[A141896(n+1), A142087(n+1)]` -/
def P2201544965588908265.Spec : Prop :=
  ∀ n, (P2201544965588908265.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P12052543237643354387

`∩[A039949(n+1), A140537(n+1)]`
-/

namespace A140842.P12052543237643354387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P12052543237643354387

namespace A140842

/-- `∩[A039949(n+1), A140537(n+1)]` -/
def P12052543237643354387.Spec : Prop :=
  ∀ n, (P12052543237643354387.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P15499762057193469764

`∩[A039949(n+1), A141896(n+1)]`
-/

namespace A140842.P15499762057193469764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P15499762057193469764

namespace A140842

/-- `∩[A039949(n+1), A141896(n+1)]` -/
def P15499762057193469764.Spec : Prop :=
  ∀ n, (P15499762057193469764.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P17531725260380095570

`∩[A039949(n+1), A142087(n+1)]`
-/

namespace A140842.P17531725260380095570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P17531725260380095570

namespace A140842

/-- `∩[A039949(n+1), A142087(n+1)]` -/
def P17531725260380095570.Spec : Prop :=
  ∀ n, (P17531725260380095570.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P14408601460024782891

`∩[A140537(n+1), A141860(n+1)]`
-/

namespace A140842.P14408601460024782891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P14408601460024782891

namespace A140842

/-- `∩[A140537(n+1), A141860(n+1)]` -/
def P14408601460024782891.Spec : Prop :=
  ∀ n, (P14408601460024782891.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P6117365561047335730

`∩[A141860(n+1), A141896(n+1)]`
-/

namespace A140842.P6117365561047335730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P6117365561047335730

namespace A140842

/-- `∩[A141860(n+1), A141896(n+1)]` -/
def P6117365561047335730.Spec : Prop :=
  ∀ n, (P6117365561047335730.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P927637994277495034

`∩[A141860(n+1), A142087(n+1)]`
-/

namespace A140842.P927637994277495034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P927637994277495034

namespace A140842

/-- `∩[A141860(n+1), A142087(n+1)]` -/
def P927637994277495034.Spec : Prop :=
  ∀ n, (P927637994277495034.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P2911760902370452437

`p?[7*15*n+17]`
-/

namespace A140842.P2911760902370452437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140842.P2911760902370452437

namespace A140842

/-- `p?[7*15*n+17]` -/
def P2911760902370452437.Spec : Prop :=
  ∀ n, (P2911760902370452437.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P11633345110187637214

`∑{p}[p?[A139615(n)+2], #]`
-/

namespace A140842.P11633345110187637214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A140842.P11633345110187637214

namespace A140842

/-- `∑{p}[p?[A139615(n)+2], #]` -/
def P11633345110187637214.Spec : Prop :=
  ∀ n, (P11633345110187637214.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P14290212132895899880

`p?[A139615(n)+2]%A017258(n)`
-/

namespace A140842.P14290212132895899880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017258 n)

end

end A140842.P14290212132895899880

namespace A140842

/-- `p?[A139615(n)+2]%A017258(n)` -/
def P14290212132895899880.Spec : Prop :=
  ∀ n, P14290212132895899880.a n = A140842 (n + 1)

end A140842

/-! ## A140842.P2371727617705861499

`p?[A139615(n)+2]+A008683(A273830(n))`
-/

namespace A140842.P2371727617705861499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (A273830 n).toNat

end

end A140842.P2371727617705861499

namespace A140842

/-- `p?[A139615(n)+2]+A008683(A273830(n))` -/
def P2371727617705861499.Spec : Prop :=
  ∀ n, P2371727617705861499.a n = A140842 (n + 1)

end A140842

/-! ## A140842.P10651847702769168388

`p?[A139615(n)+2]/A062157(A094727(n+1))²`
-/

namespace A140842.P10651847702769168388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A062157 (A094727 (n + 1)).toNat ^ 2 : ℚ)

end

end A140842.P10651847702769168388

namespace A140842

/-- `p?[A139615(n)+2]/A062157(A094727(n+1))²` -/
def P10651847702769168388.Spec : Prop :=
  ∀ n, P10651847702769168388.a n = (A140842 (n + 1) : ℚ)

end A140842

/-! ## A140842.P12715844734630805417

`∩[A039949(n+1), A045437(n+1)]`
-/

namespace A140842.P12715844734630805417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P12715844734630805417

namespace A140842

/-- `∩[A039949(n+1), A045437(n+1)]` -/
def P12715844734630805417.Spec : Prop :=
  ∀ n, (P12715844734630805417.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P6957513559730087776

`∩[A045437(n+1), A140537(n+1)]`
-/

namespace A140842.P6957513559730087776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P6957513559730087776

namespace A140842

/-- `∩[A045437(n+1), A140537(n+1)]` -/
def P6957513559730087776.Spec : Prop :=
  ∀ n, (P6957513559730087776.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P12734912249088096957

`∩[A045437(n+1), A141860(n+1)]`
-/

namespace A140842.P12734912249088096957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P12734912249088096957

namespace A140842

/-- `∩[A045437(n+1), A141860(n+1)]` -/
def P12734912249088096957.Spec : Prop :=
  ∀ n, (P12734912249088096957.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P16826513463473816262

`∩[A039949(n+1), A045425(n+1)]`
-/

namespace A140842.P16826513463473816262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P16826513463473816262

namespace A140842

/-- `∩[A039949(n+1), A045425(n+1)]` -/
def P16826513463473816262.Spec : Prop :=
  ∀ n, (P16826513463473816262.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P2163995978427526449

`∩[A045425(n+1), A140537(n+1)]`
-/

namespace A140842.P2163995978427526449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P2163995978427526449

namespace A140842

/-- `∩[A045425(n+1), A140537(n+1)]` -/
def P2163995978427526449.Spec : Prop :=
  ∀ n, (P2163995978427526449.a n : ℤ) = A140842 (n + 1)

end A140842

/-! ## A140842.P7333041503937249158

`∩[A045425(n+1), A141860(n+1)]`
-/

namespace A140842.P7333041503937249158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P7333041503937249158

namespace A140842

/-- `∩[A045425(n+1), A141860(n+1)]` -/
def P7333041503937249158.Spec : Prop :=
  ∀ n, (P7333041503937249158.a n : ℤ) = A140842 (n + 1)

end A140842

/-!
# A140843: Primes of the form 210k + 19.

The programs for A140843, the canonical program `A140843.P9580371541351845501` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140843 has offset 1).

The definition of A140843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140843.P12453365799234963882

`∩[A140569(n+1), A142089(n+1)]`
-/

namespace A140843.P12453365799234963882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P12453365799234963882

namespace A140843

/-- `∩[A140569(n+1), A142089(n+1)]` -/
def P12453365799234963882.Spec : Prop :=
  ∀ n, (P12453365799234963882.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P9580371541351845501

`∩[A140569(n+1), A141897(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140843

/-- `∩[A140569(n+1), A141897(n+1)]` -/
def P9580371541351845501.Spec : Prop :=
  ∀ n, (P9580371541351845501.a n : ℤ) = A140843 (n + 1)

theorem P9580371541351845501.correct : P9580371541351845501.Spec := by
  intro n
  simp only [A140843, Nat.add_sub_cancel]

end A140843

/-! ## A140843.P17908231443376177958

`∩[A141897(n+1), A142089(n+1)]`
-/

namespace A140843.P17908231443376177958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P17908231443376177958

namespace A140843

/-- `∩[A141897(n+1), A142089(n+1)]` -/
def P17908231443376177958.Spec : Prop :=
  ∀ n, (P17908231443376177958.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P17292418011344083980

`∩[A132234(n+1), A140569(n+1)]`
-/

namespace A140843.P17292418011344083980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P17292418011344083980

namespace A140843

/-- `∩[A132234(n+1), A140569(n+1)]` -/
def P17292418011344083980.Spec : Prop :=
  ∀ n, (P17292418011344083980.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P16712660573096626577

`∩[A132234(n+1), A141897(n+1)]`
-/

namespace A140843.P16712660573096626577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P16712660573096626577

namespace A140843

/-- `∩[A132234(n+1), A141897(n+1)]` -/
def P16712660573096626577.Spec : Prop :=
  ∀ n, (P16712660573096626577.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P10315131711917433971

`∩[A132234(n+1), A142089(n+1)]`
-/

namespace A140843.P10315131711917433971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P10315131711917433971

namespace A140843

/-- `∩[A132234(n+1), A142089(n+1)]` -/
def P10315131711917433971.Spec : Prop :=
  ∀ n, (P10315131711917433971.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P7077241407950883257

`p?[7*15*n+19]`
-/

namespace A140843.P7077241407950883257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140843.P7077241407950883257

namespace A140843

/-- `p?[7*15*n+19]` -/
def P7077241407950883257.Spec : Prop :=
  ∀ n, (P7077241407950883257.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P10758929226839863380

`∩[A045447(n+1), A132234(n+1)]`
-/

namespace A140843.P10758929226839863380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P10758929226839863380

namespace A140843

/-- `∩[A045447(n+1), A132234(n+1)]` -/
def P10758929226839863380.Spec : Prop :=
  ∀ n, (P10758929226839863380.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P1419440226502205757

`∩[A045458(n+1), A132234(n+1)]`
-/

namespace A140843.P1419440226502205757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P1419440226502205757

namespace A140843

/-- `∩[A045458(n+1), A132234(n+1)]` -/
def P1419440226502205757.Spec : Prop :=
  ∀ n, (P1419440226502205757.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P7412998744763464052

`∩[A045447(n+1), A140569(n+1)]`
-/

namespace A140843.P7412998744763464052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P7412998744763464052

namespace A140843

/-- `∩[A045447(n+1), A140569(n+1)]` -/
def P7412998744763464052.Spec : Prop :=
  ∀ n, (P7412998744763464052.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P6210382239100136375

`∩[A045458(n+1), A140569(n+1)]`
-/

namespace A140843.P6210382239100136375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P6210382239100136375

namespace A140843

/-- `∩[A045458(n+1), A140569(n+1)]` -/
def P6210382239100136375.Spec : Prop :=
  ∀ n, (P6210382239100136375.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P9927438007301326239

`∩[A033212(n+1), A140569(n+1)]`
-/

namespace A140843.P9927438007301326239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P9927438007301326239

namespace A140843

/-- `∩[A033212(n+1), A140569(n+1)]` -/
def P9927438007301326239.Spec : Prop :=
  ∀ n, (P9927438007301326239.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P16453085928874575565

`∩[A033212(n+1), A142089(n+1)]`
-/

namespace A140843.P16453085928874575565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P16453085928874575565

namespace A140843

/-- `∩[A033212(n+1), A142089(n+1)]` -/
def P16453085928874575565.Spec : Prop :=
  ∀ n, (P16453085928874575565.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P15853554274502563565

`∩[A132239(n+1), A140569(n+1)]`
-/

namespace A140843.P15853554274502563565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P15853554274502563565

namespace A140843

/-- `∩[A132239(n+1), A140569(n+1)]` -/
def P15853554274502563565.Spec : Prop :=
  ∀ n, (P15853554274502563565.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P224958513771748415

`∩[A132239(n+1), A141897(n+1)]`
-/

namespace A140843.P224958513771748415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P224958513771748415

namespace A140843

/-- `∩[A132239(n+1), A141897(n+1)]` -/
def P224958513771748415.Spec : Prop :=
  ∀ n, (P224958513771748415.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P7407765250411126339

`∩[A132239(n+1), A142089(n+1)]`
-/

namespace A140843.P7407765250411126339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P7407765250411126339

namespace A140843

/-- `∩[A132239(n+1), A142089(n+1)]` -/
def P7407765250411126339.Spec : Prop :=
  ∀ n, (P7407765250411126339.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P10295396949698930304

`∩[A030433(n+1), A140569(n+1)]`
-/

namespace A140843.P10295396949698930304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P10295396949698930304

namespace A140843

/-- `∩[A030433(n+1), A140569(n+1)]` -/
def P10295396949698930304.Spec : Prop :=
  ∀ n, (P10295396949698930304.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P3153973476145601911

`∩[A030433(n+1), A141897(n+1)]`
-/

namespace A140843.P3153973476145601911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P3153973476145601911

namespace A140843

/-- `∩[A030433(n+1), A141897(n+1)]` -/
def P3153973476145601911.Spec : Prop :=
  ∀ n, (P3153973476145601911.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P600764345575428486

`∩[A045457(n+1), A140569(n+1)]`
-/

namespace A140843.P600764345575428486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P600764345575428486

namespace A140843

/-- `∩[A045457(n+1), A140569(n+1)]` -/
def P600764345575428486.Spec : Prop :=
  ∀ n, (P600764345575428486.a n : ℤ) = A140843 (n + 1)

end A140843

/-! ## A140843.P11173642223160677421

`∩[A045457(n+1), A141897(n+1)]`
-/

namespace A140843.P11173642223160677421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P11173642223160677421

namespace A140843

/-- `∩[A045457(n+1), A141897(n+1)]` -/
def P11173642223160677421.Spec : Prop :=
  ∀ n, (P11173642223160677421.a n : ℤ) = A140843 (n + 1)

end A140843

/-!
# A140844: Primes of the form 210k + 23.

The programs for A140844, the canonical program `A140844.P12090693961516773908` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140844 has offset 1).

The definition of A140844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140844.P12090693961516773908

`∩[A140572(n+1), A142091(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140844

/-- `∩[A140572(n+1), A142091(n+1)]` -/
def P12090693961516773908.Spec : Prop :=
  ∀ n, (P12090693961516773908.a n : ℤ) = A140844 (n + 1)

theorem P12090693961516773908.correct : P12090693961516773908.Spec := by
  intro n
  simp only [A140844, Nat.add_sub_cancel]

end A140844

/-! ## A140844.P12535237468457707251

`∩[A140572(n+1), A141888(n+1)]`
-/

namespace A140844.P12535237468457707251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P12535237468457707251

namespace A140844

/-- `∩[A140572(n+1), A141888(n+1)]` -/
def P12535237468457707251.Spec : Prop :=
  ∀ n, (P12535237468457707251.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P15753201132631328530

`∩[A140572(n+1), A142244(n+1)]`
-/

namespace A140844.P15753201132631328530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P15753201132631328530

namespace A140844

/-- `∩[A140572(n+1), A142244(n+1)]` -/
def P15753201132631328530.Spec : Prop :=
  ∀ n, (P15753201132631328530.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P8447851022387294737

`∩[A141888(n+1), A142091(n+1)]`
-/

namespace A140844.P8447851022387294737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P8447851022387294737

namespace A140844

/-- `∩[A141888(n+1), A142091(n+1)]` -/
def P8447851022387294737.Spec : Prop :=
  ∀ n, (P8447851022387294737.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P17948093323484720224

`∩[A142091(n+1), A142244(n+1)]`
-/

namespace A140844.P17948093323484720224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P17948093323484720224

namespace A140844

/-- `∩[A142091(n+1), A142244(n+1)]` -/
def P17948093323484720224.Spec : Prop :=
  ∀ n, (P17948093323484720224.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P14956663895193517978

`∩[A132235(n+1), A140572(n+1)]`
-/

namespace A140844.P14956663895193517978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P14956663895193517978

namespace A140844

/-- `∩[A132235(n+1), A140572(n+1)]` -/
def P14956663895193517978.Spec : Prop :=
  ∀ n, (P14956663895193517978.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P16025441085846020937

`∩[A132235(n+1), A141888(n+1)]`
-/

namespace A140844.P16025441085846020937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P16025441085846020937

namespace A140844

/-- `∩[A132235(n+1), A141888(n+1)]` -/
def P16025441085846020937.Spec : Prop :=
  ∀ n, (P16025441085846020937.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P6833524078076871206

`∩[A132235(n+1), A142091(n+1)]`
-/

namespace A140844.P6833524078076871206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P6833524078076871206

namespace A140844

/-- `∩[A132235(n+1), A142091(n+1)]` -/
def P6833524078076871206.Spec : Prop :=
  ∀ n, (P6833524078076871206.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P6592507713411553532

`∩[A132235(n+1), A142244(n+1)]`
-/

namespace A140844.P6592507713411553532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P6592507713411553532

namespace A140844

/-- `∩[A132235(n+1), A142244(n+1)]` -/
def P6592507713411553532.Spec : Prop :=
  ∀ n, (P6592507713411553532.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P13437241165205389958

`p?[7*15*n+23]`
-/

namespace A140844.P13437241165205389958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140844.P13437241165205389958

namespace A140844

/-- `p?[7*15*n+23]` -/
def P13437241165205389958.Spec : Prop :=
  ∀ n, (P13437241165205389958.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P14873225294600147318

`∩[A045383(n+1), A132235(n+1)]`
-/

namespace A140844.P14873225294600147318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P14873225294600147318

namespace A140844

/-- `∩[A045383(n+1), A132235(n+1)]` -/
def P14873225294600147318.Spec : Prop :=
  ∀ n, (P14873225294600147318.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P9133248687453734011

`∩[A045392(n+1), A132235(n+1)]`
-/

namespace A140844.P9133248687453734011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P9133248687453734011

namespace A140844

/-- `∩[A045392(n+1), A132235(n+1)]` -/
def P9133248687453734011.Spec : Prop :=
  ∀ n, (P9133248687453734011.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P16027124551960081562

`∩[A045383(n+1), A140572(n+1)]`
-/

namespace A140844.P16027124551960081562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P16027124551960081562

namespace A140844

/-- `∩[A045383(n+1), A140572(n+1)]` -/
def P16027124551960081562.Spec : Prop :=
  ∀ n, (P16027124551960081562.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P13967653569622439271

`∩[A045392(n+1), A140572(n+1)]`
-/

namespace A140844.P13967653569622439271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P13967653569622439271

namespace A140844

/-- `∩[A045392(n+1), A140572(n+1)]` -/
def P13967653569622439271.Spec : Prop :=
  ∀ n, (P13967653569622439271.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P11929120849313666694

`∩[A132235(n+1), A140442(n+1)]`
-/

namespace A140844.P11929120849313666694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P11929120849313666694

namespace A140844

/-- `∩[A132235(n+1), A140442(n+1)]` -/
def P11929120849313666694.Spec : Prop :=
  ∀ n, (P11929120849313666694.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P5465533253878746308

`∩[A140442(n+1), A140572(n+1)]`
-/

namespace A140844.P5465533253878746308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P5465533253878746308

namespace A140844

/-- `∩[A140442(n+1), A140572(n+1)]` -/
def P5465533253878746308.Spec : Prop :=
  ∀ n, (P5465533253878746308.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P13348418258892956243

`∩[A030431(n+1), A140572(n+1)]`
-/

namespace A140844.P13348418258892956243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P13348418258892956243

namespace A140844

/-- `∩[A030431(n+1), A140572(n+1)]` -/
def P13348418258892956243.Spec : Prop :=
  ∀ n, (P13348418258892956243.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P6341539741869101411

`∩[A030431(n+1), A141888(n+1)]`
-/

namespace A140844.P6341539741869101411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P6341539741869101411

namespace A140844

/-- `∩[A030431(n+1), A141888(n+1)]` -/
def P6341539741869101411.Spec : Prop :=
  ∀ n, (P6341539741869101411.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P8948291382592161823

`∩[A030431(n+1), A142244(n+1)]`
-/

namespace A140844.P8948291382592161823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P8948291382592161823

namespace A140844

/-- `∩[A030431(n+1), A142244(n+1)]` -/
def P8948291382592161823.Spec : Prop :=
  ∀ n, (P8948291382592161823.a n : ℤ) = A140844 (n + 1)

end A140844

/-! ## A140844.P17809701103535224516

`∩[A045414(n+1), A140572(n+1)]`
-/

namespace A140844.P17809701103535224516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P17809701103535224516

namespace A140844

/-- `∩[A045414(n+1), A140572(n+1)]` -/
def P17809701103535224516.Spec : Prop :=
  ∀ n, (P17809701103535224516.a n : ℤ) = A140844 (n + 1)

end A140844

/-!
# A140845: Primes of the form 210k + 29.

The programs for A140845, the canonical program `A140845.P2138074440688167939` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140845 has offset 1).

The definition of A140845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140845.P2138074440688167939

`∩[A140573(n+1), A142095(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140845

/-- `∩[A140573(n+1), A142095(n+1)]` -/
def P2138074440688167939.Spec : Prop :=
  ∀ n, (P2138074440688167939.a n : ℤ) = A140845 (n + 1)

theorem P2138074440688167939.correct : P2138074440688167939.Spec := by
  intro n
  simp only [A140845, Nat.add_sub_cancel]

end A140845

/-! ## A140845.P11662904750944970802

`∩[A140573(n+1), A141891(n+1)]`
-/

namespace A140845.P11662904750944970802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P11662904750944970802

namespace A140845

/-- `∩[A140573(n+1), A141891(n+1)]` -/
def P11662904750944970802.Spec : Prop :=
  ∀ n, (P11662904750944970802.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P7350926694682046889

`∩[A141891(n+1), A142095(n+1)]`
-/

namespace A140845.P7350926694682046889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P7350926694682046889

namespace A140845

/-- `∩[A141891(n+1), A142095(n+1)]` -/
def P7350926694682046889.Spec : Prop :=
  ∀ n, (P7350926694682046889.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P13435153862248901988

`∩[A132236(n+1), A140573(n+1)]`
-/

namespace A140845.P13435153862248901988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P13435153862248901988

namespace A140845

/-- `∩[A132236(n+1), A140573(n+1)]` -/
def P13435153862248901988.Spec : Prop :=
  ∀ n, (P13435153862248901988.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P5407031197642434070

`∩[A132236(n+1), A141891(n+1)]`
-/

namespace A140845.P5407031197642434070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P5407031197642434070

namespace A140845

/-- `∩[A132236(n+1), A141891(n+1)]` -/
def P5407031197642434070.Spec : Prop :=
  ∀ n, (P5407031197642434070.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P9705661627155494794

`∩[A132236(n+1), A142095(n+1)]`
-/

namespace A140845.P9705661627155494794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P9705661627155494794

namespace A140845

/-- `∩[A132236(n+1), A142095(n+1)]` -/
def P9705661627155494794.Spec : Prop :=
  ∀ n, (P9705661627155494794.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P2478530966417640644

`p?[7*15*n+29]`
-/

namespace A140845.P2478530966417640644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140845.P2478530966417640644

namespace A140845

/-- `p?[7*15*n+29]` -/
def P2478530966417640644.Spec : Prop :=
  ∀ n, (P2478530966417640644.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P2649429587684062326

`∩[A045465(n+1), A132236(n+1)]`
-/

namespace A140845.P2649429587684062326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P2649429587684062326

namespace A140845

/-- `∩[A045465(n+1), A132236(n+1)]` -/
def P2649429587684062326.Spec : Prop :=
  ∀ n, (P2649429587684062326.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P14468301908791607435

`∩[A045465(n+1), A140573(n+1)]`
-/

namespace A140845.P14468301908791607435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P14468301908791607435

namespace A140845

/-- `∩[A045465(n+1), A140573(n+1)]` -/
def P14468301908791607435.Spec : Prop :=
  ∀ n, (P14468301908791607435.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P17770087629236599174

`∩[A132236(n+1), A140444(n+1)]`
-/

namespace A140845.P17770087629236599174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P17770087629236599174

namespace A140845

/-- `∩[A132236(n+1), A140444(n+1)]` -/
def P17770087629236599174.Spec : Prop :=
  ∀ n, (P17770087629236599174.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P12744743381037607498

`∩[A140444(n+1), A140573(n+1)]`
-/

namespace A140845.P12744743381037607498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P12744743381037607498

namespace A140845

/-- `∩[A140444(n+1), A140573(n+1)]` -/
def P12744743381037607498.Spec : Prop :=
  ∀ n, (P12744743381037607498.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P7899742141204059563

`∩[A004619(n+1), A132236(n+1)]`
-/

namespace A140845.P7899742141204059563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P7899742141204059563

namespace A140845

/-- `∩[A004619(n+1), A132236(n+1)]` -/
def P7899742141204059563.Spec : Prop :=
  ∀ n, (P7899742141204059563.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P6895148413715416986

`∩[A004619(n+1), A140573(n+1)]`
-/

namespace A140845.P6895148413715416986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P6895148413715416986

namespace A140845

/-- `∩[A004619(n+1), A140573(n+1)]` -/
def P6895148413715416986.Spec : Prop :=
  ∀ n, (P6895148413715416986.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P6410521864513337048

`∩[A106881(n+1), A140573(n+1)]`
-/

namespace A140845.P6410521864513337048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P6410521864513337048

namespace A140845

/-- `∩[A106881(n+1), A140573(n+1)]` -/
def P6410521864513337048.Spec : Prop :=
  ∀ n, (P6410521864513337048.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P4195669311496433562

`∩[A030433(n+1), A140573(n+1)]`
-/

namespace A140845.P4195669311496433562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P4195669311496433562

namespace A140845

/-- `∩[A030433(n+1), A140573(n+1)]` -/
def P4195669311496433562.Spec : Prop :=
  ∀ n, (P4195669311496433562.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P11107972410492678424

`∩[A030433(n+1), A141891(n+1)]`
-/

namespace A140845.P11107972410492678424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P11107972410492678424

namespace A140845

/-- `∩[A030433(n+1), A141891(n+1)]` -/
def P11107972410492678424.Spec : Prop :=
  ∀ n, (P11107972410492678424.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P3045215784694334331

`∩[A045457(n+1), A140573(n+1)]`
-/

namespace A140845.P3045215784694334331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P3045215784694334331

namespace A140845

/-- `∩[A045457(n+1), A140573(n+1)]` -/
def P3045215784694334331.Spec : Prop :=
  ∀ n, (P3045215784694334331.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P12366538171753302955

`∩[A045457(n+1), A141891(n+1)]`
-/

namespace A140845.P12366538171753302955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P12366538171753302955

namespace A140845

/-- `∩[A045457(n+1), A141891(n+1)]` -/
def P12366538171753302955.Spec : Prop :=
  ∀ n, (P12366538171753302955.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P16557420347510202488

`∩[A106927(n+1), A140573(n+1)]`
-/

namespace A140845.P16557420347510202488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P16557420347510202488

namespace A140845

/-- `∩[A106927(n+1), A140573(n+1)]` -/
def P16557420347510202488.Spec : Prop :=
  ∀ n, (P16557420347510202488.a n : ℤ) = A140845 (n + 1)

end A140845

/-! ## A140845.P2164379669262937837

`∩[A106927(n+1), A142095(n+1)]`
-/

namespace A140845.P2164379669262937837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P2164379669262937837

namespace A140845

/-- `∩[A106927(n+1), A142095(n+1)]` -/
def P2164379669262937837.Spec : Prop :=
  ∀ n, (P2164379669262937837.a n : ℤ) = A140845 (n + 1)

end A140845

/-!
# A140846: Primes of the form 210k + 31.

The programs for A140846, the canonical program `A140846.P12576340371996529633` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140846 has offset 1).

The definition of A140846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140846.P12576340371996529633

`∩[A140587(n+1), A142096(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140846

/-- `∩[A140587(n+1), A142096(n+1)]` -/
def P12576340371996529633.Spec : Prop :=
  ∀ n, (P12576340371996529633.a n : ℤ) = A140846 (n + 1)

theorem P12576340371996529633.correct : P12576340371996529633.Spec := by
  intro n
  simp only [A140846, Nat.add_sub_cancel]

end A140846

/-! ## A140846.P13308730906851469060

`∩[A140587(n+1), A141892(n+1)]`
-/

namespace A140846.P13308730906851469060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P13308730906851469060

namespace A140846

/-- `∩[A140587(n+1), A141892(n+1)]` -/
def P13308730906851469060.Spec : Prop :=
  ∀ n, (P13308730906851469060.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P16596029171479661614

`∩[A141892(n+1), A142096(n+1)]`
-/

namespace A140846.P16596029171479661614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P16596029171479661614

namespace A140846

/-- `∩[A141892(n+1), A142096(n+1)]` -/
def P16596029171479661614.Spec : Prop :=
  ∀ n, (P16596029171479661614.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P16718387352356165460

`∩[A132230(n+1), A140587(n+1)]`
-/

namespace A140846.P16718387352356165460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P16718387352356165460

namespace A140846

/-- `∩[A132230(n+1), A140587(n+1)]` -/
def P16718387352356165460.Spec : Prop :=
  ∀ n, (P16718387352356165460.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P3339692211734552559

`∩[A132230(n+1), A141892(n+1)]`
-/

namespace A140846.P3339692211734552559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P3339692211734552559

namespace A140846

/-- `∩[A132230(n+1), A141892(n+1)]` -/
def P3339692211734552559.Spec : Prop :=
  ∀ n, (P3339692211734552559.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P12792752273055695816

`∩[A132230(n+1), A142096(n+1)]`
-/

namespace A140846.P12792752273055695816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P12792752273055695816

namespace A140846

/-- `∩[A132230(n+1), A142096(n+1)]` -/
def P12792752273055695816.Spec : Prop :=
  ∀ n, (P12792752273055695816.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P1053995775361335776

`p?[7*15*n+31]`
-/

namespace A140846.P1053995775361335776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140846.P1053995775361335776

namespace A140846

/-- `p?[7*15*n+31]` -/
def P1053995775361335776.Spec : Prop :=
  ∀ n, (P1053995775361335776.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P18258930533786454186

`∩[A089721(n+1), A140587(n+1)]`
-/

namespace A140846.P18258930533786454186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P18258930533786454186

namespace A140846

/-- `∩[A089721(n+1), A140587(n+1)]` -/
def P18258930533786454186.Spec : Prop :=
  ∀ n, (P18258930533786454186.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P14487204130370285013

`∩[A089721(n+1), A141892(n+1)]`
-/

namespace A140846.P14487204130370285013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P14487204130370285013

namespace A140846

/-- `∩[A089721(n+1), A141892(n+1)]` -/
def P14487204130370285013.Spec : Prop :=
  ∀ n, (P14487204130370285013.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P821932363932138222

`∩[A045425(n+1), A132230(n+1)]`
-/

namespace A140846.P821932363932138222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P821932363932138222

namespace A140846

/-- `∩[A045425(n+1), A132230(n+1)]` -/
def P821932363932138222.Spec : Prop :=
  ∀ n, (P821932363932138222.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P4596167785280905329

`∩[A045437(n+1), A132230(n+1)]`
-/

namespace A140846.P4596167785280905329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P4596167785280905329

namespace A140846

/-- `∩[A045437(n+1), A132230(n+1)]` -/
def P4596167785280905329.Spec : Prop :=
  ∀ n, (P4596167785280905329.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P753764956474509891

`∩[A045425(n+1), A140587(n+1)]`
-/

namespace A140846.P753764956474509891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P753764956474509891

namespace A140846

/-- `∩[A045425(n+1), A140587(n+1)]` -/
def P753764956474509891.Spec : Prop :=
  ∀ n, (P753764956474509891.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P17069376010502639165

`∩[A045437(n+1), A140587(n+1)]`
-/

namespace A140846.P17069376010502639165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P17069376010502639165

namespace A140846

/-- `∩[A045437(n+1), A140587(n+1)]` -/
def P17069376010502639165.Spec : Prop :=
  ∀ n, (P17069376010502639165.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P12545134314769236316

`∩[A067826(n+1), A140587(n+1)]`
-/

namespace A140846.P12545134314769236316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P12545134314769236316

namespace A140846

/-- `∩[A067826(n+1), A140587(n+1)]` -/
def P12545134314769236316.Spec : Prop :=
  ∀ n, (P12545134314769236316.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P2092628659540281189

`∩[A067826(n+1), A142096(n+1)]`
-/

namespace A140846.P2092628659540281189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P2092628659540281189

namespace A140846

/-- `∩[A067826(n+1), A142096(n+1)]` -/
def P2092628659540281189.Spec : Prop :=
  ∀ n, (P2092628659540281189.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P7595428424076586956

`∩[A033212(n+1), A140587(n+1)]`
-/

namespace A140846.P7595428424076586956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P7595428424076586956

namespace A140846

/-- `∩[A033212(n+1), A140587(n+1)]` -/
def P7595428424076586956.Spec : Prop :=
  ∀ n, (P7595428424076586956.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P14817146110665857052

`∩[A033212(n+1), A142096(n+1)]`
-/

namespace A140846.P14817146110665857052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P14817146110665857052

namespace A140846

/-- `∩[A033212(n+1), A142096(n+1)]` -/
def P14817146110665857052.Spec : Prop :=
  ∀ n, (P14817146110665857052.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P183740642029322149

`∩[A132240(n+1), A141892(n+1)]`
-/

namespace A140846.P183740642029322149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P183740642029322149

namespace A140846

/-- `∩[A132240(n+1), A141892(n+1)]` -/
def P183740642029322149.Spec : Prop :=
  ∀ n, (P183740642029322149.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P17787792504239842627

`∩[A132240(n+1), A142096(n+1)]`
-/

namespace A140846.P17787792504239842627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P17787792504239842627

namespace A140846

/-- `∩[A132240(n+1), A142096(n+1)]` -/
def P17787792504239842627.Spec : Prop :=
  ∀ n, (P17787792504239842627.a n : ℤ) = A140846 (n + 1)

end A140846

/-! ## A140846.P12213782764781067057

`∩[A030430(n+1), A140587(n+1)]`
-/

namespace A140846.P12213782764781067057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P12213782764781067057

namespace A140846

/-- `∩[A030430(n+1), A140587(n+1)]` -/
def P12213782764781067057.Spec : Prop :=
  ∀ n, (P12213782764781067057.a n : ℤ) = A140846 (n + 1)

end A140846

/-!
# A140847: Primes of the form 210k + 37.

The programs for A140847, the canonical program `A140847.P3135573964198693593` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140847 has offset 1).

The definition of A140847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140847.P3135573964198693593

`∩[A140593(n+1), A142077(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140847

/-- `∩[A140593(n+1), A142077(n+1)]` -/
def P3135573964198693593.Spec : Prop :=
  ∀ n, (P3135573964198693593.a n : ℤ) = A140847 (n + 1)

theorem P3135573964198693593.correct : P3135573964198693593.Spec := by
  intro n
  simp only [A140847, Nat.add_sub_cancel]

end A140847

/-! ## A140847.P5948134421923656251

`∩[A140593(n+1), A141895(n+1)]`
-/

namespace A140847.P5948134421923656251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P5948134421923656251

namespace A140847

/-- `∩[A140593(n+1), A141895(n+1)]` -/
def P5948134421923656251.Spec : Prop :=
  ∀ n, (P5948134421923656251.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P17247085217407591894

`∩[A141895(n+1), A142077(n+1)]`
-/

namespace A140847.P17247085217407591894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P17247085217407591894

namespace A140847

/-- `∩[A141895(n+1), A142077(n+1)]` -/
def P17247085217407591894.Spec : Prop :=
  ∀ n, (P17247085217407591894.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P7490928722481832521

`∩[A132231(n+1), A140593(n+1)]`
-/

namespace A140847.P7490928722481832521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P7490928722481832521

namespace A140847

/-- `∩[A132231(n+1), A140593(n+1)]` -/
def P7490928722481832521.Spec : Prop :=
  ∀ n, (P7490928722481832521.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P7664985897638113093

`∩[A132231(n+1), A141895(n+1)]`
-/

namespace A140847.P7664985897638113093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P7664985897638113093

namespace A140847

/-- `∩[A132231(n+1), A141895(n+1)]` -/
def P7664985897638113093.Spec : Prop :=
  ∀ n, (P7664985897638113093.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P16803295366966312709

`∩[A132231(n+1), A142077(n+1)]`
-/

namespace A140847.P16803295366966312709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P16803295366966312709

namespace A140847

/-- `∩[A132231(n+1), A142077(n+1)]` -/
def P16803295366966312709.Spec : Prop :=
  ∀ n, (P16803295366966312709.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P15112881236127936349

`p?[3*35*n+37]`
-/

namespace A140847.P15112881236127936349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (35 * n) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140847.P15112881236127936349

namespace A140847

/-- `p?[3*35*n+37]` -/
def P15112881236127936349.Spec : Prop :=
  ∀ n, (P15112881236127936349.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P10884557142312690834

`or(1, p?[A139615(n)+22])`
-/

namespace A140847.P10884557142312690834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A140847.P10884557142312690834

namespace A140847

/-- `or(1, p?[A139615(n)+22])` -/
def P10884557142312690834.Spec : Prop :=
  ∀ n, P10884557142312690834.a n = A140847 (n + 1)

end A140847

/-! ## A140847.P11539059536581896862

`p?[A139615(n)+22]%A013998(n+1)`
-/

namespace A140847.P11539059536581896862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A013998 (n + 1))

end

end A140847.P11539059536581896862

namespace A140847

/-- `p?[A139615(n)+22]%A013998(n+1)` -/
def P11539059536581896862.Spec : Prop :=
  ∀ n, P11539059536581896862.a n = A140847 (n + 1)

end A140847

/-! ## A140847.P7267324752310562866

`∩[A132231(n+1), A216145(n+1)]`
-/

namespace A140847.P7267324752310562866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P7267324752310562866

namespace A140847

/-- `∩[A132231(n+1), A216145(n+1)]` -/
def P7267324752310562866.Spec : Prop :=
  ∀ n, (P7267324752310562866.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P3277157337142867416

`∩[A140593(n+1), A216145(n+1)]`
-/

namespace A140847.P3277157337142867416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P3277157337142867416

namespace A140847

/-- `∩[A140593(n+1), A216145(n+1)]` -/
def P3277157337142867416.Spec : Prop :=
  ∀ n, (P3277157337142867416.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P5738356777034482068

`∩[A141895(n+1), A216145(n+1)]`
-/

namespace A140847.P5738356777034482068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P5738356777034482068

namespace A140847

/-- `∩[A141895(n+1), A216145(n+1)]` -/
def P5738356777034482068.Spec : Prop :=
  ∀ n, (P5738356777034482068.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P16748189270425815787

`∩[A045392(n+1), A132231(n+1)]`
-/

namespace A140847.P16748189270425815787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P16748189270425815787

namespace A140847

/-- `∩[A045392(n+1), A132231(n+1)]` -/
def P16748189270425815787.Spec : Prop :=
  ∀ n, (P16748189270425815787.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P10413430009057544355

`∩[A045383(n+1), A140593(n+1)]`
-/

namespace A140847.P10413430009057544355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P10413430009057544355

namespace A140847

/-- `∩[A045383(n+1), A140593(n+1)]` -/
def P10413430009057544355.Spec : Prop :=
  ∀ n, (P10413430009057544355.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P12947181898880842446

`∩[A045392(n+1), A140593(n+1)]`
-/

namespace A140847.P12947181898880842446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P12947181898880842446

namespace A140847

/-- `∩[A045392(n+1), A140593(n+1)]` -/
def P12947181898880842446.Spec : Prop :=
  ∀ n, (P12947181898880842446.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P2786720993277499959

`∩[A132231(n+1), A140442(n+1)]`
-/

namespace A140847.P2786720993277499959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P2786720993277499959

namespace A140847

/-- `∩[A132231(n+1), A140442(n+1)]` -/
def P2786720993277499959.Spec : Prop :=
  ∀ n, (P2786720993277499959.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P12914624845842537854

`∩[A140442(n+1), A140593(n+1)]`
-/

namespace A140847.P12914624845842537854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P12914624845842537854

namespace A140847

/-- `∩[A140442(n+1), A140593(n+1)]` -/
def P12914624845842537854.Spec : Prop :=
  ∀ n, (P12914624845842537854.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P11129260200954489763

`p?[A139615(n)+22]/A001221(A107180(n+1))`
-/

namespace A140847.P11129260200954489763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 22

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001221 (A107180 (n + 1)).toNat : ℚ)

end

end A140847.P11129260200954489763

namespace A140847

/-- `p?[A139615(n)+22]/A001221(A107180(n+1))` -/
def P11129260200954489763.Spec : Prop :=
  ∀ n, P11129260200954489763.a n = (A140847 (n + 1) : ℚ)

end A140847

/-! ## A140847.P4293201648039106955

`∩[A067826(n+1), A140593(n+1)]`
-/

namespace A140847.P4293201648039106955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P4293201648039106955

namespace A140847

/-- `∩[A067826(n+1), A140593(n+1)]` -/
def P4293201648039106955.Spec : Prop :=
  ∀ n, (P4293201648039106955.a n : ℤ) = A140847 (n + 1)

end A140847

/-! ## A140847.P1677612366636636066

`∩[A139492(n+1), A140593(n+1)]`
-/

namespace A140847.P1677612366636636066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P1677612366636636066

namespace A140847

/-- `∩[A139492(n+1), A140593(n+1)]` -/
def P1677612366636636066.Spec : Prop :=
  ∀ n, (P1677612366636636066.a n : ℤ) = A140847 (n + 1)

end A140847

/-!
# A140848: Primes of the form 210k + 41.

The programs for A140848, the canonical program `A140848.P9126836863826732284` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140848 has offset 1).

The definition of A140848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140848.P9126836863826732284

`∩[A140634(n+1), A142080(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140848

/-- `∩[A140634(n+1), A142080(n+1)]` -/
def P9126836863826732284.Spec : Prop :=
  ∀ n, (P9126836863826732284.a n : ℤ) = A140848 (n + 1)

theorem P9126836863826732284.correct : P9126836863826732284.Spec := by
  intro n
  simp only [A140848, Nat.add_sub_cancel]

end A140848

/-! ## A140848.P6587453730430967078

`∩[A140634(n+1), A141898(n+1)]`
-/

namespace A140848.P6587453730430967078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P6587453730430967078

namespace A140848

/-- `∩[A140634(n+1), A141898(n+1)]` -/
def P6587453730430967078.Spec : Prop :=
  ∀ n, (P6587453730430967078.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P6231198319609749687

`∩[A141898(n+1), A142080(n+1)]`
-/

namespace A140848.P6231198319609749687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P6231198319609749687

namespace A140848

/-- `∩[A141898(n+1), A142080(n+1)]` -/
def P6231198319609749687.Spec : Prop :=
  ∀ n, (P6231198319609749687.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P7170597665108183938

`∩[A132232(n+1), A140634(n+1)]`
-/

namespace A140848.P7170597665108183938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P7170597665108183938

namespace A140848

/-- `∩[A132232(n+1), A140634(n+1)]` -/
def P7170597665108183938.Spec : Prop :=
  ∀ n, (P7170597665108183938.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P10910988704015540266

`∩[A132232(n+1), A141898(n+1)]`
-/

namespace A140848.P10910988704015540266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P10910988704015540266

namespace A140848

/-- `∩[A132232(n+1), A141898(n+1)]` -/
def P10910988704015540266.Spec : Prop :=
  ∀ n, (P10910988704015540266.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P2841503517987670867

`∩[A132232(n+1), A142080(n+1)]`
-/

namespace A140848.P2841503517987670867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P2841503517987670867

namespace A140848

/-- `∩[A132232(n+1), A142080(n+1)]` -/
def P2841503517987670867.Spec : Prop :=
  ∀ n, (P2841503517987670867.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P3045565493809485914

`p?[5*21*n-64]`
-/

namespace A140848.P3045565493809485914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (21 * n) : ℤ) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140848.P3045565493809485914

namespace A140848

/-- `p?[5*21*n-64]` -/
def P3045565493809485914.Spec : Prop :=
  ∀ n, P3045565493809485914.a n = A140848 (n + 1)

end A140848

/-! ## A140848.P12218558048514264313

`∩[A045473(n+1), A132232(n+1)]`
-/

namespace A140848.P12218558048514264313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P12218558048514264313

namespace A140848

/-- `∩[A045473(n+1), A132232(n+1)]` -/
def P12218558048514264313.Spec : Prop :=
  ∀ n, (P12218558048514264313.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P16861742248599391201

`∩[A045473(n+1), A140634(n+1)]`
-/

namespace A140848.P16861742248599391201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P16861742248599391201

namespace A140848

/-- `∩[A045473(n+1), A140634(n+1)]` -/
def P16861742248599391201.Spec : Prop :=
  ∀ n, (P16861742248599391201.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P4371418528272308370

`∩[A045464(n+1), A132232(n+1)]`
-/

namespace A140848.P4371418528272308370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P4371418528272308370

namespace A140848

/-- `∩[A045464(n+1), A132232(n+1)]` -/
def P4371418528272308370.Spec : Prop :=
  ∀ n, (P4371418528272308370.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P16108360707667808291

`∩[A045464(n+1), A140634(n+1)]`
-/

namespace A140848.P16108360707667808291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P16108360707667808291

namespace A140848

/-- `∩[A045464(n+1), A140634(n+1)]` -/
def P16108360707667808291.Spec : Prop :=
  ∀ n, (P16108360707667808291.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P9807242728176618646

`∩[A089721(n+1), A140634(n+1)]`
-/

namespace A140848.P9807242728176618646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P9807242728176618646

namespace A140848

/-- `∩[A089721(n+1), A140634(n+1)]` -/
def P9807242728176618646.Spec : Prop :=
  ∀ n, (P9807242728176618646.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P6831062361254174941

`∩[A089721(n+1), A141898(n+1)]`
-/

namespace A140848.P6831062361254174941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P6831062361254174941

namespace A140848

/-- `∩[A089721(n+1), A141898(n+1)]` -/
def P6831062361254174941.Spec : Prop :=
  ∀ n, (P6831062361254174941.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P8861894488108210272

`∩[A004624(n+1), A132232(n+1)]`
-/

namespace A140848.P8861894488108210272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P8861894488108210272

namespace A140848

/-- `∩[A004624(n+1), A132232(n+1)]` -/
def P8861894488108210272.Spec : Prop :=
  ∀ n, (P8861894488108210272.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P14245575311061895504

`∩[A004624(n+1), A140634(n+1)]`
-/

namespace A140848.P14245575311061895504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P14245575311061895504

namespace A140848

/-- `∩[A004624(n+1), A140634(n+1)]` -/
def P14245575311061895504.Spec : Prop :=
  ∀ n, (P14245575311061895504.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P18090067172961381687

`∩[A140506(n+1), A141898(n+1)]`
-/

namespace A140848.P18090067172961381687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P18090067172961381687

namespace A140848

/-- `∩[A140506(n+1), A141898(n+1)]` -/
def P18090067172961381687.Spec : Prop :=
  ∀ n, (P18090067172961381687.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P13847214980070535334

`∩[A140506(n+1), A142080(n+1)]`
-/

namespace A140848.P13847214980070535334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P13847214980070535334

namespace A140848

/-- `∩[A140506(n+1), A142080(n+1)]` -/
def P13847214980070535334.Spec : Prop :=
  ∀ n, (P13847214980070535334.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P8280203644504621057

`∩[A030430(n+1), A140634(n+1)]`
-/

namespace A140848.P8280203644504621057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P8280203644504621057

namespace A140848

/-- `∩[A030430(n+1), A140634(n+1)]` -/
def P8280203644504621057.Spec : Prop :=
  ∀ n, (P8280203644504621057.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P9128170225290121550

`∩[A030430(n+1), A141898(n+1)]`
-/

namespace A140848.P9128170225290121550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P9128170225290121550

namespace A140848

/-- `∩[A030430(n+1), A141898(n+1)]` -/
def P9128170225290121550.Spec : Prop :=
  ∀ n, (P9128170225290121550.a n : ℤ) = A140848 (n + 1)

end A140848

/-! ## A140848.P13781169280266972040

`∩[A045453(n+1), A140634(n+1)]`
-/

namespace A140848.P13781169280266972040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P13781169280266972040

namespace A140848

/-- `∩[A045453(n+1), A140634(n+1)]` -/
def P13781169280266972040.Spec : Prop :=
  ∀ n, (P13781169280266972040.a n : ℤ) = A140848 (n + 1)

end A140848

/-!
# A140849: Primes of the form 210k + 43.

The programs for A140849, the canonical program `A140849.P15281982838425384881` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140849 has offset 1).

The definition of A140849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140849.P15281982838425384881

`∩[A140640(n+1), A142081(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140849

/-- `∩[A140640(n+1), A142081(n+1)]` -/
def P15281982838425384881.Spec : Prop :=
  ∀ n, (P15281982838425384881.a n : ℤ) = A140849 (n + 1)

theorem P15281982838425384881.correct : P15281982838425384881.Spec := by
  intro n
  simp only [A140849, Nat.add_sub_cancel]

end A140849

/-! ## A140849.P18415034272404087300

`∩[A124826(n+1), A140640(n+1)]`
-/

namespace A140849.P18415034272404087300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P18415034272404087300

namespace A140849

/-- `∩[A124826(n+1), A140640(n+1)]` -/
def P18415034272404087300.Spec : Prop :=
  ∀ n, (P18415034272404087300.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P7648922678221884938

`∩[A124826(n+1), A142081(n+1)]`
-/

namespace A140849.P7648922678221884938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P7648922678221884938

namespace A140849

/-- `∩[A124826(n+1), A142081(n+1)]` -/
def P7648922678221884938.Spec : Prop :=
  ∀ n, (P7648922678221884938.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P1045184084838100449

`∩[A124826(n+1), A132233(n+1)]`
-/

namespace A140849.P1045184084838100449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P1045184084838100449

namespace A140849

/-- `∩[A124826(n+1), A132233(n+1)]` -/
def P1045184084838100449.Spec : Prop :=
  ∀ n, (P1045184084838100449.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P8457690398497052844

`∩[A132233(n+1), A140640(n+1)]`
-/

namespace A140849.P8457690398497052844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P8457690398497052844

namespace A140849

/-- `∩[A132233(n+1), A140640(n+1)]` -/
def P8457690398497052844.Spec : Prop :=
  ∀ n, (P8457690398497052844.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P10624575528876180062

`∩[A132233(n+1), A142081(n+1)]`
-/

namespace A140849.P10624575528876180062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P10624575528876180062

namespace A140849

/-- `∩[A132233(n+1), A142081(n+1)]` -/
def P10624575528876180062.Spec : Prop :=
  ∀ n, (P10624575528876180062.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P14580006342448322690

`p?[7*15*n+43]`
-/

namespace A140849.P14580006342448322690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140849.P14580006342448322690

namespace A140849

/-- `p?[7*15*n+43]` -/
def P14580006342448322690.Spec : Prop :=
  ∀ n, (P14580006342448322690.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P17740392604584831534

`∩[A045465(n+1), A132233(n+1)]`
-/

namespace A140849.P17740392604584831534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P17740392604584831534

namespace A140849

/-- `∩[A045465(n+1), A132233(n+1)]` -/
def P17740392604584831534.Spec : Prop :=
  ∀ n, (P17740392604584831534.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P12212023381082606394

`∩[A045465(n+1), A140640(n+1)]`
-/

namespace A140849.P12212023381082606394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P12212023381082606394

namespace A140849

/-- `∩[A045465(n+1), A140640(n+1)]` -/
def P12212023381082606394.Spec : Prop :=
  ∀ n, (P12212023381082606394.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P922502595470061911

`∩[A132233(n+1), A140444(n+1)]`
-/

namespace A140849.P922502595470061911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P922502595470061911

namespace A140849

/-- `∩[A132233(n+1), A140444(n+1)]` -/
def P922502595470061911.Spec : Prop :=
  ∀ n, (P922502595470061911.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P11813650696077024089

`∩[A140444(n+1), A140640(n+1)]`
-/

namespace A140849.P11813650696077024089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P11813650696077024089

namespace A140849

/-- `∩[A140444(n+1), A140640(n+1)]` -/
def P11813650696077024089.Spec : Prop :=
  ∀ n, (P11813650696077024089.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P12478811609722932307

`∩[A004619(n+1), A132233(n+1)]`
-/

namespace A140849.P12478811609722932307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P12478811609722932307

namespace A140849

/-- `∩[A004619(n+1), A132233(n+1)]` -/
def P12478811609722932307.Spec : Prop :=
  ∀ n, (P12478811609722932307.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P12149423621634755440

`∩[A004619(n+1), A140640(n+1)]`
-/

namespace A140849.P12149423621634755440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P12149423621634755440

namespace A140849

/-- `∩[A004619(n+1), A140640(n+1)]` -/
def P12149423621634755440.Spec : Prop :=
  ∀ n, (P12149423621634755440.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P10536601574665466917

`∩[A139492(n+1), A140640(n+1)]`
-/

namespace A140849.P10536601574665466917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P10536601574665466917

namespace A140849

/-- `∩[A139492(n+1), A140640(n+1)]` -/
def P10536601574665466917.Spec : Prop :=
  ∀ n, (P10536601574665466917.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P1486455306169237095

`∩[A139492(n+1), A142081(n+1)]`
-/

namespace A140849.P1486455306169237095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P1486455306169237095

namespace A140849

/-- `∩[A139492(n+1), A142081(n+1)]` -/
def P1486455306169237095.Spec : Prop :=
  ∀ n, (P1486455306169237095.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P6485524694360458385

`∩[A030431(n+1), A124826(n+1)]`
-/

namespace A140849.P6485524694360458385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P6485524694360458385

namespace A140849

/-- `∩[A030431(n+1), A124826(n+1)]` -/
def P6485524694360458385.Spec : Prop :=
  ∀ n, (P6485524694360458385.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P12034172270955476556

`∩[A045414(n+1), A124826(n+1)]`
-/

namespace A140849.P12034172270955476556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P12034172270955476556

namespace A140849

/-- `∩[A045414(n+1), A124826(n+1)]` -/
def P12034172270955476556.Spec : Prop :=
  ∀ n, (P12034172270955476556.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P7439188234673984714

`∩[A030431(n+1), A140640(n+1)]`
-/

namespace A140849.P7439188234673984714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P7439188234673984714

namespace A140849

/-- `∩[A030431(n+1), A140640(n+1)]` -/
def P7439188234673984714.Spec : Prop :=
  ∀ n, (P7439188234673984714.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P16486146616759308169

`∩[A045414(n+1), A140640(n+1)]`
-/

namespace A140849.P16486146616759308169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P16486146616759308169

namespace A140849

/-- `∩[A045414(n+1), A140640(n+1)]` -/
def P16486146616759308169.Spec : Prop :=
  ∀ n, (P16486146616759308169.a n : ℤ) = A140849 (n + 1)

end A140849

/-! ## A140849.P12720030334024432021

`∩[A124826(n+1), A140533(n+1)]`
-/

namespace A140849.P12720030334024432021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P12720030334024432021

namespace A140849

/-- `∩[A124826(n+1), A140533(n+1)]` -/
def P12720030334024432021.Spec : Prop :=
  ∀ n, (P12720030334024432021.a n : ℤ) = A140849 (n + 1)

end A140849

/-!
# A140850: Primes of the form 210k + 47.

The programs for A140850, the canonical program `A140850.P1912603944725706303` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140850 has offset 1).

The definition of A140850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140850.P1912603944725706303

`∩[A140641(n+1), A142084(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140850

/-- `∩[A140641(n+1), A142084(n+1)]` -/
def P1912603944725706303.Spec : Prop :=
  ∀ n, (P1912603944725706303.a n : ℤ) = A140850 (n + 1)

theorem P1912603944725706303.correct : P1912603944725706303.Spec := by
  intro n
  simp only [A140850, Nat.add_sub_cancel]

end A140850

/-! ## A140850.P8809992003139634825

`∩[A140641(n+1), A141890(n+1)]`
-/

namespace A140850.P8809992003139634825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P8809992003139634825

namespace A140850

/-- `∩[A140641(n+1), A141890(n+1)]` -/
def P8809992003139634825.Spec : Prop :=
  ∀ n, (P8809992003139634825.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P8255604730311950591

`∩[A141890(n+1), A142084(n+1)]`
-/

namespace A140850.P8255604730311950591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P8255604730311950591

namespace A140850

/-- `∩[A141890(n+1), A142084(n+1)]` -/
def P8255604730311950591.Spec : Prop :=
  ∀ n, (P8255604730311950591.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P13982199902017802601

`∩[A039949(n+1), A140641(n+1)]`
-/

namespace A140850.P13982199902017802601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P13982199902017802601

namespace A140850

/-- `∩[A039949(n+1), A140641(n+1)]` -/
def P13982199902017802601.Spec : Prop :=
  ∀ n, (P13982199902017802601.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P3941735511881971786

`∩[A039949(n+1), A141890(n+1)]`
-/

namespace A140850.P3941735511881971786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P3941735511881971786

namespace A140850

/-- `∩[A039949(n+1), A141890(n+1)]` -/
def P3941735511881971786.Spec : Prop :=
  ∀ n, (P3941735511881971786.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P11113539372359820062

`∩[A039949(n+1), A142084(n+1)]`
-/

namespace A140850.P11113539372359820062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P11113539372359820062

namespace A140850

/-- `∩[A039949(n+1), A142084(n+1)]` -/
def P11113539372359820062.Spec : Prop :=
  ∀ n, (P11113539372359820062.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P2238941811843125134

`∩[A140641(n+1), A141860(n+1)]`
-/

namespace A140850.P2238941811843125134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P2238941811843125134

namespace A140850

/-- `∩[A140641(n+1), A141860(n+1)]` -/
def P2238941811843125134.Spec : Prop :=
  ∀ n, (P2238941811843125134.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P12394477078582683341

`∩[A141860(n+1), A141890(n+1)]`
-/

namespace A140850.P12394477078582683341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P12394477078582683341

namespace A140850

/-- `∩[A141860(n+1), A141890(n+1)]` -/
def P12394477078582683341.Spec : Prop :=
  ∀ n, (P12394477078582683341.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P3933692614223040403

`∩[A141860(n+1), A142084(n+1)]`
-/

namespace A140850.P3933692614223040403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P3933692614223040403

namespace A140850

/-- `∩[A141860(n+1), A142084(n+1)]` -/
def P3933692614223040403.Spec : Prop :=
  ∀ n, (P3933692614223040403.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P4483587983912485112

`p?[7*15*n+47]`
-/

namespace A140850.P4483587983912485112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 47

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140850.P4483587983912485112

namespace A140850

/-- `p?[7*15*n+47]` -/
def P4483587983912485112.Spec : Prop :=
  ∀ n, (P4483587983912485112.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P2289479517633440040

`∩[A039949(n+1), A045447(n+1)]`
-/

namespace A140850.P2289479517633440040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P2289479517633440040

namespace A140850

/-- `∩[A039949(n+1), A045447(n+1)]` -/
def P2289479517633440040.Spec : Prop :=
  ∀ n, (P2289479517633440040.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P17834318151053004163

`∩[A039949(n+1), A045458(n+1)]`
-/

namespace A140850.P17834318151053004163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P17834318151053004163

namespace A140850

/-- `∩[A039949(n+1), A045458(n+1)]` -/
def P17834318151053004163.Spec : Prop :=
  ∀ n, (P17834318151053004163.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P15049548406659989990

`∩[A045447(n+1), A140641(n+1)]`
-/

namespace A140850.P15049548406659989990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P15049548406659989990

namespace A140850

/-- `∩[A045447(n+1), A140641(n+1)]` -/
def P15049548406659989990.Spec : Prop :=
  ∀ n, (P15049548406659989990.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P14894591801010011505

`∩[A045458(n+1), A140641(n+1)]`
-/

namespace A140850.P14894591801010011505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P14894591801010011505

namespace A140850

/-- `∩[A045458(n+1), A140641(n+1)]` -/
def P14894591801010011505.Spec : Prop :=
  ∀ n, (P14894591801010011505.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P17583031328137184408

`∩[A045447(n+1), A141860(n+1)]`
-/

namespace A140850.P17583031328137184408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P17583031328137184408

namespace A140850

/-- `∩[A045447(n+1), A141860(n+1)]` -/
def P17583031328137184408.Spec : Prop :=
  ∀ n, (P17583031328137184408.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P1890124071465798434

`∩[A045458(n+1), A141860(n+1)]`
-/

namespace A140850.P1890124071465798434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P1890124071465798434

namespace A140850

/-- `∩[A045458(n+1), A141860(n+1)]` -/
def P1890124071465798434.Spec : Prop :=
  ∀ n, (P1890124071465798434.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P2451270843150730625

`∩[A039949(n+1), A114646(n+1)]`
-/

namespace A140850.P2451270843150730625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P2451270843150730625

namespace A140850

/-- `∩[A039949(n+1), A114646(n+1)]` -/
def P2451270843150730625.Spec : Prop :=
  ∀ n, (P2451270843150730625.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P9969153057238930284

`∩[A114646(n+1), A140641(n+1)]`
-/

namespace A140850.P9969153057238930284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P9969153057238930284

namespace A140850

/-- `∩[A114646(n+1), A140641(n+1)]` -/
def P9969153057238930284.Spec : Prop :=
  ∀ n, (P9969153057238930284.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P15855428121531665231

`∩[A114646(n+1), A141860(n+1)]`
-/

namespace A140850.P15855428121531665231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P15855428121531665231

namespace A140850

/-- `∩[A114646(n+1), A141860(n+1)]` -/
def P15855428121531665231.Spec : Prop :=
  ∀ n, (P15855428121531665231.a n : ℤ) = A140850 (n + 1)

end A140850

/-! ## A140850.P17080788973391816552

`∩[A114646(n+1), A141890(n+1)]`
-/

namespace A140850.P17080788973391816552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P17080788973391816552

namespace A140850

/-- `∩[A114646(n+1), A141890(n+1)]` -/
def P17080788973391816552.Spec : Prop :=
  ∀ n, (P17080788973391816552.a n : ℤ) = A140850 (n + 1)

end A140850

/-!
# A140851: Primes of the form 210k + 53.

The programs for A140851, the canonical program `A140851.P6553668124277126355` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140851 has offset 1).

The definition of A140851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140851.P6553668124277126355

`∩[A140655(n+1), A142088(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140851

/-- `∩[A140655(n+1), A142088(n+1)]` -/
def P6553668124277126355.Spec : Prop :=
  ∀ n, (P6553668124277126355.a n : ℤ) = A140851 (n + 1)

theorem P6553668124277126355.correct : P6553668124277126355.Spec := by
  intro n
  simp only [A140851, Nat.add_sub_cancel]

end A140851

/-! ## A140851.P15670711113410780341

`∩[A140655(n+1), A141893(n+1)]`
-/

namespace A140851.P15670711113410780341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P15670711113410780341

namespace A140851

/-- `∩[A140655(n+1), A141893(n+1)]` -/
def P15670711113410780341.Spec : Prop :=
  ∀ n, (P15670711113410780341.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P7926888912569640338

`∩[A141893(n+1), A142088(n+1)]`
-/

namespace A140851.P7926888912569640338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P7926888912569640338

namespace A140851

/-- `∩[A141893(n+1), A142088(n+1)]` -/
def P7926888912569640338.Spec : Prop :=
  ∀ n, (P7926888912569640338.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P10812683136042829271

`∩[A132235(n+1), A140655(n+1)]`
-/

namespace A140851.P10812683136042829271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P10812683136042829271

namespace A140851

/-- `∩[A132235(n+1), A140655(n+1)]` -/
def P10812683136042829271.Spec : Prop :=
  ∀ n, (P10812683136042829271.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P2899660807961477770

`∩[A132235(n+1), A141893(n+1)]`
-/

namespace A140851.P2899660807961477770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P2899660807961477770

namespace A140851

/-- `∩[A132235(n+1), A141893(n+1)]` -/
def P2899660807961477770.Spec : Prop :=
  ∀ n, (P2899660807961477770.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P9182088379946925340

`∩[A132235(n+1), A142088(n+1)]`
-/

namespace A140851.P9182088379946925340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P9182088379946925340

namespace A140851

/-- `∩[A132235(n+1), A142088(n+1)]` -/
def P9182088379946925340.Spec : Prop :=
  ∀ n, (P9182088379946925340.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P12328189865805625200

`p?[7*15*n-52]`
-/

namespace A140851.P12328189865805625200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (15 * n) : ℤ) - 52

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140851.P12328189865805625200

namespace A140851

/-- `p?[7*15*n-52]` -/
def P12328189865805625200.Spec : Prop :=
  ∀ n, P12328189865805625200.a n = A140851 (n + 1)

end A140851

/-! ## A140851.P9459042758543136497

`∩[A045462(n+1), A132235(n+1)]`
-/

namespace A140851.P9459042758543136497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P9459042758543136497

namespace A140851

/-- `∩[A045462(n+1), A132235(n+1)]` -/
def P9459042758543136497.Spec : Prop :=
  ∀ n, (P9459042758543136497.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P16435869912040096474

`∩[A045471(n+1), A132235(n+1)]`
-/

namespace A140851.P16435869912040096474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P16435869912040096474

namespace A140851

/-- `∩[A045471(n+1), A132235(n+1)]` -/
def P16435869912040096474.Spec : Prop :=
  ∀ n, (P16435869912040096474.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P2901598199293580682

`∩[A045462(n+1), A140655(n+1)]`
-/

namespace A140851.P2901598199293580682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P2901598199293580682

namespace A140851

/-- `∩[A045462(n+1), A140655(n+1)]` -/
def P2901598199293580682.Spec : Prop :=
  ∀ n, (P2901598199293580682.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P11045314617163079412

`∩[A045471(n+1), A140655(n+1)]`
-/

namespace A140851.P11045314617163079412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P11045314617163079412

namespace A140851

/-- `∩[A045471(n+1), A140655(n+1)]` -/
def P11045314617163079412.Spec : Prop :=
  ∀ n, (P11045314617163079412.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P16912614003836868628

`∩[A001836(n+1), A140655(n+1)]`
-/

namespace A140851.P16912614003836868628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P16912614003836868628

namespace A140851

/-- `∩[A001836(n+1), A140655(n+1)]` -/
def P16912614003836868628.Spec : Prop :=
  ∀ n, (P16912614003836868628.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P13287511559395868206

`∩[A001836(n+1), A142088(n+1)]`
-/

namespace A140851.P13287511559395868206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P13287511559395868206

namespace A140851

/-- `∩[A001836(n+1), A142088(n+1)]` -/
def P13287511559395868206.Spec : Prop :=
  ∀ n, (P13287511559395868206.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P16173578517084380152

`∩[A004622(n+1), A132235(n+1)]`
-/

namespace A140851.P16173578517084380152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P16173578517084380152

namespace A140851

/-- `∩[A004622(n+1), A132235(n+1)]` -/
def P16173578517084380152.Spec : Prop :=
  ∀ n, (P16173578517084380152.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P10310846493230688454

`∩[A004622(n+1), A140655(n+1)]`
-/

namespace A140851.P10310846493230688454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P10310846493230688454

namespace A140851

/-- `∩[A004622(n+1), A140655(n+1)]` -/
def P10310846493230688454.Spec : Prop :=
  ∀ n, (P10310846493230688454.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P1082585869509882483

`∩[A106859(n+1), A140655(n+1)]`
-/

namespace A140851.P1082585869509882483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P1082585869509882483

namespace A140851

/-- `∩[A106859(n+1), A140655(n+1)]` -/
def P1082585869509882483.Spec : Prop :=
  ∀ n, (P1082585869509882483.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P11562627905077268557

`∩[A106927(n+1), A140655(n+1)]`
-/

namespace A140851.P11562627905077268557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P11562627905077268557

namespace A140851

/-- `∩[A106927(n+1), A140655(n+1)]` -/
def P11562627905077268557.Spec : Prop :=
  ∀ n, (P11562627905077268557.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P13692048241273904478

`∩[A106859(n+1), A142088(n+1)]`
-/

namespace A140851.P13692048241273904478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P13692048241273904478

namespace A140851

/-- `∩[A106859(n+1), A142088(n+1)]` -/
def P13692048241273904478.Spec : Prop :=
  ∀ n, (P13692048241273904478.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P3364619954283315227

`∩[A106927(n+1), A142088(n+1)]`
-/

namespace A140851.P3364619954283315227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P3364619954283315227

namespace A140851

/-- `∩[A106927(n+1), A142088(n+1)]` -/
def P3364619954283315227.Spec : Prop :=
  ∀ n, (P3364619954283315227.a n : ℤ) = A140851 (n + 1)

end A140851

/-! ## A140851.P17685851410713459279

`∩[A140655(n+1), A343241(n+1)]`
-/

namespace A140851.P17685851410713459279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P17685851410713459279

namespace A140851

/-- `∩[A140655(n+1), A343241(n+1)]` -/
def P17685851410713459279.Spec : Prop :=
  ∀ n, (P17685851410713459279.a n : ℤ) = A140851 (n + 1)

end A140851

/-!
# A140852: Primes of the form 210k + 59.

The programs for A140852, the canonical program `A140852.P12170253662013968918` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140852 has offset 1).

The definition of A140852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140852.P12170253662013968918

`∩[A140687(n+1), A142092(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140852

/-- `∩[A140687(n+1), A142092(n+1)]` -/
def P12170253662013968918.Spec : Prop :=
  ∀ n, (P12170253662013968918.a n : ℤ) = A140852 (n + 1)

theorem P12170253662013968918.correct : P12170253662013968918.Spec := by
  intro n
  simp only [A140852, Nat.add_sub_cancel]

end A140852

/-! ## A140852.P11749796238036569413

`∩[A140687(n+1), A141896(n+1)]`
-/

namespace A140852.P11749796238036569413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P11749796238036569413

namespace A140852

/-- `∩[A140687(n+1), A141896(n+1)]` -/
def P11749796238036569413.Spec : Prop :=
  ∀ n, (P11749796238036569413.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P16508403888419094524

`∩[A141896(n+1), A142092(n+1)]`
-/

namespace A140852.P16508403888419094524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P16508403888419094524

namespace A140852

/-- `∩[A141896(n+1), A142092(n+1)]` -/
def P16508403888419094524.Spec : Prop :=
  ∀ n, (P16508403888419094524.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P5602244840964379571

`∩[A132236(n+1), A140687(n+1)]`
-/

namespace A140852.P5602244840964379571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P5602244840964379571

namespace A140852

/-- `∩[A132236(n+1), A140687(n+1)]` -/
def P5602244840964379571.Spec : Prop :=
  ∀ n, (P5602244840964379571.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P1888335819956701388

`∩[A132236(n+1), A141896(n+1)]`
-/

namespace A140852.P1888335819956701388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P1888335819956701388

namespace A140852

/-- `∩[A132236(n+1), A141896(n+1)]` -/
def P1888335819956701388.Spec : Prop :=
  ∀ n, (P1888335819956701388.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P3243566720480825046

`∩[A132236(n+1), A142092(n+1)]`
-/

namespace A140852.P3243566720480825046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P3243566720480825046

namespace A140852

/-- `∩[A132236(n+1), A142092(n+1)]` -/
def P3243566720480825046.Spec : Prop :=
  ∀ n, (P3243566720480825046.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P10241477475867006538

`p?[7*15*n+59]`
-/

namespace A140852.P10241477475867006538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 59

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140852.P10241477475867006538

namespace A140852

/-- `p?[7*15*n+59]` -/
def P10241477475867006538.Spec : Prop :=
  ∀ n, (P10241477475867006538.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P6680228183927599855

`record[∑{p}[7*15*n+59, #]]`
-/

namespace A140852.P6680228183927599855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 59

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140852.P6680228183927599855

namespace A140852

/-- `record[∑{p}[7*15*n+59, #]]` -/
def P6680228183927599855.Spec : Prop :=
  ∀ n, (P6680228183927599855.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P7397911247736691362

`∩[A045425(n+1), A132236(n+1)]`
-/

namespace A140852.P7397911247736691362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P7397911247736691362

namespace A140852

/-- `∩[A045425(n+1), A132236(n+1)]` -/
def P7397911247736691362.Spec : Prop :=
  ∀ n, (P7397911247736691362.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P18123050548188572445

`∩[A045437(n+1), A132236(n+1)]`
-/

namespace A140852.P18123050548188572445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P18123050548188572445

namespace A140852

/-- `∩[A045437(n+1), A132236(n+1)]` -/
def P18123050548188572445.Spec : Prop :=
  ∀ n, (P18123050548188572445.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P9864207184129852873

`∩[A045425(n+1), A140687(n+1)]`
-/

namespace A140852.P9864207184129852873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P9864207184129852873

namespace A140852

/-- `∩[A045425(n+1), A140687(n+1)]` -/
def P9864207184129852873.Spec : Prop :=
  ∀ n, (P9864207184129852873.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P14441012711715298914

`∩[A045437(n+1), A140687(n+1)]`
-/

namespace A140852.P14441012711715298914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P14441012711715298914

namespace A140852

/-- `∩[A045437(n+1), A140687(n+1)]` -/
def P14441012711715298914.Spec : Prop :=
  ∀ n, (P14441012711715298914.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P5555787032217261158

`∩[A030433(n+1), A140687(n+1)]`
-/

namespace A140852.P5555787032217261158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P5555787032217261158

namespace A140852

/-- `∩[A030433(n+1), A140687(n+1)]` -/
def P5555787032217261158.Spec : Prop :=
  ∀ n, (P5555787032217261158.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P12244330787025895289

`∩[A030433(n+1), A141896(n+1)]`
-/

namespace A140852.P12244330787025895289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P12244330787025895289

namespace A140852

/-- `∩[A030433(n+1), A141896(n+1)]` -/
def P12244330787025895289.Spec : Prop :=
  ∀ n, (P12244330787025895289.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P639041765315116292

`∩[A045457(n+1), A140687(n+1)]`
-/

namespace A140852.P639041765315116292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P639041765315116292

namespace A140852

/-- `∩[A045457(n+1), A140687(n+1)]` -/
def P639041765315116292.Spec : Prop :=
  ∀ n, (P639041765315116292.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P7272468731436067863

`∩[A045457(n+1), A141896(n+1)]`
-/

namespace A140852.P7272468731436067863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P7272468731436067863

namespace A140852

/-- `∩[A045457(n+1), A141896(n+1)]` -/
def P7272468731436067863.Spec : Prop :=
  ∀ n, (P7272468731436067863.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P15003085505392978317

`∩[A132240(n+1), A141896(n+1)]`
-/

namespace A140852.P15003085505392978317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P15003085505392978317

namespace A140852

/-- `∩[A132240(n+1), A141896(n+1)]` -/
def P15003085505392978317.Spec : Prop :=
  ∀ n, (P15003085505392978317.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P5540095500856844742

`∩[A132240(n+1), A142092(n+1)]`
-/

namespace A140852.P5540095500856844742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P5540095500856844742

namespace A140852

/-- `∩[A132240(n+1), A142092(n+1)]` -/
def P5540095500856844742.Spec : Prop :=
  ∀ n, (P5540095500856844742.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P11482686264029701151

`∩[A140687(n+1), A141160(n+1)]`
-/

namespace A140852.P11482686264029701151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P11482686264029701151

namespace A140852

/-- `∩[A140687(n+1), A141160(n+1)]` -/
def P11482686264029701151.Spec : Prop :=
  ∀ n, (P11482686264029701151.a n : ℤ) = A140852 (n + 1)

end A140852

/-! ## A140852.P1758421795843066176

`∩[A140687(n+1), A141785(n+1)]`
-/

namespace A140852.P1758421795843066176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P1758421795843066176

namespace A140852

/-- `∩[A140687(n+1), A141785(n+1)]` -/
def P1758421795843066176.Spec : Prop :=
  ∀ n, (P1758421795843066176.a n : ℤ) = A140852 (n + 1)

end A140852

/-!
# A140853: a(n) = prime(prime(n) - 1) - 1, where prime(n) is the n-th prime.

The programs for A140853, the canonical program `A140853.P323441421693498327` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140853 has offset 1).

The definition of A140853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140853.P323441421693498327

`A055003(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140853

/-- `A055003(n+1)-1` -/
def P323441421693498327.Spec : Prop :=
  ∀ n, P323441421693498327.a n = A140853 (n + 1)

theorem P323441421693498327.correct : P323441421693498327.Spec := by
  intro n
  simp only [A140853, Nat.add_sub_cancel]

end A140853

/-! ## A140853.P16742908093701966271

`A275990(n+1)+A006093(n+1)`
-/

namespace A140853.P16742908093701966271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275990 (n + 1) + A006093 (n + 1)

end

end A140853.P16742908093701966271

namespace A140853

/-- `A275990(n+1)+A006093(n+1)` -/
def P16742908093701966271.Spec : Prop :=
  ∀ n, P16742908093701966271.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P5328356785272044321

`A118830(A193583(n+2))+A055003(n+1)`
-/

namespace A140853.P5328356785272044321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A193583 (n + 2)).toNat + A055003 (n + 1)

end

end A140853.P5328356785272044321

namespace A140853

/-- `A118830(A193583(n+2))+A055003(n+1)` -/
def P5328356785272044321.Spec : Prop :=
  ∀ n, P5328356785272044321.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P7340133707438012948

`A175248(n+2)-1`
-/

namespace A140853.P7340133707438012948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 2) - 1

end

end A140853.P7340133707438012948

namespace A140853

/-- `A175248(n+2)-1` -/
def P7340133707438012948.Spec : Prop :=
  ∀ n, P7340133707438012948.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P13899897877799193927

`A275990(n+1)+record[A000010(n+1)]`
-/

namespace A140853.P13899897877799193927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275990 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140853.P13899897877799193927

namespace A140853

/-- `A275990(n+1)+record[A000010(n+1)]` -/
def P13899897877799193927.Spec : Prop :=
  ∀ n, P13899897877799193927.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P17639611820179160479

`A275990(n+1)+record[A285702(n+1)]`
-/

namespace A140853.P17639611820179160479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275990 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140853.P17639611820179160479

namespace A140853

/-- `A275990(n+1)+record[A285702(n+1)]` -/
def P17639611820179160479.Spec : Prop :=
  ∀ n, P17639611820179160479.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P16717353986702766251

`A156037(A156037(n+1))+char[1]`
-/

namespace A140853.P16717353986702766251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A156037 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A140853.P16717353986702766251

namespace A140853

/-- `A156037(A156037(n+1))+char[1]` -/
def P16717353986702766251.Spec : Prop :=
  ∀ n, P16717353986702766251.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P6180603555497928067

`record[A048848(n+1)-1]`
-/

namespace A140853.P6180603555497928067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140853.P6180603555497928067

namespace A140853

/-- `record[A048848(n+1)-1]` -/
def P6180603555497928067.Spec : Prop :=
  ∀ n, P6180603555497928067.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P10057004926138070276

`p?[A290641(n+1)]-1`
-/

namespace A140853.P10057004926138070276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A140853.P10057004926138070276

namespace A140853

/-- `p?[A290641(n+1)]-1` -/
def P10057004926138070276.Spec : Prop :=
  ∀ n, P10057004926138070276.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P6609032880820605505

`p?[record[A143444(n+1)]]-1`
-/

namespace A140853.P6609032880820605505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143444 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A140853.P6609032880820605505

namespace A140853

/-- `p?[record[A143444(n+1)]]-1` -/
def P6609032880820605505.Spec : Prop :=
  ∀ n, P6609032880820605505.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P2216495262765194930

`A006093(A006093(n+1))`
-/

namespace A140853.P2216495262765194930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (n + 1)).toNat

end

end A140853.P2216495262765194930

namespace A140853

/-- `A006093(A006093(n+1))` -/
def P2216495262765194930.Spec : Prop :=
  ∀ n, P2216495262765194930.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P2549658332821539208

`A030013(A000040(n+1))`
-/

namespace A140853.P2549658332821539208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A000040 (n + 1)).toNat

end

end A140853.P2549658332821539208

namespace A140853

/-- `A030013(A000040(n+1))` -/
def P2549658332821539208.Spec : Prop :=
  ∀ n, P2549658332821539208.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P2881169344971324870

`A030013(A006005(n+1))`
-/

namespace A140853.P2881169344971324870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A006005 (n + 1)).toNat

end

end A140853.P2881169344971324870

namespace A140853

/-- `A030013(A006005(n+1))` -/
def P2881169344971324870.Spec : Prop :=
  ∀ n, P2881169344971324870.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P2011891563203482513

`A030013(A008578(n+2))`
-/

namespace A140853.P2011891563203482513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A008578 (n + 2)).toNat

end

end A140853.P2011891563203482513

namespace A140853

/-- `A030013(A008578(n+2))` -/
def P2011891563203482513.Spec : Prop :=
  ∀ n, P2011891563203482513.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P199811928020356800

`A030013(A075643(n+2))`
-/

namespace A140853.P199811928020356800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A075643 (n + 2)).toNat

end

end A140853.P199811928020356800

namespace A140853

/-- `A030013(A075643(n+2))` -/
def P199811928020356800.Spec : Prop :=
  ∀ n, P199811928020356800.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P11644234888168521770

`A030013(A182986(n+2))`
-/

namespace A140853.P11644234888168521770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A182986 (n + 2)).toNat

end

end A140853.P11644234888168521770

namespace A140853

/-- `A030013(A182986(n+2))` -/
def P11644234888168521770.Spec : Prop :=
  ∀ n, P11644234888168521770.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P4604160635082287113

`A006093(Δ[A007504(n)]-1)`
-/

namespace A140853.P4604160635082287113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (n + 1) - f1 n - 1).toNat

end

end A140853.P4604160635082287113

namespace A140853

/-- `A006093(Δ[A007504(n)]-1)` -/
def P4604160635082287113.Spec : Prop :=
  ∀ n, P4604160635082287113.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P18117173624620989049

`A008578(Δ[A007504(n)])-1`
-/

namespace A140853.P18117173624620989049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (n + 1) - f1 n).toNat - 1

end

end A140853.P18117173624620989049

namespace A140853

/-- `A008578(Δ[A007504(n)])-1` -/
def P18117173624620989049.Spec : Prop :=
  ∀ n, P18117173624620989049.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P8069169832126837128

`A182986(Δ[A007504(n)])-1`
-/

namespace A140853.P8069169832126837128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (n + 1) - f1 n).toNat - 1

end

end A140853.P8069169832126837128

namespace A140853

/-- `A182986(Δ[A007504(n)])-1` -/
def P8069169832126837128.Spec : Prop :=
  ∀ n, P8069169832126837128.a n = A140853 (n + 1)

end A140853

/-! ## A140853.P10200118679819352147

`A000040(record[A037225(n)])-1`
-/

namespace A140853.P10200118679819352147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A140853.P10200118679819352147

namespace A140853

/-- `A000040(record[A037225(n)])-1` -/
def P10200118679819352147.Spec : Prop :=
  ∀ n, P10200118679819352147.a n = A140853 (n + 1)

end A140853

/-!
# A140854: Primes of the form 210k + 61.

The programs for A140854, the canonical program `A140854.P16545780512389553731` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140854 has offset 1).

The definition of A140854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140854.P16545780512389553731

`∩[A140726(n+1), A142093(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140854

/-- `∩[A140726(n+1), A142093(n+1)]` -/
def P16545780512389553731.Spec : Prop :=
  ∀ n, (P16545780512389553731.a n : ℤ) = A140854 (n + 1)

theorem P16545780512389553731.correct : P16545780512389553731.Spec := by
  intro n
  simp only [A140854, Nat.add_sub_cancel]

end A140854

/-! ## A140854.P4313767390635351852

`∩[A140726(n+1), A141897(n+1)]`
-/

namespace A140854.P4313767390635351852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P4313767390635351852

namespace A140854

/-- `∩[A140726(n+1), A141897(n+1)]` -/
def P4313767390635351852.Spec : Prop :=
  ∀ n, (P4313767390635351852.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P7995398361658776590

`∩[A141897(n+1), A142093(n+1)]`
-/

namespace A140854.P7995398361658776590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P7995398361658776590

namespace A140854

/-- `∩[A141897(n+1), A142093(n+1)]` -/
def P7995398361658776590.Spec : Prop :=
  ∀ n, (P7995398361658776590.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P13601039419574446961

`∩[A132230(n+1), A140726(n+1)]`
-/

namespace A140854.P13601039419574446961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P13601039419574446961

namespace A140854

/-- `∩[A132230(n+1), A140726(n+1)]` -/
def P13601039419574446961.Spec : Prop :=
  ∀ n, (P13601039419574446961.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P802591452250321131

`∩[A132230(n+1), A141897(n+1)]`
-/

namespace A140854.P802591452250321131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P802591452250321131

namespace A140854

/-- `∩[A132230(n+1), A141897(n+1)]` -/
def P802591452250321131.Spec : Prop :=
  ∀ n, (P802591452250321131.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P9795332582531547560

`∩[A132230(n+1), A142093(n+1)]`
-/

namespace A140854.P9795332582531547560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P9795332582531547560

namespace A140854

/-- `∩[A132230(n+1), A142093(n+1)]` -/
def P9795332582531547560.Spec : Prop :=
  ∀ n, (P9795332582531547560.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P15230431093558034990

`p?[7*15*n-44]`
-/

namespace A140854.P15230431093558034990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (15 * n) : ℤ) - 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140854.P15230431093558034990

namespace A140854

/-- `p?[7*15*n-44]` -/
def P15230431093558034990.Spec : Prop :=
  ∀ n, P15230431093558034990.a n = A140854 (n + 1)

end A140854

/-! ## A140854.P13590909628775289559

`∩[A045458(n+1), A132230(n+1)]`
-/

namespace A140854.P13590909628775289559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P13590909628775289559

namespace A140854

/-- `∩[A045458(n+1), A132230(n+1)]` -/
def P13590909628775289559.Spec : Prop :=
  ∀ n, (P13590909628775289559.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P9793040910007825362

`∩[A045458(n+1), A140726(n+1)]`
-/

namespace A140854.P9793040910007825362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P9793040910007825362

namespace A140854

/-- `∩[A045458(n+1), A140726(n+1)]` -/
def P9793040910007825362.Spec : Prop :=
  ∀ n, (P9793040910007825362.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P2696525729633263439

`∩[A045447(n+1), A132230(n+1)]`
-/

namespace A140854.P2696525729633263439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P2696525729633263439

namespace A140854

/-- `∩[A045447(n+1), A132230(n+1)]` -/
def P2696525729633263439.Spec : Prop :=
  ∀ n, (P2696525729633263439.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P4813172778740427090

`∩[A045447(n+1), A140726(n+1)]`
-/

namespace A140854.P4813172778740427090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P4813172778740427090

namespace A140854

/-- `∩[A045447(n+1), A140726(n+1)]` -/
def P4813172778740427090.Spec : Prop :=
  ∀ n, (P4813172778740427090.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P2334213020429535641

`∩[A089721(n+1), A140726(n+1)]`
-/

namespace A140854.P2334213020429535641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P2334213020429535641

namespace A140854

/-- `∩[A089721(n+1), A140726(n+1)]` -/
def P2334213020429535641.Spec : Prop :=
  ∀ n, (P2334213020429535641.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P10987531360510827574

`∩[A089721(n+1), A141897(n+1)]`
-/

namespace A140854.P10987531360510827574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P10987531360510827574

namespace A140854

/-- `∩[A089721(n+1), A141897(n+1)]` -/
def P10987531360510827574.Spec : Prop :=
  ∀ n, (P10987531360510827574.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P5734502368193764034

`∩[A140726(n+1), A179446(n+1)]`
-/

namespace A140854.P5734502368193764034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P5734502368193764034

namespace A140854

/-- `∩[A140726(n+1), A179446(n+1)]` -/
def P5734502368193764034.Spec : Prop :=
  ∀ n, (P5734502368193764034.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P4266906586184767681

`∩[A141897(n+1), A179446(n+1)]`
-/

namespace A140854.P4266906586184767681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P4266906586184767681

namespace A140854

/-- `∩[A141897(n+1), A179446(n+1)]` -/
def P4266906586184767681.Spec : Prop :=
  ∀ n, (P4266906586184767681.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P2000945751559835964

`∩[A033212(n+1), A140726(n+1)]`
-/

namespace A140854.P2000945751559835964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P2000945751559835964

namespace A140854

/-- `∩[A033212(n+1), A140726(n+1)]` -/
def P2000945751559835964.Spec : Prop :=
  ∀ n, (P2000945751559835964.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P4022616271682154087

`∩[A033212(n+1), A142093(n+1)]`
-/

namespace A140854.P4022616271682154087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P4022616271682154087

namespace A140854

/-- `∩[A033212(n+1), A142093(n+1)]` -/
def P4022616271682154087.Spec : Prop :=
  ∀ n, (P4022616271682154087.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P15285314052934794080

`∩[A030430(n+1), A140726(n+1)]`
-/

namespace A140854.P15285314052934794080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P15285314052934794080

namespace A140854

/-- `∩[A030430(n+1), A140726(n+1)]` -/
def P15285314052934794080.Spec : Prop :=
  ∀ n, (P15285314052934794080.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P10209001901731357083

`∩[A030430(n+1), A141897(n+1)]`
-/

namespace A140854.P10209001901731357083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P10209001901731357083

namespace A140854

/-- `∩[A030430(n+1), A141897(n+1)]` -/
def P10209001901731357083.Spec : Prop :=
  ∀ n, (P10209001901731357083.a n : ℤ) = A140854 (n + 1)

end A140854

/-! ## A140854.P1134997556008400653

`∩[A045453(n+1), A140726(n+1)]`
-/

namespace A140854.P1134997556008400653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P1134997556008400653

namespace A140854

/-- `∩[A045453(n+1), A140726(n+1)]` -/
def P1134997556008400653.Spec : Prop :=
  ∀ n, (P1134997556008400653.a n : ℤ) = A140854 (n + 1)

end A140854

/-!
# A140855: Primes of the form 210k + 67.

The programs for A140855, the canonical program `A140855.P12155307500454723385` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140855 has offset 1).

The definition of A140855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140855.P12155307500454723385

`∩[A140731(n+1), A142097(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140855

/-- `∩[A140731(n+1), A142097(n+1)]` -/
def P12155307500454723385.Spec : Prop :=
  ∀ n, (P12155307500454723385.a n : ℤ) = A140855 (n + 1)

theorem P12155307500454723385.correct : P12155307500454723385.Spec := by
  intro n
  simp only [A140855, Nat.add_sub_cancel]

end A140855

/-! ## A140855.P8296427865438889096

`∩[A140731(n+1), A141889(n+1)]`
-/

namespace A140855.P8296427865438889096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P8296427865438889096

namespace A140855

/-- `∩[A140731(n+1), A141889(n+1)]` -/
def P8296427865438889096.Spec : Prop :=
  ∀ n, (P8296427865438889096.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P11620932032273245811

`∩[A141889(n+1), A142097(n+1)]`
-/

namespace A140855.P11620932032273245811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P11620932032273245811

namespace A140855

/-- `∩[A141889(n+1), A142097(n+1)]` -/
def P11620932032273245811.Spec : Prop :=
  ∀ n, (P11620932032273245811.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P2055802265702437871

`∩[A132231(n+1), A140731(n+1)]`
-/

namespace A140855.P2055802265702437871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P2055802265702437871

namespace A140855

/-- `∩[A132231(n+1), A140731(n+1)]` -/
def P2055802265702437871.Spec : Prop :=
  ∀ n, (P2055802265702437871.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P7062547823776593849

`∩[A132231(n+1), A141889(n+1)]`
-/

namespace A140855.P7062547823776593849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P7062547823776593849

namespace A140855

/-- `∩[A132231(n+1), A141889(n+1)]` -/
def P7062547823776593849.Spec : Prop :=
  ∀ n, (P7062547823776593849.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P13514026541437873072

`∩[A132231(n+1), A142097(n+1)]`
-/

namespace A140855.P13514026541437873072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P13514026541437873072

namespace A140855

/-- `∩[A132231(n+1), A142097(n+1)]` -/
def P13514026541437873072.Spec : Prop :=
  ∀ n, (P13514026541437873072.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P4372563414126093356

`p?[7*15*n-38]`
-/

namespace A140855.P4372563414126093356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (15 * n) : ℤ) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140855.P4372563414126093356

namespace A140855

/-- `p?[7*15*n-38]` -/
def P4372563414126093356.Spec : Prop :=
  ∀ n, P4372563414126093356.a n = A140855 (n + 1)

end A140855

/-! ## A140855.P9376522793551011842

`∩[A045471(n+1), A132231(n+1)]`
-/

namespace A140855.P9376522793551011842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P9376522793551011842

namespace A140855

/-- `∩[A045471(n+1), A132231(n+1)]` -/
def P9376522793551011842.Spec : Prop :=
  ∀ n, (P9376522793551011842.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P3244114512554772289

`∩[A045462(n+1), A140731(n+1)]`
-/

namespace A140855.P3244114512554772289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P3244114512554772289

namespace A140855

/-- `∩[A045462(n+1), A140731(n+1)]` -/
def P3244114512554772289.Spec : Prop :=
  ∀ n, (P3244114512554772289.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P5677576420081424204

`∩[A045471(n+1), A140731(n+1)]`
-/

namespace A140855.P5677576420081424204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P5677576420081424204

namespace A140855

/-- `∩[A045471(n+1), A140731(n+1)]` -/
def P5677576420081424204.Spec : Prop :=
  ∀ n, (P5677576420081424204.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P588661451912192573

`∩[A004622(n+1), A132231(n+1)]`
-/

namespace A140855.P588661451912192573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P588661451912192573

namespace A140855

/-- `∩[A004622(n+1), A132231(n+1)]` -/
def P588661451912192573.Spec : Prop :=
  ∀ n, (P588661451912192573.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P11533938194172384222

`∩[A004622(n+1), A140731(n+1)]`
-/

namespace A140855.P11533938194172384222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P11533938194172384222

namespace A140855

/-- `∩[A004622(n+1), A140731(n+1)]` -/
def P11533938194172384222.Spec : Prop :=
  ∀ n, (P11533938194172384222.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P501508983269180473

`∩[A067826(n+1), A140731(n+1)]`
-/

namespace A140855.P501508983269180473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P501508983269180473

namespace A140855

/-- `∩[A067826(n+1), A140731(n+1)]` -/
def P501508983269180473.Spec : Prop :=
  ∀ n, (P501508983269180473.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P132185564531536399

`∩[A139492(n+1), A140731(n+1)]`
-/

namespace A140855.P132185564531536399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P132185564531536399

namespace A140855

/-- `∩[A139492(n+1), A140731(n+1)]` -/
def P132185564531536399.Spec : Prop :=
  ∀ n, (P132185564531536399.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P18362912474798904845

`∩[A139492(n+1), A142097(n+1)]`
-/

namespace A140855.P18362912474798904845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P18362912474798904845

namespace A140855

/-- `∩[A139492(n+1), A142097(n+1)]` -/
def P18362912474798904845.Spec : Prop :=
  ∀ n, (P18362912474798904845.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P5575022663445153164

`∩[A132237(n+1), A141889(n+1)]`
-/

namespace A140855.P5575022663445153164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P5575022663445153164

namespace A140855

/-- `∩[A132237(n+1), A141889(n+1)]` -/
def P5575022663445153164.Spec : Prop :=
  ∀ n, (P5575022663445153164.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P7351735600052657742

`∩[A132237(n+1), A142097(n+1)]`
-/

namespace A140855.P7351735600052657742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P7351735600052657742

namespace A140855

/-- `∩[A132237(n+1), A142097(n+1)]` -/
def P7351735600052657742.Spec : Prop :=
  ∀ n, (P7351735600052657742.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P11024866471792896417

`∩[A030432(n+1), A140731(n+1)]`
-/

namespace A140855.P11024866471792896417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P11024866471792896417

namespace A140855

/-- `∩[A030432(n+1), A140731(n+1)]` -/
def P11024866471792896417.Spec : Prop :=
  ∀ n, (P11024866471792896417.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P12113791668105842901

`∩[A030432(n+1), A141889(n+1)]`
-/

namespace A140855.P12113791668105842901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P12113791668105842901

namespace A140855

/-- `∩[A030432(n+1), A141889(n+1)]` -/
def P12113791668105842901.Spec : Prop :=
  ∀ n, (P12113791668105842901.a n : ℤ) = A140855 (n + 1)

end A140855

/-! ## A140855.P6359816130773498500

`∩[A045357(n+1), A140731(n+1)]`
-/

namespace A140855.P6359816130773498500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P6359816130773498500

namespace A140855

/-- `∩[A045357(n+1), A140731(n+1)]` -/
def P6359816130773498500.Spec : Prop :=
  ∀ n, (P6359816130773498500.a n : ℤ) = A140855 (n + 1)

end A140855

/-!
# A140856: Primes of the form 210n+71.

The programs for A140856, the canonical program `A140856.P9183042723212956771` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140856 has offset 1).

The definition of A140856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140856.P2597278562118827893

`∩[A140732(n+1), A142076(n+1)]`
-/

namespace A140856.P2597278562118827893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P2597278562118827893

namespace A140856

/-- `∩[A140732(n+1), A142076(n+1)]` -/
def P2597278562118827893.Spec : Prop :=
  ∀ n, (P2597278562118827893.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P9183042723212956771

`∩[A089720(n+1), A140732(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140856

/-- `∩[A089720(n+1), A140732(n+1)]` -/
def P9183042723212956771.Spec : Prop :=
  ∀ n, (P9183042723212956771.a n : ℤ) = A140856 (n + 1)

theorem P9183042723212956771.correct : P9183042723212956771.Spec := by
  intro n
  simp only [A140856, Nat.add_sub_cancel]

end A140856

/-! ## A140856.P12288887062334638851

`∩[A089720(n+1), A141891(n+1)]`
-/

namespace A140856.P12288887062334638851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P12288887062334638851

namespace A140856

/-- `∩[A089720(n+1), A141891(n+1)]` -/
def P12288887062334638851.Spec : Prop :=
  ∀ n, (P12288887062334638851.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P11461987091169069180

`∩[A111092(n+1), A141891(n+1)]`
-/

namespace A140856.P11461987091169069180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P11461987091169069180

namespace A140856

/-- `∩[A111092(n+1), A141891(n+1)]` -/
def P11461987091169069180.Spec : Prop :=
  ∀ n, (P11461987091169069180.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P5636792054568828044

`∩[A140732(n+1), A141891(n+1)]`
-/

namespace A140856.P5636792054568828044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P5636792054568828044

namespace A140856

/-- `∩[A140732(n+1), A141891(n+1)]` -/
def P5636792054568828044.Spec : Prop :=
  ∀ n, (P5636792054568828044.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P3470839048048453828

`∩[A141891(n+1), A142076(n+1)]`
-/

namespace A140856.P3470839048048453828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P3470839048048453828

namespace A140856

/-- `∩[A141891(n+1), A142076(n+1)]` -/
def P3470839048048453828.Spec : Prop :=
  ∀ n, (P3470839048048453828.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P9032094572685467591

`∩[A111092(n+1), A132232(n+1)]`
-/

namespace A140856.P9032094572685467591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P9032094572685467591

namespace A140856

/-- `∩[A111092(n+1), A132232(n+1)]` -/
def P9032094572685467591.Spec : Prop :=
  ∀ n, (P9032094572685467591.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P10004659274443525755

`∩[A132232(n+1), A140732(n+1)]`
-/

namespace A140856.P10004659274443525755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P10004659274443525755

namespace A140856

/-- `∩[A132232(n+1), A140732(n+1)]` -/
def P10004659274443525755.Spec : Prop :=
  ∀ n, (P10004659274443525755.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P8063447516490256011

`∩[A132232(n+1), A141891(n+1)]`
-/

namespace A140856.P8063447516490256011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P8063447516490256011

namespace A140856

/-- `∩[A132232(n+1), A141891(n+1)]` -/
def P8063447516490256011.Spec : Prop :=
  ∀ n, (P8063447516490256011.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P15271683270490983006

`∩[A132232(n+1), A142076(n+1)]`
-/

namespace A140856.P15271683270490983006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P15271683270490983006

namespace A140856

/-- `∩[A132232(n+1), A142076(n+1)]` -/
def P15271683270490983006.Spec : Prop :=
  ∀ n, (P15271683270490983006.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P4083794326077572609

`p?[7*15*n-34]`
-/

namespace A140856.P4083794326077572609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (15 * n) : ℤ) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140856.P4083794326077572609

namespace A140856

/-- `p?[7*15*n-34]` -/
def P4083794326077572609.Spec : Prop :=
  ∀ n, P4083794326077572609.a n = A140856 (n + 1)

end A140856

/-! ## A140856.P8727318493954074271

`∩[A045465(n+1), A132232(n+1)]`
-/

namespace A140856.P8727318493954074271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P8727318493954074271

namespace A140856

/-- `∩[A045465(n+1), A132232(n+1)]` -/
def P8727318493954074271.Spec : Prop :=
  ∀ n, (P8727318493954074271.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P16053575884202846596

`∩[A045465(n+1), A140732(n+1)]`
-/

namespace A140856.P16053575884202846596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P16053575884202846596

namespace A140856

/-- `∩[A045465(n+1), A140732(n+1)]` -/
def P16053575884202846596.Spec : Prop :=
  ∀ n, (P16053575884202846596.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P11031314092762027233

`∩[A132232(n+1), A140444(n+1)]`
-/

namespace A140856.P11031314092762027233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P11031314092762027233

namespace A140856

/-- `∩[A132232(n+1), A140444(n+1)]` -/
def P11031314092762027233.Spec : Prop :=
  ∀ n, (P11031314092762027233.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P11479846381429301869

`∩[A140444(n+1), A140732(n+1)]`
-/

namespace A140856.P11479846381429301869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P11479846381429301869

namespace A140856

/-- `∩[A140444(n+1), A140732(n+1)]` -/
def P11479846381429301869.Spec : Prop :=
  ∀ n, (P11479846381429301869.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P1189188260597869930

`∩[A132232(n+1), A216145(n+1)]`
-/

namespace A140856.P1189188260597869930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P1189188260597869930

namespace A140856

/-- `∩[A132232(n+1), A216145(n+1)]` -/
def P1189188260597869930.Spec : Prop :=
  ∀ n, (P1189188260597869930.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P8222011275432222109

`∩[A140732(n+1), A216145(n+1)]`
-/

namespace A140856.P8222011275432222109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P8222011275432222109

namespace A140856

/-- `∩[A140732(n+1), A216145(n+1)]` -/
def P8222011275432222109.Spec : Prop :=
  ∀ n, (P8222011275432222109.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P5642962772411303479

`∩[A141891(n+1), A216145(n+1)]`
-/

namespace A140856.P5642962772411303479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P5642962772411303479

namespace A140856

/-- `∩[A141891(n+1), A216145(n+1)]` -/
def P5642962772411303479.Spec : Prop :=
  ∀ n, (P5642962772411303479.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P3477295559980721976

`∩[A004619(n+1), A132232(n+1)]`
-/

namespace A140856.P3477295559980721976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P3477295559980721976

namespace A140856

/-- `∩[A004619(n+1), A132232(n+1)]` -/
def P3477295559980721976.Spec : Prop :=
  ∀ n, (P3477295559980721976.a n : ℤ) = A140856 (n + 1)

end A140856

/-! ## A140856.P16947929316771452070

`∩[A004619(n+1), A140732(n+1)]`
-/

namespace A140856.P16947929316771452070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P16947929316771452070

namespace A140856

/-- `∩[A004619(n+1), A140732(n+1)]` -/
def P16947929316771452070.Spec : Prop :=
  ∀ n, (P16947929316771452070.a n : ℤ) = A140856 (n + 1)

end A140856

/-!
# A140857: Primes of the form 210k + 73.

The programs for A140857, the canonical program `A140857.P17096779143594867496` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140857 has offset 1).

The definition of A140857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140857.P17096779143594867496

`∩[A140742(n+1), A142078(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140857

/-- `∩[A140742(n+1), A142078(n+1)]` -/
def P17096779143594867496.Spec : Prop :=
  ∀ n, (P17096779143594867496.a n : ℤ) = A140857 (n + 1)

theorem P17096779143594867496.correct : P17096779143594867496.Spec := by
  intro n
  simp only [A140857, Nat.add_sub_cancel]

end A140857

/-! ## A140857.P11909523880497331163

`∩[A140742(n+1), A141892(n+1)]`
-/

namespace A140857.P11909523880497331163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P11909523880497331163

namespace A140857

/-- `∩[A140742(n+1), A141892(n+1)]` -/
def P11909523880497331163.Spec : Prop :=
  ∀ n, (P11909523880497331163.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P2993469416071493106

`∩[A141892(n+1), A142078(n+1)]`
-/

namespace A140857.P2993469416071493106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P2993469416071493106

namespace A140857

/-- `∩[A141892(n+1), A142078(n+1)]` -/
def P2993469416071493106.Spec : Prop :=
  ∀ n, (P2993469416071493106.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P3288127341639464628

`∩[A132233(n+1), A140742(n+1)]`
-/

namespace A140857.P3288127341639464628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P3288127341639464628

namespace A140857

/-- `∩[A132233(n+1), A140742(n+1)]` -/
def P3288127341639464628.Spec : Prop :=
  ∀ n, (P3288127341639464628.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P15923644284788588754

`∩[A132233(n+1), A141892(n+1)]`
-/

namespace A140857.P15923644284788588754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P15923644284788588754

namespace A140857

/-- `∩[A132233(n+1), A141892(n+1)]` -/
def P15923644284788588754.Spec : Prop :=
  ∀ n, (P15923644284788588754.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P16872563908643452679

`∩[A132233(n+1), A142078(n+1)]`
-/

namespace A140857.P16872563908643452679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P16872563908643452679

namespace A140857

/-- `∩[A132233(n+1), A142078(n+1)]` -/
def P16872563908643452679.Spec : Prop :=
  ∀ n, (P16872563908643452679.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P8943115085043325044

`p?[7*15*n-32]`
-/

namespace A140857.P8943115085043325044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (15 * n) : ℤ) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140857.P8943115085043325044

namespace A140857

/-- `p?[7*15*n-32]` -/
def P8943115085043325044.Spec : Prop :=
  ∀ n, P8943115085043325044.a n = A140857 (n + 1)

end A140857

/-! ## A140857.P13166062607755364105

`∩[A132233(n+1), A216145(n+1)]`
-/

namespace A140857.P13166062607755364105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P13166062607755364105

namespace A140857

/-- `∩[A132233(n+1), A216145(n+1)]` -/
def P13166062607755364105.Spec : Prop :=
  ∀ n, (P13166062607755364105.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P3668740326850069870

`∩[A140742(n+1), A216145(n+1)]`
-/

namespace A140857.P3668740326850069870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P3668740326850069870

namespace A140857

/-- `∩[A140742(n+1), A216145(n+1)]` -/
def P3668740326850069870.Spec : Prop :=
  ∀ n, (P3668740326850069870.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P9809544411654937206

`∩[A141892(n+1), A216145(n+1)]`
-/

namespace A140857.P9809544411654937206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P9809544411654937206

namespace A140857

/-- `∩[A141892(n+1), A216145(n+1)]` -/
def P9809544411654937206.Spec : Prop :=
  ∀ n, (P9809544411654937206.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P14070069142759072658

`∩[A045425(n+1), A132233(n+1)]`
-/

namespace A140857.P14070069142759072658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P14070069142759072658

namespace A140857

/-- `∩[A045425(n+1), A132233(n+1)]` -/
def P14070069142759072658.Spec : Prop :=
  ∀ n, (P14070069142759072658.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P4670398603958973724

`∩[A045437(n+1), A132233(n+1)]`
-/

namespace A140857.P4670398603958973724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P4670398603958973724

namespace A140857

/-- `∩[A045437(n+1), A132233(n+1)]` -/
def P4670398603958973724.Spec : Prop :=
  ∀ n, (P4670398603958973724.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P11772807370390550094

`∩[A045425(n+1), A140742(n+1)]`
-/

namespace A140857.P11772807370390550094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P11772807370390550094

namespace A140857

/-- `∩[A045425(n+1), A140742(n+1)]` -/
def P11772807370390550094.Spec : Prop :=
  ∀ n, (P11772807370390550094.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P2408288804279613147

`∩[A045437(n+1), A140742(n+1)]`
-/

namespace A140857.P2408288804279613147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P2408288804279613147

namespace A140857

/-- `∩[A045437(n+1), A140742(n+1)]` -/
def P2408288804279613147.Spec : Prop :=
  ∀ n, (P2408288804279613147.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P7453603370993041402

`∩[A067826(n+1), A142078(n+1)]`
-/

namespace A140857.P7453603370993041402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P7453603370993041402

namespace A140857

/-- `∩[A067826(n+1), A142078(n+1)]` -/
def P7453603370993041402.Spec : Prop :=
  ∀ n, (P7453603370993041402.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P12343089060263796941

`∩[A030431(n+1), A140742(n+1)]`
-/

namespace A140857.P12343089060263796941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P12343089060263796941

namespace A140857

/-- `∩[A030431(n+1), A140742(n+1)]` -/
def P12343089060263796941.Spec : Prop :=
  ∀ n, (P12343089060263796941.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P11623545959662908449

`∩[A030431(n+1), A141892(n+1)]`
-/

namespace A140857.P11623545959662908449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P11623545959662908449

namespace A140857

/-- `∩[A030431(n+1), A141892(n+1)]` -/
def P11623545959662908449.Spec : Prop :=
  ∀ n, (P11623545959662908449.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P2915214989472574066

`∩[A045414(n+1), A140742(n+1)]`
-/

namespace A140857.P2915214989472574066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P2915214989472574066

namespace A140857

/-- `∩[A045414(n+1), A140742(n+1)]` -/
def P2915214989472574066.Spec : Prop :=
  ∀ n, (P2915214989472574066.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P7307780239025341510

`∩[A045414(n+1), A141892(n+1)]`
-/

namespace A140857.P7307780239025341510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P7307780239025341510

namespace A140857

/-- `∩[A045414(n+1), A141892(n+1)]` -/
def P7307780239025341510.Spec : Prop :=
  ∀ n, (P7307780239025341510.a n : ℤ) = A140857 (n + 1)

end A140857

/-! ## A140857.P6833951543672683950

`∩[A106878(n+1), A140742(n+1)]`
-/

namespace A140857.P6833951543672683950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P6833951543672683950

namespace A140857

/-- `∩[A106878(n+1), A140742(n+1)]` -/
def P6833951543672683950.Spec : Prop :=
  ∀ n, (P6833951543672683950.a n : ℤ) = A140857 (n + 1)

end A140857

/-!
# A140863: Odd numbers k such that sigma(m) = 2m+k has a solution in m, where sigma is the sum-of-divisors function A000203.

The programs for A140863, there is no canonical definition to state claims against.
-/

/-! ## A140863.P2413204047198438353

`lt[acot(A082731(n)), A000035(n)]`
-/

namespace A140863.P2413204047198438353
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A082731 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A140863.P2413204047198438353

/-! ## A140863.P14648719870594788880

`A054024(A380866(n+1))`
-/

namespace A140863.P14648719870594788880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A380866 (n + 1)).toNat

end

end A140863.P14648719870594788880

/-! ## A140863.P9699644117146822340

`eq[A003982(A082731(n)), A035363(n)]`
-/

namespace A140863.P9699644117146822340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A082731 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140863.P9699644117146822340

/-! ## A140863.P13522390097041047751

`eq[A036987(A082731(n)), A059841(n)]`
-/

namespace A140863.P13522390097041047751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A082731 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140863.P13522390097041047751

/-!
# A140864: Smallest odd number with same number of divisors as 3*a(n-1).

The programs for A140864, there is no canonical definition to state claims against.
-/

/-! ## A140864.P10722503070634525908

`A053624(lt[A343097(2*(n+2)), A183992(3*n+1)])`
-/

namespace A140864.P10722503070634525908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183992 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053624 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140864.P10722503070634525908

/-! ## A140864.P14488318954760587700

`A119239(∑[A339780(n)!])`
-/

namespace A140864.P14488318954760587700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A339780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119239 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140864.P14488318954760587700

/-! ## A140864.P7639923960345295555

`record[A000265(A307763(n+1)/2)]`
-/

namespace A140864.P7639923960345295555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A307763 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140864.P7639923960345295555

/-! ## A140864.P1223590441556573041

`A119239(comp[A143225(2*(n+2))-A003001(n)])`
-/

namespace A140864.P1223590441556573041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143225 (2 * (n + 2)) - A003001 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119239 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A140864.P1223590441556573041

/-! ## A140864.P2677953920361270172

`record[A137564(A053624(n+1))]`
-/

namespace A140864.P2677953920361270172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A053624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140864.P2677953920361270172

/-!
# A140865: Square array read by upward antidiagonals. Modified Redheffer matrix for which the first 6 values of A008683 are given as determinants of T(n,k).

The programs for A140865, there is no canonical definition to state claims against.
-/

/-! ## A140865.P12611119965404181819

`A057944(A130191(n)+1)%3`
-/

namespace A140865.P12611119965404181819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057944 (A130191 n + 1).toNat) 3

end

end A140865.P12611119965404181819

/-! ## A140865.P7552603517051208795

`A010054(and(A291063(n+2), A330964(n)))`
-/

namespace A140865.P7552603517051208795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.land (A291063 (n + 2)) (A330964 n)).toNat

end

end A140865.P7552603517051208795

/-! ## A140865.P15261820798324502138

`A266502(A062503(n+1)*A132896(n))`
-/

namespace A140865.P15261820798324502138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A062503 (n + 1) * A132896 n).toNat

end

end A140865.P15261820798324502138

/-! ## A140865.P16350499292445900964

`A266502(lcm(A062503(n+1), A132896(n)))`
-/

namespace A140865.P16350499292445900964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (Int.lcm (A062503 (n + 1)) (A132896 n))

end

end A140865.P16350499292445900964

/-! ## A140865.P8382556685228790470

`A051731(lcm(A000005(n+1), A153479(n)))`
-/

namespace A140865.P8382556685228790470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (Int.lcm (A000005 (n + 1)) (A153479 n))

end

end A140865.P8382556685228790470

/-!
# A140866: Number of Niven numbers <= 10^n.

The programs for A140866, there is no canonical definition to state claims against.
-/

/-! ## A140866.P487719382937386531

`∑[A066008(n+1)]+1`
-/

namespace A140866.P487719382937386531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140866.P487719382937386531

/-!
# A140868: a(n) = floor(floor(n*alpha)*alpha) where alpha = 1+sqrt(2) = A014176.

The programs for A140868, the canonical program `A140868.P4707630110033227937` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140868 has offset 1).

The definition of A140868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140868.P9878754818920817006

`2*comp[floor(n*sqrt(2))-1]-n`
-/

namespace A140868.P9878754818920817006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A140868.P9878754818920817006

namespace A140868

/-- `2*comp[floor(n*sqrt(2))-1]-n` -/
def P9878754818920817006.Spec : Prop :=
  ∀ n, P9878754818920817006.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P4707630110033227937

`abs(1-A098021(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140868

/-- `abs(1-A098021(n+1))` -/
def P4707630110033227937.Spec : Prop :=
  ∀ n, P4707630110033227937.a n = A140868 (n + 1)

theorem P4707630110033227937.correct : P4707630110033227937.Spec := by
  intro n
  simp only [A140868, Nat.add_sub_cancel]

end A140868

/-! ## A140868.P6946455439995740385

`abs(2*(A001952(n+1)-1)-n)`
-/

namespace A140868.P6946455439995740385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A001952 (n + 1) - 1) - (n : ℤ)|

end

end A140868.P6946455439995740385

namespace A140868

/-- `abs(2*(A001952(n+1)-1)-n)` -/
def P6946455439995740385.Spec : Prop :=
  ∀ n, P6946455439995740385.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P674016054788072279

`A000027(2*comp[floor(n/sqrt(2))+n]+n)`
-/

namespace A140868.P674016054788072279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n)

end

end A140868.P674016054788072279

namespace A140868

/-- `A000027(2*comp[floor(n/sqrt(2))+n]+n)` -/
def P674016054788072279.Spec : Prop :=
  ∀ n, P674016054788072279.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P8975032574021524016

`A341239(A081477(n+1))`
-/

namespace A140868.P8975032574021524016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341239 (A081477 (n + 1)).toNat

end

end A140868.P8975032574021524016

namespace A140868

/-- `A341239(A081477(n+1))` -/
def P8975032574021524016.Spec : Prop :=
  ∀ n, P8975032574021524016.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P9614281860283447044

`A341239(A049473(n+1)+n+1)`
-/

namespace A140868.P9614281860283447044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341239 (A049473 (n + 1) + (n + 1 : ℤ)).toNat

end

end A140868.P9614281860283447044

namespace A140868

/-- `A341239(A049473(n+1)+n+1)` -/
def P9614281860283447044.Spec : Prop :=
  ∀ n, P9614281860283447044.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P7032624597065670371

`A003151(A003151(n+1))`
-/

namespace A140868.P7032624597065670371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003151 (n + 1)).toNat

end

end A140868.P7032624597065670371

namespace A140868

/-- `A003151(A003151(n+1))` -/
def P7032624597065670371.Spec : Prop :=
  ∀ n, P7032624597065670371.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P6300328822060594574

`A081841(A080754(n+1))`
-/

namespace A140868.P6300328822060594574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081841 (A080754 (n + 1)).toNat

end

end A140868.P6300328822060594574

namespace A140868

/-- `A081841(A080754(n+1))` -/
def P6300328822060594574.Spec : Prop :=
  ∀ n, P6300328822060594574.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P14666773449254387275

`A003151(∑[A097509(n)]-1)`
-/

namespace A140868.P14666773449254387275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A140868.P14666773449254387275

namespace A140868

/-- `A003151(∑[A097509(n)]-1)` -/
def P14666773449254387275.Spec : Prop :=
  ∀ n, P14666773449254387275.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P11274030296881296054

`A285078(∑[A097509(n)]-1)`
-/

namespace A140868.P11274030296881296054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A140868.P11274030296881296054

namespace A140868

/-- `A285078(∑[A097509(n)]-1)` -/
def P11274030296881296054.Spec : Prop :=
  ∀ n, P11274030296881296054.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P10263560361778460007

`A186222(A286666(n+1)+1)`
-/

namespace A140868.P10263560361778460007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (A286666 (n + 1) + 1).toNat

end

end A140868.P10263560361778460007

namespace A140868

/-- `A186222(A286666(n+1)+1)` -/
def P10263560361778460007.Spec : Prop :=
  ∀ n, P10263560361778460007.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P956057678906314232

`A186316(A286666(n+1)+1)`
-/

namespace A140868.P956057678906314232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186316 (A286666 (n + 1) + 1).toNat

end

end A140868.P956057678906314232

namespace A140868

/-- `A186316(A286666(n+1)+1)` -/
def P956057678906314232.Spec : Prop :=
  ∀ n, P956057678906314232.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P3189668244488361153

`A285078(A286666(n+1)+1)`
-/

namespace A140868.P3189668244488361153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (A286666 (n + 1) + 1).toNat

end

end A140868.P3189668244488361153

namespace A140868

/-- `A285078(A286666(n+1)+1)` -/
def P3189668244488361153.Spec : Prop :=
  ∀ n, P3189668244488361153.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P13654938422602286265

`A285075(A285075(n+2)-2)`
-/

namespace A140868.P13654938422602286265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (A285075 (n + 2) - 2).toNat

end

end A140868.P13654938422602286265

namespace A140868

/-- `A285075(A285075(n+2)-2)` -/
def P13654938422602286265.Spec : Prop :=
  ∀ n, P13654938422602286265.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P13987423355591616366

`A285078(A285078(n+2)-2)`
-/

namespace A140868.P13987423355591616366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (A285078 (n + 2) - 2).toNat

end

end A140868.P13987423355591616366

namespace A140868

/-- `A285078(A285078(n+2)-2)` -/
def P13987423355591616366.Spec : Prop :=
  ∀ n, P13987423355591616366.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P8252569519562395602

`A022804(A022804(n+1)/2)/2`
-/

namespace A140868.P8252569519562395602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022804 (SequenceMachineLib.roundAway ((A022804 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A140868.P8252569519562395602

namespace A140868

/-- `A022804(A022804(n+1)/2)/2` -/
def P8252569519562395602.Spec : Prop :=
  ∀ n, P8252569519562395602.a n = (A140868 (n + 1) : ℚ)

end A140868

/-! ## A140868.P11661403858846422866

`A285075(A001951(n+1)+n+1)`
-/

namespace A140868.P11661403858846422866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (A001951 (n + 1) + (n + 1 : ℤ)).toNat

end

end A140868.P11661403858846422866

namespace A140868

/-- `A285075(A001951(n+1)+n+1)` -/
def P11661403858846422866.Spec : Prop :=
  ∀ n, P11661403858846422866.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P9948944081825531560

`A285078(A001951(n+1)+n+1)`
-/

namespace A140868.P9948944081825531560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (A001951 (n + 1) + (n + 1 : ℤ)).toNat

end

end A140868.P9948944081825531560

namespace A140868

/-- `A285078(A001951(n+1)+n+1)` -/
def P9948944081825531560.Spec : Prop :=
  ∀ n, P9948944081825531560.a n = A140868 (n + 1)

end A140868

/-! ## A140868.P16194703833559962584

`A285075(A285078(n+1)+A285073(n+2))`
-/

namespace A140868.P16194703833559962584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (A285078 (n + 1) + A285073 (n + 2)).toNat

end

end A140868.P16194703833559962584

namespace A140868

/-- `A285075(A285078(n+1)+A285073(n+2))` -/
def P16194703833559962584.Spec : Prop :=
  ∀ n, P16194703833559962584.a n = A140868 (n + 1)

end A140868

/-!
# A140869: Triangle read by rows where T(m,n) = floor((2mn+m+n-2)/2), m >= n >= 1.

The programs for A140869, the canonical program `A140869.P8726722076403287160` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140869 has offset 1).

The definition of A140869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140869.P2025781768390811033

`A144652(n+1)-1`
-/

namespace A140869.P2025781768390811033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144652 (n + 1) - 1

end

end A140869.P2025781768390811033

namespace A140869

/-- `A144652(n+1)-1` -/
def P2025781768390811033.Spec : Prop :=
  ∀ n, P2025781768390811033.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P13703628471962688519

`floor(A154680(n+1)/2)`
-/

namespace A140869.P13703628471962688519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154680 (n + 1) : ℚ) / 2⌋

end

end A140869.P13703628471962688519

namespace A140869

/-- `floor(A154680(n+1)/2)` -/
def P13703628471962688519.Spec : Prop :=
  ∀ n, P13703628471962688519.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P8726722076403287160

`ceil(A154684(n+1)/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140869

/-- `ceil(A154684(n+1)/2)` -/
def P8726722076403287160.Spec : Prop :=
  ∀ n, P8726722076403287160.a n = A140869 (n + 1)

theorem P8726722076403287160.correct : P8726722076403287160.Spec := by
  intro n
  simp only [A140869, Nat.add_sub_cancel]

end A140869

/-! ## A140869.P12687016954368440066

`floor(A083487(n+1)/2)-1`
-/

namespace A140869.P12687016954368440066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083487 (n + 1) : ℚ) / 2⌋ - 1

end

end A140869.P12687016954368440066

namespace A140869

/-- `floor(A083487(n+1)/2)-1` -/
def P12687016954368440066.Spec : Prop :=
  ∀ n, P12687016954368440066.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P11029078955389622161

`floor((A144562(n+1)-1)/2)`
-/

namespace A140869.P11029078955389622161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144562 (n + 1) - 1 : ℚ) / 2⌋

end

end A140869.P11029078955389622161

namespace A140869

/-- `floor((A144562(n+1)-1)/2)` -/
def P11029078955389622161.Spec : Prop :=
  ∀ n, P11029078955389622161.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P11006159883577991353

`ceil(A155546(n+1)/2)+1`
-/

namespace A140869.P11006159883577991353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155546 (n + 1) : ℚ) / 2⌉ + 1

end

end A140869.P11006159883577991353

namespace A140869

/-- `ceil(A155546(n+1)/2)+1` -/
def P11006159883577991353.Spec : Prop :=
  ∀ n, P11006159883577991353.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P6490903581384129685

`floor(A155550(n+1)/2)+2`
-/

namespace A140869.P6490903581384129685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155550 (n + 1) : ℚ) / 2⌋ + 2

end

end A140869.P6490903581384129685

namespace A140869

/-- `floor(A155550(n+1)/2)+2` -/
def P6490903581384129685.Spec : Prop :=
  ∀ n, P6490903581384129685.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P8638733517099899008

`round(A144650(n+1)/2)-2`
-/

namespace A140869.P8638733517099899008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144650 (n + 1) : ℚ) / 2) - 2

end

end A140869.P8638733517099899008

namespace A140869

/-- `round(A144650(n+1)/2)-2` -/
def P8638733517099899008.Spec : Prop :=
  ∀ n, P8638733517099899008.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P4776155216217991582

`floor(A075362(n+1)+A051162(n)/2)`
-/

namespace A140869.P4776155216217991582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075362 (n + 1) : ℚ) + (A051162 n : ℚ) / 2⌋

end

end A140869.P4776155216217991582

namespace A140869

/-- `floor(A075362(n+1)+A051162(n)/2)` -/
def P4776155216217991582.Spec : Prop :=
  ∀ n, P4776155216217991582.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P1764906780730249411

`A023443(A144652(n+1))`
-/

namespace A140869.P1764906780730249411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A144652 (n + 1)).toNat

end

end A140869.P1764906780730249411

namespace A140869

/-- `A023443(A144652(n+1))` -/
def P1764906780730249411.Spec : Prop :=
  ∀ n, P1764906780730249411.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P4930276499952892949

`A004526(A154680(n+1))`
-/

namespace A140869.P4930276499952892949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A154680 (n + 1)).toNat

end

end A140869.P4930276499952892949

namespace A140869

/-- `A004526(A154680(n+1))` -/
def P4930276499952892949.Spec : Prop :=
  ∀ n, P4930276499952892949.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P4054868822545456641

`A008619(A155724(n+1))`
-/

namespace A140869.P4054868822545456641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A155724 (n + 1)).toNat

end

end A140869.P4054868822545456641

namespace A140869

/-- `A008619(A155724(n+1))` -/
def P4054868822545456641.Spec : Prop :=
  ∀ n, P4054868822545456641.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P17943003372785143440

`A065033(A154684(n+1))`
-/

namespace A140869.P17943003372785143440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A154684 (n + 1)).toNat

end

end A140869.P17943003372785143440

namespace A140869

/-- `A065033(A154684(n+1))` -/
def P17943003372785143440.Spec : Prop :=
  ∀ n, P17943003372785143440.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P3726846495880114181

`A140106(A083487(n+1))`
-/

namespace A140869.P3726846495880114181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A083487 (n + 1)).toNat

end

end A140869.P3726846495880114181

namespace A140869

/-- `A140106(A083487(n+1))` -/
def P3726846495880114181.Spec : Prop :=
  ∀ n, P3726846495880114181.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P3657698008616402687

`A065033(A144562(n+1))-1`
-/

namespace A140869.P3657698008616402687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A144562 (n + 1)).toNat - 1

end

end A140869.P3657698008616402687

namespace A140869

/-- `A065033(A144562(n+1))-1` -/
def P3657698008616402687.Spec : Prop :=
  ∀ n, P3657698008616402687.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P14006530922180499398

`A065033(A154680(n+1)-1)`
-/

namespace A140869.P14006530922180499398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A154680 (n + 1) - 1).toNat

end

end A140869.P14006530922180499398

namespace A140869

/-- `A065033(A154680(n+1)-1)` -/
def P14006530922180499398.Spec : Prop :=
  ∀ n, P14006530922180499398.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P370769334448667546

`A140106(A155705(n+1))-1`
-/

namespace A140869.P370769334448667546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A155705 (n + 1)).toNat - 1

end

end A140869.P370769334448667546

namespace A140869

/-- `A140106(A155705(n+1))-1` -/
def P370769334448667546.Spec : Prop :=
  ∀ n, P370769334448667546.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P9944747412167008046

`A004526(A144650(n+1)+1)-2`
-/

namespace A140869.P9944747412167008046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A144650 (n + 1) + 1).toNat - 2

end

end A140869.P9944747412167008046

namespace A140869

/-- `A004526(A144650(n+1)+1)-2` -/
def P9944747412167008046.Spec : Prop :=
  ∀ n, P9944747412167008046.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P15408081887343588704

`A008619(A144562(n+1)+1)-2`
-/

namespace A140869.P15408081887343588704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A144562 (n + 1) + 1).toNat - 2

end

end A140869.P15408081887343588704

namespace A140869

/-- `A008619(A144562(n+1)+1)-2` -/
def P15408081887343588704.Spec : Prop :=
  ∀ n, P15408081887343588704.a n = A140869 (n + 1)

end A140869

/-! ## A140869.P12702546438302822191

`A008619(A155156(n+1)/2)-2`
-/

namespace A140869.P12702546438302822191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A155156 (n + 1) : ℚ) / 2)).toNat - 2

end

end A140869.P12702546438302822191

namespace A140869

/-- `A008619(A155156(n+1)/2)-2` -/
def P12702546438302822191.Spec : Prop :=
  ∀ n, P12702546438302822191.a n = A140869 (n + 1)

end A140869

/-!
# A140870: 8*P_4(2n), 8 times the Legendre Polynomial of order 4 at 2n.

The programs for A140870, the canonical program `A140870.P10440958436431510399` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140870 has offset 0).

The definition of A140870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140870.P10440958436431510399

`560*n^4-120*n²+3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140870

/-- `560*n^4-120*n²+3` -/
def P10440958436431510399.Spec : Prop :=
  ∀ n, P10440958436431510399.a n = A140870 n

theorem P10440958436431510399.correct : P10440958436431510399.Spec := by
  intro n
  simp only [A140870]

end A140870

/-!
# A140874: Triangle T(n,k) = binomial(n,k+2)-2*binomial(n,k+1)-binomial(n,k) read by rows, 0<=k<=n-2, n>=2.

The programs for A140874, the canonical program `A140874.P6691662635771918061` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140874 has offset 2).

The definition of A140874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140874.P6691662635771918061

`A104712(n+2)-(A209518(n)+A028327(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140874

/-- `A104712(n+2)-(A209518(n)+A028327(n))` -/
def P6691662635771918061.Spec : Prop :=
  ∀ n, P6691662635771918061.a n = A140874 (n + 2)

theorem P6691662635771918061.correct : P6691662635771918061.Spec := by
  intro n
  simp only [A140874, Nat.add_sub_cancel]

end A140874

/-! ## A140874.P17806469409345757537

`A194118(n)-A028327(A007401(n+1))`
-/

namespace A140874.P17806469409345757537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n - A028327 (A007401 (n + 1)).toNat

end

end A140874.P17806469409345757537

namespace A140874

/-- `A194118(n)-A028327(A007401(n+1))` -/
def P17806469409345757537.Spec : Prop :=
  ∀ n, P17806469409345757537.a n = A140874 (n + 2)

end A140874

/-! ## A140874.P12076206103303782116

`A051601(A014132(n+1))-A028276(A007401(n+1))`
-/

namespace A140874.P12076206103303782116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (A014132 (n + 1)).toNat - A028276 (A007401 (n + 1)).toNat

end

end A140874.P12076206103303782116

namespace A140874

/-- `A051601(A014132(n+1))-A028276(A007401(n+1))` -/
def P12076206103303782116.Spec : Prop :=
  ∀ n, P12076206103303782116.a n = A140874 (n + 2)

end A140874

/-! ## A140874.P16410517147507640719

`2*A104712(n+2)-A144394(n+4)`
-/

namespace A140874.P16410517147507640719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104712 (n + 2) - A144394 (n + 4)

end

end A140874.P16410517147507640719

namespace A140874

/-- `2*A104712(n+2)-A144394(n+4)` -/
def P16410517147507640719.Spec : Prop :=
  ∀ n, P16410517147507640719.a n = A140874 (n + 2)

end A140874

/-!
# A140879: Half the number of n X n binary matrices, symmetric about the diagonal and under 90-degree rotation, having equal row sums.

The programs for A140879, there is no canonical definition to state claims against.
-/

/-! ## A140879.P3218818695760086591

`A322698(gcd(xor(1, -n), ∑[n]))/2`
-/

namespace A140879.P3218818695760086591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322698 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) / 2

end

end A140879.P3218818695760086591

/-! ## A140879.P16463376023777525893

`A322698(gcd(n+1, ceil(n/2)))/2`
-/

namespace A140879.P16463376023777525893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322698 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉) : ℚ) / 2

end

end A140879.P16463376023777525893

/-! ## A140879.P10894983695234768267

`A140988((n+1)/(gcd(n, n%2)+1))`
-/

namespace A140879.P10894983695234768267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd n (n % 2) + 1 : ℚ))).toNat

end

end A140879.P10894983695234768267

/-! ## A140879.P16608292681705153647

`A140988(ceil((lcm(2, n)+1+n)/2)-n)`
-/

namespace A140879.P16608292681705153647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140988 (⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉ - (n : ℤ)).toNat

end

end A140879.P16608292681705153647

/-! ## A140879.P13943642212241688542

`A140988(A152271(n))`
-/

namespace A140879.P13943642212241688542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140988 (A152271 n).toNat

end

end A140879.P13943642212241688542

/-!
# A140880: Triangle read by rows, T(n,k) = Gamma(n+3)/(Gamma(k+1)*Gamma(n-k+1)) for n>=0 and 0<=k<=n.

The programs for A140880, the canonical program `A140880.P7790259496823977085` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140880 has offset 0).

The definition of A140880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140880.P6847227076620263566

`2*A094305(n)`
-/

namespace A140880.P6847227076620263566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094305 n

end

end A140880.P6847227076620263566

namespace A140880

/-- `2*A094305(n)` -/
def P6847227076620263566.Spec : Prop :=
  ∀ n, P6847227076620263566.a n = A140880 n

end A140880

/-! ## A140880.P9212417721429032410

`(comp[∑[n]]-n)*A003506(n+1)`
-/

namespace A140880.P9212417721429032410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A003506 (n + 1)

end

end A140880.P9212417721429032410

namespace A140880

/-- `(comp[∑[n]]-n)*A003506(n+1)` -/
def P9212417721429032410.Spec : Prop :=
  ∀ n, P9212417721429032410.a n = A140880 n

end A140880

/-! ## A140880.P9241489053206678406

`C(comp[∑[n]]-n, 2)*A028326(n)`
-/

namespace A140880.P9241489053206678406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A028326 n

end

end A140880.P9241489053206678406

namespace A140880

/-- `C(comp[∑[n]]-n, 2)*A028326(n)` -/
def P9241489053206678406.Spec : Prop :=
  ∀ n, P9241489053206678406.a n = A140880 n

end A140880

/-! ## A140880.P9380719648071822591

`2*C(comp[∑[n]]-n, 2)*A007318(n)`
-/

namespace A140880.P9380719648071822591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A007318 n)

end

end A140880.P9380719648071822591

namespace A140880

/-- `2*C(comp[∑[n]]-n, 2)*A007318(n)` -/
def P9380719648071822591.Spec : Prop :=
  ∀ n, P9380719648071822591.a n = A140880 n

end A140880

/-! ## A140880.P6747193087169638855

`A135065(n)+A003506(n+1)`
-/

namespace A140880.P6747193087169638855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135065 n + A003506 (n + 1)

end

end A140880.P6747193087169638855

namespace A140880

/-- `A135065(n)+A003506(n+1)` -/
def P6747193087169638855.Spec : Prop :=
  ∀ n, P6747193087169638855.a n = A140880 n

end A140880

/-! ## A140880.P7790259496823977085

`A063929(n+1)*A074909(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140880

/-- `A063929(n+1)*A074909(n)` -/
def P7790259496823977085.Spec : Prop :=
  ∀ n, P7790259496823977085.a n = A140880 n

theorem P7790259496823977085.correct : P7790259496823977085.Spec := by
  intro n
  simp only [A140880]

end A140880

/-! ## A140880.P7853924610859963258

`A028326(n)*A127739(n+1)`
-/

namespace A140880.P7853924610859963258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n * A127739 (n + 1)

end

end A140880.P7853924610859963258

namespace A140880

/-- `A028326(n)*A127739(n+1)` -/
def P7853924610859963258.Spec : Prop :=
  ∀ n, P7853924610859963258.a n = A140880 n

end A140880

/-! ## A140880.P10711512943136287524

`2*(A347056(n)-A121547(n))`
-/

namespace A140880.P10711512943136287524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A347056 n - A121547 n)

end

end A140880.P10711512943136287524

namespace A140880

/-- `2*(A347056(n)-A121547(n))` -/
def P10711512943136287524.Spec : Prop :=
  ∀ n, P10711512943136287524.a n = A140880 n

end A140880

/-! ## A140880.P2029232566367652656

`(A014430(n)+1)*A003991(n+1)`
-/

namespace A140880.P2029232566367652656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014430 n + 1) * A003991 (n + 1)

end

end A140880.P2029232566367652656

namespace A140880

/-- `(A014430(n)+1)*A003991(n+1)` -/
def P2029232566367652656.Spec : Prop :=
  ∀ n, P2029232566367652656.a n = A140880 n

end A140880

/-! ## A140880.P11410829733376717719

`A003991(n+1)*A014410(n+2)`
-/

namespace A140880.P11410829733376717719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A014410 (n + 2)

end

end A140880.P11410829733376717719

namespace A140880

/-- `A003991(n+1)*A014410(n+2)` -/
def P11410829733376717719.Spec : Prop :=
  ∀ n, P11410829733376717719.a n = A140880 n

end A140880

/-! ## A140880.P4787988855128644795

`2*A127739(n+1)*A007318(n)`
-/

namespace A140880.P4787988855128644795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127739 (n + 1) * A007318 n

end

end A140880.P4787988855128644795

namespace A140880

/-- `2*A127739(n+1)*A007318(n)` -/
def P4787988855128644795.Spec : Prop :=
  ∀ n, P4787988855128644795.a n = A140880 n

end A140880

/-! ## A140880.P4855797269938100032

`(A004736(n+1)+n)*A028326(n)`
-/

namespace A140880.P4855797269938100032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * A028326 n

end

end A140880.P4855797269938100032

namespace A140880

/-- `(A004736(n+1)+n)*A028326(n)` -/
def P4855797269938100032.Spec : Prop :=
  ∀ n, P4855797269938100032.a n = A140880 n

end A140880

/-! ## A140880.P17800196800580220673

`(A002260(n+1)+1)*A127717(n+1)`
-/

namespace A140880.P17800196800580220673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * A127717 (n + 1)

end

end A140880.P17800196800580220673

namespace A140880

/-- `(A002260(n+1)+1)*A127717(n+1)` -/
def P17800196800580220673.Spec : Prop :=
  ∀ n, P17800196800580220673.a n = A140880 n

end A140880

/-! ## A140880.P13829277940550489910

`(A061579(n)+A014132(n+1))*A007318(n)`
-/

namespace A140880.P13829277940550489910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061579 n + A014132 (n + 1)) * A007318 n

end

end A140880.P13829277940550489910

namespace A140880

/-- `(A061579(n)+A014132(n+1))*A007318(n)` -/
def P13829277940550489910.Spec : Prop :=
  ∀ n, P13829277940550489910.a n = A140880 n

end A140880

/-! ## A140880.P5841583405242332122

`A135065(n)+A135065(n)/A002024(n+1)`
-/

namespace A140880.P5841583405242332122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135065 n : ℚ) + (A135065 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A140880.P5841583405242332122

namespace A140880

/-- `A135065(n)+A135065(n)/A002024(n+1)` -/
def P5841583405242332122.Spec : Prop :=
  ∀ n, P5841583405242332122.a n = (A140880 n : ℚ)

end A140880

/-! ## A140880.P7475176563904636267

`A002260(n+1)*A003057(n+2)*A135278(n)`
-/

namespace A140880.P7475176563904636267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A003057 (n + 2) * A135278 n

end

end A140880.P7475176563904636267

namespace A140880

/-- `A002260(n+1)*A003057(n+2)*A135278(n)` -/
def P7475176563904636267.Spec : Prop :=
  ∀ n, P7475176563904636267.a n = A140880 n

end A140880

/-! ## A140880.P2061162421015500462

`A002260(n+1)*A004736(n+1)*A014410(n+2)`
-/

namespace A140880.P2061162421015500462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (n + 1) * A014410 (n + 2)

end

end A140880.P2061162421015500462

namespace A140880

/-- `A002260(n+1)*A004736(n+1)*A014410(n+2)` -/
def P2061162421015500462.Spec : Prop :=
  ∀ n, P2061162421015500462.a n = A140880 n

end A140880

/-! ## A140880.P3516196918135181038

`A155864(lt[1, A155864(n)])`
-/

namespace A140880.P3516196918135181038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A140880.P3516196918135181038

namespace A140880

/-- `A155864(lt[1, A155864(n)])` -/
def P3516196918135181038.Spec : Prop :=
  ∀ n, P3516196918135181038.a n = A140880 n

end A140880

/-! ## A140880.P8291546583216373323

`(comp[∑[n]]-n)!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!)`
-/

namespace A140880.P8291546583216373323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A140880.P8291546583216373323

namespace A140880

/-- `(comp[∑[n]]-n)!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!)` -/
def P8291546583216373323.Spec : Prop :=
  ∀ n, P8291546583216373323.a n = (A140880 n : ℚ)

end A140880

/-! ## A140880.P15616602695733925101

`(comp[∑[n]]-n)!/A098361(n)`
-/

namespace A140880.P15616602695733925101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat : ℚ) / (A098361 n : ℚ)

end

end A140880.P15616602695733925101

namespace A140880

/-- `(comp[∑[n]]-n)!/A098361(n)` -/
def P15616602695733925101.Spec : Prop :=
  ∀ n, P15616602695733925101.a n = (A140880 n : ℚ)

end A140880

/-!
# A140881: floor((log(4)/log(3))^n).

The programs for A140881, there is no canonical definition to state claims against.
-/

/-! ## A140881.P9840938269518985302

`A034888(A172471(record[A000032(n)]))`
-/

namespace A140881.P9840938269518985302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A172471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A140881.P9840938269518985302

/-! ## A140881.P16632800078232237393

`A000196(A060961(n)+A000045(n))`
-/

namespace A140881.P16632800078232237393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A060961 n + A000045 n).toNat

end

end A140881.P16632800078232237393

/-! ## A140881.P3761182911996004325

`A000196(A241386(n)+A000045(n+1))`
-/

namespace A140881.P3761182911996004325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A241386 n + A000045 (n + 1)).toNat

end

end A140881.P3761182911996004325

/-! ## A140881.P6008261711447815724

`A000194(A241506(n)+A000045(n+1))`
-/

namespace A140881.P6008261711447815724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A241506 n + A000045 (n + 1)).toNat

end

end A140881.P6008261711447815724

/-! ## A140881.P16108940134808510650

`A000196(A262884(n)+A000045(n+1))`
-/

namespace A140881.P16108940134808510650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A262884 n + A000045 (n + 1)).toNat

end

end A140881.P16108940134808510650

/-!
# A140882: Triangle by rows with row n formed by coefficients of the characteristic polynomial of the n X n tridiagonal matrix with m_{i,i} = 2 for i=1..n, m_{i,i-1} = m_{i,i+1} = -1 for i=2..n-1, and m_{1,2} = m_{n,n-1} = -2.

The programs for A140882, there is no canonical definition to state claims against.
-/

/-! ## A140882.P7572632832980811977

`A023532(A006356(n))*A136674(n)`
-/

namespace A140882.P7572632832980811977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A006356 n).toNat * A136674 n

end

end A140882.P7572632832980811977

/-!
# A140883: Triangle T(n,k) = A053120(n,k)+A053120(n,n-k) of symmetrized Chebyshev coefficients, read by rows, 0<=k<=n.

The programs for A140883, the canonical program `A140883.P11216059136269672096` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140883 has offset 0).

The definition of A140883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140883.P3464849529659587462

`A053120(n)+A039991(n)`
-/

namespace A140883.P3464849529659587462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + A039991 n

end

end A140883.P3464849529659587462

namespace A140883

/-- `A053120(n)+A039991(n)` -/
def P3464849529659587462.Spec : Prop :=
  ∀ n, P3464849529659587462.a n = A140883 n

end A140883

/-! ## A140883.P12814395462095875943

`A039991(n)+A137423(n)-A007318(n)`
-/

namespace A140883.P12814395462095875943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 n + (A137423 n - A007318 n)

end

end A140883.P12814395462095875943

namespace A140883

/-- `A039991(n)+A137423(n)-A007318(n)` -/
def P12814395462095875943.Spec : Prop :=
  ∀ n, P12814395462095875943.a n = A140883 n

end A140883

/-! ## A140883.P1858924929018990912

`A039991(∑[2*n]%comp[∑[n]])+A039991(n)`
-/

namespace A140883.P1858924929018990912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + A039991 n

end

end A140883.P1858924929018990912

namespace A140883

/-- `A039991(∑[2*n]%comp[∑[n]])+A039991(n)` -/
def P1858924929018990912.Spec : Prop :=
  ∀ n, P1858924929018990912.a n = A140883 n

end A140883

/-! ## A140883.P15150238112330965486

`A039991(n)+A039991(A061579(n))`
-/

namespace A140883.P15150238112330965486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 n + A039991 (A061579 n).toNat

end

end A140883.P15150238112330965486

namespace A140883

/-- `A039991(n)+A039991(A061579(n))` -/
def P15150238112330965486.Spec : Prop :=
  ∀ n, P15150238112330965486.a n = A140883 n

end A140883

/-! ## A140883.P11216059136269672096

`A053120(n)+A053120(A061579(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A140883

/-- `A053120(n)+A053120(A061579(n))` -/
def P11216059136269672096.Spec : Prop :=
  ∀ n, P11216059136269672096.a n = A140883 n

theorem P11216059136269672096.correct : P11216059136269672096.Spec := by
  intro n
  simp only [A140883]

end A140883

/-! ## A140883.P17773134575180180192

`A039991(n)+A039991(A114327(n)+n)`
-/

namespace A140883.P17773134575180180192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 n + A039991 (A114327 n + (n : ℤ)).toNat

end

end A140883.P17773134575180180192

namespace A140883

/-- `A039991(n)+A039991(A114327(n)+n)` -/
def P17773134575180180192.Spec : Prop :=
  ∀ n, P17773134575180180192.a n = A140883 n

end A140883

/-! ## A140883.P16572490268021357003

`A053120(n)+A053120(A114327(n)+n)`
-/

namespace A140883.P16572490268021357003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + A053120 (A114327 n + (n : ℤ)).toNat

end

end A140883.P16572490268021357003

namespace A140883

/-- `A053120(n)+A053120(A114327(n)+n)` -/
def P16572490268021357003.Spec : Prop :=
  ∀ n, P16572490268021357003.a n = A140883 n

end A140883

/-! ## A140883.P17138612569664112447

`2*A155997(n)-A155993(n)`
-/

namespace A140883.P17138612569664112447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155997 n - A155993 n

end

end A140883.P17138612569664112447

namespace A140883

/-- `2*A155997(n)-A155993(n)` -/
def P17138612569664112447.Spec : Prop :=
  ∀ n, P17138612569664112447.a n = A140883 n

end A140883

/-! ## A140883.P1076669552144097507

`floor(A039991(n)+A139569(n+1)/2)`
-/

namespace A140883.P1076669552144097507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039991 n : ℚ) + (A139569 (n + 1) : ℚ) / 2⌋

end

end A140883.P1076669552144097507

namespace A140883

/-- `floor(A039991(n)+A139569(n+1)/2)` -/
def P1076669552144097507.Spec : Prop :=
  ∀ n, P1076669552144097507.a n = A140883 n

end A140883

/-! ## A140883.P12858246614793369259

`A005843(A155997(n))-A155993(n)`
-/

namespace A140883.P12858246614793369259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A155997 n).toNat - A155993 n

end

end A140883.P12858246614793369259

namespace A140883

/-- `A005843(A155997(n))-A155993(n)` -/
def P12858246614793369259.Spec : Prop :=
  ∀ n, P12858246614793369259.a n = A140883 n

end A140883

/-!
# A140885: Triangle T(n,k) read by rows: the coefficient [x^k] ( Phi(n,x)+x^n*Phi(n,1/x)) related to cyclotomic polynomials Phi(n,x).

The programs for A140885, there is no canonical definition to state claims against.
-/

/-! ## A140885.P8490117026655484657

`A113407(A119687(n))%or(1, -n)`
-/

namespace A140885.P8490117026655484657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113407 (A119687 n).toNat) (Int.lor 1 (-(n : ℤ)))

end

end A140885.P8490117026655484657

/-! ## A140885.P9387965434659178899

`A113407(A119687(n))%A000837(n)`
-/

namespace A140885.P9387965434659178899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113407 (A119687 n).toNat) (A000837 n)

end

end A140885.P9387965434659178899

/-! ## A140885.P2157512903747095051

`A113407(A119687(n))-char[A024225(n)]`
-/

namespace A140885.P2157512903747095051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 (A119687 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A140885.P2157512903747095051

/-! ## A140885.P12535675012498771857

`char[A051359(n)]*A113407(A119687(n))`
-/

namespace A140885.P12535675012498771857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051359 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A113407 (A119687 n).toNat

end

end A140885.P12535675012498771857

/-! ## A140885.P15280737858754404426

`A113407(A119687(n))-A129186(C(n, 2))`
-/

namespace A140885.P15280737858754404426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 (A119687 n).toNat - A129186 (Nat.choose n 2)

end

end A140885.P15280737858754404426

/-!
# A140887: Number of nonprimes in [30n - 30, 30n] coprime to 30.

The programs for A140887, the canonical program `A140887.P4805063022566980461` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140887 has offset 1).

The definition of A140887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140887.P11528118009915161946

`8-A098592(round(acot(n)+n))`
-/

namespace A140887.P11528118009915161946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A098592 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A140887.P11528118009915161946

namespace A140887

/-- `8-A098592(round(acot(n)+n))` -/
def P11528118009915161946.Spec : Prop :=
  ∀ n, P11528118009915161946.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P13798944670235520870

`8-A098592(round(sqrt(n²+1)))`
-/

namespace A140887.P13798944670235520870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A098592 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A140887.P13798944670235520870

namespace A140887

/-- `8-A098592(round(sqrt(n²+1)))` -/
def P13798944670235520870.Spec : Prop :=
  ∀ n, P13798944670235520870.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P9469018914702095618

`(8-A098592(n))^(1-floor(acot(n)))`
-/

namespace A140887.P9469018914702095618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 - A098592 n : ℚ) ^ (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)

end

end A140887.P9469018914702095618

namespace A140887

/-- `(8-A098592(n))^(1-floor(acot(n)))` -/
def P9469018914702095618.Spec : Prop :=
  ∀ n, P9469018914702095618.a n = (A140887 (n + 1) : ℚ)

end A140887

/-! ## A140887.P4805063022566980461

`(8-A098592(n))*a(A007706(n))` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140887

/-- `(8-A098592(n))*a(A007706(n))` -/
def P4805063022566980461.Spec : Prop :=
  ∀ n, P4805063022566980461.a n = A140887 (n + 1)

theorem P4805063022566980461.correct : P4805063022566980461.Spec := by
  intro n
  simp only [A140887, Nat.add_sub_cancel]

end A140887

/-! ## A140887.P8566832401084105265

`(8-A098592(n))*a(A054977(n))` with `a(0)=1, a(1)=1`
-/

namespace A140887.P8566832401084105265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (8 - A098592 n) * a (A054977 n).toNat

end

end A140887.P8566832401084105265

namespace A140887

/-- `(8-A098592(n))*a(A054977(n))` -/
def P8566832401084105265.Spec : Prop :=
  ∀ n, P8566832401084105265.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P1723995461486421419

`(8-A098592(n))*a(A000007(n)/2)` with `a(0)=1`
-/

namespace A140887.P1723995461486421419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a (SequenceMachineLib.roundAway ((A000007 n : ℚ) / 2)).toNat

end

end A140887.P1723995461486421419

namespace A140887

/-- `(8-A098592(n))*a(A000007(n)/2)` -/
def P1723995461486421419.Spec : Prop :=
  ∀ n, P1723995461486421419.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P18096927561216027463

`(8-A098592(n))*a(n-A028310(n))` with `a(0)=1`
-/

namespace A140887.P18096927561216027463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a ((n : ℤ) - A028310 n).toNat

end

end A140887.P18096927561216027463

namespace A140887

/-- `(8-A098592(n))*a(n-A028310(n))` -/
def P18096927561216027463.Spec : Prop :=
  ∀ n, P18096927561216027463.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P4702704129057584175

`(8-A098592(n))*a(ceil(A024155(n+1)/98))` with `a(0)=1`
-/

namespace A140887.P4702704129057584175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a ⌈(A024155 (n + 1) : ℚ) / 98⌉.toNat

end

end A140887.P4702704129057584175

namespace A140887

/-- `(8-A098592(n))*a(ceil(A024155(n+1)/98))` -/
def P4702704129057584175.Spec : Prop :=
  ∀ n, P4702704129057584175.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P1949222951609980504

`(8-A098592(n))*a(A020639(2*(n+1)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A140887.P1949222951609980504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (8 - A098592 n) * a (A020639 (2 * (n + 1))).toNat

end

end A140887.P1949222951609980504

namespace A140887

/-- `(8-A098592(n))*a(A020639(2*(n+1)))` -/
def P1949222951609980504.Spec : Prop :=
  ∀ n, P1949222951609980504.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P11201238247225097952

`(8-A098592(n))*a(and(1, A000040(n+1)-1))` with `a(0)=1`
-/

namespace A140887.P11201238247225097952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a (Int.land 1 (A000040 (n + 1) - 1)).toNat

end

end A140887.P11201238247225097952

namespace A140887

/-- `(8-A098592(n))*a(and(1, A000040(n+1)-1))` -/
def P11201238247225097952.Spec : Prop :=
  ∀ n, P11201238247225097952.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P4734239461455512258

`(8-A098592(n))*a(2-A000032(C(2, n+2)))` with `a(0)=1`
-/

namespace A140887.P4734239461455512258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a (2 - A000032 (Nat.choose 2 (n + 2))).toNat

end

end A140887.P4734239461455512258

namespace A140887

/-- `(8-A098592(n))*a(2-A000032(C(2, n+2)))` -/
def P4734239461455512258.Spec : Prop :=
  ∀ n, P4734239461455512258.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P10677774798386915504

`(8-A098592(n))*a(floor(A000010(n+1)/n))` with `a(0)=1, a(1)=1`
-/

namespace A140887.P10677774798386915504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (8 - A098592 n) * a ⌊(A000010 (n + 1) : ℚ) / (n : ℚ)⌋.toNat

end

end A140887.P10677774798386915504

namespace A140887

/-- `(8-A098592(n))*a(floor(A000010(n+1)/n))` -/
def P10677774798386915504.Spec : Prop :=
  ∀ n, P10677774798386915504.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P8234259030205861806

`(8-A098592(n))*a(ceil(A057467(n+1)/98)-1)` with `a(0)=1`
-/

namespace A140887.P8234259030205861806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a (⌈(A057467 (n + 1) : ℚ) / 98⌉ - 1).toNat

end

end A140887.P8234259030205861806

namespace A140887

/-- `(8-A098592(n))*a(ceil(A057467(n+1)/98)-1)` -/
def P8234259030205861806.Spec : Prop :=
  ∀ n, P8234259030205861806.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P18142072985325880178

`(8-A098592(n))*a(ceil((A113303(n)+1)/98)-1)` with `a(0)=1`
-/

namespace A140887.P18142072985325880178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a (⌈(A113303 n + 1 : ℚ) / 98⌉ - 1).toNat

end

end A140887.P18142072985325880178

namespace A140887

/-- `(8-A098592(n))*a(ceil((A113303(n)+1)/98)-1)` -/
def P18142072985325880178.Spec : Prop :=
  ∀ n, P18142072985325880178.a n = A140887 (n + 1)

end A140887

/-! ## A140887.P13490086387117464367

`(8-A098592(n))*a(A024155(A024155(n+1)+1)²)` with `a(0)=1`
-/

namespace A140887.P13490086387117464367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 - A098592 n) * a (A024155 (A024155 (n + 1) + 1).toNat ^ 2).toNat

end

end A140887.P13490086387117464367

namespace A140887

/-- `(8-A098592(n))*a(A024155(A024155(n+1)+1)²)` -/
def P13490086387117464367.Spec : Prop :=
  ∀ n, P13490086387117464367.a n = A140887 (n + 1)

end A140887

/-!
# A140888: Number of nonprimes in [210n - 210, 210n] coprime to 210.

The programs for A140888, there is no canonical definition to state claims against.
-/

/-! ## A140888.P9195712125551794764

`A141864(2*(n+1))+A141864(2*n+1)`
-/

namespace A140888.P9195712125551794764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141864 (2 * (n + 1)) + A141864 (2 * n + 1)

end

end A140888.P9195712125551794764

/-!
# A140890: a(n) = sum of primes in {10*n-9, 10*n-7, 10*n-3, 10*n-1}.

The programs for A140890, there is no canonical definition to state claims against.
-/

/-! ## A140890.P9175571540973406529

`A179816(n)-7*floor(acot(n))`
-/

namespace A140890.P9175571540973406529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n - 7 * ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A140890.P9175571540973406529

/-! ## A140890.P7436005962453843924

`A179816(n)-7*A000007(n)`
-/

namespace A140890.P7436005962453843924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n - 7 * A000007 n

end

end A140890.P7436005962453843924

/-! ## A140890.P3680707903394875409

`A179816(n)-C(7, A005897(n))`
-/

namespace A140890.P3680707903394875409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n - (Nat.choose 7 (A005897 n).toNat : ℤ)

end

end A140890.P3680707903394875409

/-! ## A140890.P1515668086407155005

`A179816(A028310(n))%(3*n+5)²`
-/

namespace A140890.P1515668086407155005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179816 (A028310 n).toNat) ((3 * n + 5) ^ 2 : ℤ)

end

end A140890.P1515668086407155005

/-! ## A140890.P15988176081655537085

`A179816(A137734(n²))%p?[4*n+1]²`
-/

namespace A140890.P15988176081655537085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179816 (A137734 (n ^ 2)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ)

end

end A140890.P15988176081655537085

/-! ## A140890.P16494011505078185335

`A179816(A137734(n²))%A043979(n+1)`
-/

namespace A140890.P16494011505078185335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179816 (A137734 (n ^ 2)).toNat) (A043979 (n + 1))

end

end A140890.P16494011505078185335

/-! ## A140890.P14043028808769543363

`Δ[A034387(A218255(n)-1)-A040042(n)]`
-/

namespace A140890.P14043028808769543363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A218255 n - 1).toNat - A040042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140890.P14043028808769543363

/-! ## A140890.P1486965656619894547

`A179816(n)-A184366(A315266(n+1)-n)`
-/

namespace A140890.P1486965656619894547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n - A184366 (A315266 (n + 1) - (n : ℤ)).toNat

end

end A140890.P1486965656619894547

/-! ## A140890.P11660582388874649226

`A179816(n)-A101122(2*n+1)`
-/

namespace A140890.P11660582388874649226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n - A101122 (2 * n + 1)

end

end A140890.P11660582388874649226

/-! ## A140890.P6207492158287900809

`A179816(n)-A005408(n)*A101122(A005408(n))`
-/

namespace A140890.P6207492158287900809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n - A005408 n * A101122 (A005408 n).toNat

end

end A140890.P6207492158287900809

/-!
# A140892: a(n) = (n-1)^F(n) - F(n)^(n-1), where F(n) = A000045(n).

The programs for A140892, there is no canonical definition to state claims against.
-/

/-! ## A140892.P36126006617285071

`A192011((n+1)*Δ[n^3]-1)`
-/

namespace A140892.P36126006617285071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - 1).toNat

end

end A140892.P36126006617285071

/-!
# A140893: a(n) = prime(n)^prime(n+1) - prime(n+1)^prime(n).

The programs for A140893, there is no canonical definition to state claims against.
-/

/-! ## A140893.P4246291984970518170

`A053089(n+1)-A078422(n+1)`
-/

namespace A140893.P4246291984970518170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053089 (n + 1) - A078422 (n + 1)

end

end A140893.P4246291984970518170

/-! ## A140893.P3047820146883256867

`A053089(n+1)-p?[2*n+1]^record[A006530(n+2)]`
-/

namespace A140893.P3047820146883256867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053089 (n + 1) : ℚ) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A140893.P3047820146883256867

/-! ## A140893.P13728243480886834367

`A053089(n+1)-p?[2*n+1]^record[A014963(n+2)]`
-/

namespace A140893.P13728243480886834367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053089 (n + 1) : ℚ) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A140893.P13728243480886834367

/-! ## A140893.P5885438979393388978

`A053089(n+1)-A000040(n+2)^A000040(n+1)`
-/

namespace A140893.P5885438979393388978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053089 (n + 1) : ℚ) - (A000040 (n + 2) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A140893.P5885438979393388978

/-! ## A140893.P13621246085661731454

`A053089(n+1)-A045965(A008864(n+1)-1)^(A008864(n+1)-1)`
-/

namespace A140893.P13621246085661731454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053089 (n + 1) : ℚ) - (A045965 (A008864 (n + 1) - 1).toNat : ℚ) ^ (A008864 (n + 1) - 1 : ℤ)

end

end A140893.P13621246085661731454

/-!
# A140894: Triangle T(n,k) = sum_{0<=j<=k/2} A034867(k,j)*prime(n)^j, read by rows, 0<=k

The programs for A140894, there is no canonical definition to state claims against.
-/

/-! ## A140894.P6807666432817615705

`A297552(A266183(n+1))`
-/

namespace A140894.P6807666432817615705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297552 (A266183 (n + 1)).toNat

end

end A140894.P6807666432817615705

/-! ## A140894.P9584870781165551782

`A331409(2^A333571(n+1))`
-/

namespace A140894.P9584870781165551782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331409 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A333571 (n + 1) : ℤ))).toNat

end

end A140894.P9584870781165551782

/-! ## A140894.P14785678727299348692

`A130341(A348798(n)+A208747(n+1))`
-/

namespace A140894.P14785678727299348692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A348798 n + A208747 (n + 1)).toNat

end

end A140894.P14785678727299348692

/-! ## A140894.P8523349854858485052

`A361830(A007401(n+1)%A096573(2*n+1))`
-/

namespace A140894.P8523349854858485052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (Int.tmod (A007401 (n + 1)) (A096573 (2 * n + 1))).toNat

end

end A140894.P8523349854858485052

/-! ## A140894.P17140600399577744176

`A361830(A007401(n+1))%A209621(3*n+2)`
-/

namespace A140894.P17140600399577744176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361830 (A007401 (n + 1)).toNat) (A209621 (3 * n + 2))

end

end A140894.P17140600399577744176

/-!
# A140897: Positions of hexagonal numbers in the EKG sequence.

The programs for A140897, there is no canonical definition to state claims against.
-/

/-! ## A140897.P13729127450586041512

`A064421((2*n+1)*(n+1))+1`
-/

namespace A140897.P13729127450586041512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 ((2 * n + 1) * (n + 1)) + 1

end

end A140897.P13729127450586041512

/-! ## A140897.P9608249236114153238

`∑{d}[∑[4*n+1], A304526(#)]`
-/

namespace A140897.P9608249236114153238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304526 d

end

end A140897.P9608249236114153238

/-! ## A140897.P12758019463645348424

`A064664(∑[4*n+1])`
-/

namespace A140897.P12758019463645348424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140897.P12758019463645348424

/-! ## A140897.P17693010791021461365

`record[A064664(A000217(n^(n%2)))]`
-/

namespace A140897.P17693010791021461365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A000217 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140897.P17693010791021461365

/-!
# A140898: Expansion of -x^2/(136*x^2+2*x-1).

The programs for A140898, the canonical program `A140898.P2087164457580660830` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140898 has offset 1).

The definition of A140898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140898.P2087164457580660830

`((1+sqrt(137))^n-(1-sqrt(137))^n)/(2*sqrt(137))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140898

/-- `((1+sqrt(137))^n-(1-sqrt(137))^n)/(2*sqrt(137))` -/
def P2087164457580660830.Spec : Prop :=
  ∀ n, P2087164457580660830.a n = (A140898 (n + 1) : ℝ)

end A140898

/-! ## A140898.P10943136618446119307

`2*(a(n-1)+68*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A140898.P10943136618446119307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + 68 * a (n - 2))

end

end A140898.P10943136618446119307

namespace A140898

/-- `2*(a(n-1)+68*a(n-2))` -/
def P10943136618446119307.Spec : Prop :=
  ∀ n, (P10943136618446119307.a n : ℤ) = A140898 (n + 1)

end A140898

/-!
# A140899: Period 10: repeat [7, 9, 5, 1, 3, 3, 1, 5, 9, 7].

The programs for A140899, the canonical program `A140899.P7742577458487525964` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140899 has offset 0).

The definition of A140899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140899.P7742577458487525964

`a(n-10)` with `a(0)=7, a(1)=9, a(2)=5, a(3)=1, a(4)=3, a(5)=3, a(6)=1, a(7)=5, a(8)=9, a(9)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140899

/-- `a(n-10)` -/
def P7742577458487525964.Spec : Prop :=
  ∀ n, (P7742577458487525964.a n : ℤ) = A140899 n

theorem P7742577458487525964.correct : P7742577458487525964.Spec := by
  intro n
  simp only [A140899]

end A140899

