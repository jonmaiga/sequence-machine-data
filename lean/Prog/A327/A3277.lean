import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A327702: Number of refinement sequences n -> ... -> {1}^n, where in each step one part that is the rightmost copy of its size is replaced by a partition of itself into smaller parts (in weakly decreasing order).

The programs for A327702, there is no canonical definition to state claims against.
-/

/-! ## A327702.P2526909805089163244

`∑[A187108(a(n-1)+1)]` with `a(0)=1, a(1)=0`
-/

namespace A327702.P2526909805089163244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A187108 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327702.P2526909805089163244

/-! ## A327702.P17541205456947745153

`A297403(a(n-1)²)+n-1` with `a(0)=1`
-/

namespace A327702.P17541205456947745153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A297403 (a (n - 1) ^ 2).toNat + ((n : ℤ) - 1)

end

end A327702.P17541205456947745153

/-! ## A327702.P9948174431157460348

`A173666(A274547(n))`
-/

namespace A327702.P9948174431157460348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A274547 n).toNat

end

end A327702.P9948174431157460348

/-!
# A327703: a(n) = (binomial(n,floor(n/2)))/(greatest common divisor of all numbers in n-th row of Pascal's triangle excluding 1 and n).

The programs for A327703, the canonical program `A327703.P3882927055980842099` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327703 has offset 4).

The definition of A327703 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328202, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327703.P3882927055980842099

`A001405(n+4)/A328202(n+4)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327703

/-- `A001405(n+4)/A328202(n+4)` -/
def P3882927055980842099.Spec : Prop :=
  ∀ n, P3882927055980842099.a n = (A327703 (n + 4) : ℚ)

end A327703

/-! ## A327703.P17383820877668676801

`A003418(n+2)/A263673(n+4)`
-/

namespace A327703.P17383820877668676801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 2) : ℚ) / (A263673 (n + 4) : ℚ)

end

end A327703.P17383820877668676801

namespace A327703

/-- `A003418(n+2)/A263673(n+4)` -/
def P17383820877668676801.Spec : Prop :=
  ∀ n, P17383820877668676801.a n = (A327703 (n + 4) : ℚ)

end A327703

/-! ## A327703.P10972394975934888893

`floor(A075059(n+2)/A263673(n+4))`
-/

namespace A327703.P10972394975934888893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075059 (n + 2) : ℚ) / (A263673 (n + 4) : ℚ)⌋

end

end A327703.P10972394975934888893

namespace A327703

/-- `floor(A075059(n+2)/A263673(n+4))` -/
def P10972394975934888893.Spec : Prop :=
  ∀ n, P10972394975934888893.a n = A327703 (n + 4)

end A327703

/-! ## A327703.P7198971072981352859

`∏[A020500(n+2)]/A263673(n+4)`
-/

namespace A327703.P7198971072981352859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A263673 (n + 4) : ℚ)

end

end A327703.P7198971072981352859

namespace A327703

/-- `∏[A020500(n+2)]/A263673(n+4)` -/
def P7198971072981352859.Spec : Prop :=
  ∀ n, P7198971072981352859.a n = (A327703 (n + 4) : ℚ)

end A327703

/-! ## A327703.P6863519195446036453

`A001405(A020705(n))/A120108(A000096(n+2)+n+2)`
-/

namespace A327703.P6863519195446036453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (A020705 n).toNat : ℚ) / (A120108 (A000096 (n + 2) + (n + 2 : ℤ)).toNat : ℚ)

end

end A327703.P6863519195446036453

namespace A327703

/-- `A001405(A020705(n))/A120108(A000096(n+2)+n+2)` -/
def P6863519195446036453.Spec : Prop :=
  ∀ n, P6863519195446036453.a n = (A327703 (n + 4) : ℚ)

end A327703

/-!
# A327704: The minimal size of a partition lambda of n such that every partition of n with at most 4 parts can be obtained by coalescing the parts of lambda.

The programs for A327704, the canonical program `A327704.P14937700332867445328` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327704 has offset 1).

The definition of A327704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327704.P7634977916951106404

`a(floor(3*n/log(55)))+1` with `a(0)=1`
-/

namespace A327704.P7634977916951106404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(3 * n : ℝ) / Real.log (55 : ℝ)⌋.toNat + 1

end

end A327704.P7634977916951106404

namespace A327704

/-- `a(floor(3*n/log(55)))+1` -/
def P7634977916951106404.Spec : Prop :=
  ∀ n, (P7634977916951106404.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P14937700332867445328

`floor(∑[(n%2+3)/(n+2)])`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327704

/-- `floor(∑[(n%2+3)/(n+2)])` -/
def P14937700332867445328.Spec : Prop :=
  ∀ n, P14937700332867445328.a n = A327704 (n + 1)

theorem P14937700332867445328.correct : P14937700332867445328.Spec := by
  intro n
  simp only [A327704, Nat.add_sub_cancel]

end A327704

/-! ## A327704.P4751830375593163326

`floor(∑[(5-gcd(2, n))/(n+2)])`
-/

namespace A327704.P4751830375593163326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (Nat.gcd 2 n : ℤ) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A327704.P4751830375593163326

namespace A327704

/-- `floor(∑[(5-gcd(2, n))/(n+2)])` -/
def P4751830375593163326.Spec : Prop :=
  ∀ n, P4751830375593163326.a n = A327704 (n + 1)

end A327704

/-! ## A327704.P2745138190270734605

`floor(∑[(4-char[2*n])/(n+2)])`
-/

namespace A327704.P2745138190270734605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A327704.P2745138190270734605

namespace A327704

/-- `floor(∑[(4-char[2*n])/(n+2)])` -/
def P2745138190270734605.Spec : Prop :=
  ∀ n, P2745138190270734605.a n = A327704 (n + 1)

end A327704

/-! ## A327704.P17124621119591344190

`ceil(a(n-∑[char[4*n]]))+1` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A327704.P17124621119591344190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A327704.P17124621119591344190

namespace A327704

/-- `ceil(a(n-∑[char[4*n]]))+1` -/
def P17124621119591344190.Spec : Prop :=
  ∀ n, (P17124621119591344190.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P721929224593263511

`abs(a(n-(floor(n/4)+1))+1)` with `a(0)=1`
-/

namespace A327704.P721929224593263511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - (⌊(n : ℚ) / 4⌋ + 1)).toNat + 1

end

end A327704.P721929224593263511

namespace A327704

/-- `abs(a(n-(floor(n/4)+1))+1)` -/
def P721929224593263511.Spec : Prop :=
  ∀ n, (P721929224593263511.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P6332522143816726445

`abs(a(n-ceil((n+1)/4)))+1` with `a(0)=1`
-/

namespace A327704.P6332522143816726445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - ⌈(n + 1 : ℚ) / 4⌉).toNat + 1

end

end A327704.P6332522143816726445

namespace A327704

/-- `abs(a(n-ceil((n+1)/4)))+1` -/
def P6332522143816726445.Spec : Prop :=
  ∀ n, (P6332522143816726445.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P15976611553639181298

`floor(a(n-1-floor(n/4)))+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A327704.P15976611553639181298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - ⌊(n : ℚ) / 4⌋).toNat + 1

end

end A327704.P15976611553639181298

namespace A327704

/-- `floor(a(n-1-floor(n/4)))+1` -/
def P15976611553639181298.Spec : Prop :=
  ∀ n, (P15976611553639181298.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P900563397988551868

`round(log2(∑[A065308(n+3)]))`
-/

namespace A327704.P900563397988551868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065308 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A327704.P900563397988551868

namespace A327704

/-- `round(log2(∑[A065308(n+3)]))` -/
def P900563397988551868.Spec : Prop :=
  ∀ n, P900563397988551868.a n = A327704 (n + 1)

end A327704

/-! ## A327704.P3102084945975414953

`∑[char[A087192(n+1)-1]]`
-/

namespace A327704.P3102084945975414953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327704.P3102084945975414953

namespace A327704

/-- `∑[char[A087192(n+1)-1]]` -/
def P3102084945975414953.Spec : Prop :=
  ∀ n, (P3102084945975414953.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P14455204439236851940

`∑[char[∑[A072493(n+1)]-1]]`
-/

namespace A327704.P14455204439236851940
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327704.P14455204439236851940

namespace A327704

/-- `∑[char[∑[A072493(n+1)]-1]]` -/
def P14455204439236851940.Spec : Prop :=
  ∀ n, (P14455204439236851940.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P2939233550485917721

`∑[char[∑[A072493(n+2)]]]+1`
-/

namespace A327704.P2939233550485917721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A327704.P2939233550485917721

namespace A327704

/-- `∑[char[∑[A072493(n+2)]]]+1` -/
def P2939233550485917721.Spec : Prop :=
  ∀ n, (P2939233550485917721.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P4457220743109944911

`∑[char[A042968(a(n-1)+1)]]` with `a(0)=0`
-/

namespace A327704.P4457220743109944911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A042968 (f2 (n - 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327704.P4457220743109944911

namespace A327704

/-- `∑[char[A042968(a(n-1)+1)]]` -/
def P4457220743109944911.Spec : Prop :=
  ∀ n, (P4457220743109944911.a n : ℤ) = A327704 (n + 1)

end A327704

/-! ## A327704.P6317153461039891493

`round(log(∑[A000040(n+3)²+1]))-2`
-/

namespace A327704.P6317153461039891493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)) - 2

end

end A327704.P6317153461039891493

namespace A327704

/-- `round(log(∑[A000040(n+3)²+1]))-2` -/
def P6317153461039891493.Spec : Prop :=
  ∀ n, P6317153461039891493.a n = A327704 (n + 1)

end A327704

/-! ## A327704.P5636683183805562050

`A095791(A126022(n+1))`
-/

namespace A327704.P5636683183805562050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A126022 (n + 1)).toNat

end

end A327704.P5636683183805562050

namespace A327704

/-- `A095791(A126022(n+1))` -/
def P5636683183805562050.Spec : Prop :=
  ∀ n, P5636683183805562050.a n = A327704 (n + 1)

end A327704

/-! ## A327704.P6286092852511479161

`A278044(A023536(n+1))`
-/

namespace A327704.P6286092852511479161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 (A023536 (n + 1)).toNat

end

end A327704.P6286092852511479161

namespace A327704

/-- `A278044(A023536(n+1))` -/
def P6286092852511479161.Spec : Prop :=
  ∀ n, P6286092852511479161.a n = A327704 (n + 1)

end A327704

/-! ## A327704.P15885626342461284635

`A278044(A399516(n+1))`
-/

namespace A327704.P15885626342461284635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 (A399516 (n + 1)).toNat

end

end A327704.P15885626342461284635

namespace A327704

/-- `A278044(A399516(n+1))` -/
def P15885626342461284635.Spec : Prop :=
  ∀ n, P15885626342461284635.a n = A327704 (n + 1)

end A327704

/-! ## A327704.P18096621466859749209

`A278044(∑[A319198(A003726(n+2))])`
-/

namespace A327704.P18096621466859749209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 (A003726 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327704.P18096621466859749209

namespace A327704

/-- `A278044(∑[A319198(A003726(n+2))])` -/
def P18096621466859749209.Spec : Prop :=
  ∀ n, P18096621466859749209.a n = A327704 (n + 1)

end A327704

/-! ## A327704.P2926778551717207871

`∑{digits}[A052267(2*n), A000120(A000079(#))]`
-/

namespace A327704.P2926778551717207871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052267 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 (A000079 x).toNat).sum

end

end A327704.P2926778551717207871

namespace A327704

/-- `∑{digits}[A052267(2*n), A000120(A000079(#))]` -/
def P2926778551717207871.Spec : Prop :=
  ∀ n, P2926778551717207871.a n = A327704 (n + 1)

end A327704

/-!
# A327705: The minimal size of a partition lambda of n such that every partition of n with at most 5 parts can be obtained by coalescing the parts of lambda.

The programs for A327705, the canonical program `A327705.P7920017995908240721` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327705 has offset 1).

The definition of A327705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327705.P14794425686786146195

`a(floor(n/log(7/2)))+1` with `a(0)=1`
-/

namespace A327705.P14794425686786146195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℝ) / Real.log ((7 : ℚ) / 2 : ℝ)⌋.toNat + 1

end

end A327705.P14794425686786146195

namespace A327705

/-- `a(floor(n/log(7/2)))+1` -/
def P14794425686786146195.Spec : Prop :=
  ∀ n, (P14794425686786146195.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P8766056431192586477

`floor(a(n-∑[char[5*n]]))+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A327705.P8766056431192586477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A327705.P8766056431192586477

namespace A327705

/-- `floor(a(n-∑[char[5*n]]))+1` -/
def P8766056431192586477.Spec : Prop :=
  ∀ n, (P8766056431192586477.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P7920017995908240721

`abs(a(n-1-floor(n/5))+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327705

/-- `abs(a(n-1-floor(n/5))+1)` -/
def P7920017995908240721.Spec : Prop :=
  ∀ n, (P7920017995908240721.a n : ℤ) = A327705 (n + 1)

theorem P7920017995908240721.correct : P7920017995908240721.Spec := by
  intro n
  simp only [A327705, Nat.add_sub_cancel]

end A327705

/-! ## A327705.P13442345059263545387

`∑[char[ceil((5*a(n-1)+1)/4)]]` with `a(0)=0`
-/

namespace A327705.P13442345059263545387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ⌈(5 * f2 (n - 1) + 1 : ℚ) / 4⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327705.P13442345059263545387

namespace A327705

/-- `∑[char[ceil((5*a(n-1)+1)/4)]]` -/
def P13442345059263545387.Spec : Prop :=
  ∀ n, (P13442345059263545387.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P261730303072399816

`∑[(n^4)%5*a(floor(4*n/5))]` with `a(0)=1`
-/

namespace A327705.P261730303072399816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n ^ 4 % 5 * f1 ⌊4 * ((n : ℚ) / 5)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327705.P261730303072399816

namespace A327705

/-- `∑[(n^4)%5*a(floor(4*n/5))]` -/
def P261730303072399816.Spec : Prop :=
  ∀ n, (P261730303072399816.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P13733416658839891144

`a(n-∑[char[5*n]])%(n+2)+1` with `a(0)=1`
-/

namespace A327705.P13733416658839891144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) + 1

end

end A327705.P13733416658839891144

namespace A327705

/-- `a(n-∑[char[5*n]])%(n+2)+1` -/
def P13733416658839891144.Spec : Prop :=
  ∀ n, (P13733416658839891144.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P8349814626836946016

`∑[char[A279075(n)]]`
-/

namespace A327705.P8349814626836946016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279075 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327705.P8349814626836946016

namespace A327705

/-- `∑[char[A279075(n)]]` -/
def P8349814626836946016.Spec : Prop :=
  ∀ n, (P8349814626836946016.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P18117684427497777011

`∑[char[A182305(n)-4]]`
-/

namespace A327705.P18117684427497777011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182305 n - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327705.P18117684427497777011

namespace A327705

/-- `∑[char[A182305(n)-4]]` -/
def P18117684427497777011.Spec : Prop :=
  ∀ n, (P18117684427497777011.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P7460914081575408113

`ceil(log(sqrt(A047819(n)+1)))`
-/

namespace A327705.P7460914081575408113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt (A047819 n + 1 : ℝ))⌉

end

end A327705.P7460914081575408113

namespace A327705

/-- `ceil(log(sqrt(A047819(n)+1)))` -/
def P7460914081575408113.Spec : Prop :=
  ∀ n, P7460914081575408113.a n = A327705 (n + 1)

end A327705

/-! ## A327705.P15795026162807945554

`floor(log(4*A000158(n+3)))`
-/

namespace A327705.P15795026162807945554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (4 * A000158 (n + 3) : ℝ)⌋

end

end A327705.P15795026162807945554

namespace A327705

/-- `floor(log(4*A000158(n+3)))` -/
def P15795026162807945554.Spec : Prop :=
  ∀ n, P15795026162807945554.a n = A327705 (n + 1)

end A327705

/-! ## A327705.P15233795532467743016

`∑[char[A100586(n+1)-3]]`
-/

namespace A327705.P15233795532467743016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100586 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327705.P15233795532467743016

namespace A327705

/-- `∑[char[A100586(n+1)-3]]` -/
def P15233795532467743016.Spec : Prop :=
  ∀ n, (P15233795532467743016.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P15596000674661814532

`∑[char[∑[A120160(n+1)]-1]]`
-/

namespace A327705.P15596000674661814532
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327705.P15596000674661814532

namespace A327705

/-- `∑[char[∑[A120160(n+1)]-1]]` -/
def P15596000674661814532.Spec : Prop :=
  ∀ n, (P15596000674661814532.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P16449777483175847768

`∑[char[∑[A120160(n+2)]]]+1`
-/

namespace A327705.P16449777483175847768
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120160 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A327705.P16449777483175847768

namespace A327705

/-- `∑[char[∑[A120160(n+2)]]]+1` -/
def P16449777483175847768.Spec : Prop :=
  ∀ n, (P16449777483175847768.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P14750024128153252036

`∑[char[A047201(a(n-1)+1)]]` with `a(0)=0`
-/

namespace A327705.P14750024128153252036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A047201 (f2 (n - 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327705.P14750024128153252036

namespace A327705

/-- `∑[char[A047201(a(n-1)+1)]]` -/
def P14750024128153252036.Spec : Prop :=
  ∀ n, (P14750024128153252036.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P7966870884237994735

`char[A279075(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A327705.P7966870884237994735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A327705.P7966870884237994735

namespace A327705

/-- `char[A279075(n+1)]+a(n-1)` -/
def P7966870884237994735.Spec : Prop :=
  ∀ n, (P7966870884237994735.a n : ℤ) = A327705 (n + 1)

end A327705

/-! ## A327705.P4737761041572522988

`A008619(floor(log(A047819(n))))`
-/

namespace A327705.P4737761041572522988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊Real.log (A047819 n : ℝ)⌋.toNat

end

end A327705.P4737761041572522988

namespace A327705

/-- `A008619(floor(log(A047819(n))))` -/
def P4737761041572522988.Spec : Prop :=
  ∀ n, P4737761041572522988.a n = A327705 (n + 1)

end A327705

/-! ## A327705.P550394220066746076

`A065033(ceil(log(A047819(n))))`
-/

namespace A327705.P550394220066746076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈Real.log (A047819 n : ℝ)⌉.toNat

end

end A327705.P550394220066746076

namespace A327705

/-- `A065033(ceil(log(A047819(n))))` -/
def P550394220066746076.Spec : Prop :=
  ∀ n, P550394220066746076.a n = A327705 (n + 1)

end A327705

/-! ## A327705.P6029672486837658331

`round(∑[A038439(2*n+3)/A038390(3*(n+1))])-1`
-/

namespace A327705.P6029672486837658331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038439 (2 * n + 3) : ℚ) / (A038390 (3 * (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A327705.P6029672486837658331

namespace A327705

/-- `round(∑[A038439(2*n+3)/A038390(3*(n+1))])-1` -/
def P6029672486837658331.Spec : Prop :=
  ∀ n, P6029672486837658331.a n = A327705 (n + 1)

end A327705

/-!
# A327706: The minimal size of a partition lambda of n such that every partition of n with at most 6 parts can be obtained by coalescing the parts of lambda.

The programs for A327706, there is no canonical definition to state claims against.
-/

/-! ## A327706.P18030873088843512518

`a(floor(n/root(3, 6)))+1` with `a(0)=1`
-/

namespace A327706.P18030873088843512518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℝ) / (3 : ℝ) ^ (1 / (6 : ℝ))⌋.toNat + 1

end

end A327706.P18030873088843512518

/-! ## A327706.P6718018774818007489

`floor(a(n-(floor(n/6)+1)))+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A327706.P6718018774818007489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - (⌊(n : ℚ) / 6⌋ + 1)).toNat + 1

end

end A327706.P6718018774818007489

/-! ## A327706.P15037955950586911436

`abs(a(2*n-comp[7*n]))+1` with `a(0)=1`
-/

namespace A327706.P15037955950586911436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (2 * n - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A327706.P15037955950586911436

/-! ## A327706.P17228089561234646304

`ceil(log(n²+2+n)^log(3)^3)`
-/

namespace A327706.P17228089561234646304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n ^ 2 + 2 + n : ℝ) ^ (Real.log (3 : ℝ) ^ 3)⌉

end

end A327706.P17228089561234646304

/-! ## A327706.P12876831334033035676

`1-floor(-a(n-∑[char[6*n]]))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A327706.P12876831334033035676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (-a (n - ∑ j ∈ Finset.range (n + 1), f1 j))

end

end A327706.P12876831334033035676

/-! ## A327706.P17926840388202136768

`1-ceil(-a(n-∑[char[6*n]]))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A327706.P17926840388202136768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (-a (n - ∑ j ∈ Finset.range (n + 1), f1 j))

end

end A327706.P17926840388202136768

/-! ## A327706.P6112957713603593114

`∑[char[A279076(n)]]`
-/

namespace A327706.P6112957713603593114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279076 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327706.P6112957713603593114

/-! ## A327706.P15369119674575869260

`∑[char[A182306(n)-5]]`
-/

namespace A327706.P15369119674575869260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182306 n - 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327706.P15369119674575869260

/-! ## A327706.P17448323603362611996

`∑[char[A120171(n+1)-3]]`
-/

namespace A327706.P17448323603362611996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120171 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327706.P17448323603362611996

/-! ## A327706.P6636893012645470431

`∑[char[∑[A120170(n+1)]-1]]`
-/

namespace A327706.P6636893012645470431
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327706.P6636893012645470431

/-!
# A327707: The minimal size of a partition lambda of n such that every partition of n with at most 7 parts can be obtained by coalescing the parts of lambda.

The programs for A327707, there is no canonical definition to state claims against.
-/

/-! ## A327707.P17564362108493164089

`a(floor(35*n/41))+1` with `a(0)=1`
-/

namespace A327707.P17564362108493164089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊35 * ((n : ℚ) / 41)⌋.toNat + 1

end

end A327707.P17564362108493164089

/-! ## A327707.P7719939381936170914

`∑[char[A279077(n)]]`
-/

namespace A327707.P7719939381936170914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279077 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327707.P7719939381936170914

/-! ## A327707.P15157522657659248950

`∑[char[A182307(n)-6]]`
-/

namespace A327707.P15157522657659248950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182307 n - 6

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327707.P15157522657659248950

/-! ## A327707.P4748889186989247765

`abs(a(A145569(n)-1))+1` with `a(0)=1`
-/

namespace A327707.P4748889186989247765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A145569 n - 1).toNat + 1

end

end A327707.P4748889186989247765

/-! ## A327707.P3695621839731626458

`∑[char[∑[A120178(n+1)]-1]]`
-/

namespace A327707.P3695621839731626458
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327707.P3695621839731626458

/-! ## A327707.P9916731206150215372

`floor((log2(A027768(n+7))-1)/2)`
-/

namespace A327707.P9916731206150215372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.logb 2 (A027768 (n + 7) : ℝ) - 1) / 2⌋

end

end A327707.P9916731206150215372

/-! ## A327707.P127620697929079415

`∑[char[A187396(a(n-1)+1)]]` with `a(0)=0`
-/

namespace A327707.P127620697929079415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A187396 (f2 (n - 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327707.P127620697929079415

/-! ## A327707.P13108461302091919172

`∑[char[A265133(A000009(n))]]`
-/

namespace A327707.P13108461302091919172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265133 (A000009 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327707.P13108461302091919172

/-! ## A327707.P10393224548507022575

`∑[char[A290307(A056115(n))]]`
-/

namespace A327707.P10393224548507022575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A056115 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327707.P10393224548507022575

/-!
# A327708: The minimal size of a partition lambda of n such that every partition of n with at most 8 parts can be obtained by coalescing the parts of lambda.

The programs for A327708, there is no canonical definition to state claims against.
-/

/-! ## A327708.P7996051082955870012

`a(floor(n/log(π)))+1` with `a(0)=1`
-/

namespace A327708.P7996051082955870012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℝ) / Real.log Real.pi⌋.toNat + 1

end

end A327708.P7996051082955870012

/-! ## A327708.P7432733330799817660

`abs(a(floor(n/3*ϕ²)))+1` with `a(0)=1`
-/

namespace A327708.P7432733330799817660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℚ) / 3 : ℝ) * Real.goldenRatio ^ 2⌋.toNat + 1

end

end A327708.P7432733330799817660

/-! ## A327708.P6075071248560311381

`floor(a(floor(n*ϕ²/3)))+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A327708.P6075071248560311381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℝ) * Real.goldenRatio ^ 2 / 3⌋.toNat + 1

end

end A327708.P6075071248560311381

/-! ## A327708.P11215557472673341637

`∑[char[floor(8/7*a(n-1))+1]]` with `a(0)=0`
-/

namespace A327708.P11215557472673341637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ⌊(8 : ℚ) / 7 * (f2 (n - 1) : ℚ)⌋ + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327708.P11215557472673341637

/-! ## A327708.P15157637544014457826

`1-a(floor(n/log(π)))/log2(1/2)` with `a(0)=1`
-/

namespace A327708.P15157637544014457826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ⌊(n : ℝ) / Real.log Real.pi⌋.toNat / Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A327708.P15157637544014457826

/-! ## A327708.P3599002401580182778

`1-floor(-a(n-(floor(n/8)+1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A327708.P3599002401580182778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (-a ((n : ℤ) - (⌊(n : ℚ) / 8⌋ + 1)).toNat)

end

end A327708.P3599002401580182778

/-! ## A327708.P6875846642802623785

`∑[char[A279078(n)]]`
-/

namespace A327708.P6875846642802623785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279078 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327708.P6875846642802623785

/-! ## A327708.P13253707740781073505

`∑[char[A182308(n)-7]]`
-/

namespace A327708.P13253707740781073505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182308 n - 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327708.P13253707740781073505

/-! ## A327708.P6654180110511772073

`∑[char[A120187(n+1)-4]]`
-/

namespace A327708.P6654180110511772073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120187 (n + 1) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327708.P6654180110511772073

/-! ## A327708.P16067805978932929917

`∑[char[∑[A120186(n+1)]-1]]`
-/

namespace A327708.P16067805978932929917
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327708.P16067805978932929917

/-!
# A327710: Number of compositions of n into distinct parts such that the difference between any two parts is at least two.

The programs for A327710, there is no canonical definition to state claims against.
-/

/-! ## A327710.P8096609610601953603

`A339101(A187829(n+1)+2)`
-/

namespace A327710.P8096609610601953603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 (A187829 (n + 1) + 2).toNat

end

end A327710.P8096609610601953603

/-! ## A327710.P15953385632244761066

`A339101(n+3)%A333218(3*n+5)`
-/

namespace A327710.P15953385632244761066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339101 (n + 3)) (A333218 (3 * n + 5))

end

end A327710.P15953385632244761066

/-! ## A327710.P14677206345941114089

`A339101(Δ[A046691(A055645(n))])`
-/

namespace A327710.P14677206345941114089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A055645 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 (f1 (n + 1) - f1 n).toNat

end

end A327710.P14677206345941114089

/-! ## A327710.P17452570679308854761

`A339101(n+3)^A243712(A048625(n))`
-/

namespace A327710.P17452570679308854761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339101 (n + 3) : ℚ) ^ (A243712 (A048625 n).toNat : ℤ)

end

end A327710.P17452570679308854761

/-! ## A327710.P10804067512638640153

`A339101(n+3)%A010063(A056606(n))`
-/

namespace A327710.P10804067512638640153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339101 (n + 3)) (A010063 (A056606 n).toNat)

end

end A327710.P10804067512638640153

/-!
# A327711: Sum of multinomials M(n-k; p_1-1, ..., p_k-1), where p = (p_1, ..., p_k) ranges over all partitions of n (k is a partition length).

The programs for A327711, there is no canonical definition to state claims against.
-/

/-! ## A327711.P5331383482969635794

`A051534(A063687(n+1))`
-/

namespace A327711.P5331383482969635794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (A063687 (n + 1)).toNat

end

end A327711.P5331383482969635794

/-! ## A327711.P12397355299510358891

`or(A137735(n), A324689(A092351(n)))`
-/

namespace A327711.P12397355299510358891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137735 n) (A324689 (A092351 n).toNat)

end

end A327711.P12397355299510358891

/-! ## A327711.P13645812845539747156

`or(A069904(n+1), A324689(A092351(n)))`
-/

namespace A327711.P13645812845539747156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069904 (n + 1)) (A324689 (A092351 n).toNat)

end

end A327711.P13645812845539747156

/-! ## A327711.P16328224322867079538

`A324689(or(A073610(n+1), A092351(n)))`
-/

namespace A327711.P16328224322867079538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 (Int.lor (A073610 (n + 1)) (A092351 n)).toNat

end

end A327711.P16328224322867079538

/-! ## A327711.P15045569608063811327

`or(A324689(A092351(n)), A355735(n+1))`
-/

namespace A327711.P15045569608063811327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324689 (A092351 n).toNat) (A355735 (n + 1))

end

end A327711.P15045569608063811327

/-!
# A327715: a(0) = 0; for n >= 1, a(n) = 1 + a(n-A009191(n)).

The programs for A327715, the canonical program `A327715.P7624630360277358397` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327715 has offset 0).

The definition of A327715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327715.P7624630360277358397

`1+a(n-A009191(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327715

/-- `1+a(n-A009191(n))` -/
def P7624630360277358397.Spec : Prop :=
  ∀ n, (P7624630360277358397.a n : ℤ) = A327715 n

theorem P7624630360277358397.correct : P7624630360277358397.Spec := by
  intro n
  simp only [A327715]

end A327715

/-! ## A327715.P18270678173776398951

`1+a(n-gcd(n, A000005(n)))` with `a(0)=0`
-/

namespace A327715.P18270678173776398951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (n - Int.gcd (n : ℤ) (A000005 n))

end

end A327715.P18270678173776398951

namespace A327715

/-- `1+a(n-gcd(n, A000005(n)))` -/
def P18270678173776398951.Spec : Prop :=
  ∀ n, (P18270678173776398951.a n : ℤ) = A327715 n

end A327715

/-! ## A327715.P15602029657616723807

`a(n-A009191(n))+1` with `a(0)=0`
-/

namespace A327715.P15602029657616723807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A009191 n).toNat + 1

end

end A327715.P15602029657616723807

namespace A327715

/-- `a(n-A009191(n))+1` -/
def P15602029657616723807.Spec : Prop :=
  ∀ n, (P15602029657616723807.a n : ℤ) = A327715 n

end A327715

/-! ## A327715.P14340527077318732170

`A058321(a(n-A009191(n)))-1` with `a(0)=0`
-/

namespace A327715.P14340527077318732170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A058321 (a ((n : ℤ) - A009191 n).toNat).toNat - 1

end

end A327715.P14340527077318732170

namespace A327715

/-- `A058321(a(n-A009191(n)))-1` -/
def P14340527077318732170.Spec : Prop :=
  ∀ n, P14340527077318732170.a n = A327715 n

end A327715

/-! ## A327715.P16606667773134177331

`A020705(a(n-A009191(n)))-3` with `a(0)=0`
-/

namespace A327715.P16606667773134177331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020705 (a ((n : ℤ) - A009191 n).toNat).toNat - 3

end

end A327715.P16606667773134177331

namespace A327715

/-- `A020705(a(n-A009191(n)))-3` -/
def P16606667773134177331.Spec : Prop :=
  ∀ n, P16606667773134177331.a n = A327715 n

end A327715

/-! ## A327715.P14580064751625723815

`A020722(a(n-A009191(n)))-7` with `a(0)=0`
-/

namespace A327715.P14580064751625723815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020722 (a ((n : ℤ) - A009191 n).toNat).toNat - 7

end

end A327715.P14580064751625723815

namespace A327715

/-- `A020722(a(n-A009191(n)))-7` -/
def P14580064751625723815.Spec : Prop :=
  ∀ n, P14580064751625723815.a n = A327715 n

end A327715

/-! ## A327715.P14576786271012987719

`abs(a(n-A009191(n))-A057428(n))` with `a(0)=0`
-/

namespace A327715.P14576786271012987719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a ((n : ℤ) - A009191 n).toNat - A057428 n|

end

end A327715.P14576786271012987719

namespace A327715

/-- `abs(a(n-A009191(n))-A057428(n))` -/
def P14576786271012987719.Spec : Prop :=
  ∀ n, P14576786271012987719.a n = A327715 n

end A327715

/-!
# A327716: Expansion of Product_{k>=1} B(x^k), where B(x) is the g.f. of A003823.

The programs for A327716, there is no canonical definition to state claims against.
-/

/-! ## A327716.P15060292085771656142

`A327720(n)-A025469(A005252(n))`
-/

namespace A327716.P15060292085771656142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327720 n - A025469 (A005252 n).toNat

end

end A327716.P15060292085771656142

/-! ## A327716.P2872844356334403253

`A327720(n)-A102683(A189343(n+1))`
-/

namespace A327716.P2872844356334403253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327720 n - A102683 (A189343 (n + 1)).toNat

end

end A327716.P2872844356334403253

/-! ## A327716.P6298285575966536738

`A327720(n)-A102683(A189905(n+1))`
-/

namespace A327716.P6298285575966536738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327720 n - A102683 (A189905 (n + 1)).toNat

end

end A327716.P6298285575966536738

/-! ## A327716.P9309871873630446630

`A327720(n)-A121373(A216165(2*(n+1)))`
-/

namespace A327716.P9309871873630446630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327720 n - A121373 (A216165 (2 * (n + 1))).toNat

end

end A327716.P9309871873630446630

/-! ## A327716.P13564844037332782922

`A000188(5*A327720(n)²)`
-/

namespace A327716.P13564844037332782922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (5 * A327720 n ^ 2).toNat

end

end A327716.P13564844037332782922

/-!
# A327717: Expansion of Product_{k>=1} (1 + x^k/(1 + x^(2*k))).

The programs for A327717, there is no canonical definition to state claims against.
-/

/-! ## A327717.P15116902910071347497

`A048766(A069213(record[A048673(n+1)]))`
-/

namespace A327717.P15116902910071347497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A069213 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A327717.P15116902910071347497

/-! ## A327717.P1543758957506188641

`A048766(A069213(record[A191450(n+1)]))`
-/

namespace A327717.P1543758957506188641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A069213 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A327717.P1543758957506188641

/-! ## A327717.P11742919735338371199

`A127321(A069918(n+1)*A127321(5*n+1))`
-/

namespace A327717.P11742919735338371199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A069918 (n + 1) * A127321 (5 * n + 1)).toNat

end

end A327717.P11742919735338371199

/-! ## A327717.P12872896218639258588

`A136480(A135530(∑[A060145(n)]))`
-/

namespace A327717.P12872896218639258588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A135530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A327717.P12872896218639258588

/-! ## A327717.P14014711869385309327

`A248736(n+1)+A046660(A102456(n))`
-/

namespace A327717.P14014711869385309327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (n + 1) + A046660 (A102456 n).toNat

end

end A327717.P14014711869385309327

/-!
# A327719: Expansion of Product_{k>=1} (1 + x^k/(1 + x^(2*k)/(1 + x^(3*k)/(1 + x^(4*k))))).

The programs for A327719, there is no canonical definition to state claims against.
-/

/-! ## A327719.P13053236280035063086

`A327716(n)-A341519(A000051(n))`
-/

namespace A327719.P13053236280035063086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327716 n - A341519 (A000051 n).toNat

end

end A327719.P13053236280035063086

/-! ## A327719.P17510489283249108848

`A327720(n)-A341519(A000051(n))`
-/

namespace A327719.P17510489283249108848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327720 n - A341519 (A000051 n).toNat

end

end A327719.P17510489283249108848

/-! ## A327719.P15953296000701902288

`A327720(n)-A240328(A223789(n+1))`
-/

namespace A327719.P15953296000701902288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327720 n - A240328 (A223789 (n + 1)).toNat

end

end A327719.P15953296000701902288

/-!
# A327720: Expansion of Product_{k>=1} (1 + x^k/(1 + x^(2*k)/(1 + x^(3*k)/(1 + x^(4*k)/(1 + x^(5*k)))))).

The programs for A327720, there is no canonical definition to state claims against.
-/

/-! ## A327720.P3664438527060963580

`A327716(n)+A025469(A005252(n))`
-/

namespace A327720.P3664438527060963580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327716 n + A025469 (A005252 n).toNat

end

end A327720.P3664438527060963580

/-! ## A327720.P8499875627205422959

`A327716(n)+A102683(A189343(n+1))`
-/

namespace A327720.P8499875627205422959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327716 n + A102683 (A189343 (n + 1)).toNat

end

end A327720.P8499875627205422959

/-! ## A327720.P5341944830783199083

`A327716(n)+A102683(A189905(n+1))`
-/

namespace A327720.P5341944830783199083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327716 n + A102683 (A189905 (n + 1)).toNat

end

end A327720.P5341944830783199083

/-! ## A327720.P2133676443753921168

`A327716(n)+A055641(A071148(3*n+1))`
-/

namespace A327720.P2133676443753921168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327716 n + A055641 (A071148 (3 * n + 1)).toNat

end

end A327720.P2133676443753921168

/-!
# A327721: Dimension of quantum lens space needed for non-uniqueness.

The programs for A327721, there is no canonical definition to state claims against.
-/

/-! ## A327721.P17713476549531695903

`and(A090370(n+4)+1, -2)`
-/

namespace A327721.P17713476549531695903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090370 (n + 4) + 1) (-2)

end

end A327721.P17713476549531695903

/-! ## A327721.P2919624182118138997

`A014683(A090370(n+4))`
-/

namespace A327721.P2919624182118138997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A090370 (n + 4)).toNat

end

end A327721.P2919624182118138997

/-! ## A327721.P3641436030547588941

`A052928(A090370(n+4)+1)`
-/

namespace A327721.P3641436030547588941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A090370 (n + 4) + 1).toNat

end

end A327721.P3641436030547588941

/-! ## A327721.P7147187735846773694

`A001615(A090370(n+4)-1)`
-/

namespace A327721.P7147187735846773694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A090370 (n + 4) - 1).toNat

end

end A327721.P7147187735846773694

/-! ## A327721.P14112393921290357520

`A053158(A090370(n+4)-1)`
-/

namespace A327721.P14112393921290357520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (A090370 (n + 4) - 1).toNat

end

end A327721.P14112393921290357520

/-! ## A327721.P15075560868893075832

`A063649(A090370(n+4)-1)`
-/

namespace A327721.P15075560868893075832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063649 (A090370 (n + 4) - 1).toNat

end

end A327721.P15075560868893075832

/-! ## A327721.P3748813848317751584

`A006530(C(A090370(n+4), 2))+1`
-/

namespace A327721.P3748813848317751584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A090370 (n + 4)).toNat 2) + 1

end

end A327721.P3748813848317751584

/-! ## A327721.P5101573822669640201

`A000203(or(1, A090370(n+4)-1))`
-/

namespace A327721.P5101573822669640201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lor 1 (A090370 (n + 4) - 1)).toNat

end

end A327721.P5101573822669640201

/-! ## A327721.P11366409707267642942

`A000010(2*(A090370(n+4)-1))+2`
-/

namespace A327721.P11366409707267642942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (A090370 (n + 4) - 1)).toNat + 2

end

end A327721.P11366409707267642942

/-! ## A327721.P8112027238239178931

`A006530(or(1, A090370(n+4)-1))+1`
-/

namespace A327721.P8112027238239178931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A090370 (n + 4) - 1)).toNat + 1

end

end A327721.P8112027238239178931

/-!
# A327722: Number T(m,n) of permutations of [n] avoiding the consecutive pattern 12...(m+1)(m+3)(m+2), where m, n >= 0; array read by ascending antidiagonals.

The programs for A327722, there is no canonical definition to state claims against.
-/

/-! ## A327722.P11294192611049715187

`ceil(A106432(Δ[A055236(n)])/8)`
-/

namespace A327722.P11294192611049715187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106432 (f1 (n + 1) - f1 n).toNat : ℚ) / 8⌉

end

end A327722.P11294192611049715187

/-! ## A327722.P1658972220733860790

`A110656(A106432(Δ[A055236(n)]))`
-/

namespace A327722.P1658972220733860790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A106432 (f1 (n + 1) - f1 n).toNat).toNat

end

end A327722.P1658972220733860790

/-! ## A327722.P13649718538265079061

`A125311(n)+A088155(A156953(n))`
-/

namespace A327722.P13649718538265079061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 n + A088155 (A156953 n).toNat

end

end A327722.P13649718538265079061

/-! ## A327722.P6289622762191896767

`A219098(A343649(n+1))+A127568(n)`
-/

namespace A327722.P6289622762191896767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219098 (A343649 (n + 1)).toNat + A127568 n

end

end A327722.P6289622762191896767

/-!
# A327724: Product of A003059 and A071797.

The programs for A327724, the canonical program `A327724.P6706824466192336662` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327724 has offset 1).

The definition of A327724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327724.P6706824466192336662

`(1+A000196(n))*(n+1-A000196(n)²)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327724

/-- `(1+A000196(n))*(n+1-A000196(n)²)` -/
def P6706824466192336662.Spec : Prop :=
  ∀ n, P6706824466192336662.a n = A327724 (n + 1)

theorem P6706824466192336662.correct : P6706824466192336662.Spec := by
  intro n
  simp only [A327724, Nat.add_sub_cancel]

end A327724

/-! ## A327724.P15075915599664672039

`(1-floor(sqrt(n))²+n)*∑[char[n²]]`
-/

namespace A327724.P15075915599664672039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A327724.P15075915599664672039

namespace A327724

/-- `(1-floor(sqrt(n))²+n)*∑[char[n²]]` -/
def P15075915599664672039.Spec : Prop :=
  ∀ n, P15075915599664672039.a n = A327724 (n + 1)

end A327724

/-! ## A327724.P4256100319920592894

`abs((comp[n²+n]-n)*A071797(n+1))`
-/

namespace A327724.P4256100319920592894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A071797 (n + 1)|

end

end A327724.P4256100319920592894

namespace A327724

/-- `abs((comp[n²+n]-n)*A071797(n+1))` -/
def P4256100319920592894.Spec : Prop :=
  ∀ n, P4256100319920592894.a n = A327724 (n + 1)

end A327724

/-! ## A327724.P9116635086071378806

`abs((1-floor(sqrt(n))²+n)*A003059(n+1))`
-/

namespace A327724.P9116635086071378806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) * A003059 (n + 1)|

end

end A327724.P9116635086071378806

namespace A327724

/-- `abs((1-floor(sqrt(n))²+n)*A003059(n+1))` -/
def P9116635086071378806.Spec : Prop :=
  ∀ n, P9116635086071378806.a n = A327724 (n + 1)

end A327724

/-! ## A327724.P14999642033451642596

`abs((A094765(n)+2-n)/2*∑[char[n²]])`
-/

namespace A327724.P14999642033451642596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A094765 n + (2 - (n : ℤ)) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)|

end

end A327724.P14999642033451642596

namespace A327724

/-- `abs((A094765(n)+2-n)/2*∑[char[n²]])` -/
def P14999642033451642596.Spec : Prop :=
  ∀ n, P14999642033451642596.a n = (A327724 (n + 1) : ℚ)

end A327724

/-! ## A327724.P16838908506251152766

`abs((comp[n²+n]-n)*(A053186(n)+1)%(2*(n+1)))`
-/

namespace A327724.P16838908506251152766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * Int.tmod (A053186 n + 1) (2 * (n + 1) : ℤ)|

end

end A327724.P16838908506251152766

namespace A327724

/-- `abs((comp[n²+n]-n)*(A053186(n)+1)%(2*(n+1)))` -/
def P16838908506251152766.Spec : Prop :=
  ∀ n, P16838908506251152766.a n = A327724 (n + 1)

end A327724

/-! ## A327724.P13161604185361709974

`A000027(∑[char[n²]]*A071797(n+1))`
-/

namespace A327724.P13161604185361709974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071797 (n + 1)).toNat

end

end A327724.P13161604185361709974

namespace A327724

/-- `A000027(∑[char[n²]]*A071797(n+1))` -/
def P13161604185361709974.Spec : Prop :=
  ∀ n, P13161604185361709974.a n = A327724 (n + 1)

end A327724

/-! ## A327724.P3566407608437009524

`A000027((1-floor(sqrt(n))²+n)*A003059(n+1))`
-/

namespace A327724.P3566407608437009524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) * A003059 (n + 1)).toNat

end

end A327724.P3566407608437009524

namespace A327724

/-- `A000027((1-floor(sqrt(n))²+n)*A003059(n+1))` -/
def P3566407608437009524.Spec : Prop :=
  ∀ n, P3566407608437009524.a n = A327724 (n + 1)

end A327724

/-! ## A327724.P7746024888287684098

`A071797(n+1)+A000196(n)*A071797(n+1)`
-/

namespace A327724.P7746024888287684098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (n + 1) + A000196 n * A071797 (n + 1)

end

end A327724.P7746024888287684098

namespace A327724

/-- `A071797(n+1)+A000196(n)*A071797(n+1)` -/
def P7746024888287684098.Spec : Prop :=
  ∀ n, P7746024888287684098.a n = A327724 (n + 1)

theorem P7746024888287684098.correct : P7746024888287684098.Spec := by
  intro n
  simp only [A327724, Nat.add_sub_cancel, A327724.P7746024888287684098.a, A327724.P6706824466192336662.a, A000196, A000196.P15434771586934192083.a, A071797, A071797.P5352405656370514398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327724

/-! ## A327724.P13718396451771763529

`A028310(∑[char[n²]]*A071797(n+1))`
-/

namespace A327724.P13718396451771763529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071797 (n + 1)).toNat

end

end A327724.P13718396451771763529

namespace A327724

/-- `A028310(∑[char[n²]]*A071797(n+1))` -/
def P13718396451771763529.Spec : Prop :=
  ∀ n, P13718396451771763529.a n = A327724 (n + 1)

end A327724

/-! ## A327724.P13221575826416555454

`A028310((1-floor(sqrt(n))²+n)*A003059(n+1))`
-/

namespace A327724.P13221575826416555454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) * A003059 (n + 1)).toNat

end

end A327724.P13221575826416555454

namespace A327724

/-- `A028310((1-floor(sqrt(n))²+n)*A003059(n+1))` -/
def P13221575826416555454.Spec : Prop :=
  ∀ n, P13221575826416555454.a n = A327724 (n + 1)

end A327724

/-!
# A327725: Expansion of Product_{i>=1, j>=1} (1 + x^(i*prime(j))).

The programs for A327725, there is no canonical definition to state claims against.
-/

/-! ## A327725.P3483753874972495155

`A185284(A117247(n+1))+A117275(n)`
-/

namespace A327725.P3483753874972495155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A117247 (n + 1)).toNat + A117275 n

end

end A327725.P3483753874972495155

/-! ## A327725.P16929795188579436384

`A117275(n)+A055641(A005246(n))`
-/

namespace A327725.P16929795188579436384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n + A055641 (A005246 n).toNat

end

end A327725.P16929795188579436384

/-! ## A327725.P14009307910537685784

`A321936(A020619(n+1))+A117275(n)`
-/

namespace A327725.P14009307910537685784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A020619 (n + 1)).toNat + A117275 n

end

end A327725.P14009307910537685784

/-! ## A327725.P9366392117398780845

`A117275(n)-A010815(A140522(3*n+2))`
-/

namespace A327725.P9366392117398780845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n - A010815 (A140522 (3 * n + 2)).toNat

end

end A327725.P9366392117398780845

/-!
# A327726: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 3^j)).

The programs for A327726, there is no canonical definition to state claims against.
-/

/-! ## A327726.P2920925157169510279

`A252474(A328798(n))`
-/

namespace A327726.P2920925157169510279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A328798 n).toNat

end

end A327726.P2920925157169510279

/-! ## A327726.P7640894572666531797

`A331995(A328798(n))%A306665(3*(n+1))`
-/

namespace A327726.P7640894572666531797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331995 (A328798 n).toNat) (A306665 (3 * (n + 1)))

end

end A327726.P7640894572666531797

/-!
# A327727: Expansion of Product_{i>=1, j>=0} (1 + x^(i*2^j)) / (1 - x^(i*2^j)).

The programs for A327727, there is no canonical definition to state claims against.
-/

/-! ## A327727.P12341877163072591829

`A328593(A280194(n))+A171238(n+1)`
-/

namespace A327727.P12341877163072591829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328593 (A280194 n).toNat + A171238 (n + 1)

end

end A327727.P12341877163072591829

/-! ## A327727.P11947171950702351262

`A102528(A164178(n))`
-/

namespace A327727.P11947171950702351262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102528 (A164178 n).toNat

end

end A327727.P11947171950702351262

/-! ## A327727.P7625278278355349488

`A063772(A267678(n))`
-/

namespace A327727.P7625278278355349488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A267678 n).toNat

end

end A327727.P7625278278355349488

/-!
# A327728: Number of unlabeled multigraphs with loops allowed and n edges covering three vertices.

The programs for A327728, the canonical program `A327728.P1727755471504395487` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327728 has offset 1).

The definition of A327728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327728.P5725826266097850634

`ogf((2x+4x^2+x^3-2x^4+x^7)/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))`
-/

namespace A327728.P5725826266097850634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 1, -2, 0, 0, 1] [1, -2, -1, 2, 3, 0, -6, 0, 3, 2, -1, -2, 1] n

end

end A327728.P5725826266097850634

namespace A327728

/-- `ogf((2x+4x^2+x^3-2x^4+x^7)/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))` -/
def P5725826266097850634.Spec : Prop :=
  ∀ n, P5725826266097850634.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P1727755471504395487

`A050531(n+1)-A002620(n+3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327728

/-- `A050531(n+1)-A002620(n+3)` -/
def P1727755471504395487.Spec : Prop :=
  ∀ n, P1727755471504395487.a n = A327728 (n + 1)

theorem P1727755471504395487.correct : P1727755471504395487.Spec := by
  intro n
  simp only [A327728, Nat.add_sub_cancel]

end A327728

/-! ## A327728.P241367946907478800

`A055609(n+1)-A005783(n)`
-/

namespace A327728.P241367946907478800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1) - A005783 n

end

end A327728.P241367946907478800

namespace A327728

/-- `A055609(n+1)-A005783(n)` -/
def P241367946907478800.Spec : Prop :=
  ∀ n, P241367946907478800.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P8461923904755504278

`A055609(n+1)-∑[A050531(n)]`
-/

namespace A327728.P8461923904755504278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327728.P8461923904755504278

namespace A327728

/-- `A055609(n+1)-∑[A050531(n)]` -/
def P8461923904755504278.Spec : Prop :=
  ∀ n, P8461923904755504278.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P7029219370534627915

`Δ[A005783(n)-A002623(n)]`
-/

namespace A327728.P7029219370534627915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 n - A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327728.P7029219370534627915

namespace A327728

/-- `Δ[A005783(n)-A002623(n)]` -/
def P7029219370534627915.Spec : Prop :=
  ∀ n, P7029219370534627915.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P309613643989382758

`Δ[∑[A050531(n)]-A002623(n)]`
-/

namespace A327728.P309613643989382758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327728.P309613643989382758

namespace A327728

/-- `Δ[∑[A050531(n)]-A002623(n)]` -/
def P309613643989382758.Spec : Prop :=
  ∀ n, P309613643989382758.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P13998651546677757571

`A050531(n+1)-Δ[A002623(n)]`
-/

namespace A327728.P13998651546677757571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 (n + 1) - (f1 (n + 1) - f1 n)

end

end A327728.P13998651546677757571

namespace A327728

/-- `A050531(n+1)-Δ[A002623(n)]` -/
def P13998651546677757571.Spec : Prop :=
  ∀ n, P13998651546677757571.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P16889294118446111536

`Δ[A005783(n)-A005744(n)]-1`
-/

namespace A327728.P16889294118446111536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 n - A005744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A327728.P16889294118446111536

namespace A327728

/-- `Δ[A005783(n)-A005744(n)]-1` -/
def P16889294118446111536.Spec : Prop :=
  ∀ n, P16889294118446111536.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P7779251886899920925

`A050531(n+1)-A087811(n+2)`
-/

namespace A327728.P7779251886899920925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 (n + 1) - A087811 (n + 2)

end

end A327728.P7779251886899920925

namespace A327728

/-- `A050531(n+1)-A087811(n+2)` -/
def P7779251886899920925.Spec : Prop :=
  ∀ n, P7779251886899920925.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P91377826859715009

`A050531(n+1)-A076921(n+3)`
-/

namespace A327728.P91377826859715009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 (n + 1) - A076921 (n + 3)

end

end A327728.P91377826859715009

namespace A327728

/-- `A050531(n+1)-A076921(n+3)` -/
def P91377826859715009.Spec : Prop :=
  ∀ n, P91377826859715009.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P10966015446570880471

`A050531(n+1)-Δ[A173196(n+2)]`
-/

namespace A327728.P10966015446570880471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 (n + 1) - (f1 (n + 1) - f1 n)

end

end A327728.P10966015446570880471

namespace A327728

/-- `A050531(n+1)-Δ[A173196(n+2)]` -/
def P10966015446570880471.Spec : Prop :=
  ∀ n, P10966015446570880471.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P1029596589607570515

`A055609(n+1)-∑[A089353(A167614(n+1))]`
-/

namespace A327728.P1029596589607570515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327728.P1029596589607570515

namespace A327728

/-- `A055609(n+1)-∑[A089353(A167614(n+1))]` -/
def P1029596589607570515.Spec : Prop :=
  ∀ n, P1029596589607570515.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P6725875247578140506

`A089353(A167614(n+2))-A002620(n+3)`
-/

namespace A327728.P6725875247578140506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A167614 (n + 2)).toNat - A002620 (n + 3)

end

end A327728.P6725875247578140506

namespace A327728

/-- `A089353(A167614(n+2))-A002620(n+3)` -/
def P6725875247578140506.Spec : Prop :=
  ∀ n, P6725875247578140506.a n = A327728 (n + 1)

end A327728

/-! ## A327728.P12804901742163001407

`A089353(A167614(n+2))-A076921(n+3)`
-/

namespace A327728.P12804901742163001407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A167614 (n + 2)).toNat - A076921 (n + 3)

end

end A327728.P12804901742163001407

namespace A327728

/-- `A089353(A167614(n+2))-A076921(n+3)` -/
def P12804901742163001407.Spec : Prop :=
  ∀ n, P12804901742163001407.a n = A327728 (n + 1)

end A327728

/-!
# A327729: a(n) = Sum_{p} M(n-k; p_1-1, ..., p_k-1) * Product_{j=1..k} a(p_j), where p = (p_1, ..., p_k) ranges over all partitions of n into smaller parts (k is a partition length and M is a multinomial).

The programs for A327729, there is no canonical definition to state claims against.
-/

/-! ## A327729.P3200687635514950424

`A003960(A230008(n))`
-/

namespace A327729.P3200687635514950424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A230008 n).toNat

end

end A327729.P3200687635514950424

/-! ## A327729.P12451040626595377653

`A003050(A000258(n)+n)`
-/

namespace A327729.P12451040626595377653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003050 (A000258 n + (n : ℤ)).toNat

end

end A327729.P12451040626595377653

/-! ## A327729.P5774932095223179420

`∏{p}[A230008(n), A157271(#)]`
-/

namespace A327729.P5774932095223179420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A157271 p

end

end A327729.P5774932095223179420

/-!
# A327730: a(n) = A060594(2n).

The programs for A327730, the canonical program `A327730.P1577413118058245570` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327730 has offset 1).

The definition of A327730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327730.P1577413118058245570

`A060594(2*(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A327730

/-- `A060594(2*(n+1))` -/
def P1577413118058245570.Spec : Prop :=
  ∀ n, P1577413118058245570.a n = A327730 (n + 1)

theorem P1577413118058245570.correct : P1577413118058245570.Spec := by
  intro n
  simp only [A327730, Nat.add_sub_cancel]

end A327730

/-! ## A327730.P8839748791209327225

`∏{p}[n+1, and(n, val(#², 2))+2]`
-/

namespace A327730.P8839748791209327225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.land n (SequenceMachineLib.valuation (p ^ 2) 2) + 2)

end

end A327730.P8839748791209327225

namespace A327730

/-- `∏{p}[n+1, and(n, val(#², 2))+2]` -/
def P8839748791209327225.Spec : Prop :=
  ∀ n, (P8839748791209327225.a n : ℤ) = A327730 (n + 1)

end A327730

/-! ## A327730.P15078639853850182518

`Δ[floor(5*n/4)]*A034444(n+1)`
-/

namespace A327730.P15078639853850182518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 4)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A034444 (n + 1)

end

end A327730.P15078639853850182518

namespace A327730

/-- `Δ[floor(5*n/4)]*A034444(n+1)` -/
def P15078639853850182518.Spec : Prop :=
  ∀ n, P15078639853850182518.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P8172251248262999412

`∑{d}[n+1, and(gcd(4, n+1), A008683(#))]`
-/

namespace A327730.P8172251248262999412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (Nat.gcd 4 (n + 1) : ℤ) (A008683 d)

end

end A327730.P8172251248262999412

namespace A327730

/-- `∑{d}[n+1, and(gcd(4, n+1), A008683(#))]` -/
def P8172251248262999412.Spec : Prop :=
  ∀ n, P8172251248262999412.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P9427770519329304871

`A147848(A007948(n+1))`
-/

namespace A327730.P9427770519329304871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147848 (A007948 (n + 1)).toNat

end

end A327730.P9427770519329304871

namespace A327730

/-- `A147848(A007948(n+1))` -/
def P9427770519329304871.Spec : Prop :=
  ∀ n, P9427770519329304871.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P6200080294256714483

`A035532(A147848(n+1))`
-/

namespace A327730.P6200080294256714483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035532 (A147848 (n + 1)).toNat

end

end A327730.P6200080294256714483

namespace A327730

/-- `A035532(A147848(n+1))` -/
def P6200080294256714483.Spec : Prop :=
  ∀ n, P6200080294256714483.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P17220405835715916702

`A050469(A304182(n+1))`
-/

namespace A327730.P17220405835715916702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (A304182 (n + 1)).toNat

end

end A327730.P17220405835715916702

namespace A327730

/-- `A050469(A304182(n+1))` -/
def P17220405835715916702.Spec : Prop :=
  ∀ n, P17220405835715916702.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P17600785140586442081

`A061142(A306652(n+1))`
-/

namespace A327730.P17600785140586442081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A306652 (n + 1)).toNat

end

end A327730.P17600785140586442081

namespace A327730

/-- `A061142(A306652(n+1))` -/
def P17600785140586442081.Spec : Prop :=
  ∀ n, P17600785140586442081.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P18079080331589151028

`A000010(2*A147848(n+1))`
-/

namespace A327730.P18079080331589151028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A147848 (n + 1)).toNat

end

end A327730.P18079080331589151028

namespace A327730

/-- `A000010(2*A147848(n+1))` -/
def P18079080331589151028.Spec : Prop :=
  ∀ n, P18079080331589151028.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P3330696078263335958

`A000010(2*A304182(n+1))`
-/

namespace A327730.P3330696078263335958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A304182 (n + 1)).toNat

end

end A327730.P3330696078263335958

namespace A327730

/-- `A000010(2*A304182(n+1))` -/
def P3330696078263335958.Spec : Prop :=
  ∀ n, P3330696078263335958.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P10865078411641764923

`A034444(n+1)*A177704(n)`
-/

namespace A327730.P10865078411641764923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A177704 n

end

end A327730.P10865078411641764923

namespace A327730

/-- `A034444(n+1)*A177704(n)` -/
def P10865078411641764923.Spec : Prop :=
  ∀ n, P10865078411641764923.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P14688059388253297740

`A100008(n+1)-A317528(n+1)`
-/

namespace A327730.P14688059388253297740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100008 (n + 1) - A317528 (n + 1)

end

end A327730.P14688059388253297740

namespace A327730

/-- `A100008(n+1)-A317528(n+1)` -/
def P14688059388253297740.Spec : Prop :=
  ∀ n, P14688059388253297740.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P5124863411253884311

`and(A147848(n+1), A304182(n+1))`
-/

namespace A327730.P5124863411253884311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147848 (n + 1)) (A304182 (n + 1))

end

end A327730.P5124863411253884311

namespace A327730

/-- `and(A147848(n+1), A304182(n+1))` -/
def P5124863411253884311.Spec : Prop :=
  ∀ n, P5124863411253884311.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P15936294266024334670

`A034444(n+1)*A040001(A032742(n+1))`
-/

namespace A327730.P15936294266024334670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A040001 (A032742 (n + 1)).toNat

end

end A327730.P15936294266024334670

namespace A327730

/-- `A034444(n+1)*A040001(A032742(n+1))` -/
def P15936294266024334670.Spec : Prop :=
  ∀ n, P15936294266024334670.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P8140621246242729033

`A034444(n+1)*A071773(2*A071773(n+1))`
-/

namespace A327730.P8140621246242729033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A071773 (2 * A071773 (n + 1)).toNat

end

end A327730.P8140621246242729033

namespace A327730

/-- `A034444(n+1)*A071773(2*A071773(n+1))` -/
def P8140621246242729033.Spec : Prop :=
  ∀ n, P8140621246242729033.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P7754471594237340658

`A000010(2*(n+1))/A046073(2*(n+1))`
-/

namespace A327730.P7754471594237340658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / (A046073 (2 * (n + 1)) : ℚ)

end

end A327730.P7754471594237340658

namespace A327730

/-- `A000010(2*(n+1))/A046073(2*(n+1))` -/
def P7754471594237340658.Spec : Prop :=
  ∀ n, P7754471594237340658.a n = (A327730 (n + 1) : ℚ)

end A327730

/-! ## A327730.P2303868010959457993

`A155828(2*(n+1))+1`
-/

namespace A327730.P2303868010959457993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (2 * (n + 1)) + 1

end

end A327730.P2303868010959457993

namespace A327730

/-- `A155828(2*(n+1))+1` -/
def P2303868010959457993.Spec : Prop :=
  ∀ n, P2303868010959457993.a n = A327730 (n + 1)

theorem P2303868010959457993.correct : P2303868010959457993.Spec := by
  intro n
  simp only [A327730, Nat.add_sub_cancel, A327730.P2303868010959457993.a, A327730.P1577413118058245570.a, A060594, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A155828, A155828.P14308889291480101554.a, A114643, A114643.P3385208476335884825.a, A050361, A050361.P4609984906141832222.f1, A050361.P4609984906141832222.a, A063659, A063659.P17976112420004081821.a, A063658, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A347586, A347586.P6878572311121842152.f1, A347586.P6878572311121842152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327730

/-! ## A327730.P13017091134368270881

`A003958(A087688(2*(n+1)))`
-/

namespace A327730.P13017091134368270881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A087688 (2 * (n + 1))).toNat

end

end A327730.P13017091134368270881

namespace A327730

/-- `A003958(A087688(2*(n+1)))` -/
def P13017091134368270881.Spec : Prop :=
  ∀ n, P13017091134368270881.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P12430265724644952981

`A147848(2*(n+1))-A034444(n+1)`
-/

namespace A327730.P12430265724644952981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147848 (2 * (n + 1)) - A034444 (n + 1)

end

end A327730.P12430265724644952981

namespace A327730

/-- `A147848(2*(n+1))-A034444(n+1)` -/
def P12430265724644952981.Spec : Prop :=
  ∀ n, P12430265724644952981.a n = A327730 (n + 1)

end A327730

/-! ## A327730.P12385376164893386839

`A034444(2*(n+1))-A317528(n+1)`
-/

namespace A327730.P12385376164893386839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (2 * (n + 1)) - A317528 (n + 1)

end

end A327730.P12385376164893386839

namespace A327730

/-- `A034444(2*(n+1))-A317528(n+1)` -/
def P12385376164893386839.Spec : Prop :=
  ∀ n, P12385376164893386839.a n = A327730 (n + 1)

end A327730

/-!
# A327731: Expansion of Product_{i>=1, j>=1} (1 + x^(i*(2*j - 1))).

The programs for A327731, there is no canonical definition to state claims against.
-/

/-! ## A327731.P5643176987971632735

`A026814(n)+A116645(n)+A077655(A284482(n))`
-/

namespace A327731.P5643176987971632735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n + (A116645 n + A077655 (A284482 n).toNat)

end

end A327731.P5643176987971632735

/-! ## A327731.P1791547820346414499

`A118759(A116645(n)+A026814(n))`
-/

namespace A327731.P1791547820346414499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A116645 n + A026814 n).toNat

end

end A327731.P1791547820346414499

/-! ## A327731.P13339427251701935025

`A118759(A308990(n)+A116645(n))`
-/

namespace A327731.P13339427251701935025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A308990 n + A116645 n).toNat

end

end A327731.P13339427251701935025

/-! ## A327731.P12362818796794623394

`A322847(A116645(n))`
-/

namespace A327731.P12362818796794623394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (A116645 n).toNat

end

end A327731.P12362818796794623394

/-!
# A327732: Partition the decimal digits of Pi and e into groups of two. The sequence gives the positions where those two-digit groups match.

The programs for A327732, there is no canonical definition to state claims against.
-/

/-! ## A327732.P10552021018053860643

`∩[A052055(n+1), A068394(n+1)]`
-/

namespace A327732.P10552021018053860643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327732.P10552021018053860643

/-! ## A327732.P14501001977915096445

`record[gcd(A052055(n+2), A068394(n+3))]`
-/

namespace A327732.P14501001977915096445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052055 (n + 2)) (A068394 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327732.P14501001977915096445

/-! ## A327732.P6089300961149412245

`∩[A068394(n+1)+1, A068394(n+2)]`
-/

namespace A327732.P6089300961149412245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068394 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068394 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327732.P6089300961149412245

/-! ## A327732.P1841053154464164812

`∩[A052055(n+1)-1, A052055(n+2)]`
-/

namespace A327732.P1841053154464164812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327732.P1841053154464164812

/-! ## A327732.P10159537811175883164

`A052055(eq[1, A052055(n+2)-A052055(n+1)]+1)`
-/

namespace A327732.P10159537811175883164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 2) - A052055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A327732.P10159537811175883164

/-! ## A327732.P11356686613389120028

`∩[A068394(n+1), A020725(A068394(n+2))]`
-/

namespace A327732.P11356686613389120028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A068394 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327732.P11356686613389120028

/-! ## A327732.P14302952575257269090

`∩[A052055(n+1), A023443(A052055(n+2))]`
-/

namespace A327732.P14302952575257269090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A052055 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327732.P14302952575257269090

/-! ## A327732.P18041308852535895749

`∩[A289207(A052055(n+1)+1), A052055(n+1)]`
-/

namespace A327732.P18041308852535895749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A052055 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327732.P18041308852535895749

/-!
# A327734: Number of n-bead bracelets of exactly two colors having no nonidentity symmetry under rotation, reflection, and color permutation.

The programs for A327734, there is no canonical definition to state claims against.
-/

/-! ## A327734.P12251032366366873808

`A324802(∑[n]+2)`
-/

namespace A327734.P12251032366366873808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A327734.P12251032366366873808

/-! ## A327734.P17756186753173344970

`A324803(∑[n+2])`
-/

namespace A327734.P17756186753173344970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324803 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327734.P17756186753173344970

/-! ## A327734.P6901315808015921137

`A113221(A059053(n+1))`
-/

namespace A327734.P6901315808015921137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A059053 (n + 1)).toNat

end

end A327734.P6901315808015921137

/-! ## A327734.P17485619324196382378

`A113221(A308706(n+1))`
-/

namespace A327734.P17485619324196382378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A308706 (n + 1)).toNat

end

end A327734.P17485619324196382378

/-! ## A327734.P5992977444722546107

`A324802(A133263(n))%A000124(n)`
-/

namespace A327734.P5992977444722546107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324802 (A133263 n).toNat) (A000124 n)

end

end A327734.P5992977444722546107

/-!
# A327735: Lexicographically earliest sequence of distinct positive numbers such that if we add ten successive digits the result is divisible by 10.

The programs for A327735, there is no canonical definition to state claims against.
-/

/-! ## A327735.P13919626233140546608

`A078213(n+1)%p?[A194916(2*(n+1))]`
-/

namespace A327735.P13919626233140546608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078213 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A327735.P13919626233140546608

/-! ## A327735.P8347751917057247508

`A327455(n+1)+A285007(A039867(n+1))`
-/

namespace A327735.P8347751917057247508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327455 (n + 1) + A285007 (A039867 (n + 1)).toNat

end

end A327735.P8347751917057247508

/-! ## A327735.P14912557892782196188

`or(A327455(n+1), A327462(A327483(2*n)))`
-/

namespace A327735.P14912557892782196188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A327455 (n + 1)) (A327462 (A327483 (2 * n)).toNat)

end

end A327735.P14912557892782196188

/-! ## A327735.P17656499705144561787

`or(A093997(A185044(2*n+1)), A327455(n+1))`
-/

namespace A327735.P17656499705144561787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093997 (A185044 (2 * n + 1)).toNat) (A327455 (n + 1))

end

end A327735.P17656499705144561787

/-! ## A327735.P17122426526078522412

`or(A093997(A185238(3*n+2)), A327455(n+1))`
-/

namespace A327735.P17122426526078522412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093997 (A185238 (3 * n + 2)).toNat) (A327455 (n + 1))

end

end A327735.P17122426526078522412

/-!
# A327736: Expansion of 1 / (1 - Sum_{i>=1, j>=0} x^(i*2^j)).

The programs for A327736, there is no canonical definition to state claims against.
-/

/-! ## A327736.P14627769534912473449

`A114199(n)-∑{e}[A114160(n), #]`
-/

namespace A327736.P14627769534912473449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114199 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A327736.P14627769534912473449

/-! ## A327736.P3560033252867735735

`A032176(n+1)+A001222(A208221(n))`
-/

namespace A327736.P3560033252867735735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032176 (n + 1) + A001222 (A208221 n).toNat

end

end A327736.P3560033252867735735

/-! ## A327736.P6930100349504521636

`A032176(n+1)+A001222(A208224(n))`
-/

namespace A327736.P6930100349504521636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032176 (n + 1) + A001222 (A208224 n).toNat

end

end A327736.P6930100349504521636

/-! ## A327736.P9128136656085820107

`A005041(A005627(n+1)*A148219(n))`
-/

namespace A327736.P9128136656085820107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A005627 (n + 1) * A148219 n).toNat

end

end A327736.P9128136656085820107

/-!
# A327737: a(n) is the sum of the lengths of the base-b expansions of n for all b with 1 <= b <= n.

The programs for A327737, the canonical program `A327737.P6566984932451664947` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327737 has offset 1).

The definition of A327737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327737.P5324812826021085087

`A342871(n+1)+n`
-/

namespace A327737.P5324812826021085087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342871 (n + 1) + (n : ℤ)

end

end A327737.P5324812826021085087

namespace A327737

/-- `A342871(n+1)+n` -/
def P5324812826021085087.Spec : Prop :=
  ∀ n, P5324812826021085087.a n = A327737 (n + 1)

theorem P5324812826021085087.correct : P5324812826021085087.Spec := by
  intro n
  simp only [A327737, Nat.add_sub_cancel, A327737.P5324812826021085087.a, A327737.P6566984932451664947.f1, A327737.P6566984932451664947.a, A255165, A255165.P14114084822709087673.f1, A255165.P14114084822709087673.a, A342871, A342871.P1608004404490224182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327737

/-! ## A327737.P6566984932451664947

`A255165(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327737

/-- `A255165(n+1)+Δ[n²]` -/
def P6566984932451664947.Spec : Prop :=
  ∀ n, P6566984932451664947.a n = A327737 (n + 1)

theorem P6566984932451664947.correct : P6566984932451664947.Spec := by
  intro n
  simp only [A327737, Nat.add_sub_cancel]

end A327737

/-! ## A327737.P2526291887132489308

`∑[A089723(n+1)+2]-2`
-/

namespace A327737.P2526291887132489308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A327737.P2526291887132489308

namespace A327737

/-- `∑[A089723(n+1)+2]-2` -/
def P2526291887132489308.Spec : Prop :=
  ∀ n, P2526291887132489308.a n = A327737 (n + 1)

end A327737

/-! ## A327737.P13748994126735114885

`∑[A259362(n+1)+3]-3`
-/

namespace A327737.P13748994126735114885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A327737.P13748994126735114885

namespace A327737

/-- `∑[A259362(n+1)+3]-3` -/
def P13748994126735114885.Spec : Prop :=
  ∀ n, P13748994126735114885.a n = A327737 (n + 1)

end A327737

/-! ## A327737.P6963164660369044212

`3*n+A089361(n+1)+1`
-/

namespace A327737.P6963164660369044212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A089361 (n + 1) + 1)

end

end A327737.P6963164660369044212

namespace A327737

/-- `3*n+A089361(n+1)+1` -/
def P6963164660369044212.Spec : Prop :=
  ∀ n, P6963164660369044212.a n = A327737 (n + 1)

end A327737

/-! ## A327737.P8919939468704446817

`A089361(n+1)+A016777(n)`
-/

namespace A327737.P8919939468704446817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (n + 1) + A016777 n

end

end A327737.P8919939468704446817

namespace A327737

/-- `A089361(n+1)+A016777(n)` -/
def P8919939468704446817.Spec : Prop :=
  ∀ n, P8919939468704446817.a n = A327737 (n + 1)

end A327737

/-! ## A327737.P13993587667719870692

`A005843(n)+∑[A089723(n+1)]`
-/

namespace A327737.P13993587667719870692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327737.P13993587667719870692

namespace A327737

/-- `A005843(n)+∑[A089723(n+1)]` -/
def P13993587667719870692.Spec : Prop :=
  ∀ n, P13993587667719870692.a n = A327737 (n + 1)

end A327737

/-! ## A327737.P487339112285930801

`∑[A000005(A253641(n+1))]+2*n`
-/

namespace A327737.P487339112285930801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A253641 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A327737.P487339112285930801

namespace A327737

/-- `∑[A000005(A253641(n+1))]+2*n` -/
def P487339112285930801.Spec : Prop :=
  ∀ n, P487339112285930801.a n = A327737 (n + 1)

end A327737

/-!
# A327738: Expansion of 1 / (1 - Sum_{i>=1, j>=1} x^(i*j^2)).

The programs for A327738, there is no canonical definition to state claims against.
-/

/-! ## A327738.P5581123910762621943

`A382203(n)-A285177(A007837(n))`
-/

namespace A327738.P5581123910762621943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382203 n - A285177 (A007837 n).toNat

end

end A327738.P5581123910762621943

/-! ## A327738.P15764327469186290965

`xor(A382172(A000108(n)), A382203(n))`
-/

namespace A327738.P15764327469186290965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A382172 (A000108 n).toNat) (A382203 n)

end

end A327738.P15764327469186290965

/-! ## A327738.P8070841151758912900

`A382424(A382390(n+1))+A382372(n)`
-/

namespace A327738.P8070841151758912900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382424 (A382390 (n + 1)).toNat + A382372 n

end

end A327738.P8070841151758912900

/-!
# A327739: Expansion of 1 / (1 - Sum_{i>=1} Sum_{j=1..i} x^(i*j)).

The programs for A327739, there is no canonical definition to state claims against.
-/

/-! ## A327739.P13337135799356829708

`A192922(n)+A135660(A001671(n))`
-/

namespace A327739.P13337135799356829708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192922 n + A135660 (A001671 n).toNat

end

end A327739.P13337135799356829708

/-! ## A327739.P9926765456825265619

`A157271(or(A246552(n), A335713(n+1)))`
-/

namespace A327739.P9926765456825265619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A246552 n) (A335713 (n + 1))).toNat

end

end A327739.P9926765456825265619

/-! ## A327739.P10911476124146671900

`A157271(or(A002265(n+2), A335713(n+1)))`
-/

namespace A327739.P10911476124146671900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A002265 (n + 2)) (A335713 (n + 1))).toNat

end

end A327739.P10911476124146671900

/-! ## A327739.P10755318159934463991

`A000006(A148695(n))`
-/

namespace A327739.P10755318159934463991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A148695 n).toNat

end

end A327739.P10755318159934463991

/-! ## A327739.P17982590466479627905

`A000006(A148696(n))`
-/

namespace A327739.P17982590466479627905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A148696 n).toNat

end

end A327739.P17982590466479627905

/-!
# A327740: Number of n-bead bracelet structures using an infinite alphabet that are not self-equivalent under either a nonzero rotation or reversal (turning over bracelet).

The programs for A327740, there is no canonical definition to state claims against.
-/

/-! ## A327740.P15309082968248578571

`A324803(2*n²+1)`
-/

namespace A327740.P15309082968248578571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324803 (2 * n ^ 2 + 1)

end

end A327740.P15309082968248578571

/-! ## A327740.P10967447420558574247

`A085861(A357797(n))`
-/

namespace A327740.P10967447420558574247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (A357797 n).toNat

end

end A327740.P10967447420558574247

/-! ## A327740.P4878049450970607891

`A065716(A027046(n)+1)`
-/

namespace A327740.P4878049450970607891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A027046 n + 1).toNat

end

end A327740.P4878049450970607891

/-! ## A327740.P18107466646822669886

`A141100(A357782(n)+n)`
-/

namespace A327740.P18107466646822669886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (A357782 n + (n : ℤ)).toNat

end

end A327740.P18107466646822669886

/-!
# A327742: Triangle T(k, n) read by rows, where the entries of the triangle are lengths of longest runs of consecutive sums of k-length combinations of first n primes. Specially, T(0, n) = 1.

The programs for A327742, there is no canonical definition to state claims against.
-/

/-! ## A327742.P10412049295180553083

`A111972(3*A167040(n))`
-/

namespace A327742.P10412049295180553083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (3 * A167040 n).toNat

end

end A327742.P10412049295180553083

/-! ## A327742.P6243057871719670719

`A110592(3*A174546(n))`
-/

namespace A327742.P6243057871719670719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (3 * A174546 n).toNat

end

end A327742.P6243057871719670719

/-! ## A327742.P15742713819292432128

`A225541(8*A174545(n))`
-/

namespace A327742.P15742713819292432128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (8 * A174545 n).toNat

end

end A327742.P15742713819292432128

/-! ## A327742.P7050369524893518062

`A111972(4^A099172(n))`
-/

namespace A327742.P7050369524893518062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A099172 n : ℤ))).toNat

end

end A327742.P7050369524893518062

/-! ## A327742.P15276327107997700976

`A217710(10*A174546(n))`
-/

namespace A327742.P15276327107997700976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (10 * A174546 n).toNat

end

end A327742.P15276327107997700976

/-!
# A327743: a(n) = smallest positive number not already in the sequence such that for each k = 1, ..., n-1, the k-th differences are distinct.

The programs for A327743, there is no canonical definition to state claims against.
-/

/-! ## A327743.P6430355191182035985

`A327844(A052905(n+3))`
-/

namespace A327743.P6430355191182035985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A052905 (n + 3)).toNat

end

end A327743.P6430355191182035985

/-! ## A327743.P4042914269314163861

`A327844(A056119(n)+16)`
-/

namespace A327743.P4042914269314163861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A056119 n + 16).toNat

end

end A327743.P4042914269314163861

/-! ## A327743.P6752871012238228578

`A327844(Δ[A055831(n+5)])`
-/

namespace A327743.P6752871012238228578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (f1 (n + 1) - f1 n).toNat

end

end A327743.P6752871012238228578

/-! ## A327743.P4173185353046134872

`A327844(A055999(n+3)+1)`
-/

namespace A327743.P4173185353046134872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A055999 (n + 3) + 1).toNat

end

end A327743.P4173185353046134872

/-! ## A327743.P12664011550643233372

`A327844(A027379(n+4)-2)`
-/

namespace A327743.P12664011550643233372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A027379 (n + 4) - 2).toNat

end

end A327743.P12664011550643233372

/-! ## A327743.P7716296811109828354

`A327844(A000096(n+5)-4)`
-/

namespace A327743.P7716296811109828354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A000096 (n + 5) - 4).toNat

end

end A327743.P7716296811109828354

/-! ## A327743.P4060885472643254792

`A327844(A000217(n+6)-5)`
-/

namespace A327743.P4060885472643254792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A000217 (n + 6) - 5).toNat

end

end A327743.P4060885472643254792

/-! ## A327743.P13551231177301570552

`A327844(A000124(n+6)-6)`
-/

namespace A327743.P13551231177301570552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A000124 (n + 6) - 6).toNat

end

end A327743.P13551231177301570552

/-! ## A327743.P7477383460145236454

`A327844(Δ[A023551(n+1)]+1)`
-/

namespace A327743.P7477383460145236454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (f1 (n + 1) - f1 n + 1).toNat

end

end A327743.P7477383460145236454

/-! ## A327743.P1585219046581669735

`A327844(A004275(n+4)+A000217(n+4))`
-/

namespace A327743.P1585219046581669735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A004275 (n + 4) + A000217 (n + 4)).toNat

end

end A327743.P1585219046581669735

/-! ## A327743.P10386112378773201130

`A327844(A055999(n+4))`
-/

namespace A327743.P10386112378773201130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A055999 (n + 4)).toNat

end

end A327743.P10386112378773201130

/-! ## A327743.P14870879439336776128

`A327844(Δ[A023551(n+2)])`
-/

namespace A327743.P14870879439336776128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (f1 (n + 1) - f1 n).toNat

end

end A327743.P14870879439336776128

/-! ## A327743.P10469132051804865990

`A327844(A056119(n+16))`
-/

namespace A327743.P10469132051804865990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A056119 (n + 16)).toNat

end

end A327743.P10469132051804865990

/-!
# A327744: Expansion of Product_{i>=1, j>=1} 1 / (1 - x^(i*j*(j + 1)/2)).

The programs for A327744, there is no canonical definition to state claims against.
-/

/-! ## A327744.P3747770239296079697

`A344604(n)+A302242(A072856(n))`
-/

namespace A327744.P3747770239296079697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344604 n + A302242 (A072856 n).toNat

end

end A327744.P3747770239296079697

/-! ## A327744.P10412829773864373338

`2*A318026(n)-A339241(A110725(n))`
-/

namespace A327744.P10412829773864373338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318026 n - A339241 (A110725 n).toNat

end

end A327744.P10412829773864373338

/-! ## A327744.P3813922152023528775

`2*A318026(n)-A339241(A169919(n))`
-/

namespace A327744.P3813922152023528775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318026 n - A339241 (A169919 n).toNat

end

end A327744.P3813922152023528775

/-! ## A327744.P17728602037645711444

`A004277(A318026(n))-A339241(A110725(n))`
-/

namespace A327744.P17728602037645711444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A318026 n).toNat - A339241 (A110725 n).toNat

end

end A327744.P17728602037645711444

/-! ## A327744.P15242442213222050318

`A055572(A226007(n+1))`
-/

namespace A327744.P15242442213222050318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A226007 (n + 1)).toNat

end

end A327744.P15242442213222050318

/-!
# A327745: Expansion of Product_{i>=1, j>=1} (1 + x^(i*j*(j + 1)/2)).

The programs for A327745, there is no canonical definition to state claims against.
-/

/-! ## A327745.P13454052033624191811

`A327045(n)-A238589(A077168(n))`
-/

namespace A327745.P13454052033624191811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327045 n - A238589 (A077168 n).toNat

end

end A327745.P13454052033624191811

/-! ## A327745.P8323683928915910465

`A327045(n)-A351870(A238589(n+1))`
-/

namespace A327745.P8323683928915910465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327045 n - A351870 (A238589 (n + 1)).toNat

end

end A327745.P8323683928915910465

/-!
# A327747: Expansion of Product_{i>=1, j>=1} 1 / (1 + (-x)^(i*j^2)).

The programs for A327747, there is no canonical definition to state claims against.
-/

/-! ## A327747.P1961428445357949289

`A333382(A241638(n))+A010054(n)`
-/

namespace A327747.P1961428445357949289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A241638 n).toNat + A010054 n

end

end A327747.P1961428445357949289

/-! ## A327747.P8073794152733572898

`A382771(A167529(n+2))`
-/

namespace A327747.P8073794152733572898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382771 (A167529 (n + 2)).toNat

end

end A327747.P8073794152733572898

/-! ## A327747.P14311044256735482083

`A073490(A002531(n))+char[A108624(n+1)]`
-/

namespace A327747.P14311044256735482083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108624 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A002531 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327747.P14311044256735482083

/-! ## A327747.P8810967313676768482

`A287407(A026438(n+1)*A223669(n+1))`
-/

namespace A327747.P8810967313676768482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A026438 (n + 1) * A223669 (n + 1)).toNat

end

end A327747.P8810967313676768482

/-!
# A327748: Primes p such that the sum of p and the prime before p is not a multiple of 3.

The programs for A327748, the canonical program `A327748.P16131196812816451464` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327748 has offset 1).

The definition of A327748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327748.P16131196812816451464

`p?[A054763(n+1)+A045319(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327748

/-- `p?[A054763(n+1)+A045319(n+1)]` -/
def P16131196812816451464.Spec : Prop :=
  ∀ n, P16131196812816451464.a n = A327748 (n + 1)

theorem P16131196812816451464.correct : P16131196812816451464.Spec := by
  intro n
  simp only [A327748, Nat.add_sub_cancel]

end A327748

/-! ## A327748.P12954140270098368807

`p?[gcd(3, A001043(n+1))*A000040(n+2)]`
-/

namespace A327748.P12954140270098368807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A001043 (n + 1)) : ℤ) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327748.P12954140270098368807

namespace A327748

/-- `p?[gcd(3, A001043(n+1))*A000040(n+2)]` -/
def P12954140270098368807.Spec : Prop :=
  ∀ n, P12954140270098368807.a n = A327748 (n + 1)

end A327748

/-! ## A327748.P16094764546914534207

`p?[A091684(A001223(n+1))+A045319(n+1)]`
-/

namespace A327748.P16094764546914534207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A001223 (n + 1)).toNat + A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327748.P16094764546914534207

namespace A327748

/-- `p?[A091684(A001223(n+1))+A045319(n+1)]` -/
def P16094764546914534207.Spec : Prop :=
  ∀ n, P16094764546914534207.a n = A327748 (n + 1)

end A327748

/-! ## A327748.P5800352587156756197

`A007918(floor((A323139(n+1)+1)/2))`
-/

namespace A327748.P5800352587156756197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ⌊(A323139 (n + 1) + 1 : ℚ) / 2⌋.toNat

end

end A327748.P5800352587156756197

namespace A327748

/-- `A007918(floor((A323139(n+1)+1)/2))` -/
def P5800352587156756197.Spec : Prop :=
  ∀ n, P5800352587156756197.a n = A327748 (n + 1)

end A327748

/-! ## A327748.P9953740885025021473

`A076272(A323139(n+1))`
-/

namespace A327748.P9953740885025021473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A323139 (n + 1)).toNat

end

end A327748.P9953740885025021473

namespace A327748

/-- `A076272(A323139(n+1))` -/
def P9953740885025021473.Spec : Prop :=
  ∀ n, P9953740885025021473.a n = A327748 (n + 1)

end A327748

/-! ## A327748.P18282673289337136211

`record[A091684(A001043(n+1))-A000040(n+1)]`
-/

namespace A327748.P18282673289337136211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A001043 (n + 1)).toNat - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327748.P18282673289337136211

namespace A327748

/-- `record[A091684(A001043(n+1))-A000040(n+1)]` -/
def P18282673289337136211.Spec : Prop :=
  ∀ n, P18282673289337136211.a n = A327748 (n + 1)

end A327748

/-! ## A327748.P644850767482244984

`record[A091684(A001043(n+1))-A008578(n+2)]`
-/

namespace A327748.P644850767482244984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A001043 (n + 1)).toNat - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327748.P644850767482244984

namespace A327748

/-- `record[A091684(A001043(n+1))-A008578(n+2)]` -/
def P644850767482244984.Spec : Prop :=
  ∀ n, P644850767482244984.a n = A327748 (n + 1)

end A327748

/-! ## A327748.P8622059442437099056

`record[A091684(A092949(n+1)-1)-A000040(n+1)]`
-/

namespace A327748.P8622059442437099056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A092949 (n + 1) - 1).toNat - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327748.P8622059442437099056

namespace A327748

/-- `record[A091684(A092949(n+1)-1)-A000040(n+1)]` -/
def P8622059442437099056.Spec : Prop :=
  ∀ n, P8622059442437099056.a n = A327748 (n + 1)

end A327748

/-! ## A327748.P11193718779009222493

`p?[(n+1)*A038500(A064989(n+1)+n+1)]`
-/

namespace A327748.P11193718779009222493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038500 (A064989 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327748.P11193718779009222493

namespace A327748

/-- `p?[(n+1)*A038500(A064989(n+1)+n+1)]` -/
def P11193718779009222493.Spec : Prop :=
  ∀ n, P11193718779009222493.a n = A327748 (n + 1)

end A327748

/-! ## A327748.P1298838499404508881

`p?[A106610(A079427(n+1)+n+1)-(n+1)]`
-/

namespace A327748.P1298838499404508881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A079427 (n + 1) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327748.P1298838499404508881

namespace A327748

/-- `p?[A106610(A079427(n+1)+n+1)-(n+1)]` -/
def P1298838499404508881.Spec : Prop :=
  ∀ n, P1298838499404508881.a n = A327748 (n + 1)

end A327748

/-!
# A327749: Natural numbers whose sum of prime factors (with repetition) is palindromic in base 10.

The programs for A327749, there is no canonical definition to state claims against.
-/

/-! ## A327749.P17329124883627667575

`∪[A046352(n+1), A069217(n+1)]`
-/

namespace A327749.P17329124883627667575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327749.P17329124883627667575

/-! ## A327749.P10800084480034782342

`eq[A001414(n+1), A004086(A001414(n+1))]+1`
-/

namespace A327749.P10800084480034782342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A327749.P10800084480034782342

/-! ## A327749.P13704200774340256607

`lt[A248327(A001414(n+1)), 1]+1`
-/

namespace A327749.P13704200774340256607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (A001414 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327749.P13704200774340256607

/-!
# A327750: Numbers without zero digits such that after adding the product of its digits to it, a number with the same product of digits is obtained.

The programs for A327750, the canonical program `A327750.P8221723074471810655` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327750 has offset 1).

The definition of A327750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327750.P8221723074471810655

`eq[A007954(A230099(n)), A051801(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327750

/-- `eq[A007954(A230099(n)), A051801(n)]` -/
def P8221723074471810655.Spec : Prop :=
  ∀ n, (P8221723074471810655.a n : ℤ) = A327750 (n + 1)

theorem P8221723074471810655.correct : P8221723074471810655.Spec := by
  intro n
  simp only [A327750, Nat.add_sub_cancel]

end A327750

/-!
# A327751: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(n,k) is the constant term in the expansion of (-1 + Product_{j=1..n} (1 + x_j + 1/x_j))^k.

The programs for A327751, there is no canonical definition to state claims against.
-/

/-! ## A327751.P12390909327402271224

`A324117(2^A322549(n))`
-/

namespace A327751.P12390909327402271224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322549 n : ℤ))).toNat

end

end A327751.P12390909327402271224

/-! ## A327751.P15038894949217064462

`and(A000005(A337410(n+1)), A256130(n))`
-/

namespace A327751.P15038894949217064462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A337410 (n + 1)).toNat) (A256130 n)

end

end A327751.P15038894949217064462

/-! ## A327751.P5162348915193104615

`and(A000005(A337414(n+1)), A256130(n))`
-/

namespace A327751.P5162348915193104615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A337414 (n + 1)).toNat) (A256130 n)

end

end A327751.P5162348915193104615

/-! ## A327751.P4549665574269246717

`and(A000005(A337410(n+1)), A293109(n))`
-/

namespace A327751.P4549665574269246717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A337410 (n + 1)).toNat) (A293109 n)

end

end A327751.P4549665574269246717

/-! ## A327751.P10182934426711613407

`and(A000005(A337414(n+1)), A293109(n))`
-/

namespace A327751.P10182934426711613407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A337414 (n + 1)).toNat) (A293109 n)

end

end A327751.P10182934426711613407

/-!
# A327752: Primes powers (A246655) congruent to 1 mod 5.

The programs for A327752, the canonical program `A327752.P6389492624928042465` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327752 has offset 1).

The definition of A327752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327752.P11307741310717788559

`∩[5*n+1, A246655(n+2)]`
-/

namespace A327752.P11307741310717788559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P11307741310717788559

namespace A327752

/-- `∩[5*n+1, A246655(n+2)]` -/
def P11307741310717788559.Spec : Prop :=
  ∀ n, (P11307741310717788559.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P17233434841742732665

`∩[5*n+11, A225657(n+2)]`
-/

namespace A327752.P17233434841742732665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P17233434841742732665

namespace A327752

/-- `∩[5*n+11, A225657(n+2)]` -/
def P17233434841742732665.Spec : Prop :=
  ∀ n, (P17233434841742732665.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P18173531271015909564

`∩[5*(n+1)+1, A000961(n+1)]`
-/

namespace A327752.P18173531271015909564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P18173531271015909564

namespace A327752

/-- `∩[5*(n+1)+1, A000961(n+1)]` -/
def P18173531271015909564.Spec : Prop :=
  ∀ n, (P18173531271015909564.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P6389492624928042465

`record[A008475(5*n+11)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327752

/-- `record[A008475(5*n+11)]` -/
def P6389492624928042465.Spec : Prop :=
  ∀ n, P6389492624928042465.a n = A327752 (n + 1)

theorem P6389492624928042465.correct : P6389492624928042465.Spec := by
  intro n
  simp only [A327752, Nat.add_sub_cancel]

end A327752

/-! ## A327752.P6543738669691591951

`record[A034699(5*n+11)]`
-/

namespace A327752.P6543738669691591951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (5 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327752.P6543738669691591951

namespace A327752

/-- `record[A034699(5*n+11)]` -/
def P6543738669691591951.Spec : Prop :=
  ∀ n, P6543738669691591951.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P1205610088914902269

`filter[A016861(n), A069513(#)]`
-/

namespace A327752.P1205610088914902269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P1205610088914902269

namespace A327752

/-- `filter[A016861(n), A069513(#)]` -/
def P1205610088914902269.Spec : Prop :=
  ∀ n, P1205610088914902269.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P878467978909656423

`∩[A185189(n+1), A016861(n)]`
-/

namespace A327752.P878467978909656423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P878467978909656423

namespace A327752

/-- `∩[A185189(n+1), A016861(n)]` -/
def P878467978909656423.Spec : Prop :=
  ∀ n, (P878467978909656423.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P371075654643523302

`∩[A246655(n+1), A016861(n)]`
-/

namespace A327752.P371075654643523302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P371075654643523302

namespace A327752

/-- `∩[A246655(n+1), A016861(n)]` -/
def P371075654643523302.Spec : Prop :=
  ∀ n, (P371075654643523302.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P9110106248337256232

`∩[A000961(n+1), A016897(n)+2]`
-/

namespace A327752.P9110106248337256232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P9110106248337256232

namespace A327752

/-- `∩[A000961(n+1), A016897(n)+2]` -/
def P9110106248337256232.Spec : Prop :=
  ∀ n, (P9110106248337256232.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P6007355679277599509

`∩[A246655(n+1), A016897(n)+2]`
-/

namespace A327752.P6007355679277599509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P6007355679277599509

namespace A327752

/-- `∩[A246655(n+1), A016897(n)+2]` -/
def P6007355679277599509.Spec : Prop :=
  ∀ n, (P6007355679277599509.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P3991796980212823647

`filter[A277597(n+1), A069513(#)]`
-/

namespace A327752.P3991796980212823647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P3991796980212823647

namespace A327752

/-- `filter[A277597(n+1), A069513(#)]` -/
def P3991796980212823647.Spec : Prop :=
  ∀ n, P3991796980212823647.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P14084607829945102987

`∩[A185189(n+1), A277597(n+1)]`
-/

namespace A327752.P14084607829945102987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P14084607829945102987

namespace A327752

/-- `∩[A185189(n+1), A277597(n+1)]` -/
def P14084607829945102987.Spec : Prop :=
  ∀ n, (P14084607829945102987.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P1604558743616605366

`∩[A246655(n+1), A277597(n+1)]`
-/

namespace A327752.P1604558743616605366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327752.P1604558743616605366

namespace A327752

/-- `∩[A246655(n+1), A277597(n+1)]` -/
def P1604558743616605366.Spec : Prop :=
  ∀ n, (P1604558743616605366.a n : ℤ) = A327752 (n + 1)

end A327752

/-! ## A327752.P1763127831273395309

`filter[A047209(2*n+1), A069513(#)]`
-/

namespace A327752.P1763127831273395309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P1763127831273395309

namespace A327752

/-- `filter[A047209(2*n+1), A069513(#)]` -/
def P1763127831273395309.Spec : Prop :=
  ∀ n, P1763127831273395309.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P8790641956075766422

`filter[A047216(2*n+1), A069513(#)]`
-/

namespace A327752.P8790641956075766422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047216 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P8790641956075766422

namespace A327752

/-- `filter[A047216(2*n+1), A069513(#)]` -/
def P8790641956075766422.Spec : Prop :=
  ∀ n, P8790641956075766422.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P12168581426952541209

`filter[A047219(2*n+1), A069513(#)]`
-/

namespace A327752.P12168581426952541209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P12168581426952541209

namespace A327752

/-- `filter[A047219(2*n+1), A069513(#)]` -/
def P12168581426952541209.Spec : Prop :=
  ∀ n, P12168581426952541209.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P6295023759257792769

`filter[A075325(2*n+1), A069513(#)]`
-/

namespace A327752.P6295023759257792769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075325 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P6295023759257792769

namespace A327752

/-- `filter[A075325(2*n+1), A069513(#)]` -/
def P6295023759257792769.Spec : Prop :=
  ∀ n, P6295023759257792769.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P15745551026268497966

`filter[A113497(2*n+1), A069513(#)]`
-/

namespace A327752.P15745551026268497966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P15745551026268497966

namespace A327752

/-- `filter[A113497(2*n+1), A069513(#)]` -/
def P15745551026268497966.Spec : Prop :=
  ∀ n, P15745551026268497966.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P6633716926280315157

`filter[A122088(2*n+1), A069513(#)]`
-/

namespace A327752.P6633716926280315157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122088 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P6633716926280315157

namespace A327752

/-- `filter[A122088(2*n+1), A069513(#)]` -/
def P6633716926280315157.Spec : Prop :=
  ∀ n, P6633716926280315157.a n = A327752 (n + 1)

end A327752

/-! ## A327752.P12875213055714599305

`filter[A166520(2*n+1), A069513(#)]`
-/

namespace A327752.P12875213055714599305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327752.P12875213055714599305

namespace A327752

/-- `filter[A166520(2*n+1), A069513(#)]` -/
def P12875213055714599305.Spec : Prop :=
  ∀ n, P12875213055714599305.a n = A327752 (n + 1)

end A327752

/-!
# A327753: Primes powers (A246655) congruent to 4 mod 5.

The programs for A327753, the canonical program `A327753.P1018549127462246212` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327753 has offset 1).

The definition of A327753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327753.P2465947666532187988

`∩[5*(n+1)-1, A000961(n+1)]`
-/

namespace A327753.P2465947666532187988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P2465947666532187988

namespace A327753

/-- `∩[5*(n+1)-1, A000961(n+1)]` -/
def P2465947666532187988.Spec : Prop :=
  ∀ n, (P2465947666532187988.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P4826795046972320933

`∩[6*n+4-n, A246655(n+2)]`
-/

namespace A327753.P4826795046972320933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P4826795046972320933

namespace A327753

/-- `∩[6*n+4-n, A246655(n+2)]` -/
def P4826795046972320933.Spec : Prop :=
  ∀ n, (P4826795046972320933.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P1018549127462246212

`record[A008475(5*n+4)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327753

/-- `record[A008475(5*n+4)]` -/
def P1018549127462246212.Spec : Prop :=
  ∀ n, P1018549127462246212.a n = A327753 (n + 1)

theorem P1018549127462246212.correct : P1018549127462246212.Spec := by
  intro n
  simp only [A327753, Nat.add_sub_cancel]

end A327753

/-! ## A327753.P13341516512865244960

`record[A034699(5*n+4)]`
-/

namespace A327753.P13341516512865244960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327753.P13341516512865244960

namespace A327753

/-- `record[A034699(5*n+4)]` -/
def P13341516512865244960.Spec : Prop :=
  ∀ n, P13341516512865244960.a n = A327753 (n + 1)

end A327753

/-! ## A327753.P10968429310124324908

`record[A330741(4*(n+1)+n)]`
-/

namespace A327753.P10968429310124324908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (4 * (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327753.P10968429310124324908

namespace A327753

/-- `record[A330741(4*(n+1)+n)]` -/
def P10968429310124324908.Spec : Prop :=
  ∀ n, P10968429310124324908.a n = A327753 (n + 1)

end A327753

/-! ## A327753.P15158714455617457882

`filter[A016897(n), A069513(#)]`
-/

namespace A327753.P15158714455617457882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327753.P15158714455617457882

namespace A327753

/-- `filter[A016897(n), A069513(#)]` -/
def P15158714455617457882.Spec : Prop :=
  ∀ n, P15158714455617457882.a n = A327753 (n + 1)

end A327753

/-! ## A327753.P17900926884904024935

`∩[A000961(n+1), A016897(n)]`
-/

namespace A327753.P17900926884904024935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P17900926884904024935

namespace A327753

/-- `∩[A000961(n+1), A016897(n)]` -/
def P17900926884904024935.Spec : Prop :=
  ∀ n, (P17900926884904024935.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P6147447264897104199

`∩[A225657(n+1), A016897(n)]`
-/

namespace A327753.P6147447264897104199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P6147447264897104199

namespace A327753

/-- `∩[A225657(n+1), A016897(n)]` -/
def P6147447264897104199.Spec : Prop :=
  ∀ n, (P6147447264897104199.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P15142004633690727310

`∩[A246655(n+1), A016897(n)]`
-/

namespace A327753.P15142004633690727310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P15142004633690727310

namespace A327753

/-- `∩[A246655(n+1), A016897(n)]` -/
def P15142004633690727310.Spec : Prop :=
  ∀ n, (P15142004633690727310.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P6700148044868066117

`∩[A384419(n+1), A016897(n)]`
-/

namespace A327753.P6700148044868066117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P6700148044868066117

namespace A327753

/-- `∩[A384419(n+1), A016897(n)]` -/
def P6700148044868066117.Spec : Prop :=
  ∀ n, (P6700148044868066117.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P4678063461468382605

`∩[A246655(n+1), A016861(n)-2]`
-/

namespace A327753.P4678063461468382605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P4678063461468382605

namespace A327753

/-- `∩[A246655(n+1), A016861(n)-2]` -/
def P4678063461468382605.Spec : Prop :=
  ∀ n, (P4678063461468382605.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P17819340171764033739

`filter[A277601(n+1), A069513(#)]`
-/

namespace A327753.P17819340171764033739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327753.P17819340171764033739

namespace A327753

/-- `filter[A277601(n+1), A069513(#)]` -/
def P17819340171764033739.Spec : Prop :=
  ∀ n, P17819340171764033739.a n = A327753 (n + 1)

end A327753

/-! ## A327753.P8447131182438620881

`∩[A000961(n+1), A277601(n+1)]`
-/

namespace A327753.P8447131182438620881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P8447131182438620881

namespace A327753

/-- `∩[A000961(n+1), A277601(n+1)]` -/
def P8447131182438620881.Spec : Prop :=
  ∀ n, (P8447131182438620881.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P4001413661123733984

`∩[A225657(n+1), A277601(n+1)]`
-/

namespace A327753.P4001413661123733984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P4001413661123733984

namespace A327753

/-- `∩[A225657(n+1), A277601(n+1)]` -/
def P4001413661123733984.Spec : Prop :=
  ∀ n, (P4001413661123733984.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P12795607861655798756

`∩[A246655(n+1), A277601(n+1)]`
-/

namespace A327753.P12795607861655798756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P12795607861655798756

namespace A327753

/-- `∩[A246655(n+1), A277601(n+1)]` -/
def P12795607861655798756.Spec : Prop :=
  ∀ n, (P12795607861655798756.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P4573839294882829224

`∩[A277601(n+1), A384419(n+1)]`
-/

namespace A327753.P4573839294882829224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P4573839294882829224

namespace A327753

/-- `∩[A277601(n+1), A384419(n+1)]` -/
def P4573839294882829224.Spec : Prop :=
  ∀ n, (P4573839294882829224.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P3483034048849918660

`filter[A277548(n+1), A069513(#)]`
-/

namespace A327753.P3483034048849918660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A327753.P3483034048849918660

namespace A327753

/-- `filter[A277548(n+1), A069513(#)]` -/
def P3483034048849918660.Spec : Prop :=
  ∀ n, P3483034048849918660.a n = A327753 (n + 1)

end A327753

/-! ## A327753.P18031480874478890381

`∩[A000961(n+1), A277548(n+1)]`
-/

namespace A327753.P18031480874478890381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P18031480874478890381

namespace A327753

/-- `∩[A000961(n+1), A277548(n+1)]` -/
def P18031480874478890381.Spec : Prop :=
  ∀ n, (P18031480874478890381.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P324821008456598023

`∩[A225657(n+1), A277548(n+1)]`
-/

namespace A327753.P324821008456598023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P324821008456598023

namespace A327753

/-- `∩[A225657(n+1), A277548(n+1)]` -/
def P324821008456598023.Spec : Prop :=
  ∀ n, (P324821008456598023.a n : ℤ) = A327753 (n + 1)

end A327753

/-! ## A327753.P5818424999058238124

`∩[A246655(n+1), A277548(n+1)]`
-/

namespace A327753.P5818424999058238124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327753.P5818424999058238124

namespace A327753

/-- `∩[A246655(n+1), A277548(n+1)]` -/
def P5818424999058238124.Spec : Prop :=
  ∀ n, (P5818424999058238124.a n : ℤ) = A327753 (n + 1)

end A327753

/-!
# A327754: Number of connected Cayley graphs on n nodes.

The programs for A327754, there is no canonical definition to state claims against.
-/

/-! ## A327754.P1475685928188078274

`and(-A319367(A023647(2*(n+3))), A006800(n+1))`
-/

namespace A327754.P1475685928188078274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A319367 (A023647 (2 * (n + 3))).toNat) (A006800 (n + 1))

end

end A327754.P1475685928188078274

/-! ## A327754.P16473217416672534748

`A006800(n+1)-A045872(A147087(n+1))`
-/

namespace A327754.P16473217416672534748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006800 (n + 1) - A045872 ((A147087 (n + 1)).toNat + 10)

end

end A327754.P16473217416672534748

/-! ## A327754.P6754189449386148442

`(A054917(n+1)+A006799(n+1))/2-A045872(A147087(n+1))`
-/

namespace A327754.P6754189449386148442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054917 (n + 1) + A006799 (n + 1) : ℚ) / 2 - (A045872 ((A147087 (n + 1)).toNat + 10) : ℚ)

end

end A327754.P6754189449386148442

/-!
# A327755: Odd integers k such that binomial(k-1,(k-1)/2) is coprime to k.

The programs for A327755, the canonical program `A327755.P3067467709053847903` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327755 has offset 1).

The definition of A327755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327755.P3067467709053847903

`∪[A061345(n), A327756(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A327755

/-- `∪[A061345(n), A327756(n+1)]` -/
def P3067467709053847903.Spec : Prop :=
  ∀ n, (P3067467709053847903.a n : ℤ) = A327755 (n + 1)

theorem P3067467709053847903.correct : P3067467709053847903.Spec := by
  intro n
  simp only [A327755, Nat.add_sub_cancel]

end A327755

/-! ## A327755.P9611749837354905974

`∪[A006005(n+1), A327756(n+1)]`
-/

namespace A327755.P9611749837354905974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327755.P9611749837354905974

namespace A327755

/-- `∪[A006005(n+1), A327756(n+1)]` -/
def P9611749837354905974.Spec : Prop :=
  ∀ n, (P9611749837354905974.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P3353315988672306280

`∪[A062090(n+1), A327756(n+1)]`
-/

namespace A327755.P3353315988672306280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327755.P3353315988672306280

namespace A327755

/-- `∪[A062090(n+1), A327756(n+1)]` -/
def P3353315988672306280.Spec : Prop :=
  ∀ n, (P3353315988672306280.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P13088836366577180608

`record[A056617(n)]`
-/

namespace A327755.P13088836366577180608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327755.P13088836366577180608

namespace A327755

/-- `record[A056617(n)]` -/
def P13088836366577180608.Spec : Prop :=
  ∀ n, P13088836366577180608.a n = A327755 (n + 1)

end A327755

/-! ## A327755.P17822964940405914863

`eq[n, A056617(floor(n/2))]`
-/

namespace A327755.P17822964940405914863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327755.P17822964940405914863

namespace A327755

/-- `eq[n, A056617(floor(n/2))]` -/
def P17822964940405914863.Spec : Prop :=
  ∀ n, (P17822964940405914863.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P12033434548212235956

`A056617(lt[n, A056617(n)])`
-/

namespace A327755.P12033434548212235956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A327755.P12033434548212235956

namespace A327755

/-- `A056617(lt[n, A056617(n)])` -/
def P12033434548212235956.Spec : Prop :=
  ∀ n, P12033434548212235956.a n = A327755 (n + 1)

end A327755

/-! ## A327755.P8336222245508702605

`A005408(eq[A005408(n), A056617(n)])`
-/

namespace A327755.P8336222245508702605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A327755.P8336222245508702605

namespace A327755

/-- `A005408(eq[A005408(n), A056617(n)])` -/
def P8336222245508702605.Spec : Prop :=
  ∀ n, P8336222245508702605.a n = A327755 (n + 1)

end A327755

/-! ## A327755.P13468656879788286091

`eq[n, A181861(or(1, n))]`
-/

namespace A327755.P13468656879788286091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327755.P13468656879788286091

namespace A327755

/-- `eq[n, A181861(or(1, n))]` -/
def P13468656879788286091.Spec : Prop :=
  ∀ n, (P13468656879788286091.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P18386800507302038978

`eq[xor(1, n)+1, A181861(n)]`
-/

namespace A327755.P18386800507302038978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327755.P18386800507302038978

namespace A327755

/-- `eq[xor(1, n)+1, A181861(n)]` -/
def P18386800507302038978.Spec : Prop :=
  ∀ n, (P18386800507302038978.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P14928790819703461933

`eq[n, A181861(n*n%2)]`
-/

namespace A327755.P14928790819703461933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 (n * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327755.P14928790819703461933

namespace A327755

/-- `eq[n, A181861(n*n%2)]` -/
def P14928790819703461933.Spec : Prop :=
  ∀ n, (P14928790819703461933.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P4059904598670863663

`eq[n, A181861(and(n, n-1)+1)]`
-/

namespace A327755.P4059904598670863663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327755.P4059904598670863663

namespace A327755

/-- `eq[n, A181861(and(n, n-1)+1)]` -/
def P4059904598670863663.Spec : Prop :=
  ∀ n, (P4059904598670863663.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P13088795618071273744

`record[(2*n+1)²/A181861(2*n+1)]`
-/

namespace A327755.P13088795618071273744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℚ) / (A181861 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327755.P13088795618071273744

namespace A327755

/-- `record[(2*n+1)²/A181861(2*n+1)]` -/
def P13088795618071273744.Spec : Prop :=
  ∀ n, P13088795618071273744.a n = (A327755 (n + 1) : ℚ)

end A327755

/-! ## A327755.P15074183028693827083

`eq[A065530(n), A181861(n)]`
-/

namespace A327755.P15074183028693827083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327755.P15074183028693827083

namespace A327755

/-- `eq[A065530(n), A181861(n)]` -/
def P15074183028693827083.Spec : Prop :=
  ∀ n, (P15074183028693827083.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P4024148828268999658

`eq[A093051(n), A181861(n)]`
-/

namespace A327755.P4024148828268999658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327755.P4024148828268999658

namespace A327755

/-- `eq[A093051(n), A181861(n)]` -/
def P4024148828268999658.Spec : Prop :=
  ∀ n, (P4024148828268999658.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P3825902178534011358

`eq[n, A181861(A093411(n))]`
-/

namespace A327755.P3825902178534011358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 (A093411 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327755.P3825902178534011358

namespace A327755

/-- `eq[n, A181861(A093411(n))]` -/
def P3825902178534011358.Spec : Prop :=
  ∀ n, (P3825902178534011358.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P7798542829721812459

`eq[n, A181861(A109613(n))]`
-/

namespace A327755.P7798542829721812459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327755.P7798542829721812459

namespace A327755

/-- `eq[n, A181861(A109613(n))]` -/
def P7798542829721812459.Spec : Prop :=
  ∀ n, (P7798542829721812459.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P16045787463919500007

`eq[A129527(n), A181861(n)]`
-/

namespace A327755.P16045787463919500007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327755.P16045787463919500007

namespace A327755

/-- `eq[A129527(n), A181861(n)]` -/
def P16045787463919500007.Spec : Prop :=
  ∀ n, (P16045787463919500007.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P11630621640086396377

`eq[A176447(n), A181861(n)]`
-/

namespace A327755.P11630621640086396377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327755.P11630621640086396377

namespace A327755

/-- `eq[A176447(n), A181861(n)]` -/
def P11630621640086396377.Spec : Prop :=
  ∀ n, (P11630621640086396377.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P8863005246828509198

`eq[A181861(n), A181983(n)]`
-/

namespace A327755.P8863005246828509198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327755.P8863005246828509198

namespace A327755

/-- `eq[A181861(n), A181983(n)]` -/
def P8863005246828509198.Spec : Prop :=
  ∀ n, (P8863005246828509198.a n : ℤ) = A327755 (n + 1)

end A327755

/-! ## A327755.P14832124767260564474

`eq[A181861(n), A255563(n)]`
-/

namespace A327755.P14832124767260564474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327755.P14832124767260564474

namespace A327755

/-- `eq[A181861(n), A255563(n)]` -/
def P14832124767260564474.Spec : Prop :=
  ∀ n, (P14832124767260564474.a n : ℤ) = A327755 (n + 1)

end A327755

/-!
# A327756: Odd composite integers n such that binomial(n-1,(n-1)/2) is coprime to n.

The programs for A327756, the canonical program `A327756.P2997331909620442981` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327756 has offset 1).

The definition of A327756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327756.P2997331909620442981

`∩[2*n+1, A395700(n+2)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327756

/-- `∩[2*n+1, A395700(n+2)]` -/
def P2997331909620442981.Spec : Prop :=
  ∀ n, (P2997331909620442981.a n : ℤ) = A327756 (n + 1)

theorem P2997331909620442981.correct : P2997331909620442981.Spec := by
  intro n
  simp only [A327756, Nat.add_sub_cancel]

end A327756

/-! ## A327756.P2638966670429643564

`filter[A327755(n+1), A066247(#)]`
-/

namespace A327756.P2638966670429643564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A327756.P2638966670429643564

namespace A327756

/-- `filter[A327755(n+1), A066247(#)]` -/
def P2638966670429643564.Spec : Prop :=
  ∀ n, P2638966670429643564.a n = A327756 (n + 1)

end A327756

/-! ## A327756.P9346068682078063209

`filter[A327755(n+1), A202238(#)]`
-/

namespace A327756.P9346068682078063209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A327756.P9346068682078063209

namespace A327756

/-- `filter[A327755(n+1), A202238(#)]` -/
def P9346068682078063209.Spec : Prop :=
  ∀ n, P9346068682078063209.a n = A327756 (n + 1)

end A327756

/-! ## A327756.P13318267656449177170

`filter[A327755(n+1), A323162(#)]`
-/

namespace A327756.P13318267656449177170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A327756.P13318267656449177170

namespace A327756

/-- `filter[A327755(n+1), A323162(#)]` -/
def P13318267656449177170.Spec : Prop :=
  ∀ n, P13318267656449177170.a n = A327756 (n + 1)

end A327756

/-! ## A327756.P13283881610593418754

`filter[A327755(n+2), A005171(#)]`
-/

namespace A327756.P13283881610593418754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A327756.P13283881610593418754

namespace A327756

/-- `filter[A327755(n+2), A005171(#)]` -/
def P13283881610593418754.Spec : Prop :=
  ∀ n, P13283881610593418754.a n = A327756 (n + 1)

end A327756

/-! ## A327756.P16218750949664474230

`filter[A395700(n+2), A039982(#)]`
-/

namespace A327756.P16218750949664474230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395700 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A327756.P16218750949664474230

namespace A327756

/-- `filter[A395700(n+2), A039982(#)]` -/
def P16218750949664474230.Spec : Prop :=
  ∀ n, P16218750949664474230.a n = A327756 (n + 1)

end A327756

/-! ## A327756.P10468086788568869315

`filter[A395700(n+2), A098725(#)]`
-/

namespace A327756.P10468086788568869315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395700 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A327756.P10468086788568869315

namespace A327756

/-- `filter[A395700(n+2), A098725(#)]` -/
def P10468086788568869315.Spec : Prop :=
  ∀ n, P10468086788568869315.a n = A327756 (n + 1)

end A327756

/-! ## A327756.P10553854747081210200

`filter[A395700(n+2), A166486(#)]`
-/

namespace A327756.P10553854747081210200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395700 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A327756.P10553854747081210200

namespace A327756

/-- `filter[A395700(n+2), A166486(#)]` -/
def P10553854747081210200.Spec : Prop :=
  ∀ n, P10553854747081210200.a n = A327756 (n + 1)

end A327756

/-! ## A327756.P1925799804416606099

`filter[A327755(n+2), A292438(#)]`
-/

namespace A327756.P1925799804416606099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A327756.P1925799804416606099

namespace A327756

/-- `filter[A327755(n+2), A292438(#)]` -/
def P1925799804416606099.Spec : Prop :=
  ∀ n, P1925799804416606099.a n = A327756 (n + 1)

end A327756

/-! ## A327756.P18288967505657227324

`∩[A067887(n+1), A327755(n+1)]`
-/

namespace A327756.P18288967505657227324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P18288967505657227324

namespace A327756

/-- `∩[A067887(n+1), A327755(n+1)]` -/
def P18288967505657227324.Spec : Prop :=
  ∀ n, (P18288967505657227324.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P13882646835874411461

`∩[A071904(n+1), A327755(n+1)]`
-/

namespace A327756.P13882646835874411461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P13882646835874411461

namespace A327756

/-- `∩[A071904(n+1), A327755(n+1)]` -/
def P13882646835874411461.Spec : Prop :=
  ∀ n, (P13882646835874411461.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P3050239168319253426

`∩[A270574(n+1), A327755(n+1)]`
-/

namespace A327756.P3050239168319253426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P3050239168319253426

namespace A327756

/-- `∩[A270574(n+1), A327755(n+1)]` -/
def P3050239168319253426.Spec : Prop :=
  ∀ n, (P3050239168319253426.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P9065327066538419068

`∩[A078505(n+1), A327755(n+1)]`
-/

namespace A327756.P9065327066538419068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P9065327066538419068

namespace A327756

/-- `∩[A078505(n+1), A327755(n+1)]` -/
def P9065327066538419068.Spec : Prop :=
  ∀ n, (P9065327066538419068.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P14036211056884905211

`∩[A002808(n+1), A327755(n+1)]`
-/

namespace A327756.P14036211056884905211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P14036211056884905211

namespace A327756

/-- `∩[A002808(n+1), A327755(n+1)]` -/
def P14036211056884905211.Spec : Prop :=
  ∀ n, (P14036211056884905211.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P2134989529353445156

`∩[A039769(n+1), A327755(n+1)]`
-/

namespace A327756.P2134989529353445156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P2134989529353445156

namespace A327756

/-- `∩[A039769(n+1), A327755(n+1)]` -/
def P2134989529353445156.Spec : Prop :=
  ∀ n, (P2134989529353445156.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P2785331212660951092

`∩[A058957(n+1), A327755(n+1)]`
-/

namespace A327756.P2785331212660951092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P2785331212660951092

namespace A327756

/-- `∩[A058957(n+1), A327755(n+1)]` -/
def P2785331212660951092.Spec : Prop :=
  ∀ n, (P2785331212660951092.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P15880351640384054116

`∩[A327755(n+1), A333312(n+1)]`
-/

namespace A327756.P15880351640384054116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P15880351640384054116

namespace A327756

/-- `∩[A327755(n+1), A333312(n+1)]` -/
def P15880351640384054116.Spec : Prop :=
  ∀ n, (P15880351640384054116.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P13917792698144951769

`∩[A125493(n+1), A327755(n+1)]`
-/

namespace A327756.P13917792698144951769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P13917792698144951769

namespace A327756

/-- `∩[A125493(n+1), A327755(n+1)]` -/
def P13917792698144951769.Spec : Prop :=
  ∀ n, (P13917792698144951769.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P10907562347261749181

`∩[A079364(n+1), A327755(n+1)]`
-/

namespace A327756.P10907562347261749181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P10907562347261749181

namespace A327756

/-- `∩[A079364(n+1), A327755(n+1)]` -/
def P10907562347261749181.Spec : Prop :=
  ∀ n, (P10907562347261749181.a n : ℤ) = A327756 (n + 1)

end A327756

/-! ## A327756.P10617429510930320174

`∩[A171845(n+1), A327755(n+1)]`
-/

namespace A327756.P10617429510930320174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327756.P10617429510930320174

namespace A327756

/-- `∩[A171845(n+1), A327755(n+1)]` -/
def P10617429510930320174.Spec : Prop :=
  ∀ n, (P10617429510930320174.a n : ℤ) = A327756 (n + 1)

end A327756

/-!
# A327757: Expansion of Product_{k>=1} (1 - x^k)^(3/k), where (m/n) is the Kronecker symbol.

The programs for A327757, there is no canonical definition to state claims against.
-/

/-! ## A327757.P4676663702917609955

`A030203(xor(A001333(n), A162247(n+1)))`
-/

namespace A327757.P4676663702917609955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (Int.xor (A001333 n) (A162247 (n + 1))).toNat

end

end A327757.P4676663702917609955

/-!
# A327759: a(1) = 1; a(2) = 2; a(n) = n - max{k<n | a(k) = m(n)}, where m(n) is the largest term so far if a(n-1) is odd, the second largest term so far if a(n-1) is even.

The programs for A327759, there is no canonical definition to state claims against.
-/

/-! ## A327759.P13070396107276096209

`A036043(ceil(ratio[A096758(n+1)]))`
-/

namespace A327759.P13070396107276096209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A327759.P13070396107276096209

/-! ## A327759.P2058771207792481705

`A254761(lcm(A002126(n+1)+1, n+1)+1)`
-/

namespace A327759.P2058771207792481705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254761 (Int.lcm (A002126 (n + 1) + 1) (n + 1 : ℤ) + 1)

end

end A327759.P2058771207792481705

/-! ## A327759.P17789148839778975021

`A181935(A198330(n+1)+A198313(n))`
-/

namespace A327759.P17789148839778975021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A198330 (n + 1) + A198313 n).toNat

end

end A327759.P17789148839778975021

/-! ## A327759.P3570634130753243928

`A329312(A332280(n)+A055265(n+1))`
-/

namespace A327759.P3570634130753243928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (A332280 n + A055265 (n + 1)).toNat

end

end A327759.P3570634130753243928

/-! ## A327759.P6565276529072771412

`A000120(A022171(n)*A177274(n+3))`
-/

namespace A327759.P6565276529072771412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A022171 n * A177274 (n + 3)).toNat

end

end A327759.P6565276529072771412

/-!
# A327761: The number of 3-interval parking functions of size n.

The programs for A327761, there is no canonical definition to state claims against.
-/

/-! ## A327761.P4263471394549752757

`floor(A326928(n+1)/19)`
-/

namespace A327761.P4263471394549752757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326928 (n + 1) : ℚ) / 19⌋

end

end A327761.P4263471394549752757

/-! ## A327761.P7306650303037855067

`A002265(2*A383170(n))`
-/

namespace A327761.P7306650303037855067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A383170 n).toNat

end

end A327761.P7306650303037855067

/-!
# A327762: a(n) = smallest positive number not already in the sequence such that all n(n+1)/2 numbers in the triangle of differences of the first n terms are distinct.

The programs for A327762, there is no canonical definition to state claims against.
-/

/-! ## A327762.P17080178364238809349

`A327460(n+1)-2*A025444(n)`
-/

namespace A327762.P17080178364238809349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - 2 * A025444 n

end

end A327762.P17080178364238809349

/-! ## A327762.P13427068079903780568

`A327460(n+1)-A000096(A025444(n))`
-/

namespace A327762.P13427068079903780568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - A000096 (A025444 n).toNat

end

end A327762.P13427068079903780568

/-! ## A327762.P7834019118589869240

`A327460(n+1)-A174615(A122201(n))`
-/

namespace A327762.P7834019118589869240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - A174615 (A122201 n).toNat

end

end A327762.P7834019118589869240

/-! ## A327762.P14826644594765391749

`A327460(n+1)-A308924(A124771(n))`
-/

namespace A327762.P14826644594765391749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - A308924 (A124771 n).toNat

end

end A327762.P14826644594765391749

/-! ## A327762.P3851167708192666176

`A327460(n+1)-A002378(A025444(n)²)`
-/

namespace A327762.P3851167708192666176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - A002378 (A025444 n ^ 2).toNat

end

end A327762.P3851167708192666176

/-! ## A327762.P4272544719965956943

`A327460(n+1)-A005843(A025444(n)²)`
-/

namespace A327762.P4272544719965956943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - A005843 (A025444 n ^ 2).toNat

end

end A327762.P4272544719965956943

/-! ## A327762.P791118237710518377

`A327460(n+1)-A028833(A331291(n+1))`
-/

namespace A327762.P791118237710518377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - A028833 (A331291 (n + 1)).toNat

end

end A327762.P791118237710518377

/-! ## A327762.P6494367315053732312

`A327460(n+1)-A060277(A060267(n+2))`
-/

namespace A327762.P6494367315053732312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - A060277 (A060267 (n + 2)).toNat

end

end A327762.P6494367315053732312

/-! ## A327762.P9055531481583192025

`xor(A025444(n)*A227349(n), A327460(n+1))`
-/

namespace A327762.P9055531481583192025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025444 n * A227349 n) (A327460 (n + 1))

end

end A327762.P9055531481583192025

/-! ## A327762.P3086936299414717441

`A327460(n+1)-A085252(A141459(A025581(n)))`
-/

namespace A327762.P3086936299414717441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - A085252 (A141459 (A025581 n).toNat).toNat

end

end A327762.P3086936299414717441

/-!
# A327764: Expansion of 1 / (1 - Sum_{i>=1, j>=1} x^(i*j*(j + 1)/2)).

The programs for A327764, there is no canonical definition to state claims against.
-/

/-! ## A327764.P714101742071930129

`or(A010054(n), A046155(A006930(n)))`
-/

namespace A327764.P714101742071930129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A046155 (A006930 n).toNat)

end

end A327764.P714101742071930129

/-! ## A327764.P3504755933401592110

`or(A046155(A006930(n)), A073424(n))`
-/

namespace A327764.P3504755933401592110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046155 (A006930 n).toNat) (A073424 n)

end

end A327764.P3504755933401592110

/-! ## A327764.P3271855123108139537

`or(A004197(n+1), A046155(A006930(n)))`
-/

namespace A327764.P3271855123108139537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004197 (n + 1)) (A046155 (A006930 n).toNat)

end

end A327764.P3271855123108139537

/-! ## A327764.P6740918282410149492

`A046155(A006930(n)+n*A010054(n))`
-/

namespace A327764.P6740918282410149492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A006930 n + (n : ℤ) * A010054 n).toNat

end

end A327764.P6740918282410149492

/-! ## A327764.P6465727519032589320

`A046155(A006930(n)+n*A073424(n))`
-/

namespace A327764.P6465727519032589320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A006930 n + (n : ℤ) * A073424 n).toNat

end

end A327764.P6465727519032589320

/-!
# A327765: a(n) is the trace of the n-th power of the 2 X 2 matrix [1 2; 3 4].

The programs for A327765, the canonical program `A327765.P11346823717103686300` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327765 has offset 0).

The definition of A327765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327765.P9098112218486114464

`ogf((2-5x)/(1-5x-2x^2))`
-/

namespace A327765.P9098112218486114464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -5, -2] n

end

end A327765.P9098112218486114464

namespace A327765

/-- `ogf((2-5x)/(1-5x-2x^2))` -/
def P9098112218486114464.Spec : Prop :=
  ∀ n, P9098112218486114464.a n = A327765 n

end A327765

/-! ## A327765.P11346823717103686300

`5*a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327765

/-- `5*a(n-1)+2*a(n-2)` -/
def P11346823717103686300.Spec : Prop :=
  ∀ n, (P11346823717103686300.a n : ℤ) = A327765 n

theorem P11346823717103686300.correct : P11346823717103686300.Spec := by
  intro n
  simp only [A327765]

end A327765

/-! ## A327765.P6070013203676820404

`((5-sqrt(33))/2)^n+((5+sqrt(33))/2)^n`
-/

namespace A327765.P6070013203676820404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 - Real.sqrt (33 : ℝ)) / 2) ^ n + ((5 + Real.sqrt (33 : ℝ)) / 2) ^ n

end

end A327765.P6070013203676820404

namespace A327765

/-- `((5-sqrt(33))/2)^n+((5+sqrt(33))/2)^n` -/
def P6070013203676820404.Spec : Prop :=
  ∀ n, P6070013203676820404.a n = (A327765 n : ℝ)

theorem P6070013203676820404.correct : P6070013203676820404.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A327765, Nat.add_sub_cancel, A327765.P6070013203676820404.a, A327765.P11346823717103686300.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A327765, Nat.add_sub_cancel, A327765.P6070013203676820404.a, A327765.P11346823717103686300.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A327765

/-! ## A327765.P13754356595889338002

`abs(A124610(n)+Δ[A015535(n)])`
-/

namespace A327765.P13754356595889338002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124610 n + (f1 (n + 1) - f1 n)|

end

end A327765.P13754356595889338002

namespace A327765

/-- `abs(A124610(n)+Δ[A015535(n)])` -/
def P13754356595889338002.Spec : Prop :=
  ∀ n, P13754356595889338002.a n = A327765 n

end A327765

/-! ## A327765.P13100675414441006108

`(A124610(n)+Δ[A015535(n)])*A000035(2*n+1)`
-/

namespace A327765.P13100675414441006108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124610 n + (f1 (n + 1) - f1 n)) * A000035 (2 * n + 1)

end

end A327765.P13100675414441006108

namespace A327765

/-- `(A124610(n)+Δ[A015535(n)])*A000035(2*n+1)` -/
def P13100675414441006108.Spec : Prop :=
  ∀ n, P13100675414441006108.a n = A327765 n

end A327765

/-! ## A327765.P4991323815244318269

`(A124610(n)+Δ[A015535(n)])%A231801(n+1)`
-/

namespace A327765.P4991323815244318269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124610 n + (f1 (n + 1) - f1 n)) (A231801 (n + 1))

end

end A327765.P4991323815244318269

namespace A327765

/-- `(A124610(n)+Δ[A015535(n)])%A231801(n+1)` -/
def P4991323815244318269.Spec : Prop :=
  ∀ n, P4991323815244318269.a n = A327765 n

end A327765

/-! ## A327765.P16010959835066018612

`(A124610(n)+Δ[A015535(n)])*A151934(n)!`
-/

namespace A327765.P16010959835066018612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124610 n + (f1 (n + 1) - f1 n)) * (Nat.factorial (A151934 n).toNat : ℤ)

end

end A327765.P16010959835066018612

namespace A327765

/-- `(A124610(n)+Δ[A015535(n)])*A151934(n)!` -/
def P16010959835066018612.Spec : Prop :=
  ∀ n, P16010959835066018612.a n = A327765 n

end A327765

/-!
# A327766: Number of compositions (ordered partitions) of n into divisors of n that are at most sqrt(n).

The programs for A327766, there is no canonical definition to state claims against.
-/

/-! ## A327766.P6578753933231790208

`A334749(floor(sqrt(n))^n)`
-/

namespace A327766.P6578753933231790208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334749 (Nat.sqrt n ^ n)

end

end A327766.P6578753933231790208

/-! ## A327766.P10496060991462401496

`gcd(n%2, A271315(n²))`
-/

namespace A327766.P10496060991462401496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A271315 (n ^ 2))

end

end A327766.P10496060991462401496

/-! ## A327766.P15971806135027854183

`A253809(A080897(n+1))`
-/

namespace A327766.P15971806135027854183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253809 (A080897 (n + 1)).toNat

end

end A327766.P15971806135027854183

/-! ## A327766.P11861255398286080960

`A177994(A077446(n+2))`
-/

namespace A327766.P11861255398286080960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177994 (A077446 (n + 2)).toNat

end

end A327766.P11861255398286080960

/-! ## A327766.P11406952305782581648

`A187617(eq[1, A188431(n)])`
-/

namespace A327766.P11406952305782581648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327766.P11406952305782581648

/-!
# A327767: Period 2: repeat [1, -2].

The programs for A327767, the canonical program `A327767.P15532973149225480655` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327767 has offset 1).

The definition of A327767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327767.P15532973149225480655

`ogf((1-2x)/(1-x^2))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327767

/-- `ogf((1-2x)/(1-x^2))` -/
def P15532973149225480655.Spec : Prop :=
  ∀ n, P15532973149225480655.a n = A327767 (n + 1)

theorem P15532973149225480655.correct : P15532973149225480655.Spec := by
  intro n
  simp only [A327767, Nat.add_sub_cancel]

end A327767

/-!
# A327768: Number of colored compositions of n using all colors of a 2-set such that all parts have different color patterns and the patterns for parts i are sorted and have i colors (in arbitrary order).

The programs for A327768, there is no canonical definition to state claims against.
-/

/-! ## A327768.P13246901055801709241

`A327673(A133263(n))`
-/

namespace A327768.P13246901055801709241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (A133263 n).toNat

end

end A327768.P13246901055801709241

/-! ## A327768.P5902213129287134124

`A327673(A238531(n+1))`
-/

namespace A327768.P5902213129287134124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (A238531 (n + 1)).toNat

end

end A327768.P5902213129287134124

/-! ## A327768.P2836145513889651944

`A327673(∑[A254667(n)]+1)`
-/

namespace A327768.P2836145513889651944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A327768.P2836145513889651944

/-! ## A327768.P5875360700625520398

`A327673(A028310(∑[n])+2)`
-/

namespace A327768.P5875360700625520398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j) + 2).toNat

end

end A327768.P5875360700625520398

/-! ## A327768.P13888238696709441796

`A327673(∑[A028310(A254667(n))])`
-/

namespace A327768.P13888238696709441796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A254667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327768.P13888238696709441796

/-! ## A327768.P16935131417333442849

`A327673(A007318(A027379(n))+2)`
-/

namespace A327768.P16935131417333442849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (A007318 (A027379 n).toNat + 2).toNat

end

end A327768.P16935131417333442849

/-! ## A327768.P394916907811706726

`A327673(A057427(n)+A000124(n))`
-/

namespace A327768.P394916907811706726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (A057427 n + A000124 n).toNat

end

end A327768.P394916907811706726

/-! ## A327768.P9359984416645849803

`A327673(2-(A057427(n)-A000124(n)))`
-/

namespace A327768.P9359984416645849803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (2 - (A057427 n - A000124 n)).toNat

end

end A327768.P9359984416645849803

/-!
# A327769: Number of proper twice partitions of n.

The programs for A327769, there is no canonical definition to state claims against.
-/

/-! ## A327769.P4529995371107778696

`A063834(n)+1-A139582(n)`
-/

namespace A327769.P4529995371107778696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n + (1 - A139582 n)

end

end A327769.P4529995371107778696

/-! ## A327769.P7091581839125959557

`A063834(A028310(n))-(A139582(n)-1)`
-/

namespace A327769.P7091581839125959557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 (A028310 n).toNat - (A139582 n - 1)

end

end A327769.P7091581839125959557

/-! ## A327769.P2709873133719771413

`A063834(n)-(A000065(n)+A000041(n))`
-/

namespace A327769.P2709873133719771413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n - (A000065 n + A000041 n)

end

end A327769.P2709873133719771413

/-! ## A327769.P1872977390926459508

`A165747(A000041(n))+A063834(n)`
-/

namespace A327769.P1872977390926459508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 (A000041 n).toNat + A063834 n

end

end A327769.P1872977390926459508

/-! ## A327769.P5472903998134083582

`A063834(n)-A005408(A000065(n))`
-/

namespace A327769.P5472903998134083582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n - A005408 (A000065 n).toNat

end

end A327769.P5472903998134083582

/-!
# A327770: a(n) = (23*7^(2*n) + 1)/24. Sequence related to the properties of the partition function A000041 modulo a power of 7.

The programs for A327770, the canonical program `A327770.P2234240772558137747` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327770 has offset 0).

The definition of A327770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(23*7^(2*n)+1)/24` (program `A327770.P1175311501178025432`, by `A327770.P1175311501178025432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327770.P13443874235104930405

`ogf((1-3x)/(1-50x+49x^2))`
-/

namespace A327770.P13443874235104930405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -50, 49] n

end

end A327770.P13443874235104930405

namespace A327770

/-- `ogf((1-3x)/(1-50x+49x^2))` -/
def P13443874235104930405.Spec : Prop :=
  ∀ n, P13443874235104930405.a n = A327770 n

end A327770

/-! ## A327770.P2234240772558137747

`50*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=47`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327770

/-- `50*a(n-1)-49*a(n-2)` -/
def P2234240772558137747.Spec : Prop :=
  ∀ n, P2234240772558137747.a n = A327770 n

theorem P2234240772558137747.correct : P2234240772558137747.Spec := by
  intro n
  simp only [A327770]

end A327770

/-! ## A327770.P1175311501178025432

`(23*7^(2*n)+1)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327770.P1175311501178025432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 * 7 ^ (2 * n) + 1 : ℚ) / 24

end

end A327770.P1175311501178025432

namespace A327770

/-- `(23*7^(2*n)+1)/24` -/
def P1175311501178025432.Spec : Prop :=
  ∀ n, P1175311501178025432.a n = (A327770 n : ℚ)

theorem P1175311501178025432.correct : P1175311501178025432.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A327770, Nat.add_sub_cancel, A327770.P1175311501178025432.a, A327770.P2234240772558137747.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A327770, Nat.add_sub_cancel, A327770.P1175311501178025432.a, A327770.P2234240772558137747.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A327770

/-! ## A327770.P2467210819180024032

`49*a(n-1)-2` with `a(0)=1`
-/

namespace A327770.P2467210819180024032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  49 * a (n - 1) - 2

end

end A327770.P2467210819180024032

namespace A327770

/-- `49*a(n-1)-2` -/
def P2467210819180024032.Spec : Prop :=
  ∀ n, P2467210819180024032.a n = A327770 n

end A327770

/-! ## A327770.P2198970771823788142

`lcm(49, a(n-1))-2` with `a(0)=1`
-/

namespace A327770.P2198970771823788142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 49 (a (n - 1)) : ℤ) - 2

end

end A327770.P2198970771823788142

namespace A327770

/-- `lcm(49, a(n-1))-2` -/
def P2198970771823788142.Spec : Prop :=
  ∀ n, P2198970771823788142.a n = A327770 n

end A327770

/-! ## A327770.P2316286061021236442

`a(n-1)/(1/7)²-2` with `a(0)=1`
-/

namespace A327770.P2316286061021236442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 7) ^ 2 - 2

end

end A327770.P2316286061021236442

namespace A327770

/-- `a(n-1)/(1/7)²-2` -/
def P2316286061021236442.Spec : Prop :=
  ∀ n, P2316286061021236442.a n = (A327770 n : ℚ)

end A327770

/-! ## A327770.P10499566411863494411

`or(1, A052463(n+1))`
-/

namespace A327770.P10499566411863494411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A052463 (n + 1))

end

end A327770.P10499566411863494411

namespace A327770

/-- `or(1, A052463(n+1))` -/
def P10499566411863494411.Spec : Prop :=
  ∀ n, P10499566411863494411.a n = A327770 n

end A327770

/-! ## A327770.P4328488214316764748

`A052463(n+1)+A000007(n)`
-/

namespace A327770.P4328488214316764748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052463 (n + 1) + A000007 n

end

end A327770.P4328488214316764748

namespace A327770

/-- `A052463(n+1)+A000007(n)` -/
def P4328488214316764748.Spec : Prop :=
  ∀ n, P4328488214316764748.a n = A327770 n

end A327770

/-! ## A327770.P7192309306864145206

`A052463(n+1)+A000079(n)%2`
-/

namespace A327770.P7192309306864145206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052463 (n + 1) + Int.tmod (A000079 n) 2

end

end A327770.P7192309306864145206

namespace A327770

/-- `A052463(n+1)+A000079(n)%2` -/
def P7192309306864145206.Spec : Prop :=
  ∀ n, P7192309306864145206.a n = A327770 n

end A327770

/-! ## A327770.P3496909826638790429

`A052463(n+1)+A000165(n)%2`
-/

namespace A327770.P3496909826638790429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052463 (n + 1) + Int.tmod (A000165 n) 2

end

end A327770.P3496909826638790429

namespace A327770

/-- `A052463(n+1)+A000165(n)%2` -/
def P3496909826638790429.Spec : Prop :=
  ∀ n, P3496909826638790429.a n = A327770 n

end A327770

/-!
# A327771: a(n) = p(49*n + 47)/49, where p(k) denotes the k-th partition number (i.e., A000041).

The programs for A327771, there is no canonical definition to state claims against.
-/

/-! ## A327771.P7046625170135184932

`A000041(49*n+47)/49`
-/

namespace A327771.P7046625170135184932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (49 * n + 47) : ℚ) / 49

end

end A327771.P7046625170135184932

/-! ## A327771.P4252269080548909955

`A282919(n)/49`
-/

namespace A327771.P4252269080548909955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282919 n : ℚ) / 49

end

end A327771.P4252269080548909955

/-! ## A327771.P1435409665830918978

`A213261(7*n+6)/49`
-/

namespace A327771.P1435409665830918978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213261 (7 * n + 6) : ℚ) / 49

end

end A327771.P1435409665830918978

/-!
# A327772: Integers for which the Goldbach factorization graph contains an exceptional autonomous component (see link for definitions).

The programs for A327772, there is no canonical definition to state claims against.
-/

/-! ## A327772.P5299273762424028687

`∪[A306746(n+1), A052218(A052218(n+4))]`
-/

namespace A327772.P5299273762424028687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (A052218 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327772.P5299273762424028687

/-!
# A327774: Composite numbers m such that tau_k(m) = m for some k, where tau_k is the k-th Piltz divisor function (A077592).

The programs for A327774, there is no canonical definition to state claims against.
-/

/-! ## A327774.P9054694095754014439

`A351381(eq[5, A344570(n+1)])`
-/

namespace A327774.P9054694095754014439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327774.P9054694095754014439

/-!
# A327776: Heinz numbers of integer partitions whose LCM is less than their sum.

The programs for A327776, there is no canonical definition to state claims against.
-/

/-! ## A327776.P16336122867332684529

`lt[A290103(n+1), A056239(n+1)]+1`
-/

namespace A327776.P16336122867332684529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327776.P16336122867332684529

/-! ## A327776.P13274275998622932664

`lt[A316431(n+2), A316436(n+2)]+2`
-/

namespace A327776.P13274275998622932664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A327776.P13274275998622932664

/-! ## A327776.P13092229458606106222

`A020725(lt[A290103(n+1), A056239(n+1)])`
-/

namespace A327776.P13092229458606106222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327776.P13092229458606106222

/-! ## A327776.P4974537232638260863

`A065475(lt[A290103(n+1), A056239(n+1)])`
-/

namespace A327776.P4974537232638260863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327776.P4974537232638260863

/-! ## A327776.P6817620125159619721

`lt[A290103(n+1), A318995(n+1)+A001222(n+1)]+1`
-/

namespace A327776.P6817620125159619721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327776.P6817620125159619721

/-! ## A327776.P87052542074801282

`lt[A290103(n+1), A318994(n+1)-A001222(n+1)]+1`
-/

namespace A327776.P87052542074801282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327776.P87052542074801282

/-!
# A327781: Number of integer partitions of n whose LCM is less than n.

The programs for A327781, there is no canonical definition to state claims against.
-/

/-! ## A327781.P1480178321493834750

`A088314(n)-A236861(A195980(n))`
-/

namespace A327781.P1480178321493834750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - A236861 (A195980 n).toNat

end

end A327781.P1480178321493834750

/-! ## A327781.P2563997645376017040

`A347446(n)-A115944(A268438(n))`
-/

namespace A327781.P2563997645376017040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347446 n - A115944 (A268438 n).toNat

end

end A327781.P2563997645376017040

/-! ## A327781.P3121222498148400730

`A070098(A005993(n)^A047996(n))`
-/

namespace A327781.P3121222498148400730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (SequenceMachineLib.roundAway ((A005993 n : ℚ) ^ (A047996 n : ℤ))).toNat

end

end A327781.P3121222498148400730

/-!
# A327782: Numbers n that cannot be written as a sum of two or more distinct parts with the largest part dividing n.

The programs for A327782, the canonical program `A327782.P15678068079695868223` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327782 has offset 1).

The definition of A327782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327782.P15257278203598599217

`lt[A357311(n)², 2*n]`
-/

namespace A327782.P15257278203598599217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357311 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327782.P15257278203598599217

namespace A327782

/-- `lt[A357311(n)², 2*n]` -/
def P15257278203598599217.Spec : Prop :=
  ∀ n, (P15257278203598599217.a n : ℤ) = A327782 (n + 1)

end A327782

/-! ## A327782.P12240382038062000212

`eq[1, A334461(n+1)]+1`
-/

namespace A327782.P12240382038062000212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327782.P12240382038062000212

namespace A327782

/-- `eq[1, A334461(n+1)]+1` -/
def P12240382038062000212.Spec : Prop :=
  ∀ n, (P12240382038062000212.a n : ℤ) = A327782 (n + 1)

end A327782

/-! ## A327782.P6888627494016123559

`eq[1, A334464(n+1)]+1`
-/

namespace A327782.P6888627494016123559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327782.P6888627494016123559

namespace A327782

/-- `eq[1, A334464(n+1)]+1` -/
def P6888627494016123559.Spec : Prop :=
  ∀ n, (P6888627494016123559.a n : ℤ) = A327782 (n + 1)

end A327782

/-! ## A327782.P15678068079695868223

`lt[A001065(n+1)/3, A020639(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A327782

/-- `lt[A001065(n+1)/3, A020639(n+1)]+1` -/
def P15678068079695868223.Spec : Prop :=
  ∀ n, (P15678068079695868223.a n : ℤ) = A327782 (n + 1)

theorem P15678068079695868223.correct : P15678068079695868223.Spec := by
  intro n
  simp only [A327782, Nat.add_sub_cancel]

end A327782

/-! ## A327782.P9923353668984930670

`lt[A293598(n+1), 3*n+1]`
-/

namespace A327782.P9923353668984930670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293598 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327782.P9923353668984930670

namespace A327782

/-- `lt[A293598(n+1), 3*n+1]` -/
def P9923353668984930670.Spec : Prop :=
  ∀ n, (P9923353668984930670.a n : ℤ) = A327782 (n + 1)

end A327782

/-! ## A327782.P8426773157562528345

`eq[1, A326850(n)]`
-/

namespace A327782.P8426773157562528345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327782.P8426773157562528345

namespace A327782

/-- `eq[1, A326850(n)]` -/
def P8426773157562528345.Spec : Prop :=
  ∀ n, (P8426773157562528345.a n : ℤ) = A327782 (n + 1)

end A327782

/-! ## A327782.P13451484414878049453

`lt[A326850(n+1), 2]+1`
-/

namespace A327782.P13451484414878049453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327782.P13451484414878049453

namespace A327782

/-- `lt[A326850(n+1), 2]+1` -/
def P13451484414878049453.Spec : Prop :=
  ∀ n, (P13451484414878049453.a n : ℤ) = A327782 (n + 1)

end A327782

/-! ## A327782.P9198832885132275616

`lt[A326850(n), atan(A005843(n))]`
-/

namespace A327782.P9198832885132275616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A005843 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327782.P9198832885132275616

namespace A327782

/-- `lt[A326850(n), atan(A005843(n))]` -/
def P9198832885132275616.Spec : Prop :=
  ∀ n, (P9198832885132275616.a n : ℤ) = A327782 (n + 1)

end A327782

/-! ## A327782.P10293421676087960615

`lt[A326850(n), atan(A055998(n))]`
-/

namespace A327782.P10293421676087960615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A055998 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327782.P10293421676087960615

namespace A327782

/-- `lt[A326850(n), atan(A055998(n))]` -/
def P10293421676087960615.Spec : Prop :=
  ∀ n, (P10293421676087960615.a n : ℤ) = A327782 (n + 1)

end A327782

/-! ## A327782.P1504360777919805694

`lt[A008414(A078898(n)²), A113518(n+1)]`
-/

namespace A327782.P1504360777919805694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (A078898 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327782.P1504360777919805694

namespace A327782

/-- `lt[A008414(A078898(n)²), A113518(n+1)]` -/
def P1504360777919805694.Spec : Prop :=
  ∀ n, (P1504360777919805694.a n : ℤ) = A327782 (n + 1)

end A327782

/-!
# A327783: Heinz numbers of integer partitions whose LCM is a multiple of their sum.

The programs for A327783, there is no canonical definition to state claims against.
-/

/-! ## A327783.P12292048618772289539

`∩[A326149(n+1), A383017(n+1)]`
-/

namespace A327783.P12292048618772289539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327783.P12292048618772289539

/-! ## A327783.P17133194112013314270

`∩[A379844(n+1), A383017(n+1)]`
-/

namespace A327783.P17133194112013314270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327783.P17133194112013314270

/-! ## A327783.P11627648197606561938

`∩[A294472(n+1), A326149(n+1)]`
-/

namespace A327783.P11627648197606561938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327783.P11627648197606561938

/-! ## A327783.P16241025120914033583

`∩[A294472(n+1), A379844(n+1)]`
-/

namespace A327783.P16241025120914033583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327783.P16241025120914033583

/-!
# A327784: Heinz numbers of integer partitions whose LCM is greater than their sum.

The programs for A327784, there is no canonical definition to state claims against.
-/

/-! ## A327784.P8565871779360591797

`lt[A056239(n+1), A290103(n+1)]+1`
-/

namespace A327784.P8565871779360591797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327784.P8565871779360591797

/-! ## A327784.P8775041021502432927

`lt[A318995(n+1)+A001222(n+1), A290103(n+1)]+1`
-/

namespace A327784.P8775041021502432927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327784.P8775041021502432927

/-! ## A327784.P5149022625390307794

`lt[A325166(n+1)+A297113(n+1), A290103(n+1)]+1`
-/

namespace A327784.P5149022625390307794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) + A297113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327784.P5149022625390307794

/-! ## A327784.P5239438501267890159

`lt[A318994(n+1)-A001222(n+1), A290103(n+1)]+1`
-/

namespace A327784.P5239438501267890159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327784.P5239438501267890159

/-! ## A327784.P8944895912975657136

`lt[A243503(n+1)-A278520(n+1), A290103(n+1)]+1`
-/

namespace A327784.P8944895912975657136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - A278520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327784.P8944895912975657136

/-!
# A327785: Square array read by antidiagonals: A(n,k) = Sum_{d|n} (k/d), (n>=1, k>=0), where (m/n) is the Kronecker symbol.

The programs for A327785, there is no canonical definition to state claims against.
-/

/-! ## A327785.P16740124139909743036

`and(A122191(n+1), A248829(A259185(n+1)))`
-/

namespace A327785.P16740124139909743036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122191 (n + 1)) (A248829 (A259185 (n + 1)).toNat)

end

end A327785.P16740124139909743036

/-! ## A327785.P543922961447569352

`and(A122191(n+1), A265359(A173700(2*(n+1))))`
-/

namespace A327785.P543922961447569352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122191 (n + 1)) (A265359 (A173700 (2 * (n + 1))).toNat)

end

end A327785.P543922961447569352

/-! ## A327785.P7722855569741230881

`and(A122191(n+1), A264779(A037102(n)))`
-/

namespace A327785.P7722855569741230881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122191 (n + 1)) (A264779 (A037102 n).toNat)

end

end A327785.P7722855569741230881

/-! ## A327785.P12424244410157310182

`and(A122191(n+1), A322960(n+1))`
-/

namespace A327785.P12424244410157310182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122191 (n + 1)) (A322960 (n + 1))

end

end A327785.P12424244410157310182

/-! ## A327785.P10921558855983023060

`and(A000959(A208355(n)), A122191(n+1))`
-/

namespace A327785.P10921558855983023060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000959 (A208355 n).toNat) (A122191 (n + 1))

end

end A327785.P10921558855983023060

/-!
# A327786: Numbers whose number of distinct prime factors is greater than the sum of their digits.

The programs for A327786, there is no canonical definition to state claims against.
-/

/-! ## A327786.P6797561631976592367

`lt[A007953(n), A001221(A028310(n))]`
-/

namespace A327786.P6797561631976592367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327786.P6797561631976592367

/-! ## A327786.P3112750820957575768

`lt[A062028(n)-n, A001221(A028310(n))]`
-/

namespace A327786.P3112750820957575768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327786.P3112750820957575768

/-! ## A327786.P12677023562039392940

`lt[A061762(n), A001221(A028310(n))]`
-/

namespace A327786.P12677023562039392940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327786.P12677023562039392940

/-! ## A327786.P8472191175406851021

`lt[A169805(n)/2, A001221(A028310(n))]`
-/

namespace A327786.P8472191175406851021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A327786.P8472191175406851021

/-! ## A327786.P10894221109536835886

`lt[A118880(n)^(1/3), A001221(A028310(n))]`
-/

namespace A327786.P10894221109536835886
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327786.P10894221109536835886

/-!
# A327788: a(n) is the smallest nonnegative integer m such that the integer part of tan(m) is equal to n.

The programs for A327788, there is no canonical definition to state claims against.
-/

/-! ## A327788.P10219736776917741727

`A202704(A064818(n+1))`
-/

namespace A327788.P10219736776917741727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (A064818 (n + 1)).toNat

end

end A327788.P10219736776917741727

/-!
# A327790: Decompose the multiplicative group of integers modulo n as a product of cyclic groups C_{k_1} X C_{k_2} X ... X C_{k_r}, where k_i > 1, k_i divides k_j for i < j; then a(n) = Product_{i=1..r} phi(k_i), phi = A000010.

The programs for A327790, there is no canonical definition to state claims against.
-/

/-! ## A327790.P16169049444051721530

`A302257(n+1)/A327791(n+1)`
-/

namespace A327790.P16169049444051721530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302257 (n + 1) : ℚ) / (A327791 (n + 1) : ℚ)

end

end A327790.P16169049444051721530

/-!
# A327791: Number of ways, up to order, of decomposing (Z/nZ)* as the internal direct product of r cyclic subgroups, where r = rank((Z/nZ)*).

The programs for A327791, there is no canonical definition to state claims against.
-/

/-! ## A327791.P228189178645951751

`A302257(n+1)/A327790(n+1)`
-/

namespace A327791.P228189178645951751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302257 (n + 1) : ℚ) / (A327790 (n + 1) : ℚ)

end

end A327791.P228189178645951751

/-! ## A327791.P17750827697916872013

`A000188(A302257(n+1)²)/A206941(n+1)`
-/

namespace A327791.P17750827697916872013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (A302257 (n + 1) ^ 2).toNat : ℚ) / (A206941 (n + 1) : ℚ)

end

end A327791.P17750827697916872013

/-!
# A327794: The number of (n-2)-interval parking functions of size n.

The programs for A327794, there is no canonical definition to state claims against.
-/

/-! ## A327794.P15547354676985855722

`A078152(∑[A069731(n+1)])`
-/

namespace A327794.P15547354676985855722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327794.P15547354676985855722

/-! ## A327794.P8617862838678302121

`A328596(round(∑[3*2^(n-2)]))-A079729(n+1)`
-/

namespace A327794.P8617862838678302121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A079729 (n + 1)

end

end A327794.P8617862838678302121

/-!
# A327795: Number of parts in all proper twice partitions of n into distinct parts.

The programs for A327795, there is no canonical definition to state claims against.
-/

/-! ## A327795.P17158916687213179182

`A002024(A001835(n))-A004001(n+1)`
-/

namespace A327795.P17158916687213179182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001835 n).toNat - A004001 (n + 1)

end

end A327795.P17158916687213179182

/-! ## A327795.P9861776294602341613

`A002024(A001835(n))-A006165(n+1)`
-/

namespace A327795.P9861776294602341613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001835 n).toNat - A006165 (n + 1)

end

end A327795.P9861776294602341613

/-! ## A327795.P8430683622015870670

`A002024(A001835(n))-A046699(n+1)`
-/

namespace A327795.P8430683622015870670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001835 n).toNat - A046699 (n + 1)

end

end A327795.P8430683622015870670

/-! ## A327795.P6362066246195294702

`A003056(A014301(n+1))-A053735(n)`
-/

namespace A327795.P6362066246195294702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A014301 (n + 1)).toNat - A053735 n

end

end A327795.P6362066246195294702

/-! ## A327795.P6133128773147899666

`A100795(A149923(n))-A100795(n+1)`
-/

namespace A327795.P6133128773147899666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A149923 n).toNat - A100795 (n + 1)

end

end A327795.P6133128773147899666

/-!
# A327798: Expansion of 1 / (1 - Sum_{i>=1, j>=1} x^(i*(j + 1))).

The programs for A327798, there is no canonical definition to state claims against.
-/

/-! ## A327798.P605624565400802882

`A067085(A148015(n))-a(n-1)` with `a(0)=1`
-/

namespace A327798.P605624565400802882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067085 (A148015 n).toNat - a (n - 1)

end

end A327798.P605624565400802882

/-! ## A327798.P347423192785225723

`A353086(A285037(n+1)+A056505(n))`
-/

namespace A327798.P347423192785225723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A285037 (n + 1) + A056505 n).toNat

end

end A327798.P347423192785225723

/-! ## A327798.P2760943697109529

`A064532(n)+A000196(A094039(n))-a(n-1)` with `a(0)=1`
-/

namespace A327798.P2760943697109529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064532 n + A000196 (A094039 n).toNat - a (n - 1)

end

end A327798.P2760943697109529

/-! ## A327798.P6433193674689330925

`A120562(A081857(n)+A000225(n))-a(n-1)` with `a(0)=1`
-/

namespace A327798.P6433193674689330925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120562 (A081857 n + A000225 n).toNat - a (n - 1)

end

end A327798.P6433193674689330925

