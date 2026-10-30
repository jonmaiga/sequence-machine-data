import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A392101: Numbers whose square is the concatenation of two or more powers of 2.

The programs for A392101, there is no canonical definition to state claims against.
-/

/-! ## A392101.P3743272583508706049

`sqrt(A392102(n+1))`
-/

namespace A392101.P3743272583508706049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392102 (n + 1) : ℝ)

end

end A392101.P3743272583508706049

/-! ## A392101.P14093460022935653327

`sqrt(∩[A169580(n+1), A381259(n+1)])`
-/

namespace A392101.P14093460022935653327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381259 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A392101.P14093460022935653327

/-! ## A392101.P943376060123967758

`A002260(2*A392102(n+1))`
-/

namespace A392101.P943376060123967758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A392102 (n + 1)).toNat

end

end A392101.P943376060123967758

/-! ## A392101.P18044955181857807986

`A002260(A392102(n+1)+A392102(n+1))`
-/

namespace A392101.P18044955181857807986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A392102 (n + 1) + A392102 (n + 1)).toNat

end

end A392101.P18044955181857807986

/-! ## A392101.P12331203797761028501

`A002260(2*∩[A169580(n+1), A381259(n+1)])`
-/

namespace A392101.P12331203797761028501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381259 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A392101.P12331203797761028501

/-!
# A392102: Squares which are the concatenation of two or more powers of 2.

The programs for A392102, there is no canonical definition to state claims against.
-/

/-! ## A392102.P8419749213458827567

`A392101(n+1)²`
-/

namespace A392102.P8419749213458827567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392101 (n + 1) ^ 2

end

end A392102.P8419749213458827567

/-! ## A392102.P8099502400384637038

`A392101(n+1)^A020639(2*(n+1))`
-/

namespace A392102.P8099502400384637038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392101 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A392102.P8099502400384637038

/-! ## A392102.P624669333771010070

`A392101(n+1)*A392101(A000027(n+1))`
-/

namespace A392102.P624669333771010070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392101 (n + 1) * A392101 (A000027 (n + 1)).toNat

end

end A392102.P624669333771010070

/-! ## A392102.P5536165739642933034

`A000290(A392101(A000290(n+1)/(n+1)))`
-/

namespace A392102.P5536165739642933034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A392101 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A392102.P5536165739642933034

/-!
# A392105: Upper (1,1/2) midsequence of (n^2) and (n^3); see Comments.

The programs for A392105, the canonical program `A392105.P3123101596274763263` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392105 has offset 0).

The definition of A392105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392105.P9531485213836966812

`ogf((2x+2x^2+3x^3-x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A392105.P9531485213836966812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 3, -1] [1, -3, 2, 2, -3, 1] n

end

end A392105.P9531485213836966812

namespace A392105

/-- `ogf((2x+2x^2+3x^3-x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P9531485213836966812.Spec : Prop :=
  ∀ n, P9531485213836966812.a n = A392105 n

end A392105

/-! ## A392105.P3123101596274763263

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=23, a(4)=48`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392105

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P3123101596274763263.Spec : Prop :=
  ∀ n, P3123101596274763263.a n = A392105 n

theorem P3123101596274763263.correct : P3123101596274763263.Spec := by
  intro n
  simp only [A392105]

end A392105

/-! ## A392105.P14374130204543549105

`ceil((n+2)/2*n²)`
-/

namespace A392105.P14374130204543549105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 2 * (n ^ 2 : ℚ)⌉

end

end A392105.P14374130204543549105

namespace A392105

/-- `ceil((n+2)/2*n²)` -/
def P14374130204543549105.Spec : Prop :=
  ∀ n, P14374130204543549105.a n = A392105 n

end A392105

/-! ## A392105.P7784200532624387488

`round((n+1-acot(n+1))*∑[n])`
-/

namespace A392105.P7784200532624387488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A392105.P7784200532624387488

namespace A392105

/-- `round((n+1-acot(n+1))*∑[n])` -/
def P7784200532624387488.Spec : Prop :=
  ∀ n, P7784200532624387488.a n = A392105 n

end A392105

/-! ## A392105.P4914883352142816617

`∑[∑[∑[5/a(n-1)]]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A392105.P4914883352142816617
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 2, 5] fun n f3 =>
  5 / f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392105.P4914883352142816617

namespace A392105

/-- `∑[∑[∑[5/a(n-1)]]]` -/
def P4914883352142816617.Spec : Prop :=
  ∀ n, P4914883352142816617.a n = (A392105 n : ℚ)

end A392105

/-! ## A392105.P2888690450526332172

`∑[∑[∑[floor(a(n-2))]]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=5, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A392105.P2888690450526332172
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 5, 1] fun n f3 =>
  f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392105.P2888690450526332172

namespace A392105

/-- `∑[∑[∑[floor(a(n-2))]]]` -/
def P2888690450526332172.Spec : Prop :=
  ∀ n, (P2888690450526332172.a n : ℤ) = A392105 n

end A392105

/-! ## A392105.P3901595498461507397

`floor((lcm(n, (n+1)²)-(n-1))/2)`
-/

namespace A392105.P3901595498461507397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm n ((n + 1) ^ 2) : ℤ) - ((n : ℤ) - 1) : ℚ) / 2⌋

end

end A392105.P3901595498461507397

namespace A392105

/-- `floor((lcm(n, (n+1)²)-(n-1))/2)` -/
def P3901595498461507397.Spec : Prop :=
  ∀ n, P3901595498461507397.a n = A392105 n

end A392105

/-! ## A392105.P16844262042693408551

`A036486(n)+n²`
-/

namespace A392105.P16844262042693408551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 n + (n ^ 2 : ℤ)

end

end A392105.P16844262042693408551

namespace A392105

/-- `A036486(n)+n²` -/
def P16844262042693408551.Spec : Prop :=
  ∀ n, P16844262042693408551.a n = A392105 n

end A392105

/-! ## A392105.P2372572937675297812

`A064843(n+1)+∑[n²]`
-/

namespace A392105.P2372572937675297812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064843 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A392105.P2372572937675297812

namespace A392105

/-- `A064843(n+1)+∑[n²]` -/
def P2372572937675297812.Spec : Prop :=
  ∀ n, P2372572937675297812.a n = A392105 n

end A392105

/-! ## A392105.P1644352712318709613

`A002411(n)+A000982(n)`
-/

namespace A392105.P1644352712318709613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + A000982 n

end

end A392105.P1644352712318709613

namespace A392105

/-- `A002411(n)+A000982(n)` -/
def P1644352712318709613.Spec : Prop :=
  ∀ n, P1644352712318709613.a n = A392105 n

end A392105

/-! ## A392105.P14172607532782765611

`A011934(n)+A004652(n)`
-/

namespace A392105.P14172607532782765611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n + A004652 n

end

end A392105.P14172607532782765611

namespace A392105

/-- `A011934(n)+A004652(n)` -/
def P14172607532782765611.Spec : Prop :=
  ∀ n, P14172607532782765611.a n = A392105 n

end A392105

/-! ## A392105.P9446849792946486037

`A014848(n)+A006003(n)`
-/

namespace A392105.P9446849792946486037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n + A006003 n

end

end A392105.P9446849792946486037

namespace A392105

/-- `A014848(n)+A006003(n)` -/
def P9446849792946486037.Spec : Prop :=
  ∀ n, P9446849792946486037.a n = A392105 n

end A392105

/-! ## A392105.P1393934159918408192

`A057566(n)+A000384(n)`
-/

namespace A392105.P1393934159918408192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057566 n + A000384 n

end

end A392105.P1393934159918408192

namespace A392105

/-- `A057566(n)+A000384(n)` -/
def P1393934159918408192.Spec : Prop :=
  ∀ n, P1393934159918408192.a n = A392105 n

end A392105

/-! ## A392105.P11259447082420456828

`A087035(n)+A000292(n)`
-/

namespace A392105.P11259447082420456828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087035 n + A000292 n

end

end A392105.P11259447082420456828

namespace A392105

/-- `A087035(n)+A000292(n)` -/
def P11259447082420456828.Spec : Prop :=
  ∀ n, P11259447082420456828.a n = A392105 n

end A392105

/-! ## A392105.P3773420226844198894

`A171218(n)+A005581(n)`
-/

namespace A392105.P3773420226844198894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171218 n + A005581 n

end

end A392105.P3773420226844198894

namespace A392105

/-- `A171218(n)+A005581(n)` -/
def P3773420226844198894.Spec : Prop :=
  ∀ n, P3773420226844198894.a n = A392105 n

end A392105

/-! ## A392105.P11672749502518217296

`A391994(n)+A101986(n)`
-/

namespace A392105.P11672749502518217296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391994 n + A101986 n

end

end A392105.P11672749502518217296

namespace A392105

/-- `A391994(n)+A101986(n)` -/
def P11672749502518217296.Spec : Prop :=
  ∀ n, P11672749502518217296.a n = A392105 n

end A392105

/-! ## A392105.P13819419154855126664

`A006002(n)-A004526(n)`
-/

namespace A392105.P13819419154855126664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - A004526 n

end

end A392105.P13819419154855126664

namespace A392105

/-- `A006002(n)-A004526(n)` -/
def P13819419154855126664.Spec : Prop :=
  ∀ n, P13819419154855126664.a n = A392105 n

end A392105

/-! ## A392105.P16120022577980026815

`A011379(n)-A036487(n)`
-/

namespace A392105.P16120022577980026815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n - A036487 n

end

end A392105.P16120022577980026815

namespace A392105

/-- `A011379(n)-A036487(n)` -/
def P16120022577980026815.Spec : Prop :=
  ∀ n, P16120022577980026815.a n = A392105 n

end A392105

/-! ## A392105.P14868782218704187899

`A213502(n)-A006002(n)`
-/

namespace A392105.P14868782218704187899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213502 n - A006002 n

end

end A392105.P14868782218704187899

namespace A392105

/-- `A213502(n)-A006002(n)` -/
def P14868782218704187899.Spec : Prop :=
  ∀ n, P14868782218704187899.a n = A392105 n

end A392105

/-! ## A392105.P5407364405515318723

`A098547(n)-A274324(n)`
-/

namespace A392105.P5407364405515318723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n - A274324 n

end

end A392105.P5407364405515318723

namespace A392105

/-- `A098547(n)-A274324(n)` -/
def P5407364405515318723.Spec : Prop :=
  ∀ n, P5407364405515318723.a n = A392105 n

end A392105

/-!
# A392106: Concatenation of binary words using letters 1 and 2, in numerical order.

The programs for A392106, there is no canonical definition to state claims against.
-/

/-! ## A392106.P11270505517241068691

`1+A076478(n)`
-/

namespace A392106.P11270505517241068691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A076478 n

end

end A392106.P11270505517241068691

/-! ## A392106.P8844927827805428355

`A003842(Δ[A277914(n)]+2)`
-/

namespace A392106.P8844927827805428355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (f1 (n + 1) - f1 n + 2).toNat

end

end A392106.P8844927827805428355

/-! ## A392106.P381588821772628345

`A028364(1-Δ[A277914(n)])`
-/

namespace A392106.P381588821772628345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A392106.P381588821772628345

/-! ## A392106.P3470539487187212451

`A001285(A001316(n)*A076478(n))`
-/

namespace A392106.P3470539487187212451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A001316 n * A076478 n).toNat

end

end A392106.P3470539487187212451

/-! ## A392106.P2292684259464078020

`A001316(A001316(n)*A076478(n))`
-/

namespace A392106.P2292684259464078020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n * A076478 n).toNat

end

end A392106.P2292684259464078020

/-! ## A392106.P2759611500757100858

`char[A271728(n+1)]+1`
-/

namespace A392106.P2759611500757100858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A392106.P2759611500757100858

/-! ## A392106.P13579150938253813654

`A274640(A076478(n)-A048298(3*n))`
-/

namespace A392106.P13579150938253813654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A076478 n - A048298 (3 * n)).toNat

end

end A392106.P13579150938253813654

/-! ## A392106.P15228285183209547003

`A367979(A076478(n)-A048298(3*n))`
-/

namespace A392106.P15228285183209547003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367979 (A076478 n - A048298 (3 * n)).toNat

end

end A392106.P15228285183209547003

/-! ## A392106.P2736727355183639460

`runs[A233136(n+3)-n]`
-/

namespace A392106.P2736727355183639460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 3) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A392106.P2736727355183639460

/-! ## A392106.P5600287269745632651

`runs[∏[A233136(n+2)]]`
-/

namespace A392106.P5600287269745632651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A392106.P5600287269745632651

/-! ## A392106.P542080975128563028

`A076478(n)-A134824(A080971(n))`
-/

namespace A392106.P542080975128563028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n - A134824 (A080971 n).toNat

end

end A392106.P542080975128563028

/-!
# A392108: a(n) = smallest prime with exponent > 1 in the prime factorization of n, or 0 if no such prime exists.

The programs for A392108, there is no canonical definition to state claims against.
-/

/-! ## A392108.P12269321592655634947

`∑{p}[A249739(n+1), #]`
-/

namespace A392108.P12269321592655634947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392108.P12269321592655634947

/-! ## A392108.P4510384271521285754

`∑{p}[A020639((n+1)/∏{p}[n+1, #]), #]`
-/

namespace A392108.P4510384271521285754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392108.P4510384271521285754

/-! ## A392108.P4117445411591614578

`∑{p}[A323130((n+1)/∏{p}[n+1, #]), #]`
-/

namespace A392108.P4117445411591614578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392108.P4117445411591614578

/-! ## A392108.P4304387790723563742

`∑{p}[A020639(∏{p}[n+1, #^val(n+1, #²)]), #]`
-/

namespace A392108.P4304387790723563742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392108.P4304387790723563742

/-! ## A392108.P698553303752327681

`∑{p}[A020639(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])), #]`
-/

namespace A392108.P698553303752327681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392108.P698553303752327681

/-! ## A392108.P11371383397834679848

`A080368(A071773(n+1))`
-/

namespace A392108.P11371383397834679848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (A071773 (n + 1)).toNat

end

end A392108.P11371383397834679848

/-! ## A392108.P7851694341257473056

`A001414(A249739(n+1))`
-/

namespace A392108.P7851694341257473056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A249739 (n + 1)).toNat

end

end A392108.P7851694341257473056

/-! ## A392108.P4278943118267223484

`A227196(A071773(n+1)²)`
-/

namespace A392108.P4278943118267223484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A071773 (n + 1) ^ 2).toNat

end

end A392108.P4278943118267223484

/-! ## A392108.P580412140689209818

`A349394(A249739(n+1)²)`
-/

namespace A392108.P580412140689209818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (A249739 (n + 1) ^ 2).toNat

end

end A392108.P580412140689209818

/-! ## A392108.P4833317427748005261

`A249739(n+1)-A008966(n+1)`
-/

namespace A392108.P4833317427748005261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1) - A008966 (n + 1)

end

end A392108.P4833317427748005261

/-! ## A392108.P5983592018697069387

`A107078(n+1)*A249739(n+1)`
-/

namespace A392108.P5983592018697069387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * A249739 (n + 1)

end

end A392108.P5983592018697069387

/-! ## A392108.P14224945778310917701

`A249739(n+1)%A008477(n+1)`
-/

namespace A392108.P14224945778310917701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249739 (n + 1)) (A008477 (n + 1))

end

end A392108.P14224945778310917701

/-! ## A392108.P9914649612737192907

`and(A076544(n+1), A249739(n+1))`
-/

namespace A392108.P9914649612737192907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076544 (n + 1)) (A249739 (n + 1))

end

end A392108.P9914649612737192907

/-! ## A392108.P12263854504919212619

`A227196(A071773(n+1)*A071773(n+1))`
-/

namespace A392108.P12263854504919212619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A071773 (n + 1) * A071773 (n + 1)).toNat

end

end A392108.P12263854504919212619

/-! ## A392108.P8790649943860770275

`A349394(A249739(n+1)*A249739(n+1))`
-/

namespace A392108.P8790649943860770275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (A249739 (n + 1) * A249739 (n + 1)).toNat

end

end A392108.P8790649943860770275

/-! ## A392108.P1452603279189001432

`A008472(A020639((n+1)/A007947(n+1)))`
-/

namespace A392108.P1452603279189001432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A392108.P1452603279189001432

/-! ## A392108.P2632350291722983818

`A080368(A020639((n+1)/A055231(n+1)))`
-/

namespace A392108.P2632350291722983818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat).toNat

end

end A392108.P2632350291722983818

/-! ## A392108.P3947160936937996076

`A277885(A064988(n+1))`
-/

namespace A392108.P3947160936937996076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A064988 (n + 1)).toNat

end

end A392108.P3947160936937996076

/-! ## A392108.P8964403424061209957

`A249442(A083730(n+1))*A249717(n+1)`
-/

namespace A392108.P8964403424061209957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A083730 (n + 1)).toNat * A249717 (n + 1)

end

end A392108.P8964403424061209957

/-!
# A392109: a(n) = largest prime with exponent > 1 in the prime factorization of n, or 0 if no such prime exists.

The programs for A392109, the canonical program `A392109.P12073788639795556872` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392109 has offset 1).

The definition of A392109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392109.P8808098442304732540

`∑{p}[A083730(n+1), #]`
-/

namespace A392109.P8808098442304732540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P8808098442304732540

namespace A392109

/-- `∑{p}[A083730(n+1), #]` -/
def P8808098442304732540.Spec : Prop :=
  ∀ n, (P8808098442304732540.a n : ℤ) = A392109 (n + 1)

end A392109

/-! ## A392109.P12073788639795556872

`∑{p}[A249740(n+1), #]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A392109

/-- `∑{p}[A249740(n+1), #]` -/
def P12073788639795556872.Spec : Prop :=
  ∀ n, (P12073788639795556872.a n : ℤ) = A392109 (n + 1)

theorem P12073788639795556872.correct : P12073788639795556872.Spec := by
  intro n
  simp only [A392109, Nat.add_sub_cancel]

end A392109

/-! ## A392109.P7697152023778317400

`∑{p}[A006530((n+1)/∏{p}[n+1, #]), #]`
-/

namespace A392109.P7697152023778317400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P7697152023778317400

namespace A392109

/-- `∑{p}[A006530((n+1)/∏{p}[n+1, #]), #]` -/
def P7697152023778317400.Spec : Prop :=
  ∀ n, (P7697152023778317400.a n : ℤ) = A392109 (n + 1)

theorem P7697152023778317400.correct : P7697152023778317400.Spec := by
  intro n
  simp only [A392109, Nat.add_sub_cancel, A392109.P7697152023778317400.f2, A392109.P7697152023778317400.f1, A392109.P7697152023778317400.a, A392109.P12073788639795556872.f1, A392109.P12073788639795556872.a, A006530, A006530.P13372528560459906635.a, A249740, A249740.P7780659376755282522.a, A003557, A003557.P6364735403900941810.a, A070229, A070229.P5792893597916963980.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392109

/-! ## A392109.P15398393402360949609

`∑{p}[A053585((n+1)/∏{p}[n+1, #]), #]`
-/

namespace A392109.P15398393402360949609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P15398393402360949609

namespace A392109

/-- `∑{p}[A053585((n+1)/∏{p}[n+1, #]), #]` -/
def P15398393402360949609.Spec : Prop :=
  ∀ n, (P15398393402360949609.a n : ℤ) = A392109 (n + 1)

end A392109

/-! ## A392109.P8330138358851440121

`∑{p}[A006530(∏{p}[n+1, #^val(n+1, #²)]), #]`
-/

namespace A392109.P8330138358851440121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P8330138358851440121

namespace A392109

/-- `∑{p}[A006530(∏{p}[n+1, #^val(n+1, #²)]), #]` -/
def P8330138358851440121.Spec : Prop :=
  ∀ n, (P8330138358851440121.a n : ℤ) = A392109 (n + 1)

end A392109

/-! ## A392109.P17228674982642416583

`∑{p}[A217581(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])), #]`
-/

namespace A392109.P17228674982642416583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P17228674982642416583

namespace A392109

/-- `∑{p}[A217581(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])), #]` -/
def P17228674982642416583.Spec : Prop :=
  ∀ n, (P17228674982642416583.a n : ℤ) = A392109 (n + 1)

end A392109

/-! ## A392109.P17614146315709484864

`A008472(A083730(n+1))`
-/

namespace A392109.P17614146315709484864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A083730 (n + 1)).toNat

end

end A392109.P17614146315709484864

namespace A392109

/-- `A008472(A083730(n+1))` -/
def P17614146315709484864.Spec : Prop :=
  ∀ n, P17614146315709484864.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P16863872698665833528

`A064760(A071773(n+1))`
-/

namespace A392109.P16863872698665833528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (A071773 (n + 1)).toNat

end

end A392109.P16863872698665833528

namespace A392109

/-- `A064760(A071773(n+1))` -/
def P16863872698665833528.Spec : Prop :=
  ∀ n, P16863872698665833528.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P12416502595295010425

`A001414(A249740(n+1))`
-/

namespace A392109.P12416502595295010425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A249740 (n + 1)).toNat

end

end A392109.P12416502595295010425

namespace A392109

/-- `A001414(A249740(n+1))` -/
def P12416502595295010425.Spec : Prop :=
  ∀ n, P12416502595295010425.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P10642124497989019597

`A048050(A249740(n+1)²)`
-/

namespace A392109.P10642124497989019597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A249740 (n + 1) ^ 2).toNat

end

end A392109.P10642124497989019597

namespace A392109

/-- `A048050(A249740(n+1)²)` -/
def P10642124497989019597.Spec : Prop :=
  ∀ n, P10642124497989019597.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P5533365693285069578

`A249740(n+1)-A008966(n+1)`
-/

namespace A392109.P5533365693285069578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1) - A008966 (n + 1)

end

end A392109.P5533365693285069578

namespace A392109

/-- `A249740(n+1)-A008966(n+1)` -/
def P5533365693285069578.Spec : Prop :=
  ∀ n, P5533365693285069578.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P7617301567940001435

`A107078(n+1)*A249740(n+1)`
-/

namespace A392109.P7617301567940001435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * A249740 (n + 1)

end

end A392109.P7617301567940001435

namespace A392109

/-- `A107078(n+1)*A249740(n+1)` -/
def P7617301567940001435.Spec : Prop :=
  ∀ n, P7617301567940001435.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P12439403687590119199

`A249740(n+1)%A008477(n+1)`
-/

namespace A392109.P12439403687590119199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249740 (n + 1)) (A008477 (n + 1))

end

end A392109.P12439403687590119199

namespace A392109

/-- `A249740(n+1)%A008477(n+1)` -/
def P12439403687590119199.Spec : Prop :=
  ∀ n, P12439403687590119199.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P11821490452488586213

`and(A076544(n+1), A249740(n+1))`
-/

namespace A392109.P11821490452488586213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076544 (n + 1)) (A249740 (n + 1))

end

end A392109.P11821490452488586213

namespace A392109

/-- `and(A076544(n+1), A249740(n+1))` -/
def P11821490452488586213.Spec : Prop :=
  ∀ n, P11821490452488586213.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P6443672012963465116

`A249442(A083730(n+1))*A249740(n+1)`
-/

namespace A392109.P6443672012963465116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A083730 (n + 1)).toNat * A249740 (n + 1)

end

end A392109.P6443672012963465116

namespace A392109

/-- `A249442(A083730(n+1))*A249740(n+1)` -/
def P6443672012963465116.Spec : Prop :=
  ∀ n, P6443672012963465116.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P6297836026174924725

`A008472(A006530((n+1)/A007947(n+1)))`
-/

namespace A392109.P6297836026174924725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A392109.P6297836026174924725

namespace A392109

/-- `A008472(A006530((n+1)/A007947(n+1)))` -/
def P6297836026174924725.Spec : Prop :=
  ∀ n, P6297836026174924725.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P10858824019288179405

`A181566(A249740(n+1)²)`
-/

namespace A392109.P10858824019288179405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181566 (A249740 (n + 1) ^ 2).toNat

end

end A392109.P10858824019288179405

namespace A392109

/-- `A181566(A249740(n+1)²)` -/
def P10858824019288179405.Spec : Prop :=
  ∀ n, P10858824019288179405.a n = A392109 (n + 1)

end A392109

/-! ## A392109.P15883406830767649448

`A249442(A083730(n+1))*A249718(n+1)`
-/

namespace A392109.P15883406830767649448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A083730 (n + 1)).toNat * A249718 (n + 1)

end

end A392109.P15883406830767649448

namespace A392109

/-- `A249442(A083730(n+1))*A249718(n+1)` -/
def P15883406830767649448.Spec : Prop :=
  ∀ n, P15883406830767649448.a n = A392109 (n + 1)

end A392109

/-!
# A392111: Numbers k such that 5*k - (greatest prime < 5*k) = (least prime > 5*k) - 5*k.

The programs for A392111, the canonical program `A392111.P4220090756127954583` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392111 has offset 1).

The definition of A392111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392111.P7245428186786581164

`∪[A000156(n), A268328(n+1)]`
-/

namespace A392111.P7245428186786581164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392111.P7245428186786581164

namespace A392111

/-- `∪[A000156(n), A268328(n+1)]` -/
def P7245428186786581164.Spec : Prop :=
  ∀ n, (P7245428186786581164.a n : ℤ) = A392111 (n + 1)

end A392111

/-! ## A392111.P4220090756127954583

`∪[A002001(n), A268328(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A392111

/-- `∪[A002001(n), A268328(n+1)]` -/
def P4220090756127954583.Spec : Prop :=
  ∀ n, (P4220090756127954583.a n : ℤ) = A392111 (n + 1)

theorem P4220090756127954583.correct : P4220090756127954583.Spec := by
  intro n
  simp only [A392111, Nat.add_sub_cancel]

end A392111

/-! ## A392111.P8369538141688835931

`∪[A186661(n+1)², A268328(n+1)]`
-/

namespace A392111.P8369538141688835931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186661 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392111.P8369538141688835931

namespace A392111

/-- `∪[A186661(n+1)², A268328(n+1)]` -/
def P8369538141688835931.Spec : Prop :=
  ∀ n, (P8369538141688835931.a n : ℤ) = A392111 (n + 1)

end A392111

/-! ## A392111.P8066473537050253949

`A008619(eq[1, A389793(n+1)])`
-/

namespace A392111.P8066473537050253949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A392111.P8066473537050253949

namespace A392111

/-- `A008619(eq[1, A389793(n+1)])` -/
def P8066473537050253949.Spec : Prop :=
  ∀ n, P8066473537050253949.a n = A392111 (n + 1)

end A392111

/-! ## A392111.P3126590147314430705

`record[A008619(n)/A389793(n+1)]`
-/

namespace A392111.P3126590147314430705
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A389793 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392111.P3126590147314430705

namespace A392111

/-- `record[A008619(n)/A389793(n+1)]` -/
def P3126590147314430705.Spec : Prop :=
  ∀ n, P3126590147314430705.a n = (A392111 (n + 1) : ℚ)

end A392111

/-!
# A392113: Numbers k such that 6*k - (greatest prime < 6*n) < (least prime > 6*n) - 6*k.

The programs for A392113, the canonical program `A392113.P13253170611185202073` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392113 has offset 1).

The definition of A392113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392113.P13253170611185202073

`record[A246277(A391351(n+2))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A392113

/-- `record[A246277(A391351(n+2))]` -/
def P13253170611185202073.Spec : Prop :=
  ∀ n, P13253170611185202073.a n = A392113 (n + 1)

theorem P13253170611185202073.correct : P13253170611185202073.Spec := by
  intro n
  simp only [A392113, Nat.add_sub_cancel]

end A392113

/-!
# A392114: Numbers k such that 6*k - (greatest prime < 6*n) = (least prime > 6*n) - 6*k.

The programs for A392114, the canonical program `A392114.P11332587441482956445` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392114 has offset 1).

The definition of A392114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392114.P11332587441482956445

`A072570(n+2)/6`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A392114

/-- `A072570(n+2)/6` -/
def P11332587441482956445.Spec : Prop :=
  ∀ n, P11332587441482956445.a n = (A392114 (n + 1) : ℚ)

end A392114

/-! ## A392114.P9903233892210962640

`record[A246277(A391352(n+1))]`
-/

namespace A392114.P9903233892210962640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A391352 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392114.P9903233892210962640

namespace A392114

/-- `record[A246277(A391352(n+1))]` -/
def P9903233892210962640.Spec : Prop :=
  ∀ n, P9903233892210962640.a n = A392114 (n + 1)

end A392114

/-! ## A392114.P8540480616425683589

`A008615(A072570(n+2))`
-/

namespace A392114.P8540480616425683589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A072570 (n + 2)).toNat

end

end A392114.P8540480616425683589

namespace A392114

/-- `A008615(A072570(n+2))` -/
def P8540480616425683589.Spec : Prop :=
  ∀ n, P8540480616425683589.a n = A392114 (n + 1)

end A392114

/-!
# A392116: a(n) = f(n+1) - f(n), where f(n) = floor(prime(n)/5).

The programs for A392116, the canonical program `A392116.P7884063924206955522` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392116 has offset 1).

The definition of A392116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392116.P7884063924206955522

`Δ[floor(A000040(n+1)/5)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A392116

/-- `Δ[floor(A000040(n+1)/5)]` -/
def P7884063924206955522.Spec : Prop :=
  ∀ n, P7884063924206955522.a n = A392116 (n + 1)

theorem P7884063924206955522.correct : P7884063924206955522.Spec := by
  intro n
  simp only [A392116, Nat.add_sub_cancel]

end A392116

/-! ## A392116.P12149726676584169545

`Δ[A057354(A124678(n+1))]`
-/

namespace A392116.P12149726676584169545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A124678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P12149726676584169545

namespace A392116

/-- `Δ[A057354(A124678(n+1))]` -/
def P12149726676584169545.Spec : Prop :=
  ∀ n, P12149726676584169545.a n = A392116 (n + 1)

end A392116

/-! ## A392116.P3014652345031063788

`Δ[A002266(Δ[A007504(n)])]`
-/

namespace A392116.P3014652345031063788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P3014652345031063788

namespace A392116

/-- `Δ[A002266(Δ[A007504(n)])]` -/
def P3014652345031063788.Spec : Prop :=
  ∀ n, P3014652345031063788.a n = A392116 (n + 1)

end A392116

/-! ## A392116.P14906785260770297126

`Δ[A002266(A000040(n+1))]`
-/

namespace A392116.P14906785260770297126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P14906785260770297126

namespace A392116

/-- `Δ[A002266(A000040(n+1))]` -/
def P14906785260770297126.Spec : Prop :=
  ∀ n, P14906785260770297126.a n = A392116 (n + 1)

end A392116

/-! ## A392116.P18375051713276794678

`Δ[A002266(A008578(n+2))]`
-/

namespace A392116.P18375051713276794678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P18375051713276794678

namespace A392116

/-- `Δ[A002266(A008578(n+2))]` -/
def P18375051713276794678.Spec : Prop :=
  ∀ n, P18375051713276794678.a n = A392116 (n + 1)

end A392116

/-! ## A392116.P2667192232002941140

`Δ[A002266(∑[A054541(n+1)])]`
-/

namespace A392116.P2667192232002941140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P2667192232002941140

namespace A392116

/-- `Δ[A002266(∑[A054541(n+1)])]` -/
def P2667192232002941140.Spec : Prop :=
  ∀ n, P2667192232002941140.a n = A392116 (n + 1)

end A392116

/-! ## A392116.P11049772686102377796

`Δ[A008676(A001748(n+1))]`
-/

namespace A392116.P11049772686102377796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A001748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P11049772686102377796

namespace A392116

/-- `Δ[A008676(A001748(n+1))]` -/
def P11049772686102377796.Spec : Prop :=
  ∀ n, P11049772686102377796.a n = A392116 (n + 1)

end A392116

/-!
# A392117: Lower Wythoff partition sequence of the primes; see Comments.

The programs for A392117, there is no canonical definition to state claims against.
-/

/-! ## A392117.P635437158063686991

`A000040(A392119(n+1))`
-/

namespace A392117.P635437158063686991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A392119 (n + 1)).toNat

end

end A392117.P635437158063686991

/-! ## A392117.P16393978479258489800

`A008578(A392119(n+1)+1)`
-/

namespace A392117.P16393978479258489800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A392119 (n + 1) + 1).toNat

end

end A392117.P16393978479258489800

/-! ## A392117.P12581978294846654041

`A360006(2*A392119(n+1))`
-/

namespace A392117.P12581978294846654041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360006 (2 * A392119 (n + 1)).toNat

end

end A392117.P12581978294846654041

/-! ## A392117.P12825752278470480467

`A000040(A187476(n+1))%A383586(n+4)`
-/

namespace A392117.P12825752278470480467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A187476 (n + 1)).toNat) (A383586 (n + 4))

end

end A392117.P12825752278470480467

/-!
# A392118: Upper Wythoff partition sequence of the primes; see A392117.

The programs for A392118, there is no canonical definition to state claims against.
-/

/-! ## A392118.P11200303844372091210

`A000040(A392121(n+1))`
-/

namespace A392118.P11200303844372091210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A392121 (n + 1)).toNat

end

end A392118.P11200303844372091210

/-! ## A392118.P16360588299468929279

`A008578(A392121(n+1)+1)`
-/

namespace A392118.P16360588299468929279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A392121 (n + 1) + 1).toNat

end

end A392118.P16360588299468929279

/-!
# A392119: Indices of the lower Wythoff partition sequence of the primes; see A392117.

The programs for A392119, there is no canonical definition to state claims against.
-/

/-! ## A392119.P13844672491076331826

`comp[A392121(n+1)-1]+1`
-/

namespace A392119.P13844672491076331826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392121 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A392119.P13844672491076331826

/-! ## A392119.P9420286756292483576

`A000720(A392117(n+1))`
-/

namespace A392119.P9420286756292483576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A392117 (n + 1)).toNat

end

end A392119.P9420286756292483576

/-! ## A392119.P5606131173364515051

`A061395(2*A392117(n+1))`
-/

namespace A392119.P5606131173364515051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A392117 (n + 1)).toNat

end

end A392119.P5606131173364515051

/-! ## A392119.P7231220129727454989

`A049084((A392117(n+1)^-1)^-1)`
-/

namespace A392119.P7231220129727454989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (SequenceMachineLib.roundAway (((A392117 (n + 1) : ℚ) ^ (-1 : ℤ)) ^ (-1 : ℤ))).toNat

end

end A392119.P7231220129727454989

/-! ## A392119.P2956343136600200551

`A003963(A392117(n+1)-A000007(n))`
-/

namespace A392119.P2956343136600200551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A392117 (n + 1) - A000007 n).toNat

end

end A392119.P2956343136600200551

/-! ## A392119.P839391501618789897

`A049084(A392117(n+1)%A023259(n+1))`
-/

namespace A392119.P839391501618789897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.tmod (A392117 (n + 1)) (A023259 (n + 1))).toNat

end

end A392119.P839391501618789897

/-! ## A392119.P2122761240298894505

`A056239(A392117(n+1))%A023201(n+1)`
-/

namespace A392119.P2122761240298894505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A392117 (n + 1)).toNat) (A023201 (n + 1))

end

end A392119.P2122761240298894505

/-! ## A392119.P7888521254718665271

`A049084(A392117(n+1))%A039370(n+1)`
-/

namespace A392119.P7888521254718665271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (A392117 (n + 1)).toNat) (A039370 (n + 1))

end

end A392119.P7888521254718665271

/-! ## A392119.P3544137262217266294

`A056594(2*n+1)+A056239(A392117(n+1))`
-/

namespace A392119.P3544137262217266294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) + A056239 (A392117 (n + 1)).toNat

end

end A392119.P3544137262217266294

/-! ## A392119.P7045419088324198634

`A003963(2*A392117(n+1))`
-/

namespace A392119.P7045419088324198634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A392117 (n + 1)).toNat

end

end A392119.P7045419088324198634

/-! ## A392119.P5263772774008715986

`A003963(lcm(2, A392117(n+1)))`
-/

namespace A392119.P5263772774008715986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A392117 (n + 1)))

end

end A392119.P5263772774008715986

/-! ## A392119.P11751472552136905228

`A318283(A392117(n+1))%A025284(n+1)`
-/

namespace A392119.P11751472552136905228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318283 (A392117 (n + 1)).toNat) (A025284 (n + 1))

end

end A392119.P11751472552136905228

/-!
# A392121: Indices of the upper Wythoff partition sequence of the primes; see A392117.

The programs for A392121, there is no canonical definition to state claims against.
-/

/-! ## A392121.P395287663623344292

`A000720(A392118(n+1))`
-/

namespace A392121.P395287663623344292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A392118 (n + 1)).toNat

end

end A392121.P395287663623344292

/-! ## A392121.P14317890522426564529

`A055396(A266591(2*n)*A392118(n+1))`
-/

namespace A392121.P14317890522426564529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A266591 (2 * n) * A392118 (n + 1)).toNat

end

end A392121.P14317890522426564529

/-! ## A392121.P9326259188896750567

`A055396(A392118(n+1))%A001248(n+1)`
-/

namespace A392121.P9326259188896750567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A392118 (n + 1)).toNat) (A001248 (n + 1))

end

end A392121.P9326259188896750567

/-! ## A392121.P10845502266123573410

`A055396(A135528(2*(n+1))*A392118(n+1))`
-/

namespace A392121.P10845502266123573410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A135528 (2 * (n + 1)) * A392118 (n + 1)).toNat

end

end A392121.P10845502266123573410

/-! ## A392121.P15757574465805809171

`A320659(3*n+2)+A056239(A392118(n+1))`
-/

namespace A392121.P15757574465805809171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320659 (3 * n + 2) + A056239 (A392118 (n + 1)).toNat

end

end A392121.P15757574465805809171

/-!
# A392124: Irregular triangular array read by rows: row n shows the coefficients in the expansion of the n-th derivative of tan(x) as a linear combination of products of powers of sec(x)^2 and tan(x).

The programs for A392124, there is no canonical definition to state claims against.
-/

/-! ## A392124.P8168786454570713162

`A152768(A024564(3*n+4)*A082069(n+1))`
-/

namespace A392124.P8168786454570713162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152768 (A024564 (3 * n + 4) * A082069 (n + 1)).toNat

end

end A392124.P8168786454570713162

/-!
# A392128: E.g.f. A(x) satisfies A(x) = (1 + 5*x*A(x)^3)^(1/5).

The programs for A392128, there is no canonical definition to state claims against.
-/

/-! ## A392128.P12200245523283201551

`A086965(2*n+5)-A217153(A001358(n+1))`
-/

namespace A392128.P12200245523283201551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (2 * n + 5) - A217153 (A001358 (n + 1)).toNat

end

end A392128.P12200245523283201551

/-!
# A392131: a(n) is the determinant of the n X n circulant matrix whose rows are formed by successively rotating the vector (A000129(0), A000129(1), ..., A000129(n-1)) right.

The programs for A392131, there is no canonical definition to state claims against.
-/

/-! ## A392131.P13204988350458906718

`A084215(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=9`
-/

namespace A392131.P13204988350458906718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 9] fun n a =>
  A084215 (a (n - 1)).toNat

end

end A392131.P13204988350458906718

/-!
# A392132: a(n) is the permanent of the n X n circulant matrix whose rows are formed by successively rotating the vector (A000129(0), A000129(1), ..., A000129(n-1)) right.

The programs for A392132, there is no canonical definition to state claims against.
-/

/-! ## A392132.P11848205411502975783

`A070289(n!)-A001222(n+1)`
-/

namespace A392132.P11848205411502975783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070289 (Nat.factorial n) - A001222 (n + 1)

end

end A392132.P11848205411502975783

/-!
# A392133: a(n) is the permanent of the symmetric n X n matrix M defined by M(i,j) = gcd(2i-1,2j-1) for 1 <= i,j <= n.

The programs for A392133, there is no canonical definition to state claims against.
-/

/-! ## A392133.P18080421791624428161

`A032544(∑[n]²+2)`
-/

namespace A392133.P18080421791624428161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032544 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2)

end

end A392133.P18080421791624428161

/-!
# A392134: Achilles numbers that are neither 4-free nor 4-full.

The programs for A392134, there is no canonical definition to state claims against.
-/

/-! ## A392134.P10163812302023530431

`∪[A392907(n+1), A392908(n+1)]`
-/

namespace A392134.P10163812302023530431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392134.P10163812302023530431

/-! ## A392134.P14583915751096111067

`∩[A052486(n+1), A391115(n+1)]`
-/

namespace A392134.P14583915751096111067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392134.P14583915751096111067

/-! ## A392134.P2716598826972205340

`∩[A389959(n+1), A391115(n+1)]`
-/

namespace A392134.P2716598826972205340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392134.P2716598826972205340

/-!
# A392137: a(n) = 5*a(n-1) + 2*5^n - 1, a(0) = 0.

The programs for A392137, the canonical program `A392137.P10162217843878784996` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392137 has offset 0).

The definition of A392137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+2*5^n-1` (program `A392137.P10162217843878784996`, by `A392137.P10162217843878784996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392137.P9178448721567183801

`ogf((9x-5x^2)/(1-11x+35x^2-25x^3))`
-/

namespace A392137.P9178448721567183801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -5] [1, -11, 35, -25] n

end

end A392137.P9178448721567183801

namespace A392137

/-- `ogf((9x-5x^2)/(1-11x+35x^2-25x^3))` -/
def P9178448721567183801.Spec : Prop :=
  ∀ n, P9178448721567183801.a n = A392137 n

end A392137

/-! ## A392137.P10162217843878784996

`5*a(n-1)+2*5^n-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392137

/-- `5*a(n-1)+2*5^n-1` -/
def P10162217843878784996.Spec : Prop :=
  ∀ n, P10162217843878784996.a n = A392137 n

theorem P10162217843878784996.correct : P10162217843878784996.Spec := by
  intro n
  simp only [A392137]

end A392137

/-! ## A392137.P9939537866839744357

`2*n*5^n-(5^n-1)/4`
-/

namespace A392137.P9939537866839744357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * 5 ^ n : ℚ) - ((5 ^ n : ℤ) - 1 : ℚ) / 4

end

end A392137.P9939537866839744357

namespace A392137

/-- `2*n*5^n-(5^n-1)/4` -/
def P9939537866839744357.Spec : Prop :=
  ∀ n, P9939537866839744357.a n = (A392137 n : ℚ)

theorem P9939537866839744357.correct : P9939537866839744357.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A392137, Nat.add_sub_cancel, A392137.P9939537866839744357.a, A392137.P10162217843878784996.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A392137, Nat.add_sub_cancel, A392137.P9939537866839744357.a, A392137.P10162217843878784996.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A392137

/-!
# A392138: a(n) = 7*a(n-1) + 2*7^n - 1, a(0) = 0.

The programs for A392138, the canonical program `A392138.P9581258514697756988` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392138 has offset 0).

The definition of A392138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+2*7^n-1` (program `A392138.P9581258514697756988`, by `A392138.P9581258514697756988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392138.P9581258514697756988

`7*a(n-1)+2*7^n-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392138

/-- `7*a(n-1)+2*7^n-1` -/
def P9581258514697756988.Spec : Prop :=
  ∀ n, P9581258514697756988.a n = A392138 n

theorem P9581258514697756988.correct : P9581258514697756988.Spec := by
  intro n
  simp only [A392138]

end A392138

/-! ## A392138.P2977400115033533655

`2*n*7^n-(7^n-1)/6`
-/

namespace A392138.P2977400115033533655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * 7 ^ n : ℚ) - ((7 ^ n : ℤ) - 1 : ℚ) / 6

end

end A392138.P2977400115033533655

namespace A392138

/-- `2*n*7^n-(7^n-1)/6` -/
def P2977400115033533655.Spec : Prop :=
  ∀ n, P2977400115033533655.a n = (A392138 n : ℚ)

theorem P2977400115033533655.correct : P2977400115033533655.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A392138, Nat.add_sub_cancel, A392138.P2977400115033533655.a, A392138.P9581258514697756988.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A392138, Nat.add_sub_cancel, A392138.P2977400115033533655.a, A392138.P9581258514697756988.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A392138

/-!
# A392139: Number of ways to write n^4 as an ordered sum of n fourth powers of integers.

The programs for A392139, there is no canonical definition to state claims against.
-/

/-! ## A392139.P14065179788547823592

`∑[∑[A094544(A090912(n+1))]]`
-/

namespace A392139.P14065179788547823592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094544 (A090912 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392139.P14065179788547823592

/-! ## A392139.P18140693860602347868

`A239455(A369143(n))+A005153(n+1)`
-/

namespace A392139.P18140693860602347868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239455 (A369143 n).toNat + A005153 (n + 1)

end

end A392139.P18140693860602347868

/-!
# A392142: Starting with a(1) = 1, each term is obtained by doubling the previous term and then deleting repeated digits, keeping only the first occurrence of each digit.

The programs for A392142, there is no canonical definition to state claims against.
-/

/-! ## A392142.P9148497532410612817

`A370748(n+1)%A213300(2*n)`
-/

namespace A392142.P9148497532410612817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370748 (n + 1)) (A213300 (2 * n))

end

end A392142.P9148497532410612817

/-!
# A392143: a(n) = (n^(n - 1) - 1)^n.

The programs for A392143, the canonical program `A392143.P9176097518162991182` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392143 has offset 1).

The definition of A392143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^n-1)^(n+1)` (program `A392143.P9176097518162991182`, by `A392143.P9176097518162991182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392143.P9176097518162991182

`((n+1)^n-1)^(n+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392143

/-- `((n+1)^n-1)^(n+1)` -/
def P9176097518162991182.Spec : Prop :=
  ∀ n, P9176097518162991182.a n = A392143 (n + 1)

theorem P9176097518162991182.correct : P9176097518162991182.Spec := by
  intro n
  simp only [A392143, Nat.add_sub_cancel]

end A392143

/-!
# A392163: Terms of A055932 that are products of two or more consecutive composite integers.

The programs for A392163, there is no canonical definition to state claims against.
-/

/-! ## A392163.P17373768981882879629

`A385189(A218556(n+5)+1)`
-/

namespace A392163.P17373768981882879629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385189 (A218556 (n + 5) + 1).toNat

end

end A392163.P17373768981882879629

/-! ## A392163.P14398808313144338238

`A385189(n+5)+A048146(A005012(n))`
-/

namespace A392163.P14398808313144338238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385189 (n + 5) + A048146 (A005012 n).toNat

end

end A392163.P14398808313144338238

/-!
# A392164: a(n) is the size of the largest subset S of {1,...,N} such that every element of S+S is squarefree.

The programs for A392164, there is no canonical definition to state claims against.
-/

/-! ## A392164.P8106018000653297392

`A004218(A291343(n+1))`
-/

namespace A392164.P8106018000653297392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A291343 (n + 1)).toNat

end

end A392164.P8106018000653297392

/-! ## A392164.P17971134423468954293

`A055640(A291343(n+1)-A291293(n+2))`
-/

namespace A392164.P17971134423468954293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A291343 (n + 1) - A291293 (n + 2)).toNat

end

end A392164.P17971134423468954293

/-! ## A392164.P13086478638053141213

`A236678(A090702(n+2))`
-/

namespace A392164.P13086478638053141213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236678 (A090702 (n + 2)).toNat

end

end A392164.P13086478638053141213

/-! ## A392164.P5122217031721636360

`∑[A140820(A144255(n+1))]`
-/

namespace A392164.P5122217031721636360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140820 (A144255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392164.P5122217031721636360

/-! ## A392164.P2341615253191041852

`∑[A088517(n+1)*A156731(3*n+5)]`
-/

namespace A392164.P2341615253191041852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (n + 1) * A156731 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392164.P2341615253191041852

/-!
# A392166: The Dedekind psi function value of the smallest number whose square is divisible by n.

The programs for A392166, the canonical program `A392166.P416411638160611915` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392166 has offset 1).

The definition of A392166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392166.P416411638160611915

`A001615(A019554(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A392166

/-- `A001615(A019554(n+1))` -/
def P416411638160611915.Spec : Prop :=
  ∀ n, P416411638160611915.a n = A392166 (n + 1)

theorem P416411638160611915.correct : P416411638160611915.Spec := by
  intro n
  simp only [A392166, Nat.add_sub_cancel]

end A392166

/-! ## A392166.P14340127878293877509

`∑{d}[∏{p}[n+1, #], (n+1)/#]/∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A392166.P14340127878293877509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) / ((∏ p ∈ Nat.primeFactors (f3 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

end

end A392166.P14340127878293877509

namespace A392166

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]/∏{p}[n+1, #^val(n+1, #²)]` -/
def P14340127878293877509.Spec : Prop :=
  ∀ n, P14340127878293877509.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P17189617774260383545

`(n+1)/(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])*∏{p}[1+n, #+1]`
-/

namespace A392166.P17189617774260383545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℚ)

end

end A392166.P17189617774260383545

namespace A392166

/-- `(n+1)/(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])*∏{p}[1+n, #+1]` -/
def P17189617774260383545.Spec : Prop :=
  ∀ n, P17189617774260383545.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P6660785488172336651

`A001615((1+n)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A392166.P6660785488172336651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A392166.P6660785488172336651

namespace A392166

/-- `A001615((1+n)/∏{p}[n+1, #^val(n+1, #²)])` -/
def P6660785488172336651.Spec : Prop :=
  ∀ n, P6660785488172336651.a n = A392166 (n + 1)

end A392166

/-! ## A392166.P1285721446132809021

`A181797(n+1)/(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])`
-/

namespace A392166.P1285721446132809021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℚ)

end

end A392166.P1285721446132809021

namespace A392166

/-- `A181797(n+1)/(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])` -/
def P1285721446132809021.Spec : Prop :=
  ∀ n, P1285721446132809021.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P11144800209596084417

`A048250(n+1)*A295657(n+1)`
-/

namespace A392166.P11144800209596084417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A295657 (n + 1)

end

end A392166.P11144800209596084417

namespace A392166

/-- `A048250(n+1)*A295657(n+1)` -/
def P11144800209596084417.Spec : Prop :=
  ∀ n, P11144800209596084417.a n = A392166 (n + 1)

end A392166

/-! ## A392166.P16348336176514712779

`A001615(n+1)/A000188(n+1)`
-/

namespace A392166.P16348336176514712779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ)

end

end A392166.P16348336176514712779

namespace A392166

/-- `A001615(n+1)/A000188(n+1)` -/
def P16348336176514712779.Spec : Prop :=
  ∀ n, P16348336176514712779.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P6764703649172795749

`A000082(n+1)/A355264(n+1)`
-/

namespace A392166.P6764703649172795749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A355264 (n + 1) : ℚ)

end

end A392166.P6764703649172795749

namespace A392166

/-- `A000082(n+1)/A355264(n+1)` -/
def P6764703649172795749.Spec : Prop :=
  ∀ n, P6764703649172795749.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P1369023610290889306

`A392168(n+1)/A019554(n+1)`
-/

namespace A392166.P1369023610290889306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392168 (n + 1) : ℚ) / (A019554 (n + 1) : ℚ)

end

end A392166.P1369023610290889306

namespace A392166

/-- `A392168(n+1)/A019554(n+1)` -/
def P1369023610290889306.Spec : Prop :=
  ∀ n, P1369023610290889306.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P17227899264620703204

`A181797(n+1)/A355261(n+1)`
-/

namespace A392166.P17227899264620703204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (A355261 (n + 1) : ℚ)

end

end A392166.P17227899264620703204

namespace A392166

/-- `A181797(n+1)/A355261(n+1)` -/
def P17227899264620703204.Spec : Prop :=
  ∀ n, P17227899264620703204.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P79945889216788880

`A390752(n+1)/A390753(n+1)*A392167(n+1)`
-/

namespace A392166.P79945889216788880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390752 (n + 1) : ℚ) / (A390753 (n + 1) : ℚ) * (A392167 (n + 1) : ℚ)

end

end A392166.P79945889216788880

namespace A392166

/-- `A390752(n+1)/A390753(n+1)*A392167(n+1)` -/
def P79945889216788880.Spec : Prop :=
  ∀ n, P79945889216788880.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P7067573481545287198

`A392167(A355264(n+1))`
-/

namespace A392166.P7067573481545287198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392167 (A355264 (n + 1)).toNat

end

end A392166.P7067573481545287198

namespace A392166

/-- `A392167(A355264(n+1))` -/
def P7067573481545287198.Spec : Prop :=
  ∀ n, P7067573481545287198.a n = A392166 (n + 1)

end A392166

/-! ## A392166.P3322775941015856939

`A392167((n+1)*A000188(n+1))`
-/

namespace A392166.P3322775941015856939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392167 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A392166.P3322775941015856939

namespace A392166

/-- `A392167((n+1)*A000188(n+1))` -/
def P3322775941015856939.Spec : Prop :=
  ∀ n, P3322775941015856939.a n = A392166 (n + 1)

end A392166

/-! ## A392166.P8202486643979967197

`A392168(n+1)/A327172(A327171(n+1))`
-/

namespace A392166.P8202486643979967197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392168 (n + 1) : ℚ) / (A327172 (A327171 (n + 1)).toNat : ℚ)

end

end A392166.P8202486643979967197

namespace A392166

/-- `A392168(n+1)/A327172(A327171(n+1))` -/
def P8202486643979967197.Spec : Prop :=
  ∀ n, P8202486643979967197.a n = (A392166 (n + 1) : ℚ)

end A392166

/-! ## A392166.P9949174052338334042

`A001616(A053143(n+1))`
-/

namespace A392166.P9949174052338334042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A053143 (n + 1)).toNat

end

end A392166.P9949174052338334042

namespace A392166

/-- `A001616(A053143(n+1))` -/
def P9949174052338334042.Spec : Prop :=
  ∀ n, P9949174052338334042.a n = A392166 (n + 1)

end A392166

/-! ## A392166.P5767514566602653954

`A001616((n+1)*A007913(n+1))`
-/

namespace A392166.P5767514566602653954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 ((n + 1 : ℤ) * A007913 (n + 1)).toNat

end

end A392166.P5767514566602653954

namespace A392166

/-- `A001616((n+1)*A007913(n+1))` -/
def P5767514566602653954.Spec : Prop :=
  ∀ n, P5767514566602653954.a n = A392166 (n + 1)

end A392166

/-! ## A392166.P12253442623048081677

`A392167((n+1)*A019555(n+1))`
-/

namespace A392166.P12253442623048081677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392167 ((n + 1 : ℤ) * A019555 (n + 1)).toNat

end

end A392166.P12253442623048081677

namespace A392166

/-- `A392167((n+1)*A019555(n+1))` -/
def P12253442623048081677.Spec : Prop :=
  ∀ n, P12253442623048081677.a n = A392166 (n + 1)

end A392166

/-! ## A392166.P6292502577597772990

`A001615(A019555((n+1)*A019555(n+1)))`
-/

namespace A392166.P6292502577597772990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A019555 ((n + 1 : ℤ) * A019555 (n + 1)).toNat).toNat

end

end A392166.P6292502577597772990

namespace A392166

/-- `A001615(A019555((n+1)*A019555(n+1)))` -/
def P6292502577597772990.Spec : Prop :=
  ∀ n, P6292502577597772990.a n = A392166 (n + 1)

end A392166

/-!
# A392167: The Dedekind psi function value of the smallest number whose cube is divisible by n.

The programs for A392167, the canonical program `A392167.P17146361155502720143` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392167 has offset 1).

The definition of A392167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019555, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392167.P17146361155502720143

`A001615(A019555(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A392167

/-- `A001615(A019555(n+1))` -/
def P17146361155502720143.Spec : Prop :=
  ∀ n, P17146361155502720143.a n = A392167 (n + 1)

theorem P17146361155502720143.correct : P17146361155502720143.Spec := by
  intro n
  simp only [A392167, Nat.add_sub_cancel]

end A392167

/-! ## A392167.P12973550233109147092

`A001615(A254733(n+1)-(n+1))`
-/

namespace A392167.P12973550233109147092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A254733 (n + 1) - (n + 1 : ℤ)).toNat

end

end A392167.P12973550233109147092

namespace A392167

/-- `A001615(A254733(n+1)-(n+1))` -/
def P12973550233109147092.Spec : Prop :=
  ∀ n, P12973550233109147092.a n = A392167 (n + 1)

theorem P12973550233109147092.correct : P12973550233109147092.Spec := by
  intro n
  simp only [A392167, Nat.add_sub_cancel, A392167.P12973550233109147092.a, A392167.P17146361155502720143.a, A001615, A001615.P12078511981713404634.a, A019555, A019555.P8996553868709767269.a, A254733, A254733.P14747783543240587922.a, A000189, A000189.P11210685475351648118.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053149, A053149.P4125189005957149122.a, A048798, A048798.P11871248388947828360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392167

/-! ## A392167.P1074189572006868629

`A001615((n+1)/A000189(n+1))`
-/

namespace A392167.P1074189572006868629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A392167.P1074189572006868629

namespace A392167

/-- `A001615((n+1)/A000189(n+1))` -/
def P1074189572006868629.Spec : Prop :=
  ∀ n, P1074189572006868629.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P5034886460506526377

`A392166(A000188(n+1)*A015053(n+1))`
-/

namespace A392167.P5034886460506526377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A000188 (n + 1) * A015053 (n + 1)).toNat

end

end A392167.P5034886460506526377

namespace A392167

/-- `A392166(A000188(n+1)*A015053(n+1))` -/
def P5034886460506526377.Spec : Prop :=
  ∀ n, P5034886460506526377.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P742272586773297714

`A390753(n+1)/A390752(n+1)*A392166(n+1)`
-/

namespace A392167.P742272586773297714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390753 (n + 1) : ℚ) / (A390752 (n + 1) : ℚ) * (A392166 (n + 1) : ℚ)

end

end A392167.P742272586773297714

namespace A392167

/-- `A390753(n+1)/A390752(n+1)*A392166(n+1)` -/
def P742272586773297714.Spec : Prop :=
  ∀ n, P742272586773297714.a n = (A392167 (n + 1) : ℚ)

end A392167

/-! ## A392167.P4686690730085482375

`A390753(n+1)/A390754(n+1)*A392169(n+1)`
-/

namespace A392167.P4686690730085482375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390753 (n + 1) : ℚ) / (A390754 (n + 1) : ℚ) * (A392169 (n + 1) : ℚ)

end

end A392167.P4686690730085482375

namespace A392167

/-- `A390753(n+1)/A390754(n+1)*A392169(n+1)` -/
def P4686690730085482375.Spec : Prop :=
  ∀ n, P4686690730085482375.a n = (A392167 (n + 1) : ℚ)

end A392167

/-! ## A392167.P8897895904929733110

`A001615(A015053((n+1)²))`
-/

namespace A392167.P8897895904929733110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A015053 ((n + 1) ^ 2)).toNat

end

end A392167.P8897895904929733110

namespace A392167

/-- `A001615(A015053((n+1)²))` -/
def P8897895904929733110.Spec : Prop :=
  ∀ n, P8897895904929733110.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P3742008407089809541

`A392166(A019555((n+1)²))`
-/

namespace A392167.P3742008407089809541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A019555 ((n + 1) ^ 2)).toNat

end

end A392167.P3742008407089809541

namespace A392167

/-- `A392166(A019555((n+1)²))` -/
def P3742008407089809541.Spec : Prop :=
  ∀ n, P3742008407089809541.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P9687547966406499862

`A392166(A015053((n+1)²)²)`
-/

namespace A392167.P9687547966406499862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A015053 ((n + 1) ^ 2) ^ 2).toNat

end

end A392167.P9687547966406499862

namespace A392167

/-- `A392166(A015053((n+1)²)²)` -/
def P9687547966406499862.Spec : Prop :=
  ∀ n, P9687547966406499862.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P11991962976619714900

`A392166(A000188((n+1)*A019555(n+1)))`
-/

namespace A392167.P11991962976619714900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A000188 ((n + 1 : ℤ) * A019555 (n + 1)).toNat).toNat

end

end A392167.P11991962976619714900

namespace A392167

/-- `A392166(A000188((n+1)*A019555(n+1)))` -/
def P11991962976619714900.Spec : Prop :=
  ∀ n, P11991962976619714900.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P4980034310529640488

`A392166(A019554((n+1)*A015053(n+1)))`
-/

namespace A392167.P4980034310529640488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A019554 ((n + 1 : ℤ) * A015053 (n + 1)).toNat).toNat

end

end A392167.P4980034310529640488

namespace A392167

/-- `A392166(A019554((n+1)*A015053(n+1)))` -/
def P4980034310529640488.Spec : Prop :=
  ∀ n, P4980034310529640488.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P5594649957272229219

`A392166(A015053(n+1)*A019555(n+1))`
-/

namespace A392167.P5594649957272229219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A015053 (n + 1) * A019555 (n + 1)).toNat

end

end A392167.P5594649957272229219

namespace A392167

/-- `A392166(A015053(n+1)*A019555(n+1))` -/
def P5594649957272229219.Spec : Prop :=
  ∀ n, P5594649957272229219.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P9693685179867556199

`A392166(A019554((n+1)*A019555(n+1)))`
-/

namespace A392167.P9693685179867556199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A019554 ((n + 1 : ℤ) * A019555 (n + 1)).toNat).toNat

end

end A392167.P9693685179867556199

namespace A392167

/-- `A392166(A019554((n+1)*A019555(n+1)))` -/
def P9693685179867556199.Spec : Prop :=
  ∀ n, P9693685179867556199.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P9730992899907427625

`A392166(A019555(n+1)*A019555(n+1))`
-/

namespace A392167.P9730992899907427625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A019555 (n + 1) * A019555 (n + 1)).toNat

end

end A392167.P9730992899907427625

namespace A392167

/-- `A392166(A019555(n+1)*A019555(n+1))` -/
def P9730992899907427625.Spec : Prop :=
  ∀ n, P9730992899907427625.a n = A392167 (n + 1)

end A392167

/-! ## A392167.P15986982243639325867

`A392166(A102631(A015053((n+1)*(n+1))))`
-/

namespace A392167.P15986982243639325867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A102631 (A015053 ((n + 1) * (n + 1))).toNat).toNat

end

end A392167.P15986982243639325867

namespace A392167

/-- `A392166(A102631(A015053((n+1)*(n+1))))` -/
def P15986982243639325867.Spec : Prop :=
  ∀ n, P15986982243639325867.a n = A392167 (n + 1)

end A392167

/-!
# A392168: The Dedekind psi function value of the smallest square divisible by n.

The programs for A392168, the canonical program `A392168.P7882618173264057118` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392168 has offset 1).

The definition of A392168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392168.P7882618173264057118

`A001615(A053143(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A392168

/-- `A001615(A053143(n+1))` -/
def P7882618173264057118.Spec : Prop :=
  ∀ n, P7882618173264057118.a n = A392168 (n + 1)

theorem P7882618173264057118.correct : P7882618173264057118.Spec := by
  intro n
  simp only [A392168, Nat.add_sub_cancel]

end A392168

/-! ## A392168.P10845639698445251150

`∑{d}[∏{p}[n+1, #], (n+1)²/#]/∏{p}[n+1, #^val(n+1, #²)]²`
-/

namespace A392168.P10845639698445251150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)) / (((∏ p ∈ Nat.primeFactors (f3 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ)

end

end A392168.P10845639698445251150

namespace A392168

/-- `∑{d}[∏{p}[n+1, #], (n+1)²/#]/∏{p}[n+1, #^val(n+1, #²)]²` -/
def P10845639698445251150.Spec : Prop :=
  ∀ n, P10845639698445251150.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P1231218376946944804

`∑{d}[∏{p}[n+1, #], (n+1)/#]*A007913(n+1)`
-/

namespace A392168.P1231218376946944804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * (A007913 (n + 1) : ℚ)

end

end A392168.P1231218376946944804

namespace A392168

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]*A007913(n+1)` -/
def P1231218376946944804.Spec : Prop :=
  ∀ n, P1231218376946944804.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P13405588644298147614

`((1+n)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #]*A048250(n+1)`
-/

namespace A392168.P13405588644298147614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2 / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A048250 (n + 1) : ℚ)

end

end A392168.P13405588644298147614

namespace A392168

/-- `((1+n)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #]*A048250(n+1)` -/
def P13405588644298147614.Spec : Prop :=
  ∀ n, P13405588644298147614.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P12184949188131159084

`A000082(A019554(n+1))`
-/

namespace A392168.P12184949188131159084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (A019554 (n + 1)).toNat

end

end A392168.P12184949188131159084

namespace A392168

/-- `A000082(A019554(n+1))` -/
def P12184949188131159084.Spec : Prop :=
  ∀ n, P12184949188131159084.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P16582096240564873926

`A181797(A350390(n+1))`
-/

namespace A392168.P16582096240564873926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (A350390 (n + 1)).toNat

end

end A392168.P16582096240564873926

namespace A392168

/-- `A181797(A350390(n+1))` -/
def P16582096240564873926.Spec : Prop :=
  ∀ n, P16582096240564873926.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P3010671184959080931

`A001615(n+1)*A007913(n+1)`
-/

namespace A392168.P3010671184959080931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A007913 (n + 1)

end

end A392168.P3010671184959080931

namespace A392168

/-- `A001615(n+1)*A007913(n+1)` -/
def P3010671184959080931.Spec : Prop :=
  ∀ n, P3010671184959080931.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P1985480729013486084

`A048250(n+1)*A350390(n+1)`
-/

namespace A392168.P1985480729013486084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A350390 (n + 1)

end

end A392168.P1985480729013486084

namespace A392168

/-- `A048250(n+1)*A350390(n+1)` -/
def P1985480729013486084.Spec : Prop :=
  ∀ n, P1985480729013486084.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P5373388998451498945

`A019554(n+1)*A392166(n+1)`
-/

namespace A392168.P5373388998451498945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A392166 (n + 1)

end

end A392168.P5373388998451498945

namespace A392168

/-- `A019554(n+1)*A392166(n+1)` -/
def P5373388998451498945.Spec : Prop :=
  ∀ n, P5373388998451498945.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P4658033740674983084

`A055229(n+1)*A392170(n+1)`
-/

namespace A392168.P4658033740674983084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A392170 (n + 1)

end

end A392168.P4658033740674983084

namespace A392168

/-- `A055229(n+1)*A392170(n+1)` -/
def P4658033740674983084.Spec : Prop :=
  ∀ n, P4658033740674983084.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P18217412543985242911

`A000082(n+1)/A008833(n+1)`
-/

namespace A392168.P18217412543985242911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ)

end

end A392168.P18217412543985242911

namespace A392168

/-- `A000082(n+1)/A008833(n+1)` -/
def P18217412543985242911.Spec : Prop :=
  ∀ n, P18217412543985242911.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P10370873246571632485

`A181797(n+1)/A336643(n+1)`
-/

namespace A392168.P10370873246571632485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ)

end

end A392168.P10370873246571632485

namespace A392168

/-- `A181797(n+1)/A336643(n+1)` -/
def P10370873246571632485.Spec : Prop :=
  ∀ n, P10370873246571632485.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P7124032757263483695

`A327171(n+1)/A390752(n+1)*A392166(n+1)`
-/

namespace A392168.P7124032757263483695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A390752 (n + 1) : ℚ) * (A392166 (n + 1) : ℚ)

end

end A392168.P7124032757263483695

namespace A392168

/-- `A327171(n+1)/A390752(n+1)*A392166(n+1)` -/
def P7124032757263483695.Spec : Prop :=
  ∀ n, P7124032757263483695.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P14317295414252062723

`A327171(n+1)/A390754(n+1)*A392169(n+1)`
-/

namespace A392168.P14317295414252062723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A390754 (n + 1) : ℚ) * (A392169 (n + 1) : ℚ)

end

end A392168.P14317295414252062723

namespace A392168

/-- `A327171(n+1)/A390754(n+1)*A392169(n+1)` -/
def P14317295414252062723.Spec : Prop :=
  ∀ n, P14317295414252062723.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P3736673979579758819

`A327171(n+1)/A390755(n+1)*A392170(n+1)`
-/

namespace A392168.P3736673979579758819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A390755 (n + 1) : ℚ) * (A392170 (n + 1) : ℚ)

end

end A392168.P3736673979579758819

namespace A392168

/-- `A327171(n+1)/A390755(n+1)*A392170(n+1)` -/
def P3736673979579758819.Spec : Prop :=
  ∀ n, P3736673979579758819.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P8299714916508160075

`(n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]²*A001615(n+1)`
-/

namespace A392168.P8299714916508160075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (((∑ k ∈ Finset.range (f1 n + 1), (⌊((k + 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋ - ⌊(((k + 1) ^ 2 : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋)) ^ 2 : ℤ) : ℚ) * (A001615 (n + 1) : ℚ)

end

end A392168.P8299714916508160075

namespace A392168

/-- `(n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]²*A001615(n+1)` -/
def P8299714916508160075.Spec : Prop :=
  ∀ n, P8299714916508160075.a n = (A392168 (n + 1) : ℚ)

end A392168

/-! ## A392168.P4041797424427322758

`A158523((n+1)*A007913(n+1))`
-/

namespace A392168.P4041797424427322758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158523 ((n + 1 : ℤ) * A007913 (n + 1)).toNat

end

end A392168.P4041797424427322758

namespace A392168

/-- `A158523((n+1)*A007913(n+1))` -/
def P4041797424427322758.Spec : Prop :=
  ∀ n, P4041797424427322758.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P12842092373537198857

`A001615(A019554(n+1)²)`
-/

namespace A392168.P12842092373537198857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A019554 (n + 1) ^ 2).toNat

end

end A392168.P12842092373537198857

namespace A392168

/-- `A001615(A019554(n+1)²)` -/
def P12842092373537198857.Spec : Prop :=
  ∀ n, P12842092373537198857.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P7044124430368761482

`A001615((n+1)*A007913(n+1))`
-/

namespace A392168.P7044124430368761482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 ((n + 1 : ℤ) * A007913 (n + 1)).toNat

end

end A392168.P7044124430368761482

namespace A392168

/-- `A001615((n+1)*A007913(n+1))` -/
def P7044124430368761482.Spec : Prop :=
  ∀ n, P7044124430368761482.a n = A392168 (n + 1)

end A392168

/-! ## A392168.P9507613536440805937

`A001615(A019554(n+1)*A019554(n+1))`
-/

namespace A392168.P9507613536440805937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A019554 (n + 1) * A019554 (n + 1)).toNat

end

end A392168.P9507613536440805937

namespace A392168

/-- `A001615(A019554(n+1)*A019554(n+1))` -/
def P9507613536440805937.Spec : Prop :=
  ∀ n, P9507613536440805937.a n = A392168 (n + 1)

theorem P9507613536440805937.correct : P9507613536440805937.Spec := by
  intro n
  simp only [A392168, Nat.add_sub_cancel, A392168.P9507613536440805937.a, A392168.P7882618173264057118.a, A001615, A001615.P12078511981713404634.a, A019554, A019554.P934973065694448032.a, A053143, A053143.P2973590149006615306.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A392168

/-!
# A392169: The Dedekind psi function value of the smallest cube divisible by n.

The programs for A392169, the canonical program `A392169.P12898871919302007808` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392169 has offset 1).

The definition of A392169 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392169.P12898871919302007808

`A001615(A053149(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A392169

/-- `A001615(A053149(n+1))` -/
def P12898871919302007808.Spec : Prop :=
  ∀ n, P12898871919302007808.a n = A392169 (n + 1)

theorem P12898871919302007808.correct : P12898871919302007808.Spec := by
  intro n
  simp only [A392169, Nat.add_sub_cancel]

end A392169

/-! ## A392169.P17828065918627770064

`A033196(A019555(n+1))`
-/

namespace A392169.P17828065918627770064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033196 (A019555 (n + 1)).toNat

end

end A392169.P17828065918627770064

namespace A392169

/-- `A033196(A019555(n+1))` -/
def P17828065918627770064.Spec : Prop :=
  ∀ n, P17828065918627770064.a n = A392169 (n + 1)

end A392169

/-! ## A392169.P9929213472793241053

`A001615(n+1)*A048798(n+1)`
-/

namespace A392169.P9929213472793241053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A048798 (n + 1)

end

end A392169.P9929213472793241053

namespace A392169

/-- `A001615(n+1)*A048798(n+1)` -/
def P9929213472793241053.Spec : Prop :=
  ∀ n, P9929213472793241053.a n = A392169 (n + 1)

end A392169

/-! ## A392169.P10751134716845533114

`A019555(n+1)*A019555(n+1)*A392167(n+1)`
-/

namespace A392169.P10751134716845533114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) * A019555 (n + 1) * A392167 (n + 1)

end

end A392169.P10751134716845533114

namespace A392169

/-- `A019555(n+1)*A019555(n+1)*A392167(n+1)` -/
def P10751134716845533114.Spec : Prop :=
  ∀ n, P10751134716845533114.a n = A392169 (n + 1)

end A392169

/-! ## A392169.P6603627448746003060

`A390754(n+1)/A390753(n+1)*A392167(n+1)`
-/

namespace A392169.P6603627448746003060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390754 (n + 1) : ℚ) / (A390753 (n + 1) : ℚ) * (A392167 (n + 1) : ℚ)

end

end A392169.P6603627448746003060

namespace A392169

/-- `A390754(n+1)/A390753(n+1)*A392167(n+1)` -/
def P6603627448746003060.Spec : Prop :=
  ∀ n, P6603627448746003060.a n = (A392169 (n + 1) : ℚ)

end A392169

/-!
# A392170: The Dedekind psi function value of the smallest powerful number that is a multiple of n.

The programs for A392170, the canonical program `A392170.P11667223152530943360` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392170 has offset 1).

The definition of A392170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392170.P11667223152530943360

`A001615(A197863(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A392170

/-- `A001615(A197863(n+1))` -/
def P11667223152530943360.Spec : Prop :=
  ∀ n, P11667223152530943360.a n = A392170 (n + 1)

theorem P11667223152530943360.correct : P11667223152530943360.Spec := by
  intro n
  simp only [A392170, Nat.add_sub_cancel]

end A392170

/-! ## A392170.P10462632783329284701

`∑{d}[∏{p}[n+1, #], (n+1)/#]*∏{p}[n+1, lcm(n+1, #²)/(n+1)]`
-/

namespace A392170.P10462632783329284701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * (∏ p ∈ Nat.primeFactors (f3 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))

end

end A392170.P10462632783329284701

namespace A392170

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]*∏{p}[n+1, lcm(n+1, #²)/(n+1)]` -/
def P10462632783329284701.Spec : Prop :=
  ∀ n, P10462632783329284701.a n = (A392170 (n + 1) : ℚ)

end A392170

/-! ## A392170.P6494501392879026767

`∑{d}[∏{p}[n+1, #], (n+1)²/#]/gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])`
-/

namespace A392170.P6494501392879026767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f3 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℚ)

end

end A392170.P6494501392879026767

namespace A392170

/-- `∑{d}[∏{p}[n+1, #], (n+1)²/#]/gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])` -/
def P6494501392879026767.Spec : Prop :=
  ∀ n, P6494501392879026767.a n = (A392170 (n + 1) : ℚ)

end A392170

/-! ## A392170.P1047470476797733750

`∑{d}[∏{p}[n+1, #], (n+1)²/#]/A057521(n+1)`
-/

namespace A392170.P1047470476797733750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)) / (A057521 (n + 1) : ℚ)

end

end A392170.P1047470476797733750

namespace A392170

/-- `∑{d}[∏{p}[n+1, #], (n+1)²/#]/A057521(n+1)` -/
def P1047470476797733750.Spec : Prop :=
  ∀ n, P1047470476797733750.a n = (A392170 (n + 1) : ℚ)

end A392170

/-! ## A392170.P277943459579496779

`∏{p}[n+1, lcm(n+1, #²)/(n+1)]*A001615(n+1)`
-/

namespace A392170.P277943459579496779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)) * (A001615 (n + 1) : ℚ)

end

end A392170.P277943459579496779

namespace A392170

/-- `∏{p}[n+1, lcm(n+1, #²)/(n+1)]*A001615(n+1)` -/
def P277943459579496779.Spec : Prop :=
  ∀ n, P277943459579496779.a n = (A392170 (n + 1) : ℚ)

end A392170

/-! ## A392170.P6498205966045798583

`A001615(n+1)*A055231(n+1)`
-/

namespace A392170.P6498205966045798583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A055231 (n + 1)

end

end A392170.P6498205966045798583

namespace A392170

/-- `A001615(n+1)*A055231(n+1)` -/
def P6498205966045798583.Spec : Prop :=
  ∀ n, P6498205966045798583.a n = A392170 (n + 1)

end A392170

/-! ## A392170.P12620417341188067993

`A000082(n+1)/A057521(n+1)`
-/

namespace A392170.P12620417341188067993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A057521 (n + 1) : ℚ)

end

end A392170.P12620417341188067993

namespace A392170

/-- `A000082(n+1)/A057521(n+1)` -/
def P12620417341188067993.Spec : Prop :=
  ∀ n, P12620417341188067993.a n = (A392170 (n + 1) : ℚ)

end A392170

/-! ## A392170.P3903919608956963717

`A181797(n+1)/A071773(n+1)`
-/

namespace A392170.P3903919608956963717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A392170.P3903919608956963717

namespace A392170

/-- `A181797(n+1)/A071773(n+1)` -/
def P3903919608956963717.Spec : Prop :=
  ∀ n, P3903919608956963717.a n = (A392170 (n + 1) : ℚ)

end A392170

/-! ## A392170.P4122823124409827451

`A392168(n+1)/A055229(n+1)`
-/

namespace A392170.P4122823124409827451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392168 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A392170.P4122823124409827451

namespace A392170

/-- `A392168(n+1)/A055229(n+1)` -/
def P4122823124409827451.Spec : Prop :=
  ∀ n, P4122823124409827451.a n = (A392170 (n + 1) : ℚ)

end A392170

/-! ## A392170.P2477082288865963179

`gcd(A392168(n+1), A392171(n+1))`
-/

namespace A392170.P2477082288865963179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A392168 (n + 1)) (A392171 (n + 1))

end

end A392170.P2477082288865963179

namespace A392170

/-- `gcd(A392168(n+1), A392171(n+1))` -/
def P2477082288865963179.Spec : Prop :=
  ∀ n, (P2477082288865963179.a n : ℤ) = A392170 (n + 1)

end A392170

/-! ## A392170.P1041983426976681082

`A390755(n+1)/A390756(n+1)*A392171(n+1)`
-/

namespace A392170.P1041983426976681082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390755 (n + 1) : ℚ) / (A390756 (n + 1) : ℚ) * (A392171 (n + 1) : ℚ)

end

end A392170.P1041983426976681082

namespace A392170

/-- `A390755(n+1)/A390756(n+1)*A392171(n+1)` -/
def P1041983426976681082.Spec : Prop :=
  ∀ n, P1041983426976681082.a n = (A392170 (n + 1) : ℚ)

end A392170

/-! ## A392170.P14455585260356540891

`A392171((n+1)²)/(n+1)`
-/

namespace A392170.P14455585260356540891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392171 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A392170.P14455585260356540891

namespace A392170

/-- `A392171((n+1)²)/(n+1)` -/
def P14455585260356540891.Spec : Prop :=
  ∀ n, P14455585260356540891.a n = (A392170 (n + 1) : ℚ)

end A392170

/-!
# A392171: The Dedekind psi function value of the smallest cubefull number that is a multiple of n.

The programs for A392171, the canonical program `A392171.P17248236630189717362` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392171 has offset 1).

The definition of A392171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392171.P17248236630189717362

`A001615(A356193(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A392171

/-- `A001615(A356193(n+1))` -/
def P17248236630189717362.Spec : Prop :=
  ∀ n, P17248236630189717362.a n = A392171 (n + 1)

theorem P17248236630189717362.correct : P17248236630189717362.Spec := by
  intro n
  simp only [A392171, Nat.add_sub_cancel]

end A392171

/-! ## A392171.P13077282458024478279

`lcm(n+1, ∏{p}[n+1, #^3])/(n+1)*∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A392171.P13077282458024478279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3) : ℚ) / (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ))

end

end A392171.P13077282458024478279

namespace A392171

/-- `lcm(n+1, ∏{p}[n+1, #^3])/(n+1)*∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P13077282458024478279.Spec : Prop :=
  ∀ n, P13077282458024478279.a n = (A392171 (n + 1) : ℚ)

end A392171

/-! ## A392171.P5450474207520868520

`A001615(n+1)*A360541(n+1)`
-/

namespace A392171.P5450474207520868520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A360541 (n + 1)

end

end A392171.P5450474207520868520

namespace A392171

/-- `A001615(n+1)*A360541(n+1)` -/
def P5450474207520868520.Spec : Prop :=
  ∀ n, P5450474207520868520.a n = A392171 (n + 1)

end A392171

/-! ## A392171.P12059167963893941038

`lcm(A001615(n+1), A033196(A007947(n+1)))`
-/

namespace A392171.P12059167963893941038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001615 (n + 1)) (A033196 (A007947 (n + 1)).toNat)

end

end A392171.P12059167963893941038

namespace A392171

/-- `lcm(A001615(n+1), A033196(A007947(n+1)))` -/
def P12059167963893941038.Spec : Prop :=
  ∀ n, (P12059167963893941038.a n : ℤ) = A392171 (n + 1)

end A392171

/-! ## A392171.P8015765005824223627

`A390756(n+1)/A390755(n+1)*A392170(n+1)`
-/

namespace A392171.P8015765005824223627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390756 (n + 1) : ℚ) / (A390755 (n + 1) : ℚ) * (A392170 (n + 1) : ℚ)

end

end A392171.P8015765005824223627

namespace A392171

/-- `A390756(n+1)/A390755(n+1)*A392170(n+1)` -/
def P8015765005824223627.Spec : Prop :=
  ∀ n, P8015765005824223627.a n = (A392171 (n + 1) : ℚ)

end A392171

/-!
# A392172: Number of regions formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

The programs for A392172, the canonical program `A392172.P17435700186567268442` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392172 has offset 0).

The definition of A392172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392172.P9440334811345706192

`ogf((1+3x+65x^2+109x^3+26x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A392172.P9440334811345706192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 65, 109, 26] [1, -5, 10, -10, 5, -1] n

end

end A392172.P9440334811345706192

namespace A392172

/-- `ogf((1+3x+65x^2+109x^3+26x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9440334811345706192.Spec : Prop :=
  ∀ n, P9440334811345706192.a n = A392172 n

end A392172

/-! ## A392172.P17435700186567268442

`n²*(n*(17*n-18)+15)/2+1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392172

/-- `n²*(n*(17*n-18)+15)/2+1` -/
def P17435700186567268442.Spec : Prop :=
  ∀ n, P17435700186567268442.a n = (A392172 n : ℚ)

end A392172

/-! ## A392172.P6938334736553821802

`A392228(∑[n+1]+4)`
-/

namespace A392172.P6938334736553821802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392228 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A392172.P6938334736553821802

namespace A392172

/-- `A392228(∑[n+1]+4)` -/
def P6938334736553821802.Spec : Prop :=
  ∀ n, P6938334736553821802.a n = A392172 n

end A392172

/-! ## A392172.P17575582312522432359

`record[gcd(A334192(n), A392228(n+3))]`
-/

namespace A392172.P17575582312522432359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334192 n) (A392228 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392172.P17575582312522432359

namespace A392172

/-- `record[gcd(A334192(n), A392228(n+3))]` -/
def P17575582312522432359.Spec : Prop :=
  ∀ n, (P17575582312522432359.a n : ℤ) = A392172 n

end A392172

/-!
# A392173: Total number of vertices in the graph (see A392172) formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

The programs for A392173, the canonical program `A392173.P16232750102715233459` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392173 has offset 0).

The definition of A392173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392173.P316647125843641682

`ogf((4-11x+77x^2+115x^3+19x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A392173.P316647125843641682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -11, 77, 115, 19] [1, -5, 10, -10, 5, -1] n

end

end A392173.P316647125843641682

namespace A392173

/-- `ogf((4-11x+77x^2+115x^3+19x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P316647125843641682.Spec : Prop :=
  ∀ n, P316647125843641682.a n = A392173 n

end A392173

/-! ## A392173.P16232750102715233459

`n*(n*(n*(17*n-18)+3)+8)/2+4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392173

/-- `n*(n*(n*(17*n-18)+3)+8)/2+4` -/
def P16232750102715233459.Spec : Prop :=
  ∀ n, P16232750102715233459.a n = (A392173 n : ℚ)

end A392173

/-! ## A392173.P3666020806504794929

`A392261(∑[n+1]+4)`
-/

namespace A392173.P3666020806504794929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392261 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A392173.P3666020806504794929

namespace A392173

/-- `A392261(∑[n+1]+4)` -/
def P3666020806504794929.Spec : Prop :=
  ∀ n, P3666020806504794929.a n = A392173 n

end A392173

/-!
# A392174: One-fourth of the total number of edges in the graph (see A392172) formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

The programs for A392174, the canonical program `A392174.P10747589443982194111` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392174 has offset 0).

The definition of A392174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392174.P15624322139678581791

`ogf((1-x+34x^2+57x^3+11x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A392174.P15624322139678581791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 34, 57, 11] [1, -5, 10, -10, 5, -1] n

end

end A392174.P15624322139678581791

namespace A392174

/-- `ogf((1-x+34x^2+57x^3+11x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15624322139678581791.Spec : Prop :=
  ∀ n, P15624322139678581791.a n = A392174 n

end A392174

/-! ## A392174.P10747589443982194111

`n²*(n*(17*n-18)+9)/4+n+1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392174

/-- `n²*(n*(17*n-18)+9)/4+n+1` -/
def P10747589443982194111.Spec : Prop :=
  ∀ n, P10747589443982194111.a n = (A392174 n : ℚ)

end A392174

/-! ## A392174.P17918479505659163393

`(A392172(n)+A392173(n)-1)/4`
-/

namespace A392174.P17918479505659163393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392172 n + A392173 n - 1 : ℚ) / 4

end

end A392174.P17918479505659163393

namespace A392174

/-- `(A392172(n)+A392173(n)-1)/4` -/
def P17918479505659163393.Spec : Prop :=
  ∀ n, P17918479505659163393.a n = (A392174 n : ℚ)

end A392174

/-!
# A392175: a(n) = A375516(n) mod n+1.

The programs for A392175, there is no canonical definition to state claims against.
-/

/-! ## A392175.P5597400625084436646

`A122105(n+1)%A334030(A333352(n+1))`
-/

namespace A392175.P5597400625084436646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122105 (n + 1)) (A334030 (A333352 (n + 1)).toNat)

end

end A392175.P5597400625084436646

/-! ## A392175.P2741821147184527535

`A257684(A011782(n+1))%A389080(n+1)`
-/

namespace A392175.P2741821147184527535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257684 (A011782 (n + 1)).toNat) (A389080 (n + 1))

end

end A392175.P2741821147184527535

/-! ## A392175.P6201933171997216776

`A265690(A111907(n+1))%A340081(n+1)`
-/

namespace A392175.P6201933171997216776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265690 (A111907 (n + 1)).toNat) (A340081 (n + 1))

end

end A392175.P6201933171997216776

/-! ## A392175.P7217635535499356595

`A065710(n+3)*A106683(A103297(2*n))`
-/

namespace A392175.P7217635535499356595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (n + 3) * A106683 (A103297 (2 * n)).toNat

end

end A392175.P7217635535499356595

/-! ## A392175.P6493451774498898324

`A005101(A342488(2*(n+2)))%A020639(n+1)`
-/

namespace A392175.P6493451774498898324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005101 (A342488 (2 * (n + 2))).toNat) (A020639 (n + 1))

end

end A392175.P6493451774498898324

/-!
# A392176: Array A(n,k) = (n*k-1)*(n*k-2)/2 (n>=1, k>=1) read by antidiagonals.

The programs for A392176, the canonical program `A392176.P12994811602187650965` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392176 has offset 1).

The definition of A392176 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A392176.anchor (n : ℕ) : (A392176 (n + 1) : ℚ) = (((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1) * ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 2) : ℚ) / 2` in `Proof.A392.A392176`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392176.P12994811602187650965

`((col(n)+1)*(row(n)-col(n)+1)-1)*((col(n)+1)*(row(n)-col(n)+1)-2)/2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392176

/-- `((col(n)+1)*(row(n)-col(n)+1)-1)*((col(n)+1)*(row(n)-col(n)+1)-2)/2` -/
def P12994811602187650965.Spec : Prop :=
  ∀ n, P12994811602187650965.a n = (A392176 (n + 1) : ℚ)

end A392176

/-! ## A392176.P3552791849980243292

`((row(n)-col(n)+1)*(col(n)+1)-1)*((row(n)-col(n)+1)*(col(n)+1)-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392176.P3552791849980243292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) - 1) * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) - 2) : ℚ) / 2

end

end A392176.P3552791849980243292

namespace A392176

/-- `((row(n)-col(n)+1)*(col(n)+1)-1)*((row(n)-col(n)+1)*(col(n)+1)-2)/2` -/
def P3552791849980243292.Spec : Prop :=
  ∀ n, P3552791849980243292.a n = (A392176 (n + 1) : ℚ)

end A392176

/-! ## A392176.P12590430806473155252

`∑{#}[1+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1), #]` with `a(0)=-1`
-/

namespace A392176.P12590430806473155252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  1 + SequenceMachineLib.triUp f1 n + SequenceMachineLib.triUpLeft f1 n - SequenceMachineLib.triUp2Left f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A392176.P12590430806473155252

namespace A392176

/-- `∑{#}[1+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1), #]` -/
def P12590430806473155252.Spec : Prop :=
  ∀ n, (P12590430806473155252.a n : ℤ) = A392176 (n + 1)

end A392176

/-! ## A392176.P629868729631286468

`C(row(n)+(row(n)-col(n))*col(n), 2)`
-/

namespace A392176.P629868729631286468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triRow n : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)).toNat 2

end

end A392176.P629868729631286468

namespace A392176

/-- `C(row(n)+(row(n)-col(n))*col(n), 2)` -/
def P629868729631286468.Spec : Prop :=
  ∀ n, (P629868729631286468.a n : ℤ) = A392176 (n + 1)

end A392176

/-! ## A392176.P10726410848592675471

`C(row(n)-(col(n)-row(n))*col(n), 2)`
-/

namespace A392176.P10726410848592675471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)).toNat 2

end

end A392176.P10726410848592675471

namespace A392176

/-- `C(row(n)-(col(n)-row(n))*col(n), 2)` -/
def P10726410848592675471.Spec : Prop :=
  ∀ n, (P10726410848592675471.a n : ℤ) = A392176 (n + 1)

end A392176

/-! ## A392176.P13983369029203858376

`C(A059036(n), 2)`
-/

namespace A392176.P13983369029203858376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059036 n).toNat 2

end

end A392176.P13983369029203858376

namespace A392176

/-- `C(A059036(n), 2)` -/
def P13983369029203858376.Spec : Prop :=
  ∀ n, (P13983369029203858376.a n : ℤ) = A392176 (n + 1)

end A392176

/-! ## A392176.P6948960211303532425

`C(A003991(n+1)-1, 2)`
-/

namespace A392176.P6948960211303532425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003991 (n + 1) - 1).toNat 2

end

end A392176.P6948960211303532425

namespace A392176

/-- `C(A003991(n+1)-1, 2)` -/
def P6948960211303532425.Spec : Prop :=
  ∀ n, (P6948960211303532425.a n : ℤ) = A392176 (n + 1)

end A392176

/-! ## A392176.P8251148800995788328

`A161680(A059036(n))`
-/

namespace A392176.P8251148800995788328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A059036 n).toNat

end

end A392176.P8251148800995788328

namespace A392176

/-- `A161680(A059036(n))` -/
def P8251148800995788328.Spec : Prop :=
  ∀ n, P8251148800995788328.a n = A392176 (n + 1)

end A392176

/-! ## A392176.P7386879405624599198

`A152947(A003991(n+1))-1`
-/

namespace A392176.P7386879405624599198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A003991 (n + 1)).toNat - 1

end

end A392176.P7386879405624599198

namespace A392176

/-- `A152947(A003991(n+1))-1` -/
def P7386879405624599198.Spec : Prop :=
  ∀ n, P7386879405624599198.a n = A392176 (n + 1)

end A392176

/-! ## A392176.P16059546851198702704

`A161680(A003991(n+1)-1)`
-/

namespace A392176.P16059546851198702704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A003991 (n + 1) - 1).toNat

end

end A392176.P16059546851198702704

namespace A392176

/-- `A161680(A003991(n+1)-1)` -/
def P16059546851198702704.Spec : Prop :=
  ∀ n, P16059546851198702704.a n = A392176 (n + 1)

end A392176

/-!
# A392177: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. Sequence lists squares occupied by a Black knight.

The programs for A392177, there is no canonical definition to state claims against.
-/

/-! ## A392177.P4701635354100898696

`record[A395355(n)]`
-/

namespace A392177.P4701635354100898696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392177.P4701635354100898696

/-! ## A392177.P16491353451559929204

`A395355(2*n)`
-/

namespace A392177.P16491353451559929204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (2 * n)

end

end A392177.P16491353451559929204

/-! ## A392177.P11931594693276402892

`abs(A395355(n+n))`
-/

namespace A392177.P11931594693276402892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 (n + n)|

end

end A392177.P11931594693276402892

/-! ## A392177.P15236175428817640245

`A392178(n+1)-A393449(n)`
-/

namespace A392177.P15236175428817640245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1) - A393449 n

end

end A392177.P15236175428817640245

/-! ## A392177.P14568044889113195247

`A392178(n+1)-A395356(2*n+1)`
-/

namespace A392177.P14568044889113195247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1) - A395356 (2 * n + 1)

end

end A392177.P14568044889113195247

/-! ## A392177.P11495177804352648221

`record[A395357(n)]`
-/

namespace A392177.P11495177804352648221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392177.P11495177804352648221

/-! ## A392177.P7317554258179203022

`lt[gcd(2, A395364(n)), 2]`
-/

namespace A392177.P7317554258179203022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A395364 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392177.P7317554258179203022

/-! ## A392177.P5909062963857929900

`A395357(eq[n, A395357(n)])`
-/

namespace A392177.P5909062963857929900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A392177.P5909062963857929900

/-! ## A392177.P9743231180833802612

`lt[0, A000035(A395364(n))]`
-/

namespace A392177.P9743231180833802612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A395364 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392177.P9743231180833802612

/-! ## A392177.P7154763565777644800

`lt[0, A395486(n)]`
-/

namespace A392177.P7154763565777644800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392177.P7154763565777644800

/-! ## A392177.P16377193281743205811

`eq[n, A395357(A254667(n))]`
-/

namespace A392177.P16377193281743205811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 (A254667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392177.P16377193281743205811

/-!
# A392178: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. Sequence lists squares occupied by a Red knight.

The programs for A392178, there is no canonical definition to state claims against.
-/

/-! ## A392178.P2174487650939546951

`∑[A395351(abs(1-n))]`
-/

namespace A392178.P2174487650939546951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395351 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392178.P2174487650939546951

/-! ## A392178.P16649442658397677799

`record[-A395355(n+1)]`
-/

namespace A392178.P16649442658397677799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A395355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392178.P16649442658397677799

/-! ## A392178.P3385283606558084674

`abs(A395355(2*n+1))`
-/

namespace A392178.P3385283606558084674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 (2 * n + 1)|

end

end A392178.P3385283606558084674

/-! ## A392178.P2753734236398161860

`A393449(n)+A392177(n+1)`
-/

namespace A392178.P2753734236398161860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393449 n + A392177 (n + 1)

end

end A392178.P2753734236398161860

/-! ## A392178.P11796625466538970335

`A395355(2*n)+A393449(n)`
-/

namespace A392178.P11796625466538970335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (2 * n) + A393449 n

end

end A392178.P11796625466538970335

/-! ## A392178.P12277537737693254772

`A395356(2*n+1)+A392177(n+1)`
-/

namespace A392178.P12277537737693254772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395356 (2 * n + 1) + A392177 (n + 1)

end

end A392178.P12277537737693254772

/-! ## A392178.P13742428090860281189

`A395356(2*n+1)+A395355(2*n)`
-/

namespace A392178.P13742428090860281189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395356 (2 * n + 1) + A395355 (2 * n)

end

end A392178.P13742428090860281189

/-! ## A392178.P11532013624110102792

`lt[A395357(n), 0]`
-/

namespace A392178.P11532013624110102792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392178.P11532013624110102792

/-! ## A392178.P12907555489567105971

`record[-A395357(n+1)]`
-/

namespace A392178.P12907555489567105971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A395357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392178.P12907555489567105971

/-! ## A392178.P14061857289538697101

`lt[0, A395355(A395364(n))]`
-/

namespace A392178.P14061857289538697101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (A395364 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392178.P14061857289538697101

/-! ## A392178.P390359322159714551

`lt[A395486(n), 0]`
-/

namespace A392178.P390359322159714551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395486 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392178.P390359322159714551

/-!
# A392179: In the spiral discussed in A392177 and A392178, squares not occupied by a knight of either color.

The programs for A392179, there is no canonical definition to state claims against.
-/

/-! ## A392179.P12615996966837340728

`eq[0, A395364(n)]`
-/

namespace A392179.P12615996966837340728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392179.P12615996966837340728

/-! ## A392179.P13945182177937819020

`eq[C(2, n), A395357(n)]`
-/

namespace A392179.P13945182177937819020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392179.P13945182177937819020

/-! ## A392179.P3311421282720821615

`eq[0, A395357(n+1)]+1`
-/

namespace A392179.P3311421282720821615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392179.P3311421282720821615

/-! ## A392179.P9075041763592885246

`lt[A395364(n+1), 1]+1`
-/

namespace A392179.P9075041763592885246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A392179.P9075041763592885246

/-! ## A392179.P5080956545168596033

`comp[abs(A395355(n))]`
-/

namespace A392179.P5080956545168596033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392179.P5080956545168596033

/-! ## A392179.P13548598368190249324

`eq[0, A395486(n)]`
-/

namespace A392179.P13548598368190249324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392179.P13548598368190249324

/-! ## A392179.P12395648650905310568

`comp[abs(A395357(n))]`
-/

namespace A392179.P12395648650905310568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395357 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392179.P12395648650905310568

/-! ## A392179.P15275020274598468089

`lt[A395364(A254667(n)), 1]`
-/

namespace A392179.P15275020274598468089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 (A254667 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392179.P15275020274598468089

/-! ## A392179.P4837296639309317878

`eq[A000007(n), A395357(n)]`
-/

namespace A392179.P4837296639309317878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392179.P4837296639309317878

/-! ## A392179.P17862633239765957082

`eq[A000038(n), A395357(n)]`
-/

namespace A392179.P17862633239765957082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392179.P17862633239765957082

/-! ## A392179.P17252104303165788840

`eq[A005369(n), A395357(n)]`
-/

namespace A392179.P17252104303165788840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392179.P17252104303165788840

/-! ## A392179.P439056100951602084

`lt[A395364(n), A004526(n)]`
-/

namespace A392179.P439056100951602084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392179.P439056100951602084

/-! ## A392179.P13508705572166317299

`lt[A395364(n), A335454(n)]`
-/

namespace A392179.P13508705572166317299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335454 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392179.P13508705572166317299

/-! ## A392179.P7772726761011479794

`lt[A395364(n), A395350(n)]`
-/

namespace A392179.P7772726761011479794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395350 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392179.P7772726761011479794

/-!
# A392180: At square n in the black/red knights spiral discussed in A392177-A392179, suppose we have seen a total of Nb black knights and Nr red knights so far; then a(n) = Nb-Nr.

The programs for A392180, there is no canonical definition to state claims against.
-/

/-! ## A392180.P14486444767070076100

`A242998(A304442(2*(n+2)))-1`
-/

namespace A392180.P14486444767070076100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242998 (A304442 (2 * (n + 2))).toNat - 1

end

end A392180.P14486444767070076100

/-! ## A392180.P8060352876467058574

`A056051(n+2)+A010054(A209720(n+1))`
-/

namespace A392180.P8060352876467058574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056051 (n + 2) + A010054 (A209720 (n + 1)).toNat

end

end A392180.P8060352876467058574

/-! ## A392180.P454853620014318741

`A019590(A324407(n+1))-A285952(n+3)`
-/

namespace A392180.P454853620014318741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A324407 (n + 1)).toNat - A285952 (n + 3)

end

end A392180.P454853620014318741

/-! ## A392180.P253119858983506876

`A114591(n+2)^A007088(A056326(n+1))`
-/

namespace A392180.P253119858983506876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114591 (n + 2) : ℚ) ^ (A007088 (A056326 (n + 1)).toNat : ℤ)

end

end A392180.P253119858983506876

/-! ## A392180.P9427763352594884031

`A008683(A025543(n))+floor(1/∑{p}[n+2, #-(n-1)])`
-/

namespace A392180.P9427763352594884031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A025543 n).toNat + ⌊1 / ((∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - ((n : ℤ) - 1)) : ℤ) : ℚ)⌋

end

end A392180.P9427763352594884031

/-!
# A392184: a(n) is the least k for which omega(k)*omega(k + 1)*omega(k + 2) = n where omega = A001221, or -1 if no such k exists.

The programs for A392184, there is no canonical definition to state claims against.
-/

/-! ## A392184.P9367941721903390012

`filter[A347379(2*(n+1)), A055088(#)]`
-/

namespace A392184.P9367941721903390012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347379 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A055088 (f1 j).toNat = 1) n)

end

end A392184.P9367941721903390012

/-! ## A392184.P3473167080047420966

`A358405(A351019(n))+A358366(n+2)`
-/

namespace A392184.P3473167080047420966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358405 (A351019 n).toNat + A358366 (n + 2)

end

end A392184.P3473167080047420966

/-!
# A392188: a(n) is the maximum permanent of an n X n circulant matrix whose rows are permutations of [1, 2, ..., n].

The programs for A392188, there is no canonical definition to state claims against.
-/

/-! ## A392188.P15284981768156216892

`A130577(A035985(n²))`
-/

namespace A392188.P15284981768156216892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130577 (A035985 (n ^ 2)).toNat

end

end A392188.P15284981768156216892

/-!
# A392192: a(n) is the maximum permanent of an n X n circulant matrix whose rows are permutations of [0, 1, 2, ..., n-1].

The programs for A392192, there is no canonical definition to state claims against.
-/

/-! ## A392192.P15381319519169852042

`A358640(ceil(exp(n)))`
-/

namespace A392192.P15381319519169852042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358640 ⌈Real.exp (n : ℝ)⌉.toNat

end

end A392192.P15381319519169852042

/-!
# A392193: a(n) is the minimum permanent of an n X n circulant matrix whose rows are permutations of [0, 1, 2, ..., n-1].

The programs for A392193, there is no canonical definition to state claims against.
-/

/-! ## A392193.P6422575551635481495

`A253088(a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A392193.P6422575551635481495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A253088 (a (n - 1)).toNat

end

end A392193.P6422575551635481495

/-!
# A392195: Positive integers with canonical prime factorization Product_{i=1..m} p_i^(p_i - p_{i-1}), where p_0 = 1.

The programs for A392195, there is no canonical definition to state claims against.
-/

/-! ## A392195.P8315793255072607497

`A329469(A057852(n+1))`
-/

namespace A392195.P8315793255072607497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329469 (A057852 (n + 1)).toNat

end

end A392195.P8315793255072607497

/-! ## A392195.P6167577106946129216

`gcd(A196419(n+1)!, A001102(3*n+5))`
-/

namespace A392195.P6167577106946129216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A196419 (n + 1)).toNat : ℤ) (A001102 (3 * n + 5))

end

end A392195.P6167577106946129216

/-!
# A392197: Numbers m such that all parts of the symmetric representation of sigma(m) have width 1 and two parts meet at the center of the Dyck path.

The programs for A392197, there is no canonical definition to state claims against.
-/

/-! ## A392197.P17429410351662666031

`∩[A174905(n+1), A014105(n)]`
-/

namespace A392197.P17429410351662666031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392197.P17429410351662666031

/-! ## A392197.P6673581835937945429

`∩[A174905(n+1), A253145(n)]`
-/

namespace A392197.P6673581835937945429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392197.P6673581835937945429

/-! ## A392197.P4942055892473037232

`∩[A174905(n+3), A000217(n)]`
-/

namespace A392197.P4942055892473037232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392197.P4942055892473037232

/-! ## A392197.P10315909752219904806

`∩[A054731(n+1), A174905(n+1)]`
-/

namespace A392197.P10315909752219904806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392197.P10315909752219904806

/-! ## A392197.P9952511039978148296

`filter[A174905(n+2), A073424(#)]`
-/

namespace A392197.P9952511039978148296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A392197.P9952511039978148296

/-!
# A392199: Positive integers k such that gcd(k, sigma(k)) is prime.

The programs for A392199, the canonical program `A392199.P2791920592181297903` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392199 has offset 1).

The definition of A392199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392199.P2791920592181297903

`eq[1, A341523(n+1)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A392199

/-- `eq[1, A341523(n+1)]+1` -/
def P2791920592181297903.Spec : Prop :=
  ∀ n, (P2791920592181297903.a n : ℤ) = A392199 (n + 1)

theorem P2791920592181297903.correct : P2791920592181297903.Spec := by
  intro n
  simp only [A392199, Nat.add_sub_cancel]

end A392199

/-! ## A392199.P4313294944318214540

`filter[A054027(n+1), A341523(#)]`
-/

namespace A392199.P4313294944318214540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341523 (f1 j).toNat = 1) n)

end

end A392199.P4313294944318214540

namespace A392199

/-- `filter[A054027(n+1), A341523(#)]` -/
def P4313294944318214540.Spec : Prop :=
  ∀ n, P4313294944318214540.a n = A392199 (n + 1)

end A392199

/-! ## A392199.P2693961508987096955

`eq[2, A073802(n+1)]+1`
-/

namespace A392199.P2693961508987096955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392199.P2693961508987096955

namespace A392199

/-- `eq[2, A073802(n+1)]+1` -/
def P2693961508987096955.Spec : Prop :=
  ∀ n, (P2693961508987096955.a n : ℤ) = A392199 (n + 1)

end A392199

/-! ## A392199.P16186422692774803178

`eq[1, ∑{e}[A009194(n+1), #]]+1`
-/

namespace A392199.P16186422692774803178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A392199.P16186422692774803178

namespace A392199

/-- `eq[1, ∑{e}[A009194(n+1), #]]+1` -/
def P16186422692774803178.Spec : Prop :=
  ∀ n, (P16186422692774803178.a n : ℤ) = A392199 (n + 1)

end A392199

/-! ## A392199.P17849975732604129466

`eq[2, A073802(A028310(n))]`
-/

namespace A392199.P17849975732604129466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073802 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392199.P17849975732604129466

namespace A392199

/-- `eq[2, A073802(A028310(n))]` -/
def P17849975732604129466.Spec : Prop :=
  ∀ n, (P17849975732604129466.a n : ℤ) = A392199 (n + 1)

end A392199

/-! ## A392199.P1684471364579636148

`eq[1, A001222(A009194(n+1))]+1`
-/

namespace A392199.P1684471364579636148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A009194 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392199.P1684471364579636148

namespace A392199

/-- `eq[1, A001222(A009194(n+1))]+1` -/
def P1684471364579636148.Spec : Prop :=
  ∀ n, (P1684471364579636148.a n : ℤ) = A392199 (n + 1)

end A392199

