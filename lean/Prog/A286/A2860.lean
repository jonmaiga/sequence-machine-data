import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A286000: A table of partitions into consecutive parts (see Comments lines for definition).

The programs for A286000, there is no canonical definition to state claims against.
-/

/-! ## A286000.P3356677797731354075

`or(A069847(A117433(3*n+1)), A286013(n+1))`
-/

namespace A286000.P3356677797731354075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069847 (A117433 (3 * n + 1)).toNat) (A286013 (n + 1))

end

end A286000.P3356677797731354075

/-!
# A286001: A table of partitions into consecutive parts (see Comments lines for definition).

The programs for A286001, there is no canonical definition to state claims against.
-/

/-! ## A286001.P12071996412091320199

`A289112(A036653(n))+A235791(n+1)`
-/

namespace A286001.P12071996412091320199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289112 (A036653 n).toNat + A235791 (n + 1)

end

end A286001.P12071996412091320199

/-! ## A286001.P8498422674379902402

`A265757(A092684(n))+A235791(n+1)`
-/

namespace A286001.P8498422674379902402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265757 (A092684 n).toNat + A235791 (n + 1)

end

end A286001.P8498422674379902402

/-! ## A286001.P16746804116704601627

`A289112(A036653(n))+sqrt(A236104(n+1))`
-/

namespace A286001.P16746804116704601627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A289112 (A036653 n).toNat : ℝ) + Real.sqrt (A236104 (n + 1) : ℝ)

end

end A286001.P16746804116704601627

/-! ## A286001.P14736116200488109206

`A235791(n+1)+A101605(A056797(n+1))`
-/

namespace A286001.P14736116200488109206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1) + A101605 (A056797 (n + 1)).toNat

end

end A286001.P14736116200488109206

/-! ## A286001.P10423898822283490755

`A235791(n+1)+A079978(A253802(n+1))`
-/

namespace A286001.P10423898822283490755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1) + A079978 (A253802 (n + 1)).toNat

end

end A286001.P10423898822283490755

/-!
# A286002: a(n) = 2n - d(n), where d(n) is the number of divisors of n (A000005).

The programs for A286002, the canonical program `A286002.P12406476447893085848` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286002 has offset 1).

The definition of A286002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286002.P12406476447893085848

`2*(n+1)-∏{e}[n+1, #+1]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A286002

/-- `2*(n+1)-∏{e}[n+1, #+1]` -/
def P12406476447893085848.Spec : Prop :=
  ∀ n, P12406476447893085848.a n = A286002 (n + 1)

theorem P12406476447893085848.correct : P12406476447893085848.Spec := by
  intro n
  simp only [A286002, Nat.add_sub_cancel]

end A286002

/-! ## A286002.P3388439815873897513

`2-∏{e}[n+1, #+1]+n+n`
-/

namespace A286002.P3388439815873897513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)

end

end A286002.P3388439815873897513

namespace A286002

/-- `2-∏{e}[n+1, #+1]+n+n` -/
def P3388439815873897513.Spec : Prop :=
  ∀ n, P3388439815873897513.a n = A286002 (n + 1)

theorem P3388439815873897513.correct : P3388439815873897513.Spec := by
  intro n
  simp only [A286002, Nat.add_sub_cancel, A286002.P3388439815873897513.f1, A286002.P3388439815873897513.a, A286002.P12406476447893085848.f1, A286002.P12406476447893085848.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A286002

/-! ## A286002.P6429885791313969182

`2-∑{d}[n+1, gcd(n, #)]+n+n`
-/

namespace A286002.P6429885791313969182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)

end

end A286002.P6429885791313969182

namespace A286002

/-- `2-∑{d}[n+1, gcd(n, #)]+n+n` -/
def P6429885791313969182.Spec : Prop :=
  ∀ n, P6429885791313969182.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P16594515290413204541

`2*n+3-∑{d}[n+1, ceil(2/#)]`
-/

namespace A286002.P16594515290413204541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉

end

end A286002.P16594515290413204541

namespace A286002

/-- `2*n+3-∑{d}[n+1, ceil(2/#)]` -/
def P16594515290413204541.Spec : Prop :=
  ∀ n, P16594515290413204541.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P15704837238736247714

`n+2-∑{d}[n+1, ceil(1/#)]+n`
-/

namespace A286002.P15704837238736247714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ + (n : ℤ)

end

end A286002.P15704837238736247714

namespace A286002

/-- `n+2-∑{d}[n+1, ceil(1/#)]+n` -/
def P15704837238736247714.Spec : Prop :=
  ∀ n, P15704837238736247714.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P6844082333146236037

`n-∑{d}[n+1, n²%#]+1+n`
-/

namespace A286002.P6844082333146236037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ) + 1 + (n : ℤ)

end

end A286002.P6844082333146236037

namespace A286002

/-- `n-∑{d}[n+1, n²%#]+1+n` -/
def P6844082333146236037.Spec : Prop :=
  ∀ n, P6844082333146236037.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P2217361803165338196

`∑{d}[n+1, lcm(#, n+1)]%(n+2)+n`
-/

namespace A286002.P2217361803165338196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1)) % (n + 2) + n

end

end A286002.P2217361803165338196

namespace A286002

/-- `∑{d}[n+1, lcm(#, n+1)]%(n+2)+n` -/
def P2217361803165338196.Spec : Prop :=
  ∀ n, (P2217361803165338196.a n : ℤ) = A286002 (n + 1)

end A286002

/-! ## A286002.P8392811671627659321

`A062968(n+1)+n`
-/

namespace A286002.P8392811671627659321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) + (n : ℤ)

end

end A286002.P8392811671627659321

namespace A286002

/-- `A062968(n+1)+n` -/
def P8392811671627659321.Spec : Prop :=
  ∀ n, P8392811671627659321.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P3237411085579279424

`∑[2-A341062(n+1)]`
-/

namespace A286002.P3237411085579279424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286002.P3237411085579279424

namespace A286002

/-- `∑[2-A341062(n+1)]` -/
def P3237411085579279424.Spec : Prop :=
  ∀ n, P3237411085579279424.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P1824755549209206382

`n+1+A049820(n+1)`
-/

namespace A286002.P1824755549209206382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A049820 (n + 1)

end

end A286002.P1824755549209206382

namespace A286002

/-- `n+1+A049820(n+1)` -/
def P1824755549209206382.Spec : Prop :=
  ∀ n, P1824755549209206382.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P9654105707660433845

`A059292(n+1)-1+n`
-/

namespace A286002.P9654105707660433845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - 1 + (n : ℤ)

end

end A286002.P9654105707660433845

namespace A286002

/-- `A059292(n+1)-1+n` -/
def P9654105707660433845.Spec : Prop :=
  ∀ n, P9654105707660433845.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P6959360789649815273

`A378216(n+1)+2*n`
-/

namespace A286002.P6959360789649815273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + (2 * n : ℤ)

end

end A286002.P6959360789649815273

namespace A286002

/-- `A378216(n+1)+2*n` -/
def P6959360789649815273.Spec : Prop :=
  ∀ n, P6959360789649815273.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P5444690655213063618

`Δ[n²]-A032741(n+1)`
-/

namespace A286002.P5444690655213063618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A032741 (n + 1)

end

end A286002.P5444690655213063618

namespace A286002

/-- `Δ[n²]-A032741(n+1)` -/
def P5444690655213063618.Spec : Prop :=
  ∀ n, P5444690655213063618.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P14820887616049476133

`2*(n+1)-Δ[A006218(n)]`
-/

namespace A286002.P14820887616049476133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (f1 (n + 1) - f1 n)

end

end A286002.P14820887616049476133

namespace A286002

/-- `2*(n+1)-Δ[A006218(n)]` -/
def P14820887616049476133.Spec : Prop :=
  ∀ n, P14820887616049476133.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P632168753403087330

`Δ[n²]-log2(A100577(n+1))`
-/

namespace A286002.P632168753403087330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.logb 2 (A100577 (n + 1) : ℝ)

end

end A286002.P632168753403087330

namespace A286002

/-- `Δ[n²]-log2(A100577(n+1))` -/
def P632168753403087330.Spec : Prop :=
  ∀ n, P632168753403087330.a n = (A286002 (n + 1) : ℝ)

end A286002

/-! ## A286002.P7650138974841323023

`2*(n+1)-A000005(n+1)`
-/

namespace A286002.P7650138974841323023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000005 (n + 1)

end

end A286002.P7650138974841323023

namespace A286002

/-- `2*(n+1)-A000005(n+1)` -/
def P7650138974841323023.Spec : Prop :=
  ∀ n, P7650138974841323023.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P10555730679984736234

`3*(n+1)-A062249(n+1)`
-/

namespace A286002.P10555730679984736234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A062249 (n + 1)

end

end A286002.P10555730679984736234

namespace A286002

/-- `3*(n+1)-A062249(n+1)` -/
def P10555730679984736234.Spec : Prop :=
  ∀ n, P10555730679984736234.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P435934879957371110

`4*(n+1)-A140482(n+1)`
-/

namespace A286002.P435934879957371110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A140482 (n + 1)

end

end A286002.P435934879957371110

namespace A286002

/-- `4*(n+1)-A140482(n+1)` -/
def P435934879957371110.Spec : Prop :=
  ∀ n, P435934879957371110.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P683707957676261256

`2*n+3-A334954(n+1)`
-/

namespace A286002.P683707957676261256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A334954 (n + 1)

end

end A286002.P683707957676261256

namespace A286002

/-- `2*n+3-A334954(n+1)` -/
def P683707957676261256.Spec : Prop :=
  ∀ n, P683707957676261256.a n = A286002 (n + 1)

end A286002

/-! ## A286002.P12978547518360913538

`∑{d}[n+1, 2*A000010(#)-1]`
-/

namespace A286002.P12978547518360913538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 * A000010 d - 1)

end

end A286002.P12978547518360913538

namespace A286002

/-- `∑{d}[n+1, 2*A000010(#)-1]` -/
def P12978547518360913538.Spec : Prop :=
  ∀ n, P12978547518360913538.a n = A286002 (n + 1)

end A286002

/-!
# A286003: Numbers n such that 3^n is the highest power of 3 dividing A240751(n).

The programs for A286003, there is no canonical definition to state claims against.
-/

/-! ## A286003.P495046820022359290

`eq[3, A240755(n+1)]+1`
-/

namespace A286003.P495046820022359290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286003.P495046820022359290

/-! ## A286003.P2869755336692328550

`eq[2, A284050(n+1)]+ceil(acot(n))`
-/

namespace A286003.P2869755336692328550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A286003.P2869755336692328550

/-! ## A286003.P7588939277374438169

`∩[A055938(n+1), a(floor(n/3))+n]` with `a(0)=0`
-/

namespace A286003.P7588939277374438169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A286003.P7588939277374438169

/-! ## A286003.P2024098435208823727

`eq[3, A240755(A028310(n))]`
-/

namespace A286003.P2024098435208823727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286003.P2024098435208823727

/-! ## A286003.P5462141719961725778

`comp[∪[A005187(n), A096346(n)]]`
-/

namespace A286003.P5462141719961725778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096346 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A286003.P5462141719961725778

/-! ## A286003.P10343728668506426404

`A020725(eq[3, A240755(n+1)])`
-/

namespace A286003.P10343728668506426404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286003.P10343728668506426404

/-! ## A286003.P6333029192680273598

`eq[3, A240755(A000007(n)+n)]`
-/

namespace A286003.P6333029192680273598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286003.P6333029192680273598

/-! ## A286003.P11656486408648988537

`eq[3, A240755(A004277(n)-n)]`
-/

namespace A286003.P11656486408648988537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286003.P11656486408648988537

/-! ## A286003.P12343882438620153809

`∩[A055938(n+1), A004128(n)]`
-/

namespace A286003.P12343882438620153809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286003.P12343882438620153809

/-! ## A286003.P586160389948138393

`eq[1, -A008683(A284050(n+2))]+2`
-/

namespace A286003.P586160389948138393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (A284050 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A286003.P586160389948138393

/-!
# A286004: Numbers n such that 5^n is the highest power of 5 dividing A240751(n).

The programs for A286004, there is no canonical definition to state claims against.
-/

/-! ## A286004.P5437610141776385590

`eq[4, A284050(n+1)]+1`
-/

namespace A286004.P5437610141776385590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286004.P5437610141776385590

/-! ## A286004.P16358539442964065971

`eq[4, A284050(A028310(n))]`
-/

namespace A286004.P16358539442964065971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286004.P16358539442964065971

/-! ## A286004.P16944593957781118191

`A020725(eq[4, A284050(n+1)])`
-/

namespace A286004.P16944593957781118191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286004.P16944593957781118191

/-! ## A286004.P13794877137902771098

`A153152(eq[4, A284050(n+1)])`
-/

namespace A286004.P13794877137902771098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286004.P13794877137902771098

/-! ## A286004.P13592920806838287982

`eq[5, A240755(n+1)]+1`
-/

namespace A286004.P13592920806838287982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286004.P13592920806838287982

/-! ## A286004.P16124803240422327569

`eq[4, A284050(A233583(n+1))]`
-/

namespace A286004.P16124803240422327569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286004.P16124803240422327569

/-! ## A286004.P16534116405304261738

`eq[5, A240755(A138153(n+1))]`
-/

namespace A286004.P16534116405304261738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286004.P16534116405304261738

/-!
# A286005: Numbers n such that 7^n is the highest power of 7 dividing A240751(n).

The programs for A286005, there is no canonical definition to state claims against.
-/

/-! ## A286005.P3551030224907924538

`eq[6, A284050(n+1)]+1`
-/

namespace A286005.P3551030224907924538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286005.P3551030224907924538

/-! ## A286005.P15910797975251027396

`eq[6, A284050(A028310(n))]`
-/

namespace A286005.P15910797975251027396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286005.P15910797975251027396

/-! ## A286005.P18415645778368715928

`A020725(eq[6, A284050(n+1)])`
-/

namespace A286005.P18415645778368715928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286005.P18415645778368715928

/-! ## A286005.P5927801689664503838

`eq[6, A284050(A233583(n+1))]`
-/

namespace A286005.P5927801689664503838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286005.P5927801689664503838

/-! ## A286005.P1590360611134603637

`eq[7, A240755(A138153(n+1))]`
-/

namespace A286005.P1590360611134603637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286005.P1590360611134603637

/-!
# A286006: Numbers n such that 11^n is the highest power of 11 dividing A240751(n).

The programs for A286006, there is no canonical definition to state claims against.
-/

/-! ## A286006.P4032748081919140764

`eq[10, A284050(A028310(n))]`
-/

namespace A286006.P4032748081919140764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286006.P4032748081919140764

/-!
# A286011: a(1)=1, and for n>1, a(n) is the maximum number of iterations of sigma resulting in n, starting at some integer k; or 0 if n cannot be reached from any k.

The programs for A286011, there is no canonical definition to state claims against.
-/

/-! ## A286011.P4440917098034177411

`round(A241954(n+1)/A318434(A004433(n+1)))`
-/

namespace A286011.P4440917098034177411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A241954 (n + 1) : ℚ) / (A318434 (A004433 (n + 1)).toNat : ℚ))

end

end A286011.P4440917098034177411

/-! ## A286011.P5709696830383809587

`and(A241954(n+1), A346701(A079097(n)))`
-/

namespace A286011.P5709696830383809587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A241954 (n + 1)) (A346701 (A079097 n).toNat)

end

end A286011.P5709696830383809587

/-! ## A286011.P11379992564541975436

`A241954(n+1)-A089802(A069069(n+1))`
-/

namespace A286011.P11379992564541975436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1) - A089802 (A069069 (n + 1)).toNat

end

end A286011.P11379992564541975436

/-! ## A286011.P2538963539862548432

`and(A145444(A176485(n+1)), A241954(n+1))`
-/

namespace A286011.P2538963539862548432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145444 (A176485 (n + 1)).toNat) (A241954 (n + 1))

end

end A286011.P2538963539862548432

/-! ## A286011.P10043328011080887197

`A241954(n+1)-A067898(A111825(n))`
-/

namespace A286011.P10043328011080887197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1) - A067898 (A111825 n).toNat

end

end A286011.P10043328011080887197

/-!
# A286012: A Kedlaya-Wilf matrix for the Fibonacci sequence A000045.

The programs for A286012, there is no canonical definition to state claims against.
-/

/-! ## A286012.P7463203034625574250

`or(A003849(A328881(n)), A309106(n+1))`
-/

namespace A286012.P7463203034625574250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A328881 n).toNat) (A309106 (n + 1))

end

end A286012.P7463203034625574250

/-! ## A286012.P10234521877802471158

`A278341(A166350(n+1))+A241578(n)`
-/

namespace A286012.P10234521877802471158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (A166350 (n + 1)).toNat + A241578 n

end

end A286012.P10234521877802471158

/-!
# A286013: Irregular triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the positive integers starting with k, interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A286013, there is no canonical definition to state claims against.
-/

/-! ## A286013.P10102609178879273114

`A285914(n+1)+A004524(A196020(n+1))`
-/

namespace A286013.P10102609178879273114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (n + 1) + A004524 (A196020 (n + 1)).toNat

end

end A286013.P10102609178879273114

/-! ## A286013.P9654275262234807607

`A028310(A285914(n+1)+A211343(n+1))-1`
-/

namespace A286013.P9654275262234807607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A285914 (n + 1) + A211343 (n + 1)).toNat - 1

end

end A286013.P9654275262234807607

/-! ## A286013.P8956054629270874307

`A196020(n+1)+A285914(n+1)-A211343(n+1)`
-/

namespace A286013.P8956054629270874307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (n + 1) + (A285914 (n + 1) - A211343 (n + 1))

end

end A286013.P8956054629270874307

/-! ## A286013.P14314634799901745821

`A211343(n+1)+A285914(n+1)-A237048(n+1)`
-/

namespace A286013.P14314634799901745821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211343 (n + 1) + (A285914 (n + 1) - A237048 (n + 1))

end

end A286013.P14314634799901745821

/-! ## A286013.P3111329325189872834

`A285914(n+1)+A196020(n+1)%A235791(n+1)`
-/

namespace A286013.P3111329325189872834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (n + 1) + Int.tmod (A196020 (n + 1)) (A235791 (n + 1))

end

end A286013.P3111329325189872834

/-! ## A286013.P729419980691700018

`A285914(n+1)+A004524(A237048(n+1)*A338721(n+1))`
-/

namespace A286013.P729419980691700018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (n + 1) + A004524 (A237048 (n + 1) * A338721 (n + 1)).toNat

end

end A286013.P729419980691700018

/-! ## A286013.P1111363048640670362

`A285914(n+1)+A004526(A237048(n+1)*A338721(n+1))`
-/

namespace A286013.P1111363048640670362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285914 (n + 1) + A004526 (A237048 (n + 1) * A338721 (n + 1)).toNat

end

end A286013.P1111363048640670362

/-! ## A286013.P2005701353148414838

`A237048(n+1)*A286000(n+1)`
-/

namespace A286013.P2005701353148414838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1) * A286000 (n + 1)

end

end A286013.P2005701353148414838

/-! ## A286013.P14888204574905640308

`A196020(n+1)%2*A286000(n+1)`
-/

namespace A286013.P14888204574905640308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196020 (n + 1)) 2 * A286000 (n + 1)

end

end A286013.P14888204574905640308

/-! ## A286013.P10769772002793601143

`A286000(n+1)%(A286000(n+1)+A285914(n+1))`
-/

namespace A286013.P10769772002793601143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286000 (n + 1)) (A286000 (n + 1) + A285914 (n + 1))

end

end A286013.P10769772002793601143

/-!
# A286014: Sum of smallest parts of all partitions of n into consecutive parts.

The programs for A286014, there is no canonical definition to state claims against.
-/

/-! ## A286014.P14981156287515425608

`A353149(n+1)-∑{d}[n+1, floor(#/2)]`
-/

namespace A286014.P14981156287515425608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), ⌊(d : ℚ) / 2⌋

end

end A286014.P14981156287515425608

/-! ## A286014.P18403354875342552779

`A353149(n+1)-A086670(n+1)`
-/

namespace A286014.P18403354875342552779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - A086670 (n + 1)

end

end A286014.P18403354875342552779

/-! ## A286014.P2809230420094999954

`A000593(n+1)+A079247(n+1)-A204217(n+1)`
-/

namespace A286014.P2809230420094999954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A079247 (n + 1) - A204217 (n + 1))

end

end A286014.P2809230420094999954

/-! ## A286014.P298367796298108932

`A000005(n+1)+A353149(n+1)-A069734(n+1)`
-/

namespace A286014.P298367796298108932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A353149 (n + 1) - A069734 (n + 1))

end

end A286014.P298367796298108932

/-! ## A286014.P5312729098227355669

`A001826(n+1)+A353149(n+1)-A145392(n+1)`
-/

namespace A286014.P5312729098227355669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) + (A353149 (n + 1) - A145392 (n + 1))

end

end A286014.P5312729098227355669

/-! ## A286014.P15052315661483780134

`A353149(n+1)-(A000203(n+1)-A000005(A000265(n+1)))/2`
-/

namespace A286014.P15052315661483780134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353149 (n + 1) : ℚ) - (A000203 (n + 1) - A000005 (A000265 (n + 1)).toNat : ℚ) / 2

end

end A286014.P15052315661483780134

/-! ## A286014.P7599304814147105865

`A001227(A003961(n+1))+A353149(n+1)-A069734(n+1)`
-/

namespace A286014.P7599304814147105865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat + (A353149 (n + 1) - A069734 (n + 1))

end

end A286014.P7599304814147105865

/-! ## A286014.P15326584895378996772

`A353154(n+1)+∑{d}[n+1, ceil(#/2)]`
-/

namespace A286014.P15326584895378996772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353154 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) / 2⌉

end

end A286014.P15326584895378996772

/-! ## A286014.P11850539131704743615

`A353154(n+1)+A079247(n+1)`
-/

namespace A286014.P11850539131704743615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353154 (n + 1) + A079247 (n + 1)

end

end A286014.P11850539131704743615

/-! ## A286014.P4949180639434811815

`A001227(n+1)+A353154(n+1)+A086670(n+1)`
-/

namespace A286014.P4949180639434811815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A353154 (n + 1) + A086670 (n + 1))

end

end A286014.P4949180639434811815

/-!
# A286015: Sum of largest parts of all partitions of n into consecutive parts.

The programs for A286015, the canonical program `A286015.P16729021585373301699` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286015 has offset 1).

The definition of A286015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286015.P17336635986492503389

`∑{d}[n+1, floor(#/2)]+∑{d}[n+1, #]/xor(n, n+1)`
-/

namespace A286015.P17336635986492503389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ⌊(d : ℚ) / 2⌋ : ℤ) : ℚ) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)

end

end A286015.P17336635986492503389

namespace A286015

/-- `∑{d}[n+1, floor(#/2)]+∑{d}[n+1, #]/xor(n, n+1)` -/
def P17336635986492503389.Spec : Prop :=
  ∀ n, P17336635986492503389.a n = (A286015 (n + 1) : ℚ)

end A286015

/-! ## A286015.P16729021585373301699

`∑{d}[n+1, A123684(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286015

/-- `∑{d}[n+1, A123684(#)]` -/
def P16729021585373301699.Spec : Prop :=
  ∀ n, P16729021585373301699.a n = A286015 (n + 1)

theorem P16729021585373301699.correct : P16729021585373301699.Spec := by
  intro n
  simp only [A286015, Nat.add_sub_cancel]

end A286015

/-! ## A286015.P874498614522466216

`∑{d}[n+1, A225126(#)]+1`
-/

namespace A286015.P874498614522466216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A225126 d + 1

end

end A286015.P874498614522466216

namespace A286015

/-- `∑{d}[n+1, A225126(#)]+1` -/
def P874498614522466216.Spec : Prop :=
  ∀ n, P874498614522466216.a n = A286015 (n + 1)

end A286015

/-! ## A286015.P5028181550829070576

`∑{d}[n+1, A071045(#-1)+1]`
-/

namespace A286015.P5028181550829070576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A071045 (d - 1) + 1)

end

end A286015.P5028181550829070576

namespace A286015

/-- `∑{d}[n+1, A071045(#-1)+1]` -/
def P5028181550829070576.Spec : Prop :=
  ∀ n, P5028181550829070576.a n = A286015 (n + 1)

end A286015

/-! ## A286015.P3332556041542120277

`∑{d}[n+1, #-A001057(#-1)]`
-/

namespace A286015.P3332556041542120277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A001057 (d - 1))

end

end A286015.P3332556041542120277

namespace A286015

/-- `∑{d}[n+1, #-A001057(#-1)]` -/
def P3332556041542120277.Spec : Prop :=
  ∀ n, P3332556041542120277.a n = A286015 (n + 1)

end A286015

/-! ## A286015.P14441648376122999305

`∑{d}[n+1, A014682(#)-and(1, #)]`
-/

namespace A286015.P14441648376122999305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A014682 d - (Nat.land 1 d : ℤ))

end

end A286015.P14441648376122999305

namespace A286015

/-- `∑{d}[n+1, A014682(#)-and(1, #)]` -/
def P14441648376122999305.Spec : Prop :=
  ∀ n, P14441648376122999305.a n = A286015 (n + 1)

end A286015

/-! ## A286015.P16516042892022792445

`A086670(n+1)+A000593(n+1)`
-/

namespace A286015.P16516042892022792445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (n + 1) + A000593 (n + 1)

end

end A286015.P16516042892022792445

namespace A286015

/-- `A086670(n+1)+A000593(n+1)` -/
def P16516042892022792445.Spec : Prop :=
  ∀ n, P16516042892022792445.a n = A286015 (n + 1)

end A286015

/-! ## A286015.P13341254220969860031

`A054785(n+1)-A079247(n+1)`
-/

namespace A286015.P13341254220969860031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A079247 (n + 1)

end

end A286015.P13341254220969860031

namespace A286015

/-- `A054785(n+1)-A079247(n+1)` -/
def P13341254220969860031.Spec : Prop :=
  ∀ n, P13341254220969860031.a n = A286015 (n + 1)

end A286015

/-! ## A286015.P14969633610881417428

`A079247(n+1)+2*A086670(A000265(n+1))`
-/

namespace A286015.P14969633610881417428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) + 2 * A086670 (A000265 (n + 1)).toNat

end

end A286015.P14969633610881417428

namespace A286015

/-- `A079247(n+1)+2*A086670(A000265(n+1))` -/
def P14969633610881417428.Spec : Prop :=
  ∀ n, P14969633610881417428.a n = A286015 (n + 1)

end A286015

/-! ## A286015.P7506532963151426620

`A000593(n+1)+A079247(n+1)-A001227(n+1)`
-/

namespace A286015.P7506532963151426620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A079247 (n + 1) - A001227 (n + 1))

end

end A286015.P7506532963151426620

namespace A286015

/-- `A000593(n+1)+A079247(n+1)-A001227(n+1)` -/
def P7506532963151426620.Spec : Prop :=
  ∀ n, P7506532963151426620.a n = A286015 (n + 1)

end A286015

/-!
# A286016: Signed continued fraction expansion with all signs negative of tanh(1).

The programs for A286016, there is no canonical definition to state claims against.
-/

/-! ## A286016.P4232934582931296908

`Δ[A280682(round(sqrt(n²+1)))]+1`
-/

namespace A286016.P4232934582931296908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280682 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A286016.P4232934582931296908

/-! ## A286016.P12087037895835724112

`2-A010816(n)*A206474(n)`
-/

namespace A286016.P12087037895835724112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010816 n * A206474 n

end

end A286016.P12087037895835724112

/-! ## A286016.P14897478925817610226

`2-A010816(A004198(n+1)+n)`
-/

namespace A286016.P14897478925817610226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010816 (A004198 (n + 1) + (n : ℤ)).toNat

end

end A286016.P14897478925817610226

/-! ## A286016.P16059949854026167671

`A088440(A083221(n+2))+floor(atan(n+1))`
-/

namespace A286016.P16059949854026167671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A083221 (n + 2)).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A286016.P16059949854026167671

/-! ## A286016.P11255170095638723127

`A088440(A083221(n+2))+1-A000007(n)`
-/

namespace A286016.P11255170095638723127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A083221 (n + 2)).toNat + (1 - A000007 n)

end

end A286016.P11255170095638723127

/-! ## A286016.P12497809756312396360

`A088440(A083221(n+2))+A000040(n+1)%2`
-/

namespace A286016.P12497809756312396360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A083221 (n + 2)).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A286016.P12497809756312396360

/-! ## A286016.P13653023730939517124

`A000032(C(2, n+2))-A010816(n)*A162515(n)`
-/

namespace A286016.P13653023730939517124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) - A010816 n * A162515 n

end

end A286016.P13653023730939517124

/-! ## A286016.P18018583659105645248

`gcd(2, A000010(n+2))-(1-A088440(A083221(n+2)))`
-/

namespace A286016.P18018583659105645248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) - (1 - A088440 (A083221 (n + 2)).toNat)

end

end A286016.P18018583659105645248

/-! ## A286016.P16580385787101748886

`A020639(A000010(n+2))-A010816(n)*A162515(n)`
-/

namespace A286016.P16580385787101748886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat - A010816 n * A162515 n

end

end A286016.P16580385787101748886

/-!
# A286018: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A286018, there is no canonical definition to state claims against.
-/

/-! ## A286018.P12503553567054194639

`A007088(A286020(n))`
-/

namespace A286018.P12503553567054194639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286020 n).toNat

end

end A286018.P12503553567054194639

/-! ## A286018.P12187824986255111839

`A185544(2*A286020(n))`
-/

namespace A286018.P12187824986255111839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286020 n).toNat

end

end A286018.P12187824986255111839

/-! ## A286018.P5463126756042013625

`A286646(A004895(n+1))`
-/

namespace A286018.P5463126756042013625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286646 (A004895 (n + 1)).toNat

end

end A286018.P5463126756042013625

/-! ## A286018.P7849699233004750932

`A286646(A004906(n+1))`
-/

namespace A286018.P7849699233004750932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286646 (A004906 (n + 1)).toNat

end

end A286018.P7849699233004750932

/-! ## A286018.P783198023153955106

`A014577(A370528(n))*A286646(n)`
-/

namespace A286018.P783198023153955106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A370528 n).toNat * A286646 n

end

end A286018.P783198023153955106

/-!
# A286019: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A286019, there is no canonical definition to state claims against.
-/

/-! ## A286019.P7369159758011078425

`A007088(A286021(n))`
-/

namespace A286019.P7369159758011078425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286021 n).toNat

end

end A286019.P7369159758011078425

/-! ## A286019.P14403847034508379425

`A169966(A286021(n)+1)/3`
-/

namespace A286019.P14403847034508379425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (A286021 n + 1).toNat : ℚ) / 3

end

end A286019.P14403847034508379425

/-! ## A286019.P12202936455040602083

`A185544(2*A286021(n))`
-/

namespace A286019.P12202936455040602083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286021 n).toNat

end

end A286019.P12202936455040602083

/-! ## A286019.P16909143189567849893

`A185544(A286021(n)+A286021(n))`
-/

namespace A286019.P16909143189567849893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286021 n + A286021 n).toNat

end

end A286019.P16909143189567849893

/-! ## A286019.P11834519082756677021

`A286647(n)-A092726(A004016(2*(n+2)))`
-/

namespace A286019.P11834519082756677021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286647 n - A092726 (A004016 (2 * (n + 2))).toNat

end

end A286019.P11834519082756677021

/-!
# A286020: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A286020, there is no canonical definition to state claims against.
-/

/-! ## A286020.P1497097422549855326

`A368431(A286648(n))`
-/

namespace A286020.P1497097422549855326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368431 (A286648 n).toNat

end

end A286020.P1497097422549855326

/-! ## A286020.P9155455903563296944

`A286648(A004895(n+1))`
-/

namespace A286020.P9155455903563296944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286648 (A004895 (n + 1)).toNat

end

end A286020.P9155455903563296944

/-! ## A286020.P7947278303387981499

`A286648(A004906(n+1))`
-/

namespace A286020.P7947278303387981499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286648 (A004906 (n + 1)).toNat

end

end A286020.P7947278303387981499

/-! ## A286020.P13018214390860222430

`A286648(A004917(n+1))`
-/

namespace A286020.P13018214390860222430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286648 (A004917 (n + 1)).toNat

end

end A286020.P13018214390860222430

/-! ## A286020.P15313517494457776705

`filter[A286648(n), A071035(#)]`
-/

namespace A286020.P15313517494457776705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071035 (f1 j).toNat = 1) n)

end

end A286020.P15313517494457776705

/-!
# A286021: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A286021, there is no canonical definition to state claims against.
-/

/-! ## A286021.P12058172594349643579

`A359268(A286649(n))`
-/

namespace A286021.P12058172594349643579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359268 (A286649 n).toNat

end

end A286021.P12058172594349643579

/-! ## A286021.P9976789663260495728

`A286649(A004895(n+1))`
-/

namespace A286021.P9976789663260495728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286649 (A004895 (n + 1)).toNat

end

end A286021.P9976789663260495728

/-! ## A286021.P1205260297508883221

`A286649(A004906(n+1))`
-/

namespace A286021.P1205260297508883221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286649 (A004906 (n + 1)).toNat

end

end A286021.P1205260297508883221

/-! ## A286021.P15677396116010264220

`A286649(A004917(n+1))`
-/

namespace A286021.P15677396116010264220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286649 (A004917 (n + 1)).toNat

end

end A286021.P15677396116010264220

/-! ## A286021.P3425656635490751524

`A286649(n)+A000007(A210344(n))`
-/

namespace A286021.P3425656635490751524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286649 n + A000007 (A210344 n).toNat

end

end A286021.P3425656635490751524

/-!
# A286022: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 139", based on the 5-celled von Neumann neighborhood.

The programs for A286022, there is no canonical definition to state claims against.
-/

/-! ## A286022.P14853200460102740167

`A286642(n*A261015(2^n))`
-/

namespace A286022.P14853200460102740167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286642 ((n : ℤ) * A261015 (2 ^ n)).toNat

end

end A286022.P14853200460102740167

/-! ## A286022.P14841553861115460700

`A286642(n/A261015(2^n))`
-/

namespace A286022.P14841553861115460700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286642 (SequenceMachineLib.roundAway ((n : ℚ) / (A261015 (2 ^ n) : ℚ))).toNat

end

end A286022.P14841553861115460700

/-! ## A286022.P15476069893573945080

`floor(atan(A152544(n)))*A286642(n)`
-/

namespace A286022.P15476069893573945080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A152544 n : ℝ)⌋ * A286642 n

end

end A286022.P15476069893573945080

/-! ## A286022.P5694886054156962706

`A286642(n)^floor(atan(A152542(n)))`
-/

namespace A286022.P5694886054156962706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286642 n : ℚ) ^ (⌊Real.arctan (A152542 n : ℝ)⌋ : ℤ)

end

end A286022.P5694886054156962706

/-! ## A286022.P17881032765168736139

`A286642(n)+A000007(A295862(n))`
-/

namespace A286022.P17881032765168736139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286642 n + A000007 (A295862 n).toNat

end

end A286022.P17881032765168736139

/-!
# A286023: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 139", based on the 5-celled von Neumann neighborhood.

The programs for A286023, there is no canonical definition to state claims against.
-/

/-! ## A286023.P17757471652511938583

`A007088(A286025(n))`
-/

namespace A286023.P17757471652511938583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286025 n).toNat

end

end A286023.P17757471652511938583

/-! ## A286023.P15281105231572226733

`A007088(A286645(n))`
-/

namespace A286023.P15281105231572226733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286645 n).toNat

end

end A286023.P15281105231572226733

/-! ## A286023.P2061145367334968010

`A007088(A290863(n))`
-/

namespace A286023.P2061145367334968010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290863 n).toNat

end

end A286023.P2061145367334968010

/-!
# A286024: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 139", based on the 5-celled von Neumann neighborhood.

The programs for A286024, there is no canonical definition to state claims against.
-/

/-! ## A286024.P6319225497252364549

`A000265(A286025(n))`
-/

namespace A286024.P6319225497252364549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A286025 n).toNat

end

end A286024.P6319225497252364549

/-! ## A286024.P8910046849421727313

`A000265(A286645(n))`
-/

namespace A286024.P8910046849421727313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A286645 n).toNat

end

end A286024.P8910046849421727313

/-! ## A286024.P9881026846751460730

`A000265(A290863(n))`
-/

namespace A286024.P9881026846751460730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A290863 n).toNat

end

end A286024.P9881026846751460730

/-! ## A286024.P13447451679703827541

`A015070(n)!*A286644(n)`
-/

namespace A286024.P13447451679703827541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A015070 n).toNat : ℤ) * A286644 n

end

end A286024.P13447451679703827541

/-! ## A286024.P15966700188119888976

`A286644(A090318(n+1)+n)`
-/

namespace A286024.P15966700188119888976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286644 (A090318 (n + 1) + (n : ℤ)).toNat

end

end A286024.P15966700188119888976

/-!
# A286025: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 139", based on the 5-celled von Neumann neighborhood.

The programs for A286025, there is no canonical definition to state claims against.
-/

/-! ## A286025.P1343142088183107860

`A277826(A286645(n))`
-/

namespace A286025.P1343142088183107860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (A286645 n).toNat

end

end A286025.P1343142088183107860

/-! ## A286025.P7608343778198427816

`A277826(A290863(n))`
-/

namespace A286025.P7608343778198427816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (A290863 n).toNat

end

end A286025.P7608343778198427816

/-! ## A286025.P9989682928293323449

`filter[A286645(n), A105234(#)]`
-/

namespace A286025.P9989682928293323449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A286025.P9989682928293323449

/-! ## A286025.P2518296684471464048

`filter[A290863(n), A105234(#)]`
-/

namespace A286025.P2518296684471464048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A286025.P2518296684471464048

/-! ## A286025.P18081498471811342537

`filter[A286645(n), A127254(#)]`
-/

namespace A286025.P18081498471811342537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A286025.P18081498471811342537

/-!
# A286026: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A286026, there is no canonical definition to state claims against.
-/

/-! ## A286026.P6629415161106820633

`A007088(A286028(n))`
-/

namespace A286026.P6629415161106820633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286028 n).toNat

end

end A286026.P6629415161106820633

/-! ## A286026.P8290220194557721346

`A286694(n)-A083889(A281105(n))`
-/

namespace A286026.P8290220194557721346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286694 n - A083889 (A281105 n).toNat

end

end A286026.P8290220194557721346

/-! ## A286026.P4954192720787994629

`C(A286694(n), A194285(A006722(n)))`
-/

namespace A286026.P4954192720787994629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286694 n).toNat (A194285 (A006722 n).toNat).toNat

end

end A286026.P4954192720787994629

/-! ## A286026.P6600919927078605486

`A286694(n)-A118135(A147335(n+1))`
-/

namespace A286026.P6600919927078605486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286694 n - A118135 (A147335 (n + 1)).toNat

end

end A286026.P6600919927078605486

/-! ## A286026.P16354650630968748528

`A185116(A185245(3*(n+1)))*A286694(n)`
-/

namespace A286026.P16354650630968748528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 (A185245 (3 * (n + 1))).toNat * A286694 n

end

end A286026.P16354650630968748528

/-!
# A286027: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A286027, there is no canonical definition to state claims against.
-/

/-! ## A286027.P475253293635759652

`A007088(A286029(n))`
-/

namespace A286027.P475253293635759652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286029 n).toNat

end

end A286027.P475253293635759652

/-! ## A286027.P13530120355313889656

`A185544(2*A286029(n))`
-/

namespace A286027.P13530120355313889656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286029 n).toNat

end

end A286027.P13530120355313889656

/-! ## A286027.P5645056216439809129

`(2-A245013(n))*A185544(2*A286697(n))`
-/

namespace A286027.P5645056216439809129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A245013 n) * A185544 (2 * A286697 n).toNat

end

end A286027.P5645056216439809129

/-! ## A286027.P16669632276738840290

`A076478(A245013(n))*A185544(2*A286697(n))`
-/

namespace A286027.P16669632276738840290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 (A245013 n).toNat * A185544 (2 * A286697 n).toNat

end

end A286027.P16669632276738840290

/-! ## A286027.P7894531416681457948

`A185544(2*A286697(n))*A328958(A147335(n+1))`
-/

namespace A286027.P7894531416681457948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286697 n).toNat * A328958 (A147335 (n + 1)).toNat

end

end A286027.P7894531416681457948

/-!
# A286028: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A286028, there is no canonical definition to state claims against.
-/

/-! ## A286028.P17127542450422551067

`A286696(n)-A083889(A281105(n))`
-/

namespace A286028.P17127542450422551067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286696 n - A083889 (A281105 n).toNat

end

end A286028.P17127542450422551067

/-! ## A286028.P11438690411928991418

`C(A286696(n), A194285(A006722(n)))`
-/

namespace A286028.P11438690411928991418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286696 n).toNat (A194285 (A006722 n).toNat).toNat

end

end A286028.P11438690411928991418

/-! ## A286028.P718745991976931452

`A286696(n)-A118135(A147335(n+1))`
-/

namespace A286028.P718745991976931452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286696 n - A118135 (A147335 (n + 1)).toNat

end

end A286028.P718745991976931452

/-! ## A286028.P16358813544398309233

`A286696(n)-A011745(A365228(n+1))`
-/

namespace A286028.P16358813544398309233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286696 n - A011745 (A365228 (n + 1)).toNat

end

end A286028.P16358813544398309233

/-!
# A286029: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A286029, there is no canonical definition to state claims against.
-/

/-! ## A286029.P8007398633472407434

`A286697(n)%A053644(A007588(n+3))`
-/

namespace A286029.P8007398633472407434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286697 n) (A053644 (A007588 (n + 3)).toNat)

end

end A286029.P8007398633472407434

/-! ## A286029.P10855571169263912820

`A168046(A286697(n))*A286697(n)`
-/

namespace A286029.P10855571169263912820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A286697 n).toNat * A286697 n

end

end A286029.P10855571169263912820

/-! ## A286029.P2319382553822885479

`and(A112714(A077686(n+1)), A286697(n))`
-/

namespace A286029.P2319382553822885479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112714 (A077686 (n + 1)).toNat) (A286697 n)

end

end A286029.P2319382553822885479

/-! ## A286029.P3927456040332741556

`C(A286697(n), A364072(A112798(2*(n+3))))`
-/

namespace A286029.P3927456040332741556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286697 n).toNat (A364072 (A112798 (2 * (n + 3))).toNat).toNat

end

end A286029.P3927456040332741556

/-! ## A286029.P16912055637869272419

`A057427(A286028(n))*A286697(n)`
-/

namespace A286029.P16912055637869272419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A286028 n).toNat * A286697 n

end

end A286029.P16912055637869272419

/-!
# A286031: Positions of 1 in A285568; complement of A285569.

The programs for A286031, there is no canonical definition to state claims against.
-/

/-! ## A286031.P15631512720505467733

`filter[n+1, A285568(#)]`
-/

namespace A286031.P15631512720505467733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285568 (f1 j) = 1) n)

end

end A286031.P15631512720505467733

/-! ## A286031.P14532785976193764430

`eq[1, A285568(n+1)]+1`
-/

namespace A286031.P14532785976193764430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286031.P14532785976193764430

/-! ## A286031.P11889681747100988937

`record[A000027(n+1)*A285568(n+1)]`
-/

namespace A286031.P11889681747100988937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286031.P11889681747100988937

/-! ## A286031.P2000005441508148841

`record[A008619(n)*A285568(A008619(n))]`
-/

namespace A286031.P2000005441508148841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A285568 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286031.P2000005441508148841

/-! ## A286031.P11313942491116236476

`record[A251561(A251561(n+1))*A285568(n+1)]`
-/

namespace A286031.P11313942491116236476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251561 (A251561 (n + 1)).toNat * A285568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286031.P11313942491116236476

/-! ## A286031.P1894341860562187489

`record[A065033(n)*A285568(A065033(n))]`
-/

namespace A286031.P1894341860562187489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A285568 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286031.P1894341860562187489

/-! ## A286031.P5527091361560405158

`eq[0, A285565(2*(n+1))]-n`
-/

namespace A286031.P5527091361560405158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285565 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A286031.P5527091361560405158

/-!
# A286032: a(n) = a(n-1) - n*a(n-2); a(0) = a(1) = 1.

The programs for A286032, the canonical program `A286032.P16586035126865742935` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286032 has offset 0).

The definition of A286032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-n*a(n-2)` (program `A286032.P16586035126865742935`, by `A286032.P16586035126865742935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286032.P16586035126865742935

`a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A286032

/-- `a(n-1)-n*a(n-2)` -/
def P16586035126865742935.Spec : Prop :=
  ∀ n, P16586035126865742935.a n = A286032 n

theorem P16586035126865742935.correct : P16586035126865742935.Spec := by
  intro n
  simp only [A286032]

end A286032

/-! ## A286032.P12828239913207965775

`a(n-1)-a(n-2)/n^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A286032.P12828239913207965775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) / (n : ℚ) ^ (-1 : ℤ)

end

end A286032.P12828239913207965775

namespace A286032

/-- `a(n-1)-a(n-2)/n^(-1)` -/
def P12828239913207965775.Spec : Prop :=
  ∀ n, P12828239913207965775.a n = (A286032 n : ℚ)

end A286032

/-! ## A286032.P6245392021988606264

`A305008(∑[n+2]-1)`
-/

namespace A286032.P6245392021988606264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305008 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A286032.P6245392021988606264

namespace A286032

/-- `A305008(∑[n+2]-1)` -/
def P6245392021988606264.Spec : Prop :=
  ∀ n, P6245392021988606264.a n = A286032 n

end A286032

/-! ## A286032.P12463206703920714079

`A305008(A034856(n+1))%A002203(n)`
-/

namespace A286032.P12463206703920714079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305008 (A034856 (n + 1)).toNat) (A002203 n)

end

end A286032.P12463206703920714079

namespace A286032

/-- `A305008(A034856(n+1))%A002203(n)` -/
def P12463206703920714079.Spec : Prop :=
  ∀ n, P12463206703920714079.a n = A286032 n

end A286032

/-! ## A286032.P8913723217777145490

`A007318(∑[n])*A305008(A034856(n+1))`
-/

namespace A286032.P8913723217777145490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A305008 (A034856 (n + 1)).toNat

end

end A286032.P8913723217777145490

namespace A286032

/-- `A007318(∑[n])*A305008(A034856(n+1))` -/
def P8913723217777145490.Spec : Prop :=
  ∀ n, P8913723217777145490.a n = A286032 n

end A286032

/-!
# A286033: a(n) = binomial(2*n-2, n-1) + (-1)^n.

The programs for A286033, the canonical program `A286033.P13235938121048173013` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286033 has offset 1).

The definition of A286033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286033.P13235938121048173013

`A134758(n)-xor(1, n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A286033

/-- `A134758(n)-xor(1, n)` -/
def P13235938121048173013.Spec : Prop :=
  ∀ n, P13235938121048173013.a n = A286033 (n + 1)

theorem P13235938121048173013.correct : P13235938121048173013.Spec := by
  intro n
  simp only [A286033, Nat.add_sub_cancel]

end A286033

/-! ## A286033.P17940614537380899303

`A000984(n)-(-1)^n`
-/

namespace A286033.P17940614537380899303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (-1) ^ n

end

end A286033.P17940614537380899303

namespace A286033

/-- `A000984(n)-(-1)^n` -/
def P17940614537380899303.Spec : Prop :=
  ∀ n, P17940614537380899303.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P15564286063734717520

`record[A081668(n)]-(-1)^n`
-/

namespace A286033.P15564286063734717520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (-1) ^ n

end

end A286033.P15564286063734717520

namespace A286033

/-- `record[A081668(n)]-(-1)^n` -/
def P15564286063734717520.Spec : Prop :=
  ∀ n, P15564286063734717520.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P13577382076377155992

`record[A126869(n)]-(-1)^n`
-/

namespace A286033.P13577382076377155992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (-1) ^ n

end

end A286033.P13577382076377155992

namespace A286033

/-- `record[A126869(n)]-(-1)^n` -/
def P13577382076377155992.Spec : Prop :=
  ∀ n, P13577382076377155992.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P16339074120292275656

`record[A126930(n)]-(-1)^n`
-/

namespace A286033.P16339074120292275656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (-1) ^ n

end

end A286033.P16339074120292275656

namespace A286033

/-- `record[A126930(n)]-(-1)^n` -/
def P16339074120292275656.Spec : Prop :=
  ∀ n, P16339074120292275656.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P7150045054479451907

`A001405(2*n)-(-1)^n`
-/

namespace A286033.P7150045054479451907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - (-1) ^ n

end

end A286033.P7150045054479451907

namespace A286033

/-- `A001405(2*n)-(-1)^n` -/
def P7150045054479451907.Spec : Prop :=
  ∀ n, P7150045054479451907.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P12098882178549269984

`A128014(2*n)-(-1)^n`
-/

namespace A286033.P12098882178549269984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * n) - (-1) ^ n

end

end A286033.P12098882178549269984

namespace A286033

/-- `A128014(2*n)-(-1)^n` -/
def P12098882178549269984.Spec : Prop :=
  ∀ n, P12098882178549269984.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P16300827359058052870

`A014495(2*n)+1-(-1)^n`
-/

namespace A286033.P16300827359058052870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n) + 1 - (-1) ^ n

end

end A286033.P16300827359058052870

namespace A286033

/-- `A014495(2*n)+1-(-1)^n` -/
def P16300827359058052870.Spec : Prop :=
  ∀ n, P16300827359058052870.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P10921867939174987734

`(n+1)*A000108(n)-(-1)^n`
-/

namespace A286033.P10921867939174987734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n - (-1) ^ n

end

end A286033.P10921867939174987734

namespace A286033

/-- `(n+1)*A000108(n)-(-1)^n` -/
def P10921867939174987734.Spec : Prop :=
  ∀ n, P10921867939174987734.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P10459852928493565992

`A134758(n)-A004442(n)`
-/

namespace A286033.P10459852928493565992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134758 n - A004442 n

end

end A286033.P10459852928493565992

namespace A286033

/-- `A134758(n)-A004442(n)` -/
def P10459852928493565992.Spec : Prop :=
  ∀ n, P10459852928493565992.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P5147698265877762056

`A045992(n)-A114285(n)`
-/

namespace A286033.P5147698265877762056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n - A114285 n

end

end A286033.P5147698265877762056

namespace A286033

/-- `A045992(n)-A114285(n)` -/
def P5147698265877762056.Spec : Prop :=
  ∀ n, P5147698265877762056.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P14922130205365362029

`record[A126930(n)-A056594(n)]`
-/

namespace A286033.P14922130205365362029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n - A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286033.P14922130205365362029

namespace A286033

/-- `record[A126930(n)-A056594(n)]` -/
def P14922130205365362029.Spec : Prop :=
  ∀ n, P14922130205365362029.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P7494325934690852017

`A033999(n+1)+A000984(n)`
-/

namespace A286033.P7494325934690852017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A000984 n

end

end A286033.P7494325934690852017

namespace A286033

/-- `A033999(n+1)+A000984(n)` -/
def P7494325934690852017.Spec : Prop :=
  ∀ n, P7494325934690852017.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P5623039373740701837

`A063886(2*n)-A033999(n)`
-/

namespace A286033.P5623039373740701837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - A033999 n

end

end A286033.P5623039373740701837

namespace A286033

/-- `A063886(2*n)-A033999(n)` -/
def P5623039373740701837.Spec : Prop :=
  ∀ n, P5623039373740701837.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P17916010208886208624

`A126869(2*n)-A033999(n)`
-/

namespace A286033.P17916010208886208624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A033999 n

end

end A286033.P17916010208886208624

namespace A286033

/-- `A126869(2*n)-A033999(n)` -/
def P17916010208886208624.Spec : Prop :=
  ∀ n, P17916010208886208624.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P2425820616517360084

`A033999(n+1)+A001405(2*n)`
-/

namespace A286033.P2425820616517360084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A001405 (2 * n)

end

end A286033.P2425820616517360084

namespace A286033

/-- `A033999(n+1)+A001405(2*n)` -/
def P2425820616517360084.Spec : Prop :=
  ∀ n, P2425820616517360084.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P11437112381434429548

`A063886(2*n)+A010673(n)-1`
-/

namespace A286033.P11437112381434429548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) + (A010673 n - 1)

end

end A286033.P11437112381434429548

namespace A286033

/-- `A063886(2*n)+A010673(n)-1` -/
def P11437112381434429548.Spec : Prop :=
  ∀ n, P11437112381434429548.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P534286008316933672

`A081668(2*n)+A010673(n)-1`
-/

namespace A286033.P534286008316933672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) + (A010673 n - 1)

end

end A286033.P534286008316933672

namespace A286033

/-- `A081668(2*n)+A010673(n)-1` -/
def P534286008316933672.Spec : Prop :=
  ∀ n, P534286008316933672.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P8305800124407371979

`A126869(2*n)+A010673(n)-1`
-/

namespace A286033.P8305800124407371979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + (A010673 n - 1)

end

end A286033.P8305800124407371979

namespace A286033

/-- `A126869(2*n)+A010673(n)-1` -/
def P8305800124407371979.Spec : Prop :=
  ∀ n, P8305800124407371979.a n = A286033 (n + 1)

end A286033

/-! ## A286033.P14354054570310308940

`A063886(2*n)-A056594(2*n)`
-/

namespace A286033.P14354054570310308940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - A056594 (2 * n)

end

end A286033.P14354054570310308940

namespace A286033

/-- `A063886(2*n)-A056594(2*n)` -/
def P14354054570310308940.Spec : Prop :=
  ∀ n, P14354054570310308940.a n = A286033 (n + 1)

end A286033

/-!
# A286034: Compound filter: a(n) = P(A046523(n), A161942(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286034, there is no canonical definition to state claims against.
-/

/-! ## A286034.P16338571710820802318

`(2+(A046523(n+1)+A161942(n+1))²-A046523(n+1)-3*A161942(n+1))/2`
-/

namespace A286034.P16338571710820802318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + ((A046523 (n + 1) + A161942 (n + 1)) ^ 2 - A046523 (n + 1)) - 3 * A161942 (n + 1) : ℚ) / 2

end

end A286034.P16338571710820802318

/-!
# A286035: a(n) = 3*T(A285984(n)), where T(m) is the m-th triangular number A000217(m).

The programs for A286035, there is no canonical definition to state claims against.
-/

/-! ## A286035.P10584367754294432990

`3*C(A285984(n)+1, 2)`
-/

namespace A286035.P10584367754294432990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A285984 n + 1).toNat 2

end

end A286035.P10584367754294432990

/-!
# A286037: 

The programs for A286037, there is no canonical definition to state claims against.
-/

/-! ## A286037.P18375912817815204270

`(A286035(n)/3)²`
-/

namespace A286037.P18375912817815204270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A286035 n : ℚ) / 3) ^ 2

end

end A286037.P18375912817815204270

/-!
# A286038: Number of (undirected) paths in the n-cocktail party graph.

The programs for A286038, there is no canonical definition to state claims against.
-/

/-! ## A286038.P3286906164645781898

`(n+1)*(A229464(n)-1)`
-/

namespace A286038.P3286906164645781898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A229464 n - 1)

end

end A286038.P3286906164645781898

/-!
# A286039: Number of independent vertex sets in the n X n antelope graph.

The programs for A286039, there is no canonical definition to state claims against.
-/

/-! ## A286039.P6559777754761289996

`A293150(∑[A293507(n)])`
-/

namespace A286039.P6559777754761289996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293150 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286039.P6559777754761289996

/-!
# A286040: Matching number of the n X n antelope graph.

The programs for A286040, there is no canonical definition to state claims against.
-/

/-! ## A286040.P9202932097887233346

`(n+1)²-A286069(n+1)`
-/

namespace A286040.P9202932097887233346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A286069 (n + 1)

end

end A286040.P9202932097887233346

/-! ## A286040.P8569767270606445770

`A005563(n)+1-A286069(n+1)`
-/

namespace A286040.P8569767270606445770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A286069 (n + 1))

end

end A286040.P8569767270606445770

/-! ## A286040.P4420874924455532082

`∑[A004277(n)]-A286069(n+1)+n`
-/

namespace A286040.P4420874924455532082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A286069 (n + 1) + (n : ℤ)

end

end A286040.P4420874924455532082

/-! ## A286040.P13755296148034887990

`A002378(n)+n+1-A286069(n+1)`
-/

namespace A286040.P13755296148034887990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + ((n + 1 : ℤ) - A286069 (n + 1))

end

end A286040.P13755296148034887990

/-! ## A286040.P3704883900800573350

`∑[A004273(n)+2]-A286069(n+1)-1`
-/

namespace A286040.P3704883900800573350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A286069 (n + 1) - 1

end

end A286040.P3704883900800573350

/-! ## A286040.P2043696731554461580

`∑[n+1]+A000217(n)-A286069(n+1)`
-/

namespace A286040.P2043696731554461580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000217 n - A286069 (n + 1))

end

end A286040.P2043696731554461580

/-! ## A286040.P3442334136253008311

`(∑[2*n+1]-A286069(n+1))/A054977(n)`
-/

namespace A286040.P3442334136253008311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A286069 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A286040.P3442334136253008311

/-! ## A286040.P4077767626012340304

`A002522(n+1)-(A286069(n+1)+1)`
-/

namespace A286040.P4077767626012340304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) - (A286069 (n + 1) + 1)

end

end A286040.P4077767626012340304

/-!
# A286041: Number of partitions of n with parts differing by at least two and with an even number of parts.

The programs for A286041, there is no canonical definition to state claims against.
-/

/-! ## A286041.P15554114749747994535

`A003114(n)-A286316(n)`
-/

namespace A286041.P15554114749747994535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n - A286316 n

end

end A286041.P15554114749747994535

/-! ## A286041.P8003158964546145033

`A286316(n)+A039924(n)`
-/

namespace A286041.P8003158964546145033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286316 n + A039924 n

end

end A286041.P8003158964546145033

/-! ## A286041.P1273193920144379816

`(A039924(n)+A003114(n))/2`
-/

namespace A286041.P1273193920144379816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039924 n + A003114 n : ℚ) / 2

end

end A286041.P1273193920144379816

/-! ## A286041.P793114165995829125

`A003113(n)-(A286316(n)+A003106(n))`
-/

namespace A286041.P793114165995829125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - (A286316 n + A003106 n)

end

end A286041.P793114165995829125

/-! ## A286041.P3460468534874081773

`A000009(n)-(A286316(n)+A238708(n))`
-/

namespace A286041.P3460468534874081773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A286316 n + A238708 n)

end

end A286041.P3460468534874081773

/-! ## A286041.P2132487955709506940

`A000041(n)-(A286316(n)+A039899(n))`
-/

namespace A286041.P2132487955709506940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A286316 n + A039899 n)

end

end A286041.P2132487955709506940

/-! ## A286041.P18136855866867931310

`A114087(A152947(n+1))-A286316(n)`
-/

namespace A286041.P18136855866867931310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (A152947 (n + 1)).toNat - A286316 n

end

end A286041.P18136855866867931310

/-! ## A286041.P78114997990554593

`A114087(A133263(n))-A286316(n)`
-/

namespace A286041.P78114997990554593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (A133263 n).toNat - A286316 n

end

end A286041.P78114997990554593

/-! ## A286041.P7156996008250002664

`A004525(A039924(n)+A003114(n))`
-/

namespace A286041.P7156996008250002664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A039924 n + A003114 n).toNat

end

end A286041.P7156996008250002664

/-!
# A286042: Largest prime factor of A285993(n), the largest odd abundant number (A005231) equal to the product of n consecutive primes.

The programs for A286042, there is no canonical definition to state claims against.
-/

/-! ## A286042.P13699038287888184764

`record[p?[A185585(A073492(n+1))]]`
-/

namespace A286042.P13699038287888184764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185585 (A073492 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286042.P13699038287888184764

/-! ## A286042.P468065897661711414

`A000040(floor(log2(A101696(n+4))))`
-/

namespace A286042.P468065897661711414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.log 2 (A101696 (n + 4)).toNat)

end

end A286042.P468065897661711414

/-! ## A286042.P3041101602797923638

`A065091(record[A064064(A285505(n+1))])`
-/

namespace A286042.P3041101602797923638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064064 (A285505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A286042.P3041101602797923638

/-! ## A286042.P17716481314011983901

`A000040(A145397(n+4)%A102805(n+1))`
-/

namespace A286042.P17716481314011983901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A145397 (n + 4)) (A102805 (n + 1))).toNat

end

end A286042.P17716481314011983901

/-! ## A286042.P9961453697158824570

`A000040(comp[A225766(3*n+4)])`
-/

namespace A286042.P9961453697158824570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225766 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286042.P9961453697158824570

/-!
# A286043: (1/2)*A285658.

The programs for A286043, there is no canonical definition to state claims against.
-/

/-! ## A286043.P3111479155639168895

`A285658(n+1)/2`
-/

namespace A286043.P3111479155639168895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285658 (n + 1) : ℚ) / 2

end

end A286043.P3111479155639168895

/-! ## A286043.P16206726979270663767

`A285659(n+1)+n`
-/

namespace A286043.P16206726979270663767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285659 (n + 1) + (n : ℤ)

end

end A286043.P16206726979270663767

/-! ## A286043.P13239034416148105211

`A001281(A285658(n+1))`
-/

namespace A286043.P13239034416148105211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A285658 (n + 1)).toNat

end

end A286043.P13239034416148105211

/-! ## A286043.P15752296985765897318

`A003602(A285658(n+1)-1)`
-/

namespace A286043.P15752296985765897318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A285658 (n + 1) - 1).toNat

end

end A286043.P15752296985765897318

/-!
# A286044: {011->0}-transform of the Thue-Morse word A010060.

The programs for A286044, the canonical program `A286044.P6338311681429406342` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286044 has offset 1).

The definition of A286044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286044.P17142107800700451915

`1-char[∑[and(n, -n)%3]]`
-/

namespace A286044.P17142107800700451915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286044.P17142107800700451915

namespace A286044

/-- `1-char[∑[and(n, -n)%3]]` -/
def P17142107800700451915.Spec : Prop :=
  ∀ n, P17142107800700451915.a n = A286044 (n + 1)

end A286044

/-! ## A286044.P6189208441838791180

`char[comp[n*and(n, -n)]+n]`
-/

namespace A286044.P6189208441838791180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286044.P6189208441838791180

namespace A286044

/-- `char[comp[n*and(n, -n)]+n]` -/
def P6189208441838791180.Spec : Prop :=
  ∀ n, (P6189208441838791180.a n : ℤ) = A286044 (n + 1)

end A286044

/-! ## A286044.P6338311681429406342

`eq[0, val(n+1, 2)%2]%2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A286044

/-- `eq[0, val(n+1, 2)%2]%2` -/
def P6338311681429406342.Spec : Prop :=
  ∀ n, (P6338311681429406342.a n : ℤ) = A286044 (n + 1)

theorem P6338311681429406342.correct : P6338311681429406342.Spec := by
  intro n
  simp only [A286044, Nat.add_sub_cancel]

end A286044

/-! ## A286044.P14844292444159514502

`log2(gcd(2, lt[0, xor(n, n-1)%3]))`
-/

namespace A286044.P14844292444159514502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℝ)

end

end A286044.P14844292444159514502

namespace A286044

/-- `log2(gcd(2, lt[0, xor(n, n-1)%3]))` -/
def P14844292444159514502.Spec : Prop :=
  ∀ n, P14844292444159514502.a n = (A286044 (n + 1) : ℝ)

end A286044

/-! ## A286044.P16097015784878901114

`char[eq[1, and(1-2*n, 2*n)%3]+n]`
-/

namespace A286044.P16097015784878901114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286044.P16097015784878901114

namespace A286044

/-- `char[eq[1, and(1-2*n, 2*n)%3]+n]` -/
def P16097015784878901114.Spec : Prop :=
  ∀ n, (P16097015784878901114.a n : ℤ) = A286044 (n + 1)

end A286044

/-! ## A286044.P761188961316209453

`char[comp[A197911(n)]]`
-/

namespace A286044.P761188961316209453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286044.P761188961316209453

namespace A286044

/-- `char[comp[A197911(n)]]` -/
def P761188961316209453.Spec : Prop :=
  ∀ n, (P761188961316209453.a n : ℤ) = A286044 (n + 1)

end A286044

/-! ## A286044.P5260601681206813061

`char[A003158(n+1)]`
-/

namespace A286044.P5260601681206813061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286044.P5260601681206813061

namespace A286044

/-- `char[A003158(n+1)]` -/
def P5260601681206813061.Spec : Prop :=
  ∀ n, (P5260601681206813061.a n : ℤ) = A286044 (n + 1)

end A286044

/-! ## A286044.P10187633630177219757

`a(A092606(n))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A286044.P10187633630177219757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (A092606 n).toNat

end

end A286044.P10187633630177219757

namespace A286044

/-- `a(A092606(n))` -/
def P10187633630177219757.Spec : Prop :=
  ∀ n, (P10187633630177219757.a n : ℤ) = A286044 (n + 1)

end A286044

/-! ## A286044.P10814918915474732817

`A092606(n+1)%2`
-/

namespace A286044.P10814918915474732817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092606 (n + 1)) 2

end

end A286044.P10814918915474732817

namespace A286044

/-- `A092606(n+1)%2` -/
def P10814918915474732817.Spec : Prop :=
  ∀ n, P10814918915474732817.a n = A286044 (n + 1)

end A286044

/-! ## A286044.P11878314727201881177

`A121539(n+1)%2`
-/

namespace A286044.P11878314727201881177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121539 (n + 1)) 2

end

end A286044.P11878314727201881177

namespace A286044

/-- `A121539(n+1)%2` -/
def P11878314727201881177.Spec : Prop :=
  ∀ n, P11878314727201881177.a n = A286044 (n + 1)

end A286044

/-! ## A286044.P1226373816067654106

`A364377(n+1)%2`
-/

namespace A286044.P1226373816067654106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364377 (n + 1)) 2

end

end A286044.P1226373816067654106

namespace A286044

/-- `A364377(n+1)%2` -/
def P1226373816067654106.Spec : Prop :=
  ∀ n, P1226373816067654106.a n = A286044 (n + 1)

end A286044

/-! ## A286044.P11606700407716202986

`3%A339584(n+1)`
-/

namespace A286044.P11606700407716202986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A339584 (n + 1))

end

end A286044.P11606700407716202986

namespace A286044

/-- `3%A339584(n+1)` -/
def P11606700407716202986.Spec : Prop :=
  ∀ n, P11606700407716202986.a n = A286044 (n + 1)

end A286044

/-! ## A286044.P10957983334520343574

`char[A003157(n+1)-1]`
-/

namespace A286044.P10957983334520343574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286044.P10957983334520343574

namespace A286044

/-- `char[A003157(n+1)-1]` -/
def P10957983334520343574.Spec : Prop :=
  ∀ n, (P10957983334520343574.a n : ℤ) = A286044 (n + 1)

end A286044

/-! ## A286044.P3985187423209741457

`comp[A079523(n+1)]%2`
-/

namespace A286044.P3985187423209741457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A286044.P3985187423209741457

namespace A286044

/-- `comp[A079523(n+1)]%2` -/
def P3985187423209741457.Spec : Prop :=
  ∀ n, (P3985187423209741457.a n : ℤ) = A286044 (n + 1)

end A286044

/-!
# A286045: Positions of 0 in A286044; complement of A003157.

The programs for A286045, the canonical program `A286045.P5256592731174994276` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286045 has offset 1).

The definition of A286045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286045.P5256592731174994276

`∑[and(n, -n)%3]+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A286045

/-- `∑[and(n, -n)%3]+1` -/
def P5256592731174994276.Spec : Prop :=
  ∀ n, P5256592731174994276.a n = A286045 (n + 1)

theorem P5256592731174994276.correct : P5256592731174994276.Spec := by
  intro n
  simp only [A286045, Nat.add_sub_cancel]

end A286045

/-! ## A286045.P18246694705453854091

`∑[2-char[n*and(n, -n)]]`
-/

namespace A286045.P18246694705453854091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286045.P18246694705453854091

namespace A286045

/-- `∑[2-char[n*and(n, -n)]]` -/
def P18246694705453854091.Spec : Prop :=
  ∀ n, P18246694705453854091.a n = A286045 (n + 1)

end A286045

/-! ## A286045.P14125152310827290186

`∑[val(xor(n, n-1)+3, 6)+1]`
-/

namespace A286045.P14125152310827290186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.xor (n : ℤ) ((n : ℤ) - 1) + 3).toNat 6 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286045.P14125152310827290186

namespace A286045

/-- `∑[val(xor(n, n-1)+3, 6)+1]` -/
def P14125152310827290186.Spec : Prop :=
  ∀ n, (P14125152310827290186.a n : ℤ) = A286045 (n + 1)

end A286045

/-! ## A286045.P7876828501420026949

`∑[4%gcd(3, xor(n, n-1))+1]`
-/

namespace A286045.P7876828501420026949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Int.gcd 3 (Int.xor (n : ℤ) ((n : ℤ) - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286045.P7876828501420026949

namespace A286045

/-- `∑[4%gcd(3, xor(n, n-1))+1]` -/
def P7876828501420026949.Spec : Prop :=
  ∀ n, (P7876828501420026949.a n : ℤ) = A286045 (n + 1)

end A286045

/-! ## A286045.P9014581536284730297

`a(n-1)+gcd(2, val(2*n, 2))` with `a(0)=1`
-/

namespace A286045.P9014581536284730297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.gcd 2 (SequenceMachineLib.valuation (2 * n) 2)

end

end A286045.P9014581536284730297

namespace A286045

/-- `a(n-1)+gcd(2, val(2*n, 2))` -/
def P9014581536284730297.Spec : Prop :=
  ∀ n, (P9014581536284730297.a n : ℤ) = A286045 (n + 1)

end A286045

/-! ## A286045.P2245105241830003716

`∑[char[eq[0, xor(n, n-1)%3]]+1]`
-/

namespace A286045.P2245105241830003716
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286045.P2245105241830003716

namespace A286045

/-- `∑[char[eq[0, xor(n, n-1)%3]]+1]` -/
def P2245105241830003716.Spec : Prop :=
  ∀ n, (P2245105241830003716.a n : ℤ) = A286045 (n + 1)

end A286045

/-! ## A286045.P7753829231175684423

`∑[and(val(n, 2), a(n-1)!)]+n` with `a(0)=1`
-/

namespace A286045.P7753829231175684423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.land (SequenceMachineLib.valuation n 2) (Nat.factorial (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A286045.P7753829231175684423

namespace A286045

/-- `∑[and(val(n, 2), a(n-1)!)]+n` -/
def P7753829231175684423.Spec : Prop :=
  ∀ n, (P7753829231175684423.a n : ℤ) = A286045 (n + 1)

end A286045

/-! ## A286045.P4515655497806686626

`A197911(n)+1`
-/

namespace A286045.P4515655497806686626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n + 1

end

end A286045.P4515655497806686626

namespace A286045

/-- `A197911(n)+1` -/
def P4515655497806686626.Spec : Prop :=
  ∀ n, P4515655497806686626.a n = A286045 (n + 1)

end A286045

/-! ## A286045.P12902826471349360513

`A302788(4*n+2)`
-/

namespace A286045.P12902826471349360513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302788 (4 * n + 2)

end

end A286045.P12902826471349360513

namespace A286045

/-- `A302788(4*n+2)` -/
def P12902826471349360513.Spec : Prop :=
  ∀ n, P12902826471349360513.a n = A286045 (n + 1)

end A286045

/-! ## A286045.P14327113631581731569

`A123087(n)+1+n`
-/

namespace A286045.P14327113631581731569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n + 1 + (n : ℤ)

end

end A286045.P14327113631581731569

namespace A286045

/-- `A123087(n)+1+n` -/
def P14327113631581731569.Spec : Prop :=
  ∀ n, P14327113631581731569.a n = A286045 (n + 1)

end A286045

/-! ## A286045.P3595306308118574490

`Δ[n²]-A050292(n)`
-/

namespace A286045.P3595306308118574490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A050292 n

end

end A286045.P3595306308118574490

namespace A286045

/-- `Δ[n²]-A050292(n)` -/
def P3595306308118574490.Spec : Prop :=
  ∀ n, P3595306308118574490.a n = A286045 (n + 1)

end A286045

/-! ## A286045.P16799524425299142649

`∑[A328979(n+1)+1]`
-/

namespace A286045.P16799524425299142649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286045.P16799524425299142649

namespace A286045

/-- `∑[A328979(n+1)+1]` -/
def P16799524425299142649.Spec : Prop :=
  ∀ n, P16799524425299142649.a n = A286045 (n + 1)

end A286045

/-! ## A286045.P16299666726813130920

`∑[2-A285384(n+1)]`
-/

namespace A286045.P16299666726813130920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A285384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286045.P16299666726813130920

namespace A286045

/-- `∑[2-A285384(n+1)]` -/
def P16299666726813130920.Spec : Prop :=
  ∀ n, P16299666726813130920.a n = A286045 (n + 1)

end A286045

/-! ## A286045.P7107414898847545699

`comp[A003158(n+1)]+1`
-/

namespace A286045.P7107414898847545699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286045.P7107414898847545699

namespace A286045

/-- `comp[A003158(n+1)]+1` -/
def P7107414898847545699.Spec : Prop :=
  ∀ n, (P7107414898847545699.a n : ℤ) = A286045 (n + 1)

end A286045

/-! ## A286045.P17121561397264555588

`∑[val(A000123(n), 2)]+1`
-/

namespace A286045.P17121561397264555588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000123 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A286045.P17121561397264555588

namespace A286045

/-- `∑[val(A000123(n), 2)]+1` -/
def P17121561397264555588.Spec : Prop :=
  ∀ n, (P17121561397264555588.a n : ℤ) = A286045 (n + 1)

end A286045

/-! ## A286045.P3912495776008504579

`∑[C(2, A316826(n))]+1`
-/

namespace A286045.P3912495776008504579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A316826 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A286045.P3912495776008504579

namespace A286045

/-- `∑[C(2, A316826(n))]+1` -/
def P3912495776008504579.Spec : Prop :=
  ∀ n, (P3912495776008504579.a n : ℤ) = A286045 (n + 1)

end A286045

/-! ## A286045.P1796462051415964883

`∑[A284948(n+1)]+n`
-/

namespace A286045.P1796462051415964883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A286045.P1796462051415964883

namespace A286045

/-- `∑[A284948(n+1)]+n` -/
def P1796462051415964883.Spec : Prop :=
  ∀ n, P1796462051415964883.a n = A286045 (n + 1)

end A286045

/-!
# A286046: {011->1}-transform of the Thue-Morse word A010060.

The programs for A286046, the canonical program `A286046.P6614005406053025473` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286046 has offset 1).

The definition of A286046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286046.P2079197304230607857

`char[A286048(n+1)-1]`
-/

namespace A286046.P2079197304230607857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286048 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286046.P2079197304230607857

namespace A286046

/-- `char[A286048(n+1)-1]` -/
def P2079197304230607857.Spec : Prop :=
  ∀ n, (P2079197304230607857.a n : ℤ) = A286046 (n + 1)

end A286046

/-! ## A286046.P1746212955664414435

`(n+1-A286047(A110654(n+1)))²`
-/

namespace A286046.P1746212955664414435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A286047 (A110654 (n + 1)).toNat) ^ 2

end

end A286046.P1746212955664414435

namespace A286046

/-- `(n+1-A286047(A110654(n+1)))²` -/
def P1746212955664414435.Spec : Prop :=
  ∀ n, P1746212955664414435.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P6437700983238660190

`4%Δ[A286341(n+1)]`
-/

namespace A286046.P6437700983238660190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (f1 (n + 1) - f1 n)

end

end A286046.P6437700983238660190

namespace A286046

/-- `4%Δ[A286341(n+1)]` -/
def P6437700983238660190.Spec : Prop :=
  ∀ n, P6437700983238660190.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P3473109488153690990

`A007949(Δ[A286341(n+1)])`
-/

namespace A286046.P3473109488153690990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (f1 (n + 1) - f1 n).toNat

end

end A286046.P3473109488153690990

namespace A286046

/-- `A007949(Δ[A286341(n+1)])` -/
def P3473109488153690990.Spec : Prop :=
  ∀ n, P3473109488153690990.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P17247709915375476432

`A049320(Δ[A286341(n+1)])`
-/

namespace A286046.P17247709915375476432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (f1 (n + 1) - f1 n).toNat

end

end A286046.P17247709915375476432

namespace A286046

/-- `A049320(Δ[A286341(n+1)])` -/
def P17247709915375476432.Spec : Prop :=
  ∀ n, P17247709915375476432.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P14732611914695804994

`A000120(A286341(n+2)-A286341(n+1))-1`
-/

namespace A286046.P14732611914695804994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A286341 (n + 2) - A286341 (n + 1)).toNat - 1

end

end A286046.P14732611914695804994

namespace A286046

/-- `A000120(A286341(n+2)-A286341(n+1))-1` -/
def P14732611914695804994.Spec : Prop :=
  ∀ n, P14732611914695804994.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P17235225624474242029

`1-A010060(A286341(n+2)-A286341(n+1))`
-/

namespace A286046.P17235225624474242029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A286341 (n + 2) - A286341 (n + 1)).toNat

end

end A286046.P17235225624474242029

namespace A286046

/-- `1-A010060(A286341(n+2)-A286341(n+1))` -/
def P17235225624474242029.Spec : Prop :=
  ∀ n, P17235225624474242029.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P12300271652474721140

`2-A001285(A286341(n+2)-A286341(n+1))`
-/

namespace A286046.P12300271652474721140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001285 (A286341 (n + 2) - A286341 (n + 1)).toNat

end

end A286046.P12300271652474721140

namespace A286046

/-- `2-A001285(A286341(n+2)-A286341(n+1))` -/
def P12300271652474721140.Spec : Prop :=
  ∀ n, P12300271652474721140.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P6614005406053025473

`A286044(n+1)+A286049(n+2)-A286044(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A286046

/-- `A286044(n+1)+A286049(n+2)-A286044(n+2)` -/
def P6614005406053025473.Spec : Prop :=
  ∀ n, P6614005406053025473.a n = A286046 (n + 1)

theorem P6614005406053025473.correct : P6614005406053025473.Spec := by
  intro n
  simp only [A286046, Nat.add_sub_cancel]

end A286046

/-! ## A286046.P12623238756169863409

`A010060(A286492(n+3)-A286492(n+2))`
-/

namespace A286046.P12623238756169863409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A286492 (n + 3) - A286492 (n + 2)).toNat

end

end A286046.P12623238756169863409

namespace A286046

/-- `A010060(A286492(n+3)-A286492(n+2))` -/
def P12623238756169863409.Spec : Prop :=
  ∀ n, P12623238756169863409.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P5849977744704061440

`A000035(lt[A039963(n), A001285(n)])`
-/

namespace A286046.P5849977744704061440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286046.P5849977744704061440

namespace A286046

/-- `A000035(lt[A039963(n), A001285(n)])` -/
def P5849977744704061440.Spec : Prop :=
  ∀ n, P5849977744704061440.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P7707192038198502218

`A286493(A286341(n+2))`
-/

namespace A286046.P7707192038198502218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A286341 (n + 2)).toNat

end

end A286046.P7707192038198502218

namespace A286046

/-- `A286493(A286341(n+2))` -/
def P7707192038198502218.Spec : Prop :=
  ∀ n, P7707192038198502218.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P8763331556341987409

`A286490(A286485(n+2)+1)`
-/

namespace A286046.P8763331556341987409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286490 (A286485 (n + 2) + 1).toNat

end

end A286046.P8763331556341987409

namespace A286046

/-- `A286490(A286485(n+2)+1)` -/
def P8763331556341987409.Spec : Prop :=
  ∀ n, P8763331556341987409.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P16871585019160277613

`A286064(A286065(n+1)+5)`
-/

namespace A286046.P16871585019160277613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286064 (A286065 (n + 1) + 5).toNat

end

end A286046.P16871585019160277613

namespace A286046

/-- `A286064(A286065(n+1)+5)` -/
def P16871585019160277613.Spec : Prop :=
  ∀ n, P16871585019160277613.a n = A286046 (n + 1)

end A286046

/-! ## A286046.P7186026024549091709

`A000035(A284626(2*(n+2)))`
-/

namespace A286046.P7186026024549091709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A284626 (2 * (n + 2))).toNat

end

end A286046.P7186026024549091709

namespace A286046

/-- `A000035(A284626(2*(n+2)))` -/
def P7186026024549091709.Spec : Prop :=
  ∀ n, P7186026024549091709.a n = A286046 (n + 1)

end A286046

/-!
# A286047: Positions of 0 in A286046; complement of A286048.

The programs for A286047, the canonical program `A286047.P5733247358110953504` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286047 has offset 1).

The definition of A286047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286047.P1821863286891111695

`A285960(n+1)+Δ[n²]`
-/

namespace A286047.P1821863286891111695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285960 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286047.P1821863286891111695

namespace A286047

/-- `A285960(n+1)+Δ[n²]` -/
def P1821863286891111695.Spec : Prop :=
  ∀ n, P1821863286891111695.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P4817733895699406019

`A004767(n)-A286048(n+1)`
-/

namespace A286047.P4817733895699406019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A286048 (n + 1)

end

end A286047.P4817733895699406019

namespace A286047

/-- `A004767(n)-A286048(n+1)` -/
def P4817733895699406019.Spec : Prop :=
  ∀ n, P4817733895699406019.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P12610400333013306463

`xor(A088837(n+1), A286048(n+1))`
-/

namespace A286047.P12610400333013306463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A286048 (n + 1))

end

end A286047.P12610400333013306463

namespace A286047

/-- `xor(A088837(n+1), A286048(n+1))` -/
def P12610400333013306463.Spec : Prop :=
  ∀ n, P12610400333013306463.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P2574759450826917557

`A000069(n+1)+A285960(n+1)+A010060(n)`
-/

namespace A286047.P2574759450826917557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A285960 (n + 1) + A010060 n)

end

end A286047.P2574759450826917557

namespace A286047

/-- `A000069(n+1)+A285960(n+1)+A010060(n)` -/
def P2574759450826917557.Spec : Prop :=
  ∀ n, P2574759450826917557.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P5733247358110953504

`A285972(n+2)+Δ[n²]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286047

/-- `A285972(n+2)+Δ[n²]` -/
def P5733247358110953504.Spec : Prop :=
  ∀ n, P5733247358110953504.a n = A286047 (n + 1)

theorem P5733247358110953504.correct : P5733247358110953504.Spec := by
  intro n
  simp only [A286047, Nat.add_sub_cancel]

end A286047

/-! ## A286047.P3500397488354053288

`A000069(n+1)+A285972(n+2)+A010060(n)`
-/

namespace A286047.P3500397488354053288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A285972 (n + 2) + A010060 n)

end

end A286047.P3500397488354053288

namespace A286047

/-- `A000069(n+1)+A285972(n+2)+A010060(n)` -/
def P3500397488354053288.Spec : Prop :=
  ∀ n, P3500397488354053288.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P16376669714457731512

`A286046(2*n+1)+Δ[n²]`
-/

namespace A286047.P16376669714457731512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286046 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286047.P16376669714457731512

namespace A286047

/-- `A286046(2*n+1)+Δ[n²]` -/
def P16376669714457731512.Spec : Prop :=
  ∀ n, P16376669714457731512.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P15223130921199809227

`2*(n+1)-A286044(2*(n+1))`
-/

namespace A286047.P15223130921199809227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A286044 (2 * (n + 1))

end

end A286047.P15223130921199809227

namespace A286047

/-- `2*(n+1)-A286044(2*(n+1))` -/
def P15223130921199809227.Spec : Prop :=
  ∀ n, P15223130921199809227.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P110232385719485796

`A014681(A286048(n+1))`
-/

namespace A286047.P110232385719485796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286048 (n + 1)).toNat

end

end A286047.P110232385719485796

namespace A286047

/-- `A014681(A286048(n+1))` -/
def P110232385719485796.Spec : Prop :=
  ∀ n, P110232385719485796.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P16574507585445490107

`A000035(A003160(2*n+1))+2*n+1`
-/

namespace A286047.P16574507585445490107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003160 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286047.P16574507585445490107

namespace A286047

/-- `A000035(A003160(2*n+1))+2*n+1` -/
def P16574507585445490107.Spec : Prop :=
  ∀ n, P16574507585445490107.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P3367152643497705722

`A286050(n+1)+A286046(A286050(n+1))`
-/

namespace A286047.P3367152643497705722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286050 (n + 1) + A286046 (A286050 (n + 1)).toNat

end

end A286047.P3367152643497705722

namespace A286047

/-- `A286050(n+1)+A286046(A286050(n+1))` -/
def P3367152643497705722.Spec : Prop :=
  ∀ n, P3367152643497705722.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P5009652019335611739

`A003160(A003160(2*n+1))+A003159(A003160(2*(n+1)))`
-/

namespace A286047.P5009652019335611739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A003160 (2 * n + 1)).toNat + A003159 (A003160 (2 * (n + 1))).toNat

end

end A286047.P5009652019335611739

namespace A286047

/-- `A003160(A003160(2*n+1))+A003159(A003160(2*(n+1)))` -/
def P5009652019335611739.Spec : Prop :=
  ∀ n, P5009652019335611739.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P3915368984063500349

`lt[2, Δ[A286492(n+1)]]`
-/

namespace A286047.P3915368984063500349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286047.P3915368984063500349

namespace A286047

/-- `lt[2, Δ[A286492(n+1)]]` -/
def P3915368984063500349.Spec : Prop :=
  ∀ n, (P3915368984063500349.a n : ℤ) = A286047 (n + 1)

end A286047

/-! ## A286047.P635511737863778230

`lt[A000035(n), A191254(A285385(n+1))]`
-/

namespace A286047.P635511737863778230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A285385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286047.P635511737863778230

namespace A286047

/-- `lt[A000035(n), A191254(A285385(n+1))]` -/
def P635511737863778230.Spec : Prop :=
  ∀ n, (P635511737863778230.a n : ℤ) = A286047 (n + 1)

end A286047

/-! ## A286047.P8832012081856208340

`A039963(A003159(2*n+1))+2*n+1`
-/

namespace A286047.P8832012081856208340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A003159 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286047.P8832012081856208340

namespace A286047

/-- `A039963(A003159(2*n+1))+2*n+1` -/
def P8832012081856208340.Spec : Prop :=
  ∀ n, P8832012081856208340.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P17130705802189478446

`A039963(A285385(2*n+1))+2*n+1`
-/

namespace A286047.P17130705802189478446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A285385 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286047.P17130705802189478446

namespace A286047

/-- `A039963(A285385(2*n+1))+2*n+1` -/
def P17130705802189478446.Spec : Prop :=
  ∀ n, P17130705802189478446.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P566882940980213962

`A001285(A195608(n+1))+2*n`
-/

namespace A286047.P566882940980213962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A195608 (n + 1)).toNat + (2 * n : ℤ)

end

end A286047.P566882940980213962

namespace A286047

/-- `A001285(A195608(n+1))+2*n` -/
def P566882940980213962.Spec : Prop :=
  ∀ n, P566882940980213962.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P7437874977128203168

`A050292(A248057(n+2)-A091785(n+2))`
-/

namespace A286047.P7437874977128203168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A248057 (n + 2) - A091785 (n + 2)).toNat

end

end A286047.P7437874977128203168

namespace A286047

/-- `A050292(A248057(n+2)-A091785(n+2))` -/
def P7437874977128203168.Spec : Prop :=
  ∀ n, P7437874977128203168.a n = A286047 (n + 1)

end A286047

/-! ## A286047.P7343298258519640131

`A091949(A036554(2*n+1))+2*n+1`
-/

namespace A286047.P7343298258519640131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 (A036554 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286047.P7343298258519640131

namespace A286047

/-- `A091949(A036554(2*n+1))+2*n+1` -/
def P7343298258519640131.Spec : Prop :=
  ∀ n, P7343298258519640131.a n = A286047 (n + 1)

end A286047

/-!
# A286048: Positions of 1 in A286046; complement of A286047.

The programs for A286048, the canonical program `A286048.P9111352750848664703` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286048 has offset 1).

The definition of A286048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286048.P2989561845150877999

`comp[A286047(n+1)-1]+1`
-/

namespace A286048.P2989561845150877999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286047 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286048.P2989561845150877999

namespace A286048

/-- `comp[A286047(n+1)-1]+1` -/
def P2989561845150877999.Spec : Prop :=
  ∀ n, (P2989561845150877999.a n : ℤ) = A286048 (n + 1)

end A286048

/-! ## A286048.P13785334082687139944

`2*(n+1)-A285960(n+1)`
-/

namespace A286048.P13785334082687139944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285960 (n + 1)

end

end A286048.P13785334082687139944

namespace A286048

/-- `2*(n+1)-A285960(n+1)` -/
def P13785334082687139944.Spec : Prop :=
  ∀ n, P13785334082687139944.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P9111352750848664703

`A004767(n)-A286047(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A286048

/-- `A004767(n)-A286047(n+1)` -/
def P9111352750848664703.Spec : Prop :=
  ∀ n, P9111352750848664703.a n = A286048 (n + 1)

theorem P9111352750848664703.correct : P9111352750848664703.Spec := by
  intro n
  simp only [A286048, Nat.add_sub_cancel]

end A286048

/-! ## A286048.P9573614531137661549

`xor(A088837(n+1), A286047(n+1))`
-/

namespace A286048.P9573614531137661549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A286047 (n + 1))

end

end A286048.P9573614531137661549

namespace A286048

/-- `xor(A088837(n+1), A286047(n+1))` -/
def P9573614531137661549.Spec : Prop :=
  ∀ n, P9573614531137661549.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P17343175439884884059

`A286050(n+1)+A286051(n+1)-A286047(n+1)`
-/

namespace A286048.P17343175439884884059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286050 (n + 1) + (A286051 (n + 1) - A286047 (n + 1))

end

end A286048.P17343175439884884059

namespace A286048

/-- `A286050(n+1)+A286051(n+1)-A286047(n+1)` -/
def P17343175439884884059.Spec : Prop :=
  ∀ n, P17343175439884884059.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P4432536743856561219

`2*(n+1)-A285972(n+2)`
-/

namespace A286048.P4432536743856561219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285972 (n + 2)

end

end A286048.P4432536743856561219

namespace A286048

/-- `2*(n+1)-A285972(n+2)` -/
def P4432536743856561219.Spec : Prop :=
  ∀ n, P4432536743856561219.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P13724950177210492877

`A285968(n+1)+A286051(n+2)-A285968(n+2)`
-/

namespace A286048.P13724950177210492877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285968 (n + 1) + (A286051 (n + 2) - A285968 (n + 2))

end

end A286048.P13724950177210492877

namespace A286048

/-- `A285968(n+1)+A286051(n+2)-A285968(n+2)` -/
def P13724950177210492877.Spec : Prop :=
  ∀ n, P13724950177210492877.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P9683293323358764705

`filter[n+1, A286046(#)]`
-/

namespace A286048.P9683293323358764705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286046 (f1 j) = 1) n)

end

end A286048.P9683293323358764705

namespace A286048

/-- `filter[n+1, A286046(#)]` -/
def P9683293323358764705.Spec : Prop :=
  ∀ n, (P9683293323358764705.a n : ℤ) = A286048 (n + 1)

end A286048

/-! ## A286048.P17596179454558563872

`A286044(2*(n+1))+Δ[n²]`
-/

namespace A286048.P17596179454558563872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286048.P17596179454558563872

namespace A286048

/-- `A286044(2*(n+1))+Δ[n²]` -/
def P17596179454558563872.Spec : Prop :=
  ∀ n, P17596179454558563872.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P12447731582596557519

`A286046(2*(n+1))+Δ[n²]`
-/

namespace A286048.P12447731582596557519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286046 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286048.P12447731582596557519

namespace A286048

/-- `A286046(2*(n+1))+Δ[n²]` -/
def P12447731582596557519.Spec : Prop :=
  ∀ n, P12447731582596557519.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P2881823898019920932

`A014681(A286047(n+1))`
-/

namespace A286048.P2881823898019920932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286047 (n + 1)).toNat

end

end A286048.P2881823898019920932

namespace A286048

/-- `A014681(A286047(n+1))` -/
def P2881823898019920932.Spec : Prop :=
  ∀ n, P2881823898019920932.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P10092587151285564747

`A197911(∑[A026465(2*n+1)])`
-/

namespace A286048.P10092587151285564747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286048.P10092587151285564747

namespace A286048

/-- `A197911(∑[A026465(2*n+1)])` -/
def P10092587151285564747.Spec : Prop :=
  ∀ n, P10092587151285564747.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P4781664860980078988

`eq[A284391(n+1), A286049(n+1)]`
-/

namespace A286048.P4781664860980078988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286048.P4781664860980078988

namespace A286048

/-- `eq[A284391(n+1), A286049(n+1)]` -/
def P4781664860980078988.Spec : Prop :=
  ∀ n, (P4781664860980078988.a n : ℤ) = A286048 (n + 1)

end A286048

/-! ## A286048.P943617903482199871

`A176593(2*n+1)+A286044(2*(n+1))+n`
-/

namespace A286048.P943617903482199871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176593 (2 * n + 1) + (A286044 (2 * (n + 1)) + (n : ℤ))

end

end A286048.P943617903482199871

namespace A286048

/-- `A176593(2*n+1)+A286044(2*(n+1))+n` -/
def P943617903482199871.Spec : Prop :=
  ∀ n, P943617903482199871.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P234717766158904295

`A286051(n+1)-A286049(A286047(n+1))`
-/

namespace A286048.P234717766158904295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) - A286049 (A286047 (n + 1)).toNat

end

end A286048.P234717766158904295

namespace A286048

/-- `A286051(n+1)-A286049(A286047(n+1))` -/
def P234717766158904295.Spec : Prop :=
  ∀ n, P234717766158904295.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P15425665013504942493

`A286051(n+1)-A286046(A286050(n+1))`
-/

namespace A286048.P15425665013504942493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) - A286046 (A286050 (n + 1)).toNat

end

end A286048.P15425665013504942493

namespace A286048

/-- `A286051(n+1)-A286046(A286050(n+1))` -/
def P15425665013504942493.Spec : Prop :=
  ∀ n, P15425665013504942493.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P8048493622319658445

`A286051(n+1)-A286046(A286051(n+1)-1)`
-/

namespace A286048.P8048493622319658445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) - A286046 (A286051 (n + 1) - 1).toNat

end

end A286048.P8048493622319658445

namespace A286048

/-- `A286051(n+1)-A286046(A286051(n+1)-1)` -/
def P8048493622319658445.Spec : Prop :=
  ∀ n, P8048493622319658445.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P9119349154130897373

`A286051(n+1)-A284388(A286051(n+1)+1)`
-/

namespace A286048.P9119349154130897373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) - A284388 (A286051 (n + 1) + 1).toNat

end

end A286048.P9119349154130897373

namespace A286048

/-- `A286051(n+1)-A284388(A286051(n+1)+1)` -/
def P9119349154130897373.Spec : Prop :=
  ∀ n, P9119349154130897373.a n = A286048 (n + 1)

end A286048

/-! ## A286048.P14667326336891096

`record[A050292(n)-A029884(n+1)]`
-/

namespace A286048.P14667326336891096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n - A029884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286048.P14667326336891096

namespace A286048

/-- `record[A050292(n)-A029884(n+1)]` -/
def P14667326336891096.Spec : Prop :=
  ∀ n, P14667326336891096.a n = A286048 (n + 1)

end A286048

/-!
# A286049: {110->1}-transform of the Thue-Morse word A010060.

The programs for A286049, the canonical program `A286049.P11350509932985132439` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286049 has offset 1).

The definition of A286049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286049.P11350509932985132439

`char[A286051(n+1)-1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A286049

/-- `char[A286051(n+1)-1]` -/
def P11350509932985132439.Spec : Prop :=
  ∀ n, (P11350509932985132439.a n : ℤ) = A286049 (n + 1)

theorem P11350509932985132439.correct : P11350509932985132439.Spec := by
  intro n
  simp only [A286049, Nat.add_sub_cancel]

end A286049

/-! ## A286049.P17508743512413610999

`Δ[floor((and(1, A171946(n+1))+n)/2)]`
-/

namespace A286049.P17508743512413610999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 1 (A171946 (n + 1)) + (n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286049.P17508743512413610999

namespace A286049

/-- `Δ[floor((and(1, A171946(n+1))+n)/2)]` -/
def P17508743512413610999.Spec : Prop :=
  ∀ n, P17508743512413610999.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P7664572659738792740

`Δ[floor((and(1, A285385(n+1))+n)/2)]`
-/

namespace A286049.P7664572659738792740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 1 (A285385 (n + 1)) + (n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286049.P7664572659738792740

namespace A286049

/-- `Δ[floor((and(1, A285385(n+1))+n)/2)]` -/
def P7664572659738792740.Spec : Prop :=
  ∀ n, P7664572659738792740.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P7799106403894329984

`A010060(Δ[A286485(n+1)])`
-/

namespace A286049.P7799106403894329984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f1 (n + 1) - f1 n).toNat

end

end A286049.P7799106403894329984

namespace A286049

/-- `A010060(Δ[A286485(n+1)])` -/
def P7799106403894329984.Spec : Prop :=
  ∀ n, P7799106403894329984.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P4939559084374069282

`A286530(Δ[A286485(n+1)])`
-/

namespace A286049.P4939559084374069282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (f1 (n + 1) - f1 n).toNat

end

end A286049.P4939559084374069282

namespace A286049

/-- `A286530(Δ[A286485(n+1)])` -/
def P4939559084374069282.Spec : Prop :=
  ∀ n, P4939559084374069282.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P6980693677022537256

`A010060(A286485(n+2)-A286485(n+1))`
-/

namespace A286049.P6980693677022537256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A286485 (n + 2) - A286485 (n + 1)).toNat

end

end A286049.P6980693677022537256

namespace A286049

/-- `A010060(A286485(n+2)-A286485(n+1))` -/
def P6980693677022537256.Spec : Prop :=
  ∀ n, P6980693677022537256.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P11409159625679397436

`A286484(A286485(n+2)-A286485(n+1)+1)`
-/

namespace A286049.P11409159625679397436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286484 (A286485 (n + 2) - A286485 (n + 1) + 1).toNat

end

end A286049.P11409159625679397436

namespace A286049

/-- `A286484(A286485(n+2)-A286485(n+1)+1)` -/
def P11409159625679397436.Spec : Prop :=
  ∀ n, P11409159625679397436.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P10684895146006059429

`A284847(2*n+1)%2`
-/

namespace A286049.P10684895146006059429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284847 (2 * n + 1)) 2

end

end A286049.P10684895146006059429

namespace A286049

/-- `A284847(2*n+1)%2` -/
def P10684895146006059429.Spec : Prop :=
  ∀ n, P10684895146006059429.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P1138441427499955594

`A285091(2*(n+1))%2`
-/

namespace A286049.P1138441427499955594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285091 (2 * (n + 1))) 2

end

end A286049.P1138441427499955594

namespace A286049

/-- `A285091(2*(n+1))%2` -/
def P1138441427499955594.Spec : Prop :=
  ∀ n, P1138441427499955594.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P10163624474800330355

`and(1, A285091(2*n+2))`
-/

namespace A286049.P10163624474800330355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285091 (2 * n + 2))

end

end A286049.P10163624474800330355

namespace A286049

/-- `and(1, A285091(2*n+2))` -/
def P10163624474800330355.Spec : Prop :=
  ∀ n, P10163624474800330355.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P16429551293141707173

`and(A000035(2*n+1), A284847(2*n+1))`
-/

namespace A286049.P16429551293141707173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 (2 * n + 1)) (A284847 (2 * n + 1))

end

end A286049.P16429551293141707173

namespace A286049

/-- `and(A000035(2*n+1), A284847(2*n+1))` -/
def P16429551293141707173.Spec : Prop :=
  ∀ n, P16429551293141707173.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P16693301796583226716

`A010060(A143579(A000069(A160017(A003159(n+1)))))`
-/

namespace A286049.P16693301796583226716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A143579 (A000069 (A160017 (A003159 (n + 1)).toNat).toNat).toNat).toNat

end

end A286049.P16693301796583226716

namespace A286049

/-- `A010060(A143579(A000069(A160017(A003159(n+1)))))` -/
def P16693301796583226716.Spec : Prop :=
  ∀ n, P16693301796583226716.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P2394443317052776619

`A284789(A284791(n+1)+5)`
-/

namespace A286049.P2394443317052776619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284789 (A284791 (n + 1) + 5).toNat

end

end A286049.P2394443317052776619

namespace A286049

/-- `A284789(A284791(n+1)+5)` -/
def P2394443317052776619.Spec : Prop :=
  ∀ n, P2394443317052776619.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P1615850839185579686

`A000035(A284847(2*n+1))`
-/

namespace A286049.P1615850839185579686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A284847 (2 * n + 1)).toNat

end

end A286049.P1615850839185579686

namespace A286049

/-- `A000035(A284847(2*n+1))` -/
def P1615850839185579686.Spec : Prop :=
  ∀ n, P1615850839185579686.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P14825519806299573094

`A000035(A285091(2*(n+1)))`
-/

namespace A286049.P14825519806299573094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A285091 (2 * (n + 1))).toNat

end

end A286049.P14825519806299573094

namespace A286049

/-- `A000035(A285091(2*(n+1)))` -/
def P14825519806299573094.Spec : Prop :=
  ∀ n, P14825519806299573094.a n = A286049 (n + 1)

end A286049

/-! ## A286049.P3006382173454576640

`A284905(A265746(n)+1)`
-/

namespace A286049.P3006382173454576640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (A265746 n + 1).toNat

end

end A286049.P3006382173454576640

namespace A286049

/-- `A284905(A265746(n)+1)` -/
def P3006382173454576640.Spec : Prop :=
  ∀ n, P3006382173454576640.a n = A286049 (n + 1)

end A286049

/-!
# A286050: Positions of 0 in A286049; complement of A286051.

The programs for A286050, the canonical program `A286050.P16642162876214931589` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286050 has offset 1).

The definition of A286050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286050.P16642162876214931589

`A285957(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286050

/-- `A285957(n+1)+Δ[n²]` -/
def P16642162876214931589.Spec : Prop :=
  ∀ n, P16642162876214931589.a n = A286050 (n + 1)

theorem P16642162876214931589.correct : P16642162876214931589.Spec := by
  intro n
  simp only [A286050, Nat.add_sub_cancel]

end A286050

/-! ## A286050.P550466105196912637

`comp[A286051(n+1)-1]+1`
-/

namespace A286050.P550466105196912637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286050.P550466105196912637

namespace A286050

/-- `comp[A286051(n+1)-1]+1` -/
def P550466105196912637.Spec : Prop :=
  ∀ n, (P550466105196912637.a n : ℤ) = A286050 (n + 1)

end A286050

/-! ## A286050.P1249404507282538618

`A004767(n)-A286051(n+1)`
-/

namespace A286050.P1249404507282538618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A286051 (n + 1)

end

end A286050.P1249404507282538618

namespace A286050

/-- `A004767(n)-A286051(n+1)` -/
def P1249404507282538618.Spec : Prop :=
  ∀ n, P1249404507282538618.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P2025423654251707598

`xor(A088837(n+1), A286051(n+1))`
-/

namespace A286050.P2025423654251707598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A286051 (n + 1))

end

end A286050.P2025423654251707598

namespace A286050

/-- `xor(A088837(n+1), A286051(n+1))` -/
def P2025423654251707598.Spec : Prop :=
  ∀ n, P2025423654251707598.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P5794155741871668897

`∪[A284393(2*n+1), A003156(A284393(n+2))]`
-/

namespace A286050.P5794155741871668897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (A284393 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286050.P5794155741871668897

namespace A286050

/-- `∪[A284393(2*n+1), A003156(A284393(n+2))]` -/
def P5794155741871668897.Spec : Prop :=
  ∀ n, (P5794155741871668897.a n : ℤ) = A286050 (n + 1)

end A286050

/-! ## A286050.P11604566372688819032

`A000069(n+1)+A285957(n+1)+A010060(n)`
-/

namespace A286050.P11604566372688819032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A285957 (n + 1) + A010060 n)

end

end A286050.P11604566372688819032

namespace A286050

/-- `A000069(n+1)+A285957(n+1)+A010060(n)` -/
def P11604566372688819032.Spec : Prop :=
  ∀ n, P11604566372688819032.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P2340695312345285692

`A286047(n+1)+A286048(n+1)-A286051(n+1)`
-/

namespace A286050.P2340695312345285692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286047 (n + 1) + (A286048 (n + 1) - A286051 (n + 1))

end

end A286050.P2340695312345285692

namespace A286050

/-- `A286047(n+1)+A286048(n+1)-A286051(n+1)` -/
def P2340695312345285692.Spec : Prop :=
  ∀ n, P2340695312345285692.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P16921552290859549204

`A285966(A285964(n+1))+2*n+1`
-/

namespace A286050.P16921552290859549204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285966 (A285964 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286050.P16921552290859549204

namespace A286050

/-- `A285966(A285964(n+1))+2*n+1` -/
def P16921552290859549204.Spec : Prop :=
  ∀ n, P16921552290859549204.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P14101300577087318374

`A286044(2*n+1)+Δ[n²]`
-/

namespace A286050.P14101300577087318374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286050.P14101300577087318374

namespace A286050

/-- `A286044(2*n+1)+Δ[n²]` -/
def P14101300577087318374.Spec : Prop :=
  ∀ n, P14101300577087318374.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P12588300235169893401

`A286049(2*n+1)+Δ[n²]`
-/

namespace A286050.P12588300235169893401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286050.P12588300235169893401

namespace A286050

/-- `A286049(2*n+1)+Δ[n²]` -/
def P12588300235169893401.Spec : Prop :=
  ∀ n, P12588300235169893401.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P1031983956072087406

`A014681(A286051(n+1))`
-/

namespace A286050.P1031983956072087406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286051 (n + 1)).toNat

end

end A286050.P1031983956072087406

namespace A286050

/-- `A014681(A286051(n+1))` -/
def P1031983956072087406.Spec : Prop :=
  ∀ n, P1031983956072087406.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P12438054929479674870

`A176593(2*n+1)+A286044(2*n+1)+n`
-/

namespace A286050.P12438054929479674870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176593 (2 * n + 1) + (A286044 (2 * n + 1) + (n : ℤ))

end

end A286050.P12438054929479674870

namespace A286050

/-- `A176593(2*n+1)+A286044(2*n+1)+n` -/
def P12438054929479674870.Spec : Prop :=
  ∀ n, P12438054929479674870.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P2925186129062732345

`eq[A028310(n)-n, A286049(A028310(n))]`
-/

namespace A286050.P2925186129062732345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286050.P2925186129062732345

namespace A286050

/-- `eq[A028310(n)-n, A286049(A028310(n))]` -/
def P2925186129062732345.Spec : Prop :=
  ∀ n, (P2925186129062732345.a n : ℤ) = A286050 (n + 1)

end A286050

/-! ## A286050.P5792400016325622405

`A286047(n+1)-A286049(A286047(n+1))`
-/

namespace A286050.P5792400016325622405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286047 (n + 1) - A286049 (A286047 (n + 1)).toNat

end

end A286050.P5792400016325622405

namespace A286050

/-- `A286047(n+1)-A286049(A286047(n+1))` -/
def P5792400016325622405.Spec : Prop :=
  ∀ n, P5792400016325622405.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P16072549987055420317

`A001285(A195609(n+1))+2*n`
-/

namespace A286050.P16072549987055420317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A195609 (n + 1)).toNat + (2 * n : ℤ)

end

end A286050.P16072549987055420317

namespace A286050

/-- `A001285(A195609(n+1))+2*n` -/
def P16072549987055420317.Spec : Prop :=
  ∀ n, P16072549987055420317.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P12381858977588809841

`A177704(lt[A007413(n+1), 2])+2*n`
-/

namespace A286050.P12381858977588809841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + (2 * n : ℤ)

end

end A286050.P12381858977588809841

namespace A286050

/-- `A177704(lt[A007413(n+1), 2])+2*n` -/
def P12381858977588809841.Spec : Prop :=
  ∀ n, P12381858977588809841.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P7350737226138962588

`A000035(A121539(2*n+1))+2*n+1`
-/

namespace A286050.P7350737226138962588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A121539 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286050.P7350737226138962588

namespace A286050

/-- `A000035(A121539(2*n+1))+2*n+1` -/
def P7350737226138962588.Spec : Prop :=
  ∀ n, P7350737226138962588.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P4534931369497692654

`A328981(A003159(2*n+1))+2*n+1`
-/

namespace A286050.P4534931369497692654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (A003159 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286050.P4534931369497692654

namespace A286050

/-- `A328981(A003159(2*n+1))+2*n+1` -/
def P4534931369497692654.Spec : Prop :=
  ∀ n, P4534931369497692654.a n = A286050 (n + 1)

end A286050

/-! ## A286050.P7346259083630180628

`A328981(A285385(2*n+1))+2*n+1`
-/

namespace A286050.P7346259083630180628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (A285385 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286050.P7346259083630180628

namespace A286050

/-- `A328981(A285385(2*n+1))+2*n+1` -/
def P7346259083630180628.Spec : Prop :=
  ∀ n, P7346259083630180628.a n = A286050 (n + 1)

end A286050

/-!
# A286051: Positions of 1 in A286049; complement of A286050.

The programs for A286051, the canonical program `A286051.P3921126115596038729` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286051 has offset 1).

The definition of A286051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286051.P3921126115596038729

`2*(n+1)-A285957(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286051

/-- `2*(n+1)-A285957(n+1)` -/
def P3921126115596038729.Spec : Prop :=
  ∀ n, P3921126115596038729.a n = A286051 (n + 1)

theorem P3921126115596038729.correct : P3921126115596038729.Spec := by
  intro n
  simp only [A286051, Nat.add_sub_cancel]

end A286051

/-! ## A286051.P18029279266123391567

`A004767(n)-A286050(n+1)`
-/

namespace A286051.P18029279266123391567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A286050 (n + 1)

end

end A286051.P18029279266123391567

namespace A286051

/-- `A004767(n)-A286050(n+1)` -/
def P18029279266123391567.Spec : Prop :=
  ∀ n, P18029279266123391567.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P13876074400017638184

`xor(A088837(n+1), A286050(n+1))`
-/

namespace A286051.P13876074400017638184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A286050 (n + 1))

end

end A286051.P13876074400017638184

namespace A286051

/-- `xor(A088837(n+1), A286050(n+1))` -/
def P13876074400017638184.Spec : Prop :=
  ∀ n, P13876074400017638184.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P17311865032930885949

`(A005408(n)+A005408(n)²)/A286050(n+1)`
-/

namespace A286051.P17311865032930885949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n + A005408 n ^ 2 : ℚ) / (A286050 (n + 1) : ℚ)

end

end A286051.P17311865032930885949

namespace A286051

/-- `(A005408(n)+A005408(n)²)/A286050(n+1)` -/
def P17311865032930885949.Spec : Prop :=
  ∀ n, P17311865032930885949.a n = (A286051 (n + 1) : ℚ)

end A286051

/-! ## A286051.P14269395484354340081

`A286066(n+1)+A286048(n+2)-A286066(n+2)`
-/

namespace A286051.P14269395484354340081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1) + (A286048 (n + 2) - A286066 (n + 2))

end

end A286051.P14269395484354340081

namespace A286051

/-- `A286066(n+1)+A286048(n+2)-A286066(n+2)` -/
def P14269395484354340081.Spec : Prop :=
  ∀ n, P14269395484354340081.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P7255377471925137069

`filter[n+1, A286049(#)]`
-/

namespace A286051.P7255377471925137069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286049 (f1 j) = 1) n)

end

end A286051.P7255377471925137069

namespace A286051

/-- `filter[n+1, A286049(#)]` -/
def P7255377471925137069.Spec : Prop :=
  ∀ n, (P7255377471925137069.a n : ℤ) = A286051 (n + 1)

end A286051

/-! ## A286051.P823721073694440382

`eq[1, A286049(n+1)]+1`
-/

namespace A286051.P823721073694440382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286051.P823721073694440382

namespace A286051

/-- `eq[1, A286049(n+1)]+1` -/
def P823721073694440382.Spec : Prop :=
  ∀ n, (P823721073694440382.a n : ℤ) = A286051 (n + 1)

end A286051

/-! ## A286051.P6599258069114074550

`A286049(2*(n+1))+Δ[n²]`
-/

namespace A286051.P6599258069114074550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286051.P6599258069114074550

namespace A286051

/-- `A286049(2*(n+1))+Δ[n²]` -/
def P6599258069114074550.Spec : Prop :=
  ∀ n, P6599258069114074550.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P13948399451575062131

`2*(n+1)-A286044(2*n+1)`
-/

namespace A286051.P13948399451575062131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A286044 (2 * n + 1)

end

end A286051.P13948399451575062131

namespace A286051

/-- `2*(n+1)-A286044(2*n+1)` -/
def P13948399451575062131.Spec : Prop :=
  ∀ n, P13948399451575062131.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P18203162748094961261

`2*(n+1)-A286049(2*n+1)`
-/

namespace A286051.P18203162748094961261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A286049 (2 * n + 1)

end

end A286051.P18203162748094961261

namespace A286051

/-- `2*(n+1)-A286049(2*n+1)` -/
def P18203162748094961261.Spec : Prop :=
  ∀ n, P18203162748094961261.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P7744427102908612589

`A014681(A286050(n+1))`
-/

namespace A286051.P7744427102908612589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286050 (n + 1)).toNat

end

end A286051.P7744427102908612589

namespace A286051

/-- `A014681(A286050(n+1))` -/
def P7744427102908612589.Spec : Prop :=
  ∀ n, P7744427102908612589.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P11200496330919691603

`eq[1, A286049(A028310(n))]`
-/

namespace A286051.P11200496330919691603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286051.P11200496330919691603

namespace A286051

/-- `eq[1, A286049(A028310(n))]` -/
def P11200496330919691603.Spec : Prop :=
  ∀ n, (P11200496330919691603.a n : ℤ) = A286051 (n + 1)

end A286051

/-! ## A286051.P4959088595265917265

`A286049(2*n+2)+A028310(n+1)+n`
-/

namespace A286051.P4959088595265917265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (2 * n + 2) + A028310 (n + 1) + (n : ℤ)

end

end A286051.P4959088595265917265

namespace A286051

/-- `A286049(2*n+2)+A028310(n+1)+n` -/
def P4959088595265917265.Spec : Prop :=
  ∀ n, P4959088595265917265.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P5960497750354501762

`A035263(A171946(2*(n+1))+1)+2*n+1`
-/

namespace A286051.P5960497750354501762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A171946 (2 * (n + 1)) + 1).toNat + (2 * n + 1 : ℤ)

end

end A286051.P5960497750354501762

namespace A286051

/-- `A035263(A171946(2*(n+1))+1)+2*n+1` -/
def P5960497750354501762.Spec : Prop :=
  ∀ n, P5960497750354501762.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P17324115737880001119

`A005408(A005408(n))-A286050(n+1)`
-/

namespace A286051.P17324115737880001119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat - A286050 (n + 1)

end

end A286051.P17324115737880001119

namespace A286051

/-- `A005408(A005408(n))-A286050(n+1)` -/
def P17324115737880001119.Spec : Prop :=
  ∀ n, P17324115737880001119.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P3541838528267815160

`A286048(n+1)+A286046(A286050(n+1))`
-/

namespace A286051.P3541838528267815160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286048 (n + 1) + A286046 (A286050 (n + 1)).toNat

end

end A286051.P3541838528267815160

namespace A286051

/-- `A286048(n+1)+A286046(A286050(n+1))` -/
def P3541838528267815160.Spec : Prop :=
  ∀ n, P3541838528267815160.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P9810376734134308869

`A039963(A161579(2*n+1))+2*n+1`
-/

namespace A286051.P9810376734134308869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A161579 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286051.P9810376734134308869

namespace A286051

/-- `A039963(A161579(2*n+1))+2*n+1` -/
def P9810376734134308869.Spec : Prop :=
  ∀ n, P9810376734134308869.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P1323467809062149132

`A000035(A091855(n+1))+2*n+1`
-/

namespace A286051.P1323467809062149132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A091855 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286051.P1323467809062149132

namespace A286051

/-- `A000035(A091855(n+1))+2*n+1` -/
def P1323467809062149132.Spec : Prop :=
  ∀ n, P1323467809062149132.a n = A286051 (n + 1)

end A286051

/-! ## A286051.P17811779020130561112

`A000035(A003159(2*n+1))+2*n+1`
-/

namespace A286051.P17811779020130561112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003159 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286051.P17811779020130561112

namespace A286051

/-- `A000035(A003159(2*n+1))+2*n+1` -/
def P17811779020130561112.Spec : Prop :=
  ∀ n, P17811779020130561112.a n = A286051 (n + 1)

end A286051

/-!
# A286052: {101->0}-transform of the Thue-Morse word A010060.

The programs for A286052, the canonical program `A286052.P8197763076954538338` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286052 has offset 1).

The definition of A286052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286052.P14100526522416834979

`char[A286054(n+1)-1]`
-/

namespace A286052.P14100526522416834979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286054 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286052.P14100526522416834979

namespace A286052

/-- `char[A286054(n+1)-1]` -/
def P14100526522416834979.Spec : Prop :=
  ∀ n, (P14100526522416834979.a n : ℤ) = A286052 (n + 1)

end A286052

/-! ## A286052.P2437275381715521643

`xor(1, A286055(xor(1, n)+1))`
-/

namespace A286052.P2437275381715521643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A286055 (Nat.xor 1 n + 1))

end

end A286052.P2437275381715521643

namespace A286052

/-- `xor(1, A286055(xor(1, n)+1))` -/
def P2437275381715521643.Spec : Prop :=
  ∀ n, P2437275381715521643.a n = A286052 (n + 1)

end A286052

/-! ## A286052.P7527943431214858754

`1-A286055(A004442(n)+1)`
-/

namespace A286052.P7527943431214858754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286055 (A004442 n + 1).toNat

end

end A286052.P7527943431214858754

namespace A286052

/-- `1-A286055(A004442(n)+1)` -/
def P7527943431214858754.Spec : Prop :=
  ∀ n, P7527943431214858754.a n = A286052 (n + 1)

end A286052

/-! ## A286052.P17654991348645339191

`1-A286055(A014681(n+1))`
-/

namespace A286052.P17654991348645339191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286055 (A014681 (n + 1)).toNat

end

end A286052.P17654991348645339191

namespace A286052

/-- `1-A286055(A014681(n+1))` -/
def P17654991348645339191.Spec : Prop :=
  ∀ n, P17654991348645339191.a n = A286052 (n + 1)

end A286052

/-! ## A286052.P8197763076954538338

`and(A014205(n)², A026465(A008619(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286052

/-- `and(A014205(n)², A026465(A008619(n)))` -/
def P8197763076954538338.Spec : Prop :=
  ∀ n, P8197763076954538338.a n = A286052 (n + 1)

theorem P8197763076954538338.correct : P8197763076954538338.Spec := by
  intro n
  simp only [A286052, Nat.add_sub_cancel]

end A286052

/-! ## A286052.P5987409357736303393

`A284388(or(1, A284392(n+1))-A284389(n+1))`
-/

namespace A286052.P5987409357736303393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (Int.lor 1 (A284392 (n + 1)) - A284389 (n + 1)).toNat

end

end A286052.P5987409357736303393

namespace A286052

/-- `A284388(or(1, A284392(n+1))-A284389(n+1))` -/
def P5987409357736303393.Spec : Prop :=
  ∀ n, P5987409357736303393.a n = A286052 (n + 1)

end A286052

/-! ## A286052.P11859222978817988981

`A101615(n)%A014695(n)`
-/

namespace A286052.P11859222978817988981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101615 n) (A014695 n)

end

end A286052.P11859222978817988981

namespace A286052

/-- `A101615(n)%A014695(n)` -/
def P11859222978817988981.Spec : Prop :=
  ∀ n, P11859222978817988981.a n = A286052 (n + 1)

end A286052

/-! ## A286052.P5766491725586697904

`and(A000537(n), A101615(n))`
-/

namespace A286052.P5766491725586697904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000537 n) (A101615 n)

end

end A286052.P5766491725586697904

namespace A286052

/-- `and(A000537(n), A101615(n))` -/
def P5766491725586697904.Spec : Prop :=
  ∀ n, P5766491725586697904.a n = A286052 (n + 1)

end A286052

/-! ## A286052.P12394825627376775236

`and(A000539(n), A101615(n))`
-/

namespace A286052.P12394825627376775236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000539 n) (A101615 n)

end

end A286052.P12394825627376775236

namespace A286052

/-- `and(A000539(n), A101615(n))` -/
def P12394825627376775236.Spec : Prop :=
  ∀ n, P12394825627376775236.a n = A286052 (n + 1)

end A286052

/-! ## A286052.P11847912956638916571

`and(A000541(n), A101615(n))`
-/

namespace A286052.P11847912956638916571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000541 n) (A101615 n)

end

end A286052.P11847912956638916571

namespace A286052

/-- `and(A000541(n), A101615(n))` -/
def P11847912956638916571.Spec : Prop :=
  ∀ n, P11847912956638916571.a n = A286052 (n + 1)

end A286052

/-!
# A286053: Positions of 0 in A286052; complement of A286054.

The programs for A286053, the canonical program `A286053.P9692658622334694339` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286053 has offset 1).

The definition of A286053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286053.P9692658622334694339

`lt[A286052(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A286053

/-- `lt[A286052(n+1), 1]+1` -/
def P9692658622334694339.Spec : Prop :=
  ∀ n, (P9692658622334694339.a n : ℤ) = A286053 (n + 1)

theorem P9692658622334694339.correct : P9692658622334694339.Spec := by
  intro n
  simp only [A286053, Nat.add_sub_cancel]

end A286053

/-! ## A286053.P2042760429063636854

`record[(n+1)*A286055(xor(1, n)+1)]`
-/

namespace A286053.P2042760429063636854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286055 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286053.P2042760429063636854

namespace A286053

/-- `record[(n+1)*A286055(xor(1, n)+1)]` -/
def P2042760429063636854.Spec : Prop :=
  ∀ n, P2042760429063636854.a n = A286053 (n + 1)

end A286053

/-! ## A286053.P2527689176753410411

`record[n+1-A097062(n)*A286052(n+1)]`
-/

namespace A286053.P2527689176753410411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A097062 n * A286052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286053.P2527689176753410411

namespace A286053

/-- `record[n+1-A097062(n)*A286052(n+1)]` -/
def P2527689176753410411.Spec : Prop :=
  ∀ n, P2527689176753410411.a n = A286053 (n + 1)

end A286053

/-! ## A286053.P17840463762403632570

`record[n+1-A000040(n+1)*A286052(n+1)]`
-/

namespace A286053.P17840463762403632570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A286052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286053.P17840463762403632570

namespace A286053

/-- `record[n+1-A000040(n+1)*A286052(n+1)]` -/
def P17840463762403632570.Spec : Prop :=
  ∀ n, P17840463762403632570.a n = A286053 (n + 1)

end A286053

/-! ## A286053.P2131987923408651945

`record[n+1-A001122(n+1)*A286052(n+1)]`
-/

namespace A286053.P2131987923408651945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001122 (n + 1) * A286052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286053.P2131987923408651945

namespace A286053

/-- `record[n+1-A001122(n+1)*A286052(n+1)]` -/
def P2131987923408651945.Spec : Prop :=
  ∀ n, P2131987923408651945.a n = A286053 (n + 1)

end A286053

/-! ## A286053.P10698729326073853758

`record[n+1-A230980((n+1)*A286052(n+1))]`
-/

namespace A286053.P10698729326073853758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A230980 ((n + 1 : ℤ) * A286052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286053.P10698729326073853758

namespace A286053

/-- `record[n+1-A230980((n+1)*A286052(n+1))]` -/
def P10698729326073853758.Spec : Prop :=
  ∀ n, P10698729326073853758.a n = A286053 (n + 1)

end A286053

/-! ## A286053.P7139934366440293225

`record[n+1-A053204((n+1)*A286052(n+1))]`
-/

namespace A286053.P7139934366440293225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053204 ((n + 1 : ℤ) * A286052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286053.P7139934366440293225

namespace A286053

/-- `record[n+1-A053204((n+1)*A286052(n+1))]` -/
def P7139934366440293225.Spec : Prop :=
  ∀ n, P7139934366440293225.a n = A286053 (n + 1)

end A286053

/-!
# A286054: Positions of 1 in A286052; complement of A286053.

The programs for A286054, there is no canonical definition to state claims against.
-/

/-! ## A286054.P9559905087411426611

`or(2, A286056(n+1)-1)`
-/

namespace A286054.P9559905087411426611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A286056 (n + 1) - 1)

end

end A286054.P9559905087411426611

/-! ## A286054.P924826397751213668

`A286056(n+1)+A057077(n)`
-/

namespace A286054.P924826397751213668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286056 (n + 1) + A057077 n

end

end A286054.P924826397751213668

/-! ## A286054.P15475766241926754310

`-xor(-A286056(n+1), A000120(A001316(n)))`
-/

namespace A286054.P15475766241926754310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-A286056 (n + 1)) (A000120 (A001316 n).toNat)

end

end A286054.P15475766241926754310

/-! ## A286054.P5739308666073208377

`-xor(-A286056(n+1), A001221(A001316(n+1)))`
-/

namespace A286054.P5739308666073208377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-A286056 (n + 1)) (A001221 (A001316 (n + 1)).toNat)

end

end A286054.P5739308666073208377

/-! ## A286054.P11541396490741211421

`-xor(-A286056(n+1), A010060(A000069(n+1)))`
-/

namespace A286054.P11541396490741211421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-A286056 (n + 1)) (A010060 (A000069 (n + 1)).toNat)

end

end A286054.P11541396490741211421

/-! ## A286054.P5453745806628206110

`-xor(-A286056(n+1), A001285(A001969(n+1)))`
-/

namespace A286054.P5453745806628206110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-A286056 (n + 1)) (A001285 (A001969 (n + 1)).toNat)

end

end A286054.P5453745806628206110

/-! ## A286054.P15216471450707929939

`filter[n+1, A286052(#)]`
-/

namespace A286054.P15216471450707929939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286052 (f1 j) = 1) n)

end

end A286054.P15216471450707929939

/-! ## A286054.P11599695811885862519

`eq[1, A286052(n+1)]+1`
-/

namespace A286054.P11599695811885862519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286054.P11599695811885862519

/-! ## A286054.P6028520970591931458

`A014681(A286056(n+1))`
-/

namespace A286054.P6028520970591931458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286056 (n + 1)).toNat

end

end A286054.P6028520970591931458

/-!
# A286055: {010->1}-transform of the Thue-Morse word A010060.

The programs for A286055, the canonical program `A286055.P8159239610517546816` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286055 has offset 1).

The definition of A286055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286055.P14987678461833051456

`char[A286057(n+1)-1]`
-/

namespace A286055.P14987678461833051456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286057 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286055.P14987678461833051456

namespace A286055

/-- `char[A286057(n+1)-1]` -/
def P14987678461833051456.Spec : Prop :=
  ∀ n, (P14987678461833051456.a n : ℤ) = A286055 (n + 1)

end A286055

/-! ## A286055.P8159239610517546816

`1-A286052(xor(1, n)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A286055

/-- `1-A286052(xor(1, n)+1)` -/
def P8159239610517546816.Spec : Prop :=
  ∀ n, P8159239610517546816.a n = A286055 (n + 1)

theorem P8159239610517546816.correct : P8159239610517546816.Spec := by
  intro n
  simp only [A286055, Nat.add_sub_cancel]

end A286055

/-! ## A286055.P15292925457169280271

`1-char[A286056(n+1)-1]`
-/

namespace A286055.P15292925457169280271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286056 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286055.P15292925457169280271

namespace A286055

/-- `1-char[A286056(n+1)-1]` -/
def P15292925457169280271.Spec : Prop :=
  ∀ n, P15292925457169280271.a n = A286055 (n + 1)

end A286055

/-! ## A286055.P8465234660592865007

`char[A079523(n+1)-comp[or(2, n)-1]]`
-/

namespace A286055.P8465234660592865007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286055.P8465234660592865007

namespace A286055

/-- `char[A079523(n+1)-comp[or(2, n)-1]]` -/
def P8465234660592865007.Spec : Prop :=
  ∀ n, (P8465234660592865007.a n : ℤ) = A286055 (n + 1)

end A286055

/-! ## A286055.P11290791016800306866

`1-A286052(A004442(n)+1)`
-/

namespace A286055.P11290791016800306866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286052 (A004442 n + 1).toNat

end

end A286055.P11290791016800306866

namespace A286055

/-- `1-A286052(A004442(n)+1)` -/
def P11290791016800306866.Spec : Prop :=
  ∀ n, P11290791016800306866.a n = A286055 (n + 1)

end A286055

/-! ## A286055.P3279632819378202592

`1-A286052(A014681(n+1))`
-/

namespace A286055.P3279632819378202592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286052 (A014681 (n + 1)).toNat

end

end A286055.P3279632819378202592

namespace A286055

/-- `1-A286052(A014681(n+1))` -/
def P3279632819378202592.Spec : Prop :=
  ∀ n, P3279632819378202592.a n = A286055 (n + 1)

end A286055

/-! ## A286055.P17137451004402922286

`char[A004442(xor(n, A286052(n+1)))]`
-/

namespace A286055.P17137451004402922286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor (n : ℤ) (A286052 (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286055.P17137451004402922286

namespace A286055

/-- `char[A004442(xor(n, A286052(n+1)))]` -/
def P17137451004402922286.Spec : Prop :=
  ∀ n, (P17137451004402922286.a n : ℤ) = A286055 (n + 1)

end A286055

/-! ## A286055.P16188260386786107738

`char[A004442(n)+2*A286052(n+1)]`
-/

namespace A286055.P16188260386786107738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + 2 * A286052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286055.P16188260386786107738

namespace A286055

/-- `char[A004442(n)+2*A286052(n+1)]` -/
def P16188260386786107738.Spec : Prop :=
  ∀ n, (P16188260386786107738.a n : ℤ) = A286055 (n + 1)

end A286055

/-! ## A286055.P10500467018771229451

`A285383(A284389(n+1)*A284392(n+1))`
-/

namespace A286055.P10500467018771229451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (A284389 (n + 1) * A284392 (n + 1)).toNat

end

end A286055.P10500467018771229451

namespace A286055

/-- `A285383(A284389(n+1)*A284392(n+1))` -/
def P10500467018771229451.Spec : Prop :=
  ∀ n, P10500467018771229451.a n = A286055 (n + 1)

end A286055

/-! ## A286055.P5083381469760243287

`A285384(A284389(n+1)*A284392(n+1))`
-/

namespace A286055.P5083381469760243287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (A284389 (n + 1) * A284392 (n + 1)).toNat

end

end A286055.P5083381469760243287

namespace A286055

/-- `A285384(A284389(n+1)*A284392(n+1))` -/
def P5083381469760243287.Spec : Prop :=
  ∀ n, P5083381469760243287.a n = A286055 (n + 1)

end A286055

/-!
# A286056: Positions of 0 in A286055; complement of A286057.

The programs for A286056, there is no canonical definition to state claims against.
-/

/-! ## A286056.P1660567316624091379

`A286054(n+1)-A057077(n)`
-/

namespace A286056.P1660567316624091379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286054 (n + 1) - A057077 n

end

end A286056.P1660567316624091379

/-! ## A286056.P8609439008006158786

`A092486(A286054(n+1))`
-/

namespace A286056.P8609439008006158786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A286054 (n + 1)).toNat

end

end A286056.P8609439008006158786

/-! ## A286056.P8795670604701863003

`eq[0, A286055(n+1)]+1`
-/

namespace A286056.P8795670604701863003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286056.P8795670604701863003

/-! ## A286056.P13489436456527596474

`A014681(A286054(n+1)+2)-2`
-/

namespace A286056.P13489436456527596474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286054 (n + 1) + 2).toNat - 2

end

end A286056.P13489436456527596474

/-! ## A286056.P3774256942802483678

`A004442(eq[1, A286052(n+1)])+1`
-/

namespace A286056.P3774256942802483678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A286056.P3774256942802483678

/-! ## A286056.P3393402909220579087

`record[n+1-A216419(n+1)*A286055(n+1)]`
-/

namespace A286056.P3393402909220579087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A216419 (n + 1) * A286055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286056.P3393402909220579087

/-! ## A286056.P17395535380729926685

`record[(n+1)/A284366(n*A286055(n+1)+1)]`
-/

namespace A286056.P17395535380729926685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284366 ((n : ℤ) * A286055 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286056.P17395535380729926685

/-! ## A286056.P6107927040026671482

`record[gcd(n+1, A059247(n+2)*A286055(n+1))]`
-/

namespace A286056.P6107927040026671482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A059247 (n + 2) * A286055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286056.P6107927040026671482

/-! ## A286056.P10823633394134629320

`eq[A028310(n)-n, A286055(A028310(n))]`
-/

namespace A286056.P10823633394134629320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286056.P10823633394134629320

/-! ## A286056.P13188679431222204392

`lt[A286055(n+1), A286055(3*n+2)]+1`
-/

namespace A286056.P13188679431222204392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A286056.P13188679431222204392

/-!
# A286057: Positions of 1 in A286055; complement of A286056.

The programs for A286057, the canonical program `A286057.P14495721961754591744` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286057 has offset 1).

The definition of A286057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286057.P14495721961754591744

`filter[n+1, A286055(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A286057

/-- `filter[n+1, A286055(#)]` -/
def P14495721961754591744.Spec : Prop :=
  ∀ n, (P14495721961754591744.a n : ℤ) = A286057 (n + 1)

theorem P14495721961754591744.correct : P14495721961754591744.Spec := by
  intro n
  simp only [A286057, Nat.add_sub_cancel]

end A286057

/-! ## A286057.P3029216040997174688

`1+eq[1, A286055(n+1)]`
-/

namespace A286057.P3029216040997174688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286057.P3029216040997174688

namespace A286057

/-- `1+eq[1, A286055(n+1)]` -/
def P3029216040997174688.Spec : Prop :=
  ∀ n, (P3029216040997174688.a n : ℤ) = A286057 (n + 1)

end A286057

/-! ## A286057.P8620148958758591705

`record[2*A286055(n+2)+n]`
-/

namespace A286057.P8620148958758591705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286055 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286057.P8620148958758591705

namespace A286057

/-- `record[2*A286055(n+2)+n]` -/
def P8620148958758591705.Spec : Prop :=
  ∀ n, P8620148958758591705.a n = A286057 (n + 1)

end A286057

/-! ## A286057.P5007024086340499658

`eq[1, A286055(A028310(n))]`
-/

namespace A286057.P5007024086340499658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286057.P5007024086340499658

namespace A286057

/-- `eq[1, A286055(A028310(n))]` -/
def P5007024086340499658.Spec : Prop :=
  ∀ n, (P5007024086340499658.a n : ℤ) = A286057 (n + 1)

end A286057

/-! ## A286057.P6887394813636794326

`A020725(eq[1, A286055(n+1)])`
-/

namespace A286057.P6887394813636794326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286057.P6887394813636794326

namespace A286057

/-- `A020725(eq[1, A286055(n+1)])` -/
def P6887394813636794326.Spec : Prop :=
  ∀ n, P6887394813636794326.a n = A286057 (n + 1)

end A286057

/-! ## A286057.P16578631226690300720

`eq[0, A286052(A004442(n)+1)]+1`
-/

namespace A286057.P16578631226690300720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (A004442 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286057.P16578631226690300720

namespace A286057

/-- `eq[0, A286052(A004442(n)+1)]+1` -/
def P16578631226690300720.Spec : Prop :=
  ∀ n, (P16578631226690300720.a n : ℤ) = A286057 (n + 1)

end A286057

/-! ## A286057.P15457016691908786169

`record[A014681(A286055(n+1)+A004442(n))]`
-/

namespace A286057.P15457016691908786169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286055 (n + 1) + A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286057.P15457016691908786169

namespace A286057

/-- `record[A014681(A286055(n+1)+A004442(n))]` -/
def P15457016691908786169.Spec : Prop :=
  ∀ n, P15457016691908786169.a n = A286057 (n + 1)

end A286057

/-! ## A286057.P15150508857178154558

`record[A100637(n)*A286055(A100637(n))]`
-/

namespace A286057.P15150508857178154558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n * A286055 (A100637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286057.P15150508857178154558

namespace A286057

/-- `record[A100637(n)*A286055(A100637(n))]` -/
def P15150508857178154558.Spec : Prop :=
  ∀ n, P15150508857178154558.a n = A286057 (n + 1)

end A286057

/-!
# A286058: Positions of 1 in A285666; complement of A285667.

The programs for A286058, there is no canonical definition to state claims against.
-/

/-! ## A286058.P11820767455397330007

`filter[n+1, A285666(#)]`
-/

namespace A286058.P11820767455397330007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285666 (f1 j) = 1) n)

end

end A286058.P11820767455397330007

/-! ## A286058.P7668550223082202316

`eq[1, A285666(n+1)]+1`
-/

namespace A286058.P7668550223082202316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286058.P7668550223082202316

/-! ## A286058.P12230079037007894904

`lt[1, A285666(A028310(n))+1]`
-/

namespace A286058.P12230079037007894904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285666 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286058.P12230079037007894904

/-! ## A286058.P17391308496782560158

`A000027(lt[0, A285666(n+1)]+1)`
-/

namespace A286058.P17391308496782560158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A286058.P17391308496782560158

/-! ## A286058.P1757675149821754779

`record[A052938(n+1)*A285666(A052938(n+1))]`
-/

namespace A286058.P1757675149821754779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (n + 1) * A285666 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286058.P1757675149821754779

/-! ## A286058.P8965053005025020302

`eq[9, dr(A232561(n+3))]`
-/

namespace A286058.P8965053005025020302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A232561 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286058.P8965053005025020302

/-! ## A286058.P15014923556749600058

`eq[1, A232561(n+2)%3]`
-/

namespace A286058.P15014923556749600058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232561 (n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286058.P15014923556749600058

/-! ## A286058.P13015187432803977208

`eq[1, A285666(A233583(n+1))]`
-/

namespace A286058.P13015187432803977208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285666 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286058.P13015187432803977208

/-! ## A286058.P1167279133782624211

`eq[1, A001511(A232561(n+2)+A232561(n+1)+1)]`
-/

namespace A286058.P1167279133782624211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A232561 (n + 2) + A232561 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286058.P1167279133782624211

/-!
# A286059: Fixed point of the mapping 00->001, 1->011, starting with 00.

The programs for A286059, there is no canonical definition to state claims against.
-/

/-! ## A286059.P8106514683708427485

`char[A286061(n+1)-1]`
-/

namespace A286059.P8106514683708427485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286061 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286059.P8106514683708427485

/-! ## A286059.P1497246727527406965

`4%Δ[A286060(n+1)]`
-/

namespace A286059.P1497246727527406965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (f1 (n + 1) - f1 n)

end

end A286059.P1497246727527406965

/-! ## A286059.P294331521529496924

`A164994(Δ[A286060(n+1)])`
-/

namespace A286059.P294331521529496924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164994 (f1 (n + 1) - f1 n).toNat

end

end A286059.P294331521529496924

/-! ## A286059.P4362505137259755922

`A188297(Δ[A286060(n+1)])`
-/

namespace A286059.P4362505137259755922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (f1 (n + 1) - f1 n).toNat

end

end A286059.P4362505137259755922

/-! ## A286059.P1559465783528936776

`A286044(Δ[A286060(n+1)])`
-/

namespace A286059.P1559465783528936776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (f1 (n + 1) - f1 n).toNat

end

end A286059.P1559465783528936776

/-! ## A286059.P14520045068699838557

`A286063(Δ[A286060(n+1)])`
-/

namespace A286059.P14520045068699838557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286063 (f1 (n + 1) - f1 n).toNat

end

end A286059.P14520045068699838557

/-! ## A286059.P206032098402224663

`A286939(Δ[A286060(n+1)])`
-/

namespace A286059.P206032098402224663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (f1 (n + 1) - f1 n).toNat

end

end A286059.P206032098402224663

/-! ## A286059.P11895629652108285291

`A188321(Δ[A286060(n+1)]²)`
-/

namespace A286059.P11895629652108285291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A286059.P11895629652108285291

/-! ## A286059.P7207442587761675891

`A015329(Δ[A286060(n+1)]+1)`
-/

namespace A286059.P7207442587761675891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (f1 (n + 1) - f1 n + 1).toNat

end

end A286059.P7207442587761675891

/-! ## A286059.P4542330185417481

`A344834(Δ[A286060(n+1)]+1)`
-/

namespace A286059.P4542330185417481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344834 (f1 (n + 1) - f1 n + 1).toNat

end

end A286059.P4542330185417481

/-! ## A286059.P17448944809760115220

`1-A074937(Δ[A286060(n+1)])`
-/

namespace A286059.P17448944809760115220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A074937 (f1 (n + 1) - f1 n).toNat

end

end A286059.P17448944809760115220

/-! ## A286059.P14276535682519341977

`A074937(Δ[A286060(n+1)]+2)`
-/

namespace A286059.P14276535682519341977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074937 (f1 (n + 1) - f1 n + 2).toNat

end

end A286059.P14276535682519341977

/-! ## A286059.P3446042197122241630

`A316399(Δ[2*A286060(n+1)])`
-/

namespace A286059.P3446042197122241630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316399 (f1 (n + 1) - f1 n).toNat

end

end A286059.P3446042197122241630

/-! ## A286059.P10827411444644365787

`A316399(Δ[A286060(n+1)]²+1)`
-/

namespace A286059.P10827411444644365787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316399 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat

end

end A286059.P10827411444644365787

/-! ## A286059.P10279339395248020953

`A133080(Δ[2*A286060(n+1)]²)`
-/

namespace A286059.P10279339395248020953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133080 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A286059.P10279339395248020953

/-! ## A286059.P3061003554198943353

`A272532(2*Δ[A286060(n+1)]²)`
-/

namespace A286059.P3061003554198943353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272532 (2 * (f1 (n + 1) - f1 n) ^ 2).toNat

end

end A286059.P3061003554198943353

/-! ## A286059.P2677267152533216039

`A049206(Δ[A286060(n+1)]+1)-1`
-/

namespace A286059.P2677267152533216039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (f1 (n + 1) - f1 n + 1).toNat - 1

end

end A286059.P2677267152533216039

/-! ## A286059.P15841662042090471643

`1-A133080(Δ[A286060(n+1)]+1)`
-/

namespace A286059.P15841662042090471643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A133080 (f1 (n + 1) - f1 n + 1).toNat

end

end A286059.P15841662042090471643

/-! ## A286059.P12485448044562558006

`A188297(A286060(n+2)-A286060(n+1))`
-/

namespace A286059.P12485448044562558006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A286060 (n + 2) - A286060 (n + 1)).toNat

end

end A286059.P12485448044562558006

/-! ## A286059.P7483733466585003683

`A286939(A286060(n+2)-A286060(n+1))`
-/

namespace A286059.P7483733466585003683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A286060 (n + 2) - A286060 (n + 1)).toNat

end

end A286059.P7483733466585003683

/-!
# A286060: Positions of 0 in A286059; complement of A286061.

The programs for A286060, there is no canonical definition to state claims against.
-/

/-! ## A286060.P16564460155632802540

`eq[0, A286059(n+1)]+1`
-/

namespace A286060.P16564460155632802540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286060.P16564460155632802540

/-! ## A286060.P3959501572682066981

`eq[A000007(n), A286059(A028310(n))]`
-/

namespace A286060.P3959501572682066981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286060.P3959501572682066981

/-! ## A286060.P13692095678603577097

`eq[A000038(n), A286059(A028310(n))]`
-/

namespace A286060.P13692095678603577097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286060.P13692095678603577097

/-! ## A286060.P10554294277051412335

`record[A003602(A286059(n+1)+A005408(n))]`
-/

namespace A286060.P10554294277051412335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A286059 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286060.P10554294277051412335

/-!
# A286061: Positions of 1 in A286059; complement of A286060.

The programs for A286061, there is no canonical definition to state claims against.
-/

/-! ## A286061.P4316068541352174404

`filter[n+1, A286059(#)]`
-/

namespace A286061.P4316068541352174404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286059 (f1 j) = 1) n)

end

end A286061.P4316068541352174404

/-! ## A286061.P3925677632972659162

`eq[1, A286059(n+1)]+1`
-/

namespace A286061.P3925677632972659162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286061.P3925677632972659162

/-! ## A286061.P16474606083297092850

`record[(n+3)*A286059(n+3)]`
-/

namespace A286061.P16474606083297092850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A286059 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286061.P16474606083297092850

/-! ## A286061.P9370834619331924040

`eq[1, A286059(A028310(n))]`
-/

namespace A286061.P9370834619331924040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286061.P9370834619331924040

/-! ## A286061.P3803470027815623718

`eq[1, A286059(A000038(n)+n)]`
-/

namespace A286061.P3803470027815623718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286061.P3803470027815623718

/-! ## A286061.P3379586008026895228

`eq[1, A286059(A000007(n)+n)]`
-/

namespace A286061.P3379586008026895228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286061.P3379586008026895228

/-! ## A286061.P6604341182643708166

`eq[1, A286059(A065033(2*n))]`
-/

namespace A286061.P6604341182643708166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286061.P6604341182643708166

/-! ## A286061.P14108027062439767164

`eq[1, A286059(A233583(n+1))]`
-/

namespace A286061.P14108027062439767164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286061.P14108027062439767164

/-!
# A286062: a(n) = 2*a(n-1) + a(n-2) - a(n-3), where a(0) = 2, a(1) = 3, a(2) = 6.

The programs for A286062, the canonical program `A286062.P15920094241405070862` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286062 has offset 0).

The definition of A286062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-a(n-3)` (program `A286062.P15920094241405070862`, by `A286062.P15920094241405070862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286062.P15920094241405070862

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A286062

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P15920094241405070862.Spec : Prop :=
  ∀ n, P15920094241405070862.a n = A286062 n

theorem P15920094241405070862.correct : P15920094241405070862.Spec := by
  intro n
  simp only [A286062]

end A286062

/-! ## A286062.P10324372212159312311

`a(n-1)+a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A286062.P10324372212159312311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A286062.P10324372212159312311

namespace A286062

/-- `a(n-1)+a(n-1)+a(n-2)-a(n-3)` -/
def P10324372212159312311.Spec : Prop :=
  ∀ n, P10324372212159312311.a n = A286062 n

theorem P10324372212159312311.correct : P10324372212159312311.Spec := by
  intro n
  simp only [A286062, Nat.add_sub_cancel, A286062.P10324372212159312311.a, A286062.P15920094241405070862.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A286062

/-! ## A286062.P17539806458261197055

`a(n-1)-(a(n-3)-a(n-1)-a(n-2))` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A286062.P17539806458261197055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 2))

end

end A286062.P17539806458261197055

namespace A286062

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-2))` -/
def P17539806458261197055.Spec : Prop :=
  ∀ n, P17539806458261197055.a n = A286062 n

end A286062

/-! ## A286062.P11000974671929976265

`A033303(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A286062.P11000974671929976265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A033303 (n - 1) + a (n - 1)

end

end A286062.P11000974671929976265

namespace A286062

/-- `A033303(n-1)+a(n-1)` -/
def P11000974671929976265.Spec : Prop :=
  ∀ n, P11000974671929976265.a n = A286062 n

end A286062

/-! ## A286062.P11675786491439895290

`A187069(2*n+1)+A052534(n)`
-/

namespace A286062.P11675786491439895290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 1) + A052534 n

end

end A286062.P11675786491439895290

namespace A286062

/-- `A187069(2*n+1)+A052534(n)` -/
def P11675786491439895290.Spec : Prop :=
  ∀ n, P11675786491439895290.a n = A286062 n

end A286062

/-! ## A286062.P11379015562106945219

`∑[A006054(n+1)+A006054(n)]+2`
-/

namespace A286062.P11379015562106945219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1) + A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A286062.P11379015562106945219

namespace A286062

/-- `∑[A006054(n+1)+A006054(n)]+2` -/
def P11379015562106945219.Spec : Prop :=
  ∀ n, P11379015562106945219.a n = A286062 n

end A286062

/-! ## A286062.P587583916739927684

`A006054(n+1)+2*A187069(2*n+1)`
-/

namespace A286062.P587583916739927684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1) + 2 * A187069 (2 * n + 1)

end

end A286062.P587583916739927684

namespace A286062

/-- `A006054(n+1)+2*A187069(2*n+1)` -/
def P587583916739927684.Spec : Prop :=
  ∀ n, P587583916739927684.a n = A286062 n

end A286062

/-! ## A286062.P9060926661318600142

`A187069(2*n+1)+A187069(2*n+3)`
-/

namespace A286062.P9060926661318600142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 1) + A187069 (2 * n + 3)

end

end A286062.P9060926661318600142

namespace A286062

/-- `A187069(2*n+1)+A187069(2*n+3)` -/
def P9060926661318600142.Spec : Prop :=
  ∀ n, P9060926661318600142.a n = A286062 n

end A286062

/-! ## A286062.P5072377865231258989

`A052534(A028310(n)-1)+A052534(n)`
-/

namespace A286062.P5072377865231258989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 (A028310 n - 1).toNat + A052534 n

end

end A286062.P5072377865231258989

namespace A286062

/-- `A052534(A028310(n)-1)+A052534(n)` -/
def P5072377865231258989.Spec : Prop :=
  ∀ n, P5072377865231258989.a n = A286062 n

end A286062

/-! ## A286062.P13893349563355728403

`A052534(n)+A077998(n)-A006054(n)`
-/

namespace A286062.P13893349563355728403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n + (A077998 n - A006054 n)

end

end A286062.P13893349563355728403

namespace A286062

/-- `A052534(n)+A077998(n)-A006054(n)` -/
def P13893349563355728403.Spec : Prop :=
  ∀ n, P13893349563355728403.a n = A286062 n

end A286062

/-! ## A286062.P4076703440714517935

`A052534(n)+A052534(n)-A006054(n+1)`
-/

namespace A286062.P4076703440714517935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n + (A052534 n - A006054 (n + 1))

end

end A286062.P4076703440714517935

namespace A286062

/-- `A052534(n)+A052534(n)-A006054(n+1)` -/
def P4076703440714517935.Spec : Prop :=
  ∀ n, P4076703440714517935.a n = A286062 n

end A286062

/-! ## A286062.P10326601009677415779

`A052994(n+1)+A052994(n)-A006054(n+1)`
-/

namespace A286062.P10326601009677415779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052994 (n + 1) + (A052994 n - A006054 (n + 1))

end

end A286062.P10326601009677415779

namespace A286062

/-- `A052994(n+1)+A052994(n)-A006054(n+1)` -/
def P10326601009677415779.Spec : Prop :=
  ∀ n, P10326601009677415779.a n = A286062 n

end A286062

/-! ## A286062.P2577337806088856645

`A187068(2*n)+A077998(n+1)-A187068(2*n+1)`
-/

namespace A286062.P2577337806088856645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n) + (A077998 (n + 1) - A187068 (2 * n + 1))

end

end A286062.P2577337806088856645

namespace A286062

/-- `A187068(2*n)+A077998(n+1)-A187068(2*n+1)` -/
def P2577337806088856645.Spec : Prop :=
  ∀ n, P2577337806088856645.a n = A286062 n

end A286062

/-! ## A286062.P6864576784184581960

`∑[A033303(n)]+2-A033303(n)`
-/

namespace A286062.P6864576784184581960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A033303 n)

end

end A286062.P6864576784184581960

namespace A286062

/-- `∑[A033303(n)]+2-A033303(n)` -/
def P6864576784184581960.Spec : Prop :=
  ∀ n, P6864576784184581960.a n = A286062 n

end A286062

/-! ## A286062.P1320189935987891731

`A219788(n+1)-2*A006054(n)`
-/

namespace A286062.P1320189935987891731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219788 (n + 1) - 2 * A006054 n

end

end A286062.P1320189935987891731

namespace A286062

/-- `A219788(n+1)-2*A006054(n)` -/
def P1320189935987891731.Spec : Prop :=
  ∀ n, P1320189935987891731.a n = A286062 n

end A286062

/-! ## A286062.P11667339872261139730

`A006356(n+1)-(A033303(n)+A006054(n))`
-/

namespace A286062.P11667339872261139730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (n + 1) - (A033303 n + A006054 n)

end

end A286062.P11667339872261139730

namespace A286062

/-- `A006356(n+1)-(A033303(n)+A006054(n))` -/
def P11667339872261139730.Spec : Prop :=
  ∀ n, P11667339872261139730.a n = A286062 n

end A286062

/-! ## A286062.P12762040943845983502

`A052534(n+1)+A052534(n)-A033303(n)`
-/

namespace A286062.P12762040943845983502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 (n + 1) + (A052534 n - A033303 n)

end

end A286062.P12762040943845983502

namespace A286062

/-- `A052534(n+1)+A052534(n)-A033303(n)` -/
def P12762040943845983502.Spec : Prop :=
  ∀ n, P12762040943845983502.a n = A286062 n

end A286062

/-! ## A286062.P10076895844590620112

`A109110(n)-2*A033303(n)`
-/

namespace A286062.P10076895844590620112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109110 n - 2 * A033303 n

end

end A286062.P10076895844590620112

namespace A286062

/-- `A109110(n)-2*A033303(n)` -/
def P10076895844590620112.Spec : Prop :=
  ∀ n, P10076895844590620112.a n = A286062 n

end A286062

/-!
# A286063: Fixed point of the mapping 00->001, 1->100, starting with 00.

The programs for A286063, the canonical program `A286063.P1257865481194737079` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286063 has offset 1).

The definition of A286063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286063.P18122288448513131433

`char[2*comp[xor(n, 2*n)]-n]`
-/

namespace A286063.P18122288448513131433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286063.P18122288448513131433

namespace A286063

/-- `char[2*comp[xor(n, 2*n)]-n]` -/
def P18122288448513131433.Spec : Prop :=
  ∀ n, (P18122288448513131433.a n : ℤ) = A286063 (n + 1)

end A286063

/-! ## A286063.P17625663444696902575

`A254379(comp[record[xor(3, n)]])`
-/

namespace A286063.P17625663444696902575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A286063.P17625663444696902575

namespace A286063

/-- `A254379(comp[record[xor(3, n)]])` -/
def P17625663444696902575.Spec : Prop :=
  ∀ n, P17625663444696902575.a n = A286063 (n + 1)

end A286063

/-! ## A286063.P12008202603120910594

`char[∑[A254655(Δ[n²])]]`
-/

namespace A286063.P12008202603120910594
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286063.P12008202603120910594

namespace A286063

/-- `char[∑[A254655(Δ[n²])]]` -/
def P12008202603120910594.Spec : Prop :=
  ∀ n, (P12008202603120910594.a n : ℤ) = A286063 (n + 1)

end A286063

/-! ## A286063.P3155737241242115006

`char[A286728(n+1)-1]`
-/

namespace A286063.P3155737241242115006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286728 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286063.P3155737241242115006

namespace A286063

/-- `char[A286728(n+1)-1]` -/
def P3155737241242115006.Spec : Prop :=
  ∀ n, (P3155737241242115006.a n : ℤ) = A286063 (n + 1)

end A286063

/-! ## A286063.P15465809540728048582

`char[A128309(n+1)-n]`
-/

namespace A286063.P15465809540728048582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286063.P15465809540728048582

namespace A286063

/-- `char[A128309(n+1)-n]` -/
def P15465809540728048582.Spec : Prop :=
  ∀ n, (P15465809540728048582.a n : ℤ) = A286063 (n + 1)

end A286063

/-! ## A286063.P14009403474570961594

`char[eq[1, A316828(n)]-n]`
-/

namespace A286063.P14009403474570961594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286063.P14009403474570961594

namespace A286063

/-- `char[eq[1, A316828(n)]-n]` -/
def P14009403474570961594.Spec : Prop :=
  ∀ n, (P14009403474570961594.a n : ℤ) = A286063 (n + 1)

end A286063

/-! ## A286063.P4908322579775527786

`char[lt[1, A268726(n)]-n]`
-/

namespace A286063.P4908322579775527786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286063.P4908322579775527786

namespace A286063

/-- `char[lt[1, A268726(n)]-n]` -/
def P4908322579775527786.Spec : Prop :=
  ∀ n, (P4908322579775527786.a n : ℤ) = A286063 (n + 1)

end A286063

/-! ## A286063.P1257865481194737079

`A254379(lt[val(n+1, 2), 2])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A286063

/-- `A254379(lt[val(n+1, 2), 2])` -/
def P1257865481194737079.Spec : Prop :=
  ∀ n, P1257865481194737079.a n = A286063 (n + 1)

theorem P1257865481194737079.correct : P1257865481194737079.Spec := by
  intro n
  simp only [A286063, Nat.add_sub_cancel]

end A286063

/-! ## A286063.P3399828674322716241

`1-char[A286727(n+1)-1]`
-/

namespace A286063.P3399828674322716241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286727 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286063.P3399828674322716241

namespace A286063

/-- `1-char[A286727(n+1)-1]` -/
def P3399828674322716241.Spec : Prop :=
  ∀ n, P3399828674322716241.a n = A286063 (n + 1)

end A286063

/-! ## A286063.P12350947196951749637

`char[A129771(n+1)-(n+1)]`
-/

namespace A286063.P12350947196951749637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286063.P12350947196951749637

namespace A286063

/-- `char[A129771(n+1)-(n+1)]` -/
def P12350947196951749637.Spec : Prop :=
  ∀ n, (P12350947196951749637.a n : ℤ) = A286063 (n + 1)

end A286063

/-! ## A286063.P10920426380573219449

`char[2*A000069(n+1)-n]`
-/

namespace A286063.P10920426380573219449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286063.P10920426380573219449

namespace A286063

/-- `char[2*A000069(n+1)-n]` -/
def P10920426380573219449.Spec : Prop :=
  ∀ n, (P10920426380573219449.a n : ℤ) = A286063 (n + 1)

end A286063

/-! ## A286063.P7258480698290302530

`A254379(A004773(n))`
-/

namespace A286063.P7258480698290302530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A004773 n).toNat

end

end A286063.P7258480698290302530

namespace A286063

/-- `A254379(A004773(n))` -/
def P7258480698290302530.Spec : Prop :=
  ∀ n, P7258480698290302530.a n = A286063 (n + 1)

end A286063

/-! ## A286063.P17789256627200204533

`A254379(A265667(n))`
-/

namespace A286063.P17789256627200204533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A265667 n).toNat

end

end A286063.P17789256627200204533

namespace A286063

/-- `A254379(A265667(n))` -/
def P17789256627200204533.Spec : Prop :=
  ∀ n, P17789256627200204533.a n = A286063 (n + 1)

end A286063

/-! ## A286063.P3610570292541150520

`A228495(A047543(n+1))`
-/

namespace A286063.P3610570292541150520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A047543 (n + 1)).toNat

end

end A286063.P3610570292541150520

namespace A286063

/-- `A228495(A047543(n+1))` -/
def P3610570292541150520.Spec : Prop :=
  ∀ n, P3610570292541150520.a n = A286063 (n + 1)

end A286063

/-! ## A286063.P17040091236908784392

`A228495(A047556(n+1))`
-/

namespace A286063.P17040091236908784392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A047556 (n + 1)).toNat

end

end A286063.P17040091236908784392

namespace A286063

/-- `A228495(A047556(n+1))` -/
def P17040091236908784392.Spec : Prop :=
  ∀ n, P17040091236908784392.a n = A286063 (n + 1)

end A286063

/-! ## A286063.P3658573449753990911

`A228495(A047574(n+1))`
-/

namespace A286063.P3658573449753990911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A047574 (n + 1)).toNat

end

end A286063.P3658573449753990911

namespace A286063

/-- `A228495(A047574(n+1))` -/
def P3658573449753990911.Spec : Prop :=
  ∀ n, P3658573449753990911.a n = A286063 (n + 1)

end A286063

/-! ## A286063.P4821461472834770028

`A254379(A047458(n+1))`
-/

namespace A286063.P4821461472834770028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A047458 (n + 1)).toNat

end

end A286063.P4821461472834770028

namespace A286063

/-- `A254379(A047458(n+1))` -/
def P4821461472834770028.Spec : Prop :=
  ∀ n, P4821461472834770028.a n = A286063 (n + 1)

end A286063

/-! ## A286063.P14197003384173894105

`A254379(A047462(n+1))`
-/

namespace A286063.P14197003384173894105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A047462 (n + 1)).toNat

end

end A286063.P14197003384173894105

namespace A286063

/-- `A254379(A047462(n+1))` -/
def P14197003384173894105.Spec : Prop :=
  ∀ n, P14197003384173894105.a n = A286063 (n + 1)

end A286063

/-!
# A286064: {0110->1}-transform of the Thue-Morse word A010060.

The programs for A286064, the canonical program `A286064.P11784658490324997277` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286064 has offset 1).

The definition of A286064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286064.P11784658490324997277

`char[A286066(n+1)-1]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A286064

/-- `char[A286066(n+1)-1]` -/
def P11784658490324997277.Spec : Prop :=
  ∀ n, (P11784658490324997277.a n : ℤ) = A286064 (n + 1)

theorem P11784658490324997277.correct : P11784658490324997277.Spec := by
  intro n
  simp only [A286064, Nat.add_sub_cancel]

end A286064

/-! ## A286064.P1550213585707031390

`1-char[A286065(n+1)-1]`
-/

namespace A286064.P1550213585707031390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286064.P1550213585707031390

namespace A286064

/-- `1-char[A286065(n+1)-1]` -/
def P1550213585707031390.Spec : Prop :=
  ∀ n, P1550213585707031390.a n = A286064 (n + 1)

end A286064

/-! ## A286064.P1297930070719015699

`A068433(Δ[A286420(n+1)])`
-/

namespace A286064.P1297930070719015699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068433 (f1 (n + 1) - f1 n).toNat

end

end A286064.P1297930070719015699

namespace A286064

/-- `A068433(Δ[A286420(n+1)])` -/
def P1297930070719015699.Spec : Prop :=
  ∀ n, P1297930070719015699.a n = A286064 (n + 1)

end A286064

/-! ## A286064.P17991611635613211645

`abs(A011651(Δ[A286420(n+1)]))`
-/

namespace A286064.P17991611635613211645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011651 (f1 (n + 1) - f1 n).toNat|

end

end A286064.P17991611635613211645

namespace A286064

/-- `abs(A011651(Δ[A286420(n+1)]))` -/
def P17991611635613211645.Spec : Prop :=
  ∀ n, P17991611635613211645.a n = A286064 (n + 1)

end A286064

/-! ## A286064.P5051942226140651973

`A014674(Δ[A286420(n+1)])²`
-/

namespace A286064.P5051942226140651973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014674 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A286064.P5051942226140651973

namespace A286064

/-- `A014674(Δ[A286420(n+1)])²` -/
def P5051942226140651973.Spec : Prop :=
  ∀ n, P5051942226140651973.a n = A286064 (n + 1)

end A286064

/-! ## A286064.P12902637488437429929

`A135851(Δ[A286420(n+1)]+1)`
-/

namespace A286064.P12902637488437429929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (f1 (n + 1) - f1 n + 1).toNat

end

end A286064.P12902637488437429929

namespace A286064

/-- `A135851(Δ[A286420(n+1)]+1)` -/
def P12902637488437429929.Spec : Prop :=
  ∀ n, P12902637488437429929.a n = A286064 (n + 1)

end A286064

/-! ## A286064.P8201663009039672049

`A286419(10-Δ[A286420(n+1)])`
-/

namespace A286064.P8201663009039672049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (10 - (f1 (n + 1) - f1 n)).toNat

end

end A286064.P8201663009039672049

namespace A286064

/-- `A286419(10-Δ[A286420(n+1)])` -/
def P8201663009039672049.Spec : Prop :=
  ∀ n, P8201663009039672049.a n = A286064 (n + 1)

end A286064

/-! ## A286064.P366136327411548037

`3-p?[A001285(n)*A007413(n+2)]`
-/

namespace A286064.P366136327411548037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n * A007413 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286064.P366136327411548037

namespace A286064

/-- `3-p?[A001285(n)*A007413(n+2)]` -/
def P366136327411548037.Spec : Prop :=
  ∀ n, P366136327411548037.a n = A286064 (n + 1)

end A286064

/-! ## A286064.P12589248708158432520

`A286419(eq[A000007(n), A286419(n+1)]-2)`
-/

namespace A286064.P12589248708158432520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 2)

end

end A286064.P12589248708158432520

namespace A286064

/-- `A286419(eq[A000007(n), A286419(n+1)]-2)` -/
def P12589248708158432520.Spec : Prop :=
  ∀ n, P12589248708158432520.a n = A286064 (n + 1)

end A286064

/-!
# A286065: Positions of 0 in A286064; complement of A286066.

The programs for A286065, the canonical program `A286065.P6002679725487375161` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286065 has offset 1).

The definition of A286065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286065.P11630197375545150643

`A121539(n+1)+∑[3-a(n-1)]` with `a(0)=3`
-/

namespace A286065.P11630197375545150643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286065.P11630197375545150643

namespace A286065

/-- `A121539(n+1)+∑[3-a(n-1)]` -/
def P11630197375545150643.Spec : Prop :=
  ∀ n, P11630197375545150643.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P6002679725487375161

`A260480(n+1)+A028242(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286065

/-- `A260480(n+1)+A028242(n)` -/
def P6002679725487375161.Spec : Prop :=
  ∀ n, P6002679725487375161.a n = A286065 (n + 1)

theorem P6002679725487375161.correct : P6002679725487375161.Spec := by
  intro n
  simp only [A286065, Nat.add_sub_cancel]

end A286065

/-! ## A286065.P13049292218865170684

`A285971(n+1)+A033999(n)`
-/

namespace A286065.P13049292218865170684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285971 (n + 1) + A033999 n

end

end A286065.P13049292218865170684

namespace A286065

/-- `A285971(n+1)+A033999(n)` -/
def P13049292218865170684.Spec : Prop :=
  ∀ n, P13049292218865170684.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P10351826039099447722

`A285971(n+1)+∑[A280560(n)]`
-/

namespace A286065.P10351826039099447722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285971 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286065.P10351826039099447722

namespace A286065

/-- `A285971(n+1)+∑[A280560(n)]` -/
def P10351826039099447722.Spec : Prop :=
  ∀ n, P10351826039099447722.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P18094092907737088307

`A168236(n+1)+A003159(n+1)`
-/

namespace A286065.P18094092907737088307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168236 (n + 1) + A003159 (n + 1)

end

end A286065.P18094092907737088307

namespace A286065

/-- `A168236(n+1)+A003159(n+1)` -/
def P18094092907737088307.Spec : Prop :=
  ∀ n, P18094092907737088307.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P13134920111499176262

`A284791(n+1)+A026465(n+1)`
-/

namespace A286065.P13134920111499176262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 1) + A026465 (n + 1)

end

end A286065.P13134920111499176262

namespace A286065

/-- `A284791(n+1)+A026465(n+1)` -/
def P13134920111499176262.Spec : Prop :=
  ∀ n, P13134920111499176262.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P2012746029983747942

`A284933(n+2)-A040001(n+1)`
-/

namespace A286065.P2012746029983747942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 2) - A040001 (n + 1)

end

end A286065.P2012746029983747942

namespace A286065

/-- `A284933(n+2)-A040001(n+1)` -/
def P2012746029983747942.Spec : Prop :=
  ∀ n, P2012746029983747942.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P10010779753307355977

`A000035(n+1)+A284933(n+2)-2`
-/

namespace A286065.P10010779753307355977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A284933 (n + 2) - 2)

end

end A286065.P10010779753307355977

namespace A286065

/-- `A000035(n+1)+A284933(n+2)-2` -/
def P10010779753307355977.Spec : Prop :=
  ∀ n, P10010779753307355977.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P3926492074964095951

`A000035(n+1)+A285971(n+1)-A000035(n)`
-/

namespace A286065.P3926492074964095951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A285971 (n + 1) - A000035 n)

end

end A286065.P3926492074964095951

namespace A286065

/-- `A000035(n+1)+A285971(n+1)-A000035(n)` -/
def P3926492074964095951.Spec : Prop :=
  ∀ n, P3926492074964095951.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P7342024572829632959

`A284933(n+2)-A000002(A216345(n+1))`
-/

namespace A286065.P7342024572829632959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 2) - A000002 (A216345 (n + 1)).toNat

end

end A286065.P7342024572829632959

namespace A286065

/-- `A284933(n+2)-A000002(A216345(n+1))` -/
def P7342024572829632959.Spec : Prop :=
  ∀ n, P7342024572829632959.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P15348146410590801571

`A284684(2*(n+1))-(A008619(n+1)+n)`
-/

namespace A286065.P15348146410590801571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284684 (2 * (n + 1)) - (A008619 (n + 1) + (n : ℤ))

end

end A286065.P15348146410590801571

namespace A286065

/-- `A284684(2*(n+1))-(A008619(n+1)+n)` -/
def P15348146410590801571.Spec : Prop :=
  ∀ n, P15348146410590801571.a n = A286065 (n + 1)

end A286065

/-! ## A286065.P14981999457812056602

`lt[A286064(n+1), 1]+1`
-/

namespace A286065.P14981999457812056602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286064 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286065.P14981999457812056602

namespace A286065

/-- `lt[A286064(n+1), 1]+1` -/
def P14981999457812056602.Spec : Prop :=
  ∀ n, (P14981999457812056602.a n : ℤ) = A286065 (n + 1)

end A286065

/-! ## A286065.P8447449240790896965

`A008619(A003158(n+1))+or(1, n)`
-/

namespace A286065.P8447449240790896965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003158 (n + 1)).toNat + (Nat.lor 1 n : ℤ)

end

end A286065.P8447449240790896965

namespace A286065

/-- `A008619(A003158(n+1))+or(1, n)` -/
def P8447449240790896965.Spec : Prop :=
  ∀ n, P8447449240790896965.a n = A286065 (n + 1)

end A286065

/-!
# A286066: Positions of 1 in A286064; complement of A286065.

The programs for A286066, the canonical program `A286066.P5999862173123358208` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286066 has offset 1).

The definition of A286066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286066.P18097473896921294100

`comp[A286065(n+1)-1]+1`
-/

namespace A286066.P18097473896921294100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286066.P18097473896921294100

namespace A286066

/-- `comp[A286065(n+1)-1]+1` -/
def P18097473896921294100.Spec : Prop :=
  ∀ n, (P18097473896921294100.a n : ℤ) = A286066 (n + 1)

end A286066

/-! ## A286066.P16282315570393984559

`A284934(n+1)-A285960(n+1)`
-/

namespace A286066.P16282315570393984559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1) - A285960 (n + 1)

end

end A286066.P16282315570393984559

namespace A286066

/-- `A284934(n+1)-A285960(n+1)` -/
def P16282315570393984559.Spec : Prop :=
  ∀ n, P16282315570393984559.a n = A286066 (n + 1)

end A286066

/-! ## A286066.P5999862173123358208

`A284934(A143331(n+1)+n)-A143331(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A286066

/-- `A284934(A143331(n+1)+n)-A143331(n+1)` -/
def P5999862173123358208.Spec : Prop :=
  ∀ n, P5999862173123358208.a n = A286066 (n + 1)

theorem P5999862173123358208.correct : P5999862173123358208.Spec := by
  intro n
  simp only [A286066, Nat.add_sub_cancel]

end A286066

/-! ## A286066.P5331143380984341246

`A284934(n+1)-A285972(n+2)`
-/

namespace A286066.P5331143380984341246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1) - A285972 (n + 2)

end

end A286066.P5331143380984341246

namespace A286066

/-- `A284934(n+1)-A285972(n+2)` -/
def P5331143380984341246.Spec : Prop :=
  ∀ n, P5331143380984341246.a n = A286066 (n + 1)

end A286066

/-! ## A286066.P4995178743644476136

`A286051(n+1)+A286051(n+2)-A285968(n+2)`
-/

namespace A286066.P4995178743644476136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) + (A286051 (n + 2) - A285968 (n + 2))

end

end A286066.P4995178743644476136

namespace A286066

/-- `A286051(n+1)+A286051(n+2)-A285968(n+2)` -/
def P4995178743644476136.Spec : Prop :=
  ∀ n, P4995178743644476136.a n = A286066 (n + 1)

end A286066

/-! ## A286066.P6152995839641529786

`A284934(n+1)-A285975(A285980(n+1))`
-/

namespace A286066.P6152995839641529786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1) - A285975 (A285980 (n + 1)).toNat

end

end A286066.P6152995839641529786

namespace A286066

/-- `A284934(n+1)-A285975(A285980(n+1))` -/
def P6152995839641529786.Spec : Prop :=
  ∀ n, P6152995839641529786.a n = A286066 (n + 1)

end A286066

/-! ## A286066.P8950296192327201225

`filter[n+1, A286064(#)]`
-/

namespace A286066.P8950296192327201225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286064 (f1 j) = 1) n)

end

end A286066.P8950296192327201225

namespace A286066

/-- `filter[n+1, A286064(#)]` -/
def P8950296192327201225.Spec : Prop :=
  ∀ n, (P8950296192327201225.a n : ℤ) = A286066 (n + 1)

end A286066

/-! ## A286066.P803370675086649029

`1+eq[1, A286064(n+1)]`
-/

namespace A286066.P803370675086649029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286066.P803370675086649029

namespace A286066

/-- `1+eq[1, A286064(n+1)]` -/
def P803370675086649029.Spec : Prop :=
  ∀ n, (P803370675086649029.a n : ℤ) = A286066 (n + 1)

end A286066

/-! ## A286066.P8919550079086531135

`record[A000027(n+1)*A286064(n+1)]`
-/

namespace A286066.P8919550079086531135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A286064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286066.P8919550079086531135

namespace A286066

/-- `record[A000027(n+1)*A286064(n+1)]` -/
def P8919550079086531135.Spec : Prop :=
  ∀ n, P8919550079086531135.a n = A286066 (n + 1)

end A286066

/-! ## A286066.P6042216658665741123

`record[A000120(A001316(n))+n*A286064(n+1)]`
-/

namespace A286066.P6042216658665741123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 n).toNat + (n : ℤ) * A286064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286066.P6042216658665741123

namespace A286066

/-- `record[A000120(A001316(n))+n*A286064(n+1)]` -/
def P6042216658665741123.Spec : Prop :=
  ∀ n, P6042216658665741123.a n = A286066 (n + 1)

end A286066

/-! ## A286066.P14629379098453222685

`lt[char[A286065(n+1)], A057427(n)]`
-/

namespace A286066.P14629379098453222685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A286066.P14629379098453222685

namespace A286066

/-- `lt[char[A286065(n+1)], A057427(n)]` -/
def P14629379098453222685.Spec : Prop :=
  ∀ n, (P14629379098453222685.a n : ℤ) = A286066 (n + 1)

end A286066

/-! ## A286066.P16250090933422362625

`A284934(n+1)-A286046(2*n+1)`
-/

namespace A286066.P16250090933422362625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1) - A286046 (2 * n + 1)

end

end A286066.P16250090933422362625

namespace A286066

/-- `A284934(n+1)-A286046(2*n+1)` -/
def P16250090933422362625.Spec : Prop :=
  ∀ n, P16250090933422362625.a n = A286066 (n + 1)

end A286066

/-! ## A286066.P5301199156725886940

`record[A001285(A001969(n+1))+n*A286064(n+1)]`
-/

namespace A286066.P5301199156725886940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A001969 (n + 1)).toNat + (n : ℤ) * A286064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286066.P5301199156725886940

namespace A286066

/-- `record[A001285(A001969(n+1))+n*A286064(n+1)]` -/
def P5301199156725886940.Spec : Prop :=
  ∀ n, P5301199156725886940.a n = A286066 (n + 1)

end A286066

/-!
# A286067: Unitary perfect totient numbers: numbers n that equal to the sum of their iterated unitary totient uphi(n).

The programs for A286067, there is no canonical definition to state claims against.
-/

/-! ## A286067.P13332780640481454715

`A047363(A312561(n)+A270372(n+1))`
-/

namespace A286067.P13332780640481454715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (A312561 n + A270372 (n + 1)).toNat

end

end A286067.P13332780640481454715

/-!
# A286069: Independence and clique covering number of the n X n antelope graph.

The programs for A286069, there is no canonical definition to state claims against.
-/

/-! ## A286069.P3307933330398643298

`(n+1)²-A286040(n+1)`
-/

namespace A286069.P3307933330398643298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A286040 (n + 1)

end

end A286069.P3307933330398643298

/-! ## A286069.P2144412478512964991

`A002378(n)+n+1-A286040(n+1)`
-/

namespace A286069.P2144412478512964991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + ((n + 1 : ℤ) - A286040 (n + 1))

end

end A286069.P2144412478512964991

/-! ## A286069.P4815782821992995124

`∑[n+1]+A000217(n)-A286040(n+1)`
-/

namespace A286069.P4815782821992995124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000217 n - A286040 (n + 1))

end

end A286069.P4815782821992995124

/-! ## A286069.P3155639671891868519

`∑[2*(n+1)]-A286040(n+1)-A000027(n+1)`
-/

namespace A286069.P3155639671891868519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A286040 (n + 1) - A000027 (n + 1)

end

end A286069.P3155639671891868519

/-! ## A286069.P12108033786520811996

`A074148(n+1)+A007590(n)-A286040(n+1)`
-/

namespace A286069.P12108033786520811996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) + (A007590 n - A286040 (n + 1))

end

end A286069.P12108033786520811996

/-! ## A286069.P6631963830856795728

`A000982(n+1)+A007590(n+1)-A286040(n+1)`
-/

namespace A286069.P6631963830856795728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + (A007590 (n + 1) - A286040 (n + 1))

end

end A286069.P6631963830856795728

/-!
# A286071: Number of permutations of [n] with nonincreasing cycle sizes.

The programs for A286071, there is no canonical definition to state claims against.
-/

/-! ## A286071.P13672312325859263275

`A260734(A077223(n!))`
-/

namespace A286071.P13672312325859263275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A077223 (Nat.factorial n)).toNat

end

end A286071.P13672312325859263275

/-! ## A286071.P623504066973855180

`A256502(A193385(n)+n)`
-/

namespace A286071.P623504066973855180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A193385 n + (n : ℤ)).toNat

end

end A286071.P623504066973855180

/-! ## A286071.P12358757980912131307

`A063272(or(n, A000522(n)))`
-/

namespace A286071.P12358757980912131307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (Int.lor (n : ℤ) (A000522 n)).toNat

end

end A286071.P12358757980912131307

/-!
# A286072: Number of permutations of [n] where adjacent cycles differ in size.

The programs for A286072, there is no canonical definition to state claims against.
-/

/-! ## A286072.P7729060291331086506

`A248183(A202992(n)+n!)`
-/

namespace A286072.P7729060291331086506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A202992 n + (Nat.factorial n : ℤ)).toNat

end

end A286072.P7729060291331086506

/-! ## A286072.P11913028679137322580

`A248183(A202992(n)+A000142(n))`
-/

namespace A286072.P11913028679137322580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A202992 n + A000142 n).toNat

end

end A286072.P11913028679137322580

/-! ## A286072.P213232114593705275

`A194640(A352428(n)+A079124(n))`
-/

namespace A286072.P213232114593705275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A352428 n + A079124 n).toNat

end

end A286072.P213232114593705275

/-!
# A286073: Number of permutations of [n] with decreasing cycle sizes.

The programs for A286073, there is no canonical definition to state claims against.
-/

/-! ## A286073.P5501443938967936400

`A167865(12*A129325(n))`
-/

namespace A286073.P5501443938967936400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (12 * A129325 n).toNat

end

end A286073.P5501443938967936400

/-! ## A286073.P8348272770088256641

`A128716(ceil(A027098(n)/9))`
-/

namespace A286073.P8348272770088256641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128716 ⌈(A027098 n : ℚ) / 9⌉.toNat

end

end A286073.P8348272770088256641

/-! ## A286073.P11966486367405171148

`A030307(C(2^((n-1)%(n+1)), A124755(n)))`
-/

namespace A286073.P11966486367405171148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat (A124755 n).toNat)

end

end A286073.P11966486367405171148

/-!
# A286074: Number of permutations of [n] with nondecreasing cycle sizes.

The programs for A286074, there is no canonical definition to state claims against.
-/

/-! ## A286074.P13584434408911348322

`A332086(A188018(n!))`
-/

namespace A286074.P13584434408911348322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A188018 (Nat.factorial n)).toNat

end

end A286074.P13584434408911348322

/-! ## A286074.P9878481196236098799

`A208478(A023149(n+2)+1)`
-/

namespace A286074.P9878481196236098799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208478 (A023149 (n + 2) + 1).toNat

end

end A286074.P9878481196236098799

/-! ## A286074.P17886586398018552612

`A036629(n)+A000006(A006383(n))`
-/

namespace A286074.P17886586398018552612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036629 n + A000006 (A006383 n).toNat

end

end A286074.P17886586398018552612

/-!
# A286075: Number of permutations of [n] with increasing cycle sizes.

The programs for A286075, there is no canonical definition to state claims against.
-/

/-! ## A286075.P1791240703739554176

`A357306(floor(n*sqrt(a(n-1))))` with `a(0)=1`
-/

namespace A286075.P1791240703739554176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A357306 ⌊(n : ℝ) * Real.sqrt (a (n - 1) : ℝ)⌋.toNat

end

end A286075.P1791240703739554176

/-! ## A286075.P2763940398215700051

`A331922(A129922(n))`
-/

namespace A286075.P2763940398215700051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331922 (A129922 n).toNat

end

end A286075.P2763940398215700051

/-! ## A286075.P890812319070118299

`A357306(A115778(n))`
-/

namespace A286075.P890812319070118299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357306 (A115778 n).toNat

end

end A286075.P890812319070118299

/-!
# A286076: Number of permutations of [n] with alternating cycle size parities.

The programs for A286076, there is no canonical definition to state claims against.
-/

/-! ## A286076.P17687862289731226515

`A230070(or(A036629(n), A076320(n+1)))`
-/

namespace A286076.P17687862289731226515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230070 (Int.lor (A036629 n) (A076320 (n + 1))).toNat

end

end A286076.P17687862289731226515

/-! ## A286076.P8334485350553354759

`A230070(or(A036629(n), A076321(n+1)))`
-/

namespace A286076.P8334485350553354759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230070 (Int.lor (A036629 n) (A076321 (n + 1))).toNat

end

end A286076.P8334485350553354759

/-! ## A286076.P3832862185908840022

`A230070(A322387(n+1)+A076320(n+1))`
-/

namespace A286076.P3832862185908840022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230070 (A322387 (n + 1) + A076320 (n + 1)).toNat

end

end A286076.P3832862185908840022

/-!
# A286077: Number of permutations of [n] with a strongly unimodal cycle size list.

The programs for A286077, there is no canonical definition to state claims against.
-/

/-! ## A286077.P4036146889795305792

`A087720(A369343(n+1))`
-/

namespace A286077.P4036146889795305792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087720 (A369343 (n + 1)).toNat

end

end A286077.P4036146889795305792

/-! ## A286077.P7982491777505950478

`A087720(or(1, A049610(n)))`
-/

namespace A286077.P7982491777505950478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087720 (Int.lor 1 (A049610 n)).toNat

end

end A286077.P7982491777505950478

/-! ## A286077.P11321517749344765748

`A020125(n)-A225654(A157405(n))`
-/

namespace A286077.P11321517749344765748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n - A225654 (A157405 n).toNat

end

end A286077.P11321517749344765748

/-!
# A286078: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A286078, there is no canonical definition to state claims against.
-/

/-! ## A286078.P11906656519141323617

`A007088(A286080(n))`
-/

namespace A286078.P11906656519141323617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286080 n).toNat

end

end A286078.P11906656519141323617

/-! ## A286078.P1875482038640238868

`A185544(2*A286080(n))`
-/

namespace A286078.P1875482038640238868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286080 n).toNat

end

end A286078.P1875482038640238868

/-! ## A286078.P8784393725252628247

`A286702(lcm(n, A265525(n)))`
-/

namespace A286078.P8784393725252628247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286702 (Int.lcm (n : ℤ) (A265525 n))

end

end A286078.P8784393725252628247

/-! ## A286078.P6072744607291622239

`or(A001222(A309864(n)), A286702(n))`
-/

namespace A286078.P6072744607291622239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A309864 n).toNat) (A286702 n)

end

end A286078.P6072744607291622239

/-! ## A286078.P4621682473462741095

`or(A030302(A292345(n+1)), A286702(n))`
-/

namespace A286078.P4621682473462741095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030302 (A292345 (n + 1)).toNat) (A286702 n)

end

end A286078.P4621682473462741095

/-!
# A286079: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A286079, there is no canonical definition to state claims against.
-/

/-! ## A286079.P8057307817209346129

`A007088(A286081(n))`
-/

namespace A286079.P8057307817209346129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286081 n).toNat

end

end A286079.P8057307817209346129

/-! ## A286079.P11330923865371859852

`A185544(2*A286081(n))`
-/

namespace A286079.P11330923865371859852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286081 n).toNat

end

end A286079.P11330923865371859852

/-! ## A286079.P14287435197986933152

`A286703(comp[floor(n/(n%2+1))+10])`
-/

namespace A286079.P14287435197986933152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286079.P14287435197986933152

/-! ## A286079.P3351650051523087120

`A286703(A039723(n))`
-/

namespace A286079.P3351650051523087120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 (A039723 n).toNat

end

end A286079.P3351650051523087120

/-! ## A286079.P5876844885847257507

`A286703(A046469(n))`
-/

namespace A286079.P5876844885847257507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 (A046469 n).toNat

end

end A286079.P5876844885847257507

/-!
# A286080: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A286080, there is no canonical definition to state claims against.
-/

/-! ## A286080.P8502491320057852240

`or(A162350(A033886(n)), A286704(n))`
-/

namespace A286080.P8502491320057852240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162350 (A033886 n).toNat) (A286704 n)

end

end A286080.P8502491320057852240

/-! ## A286080.P17346053622851596104

`or(A110654(A185254(n)), A286704(n))`
-/

namespace A286080.P17346053622851596104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110654 (A185254 n).toNat) (A286704 n)

end

end A286080.P17346053622851596104

/-! ## A286080.P3761825837903590813

`or(A257351(n+2)%3, A286704(n))`
-/

namespace A286080.P3761825837903590813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A257351 (n + 2)) 3) (A286704 n)

end

end A286080.P3761825837903590813

/-! ## A286080.P17029451606214023332

`or(A286704(n), A292261(A192507(n+1)))`
-/

namespace A286080.P17029451606214023332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286704 n) (A292261 (A192507 (n + 1)).toNat)

end

end A286080.P17029451606214023332

/-! ## A286080.P3054086348443895327

`or(A286655(A286675(n+1)), A286704(n))`
-/

namespace A286080.P3054086348443895327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286655 (A286675 (n + 1)).toNat) (A286704 n)

end

end A286080.P3054086348443895327

/-!
# A286081: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A286081, there is no canonical definition to state claims against.
-/

/-! ## A286081.P1329970778848142243

`A286705(n^(1-∑{digits}[n, #]+n))`
-/

namespace A286081.P1329970778848142243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A286081.P1329970778848142243

/-! ## A286081.P6060087044331863632

`A286705(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A286081.P6060087044331863632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A286081.P6060087044331863632

/-! ## A286081.P15168088966381247757

`A286705(A046469(n))`
-/

namespace A286081.P15168088966381247757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 (A046469 n).toNat

end

end A286081.P15168088966381247757

/-! ## A286081.P2266583560800811994

`A286705(A087036(n))`
-/

namespace A286081.P2266583560800811994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 (A087036 n).toNat

end

end A286081.P2266583560800811994

/-! ## A286081.P8015326970390041882

`A286705(A087051(n))`
-/

namespace A286081.P8015326970390041882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 (A087051 n).toNat

end

end A286081.P8015326970390041882

/-!
# A286082: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A286082, there is no canonical definition to state claims against.
-/

/-! ## A286082.P4159721424374773041

`A007088(A286084(n))`
-/

namespace A286082.P4159721424374773041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286084 n).toNat

end

end A286082.P4159721424374773041

/-! ## A286082.P12544193994235535627

`A185544(2*A286084(n))`
-/

namespace A286082.P12544193994235535627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286084 n).toNat

end

end A286082.P12544193994235535627

/-! ## A286082.P17994260752199266892

`A286134(xor(2, A327510(n)))+A286116(n)`
-/

namespace A286082.P17994260752199266892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 (Int.xor 2 (A327510 n)).toNat + A286116 n

end

end A286082.P17994260752199266892

/-! ## A286082.P7437333444734678702

`A286116(A002998(n))`
-/

namespace A286082.P7437333444734678702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286116 (A002998 n).toNat

end

end A286082.P7437333444734678702

/-! ## A286082.P14400061154827553612

`A286116(A046469(n))`
-/

namespace A286082.P14400061154827553612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286116 (A046469 n).toNat

end

end A286082.P14400061154827553612

/-!
# A286083: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A286083, there is no canonical definition to state claims against.
-/

/-! ## A286083.P2395827083562752322

`A007088(A286085(n))`
-/

namespace A286083.P2395827083562752322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286085 n).toNat

end

end A286083.P2395827083562752322

/-! ## A286083.P8285019846208903382

`A185544(2*A286085(n))`
-/

namespace A286083.P8285019846208903382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286085 n).toNat

end

end A286083.P8285019846208903382

/-! ## A286083.P3053282079466179801

`A286117(A002998(n))`
-/

namespace A286083.P3053282079466179801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286117 (A002998 n).toNat

end

end A286083.P3053282079466179801

/-! ## A286083.P5875673040509230966

`A286117(A046469(n))`
-/

namespace A286083.P5875673040509230966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286117 (A046469 n).toNat

end

end A286083.P5875673040509230966

/-! ## A286083.P16879838887642480369

`A286117(A087036(n))`
-/

namespace A286083.P16879838887642480369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286117 (A087036 n).toNat

end

end A286083.P16879838887642480369

/-!
# A286084: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A286084, there is no canonical definition to state claims against.
-/

/-! ## A286084.P17952340159475405978

`A286118(n)-A286134(A327510(n))`
-/

namespace A286084.P17952340159475405978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286118 n - A286134 (A327510 n).toNat

end

end A286084.P17952340159475405978

/-! ## A286084.P9485607774650866892

`xor(A286772(n), A318584(A037957(n)))`
-/

namespace A286084.P9485607774650866892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A286772 n) (A318584 (A037957 n).toNat)

end

end A286084.P9485607774650866892

/-! ## A286084.P10003341573798284581

`A286134(A327510(n)+10)+A286118(n)`
-/

namespace A286084.P10003341573798284581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 (A327510 n + 10).toNat + A286118 n

end

end A286084.P10003341573798284581

/-! ## A286084.P697919826814688962

`A286118(A046469(n))`
-/

namespace A286084.P697919826814688962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286118 (A046469 n).toNat

end

end A286084.P697919826814688962

/-! ## A286084.P14392151705428029869

`A286118(A087036(n))`
-/

namespace A286084.P14392151705428029869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286118 (A087036 n).toNat

end

end A286084.P14392151705428029869

/-!
# A286085: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A286085, there is no canonical definition to state claims against.
-/

/-! ## A286085.P453179794757068446

`A286119(A046469(n))`
-/

namespace A286085.P453179794757068446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286119 (A046469 n).toNat

end

end A286085.P453179794757068446

/-! ## A286085.P12595734040249012558

`A286119(A087036(n))`
-/

namespace A286085.P12595734040249012558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286119 (A087036 n).toNat

end

end A286085.P12595734040249012558

/-! ## A286085.P6571022092746114747

`A286119(A087051(n))`
-/

namespace A286085.P6571022092746114747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286119 (A087051 n).toNat

end

end A286085.P6571022092746114747

/-! ## A286085.P10282294687339863537

`A286119(A307887(n))`
-/

namespace A286085.P10282294687339863537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286119 (A307887 n).toNat

end

end A286085.P10282294687339863537

/-! ## A286085.P9160600700787996741

`A286119(n)%A358887(n+1)`
-/

namespace A286085.P9160600700787996741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286119 n) (A358887 (n + 1))

end

end A286085.P9160600700787996741

/-!
# A286086: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A286086, there is no canonical definition to state claims against.
-/

/-! ## A286086.P182600975987361514

`A007088(A286088(n))`
-/

namespace A286086.P182600975987361514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286088 n).toNat

end

end A286086.P182600975987361514

/-! ## A286086.P6522653229013125879

`A185544(2*A286088(n))`
-/

namespace A286086.P6522653229013125879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286088 n).toNat

end

end A286086.P6522653229013125879

/-! ## A286086.P11567467240586498854

`A185544(A286088(n)+A286088(n))`
-/

namespace A286086.P11567467240586498854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286088 n + A286088 n).toNat

end

end A286086.P11567467240586498854

/-!
# A286087: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A286087, there is no canonical definition to state claims against.
-/

/-! ## A286087.P3806868991587640509

`A286508(n)*A305989(A286088(n))`
-/

namespace A286087.P3806868991587640509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A286088 n).toNat

end

end A286087.P3806868991587640509

/-! ## A286087.P3271185451678254606

`A007088(A286089(n))`
-/

namespace A286087.P3271185451678254606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286089 n).toNat

end

end A286087.P3271185451678254606

/-! ## A286087.P11825478826263306987

`A185544(2*A286089(n))`
-/

namespace A286087.P11825478826263306987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286089 n).toNat

end

end A286087.P11825478826263306987

/-! ## A286087.P18095866394090188286

`A185544(A286089(n)+A286089(n))`
-/

namespace A286087.P18095866394090188286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286089 n + A286089 n).toNat

end

end A286087.P18095866394090188286

/-!
# A286088: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A286088, there is no canonical definition to state claims against.
-/

/-! ## A286088.P11980435282006033705

`xor(A285436(n), A341793(A285436(n)))`
-/

namespace A286088.P11980435282006033705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A285436 n) (A341793 ((A285436 n).toNat + 10))

end

end A286088.P11980435282006033705

/-! ## A286088.P6645162470763804096

`A132284(A285436(n))`
-/

namespace A286088.P6645162470763804096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A285436 n).toNat

end

end A286088.P6645162470763804096

/-! ## A286088.P18431977668153613246

`A000010(A139758(2^floor(n/2))-1)`
-/

namespace A286088.P18431977668153613246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A139758 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat - 1).toNat

end

end A286088.P18431977668153613246

/-! ## A286088.P11360202239790400667

`A000010(xor(1, A139758(2^floor(n/2))))`
-/

namespace A286088.P11360202239790400667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.xor 1 (A139758 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat)).toNat

end

end A286088.P11360202239790400667

/-!
# A286091: Lexicographically earliest sequence of positive integers such that the slope between any two points (i, a(i)) and (j, a(j)) is distinct.

The programs for A286091, there is no canonical definition to state claims against.
-/

/-! ## A286091.P8148539497980250560

`A363554(A062399(n)+1)`
-/

namespace A286091.P8148539497980250560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363554 (A062399 n + 1).toNat

end

end A286091.P8148539497980250560

/-! ## A286091.P6013027742248143086

`A363554(A077741(n+1))`
-/

namespace A286091.P6013027742248143086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363554 (A077741 (n + 1)).toNat

end

end A286091.P6013027742248143086

/-! ## A286091.P6892908812198245700

`A363554(A120126(n)+1)`
-/

namespace A286091.P6892908812198245700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363554 (A120126 n + 1).toNat

end

end A286091.P6892908812198245700

/-! ## A286091.P17400890821839780778

`A363554(A351870(n)+1)`
-/

namespace A286091.P17400890821839780778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363554 (A351870 n + 1).toNat

end

end A286091.P17400890821839780778

/-! ## A286091.P7331256579751573692

`A363554(A004906(n+2))`
-/

namespace A286091.P7331256579751573692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363554 (A004906 (n + 2)).toNat

end

end A286091.P7331256579751573692

/-!
# A286092: Numbers k such that (199*10^k + 11)/3 is prime.

The programs for A286092, there is no canonical definition to state claims against.
-/

/-! ## A286092.P4846839561983282419

`A274061(A104632(n+1))+A174455(n+4)`
-/

namespace A286092.P4846839561983282419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274061 (A104632 (n + 1)).toNat + A174455 (n + 4)

end

end A286092.P4846839561983282419

/-!
# A286094: Nonprime numbers k such that k^4 + k^3 + k^2 + k + 1 is prime.

The programs for A286094, there is no canonical definition to state claims against.
-/

/-! ## A286094.P13433384001569299920

`filter[A049409(n+1), A005171(#)]`
-/

namespace A286094.P13433384001569299920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A286094.P13433384001569299920

/-! ## A286094.P17105399751024347062

`floor(sqrt(sqrt(A193366(n+1))))`
-/

namespace A286094.P17105399751024347062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A193366 (n + 1) : ℝ))⌋

end

end A286094.P17105399751024347062

/-! ## A286094.P8045637443890766511

`∩[A049409(n+1), A139118(n+1)]`
-/

namespace A286094.P8045637443890766511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286094.P8045637443890766511

/-! ## A286094.P15953334534805648296

`∩[A049409(n+1), A361102(n+1)]`
-/

namespace A286094.P15953334534805648296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286094.P15953334534805648296

/-! ## A286094.P16317524489484820264

`∩[A049409(n+1), A056653(n+1)]`
-/

namespace A286094.P16317524489484820264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286094.P16317524489484820264

/-! ## A286094.P7031135901924725923

`∩[A018252(n+1), A049409(n+1)]`
-/

namespace A286094.P7031135901924725923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286094.P7031135901924725923

/-! ## A286094.P15856932311366216233

`∩[A049409(n+1), A141468(n+1)]`
-/

namespace A286094.P15856932311366216233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286094.P15856932311366216233

/-! ## A286094.P16071582955926208622

`record[A048671(A049409(n+1))]`
-/

namespace A286094.P16071582955926208622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A049409 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286094.P16071582955926208622

/-! ## A286094.P4327597666816017215

`record[A191558(A049409(A008619(n)))]`
-/

namespace A286094.P4327597666816017215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A049409 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286094.P4327597666816017215

/-! ## A286094.P6489267673213789630

`record[A191558(A049409(A032742(n+1)))]`
-/

namespace A286094.P6489267673213789630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A049409 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286094.P6489267673213789630

/-!
# A286095: Composite numbers n such that tau(n) (number of divisors of n) is prime and sigma(n) (sum of divisors of n) is not prime.

The programs for A286095, there is no canonical definition to state claims against.
-/

/-! ## A286095.P16213533874438049655

`∩[A248963(n+1), A283262(n+1)]²`
-/

namespace A286095.P16213533874438049655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A286095.P16213533874438049655

/-! ## A286095.P2653810633208056463

`A000290(∩[A248963(n+1), A283262(n+1)])`
-/

namespace A286095.P2653810633208056463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A286095.P2653810633208056463

/-! ## A286095.P8125169258236851488

`∩[A275938(n+1), n²]`
-/

namespace A286095.P8125169258236851488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A286095.P8125169258236851488

/-! ## A286095.P15583055334575749330

`∩[A001597(n+1), A275938(n+1)]`
-/

namespace A286095.P15583055334575749330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286095.P15583055334575749330

/-! ## A286095.P465230636167617672

`∩[A001694(n+1), A275938(n+1)]`
-/

namespace A286095.P465230636167617672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286095.P465230636167617672

/-! ## A286095.P18306998988889332908

`∩[A002760(n+1), A275938(n+1)]`
-/

namespace A286095.P18306998988889332908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286095.P18306998988889332908

/-! ## A286095.P13555450032071714727

`∩[A020487(n+1), A275938(n+1)]`
-/

namespace A286095.P13555450032071714727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286095.P13555450032071714727

/-! ## A286095.P7525877623030499108

`∩[A025475(n+1), A275938(n+1)]`
-/

namespace A286095.P7525877623030499108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286095.P7525877623030499108

/-! ## A286095.P9212108634662739907

`∩[A028982(n+1), A275938(n+1)]`
-/

namespace A286095.P9212108634662739907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286095.P9212108634662739907

/-! ## A286095.P5419082806603167940

`∩[A034019(n+1), A275938(n+1)]`
-/

namespace A286095.P5419082806603167940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286095.P5419082806603167940

/-!
# A286096: Triangle read by rows giving numerators of the Fourier expansion of cos^n(x).

The programs for A286096, there is no canonical definition to state claims against.
-/

/-! ## A286096.P992957990263843904

`ceil(A108044(n)/(char[∑[n]]+1))`
-/

namespace A286096.P992957990263843904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108044 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)⌉

end

end A286096.P992957990263843904

/-! ## A286096.P16545076565750590343

`A100257(∑[2*n]%comp[∑[n]])`
-/

namespace A286096.P16545076565750590343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A286096.P16545076565750590343

/-! ## A286096.P16704147555014438156

`A100257(∑[char[∑[n]]]²-(n+1))`
-/

namespace A286096.P16704147555014438156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A286096.P16704147555014438156

/-! ## A286096.P13030834706233908950

`round(A108044(n)/A035214(n))`
-/

namespace A286096.P13030834706233908950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A108044 n : ℚ) / (A035214 n : ℚ))

end

end A286096.P13030834706233908950

/-! ## A286096.P2172325366180436766

`(A100257(A061579(n))^(1/2))²`
-/

namespace A286096.P2172325366180436766
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A100257 (A061579 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A286096.P2172325366180436766

/-! ## A286096.P14402635386210190484

`round(A108044(n)/(A010054(n)+1))`
-/

namespace A286096.P14402635386210190484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A108044 n : ℚ) / (A010054 n + 1 : ℚ))

end

end A286096.P14402635386210190484

/-! ## A286096.P7777813255749091398

`A108044(n)/A035214(A000038(n)+n)`
-/

namespace A286096.P7777813255749091398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108044 n : ℚ) / (A035214 (A000038 n + (n : ℤ)).toNat : ℚ)

end

end A286096.P7777813255749091398

/-! ## A286096.P5066102327600285868

`A108044(n)/A035214(n)*A000038(n)!`
-/

namespace A286096.P5066102327600285868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108044 n : ℚ) / (A035214 n : ℚ) * (Nat.factorial (A000038 n).toNat : ℚ)

end

end A286096.P5066102327600285868

/-! ## A286096.P15067189346779543635

`A108044(n)/A035214(n)*A014963(4*n+2)`
-/

namespace A286096.P15067189346779543635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108044 n : ℚ) / (A035214 n : ℚ) * (A014963 (4 * n + 2) : ℚ)

end

end A286096.P15067189346779543635

/-! ## A286096.P6225994017594814699

`A108044(n)/(A010054(n)+1)*A014963(∑[n+4])`
-/

namespace A286096.P6225994017594814699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108044 n : ℚ) / (A010054 n + 1 : ℚ) * (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A286096.P6225994017594814699

/-!
# A286097: Number of partitions of n such that each part is no more than 4 more than the sum of all smaller parts.

The programs for A286097, there is no canonical definition to state claims against.
-/

/-! ## A286097.P15366376336216505695

`A331995(A035959(n))`
-/

namespace A286097.P15366376336216505695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A035959 n).toNat

end

end A286097.P15366376336216505695

/-! ## A286097.P1497674134800499107

`A331995(A036801(n))`
-/

namespace A286097.P1497674134800499107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A036801 n).toNat

end

end A286097.P1497674134800499107

/-! ## A286097.P15093639232092676626

`A241829(n)+A213911(A006820(n))`
-/

namespace A286097.P15093639232092676626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241829 n + A213911 (A006820 n).toNat

end

end A286097.P15093639232092676626

/-! ## A286097.P5909226897412568154

`A325853(n)-A175402(A000041(n+1))`
-/

namespace A286097.P5909226897412568154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325853 n - A175402 (A000041 (n + 1)).toNat

end

end A286097.P5909226897412568154

/-! ## A286097.P3293911471423892993

`A118759(A000041(n))-A326522(n+4)`
-/

namespace A286097.P3293911471423892993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A000041 n).toNat - A326522 (n + 4)

end

end A286097.P3293911471423892993

/-!
# A286098: Square array read by antidiagonals: A(n,k) = T(n AND k, n OR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and OR is bitwise-or (A003986).

The programs for A286098, the canonical program `A286098.P12308120415836337446` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286098 has offset 0).

The definition of A286098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286098.P12308120415836337446

`A057944(n)+A004198(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A286098

/-- `A057944(n)+A004198(n)` -/
def P12308120415836337446.Spec : Prop :=
  ∀ n, P12308120415836337446.a n = A286098 n

theorem P12308120415836337446.correct : P12308120415836337446.Spec := by
  intro n
  simp only [A286098]

end A286098

/-! ## A286098.P10440583347964140519

`n-A099026(A061579(n))`
-/

namespace A286098.P10440583347964140519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A099026 (A061579 n).toNat

end

end A286098.P10440583347964140519

namespace A286098

/-- `n-A099026(A061579(n))` -/
def P10440583347964140519.Spec : Prop :=
  ∀ n, P10440583347964140519.a n = A286098 n

end A286098

/-! ## A286098.P6600708183381173361

`A286099(n)-A003987(n)`
-/

namespace A286098.P6600708183381173361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n - A003987 n

end

end A286098.P6600708183381173361

namespace A286098

/-- `A286099(n)-A003987(n)` -/
def P6600708183381173361.Spec : Prop :=
  ∀ n, P6600708183381173361.a n = A286098 n

end A286098

/-! ## A286098.P7882023261192912636

`A286108(n)-A004198(n)`
-/

namespace A286098.P7882023261192912636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n - A004198 n

end

end A286098.P7882023261192912636

namespace A286098

/-- `A286108(n)-A004198(n)` -/
def P7882023261192912636.Spec : Prop :=
  ∀ n, P7882023261192912636.a n = A286098 n

end A286098

/-! ## A286098.P18038367554825720514

`n-A292372(A054238(n))`
-/

namespace A286098.P18038367554825720514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292372 (A054238 n).toNat

end

end A286098.P18038367554825720514

namespace A286098

/-- `n-A292372(A054238(n))` -/
def P18038367554825720514.Spec : Prop :=
  ∀ n, P18038367554825720514.a n = A286098 n

end A286098

/-! ## A286098.P10565596192308870154

`n-A292371(A346453(n))`
-/

namespace A286098.P10565596192308870154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292371 (A346453 n).toNat

end

end A286098.P10565596192308870154

namespace A286098

/-- `n-A292371(A346453(n))` -/
def P10565596192308870154.Spec : Prop :=
  ∀ n, P10565596192308870154.a n = A286098 n

end A286098

/-! ## A286098.P4522823268580151456

`A057944(n)+A221146(n)/2`
-/

namespace A286098.P4522823268580151456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057944 n : ℚ) + (A221146 n : ℚ) / 2

end

end A286098.P4522823268580151456

namespace A286098

/-- `A057944(n)+A221146(n)/2` -/
def P4522823268580151456.Spec : Prop :=
  ∀ n, P4522823268580151456.a n = (A286098 n : ℚ)

end A286098

/-! ## A286098.P7786222620939659207

`(A286108(n)+A057944(n))/2`
-/

namespace A286098.P7786222620939659207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286108 n + A057944 n : ℚ) / 2

end

end A286098.P7786222620939659207

namespace A286098

/-- `(A286108(n)+A057944(n))/2` -/
def P7786222620939659207.Spec : Prop :=
  ∀ n, P7786222620939659207.a n = (A286098 n : ℚ)

end A286098

/-! ## A286098.P6796475612893994189

`A004198(n)+n-A002262(n)`
-/

namespace A286098.P6796475612893994189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + ((n : ℤ) - A002262 n)

end

end A286098.P6796475612893994189

namespace A286098

/-- `A004198(n)+n-A002262(n)` -/
def P6796475612893994189.Spec : Prop :=
  ∀ n, P6796475612893994189.a n = A286098 n

end A286098

/-! ## A286098.P6715974226943761793

`A025581(n)+n-A003986(n)`
-/

namespace A286098.P6715974226943761793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((n : ℤ) - A003986 n)

end

end A286098.P6715974226943761793

namespace A286098

/-- `A025581(n)+n-A003986(n)` -/
def P6715974226943761793.Spec : Prop :=
  ∀ n, P6715974226943761793.a n = A286098 n

end A286098

/-! ## A286098.P4322660748172604746

`A099026(n)+n-A003987(n)`
-/

namespace A286098.P4322660748172604746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n + ((n : ℤ) - A003987 n)

end

end A286098.P4322660748172604746

namespace A286098

/-- `A099026(n)+n-A003987(n)` -/
def P4322660748172604746.Spec : Prop :=
  ∀ n, P4322660748172604746.a n = A286098 n

end A286098

/-! ## A286098.P14526569431627244995

`n-A099026(A114327(n)+n)`
-/

namespace A286098.P14526569431627244995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A099026 (A114327 n + (n : ℤ)).toNat

end

end A286098.P14526569431627244995

namespace A286098

/-- `n-A099026(A114327(n)+n)` -/
def P14526569431627244995.Spec : Prop :=
  ∀ n, P14526569431627244995.a n = A286098 n

end A286098

/-! ## A286098.P2790419910373850199

`A061579(n)+n-A286099(n)`
-/

namespace A286098.P2790419910373850199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + ((n : ℤ) - A286099 n)

end

end A286098.P2790419910373850199

namespace A286098

/-- `A061579(n)+n-A286099(n)` -/
def P2790419910373850199.Spec : Prop :=
  ∀ n, P2790419910373850199.a n = A286098 n

end A286098

/-! ## A286098.P617652341192055554

`n-A002262(n-A004198(n))`
-/

namespace A286098.P617652341192055554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002262 ((n : ℤ) - A004198 n).toNat

end

end A286098.P617652341192055554

namespace A286098

/-- `n-A002262(n-A004198(n))` -/
def P617652341192055554.Spec : Prop :=
  ∀ n, P617652341192055554.a n = A286098 n

end A286098

/-! ## A286098.P12846108520865723844

`n-(A099026(n)-A114327(n))`
-/

namespace A286098.P12846108520865723844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A099026 n - A114327 n)

end

end A286098.P12846108520865723844

namespace A286098

/-- `n-(A099026(n)-A114327(n))` -/
def P12846108520865723844.Spec : Prop :=
  ∀ n, P12846108520865723844.a n = A286098 n

end A286098

/-! ## A286098.P15452174413642949869

`n-and(A002262(n), A003987(n))`
-/

namespace A286098.P15452174413642949869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A002262 n) (A003987 n)

end

end A286098.P15452174413642949869

namespace A286098

/-- `n-and(A002262(n), A003987(n))` -/
def P15452174413642949869.Spec : Prop :=
  ∀ n, P15452174413642949869.a n = A286098 n

end A286098

/-! ## A286098.P18384718388653274282

`A002024(n+1)²-(A286099(n)+1)`
-/

namespace A286098.P18384718388653274282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - (A286099 n + 1)

end

end A286098.P18384718388653274282

namespace A286098

/-- `A002024(n+1)²-(A286099(n)+1)` -/
def P18384718388653274282.Spec : Prop :=
  ∀ n, P18384718388653274282.a n = A286098 n

end A286098

/-! ## A286098.P2318824827302787934

`A004198(n)+A000217(A003056(n))`
-/

namespace A286098.P2318824827302787934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + A000217 (A003056 n).toNat

end

end A286098.P2318824827302787934

namespace A286098

/-- `A004198(n)+A000217(A003056(n))` -/
def P2318824827302787934.Spec : Prop :=
  ∀ n, P2318824827302787934.a n = A286098 n

end A286098

/-! ## A286098.P13507938537781451913

`A000096(A003056(n))-A003986(n)`
-/

namespace A286098.P13507938537781451913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat - A003986 n

end

end A286098.P13507938537781451913

namespace A286098

/-- `A000096(A003056(n))-A003986(n)` -/
def P13507938537781451913.Spec : Prop :=
  ∀ n, P13507938537781451913.a n = A286098 n

end A286098

/-! ## A286098.P3104428901252758278

`A003986(n)+A057944(n)-A003987(n)`
-/

namespace A286098.P3104428901252758278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + (A057944 n - A003987 n)

end

end A286098.P3104428901252758278

namespace A286098

/-- `A003986(n)+A057944(n)-A003987(n)` -/
def P3104428901252758278.Spec : Prop :=
  ∀ n, P3104428901252758278.a n = A286098 n

end A286098

/-!
# A286099: Square array read by antidiagonals: A(n,k) = T(n OR k, n AND k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and OR is bitwise-or (A003986).

The programs for A286099, the canonical program `A286099.P16724800913237782090` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286099 has offset 0).

The definition of A286099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286099.P16724800913237782090

`A099026(n)+n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A286099

/-- `A099026(n)+n` -/
def P16724800913237782090.Spec : Prop :=
  ∀ n, P16724800913237782090.a n = A286099 n

theorem P16724800913237782090.correct : P16724800913237782090.Spec := by
  intro n
  simp only [A286099]

end A286099

/-! ## A286099.P4704057767853083989

`A061579(A286098(n))`
-/

namespace A286099.P4704057767853083989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A286098 n).toNat

end

end A286099.P4704057767853083989

namespace A286099

/-- `A061579(A286098(n))` -/
def P4704057767853083989.Spec : Prop :=
  ∀ n, P4704057767853083989.a n = A286099 n

end A286099

/-! ## A286099.P11314167077119597344

`A057944(n)+A003986(n)`
-/

namespace A286099.P11314167077119597344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003986 n

end

end A286099.P11314167077119597344

namespace A286099

/-- `A057944(n)+A003986(n)` -/
def P11314167077119597344.Spec : Prop :=
  ∀ n, P11314167077119597344.a n = A286099 n

end A286099

/-! ## A286099.P17704229561744953889

`A286098(n)+A003987(n)`
-/

namespace A286099.P17704229561744953889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n + A003987 n

end

end A286099.P17704229561744953889

namespace A286099

/-- `A286098(n)+A003987(n)` -/
def P17704229561744953889.Spec : Prop :=
  ∀ n, P17704229561744953889.a n = A286099 n

end A286099

/-! ## A286099.P7715844059720984865

`A286109(n)+A004198(n)`
-/

namespace A286099.P7715844059720984865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n + A004198 n

end

end A286099.P7715844059720984865

namespace A286099

/-- `A286109(n)+A004198(n)` -/
def P7715844059720984865.Spec : Prop :=
  ∀ n, P7715844059720984865.a n = A286099 n

end A286099

/-! ## A286099.P13046035169426447769

`A292371(A054238(n))+n`
-/

namespace A286099.P13046035169426447769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A054238 n).toNat + (n : ℤ)

end

end A286099.P13046035169426447769

namespace A286099

/-- `A292371(A054238(n))+n` -/
def P13046035169426447769.Spec : Prop :=
  ∀ n, P13046035169426447769.a n = A286099 n

end A286099

/-! ## A286099.P3402662162342802329

`A292372(A346453(n))+n`
-/

namespace A286099.P3402662162342802329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A346453 n).toNat + (n : ℤ)

end

end A286099.P3402662162342802329

namespace A286099

/-- `A292372(A346453(n))+n` -/
def P3402662162342802329.Spec : Prop :=
  ∀ n, P3402662162342802329.a n = A286099 n

end A286099

/-! ## A286099.P2875646752153188140

`A003986(n)+n-A002262(n)`
-/

namespace A286099.P2875646752153188140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + ((n : ℤ) - A002262 n)

end

end A286099.P2875646752153188140

namespace A286099

/-- `A003986(n)+n-A002262(n)` -/
def P2875646752153188140.Spec : Prop :=
  ∀ n, P2875646752153188140.a n = A286099 n

end A286099

/-! ## A286099.P1778237988120342434

`A025581(n)+n-A004198(n)`
-/

namespace A286099.P1778237988120342434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((n : ℤ) - A004198 n)

end

end A286099.P1778237988120342434

namespace A286099

/-- `A025581(n)+n-A004198(n)` -/
def P1778237988120342434.Spec : Prop :=
  ∀ n, P1778237988120342434.a n = A286099 n

end A286099

/-! ## A286099.P13245475491620548033

`and(A003987(n), A025581(n))+n`
-/

namespace A286099.P13245475491620548033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003987 n) (A025581 n) + (n : ℤ)

end

end A286099.P13245475491620548033

namespace A286099

/-- `and(A003987(n), A025581(n))+n` -/
def P13245475491620548033.Spec : Prop :=
  ∀ n, P13245475491620548033.a n = A286099 n

end A286099

/-! ## A286099.P7686327646384073903

`A127739(n+1)-(A004198(n)+1)`
-/

namespace A286099.P7686327646384073903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - (A004198 n + 1)

end

end A286099.P7686327646384073903

namespace A286099

/-- `A127739(n+1)-(A004198(n)+1)` -/
def P7686327646384073903.Spec : Prop :=
  ∀ n, P7686327646384073903.a n = A286099 n

end A286099

/-! ## A286099.P14746995337023085327

`and(A025581(n), A128078(n+1))+n`
-/

namespace A286099.P14746995337023085327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 n) (A128078 (n + 1)) + (n : ℤ)

end

end A286099.P14746995337023085327

namespace A286099

/-- `and(A025581(n), A128078(n+1))+n` -/
def P14746995337023085327.Spec : Prop :=
  ∀ n, P14746995337023085327.a n = A286099 n

end A286099

/-! ## A286099.P2392699562779954670

`A003986(n)+A000217(A003056(n))`
-/

namespace A286099.P2392699562779954670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + A000217 (A003056 n).toNat

end

end A286099.P2392699562779954670

namespace A286099

/-- `A003986(n)+A000217(A003056(n))` -/
def P2392699562779954670.Spec : Prop :=
  ∀ n, P2392699562779954670.a n = A286099 n

end A286099

/-! ## A286099.P14052248582673347817

`A000096(A003056(n))-A004198(n)`
-/

namespace A286099.P14052248582673347817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat - A004198 n

end

end A286099.P14052248582673347817

namespace A286099

/-- `A000096(A003056(n))-A004198(n)` -/
def P14052248582673347817.Spec : Prop :=
  ∀ n, P14052248582673347817.a n = A286099 n

end A286099

/-! ## A286099.P691441980034423974

`A061579(A061579(n)-A099026(n))`
-/

namespace A286099.P691441980034423974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A061579 n - A099026 n).toNat

end

end A286099.P691441980034423974

namespace A286099

/-- `A061579(A061579(n)-A099026(n))` -/
def P691441980034423974.Spec : Prop :=
  ∀ n, P691441980034423974.a n = A286099 n

end A286099

/-! ## A286099.P9794286508650465556

`(A286109(A057944(n))+A286109(n))/2`
-/

namespace A286099.P9794286508650465556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286109 (A057944 n).toNat + A286109 n : ℚ) / 2

end

end A286099.P9794286508650465556

namespace A286099

/-- `(A286109(A057944(n))+A286109(n))/2` -/
def P9794286508650465556.Spec : Prop :=
  ∀ n, P9794286508650465556.a n = (A286099 n : ℚ)

end A286099

/-! ## A286099.P17016876282546967609

`A003986(n)+A286098(n)-A004198(n)`
-/

namespace A286099.P17016876282546967609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + (A286098 n - A004198 n)

end

end A286099.P17016876282546967609

namespace A286099

/-- `A003986(n)+A286098(n)-A004198(n)` -/
def P17016876282546967609.Spec : Prop :=
  ∀ n, P17016876282546967609.a n = A286099 n

end A286099

/-! ## A286099.P15341315314742065399

`A003987(n)+A286108(n)-A004198(n)`
-/

namespace A286099.P15341315314742065399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + (A286108 n - A004198 n)

end

end A286099.P15341315314742065399

namespace A286099

/-- `A003987(n)+A286108(n)-A004198(n)` -/
def P15341315314742065399.Spec : Prop :=
  ∀ n, P15341315314742065399.a n = A286099 n

end A286099

/-! ## A286099.P8133316893862259893

`A286108(n)+A286109(n)-A286098(n)`
-/

namespace A286099.P8133316893862259893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n + (A286109 n - A286098 n)

end

end A286099.P8133316893862259893

namespace A286099

/-- `A286108(n)+A286109(n)-A286098(n)` -/
def P8133316893862259893.Spec : Prop :=
  ∀ n, P8133316893862259893.a n = A286099 n

end A286099

/-! ## A286099.P12263096260717487672

`A003986(A286098(n))-(A002262(n)-n)`
-/

namespace A286099.P12263096260717487672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A286098 n).toNat - (A002262 n - (n : ℤ))

end

end A286099.P12263096260717487672

namespace A286099

/-- `A003986(A286098(n))-(A002262(n)-n)` -/
def P12263096260717487672.Spec : Prop :=
  ∀ n, P12263096260717487672.a n = A286099 n

end A286099

