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
import Seq.B000.C027
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A285900: Sum of all parts of all partitions of all positive integers <= n into consecutive parts.

The programs for A285900, the canonical program `A285900.P15955772372834169209` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285900 has offset 1).

The definition of A285900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285900.P15955772372834169209

`∑[∑{d}[n+1, (n+1)*#%2]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285900

/-- `∑[∑{d}[n+1, (n+1)*#%2]]` -/
def P15955772372834169209.Spec : Prop :=
  ∀ n, (P15955772372834169209.a n : ℤ) = A285900 (n + 1)

theorem P15955772372834169209.correct : P15955772372834169209.Spec := by
  intro n
  simp only [A285900, Nat.add_sub_cancel]

end A285900

/-! ## A285900.P9907420000031214289

`∑[∑{d}[n+1, (n+1)*and(1, #)]]`
-/

namespace A285900.P9907420000031214289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1) * Nat.land 1 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P9907420000031214289

namespace A285900

/-- `∑[∑{d}[n+1, (n+1)*and(1, #)]]` -/
def P9907420000031214289.Spec : Prop :=
  ∀ n, (P9907420000031214289.a n : ℤ) = A285900 (n + 1)

theorem P9907420000031214289.correct : P9907420000031214289.Spec := by
  intro n
  simp only [A285900, Nat.add_sub_cancel, A285900.P9907420000031214289.f2, A285900.P9907420000031214289.f1, A285900.P9907420000031214289.a, A285900.P15955772372834169209.f2, A285900.P15955772372834169209.f1, A285900.P15955772372834169209.a, SequenceMachineLib.memo_apply]
  try simp

end A285900

/-! ## A285900.P12994408001895698839

`∑[∑{d}[n+1, lcm(n+1, and(1, #))]]`
-/

namespace A285900.P12994408001895698839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.lcm (n + 1) (Nat.land 1 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P12994408001895698839

namespace A285900

/-- `∑[∑{d}[n+1, lcm(n+1, and(1, #))]]` -/
def P12994408001895698839.Spec : Prop :=
  ∀ n, (P12994408001895698839.a n : ℤ) = A285900 (n + 1)

end A285900

/-! ## A285900.P14646169387997847971

`∑[(n+1)*∏{e}[n+1, #+1]/log2(xor(n, n+1)+1)]`
-/

namespace A285900.P14646169387997847971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℝ) / Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P14646169387997847971

namespace A285900

/-- `∑[(n+1)*∏{e}[n+1, #+1]/log2(xor(n, n+1)+1)]` -/
def P14646169387997847971.Spec : Prop :=
  ∀ n, P14646169387997847971.a n = (A285900 (n + 1) : ℝ)

end A285900

/-! ## A285900.P9181304714593489307

`∑[A245579(n+1)]`
-/

namespace A285900.P9181304714593489307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P9181304714593489307

namespace A285900

/-- `∑[A245579(n+1)]` -/
def P9181304714593489307.Spec : Prop :=
  ∀ n, P9181304714593489307.a n = A285900 (n + 1)

end A285900

/-! ## A285900.P8435063261739370117

`∑[(n+1)*A001227(n+1)]`
-/

namespace A285900.P8435063261739370117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P8435063261739370117

namespace A285900

/-- `∑[(n+1)*A001227(n+1)]` -/
def P8435063261739370117.Spec : Prop :=
  ∀ n, P8435063261739370117.a n = A285900 (n + 1)

end A285900

/-! ## A285900.P752639827653469023

`∑[(n+1)*A000005(A000265(n+1))]`
-/

namespace A285900.P752639827653469023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P752639827653469023

namespace A285900

/-- `∑[(n+1)*A000005(A000265(n+1))]` -/
def P752639827653469023.Spec : Prop :=
  ∀ n, P752639827653469023.a n = A285900 (n + 1)

end A285900

/-! ## A285900.P17474040658279091587

`∑[(n+1)*A000005(A064989(n+1))]`
-/

namespace A285900.P17474040658279091587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A064989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P17474040658279091587

namespace A285900

/-- `∑[(n+1)*A000005(A064989(n+1))]` -/
def P17474040658279091587.Spec : Prop :=
  ∀ n, P17474040658279091587.a n = A285900 (n + 1)

end A285900

/-! ## A285900.P6358635769457980678

`∑[A000005(A336158(n+1))*(n+1)]`
-/

namespace A285900.P6358635769457980678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P6358635769457980678

namespace A285900

/-- `∑[A000005(A336158(n+1))*(n+1)]` -/
def P6358635769457980678.Spec : Prop :=
  ∀ n, P6358635769457980678.a n = A285900 (n + 1)

end A285900

/-! ## A285900.P2811354248516548289

`∑[(n+1)*∑{d}[n+1, A000035(#)]]`
-/

namespace A285900.P2811354248516548289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f2 n), A000035 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P2811354248516548289

namespace A285900

/-- `∑[(n+1)*∑{d}[n+1, A000035(#)]]` -/
def P2811354248516548289.Spec : Prop :=
  ∀ n, P2811354248516548289.a n = A285900 (n + 1)

end A285900

/-! ## A285900.P1773487492252656540

`∑[(n+1)*A299480(2*n+1)]`
-/

namespace A285900.P1773487492252656540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A299480 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P1773487492252656540

namespace A285900

/-- `∑[(n+1)*A299480(2*n+1)]` -/
def P1773487492252656540.Spec : Prop :=
  ∀ n, P1773487492252656540.a n = A285900 (n + 1)

end A285900

/-! ## A285900.P17119284894330005302

`∑[(n+1)*A298735((n+1)²)]`
-/

namespace A285900.P17119284894330005302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A298735 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P17119284894330005302

namespace A285900

/-- `∑[(n+1)*A298735((n+1)²)]` -/
def P17119284894330005302.Spec : Prop :=
  ∀ n, P17119284894330005302.a n = A285900 (n + 1)

end A285900

/-! ## A285900.P15210962635914408008

`∑[(n+1)*A328372((n+1)²)]`
-/

namespace A285900.P15210962635914408008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328372 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285900.P15210962635914408008

namespace A285900

/-- `∑[(n+1)*A328372((n+1)²)]` -/
def P15210962635914408008.Spec : Prop :=
  ∀ n, P15210962635914408008.a n = A285900 (n + 1)

end A285900

/-!
# A285901: Total number of partitions of all positive integers <= n into an odd number of consecutive parts.

The programs for A285901, there is no canonical definition to state claims against.
-/

/-! ## A285901.P2373258188790562516

`A060831(n+1)-A285902(n+1)`
-/

namespace A285901.P2373258188790562516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - A285902 (n + 1)

end

end A285901.P2373258188790562516

/-! ## A285901.P463885284725077487

`∑[A082647(n+1)]`
-/

namespace A285901.P463885284725077487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285901.P463885284725077487

/-! ## A285901.P14204566736706632986

`∑[A069288(2*(n+1))]`
-/

namespace A285901.P14204566736706632986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285901.P14204566736706632986

/-! ## A285901.P15600041663888881343

`∑[A333805(2*(n+1))]`
-/

namespace A285901.P15600041663888881343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285901.P15600041663888881343

/-! ## A285901.P15794328967938956149

`∑[dr(A082647(-xor(n, -1)))]`
-/

namespace A285901.P15794328967938956149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A082647 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285901.P15794328967938956149

/-! ## A285901.P7921404613978214064

`∑[dr(A082647(Δ[n²]-n))]`
-/

namespace A285901.P7921404613978214064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A082647 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285901.P7921404613978214064

/-! ## A285901.P11602534764432571373

`∑[A352257(n+1)/(n+1)]`
-/

namespace A285901.P11602534764432571373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352257 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285901.P11602534764432571373

/-! ## A285901.P17711835915268784028

`A285902(n+1)+A240542(n+1)`
-/

namespace A285901.P17711835915268784028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285902 (n + 1) + A240542 (n + 1)

end

end A285901.P17711835915268784028

/-!
# A285902: Total number of partitions of all positive integers <= n into an even number of consecutive parts.

The programs for A285902, there is no canonical definition to state claims against.
-/

/-! ## A285902.P6242227994711070051

`A060831(n+1)-A285901(n+1)`
-/

namespace A285902.P6242227994711070051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - A285901 (n + 1)

end

end A285902.P6242227994711070051

/-! ## A285902.P1522265275127098480

`∑[A131576(n+1)]`
-/

namespace A285902.P1522265275127098480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285902.P1522265275127098480

/-! ## A285902.P6907555820200058715

`A285999(n+1)/2`
-/

namespace A285902.P6907555820200058715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285999 (n + 1) : ℚ) / 2

end

end A285902.P6907555820200058715

/-! ## A285902.P13314683343851217710

`∑[A341594(2*(n+1))]`
-/

namespace A285902.P13314683343851217710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285902.P13314683343851217710

/-! ## A285902.P16354840611503310271

`∑[A341675(2*(n+1))]`
-/

namespace A285902.P16354840611503310271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285902.P16354840611503310271

/-! ## A285902.P13107291166250088240

`∑[A281009(n+1)/2]`
-/

namespace A285902.P13107291166250088240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281009 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285902.P13107291166250088240

/-! ## A285902.P8870754202690877374

`∑[A352505(n+1)/(n+1)]`
-/

namespace A285902.P8870754202690877374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352505 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285902.P8870754202690877374

/-! ## A285902.P9958261067394132538

`A341675(2*n+2)+a(n-1)` with `a(0)=0`
-/

namespace A285902.P9958261067394132538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A341675 (2 * n + 2) + a (n - 1)

end

end A285902.P9958261067394132538

/-! ## A285902.P9242493504243205913

`∑[∑{d}[n+1, and(1, #)]-A082647(n+1)]`
-/

namespace A285902.P9242493504243205913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.land 1 d : ℕ) : ℤ) - A082647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285902.P9242493504243205913

/-! ## A285902.P9658041742448966129

`A001281(A285999(n+1))`
-/

namespace A285902.P9658041742448966129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A285999 (n + 1)).toNat

end

end A285902.P9658041742448966129

/-! ## A285902.P8462208722281431753

`A285901(n+1)-A240542(n+1)`
-/

namespace A285902.P8462208722281431753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285901 (n + 1) - A240542 (n + 1)

end

end A285902.P8462208722281431753

/-!
# A285903: G.f.: 1 + Sum_{n>=1} a(n)*x^n/(1 - x^n) = 1/(1 - x/(1 - x^2/(1 - x^3/(1 - x^4/(1 - ...))))).

The programs for A285903, there is no canonical definition to state claims against.
-/

/-! ## A285903.P15711396028772687353

`Δ[A036621(n)%A215263(n)]`
-/

namespace A285903.P15711396028772687353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036621 n) (A215263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285903.P15711396028772687353

/-! ## A285903.P1389579537161396560

`A069623(A059345(n))-A000045(n)`
-/

namespace A285903.P1389579537161396560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A059345 n).toNat - A000045 n

end

end A285903.P1389579537161396560

/-! ## A285903.P8546676971560565989

`A000196(A000213(n)*A052847(n))`
-/

namespace A285903.P8546676971560565989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000213 n * A052847 n).toNat

end

end A285903.P8546676971560565989

/-! ## A285903.P9550589735481142760

`A302018(n)-A332202(A302029(n+1))`
-/

namespace A285903.P9550589735481142760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302018 n - A332202 (A302029 (n + 1)).toNat

end

end A285903.P9550589735481142760

/-! ## A285903.P2853832292646973593

`A309014(A078160(n+1))`
-/

namespace A285903.P2853832292646973593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309014 (A078160 (n + 1)).toNat

end

end A285903.P2853832292646973593

/-!
# A285904: Partial row products of table A027746, prime factors with repetition, reversed.

The programs for A285904, there is no canonical definition to state claims against.
-/

/-! ## A285904.P8433947499137426155

`A072078(A122819(n+1))`
-/

namespace A285904.P8433947499137426155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A122819 (n + 1)).toNat

end

end A285904.P8433947499137426155

/-! ## A285904.P15086784723390467514

`A051903(3*A122819(n+1))`
-/

namespace A285904.P15086784723390467514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (3 * A122819 (n + 1)).toNat

end

end A285904.P15086784723390467514

/-! ## A285904.P13777829015187566489

`A088388(3*A122819(n+1))`
-/

namespace A285904.P13777829015187566489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (3 * A122819 (n + 1)).toNat

end

end A285904.P13777829015187566489

/-! ## A285904.P4848449554618835038

`A159081((A080688(n+1)*A323436(n))²)`
-/

namespace A285904.P4848449554618835038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 ((A080688 (n + 1) * A323436 n) ^ 2).toNat

end

end A285904.P4848449554618835038

/-! ## A285904.P10593812590473402161

`A027749(lt[A061260(n+1), A276836(3*n+5)])`
-/

namespace A285904.P10593812590473402161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276836 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285904.P10593812590473402161

/-!
# A285905: a(n) = A275768(A002110(n)).

The programs for A285905, there is no canonical definition to state claims against.
-/

/-! ## A285905.P7587060515146768499

`A275768(A002110(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285905.P7587060515146768499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 (A002110 (n + 1)).toNat

end

end A285905.P7587060515146768499

/-! ## A285905.P2922250082081348572

`A130375(A174707(3*n+1)%A062569(n+1))`
-/

namespace A285905.P2922250082081348572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130375 (Int.tmod (A174707 (3 * n + 1)) (A062569 (n + 1))).toNat

end

end A285905.P2922250082081348572

/-!
# A285906: Numbers n such that sigma(n)/usigma(n) > sigma(m)/usigma(m) for all m < n, where sigma(n) is the sum of divisors of n (A000203) and usigma(n) is the sum of unitary divisors of n (A034448).

The programs for A285906, there is no canonical definition to state claims against.
-/

/-! ## A285906.P1766438702614072543

`record[A181800(n+1)/A194673(2*n+1)]`
-/

namespace A285906.P1766438702614072543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181800 (n + 1) : ℚ) / (A194673 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285906.P1766438702614072543

/-! ## A285906.P11563531896448642891

`A181800(lt[(n/2)², A109044(n)])`
-/

namespace A285906.P11563531896448642891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A285906.P11563531896448642891

/-! ## A285906.P1597846160801003125

`A181800(lt[13, A361216(2*(n+2))])`
-/

namespace A285906.P1597846160801003125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361216 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285906.P1597846160801003125

/-! ## A285906.P10841826819582894997

`∩[A349112(n+1), A357315(n+1)]`
-/

namespace A285906.P10841826819582894997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285906.P10841826819582894997

/-!
# A285907: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A285907, there is no canonical definition to state claims against.
-/

/-! ## A285907.P7191201146069488598

`A286508(n)*A305989(A285908(n))`
-/

namespace A285907.P7191201146069488598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A285908 n).toNat

end

end A285907.P7191201146069488598

/-! ## A285907.P12647721066908228574

`A007088(A285909(n))`
-/

namespace A285907.P12647721066908228574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285909 n).toNat

end

end A285907.P12647721066908228574

/-! ## A285907.P16554286256770401159

`A007088(lcm(A285437(n), A285908(n)))`
-/

namespace A285907.P16554286256770401159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A285437 n) (A285908 n))

end

end A285907.P16554286256770401159

/-! ## A285907.P17659042828894792869

`A286508(n)*A305989(A285909(n))`
-/

namespace A285907.P17659042828894792869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A285909 n).toNat

end

end A285907.P17659042828894792869

/-! ## A285907.P12025314223532081492

`lcm(A285435(n), A305989(A285909(n)))`
-/

namespace A285907.P12025314223532081492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285435 n) (A305989 (A285909 n).toNat)

end

end A285907.P12025314223532081492

/-!
# A285909: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A285909, there is no canonical definition to state claims against.
-/

/-! ## A285909.P10145306207873807734

`lcm(A019554(2^n), A285908(n))`
-/

namespace A285909.P10145306207873807734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A019554 (2 ^ n)) (A285908 n)

end

end A285909.P10145306207873807734

/-! ## A285909.P13990363939733570089

`A288808(n)%A064863(A000079(n))`
-/

namespace A285909.P13990363939733570089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288808 n) (A064863 (A000079 n).toNat)

end

end A285909.P13990363939733570089

/-! ## A285909.P12555188344198114073

`A028310(lcm(A285437(n), A285908(n)))`
-/

namespace A285909.P12555188344198114073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm (A285437 n) (A285908 n))

end

end A285909.P12555188344198114073

/-! ## A285909.P13016838123138594416

`lcm(A028310(A285437(n)), A046523(n+1))`
-/

namespace A285909.P13016838123138594416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A285437 n).toNat) (A046523 (n + 1))

end

end A285909.P13016838123138594416

/-! ## A285909.P8781109755157981565

`gcd(A166642(A047859(n)), A288808(n))`
-/

namespace A285909.P8781109755157981565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166642 (A047859 n).toNat) (A288808 n)

end

end A285909.P8781109755157981565

/-!
# A285910: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A285910, there is no canonical definition to state claims against.
-/

/-! ## A285910.P10100269158191739348

`A007088(A285912(n))`
-/

namespace A285910.P10100269158191739348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285912 n).toNat

end

end A285910.P10100269158191739348

/-! ## A285910.P15430346898651060438

`A185544(2*A285912(n))`
-/

namespace A285910.P15430346898651060438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285912 n).toNat

end

end A285910.P15430346898651060438

/-! ## A285910.P1011918940028114936

`A285825(A004891(n+1))-char[6]`
-/

namespace A285910.P1011918940028114936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285825 (A004891 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285910.P1011918940028114936

/-! ## A285910.P3185653635816664499

`A288584(A001222(5^n))-char[6]`
-/

namespace A285910.P3185653635816664499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288584 (A001222 (5 ^ n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285910.P3185653635816664499

/-!
# A285911: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A285911, there is no canonical definition to state claims against.
-/

/-! ## A285911.P9322145128677764350

`A007088(A285913(n))`
-/

namespace A285911.P9322145128677764350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285913 n).toNat

end

end A285911.P9322145128677764350

/-! ## A285911.P15390935080795448254

`A185544(2*A285913(n))`
-/

namespace A285911.P15390935080795448254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285913 n).toNat

end

end A285911.P15390935080795448254

/-! ## A285911.P15436935173545380033

`A288585(n)%A048365(A253565(2*n+1))`
-/

namespace A285911.P15436935173545380033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288585 n) (A048365 (A253565 (2 * n + 1)).toNat)

end

end A285911.P15436935173545380033

/-! ## A285911.P13543758404285574801

`A288585(A004902(n+1))%A048365(2*n+3)`
-/

namespace A285911.P13543758404285574801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288585 (A004902 (n + 1)).toNat) (A048365 (2 * n + 3))

end

end A285911.P13543758404285574801

/-!
# A285912: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A285912, there is no canonical definition to state claims against.
-/

/-! ## A285912.P1653841160352256735

`A285827(A004891(n+1))-char[6]`
-/

namespace A285912.P1653841160352256735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285827 (A004891 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285912.P1653841160352256735

/-! ## A285912.P6879699208770187797

`A285827(A004902(n+1))-char[6]`
-/

namespace A285912.P6879699208770187797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285827 (A004902 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285912.P6879699208770187797

/-! ## A285912.P16469329670790765001

`A285827(A004913(n+1))-char[6]`
-/

namespace A285912.P16469329670790765001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285827 (A004913 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285912.P16469329670790765001

/-! ## A285912.P2537853747663591760

`A288586(A001222(5^n))-char[6]`
-/

namespace A285912.P2537853747663591760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288586 (A001222 (5 ^ n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285912.P2537853747663591760

/-!
# A285914: Irregular triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists k's interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A285914, there is no canonical definition to state claims against.
-/

/-! ## A285914.P5231387981793654567

`A286013(n+1)-floor(A196020(n+1)/2)`
-/

namespace A285914.P5231387981793654567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286013 (n + 1) - ⌊(A196020 (n + 1) : ℚ) / 2⌋

end

end A285914.P5231387981793654567

/-! ## A285914.P9148497668560064200

`A286013(n+1)-A004524(A196020(n+1))`
-/

namespace A285914.P9148497668560064200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286013 (n + 1) - A004524 (A196020 (n + 1)).toNat

end

end A285914.P9148497668560064200

/-! ## A285914.P12761302046034270605

`A237048(n+1)*A341970(∑[A237048(n+1)])`
-/

namespace A285914.P12761302046034270605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1) * A341970 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285914.P12761302046034270605

/-! ## A285914.P14355375255551145082

`A286013(n+1)-A002265(2*A196020(n+1))`
-/

namespace A285914.P14355375255551145082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286013 (n + 1) - A002265 (2 * A196020 (n + 1)).toNat

end

end A285914.P14355375255551145082

/-! ## A285914.P12098954803042982728

`A211343(n+1)+A286013(n+1)-A196020(n+1)`
-/

namespace A285914.P12098954803042982728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211343 (n + 1) + (A286013 (n + 1) - A196020 (n + 1))

end

end A285914.P12098954803042982728

/-! ## A285914.P8086451807350340808

`A237048(n+1)+A286013(n+1)-A211343(n+1)`
-/

namespace A285914.P8086451807350340808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1) + (A286013 (n + 1) - A211343 (n + 1))

end

end A285914.P8086451807350340808

/-! ## A285914.P18376965212978744035

`A286013(n+1)-A196020(n+1)%A235791(n+1)`
-/

namespace A285914.P18376965212978744035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286013 (n + 1) - Int.tmod (A196020 (n + 1)) (A235791 (n + 1))

end

end A285914.P18376965212978744035

/-! ## A285914.P18210402742888272312

`A211343(n+1)/A236104(n+1)*A328368(n+1)`
-/

namespace A285914.P18210402742888272312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211343 (n + 1) : ℚ) / (A236104 (n + 1) : ℚ) * (A328368 (n + 1) : ℚ)

end

end A285914.P18210402742888272312

/-! ## A285914.P121697426330913494

`A237048(n+1)/A235791(n+1)*A328368(n+1)`
-/

namespace A285914.P121697426330913494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237048 (n + 1) : ℚ) / (A235791 (n + 1) : ℚ) * (A328368 (n + 1) : ℚ)

end

end A285914.P121697426330913494

/-! ## A285914.P3234172725866747190

`lcm(A211343(n+1), A328368(n+1))/A235791(n+1)`
-/

namespace A285914.P3234172725866747190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A211343 (n + 1)) (A328368 (n + 1)) : ℚ) / (A235791 (n + 1) : ℚ)

end

end A285914.P3234172725866747190

/-!
# A285915: Integers n such that A112528(n) - A103274(n) = 1.

The programs for A285915, there is no canonical definition to state claims against.
-/

/-! ## A285915.P11940683001959977335

`eq[2, ∑{e}[2-record[A020639(n+1)], #]]`
-/

namespace A285915.P11940683001959977335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285915.P11940683001959977335

/-! ## A285915.P11778320427626075001

`eq[2, ∑{e}[A065091(n+1)-2, #]]+2`
-/

namespace A285915.P11778320427626075001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A285915.P11778320427626075001

/-! ## A285915.P1260836075914774221

`eq[2, ∑{e}[A006093(abs(1-n)+1)-1, #]]`
-/

namespace A285915.P1260836075914774221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (|1 - (n : ℤ)| + 1).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285915.P1260836075914774221

/-! ## A285915.P6134576515194084368

`A000720(A063638(n+1))`
-/

namespace A285915.P6134576515194084368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063638 (n + 1)).toNat

end

end A285915.P6134576515194084368

/-! ## A285915.P4625550624460066787

`A036234(A241809(n+1))`
-/

namespace A285915.P4625550624460066787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A241809 (n + 1)).toNat

end

end A285915.P4625550624460066787

/-! ## A285915.P5265770246535653193

`A058933(A241809(n+1)+2)`
-/

namespace A285915.P5265770246535653193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A241809 (n + 1) + 2).toNat

end

end A285915.P5265770246535653193

/-! ## A285915.P18394929449424638616

`eq[2, A001222(A238526(n+2))]`
-/

namespace A285915.P18394929449424638616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238526 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285915.P18394929449424638616

/-! ## A285915.P5127800297029868903

`eq[2, A001222(A000040(n+2)-2)]+2`
-/

namespace A285915.P5127800297029868903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 2) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285915.P5127800297029868903

/-! ## A285915.P10530736545600144004

`eq[2, A001222(lt[n, A020639(n+3)]+1)]+1`
-/

namespace A285915.P10530736545600144004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285915.P10530736545600144004

/-! ## A285915.P11814429470425012195

`eq[2, A105700(A000040(n+1)-2%(n+1))]+1`
-/

namespace A285915.P11814429470425012195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A000040 (n + 1) - ((2 % (n + 1) : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285915.P11814429470425012195

/-!
# A285917: Number of ordered set partitions of [n] into two blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285917, the canonical program `A285917.P12135390314754956376` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285917 has offset 2).

The definition of A285917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285917.P12135390314754956376

`∑[2^(n+1)-Δ[A138364(n)]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285917

/-- `∑[2^(n+1)-Δ[A138364(n)]]` -/
def P12135390314754956376.Spec : Prop :=
  ∀ n, P12135390314754956376.a n = A285917 (n + 2)

theorem P12135390314754956376.correct : P12135390314754956376.Spec := by
  intro n
  simp only [A285917, Nat.add_sub_cancel]

end A285917

/-! ## A285917.P1236575799791174457

`∑[2^(n+1)]-A138364(n+1)`
-/

namespace A285917.P1236575799791174457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A138364 (n + 1)

end

end A285917.P1236575799791174457

namespace A285917

/-- `∑[2^(n+1)]-A138364(n+1)` -/
def P1236575799791174457.Spec : Prop :=
  ∀ n, P1236575799791174457.a n = A285917 (n + 2)

end A285917

/-! ## A285917.P1803750119574059431

`A027306(n+1)+A117186(n+1)-2`
-/

namespace A285917.P1803750119574059431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (n + 1) + (A117186 (n + 1) - 2)

end

end A285917.P1803750119574059431

namespace A285917

/-- `A027306(n+1)+A117186(n+1)-2` -/
def P1803750119574059431.Spec : Prop :=
  ∀ n, P1803750119574059431.a n = A285917 (n + 2)

end A285917

/-! ## A285917.P17074268001469700725

`A095121(n+1)+(n+1)*A210628(n+1)`
-/

namespace A285917.P17074268001469700725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (n + 1) + (n + 1 : ℤ) * A210628 (n + 1)

end

end A285917.P17074268001469700725

namespace A285917

/-- `A095121(n+1)+(n+1)*A210628(n+1)` -/
def P17074268001469700725.Spec : Prop :=
  ∀ n, P17074268001469700725.a n = A285917 (n + 2)

end A285917

/-! ## A285917.P8815784390745271306

`∑[A000079(n+1)]+(n+1)*A210628(n+1)`
-/

namespace A285917.P8815784390745271306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ) * A210628 (n + 1)

end

end A285917.P8815784390745271306

namespace A285917

/-- `∑[A000079(n+1)]+(n+1)*A210628(n+1)` -/
def P8815784390745271306.Spec : Prop :=
  ∀ n, P8815784390745271306.a n = A285917 (n + 2)

end A285917

/-! ## A285917.P8779754534620432995

`A100314(n+1)-(A027306(n+2)-A005803(n+2))`
-/

namespace A285917.P8779754534620432995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100314 (n + 1) - (A027306 (n + 2) - A005803 (n + 2))

end

end A285917.P8779754534620432995

namespace A285917

/-- `A100314(n+1)-(A027306(n+2)-A005803(n+2))` -/
def P8779754534620432995.Spec : Prop :=
  ∀ n, P8779754534620432995.a n = A285917 (n + 2)

end A285917

/-! ## A285917.P11736747979802748784

`A120672(n+2)/2`
-/

namespace A285917.P11736747979802748784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120672 (n + 2) : ℚ) / 2

end

end A285917.P11736747979802748784

namespace A285917

/-- `A120672(n+2)/2` -/
def P11736747979802748784.Spec : Prop :=
  ∀ n, P11736747979802748784.a n = (A285917 (n + 2) : ℚ)

end A285917

/-! ## A285917.P571318317067361303

`Δ[A020737(n)]-(A138364(n+1)+2)`
-/

namespace A285917.P571318317067361303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A138364 (n + 1) + 2)

end

end A285917.P571318317067361303

namespace A285917

/-- `Δ[A020737(n)]-(A138364(n+1)+2)` -/
def P571318317067361303.Spec : Prop :=
  ∀ n, P571318317067361303.a n = A285917 (n + 2)

end A285917

/-! ## A285917.P10582742622145842017

`A075427(2*n+1)-(A138364(2*n)+A138364(n+1))`
-/

namespace A285917.P10582742622145842017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (2 * n + 1) - (A138364 (2 * n) + A138364 (n + 1))

end

end A285917.P10582742622145842017

namespace A285917

/-- `A075427(2*n+1)-(A138364(2*n)+A138364(n+1))` -/
def P10582742622145842017.Spec : Prop :=
  ∀ n, P10582742622145842017.a n = A285917 (n + 2)

end A285917

/-! ## A285917.P4846525184503191343

`record[A285824(∑[n]+2)]`
-/

namespace A285917.P4846525184503191343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285917.P4846525184503191343

namespace A285917

/-- `record[A285824(∑[n]+2)]` -/
def P4846525184503191343.Spec : Prop :=
  ∀ n, P4846525184503191343.a n = A285917 (n + 2)

end A285917

/-!
# A285918: Number of ordered set partitions of [n] into three blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285918, there is no canonical definition to state claims against.
-/

/-! ## A285918.P6965263059838859554

`A285824(A167614(n+2))`
-/

namespace A285918.P6965263059838859554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A167614 (n + 2)).toNat

end

end A285918.P6965263059838859554

/-! ## A285918.P3677619587698214785

`A285824(A055999(n)+9)`
-/

namespace A285918.P3677619587698214785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A055999 n + 9).toNat

end

end A285918.P3677619587698214785

/-! ## A285918.P5790899494828056312

`A285824(eq[3, A002262(n)])`
-/

namespace A285918.P5790899494828056312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285918.P5790899494828056312

/-! ## A285918.P8786580190745521939

`A285824(A340266(n+2)+1)`
-/

namespace A285918.P8786580190745521939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A340266 (n + 2) + 1).toNat

end

end A285918.P8786580190745521939

/-! ## A285918.P17817181099296103895

`A285824(A133263(n+3)+1)`
-/

namespace A285918.P17817181099296103895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A133263 (n + 3) + 1).toNat

end

end A285918.P17817181099296103895

/-! ## A285918.P1049526479336283502

`A285824(eq[4, A002260(n+1)])`
-/

namespace A285918.P1049526479336283502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285918.P1049526479336283502

/-! ## A285918.P9104916943124245136

`record[A285824(∑[A233583(n+1)])]`
-/

namespace A285918.P9104916943124245136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285918.P9104916943124245136

/-! ## A285918.P634486596956806480

`record[A285824(A027691(n+1)/2)]`
-/

namespace A285918.P634486596956806480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.roundAway ((A027691 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285918.P634486596956806480

/-! ## A285918.P328151835418555947

`A285824(eq[1, A144328(n+1)-2])`
-/

namespace A285918.P328151835418555947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285918.P328151835418555947

/-! ## A285918.P8838151354184297445

`A285824(eq[1, A327844(n+1)-2])`
-/

namespace A285918.P8838151354184297445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285918.P8838151354184297445

/-!
# A285919: Number of ordered set partitions of [n] into four blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285919, there is no canonical definition to state claims against.
-/

/-! ## A285919.P14722045789879941513

`A285824(A145018(n+5))`
-/

namespace A285919.P14722045789879941513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A145018 (n + 5)).toNat

end

end A285919.P14722045789879941513

/-! ## A285919.P11061287296135464169

`A285824(A056000(n)+14)`
-/

namespace A285919.P11061287296135464169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A056000 n + 14).toNat

end

end A285919.P11061287296135464169

/-! ## A285919.P5173567459699729058

`A285824(eq[4, A002262(n)])`
-/

namespace A285919.P5173567459699729058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285919.P5173567459699729058

/-! ## A285919.P11414003340137174765

`A285824(A167614(n+3)+1)`
-/

namespace A285919.P11414003340137174765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A167614 (n + 3) + 1).toNat

end

end A285919.P11414003340137174765

/-! ## A285919.P9768747077013598022

`A285824(A000096(n+3)+5)`
-/

namespace A285919.P9768747077013598022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A000096 (n + 3) + 5).toNat

end

end A285919.P9768747077013598022

/-! ## A285919.P8363639288474047587

`A285824(A000217(n+4)+4)`
-/

namespace A285919.P8363639288474047587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A000217 (n + 4) + 4).toNat

end

end A285919.P8363639288474047587

/-! ## A285919.P8501743898760313789

`A285824(eq[2, A144328(n+1)-2])`
-/

namespace A285919.P8501743898760313789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285919.P8501743898760313789

/-! ## A285919.P18132536551781608083

`A285824(eq[2, A144328(n+1)/2])`
-/

namespace A285919.P18132536551781608083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A285919.P18132536551781608083

/-! ## A285919.P15430692799898257083

`record[A285824(A008619(A027691(n)))]`
-/

namespace A285919.P15430692799898257083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A008619 (A027691 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285919.P15430692799898257083

/-!
# A285920: Number of ordered set partitions of [n] into five blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285920, there is no canonical definition to state claims against.
-/

/-! ## A285920.P3740193534362280043

`A285824(A167499(n+4))`
-/

namespace A285920.P3740193534362280043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A167499 (n + 4)).toNat

end

end A285920.P3740193534362280043

/-! ## A285920.P5797108566090797658

`A285824(A167614(n+4)+2)`
-/

namespace A285920.P5797108566090797658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A167614 (n + 4) + 2).toNat

end

end A285920.P5797108566090797658

/-! ## A285920.P5755664144865254298

`A285824(A000096(n+4)+6)`
-/

namespace A285920.P5755664144865254298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A000096 (n + 4) + 6).toNat

end

end A285920.P5755664144865254298

/-! ## A285920.P2515531318543677006

`A285824(A000217(n+5)+5)`
-/

namespace A285920.P2515531318543677006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A000217 (n + 5) + 5).toNat

end

end A285920.P2515531318543677006

/-! ## A285920.P5718972681129973486

`A285824(A046691(n+3)+9)`
-/

namespace A285920.P5718972681129973486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A046691 (n + 3) + 9).toNat

end

end A285920.P5718972681129973486

/-!
# A285921: Number of ordered set partitions of [n] into six blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285921, there is no canonical definition to state claims against.
-/

/-! ## A285921.P3875540086181521043

`A285824(eq[6, A002262(n)])`
-/

namespace A285921.P3875540086181521043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285921.P3875540086181521043

/-! ## A285921.P10638417218473744738

`A285824(A000096(n+5)+7)`
-/

namespace A285921.P10638417218473744738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A000096 (n + 5) + 7).toNat

end

end A285921.P10638417218473744738

/-! ## A285921.P3469895137546608090

`A285824(eq[6, A144328(n+1)])`
-/

namespace A285921.P3469895137546608090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285921.P3469895137546608090

/-! ## A285921.P14757680847292654387

`A285824(eq[7, A002260(n+1)])`
-/

namespace A285921.P14757680847292654387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285921.P14757680847292654387

/-! ## A285921.P3813676065991717832

`A285824(eq[13, A158405(n+1)])`
-/

namespace A285921.P3813676065991717832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285921.P3813676065991717832

/-!
# A285922: Number of ordered set partitions of [n] into seven blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285922, there is no canonical definition to state claims against.
-/

/-! ## A285922.P12246604506342206296

`A285824(eq[7, A002262(n)])`
-/

namespace A285922.P12246604506342206296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285922.P12246604506342206296

/-! ## A285922.P15669137553877265964

`A285824(A000096(n+6)+8)`
-/

namespace A285922.P15669137553877265964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A000096 (n + 6) + 8).toNat

end

end A285922.P15669137553877265964

/-! ## A285922.P17533909619980635376

`A285824(eq[7, A144328(n+1)])`
-/

namespace A285922.P17533909619980635376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285922.P17533909619980635376

/-! ## A285922.P10110581805214088169

`A285824(eq[8, A002260(n+1)])`
-/

namespace A285922.P10110581805214088169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285922.P10110581805214088169

/-! ## A285922.P7586581852193534460

`A285824(eq[8, A134868(n+1)])`
-/

namespace A285922.P7586581852193534460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285922.P7586581852193534460

/-!
# A285923: Number of ordered set partitions of [n] into eight blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285923, there is no canonical definition to state claims against.
-/

/-! ## A285923.P16014768431565675839

`A285824(A056126(n)+44)`
-/

namespace A285923.P16014768431565675839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A056126 n + 44).toNat

end

end A285923.P16014768431565675839

/-! ## A285923.P8228550543767602207

`A285824(eq[8, A002262(n)])`
-/

namespace A285923.P8228550543767602207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285923.P8228550543767602207

/-! ## A285923.P13546457298648449879

`A285824(eq[8, A144328(n+1)])`
-/

namespace A285923.P13546457298648449879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285923.P13546457298648449879

/-! ## A285923.P12809419066446822741

`A285824(eq[9, A002260(n+1)])`
-/

namespace A285923.P12809419066446822741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285923.P12809419066446822741

/-! ## A285923.P5412267353641914633

`A285824(eq[9, A134868(n+1)])`
-/

namespace A285923.P5412267353641914633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285923.P5412267353641914633

/-!
# A285924: Number of ordered set partitions of [n] into nine blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285924, there is no canonical definition to state claims against.
-/

/-! ## A285924.P13378018645068742920

`A285824(eq[9, A002262(n)])`
-/

namespace A285924.P13378018645068742920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285924.P13378018645068742920

/-! ## A285924.P3522303449558508996

`A285824(eq[9, A144328(n+1)])`
-/

namespace A285924.P3522303449558508996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285924.P3522303449558508996

/-! ## A285924.P6065840483766450520

`A285824(eq[10, A002260(n+1)])`
-/

namespace A285924.P6065840483766450520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285924.P6065840483766450520

/-! ## A285924.P17610133939006730005

`A285824(eq[10, A134868(n+1)])`
-/

namespace A285924.P17610133939006730005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285924.P17610133939006730005

/-! ## A285924.P10407602975613238133

`A285824(eq[19, A158405(n+1)])`
-/

namespace A285924.P10407602975613238133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285924.P10407602975613238133

/-!
# A285925: Number of ordered set partitions of [n] into ten blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285925, there is no canonical definition to state claims against.
-/

/-! ## A285925.P10127171607752480257

`A285824(eq[10, A002262(n)])`
-/

namespace A285925.P10127171607752480257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285925.P10127171607752480257

/-! ## A285925.P2949106775746699969

`A285824(eq[10, A144328(n+1)])`
-/

namespace A285925.P2949106775746699969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285925.P2949106775746699969

/-! ## A285925.P7557225840347853992

`A285824(eq[10, A327844(n+1)])`
-/

namespace A285925.P7557225840347853992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285925.P7557225840347853992

/-! ## A285925.P17812834173738438216

`A285824(eq[11, A002260(n+1)])`
-/

namespace A285925.P17812834173738438216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285925.P17812834173738438216

/-! ## A285925.P16872822129457401211

`A285824(eq[11, A134868(n+1)])`
-/

namespace A285925.P16872822129457401211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285925.P16872822129457401211

/-!
# A285926: Number of ordered set partitions of [2n] into n blocks such that equal-sized blocks are ordered with increasing least elements.

The programs for A285926, there is no canonical definition to state claims against.
-/

/-! ## A285926.P1018740169833751092

`A285824(∑[4*n])`
-/

namespace A285926.P1018740169833751092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285926.P1018740169833751092

/-! ## A285926.P6457897564572308371

`or(A000007(n), A285824(A046092(n)))`
-/

namespace A285926.P6457897564572308371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A285824 (A046092 n).toNat)

end

end A285926.P6457897564572308371

/-! ## A285926.P16796609134835663262

`A285824(A046092(n))+A000038(n+1)`
-/

namespace A285926.P16796609134835663262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A046092 n).toNat + A000038 (n + 1)

end

end A285926.P16796609134835663262

/-! ## A285926.P4668099851572124308

`A285824(A046092(n))+A010052(A000037(n+1))`
-/

namespace A285926.P4668099851572124308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A046092 n).toNat + A010052 (A000037 (n + 1)).toNat

end

end A285926.P4668099851572124308

/-! ## A285926.P1042560767660516612

`A001222(A023272(n+1))*A285824(A046092(n))`
-/

namespace A285926.P1042560767660516612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A023272 (n + 1)).toNat * A285824 (A046092 n).toNat

end

end A285926.P1042560767660516612

/-!
# A285927: Expansion of (Product_{k>0} (1 - x^(3*k)) / (1 - x^k))^3 in powers of x.

The programs for A285927, there is no canonical definition to state claims against.
-/

/-! ## A285927.P5859725811954331975

`abs(A199659(3*n+1)/3)`
-/

namespace A285927.P5859725811954331975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A199659 (3 * n + 1) : ℚ) / 3|

end

end A285927.P5859725811954331975

/-! ## A285927.P5526353134233987163

`record[char[2]-A199659(n+1)/3]`
-/

namespace A285927.P5526353134233987163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) - (A199659 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285927.P5526353134233987163

/-! ## A285927.P7342229443505505363

`A199659(3*n+1)/(A035263(4*n+2)-3)`
-/

namespace A285927.P7342229443505505363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199659 (3 * n + 1) : ℚ) / (A035263 (4 * n + 2) - 3 : ℚ)

end

end A285927.P7342229443505505363

/-! ## A285927.P11206727533457154506

`A199659(3*n+1)/3*A008683(A056206(n))`
-/

namespace A285927.P11206727533457154506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199659 (3 * n + 1) : ℚ) / 3 * (A008683 (A056206 n).toNat : ℚ)

end

end A285927.P11206727533457154506

/-! ## A285927.P14024769693540536178

`record[A199659(n+1)/3*A008683(A056206(n))]`
-/

namespace A285927.P14024769693540536178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199659 (n + 1) : ℚ) / 3 * (A008683 (A056206 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285927.P14024769693540536178

/-!
# A285928: Expansion of (Product_{k>0} (1 - x^(5*k)) / (1 - x^k))^5 in powers of x.

The programs for A285928, there is no canonical definition to state claims against.
-/

/-! ## A285928.P8243169455534943164

`A035959(5*n+4)/5`
-/

namespace A285928.P8243169455534943164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035959 (5 * n + 4) : ℚ) / 5

end

end A285928.P8243169455534943164

/-! ## A285928.P6427940948627551513

`A160506(n)-A292370(A056308(n))`
-/

namespace A285928.P6427940948627551513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160506 n - A292370 (A056308 n).toNat

end

end A285928.P6427940948627551513

/-!
# A285929: Numbers m such that 2^m + (-1)^m is prime.

The programs for A285929, there is no canonical definition to state claims against.
-/

/-! ## A285929.P31452085274396477

`A174269(n+1)+char[1]`
-/

namespace A285929.P31452085274396477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174269 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285929.P31452085274396477

/-! ## A285929.P11002983201975526818

`A178333(n)+A174269(n+1)`
-/

namespace A285929.P11002983201975526818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A174269 (n + 1)

end

end A285929.P11002983201975526818

/-! ## A285929.P3669107279423116327

`A326168(n)+A174269(n+1)`
-/

namespace A285929.P3669107279423116327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326168 n + A174269 (n + 1)

end

end A285929.P3669107279423116327

/-! ## A285929.P15268746360047489366

`A141044(n)*A174269(n+1)`
-/

namespace A285929.P15268746360047489366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A174269 (n + 1)

end

end A285929.P15268746360047489366

/-! ## A285929.P14140856307945852742

`A174269(n+1)*A373565(n)`
-/

namespace A285929.P14140856307945852742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174269 (n + 1) * A373565 n

end

end A285929.P14140856307945852742

/-! ## A285929.P3501579499891099981

`A174269(n+1)+1-A060576(n)`
-/

namespace A285929.P3501579499891099981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174269 (n + 1) + 1 - A060576 n

end

end A285929.P3501579499891099981

/-! ## A285929.P14662704748719847647

`(A063524(n)+1)*A174269(n+1)`
-/

namespace A285929.P14662704748719847647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A174269 (n + 1)

end

end A285929.P14662704748719847647

/-! ## A285929.P9108759419184225496

`(1-A159075(n))*A174269(n+1)`
-/

namespace A285929.P9108759419184225496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A159075 n) * A174269 (n + 1)

end

end A285929.P9108759419184225496

/-! ## A285929.P3397223389495568873

`A254667(n)+A174269(n+1)-n`
-/

namespace A285929.P3397223389495568873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + (A174269 (n + 1) - (n : ℤ))

end

end A285929.P3397223389495568873

/-! ## A285929.P16293105311238786019

`(A084928(n+1)+1)*A174269(n+1)`
-/

namespace A285929.P16293105311238786019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084928 (n + 1) + 1) * A174269 (n + 1)

end

end A285929.P16293105311238786019

/-!
# A285930: Run lengths of 0's in A282317, the lexicographically first cubefree sequence in {0,1} .

The programs for A285930, there is no canonical definition to state claims against.
-/

/-! ## A285930.P5065022455314854813

`A084066(2*n+1)%A143490(A273365(2*(n+2)))`
-/

namespace A285930.P5065022455314854813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084066 (2 * n + 1)) (A143490 (A273365 (2 * (n + 2))).toNat)

end

end A285930.P5065022455314854813

/-! ## A285930.P13888576516743263645

`A000122(A347085(n+3)^A289814(n))`
-/

namespace A285930.P13888576516743263645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway ((A347085 (n + 3) : ℚ) ^ (A289814 n : ℤ))).toNat

end

end A285930.P13888576516743263645

/-! ## A285930.P13359828897540563233

`A131714(2*(n+1))-A348264(A000045(n+4))`
-/

namespace A285930.P13359828897540563233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 (2 * (n + 1)) - A348264 (A000045 (n + 4)).toNat

end

end A285930.P13359828897540563233

/-! ## A285930.P10624873534938277012

`A316828(A041033(n))`
-/

namespace A285930.P10624873534938277012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A041033 n).toNat

end

end A285930.P10624873534938277012

/-! ## A285930.P12086693786856803661

`A053796(A107401(n+1))`
-/

namespace A285930.P12086693786856803661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053796 (A107401 (n + 1)).toNat

end

end A285930.P12086693786856803661

/-!
# A285931: Number of primes q < p such that q^(p-1) == 1 (modulo p^2), where p = prime(n).

The programs for A285931, there is no canonical definition to state claims against.
-/

/-! ## A285931.P11596690013842806989

`and(A001221(A188481(n)), A355655(n+1))`
-/

namespace A285931.P11596690013842806989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A188481 n).toNat) (A355655 (n + 1))

end

end A285931.P11596690013842806989

/-! ## A285931.P3533724087742361127

`A094912(or(A100878(n), A261836(n)))`
-/

namespace A285931.P3533724087742361127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094912 (Int.lor (A100878 n) (A261836 n)).toNat

end

end A285931.P3533724087742361127

/-! ## A285931.P6436820716768904530

`A290542(p?[round(8*n/7)]²)%2`
-/

namespace A285931.P6436820716768904530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290542 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat) 2

end

end A285931.P6436820716768904530

/-! ## A285931.P15037020610902705039

`A290542(A001248(n+1))%2`
-/

namespace A285931.P15037020610902705039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290542 (A001248 (n + 1)).toNat) 2

end

end A285931.P15037020610902705039

/-! ## A285931.P16301541187429574333

`and(A152092(n+1), A355655(n+1))`
-/

namespace A285931.P16301541187429574333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152092 (n + 1)) (A355655 (n + 1))

end

end A285931.P16301541187429574333

/-!
# A285933: a(n) = smallest k such that (6*k-3)*2^n-1 and (6*k-3)*2^n+1 are twin primes.

The programs for A285933, there is no canonical definition to state claims against.
-/

/-! ## A285933.P7374984620143392648

`A000217(A182030(n+1))/A182030(n+1)`
-/

namespace A285933.P7374984620143392648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A182030 (n + 1)).toNat : ℚ) / (A182030 (n + 1) : ℚ)

end

end A285933.P7374984620143392648

/-! ## A285933.P8029032265989103680

`A325641(A182030(n+1)+1)`
-/

namespace A285933.P8029032265989103680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A182030 (n + 1) + 1).toNat

end

end A285933.P8029032265989103680

/-! ## A285933.P15686471806504906107

`A000463(A182030(n+1))`
-/

namespace A285933.P15686471806504906107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A182030 (n + 1)).toNat

end

end A285933.P15686471806504906107

/-! ## A285933.P1412846540637434216

`A004525(A182030(n+1)+1)`
-/

namespace A285933.P1412846540637434216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A182030 (n + 1) + 1).toNat

end

end A285933.P1412846540637434216

/-! ## A285933.P16712262004124778246

`A004526(A182030(n+1)+1)`
-/

namespace A285933.P16712262004124778246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A182030 (n + 1) + 1).toNat

end

end A285933.P16712262004124778246

/-! ## A285933.P18225098003356516065

`A032742(A182030(n+1)+1)`
-/

namespace A285933.P18225098003356516065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A182030 (n + 1) + 1).toNat

end

end A285933.P18225098003356516065

/-! ## A285933.P11300634902613658517

`A026806(A076806(n+1))`
-/

namespace A285933.P11300634902613658517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A076806 (n + 1)).toNat

end

end A285933.P11300634902613658517

/-!
# A285934: Number of connected induced (non-null) subgraphs of the perfect binary tree of height n.

The programs for A285934, there is no canonical definition to state claims against.
-/

/-! ## A285934.P10944220065511203395

`A286304(∑[2^n])`
-/

namespace A285934.P10944220065511203395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285934.P10944220065511203395

/-!
# A285935: Square array a(n, m) read by antidiagonals whose g.f. is 1 / ((1-x)^2 * (1-y)^2 - x*y).

The programs for A285935, there is no canonical definition to state claims against.
-/

/-! ## A285935.P12130800291782981688

`A079487(eq[0, A051159(n)])`
-/

namespace A285935.P12130800291782981688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285935.P12130800291782981688

/-! ## A285935.P7313615734017043363

`A079487(eq[0, A051160(n)])`
-/

namespace A285935.P7313615734017043363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285935.P7313615734017043363

/-! ## A285935.P9867259526975126723

`A079487(lt[A051159(n), 1])`
-/

namespace A285935.P9867259526975126723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A285935.P9867259526975126723

/-! ## A285935.P426681071684368717

`A079487(A185871(n+1)-1)`
-/

namespace A285935.P426681071684368717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A185871 (n + 1) - 1).toNat

end

end A285935.P426681071684368717

/-! ## A285935.P16140510899175685551

`A079487(A140978(n+1)+2*n)`
-/

namespace A285935.P16140510899175685551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A140978 (n + 1) + (2 * n : ℤ)).toNat

end

end A285935.P16140510899175685551

/-! ## A285935.P13077723783341570621

`A079487(A140978(n+1)+n+n)`
-/

namespace A285935.P13077723783341570621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A140978 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A285935.P13077723783341570621

/-! ## A285935.P8937246689842114004

`A079487(eq[0, A155997(n)])`
-/

namespace A285935.P8937246689842114004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285935.P8937246689842114004

/-! ## A285935.P12414111197393789010

`A079487(eq[0, A187596(n)])`
-/

namespace A285935.P12414111197393789010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285935.P12414111197393789010

/-!
# A285936: Number of rotations of the digits in n produced by n * x/y where x != y.

The programs for A285936, there is no canonical definition to state claims against.
-/

/-! ## A285936.P8836397663176118665

`A268643(A189545(A205377(n+1)+A060501(n)))`
-/

namespace A285936.P8836397663176118665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A189545 (A205377 (n + 1) + A060501 n).toNat).toNat

end

end A285936.P8836397663176118665

/-! ## A285936.P17379200549677306726

`A085405(A167130(n+1)+A038713(n+1))`
-/

namespace A285936.P17379200549677306726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A167130 (n + 1) + A038713 (n + 1)).toNat

end

end A285936.P17379200549677306726

/-! ## A285936.P16804774486571271019

`A219463(gcd(A052550(n), A335891(n+1)))`
-/

namespace A285936.P16804774486571271019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 (Int.gcd (A052550 n) (A335891 (n + 1)))

end

end A285936.P16804774486571271019

/-! ## A285936.P3773427113541147026

`A209229(A301471(4*n+2)%A330240(4*n+1))`
-/

namespace A285936.P3773427113541147026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (Int.tmod (A301471 (4 * n + 2)) (A330240 (4 * n + 1))).toNat

end

end A285936.P3773427113541147026

/-! ## A285936.P10527010568630077108

`A284932(A185209(n+1)+A105998(n+1))`
-/

namespace A285936.P10527010568630077108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (A185209 (n + 1) + A105998 (n + 1)).toNat

end

end A285936.P10527010568630077108

/-!
# A285941: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A285941, there is no canonical definition to state claims against.
-/

/-! ## A285941.P11282427136888461074

`A007088(A285943(n))`
-/

namespace A285941.P11282427136888461074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285943 n).toNat

end

end A285941.P11282427136888461074

/-! ## A285941.P15639377223729468390

`A285942(n)%A097256(A285943(n))`
-/

namespace A285941.P15639377223729468390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285942 n) (A097256 (A285943 n).toNat)

end

end A285941.P15639377223729468390

/-! ## A285941.P8912541998929661173

`A185544(2*A285943(n))`
-/

namespace A285941.P8912541998929661173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285943 n).toNat

end

end A285941.P8912541998929661173

/-! ## A285941.P311239956497019077

`A185544(A285943(n)+A285943(n))`
-/

namespace A285941.P311239956497019077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285943 n + A285943 n).toNat

end

end A285941.P311239956497019077

/-!
# A285942: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A285942, there is no canonical definition to state claims against.
-/

/-! ## A285942.P4796804955834397936

`lcm(A285941(n), A286508(n))`
-/

namespace A285942.P4796804955834397936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285941 n) (A286508 n)

end

end A285942.P4796804955834397936

/-! ## A285942.P17343101339718934483

`A007088(A285944(n))`
-/

namespace A285942.P17343101339718934483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285944 n).toNat

end

end A285942.P17343101339718934483

/-! ## A285942.P2217309081426735103

`A007088(lcm(A060546(n), A285943(n)))`
-/

namespace A285942.P2217309081426735103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A060546 n) (A285943 n))

end

end A285942.P2217309081426735103

/-! ## A285942.P13717774563390966616

`A185544(2*A285944(n))`
-/

namespace A285942.P13717774563390966616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285944 n).toNat

end

end A285942.P13717774563390966616

/-! ## A285942.P15511231559461424157

`A185544(A285944(n)+A285944(n))`
-/

namespace A285942.P15511231559461424157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285944 n + A285944 n).toNat

end

end A285942.P15511231559461424157

/-!
# A285943: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A285943, there is no canonical definition to state claims against.
-/

/-! ## A285943.P15368428031301390534

`xor(A004524(A288807(n)), A288807(n))`
-/

namespace A285943.P15368428031301390534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004524 (A288807 n).toNat) (A288807 n)

end

end A285943.P15368428031301390534

/-!
# A285944: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A285944, there is no canonical definition to state claims against.
-/

/-! ## A285944.P10422859408664883062

`lcm(A060546(n), A285943(n))`
-/

namespace A285944.P10422859408664883062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060546 n) (A285943 n)

end

end A285944.P10422859408664883062

/-! ## A285944.P13227345800993350357

`gcd(Δ[A285480(n)], A285485(2*(n+1)))`
-/

namespace A285944.P13227345800993350357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A285485 (2 * (n + 1)))

end

end A285944.P13227345800993350357

/-! ## A285944.P10609034650151545350

`A019554(lcm(A000079(n), A152768(n+1)))`
-/

namespace A285944.P10609034650151545350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Int.lcm (A000079 n) (A152768 (n + 1)))

end

end A285944.P10609034650151545350

/-! ## A285944.P15404672233521903336

`gcd(A122746(A097038(n)), A233411(n))`
-/

namespace A285944.P15404672233521903336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122746 (A097038 n).toNat) (A233411 n)

end

end A285944.P15404672233521903336

/-! ## A285944.P6985502905053556320

`A285480(n)+A077957(A032555(n+1))`
-/

namespace A285944.P6985502905053556320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285480 n + A077957 (A032555 (n + 1)).toNat

end

end A285944.P6985502905053556320

/-!
# A285947: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 123", based on the 5-celled von Neumann neighborhood.

The programs for A285947, there is no canonical definition to state claims against.
-/

/-! ## A285947.P535775010505277048

`lcm(2, A285948(n)%A002149(n²))/2`
-/

namespace A285947.P535775010505277048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.tmod (A285948 n) (A002149 (n ^ 2))) : ℚ) / 2

end

end A285947.P535775010505277048

/-! ## A285947.P5064043132524766991

`A318516(A285844(n))`
-/

namespace A285947.P5064043132524766991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A285844 n).toNat

end

end A285947.P5064043132524766991

/-! ## A285947.P16619575758629933675

`A318516(A285948(n))`
-/

namespace A285947.P16619575758629933675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A285948 n).toNat

end

end A285947.P16619575758629933675

/-! ## A285947.P13597998817489929049

`A285844(n)/A115362(A092808(n))`
-/

namespace A285947.P13597998817489929049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285844 n : ℚ) / (A115362 (A092808 n).toNat : ℚ)

end

end A285947.P13597998817489929049

/-! ## A285947.P4880560878335186902

`A385816(A281421(n))`
-/

namespace A285947.P4880560878335186902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A281421 n).toNat

end

end A285947.P4880560878335186902

/-!
# A285949: {0->01, 1->0}-transform of the Thue-Morse word A010060.

The programs for A285949, the canonical program `A285949.P15970173890661859112` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285949 has offset 1).

The definition of A285949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285949.P17146043479123370618

`comp[2*comp[xor(n, 2*n)]+1]%2`
-/

namespace A285949.P17146043479123370618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A285949.P17146043479123370618

namespace A285949

/-- `comp[2*comp[xor(n, 2*n)]+1]%2` -/
def P17146043479123370618.Spec : Prop :=
  ∀ n, (P17146043479123370618.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P11571413224730867445

`and(1, comp[2*comp[xor(n, 2*n)]+1])`
-/

namespace A285949.P11571413224730867445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A285949.P11571413224730867445

namespace A285949

/-- `and(1, comp[2*comp[xor(n, 2*n)]+1])` -/
def P11571413224730867445.Spec : Prop :=
  ∀ n, (P11571413224730867445.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P4449544255052681194

`char[comp[xor(n, 2*n+1)]+1+n]`
-/

namespace A285949.P4449544255052681194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285949.P4449544255052681194

namespace A285949

/-- `char[comp[xor(n, 2*n+1)]+1+n]` -/
def P4449544255052681194.Spec : Prop :=
  ∀ n, (P4449544255052681194.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P11780575428518574203

`char[A026430(Δ[n²])]`
-/

namespace A285949.P11780575428518574203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285949.P11780575428518574203

namespace A285949

/-- `char[A026430(Δ[n²])]` -/
def P11780575428518574203.Spec : Prop :=
  ∀ n, (P11780575428518574203.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P5538276425667738059

`char[record[A102393(n)]+n]`
-/

namespace A285949.P5538276425667738059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102393 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285949.P5538276425667738059

namespace A285949

/-- `char[record[A102393(n)]+n]` -/
def P5538276425667738059.Spec : Prop :=
  ∀ n, (P5538276425667738059.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P5036837370813749328

`char[A286727(2*n+1)]`
-/

namespace A285949.P5036837370813749328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286727 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285949.P5036837370813749328

namespace A285949

/-- `char[A286727(2*n+1)]` -/
def P5036837370813749328.Spec : Prop :=
  ∀ n, (P5036837370813749328.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P4410638450871431375

`char[A026147(n+1)+n]`
-/

namespace A285949.P4410638450871431375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285949.P4410638450871431375

namespace A285949

/-- `char[A026147(n+1)+n]` -/
def P4410638450871431375.Spec : Prop :=
  ∀ n, (P4410638450871431375.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P18032991891454268898

`char[A285954(2*(n+1))-1]`
-/

namespace A285949.P18032991891454268898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285949.P18032991891454268898

namespace A285949

/-- `char[A285954(2*(n+1))-1]` -/
def P18032991891454268898.Spec : Prop :=
  ∀ n, (P18032991891454268898.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P13066133142056708121

`char[A360392(2*n+1)-2]`
-/

namespace A285949.P13066133142056708121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (2 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285949.P13066133142056708121

namespace A285949

/-- `char[A360392(2*n+1)-2]` -/
def P13066133142056708121.Spec : Prop :=
  ∀ n, (P13066133142056708121.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P7475743579608509346

`char[A001969(n+1)+1+n]`
-/

namespace A285949.P7475743579608509346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285949.P7475743579608509346

namespace A285949

/-- `char[A001969(n+1)+1+n]` -/
def P7475743579608509346.Spec : Prop :=
  ∀ n, (P7475743579608509346.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P13715248003313394743

`1-(A286063(n)+a(n-1))` with `a(0)=0`
-/

namespace A285949.P13715248003313394743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (A286063 n + a (n - 1))

end

end A285949.P13715248003313394743

namespace A285949

/-- `1-(A286063(n)+a(n-1))` -/
def P13715248003313394743.Spec : Prop :=
  ∀ n, P13715248003313394743.a n = A285949 (n + 1)

end A285949

/-! ## A285949.P828992163317250684

`char[3*n+2-char[A048724(n)]]`
-/

namespace A285949.P828992163317250684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285949.P828992163317250684

namespace A285949

/-- `char[3*n+2-char[A048724(n)]]` -/
def P828992163317250684.Spec : Prop :=
  ∀ n, (P828992163317250684.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P8254106153886300826

`comp[xor(A016813(n)+2, 2*n)]%2`
-/

namespace A285949.P8254106153886300826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016813 n + 2) (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A285949.P8254106153886300826

namespace A285949

/-- `comp[xor(A016813(n)+2, 2*n)]%2` -/
def P8254106153886300826.Spec : Prop :=
  ∀ n, (P8254106153886300826.a n : ℤ) = A285949 (n + 1)

end A285949

/-! ## A285949.P15970173890661859112

`A082446(A091684(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285949

/-- `A082446(A091684(n))` -/
def P15970173890661859112.Spec : Prop :=
  ∀ n, P15970173890661859112.a n = A285949 (n + 1)

theorem P15970173890661859112.correct : P15970173890661859112.Spec := by
  intro n
  simp only [A285949, Nat.add_sub_cancel]

end A285949

/-! ## A285949.P6827808105477788503

`A228495(A006369(n))`
-/

namespace A285949.P6827808105477788503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A006369 n).toNat

end

end A285949.P6827808105477788503

namespace A285949

/-- `A228495(A006369(n))` -/
def P6827808105477788503.Spec : Prop :=
  ∀ n, P6827808105477788503.a n = A285949 (n + 1)

end A285949

/-! ## A285949.P6909645291322409214

`A010060(A254614(n+1))`
-/

namespace A285949.P6909645291322409214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A254614 (n + 1)).toNat

end

end A285949.P6909645291322409214

namespace A285949

/-- `A010060(A254614(n+1))` -/
def P6909645291322409214.Spec : Prop :=
  ∀ n, P6909645291322409214.a n = A285949 (n + 1)

end A285949

/-! ## A285949.P16503745637844356272

`A228495(A042965(n+1))`
-/

namespace A285949.P16503745637844356272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A042965 (n + 1)).toNat

end

end A285949.P16503745637844356272

namespace A285949

/-- `A228495(A042965(n+1))` -/
def P16503745637844356272.Spec : Prop :=
  ∀ n, P16503745637844356272.a n = A285949 (n + 1)

end A285949

/-! ## A285949.P8501765876554944775

`A228495(A047472(n+1))`
-/

namespace A285949.P8501765876554944775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A047472 (n + 1)).toNat

end

end A285949.P8501765876554944775

namespace A285949

/-- `A228495(A047472(n+1))` -/
def P8501765876554944775.Spec : Prop :=
  ∀ n, P8501765876554944775.a n = A285949 (n + 1)

end A285949

/-! ## A285949.P5156555995914382799

`A228495(A047616(n+1))`
-/

namespace A285949.P5156555995914382799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A047616 (n + 1)).toNat

end

end A285949.P5156555995914382799

namespace A285949

/-- `A228495(A047616(n+1))` -/
def P5156555995914382799.Spec : Prop :=
  ∀ n, P5156555995914382799.a n = A285949 (n + 1)

end A285949

/-! ## A285949.P5712430373728813762

`A254379(A047396(n+1))`
-/

namespace A285949.P5712430373728813762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A047396 (n + 1)).toNat

end

end A285949.P5712430373728813762

namespace A285949

/-- `A254379(A047396(n+1))` -/
def P5712430373728813762.Spec : Prop :=
  ∀ n, P5712430373728813762.a n = A285949 (n + 1)

end A285949

/-!
# A285950: Positions of 0's in A285949; complement of A285951.

The programs for A285950, the canonical program `A285950.P7772063319653377245` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285950 has offset 1).

The definition of A285950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285950.P15244597775557608094

`∑[char[xor(n, 2*n)+1]+1]`
-/

namespace A285950.P15244597775557608094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285950.P15244597775557608094

namespace A285950

/-- `∑[char[xor(n, 2*n)+1]+1]` -/
def P15244597775557608094.Spec : Prop :=
  ∀ n, (P15244597775557608094.a n : ℤ) = A285950 (n + 1)

end A285950

/-! ## A285950.P15069227821250860895

`floor((comp[xor(n, 2*n+1)]+2+n)/2)`
-/

namespace A285950.P15069227821250860895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n : ℚ) / 2⌋

end

end A285950.P15069227821250860895

namespace A285950

/-- `floor((comp[xor(n, 2*n+1)]+2+n)/2)` -/
def P15069227821250860895.Spec : Prop :=
  ∀ n, P15069227821250860895.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P7772063319653377245

`∑[A131136(n)%3]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285950

/-- `∑[A131136(n)%3]` -/
def P7772063319653377245.Spec : Prop :=
  ∀ n, P7772063319653377245.a n = A285950 (n + 1)

theorem P7772063319653377245.correct : P7772063319653377245.Spec := by
  intro n
  simp only [A285950, Nat.add_sub_cancel]

end A285950

/-! ## A285950.P4144085225868650987

`floor(A285951(n+1)/2)`
-/

namespace A285950.P4144085225868650987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285951 (n + 1) : ℚ) / 2⌋

end

end A285950.P4144085225868650987

namespace A285950

/-- `floor(A285951(n+1)/2)` -/
def P4144085225868650987.Spec : Prop :=
  ∀ n, P4144085225868650987.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P17545845836055675104

`3*n+1-A026430(n)`
-/

namespace A285950.P17545845836055675104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A026430 n

end

end A285950.P17545845836055675104

namespace A285950

/-- `3*n+1-A026430(n)` -/
def P17545845836055675104.Spec : Prop :=
  ∀ n, P17545845836055675104.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P18332393356384259682

`comp[comp[A181155(n+1)]+n]`
-/

namespace A285950.P18332393356384259682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A285950.P18332393356384259682

namespace A285950

/-- `comp[comp[A181155(n+1)]+n]` -/
def P18332393356384259682.Spec : Prop :=
  ∀ n, (P18332393356384259682.a n : ℤ) = A285950 (n + 1)

end A285950

/-! ## A285950.P1858876596809188653

`comp[A026430(2*n+1)]+1`
-/

namespace A285950.P1858876596809188653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285950.P1858876596809188653

namespace A285950

/-- `comp[A026430(2*n+1)]+1` -/
def P1858876596809188653.Spec : Prop :=
  ∀ n, (P1858876596809188653.a n : ℤ) = A285950 (n + 1)

end A285950

/-! ## A285950.P3083539155392793956

`ceil((A026147(n+1)+n)/2)`
-/

namespace A285950.P3083539155392793956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026147 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A285950.P3083539155392793956

namespace A285950

/-- `ceil((A026147(n+1)+n)/2)` -/
def P3083539155392793956.Spec : Prop :=
  ∀ n, P3083539155392793956.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P18182102569612711623

`floor((3*A001969(n+1)+4)/4)`
-/

namespace A285950.P18182102569612711623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A001969 (n + 1) + 4 : ℚ) / 4⌋

end

end A285950.P18182102569612711623

namespace A285950

/-- `floor((3*A001969(n+1)+4)/4)` -/
def P18182102569612711623.Spec : Prop :=
  ∀ n, P18182102569612711623.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P2364110978849738132

`comp[A010060(n)+3*n+1]+1`
-/

namespace A285950.P2364110978849738132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (3 * n : ℤ) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285950.P2364110978849738132

namespace A285950

/-- `comp[A010060(n)+3*n+1]+1` -/
def P2364110978849738132.Spec : Prop :=
  ∀ n, (P2364110978849738132.a n : ℤ) = A285950 (n + 1)

end A285950

/-! ## A285950.P3501369216844340007

`A228495(n)+A001651(n+1)`
-/

namespace A285950.P3501369216844340007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n + A001651 (n + 1)

end

end A285950.P3501369216844340007

namespace A285950

/-- `A228495(n)+A001651(n+1)` -/
def P3501369216844340007.Spec : Prop :=
  ∀ n, P3501369216844340007.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P10907771674309133563

`A159481(n)+A093505(n+1)`
-/

namespace A285950.P10907771674309133563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n + A093505 (n + 1)

end

end A285950.P10907771674309133563

namespace A285950

/-- `A159481(n)+A093505(n+1)` -/
def P10907771674309133563.Spec : Prop :=
  ∀ n, P10907771674309133563.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P1441881524657848277

`A026147(n+1)-A115384(n)`
-/

namespace A285950.P1441881524657848277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1) - A115384 n

end

end A285950.P1441881524657848277

namespace A285950

/-- `A026147(n+1)-A115384(n)` -/
def P1441881524657848277.Spec : Prop :=
  ∀ n, P1441881524657848277.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P2037966236425886133

`A007494(n+1)-A254377(n)`
-/

namespace A285950.P2037966236425886133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1) - A254377 n

end

end A285950.P2037966236425886133

namespace A285950

/-- `A007494(n+1)-A254377(n)` -/
def P2037966236425886133.Spec : Prop :=
  ∀ n, P2037966236425886133.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P12607652471873603137

`A016789(n)-A285954(n+1)`
-/

namespace A285950.P12607652471873603137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A285954 (n + 1)

end

end A285950.P12607652471873603137

namespace A285950

/-- `A016789(n)-A285954(n+1)` -/
def P12607652471873603137.Spec : Prop :=
  ∀ n, P12607652471873603137.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P69793739345474409

`A102214(n)/A285954(n+1)`
-/

namespace A285950.P69793739345474409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102214 n : ℚ) / (A285954 (n + 1) : ℚ)

end

end A285950.P69793739345474409

namespace A285950

/-- `A102214(n)/A285954(n+1)` -/
def P69793739345474409.Spec : Prop :=
  ∀ n, P69793739345474409.a n = (A285950 (n + 1) : ℚ)

end A285950

/-! ## A285950.P14058120906590732680

`xor(A135481(n), A285954(n+1))`
-/

namespace A285950.P14058120906590732680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135481 n) (A285954 (n + 1))

end

end A285950.P14058120906590732680

namespace A285950

/-- `xor(A135481(n), A285954(n+1))` -/
def P14058120906590732680.Spec : Prop :=
  ∀ n, P14058120906590732680.a n = A285950 (n + 1)

end A285950

/-! ## A285950.P9850528294237014453

`∪[A285953(n+1), A016777(n)]`
-/

namespace A285950.P9850528294237014453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285950.P9850528294237014453

namespace A285950

/-- `∪[A285953(n+1), A016777(n)]` -/
def P9850528294237014453.Spec : Prop :=
  ∀ n, (P9850528294237014453.a n : ℤ) = A285950 (n + 1)

end A285950

/-! ## A285950.P6730969862466787850

`∪[A016777(n), A360394(n+1)]`
-/

namespace A285950.P6730969862466787850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285950.P6730969862466787850

namespace A285950

/-- `∪[A016777(n), A360394(n+1)]` -/
def P6730969862466787850.Spec : Prop :=
  ∀ n, (P6730969862466787850.a n : ℤ) = A285950 (n + 1)

end A285950

/-! ## A285950.P2639151814572555234

`A285951(n+1)-(A285954(n+1)+A010060(n))`
-/

namespace A285950.P2639151814572555234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1) - (A285954 (n + 1) + A010060 n)

end

end A285950.P2639151814572555234

namespace A285950

/-- `A285951(n+1)-(A285954(n+1)+A010060(n))` -/
def P2639151814572555234.Spec : Prop :=
  ∀ n, P2639151814572555234.a n = A285950 (n + 1)

end A285950

/-!
# A285951: Positions of 1's in A285949; complement of A285950.

The programs for A285951, the canonical program `A285951.P13285871082940402951` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285951 has offset 1).

The definition of A285951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285951.P15103099478884470836

`comp[xor(n, 2*n+1)]+2+n`
-/

namespace A285951.P15103099478884470836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n

end

end A285951.P15103099478884470836

namespace A285951

/-- `comp[xor(n, 2*n+1)]+2+n` -/
def P15103099478884470836.Spec : Prop :=
  ∀ n, (P15103099478884470836.a n : ℤ) = A285951 (n + 1)

end A285951

/-! ## A285951.P13285871082940402951

`lt[0, -a(and(n, n-1))]+2+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285951

/-- `lt[0, -a(and(n, n-1))]+2+n` -/
def P13285871082940402951.Spec : Prop :=
  ∀ n, (P13285871082940402951.a n : ℤ) = A285951 (n + 1)

theorem P13285871082940402951.correct : P13285871082940402951.Spec := by
  intro n
  simp only [A285951, Nat.add_sub_cancel]

end A285951

/-! ## A285951.P371046032982383129

`eq[1, -a(and(n, n-1))]+n+2` with `a(0)=1`
-/

namespace A285951.P371046032982383129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)

end

end A285951.P371046032982383129

namespace A285951

/-- `eq[1, -a(and(n, n-1))]+n+2` -/
def P371046032982383129.Spec : Prop :=
  ∀ n, (P371046032982383129.a n : ℤ) = A285951 (n + 1)

end A285951

/-! ## A285951.P3161444142655909148

`(2-char[xor(n, 2*n)])!+3*n+1`
-/

namespace A285951.P3161444142655909148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat + (3 * n + 1)

end

end A285951.P3161444142655909148

namespace A285951

/-- `(2-char[xor(n, 2*n)])!+3*n+1` -/
def P3161444142655909148.Spec : Prop :=
  ∀ n, (P3161444142655909148.a n : ℤ) = A285951 (n + 1)

end A285951

/-! ## A285951.P11214588866135595344

`comp[xor(n, floor(n/2))^(n%2)]+2+n`
-/

namespace A285951.P11214588866135595344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A285951.P11214588866135595344

namespace A285951

/-- `comp[xor(n, floor(n/2))^(n%2)]+2+n` -/
def P11214588866135595344.Spec : Prop :=
  ∀ n, (P11214588866135595344.a n : ℤ) = A285951 (n + 1)

end A285951

/-! ## A285951.P13620030737358007747

`A140592(n+1)+n`
-/

namespace A285951.P13620030737358007747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (n + 1) + (n : ℤ)

end

end A285951.P13620030737358007747

namespace A285951

/-- `A140592(n+1)+n` -/
def P13620030737358007747.Spec : Prop :=
  ∀ n, P13620030737358007747.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P10075329850322324658

`A026147(n+1)+1+n`
-/

namespace A285951.P10075329850322324658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1) + 1 + (n : ℤ)

end

end A285951.P10075329850322324658

namespace A285951

/-- `A026147(n+1)+1+n` -/
def P10075329850322324658.Spec : Prop :=
  ∀ n, P10075329850322324658.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P4544372053120382729

`A001969(n+1)+2+n`
-/

namespace A285951.P4544372053120382729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + 2 + (n : ℤ)

end

end A285951.P4544372053120382729

namespace A285951

/-- `A001969(n+1)+2+n` -/
def P4544372053120382729.Spec : Prop :=
  ∀ n, P4544372053120382729.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P15302001068257304451

`A001285(n)+3*n+1`
-/

namespace A285951.P15302001068257304451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + (3 * n + 1 : ℤ)

end

end A285951.P15302001068257304451

namespace A285951

/-- `A001285(n)+3*n+1` -/
def P15302001068257304451.Spec : Prop :=
  ∀ n, P15302001068257304451.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P3629674878313094765

`3*(n+1)-A010059(n)`
-/

namespace A285951.P3629674878313094765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A010059 n

end

end A285951.P3629674878313094765

namespace A285951

/-- `3*(n+1)-A010059(n)` -/
def P3629674878313094765.Spec : Prop :=
  ∀ n, P3629674878313094765.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P2211585732005588041

`A010060(n)+3*n+2`
-/

namespace A285951.P2211585732005588041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (3 * n + 2 : ℤ)

end

end A285951.P2211585732005588041

namespace A285951

/-- `A010060(n)+3*n+2` -/
def P2211585732005588041.Spec : Prop :=
  ∀ n, P2211585732005588041.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P14534497867134368640

`abs(3-∑[A316826(n)+2])`
-/

namespace A285951.P14534497867134368640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A285951.P14534497867134368640

namespace A285951

/-- `abs(3-∑[A316826(n)+2])` -/
def P14534497867134368640.Spec : Prop :=
  ∀ n, P14534497867134368640.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P4350710779843037699

`comp[A000069(n+1)]+2+n`
-/

namespace A285951.P4350710779843037699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A285951.P4350710779843037699

namespace A285951

/-- `comp[A000069(n+1)]+2+n` -/
def P4350710779843037699.Spec : Prop :=
  ∀ n, (P4350710779843037699.a n : ℤ) = A285951 (n + 1)

end A285951

/-! ## A285951.P17008623680163669560

`comp[A268669(n+1)]+2+n`
-/

namespace A285951.P17008623680163669560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A285951.P17008623680163669560

namespace A285951

/-- `comp[A268669(n+1)]+2+n` -/
def P17008623680163669560.Spec : Prop :=
  ∀ n, (P17008623680163669560.a n : ℤ) = A285951 (n + 1)

end A285951

/-! ## A285951.P16715504076911512934

`A093505(n+1)+2*(n+1)`
-/

namespace A285951.P16715504076911512934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093505 (n + 1) + (2 * (n + 1) : ℤ)

end

end A285951.P16715504076911512934

namespace A285951

/-- `A093505(n+1)+2*(n+1)` -/
def P16715504076911512934.Spec : Prop :=
  ∀ n, P16715504076911512934.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P12306283260552436919

`A000120(n)%2+3*n+2`
-/

namespace A285951.P12306283260552436919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2 + (3 * n + 2 : ℤ)

end

end A285951.P12306283260552436919

namespace A285951

/-- `A000120(n)%2+3*n+2` -/
def P12306283260552436919.Spec : Prop :=
  ∀ n, P12306283260552436919.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P3941008714617882286

`A016777(n)+A001285(n)`
-/

namespace A285951.P3941008714617882286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A001285 n

end

end A285951.P3941008714617882286

namespace A285951

/-- `A016777(n)+A001285(n)` -/
def P3941008714617882286.Spec : Prop :=
  ∀ n, P3941008714617882286.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P11183186741924831576

`A016789(n)+A010060(n)`
-/

namespace A285951.P11183186741924831576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + A010060 n

end

end A285951.P11183186741924831576

namespace A285951

/-- `A016789(n)+A010060(n)` -/
def P11183186741924831576.Spec : Prop :=
  ∀ n, P11183186741924831576.a n = A285951 (n + 1)

end A285951

/-! ## A285951.P5134714770703899219

`A016885(n)-A000069(n+1)`
-/

namespace A285951.P5134714770703899219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A000069 (n + 1)

end

end A285951.P5134714770703899219

namespace A285951

/-- `A016885(n)-A000069(n+1)` -/
def P5134714770703899219.Spec : Prop :=
  ∀ n, P5134714770703899219.a n = A285951 (n + 1)

end A285951

/-!
# A285952: {0->1, 1->10}-transform of the Thue-Morse word A010060.

The programs for A285952, the canonical program `A285952.P3731534810684257932` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285952 has offset 1).

The definition of A285952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285952.P6615261549840259192

`char[floor(3*comp[xor(n, 2*n)]/4)]`
-/

namespace A285952.P6615261549840259192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285952.P6615261549840259192

namespace A285952

/-- `char[floor(3*comp[xor(n, 2*n)]/4)]` -/
def P6615261549840259192.Spec : Prop :=
  ∀ n, (P6615261549840259192.a n : ℤ) = A285952 (n + 1)

end A285952

/-! ## A285952.P508983632670478255

`1-char[comp[xor(n, 2*n)]+n+1]`
-/

namespace A285952.P508983632670478255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285952.P508983632670478255

namespace A285952

/-- `1-char[comp[xor(n, 2*n)]+n+1]` -/
def P508983632670478255.Spec : Prop :=
  ∀ n, P508983632670478255.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P1036009389854033547

`char[A026430(n)]`
-/

namespace A285952.P1036009389854033547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285952.P1036009389854033547

namespace A285952

/-- `char[A026430(n)]` -/
def P1036009389854033547.Spec : Prop :=
  ∀ n, (P1036009389854033547.a n : ℤ) = A285952 (n + 1)

end A285952

/-! ## A285952.P15697509368106429916

`char[comp[A356133(n+1)]]`
-/

namespace A285952.P15697509368106429916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285952.P15697509368106429916

namespace A285952

/-- `char[comp[A356133(n+1)]]` -/
def P15697509368106429916.Spec : Prop :=
  ∀ n, (P15697509368106429916.a n : ℤ) = A285952 (n + 1)

end A285952

/-! ## A285952.P1771188760991915787

`log2(gcd(2, A230709(n+1)))`
-/

namespace A285952.P1771188760991915787
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A230709 (n + 1)) : ℝ)

end

end A285952.P1771188760991915787

namespace A285952

/-- `log2(gcd(2, A230709(n+1)))` -/
def P1771188760991915787.Spec : Prop :=
  ∀ n, P1771188760991915787.a n = (A285952 (n + 1) : ℝ)

end A285952

/-! ## A285952.P14562994693483177811

`char[A285954(n+1)-1]`
-/

namespace A285952.P14562994693483177811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285952.P14562994693483177811

namespace A285952

/-- `char[A285954(n+1)-1]` -/
def P14562994693483177811.Spec : Prop :=
  ∀ n, (P14562994693483177811.a n : ℤ) = A285952 (n + 1)

end A285952

/-! ## A285952.P6177897591907188569

`1-char[A181155(n+1)+n]`
-/

namespace A285952.P6177897591907188569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285952.P6177897591907188569

namespace A285952

/-- `1-char[A181155(n+1)+n]` -/
def P6177897591907188569.Spec : Prop :=
  ∀ n, P6177897591907188569.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P3731534810684257932

`record[(n+1)*A254377(n)]%2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A285952

/-- `record[(n+1)*A254377(n)]%2` -/
def P3731534810684257932.Spec : Prop :=
  ∀ n, P3731534810684257932.a n = A285952 (n + 1)

theorem P3731534810684257932.correct : P3731534810684257932.Spec := by
  intro n
  simp only [A285952, Nat.add_sub_cancel]

end A285952

/-! ## A285952.P12170728739504063182

`A254377(A074305(n))`
-/

namespace A285952.P12170728739504063182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A074305 n).toNat

end

end A285952.P12170728739504063182

namespace A285952

/-- `A254377(A074305(n))` -/
def P12170728739504063182.Spec : Prop :=
  ∀ n, P12170728739504063182.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P7341100241051335340

`A254377(A047477(n+1))`
-/

namespace A285952.P7341100241051335340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A047477 (n + 1)).toNat

end

end A285952.P7341100241051335340

namespace A285952

/-- `A254377(A047477(n+1))` -/
def P7341100241051335340.Spec : Prop :=
  ∀ n, P7341100241051335340.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P10994735655470485467

`A254377(A047480(n+1))`
-/

namespace A285952.P10994735655470485467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A047480 (n + 1)).toNat

end

end A285952.P10994735655470485467

namespace A285952

/-- `A254377(A047480(n+1))` -/
def P10994735655470485467.Spec : Prop :=
  ∀ n, P10994735655470485467.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P2415050884556753572

`A254377(A047491(n+1))`
-/

namespace A285952.P2415050884556753572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A047491 (n + 1)).toNat

end

end A285952.P2415050884556753572

namespace A285952

/-- `A254377(A047491(n+1))` -/
def P2415050884556753572.Spec : Prop :=
  ∀ n, P2415050884556753572.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P13694437435965481009

`A254377(A047528(n+1))`
-/

namespace A285952.P13694437435965481009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A047528 (n + 1)).toNat

end

end A285952.P13694437435965481009

namespace A285952

/-- `A254377(A047528(n+1))` -/
def P13694437435965481009.Spec : Prop :=
  ∀ n, P13694437435965481009.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P174136464244264957

`A254377(A047531(n+1))`
-/

namespace A285952.P174136464244264957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A047531 (n + 1)).toNat

end

end A285952.P174136464244264957

namespace A285952

/-- `A254377(A047531(n+1))` -/
def P174136464244264957.Spec : Prop :=
  ∀ n, P174136464244264957.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P14333647660168406131

`A010060(lt[0, A316828(n)])`
-/

namespace A285952.P14333647660168406131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285952.P14333647660168406131

namespace A285952

/-- `A010060(lt[0, A316828(n)])` -/
def P14333647660168406131.Spec : Prop :=
  ∀ n, P14333647660168406131.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P13203887843895450398

`A010060(eq[0, A228495(n+1)])`
-/

namespace A285952.P13203887843895450398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285952.P13203887843895450398

namespace A285952

/-- `A010060(eq[0, A228495(n+1)])` -/
def P13203887843895450398.Spec : Prop :=
  ∀ n, P13203887843895450398.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P5741703045506697245

`A285949(n+1)+A079978(n)`
-/

namespace A285952.P5741703045506697245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285949 (n + 1) + A079978 n

end

end A285952.P5741703045506697245

namespace A285952

/-- `A285949(n+1)+A079978(n)` -/
def P5741703045506697245.Spec : Prop :=
  ∀ n, P5741703045506697245.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P8458592312630406562

`A000007(n)+char[∑[A001285(n)]]`
-/

namespace A285952.P8458592312630406562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285952.P8458592312630406562

namespace A285952

/-- `A000007(n)+char[∑[A001285(n)]]` -/
def P8458592312630406562.Spec : Prop :=
  ∀ n, P8458592312630406562.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P18295609286021594173

`1-A228495(A047616(n+1)+2)`
-/

namespace A285952.P18295609286021594173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A228495 (A047616 (n + 1) + 2).toNat

end

end A285952.P18295609286021594173

namespace A285952

/-- `1-A228495(A047616(n+1)+2)` -/
def P18295609286021594173.Spec : Prop :=
  ∀ n, P18295609286021594173.a n = A285952 (n + 1)

end A285952

/-! ## A285952.P8979664449905395296

`A010060(A230709(n+2)-1)`
-/

namespace A285952.P8979664449905395296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A230709 (n + 2) - 1).toNat

end

end A285952.P8979664449905395296

namespace A285952

/-- `A010060(A230709(n+2)-1)` -/
def P8979664449905395296.Spec : Prop :=
  ∀ n, P8979664449905395296.a n = A285952 (n + 1)

end A285952

/-!
# A285953: Positions of 0 in A285952; complement of A285954.

The programs for A285953, the canonical program `A285953.P5671995514383187580` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285953 has offset 1).

The definition of A285953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285953.P16151983133276194434

`comp[xor(n, 2*n)]+2+n`
-/

namespace A285953.P16151983133276194434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n

end

end A285953.P16151983133276194434

namespace A285953

/-- `comp[xor(n, 2*n)]+2+n` -/
def P16151983133276194434.Spec : Prop :=
  ∀ n, (P16151983133276194434.a n : ℤ) = A285953 (n + 1)

end A285953

/-! ## A285953.P14991242838844249128

`char[xor(n, 2*n)]+3*n+2`
-/

namespace A285953.P14991242838844249128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (3 * n + 2)

end

end A285953.P14991242838844249128

namespace A285953

/-- `char[xor(n, 2*n)]+3*n+2` -/
def P14991242838844249128.Spec : Prop :=
  ∀ n, (P14991242838844249128.a n : ℤ) = A285953 (n + 1)

end A285953

/-! ## A285953.P5671995514383187580

`lt[0, -a(and(n, n-1))]+2+n` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285953

/-- `lt[0, -a(and(n, n-1))]+2+n` -/
def P5671995514383187580.Spec : Prop :=
  ∀ n, (P5671995514383187580.a n : ℤ) = A285953 (n + 1)

theorem P5671995514383187580.correct : P5671995514383187580.Spec := by
  intro n
  simp only [A285953, Nat.add_sub_cancel]

end A285953

/-! ## A285953.P5295490367793346515

`eq[0, 1-a(and(n, n-1))]+n+2` with `a(0)=1`
-/

namespace A285953.P5295490367793346515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)

end

end A285953.P5295490367793346515

namespace A285953

/-- `eq[0, 1-a(and(n, n-1))]+n+2` -/
def P5295490367793346515.Spec : Prop :=
  ∀ n, (P5295490367793346515.a n : ℤ) = A285953 (n + 1)

end A285953

/-! ## A285953.P9508625290880040692

`eq[0, 2-gcd(2, a(floor(n/2))+n)]+n+2` with `a(0)=1`
-/

namespace A285953.P9508625290880040692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  2 - (Int.gcd 2 (f2 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)

end

end A285953.P9508625290880040692

namespace A285953

/-- `eq[0, 2-gcd(2, a(floor(n/2))+n)]+n+2` -/
def P9508625290880040692.Spec : Prop :=
  ∀ n, (P9508625290880040692.a n : ℤ) = A285953 (n + 1)

end A285953

/-! ## A285953.P6791088242230948908

`∑[4-A317189(n)]`
-/

namespace A285953.P6791088242230948908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A317189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285953.P6791088242230948908

namespace A285953

/-- `∑[4-A317189(n)]` -/
def P6791088242230948908.Spec : Prop :=
  ∀ n, P6791088242230948908.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P12152167799282799154

`A356133(n+1)+1`
-/

namespace A285953.P12152167799282799154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1) + 1

end

end A285953.P12152167799282799154

namespace A285953

/-- `A356133(n+1)+1` -/
def P12152167799282799154.Spec : Prop :=
  ∀ n, P12152167799282799154.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P10032677160049191292

`A181155(n+1)+1+n`
-/

namespace A285953.P10032677160049191292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1) + 1 + (n : ℤ)

end

end A285953.P10032677160049191292

namespace A285953

/-- `A181155(n+1)+1+n` -/
def P10032677160049191292.Spec : Prop :=
  ∀ n, P10032677160049191292.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P10156227002685088937

`A000069(n+1)+2+n`
-/

namespace A285953.P10156227002685088937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + 2 + (n : ℤ)

end

end A285953.P10156227002685088937

namespace A285953

/-- `A000069(n+1)+2+n` -/
def P10156227002685088937.Spec : Prop :=
  ∀ n, P10156227002685088937.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P13956690460162086589

`3*(n+1)-A010060(n)`
-/

namespace A285953.P13956690460162086589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A010060 n

end

end A285953.P13956690460162086589

namespace A285953

/-- `3*(n+1)-A010060(n)` -/
def P13956690460162086589.Spec : Prop :=
  ∀ n, P13956690460162086589.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P2218108674559260695

`A354384(n)+a(n-1)` with `a(0)=3`
-/

namespace A285953.P2218108674559260695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A354384 n + a (n - 1)

end

end A285953.P2218108674559260695

namespace A285953

/-- `A354384(n)+a(n-1)` -/
def P2218108674559260695.Spec : Prop :=
  ∀ n, P2218108674559260695.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P17851340329634670150

`record[A268669(n+1)+2]+n`
-/

namespace A285953.P17851340329634670150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A285953.P17851340329634670150

namespace A285953

/-- `record[A268669(n+1)+2]+n` -/
def P17851340329634670150.Spec : Prop :=
  ∀ n, P17851340329634670150.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P4034514196773998414

`A128309(n+1)/2+n+2`
-/

namespace A285953.P4034514196773998414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128309 (n + 1) : ℚ) / 2 + (n + 2 : ℚ)

end

end A285953.P4034514196773998414

namespace A285953

/-- `A128309(n+1)/2+n+2` -/
def P4034514196773998414.Spec : Prop :=
  ∀ n, P4034514196773998414.a n = (A285953 (n + 1) : ℚ)

end A285953

/-! ## A285953.P346889293544070151

`A161560(n+1)+2*n+3`
-/

namespace A285953.P346889293544070151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) + (2 * n + 3 : ℤ)

end

end A285953.P346889293544070151

namespace A285953

/-- `A161560(n+1)+2*n+3` -/
def P346889293544070151.Spec : Prop :=
  ∀ n, P346889293544070151.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P14467281843055680466

`5*(n+1)-A140592(n+1)`
-/

namespace A285953.P14467281843055680466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A140592 (n + 1)

end

end A285953.P14467281843055680466

namespace A285953

/-- `5*(n+1)-A140592(n+1)` -/
def P14467281843055680466.Spec : Prop :=
  ∀ n, P14467281843055680466.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P2867757982516995534

`3*n+3-A000120(n)%2`
-/

namespace A285953.P2867757982516995534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (3 - Int.tmod (A000120 n) 2)

end

end A285953.P2867757982516995534

namespace A285953

/-- `3*n+3-A000120(n)%2` -/
def P2867757982516995534.Spec : Prop :=
  ∀ n, P2867757982516995534.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P12908945152900398964

`a(n-1)+A007413(n)+1` with `a(0)=3`
-/

namespace A285953.P12908945152900398964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A007413 n + 1)

end

end A285953.P12908945152900398964

namespace A285953

/-- `a(n-1)+A007413(n)+1` -/
def P12908945152900398964.Spec : Prop :=
  ∀ n, P12908945152900398964.a n = A285953 (n + 1)

end A285953

/-! ## A285953.P15382518581441584210

`A016789(n)+A010059(n)`
-/

namespace A285953.P15382518581441584210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + A010059 n

end

end A285953.P15382518581441584210

namespace A285953

/-- `A016789(n)+A010059(n)` -/
def P15382518581441584210.Spec : Prop :=
  ∀ n, P15382518581441584210.a n = A285953 (n + 1)

end A285953

/-!
# A285954: Positions of 1 in A285952; complement of A285953.

The programs for A285954, the canonical program `A285954.P14356408792107538698` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285954 has offset 1).

The definition of A285954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285954.P2570140115468001698

`∑[char[xor(n, 2*n+1)+1]+1]`
-/

namespace A285954.P2570140115468001698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285954.P2570140115468001698

namespace A285954

/-- `∑[char[xor(n, 2*n+1)+1]+1]` -/
def P2570140115468001698.Spec : Prop :=
  ∀ n, (P2570140115468001698.a n : ℤ) = A285954 (n + 1)

end A285954

/-! ## A285954.P2995351238856221797

`floor(3*comp[xor(n, 2*n)]/4)+1`
-/

namespace A285954.P2995351238856221797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 4⌋ + 1

end

end A285954.P2995351238856221797

namespace A285954

/-- `floor(3*comp[xor(n, 2*n)]/4)+1` -/
def P2995351238856221797.Spec : Prop :=
  ∀ n, P2995351238856221797.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P7109305127460134310

`comp[comp[xor(n, 2*n)]+1+n]+1`
-/

namespace A285954.P7109305127460134310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A285954.P7109305127460134310

namespace A285954

/-- `comp[comp[xor(n, 2*n)]+1+n]+1` -/
def P7109305127460134310.Spec : Prop :=
  ∀ n, (P7109305127460134310.a n : ℤ) = A285954 (n + 1)

end A285954

/-! ## A285954.P14356408792107538698

`1+A026430(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285954

/-- `1+A026430(n)` -/
def P14356408792107538698.Spec : Prop :=
  ∀ n, P14356408792107538698.a n = A285954 (n + 1)

theorem P14356408792107538698.correct : P14356408792107538698.Spec := by
  intro n
  simp only [A285954, Nat.add_sub_cancel]

end A285954

/-! ## A285954.P12780865126642675864

`floor(A285953(n+1)/2)`
-/

namespace A285954.P12780865126642675864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285953 (n + 1) : ℚ) / 2⌋

end

end A285954.P12780865126642675864

namespace A285954

/-- `floor(A285953(n+1)/2)` -/
def P12780865126642675864.Spec : Prop :=
  ∀ n, P12780865126642675864.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P11851970091111020744

`comp[A356133(n+1)]+1`
-/

namespace A285954.P11851970091111020744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285954.P11851970091111020744

namespace A285954

/-- `comp[A356133(n+1)]+1` -/
def P11851970091111020744.Spec : Prop :=
  ∀ n, (P11851970091111020744.a n : ℤ) = A285954 (n + 1)

end A285954

/-! ## A285954.P13605731998378410526

`∑[char[A181155(n+1)]+1]`
-/

namespace A285954.P13605731998378410526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285954.P13605731998378410526

namespace A285954

/-- `∑[char[A181155(n+1)]+1]` -/
def P13605731998378410526.Spec : Prop :=
  ∀ n, (P13605731998378410526.a n : ℤ) = A285954 (n + 1)

end A285954

/-! ## A285954.P17072081836709168302

`A254377(n)+comp[3*n+1]`
-/

namespace A285954.P17072081836709168302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A285954.P17072081836709168302

namespace A285954

/-- `A254377(n)+comp[3*n+1]` -/
def P17072081836709168302.Spec : Prop :=
  ∀ n, P17072081836709168302.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P17972798965088038684

`A001285(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A285954.P17972798965088038684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001285 (n - 1) + a (n - 1)

end

end A285954.P17972798965088038684

namespace A285954

/-- `A001285(n-1)+a(n-1)` -/
def P17972798965088038684.Spec : Prop :=
  ∀ n, P17972798965088038684.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P14972294264819737656

`∑[A010060(abs(1-n))+1]-1`
-/

namespace A285954.P14972294264819737656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 |1 - (n : ℤ)|.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A285954.P14972294264819737656

namespace A285954

/-- `∑[A010060(abs(1-n))+1]-1` -/
def P14972294264819737656.Spec : Prop :=
  ∀ n, P14972294264819737656.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P9651139485490389890

`a(n-1)+n-A161560(n)` with `a(0)=1`
-/

namespace A285954.P9651139485490389890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - A161560 n)

end

end A285954.P9651139485490389890

namespace A285954

/-- `a(n-1)+n-A161560(n)` -/
def P9651139485490389890.Spec : Prop :=
  ∀ n, P9651139485490389890.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P9446366405283437178

`∑[A000120(abs(1-n))%2]+n`
-/

namespace A285954.P9446366405283437178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 |1 - (n : ℤ)|.toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A285954.P9446366405283437178

namespace A285954

/-- `∑[A000120(abs(1-n))%2]+n` -/
def P9446366405283437178.Spec : Prop :=
  ∀ n, P9446366405283437178.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P10482765459457978657

`comp[3*n+2-A010060(n)]+1`
-/

namespace A285954.P10482765459457978657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - A010060 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285954.P10482765459457978657

namespace A285954

/-- `comp[3*n+2-A010060(n)]+1` -/
def P10482765459457978657.Spec : Prop :=
  ∀ n, (P10482765459457978657.a n : ℤ) = A285954 (n + 1)

end A285954

/-! ## A285954.P11873559135110974499

`∑[char[char[A048724(n)]+2*n+1]+1]`
-/

namespace A285954.P11873559135110974499
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285954.P11873559135110974499

namespace A285954

/-- `∑[char[char[A048724(n)]+2*n+1]+1]` -/
def P11873559135110974499.Spec : Prop :=
  ∀ n, (P11873559135110974499.a n : ℤ) = A285954 (n + 1)

end A285954

/-! ## A285954.P986330605546243231

`∑[A001285(n)]-A010060(n)`
-/

namespace A285954.P986330605546243231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010060 n

end

end A285954.P986330605546243231

namespace A285954

/-- `∑[A001285(n)]-A010060(n)` -/
def P986330605546243231.Spec : Prop :=
  ∀ n, P986330605546243231.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P16242722871195002503

`A007494(n)+1-A228495(n)`
-/

namespace A285954.P16242722871195002503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + (1 - A228495 n)

end

end A285954.P16242722871195002503

namespace A285954

/-- `A007494(n)+1-A228495(n)` -/
def P16242722871195002503.Spec : Prop :=
  ∀ n, P16242722871195002503.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P10831052625044247498

`A000069(n+1)-A245710(n)`
-/

namespace A285954.P10831052625044247498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) - A245710 n

end

end A285954.P10831052625044247498

namespace A285954

/-- `A000069(n+1)-A245710(n)` -/
def P10831052625044247498.Spec : Prop :=
  ∀ n, P10831052625044247498.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P3039023284933148131

`A016789(n)-A285950(n+1)`
-/

namespace A285954.P3039023284933148131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A285950 (n + 1)

end

end A285954.P3039023284933148131

namespace A285954

/-- `A016789(n)-A285950(n+1)` -/
def P3039023284933148131.Spec : Prop :=
  ∀ n, P3039023284933148131.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P5907004895375635421

`A181155(n+1)-A159481(n)`
-/

namespace A285954.P5907004895375635421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1) - A159481 n

end

end A285954.P5907004895375635421

namespace A285954

/-- `A181155(n+1)-A159481(n)` -/
def P5907004895375635421.Spec : Prop :=
  ∀ n, P5907004895375635421.a n = A285954 (n + 1)

end A285954

/-! ## A285954.P11296962476150118993

`A286727(n+1)-A254379(n)`
-/

namespace A285954.P11296962476150118993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286727 (n + 1) - A254379 n

end

end A285954.P11296962476150118993

namespace A285954

/-- `A286727(n+1)-A254379(n)` -/
def P11296962476150118993.Spec : Prop :=
  ∀ n, P11296962476150118993.a n = A285954 (n + 1)

end A285954

/-!
# A285955: Numbers a(n) = T(b(n))*sqrt(T(b(n))+1), where T(b(n)) is the triangular number of b(n)= A000217(b(n)) and b(n)=A006451(n). Also a(n) = y solutions of the Bachet Mordell equation y^2=x^3+K, where x= T(b(n)) = A006454(n) and K = (T(b(n)))^2= A285985(n).

The programs for A285955, there is no canonical definition to state claims against.
-/

/-! ## A285955.P16954289075490898485

`A006452(n+1)*A006454(n)`
-/

namespace A285955.P16954289075490898485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) * A006454 n

end

end A285955.P16954289075490898485

/-! ## A285955.P6612230069626513539

`A006454(n)*A216162(2*(n+1))`
-/

namespace A285955.P6612230069626513539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 n * A216162 (2 * (n + 1))

end

end A285955.P6612230069626513539

/-! ## A285955.P17476299028237836202

`A217975(n+1)/2*A006454(n)`
-/

namespace A285955.P17476299028237836202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217975 (n + 1) : ℚ) / 2 * (A006454 n : ℚ)

end

end A285955.P17476299028237836202

/-! ## A285955.P7510828781863398793

`A006452(n+1)*A217278(2*n+1)`
-/

namespace A285955.P7510828781863398793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) * A217278 (2 * n + 1)

end

end A285955.P7510828781863398793

/-! ## A285955.P3745990433134054070

`(A306561(n+1)-1)*sqrt(A306561(n+1))`
-/

namespace A285955.P3745990433134054070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A306561 (n + 1) - 1 : ℝ) * Real.sqrt (A306561 (n + 1) : ℝ)

end

end A285955.P3745990433134054070

/-! ## A285955.P8517047081085062188

`A216162(2*(n+1))*A217278(2*n+1)`
-/

namespace A285955.P8517047081085062188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * (n + 1)) * A217278 (2 * n + 1)

end

end A285955.P8517047081085062188

/-! ## A285955.P1651576177084742037

`(A216134(n+1)-A006451(n))*A006454(n)`
-/

namespace A285955.P1651576177084742037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216134 (n + 1) - A006451 n) * A006454 n

end

end A285955.P1651576177084742037

/-! ## A285955.P11810572248083820075

`A006452(n+1)*A306561(n+1)-A006452(n+1)`
-/

namespace A285955.P11810572248083820075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) * A306561 (n + 1) - A006452 (n + 1)

end

end A285955.P11810572248083820075

/-!
# A285956: Number of orthogonal rectangles with vertices on an n X n square grid of points but with no vertices on the grid's diagonals.

The programs for A285956, there is no canonical definition to state claims against.
-/

/-! ## A285956.P6334278080287232692

`A111385(n)*A141256(A100381(n))`
-/

namespace A285956.P6334278080287232692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111385 n * A141256 (A100381 n).toNat

end

end A285956.P6334278080287232692

/-! ## A285956.P3195097031650435643

`or(A034827(n), A210451(A000332(n)))`
-/

namespace A285956.P3195097031650435643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034827 n) (A210451 (A000332 n).toNat)

end

end A285956.P3195097031650435643

/-! ## A285956.P2433844427053033362

`lcm(A111385(n), A290107(A104350(n+1)))`
-/

namespace A285956.P2433844427053033362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111385 n) (A290107 (A104350 (n + 1)).toNat)

end

end A285956.P2433844427053033362

/-! ## A285956.P1993645965050258639

`A172366(A308087(n))`
-/

namespace A285956.P1993645965050258639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172366 (A308087 n).toNat

end

end A285956.P1993645965050258639

/-!
# A285957: {01->0}-transform of the Thue-Morse word A010060.

The programs for A285957, the canonical program `A285957.P3290287961644241447` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285957 has offset 1).

The definition of A285957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285957.P8453374033914062643

`char[comp[xor(n+1, floor(n/2))]+1+n]`
-/

namespace A285957.P8453374033914062643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285957.P8453374033914062643

namespace A285957

/-- `char[comp[xor(n+1, floor(n/2))]+1+n]` -/
def P8453374033914062643.Spec : Prop :=
  ∀ n, (P8453374033914062643.a n : ℤ) = A285957 (n + 1)

end A285957

/-! ## A285957.P4394050817269685409

`char[comp[ceil(3*n/2)-and(n, 2*n)]+n]`
-/

namespace A285957.P4394050817269685409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉ - (Nat.land n (2 * n) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285957.P4394050817269685409

namespace A285957

/-- `char[comp[ceil(3*n/2)-and(n, 2*n)]+n]` -/
def P4394050817269685409.Spec : Prop :=
  ∀ n, (P4394050817269685409.a n : ℤ) = A285957 (n + 1)

end A285957

/-! ## A285957.P3355409225826157561

`A286051(n+1)%2`
-/

namespace A285957.P3355409225826157561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286051 (n + 1)) 2

end

end A285957.P3355409225826157561

namespace A285957

/-- `A286051(n+1)%2` -/
def P3355409225826157561.Spec : Prop :=
  ∀ n, P3355409225826157561.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P18307585736728368280

`log2(gcd(2, A091855(n+1)))`
-/

namespace A285957.P18307585736728368280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A091855 (n + 1)) : ℝ)

end

end A285957.P18307585736728368280

namespace A285957

/-- `log2(gcd(2, A091855(n+1)))` -/
def P18307585736728368280.Spec : Prop :=
  ∀ n, P18307585736728368280.a n = (A285957 (n + 1) : ℝ)

end A285957

/-! ## A285957.P5124768505907803228

`char[eq[2, A316826(n)]+n]`
-/

namespace A285957.P5124768505907803228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285957.P5124768505907803228

namespace A285957

/-- `char[eq[2, A316826(n)]+n]` -/
def P5124768505907803228.Spec : Prop :=
  ∀ n, (P5124768505907803228.a n : ℤ) = A285957 (n + 1)

end A285957

/-! ## A285957.P5385720613516881164

`and(1, lt[A254655(n+2), 2])`
-/

namespace A285957.P5385720613516881164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A285957.P5385720613516881164

namespace A285957

/-- `and(1, lt[A254655(n+2), 2])` -/
def P5385720613516881164.Spec : Prop :=
  ∀ n, (P5385720613516881164.a n : ℤ) = A285957 (n + 1)

end A285957

/-! ## A285957.P8586769772182920397

`A286050(n+1)-Δ[n²]`
-/

namespace A285957.P8586769772182920397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286050 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285957.P8586769772182920397

namespace A285957

/-- `A286050(n+1)-Δ[n²]` -/
def P8586769772182920397.Spec : Prop :=
  ∀ n, P8586769772182920397.a n = A285957 (n + 1)

theorem P8586769772182920397.correct : P8586769772182920397.Spec := by
  intro n
  simp only [A285957, Nat.add_sub_cancel, A285957.P8586769772182920397.f1, A285957.P8586769772182920397.a, A285957.P3290287961644241447.f1, A285957.P3290287961644241447.f2, A285957.P3290287961644241447.a, A010060, A010060.P3080921269106500717.a, A127254, A127254.P8491110763917439245.a, A286050, A286050.P16642162876214931589.f1, A286050.P16642162876214931589.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A101671, A101671.P12160402881735965879.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285957

/-! ## A285957.P15223263353706281162

`1-char[A285958(n+1)-1]`
-/

namespace A285957.P15223263353706281162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285957.P15223263353706281162

namespace A285957

/-- `1-char[A285958(n+1)-1]` -/
def P15223263353706281162.Spec : Prop :=
  ∀ n, P15223263353706281162.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P17282360254557810861

`char[A003159(2*n+1)+n]`
-/

namespace A285957.P17282360254557810861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285957.P17282360254557810861

namespace A285957

/-- `char[A003159(2*n+1)+n]` -/
def P17282360254557810861.Spec : Prop :=
  ∀ n, (P17282360254557810861.a n : ℤ) = A285957 (n + 1)

end A285957

/-! ## A285957.P9884598968661042434

`A254377(A091855(n+1))`
-/

namespace A285957.P9884598968661042434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A091855 (n + 1)).toNat

end

end A285957.P9884598968661042434

namespace A285957

/-- `A254377(A091855(n+1))` -/
def P9884598968661042434.Spec : Prop :=
  ∀ n, P9884598968661042434.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P14871606360190078310

`A010060(comp[A091855(n+1)])`
-/

namespace A285957.P14871606360190078310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285957.P14871606360190078310

namespace A285957

/-- `A010060(comp[A091855(n+1)])` -/
def P14871606360190078310.Spec : Prop :=
  ∀ n, P14871606360190078310.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P2862081714946299539

`A254379(eq[1, A254655(n+1)])`
-/

namespace A285957.P2862081714946299539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285957.P2862081714946299539

namespace A285957

/-- `A254379(eq[1, A254655(n+1)])` -/
def P2862081714946299539.Spec : Prop :=
  ∀ n, P2862081714946299539.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P11963270281692886614

`A254379(lt[A254655(n+1), 2])`
-/

namespace A285957.P11963270281692886614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A285957.P11963270281692886614

namespace A285957

/-- `A254379(lt[A254655(n+1), 2])` -/
def P11963270281692886614.Spec : Prop :=
  ∀ n, P11963270281692886614.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P3290287961644241447

`A010060(eq[1, A127254(2*n)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285957

/-- `A010060(eq[1, A127254(2*n)])` -/
def P3290287961644241447.Spec : Prop :=
  ∀ n, P3290287961644241447.a n = A285957 (n + 1)

theorem P3290287961644241447.correct : P3290287961644241447.Spec := by
  intro n
  simp only [A285957, Nat.add_sub_cancel]

end A285957

/-! ## A285957.P16339249363229961068

`A016754(n)%A286050(n+1)`
-/

namespace A285957.P16339249363229961068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 n) (A286050 (n + 1))

end

end A285957.P16339249363229961068

namespace A285957

/-- `A016754(n)%A286050(n+1)` -/
def P16339249363229961068.Spec : Prop :=
  ∀ n, P16339249363229961068.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P4758904235652006526

`A016756(n)%A286050(n+1)`
-/

namespace A285957.P4758904235652006526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 n) (A286050 (n + 1))

end

end A285957.P4758904235652006526

namespace A285957

/-- `A016756(n)%A286050(n+1)` -/
def P4758904235652006526.Spec : Prop :=
  ∀ n, P4758904235652006526.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P3906815521609003074

`A016758(n)%A286050(n+1)`
-/

namespace A285957.P3906815521609003074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016758 n) (A286050 (n + 1))

end

end A285957.P3906815521609003074

namespace A285957

/-- `A016758(n)%A286050(n+1)` -/
def P3906815521609003074.Spec : Prop :=
  ∀ n, P3906815521609003074.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P10284683141806249604

`A016760(n)%A286050(n+1)`
-/

namespace A285957.P10284683141806249604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A286050 (n + 1))

end

end A285957.P10284683141806249604

namespace A285957

/-- `A016760(n)%A286050(n+1)` -/
def P10284683141806249604.Spec : Prop :=
  ∀ n, P10284683141806249604.a n = A285957 (n + 1)

end A285957

/-! ## A285957.P1025933158901013153

`A286050(n+1)%A033465(n)`
-/

namespace A285957.P1025933158901013153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286050 (n + 1)) (A033465 n)

end

end A285957.P1025933158901013153

namespace A285957

/-- `A286050(n+1)%A033465(n)` -/
def P1025933158901013153.Spec : Prop :=
  ∀ n, P1025933158901013153.a n = A285957 (n + 1)

end A285957

/-!
# A285958: Positions of 0 in A285957; complement of A285959.

The programs for A285958, the canonical program `A285958.P10971398913599129129` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285958 has offset 1).

The definition of A285958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285958.P14695275770037438938

`∑[2-char[round(xor(n, 2*n)/2)]]`
-/

namespace A285958.P14695275770037438938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (2 * n) : ℚ) / 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P14695275770037438938

namespace A285958

/-- `∑[2-char[round(xor(n, 2*n)/2)]]` -/
def P14695275770037438938.Spec : Prop :=
  ∀ n, P14695275770037438938.a n = A285958 (n + 1)

end A285958

/-! ## A285958.P1256819553682888140

`∑[2-char[-xor(n, -ceil(n/2))]]`
-/

namespace A285958.P1256819553682888140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-⌈(n : ℚ) / 2⌉)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P1256819553682888140

namespace A285958

/-- `∑[2-char[-xor(n, -ceil(n/2))]]` -/
def P1256819553682888140.Spec : Prop :=
  ∀ n, P1256819553682888140.a n = A285958 (n + 1)

end A285958

/-! ## A285958.P4715392116721840096

`∑[2-char[1-char[xor(n, 2*n)]+n]]`
-/

namespace A285958.P4715392116721840096
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P4715392116721840096

namespace A285958

/-- `∑[2-char[1-char[xor(n, 2*n)]+n]]` -/
def P4715392116721840096.Spec : Prop :=
  ∀ n, P4715392116721840096.a n = A285958 (n + 1)

end A285958

/-! ## A285958.P10893011742135739708

`∑[A317189(n)!]`
-/

namespace A285958.P10893011742135739708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A317189 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P10893011742135739708

namespace A285958

/-- `∑[A317189(n)!]` -/
def P10893011742135739708.Spec : Prop :=
  ∀ n, (P10893011742135739708.a n : ℤ) = A285958 (n + 1)

end A285958

/-! ## A285958.P10971398913599129129

`∑[C(2, A101671(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285958

/-- `∑[C(2, A101671(n))]` -/
def P10971398913599129129.Spec : Prop :=
  ∀ n, (P10971398913599129129.a n : ℤ) = A285958 (n + 1)

theorem P10971398913599129129.correct : P10971398913599129129.Spec := by
  intro n
  simp only [A285958, Nat.add_sub_cancel]

end A285958

/-! ## A285958.P2698558314660531311

`∑[2-A127254(2*n)]`
-/

namespace A285958.P2698558314660531311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A127254 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P2698558314660531311

namespace A285958

/-- `∑[2-A127254(2*n)]` -/
def P2698558314660531311.Spec : Prop :=
  ∀ n, P2698558314660531311.a n = A285958 (n + 1)

end A285958

/-! ## A285958.P15274398534988165081

`∑[A268726(n)%2+1]`
-/

namespace A285958.P15274398534988165081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268726 n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P15274398534988165081

namespace A285958

/-- `∑[A268726(n)%2+1]` -/
def P15274398534988165081.Spec : Prop :=
  ∀ n, P15274398534988165081.a n = A285958 (n + 1)

end A285958

/-! ## A285958.P9292498292731764668

`∑[gcd(2, A232637(n+1))]`
-/

namespace A285958.P9292498292731764668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A232637 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P9292498292731764668

namespace A285958

/-- `∑[gcd(2, A232637(n+1))]` -/
def P9292498292731764668.Spec : Prop :=
  ∀ n, (P9292498292731764668.a n : ℤ) = A285958 (n + 1)

end A285958

/-! ## A285958.P15956583934911344435

`comp[A091855(n+1)+n]+1`
-/

namespace A285958.P15956583934911344435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285958.P15956583934911344435

namespace A285958

/-- `comp[A091855(n+1)+n]+1` -/
def P15956583934911344435.Spec : Prop :=
  ∀ n, (P15956583934911344435.a n : ℤ) = A285958 (n + 1)

end A285958

/-! ## A285958.P15986318903567185365

`3*(n+1)-A285977(n+1)`
-/

namespace A285958.P15986318903567185365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A285977 (n + 1)

end

end A285958.P15986318903567185365

namespace A285958

/-- `3*(n+1)-A285977(n+1)` -/
def P15986318903567185365.Spec : Prop :=
  ∀ n, P15986318903567185365.a n = A285958 (n + 1)

end A285958

/-! ## A285958.P6618686068889887391

`∑[char[A003159(2*n+1)]+1]`
-/

namespace A285958.P6618686068889887391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P6618686068889887391

namespace A285958

/-- `∑[char[A003159(2*n+1)]+1]` -/
def P6618686068889887391.Spec : Prop :=
  ∀ n, (P6618686068889887391.a n : ℤ) = A285958 (n + 1)

end A285958

/-! ## A285958.P15185632738434316533

`comp[comp[A010060(n)+n]+n]+1`
-/

namespace A285958.P15185632738434316533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A285958.P15185632738434316533

namespace A285958

/-- `comp[comp[A010060(n)+n]+n]+1` -/
def P15185632738434316533.Spec : Prop :=
  ∀ n, (P15185632738434316533.a n : ℤ) = A285958 (n + 1)

end A285958

/-! ## A285958.P5194230217827178034

`∑[A316826(n)^(1-char[xor(n, 2*n)])]`
-/

namespace A285958.P5194230217827178034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316826 n : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P5194230217827178034

namespace A285958

/-- `∑[A316826(n)^(1-char[xor(n, 2*n)])]` -/
def P5194230217827178034.Spec : Prop :=
  ∀ n, P5194230217827178034.a n = (A285958 (n + 1) : ℚ)

end A285958

/-! ## A285958.P6937374879718416045

`∑[gcd(A001285(n), A316826(n))]`
-/

namespace A285958.P6937374879718416045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001285 n) (A316826 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P6937374879718416045

namespace A285958

/-- `∑[gcd(A001285(n), A316826(n))]` -/
def P6937374879718416045.Spec : Prop :=
  ∀ n, (P6937374879718416045.a n : ℤ) = A285958 (n + 1)

end A285958

/-! ## A285958.P8656566614457320436

`A285962(n+1)+A010060(n)`
-/

namespace A285958.P8656566614457320436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285962 (n + 1) + A010060 n

end

end A285958.P8656566614457320436

namespace A285958

/-- `A285962(n+1)+A010060(n)` -/
def P8656566614457320436.Spec : Prop :=
  ∀ n, P8656566614457320436.a n = A285958 (n + 1)

end A285958

/-! ## A285958.P261855405244103657

`A285974(n+1)-A010059(n)`
-/

namespace A285958.P261855405244103657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285974 (n + 1) - A010059 n

end

end A285958.P261855405244103657

namespace A285958

/-- `A285974(n+1)-A010059(n)` -/
def P261855405244103657.Spec : Prop :=
  ∀ n, P261855405244103657.a n = A285958 (n + 1)

end A285958

/-! ## A285958.P12651589863863639581

`A285967(n+1)-A123087(n)`
-/

namespace A285958.P12651589863863639581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285967 (n + 1) - A123087 n

end

end A285958.P12651589863863639581

namespace A285958

/-- `A285967(n+1)-A123087(n)` -/
def P12651589863863639581.Spec : Prop :=
  ∀ n, P12651589863863639581.a n = A285958 (n + 1)

theorem P12651589863863639581.correct : P12651589863863639581.Spec := by
  intro n
  simp only [A285958, Nat.add_sub_cancel, A285958.P12651589863863639581.a, A285958.P10971398913599129129.f1, A285958.P10971398913599129129.a, A101671, A101671.P12160402881735965879.a, A123087, A123087.P3931349600074570029.a, A285967, A285967.P213330600347507789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285958

/-! ## A285958.P15745304679676442602

`∑[A316826(n)^(A000120(n)%2)]`
-/

namespace A285958.P15745304679676442602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316826 n : ℚ) ^ (Int.tmod (A000120 n) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P15745304679676442602

namespace A285958

/-- `∑[A316826(n)^(A000120(n)%2)]` -/
def P15745304679676442602.Spec : Prop :=
  ∀ n, P15745304679676442602.a n = (A285958 (n + 1) : ℚ)

end A285958

/-! ## A285958.P4613863851594830387

`A285951(n+1)-A285967(n+1)`
-/

namespace A285958.P4613863851594830387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1) - A285967 (n + 1)

end

end A285958.P4613863851594830387

namespace A285958

/-- `A285951(n+1)-A285967(n+1)` -/
def P4613863851594830387.Spec : Prop :=
  ∀ n, P4613863851594830387.a n = A285958 (n + 1)

end A285958

/-!
# A285959: Positions of 1 in A285957; complement of A285958.

The programs for A285959, the canonical program `A285959.P12122029514880620375` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285959 has offset 1).

The definition of A285959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285959.P12879441058529819255

`A091855(n+1)+1+n`
-/

namespace A285959.P12879441058529819255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1) + 1 + (n : ℤ)

end

end A285959.P12879441058529819255

namespace A285959

/-- `A091855(n+1)+1+n` -/
def P12879441058529819255.Spec : Prop :=
  ∀ n, P12879441058529819255.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P3911628873365178548

`A248057(n+1)/2+n+1`
-/

namespace A285959.P3911628873365178548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248057 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A285959.P3911628873365178548

namespace A285959

/-- `A248057(n+1)/2+n+1` -/
def P3911628873365178548.Spec : Prop :=
  ∀ n, P3911628873365178548.a n = (A285959 (n + 1) : ℚ)

end A285959

/-! ## A285959.P12122029514880620375

`A285961(n+1)-A104248(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285959

/-- `A285961(n+1)-A104248(n+1)` -/
def P12122029514880620375.Spec : Prop :=
  ∀ n, P12122029514880620375.a n = A285959 (n + 1)

theorem P12122029514880620375.correct : P12122029514880620375.Spec := by
  intro n
  simp only [A285959, Nat.add_sub_cancel]

end A285959

/-! ## A285959.P9528906067384636138

`eq[A127254(n), A277822(n)]+1+n`
-/

namespace A285959.P9528906067384636138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 + n

end

end A285959.P9528906067384636138

namespace A285959

/-- `eq[A127254(n), A277822(n)]+1+n` -/
def P9528906067384636138.Spec : Prop :=
  ∀ n, (P9528906067384636138.a n : ℤ) = A285959 (n + 1)

end A285959

/-! ## A285959.P10718114151090657680

`eq[A010060(n), A127254(n)]+1+n`
-/

namespace A285959.P10718114151090657680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 + n

end

end A285959.P10718114151090657680

namespace A285959

/-- `eq[A010060(n), A127254(n)]+1+n` -/
def P10718114151090657680.Spec : Prop :=
  ∀ n, (P10718114151090657680.a n : ℤ) = A285959 (n + 1)

end A285959

/-! ## A285959.P4898464291858054276

`A260480(Δ[n²])-n`
-/

namespace A285959.P4898464291858054276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260480 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A285959.P4898464291858054276

namespace A285959

/-- `A260480(Δ[n²])-n` -/
def P4898464291858054276.Spec : Prop :=
  ∀ n, P4898464291858054276.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P6787624038949791644

`A171946(2*(n+1))+n`
-/

namespace A285959.P6787624038949791644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (2 * (n + 1)) + (n : ℤ)

end

end A285959.P6787624038949791644

namespace A285959

/-- `A171946(2*(n+1))+n` -/
def P6787624038949791644.Spec : Prop :=
  ∀ n, P6787624038949791644.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P10996318385201396176

`A285385(2*(n+1))+n`
-/

namespace A285959.P10996318385201396176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285385 (2 * (n + 1)) + (n : ℤ)

end

end A285959.P10996318385201396176

namespace A285959

/-- `A285385(2*(n+1))+n` -/
def P10996318385201396176.Spec : Prop :=
  ∀ n, P10996318385201396176.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P39253359003752915

`A003159(Δ[n²])+n+1`
-/

namespace A285959.P39253359003752915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A285959.P39253359003752915

namespace A285959

/-- `A003159(Δ[n²])+n+1` -/
def P39253359003752915.Spec : Prop :=
  ∀ n, P39253359003752915.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P8832258949590667849

`A121539(Δ[n²])+n+2`
-/

namespace A285959.P8832258949590667849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 2 : ℤ)

end

end A285959.P8832258949590667849

namespace A285959

/-- `A121539(Δ[n²])+n+2` -/
def P8832258949590667849.Spec : Prop :=
  ∀ n, P8832258949590667849.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P16765342192501478226

`ceil(A003157(2*n+1)/2)`
-/

namespace A285959.P16765342192501478226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003157 (2 * n + 1) : ℚ) / 2⌉

end

end A285959.P16765342192501478226

namespace A285959

/-- `ceil(A003157(2*n+1)/2)` -/
def P16765342192501478226.Spec : Prop :=
  ∀ n, P16765342192501478226.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P4855593992280557498

`A003158(2*n+1)/2+1`
-/

namespace A285959.P4855593992280557498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003158 (2 * n + 1) : ℚ) / 2 + 1

end

end A285959.P4855593992280557498

namespace A285959

/-- `A003158(2*n+1)/2+1` -/
def P4855593992280557498.Spec : Prop :=
  ∀ n, P4855593992280557498.a n = (A285959 (n + 1) : ℚ)

end A285959

/-! ## A285959.P3980750166100143052

`A003159(2*n+1)+1+n`
-/

namespace A285959.P3980750166100143052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * n + 1) + 1 + (n : ℤ)

end

end A285959.P3980750166100143052

namespace A285959

/-- `A003159(2*n+1)+1+n` -/
def P3980750166100143052.Spec : Prop :=
  ∀ n, P3980750166100143052.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P6160175827379404815

`A121539(2*n+1)+2+n`
-/

namespace A285959.P6160175827379404815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (2 * n + 1) + 2 + (n : ℤ)

end

end A285959.P6160175827379404815

namespace A285959

/-- `A121539(2*n+1)+2+n` -/
def P6160175827379404815.Spec : Prop :=
  ∀ n, P6160175827379404815.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P16123913196310708024

`A285971(2*n+1)-2*n`
-/

namespace A285959.P16123913196310708024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285971 (2 * n + 1) - (2 * n : ℤ)

end

end A285959.P16123913196310708024

namespace A285959

/-- `A285971(2*n+1)-2*n` -/
def P16123913196310708024.Spec : Prop :=
  ∀ n, P16123913196310708024.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P13593385180597191238

`A284791(2*(n+1))-Δ[n²]`
-/

namespace A285959.P13593385180597191238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (2 * (n + 1)) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285959.P13593385180597191238

namespace A285959

/-- `A284791(2*(n+1))-Δ[n²]` -/
def P13593385180597191238.Spec : Prop :=
  ∀ n, P13593385180597191238.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P7688463209304787735

`n+1+A036554(2*n+1)/2`
-/

namespace A285959.P7688463209304787735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A036554 (2 * n + 1) : ℚ) / 2

end

end A285959.P7688463209304787735

namespace A285959

/-- `n+1+A036554(2*n+1)/2` -/
def P7688463209304787735.Spec : Prop :=
  ∀ n, P7688463209304787735.a n = (A285959 (n + 1) : ℚ)

end A285959

/-! ## A285959.P18319856983968929482

`A286065(2*n+1)-(2*n+1)`
-/

namespace A285959.P18319856983968929482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A285959.P18319856983968929482

namespace A285959

/-- `A286065(2*n+1)-(2*n+1)` -/
def P18319856983968929482.Spec : Prop :=
  ∀ n, P18319856983968929482.a n = A285959 (n + 1)

end A285959

/-! ## A285959.P10468845869568653616

`A284933(2*(n+1))-(3*n+2)+n`
-/

namespace A285959.P10468845869568653616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (2 * (n + 1)) - (3 * n + 2 : ℤ) + (n : ℤ)

end

end A285959.P10468845869568653616

namespace A285959

/-- `A284933(2*(n+1))-(3*n+2)+n` -/
def P10468845869568653616.Spec : Prop :=
  ∀ n, P10468845869568653616.a n = A285959 (n + 1)

end A285959

/-!
# A285960: {01->1}-transform of the Thue-Morse word A010060.

The programs for A285960, the canonical program `A285960.P9200818931746546545` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285960 has offset 1).

The definition of A285960 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286046, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285960.P9200818931746546545

`A286046(2*n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A285960

/-- `A286046(2*n+1)` -/
def P9200818931746546545.Spec : Prop :=
  ∀ n, P9200818931746546545.a n = A285960 (n + 1)

theorem P9200818931746546545.correct : P9200818931746546545.Spec := by
  intro n
  simp only [A285960, Nat.add_sub_cancel]

end A285960

/-! ## A285960.P18131014593179415511

`A091785(n+1)%2`
-/

namespace A285960.P18131014593179415511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091785 (n + 1)) 2

end

end A285960.P18131014593179415511

namespace A285960

/-- `A091785(n+1)%2` -/
def P18131014593179415511.Spec : Prop :=
  ∀ n, P18131014593179415511.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P12960053959443689622

`A195608(n+1)%2`
-/

namespace A285960.P12960053959443689622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195608 (n + 1)) 2

end

end A285960.P12960053959443689622

namespace A285960

/-- `A195608(n+1)%2` -/
def P12960053959443689622.Spec : Prop :=
  ∀ n, P12960053959443689622.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P8182303010468318577

`A286048(n+1)%2`
-/

namespace A285960.P8182303010468318577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286048 (n + 1)) 2

end

end A285960.P8182303010468318577

namespace A285960

/-- `A286048(n+1)%2` -/
def P8182303010468318577.Spec : Prop :=
  ∀ n, P8182303010468318577.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P136269732679357447

`char[A285962(n+1)-1]`
-/

namespace A285960.P136269732679357447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285962 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285960.P136269732679357447

namespace A285960

/-- `char[A285962(n+1)-1]` -/
def P136269732679357447.Spec : Prop :=
  ∀ n, (P136269732679357447.a n : ℤ) = A285960 (n + 1)

end A285960

/-! ## A285960.P43997297252531044

`char[A285974(n+1)-2]`
-/

namespace A285960.P43997297252531044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285974 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285960.P43997297252531044

namespace A285960

/-- `char[A285974(n+1)-2]` -/
def P43997297252531044.Spec : Prop :=
  ∀ n, (P43997297252531044.a n : ℤ) = A285960 (n + 1)

end A285960

/-! ## A285960.P2527495950941486959

`A286047(n+1)-Δ[n²]`
-/

namespace A285960.P2527495950941486959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286047 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285960.P2527495950941486959

namespace A285960

/-- `A286047(n+1)-Δ[n²]` -/
def P2527495950941486959.Spec : Prop :=
  ∀ n, P2527495950941486959.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P8733707163558057437

`A285972(a(n-1)+a(n-1)+n)` with `a(0)=1`
-/

namespace A285960.P8733707163558057437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285972 (a (n - 1) + (a (n - 1) + (n : ℤ))).toNat

end

end A285960.P8733707163558057437

namespace A285960

/-- `A285972(a(n-1)+a(n-1)+n)` -/
def P8733707163558057437.Spec : Prop :=
  ∀ n, P8733707163558057437.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P8624695361377527558

`A039982(A091785(n+1))`
-/

namespace A285960.P8624695361377527558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A091785 (n + 1)).toNat

end

end A285960.P8624695361377527558

namespace A285960

/-- `A039982(A091785(n+1))` -/
def P8624695361377527558.Spec : Prop :=
  ∀ n, P8624695361377527558.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P1168122549398159098

`A010060(∑[A143331(n+1)])`
-/

namespace A285960.P1168122549398159098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285960.P1168122549398159098

namespace A285960

/-- `A010060(∑[A143331(n+1)])` -/
def P1168122549398159098.Spec : Prop :=
  ∀ n, P1168122549398159098.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P4844536442629150596

`A035263(A091785(n+1)+2)`
-/

namespace A285960.P4844536442629150596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A091785 (n + 1) + 2).toNat

end

end A285960.P4844536442629150596

namespace A285960

/-- `A035263(A091785(n+1)+2)` -/
def P4844536442629150596.Spec : Prop :=
  ∀ n, P4844536442629150596.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P13920286490208796358

`A254377(A091855(n+1)+2)`
-/

namespace A285960.P13920286490208796358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A091855 (n + 1) + 2).toNat

end

end A285960.P13920286490208796358

namespace A285960

/-- `A254377(A091855(n+1)+2)` -/
def P13920286490208796358.Spec : Prop :=
  ∀ n, P13920286490208796358.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P12281897202439230810

`A016754(n)%A286047(n+1)`
-/

namespace A285960.P12281897202439230810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 n) (A286047 (n + 1))

end

end A285960.P12281897202439230810

namespace A285960

/-- `A016754(n)%A286047(n+1)` -/
def P12281897202439230810.Spec : Prop :=
  ∀ n, P12281897202439230810.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P8313102375149923213

`A016756(n)%A286047(n+1)`
-/

namespace A285960.P8313102375149923213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 n) (A286047 (n + 1))

end

end A285960.P8313102375149923213

namespace A285960

/-- `A016756(n)%A286047(n+1)` -/
def P8313102375149923213.Spec : Prop :=
  ∀ n, P8313102375149923213.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P9634666320260751114

`A016758(n)%A286047(n+1)`
-/

namespace A285960.P9634666320260751114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016758 n) (A286047 (n + 1))

end

end A285960.P9634666320260751114

namespace A285960

/-- `A016758(n)%A286047(n+1)` -/
def P9634666320260751114.Spec : Prop :=
  ∀ n, P9634666320260751114.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P151751889659024119

`A016760(n)%A286047(n+1)`
-/

namespace A285960.P151751889659024119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A286047 (n + 1))

end

end A285960.P151751889659024119

namespace A285960

/-- `A016760(n)%A286047(n+1)` -/
def P151751889659024119.Spec : Prop :=
  ∀ n, P151751889659024119.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P3439473084053775754

`A272850(n)%A286047(n+1)`
-/

namespace A285960.P3439473084053775754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272850 n) (A286047 (n + 1))

end

end A285960.P3439473084053775754

namespace A285960

/-- `A272850(n)%A286047(n+1)` -/
def P3439473084053775754.Spec : Prop :=
  ∀ n, P3439473084053775754.a n = A285960 (n + 1)

end A285960

/-! ## A285960.P17491063178230372175

`and(A158388(n), A195608(n+1))`
-/

namespace A285960.P17491063178230372175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A195608 (n + 1))

end

end A285960.P17491063178230372175

namespace A285960

/-- `and(A158388(n), A195608(n+1))` -/
def P17491063178230372175.Spec : Prop :=
  ∀ n, P17491063178230372175.a n = A285960 (n + 1)

end A285960

/-!
# A285961: Positions of 0 in A285960; complement of A285962.

The programs for A285961, the canonical program `A285961.P11025727463194114248` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285961 has offset 1).

The definition of A285961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285961.P11025727463194114248

`A091785(n+1)+1+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285961

/-- `A091785(n+1)+1+n` -/
def P11025727463194114248.Spec : Prop :=
  ∀ n, P11025727463194114248.a n = A285961 (n + 1)

theorem P11025727463194114248.correct : P11025727463194114248.Spec := by
  intro n
  simp only [A285961, Nat.add_sub_cancel]

end A285961

/-! ## A285961.P17749015525811161125

`A248056(n+1)/2+n+1`
-/

namespace A285961.P17749015525811161125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248056 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A285961.P17749015525811161125

namespace A285961

/-- `A248056(n+1)/2+n+1` -/
def P17749015525811161125.Spec : Prop :=
  ∀ n, P17749015525811161125.a n = (A285961 (n + 1) : ℚ)

theorem P17749015525811161125.correct : P17749015525811161125.Spec := by
  intro n
  simp only [A285961, Nat.add_sub_cancel, A285961.P17749015525811161125.a, A285961.P11025727463194114248.a, A091785, A091785.P17722584434212151531.a, A248056, A248056.P11690070156917874997.a, A036554, A036554.P8175060370953883075.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285961

/-! ## A285961.P17608497304069686557

`ceil(A233388(n+1)/2)/2+n+1`
-/

namespace A285961.P17608497304069686557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A233388 (n + 1) : ℚ) / 2⌉ : ℚ) / 2 + (n + 1 : ℚ)

end

end A285961.P17608497304069686557

namespace A285961

/-- `ceil(A233388(n+1)/2)/2+n+1` -/
def P17608497304069686557.Spec : Prop :=
  ∀ n, P17608497304069686557.a n = (A285961 (n + 1) : ℚ)

end A285961

/-! ## A285961.P13214206221398677071

`A285973(n+2)-1`
-/

namespace A285961.P13214206221398677071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285973 (n + 2) - 1

end

end A285961.P13214206221398677071

namespace A285961

/-- `A285973(n+2)-1` -/
def P13214206221398677071.Spec : Prop :=
  ∀ n, P13214206221398677071.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P10041311290665662944

`A285959(n+2)-(A143331(n+2)+1)`
-/

namespace A285961.P10041311290665662944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 2) - (A143331 (n + 2) + 1)

end

end A285961.P10041311290665662944

namespace A285961

/-- `A285959(n+2)-(A143331(n+2)+1)` -/
def P10041311290665662944.Spec : Prop :=
  ∀ n, P10041311290665662944.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P14169337055867789531

`A003157(2*(n+1))/2`
-/

namespace A285961.P14169337055867789531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003157 (2 * (n + 1)) : ℚ) / 2

end

end A285961.P14169337055867789531

namespace A285961

/-- `A003157(2*(n+1))/2` -/
def P14169337055867789531.Spec : Prop :=
  ∀ n, P14169337055867789531.a n = (A285961 (n + 1) : ℚ)

end A285961

/-! ## A285961.P17631200041971159196

`(A003158(2*(n+1))+1)/2`
-/

namespace A285961.P17631200041971159196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003158 (2 * (n + 1)) + 1 : ℚ) / 2

end

end A285961.P17631200041971159196

namespace A285961

/-- `(A003158(2*(n+1))+1)/2` -/
def P17631200041971159196.Spec : Prop :=
  ∀ n, P17631200041971159196.a n = (A285961 (n + 1) : ℚ)

end A285961

/-! ## A285961.P7704467579161136666

`A003159(2*(n+1))+n+1`
-/

namespace A285961.P7704467579161136666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A285961.P7704467579161136666

namespace A285961

/-- `A003159(2*(n+1))+n+1` -/
def P7704467579161136666.Spec : Prop :=
  ∀ n, P7704467579161136666.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P8442218930429540204

`A121539(2*(n+1))+2+n`
-/

namespace A285961.P8442218930429540204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (2 * (n + 1)) + 2 + (n : ℤ)

end

end A285961.P8442218930429540204

namespace A285961

/-- `A121539(2*(n+1))+2+n` -/
def P8442218930429540204.Spec : Prop :=
  ∀ n, P8442218930429540204.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P3829620577202281403

`A260480(2*(n+1))-(n+1)`
-/

namespace A285961.P3829620577202281403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260480 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A285961.P3829620577202281403

namespace A285961

/-- `A260480(2*(n+1))-(n+1)` -/
def P3829620577202281403.Spec : Prop :=
  ∀ n, P3829620577202281403.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P9184292228036511829

`n+1+A036554(2*(n+1))/2`
-/

namespace A285961.P9184292228036511829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A036554 (2 * (n + 1)) : ℚ) / 2

end

end A285961.P9184292228036511829

namespace A285961

/-- `n+1+A036554(2*(n+1))/2` -/
def P9184292228036511829.Spec : Prop :=
  ∀ n, P9184292228036511829.a n = (A285961 (n + 1) : ℚ)

end A285961

/-! ## A285961.P10846952422981888340

`A286065(2*(n+1))-(2*n+1)`
-/

namespace A285961.P10846952422981888340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (2 * (n + 1)) - (2 * n + 1 : ℤ)

end

end A285961.P10846952422981888340

namespace A285961

/-- `A286065(2*(n+1))-(2*n+1)` -/
def P10846952422981888340.Spec : Prop :=
  ∀ n, P10846952422981888340.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P15298000223304246424

`(4*(n+1)+A003156(2*(n+1)))/2`
-/

namespace A285961.P15298000223304246424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) : ℤ) + A003156 (2 * (n + 1)) : ℚ) / 2

end

end A285961.P15298000223304246424

namespace A285961

/-- `(4*(n+1)+A003156(2*(n+1)))/2` -/
def P15298000223304246424.Spec : Prop :=
  ∀ n, P15298000223304246424.a n = (A285961 (n + 1) : ℚ)

end A285961

/-! ## A285961.P15337232140136039467

`A008585(n+1)+A003160(2*n+1)`
-/

namespace A285961.P15337232140136039467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + A003160 (2 * n + 1)

end

end A285961.P15337232140136039467

namespace A285961

/-- `A008585(n+1)+A003160(2*n+1)` -/
def P15337232140136039467.Spec : Prop :=
  ∀ n, P15337232140136039467.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P7586726768780820055

`A026465(2*(n+1))+A171946(2*(n+1))+n`
-/

namespace A285961.P7586726768780820055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * (n + 1)) + (A171946 (2 * (n + 1)) + (n : ℤ))

end

end A285961.P7586726768780820055

namespace A285961

/-- `A026465(2*(n+1))+A171946(2*(n+1))+n` -/
def P7586726768780820055.Spec : Prop :=
  ∀ n, P7586726768780820055.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P4364769949736237406

`A171946(2*n+3)+n`
-/

namespace A285961.P4364769949736237406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (2 * n + 3) + (n : ℤ)

end

end A285961.P4364769949736237406

namespace A285961

/-- `A171946(2*n+3)+n` -/
def P4364769949736237406.Spec : Prop :=
  ∀ n, P4364769949736237406.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P3567689336788905027

`A285385(2*n+3)+n`
-/

namespace A285961.P3567689336788905027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285385 (2 * n + 3) + (n : ℤ)

end

end A285961.P3567689336788905027

namespace A285961

/-- `A285385(2*n+3)+n` -/
def P3567689336788905027.Spec : Prop :=
  ∀ n, P3567689336788905027.a n = A285961 (n + 1)

end A285961

/-! ## A285961.P8499436195226856908

`lt[2, A007413(n+1)]+2+n`
-/

namespace A285961.P8499436195226856908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 + n

end

end A285961.P8499436195226856908

namespace A285961

/-- `lt[2, A007413(n+1)]+2+n` -/
def P8499436195226856908.Spec : Prop :=
  ∀ n, (P8499436195226856908.a n : ℤ) = A285961 (n + 1)

end A285961

/-! ## A285961.P18023156629524927449

`A285958(A091785(n+1))`
-/

namespace A285961.P18023156629524927449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (A091785 (n + 1)).toNat

end

end A285961.P18023156629524927449

namespace A285961

/-- `A285958(A091785(n+1))` -/
def P18023156629524927449.Spec : Prop :=
  ∀ n, P18023156629524927449.a n = A285961 (n + 1)

end A285961

/-!
# A285962: Positions of 1 in A285960; complement of A285961.

The programs for A285962, the canonical program `A285962.P11120950042759192256` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285962 has offset 1).

The definition of A285962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285962.P18008729622683153978

`A285974(n+1)-1`
-/

namespace A285962.P18008729622683153978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285974 (n + 1) - 1

end

end A285962.P18008729622683153978

namespace A285962

/-- `A285974(n+1)-1` -/
def P18008729622683153978.Spec : Prop :=
  ∀ n, P18008729622683153978.a n = A285962 (n + 1)

theorem P18008729622683153978.correct : P18008729622683153978.Spec := by
  intro n
  simp only [A285962, Nat.add_sub_cancel, A285962.P18008729622683153978.a, A285962.P11120950042759192256.f1, A285962.P11120950042759192256.a, A036578, A036578.P17041184954175712032.a, A285974, A285974.P6886808199461892070.a, A005679, A005679.P11330707442932993347.f1, A005679.P11330707442932993347.a, A000032, A000032.P8352177345629330861.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285962

/-! ## A285962.P11120950042759192256

`∑[A036578(abs(1-n))!]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A285962

/-- `∑[A036578(abs(1-n))!]` -/
def P11120950042759192256.Spec : Prop :=
  ∀ n, (P11120950042759192256.a n : ℤ) = A285962 (n + 1)

theorem P11120950042759192256.correct : P11120950042759192256.Spec := by
  intro n
  simp only [A285962, Nat.add_sub_cancel]

end A285962

/-! ## A285962.P5869209698021763536

`∑[log2(gcd(4, A316826(n)))!]`
-/

namespace A285962.P5869209698021763536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (Int.gcd 4 (A316826 n) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285962.P5869209698021763536

namespace A285962

/-- `∑[log2(gcd(4, A316826(n)))!]` -/
def P5869209698021763536.Spec : Prop :=
  ∀ n, (P5869209698021763536.a n : ℤ) = A285962 (n + 1)

end A285962

/-! ## A285962.P9889555925669649941

`comp[A091785(n+1)+n]+1`
-/

namespace A285962.P9889555925669649941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285962.P9889555925669649941

namespace A285962

/-- `comp[A091785(n+1)+n]+1` -/
def P9889555925669649941.Spec : Prop :=
  ∀ n, (P9889555925669649941.a n : ℤ) = A285962 (n + 1)

end A285962

/-! ## A285962.P9604064209683542677

`∑[char[A003159(2*(n+1))]+1]`
-/

namespace A285962.P9604064209683542677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285962.P9604064209683542677

namespace A285962

/-- `∑[char[A003159(2*(n+1))]+1]` -/
def P9604064209683542677.Spec : Prop :=
  ∀ n, (P9604064209683542677.a n : ℤ) = A285962 (n + 1)

end A285962

/-! ## A285962.P2352648497820085974

`A004526(A050292(n))+1+n`
-/

namespace A285962.P2352648497820085974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050292 n).toNat + 1 + (n : ℤ)

end

end A285962.P2352648497820085974

namespace A285962

/-- `A004526(A050292(n))+1+n` -/
def P2352648497820085974.Spec : Prop :=
  ∀ n, P2352648497820085974.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P5144172970054919157

`A285958(n+1)-A010060(n)`
-/

namespace A285962.P5144172970054919157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) - A010060 n

end

end A285962.P5144172970054919157

namespace A285962

/-- `A285958(n+1)-A010060(n)` -/
def P5144172970054919157.Spec : Prop :=
  ∀ n, P5144172970054919157.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P747958815212735815

`A016789(n)-A285967(n+1)`
-/

namespace A285962.P747958815212735815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A285967 (n + 1)

end

end A285962.P747958815212735815

namespace A285962

/-- `A016789(n)-A285967(n+1)` -/
def P747958815212735815.Spec : Prop :=
  ∀ n, P747958815212735815.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P12473440826530585530

`A285958(n+1)+A010059(n)-1`
-/

namespace A285962.P12473440826530585530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) + (A010059 n - 1)

end

end A285962.P12473440826530585530

namespace A285962

/-- `A285958(n+1)+A010059(n)-1` -/
def P12473440826530585530.Spec : Prop :=
  ∀ n, P12473440826530585530.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P11059382888528495645

`A285977(n+1)-(A123087(n)+1)`
-/

namespace A285962.P11059382888528495645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285977 (n + 1) - (A123087 n + 1)

end

end A285962.P11059382888528495645

namespace A285962

/-- `A285977(n+1)-(A123087(n)+1)` -/
def P11059382888528495645.Spec : Prop :=
  ∀ n, P11059382888528495645.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P2868189054834928081

`A285953(n+1)-A285977(n+1)`
-/

namespace A285962.P2868189054834928081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1) - A285977 (n + 1)

end

end A285962.P2868189054834928081

namespace A285962

/-- `A285953(n+1)-A285977(n+1)` -/
def P2868189054834928081.Spec : Prop :=
  ∀ n, P2868189054834928081.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P17187287613375916296

`∑[A000217(A010060(n)+a(n-1))%3+1]` with `a(0)=1`
-/

namespace A285962.P17187287613375916296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A000217 (A010060 n + f1 (n - 1)).toNat) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285962.P17187287613375916296

namespace A285962

/-- `∑[A000217(A010060(n)+a(n-1))%3+1]` -/
def P17187287613375916296.Spec : Prop :=
  ∀ n, P17187287613375916296.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P635117292695886579

`A285958(n+1)-A000035(A000120(n))`
-/

namespace A285962.P635117292695886579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) - A000035 (A000120 n).toNat

end

end A285962.P635117292695886579

namespace A285962

/-- `A285958(n+1)-A000035(A000120(n))` -/
def P635117292695886579.Spec : Prop :=
  ∀ n, P635117292695886579.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P3614180708941730947

`A285951(n+1)-(A285967(n+1)+A010060(n))`
-/

namespace A285962.P3614180708941730947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1) - (A285967 (n + 1) + A010060 n)

end

end A285962.P3614180708941730947

namespace A285962

/-- `A285951(n+1)-(A285967(n+1)+A010060(n))` -/
def P3614180708941730947.Spec : Prop :=
  ∀ n, P3614180708941730947.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P8527408700100523475

`comp[comp[char[A048724(n)]+n]+n]`
-/

namespace A285962.P8527408700100523475
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A285962.P8527408700100523475

namespace A285962

/-- `comp[comp[char[A048724(n)]+n]+n]` -/
def P8527408700100523475.Spec : Prop :=
  ∀ n, (P8527408700100523475.a n : ℤ) = A285962 (n + 1)

end A285962

/-! ## A285962.P7119568403349197068

`filter[n+1, A285960(#)]`
-/

namespace A285962.P7119568403349197068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285960 (f1 j) = 1) n)

end

end A285962.P7119568403349197068

namespace A285962

/-- `filter[n+1, A285960(#)]` -/
def P7119568403349197068.Spec : Prop :=
  ∀ n, (P7119568403349197068.a n : ℤ) = A285962 (n + 1)

end A285962

/-! ## A285962.P2036518299191977821

`eq[1, A285960(n+1)]+1`
-/

namespace A285962.P2036518299191977821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285962.P2036518299191977821

namespace A285962

/-- `eq[1, A285960(n+1)]+1` -/
def P2036518299191977821.Spec : Prop :=
  ∀ n, (P2036518299191977821.a n : ℤ) = A285962 (n + 1)

end A285962

/-! ## A285962.P6208389400820318077

`A286048(a(n-1)+1)-a(n-1)` with `a(0)=1`
-/

namespace A285962.P6208389400820318077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286048 (a (n - 1) + 1).toNat - a (n - 1)

end

end A285962.P6208389400820318077

namespace A285962

/-- `A286048(a(n-1)+1)-a(n-1)` -/
def P6208389400820318077.Spec : Prop :=
  ∀ n, P6208389400820318077.a n = A285962 (n + 1)

end A285962

/-! ## A285962.P5814879520742164073

`∪[A003156(2*(n+1)), A284393(2*(n+1))]/2`
-/

namespace A285962.P5814879520742164073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A285962.P5814879520742164073

namespace A285962

/-- `∪[A003156(2*(n+1)), A284393(2*(n+1))]/2` -/
def P5814879520742164073.Spec : Prop :=
  ∀ n, P5814879520742164073.a n = (A285962 (n + 1) : ℚ)

end A285962

/-! ## A285962.P15039443922754411856

`eq[1, A285972(n+1)]`
-/

namespace A285962.P15039443922754411856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285962.P15039443922754411856

namespace A285962

/-- `eq[1, A285972(n+1)]` -/
def P15039443922754411856.Spec : Prop :=
  ∀ n, (P15039443922754411856.a n : ℤ) = A285962 (n + 1)

end A285962

/-!
# A285963: {11->0}-transform of the Thue-Morse word A010060.

The programs for A285963, the canonical program `A285963.P5606189406368919503` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285963 has offset 1).

The definition of A285963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285963.P5606189406368919503

`char[A285965(n+1)-1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285963

/-- `char[A285965(n+1)-1]` -/
def P5606189406368919503.Spec : Prop :=
  ∀ n, (P5606189406368919503.a n : ℤ) = A285963 (n + 1)

theorem P5606189406368919503.correct : P5606189406368919503.Spec := by
  intro n
  simp only [A285963, Nat.add_sub_cancel]

end A285963

/-! ## A285963.P2462693015365374327

`A051344(Δ[A286402(n+1)])`
-/

namespace A285963.P2462693015365374327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (f1 (n + 1) - f1 n).toNat

end

end A285963.P2462693015365374327

namespace A285963

/-- `A051344(Δ[A286402(n+1)])` -/
def P2462693015365374327.Spec : Prop :=
  ∀ n, P2462693015365374327.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P12278374511588667847

`A285501(Δ[A286402(n+1)])`
-/

namespace A285963.P12278374511588667847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (f1 (n + 1) - f1 n).toNat

end

end A285963.P12278374511588667847

namespace A285963

/-- `A285501(Δ[A286402(n+1)])` -/
def P12278374511588667847.Spec : Prop :=
  ∀ n, P12278374511588667847.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P4971167975077001322

`A132270(Δ[A286402(n+1)]²)`
-/

namespace A285963.P4971167975077001322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A285963.P4971167975077001322

namespace A285963

/-- `A132270(Δ[A286402(n+1)]²)` -/
def P4971167975077001322.Spec : Prop :=
  ∀ n, P4971167975077001322.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P2356612424154158561

`A286400(Δ[A286402(n+1)]²)`
-/

namespace A285963.P2356612424154158561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A285963.P2356612424154158561

namespace A285963

/-- `A286400(Δ[A286402(n+1)]²)` -/
def P2356612424154158561.Spec : Prop :=
  ∀ n, P2356612424154158561.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P2929718136874471758

`A025435(Δ[A286402(n+1)]+1)`
-/

namespace A285963.P2929718136874471758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (f1 (n + 1) - f1 n + 1).toNat

end

end A285963.P2929718136874471758

namespace A285963

/-- `A025435(Δ[A286402(n+1)]+1)` -/
def P2929718136874471758.Spec : Prop :=
  ∀ n, P2929718136874471758.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P16173105602973317258

`1-A010060(Δ[A286402(n+1)])`
-/

namespace A285963.P16173105602973317258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (f1 (n + 1) - f1 n).toNat

end

end A285963.P16173105602973317258

namespace A285963

/-- `1-A010060(Δ[A286402(n+1)])` -/
def P16173105602973317258.Spec : Prop :=
  ∀ n, P16173105602973317258.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P11618371077102472734

`1-A102899(Δ[A286402(n+1)])`
-/

namespace A285963.P11618371077102472734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A102899 (f1 (n + 1) - f1 n).toNat

end

end A285963.P11618371077102472734

namespace A285963

/-- `1-A102899(Δ[A286402(n+1)])` -/
def P11618371077102472734.Spec : Prop :=
  ∀ n, P11618371077102472734.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P12120369285152847007

`A010060(Δ[A286402(n+1)]+4)`
-/

namespace A285963.P12120369285152847007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f1 (n + 1) - f1 n + 4).toNat

end

end A285963.P12120369285152847007

namespace A285963

/-- `A010060(Δ[A286402(n+1)]+4)` -/
def P12120369285152847007.Spec : Prop :=
  ∀ n, P12120369285152847007.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P8720294719398355409

`A029414(Δ[2*A286402(n+1)])`
-/

namespace A285963.P8720294719398355409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (f1 (n + 1) - f1 n).toNat

end

end A285963.P8720294719398355409

namespace A285963

/-- `A029414(Δ[2*A286402(n+1)])` -/
def P8720294719398355409.Spec : Prop :=
  ∀ n, P8720294719398355409.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P7036434717449053476

`A286400(Δ[A286402(n+1)]+6)`
-/

namespace A285963.P7036434717449053476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (f1 (n + 1) - f1 n + 6).toNat

end

end A285963.P7036434717449053476

namespace A285963

/-- `A286400(Δ[A286402(n+1)]+6)` -/
def P7036434717449053476.Spec : Prop :=
  ∀ n, P7036434717449053476.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P248759415110092677

`A029414(Δ[A286402(n+1)]²+1)`
-/

namespace A285963.P248759415110092677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat

end

end A285963.P248759415110092677

namespace A285963

/-- `A029414(Δ[A286402(n+1)]²+1)` -/
def P248759415110092677.Spec : Prop :=
  ∀ n, P248759415110092677.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P3022885615564721480

`A283991((Δ[A286402(n+1)]+2)²)`
-/

namespace A285963.P3022885615564721480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 ((f1 (n + 1) - f1 n + 2) ^ 2).toNat

end

end A285963.P3022885615564721480

namespace A285963

/-- `A283991((Δ[A286402(n+1)]+2)²)` -/
def P3022885615564721480.Spec : Prop :=
  ∀ n, P3022885615564721480.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P14888139560246091850

`A286385(A286402(n+2)-A286402(n+1))`
-/

namespace A285963.P14888139560246091850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (A286402 (n + 2) - A286402 (n + 1)).toNat

end

end A285963.P14888139560246091850

namespace A285963

/-- `A286385(A286402(n+2)-A286402(n+1))` -/
def P14888139560246091850.Spec : Prop :=
  ∀ n, P14888139560246091850.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P17230428768960597611

`A286385(A286402(n+2)%A286402(n+1))`
-/

namespace A285963.P17230428768960597611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (Int.tmod (A286402 (n + 2)) (A286402 (n + 1))).toNat

end

end A285963.P17230428768960597611

namespace A285963

/-- `A286385(A286402(n+2)%A286402(n+1))` -/
def P17230428768960597611.Spec : Prop :=
  ∀ n, P17230428768960597611.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P12819390464147757459

`val(Δ[A285092(Δ[n²])]+1, 3)`
-/

namespace A285963.P12819390464147757459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285092 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 3

end

end A285963.P12819390464147757459

namespace A285963

/-- `val(Δ[A285092(Δ[n²])]+1, 3)` -/
def P12819390464147757459.Spec : Prop :=
  ∀ n, (P12819390464147757459.a n : ℤ) = A285963 (n + 1)

end A285963

/-! ## A285963.P14074344981402727957

`A284656(Δ[A284685(2*n+1)]²)`
-/

namespace A285963.P14074344981402727957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284685 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A285963.P14074344981402727957

namespace A285963

/-- `A284656(Δ[A284685(2*n+1)]²)` -/
def P14074344981402727957.Spec : Prop :=
  ∀ n, P14074344981402727957.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P11841401399481575368

`A000022(Δ[A285092(2*n+1)])-1`
-/

namespace A285963.P11841401399481575368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000022 (f1 (n + 1) - f1 n).toNat - 1

end

end A285963.P11841401399481575368

namespace A285963

/-- `A000022(Δ[A285092(2*n+1)])-1` -/
def P11841401399481575368.Spec : Prop :=
  ∀ n, P11841401399481575368.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P8512928941789933477

`1-A284656(Δ[A284685(2*n+1)])`
-/

namespace A285963.P8512928941789933477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284685 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284656 (f1 (n + 1) - f1 n).toNat

end

end A285963.P8512928941789933477

namespace A285963

/-- `1-A284656(Δ[A284685(2*n+1)])` -/
def P8512928941789933477.Spec : Prop :=
  ∀ n, P8512928941789933477.a n = A285963 (n + 1)

end A285963

/-! ## A285963.P5054993607170627071

`A284656(Δ[A284685(2*n+1)]+2)`
-/

namespace A285963.P5054993607170627071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284685 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (f1 (n + 1) - f1 n + 2).toNat

end

end A285963.P5054993607170627071

namespace A285963

/-- `A284656(Δ[A284685(2*n+1)]+2)` -/
def P5054993607170627071.Spec : Prop :=
  ∀ n, P5054993607170627071.a n = A285963 (n + 1)

end A285963

/-!
# A285964: Positions of 0 in A285963; complement of A285965.

The programs for A285964, the canonical program `A285964.P643415714002808842` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285964 has offset 1).

The definition of A285964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285964.P643415714002808842

`comp[A285965(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285964

/-- `comp[A285965(n+1)-1]+1` -/
def P643415714002808842.Spec : Prop :=
  ∀ n, (P643415714002808842.a n : ℤ) = A285964 (n + 1)

theorem P643415714002808842.correct : P643415714002808842.Spec := by
  intro n
  simp only [A285964, Nat.add_sub_cancel]

end A285964

/-! ## A285964.P12727693202826394878

`eq[1, A285963(n+1)+1]+1`
-/

namespace A285964.P12727693202826394878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285963 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285964.P12727693202826394878

namespace A285964

/-- `eq[1, A285963(n+1)+1]+1` -/
def P12727693202826394878.Spec : Prop :=
  ∀ n, (P12727693202826394878.a n : ℤ) = A285964 (n + 1)

end A285964

/-! ## A285964.P6835009734288646068

`a(n-1)+A285963(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A285964.P6835009734288646068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285963 (a (n - 1) + 1).toNat + 1)

end

end A285964.P6835009734288646068

namespace A285964

/-- `a(n-1)+A285963(a(n-1)+1)+1` -/
def P6835009734288646068.Spec : Prop :=
  ∀ n, P6835009734288646068.a n = A285964 (n + 1)

end A285964

/-! ## A285964.P11497312216768285556

`record[(n+1)/A053738(n*A285963(n+1)+1)]`
-/

namespace A285964.P11497312216768285556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053738 ((n : ℤ) * A285963 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285964.P11497312216768285556

namespace A285964

/-- `record[(n+1)/A053738(n*A285963(n+1)+1)]` -/
def P11497312216768285556.Spec : Prop :=
  ∀ n, P11497312216768285556.a n = (A285964 (n + 1) : ℚ)

end A285964

/-! ## A285964.P3240455016631421481

`lt[A284749(Δ[A285092(2*n+1)]+1), 2]+1`
-/

namespace A285964.P3240455016631421481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285092 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (f2 (n + 1) - f2 n + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A285964.P3240455016631421481

namespace A285964

/-- `lt[A284749(Δ[A285092(2*n+1)]+1), 2]+1` -/
def P3240455016631421481.Spec : Prop :=
  ∀ n, (P3240455016631421481.a n : ℤ) = A285964 (n + 1)

end A285964

/-! ## A285964.P10108244682189672162

`record[(n+1)/A250250(n*A285963(n+1)+1)]`
-/

namespace A285964.P10108244682189672162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A250250 ((n : ℤ) * A285963 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285964.P10108244682189672162

namespace A285964

/-- `record[(n+1)/A250250(n*A285963(n+1)+1)]` -/
def P10108244682189672162.Spec : Prop :=
  ∀ n, P10108244682189672162.a n = (A285964 (n + 1) : ℚ)

end A285964

/-! ## A285964.P3586289199552824351

`A092278(A108269(2*n+1))-n`
-/

namespace A285964.P3586289199552824351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (A108269 (2 * n + 1)).toNat - (n : ℤ)

end

end A285964.P3586289199552824351

namespace A285964

/-- `A092278(A108269(2*n+1))-n` -/
def P3586289199552824351.Spec : Prop :=
  ∀ n, P3586289199552824351.a n = A285964 (n + 1)

end A285964

/-!
# A285965: Positions of 1 in A285963; complement of A285964.

The programs for A285965, the canonical program `A285965.P14704777127460749347` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285965 has offset 1).

The definition of A285965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285965.P15214007919591651364

`A008619(n)+3*A003159(n+1)`
-/

namespace A285965.P15214007919591651364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 3 * A003159 (n + 1)

end

end A285965.P15214007919591651364

namespace A285965

/-- `A008619(n)+3*A003159(n+1)` -/
def P15214007919591651364.Spec : Prop :=
  ∀ n, P15214007919591651364.a n = A285965 (n + 1)

end A285965

/-! ## A285965.P10881833231105960240

`ceil(A003157(n+1)+A003156(n+1)/2)`
-/

namespace A285965.P10881833231105960240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003157 (n + 1) : ℚ) + (A003156 (n + 1) : ℚ) / 2⌉

end

end A285965.P10881833231105960240

namespace A285965

/-- `ceil(A003157(n+1)+A003156(n+1)/2)` -/
def P10881833231105960240.Spec : Prop :=
  ∀ n, P10881833231105960240.a n = A285965 (n + 1)

end A285965

/-! ## A285965.P14704777127460749347

`A285979(n+2)-A000035(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285965

/-- `A285979(n+2)-A000035(n)` -/
def P14704777127460749347.Spec : Prop :=
  ∀ n, P14704777127460749347.a n = A285965 (n + 1)

theorem P14704777127460749347.correct : P14704777127460749347.Spec := by
  intro n
  simp only [A285965, Nat.add_sub_cancel]

end A285965

/-! ## A285965.P8143760820689570869

`A065033(n+1)+3*A003159(n+1)`
-/

namespace A285965.P8143760820689570869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + 3 * A003159 (n + 1)

end

end A285965.P8143760820689570869

namespace A285965

/-- `A065033(n+1)+3*A003159(n+1)` -/
def P8143760820689570869.Spec : Prop :=
  ∀ n, P8143760820689570869.a n = A285965 (n + 1)

end A285965

/-! ## A285965.P6961637751759979162

`A285979(n+2)-A010060(Δ[A285979(n+1)])`
-/

namespace A285965.P6961637751759979162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285979 (n + 2) - A010060 (f1 (n + 1) - f1 n).toNat

end

end A285965.P6961637751759979162

namespace A285965

/-- `A285979(n+2)-A010060(Δ[A285979(n+1)])` -/
def P6961637751759979162.Spec : Prop :=
  ∀ n, P6961637751759979162.a n = A285965 (n + 1)

end A285965

/-! ## A285965.P817175559770067143

`A284393(A284393(n+2))+A008619(A284393(n+2))`
-/

namespace A285965.P817175559770067143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (A284393 (n + 2)).toNat + A008619 (A284393 (n + 2)).toNat

end

end A285965.P817175559770067143

namespace A285965

/-- `A284393(A284393(n+2))+A008619(A284393(n+2))` -/
def P817175559770067143.Spec : Prop :=
  ∀ n, P817175559770067143.a n = A285965 (n + 1)

end A285965

/-! ## A285965.P9937039364675641391

`A008619(A003158(n+1))+eq[1, and(1-2*n, 2*n)%3]`
-/

namespace A285965.P9937039364675641391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003158 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A285965.P9937039364675641391

namespace A285965

/-- `A008619(A003158(n+1))+eq[1, and(1-2*n, 2*n)%3]` -/
def P9937039364675641391.Spec : Prop :=
  ∀ n, P9937039364675641391.a n = A285965 (n + 1)

end A285965

/-! ## A285965.P12140064919582321746

`A008619(A003158(n+1))+A162648(n+1)+2`
-/

namespace A285965.P12140064919582321746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003158 (n + 1)).toNat + (A162648 (n + 1) + 2)

end

end A285965.P12140064919582321746

namespace A285965

/-- `A008619(A003158(n+1))+A162648(n+1)+2` -/
def P12140064919582321746.Spec : Prop :=
  ∀ n, P12140064919582321746.a n = A285965 (n + 1)

end A285965

/-! ## A285965.P9479567217122322059

`filter[n+1, A285963(#)]`
-/

namespace A285965.P9479567217122322059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285963 (f1 j) = 1) n)

end

end A285965.P9479567217122322059

namespace A285965

/-- `filter[n+1, A285963(#)]` -/
def P9479567217122322059.Spec : Prop :=
  ∀ n, (P9479567217122322059.a n : ℤ) = A285965 (n + 1)

end A285965

/-! ## A285965.P10745437691998546128

`eq[1, A285963(n+1)]+1`
-/

namespace A285965.P10745437691998546128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285965.P10745437691998546128

namespace A285965

/-- `eq[1, A285963(n+1)]+1` -/
def P10745437691998546128.Spec : Prop :=
  ∀ n, (P10745437691998546128.a n : ℤ) = A285965 (n + 1)

end A285965

/-! ## A285965.P1224378224346707580

`lt[2, A286402(n+2)%A286402(n+1)]+1`
-/

namespace A285965.P1224378224346707580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286402 (n + 2)) (A286402 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285965.P1224378224346707580

namespace A285965

/-- `lt[2, A286402(n+2)%A286402(n+1)]+1` -/
def P1224378224346707580.Spec : Prop :=
  ∀ n, (P1224378224346707580.a n : ℤ) = A285965 (n + 1)

end A285965

/-! ## A285965.P5484227257110930260

`A002265(6*(eq[3, xor(n, n+1)%6]+n+1))-A023443(n)`
-/

namespace A285965.P5484227257110930260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1))) - A023443 n

end

end A285965.P5484227257110930260

namespace A285965

/-- `A002265(6*(eq[3, xor(n, n+1)%6]+n+1))-A023443(n)` -/
def P5484227257110930260.Spec : Prop :=
  ∀ n, P5484227257110930260.a n = A285965 (n + 1)

end A285965

/-!
# A285966: {11->1}-transform of the Thue-Morse word A010060.

The programs for A285966, the canonical program `A285966.P18243699786434963245` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285966 has offset 1).

The definition of A285966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285966.P12414336075662734016

`char[A285968(n+1)-1]`
-/

namespace A285966.P12414336075662734016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285968 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285966.P12414336075662734016

namespace A285966

/-- `char[A285968(n+1)-1]` -/
def P12414336075662734016.Spec : Prop :=
  ∀ n, (P12414336075662734016.a n : ℤ) = A285966 (n + 1)

end A285966

/-! ## A285966.P15332591595247958693

`and(1, comp[A157970(n+1)])`
-/

namespace A285966.P15332591595247958693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285966.P15332591595247958693

namespace A285966

/-- `and(1, comp[A157970(n+1)])` -/
def P15332591595247958693.Spec : Prop :=
  ∀ n, (P15332591595247958693.a n : ℤ) = A285966 (n + 1)

end A285966

/-! ## A285966.P6616084855648271684

`char[∑[A026465(2*n+1)]+n]`
-/

namespace A285966.P6616084855648271684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285966.P6616084855648271684

namespace A285966

/-- `char[∑[A026465(2*n+1)]+n]` -/
def P6616084855648271684.Spec : Prop :=
  ∀ n, (P6616084855648271684.a n : ℤ) = A285966 (n + 1)

end A285966

/-! ## A285966.P18243699786434963245

`A010060(lt[0, A127254(n)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285966

/-- `A010060(lt[0, A127254(n)])` -/
def P18243699786434963245.Spec : Prop :=
  ∀ n, P18243699786434963245.a n = A285966 (n + 1)

theorem P18243699786434963245.correct : P18243699786434963245.Spec := by
  intro n
  simp only [A285966, Nat.add_sub_cancel]

end A285966

/-! ## A285966.P2608697793372619968

`A010060(eq[1, A127254(n)])`
-/

namespace A285966.P2608697793372619968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285966.P2608697793372619968

namespace A285966

/-- `A010060(eq[1, A127254(n)])` -/
def P2608697793372619968.Spec : Prop :=
  ∀ n, P2608697793372619968.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P3104752304291342697

`A010060(comp[A157971(n+1)])`
-/

namespace A285966.P3104752304291342697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157971 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285966.P3104752304291342697

namespace A285966

/-- `A010060(comp[A157971(n+1)])` -/
def P3104752304291342697.Spec : Prop :=
  ∀ n, P3104752304291342697.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P8785824602630067423

`A010060(comp[A079523(Δ[n²])])`
-/

namespace A285966.P8785824602630067423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285966.P8785824602630067423

namespace A285966

/-- `A010060(comp[A079523(Δ[n²])])` -/
def P8785824602630067423.Spec : Prop :=
  ∀ n, P8785824602630067423.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P885168362587433861

`A010060(comp[2*A091855(n+1)])`
-/

namespace A285966.P885168362587433861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091855 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285966.P885168362587433861

namespace A285966

/-- `A010060(comp[2*A091855(n+1)])` -/
def P885168362587433861.Spec : Prop :=
  ∀ n, P885168362587433861.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P14104431040129027530

`A010060(comp[2*eq[2, A316826(n)]-1])`
-/

namespace A285966.P14104431040129027530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285966.P14104431040129027530

namespace A285966

/-- `A010060(comp[2*eq[2, A316826(n)]-1])` -/
def P14104431040129027530.Spec : Prop :=
  ∀ n, P14104431040129027530.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P14893116904865062170

`A010060(comp[A003156(2*n+1)+2*n])`
-/

namespace A285966.P14893116904865062170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (2 * n + 1) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285966.P14893116904865062170

namespace A285966

/-- `A010060(comp[A003156(2*n+1)+2*n])` -/
def P14893116904865062170.Spec : Prop :=
  ∀ n, P14893116904865062170.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P16975314749133639955

`A010060(comp[A079523(2*n+1)%(7*n+2)])`
-/

namespace A285966.P16975314749133639955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079523 (2 * n + 1)) (7 * n + 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285966.P16975314749133639955

namespace A285966

/-- `A010060(comp[A079523(2*n+1)%(7*n+2)])` -/
def P16975314749133639955.Spec : Prop :=
  ∀ n, P16975314749133639955.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P2867433311893156724

`A101671(eq[A101671(n)², A101671(n)])`
-/

namespace A285966.P2867433311893156724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285966.P2867433311893156724

namespace A285966

/-- `A101671(eq[A101671(n)², A101671(n)])` -/
def P2867433311893156724.Spec : Prop :=
  ∀ n, P2867433311893156724.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P5217845453836526555

`A101671(eq[A101671(n)+1, A001285(n)])`
-/

namespace A285966.P5217845453836526555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285966.P5217845453836526555

namespace A285966

/-- `A101671(eq[A101671(n)+1, A001285(n)])` -/
def P5217845453836526555.Spec : Prop :=
  ∀ n, P5217845453836526555.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P1041666777284267854

`A101671(eq[1, A001285(n)-A101671(n)])`
-/

namespace A285966.P1041666777284267854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - A101671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285966.P1041666777284267854

namespace A285966

/-- `A101671(eq[1, A001285(n)-A101671(n)])` -/
def P1041666777284267854.Spec : Prop :=
  ∀ n, P1041666777284267854.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P12386644173234730084

`A286400(A286402(n+1)-1)`
-/

namespace A285966.P12386644173234730084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (A286402 (n + 1) - 1).toNat

end

end A285966.P12386644173234730084

namespace A285966

/-- `A286400(A286402(n+1)-1)` -/
def P12386644173234730084.Spec : Prop :=
  ∀ n, P12386644173234730084.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P15891216865618341371

`A286400(eq[1, A286400(n+1)])`
-/

namespace A285966.P15891216865618341371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285966.P15891216865618341371

namespace A285966

/-- `A286400(eq[1, A286400(n+1)])` -/
def P15891216865618341371.Spec : Prop :=
  ∀ n, P15891216865618341371.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P4938667387238735291

`1-A286339(A286340(n+1)+1)`
-/

namespace A285966.P4938667387238735291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286339 (A286340 (n + 1) + 1).toNat

end

end A285966.P4938667387238735291

namespace A285966

/-- `1-A286339(A286340(n+1)+1)` -/
def P4938667387238735291.Spec : Prop :=
  ∀ n, P4938667387238735291.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P6822985194785493246

`A284623(2*(n+1))%2`
-/

namespace A285966.P6822985194785493246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284623 (2 * (n + 1))) 2

end

end A285966.P6822985194785493246

namespace A285966

/-- `A284623(2*(n+1))%2` -/
def P6822985194785493246.Spec : Prop :=
  ∀ n, P6822985194785493246.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P1041672255839557176

`A284820(2*(n+1))%2`
-/

namespace A285966.P1041672255839557176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284820 (2 * (n + 1))) 2

end

end A285966.P1041672255839557176

namespace A285966

/-- `A284820(2*(n+1))%2` -/
def P1041672255839557176.Spec : Prop :=
  ∀ n, P1041672255839557176.a n = A285966 (n + 1)

end A285966

/-! ## A285966.P2043076473850102351

`and(1, A284685(2*(n+1))+1)`
-/

namespace A285966.P2043076473850102351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284685 (2 * (n + 1)) + 1)

end

end A285966.P2043076473850102351

namespace A285966

/-- `and(1, A284685(2*(n+1))+1)` -/
def P2043076473850102351.Spec : Prop :=
  ∀ n, P2043076473850102351.a n = A285966 (n + 1)

end A285966

/-!
# A285967: Positions of 0 in A285966; complement of A285968.

The programs for A285967, the canonical program `A285967.P213330600347507789` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285967 has offset 1).

The definition of A285967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285967.P17247929746816633660

`∑[char[char[xor(n, 2*n)]+n]]+1+n`
-/

namespace A285967.P17247929746816633660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A285967.P17247929746816633660

namespace A285967

/-- `∑[char[char[xor(n, 2*n)]+n]]+1+n` -/
def P17247929746816633660.Spec : Prop :=
  ∀ n, (P17247929746816633660.a n : ℤ) = A285967 (n + 1)

end A285967

/-! ## A285967.P4448335200877555453

`∑[abs(a(A316826(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A285967.P4448335200877555453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (A316826 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285967.P4448335200877555453

namespace A285967

/-- `∑[abs(a(A316826(n)))]` -/
def P4448335200877555453.Spec : Prop :=
  ∀ n, (P4448335200877555453.a n : ℤ) = A285967 (n + 1)

end A285967

/-! ## A285967.P8369560579527060180

`comp[comp[A091785(n+1)]+n]`
-/

namespace A285967.P8369560579527060180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A285967.P8369560579527060180

namespace A285967

/-- `comp[comp[A091785(n+1)]+n]` -/
def P8369560579527060180.Spec : Prop :=
  ∀ n, (P8369560579527060180.a n : ℤ) = A285967 (n + 1)

end A285967

/-! ## A285967.P15027587122610772896

`3*(n+1)-A285974(n+1)`
-/

namespace A285967.P15027587122610772896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A285974 (n + 1)

end

end A285967.P15027587122610772896

namespace A285967

/-- `3*(n+1)-A285974(n+1)` -/
def P15027587122610772896.Spec : Prop :=
  ∀ n, P15027587122610772896.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P13698079043405428914

`∑[char[A161560(n+1)+1]+1]`
-/

namespace A285967.P13698079043405428914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285967.P13698079043405428914

namespace A285967

/-- `∑[char[A161560(n+1)+1]+1]` -/
def P13698079043405428914.Spec : Prop :=
  ∀ n, (P13698079043405428914.a n : ℤ) = A285967 (n + 1)

end A285967

/-! ## A285967.P13448321463181488091

`∑[char[1-A010060(n)+n]+1]`
-/

namespace A285967.P13448321463181488091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285967.P13448321463181488091

namespace A285967

/-- `∑[char[1-A010060(n)+n]+1]` -/
def P13448321463181488091.Spec : Prop :=
  ∀ n, (P13448321463181488091.a n : ℤ) = A285967 (n + 1)

end A285967

/-! ## A285967.P5336960113655024359

`comp[comp[A003159(2*(n+1))]+n]`
-/

namespace A285967.P5336960113655024359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A285967.P5336960113655024359

namespace A285967

/-- `comp[comp[A003159(2*(n+1))]+n]` -/
def P5336960113655024359.Spec : Prop :=
  ∀ n, (P5336960113655024359.a n : ℤ) = A285967 (n + 1)

end A285967

/-! ## A285967.P213330600347507789

`A285958(n+1)+A123087(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285967

/-- `A285958(n+1)+A123087(n)` -/
def P213330600347507789.Spec : Prop :=
  ∀ n, P213330600347507789.a n = A285967 (n + 1)

theorem P213330600347507789.correct : P213330600347507789.Spec := by
  intro n
  simp only [A285967, Nat.add_sub_cancel]

end A285967

/-! ## A285967.P12363410688416022628

`A285977(n+1)-A010059(n)`
-/

namespace A285967.P12363410688416022628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285977 (n + 1) - A010059 n

end

end A285967.P12363410688416022628

namespace A285967

/-- `A285977(n+1)-A010059(n)` -/
def P12363410688416022628.Spec : Prop :=
  ∀ n, P12363410688416022628.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P9846035732524043478

`A016789(n)-A285962(n+1)`
-/

namespace A285967.P9846035732524043478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A285962 (n + 1)

end

end A285967.P9846035732524043478

namespace A285967

/-- `A016789(n)-A285962(n+1)` -/
def P9846035732524043478.Spec : Prop :=
  ∀ n, P9846035732524043478.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P15319273844612321381

`A285977(n+1)+A010060(n)-1`
-/

namespace A285967.P15319273844612321381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285977 (n + 1) + (A010060 n - 1)

end

end A285967.P15319273844612321381

namespace A285967

/-- `A285977(n+1)+A010060(n)-1` -/
def P15319273844612321381.Spec : Prop :=
  ∀ n, P15319273844612321381.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P4261579182229241443

`A285951(n+1)-A285958(n+1)`
-/

namespace A285967.P4261579182229241443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1) - A285958 (n + 1)

end

end A285967.P4261579182229241443

namespace A285967

/-- `A285951(n+1)-A285958(n+1)` -/
def P4261579182229241443.Spec : Prop :=
  ∀ n, P4261579182229241443.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P4742124122614013835

`2*n+1-A004526(A050292(n))`
-/

namespace A285967.P4742124122614013835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A004526 (A050292 n).toNat

end

end A285967.P4742124122614013835

namespace A285967

/-- `2*n+1-A004526(A050292(n))` -/
def P4742124122614013835.Spec : Prop :=
  ∀ n, P4742124122614013835.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P10943812610387254319

`A285964(A285958(n+1))`
-/

namespace A285967.P10943812610387254319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285964 (A285958 (n + 1)).toNat

end

end A285967.P10943812610387254319

namespace A285967

/-- `A285964(A285958(n+1))` -/
def P10943812610387254319.Spec : Prop :=
  ∀ n, P10943812610387254319.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P12724568835364058663

`∑[A001285(comp[A181155(n+1)])]`
-/

namespace A285967.P12724568835364058663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285967.P12724568835364058663

namespace A285967

/-- `∑[A001285(comp[A181155(n+1)])]` -/
def P12724568835364058663.Spec : Prop :=
  ∀ n, P12724568835364058663.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P3115610926200921845

`A087069(2*n)+1-A090616(2*n)`
-/

namespace A285967.P3115610926200921845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 (2 * n) + (1 - A090616 (2 * n))

end

end A285967.P3115610926200921845

namespace A285967

/-- `A087069(2*n)+1-A090616(2*n)` -/
def P3115610926200921845.Spec : Prop :=
  ∀ n, P3115610926200921845.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P2750497455943287505

`A115384(2*n)+∑[char[A115384(2*n)]]`
-/

namespace A285967.P2750497455943287505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A285967.P2750497455943287505

namespace A285967

/-- `A115384(2*n)+∑[char[A115384(2*n)]]` -/
def P2750497455943287505.Spec : Prop :=
  ∀ n, P2750497455943287505.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P3436097435939134831

`A285958(Δ[n²])-n`
-/

namespace A285967.P3436097435939134831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A285967.P3436097435939134831

namespace A285967

/-- `A285958(Δ[n²])-n` -/
def P3436097435939134831.Spec : Prop :=
  ∀ n, P3436097435939134831.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P7851865144156201748

`A285962(2*(n+1))-(n+1)`
-/

namespace A285967.P7851865144156201748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285962 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A285967.P7851865144156201748

namespace A285967

/-- `A285962(2*(n+1))-(n+1)` -/
def P7851865144156201748.Spec : Prop :=
  ∀ n, P7851865144156201748.a n = A285967 (n + 1)

end A285967

/-! ## A285967.P16600587855672898073

`A004526(A050292(2*n+1))+n+1`
-/

namespace A285967.P16600587855672898073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050292 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A285967.P16600587855672898073

namespace A285967

/-- `A004526(A050292(2*n+1))+n+1` -/
def P16600587855672898073.Spec : Prop :=
  ∀ n, P16600587855672898073.a n = A285967 (n + 1)

end A285967

/-!
# A285968: Positions of 1 in A285966; complement of A285967.

The programs for A285968, the canonical program `A285968.P7645059340258916678` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285968 has offset 1).

The definition of A285968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285968.P7645059340258916678

`∑[A143331(n+1)+1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285968

/-- `∑[A143331(n+1)+1]` -/
def P7645059340258916678.Spec : Prop :=
  ∀ n, P7645059340258916678.a n = A285968 (n + 1)

theorem P7645059340258916678.correct : P7645059340258916678.Spec := by
  intro n
  simp only [A285968, Nat.add_sub_cancel]

end A285968

/-! ## A285968.P12128723470923352756

`4*n+3-A285970(n+1)`
-/

namespace A285968.P12128723470923352756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (3 - A285970 (n + 1))

end

end A285968.P12128723470923352756

namespace A285968

/-- `4*n+3-A285970(n+1)` -/
def P12128723470923352756.Spec : Prop :=
  ∀ n, P12128723470923352756.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P3374600229393962901

`A004767(n)-A285970(n+1)`
-/

namespace A285968.P3374600229393962901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285970 (n + 1)

end

end A285968.P3374600229393962901

namespace A285968

/-- `A004767(n)-A285970(n+1)` -/
def P3374600229393962901.Spec : Prop :=
  ∀ n, P3374600229393962901.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P5355854913682223705

`∑[A000040(A285959(n+1)-A285973(n+1))]`
-/

namespace A285968.P5355854913682223705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A285959 (n + 1) - A285973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285968.P5355854913682223705

namespace A285968

/-- `∑[A000040(A285959(n+1)-A285973(n+1))]` -/
def P5355854913682223705.Spec : Prop :=
  ∀ n, P5355854913682223705.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P15534032897652186169

`A286048(n+1)+A286048(n+2)-A286066(n+2)`
-/

namespace A285968.P15534032897652186169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286048 (n + 1) + (A286048 (n + 2) - A286066 (n + 2))

end

end A285968.P15534032897652186169

namespace A285968

/-- `A286048(n+1)+A286048(n+2)-A286066(n+2)` -/
def P15534032897652186169.Spec : Prop :=
  ∀ n, P15534032897652186169.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P15717086051997930834

`∑[p?[A007413(abs(1-n)+1)]]`
-/

namespace A285968.P15717086051997930834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285968.P15717086051997930834

namespace A285968

/-- `∑[p?[A007413(abs(1-n)+1)]]` -/
def P15717086051997930834.Spec : Prop :=
  ∀ n, P15717086051997930834.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P965510403035720608

`lt[A007413(n+1), 3]+2+n`
-/

namespace A285968.P965510403035720608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 + n

end

end A285968.P965510403035720608

namespace A285968

/-- `lt[A007413(n+1), 3]+2+n` -/
def P965510403035720608.Spec : Prop :=
  ∀ n, (P965510403035720608.a n : ℤ) = A285968 (n + 1)

end A285968

/-! ## A285968.P6127812747971600325

`∑[A284792(A284790(n+1))+2]`
-/

namespace A285968.P6127812747971600325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284792 (A284790 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285968.P6127812747971600325

namespace A285968

/-- `∑[A284792(A284790(n+1))+2]` -/
def P6127812747971600325.Spec : Prop :=
  ∀ n, P6127812747971600325.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P11348328781923622450

`lt[A318886(Δ[A001969(n+1)]), 1]+2+n`
-/

namespace A285968.P11348328781923622450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2 + n

end

end A285968.P11348328781923622450

namespace A285968

/-- `lt[A318886(Δ[A001969(n+1)]), 1]+2+n` -/
def P11348328781923622450.Spec : Prop :=
  ∀ n, (P11348328781923622450.a n : ℤ) = A285968 (n + 1)

end A285968

/-! ## A285968.P3661206056541264269

`∑[A026465(2*n+1)+1]`
-/

namespace A285968.P3661206056541264269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285968.P3661206056541264269

namespace A285968

/-- `∑[A026465(2*n+1)+1]` -/
def P3661206056541264269.Spec : Prop :=
  ∀ n, P3661206056541264269.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P2284516687234569131

`∑[A284388(2*(n+1))+2]`
-/

namespace A285968.P2284516687234569131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (2 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285968.P2284516687234569131

namespace A285968

/-- `∑[A284388(2*(n+1))+2]` -/
def P2284516687234569131.Spec : Prop :=
  ∀ n, P2284516687234569131.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P9322514979350045663

`A286341(2*n+1)-2*n`
-/

namespace A285968.P9322514979350045663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286341 (2 * n + 1) - (2 * n : ℤ)

end

end A285968.P9322514979350045663

namespace A285968

/-- `A286341(2*n+1)-2*n` -/
def P9322514979350045663.Spec : Prop :=
  ∀ n, P9322514979350045663.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P9230475198275812814

`∑[A284391(2*n+1)]+2*n+1`
-/

namespace A285968.P9230475198275812814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A285968.P9230475198275812814

namespace A285968

/-- `∑[A284391(2*n+1)]+2*n+1` -/
def P9230475198275812814.Spec : Prop :=
  ∀ n, P9230475198275812814.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P4460176743822725453

`A286049(2*(n+1))+A285976(n+1)`
-/

namespace A285968.P4460176743822725453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (2 * (n + 1)) + A285976 (n + 1)

end

end A285968.P4460176743822725453

namespace A285968

/-- `A286049(2*(n+1))+A285976(n+1)` -/
def P4460176743822725453.Spec : Prop :=
  ∀ n, P4460176743822725453.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P11272521498007969488

`A286485(2*(n+1))-A286051(n+1)`
-/

namespace A285968.P11272521498007969488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286485 (2 * (n + 1)) - A286051 (n + 1)

end

end A285968.P11272521498007969488

namespace A285968

/-- `A286485(2*(n+1))-A286051(n+1)` -/
def P11272521498007969488.Spec : Prop :=
  ∀ n, P11272521498007969488.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P15382454046524033476

`filter[n+1, A285966(#)]`
-/

namespace A285968.P15382454046524033476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285966 (f1 j) = 1) n)

end

end A285968.P15382454046524033476

namespace A285968

/-- `filter[n+1, A285966(#)]` -/
def P15382454046524033476.Spec : Prop :=
  ∀ n, (P15382454046524033476.a n : ℤ) = A285968 (n + 1)

end A285968

/-! ## A285968.P161779856571623146

`eq[1, A285966(n+1)]+1`
-/

namespace A285968.P161779856571623146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285968.P161779856571623146

namespace A285968

/-- `eq[1, A285966(n+1)]+1` -/
def P161779856571623146.Spec : Prop :=
  ∀ n, (P161779856571623146.a n : ℤ) = A285968 (n + 1)

end A285968

/-! ## A285968.P15048217337650984909

`A159481(A003159(2*n+1))+n+1`
-/

namespace A285968.P15048217337650984909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A003159 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A285968.P15048217337650984909

namespace A285968

/-- `A159481(A003159(2*n+1))+n+1` -/
def P15048217337650984909.Spec : Prop :=
  ∀ n, P15048217337650984909.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P2604886839617840281

`A008619(A003159(2*(n+1)))+n`
-/

namespace A285968.P2604886839617840281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003159 (2 * (n + 1))).toNat + (n : ℤ)

end

end A285968.P2604886839617840281

namespace A285968

/-- `A008619(A003159(2*(n+1)))+n` -/
def P2604886839617840281.Spec : Prop :=
  ∀ n, P2604886839617840281.a n = A285968 (n + 1)

end A285968

/-! ## A285968.P11259409081125343884

`A065033(A003159(2*n+1))+A065033(2*n+1)`
-/

namespace A285968.P11259409081125343884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003159 (2 * n + 1)).toNat + A065033 (2 * n + 1)

end

end A285968.P11259409081125343884

namespace A285968

/-- `A065033(A003159(2*n+1))+A065033(2*n+1)` -/
def P11259409081125343884.Spec : Prop :=
  ∀ n, P11259409081125343884.a n = A285968 (n + 1)

end A285968

/-!
# A285969: {0110->0}-transform of the Thue-Morse word A010060.

The programs for A285969, the canonical program `A285969.P11670156523082472099` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285969 has offset 1).

The definition of A285969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285969.P7689793765729754846

`char[A285971(n+1)-1]`
-/

namespace A285969.P7689793765729754846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285971 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285969.P7689793765729754846

namespace A285969

/-- `char[A285971(n+1)-1]` -/
def P7689793765729754846.Spec : Prop :=
  ∀ n, (P7689793765729754846.a n : ℤ) = A285969 (n + 1)

end A285969

/-! ## A285969.P18305817344210923500

`val(Δ[A286338(n+1)], 3)`
-/

namespace A285969.P18305817344210923500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A285969.P18305817344210923500

namespace A285969

/-- `val(Δ[A286338(n+1)], 3)` -/
def P18305817344210923500.Spec : Prop :=
  ∀ n, (P18305817344210923500.a n : ℤ) = A285969 (n + 1)

end A285969

/-! ## A285969.P17741282940423867302

`A286336(Δ[A286338(n+1)]²)`
-/

namespace A285969.P17741282940423867302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A285969.P17741282940423867302

namespace A285969

/-- `A286336(Δ[A286338(n+1)]²)` -/
def P17741282940423867302.Spec : Prop :=
  ∀ n, P17741282940423867302.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P6953999851474324299

`1-A286419(Δ[A286420(n+1)])`
-/

namespace A285969.P6953999851474324299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286419 (f1 (n + 1) - f1 n).toNat

end

end A285969.P6953999851474324299

namespace A285969

/-- `1-A286419(Δ[A286420(n+1)])` -/
def P6953999851474324299.Spec : Prop :=
  ∀ n, P6953999851474324299.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P11670156523082472099

`char[comp[∑[A036581(n)]]]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285969

/-- `char[comp[∑[A036581(n)]]]` -/
def P11670156523082472099.Spec : Prop :=
  ∀ n, (P11670156523082472099.a n : ℤ) = A285969 (n + 1)

theorem P11670156523082472099.correct : P11670156523082472099.Spec := by
  intro n
  simp only [A285969, Nat.add_sub_cancel]

end A285969

/-! ## A285969.P2056468902975611098

`A000035(eq[A035263(n+1), A127254(n)])`
-/

namespace A285969.P2056468902975611098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285969.P2056468902975611098

namespace A285969

/-- `A000035(eq[A035263(n+1), A127254(n)])` -/
def P2056468902975611098.Spec : Prop :=
  ∀ n, P2056468902975611098.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P1529272795486568418

`A000035(lt[1-A035263(n+1), A127254(n)])`
-/

namespace A285969.P1529272795486568418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285969.P1529272795486568418

namespace A285969

/-- `A000035(lt[1-A035263(n+1), A127254(n)])` -/
def P1529272795486568418.Spec : Prop :=
  ∀ n, P1529272795486568418.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P14775330493101522336

`A000035(lt[A035263(2*(n+1)), A127254(n)])`
-/

namespace A285969.P14775330493101522336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285969.P14775330493101522336

namespace A285969

/-- `A000035(lt[A035263(2*(n+1)), A127254(n)])` -/
def P14775330493101522336.Spec : Prop :=
  ∀ n, P14775330493101522336.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P2009691951138603385

`A010060(lt[A029883(n+3), A035263(n+1)])`
-/

namespace A285969.P2009691951138603385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285969.P2009691951138603385

namespace A285969

/-- `A010060(lt[A029883(n+3), A035263(n+1)])` -/
def P2009691951138603385.Spec : Prop :=
  ∀ n, P2009691951138603385.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P15980263151946115422

`A286336(A286338(n+1)-1)`
-/

namespace A285969.P15980263151946115422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (A286338 (n + 1) - 1).toNat

end

end A285969.P15980263151946115422

namespace A285969

/-- `A286336(A286338(n+1)-1)` -/
def P15980263151946115422.Spec : Prop :=
  ∀ n, P15980263151946115422.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P10327834066460647660

`A286493(A286495(n+2)+3)`
-/

namespace A285969.P10327834066460647660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A286495 (n + 2) + 3).toNat

end

end A285969.P10327834066460647660

namespace A285969

/-- `A286493(A286495(n+2)+3)` -/
def P10327834066460647660.Spec : Prop :=
  ∀ n, P10327834066460647660.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P4052952227250667394

`A286336(lt[0, A286336(n+1)])`
-/

namespace A285969.P4052952227250667394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285969.P4052952227250667394

namespace A285969

/-- `A286336(lt[0, A286336(n+1)])` -/
def P4052952227250667394.Spec : Prop :=
  ∀ n, P4052952227250667394.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P7168130853984281196

`A286336(eq[1, A286336(n+1)])`
-/

namespace A285969.P7168130853984281196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285969.P7168130853984281196

namespace A285969

/-- `A286336(eq[1, A286336(n+1)])` -/
def P7168130853984281196.Spec : Prop :=
  ∀ n, P7168130853984281196.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P2280180275709134727

`1-A286419(A286420(n+1)+1)`
-/

namespace A285969.P2280180275709134727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286419 (A286420 (n + 1) + 1).toNat

end

end A285969.P2280180275709134727

namespace A285969

/-- `1-A286419(A286420(n+1)+1)` -/
def P2280180275709134727.Spec : Prop :=
  ∀ n, P2280180275709134727.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P9438232619082059046

`1-A286419(eq[A000007(n), A286419(n+1)])`
-/

namespace A285969.P9438232619082059046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286419 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285969.P9438232619082059046

namespace A285969

/-- `1-A286419(eq[A000007(n), A286419(n+1)])` -/
def P9438232619082059046.Spec : Prop :=
  ∀ n, P9438232619082059046.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P6722762350398496944

`A010060(lt[A029883(n+3), A039963(2*n)])`
-/

namespace A285969.P6722762350398496944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285969.P6722762350398496944

namespace A285969

/-- `A010060(lt[A029883(n+3), A039963(2*n)])` -/
def P6722762350398496944.Spec : Prop :=
  ∀ n, P6722762350398496944.a n = A285969 (n + 1)

end A285969

/-! ## A285969.P11100274725508166736

`A268865(eq[A268865(4*n), A268865(n+1)])`
-/

namespace A285969.P11100274725508166736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268865 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268865 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285969.P11100274725508166736

namespace A285969

/-- `A268865(eq[A268865(4*n), A268865(n+1)])` -/
def P11100274725508166736.Spec : Prop :=
  ∀ n, P11100274725508166736.a n = A285969 (n + 1)

end A285969

/-!
# A285970: Positions of 0 in A285969; complement of A285971.

The programs for A285970, the canonical program `A285970.P17998108344174351003` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285970 has offset 1).

The definition of A285970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285970.P17998108344174351003

`∑[3-A143331(n+1)]-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285970

/-- `∑[3-A143331(n+1)]-1` -/
def P17998108344174351003.Spec : Prop :=
  ∀ n, P17998108344174351003.a n = A285970 (n + 1)

theorem P17998108344174351003.correct : P17998108344174351003.Spec := by
  intro n
  simp only [A285970, Nat.add_sub_cancel]

end A285970

/-! ## A285970.P10236581208765256462

`A004767(n)-A285968(n+1)`
-/

namespace A285970.P10236581208765256462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285968 (n + 1)

end

end A285970.P10236581208765256462

namespace A285970

/-- `A004767(n)-A285968(n+1)` -/
def P10236581208765256462.Spec : Prop :=
  ∀ n, P10236581208765256462.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P6870816943772895215

`A284790(n+1)-A285972(n+1)`
-/

namespace A285970.P6870816943772895215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284790 (n + 1) - A285972 (n + 1)

end

end A285970.P6870816943772895215

namespace A285970

/-- `A284790(n+1)-A285972(n+1)` -/
def P6870816943772895215.Spec : Prop :=
  ∀ n, P6870816943772895215.a n = A285970 (n + 1)

theorem P6870816943772895215.correct : P6870816943772895215.Spec := by
  intro n
  simp only [A285970, Nat.add_sub_cancel, A285970.P6870816943772895215.a, A285970.P17998108344174351003.f1, A285970.P17998108344174351003.a, A143331, A143331.P16828638926480326570.a, A284790, A284790.P18153554382833569304.a, A285972, A285972.P9978593090534713538.f1, A285972.P9978593090534713538.a, A010060, A010060.P3080921269106500717.a, A026465, A026465.P4870457713372314206.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A171947, A171947.P16384979975700383487.f1, A171947.P16384979975700383487.f2, A171947.P16384979975700383487.a, A191254, A191254.P17375190648081682118.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285970

/-! ## A285970.P2576028328914495963

`A286047(n+1)+A286066(n+2)-A286048(n+2)`
-/

namespace A285970.P2576028328914495963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286047 (n + 1) + (A286066 (n + 2) - A286048 (n + 2))

end

end A285970.P2576028328914495963

namespace A285970

/-- `A286047(n+1)+A286066(n+2)-A286048(n+2)` -/
def P2576028328914495963.Spec : Prop :=
  ∀ n, P2576028328914495963.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P9608854259988638139

`lt[A285969(n+1), 1]+1`
-/

namespace A285970.P9608854259988638139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285969 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285970.P9608854259988638139

namespace A285970

/-- `lt[A285969(n+1), 1]+1` -/
def P9608854259988638139.Spec : Prop :=
  ∀ n, (P9608854259988638139.a n : ℤ) = A285970 (n + 1)

end A285970

/-! ## A285970.P6255815991196498989

`3*n-lt[0, A316344(n)]+1`
-/

namespace A285970.P6255815991196498989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + 1

end

end A285970.P6255815991196498989

namespace A285970

/-- `3*n-lt[0, A316344(n)]+1` -/
def P6255815991196498989.Spec : Prop :=
  ∀ n, P6255815991196498989.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P13731631237762613373

`eq[1, A286419(Δ[A286420(n+1)])]+1`
-/

namespace A285970.P13731631237762613373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285970.P13731631237762613373

namespace A285970

/-- `eq[1, A286419(Δ[A286420(n+1)])]+1` -/
def P13731631237762613373.Spec : Prop :=
  ∀ n, (P13731631237762613373.a n : ℤ) = A285970 (n + 1)

end A285970

/-! ## A285970.P13772111593392371215

`∑[2-A284391(2*n+1)]`
-/

namespace A285970.P13772111593392371215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A284391 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285970.P13772111593392371215

namespace A285970

/-- `∑[2-A284391(2*n+1)]` -/
def P13772111593392371215.Spec : Prop :=
  ∀ n, P13772111593392371215.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P7816988862070450891

`A284934(n+1)-A286049(2*(n+1))`
-/

namespace A285970.P7816988862070450891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1) - A286049 (2 * (n + 1))

end

end A285970.P7816988862070450891

namespace A285970

/-- `A284934(n+1)-A286049(2*(n+1))` -/
def P7816988862070450891.Spec : Prop :=
  ∀ n, P7816988862070450891.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P17984336196840259545

`∑[A001285(A171946(2*n+1))]`
-/

namespace A285970.P17984336196840259545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A171946 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285970.P17984336196840259545

namespace A285970

/-- `∑[A001285(A171946(2*n+1))]` -/
def P17984336196840259545.Spec : Prop :=
  ∀ n, P17984336196840259545.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P8308684692711167723

`eq[1, char[A286337(n+1)-n]]`
-/

namespace A285970.P8308684692711167723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (n + 1) - (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285970.P8308684692711167723

namespace A285970

/-- `eq[1, char[A286337(n+1)-n]]` -/
def P8308684692711167723.Spec : Prop :=
  ∀ n, (P8308684692711167723.a n : ℤ) = A285970 (n + 1)

end A285970

/-! ## A285970.P5533328655909781855

`∑[A026465(A003156(2*n+1))]`
-/

namespace A285970.P5533328655909781855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A003156 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285970.P5533328655909781855

namespace A285970

/-- `∑[A026465(A003156(2*n+1))]` -/
def P5533328655909781855.Spec : Prop :=
  ∀ n, P5533328655909781855.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P9862583525353660264

`∑[A026465(eq[1, n%A026465(n+1)])]`
-/

namespace A285970.P9862583525353660264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A026465 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285970.P9862583525353660264

namespace A285970

/-- `∑[A026465(eq[1, n%A026465(n+1)])]` -/
def P9862583525353660264.Spec : Prop :=
  ∀ n, P9862583525353660264.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P7044580126557768557

`∑[A026465(A197911(A091855(n+1)))]`
-/

namespace A285970.P7044580126557768557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A197911 (A091855 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285970.P7044580126557768557

namespace A285970

/-- `∑[A026465(A197911(A091855(n+1)))]` -/
def P7044580126557768557.Spec : Prop :=
  ∀ n, P7044580126557768557.a n = A285970 (n + 1)

end A285970

/-! ## A285970.P12307799544281537562

`∑[A286052(4*n+2)]+n`
-/

namespace A285970.P12307799544281537562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A285970.P12307799544281537562

namespace A285970

/-- `∑[A286052(4*n+2)]+n` -/
def P12307799544281537562.Spec : Prop :=
  ∀ n, P12307799544281537562.a n = A285970 (n + 1)

end A285970

/-!
# A285971: Positions of 0 in A285969; complement of A285970.

The programs for A285971, the canonical program `A285971.P4639553320394911257` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285971 has offset 1).

The definition of A285971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285971.P4639553320394911257

`ceil(A260480(n+1)+n/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285971

/-- `ceil(A260480(n+1)+n/2)` -/
def P4639553320394911257.Spec : Prop :=
  ∀ n, P4639553320394911257.a n = A285971 (n + 1)

theorem P4639553320394911257.correct : P4639553320394911257.Spec := by
  intro n
  simp only [A285971, Nat.add_sub_cancel]

end A285971

/-! ## A285971.P2689177343315488553

`floor(A003157(n+1)/2+n+1)`
-/

namespace A285971.P2689177343315488553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003157 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)⌋

end

end A285971.P2689177343315488553

namespace A285971

/-- `floor(A003157(n+1)/2+n+1)` -/
def P2689177343315488553.Spec : Prop :=
  ∀ n, P2689177343315488553.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P13661662540948206670

`A003159(n+1)+∑[gcd(2, n+1)]`
-/

namespace A285971.P13661662540948206670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A285971.P13661662540948206670

namespace A285971

/-- `A003159(n+1)+∑[gcd(2, n+1)]` -/
def P13661662540948206670.Spec : Prop :=
  ∀ n, P13661662540948206670.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P1195867559350138120

`∑[char[A003156(n+1)]+n%2+2]`
-/

namespace A285971.P1195867559350138120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n % 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285971.P1195867559350138120

namespace A285971

/-- `∑[char[A003156(n+1)]+n%2+2]` -/
def P1195867559350138120.Spec : Prop :=
  ∀ n, (P1195867559350138120.a n : ℤ) = A285971 (n + 1)

end A285971

/-! ## A285971.P2266898683230971904

`A260480(n+1)+A110654(n)`
-/

namespace A285971.P2266898683230971904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260480 (n + 1) + A110654 n

end

end A285971.P2266898683230971904

namespace A285971

/-- `A260480(n+1)+A110654(n)` -/
def P2266898683230971904.Spec : Prop :=
  ∀ n, P2266898683230971904.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P3619379452719614389

`A286065(n+1)-A033999(n)`
-/

namespace A285971.P3619379452719614389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (n + 1) - A033999 n

end

end A285971.P3619379452719614389

namespace A285971

/-- `A286065(n+1)-A033999(n)` -/
def P3619379452719614389.Spec : Prop :=
  ∀ n, P3619379452719614389.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P6095358610338416048

`A284933(n+1)+A026465(n+1)`
-/

namespace A285971.P6095358610338416048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 1) + A026465 (n + 1)

end

end A285971.P6095358610338416048

namespace A285971

/-- `A284933(n+1)+A026465(n+1)` -/
def P6095358610338416048.Spec : Prop :=
  ∀ n, P6095358610338416048.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P3628244151465966638

`A110654(n)+∑[A026465(n+1)+1]`
-/

namespace A285971.P3628244151465966638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285971.P3628244151465966638

namespace A285971

/-- `A110654(n)+∑[A026465(n+1)+1]` -/
def P3628244151465966638.Spec : Prop :=
  ∀ n, P3628244151465966638.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P16142385274397043090

`∑[A026465(n+1)+2]-A008619(n)`
-/

namespace A285971.P16142385274397043090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 n

end

end A285971.P16142385274397043090

namespace A285971

/-- `∑[A026465(n+1)+2]-A008619(n)` -/
def P16142385274397043090.Spec : Prop :=
  ∀ n, P16142385274397043090.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P8027489125326940481

`∑[A026465(n+1)+2-A059841(n)]`
-/

namespace A285971.P8027489125326940481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1) + (2 - A059841 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285971.P8027489125326940481

namespace A285971

/-- `∑[A026465(n+1)+2-A059841(n)]` -/
def P8027489125326940481.Spec : Prop :=
  ∀ n, P8027489125326940481.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P14553979628129606306

`A286065(n+1)+2*A000035(n)-1`
-/

namespace A285971.P14553979628129606306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (n + 1) + (2 * A000035 n - 1)

end

end A285971.P14553979628129606306

namespace A285971

/-- `A286065(n+1)+2*A000035(n)-1` -/
def P14553979628129606306.Spec : Prop :=
  ∀ n, P14553979628129606306.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P16892759049840908039

`A003157(n+1)-ceil(A003156(n+1)/2)`
-/

namespace A285971.P16892759049840908039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - ⌈(A003156 (n + 1) : ℚ) / 2⌉

end

end A285971.P16892759049840908039

namespace A285971

/-- `A003157(n+1)-ceil(A003156(n+1)/2)` -/
def P16892759049840908039.Spec : Prop :=
  ∀ n, P16892759049840908039.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P598843998786904050

`A003159(n+1)+∑[A059127(a(n-1))]` with `a(0)=1`
-/

namespace A285971.P598843998786904050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A059127 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285971.P598843998786904050

namespace A285971

/-- `A003159(n+1)+∑[A059127(a(n-1))]` -/
def P598843998786904050.Spec : Prop :=
  ∀ n, P598843998786904050.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P12346846839964410471

`A286065(n+1)+A280193(A318517(n+1))`
-/

namespace A285971.P12346846839964410471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (n + 1) + A280193 (A318517 (n + 1)).toNat

end

end A285971.P12346846839964410471

namespace A285971

/-- `A286065(n+1)+A280193(A318517(n+1))` -/
def P12346846839964410471.Spec : Prop :=
  ∀ n, P12346846839964410471.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P7595117465188349654

`A284933(n+2)-gcd(2, n)`
-/

namespace A285971.P7595117465188349654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 2) - (Nat.gcd 2 n : ℤ)

end

end A285971.P7595117465188349654

namespace A285971

/-- `A284933(n+2)-gcd(2, n)` -/
def P7595117465188349654.Spec : Prop :=
  ∀ n, P7595117465188349654.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P7661499151921573553

`A285385(n+2)+A007494(n)`
-/

namespace A285971.P7661499151921573553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285385 (n + 2) + A007494 n

end

end A285971.P7661499151921573553

namespace A285971

/-- `A285385(n+2)+A007494(n)` -/
def P7661499151921573553.Spec : Prop :=
  ∀ n, P7661499151921573553.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P11528741124994322518

`A284791(n+2)-A000034(n)`
-/

namespace A285971.P11528741124994322518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 2) - A000034 n

end

end A285971.P11528741124994322518

namespace A285971

/-- `A284791(n+2)-A000034(n)` -/
def P11528741124994322518.Spec : Prop :=
  ∀ n, P11528741124994322518.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P15585809867072640953

`A121539(n+1)+A001651(n+2)`
-/

namespace A285971.P15585809867072640953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) + A001651 (n + 2)

end

end A285971.P15585809867072640953

namespace A285971

/-- `A121539(n+1)+A001651(n+2)` -/
def P15585809867072640953.Spec : Prop :=
  ∀ n, P15585809867072640953.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P11710336138988304624

`A284933(n+2)-A040001(n+2)`
-/

namespace A285971.P11710336138988304624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 2) - A040001 (n + 2)

end

end A285971.P11710336138988304624

namespace A285971

/-- `A284933(n+2)-A040001(n+2)` -/
def P11710336138988304624.Spec : Prop :=
  ∀ n, P11710336138988304624.a n = A285971 (n + 1)

end A285971

/-! ## A285971.P9110110704659484774

`A284933(n+2)-(2-A000035(n))`
-/

namespace A285971.P9110110704659484774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 2) - (2 - A000035 n)

end

end A285971.P9110110704659484774

namespace A285971

/-- `A284933(n+2)-(2-A000035(n))` -/
def P9110110704659484774.Spec : Prop :=
  ∀ n, P9110110704659484774.a n = A285971 (n + 1)

end A285971

/-!
# A285972: {10->1}-transform of the Thue-Morse word A010060.

The programs for A285972, the canonical program `A285972.P9978593090534713538` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285972 has offset 1).

The definition of A285972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285972.P14525709891979926073

`char[A285962(n+1)]`
-/

namespace A285972.P14525709891979926073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285972.P14525709891979926073

namespace A285972

/-- `char[A285962(n+1)]` -/
def P14525709891979926073.Spec : Prop :=
  ∀ n, (P14525709891979926073.a n : ℤ) = A285972 (n + 1)

end A285972

/-! ## A285972.P4754852172204590937

`char[A285974(n+1)-1]`
-/

namespace A285972.P4754852172204590937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285974 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285972.P4754852172204590937

namespace A285972

/-- `char[A285974(n+1)-1]` -/
def P4754852172204590937.Spec : Prop :=
  ∀ n, (P4754852172204590937.a n : ℤ) = A285972 (n + 1)

end A285972

/-! ## A285972.P18035959645845156278

`comp[A286047(n+1)]%2`
-/

namespace A285972.P18035959645845156278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A285972.P18035959645845156278

namespace A285972

/-- `comp[A286047(n+1)]%2` -/
def P18035959645845156278.Spec : Prop :=
  ∀ n, (P18035959645845156278.a n : ℤ) = A285972 (n + 1)

end A285972

/-! ## A285972.P18351416631058230247

`char[A285960(n+1)+n]`
-/

namespace A285972.P18351416631058230247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285960 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285972.P18351416631058230247

namespace A285972

/-- `char[A285960(n+1)+n]` -/
def P18351416631058230247.Spec : Prop :=
  ∀ n, (P18351416631058230247.a n : ℤ) = A285972 (n + 1)

end A285972

/-! ## A285972.P720437324603622189

`char[A286048(n+1)-n]`
-/

namespace A285972.P720437324603622189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286048 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285972.P720437324603622189

namespace A285972

/-- `char[A286048(n+1)-n]` -/
def P720437324603622189.Spec : Prop :=
  ∀ n, (P720437324603622189.a n : ℤ) = A285972 (n + 1)

end A285972

/-! ## A285972.P17725669519566226360

`A285960(1-a(n-1)+n)` with `a(0)=0`
-/

namespace A285972.P17725669519566226360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285960 (1 - a (n - 1) + (n : ℤ)).toNat

end

end A285972.P17725669519566226360

namespace A285972

/-- `A285960(1-a(n-1)+n)` -/
def P17725669519566226360.Spec : Prop :=
  ∀ n, P17725669519566226360.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P13833558100483453678

`A285960(1-(a(n-1)-n))` with `a(0)=0`
-/

namespace A285972.P13833558100483453678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285960 (1 - (a (n - 1) - (n : ℤ))).toNat

end

end A285972.P13833558100483453678

namespace A285972

/-- `A285960(1-(a(n-1)-n))` -/
def P13833558100483453678.Spec : Prop :=
  ∀ n, P13833558100483453678.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P1634045836663069109

`A010060(comp[A091855(n+2)-1])`
-/

namespace A285972.P1634045836663069109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285972.P1634045836663069109

namespace A285972

/-- `A010060(comp[A091855(n+2)-1])` -/
def P1634045836663069109.Spec : Prop :=
  ∀ n, P1634045836663069109.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P14538938679221850640

`char[A285958(n+1)-A010060(n)]`
-/

namespace A285972.P14538938679221850640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) - A010060 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285972.P14538938679221850640

namespace A285972

/-- `char[A285958(n+1)-A010060(n)]` -/
def P14538938679221850640.Spec : Prop :=
  ∀ n, (P14538938679221850640.a n : ℤ) = A285972 (n + 1)

end A285972

/-! ## A285972.P8826958657387858550

`A284790(n+1)-A285970(n+1)`
-/

namespace A285972.P8826958657387858550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284790 (n + 1) - A285970 (n + 1)

end

end A285972.P8826958657387858550

namespace A285972

/-- `A284790(n+1)-A285970(n+1)` -/
def P8826958657387858550.Spec : Prop :=
  ∀ n, P8826958657387858550.a n = A285972 (n + 1)

theorem P8826958657387858550.correct : P8826958657387858550.Spec := by
  intro n
  simp only [A285972, Nat.add_sub_cancel, A285972.P8826958657387858550.a, A285972.P9978593090534713538.f1, A285972.P9978593090534713538.a, A010060, A010060.P3080921269106500717.a, A143331, A143331.P16828638926480326570.a, A284790, A284790.P18153554382833569304.a, A285970, A285970.P17998108344174351003.f1, A285970.P17998108344174351003.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A026465, A026465.P4870457713372314206.a, A005187, A005187.P3874015513960485494.a, A171947, A171947.P16384979975700383487.f1, A171947.P16384979975700383487.f2, A171947.P16384979975700383487.a, A191254, A191254.P17375190648081682118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285972

/-! ## A285972.P2248353712386403468

`comp[A003159(2*n+1)]-comp[A003159(2*(n+1))]`
-/

namespace A285972.P2248353712386403468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A285972.P2248353712386403468

namespace A285972

/-- `comp[A003159(2*n+1)]-comp[A003159(2*(n+1))]` -/
def P2248353712386403468.Spec : Prop :=
  ∀ n, P2248353712386403468.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P9978593090534713538

`A010060(∑[A143331(n+1)]-A143331(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285972

/-- `A010060(∑[A143331(n+1)]-A143331(n+1))` -/
def P9978593090534713538.Spec : Prop :=
  ∀ n, P9978593090534713538.a n = A285972 (n + 1)

theorem P9978593090534713538.correct : P9978593090534713538.Spec := by
  intro n
  simp only [A285972, Nat.add_sub_cancel]

end A285972

/-! ## A285972.P11249984157727580169

`A254379(lt[A254655(n+1), A254655(n+5)])`
-/

namespace A285972.P11249984157727580169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285972.P11249984157727580169

namespace A285972

/-- `A254379(lt[A254655(n+1), A254655(n+5)])` -/
def P11249984157727580169.Spec : Prop :=
  ∀ n, P11249984157727580169.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P16252435851081853359

`A010060(lt[0, A316826(n)])`
-/

namespace A285972.P16252435851081853359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285972.P16252435851081853359

namespace A285972

/-- `A010060(lt[0, A316826(n)])` -/
def P16252435851081853359.Spec : Prop :=
  ∀ n, P16252435851081853359.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P7753082418990930274

`A010060(lt[n*A029883(n+1), 1])`
-/

namespace A285972.P7753082418990930274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029883 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A285972.P7753082418990930274

namespace A285972

/-- `A010060(lt[n*A029883(n+1), 1])` -/
def P7753082418990930274.Spec : Prop :=
  ∀ n, P7753082418990930274.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P9081982387094986723

`1-A286046(A004273(n)+1)`
-/

namespace A285972.P9081982387094986723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286046 (A004273 n + 1).toNat

end

end A285972.P9081982387094986723

namespace A285972

/-- `1-A286046(A004273(n)+1)` -/
def P9081982387094986723.Spec : Prop :=
  ∀ n, P9081982387094986723.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P12085301157273957074

`log2(gcd(2, A285385(2*n+1)))`
-/

namespace A285972.P12085301157273957074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A285385 (2 * n + 1)) : ℝ)

end

end A285972.P12085301157273957074

namespace A285972

/-- `log2(gcd(2, A285385(2*n+1)))` -/
def P12085301157273957074.Spec : Prop :=
  ∀ n, P12085301157273957074.a n = (A285972 (n + 1) : ℝ)

end A285972

/-! ## A285972.P5229268162294146842

`and(2, A171947(2*n+1))/2`
-/

namespace A285972.P5229268162294146842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A171947 (2 * n + 1)) : ℚ) / 2

end

end A285972.P5229268162294146842

namespace A285972

/-- `and(2, A171947(2*n+1))/2` -/
def P5229268162294146842.Spec : Prop :=
  ∀ n, P5229268162294146842.a n = (A285972 (n + 1) : ℚ)

end A285972

/-! ## A285972.P13995603088906679123

`(A284791(2*n+1)-n)%2`
-/

namespace A285972.P13995603088906679123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284791 (2 * n + 1) - (n : ℤ)) 2

end

end A285972.P13995603088906679123

namespace A285972

/-- `(A284791(2*n+1)-n)%2` -/
def P13995603088906679123.Spec : Prop :=
  ∀ n, P13995603088906679123.a n = A285972 (n + 1)

end A285972

/-! ## A285972.P1930155261352005464

`A284388(A286051(n+1))`
-/

namespace A285972.P1930155261352005464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (A286051 (n + 1)).toNat

end

end A285972.P1930155261352005464

namespace A285972

/-- `A284388(A286051(n+1))` -/
def P1930155261352005464.Spec : Prop :=
  ∀ n, P1930155261352005464.a n = A285972 (n + 1)

end A285972

/-!
# A285973: Positions of 0 in A285972; complement of A285974.

The programs for A285973, the canonical program `A285973.P13794099816013091422` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285973 has offset 1).

The definition of A285973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285973.P13794099816013091422

`A285959(n+1)-A143331(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A285973

/-- `A285959(n+1)-A143331(n+1)` -/
def P13794099816013091422.Spec : Prop :=
  ∀ n, P13794099816013091422.a n = A285973 (n + 1)

theorem P13794099816013091422.correct : P13794099816013091422.Spec := by
  intro n
  simp only [A285973, Nat.add_sub_cancel]

end A285973

/-! ## A285973.P8640480548035181679

`A285385(Δ[n²])+n`
-/

namespace A285973.P8640480548035181679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A285973.P8640480548035181679

namespace A285973

/-- `A285385(Δ[n²])+n` -/
def P8640480548035181679.Spec : Prop :=
  ∀ n, P8640480548035181679.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P6804244946197361892

`A284933(2*n+1)-2*n`
-/

namespace A285973.P6804244946197361892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (2 * n + 1) - (2 * n : ℤ)

end

end A285973.P6804244946197361892

namespace A285973

/-- `A284933(2*n+1)-2*n` -/
def P6804244946197361892.Spec : Prop :=
  ∀ n, P6804244946197361892.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P9029649450455322828

`A284791(2*n+1)-Δ[n²]`
-/

namespace A285973.P9029649450455322828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285973.P9029649450455322828

namespace A285973

/-- `A284791(2*n+1)-Δ[n²]` -/
def P9029649450455322828.Spec : Prop :=
  ∀ n, P9029649450455322828.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P9296042290296068146

`(A284393(2*n+1)+4*n+1)/2`
-/

namespace A285973.P9296042290296068146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284393 (2 * n + 1) + (4 * n + 1 : ℤ) : ℚ) / 2

end

end A285973.P9296042290296068146

namespace A285973

/-- `(A284393(2*n+1)+4*n+1)/2` -/
def P9296042290296068146.Spec : Prop :=
  ∀ n, P9296042290296068146.a n = (A285973 (n + 1) : ℚ)

end A285973

/-! ## A285973.P1054329186557752708

`record[A284933((n+1)/and(n+1, -(n+1)))-n]`
-/

namespace A285973.P1054329186557752708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285973.P1054329186557752708

namespace A285973

/-- `record[A284933((n+1)/and(n+1, -(n+1)))-n]` -/
def P1054329186557752708.Spec : Prop :=
  ∀ n, P1054329186557752708.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P7720186452515533480

`A171946(2*n+1)+A028310(n)`
-/

namespace A285973.P7720186452515533480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (2 * n + 1) + A028310 n

end

end A285973.P7720186452515533480

namespace A285973

/-- `A171946(2*n+1)+A028310(n)` -/
def P7720186452515533480.Spec : Prop :=
  ∀ n, P7720186452515533480.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P9734514326171706313

`A171946(2*n+1)+A000007(n)+n`
-/

namespace A285973.P9734514326171706313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (2 * n + 1) + (A000007 n + (n : ℤ))

end

end A285973.P9734514326171706313

namespace A285973

/-- `A171946(2*n+1)+A000007(n)+n` -/
def P9734514326171706313.Spec : Prop :=
  ∀ n, P9734514326171706313.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P9279297254974768869

`(A171947(2*n+1)+A004273(n+1))/2`
-/

namespace A285973.P9279297254974768869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171947 (2 * n + 1) + A004273 (n + 1) : ℚ) / 2

end

end A285973.P9279297254974768869

namespace A285973

/-- `(A171947(2*n+1)+A004273(n+1))/2` -/
def P9279297254974768869.Spec : Prop :=
  ∀ n, P9279297254974768869.a n = (A285973 (n + 1) : ℚ)

end A285973

/-! ## A285973.P11649453575646906296

`(A171947(2*n+1)+A004442(2*n))/2`
-/

namespace A285973.P11649453575646906296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171947 (2 * n + 1) + A004442 (2 * n) : ℚ) / 2

end

end A285973.P11649453575646906296

namespace A285973

/-- `(A171947(2*n+1)+A004442(2*n))/2` -/
def P11649453575646906296.Spec : Prop :=
  ∀ n, P11649453575646906296.a n = (A285973 (n + 1) : ℚ)

end A285973

/-! ## A285973.P10719184189969588315

`A171946(2*n+1)+A004275(n+1)-n`
-/

namespace A285973.P10719184189969588315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (2 * n + 1) + (A004275 (n + 1) - (n : ℤ))

end

end A285973.P10719184189969588315

namespace A285973

/-- `A171946(2*n+1)+A004275(n+1)-n` -/
def P10719184189969588315.Spec : Prop :=
  ∀ n, P10719184189969588315.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P14001936150375544554

`(A171947(2*n+1)-A001489(2*n+1))/2`
-/

namespace A285973.P14001936150375544554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171947 (2 * n + 1) - A001489 (2 * n + 1) : ℚ) / 2

end

end A285973.P14001936150375544554

namespace A285973

/-- `(A171947(2*n+1)-A001489(2*n+1))/2` -/
def P14001936150375544554.Spec : Prop :=
  ∀ n, P14001936150375544554.a n = (A285973 (n + 1) : ℚ)

end A285973

/-! ## A285973.P3950242601830202679

`A171946(2*(n+1))-A026465(2*n+1)+n`
-/

namespace A285973.P3950242601830202679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (2 * (n + 1)) - A026465 (2 * n + 1) + (n : ℤ)

end

end A285973.P3950242601830202679

namespace A285973

/-- `A171946(2*(n+1))-A026465(2*n+1)+n` -/
def P3950242601830202679.Spec : Prop :=
  ∀ n, P3950242601830202679.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P16735255930436880461

`A115384(A284393(2*n+1))+2*n`
-/

namespace A285973.P16735255930436880461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A284393 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A285973.P16735255930436880461

namespace A285973

/-- `A115384(A284393(2*n+1))+2*n` -/
def P16735255930436880461.Spec : Prop :=
  ∀ n, P16735255930436880461.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P2630805111939309668

`eq[A000038(n), A285972(A000038(n)+n)]`
-/

namespace A285973.P2630805111939309668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285973.P2630805111939309668

namespace A285973

/-- `eq[A000038(n), A285972(A000038(n)+n)]` -/
def P2630805111939309668.Spec : Prop :=
  ∀ n, (P2630805111939309668.a n : ℤ) = A285973 (n + 1)

end A285973

/-! ## A285973.P12263412912285132233

`A284389(4*n+2)/2`
-/

namespace A285973.P12263412912285132233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284389 (4 * n + 2) : ℚ) / 2

end

end A285973.P12263412912285132233

namespace A285973

/-- `A284389(4*n+2)/2` -/
def P12263412912285132233.Spec : Prop :=
  ∀ n, P12263412912285132233.a n = (A285973 (n + 1) : ℚ)

end A285973

/-! ## A285973.P8587023482338848712

`eq[A000007(n), A285972(A000007(n)+n)]`
-/

namespace A285973.P8587023482338848712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285973.P8587023482338848712

namespace A285973

/-- `eq[A000007(n), A285972(A000007(n)+n)]` -/
def P8587023482338848712.Spec : Prop :=
  ∀ n, (P8587023482338848712.a n : ℤ) = A285973 (n + 1)

end A285973

/-! ## A285973.P7610351947122053137

`eq[A135416(n+1), A285972(A135416(n+1)+n)]`
-/

namespace A285973.P7610351947122053137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (A135416 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285973.P7610351947122053137

namespace A285973

/-- `eq[A135416(n+1), A285972(A135416(n+1)+n)]` -/
def P7610351947122053137.Spec : Prop :=
  ∀ n, (P7610351947122053137.a n : ℤ) = A285973 (n + 1)

end A285973

/-! ## A285973.P17441822027148852654

`A000463(A171947(2*n+1))+n`
-/

namespace A285973.P17441822027148852654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A171947 (2 * n + 1)).toNat + (n : ℤ)

end

end A285973.P17441822027148852654

namespace A285973

/-- `A000463(A171947(2*n+1))+n` -/
def P17441822027148852654.Spec : Prop :=
  ∀ n, P17441822027148852654.a n = A285973 (n + 1)

end A285973

/-! ## A285973.P1744637435240682973

`A115384(A284389(2*n+2*n+1))`
-/

namespace A285973.P1744637435240682973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A284389 (2 * n + (2 * n + 1))).toNat

end

end A285973.P1744637435240682973

namespace A285973

/-- `A115384(A284389(2*n+2*n+1))` -/
def P1744637435240682973.Spec : Prop :=
  ∀ n, P1744637435240682973.a n = A285973 (n + 1)

end A285973

/-!
# A285974: Positions of 1 in A285972; complement of A285973.

The programs for A285974, the canonical program `A285974.P6886808199461892070` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285974 has offset 1).

The definition of A285974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285974.P3656503811059212892

`∑[gcd(2, A277822(n))]`
-/

namespace A285974.P3656503811059212892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A277822 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285974.P3656503811059212892

namespace A285974

/-- `∑[gcd(2, A277822(n))]` -/
def P3656503811059212892.Spec : Prop :=
  ∀ n, (P3656503811059212892.a n : ℤ) = A285974 (n + 1)

end A285974

/-! ## A285974.P6886808199461892070

`A285962(n+1)+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A285974

/-- `A285962(n+1)+1` -/
def P6886808199461892070.Spec : Prop :=
  ∀ n, P6886808199461892070.a n = A285974 (n + 1)

theorem P6886808199461892070.correct : P6886808199461892070.Spec := by
  intro n
  simp only [A285974, Nat.add_sub_cancel]

end A285974

/-! ## A285974.P17070722948229481471

`∑[abs(a(A316826(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A285974.P17070722948229481471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (A316826 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285974.P17070722948229481471

namespace A285974

/-- `∑[abs(a(A316826(n)))]` -/
def P17070722948229481471.Spec : Prop :=
  ∀ n, (P17070722948229481471.a n : ℤ) = A285974 (n + 1)

end A285974

/-! ## A285974.P6888992949044442375

`comp[A091785(n+1)+n]+2`
-/

namespace A285974.P6888992949044442375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A285974.P6888992949044442375

namespace A285974

/-- `comp[A091785(n+1)+n]+2` -/
def P6888992949044442375.Spec : Prop :=
  ∀ n, (P6888992949044442375.a n : ℤ) = A285974 (n + 1)

end A285974

/-! ## A285974.P2886800486715090299

`3*(n+1)-A285967(n+1)`
-/

namespace A285974.P2886800486715090299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A285967 (n + 1)

end

end A285974.P2886800486715090299

namespace A285974

/-- `3*(n+1)-A285967(n+1)` -/
def P2886800486715090299.Spec : Prop :=
  ∀ n, P2886800486715090299.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P1148855501545782401

`∑[ceil(2/A254378(2*n+1))]`
-/

namespace A285974.P1148855501545782401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A254378 (2 * n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285974.P1148855501545782401

namespace A285974

/-- `∑[ceil(2/A254378(2*n+1))]` -/
def P1148855501545782401.Spec : Prop :=
  ∀ n, P1148855501545782401.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P6279355045016224683

`∑[2-char[1-A010060(n)+n]]`
-/

namespace A285974.P6279355045016224683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285974.P6279355045016224683

namespace A285974

/-- `∑[2-char[1-A010060(n)+n]]` -/
def P6279355045016224683.Spec : Prop :=
  ∀ n, P6279355045016224683.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P17072851553384010667

`A285958(n+1)+A010059(n)`
-/

namespace A285974.P17072851553384010667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) + A010059 n

end

end A285974.P17072851553384010667

namespace A285974

/-- `A285958(n+1)+A010059(n)` -/
def P17072851553384010667.Spec : Prop :=
  ∀ n, P17072851553384010667.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P14775591143099322624

`A004526(A050292(n))+2+n`
-/

namespace A285974.P14775591143099322624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050292 n).toNat + 2 + (n : ℤ)

end

end A285974.P14775591143099322624

namespace A285974

/-- `A004526(A050292(n))+2+n` -/
def P14775591143099322624.Spec : Prop :=
  ∀ n, P14775591143099322624.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P11267260979491334414

`A285977(n+1)-A123087(n)`
-/

namespace A285974.P11267260979491334414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285977 (n + 1) - A123087 n

end

end A285974.P11267260979491334414

namespace A285974

/-- `A285977(n+1)-A123087(n)` -/
def P11267260979491334414.Spec : Prop :=
  ∀ n, P11267260979491334414.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P16902562561999737502

`A285958(n+1)+1-A010060(n)`
-/

namespace A285974.P16902562561999737502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) + (1 - A010060 n)

end

end A285974.P16902562561999737502

namespace A285974

/-- `A285958(n+1)+1-A010060(n)` -/
def P16902562561999737502.Spec : Prop :=
  ∀ n, P16902562561999737502.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P14879296959827261426

`A016789(n)+1-A285967(n+1)`
-/

namespace A285974.P14879296959827261426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (1 - A285967 (n + 1))

end

end A285974.P14879296959827261426

namespace A285974

/-- `A016789(n)+1-A285967(n+1)` -/
def P14879296959827261426.Spec : Prop :=
  ∀ n, P14879296959827261426.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P10983045741250190398

`A285953(n+1)+1-A285977(n+1)`
-/

namespace A285974.P10983045741250190398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1) + (1 - A285977 (n + 1))

end

end A285974.P10983045741250190398

namespace A285974

/-- `A285953(n+1)+1-A285977(n+1)` -/
def P10983045741250190398.Spec : Prop :=
  ∀ n, P10983045741250190398.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P8047364110539945078

`A285958(n+1)+A000035(A000120(n)+1)`
-/

namespace A285974.P8047364110539945078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) + A000035 (A000120 n + 1).toNat

end

end A285974.P8047364110539945078

namespace A285974

/-- `A285958(n+1)+A000035(A000120(n)+1)` -/
def P8047364110539945078.Spec : Prop :=
  ∀ n, P8047364110539945078.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P11797939581507874875

`comp[comp[char[xor(n, 2*n)]+n]+n]+1`
-/

namespace A285974.P11797939581507874875
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A285974.P11797939581507874875

namespace A285974

/-- `comp[comp[char[xor(n, 2*n)]+n]+n]+1` -/
def P11797939581507874875.Spec : Prop :=
  ∀ n, (P11797939581507874875.a n : ℤ) = A285974 (n + 1)

end A285974

/-! ## A285974.P10884465023859026557

`comp[comp[char[A048724(n)]+n]+n]+1`
-/

namespace A285974.P10884465023859026557
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A285974.P10884465023859026557

namespace A285974

/-- `comp[comp[char[A048724(n)]+n]+n]+1` -/
def P10884465023859026557.Spec : Prop :=
  ∀ n, (P10884465023859026557.a n : ℤ) = A285974 (n + 1)

end A285974

/-! ## A285974.P10975454738906341788

`A285958(n+1)+A010060(2*n+1)`
-/

namespace A285974.P10975454738906341788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) + A010060 (2 * n + 1)

end

end A285974.P10975454738906341788

namespace A285974

/-- `A285958(n+1)+A010060(2*n+1)` -/
def P10975454738906341788.Spec : Prop :=
  ∀ n, P10975454738906341788.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P10437528138450692911

`eq[1, A285960(n+1)]+2`
-/

namespace A285974.P10437528138450692911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285974.P10437528138450692911

namespace A285974

/-- `eq[1, A285960(n+1)]+2` -/
def P10437528138450692911.Spec : Prop :=
  ∀ n, (P10437528138450692911.a n : ℤ) = A285974 (n + 1)

end A285974

/-! ## A285974.P8315386006403182326

`A020725(A285962(n+1))`
-/

namespace A285974.P8315386006403182326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A285962 (n + 1)).toNat

end

end A285974.P8315386006403182326

namespace A285974

/-- `A020725(A285962(n+1))` -/
def P8315386006403182326.Spec : Prop :=
  ∀ n, P8315386006403182326.a n = A285974 (n + 1)

end A285974

/-! ## A285974.P9491179296350619650

`filter[n+1, A285972(#)]`
-/

namespace A285974.P9491179296350619650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285972 (f1 j) = 1) n)

end

end A285974.P9491179296350619650

namespace A285974

/-- `filter[n+1, A285972(#)]` -/
def P9491179296350619650.Spec : Prop :=
  ∀ n, (P9491179296350619650.a n : ℤ) = A285974 (n + 1)

end A285974

/-!
# A285975: {00->0}-transform of the Thue-Morse word A010060.

The programs for A285975, the canonical program `A285975.P17423521814547835926` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285975 has offset 1).

The definition of A285975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285975.P17423521814547835926

`char[A285977(n+1)-1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285975

/-- `char[A285977(n+1)-1]` -/
def P17423521814547835926.Spec : Prop :=
  ∀ n, (P17423521814547835926.a n : ℤ) = A285975 (n + 1)

theorem P17423521814547835926.correct : P17423521814547835926.Spec := by
  intro n
  simp only [A285975, Nat.add_sub_cancel]

end A285975

/-! ## A285975.P4261803494300884713

`comp[A036554(2*n+1)]%2`
-/

namespace A285975.P4261803494300884713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A285975.P4261803494300884713

namespace A285975

/-- `comp[A036554(2*n+1)]%2` -/
def P4261803494300884713.Spec : Prop :=
  ∀ n, (P4261803494300884713.a n : ℤ) = A285975 (n + 1)

end A285975

/-! ## A285975.P9598820316099097146

`char[A286492(n+1)-(n+1)]`
-/

namespace A285975.P9598820316099097146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286492 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285975.P9598820316099097146

namespace A285975

/-- `char[A286492(n+1)-(n+1)]` -/
def P9598820316099097146.Spec : Prop :=
  ∀ n, (P9598820316099097146.a n : ℤ) = A285975 (n + 1)

end A285975

/-! ## A285975.P2947415438145113139

`A010060(comp[A079523(2*(n+1))])`
-/

namespace A285975.P2947415438145113139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285975.P2947415438145113139

namespace A285975

/-- `A010060(comp[A079523(2*(n+1))])` -/
def P2947415438145113139.Spec : Prop :=
  ∀ n, P2947415438145113139.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P560725185744402012

`A254379(eq[A254379(2*n), A254655(n+2)])`
-/

namespace A285975.P560725185744402012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285975.P560725185744402012

namespace A285975

/-- `A254379(eq[A254379(2*n), A254655(n+2)])` -/
def P560725185744402012.Spec : Prop :=
  ∀ n, P560725185744402012.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P4511816935249969516

`A001221(Δ[A286486(n+1)])`
-/

namespace A285975.P4511816935249969516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A285975.P4511816935249969516

namespace A285975

/-- `A001221(Δ[A286486(n+1)])` -/
def P4511816935249969516.Spec : Prop :=
  ∀ n, P4511816935249969516.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P11946549437877795974

`A001222(Δ[A286486(n+1)])`
-/

namespace A285975.P11946549437877795974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A285975.P11946549437877795974

namespace A285975

/-- `A001222(Δ[A286486(n+1)])` -/
def P11946549437877795974.Spec : Prop :=
  ∀ n, P11946549437877795974.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P16719849777085246785

`A286484(A286486(n+2)-A286486(n+1))`
-/

namespace A285975.P16719849777085246785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286484 (A286486 (n + 2) - A286486 (n + 1)).toNat

end

end A285975.P16719849777085246785

namespace A285975

/-- `A286484(A286486(n+2)-A286486(n+1))` -/
def P16719849777085246785.Spec : Prop :=
  ∀ n, P16719849777085246785.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P6823259267876370146

`A000035(eq[1, A127254(n)])`
-/

namespace A285975.P6823259267876370146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285975.P6823259267876370146

namespace A285975

/-- `A000035(eq[1, A127254(n)])` -/
def P6823259267876370146.Spec : Prop :=
  ∀ n, P6823259267876370146.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P12574521135952291560

`A000035(eq[A101671(n)², A101671(n)])`
-/

namespace A285975.P12574521135952291560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285975.P12574521135952291560

namespace A285975

/-- `A000035(eq[A101671(n)², A101671(n)])` -/
def P12574521135952291560.Spec : Prop :=
  ∀ n, P12574521135952291560.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P14119356355069120609

`A010060(lt[A029883(n+2), A268676(n)])`
-/

namespace A285975.P14119356355069120609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285975.P14119356355069120609

namespace A285975

/-- `A010060(lt[A029883(n+2), A268676(n)])` -/
def P14119356355069120609.Spec : Prop :=
  ∀ n, P14119356355069120609.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P7429128695087900129

`A010060(lt[A029883(n+2), A268727(n)])`
-/

namespace A285975.P7429128695087900129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285975.P7429128695087900129

namespace A285975

/-- `A010060(lt[A029883(n+2), A268727(n)])` -/
def P7429128695087900129.Spec : Prop :=
  ∀ n, P7429128695087900129.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P4542424654078944203

`A010060(lt[1-A010060(n), A268676(n+1)])`
-/

namespace A285975.P4542424654078944203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285975.P4542424654078944203

namespace A285975

/-- `A010060(lt[1-A010060(n), A268676(n+1)])` -/
def P4542424654078944203.Spec : Prop :=
  ∀ n, P4542424654078944203.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P4623102322615495460

`A010060(lt[1-A010060(n), A268727(n+1)])`
-/

namespace A285975.P4623102322615495460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285975.P4623102322615495460

namespace A285975

/-- `A010060(lt[1-A010060(n), A268727(n+1)])` -/
def P4623102322615495460.Spec : Prop :=
  ∀ n, P4623102322615495460.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P10543640611021271279

`A127254(eq[A127254(n)+1, A277822(n)])`
-/

namespace A285975.P10543640611021271279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285975.P10543640611021271279

namespace A285975

/-- `A127254(eq[A127254(n)+1, A277822(n)])` -/
def P10543640611021271279.Spec : Prop :=
  ∀ n, P10543640611021271279.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P4012903466563348955

`A127254(eq[1, A277822(n)-A127254(n)])`
-/

namespace A285975.P4012903466563348955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n - A127254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285975.P4012903466563348955

namespace A285975

/-- `A127254(eq[1, A277822(n)-A127254(n)])` -/
def P4012903466563348955.Spec : Prop :=
  ∀ n, P4012903466563348955.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P18431060810207650544

`A010060(lt[A010060(2*n+1), A268676(n+1)])`
-/

namespace A285975.P18431060810207650544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285975.P18431060810207650544

namespace A285975

/-- `A010060(lt[A010060(2*n+1), A268676(n+1)])` -/
def P18431060810207650544.Spec : Prop :=
  ∀ n, P18431060810207650544.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P10460682728917119946

`A010060(lt[A010060(2*n+1), A268727(n+1)])`
-/

namespace A285975.P10460682728917119946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285975.P10460682728917119946

namespace A285975

/-- `A010060(lt[A010060(2*n+1), A268727(n+1)])` -/
def P10460682728917119946.Spec : Prop :=
  ∀ n, P10460682728917119946.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P11214557553702630662

`1-A286484(A286486(n+1)+1)`
-/

namespace A285975.P11214557553702630662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286484 (A286486 (n + 1) + 1).toNat

end

end A285975.P11214557553702630662

namespace A285975

/-- `1-A286484(A286486(n+1)+1)` -/
def P11214557553702630662.Spec : Prop :=
  ∀ n, P11214557553702630662.a n = A285975 (n + 1)

end A285975

/-! ## A285975.P15196021985484945187

`A285092(Δ[n²])%2`
-/

namespace A285975.P15196021985484945187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 2

end

end A285975.P15196021985484945187

namespace A285975

/-- `A285092(Δ[n²])%2` -/
def P15196021985484945187.Spec : Prop :=
  ∀ n, P15196021985484945187.a n = A285975 (n + 1)

end A285975

/-!
# A285976: Positions of 0 in A285975; complement of A285977.

The programs for A285976, the canonical program `A285976.P3167710353206823821` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285976 has offset 1).

The definition of A285976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285976.P13958676603558207230

`comp[A091855(n+1)]+1+n`
-/

namespace A285976.P13958676603558207230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A285976.P13958676603558207230

namespace A285976

/-- `comp[A091855(n+1)]+1+n` -/
def P13958676603558207230.Spec : Prop :=
  ∀ n, (P13958676603558207230.a n : ℤ) = A285976 (n + 1)

end A285976

/-! ## A285976.P12195191656663453809

`record[xor(3, n)]-A284934(n+1)`
-/

namespace A285976.P12195191656663453809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A284934 (n + 1)

end

end A285976.P12195191656663453809

namespace A285976

/-- `record[xor(3, n)]-A284934(n+1)` -/
def P12195191656663453809.Spec : Prop :=
  ∀ n, P12195191656663453809.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P3167710353206823821

`record[xor(n+1, A010060(n))]+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285976

/-- `record[xor(n+1, A010060(n))]+n` -/
def P3167710353206823821.Spec : Prop :=
  ∀ n, P3167710353206823821.a n = A285976 (n + 1)

theorem P3167710353206823821.correct : P3167710353206823821.Spec := by
  intro n
  simp only [A285976, Nat.add_sub_cancel]

end A285976

/-! ## A285976.P2835180290349635515

`a(n-1)+A104248(n)+1` with `a(0)=1`
-/

namespace A285976.P2835180290349635515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A104248 n + 1)

end

end A285976.P2835180290349635515

namespace A285976

/-- `a(n-1)+A104248(n)+1` -/
def P2835180290349635515.Spec : Prop :=
  ∀ n, P2835180290349635515.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P1801839069302562210

`eq[1, A127254(2*n)]+n+1`
-/

namespace A285976.P1801839069302562210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A285976.P1801839069302562210

namespace A285976

/-- `eq[1, A127254(2*n)]+n+1` -/
def P1801839069302562210.Spec : Prop :=
  ∀ n, (P1801839069302562210.a n : ℤ) = A285976 (n + 1)

end A285976

/-! ## A285976.P9036621979507175817

`comp[A003159(comp[2*n])]+n+1`
-/

namespace A285976.P9036621979507175817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1)

end

end A285976.P9036621979507175817

namespace A285976

/-- `comp[A003159(comp[2*n])]+n+1` -/
def P9036621979507175817.Spec : Prop :=
  ∀ n, (P9036621979507175817.a n : ℤ) = A285976 (n + 1)

end A285976

/-! ## A285976.P1045730408477348801

`A004767(n)-A284934(n+1)`
-/

namespace A285976.P1045730408477348801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A284934 (n + 1)

end

end A285976.P1045730408477348801

namespace A285976

/-- `A004767(n)-A284934(n+1)` -/
def P1045730408477348801.Spec : Prop :=
  ∀ n, P1045730408477348801.a n = A285976 (n + 1)

theorem P1045730408477348801.correct : P1045730408477348801.Spec := by
  intro n
  simp only [A285976, Nat.add_sub_cancel, A285976.P1045730408477348801.a, A285976.P3167710353206823821.f1, A285976.P3167710353206823821.a, A004767, A004767.P13352534504447192883.a, A010060, A010060.P3080921269106500717.a, A284934, A284934.P7002224388800912769.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285976

/-! ## A285976.P11288915674071275144

`∑[A104248(n+1)+1]-A104248(n+1)`
-/

namespace A285976.P11288915674071275144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104248 (n + 1)

end

end A285976.P11288915674071275144

namespace A285976

/-- `∑[A104248(n+1)+1]-A104248(n+1)` -/
def P11288915674071275144.Spec : Prop :=
  ∀ n, P11288915674071275144.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P176371026689522854

`A286050(n+1)+A286051(n+1)-A284934(n+1)`
-/

namespace A285976.P176371026689522854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286050 (n + 1) + (A286051 (n + 1) - A284934 (n + 1))

end

end A285976.P176371026689522854

namespace A285976

/-- `A286050(n+1)+A286051(n+1)-A284934(n+1)` -/
def P176371026689522854.Spec : Prop :=
  ∀ n, P176371026689522854.a n = A285976 (n + 1)

theorem P176371026689522854.correct : P176371026689522854.Spec := by
  intro n
  simp only [A285976, Nat.add_sub_cancel, A285976.P176371026689522854.a, A285976.P3167710353206823821.f1, A285976.P3167710353206823821.a, A010060, A010060.P3080921269106500717.a, A284934, A284934.P7002224388800912769.a, A286050, A286050.P16642162876214931589.f1, A286050.P16642162876214931589.a, A286051, A286051.P3921126115596038729.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A285957, A285957.P3290287961644241447.f1, A285957.P3290287961644241447.f2, A285957.P3290287961644241447.a, A005187, A005187.P3874015513960485494.a, A127254, A127254.P8491110763917439245.a, A101671, A101671.P12160402881735965879.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285976

/-! ## A285976.P8938892085649297404

`A285959(n+1)+∑[A285973(n+1)-A285959(n+1)]`
-/

namespace A285976.P8938892085649297404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285973 (n + 1) - A285959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285976.P8938892085649297404

namespace A285976

/-- `A285959(n+1)+∑[A285973(n+1)-A285959(n+1)]` -/
def P8938892085649297404.Spec : Prop :=
  ∀ n, P8938892085649297404.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P17644482032392302300

`ceil(A260480(2*n+1)/2)`
-/

namespace A285976.P17644482032392302300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260480 (2 * n + 1) : ℚ) / 2⌉

end

end A285976.P17644482032392302300

namespace A285976

/-- `ceil(A260480(2*n+1)/2)` -/
def P17644482032392302300.Spec : Prop :=
  ∀ n, P17644482032392302300.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P12669533658524991190

`A286485(2*n+1)-2*n`
-/

namespace A285976.P12669533658524991190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286485 (2 * n + 1) - (2 * n : ℤ)

end

end A285976.P12669533658524991190

namespace A285976

/-- `A286485(2*n+1)-2*n` -/
def P12669533658524991190.Spec : Prop :=
  ∀ n, P12669533658524991190.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P11559748950499192606

`∑[A284388(2*n+1)]+2*n+1`
-/

namespace A285976.P11559748950499192606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A285976.P11559748950499192606

namespace A285976

/-- `∑[A284388(2*n+1)]+2*n+1` -/
def P11559748950499192606.Spec : Prop :=
  ∀ n, P11559748950499192606.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P14963361702998185543

`∑[A026465(A065190(2*n+1))]+n`
-/

namespace A285976.P14963361702998185543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A065190 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A285976.P14963361702998185543

namespace A285976

/-- `∑[A026465(A065190(2*n+1))]+n` -/
def P14963361702998185543.Spec : Prop :=
  ∀ n, P14963361702998185543.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P10776426943601977220

`A285968(n+1)-A286049(2*(n+1))`
-/

namespace A285976.P10776426943601977220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285968 (n + 1) - A286049 (2 * (n + 1))

end

end A285976.P10776426943601977220

namespace A285976

/-- `A285968(n+1)-A286049(2*(n+1))` -/
def P10776426943601977220.Spec : Prop :=
  ∀ n, P10776426943601977220.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P2173580908058225634

`lt[A285975(n+1), 1]+1`
-/

namespace A285976.P2173580908058225634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285975 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285976.P2173580908058225634

namespace A285976

/-- `lt[A285975(n+1), 1]+1` -/
def P2173580908058225634.Spec : Prop :=
  ∀ n, (P2173580908058225634.a n : ℤ) = A285976 (n + 1)

end A285976

/-! ## A285976.P5741362573089046051

`A115384(A091855(n+1))+n`
-/

namespace A285976.P5741362573089046051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A091855 (n + 1)).toNat + (n : ℤ)

end

end A285976.P5741362573089046051

namespace A285976

/-- `A115384(A091855(n+1))+n` -/
def P5741362573089046051.Spec : Prop :=
  ∀ n, P5741362573089046051.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P2049893723391132836

`A008619(A003159(2*n+1))+n`
-/

namespace A285976.P2049893723391132836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003159 (2 * n + 1)).toNat + (n : ℤ)

end

end A285976.P2049893723391132836

namespace A285976

/-- `A008619(A003159(2*n+1))+n` -/
def P2049893723391132836.Spec : Prop :=
  ∀ n, P2049893723391132836.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P15993582458182429257

`A115384(A121539(2*n+1))+n+1`
-/

namespace A285976.P15993582458182429257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A121539 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A285976.P15993582458182429257

namespace A285976

/-- `A115384(A121539(2*n+1))+n+1` -/
def P15993582458182429257.Spec : Prop :=
  ∀ n, P15993582458182429257.a n = A285976 (n + 1)

end A285976

/-! ## A285976.P10934218582600869364

`A004525(A171946(2*(n+1)))+n`
-/

namespace A285976.P10934218582600869364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A171946 (2 * (n + 1))).toNat + (n : ℤ)

end

end A285976.P10934218582600869364

namespace A285976

/-- `A004525(A171946(2*(n+1)))+n` -/
def P10934218582600869364.Spec : Prop :=
  ∀ n, P10934218582600869364.a n = A285976 (n + 1)

end A285976

/-!
# A285977: Positions of 1 in A285975; complement of A285976.

The programs for A285977, the canonical program `A285977.P1218866237928235629` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285977 has offset 1).

The definition of A285977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285977.P690040006583524496

`∑[char[round(xor(n, 2*n)/2)]+1]`
-/

namespace A285977.P690040006583524496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (2 * n) : ℚ) / 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P690040006583524496

namespace A285977

/-- `∑[char[round(xor(n, 2*n)/2)]+1]` -/
def P690040006583524496.Spec : Prop :=
  ∀ n, (P690040006583524496.a n : ℤ) = A285977 (n + 1)

end A285977

/-! ## A285977.P16562517084802829361

`∑[char[-xor(n, -ceil(n/2))]+1]`
-/

namespace A285977.P16562517084802829361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-⌈(n : ℚ) / 2⌉)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P16562517084802829361

namespace A285977

/-- `∑[char[-xor(n, -ceil(n/2))]+1]` -/
def P16562517084802829361.Spec : Prop :=
  ∀ n, (P16562517084802829361.a n : ℤ) = A285977 (n + 1)

end A285977

/-! ## A285977.P15472689405104902277

`∑[char[1-char[xor(n, 2*n)]+n]+1]`
-/

namespace A285977.P15472689405104902277
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P15472689405104902277

namespace A285977

/-- `∑[char[1-char[xor(n, 2*n)]+n]+1]` -/
def P15472689405104902277.Spec : Prop :=
  ∀ n, (P15472689405104902277.a n : ℤ) = A285977 (n + 1)

end A285977

/-! ## A285977.P1218866237928235629

`∑[gcd(2, A101671(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285977

/-- `∑[gcd(2, A101671(n))]` -/
def P1218866237928235629.Spec : Prop :=
  ∀ n, (P1218866237928235629.a n : ℤ) = A285977 (n + 1)

theorem P1218866237928235629.correct : P1218866237928235629.Spec := by
  intro n
  simp only [A285977, Nat.add_sub_cancel]

end A285977

/-! ## A285977.P13759578215444569774

`∑[A127254(2*n)+1]`
-/

namespace A285977.P13759578215444569774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P13759578215444569774

namespace A285977

/-- `∑[A127254(2*n)+1]` -/
def P13759578215444569774.Spec : Prop :=
  ∀ n, P13759578215444569774.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P10812349747756975310

`∑[A268727(n)%2+1]`
-/

namespace A285977.P10812349747756975310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268727 n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P10812349747756975310

namespace A285977

/-- `∑[A268727(n)%2+1]` -/
def P10812349747756975310.Spec : Prop :=
  ∀ n, P10812349747756975310.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P17248573753934382514

`∑[char[A010060(n)+n]+1]`
-/

namespace A285977.P17248573753934382514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P17248573753934382514

namespace A285977

/-- `∑[char[A010060(n)+n]+1]` -/
def P17248573753934382514.Spec : Prop :=
  ∀ n, (P17248573753934382514.a n : ℤ) = A285977 (n + 1)

end A285977

/-! ## A285977.P11190565644145373935

`3*(n+1)-A285958(n+1)`
-/

namespace A285977.P11190565644145373935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A285958 (n + 1)

end

end A285977.P11190565644145373935

namespace A285977

/-- `3*(n+1)-A285958(n+1)` -/
def P11190565644145373935.Spec : Prop :=
  ∀ n, P11190565644145373935.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P16342626710765273375

`∑[2-char[A003159(2*n+1)]]`
-/

namespace A285977.P16342626710765273375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P16342626710765273375

namespace A285977

/-- `∑[2-char[A003159(2*n+1)]]` -/
def P16342626710765273375.Spec : Prop :=
  ∀ n, P16342626710765273375.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P15670923685373949969

`A285967(n+1)+A010059(n)`
-/

namespace A285977.P15670923685373949969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285967 (n + 1) + A010059 n

end

end A285977.P15670923685373949969

namespace A285977

/-- `A285967(n+1)+A010059(n)` -/
def P15670923685373949969.Spec : Prop :=
  ∀ n, P15670923685373949969.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P5463992876148261020

`A285974(n+1)+A123087(n)`
-/

namespace A285977.P5463992876148261020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285974 (n + 1) + A123087 n

end

end A285977.P5463992876148261020

namespace A285977

/-- `A285974(n+1)+A123087(n)` -/
def P5463992876148261020.Spec : Prop :=
  ∀ n, P5463992876148261020.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P1220165158621243595

`∑[2/gcd(A001285(n), A316826(n))]`
-/

namespace A285977.P1220165158621243595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Int.gcd (A001285 n) (A316826 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P1220165158621243595

namespace A285977

/-- `∑[2/gcd(A001285(n), A316826(n))]` -/
def P1220165158621243595.Spec : Prop :=
  ∀ n, P1220165158621243595.a n = (A285977 (n + 1) : ℚ)

end A285977

/-! ## A285977.P5348741601356560935

`A285967(n+1)+1-A010060(n)`
-/

namespace A285977.P5348741601356560935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285967 (n + 1) + (1 - A010060 n)

end

end A285977.P5348741601356560935

namespace A285977

/-- `A285967(n+1)+1-A010060(n)` -/
def P5348741601356560935.Spec : Prop :=
  ∀ n, P5348741601356560935.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P1667409175595479796

`A285953(n+1)-A285962(n+1)`
-/

namespace A285977.P1667409175595479796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1) - A285962 (n + 1)

end

end A285977.P1667409175595479796

namespace A285977

/-- `A285953(n+1)-A285962(n+1)` -/
def P1667409175595479796.Spec : Prop :=
  ∀ n, P1667409175595479796.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P6549349306639830642

`A285967(n+1)+2-A001285(n)`
-/

namespace A285977.P6549349306639830642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285967 (n + 1) + (2 - A001285 n)

end

end A285977.P6549349306639830642

namespace A285977

/-- `A285967(n+1)+2-A001285(n)` -/
def P6549349306639830642.Spec : Prop :=
  ∀ n, P6549349306639830642.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P18065051274156467479

`∑[A268726(2*n*a(n-1)+1)]+n+1` with `a(0)=1`
-/

namespace A285977.P18065051274156467479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A268726 ((2 * n : ℤ) * f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A285977.P18065051274156467479

namespace A285977

/-- `∑[A268726(2*n*a(n-1)+1)]+n+1` -/
def P18065051274156467479.Spec : Prop :=
  ∀ n, P18065051274156467479.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P4158964889766254498

`A285967(n+1)+A010060(2*n+1)`
-/

namespace A285977.P4158964889766254498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285967 (n + 1) + A010060 (2 * n + 1)

end

end A285977.P4158964889766254498

namespace A285977

/-- `A285967(n+1)+A010060(2*n+1)` -/
def P4158964889766254498.Spec : Prop :=
  ∀ n, P4158964889766254498.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P4947144735222951562

`A285980(A285962(n+1))`
-/

namespace A285977.P4947144735222951562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285980 (A285962 (n + 1)).toNat

end

end A285977.P4947144735222951562

namespace A285977

/-- `A285980(A285962(n+1))` -/
def P4947144735222951562.Spec : Prop :=
  ∀ n, P4947144735222951562.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P11251876532847854159

`A285980(A285974(n+1)-1)`
-/

namespace A285977.P11251876532847854159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285980 (A285974 (n + 1) - 1).toNat

end

end A285977.P11251876532847854159

namespace A285977

/-- `A285980(A285974(n+1)-1)` -/
def P11251876532847854159.Spec : Prop :=
  ∀ n, P11251876532847854159.a n = A285977 (n + 1)

end A285977

/-! ## A285977.P110085319566017976

`filter[n+1, A285975(#)]`
-/

namespace A285977.P110085319566017976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285975 (f1 j) = 1) n)

end

end A285977.P110085319566017976

namespace A285977

/-- `filter[n+1, A285975(#)]` -/
def P110085319566017976.Spec : Prop :=
  ∀ n, (P110085319566017976.a n : ℤ) = A285977 (n + 1)

end A285977

/-!
# A285978: {00->1}-transform of the Thue-Morse word A010060.

The programs for A285978, the canonical program `A285978.P4350401160499057966` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285978 has offset 1).

The definition of A285978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285978.P15383573908929814564

`char[A285980(n+1)-1]`
-/

namespace A285978.P15383573908929814564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285980 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285978.P15383573908929814564

namespace A285978

/-- `char[A285980(n+1)-1]` -/
def P15383573908929814564.Spec : Prop :=
  ∀ n, (P15383573908929814564.a n : ℤ) = A285978 (n + 1)

end A285978

/-! ## A285978.P4350401160499057966

`1-char[A285979(n+1)-1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285978

/-- `1-char[A285979(n+1)-1]` -/
def P4350401160499057966.Spec : Prop :=
  ∀ n, P4350401160499057966.a n = A285978 (n + 1)

theorem P4350401160499057966.correct : P4350401160499057966.Spec := by
  intro n
  simp only [A285978, Nat.add_sub_cancel]

end A285978

/-! ## A285978.P2702383487013510508

`floor(C(3, Δ[A286491(n+1)])/2)`
-/

namespace A285978.P2702383487013510508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose 3 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A285978.P2702383487013510508

namespace A285978

/-- `floor(C(3, Δ[A286491(n+1)])/2)` -/
def P2702383487013510508.Spec : Prop :=
  ∀ n, P2702383487013510508.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P12208728781081723159

`A010060(Δ[A286491(n+1)])`
-/

namespace A285978.P12208728781081723159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f1 (n + 1) - f1 n).toNat

end

end A285978.P12208728781081723159

namespace A285978

/-- `A010060(Δ[A286491(n+1)])` -/
def P12208728781081723159.Spec : Prop :=
  ∀ n, P12208728781081723159.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P4697637128412172129

`A286530(Δ[A286491(n+1)])`
-/

namespace A285978.P4697637128412172129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (f1 (n + 1) - f1 n).toNat

end

end A285978.P4697637128412172129

namespace A285978

/-- `A286530(Δ[A286491(n+1)])` -/
def P4697637128412172129.Spec : Prop :=
  ∀ n, P4697637128412172129.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P17375115170444715732

`1-A302242(Δ[A286491(n+1)])`
-/

namespace A285978.P17375115170444715732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A302242 (f1 (n + 1) - f1 n).toNat

end

end A285978.P17375115170444715732

namespace A285978

/-- `1-A302242(Δ[A286491(n+1)])` -/
def P17375115170444715732.Spec : Prop :=
  ∀ n, P17375115170444715732.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P4417383670709910660

`2-A213212(Δ[A286491(n+1)])`
-/

namespace A285978.P4417383670709910660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A213212 (f1 (n + 1) - f1 n).toNat

end

end A285978.P4417383670709910660

namespace A285978

/-- `2-A213212(Δ[A286491(n+1)])` -/
def P4417383670709910660.Spec : Prop :=
  ∀ n, P4417383670709910660.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P14315294963381855801

`val(A051664(Δ[A286491(n+1)]), 2)`
-/

namespace A285978.P14315294963381855801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051664 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A285978.P14315294963381855801

namespace A285978

/-- `val(A051664(Δ[A286491(n+1)]), 2)` -/
def P14315294963381855801.Spec : Prop :=
  ∀ n, (P14315294963381855801.a n : ℤ) = A285978 (n + 1)

end A285978

/-! ## A285978.P1262987609271418134

`val(A286535(Δ[A286491(n+1)]), 2)`
-/

namespace A285978.P1262987609271418134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286535 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A285978.P1262987609271418134

namespace A285978

/-- `val(A286535(Δ[A286491(n+1)]), 2)` -/
def P1262987609271418134.Spec : Prop :=
  ∀ n, (P1262987609271418134.a n : ℤ) = A285978 (n + 1)

end A285978

/-! ## A285978.P17744340803412433340

`A010060(A286491(n+2)-A286491(n+1))`
-/

namespace A285978.P17744340803412433340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A286491 (n + 2) - A286491 (n + 1)).toNat

end

end A285978.P17744340803412433340

namespace A285978

/-- `A010060(A286491(n+2)-A286491(n+1))` -/
def P17744340803412433340.Spec : Prop :=
  ∀ n, P17744340803412433340.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P642347559132363416

`A140080(A286491(n+2)-A286491(n+1))`
-/

namespace A285978.P642347559132363416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A286491 (n + 2) - A286491 (n + 1)).toNat

end

end A285978.P642347559132363416

namespace A285978

/-- `A140080(A286491(n+2)-A286491(n+1))` -/
def P642347559132363416.Spec : Prop :=
  ∀ n, P642347559132363416.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P3320860892496772556

`A286530(A286491(n+2)-A286491(n+1))`
-/

namespace A285978.P3320860892496772556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (A286491 (n + 2) - A286491 (n + 1)).toNat

end

end A285978.P3320860892496772556

namespace A285978

/-- `A286530(A286491(n+2)-A286491(n+1))` -/
def P3320860892496772556.Spec : Prop :=
  ∀ n, P3320860892496772556.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P2424694097707389809

`A286490(A286491(n+2)-A286491(n+1)+1)`
-/

namespace A285978.P2424694097707389809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286490 (A286491 (n + 2) - A286491 (n + 1) + 1).toNat

end

end A285978.P2424694097707389809

namespace A285978

/-- `A286490(A286491(n+2)-A286491(n+1)+1)` -/
def P2424694097707389809.Spec : Prop :=
  ∀ n, P2424694097707389809.a n = A285978 (n + 1)

end A285978

/-! ## A285978.P8944925716050359611

`2-A000120(A286491(n+2)-A286491(n+1))`
-/

namespace A285978.P8944925716050359611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000120 (A286491 (n + 2) - A286491 (n + 1)).toNat

end

end A285978.P8944925716050359611

namespace A285978

/-- `2-A000120(A286491(n+2)-A286491(n+1))` -/
def P8944925716050359611.Spec : Prop :=
  ∀ n, P8944925716050359611.a n = A285978 (n + 1)

end A285978

/-!
# A285979: Positions of 0 in A285978; complement of A285980.

The programs for A285979, the canonical program `A285979.P980250076451766351` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285979 has offset 1).

The definition of A285979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285979.P980250076451766351

`A001651(A284393(n+1))+2*n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285979

/-- `A001651(A284393(n+1))+2*n` -/
def P980250076451766351.Spec : Prop :=
  ∀ n, P980250076451766351.a n = A285979 (n + 1)

theorem P980250076451766351.correct : P980250076451766351.Spec := by
  intro n
  simp only [A285979, Nat.add_sub_cancel]

end A285979

/-! ## A285979.P4094279306323410369

`eq[0, A285978(n+1)]+1`
-/

namespace A285979.P4094279306323410369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285979.P4094279306323410369

namespace A285979

/-- `eq[0, A285978(n+1)]+1` -/
def P4094279306323410369.Spec : Prop :=
  ∀ n, (P4094279306323410369.a n : ℤ) = A285979 (n + 1)

end A285979

/-! ## A285979.P11213815770768398204

`lt[2, Δ[A286491(n+1)]]+1`
-/

namespace A285979.P11213815770768398204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285979.P11213815770768398204

namespace A285979

/-- `lt[2, Δ[A286491(n+1)]]+1` -/
def P11213815770768398204.Spec : Prop :=
  ∀ n, (P11213815770768398204.a n : ℤ) = A285979 (n + 1)

end A285979

/-! ## A285979.P3404347923420997797

`lt[n*char[A285980(n+1)], n]`
-/

namespace A285979.P3404347923420997797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285980 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285979.P3404347923420997797

namespace A285979

/-- `lt[n*char[A285980(n+1)], n]` -/
def P3404347923420997797.Spec : Prop :=
  ∀ n, (P3404347923420997797.a n : ℤ) = A285979 (n + 1)

end A285979

/-! ## A285979.P6445811352288148309

`lt[char[A285980(n+1)], A285975(n+1)]`
-/

namespace A285979.P6445811352288148309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285980 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285979.P6445811352288148309

namespace A285979

/-- `lt[char[A285980(n+1)], A285975(n+1)]` -/
def P6445811352288148309.Spec : Prop :=
  ∀ n, (P6445811352288148309.a n : ℤ) = A285979 (n + 1)

end A285979

/-! ## A285979.P8946213300470984955

`record[n+1-A006124(n)*A285978(n+1)]`
-/

namespace A285979.P8946213300470984955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006124 n * A285978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285979.P8946213300470984955

namespace A285979

/-- `record[n+1-A006124(n)*A285978(n+1)]` -/
def P8946213300470984955.Spec : Prop :=
  ∀ n, P8946213300470984955.a n = A285979 (n + 1)

end A285979

/-! ## A285979.P2917161855053161201

`record[n+1-A014442(n+1)*A285978(n+1)]`
-/

namespace A285979.P2917161855053161201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014442 (n + 1) * A285978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285979.P2917161855053161201

namespace A285979

/-- `record[n+1-A014442(n+1)*A285978(n+1)]` -/
def P2917161855053161201.Spec : Prop :=
  ∀ n, P2917161855053161201.a n = A285979 (n + 1)

end A285979

/-! ## A285979.P12692528308216054187

`record[n+1-A045468(n+1)*A285978(n+1)]`
-/

namespace A285979.P12692528308216054187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045468 (n + 1) * A285978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285979.P12692528308216054187

namespace A285979

/-- `record[n+1-A045468(n+1)*A285978(n+1)]` -/
def P12692528308216054187.Spec : Prop :=
  ∀ n, P12692528308216054187.a n = A285979 (n + 1)

end A285979

/-! ## A285979.P115018222980865269

`record[n+1-A079705(n+1)*A285978(n+1)]`
-/

namespace A285979.P115018222980865269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A079705 (n + 1) * A285978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285979.P115018222980865269

namespace A285979

/-- `record[n+1-A079705(n+1)*A285978(n+1)]` -/
def P115018222980865269.Spec : Prop :=
  ∀ n, P115018222980865269.a n = A285979 (n + 1)

end A285979

/-! ## A285979.P3937320108584763881

`record[n+1-A110227(n+1)*A285978(n+1)]`
-/

namespace A285979.P3937320108584763881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A110227 (n + 1) * A285978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285979.P3937320108584763881

namespace A285979

/-- `record[n+1-A110227(n+1)*A285978(n+1)]` -/
def P3937320108584763881.Spec : Prop :=
  ∀ n, P3937320108584763881.a n = A285979 (n + 1)

end A285979

/-! ## A285979.P14340632068305840281

`record[gcd(n+1, A001222(n+1)*A285978(n+1))]`
-/

namespace A285979.P14340632068305840281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001222 (n + 1) * A285978 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285979.P14340632068305840281

namespace A285979

/-- `record[gcd(n+1, A001222(n+1)*A285978(n+1))]` -/
def P14340632068305840281.Spec : Prop :=
  ∀ n, (P14340632068305840281.a n : ℤ) = A285979 (n + 1)

end A285979

/-! ## A285979.P2401920935037489620

`record[n+1-A117142(n+1)*A285978(n+1)]`
-/

namespace A285979.P2401920935037489620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A117142 (n + 1) * A285978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285979.P2401920935037489620

namespace A285979

/-- `record[n+1-A117142(n+1)*A285978(n+1)]` -/
def P2401920935037489620.Spec : Prop :=
  ∀ n, P2401920935037489620.a n = A285979 (n + 1)

end A285979

/-!
# A285980: Positions of 1 in A285978; complement of A285979.

The programs for A285980, the canonical program `A285980.P9702020314867581309` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285980 has offset 1).

The definition of A285980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285980.P1592083420180480926

`A360394(n+1)-(n+1)`
-/

namespace A285980.P1592083420180480926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360394 (n + 1) - (n + 1 : ℤ)

end

end A285980.P1592083420180480926

namespace A285980

/-- `A360394(n+1)-(n+1)` -/
def P1592083420180480926.Spec : Prop :=
  ∀ n, P1592083420180480926.a n = A285980 (n + 1)

theorem P1592083420180480926.correct : P1592083420180480926.Spec := by
  intro n
  simp only [A285980, Nat.add_sub_cancel, A285980.P1592083420180480926.a, A285980.P9702020314867581309.f2, A285980.P9702020314867581309.f1, A285980.P9702020314867581309.a, A285979, A285979.P980250076451766351.a, A360394, A360394.P3572718822950874198.a, A001651, A001651.P13723075172717705446.a, A284393, A284393.P6879948023271449569.f1, A284393.P6879948023271449569.f2, A284393.P6879948023271449569.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285980

/-! ## A285980.P9702020314867581309

`∑[char[A285979(n+1)-(n+1)]+1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285980

/-- `∑[char[A285979(n+1)-(n+1)]+1]` -/
def P9702020314867581309.Spec : Prop :=
  ∀ n, (P9702020314867581309.a n : ℤ) = A285980 (n + 1)

theorem P9702020314867581309.correct : P9702020314867581309.Spec := by
  intro n
  simp only [A285980, Nat.add_sub_cancel]

end A285980

/-! ## A285980.P2400522801577569603

`filter[n+1, A285978(#)]`
-/

namespace A285980.P2400522801577569603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285978 (f1 j) = 1) n)

end

end A285980.P2400522801577569603

namespace A285980

/-- `filter[n+1, A285978(#)]` -/
def P2400522801577569603.Spec : Prop :=
  ∀ n, (P2400522801577569603.a n : ℤ) = A285980 (n + 1)

end A285980

/-! ## A285980.P16766222742217828599

`eq[1, A285978(n+1)]+1`
-/

namespace A285980.P16766222742217828599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285980.P16766222742217828599

namespace A285980

/-- `eq[1, A285978(n+1)]+1` -/
def P16766222742217828599.Spec : Prop :=
  ∀ n, (P16766222742217828599.a n : ℤ) = A285980 (n + 1)

end A285980

/-! ## A285980.P1875899854321392936

`record[2*A285978(n+2)+n]`
-/

namespace A285980.P1875899854321392936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285978 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285980.P1875899854321392936

namespace A285980

/-- `record[2*A285978(n+2)+n]` -/
def P1875899854321392936.Spec : Prop :=
  ∀ n, P1875899854321392936.a n = A285980 (n + 1)

end A285980

/-! ## A285980.P12226266068521417660

`record[n-A285978(a(n-1)+1)]` with `a(0)=2`
-/

namespace A285980.P12226266068521417660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) - A285978 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285980.P12226266068521417660

namespace A285980

/-- `record[n-A285978(a(n-1)+1)]` -/
def P12226266068521417660.Spec : Prop :=
  ∀ n, P12226266068521417660.a n = A285980 (n + 1)

end A285980

/-! ## A285980.P5183143632248317500

`eq[1, A213212(Δ[A286491(n+1)])]+1`
-/

namespace A285980.P5183143632248317500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213212 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285980.P5183143632248317500

namespace A285980

/-- `eq[1, A213212(Δ[A286491(n+1)])]+1` -/
def P5183143632248317500.Spec : Prop :=
  ∀ n, (P5183143632248317500.a n : ℤ) = A285980 (n + 1)

end A285980

/-! ## A285980.P5434985646425747399

`lt[A286535(Δ[A286491(n+1)]), 3]+1`
-/

namespace A285980.P5434985646425747399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286535 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A285980.P5434985646425747399

namespace A285980

/-- `lt[A286535(Δ[A286491(n+1)]), 3]+1` -/
def P5434985646425747399.Spec : Prop :=
  ∀ n, (P5434985646425747399.a n : ℤ) = A285980 (n + 1)

end A285980

/-! ## A285980.P652970382492136887

`eq[2, A000005(Δ[A286491(n+1)]+1)]+1`
-/

namespace A285980.P652970382492136887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285980.P652970382492136887

namespace A285980

/-- `eq[2, A000005(Δ[A286491(n+1)]+1)]+1` -/
def P652970382492136887.Spec : Prop :=
  ∀ n, (P652970382492136887.a n : ℤ) = A285980 (n + 1)

end A285980

/-! ## A285980.P16779135536996154976

`∑[A026465(A065190(2*n+1)+A026465(2*n+1))]`
-/

namespace A285980.P16779135536996154976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A065190 (2 * n + 1) + A026465 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285980.P16779135536996154976

namespace A285980

/-- `∑[A026465(A065190(2*n+1)+A026465(2*n+1))]` -/
def P16779135536996154976.Spec : Prop :=
  ∀ n, P16779135536996154976.a n = A285980 (n + 1)

end A285980

/-! ## A285980.P17945871573467875607

`∑[A001285(A171946(2*n+1)+2)]`
-/

namespace A285980.P17945871573467875607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A171946 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285980.P17945871573467875607

namespace A285980

/-- `∑[A001285(A171946(2*n+1)+2)]` -/
def P17945871573467875607.Spec : Prop :=
  ∀ n, P17945871573467875607.a n = A285980 (n + 1)

end A285980

/-! ## A285980.P17829977915232417606

`A092278(A108269(2*(n+1)))-n`
-/

namespace A285980.P17829977915232417606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (A108269 (2 * (n + 1))).toNat - (n : ℤ)

end

end A285980.P17829977915232417606

namespace A285980

/-- `A092278(A108269(2*(n+1)))-n` -/
def P17829977915232417606.Spec : Prop :=
  ∀ n, P17829977915232417606.a n = A285980 (n + 1)

end A285980

/-!
# A285981: Number of Carlitz compositions having at least two identical parts.

The programs for A285981, there is no canonical definition to state claims against.
-/

/-! ## A285981.P5210856459663355463

`A003242(n)-A032020(n)`
-/

namespace A285981.P5210856459663355463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A032020 n

end

end A285981.P5210856459663355463

/-! ## A285981.P3622480673832859922

`A025047(n)+A345195(n)-A032020(n)`
-/

namespace A285981.P3622480673832859922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + (A345195 n - A032020 n)

end

end A285981.P3622480673832859922

/-! ## A285981.P4904294863081529568

`A261962(n)+A261984(n)-A032020(n)`
-/

namespace A285981.P4904294863081529568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261962 n + (A261984 n - A032020 n)

end

end A285981.P4904294863081529568

/-! ## A285981.P6327989518307012772

`A261982(n)-A261983(n)`
-/

namespace A285981.P6327989518307012772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261982 n - A261983 n

end

end A285981.P6327989518307012772

/-! ## A285981.P13909894461679091712

`A003242(n)+A261982(n)-A011782(n)`
-/

namespace A285981.P13909894461679091712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A261982 n - A011782 n)

end

end A285981.P13909894461679091712

/-! ## A285981.P14785136304551612253

`A011782(n)-(A261983(n)+A032020(n))`
-/

namespace A285981.P14785136304551612253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A261983 n + A032020 n)

end

end A285981.P14785136304551612253

/-! ## A285981.P9550687803279754067

`A106356(∑[n-1]+2)-A032020(n)`
-/

namespace A285981.P9550687803279754067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - A032020 n

end

end A285981.P9550687803279754067

/-! ## A285981.P14728562007822225528

`A003242(n)-A242447(A133263(n)-1)`
-/

namespace A285981.P14728562007822225528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A242447 (A133263 n - 1).toNat

end

end A285981.P14728562007822225528

/-!
# A285982: a(n) = n! (mod n + 3).

The programs for A285982, the canonical program `A285982.P17553920692165197678` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285982 has offset 0).

The definition of A285982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285982.P17553920692165197678

`n!%(n+3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285982

/-- `n!%(n+3)` -/
def P17553920692165197678.Spec : Prop :=
  ∀ n, (P17553920692165197678.a n : ℤ) = A285982 n

theorem P17553920692165197678.correct : P17553920692165197678.Spec := by
  intro n
  simp only [A285982]

end A285982

/-! ## A285982.P3132579805441674985

`∑{p}[n+3, C(#, n+1)%(n+2)]`
-/

namespace A285982.P3132579805441674985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1) % (n + 2)

end

end A285982.P3132579805441674985

namespace A285982

/-- `∑{p}[n+3, C(#, n+1)%(n+2)]` -/
def P3132579805441674985.Spec : Prop :=
  ∀ n, (P3132579805441674985.a n : ℤ) = A285982 n

end A285982

/-! ## A285982.P11105220152184824728

`∏{p}[n+3, C(#, n+1)]%(n+2)`
-/

namespace A285982.P11105220152184824728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1)) % (n + 2)

end

end A285982.P11105220152184824728

namespace A285982

/-- `∏{p}[n+3, C(#, n+1)]%(n+2)` -/
def P11105220152184824728.Spec : Prop :=
  ∀ n, (P11105220152184824728.a n : ℤ) = A285982 n

end A285982

/-! ## A285982.P1855825336819186029

`floor(C(A000010(n+3), n)/(n+1))`
-/

namespace A285982.P1855825336819186029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A000010 (n + 3)).toNat n : ℚ) / (n + 1 : ℚ)⌋

end

end A285982.P1855825336819186029

namespace A285982

/-- `floor(C(A000010(n+3), n)/(n+1))` -/
def P1855825336819186029.Spec : Prop :=
  ∀ n, P1855825336819186029.a n = A285982 n

end A285982

/-! ## A285982.P5512381228747340402

`C(A006530(n+3), n+1)%(n+2)`
-/

namespace A285982.P5512381228747340402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 3)).toNat (n + 1) % (n + 2)

end

end A285982.P5512381228747340402

namespace A285982

/-- `C(A006530(n+3), n+1)%(n+2)` -/
def P5512381228747340402.Spec : Prop :=
  ∀ n, (P5512381228747340402.a n : ℤ) = A285982 n

end A285982

/-! ## A285982.P9238359650553327322

`C(A020639(n+3), n+1)%(n+2)`
-/

namespace A285982.P9238359650553327322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 3)).toNat (n + 1) % (n + 2)

end

end A285982.P9238359650553327322

namespace A285982

/-- `C(A020639(n+3), n+1)%(n+2)` -/
def P9238359650553327322.Spec : Prop :=
  ∀ n, (P9238359650553327322.a n : ℤ) = A285982 n

end A285982

/-! ## A285982.P423412791697805655

`A106464(n)%A051543(n+1)`
-/

namespace A285982.P423412791697805655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106464 n) (A051543 (n + 1))

end

end A285982.P423412791697805655

namespace A285982

/-- `A106464(n)%A051543(n+1)` -/
def P423412791697805655.Spec : Prop :=
  ∀ n, P423412791697805655.a n = A285982 n

end A285982

/-! ## A285982.P3764775311943243794

`A055527(n+3)%A051543(n+1)`
-/

namespace A285982.P3764775311943243794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055527 (n + 3)) (A051543 (n + 1))

end

end A285982.P3764775311943243794

namespace A285982

/-- `A055527(n+3)%A051543(n+1)` -/
def P3764775311943243794.Spec : Prop :=
  ∀ n, P3764775311943243794.a n = A285982 n

end A285982

/-! ## A285982.P10779113658117320008

`C(A000010(2*A006530(n+3)), n)/(n+1)`
-/

namespace A285982.P10779113658117320008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000010 (2 * A006530 (n + 3)).toNat).toNat n : ℚ) / (n + 1 : ℚ)

end

end A285982.P10779113658117320008

namespace A285982

/-- `C(A000010(2*A006530(n+3)), n)/(n+1)` -/
def P10779113658117320008.Spec : Prop :=
  ∀ n, P10779113658117320008.a n = (A285982 n : ℚ)

end A285982

/-! ## A285982.P3725387708618833251

`C(A000010(n+3), n+1)/2*A001222(n+3)`
-/

namespace A285982.P3725387708618833251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000010 (n + 3)).toNat (n + 1) : ℚ) / 2 * (A001222 (n + 3) : ℚ)

end

end A285982.P3725387708618833251

namespace A285982

/-- `C(A000010(n+3), n+1)/2*A001222(n+3)` -/
def P3725387708618833251.Spec : Prop :=
  ∀ n, P3725387708618833251.a n = (A285982 n : ℚ)

end A285982

/-! ## A285982.P17966834905990184877

`(n+3-A181569(n+2))/2`
-/

namespace A285982.P17966834905990184877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A181569 (n + 2) : ℚ) / 2

end

end A285982.P17966834905990184877

namespace A285982

/-- `(n+3-A181569(n+2))/2` -/
def P17966834905990184877.Spec : Prop :=
  ∀ n, P17966834905990184877.a n = (A285982 n : ℚ)

end A285982

/-! ## A285982.P1679573844962496820

`C(A023022(n+3), n+1-A023022(n+3))`
-/

namespace A285982.P1679573844962496820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023022 (n + 3)).toNat ((n + 1 : ℤ) - A023022 (n + 3)).toNat

end

end A285982.P1679573844962496820

namespace A285982

/-- `C(A023022(n+3), n+1-A023022(n+3))` -/
def P1679573844962496820.Spec : Prop :=
  ∀ n, (P1679573844962496820.a n : ℤ) = A285982 n

end A285982

/-! ## A285982.P14691928549630188358

`C(A004526(A020639(n+3)), A004526(n+1))`
-/

namespace A285982.P14691928549630188358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A020639 (n + 3)).toNat).toNat (A004526 (n + 1)).toNat

end

end A285982.P14691928549630188358

namespace A285982

/-- `C(A004526(A020639(n+3)), A004526(n+1))` -/
def P14691928549630188358.Spec : Prop :=
  ∀ n, (P14691928549630188358.a n : ℤ) = A285982 n

end A285982

/-! ## A285982.P10303704442619680103

`A061006(n+3)/2`
-/

namespace A285982.P10303704442619680103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061006 (n + 3) : ℚ) / 2

end

end A285982.P10303704442619680103

namespace A285982

/-- `A061006(n+3)/2` -/
def P10303704442619680103.Spec : Prop :=
  ∀ n, P10303704442619680103.a n = (A285982 n : ℚ)

end A285982

/-! ## A285982.P2315823763762139698

`floor(A014973(n+3)/2)`
-/

namespace A285982.P2315823763762139698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014973 (n + 3) : ℚ) / 2⌋

end

end A285982.P2315823763762139698

namespace A285982

/-- `floor(A014973(n+3)/2)` -/
def P2315823763762139698.Spec : Prop :=
  ∀ n, P2315823763762139698.a n = A285982 n

end A285982

/-! ## A285982.P17015240728511512840

`(A089026(A063659(n+3))-1)/2`
-/

namespace A285982.P17015240728511512840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (A063659 (n + 3)).toNat - 1 : ℚ) / 2

end

end A285982.P17015240728511512840

namespace A285982

/-- `(A089026(A063659(n+3))-1)/2` -/
def P17015240728511512840.Spec : Prop :=
  ∀ n, P17015240728511512840.a n = (A285982 n : ℚ)

end A285982

/-! ## A285982.P12675822068466523990

`(A000010(n+3)/2)%A014963(n+3)`
-/

namespace A285982.P12675822068466523990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000010 (n + 3) : ℚ) / 2)) (A014963 (n + 3))

end

end A285982.P12675822068466523990

namespace A285982

/-- `(A000010(n+3)/2)%A014963(n+3)` -/
def P12675822068466523990.Spec : Prop :=
  ∀ n, P12675822068466523990.a n = A285982 n

end A285982

/-! ## A285982.P1930933379178277396

`C(A000010(2*A014963(n+3)), n)/(n+1)`
-/

namespace A285982.P1930933379178277396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000010 (2 * A014963 (n + 3)).toNat).toNat n : ℚ) / (n + 1 : ℚ)

end

end A285982.P1930933379178277396

namespace A285982

/-- `C(A000010(2*A014963(n+3)), n)/(n+1)` -/
def P1930933379178277396.Spec : Prop :=
  ∀ n, P1930933379178277396.a n = (A285982 n : ℚ)

end A285982

/-! ## A285982.P3890341998699320727

`C(A014963(n+3)+A008683(n+3), n)/(n+1)`
-/

namespace A285982.P3890341998699320727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A014963 (n + 3) + A008683 (n + 3)).toNat n : ℚ) / (n + 1 : ℚ)

end

end A285982.P3890341998699320727

namespace A285982

/-- `C(A014963(n+3)+A008683(n+3), n)/(n+1)` -/
def P3890341998699320727.Spec : Prop :=
  ∀ n, P3890341998699320727.a n = (A285982 n : ℚ)

end A285982

/-! ## A285982.P10014762425695628989

`round((n+2)/(∏{d}[n+3, #]-(n+1)))`
-/

namespace A285982.P10014762425695628989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ))

end

end A285982.P10014762425695628989

namespace A285982

/-- `round((n+2)/(∏{d}[n+3, #]-(n+1)))` -/
def P10014762425695628989.Spec : Prop :=
  ∀ n, P10014762425695628989.a n = A285982 n

end A285982

/-!
# A285983: Prime numbers p such that 3*p has distance <= 2 from the nearest twin prime number.

The programs for A285983, there is no canonical definition to state claims against.
-/

/-! ## A285983.P3314508873603052863

`∩[A197300(n+1), A284837(n+1)]`
-/

namespace A285983.P3314508873603052863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285983.P3314508873603052863

/-! ## A285983.P12036382041264231686

`eq[A003415(n), A351976(A356296(n+1))]`
-/

namespace A285983.P12036382041264231686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351976 (A356296 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285983.P12036382041264231686

/-! ## A285983.P5373667497574201752

`eq[A003415(n), A123221(A123221(n+3))]`
-/

namespace A285983.P5373667497574201752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123221 (A123221 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285983.P5373667497574201752

/-! ## A285983.P17821962637460916

`A008578(lt[A111520(n), A324750(3*n)])`
-/

namespace A285983.P17821962637460916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285983.P17821962637460916

/-! ## A285983.P15273274677589500904

`∩[A028864(n+1), A284837(n+1)]`
-/

namespace A285983.P15273274677589500904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285983.P15273274677589500904

/-!
# A285984: Numbers k such that 27*T(k)+1 is a square, where T(m) is the m-th triangular number A000217(m).

The programs for A285984, the canonical program `A285984.P16793630257044565405` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285984 has offset 0).

The definition of A285984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285984.P16793630257044565405

`485*a(n-2)+242+66*sqrt(54*a(n-2)²+54*a(n-2)+4)` with `a(0)=0, a(1)=110`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285984

/-- `485*a(n-2)+242+66*sqrt(54*a(n-2)²+54*a(n-2)+4)` -/
def P16793630257044565405.Spec : Prop :=
  ∀ n, P16793630257044565405.a n = (A285984 n : ℝ)

end A285984

/-!
# A285985: Numbers a(n) = (T(b(n)))^2, where T(b(n)) is the triangular number of b(n)= A000217(b(n)) and b(n)=A006451(n). Also a(n) = parameters K of the Bachet Mordell equation y^2=x^3+K, where x= T(b(n)) = A006454(n) and y= T(b(n))* sqrt(T(b(n))+1) = A285955(n).

The programs for A285985, there is no canonical definition to state claims against.
-/

/-! ## A285985.P15524372522179599062

`A006454(n)²`
-/

namespace A285985.P15524372522179599062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 n ^ 2

end

end A285985.P15524372522179599062

/-! ## A285985.P16715155481224693560

`A217278(Δ[n²])²`
-/

namespace A285985.P16715155481224693560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A285985.P16715155481224693560

/-! ## A285985.P15673954420066920714

`(1-A306561(n+1))²`
-/

namespace A285985.P15673954420066920714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A306561 (n + 1)) ^ 2

end

end A285985.P15673954420066920714

/-! ## A285985.P10418334821122586298

`C(A006451(n)+1, 2)²`
-/

namespace A285985.P10418334821122586298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006451 n + 1).toNat 2 ^ 2

end

end A285985.P10418334821122586298

/-! ## A285985.P5378309818054071811

`C(A364319(n+1), 2)²`
-/

namespace A285985.P5378309818054071811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A364319 (n + 1)).toNat 2 ^ 2

end

end A285985.P5378309818054071811

/-! ## A285985.P17413125277275082480

`(1-A006452(n+1)²)²`
-/

namespace A285985.P17413125277275082480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A006452 (n + 1) ^ 2) ^ 2

end

end A285985.P17413125277275082480

/-! ## A285985.P18195092386341638208

`A182334(A114119(n))²`
-/

namespace A285985.P18195092386341638208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182334 (A114119 n).toNat ^ 2

end

end A285985.P18195092386341638208

/-! ## A285985.P8569228848318440393

`record[A217278(A026741(n))²]`
-/

namespace A285985.P8569228848318440393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A026741 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285985.P8569228848318440393

/-! ## A285985.P13857875249421482810

`A006454(n)^(A057427(n)+1)`
-/

namespace A285985.P13857875249421482810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006454 n : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A285985.P13857875249421482810

/-! ## A285985.P5084090473282553094

`(1-A299921(A007494(n+1)))²`
-/

namespace A285985.P5084090473282553094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A299921 (A007494 (n + 1)).toNat) ^ 2

end

end A285985.P5084090473282553094

/-!
# A285987: a(n)=least number that is cyclops for exactly n distinct bases b > 1.

The programs for A285987, there is no canonical definition to state claims against.
-/

/-! ## A285987.P6050026342718143671

`or(n, ∑[A343228(6^n)])`
-/

namespace A285987.P6050026342718143671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (6 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285987.P6050026342718143671

/-!
# A285989: a(0) = 0, a(n) = Sum_{0 0.

The programs for A285989, the canonical program `A285989.P13600926277969307102` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285989 has offset 0).

The definition of A285989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285989.P13600926277969307102

`∑{d}[2*n, (n%#)^4]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285989

/-- `∑{d}[2*n, (n%#)^4]` -/
def P13600926277969307102.Spec : Prop :=
  ∀ n, (P13600926277969307102.a n : ℤ) = A285989 n

theorem P13600926277969307102.correct : P13600926277969307102.Spec := by
  intro n
  simp only [A285989]

end A285989

/-! ## A285989.P7435792625750041941

`∑{d}[2*n, (n²%#²)²]`
-/

namespace A285989.P7435792625750041941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n ^ 2 % d ^ 2) ^ 2

end

end A285989.P7435792625750041941

namespace A285989

/-- `∑{d}[2*n, (n²%#²)²]` -/
def P7435792625750041941.Spec : Prop :=
  ∀ n, (P7435792625750041941.a n : ℤ) = A285989 n

end A285989

/-! ## A285989.P591891923765301576

`∑{d}[n, A309336(#)]`
-/

namespace A285989.P591891923765301576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309336 d

end

end A285989.P591891923765301576

namespace A285989

/-- `∑{d}[n, A309336(#)]` -/
def P591891923765301576.Spec : Prop :=
  ∀ n, P591891923765301576.a n = A285989 n

end A285989

/-! ## A285989.P17924921799659958122

`∑{d}[2*n, A000583(n%#)]`
-/

namespace A285989.P17924921799659958122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000583 (n % d)

end

end A285989.P17924921799659958122

namespace A285989

/-- `∑{d}[2*n, A000583(n%#)]` -/
def P17924921799659958122.Spec : Prop :=
  ∀ n, P17924921799659958122.a n = A285989 n

theorem P17924921799659958122.correct : P17924921799659958122.Spec := by
  intro n
  simp only [A285989, Nat.add_sub_cancel, A285989.P17924921799659958122.f1, A285989.P17924921799659958122.a, A285989.P13600926277969307102.f1, A285989.P13600926277969307102.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285989

/-! ## A285989.P6205899114002009198

`∑{d}[n, n²²%A141046(#)]`
-/

namespace A285989.P6205899114002009198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((n ^ 2) ^ 2 : ℤ) (A141046 d)

end

end A285989.P6205899114002009198

namespace A285989

/-- `∑{d}[n, n²²%A141046(#)]` -/
def P6205899114002009198.Spec : Prop :=
  ∀ n, P6205899114002009198.a n = A285989 n

end A285989

/-! ## A285989.P2646635716192204186

`∑{d}[n, A000290(n²%A001105(#))]`
-/

namespace A285989.P2646635716192204186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 (Int.tmod (n ^ 2 : ℤ) (A001105 d)).toNat

end

end A285989.P2646635716192204186

namespace A285989

/-- `∑{d}[n, A000290(n²%A001105(#))]` -/
def P2646635716192204186.Spec : Prop :=
  ∀ n, P2646635716192204186.a n = A285989 n

end A285989

/-!
# A285991: Expansion of Product_{n>0} ((1-x^n)/(1+x^n))^(n^4) in powers of x.

The programs for A285991, there is no canonical definition to state claims against.
-/

/-! ## A285991.P15462864782491798609

`A132191(A295582(3*(n+1)))-A024447(n+1)`
-/

namespace A285991.P15462864782491798609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A295582 (3 * (n + 1))).toNat - A024447 (n + 1)

end

end A285991.P15462864782491798609

/-!
# A285992: Primes in the bisected Lucas sequence A002878.

The programs for A285992, there is no canonical definition to state claims against.
-/

/-! ## A285992.P5127102556082041761

`A002878(A117522(n+1))`
-/

namespace A285992.P5127102556082041761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (A117522 (n + 1)).toNat

end

end A285992.P5127102556082041761

/-! ## A285992.P13935636397444427872

`A000032(A168033(n+2))`
-/

namespace A285992.P13935636397444427872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A168033 (n + 2)).toNat

end

end A285992.P13935636397444427872

/-! ## A285992.P372957488817107780

`record[A058036(A000040(n+3))]`
-/

namespace A285992.P372957488817107780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058036 (A000040 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285992.P372957488817107780

/-! ## A285992.P6725345237528277129

`A000032(p?[A059791(n+2)])`
-/

namespace A285992.P6725345237528277129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285992.P6725345237528277129

/-! ## A285992.P15968142637540236831

`A000032(p?[A001606(n+3)])`
-/

namespace A285992.P15968142637540236831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285992.P15968142637540236831

/-!
# A285994: Number of increasing runs in all Carlitz compositions of n.

The programs for A285994, there is no canonical definition to state claims against.
-/

/-! ## A285994.P13865909768905206527

`A003056((A014335(n)+A003056(n))*A003056(n))`
-/

namespace A285994.P13865909768905206527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((A014335 n + A003056 n) * A003056 n).toNat

end

end A285994.P13865909768905206527

/-!
# A285995: Number of arrangements of n circles in the affine plane such that at least two of the circles meet.

The programs for A285995, there is no canonical definition to state claims against.
-/

/-! ## A285995.P8642970771658362620

`A250001(n)-A000081(n+1)`
-/

namespace A285995.P8642970771658362620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250001 n - A000081 (n + 1)

end

end A285995.P8642970771658362620

/-!
# A285997: Number of matchings in the n X n-antelope graph.

The programs for A285997, there is no canonical definition to state claims against.
-/

/-! ## A285997.P17547599695659956528

`A185147(n^n)^4`
-/

namespace A285997.P17547599695659956528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185147 (n ^ n) ^ 4

end

end A285997.P17547599695659956528

/-! ## A285997.P2308233456539491341

`A316892(∏[floor(sqrt(n))!])²²`
-/

namespace A285997.P2308233456539491341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A316892 (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A285997.P2308233456539491341

/-!
# A285998: a(n) = Sum_{k=0..floor(n/2)} (n-k)*(k+1).

The programs for A285998, the canonical program `A285998.P10022072453406819097` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285998 has offset 1).

The definition of A285998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285998.P10022072453406819097

`∑[∑[∑[2-xor(1, a(n-1))]]]-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285998

/-- `∑[∑[∑[2-xor(1, a(n-1))]]]-a(n-1)` -/
def P10022072453406819097.Spec : Prop :=
  ∀ n, P10022072453406819097.a n = A285998 (n + 1)

theorem P10022072453406819097.correct : P10022072453406819097.Spec := by
  intro n
  simp only [A285998, Nat.add_sub_cancel]

end A285998

/-! ## A285998.P1730691816814903266

`∑[∑[∑[3/a(n-1)]-a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A285998.P1730691816814903266
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f3 =>
  3 / f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285998.P1730691816814903266

namespace A285998

/-- `∑[∑[∑[3/a(n-1)]-a(n-1)]-a(n-1)]` -/
def P1730691816814903266.Spec : Prop :=
  ∀ n, P1730691816814903266.a n = (A285998 (n + 1) : ℚ)

end A285998

/-! ## A285998.P14709374043706633940

`∑[∑[∑[floor(a(n-2))]-a(n-1)]-a(n-1)]` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A285998.P14709374043706633940
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f3 =>
  f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285998.P14709374043706633940

namespace A285998

/-- `∑[∑[∑[floor(a(n-2))]-a(n-1)]-a(n-1)]` -/
def P14709374043706633940.Spec : Prop :=
  ∀ n, P14709374043706633940.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P5545022782127328580

`A265225(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A285998.P5545022782127328580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A265225 n + a (n - 2)

end

end A285998.P5545022782127328580

namespace A285998

/-- `A265225(n)+a(n-2)` -/
def P5545022782127328580.Spec : Prop :=
  ∀ n, P5545022782127328580.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P363587372876500684

`2*A002623(n)-A023855(n+1)`
-/

namespace A285998.P363587372876500684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002623 n - A023855 (n + 1)

end

end A285998.P363587372876500684

namespace A285998

/-- `2*A002623(n)-A023855(n+1)` -/
def P363587372876500684.Spec : Prop :=
  ∀ n, P363587372876500684.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P11379730137657383917

`A023857(n+1)-(A027656(n)+A027656(n)²)`
-/

namespace A285998.P11379730137657383917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) - (A027656 n + A027656 n ^ 2)

end

end A285998.P11379730137657383917

namespace A285998

/-- `A023857(n+1)-(A027656(n)+A027656(n)²)` -/
def P11379730137657383917.Spec : Prop :=
  ∀ n, P11379730137657383917.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P4519809239135277859

`∑[(n+1)*Δ[∑[n+1]-a(n-1)]]-a(n-1)` with `a(0)=1`
-/

namespace A285998.P4519809239135277859
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A285998.P4519809239135277859

namespace A285998

/-- `∑[(n+1)*Δ[∑[n+1]-a(n-1)]]-a(n-1)` -/
def P4519809239135277859.Spec : Prop :=
  ∀ n, P4519809239135277859.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P6468746193978901982

`A023855(n+2)-A008805(n+1)`
-/

namespace A285998.P6468746193978901982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 2) - A008805 (n + 1)

end

end A285998.P6468746193978901982

namespace A285998

/-- `A023855(n+2)-A008805(n+1)` -/
def P6468746193978901982.Spec : Prop :=
  ∀ n, P6468746193978901982.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P17149335224597007716

`A024862(n+3)-A023857(n+2)`
-/

namespace A285998.P17149335224597007716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024862 (n + 3) - A023857 (n + 2)

end

end A285998.P17149335224597007716

namespace A285998

/-- `A024862(n+3)-A023857(n+2)` -/
def P17149335224597007716.Spec : Prop :=
  ∀ n, P17149335224597007716.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P6237556030817634412

`A023856(n+2)-2*A008805(n+1)`
-/

namespace A285998.P6237556030817634412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 2) - 2 * A008805 (n + 1)

end

end A285998.P6237556030817634412

namespace A285998

/-- `A023856(n+2)-2*A008805(n+1)` -/
def P6237556030817634412.Spec : Prop :=
  ∀ n, P6237556030817634412.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P839528162010372781

`2*A023855(n+2)-A023856(n+2)`
-/

namespace A285998.P839528162010372781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023855 (n + 2) - A023856 (n + 2)

end

end A285998.P839528162010372781

namespace A285998

/-- `2*A023855(n+2)-A023856(n+2)` -/
def P839528162010372781.Spec : Prop :=
  ∀ n, P839528162010372781.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P13093767136614921210

`2*A023856(n+2)-A024854(n+3)`
-/

namespace A285998.P13093767136614921210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023856 (n + 2) - A024854 (n + 3)

end

end A285998.P13093767136614921210

namespace A285998

/-- `2*A023856(n+2)-A024854(n+3)` -/
def P13093767136614921210.Spec : Prop :=
  ∀ n, P13093767136614921210.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P6520159701378068644

`∑[∑[A008619(n+1)*A097140(n+1)]]`
-/

namespace A285998.P6520159701378068644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A097140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285998.P6520159701378068644

namespace A285998

/-- `∑[∑[A008619(n+1)*A097140(n+1)]]` -/
def P6520159701378068644.Spec : Prop :=
  ∀ n, P6520159701378068644.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P16412606824822846149

`∪[A023855(2*n+1), A023857(2*(n+1))]`
-/

namespace A285998.P16412606824822846149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285998.P16412606824822846149

namespace A285998

/-- `∪[A023855(2*n+1), A023857(2*(n+1))]` -/
def P16412606824822846149.Spec : Prop :=
  ∀ n, (P16412606824822846149.a n : ℤ) = A285998 (n + 1)

end A285998

/-! ## A285998.P11966792606832414876

`A058187(n+1)+A004526(n)*A008805(n+1)`
-/

namespace A285998.P11966792606832414876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (n + 1) + A004526 n * A008805 (n + 1)

end

end A285998.P11966792606832414876

namespace A285998

/-- `A058187(n+1)+A004526(n)*A008805(n+1)` -/
def P11966792606832414876.Spec : Prop :=
  ∀ n, P11966792606832414876.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P16403751483705875412

`A023855(n+2)+A023856(n+2)-A023857(n+2)`
-/

namespace A285998.P16403751483705875412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 2) + (A023856 (n + 2) - A023857 (n + 2))

end

end A285998.P16403751483705875412

namespace A285998

/-- `A023855(n+2)+A023856(n+2)-A023857(n+2)` -/
def P16403751483705875412.Spec : Prop :=
  ∀ n, P16403751483705875412.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P4123595211650034696

`A023855(n+2)+A023857(n+2)-A024854(n+3)`
-/

namespace A285998.P4123595211650034696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 2) + (A023857 (n + 2) - A024854 (n + 3))

end

end A285998.P4123595211650034696

namespace A285998

/-- `A023855(n+2)+A023857(n+2)-A024854(n+3)` -/
def P4123595211650034696.Spec : Prop :=
  ∀ n, P4123595211650034696.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P12339561872436287842

`Δ[n/2*A006918(n+1)]`
-/

namespace A285998.P12339561872436287842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A006918 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285998.P12339561872436287842

namespace A285998

/-- `Δ[n/2*A006918(n+1)]` -/
def P12339561872436287842.Spec : Prop :=
  ∀ n, P12339561872436287842.a n = (A285998 (n + 1) : ℚ)

end A285998

/-! ## A285998.P1712798808736418642

`Δ[A005994(n)-A160790(n+1)]`
-/

namespace A285998.P1712798808736418642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n - A160790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285998.P1712798808736418642

namespace A285998

/-- `Δ[A005994(n)-A160790(n+1)]` -/
def P1712798808736418642.Spec : Prop :=
  ∀ n, P1712798808736418642.a n = A285998 (n + 1)

end A285998

/-! ## A285998.P8490603450084234814

`Δ[A038376(n+3)]`
-/

namespace A285998.P8490603450084234814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038376 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285998.P8490603450084234814

namespace A285998

/-- `Δ[A038376(n+3)]` -/
def P8490603450084234814.Spec : Prop :=
  ∀ n, P8490603450084234814.a n = A285998 (n + 1)

end A285998

/-!
# A285999: Total number of odd divisors of all positive integers <= n, minus the total number of middle divisors of all positive integers <= n.

The programs for A285999, there is no canonical definition to state claims against.
-/

/-! ## A285999.P2604806783009400357

`∑[A281009(n+1)]`
-/

namespace A285999.P2604806783009400357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285999.P2604806783009400357

/-! ## A285999.P11175310332352625552

`∑[2*A131576(n+1)]`
-/

namespace A285999.P11175310332352625552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285999.P11175310332352625552

/-! ## A285999.P3986613941476842860

`∑[2*A341594(2*(n+1))]`
-/

namespace A285999.P3986613941476842860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341594 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285999.P3986613941476842860

/-! ## A285999.P10299877597872117019

`∑[2*A341675(2*(n+1))]`
-/

namespace A285999.P10299877597872117019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341675 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285999.P10299877597872117019

/-! ## A285999.P7263043247868291152

`2*∑[A131576(-xor(n, -1))]`
-/

namespace A285999.P7263043247868291152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285999.P7263043247868291152

/-! ## A285999.P11779708762611717438

`∑[∑{d}[n+1, #%2]-A067742(n+1)]`
-/

namespace A285999.P11779708762611717438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ) - A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285999.P11779708762611717438

/-! ## A285999.P3544529479893223587

`A060831(n+1)-A240542(n+1)`
-/

namespace A285999.P3544529479893223587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - A240542 (n + 1)

end

end A285999.P3544529479893223587

/-! ## A285999.P15581351776056573897

`2*A285902(n+1)`
-/

namespace A285999.P15581351776056573897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285902 (n + 1)

end

end A285999.P15581351776056573897

/-! ## A285999.P5847043730115422280

`A005843(A285902(n+1))`
-/

namespace A285999.P5847043730115422280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285902 (n + 1)).toNat

end

end A285999.P5847043730115422280

/-! ## A285999.P5928354341576133385

`A245092(A285902(n+1)+A285902(n+1))`
-/

namespace A285999.P5928354341576133385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A285902 (n + 1) + A285902 (n + 1)).toNat

end

end A285999.P5928354341576133385

/-! ## A285999.P14371895223908173635

`A285902(n+1)+A285902(n+2)-A131576(n+2)`
-/

namespace A285999.P14371895223908173635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285902 (n + 1) + (A285902 (n + 2) - A131576 (n + 2))

end

end A285999.P14371895223908173635

/-! ## A285999.P13644323387241006910

`∑[A001222(4^A131576(n+1))]`
-/

namespace A285999.P13644323387241006910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A131576 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285999.P13644323387241006910

