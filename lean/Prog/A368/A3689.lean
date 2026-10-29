import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
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
import Seq.B005.C001
import Seq.B005.C002
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
# A368900: LCM-transform of Doudna sequence.

The programs for A368900, the canonical program `A368900.P17836949216139892401` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368900 has offset 1).

The definition of A368900 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A014963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368900.P3971826151081858876

`A368901(n+1)/A368901(n)`
-/

namespace A368900.P3971826151081858876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368901 (n + 1) : ℚ) / (A368901 n : ℚ)

end

end A368900.P3971826151081858876

namespace A368900

/-- `A368901(n+1)/A368901(n)` -/
def P3971826151081858876.Spec : Prop :=
  ∀ n, P3971826151081858876.a n = (A368900 (n + 1) : ℚ)

end A368900

/-! ## A368900.P17836949216139892401

`A014963(A005940(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A368900

/-- `A014963(A005940(n+1))` -/
def P17836949216139892401.Spec : Prop :=
  ∀ n, P17836949216139892401.a n = A368900 (n + 1)

theorem P17836949216139892401.correct : P17836949216139892401.Spec := by
  intro n
  simp only [A368900, Nat.add_sub_cancel]

end A368900

/-! ## A368900.P3796161744028200569

`ratio[A368901(n)]`
-/

namespace A368900.P3796161744028200569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368901 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A368900.P3796161744028200569

namespace A368900

/-- `ratio[A368901(n)]` -/
def P3796161744028200569.Spec : Prop :=
  ∀ n, P3796161744028200569.a n = (A368900 (n + 1) : ℚ)

end A368900

/-! ## A368900.P7498716944618047183

`A019565(A341509(n))`
-/

namespace A368900.P7498716944618047183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A341509 n).toNat

end

end A368900.P7498716944618047183

namespace A368900

/-- `A019565(A341509(n))` -/
def P7498716944618047183.Spec : Prop :=
  ∀ n, P7498716944618047183.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P8869832796226129208

`A369053(A006068(n))`
-/

namespace A368900.P8869832796226129208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369053 (A006068 n).toNat

end

end A368900.P8869832796226129208

namespace A368900

/-- `A369053(A006068(n))` -/
def P8869832796226129208.Spec : Prop :=
  ∀ n, P8869832796226129208.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P16291866869666396468

`A369053(A038558(n))`
-/

namespace A368900.P16291866869666396468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369053 (A038558 n).toNat

end

end A368900.P16291866869666396468

namespace A368900

/-- `A369053(A038558(n))` -/
def P16291866869666396468.Spec : Prop :=
  ∀ n, P16291866869666396468.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P8096456878488836623

`A369028(A261693(n))`
-/

namespace A368900.P8096456878488836623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A261693 n).toNat

end

end A368900.P8096456878488836623

namespace A368900

/-- `A369028(A261693(n))` -/
def P8096456878488836623.Spec : Prop :=
  ∀ n, P8096456878488836623.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P14074033472592369515

`A005940(A341509(n)+1)`
-/

namespace A368900.P14074033472592369515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A341509 n + 1).toNat

end

end A368900.P14074033472592369515

namespace A368900

/-- `A005940(A341509(n)+1)` -/
def P14074033472592369515.Spec : Prop :=
  ∀ n, P14074033472592369515.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P579980674396915830

`A369029(A333777(n))`
-/

namespace A368900.P579980674396915830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369029 (A333777 n).toNat

end

end A368900.P579980674396915830

namespace A368900

/-- `A369029(A333777(n))` -/
def P579980674396915830.Spec : Prop :=
  ∀ n, P579980674396915830.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P8982657705576779992

`A369032(A252755(n))`
-/

namespace A368900.P8982657705576779992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A252755 n).toNat

end

end A368900.P8982657705576779992

namespace A368900

/-- `A369032(A252755(n))` -/
def P8982657705576779992.Spec : Prop :=
  ∀ n, P8982657705576779992.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P9110325433155879855

`A369031(A278533(n))`
-/

namespace A368900.P9110325433155879855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A278533 n).toNat

end

end A368900.P9110325433155879855

namespace A368900

/-- `A369031(A278533(n))` -/
def P9110325433155879855.Spec : Prop :=
  ∀ n, P9110325433155879855.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P2474071872686413926

`A369028(A278533(n)-1)`
-/

namespace A368900.P2474071872686413926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A278533 n - 1).toNat

end

end A368900.P2474071872686413926

namespace A368900

/-- `A369028(A278533(n)-1)` -/
def P2474071872686413926.Spec : Prop :=
  ∀ n, P2474071872686413926.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P6963895641084918600

`A369031(A253563(n))`
-/

namespace A368900.P6963895641084918600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A253563 n).toNat

end

end A368900.P6963895641084918600

namespace A368900

/-- `A369031(A253563(n))` -/
def P6963895641084918600.Spec : Prop :=
  ∀ n, P6963895641084918600.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P9624529836369618965

`A369032(A366275(n))`
-/

namespace A368900.P9624529836369618965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A366275 n).toNat

end

end A368900.P9624529836369618965

namespace A368900

/-- `A369032(A366275(n))` -/
def P9624529836369618965.Spec : Prop :=
  ∀ n, P9624529836369618965.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P14605030586909586015

`A369053(A124108(n))`
-/

namespace A368900.P14605030586909586015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369053 (A124108 n).toNat

end

end A368900.P14605030586909586015

namespace A368900

/-- `A369053(A124108(n))` -/
def P14605030586909586015.Spec : Prop :=
  ∀ n, P14605030586909586015.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P11283371848844980454

`A369033(A253565(n))`
-/

namespace A368900.P11283371848844980454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A253565 n).toNat

end

end A368900.P11283371848844980454

namespace A368900

/-- `A369033(A253565(n))` -/
def P11283371848844980454.Spec : Prop :=
  ∀ n, P11283371848844980454.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P8920714687389271150

`A369032(A163511(n))`
-/

namespace A368900.P8920714687389271150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A163511 n).toNat

end

end A368900.P8920714687389271150

namespace A368900

/-- `A369032(A163511(n))` -/
def P8920714687389271150.Spec : Prop :=
  ∀ n, P8920714687389271150.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P9896465656929869308

`A369032(A332817(n))`
-/

namespace A368900.P9896465656929869308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A332817 n).toNat

end

end A368900.P9896465656929869308

namespace A368900

/-- `A369032(A332817(n))` -/
def P9896465656929869308.Spec : Prop :=
  ∀ n, P9896465656929869308.a n = A368900 (n + 1)

end A368900

/-! ## A368900.P13952745027683751635

`A369032(A332214(n))`
-/

namespace A368900.P13952745027683751635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A332214 n).toNat

end

end A368900.P13952745027683751635

namespace A368900

/-- `A369032(A332214(n))` -/
def P13952745027683751635.Spec : Prop :=
  ∀ n, P13952745027683751635.a n = A368900 (n + 1)

end A368900

/-!
# A368901: The least common multiple of the first n terms of Doudna sequence, A005940.

The programs for A368901, the canonical program `A368901.P12517472764070751102` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368901 has offset 0).

The definition of A368901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368900, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368901.P12517472764070751102

`A368900(n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A368901

/-- `A368900(n)*a(n-1)` -/
def P12517472764070751102.Spec : Prop :=
  ∀ n, P12517472764070751102.a n = A368901 n

theorem P12517472764070751102.correct : P12517472764070751102.Spec := by
  intro n
  simp only [A368901]

end A368901

/-! ## A368901.P5034984987571987887

`lcm(A005940(n), a(n-1))` with `a(0)=1`
-/

namespace A368901.P5034984987571987887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A005940 n) (a (n - 1) : ℤ)

end

end A368901.P5034984987571987887

namespace A368901

/-- `lcm(A005940(n), a(n-1))` -/
def P5034984987571987887.Spec : Prop :=
  ∀ n, (P5034984987571987887.a n : ℤ) = A368901 n

end A368901

/-! ## A368901.P11802577559706424861

`a(n-1)*A368900(n)` with `a(0)=1`
-/

namespace A368901.P11802577559706424861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A368900 n

end

end A368901.P11802577559706424861

namespace A368901

/-- `a(n-1)*A368900(n)` -/
def P11802577559706424861.Spec : Prop :=
  ∀ n, P11802577559706424861.a n = A368901 n

end A368901

/-! ## A368901.P923332097972718122

`∏[A368900(A028310(n))]`
-/

namespace A368901.P923332097972718122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368900 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A368901.P923332097972718122

namespace A368901

/-- `∏[A368900(A028310(n))]` -/
def P923332097972718122.Spec : Prop :=
  ∀ n, P923332097972718122.a n = A368901 n

end A368901

/-! ## A368901.P12741183603395621411

`∏[A368900(n+1)]/A368900(n+1)`
-/

namespace A368901.P12741183603395621411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368900 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A368900 (n + 1) : ℚ)

end

end A368901.P12741183603395621411

namespace A368901

/-- `∏[A368900(n+1)]/A368900(n+1)` -/
def P12741183603395621411.Spec : Prop :=
  ∀ n, P12741183603395621411.a n = (A368901 n : ℚ)

end A368901

/-!
# A368902: Numbers k for which A342001(k) is squarefree.

The programs for A368902, there is no canonical definition to state claims against.
-/

/-! ## A368902.P4589654233114806581

`eq[1, A368912(n+1)]+1`
-/

namespace A368902.P4589654233114806581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368902.P4589654233114806581

/-! ## A368902.P16780442752772902071

`filter[A344180(n), A368912(#)]`
-/

namespace A368902.P16780442752772902071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368912 (f1 j).toNat = 1) n)

end

end A368902.P16780442752772902071

/-! ## A368902.P14846066814158604693

`eq[1, A368912(A000007(n)+n)]`
-/

namespace A368902.P14846066814158604693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368912 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368902.P14846066814158604693

/-! ## A368902.P8890645074077317860

`filter[A092942(n+1), A368912(#)]`
-/

namespace A368902.P8890645074077317860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368912 (f1 j).toNat = 1) n)

end

end A368902.P8890645074077317860

/-! ## A368902.P13154263712926381679

`filter[A133622(n+1), A368912(#)]`
-/

namespace A368902.P13154263712926381679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368912 (f1 j).toNat = 1) n)

end

end A368902.P13154263712926381679

/-! ## A368902.P1579654106639813344

`filter[A152271(n), A368912(#)]`
-/

namespace A368902.P1579654106639813344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368912 (f1 j).toNat = 1) n)

end

end A368902.P1579654106639813344

/-! ## A368902.P1166730802483897166

`filter[A158416(n), A368912(#)]`
-/

namespace A368902.P1166730802483897166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368912 (f1 j).toNat = 1) n)

end

end A368902.P1166730802483897166

/-! ## A368902.P2860564128060606026

`filter[A144112(2*n+1), A368912(#)]`
-/

namespace A368902.P2860564128060606026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368912 (f1 j).toNat = 1) n)

end

end A368902.P2860564128060606026

/-! ## A368902.P33679045158850895

`filter[A051340(n), A368912(#)]`
-/

namespace A368902.P33679045158850895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368912 (f1 j).toNat = 1) n)

end

end A368902.P33679045158850895

/-! ## A368902.P9862718299834574359

`filter[A130296(n+1), A368912(#)]`
-/

namespace A368902.P9862718299834574359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368912 (f1 j).toNat = 1) n)

end

end A368902.P9862718299834574359

/-!
# A368903: Numbers k for which there is no prime p such that p^p divides A342001(k), but for A003415(k) such a prime exists. Here A003415(n) is the arithmetic derivative of n, and A342001(n) = A003415(n) / A003557(n).

The programs for A368903, the canonical program `A368903.P8694389624788309132` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368903 has offset 1).

The definition of A368903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368903.P18237389668986340542

`filter[A344180(n), A368913(#)]`
-/

namespace A368903.P18237389668986340542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P18237389668986340542

namespace A368903

/-- `filter[A344180(n), A368913(#)]` -/
def P18237389668986340542.Spec : Prop :=
  ∀ n, P18237389668986340542.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P8694389624788309132

`filter[A013929(n+1), A368913(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A368903

/-- `filter[A013929(n+1), A368913(#)]` -/
def P8694389624788309132.Spec : Prop :=
  ∀ n, P8694389624788309132.a n = A368903 (n + 1)

theorem P8694389624788309132.correct : P8694389624788309132.Spec := by
  intro n
  simp only [A368903, Nat.add_sub_cancel]

end A368903

/-! ## A368903.P5391301724468328732

`lt[0, A368913(n+1)]+1`
-/

namespace A368903.P5391301724468328732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368903.P5391301724468328732

namespace A368903

/-- `lt[0, A368913(n+1)]+1` -/
def P5391301724468328732.Spec : Prop :=
  ∀ n, (P5391301724468328732.a n : ℤ) = A368903 (n + 1)

end A368903

/-! ## A368903.P192700728511126828

`filter[A319701(n+1), A368913(#)]`
-/

namespace A368903.P192700728511126828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P192700728511126828

namespace A368903

/-- `filter[A319701(n+1), A368913(#)]` -/
def P192700728511126828.Spec : Prop :=
  ∀ n, P192700728511126828.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P13365306592403780879

`filter[A319702(n+1), A368913(#)]`
-/

namespace A368903.P13365306592403780879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P13365306592403780879

namespace A368903

/-- `filter[A319702(n+1), A368913(#)]` -/
def P13365306592403780879.Spec : Prop :=
  ∀ n, P13365306592403780879.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P7740958593901605732

`filter[A326202(n+1), A368913(#)]`
-/

namespace A368903.P7740958593901605732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P7740958593901605732

namespace A368903

/-- `filter[A326202(n+1), A368913(#)]` -/
def P7740958593901605732.Spec : Prop :=
  ∀ n, P7740958593901605732.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P2359875380196818552

`filter[A305980(n+1), A368913(#)]`
-/

namespace A368903.P2359875380196818552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P2359875380196818552

namespace A368903

/-- `filter[A305980(n+1), A368913(#)]` -/
def P2359875380196818552.Spec : Prop :=
  ∀ n, P2359875380196818552.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P13603230662940847904

`filter[A326201(n+1), A368913(#)]`
-/

namespace A368903.P13603230662940847904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P13603230662940847904

namespace A368903

/-- `filter[A326201(n+1), A368913(#)]` -/
def P13603230662940847904.Spec : Prop :=
  ∀ n, P13603230662940847904.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P17117772206565975365

`filter[A326139(n+1), A368913(#)]`
-/

namespace A368903.P17117772206565975365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P17117772206565975365

namespace A368903

/-- `filter[A326139(n+1), A368913(#)]` -/
def P17117772206565975365.Spec : Prop :=
  ∀ n, P17117772206565975365.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P501858681657070974

`filter[A092486(n), A368913(#)]`
-/

namespace A368903.P501858681657070974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P501858681657070974

namespace A368903

/-- `filter[A092486(n), A368913(#)]` -/
def P501858681657070974.Spec : Prop :=
  ∀ n, P501858681657070974.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P9524384649630854077

`filter[A002808(n+1), A368913(#)]`
-/

namespace A368903.P9524384649630854077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P9524384649630854077

namespace A368903

/-- `filter[A002808(n+1), A368913(#)]` -/
def P9524384649630854077.Spec : Prop :=
  ∀ n, P9524384649630854077.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P17806705332882420305

`filter[A018252(n+1), A368913(#)]`
-/

namespace A368903.P17806705332882420305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P17806705332882420305

namespace A368903

/-- `filter[A018252(n+1), A368913(#)]` -/
def P17806705332882420305.Spec : Prop :=
  ∀ n, P17806705332882420305.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P1881935135630738276

`filter[A025020(n+1), A368913(#)]`
-/

namespace A368903.P1881935135630738276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P1881935135630738276

namespace A368903

/-- `filter[A025020(n+1), A368913(#)]` -/
def P1881935135630738276.Spec : Prop :=
  ∀ n, P1881935135630738276.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P9345522397827609531

`filter[A275974(n+1), A368913(#)]`
-/

namespace A368903.P9345522397827609531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P9345522397827609531

namespace A368903

/-- `filter[A275974(n+1), A368913(#)]` -/
def P9345522397827609531.Spec : Prop :=
  ∀ n, P9345522397827609531.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P13018043917527394283

`filter[A089088(n), A368913(#)]`
-/

namespace A368903.P13018043917527394283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P13018043917527394283

namespace A368903

/-- `filter[A089088(n), A368913(#)]` -/
def P13018043917527394283.Spec : Prop :=
  ∀ n, P13018043917527394283.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P14841124225384887453

`filter[A080037(n), A368913(#)]`
-/

namespace A368903.P14841124225384887453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P14841124225384887453

namespace A368903

/-- `filter[A080037(n), A368913(#)]` -/
def P14841124225384887453.Spec : Prop :=
  ∀ n, P14841124225384887453.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P15154549315433280421

`filter[A047839(n+1), A368913(#)]`
-/

namespace A368903.P15154549315433280421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P15154549315433280421

namespace A368903

/-- `filter[A047839(n+1), A368913(#)]` -/
def P15154549315433280421.Spec : Prop :=
  ∀ n, P15154549315433280421.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P12489285388218246067

`filter[A028392(n+1), A368913(#)]`
-/

namespace A368903.P12489285388218246067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P12489285388218246067

namespace A368903

/-- `filter[A028392(n+1), A368913(#)]` -/
def P12489285388218246067.Spec : Prop :=
  ∀ n, P12489285388218246067.a n = A368903 (n + 1)

end A368903

/-! ## A368903.P17242349328396377080

`eq[1, A368913(A028310(n))]`
-/

namespace A368903.P17242349328396377080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368913 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368903.P17242349328396377080

namespace A368903

/-- `eq[1, A368913(A028310(n))]` -/
def P17242349328396377080.Spec : Prop :=
  ∀ n, (P17242349328396377080.a n : ℤ) = A368903 (n + 1)

end A368903

/-! ## A368903.P17430617188608324735

`filter[A116966(n), A368913(#)]`
-/

namespace A368903.P17430617188608324735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368913 (f1 j).toNat = 1) n)

end

end A368903.P17430617188608324735

namespace A368903

/-- `filter[A116966(n), A368913(#)]` -/
def P17430617188608324735.Spec : Prop :=
  ∀ n, P17430617188608324735.a n = A368903 (n + 1)

end A368903

/-!
# A368904: Numbers k for which there is no prime p such that p^p divides A342001(k).

The programs for A368904, there is no canonical definition to state claims against.
-/

/-! ## A368904.P2949050067827720666

`eq[0, A368994(n+1)]+1`
-/

namespace A368904.P2949050067827720666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368904.P2949050067827720666

/-! ## A368904.P16519866493181848357

`lt[0, A368914(n+1)]+1`
-/

namespace A368904.P16519866493181848357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368904.P16519866493181848357

/-! ## A368904.P10328577999195412303

`comp[A368995(n+1)-1]+1`
-/

namespace A368904.P10328577999195412303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368995 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A368904.P10328577999195412303

/-! ## A368904.P9242424073625898213

`eq[1, A368914(A028310(n))]`
-/

namespace A368904.P9242424073625898213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368904.P9242424073625898213

/-! ## A368904.P3829897407418929972

`filter[A051340(n), A368914(#)]`
-/

namespace A368904.P3829897407418929972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368914 (f1 j).toNat = 1) n)

end

end A368904.P3829897407418929972

/-! ## A368904.P14746358396419984772

`filter[A152271(n), A368914(#)]`
-/

namespace A368904.P14746358396419984772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368914 (f1 j).toNat = 1) n)

end

end A368904.P14746358396419984772

/-! ## A368904.P8503267487283112134

`filter[A158416(n), A368914(#)]`
-/

namespace A368904.P8503267487283112134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368914 (f1 j).toNat = 1) n)

end

end A368904.P8503267487283112134

/-! ## A368904.P10808487099788193723

`filter[A344180(n), A368914(#)]`
-/

namespace A368904.P10808487099788193723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368914 (f1 j).toNat = 1) n)

end

end A368904.P10808487099788193723

/-! ## A368904.P14350430550727584312

`filter[A092942(n+1), A368914(#)]`
-/

namespace A368904.P14350430550727584312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368914 (f1 j).toNat = 1) n)

end

end A368904.P14350430550727584312

/-!
# A368905: a(n) = 1 if A342001(A005940(1+n)) is not divisible by p^p for any prime p, otherwise 0.

The programs for A368905, the canonical program `A368905.P389147492042949560` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368905 has offset 0).

The definition of A368905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, A366801, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368905.P389147492042949560

`A359550(A366801(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A368905

/-- `A359550(A366801(n))` -/
def P389147492042949560.Spec : Prop :=
  ∀ n, P389147492042949560.a n = A368905 n

theorem P389147492042949560.correct : P389147492042949560.Spec := by
  intro n
  simp only [A368905]

end A368905

/-! ## A368905.P7170294863447681690

`A368914(A005940(1+n))`
-/

namespace A368905.P7170294863447681690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (A005940 (1 + n)).toNat

end

end A368905.P7170294863447681690

namespace A368905

/-- `A368914(A005940(1+n))` -/
def P7170294863447681690.Spec : Prop :=
  ∀ n, P7170294863447681690.a n = A368905 n

end A368905

/-! ## A368905.P10233352790723781612

`A166486(A001915(n+1)*A366801(n))`
-/

namespace A368905.P10233352790723781612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A001915 (n + 1) * A366801 n).toNat

end

end A368905.P10233352790723781612

namespace A368905

/-- `A166486(A001915(n+1)*A366801(n))` -/
def P10233352790723781612.Spec : Prop :=
  ∀ n, P10233352790723781612.a n = A368905 n

end A368905

/-! ## A368905.P5807408481444015754

`A166486(A366801(n)+A258646(n))`
-/

namespace A368905.P5807408481444015754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A366801 n + A258646 n).toNat

end

end A368905.P5807408481444015754

namespace A368905

/-- `A166486(A366801(n)+A258646(n))` -/
def P5807408481444015754.Spec : Prop :=
  ∀ n, P5807408481444015754.a n = A368905 n

end A368905

/-!
# A368906: a(n) is the number of integers k in the range 0..n such that A342001(A005940(1+k)) is not divisible by p^p for any prime p.

The programs for A368906, the canonical program `A368906.P17215132473500246940` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368906 has offset 0).

The definition of A368906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368905, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368906.P17215132473500246940

`a(n-1)+A368905(n)` with `a(0)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A368906

/-- `a(n-1)+A368905(n)` -/
def P17215132473500246940.Spec : Prop :=
  ∀ n, P17215132473500246940.a n = A368906 n

theorem P17215132473500246940.correct : P17215132473500246940.Spec := by
  intro n
  simp only [A368906]

end A368906

/-! ## A368906.P1101638210240432230

`∑[A368905(n)]`
-/

namespace A368906.P1101638210240432230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368906.P1101638210240432230

namespace A368906

/-- `∑[A368905(n)]` -/
def P1101638210240432230.Spec : Prop :=
  ∀ n, P1101638210240432230.a n = A368906 n

end A368906

/-! ## A368906.P14383437066567802976

`∑[A359550(A366801(n))]`
-/

namespace A368906.P14383437066567802976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A366801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368906.P14383437066567802976

namespace A368906

/-- `∑[A359550(A366801(n))]` -/
def P14383437066567802976.Spec : Prop :=
  ∀ n, P14383437066567802976.a n = A368906 n

end A368906

/-! ## A368906.P5742950851830711658

`∑[A368914(A005940(n+1))]`
-/

namespace A368906.P5742950851830711658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368906.P5742950851830711658

namespace A368906

/-- `∑[A368914(A005940(n+1))]` -/
def P5742950851830711658.Spec : Prop :=
  ∀ n, P5742950851830711658.a n = A368906 n

end A368906

/-!
# A368907: a(n) = 1 if the k-th arithmetic derivative of A005940(1+n) is zero for some k >= 0, otherwise 0. Here A005940 is the Doudna sequence.

The programs for A368907, there is no canonical definition to state claims against.
-/

/-! ## A368907.P15293215678711535468

`A328308(A005940(1+n))`
-/

namespace A368907.P15293215678711535468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A005940 (1 + n)).toNat

end

end A368907.P15293215678711535468

/-! ## A368907.P13794290660329350078

`A328308(A344026(n))`
-/

namespace A368907.P13794290660329350078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A344026 n).toNat

end

end A368907.P13794290660329350078

/-! ## A368907.P7245969672291014555

`1-A341999(A005940(n+1))`
-/

namespace A368907.P7245969672291014555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341999 (A005940 (n + 1)).toNat

end

end A368907.P7245969672291014555

/-! ## A368907.P13405759245867044566

`A328308(A324394(n)*A324395(n))`
-/

namespace A368907.P13405759245867044566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A324394 n * A324395 n).toNat

end

end A368907.P13405759245867044566

/-! ## A368907.P16800524734146476240

`A258649(2*n+3)^A258646(A005940(n+1))`
-/

namespace A368907.P16800524734146476240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258649 (2 * n + 3) : ℚ) ^ (A258646 (A005940 (n + 1)).toNat : ℤ)

end

end A368907.P16800524734146476240

/-!
# A368908: a(n) is the number of integers x in range 0..n such that the k-th arithmetic derivative of A005940(1+x) is zero for some k >= 0, where A005940 is the Doudna sequence.

The programs for A368908, there is no canonical definition to state claims against.
-/

/-! ## A368908.P5130466408172707644

`a(n-1)+A368907(n)` with `a(0)=1`
-/

namespace A368908.P5130466408172707644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A368907 n

end

end A368908.P5130466408172707644

/-! ## A368908.P9052558729149587473

`∑[A368907(n)]`
-/

namespace A368908.P9052558729149587473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368908.P9052558729149587473

/-! ## A368908.P17302627702867720623

`∑[A328308(A344026(n))]`
-/

namespace A368908.P17302627702867720623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A344026 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368908.P17302627702867720623

/-! ## A368908.P18273716198626732789

`∑[A328308(A005940(n+1))]`
-/

namespace A368908.P18273716198626732789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368908.P18273716198626732789

/-! ## A368908.P11090652176450109197

`∑[A068432(A047987(n+1)%A033491(3*n+4))]`
-/

namespace A368908.P11090652176450109197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (Int.tmod (A047987 (n + 1)) (A033491 (3 * n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368908.P11090652176450109197

/-!
# A368909: a(n) = A003415(sigma(A005940(1+n))) mod 2, where A003415 is the arithmetic derivative, sigma is the sum of divisors function, and A005940 is the Doudna sequence.

The programs for A368909, the canonical program `A368909.P787331260078273117` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368909 has offset 0).

The definition of A368909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368909.P15574451926928595960

`A347870(A005940(1+n))`
-/

namespace A368909.P15574451926928595960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A005940 (1 + n)).toNat

end

end A368909.P15574451926928595960

namespace A368909

/-- `A347870(A005940(1+n))` -/
def P15574451926928595960.Spec : Prop :=
  ∀ n, P15574451926928595960.a n = A368909 n

end A368909

/-! ## A368909.P13853718524711062460

`A165560(A324054(n))`
-/

namespace A368909.P13853718524711062460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A324054 n).toNat

end

end A368909.P13853718524711062460

namespace A368909

/-- `A165560(A324054(n))` -/
def P13853718524711062460.Spec : Prop :=
  ∀ n, P13853718524711062460.a n = A368909 n

end A368909

/-! ## A368909.P787331260078273117

`A003415(A000203(A005940(1+n)))%2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A368909

/-- `A003415(A000203(A005940(1+n)))%2` -/
def P787331260078273117.Spec : Prop :=
  ∀ n, P787331260078273117.a n = A368909 n

theorem P787331260078273117.correct : P787331260078273117.Spec := by
  intro n
  simp only [A368909]

end A368909

/-! ## A368909.P8848914806009567363

`A347870(A364500(n+1)*A364502(n+1))`
-/

namespace A368909.P8848914806009567363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A364500 (n + 1) * A364502 (n + 1)).toNat

end

end A368909.P8848914806009567363

namespace A368909

/-- `A347870(A364500(n+1)*A364502(n+1))` -/
def P8848914806009567363.Spec : Prop :=
  ∀ n, P8848914806009567363.a n = A368909 n

end A368909

/-! ## A368909.P15184598480656432376

`A347870(A324106(n+1)*A340365(n+1)/A340366(n+1))`
-/

namespace A368909.P15184598480656432376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (SequenceMachineLib.roundAway ((A324106 (n + 1) * A340365 (n + 1) : ℚ) / (A340366 (n + 1) : ℚ))).toNat

end

end A368909.P15184598480656432376

namespace A368909

/-- `A347870(A324106(n+1)*A340365(n+1)/A340366(n+1))` -/
def P15184598480656432376.Spec : Prop :=
  ∀ n, P15184598480656432376.a n = A368909 n

end A368909

/-! ## A368909.P5723862459953009553

`A342925(A005940(n+1))%2`
-/

namespace A368909.P5723862459953009553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342925 (A005940 (n + 1)).toNat) 2

end

end A368909.P5723862459953009553

namespace A368909

/-- `A342925(A005940(n+1))%2` -/
def P5723862459953009553.Spec : Prop :=
  ∀ n, P5723862459953009553.a n = A368909 n

end A368909

/-!
# A368910: Partial sums of A368909.

The programs for A368910, the canonical program `A368910.P14865691913623995403` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368910 has offset 0).

The definition of A368910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368909, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368910.P14865691913623995403

`a(n-1)+A368909(n)` with `a(0)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A368910

/-- `a(n-1)+A368909(n)` -/
def P14865691913623995403.Spec : Prop :=
  ∀ n, P14865691913623995403.a n = A368910 n

theorem P14865691913623995403.correct : P14865691913623995403.Spec := by
  intro n
  simp only [A368910]

end A368910

/-! ## A368910.P3938323206604427056

`∑[A368909(n)]`
-/

namespace A368910.P3938323206604427056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368910.P3938323206604427056

namespace A368910

/-- `∑[A368909(n)]` -/
def P3938323206604427056.Spec : Prop :=
  ∀ n, P3938323206604427056.a n = A368910 n

end A368910

/-! ## A368910.P11494842596496512985

`∑[A347870(A005940(n+1))]`
-/

namespace A368910.P11494842596496512985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368910.P11494842596496512985

namespace A368910

/-- `∑[A347870(A005940(n+1))]` -/
def P11494842596496512985.Spec : Prop :=
  ∀ n, P11494842596496512985.a n = A368910 n

end A368910

/-! ## A368910.P170998711776807537

`∑[A165560(A324054(n))]`
-/

namespace A368910.P170998711776807537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A324054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368910.P170998711776807537

namespace A368910

/-- `∑[A165560(A324054(n))]` -/
def P170998711776807537.Spec : Prop :=
  ∀ n, P170998711776807537.a n = A368910 n

end A368910

/-! ## A368910.P3576814106244506516

`A000523(A217112(2*n+5))-3`
-/

namespace A368910.P3576814106244506516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A217112 (2 * n + 5)).toNat - 3

end

end A368910.P3576814106244506516

namespace A368910

/-- `A000523(A217112(2*n+5))-3` -/
def P3576814106244506516.Spec : Prop :=
  ∀ n, P3576814106244506516.a n = A368910 n

end A368910

/-!
# A368912: a(n) = 1 if A342001(n) is squarefree, and 0 otherwise.

The programs for A368912, there is no canonical definition to state claims against.
-/

/-! ## A368912.P2692859473287653163

`char[A368902(n+1)-1]`
-/

namespace A368912.P2692859473287653163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368902 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A368912.P2692859473287653163

/-! ## A368912.P14101520704391950104

`A074206(A342001(n+1))%2`
-/

namespace A368912.P14101520704391950104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074206 (A342001 (n + 1)).toNat) 2

end

end A368912.P14101520704391950104

/-! ## A368912.P9187622214580670064

`A008966(gcd(A003418(n+4), A342001(n+1)))`
-/

namespace A368912.P9187622214580670064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (Int.gcd (A003418 (n + 4)) (A342001 (n + 1)))

end

end A368912.P9187622214580670064

/-! ## A368912.P10401736679521839676

`and(A368914(n+1), A396137(n+1))`
-/

namespace A368912.P10401736679521839676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A368914 (n + 1)) (A396137 (n + 1))

end

end A368912.P10401736679521839676

/-! ## A368912.P11387469496398378323

`and(A366420(n+1), A368914(n+1))`
-/

namespace A368912.P11387469496398378323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A366420 (n + 1)) (A368914 (n + 1))

end

end A368912.P11387469496398378323

/-!
# A368913: a(n) = 1 if there is no prime p such that p^p divides A342001(n), but for A003415(n) such a prime exists, otherwise 0. Here A003415(n) is the arithmetic derivative of n, and A342001(n) = A003415(n) / A003557(n).

The programs for A368913, the canonical program `A368913.P7874936486369943063` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368913 has offset 1).

The definition of A368913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368914, A368915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368913.P7874936486369943063

`A368914(n+1)-A368915(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A368913

/-- `A368914(n+1)-A368915(n+1)` -/
def P7874936486369943063.Spec : Prop :=
  ∀ n, P7874936486369943063.a n = A368913 (n + 1)

theorem P7874936486369943063.correct : P7874936486369943063.Spec := by
  intro n
  simp only [A368913, Nat.add_sub_cancel]

end A368913

/-! ## A368913.P18013675696005774343

`A341996((n+1)*A368914(n+1))`
-/

namespace A368913.P18013675696005774343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 ((n + 1 : ℤ) * A368914 (n + 1)).toNat

end

end A368913.P18013675696005774343

namespace A368913

/-- `A341996((n+1)*A368914(n+1))` -/
def P18013675696005774343.Spec : Prop :=
  ∀ n, P18013675696005774343.a n = A368913 (n + 1)

end A368913

/-! ## A368913.P13040249598746333637

`A342023(n+1)*A368914(n+1)`
-/

namespace A368913.P13040249598746333637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (n + 1) * A368914 (n + 1)

end

end A368913.P13040249598746333637

namespace A368913

/-- `A342023(n+1)*A368914(n+1)` -/
def P13040249598746333637.Spec : Prop :=
  ∀ n, P13040249598746333637.a n = A368913 (n + 1)

end A368913

/-! ## A368913.P16500073690820023808

`(1-A359550(n+1))*A368914(n+1)`
-/

namespace A368913.P16500073690820023808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A359550 (n + 1)) * A368914 (n + 1)

end

end A368913.P16500073690820023808

namespace A368913

/-- `(1-A359550(n+1))*A368914(n+1)` -/
def P16500073690820023808.Spec : Prop :=
  ∀ n, P16500073690820023808.a n = A368913 (n + 1)

end A368913

/-! ## A368913.P9951323844155584613

`A368914(n+1)-A359550(A003415(n+1))`
-/

namespace A368913.P9951323844155584613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (n + 1) - A359550 (A003415 (n + 1)).toNat

end

end A368913.P9951323844155584613

namespace A368913

/-- `A368914(n+1)-A359550(A003415(n+1))` -/
def P9951323844155584613.Spec : Prop :=
  ∀ n, P9951323844155584613.a n = A368913 (n + 1)

end A368913

/-! ## A368913.P3162901086773676214

`A359550(A342001(n+1))-A368915(n+1)`
-/

namespace A368913.P3162901086773676214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A342001 (n + 1)).toNat - A368915 (n + 1)

end

end A368913.P3162901086773676214

namespace A368913

/-- `A359550(A342001(n+1))-A368915(n+1)` -/
def P3162901086773676214.Spec : Prop :=
  ∀ n, P3162901086773676214.a n = A368913 (n + 1)

end A368913

/-!
# A368914: a(n) = 1 if there is no prime p such that p^p divides A342001(n), otherwise 0.

The programs for A368914, the canonical program `A368914.P6285884815134273775` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368914 has offset 1).

The definition of A368914 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368914.P6285884815134273775

`A359550(A342001(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A368914

/-- `A359550(A342001(n+1))` -/
def P6285884815134273775.Spec : Prop :=
  ∀ n, P6285884815134273775.a n = A368914 (n + 1)

theorem P6285884815134273775.correct : P6285884815134273775.Spec := by
  intro n
  simp only [A368914, Nat.add_sub_cancel]

end A368914

/-! ## A368914.P3414003264470898443

`A368913(n+1)+A368915(n+1)`
-/

namespace A368914.P3414003264470898443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368913 (n + 1) + A368915 (n + 1)

end

end A368914.P3414003264470898443

namespace A368914

/-- `A368913(n+1)+A368915(n+1)` -/
def P3414003264470898443.Spec : Prop :=
  ∀ n, P3414003264470898443.a n = A368914 (n + 1)

theorem P3414003264470898443.correct : P3414003264470898443.Spec := by
  intro n
  simp only [A368914, Nat.add_sub_cancel, A368914.P3414003264470898443.a, A368914.P6285884815134273775.a, A342001, A342001.P4805983025243635594.a, A359550, A359550.P13374813552768723012.f1, A359550.P13374813552768723012.a, A368913, A368913.P7874936486369943063.a, A368915, A368915.P18223305720082748212.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A048103, A048103.P2857780871573492135.f1, A048103.P2857780871573492135.f2, A048103.P2857780871573492135.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A342007, A342007.P5181248813472136976.f1, A342007.P5181248813472136976.a, A349394, A349394.P210516795435731064.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A014963, A014963.P5975177236000282614.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368914

/-! ## A368914.P15568132010820097783

`A368913(n+1)+A359550(A003415(n+1))`
-/

namespace A368914.P15568132010820097783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368913 (n + 1) + A359550 (A003415 (n + 1)).toNat

end

end A368914.P15568132010820097783

namespace A368914

/-- `A368913(n+1)+A359550(A003415(n+1))` -/
def P15568132010820097783.Spec : Prop :=
  ∀ n, P15568132010820097783.a n = A368914 (n + 1)

theorem P15568132010820097783.correct : P15568132010820097783.Spec := by
  intro n
  simp only [A368914, Nat.add_sub_cancel, A368914.P15568132010820097783.a, A368914.P6285884815134273775.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A342001, A342001.P4805983025243635594.a, A359550, A359550.P13374813552768723012.f1, A359550.P13374813552768723012.a, A368913, A368913.P7874936486369943063.a, A003557, A003557.P6364735403900941810.a, A048103, A048103.P2857780871573492135.f1, A048103.P2857780871573492135.f2, A048103.P2857780871573492135.a, A349394, A349394.P210516795435731064.a, A368915, A368915.P18223305720082748212.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A342007, A342007.P5181248813472136976.f1, A342007.P5181248813472136976.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A014963, A014963.P5975177236000282614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368914

/-! ## A368914.P11216605229427892387

`A368913(n+1)+A359550((n+1)*A083345(n+1))`
-/

namespace A368914.P11216605229427892387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368913 (n + 1) + A359550 ((n + 1 : ℤ) * A083345 (n + 1)).toNat

end

end A368914.P11216605229427892387

namespace A368914

/-- `A368913(n+1)+A359550((n+1)*A083345(n+1))` -/
def P11216605229427892387.Spec : Prop :=
  ∀ n, P11216605229427892387.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P6175420576927166655

`A369006(A065679(n+1))`
-/

namespace A368914.P6175420576927166655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369006 (A065679 (n + 1)).toNat

end

end A368914.P6175420576927166655

namespace A368914

/-- `A369006(A065679(n+1))` -/
def P6175420576927166655.Spec : Prop :=
  ∀ n, P6175420576927166655.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P10182477834253185975

`A358680(A120071(2*n))-A368994(n+1)`
-/

namespace A368914.P10182477834253185975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A120071 (2 * n)).toNat - A368994 (n + 1)

end

end A368914.P10182477834253185975

namespace A368914

/-- `A358680(A120071(2*n))-A368994(n+1)` -/
def P10182477834253185975.Spec : Prop :=
  ∀ n, P10182477834253185975.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P14723828507090222380

`A001055(A103776(n+1))-A368994(n+1)`
-/

namespace A368914.P14723828507090222380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A103776 (n + 1)).toNat - A368994 (n + 1)

end

end A368914.P14723828507090222380

namespace A368914

/-- `A001055(A103776(n+1))-A368994(n+1)` -/
def P14723828507090222380.Spec : Prop :=
  ∀ n, P14723828507090222380.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P4140405136985872581

`A151665(A034844(n+1)*A368994(n+1))`
-/

namespace A368914.P4140405136985872581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 (A034844 (n + 1) * A368994 (n + 1)).toNat

end

end A368914.P4140405136985872581

namespace A368914

/-- `A151665(A034844(n+1)*A368994(n+1))` -/
def P4140405136985872581.Spec : Prop :=
  ∀ n, P4140405136985872581.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P12275523569976169272

`A121262(A174441(n+1)*A368994(n+1))`
-/

namespace A368914.P12275523569976169272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A174441 (n + 1) * A368994 (n + 1)).toNat

end

end A368914.P12275523569976169272

namespace A368914

/-- `A121262(A174441(n+1)*A368994(n+1))` -/
def P12275523569976169272.Spec : Prop :=
  ∀ n, P12275523569976169272.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P9197781511960473550

`A353494(A174441(n+1)*A368994(n+1))`
-/

namespace A368914.P9197781511960473550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A174441 (n + 1) * A368994 (n + 1)).toNat

end

end A368914.P9197781511960473550

namespace A368914

/-- `A353494(A174441(n+1)*A368994(n+1))` -/
def P9197781511960473550.Spec : Prop :=
  ∀ n, P9197781511960473550.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P6149767471310470680

`A342001(A005384(2*n+1))-A368994(n+1)`
-/

namespace A368914.P6149767471310470680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A005384 (2 * n + 1)).toNat - A368994 (n + 1)

end

end A368914.P6149767471310470680

namespace A368914

/-- `A342001(A005384(2*n+1))-A368994(n+1)` -/
def P6149767471310470680.Spec : Prop :=
  ∀ n, P6149767471310470680.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P8754934154477615210

`A034188(A134213(n+1)*A368994(n+1))`
-/

namespace A368914.P8754934154477615210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (A134213 (n + 1) * A368994 (n + 1)).toNat

end

end A368914.P8754934154477615210

namespace A368914

/-- `A034188(A134213(n+1)*A368994(n+1))` -/
def P8754934154477615210.Spec : Prop :=
  ∀ n, P8754934154477615210.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P18244028776183167343

`A166486(A002145(n+1)*A342001(n+1))`
-/

namespace A368914.P18244028776183167343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A002145 (n + 1) * A342001 (n + 1)).toNat

end

end A368914.P18244028776183167343

namespace A368914

/-- `A166486(A002145(n+1)*A342001(n+1))` -/
def P18244028776183167343.Spec : Prop :=
  ∀ n, P18244028776183167343.a n = A368914 (n + 1)

end A368914

/-! ## A368914.P3788024258559970412

`A027907(n²)-A368994(n+1)`
-/

namespace A368914.P3788024258559970412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (n ^ 2) - A368994 (n + 1)

end

end A368914.P3788024258559970412

namespace A368914

/-- `A027907(n²)-A368994(n+1)` -/
def P3788024258559970412.Spec : Prop :=
  ∀ n, P3788024258559970412.a n = A368914 (n + 1)

end A368914

/-!
# A368915: a(n) = 1 if there is no prime p such that p^p divides the arithmetic derivative of n, and 0 otherwise.

The programs for A368915, the canonical program `A368915.P18223305720082748212` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368915 has offset 1).

The definition of A368915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368915.P18223305720082748212

`A359550(A003415(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A368915

/-- `A359550(A003415(n+1))` -/
def P18223305720082748212.Spec : Prop :=
  ∀ n, P18223305720082748212.a n = A368915 (n + 1)

theorem P18223305720082748212.correct : P18223305720082748212.Spec := by
  intro n
  simp only [A368915, Nat.add_sub_cancel]

end A368915

/-! ## A368915.P5830357588649289375

`A368914(n+1)-A368913(n+1)`
-/

namespace A368915.P5830357588649289375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (n + 1) - A368913 (n + 1)

end

end A368915.P5830357588649289375

namespace A368915

/-- `A368914(n+1)-A368913(n+1)` -/
def P5830357588649289375.Spec : Prop :=
  ∀ n, P5830357588649289375.a n = A368915 (n + 1)

theorem P5830357588649289375.correct : P5830357588649289375.Spec := by
  intro n
  simp only [A368915, Nat.add_sub_cancel, A368915.P5830357588649289375.a, A368915.P18223305720082748212.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A359550, A359550.P13374813552768723012.f1, A359550.P13374813552768723012.a, A368913, A368913.P7874936486369943063.a, A368914, A368914.P6285884815134273775.a, A048103, A048103.P2857780871573492135.f1, A048103.P2857780871573492135.f2, A048103.P2857780871573492135.a, A342001, A342001.P4805983025243635594.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A342007, A342007.P5181248813472136976.f1, A342007.P5181248813472136976.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A014963, A014963.P5975177236000282614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368915

/-! ## A368915.P16619308062518331436

`A341996(A256750(n+1)²²)`
-/

namespace A368915.P16619308062518331436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 ((A256750 (n + 1) ^ 2) ^ 2).toNat

end

end A368915.P16619308062518331436

namespace A368915

/-- `A341996(A256750(n+1)²²)` -/
def P16619308062518331436.Spec : Prop :=
  ∀ n, P16619308062518331436.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P5160707827301244548

`A341999(A256750(n+1)²²)`
-/

namespace A368915.P5160707827301244548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 ((A256750 (n + 1) ^ 2) ^ 2).toNat

end

end A368915.P5160707827301244548

namespace A368915

/-- `A341999(A256750(n+1)²²)` -/
def P5160707827301244548.Spec : Prop :=
  ∀ n, P5160707827301244548.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P6016958468303235677

`A359550((n+1)*A368914(n+1))`
-/

namespace A368915.P6016958468303235677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1 : ℤ) * A368914 (n + 1)).toNat

end

end A368915.P6016958468303235677

namespace A368915

/-- `A359550((n+1)*A368914(n+1))` -/
def P6016958468303235677.Spec : Prop :=
  ∀ n, P6016958468303235677.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P13187331144925526850

`A359550((n+1)*A369006(n+1))`
-/

namespace A368915.P13187331144925526850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1 : ℤ) * A369006 (n + 1)).toNat

end

end A368915.P13187331144925526850

namespace A368915

/-- `A359550((n+1)*A369006(n+1))` -/
def P13187331144925526850.Spec : Prop :=
  ∀ n, P13187331144925526850.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P2970258686461889319

`and(A368334(n+1), A368914(n+1))`
-/

namespace A368915.P2970258686461889319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A368334 (n + 1)) (A368914 (n + 1))

end

end A368915.P2970258686461889319

namespace A368915

/-- `and(A368334(n+1), A368914(n+1))` -/
def P2970258686461889319.Spec : Prop :=
  ∀ n, P2970258686461889319.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P17416209370377062673

`and(A368334(n+1), A369006(n+1))`
-/

namespace A368915.P17416209370377062673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A368334 (n + 1)) (A369006 (n + 1))

end

end A368915.P17416209370377062673

namespace A368915

/-- `and(A368334(n+1), A369006(n+1))` -/
def P17416209370377062673.Spec : Prop :=
  ∀ n, P17416209370377062673.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P4420708605989450887

`(1-A342023(n+1))*A368914(n+1)`
-/

namespace A368915.P4420708605989450887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A342023 (n + 1)) * A368914 (n + 1)

end

end A368915.P4420708605989450887

namespace A368915

/-- `(1-A342023(n+1))*A368914(n+1)` -/
def P4420708605989450887.Spec : Prop :=
  ∀ n, P4420708605989450887.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P8162786352396373656

`A359550(A342001(n+1))-A368913(n+1)`
-/

namespace A368915.P8162786352396373656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A342001 (n + 1)).toNat - A368913 (n + 1)

end

end A368915.P8162786352396373656

namespace A368915

/-- `A359550(A342001(n+1))-A368913(n+1)` -/
def P8162786352396373656.Spec : Prop :=
  ∀ n, P8162786352396373656.a n = A368915 (n + 1)

theorem P8162786352396373656.correct : P8162786352396373656.Spec := by
  intro n
  simp only [A368915, Nat.add_sub_cancel, A368915.P8162786352396373656.a, A368915.P18223305720082748212.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A342001, A342001.P4805983025243635594.a, A359550, A359550.P13374813552768723012.f1, A359550.P13374813552768723012.a, A368913, A368913.P7874936486369943063.a, A003557, A003557.P6364735403900941810.a, A048103, A048103.P2857780871573492135.f1, A048103.P2857780871573492135.f2, A048103.P2857780871573492135.a, A349394, A349394.P210516795435731064.a, A368914, A368914.P6285884815134273775.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A342007, A342007.P5181248813472136976.f1, A342007.P5181248813472136976.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A014963, A014963.P5975177236000282614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368915

/-! ## A368915.P3682334205328190468

`A368914(n+1)-A341996(n+1)*A368914(n+1)`
-/

namespace A368915.P3682334205328190468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (n + 1) - A341996 (n + 1) * A368914 (n + 1)

end

end A368915.P3682334205328190468

namespace A368915

/-- `A368914(n+1)-A341996(n+1)*A368914(n+1)` -/
def P3682334205328190468.Spec : Prop :=
  ∀ n, P3682334205328190468.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P6596460016194884865

`A359550(A086130(n+1))`
-/

namespace A368915.P6596460016194884865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A086130 (n + 1)).toNat

end

end A368915.P6596460016194884865

namespace A368915

/-- `A359550(A086130(n+1))` -/
def P6596460016194884865.Spec : Prop :=
  ∀ n, P6596460016194884865.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P10286538287024302719

`A359550((n+1)*A083345(n+1))`
-/

namespace A368915.P10286538287024302719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1 : ℤ) * A083345 (n + 1)).toNat

end

end A368915.P10286538287024302719

namespace A368915

/-- `A359550((n+1)*A083345(n+1))` -/
def P10286538287024302719.Spec : Prop :=
  ∀ n, P10286538287024302719.a n = A368915 (n + 1)

end A368915

/-! ## A368915.P8283770522248248971

`A359550((n+1)*A342001(n+1))`
-/

namespace A368915.P8283770522248248971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1 : ℤ) * A342001 (n + 1)).toNat

end

end A368915.P8283770522248248971

namespace A368915

/-- `A359550((n+1)*A342001(n+1))` -/
def P8283770522248248971.Spec : Prop :=
  ∀ n, P8283770522248248971.a n = A368915 (n + 1)

end A368915

/-!
# A368916: a(n) = 1 if there is no prime p such that p^p divides the arithmetic derivative of A276086(n), and 0 otherwise, where A276086 is the primorial base exp-function.

The programs for A368916, there is no canonical definition to state claims against.
-/

/-! ## A368916.P8424789293503655339

`A359550(A342002(n))`
-/

namespace A368916.P8424789293503655339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A342002 n).toNat

end

end A368916.P8424789293503655339

/-! ## A368916.P587276839452586794

`A368914(A276086(n))`
-/

namespace A368916.P587276839452586794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (A276086 n).toNat

end

end A368916.P587276839452586794

/-! ## A368916.P6716679138466815382

`A359550(A327860(n))`
-/

namespace A368916.P6716679138466815382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A327860 n).toNat

end

end A368916.P6716679138466815382

/-! ## A368916.P941683004151840666

`char[A368917(n+1)]`
-/

namespace A368916.P941683004151840666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A368916.P941683004151840666

/-! ## A368916.P538307204815564261

`A057427(n)-char[A342018(n+1)]`
-/

namespace A368916.P538307204815564261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342018 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A368916.P538307204815564261

/-! ## A368916.P6275444870296144500

`A368905(A277022(n))`
-/

namespace A368916.P6275444870296144500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368905 (A277022 n).toNat

end

end A368916.P6275444870296144500

/-! ## A368916.P8704526230892513042

`and(A081949(n+1), A370130(n))`
-/

namespace A368916.P8704526230892513042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081949 (n + 1)) (A370130 n)

end

end A368916.P8704526230892513042

/-! ## A368916.P9180696746829012951

`ceil(A353630(n)/A138326(3*n+5))`
-/

namespace A368916.P9180696746829012951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353630 n : ℚ) / (A138326 (3 * n + 5) : ℚ)⌉

end

end A368916.P9180696746829012951

/-! ## A368916.P16217298110722997213

`A369034(A025157(n+2)*A369034(n))`
-/

namespace A368916.P16217298110722997213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369034 (A025157 (n + 2) * A369034 n).toNat

end

end A368916.P16217298110722997213

/-! ## A368916.P18187876627164263358

`A368332(A177211(3*n+1))-A369034(n)`
-/

namespace A368916.P18187876627164263358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368332 (A177211 (3 * n + 1)).toNat - A369034 n

end

end A368916.P18187876627164263358

/-! ## A368916.P2364334125728808125

`A338824(A100587(n+4))-A369034(n)`
-/

namespace A368916.P2364334125728808125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338824 (A100587 (n + 4)).toNat - A369034 n

end

end A368916.P2364334125728808125

/-! ## A368916.P11980395542139258806

`A166486(A272539(2*(n+1))-A369034(n))`
-/

namespace A368916.P11980395542139258806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A272539 (2 * (n + 1)) - A369034 n).toNat

end

end A368916.P11980395542139258806

/-! ## A368916.P416062589068176062

`A034188(A134213(n+1)*A369034(n))`
-/

namespace A368916.P416062589068176062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (A134213 (n + 1) * A369034 n).toNat

end

end A368916.P416062589068176062

/-!
# A368917: Numbers k for which there is no prime p such that p^p divides the arithmetic derivative of A276086(k), where A276086 is the primorial base exp-function.

The programs for A368917, there is no canonical definition to state claims against.
-/

/-! ## A368917.P5159464467995799532

`lt[0, A368916(n)]`
-/

namespace A368917.P5159464467995799532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A368917.P5159464467995799532

/-! ## A368917.P15515544864360440660

`eq[1, A342017(n+1)]+1`
-/

namespace A368917.P15515544864360440660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368917.P15515544864360440660

/-! ## A368917.P12777502465981488498

`eq[A054977(n), A368916(n)]`
-/

namespace A368917.P12777502465981488498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368917.P12777502465981488498

/-! ## A368917.P13974015296612418225

`eq[A158388(n), A368916(n)]`
-/

namespace A368917.P13974015296612418225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368917.P13974015296612418225

/-! ## A368917.P3177308535965703638

`filter[A173517(n), A368916(#)]`
-/

namespace A368917.P3177308535965703638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P3177308535965703638

/-! ## A368917.P134466191427757154

`filter[A261094(n), A368916(#)]`
-/

namespace A368917.P134466191427757154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P134466191427757154

/-! ## A368917.P17603418754980470371

`filter[A117909(n), A368916(#)]`
-/

namespace A368917.P17603418754980470371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P17603418754980470371

/-! ## A368917.P861401751268997952

`filter[A083926(n), A368916(#)]`
-/

namespace A368917.P861401751268997952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P861401751268997952

/-! ## A368917.P4542554503786226121

`filter[A230414(n), A368916(#)]`
-/

namespace A368917.P4542554503786226121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P4542554503786226121

/-! ## A368917.P9952880723753469813

`filter[A102390(n), A368916(#)]`
-/

namespace A368917.P9952880723753469813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P9952880723753469813

/-! ## A368917.P13971981238919389502

`filter[A027656(n), A368916(#)]`
-/

namespace A368917.P13971981238919389502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P13971981238919389502

/-! ## A368917.P6390598199250475235

`filter[A102389(n), A368916(#)]`
-/

namespace A368917.P6390598199250475235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P6390598199250475235

/-! ## A368917.P15306398458036904590

`filter[A131360(n), A368916(#)]`
-/

namespace A368917.P15306398458036904590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P15306398458036904590

/-! ## A368917.P12425292652670869979

`filter[A142150(n), A368916(#)]`
-/

namespace A368917.P12425292652670869979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P12425292652670869979

/-! ## A368917.P4607369411740949676

`filter[A234017(n), A368916(#)]`
-/

namespace A368917.P4607369411740949676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P4607369411740949676

/-! ## A368917.P2049656835924899060

`filter[A074038(n+1), A368916(#)]`
-/

namespace A368917.P2049656835924899060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P2049656835924899060

/-! ## A368917.P16376659369530557683

`filter[A213714(n), A368916(#)]`
-/

namespace A368917.P16376659369530557683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P16376659369530557683

/-! ## A368917.P519650167479315810

`filter[A083925(n), A368916(#)]`
-/

namespace A368917.P519650167479315810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P519650167479315810

/-! ## A368917.P16807174809620049703

`filter[A257685(n), A368916(#)]`
-/

namespace A368917.P16807174809620049703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A368917.P16807174809620049703

/-!
# A368918: a(n) is the number of integers m in the range 0..n such that the arithmetic derivative of A276086(m) has no divisors of the form p^p.

The programs for A368918, there is no canonical definition to state claims against.
-/

/-! ## A368918.P4394162239811491846

`a(n-1)+A368916(n)` with `a(0)=0`
-/

namespace A368918.P4394162239811491846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A368916 n

end

end A368918.P4394162239811491846

/-! ## A368918.P10119355656156206509

`a(n-1)+A359550(A327860(n))` with `a(0)=0`
-/

namespace A368918.P10119355656156206509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A359550 (A327860 n).toNat

end

end A368918.P10119355656156206509

/-! ## A368918.P14658279675472558545

`∑[A368916(n)]`
-/

namespace A368918.P14658279675472558545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368918.P14658279675472558545

/-! ## A368918.P8806142228824512138

`∑[char[A368917(n+1)]]`
-/

namespace A368918.P8806142228824512138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368917 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368918.P8806142228824512138

/-! ## A368918.P715461026220907918

`∑[A359550(A342002(n))]`
-/

namespace A368918.P715461026220907918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A342002 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368918.P715461026220907918

/-! ## A368918.P10226985607946732450

`∑[ceil(A353630(n)/A138326(3*n+5))]`
-/

namespace A368918.P10226985607946732450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353630 n : ℚ) / (A138326 (3 * n + 5) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368918.P10226985607946732450

/-! ## A368918.P2686563044680149525

`∑[A369034(A062319(n)*A369034(n))]`
-/

namespace A368918.P2686563044680149525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369034 (A062319 n * A369034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368918.P2686563044680149525

/-! ## A368918.P1902292989880915729

`∑[A368332(A177211(3*n+1))-A369034(n)]`
-/

namespace A368918.P1902292989880915729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368332 (A177211 (3 * n + 1)).toNat - A369034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368918.P1902292989880915729

/-! ## A368918.P16658184480593617890

`∑[A369034(A130667(n+1)*A369034(n))]`
-/

namespace A368918.P16658184480593617890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369034 (A130667 (n + 1) * A369034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368918.P16658184480593617890

/-! ## A368918.P10226909844989320218

`∑[A368914(A276086(n))]`
-/

namespace A368918.P10226909844989320218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (A276086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368918.P10226909844989320218

/-!
# A368921: a(n) = n' - n'', where n' is the arithmetic derivative of n, A003415(n) and n'' is its second arithmetic derivative, A068346(n).

The programs for A368921, the canonical program `A368921.P16218200472489161701` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368921 has offset 0).

The definition of A368921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368921.P12164248495490683132

`A368922(n)+A068346(n)`
-/

namespace A368921.P12164248495490683132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368922 n + A068346 n

end

end A368921.P12164248495490683132

namespace A368921

/-- `A368922(n)+A068346(n)` -/
def P12164248495490683132.Spec : Prop :=
  ∀ n, P12164248495490683132.a n = A368921 n

theorem P12164248495490683132.correct : P12164248495490683132.Spec := by
  intro n
  simp only [A368921, Nat.add_sub_cancel, A368921.P12164248495490683132.a, A368921.P16218200472489161701.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A068346, A068346.P16736836852944168196.a, A368922, A368922.P14212543227731437935.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368921

/-! ## A368921.P16218200472489161701

`A003415(n)-A068346(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368921

/-- `A003415(n)-A068346(n)` -/
def P16218200472489161701.Spec : Prop :=
  ∀ n, P16218200472489161701.a n = A368921 n

theorem P16218200472489161701.correct : P16218200472489161701.Spec := by
  intro n
  simp only [A368921]

end A368921

/-! ## A368921.P4107393517567115601

`(A368922(n)+A003415(n))/2`
-/

namespace A368921.P4107393517567115601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368922 n + A003415 n : ℚ) / 2

end

end A368921.P4107393517567115601

namespace A368921

/-- `(A368922(n)+A003415(n))/2` -/
def P4107393517567115601.Spec : Prop :=
  ∀ n, P4107393517567115601.a n = (A368921 n : ℚ)

theorem P4107393517567115601.correct : P4107393517567115601.Spec := by
  intro n
  simp only [A368921, Nat.add_sub_cancel, A368921.P4107393517567115601.a, A368921.P16218200472489161701.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A068346, A068346.P16736836852944168196.a, A368922, A368922.P14212543227731437935.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368921

/-! ## A368921.P1584608978002878647

`A129283(n)-(A068346(n)+n)`
-/

namespace A368921.P1584608978002878647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (A068346 n + (n : ℤ))

end

end A368921.P1584608978002878647

namespace A368921

/-- `A129283(n)-(A068346(n)+n)` -/
def P1584608978002878647.Spec : Prop :=
  ∀ n, P1584608978002878647.a n = A368921 n

theorem P1584608978002878647.correct : P1584608978002878647.Spec := by
  intro n
  simp only [A368921, Nat.add_sub_cancel, A368921.P1584608978002878647.a, A368921.P16218200472489161701.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A068346, A068346.P16736836852944168196.a, A129283, A129283.P3962818557550655141.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368921

/-! ## A368921.P9262994263973766043

`A168036(n)+n-A068346(n)`
-/

namespace A368921.P9262994263973766043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n + ((n : ℤ) - A068346 n)

end

end A368921.P9262994263973766043

namespace A368921

/-- `A168036(n)+n-A068346(n)` -/
def P9262994263973766043.Spec : Prop :=
  ∀ n, P9262994263973766043.a n = A368921 n

theorem P9262994263973766043.correct : P9262994263973766043.Spec := by
  intro n
  simp only [A368921, Nat.add_sub_cancel, A368921.P9262994263973766043.a, A368921.P16218200472489161701.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A068346, A068346.P16736836852944168196.a, A168036, A168036.P2098310487666722677.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368921

/-! ## A368921.P15085903122303236691

`A368922(n)+A003415(A003415(n))`
-/

namespace A368921.P15085903122303236691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368922 n + A003415 (A003415 n).toNat

end

end A368921.P15085903122303236691

namespace A368921

/-- `A368922(n)+A003415(A003415(n))` -/
def P15085903122303236691.Spec : Prop :=
  ∀ n, P15085903122303236691.a n = A368921 n

theorem P15085903122303236691.correct : P15085903122303236691.Spec := by
  intro n
  simp only [A368921, Nat.add_sub_cancel, A368921.P15085903122303236691.a, A368921.P16218200472489161701.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A068346, A068346.P16736836852944168196.a, A368922, A368922.P14212543227731437935.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368921

/-!
# A368922: a(n) = n' - n''*2, where n' is the arithmetic derivative of n, A003415(n) and n'' is the second arithmetic derivative, A068346(n).

The programs for A368922, the canonical program `A368922.P14212543227731437935` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368922 has offset 0).

The definition of A368922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368922.P14212543227731437935

`A368921(n)-A068346(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A368922

/-- `A368921(n)-A068346(n)` -/
def P14212543227731437935.Spec : Prop :=
  ∀ n, P14212543227731437935.a n = A368922 n

theorem P14212543227731437935.correct : P14212543227731437935.Spec := by
  intro n
  simp only [A368922]

end A368922

/-! ## A368922.P17184248570546069876

`A003415(n)-2*A068346(n)`
-/

namespace A368922.P17184248570546069876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - 2 * A068346 n

end

end A368922.P17184248570546069876

namespace A368922

/-- `A003415(n)-2*A068346(n)` -/
def P17184248570546069876.Spec : Prop :=
  ∀ n, P17184248570546069876.a n = A368922 n

theorem P17184248570546069876.correct : P17184248570546069876.Spec := by
  intro n
  simp only [A368922, Nat.add_sub_cancel, A368922.P17184248570546069876.a, A368922.P14212543227731437935.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A068346, A068346.P16736836852944168196.a, A368921, A368921.P16218200472489161701.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368922

/-! ## A368922.P11310599808623165972

`2*A368921(n)-A003415(n)`
-/

namespace A368922.P11310599808623165972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368921 n - A003415 n

end

end A368922.P11310599808623165972

namespace A368922

/-- `2*A368921(n)-A003415(n)` -/
def P11310599808623165972.Spec : Prop :=
  ∀ n, P11310599808623165972.a n = A368922 n

theorem P11310599808623165972.correct : P11310599808623165972.Spec := by
  intro n
  simp only [A368922, Nat.add_sub_cancel, A368922.P11310599808623165972.a, A368922.P14212543227731437935.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A068346, A068346.P16736836852944168196.a, A368921, A368921.P16218200472489161701.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368922

/-! ## A368922.P6091308034087406932

`A369052(A003415(n))`
-/

namespace A368922.P6091308034087406932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369052 (A003415 n).toNat

end

end A368922.P6091308034087406932

namespace A368922

/-- `A369052(A003415(n))` -/
def P6091308034087406932.Spec : Prop :=
  ∀ n, P6091308034087406932.a n = A368922 n

end A368922

/-! ## A368922.P7378115715104448312

`A369052(A168036(n)+n)`
-/

namespace A368922.P7378115715104448312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369052 (A168036 n + (n : ℤ)).toNat

end

end A368922.P7378115715104448312

namespace A368922

/-- `A369052(A168036(n)+n)` -/
def P7378115715104448312.Spec : Prop :=
  ∀ n, P7378115715104448312.a n = A368922 n

end A368922

/-! ## A368922.P11010613151241835947

`A369052(A368921(n)+A068346(n))`
-/

namespace A368922.P11010613151241835947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369052 (A368921 n + A068346 n).toNat

end

end A368922.P11010613151241835947

namespace A368922

/-- `A369052(A368921(n)+A068346(n))` -/
def P11010613151241835947.Spec : Prop :=
  ∀ n, P11010613151241835947.a n = A368922 n

end A368922

/-! ## A368922.P2037133819672164332

`A368921(n)-A003415(A003415(n))`
-/

namespace A368922.P2037133819672164332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368921 n - A003415 (A003415 n).toNat

end

end A368922.P2037133819672164332

namespace A368922

/-- `A368921(n)-A003415(A003415(n))` -/
def P2037133819672164332.Spec : Prop :=
  ∀ n, P2037133819672164332.a n = A368922 n

end A368922

/-!
# A368923: Number of congruences of the 0-twisted Brauer monoid of degree n.

The programs for A368923, the canonical program `A368923.P5413835815451681948` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368923 has offset 0).

The definition of A368923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368923.P5413835815451681948

`a(n-2)+3` with `a(0)=2, a(1)=2, a(2)=5, a(3)=5, a(4)=13`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368923

/-- `a(n-2)+3` -/
def P5413835815451681948.Spec : Prop :=
  ∀ n, (P5413835815451681948.a n : ℤ) = A368923 n

theorem P5413835815451681948.correct : P5413835815451681948.Spec := by
  intro n
  simp only [A368923]

end A368923

/-! ## A368923.P13330965416882593410

`ogf((2+x^2+5x^4-5x^5)/(1-x-x^2+x^3))`
-/

namespace A368923.P13330965416882593410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 1, 0, 5, -5] [1, -1, -1, 1] n

end

end A368923.P13330965416882593410

namespace A368923

/-- `ogf((2+x^2+5x^4-5x^5)/(1-x-x^2+x^3))` -/
def P13330965416882593410.Spec : Prop :=
  ∀ n, P13330965416882593410.a n = A368923 n

end A368923

/-! ## A368923.P17124959769224938839

`∑[3-a(n-1)]` with `a(0)=2, a(1)=0, a(2)=3, a(3)=0, a(4)=8`
-/

namespace A368923.P17124959769224938839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3, 0, 8] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368923.P17124959769224938839

namespace A368923

/-- `∑[3-a(n-1)]` -/
def P17124959769224938839.Spec : Prop :=
  ∀ n, P17124959769224938839.a n = A368923 n

end A368923

/-!
# A368925: The minimal exponent in the prime factorization of the powerful numbers.

The programs for A368925, there is no canonical definition to state claims against.
-/

/-! ## A368925.P746730192051873089

`A051904(A001694(n+1))`
-/

namespace A368925.P746730192051873089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A001694 (n + 1)).toNat

end

end A368925.P746730192051873089

/-! ## A368925.P279536040816590026

`A051904(A224866(n+1)-1)`
-/

namespace A368925.P279536040816590026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A224866 (n + 1) - 1).toNat

end

end A368925.P279536040816590026

/-! ## A368925.P5487912675478651303

`A051904(∪[A001597(n+1), A216426(n+1)])`
-/

namespace A368925.P5487912675478651303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368925.P5487912675478651303

/-! ## A368925.P12111194017046703448

`A051904(∪[A320966(n+1), A001597(n+1)])`
-/

namespace A368925.P12111194017046703448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368925.P12111194017046703448

/-! ## A368925.P15793798219485750447

`A051903(A001694(n+1))-A062977(A224866(n+1)-1)`
-/

namespace A368925.P15793798219485750447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001694 (n + 1)).toNat - A062977 (A224866 (n + 1) - 1).toNat

end

end A368925.P15793798219485750447

/-!
# A368926: Triangle read by rows where T(n,k) is the number of unlabeled loop-graphs on n vertices with k loops and n-k non-loops such that it is possible to choose a different element from each edge.

The programs for A368926, there is no canonical definition to state claims against.
-/

/-! ## A368926.P14248094652568920590

`A327201(or(A000374(n+3), A057117(n)))`
-/

namespace A368926.P14248094652568920590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327201 (Int.lor (A000374 (n + 3)) (A057117 n)).toNat

end

end A368926.P14248094652568920590

/-! ## A368926.P6655750732608620681

`A000120(A338470(n)^A238414(2*(n+2)))`
-/

namespace A368926.P6655750732608620681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A338470 n : ℚ) ^ (A238414 (2 * (n + 2)) : ℤ))).toNat

end

end A368926.P6655750732608620681

/-! ## A368926.P13207261831373587957

`gcd(A007814(A176776(n)), A276719(2*n+3))`
-/

namespace A368926.P13207261831373587957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A176776 n).toNat) (A276719 (2 * n + 3))

end

end A368926.P13207261831373587957

/-! ## A368926.P482021457778597435

`A000120(C(A338470(n), A238414(2*(n+2))))`
-/

namespace A368926.P482021457778597435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A338470 n).toNat (A238414 (2 * (n + 2))).toNat)

end

end A368926.P482021457778597435

/-!
# A368927: Number of labeled loop-graphs covering a subset of {1..n} such that it is possible to choose a different vertex from each edge.

The programs for A368927, there is no canonical definition to state claims against.
-/

/-! ## A368927.P12912553173163696667

`A000079(∑[n])-A369141(n)`
-/

namespace A368927.P12912553173163696667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j) - A369141 n

end

end A368927.P12912553173163696667

/-! ## A368927.P9925744429254356314

`∏[A000079(n)]-A369141(n)`
-/

namespace A368927.P9925744429254356314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A369141 n

end

end A368927.P9925744429254356314

/-! ## A368927.P11941318390785891463

`A006125(n+1)-A369141(n)`
-/

namespace A368927.P11941318390785891463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - A369141 n

end

end A368927.P11941318390785891463

/-! ## A368927.P16061427171030300722

`A029930(A000225(n))-A369141(n)`
-/

namespace A368927.P16061427171030300722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 (A000225 n).toNat - A369141 n

end

end A368927.P16061427171030300722

/-!
# A368928: Triangle read by rows where T(n,k) is the number of labeled loop-graphs with n vertices and n edges, k of which are loops.

The programs for A368928, the canonical program `A368928.P123248895072114977` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368928 has offset 0).

The definition of A368928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368928.P123248895072114977

`C(row(n), col(n))*C(C(row(n), 2), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368928

/-- `C(row(n), col(n))*C(C(row(n), 2), row(n)-col(n))` -/
def P123248895072114977.Spec : Prop :=
  ∀ n, (P123248895072114977.a n : ℤ) = A368928 n

theorem P123248895072114977.correct : P123248895072114977.Spec := by
  intro n
  simp only [A368928]

end A368928

/-!
# A368929: Dirichlet g.f.: zeta(s-2)^2 * (1 - 2^(3-s)) / zeta(s).

The programs for A368929, the canonical program `A368929.P5346765697596700696` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368929 has offset 1).

The definition of A368929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368929.P1158810662059449169

`∑{d}[n+1, A007434(#)*A162395((n+1)/#)]`
-/

namespace A368929.P1158810662059449169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A162395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368929.P1158810662059449169

namespace A368929

/-- `∑{d}[n+1, A007434(#)*A162395((n+1)/#)]` -/
def P1158810662059449169.Spec : Prop :=
  ∀ n, P1158810662059449169.a n = A368929 (n + 1)

end A368929

/-! ## A368929.P5346765697596700696

`∑{d}[n+1, A063445(#)*A326238((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368929

/-- `∑{d}[n+1, A063445(#)*A326238((n+1)/#)]` -/
def P5346765697596700696.Spec : Prop :=
  ∀ n, P5346765697596700696.a n = A368929 (n + 1)

theorem P5346765697596700696.correct : P5346765697596700696.Spec := by
  intro n
  simp only [A368929, Nat.add_sub_cancel]

end A368929

/-! ## A368929.P13061613023436694403

`∑{d}[n+1, A321322(#)*A321543((n+1)/#)]`
-/

namespace A368929.P13061613023436694403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A321543 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368929.P13061613023436694403

namespace A368929

/-- `∑{d}[n+1, A321322(#)*A321543((n+1)/#)]` -/
def P13061613023436694403.Spec : Prop :=
  ∀ n, P13061613023436694403.a n = A368929 (n + 1)

end A368929

/-!
# A368931: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x-x^3) ).

The programs for A368931, the canonical program `A368931.P8579797611032919193` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368931 has offset 0).

The definition of A368931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368931.P8579797611032919193

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*n-2*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A368931

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*n-2*#+1, n-3*#)]` -/
def P8579797611032919193.Spec : Prop :=
  ∀ n, P8579797611032919193.a n = (A368931 n : ℚ)

end A368931

/-! ## A368931.P9376782615105643862

`A366052(n)-A178779((1-n)²)`
-/

namespace A368931.P9376782615105643862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366052 n - A178779 ((1 - (n : ℤ)) ^ 2).toNat

end

end A368931.P9376782615105643862

namespace A368931

/-- `A366052(n)-A178779((1-n)²)` -/
def P9376782615105643862.Spec : Prop :=
  ∀ n, P9376782615105643862.a n = A368931 n

end A368931

/-! ## A368931.P18039656213889184552

`A366052(n)+A044940(A007289(n))`
-/

namespace A368931.P18039656213889184552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366052 n + A044940 (A007289 n).toNat

end

end A368931.P18039656213889184552

namespace A368931

/-- `A366052(n)+A044940(A007289(n))` -/
def P18039656213889184552.Spec : Prop :=
  ∀ n, P18039656213889184552.a n = A368931 n

end A368931

/-!
# A368932: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x-x^4) ).

The programs for A368932, the canonical program `A368932.P7112031189716014084` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368932 has offset 0).

The definition of A368932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368932.P7112031189716014084

`1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(3*n-3*#+1, n-4*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A368932

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(3*n-3*#+1, n-4*#)]` -/
def P7112031189716014084.Spec : Prop :=
  ∀ n, P7112031189716014084.a n = (A368932 n : ℚ)

end A368932

/-! ## A368932.P13468707355127435228

`or(A275926(A001700(n)), A366055(n))`
-/

namespace A368932.P13468707355127435228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275926 (A001700 n).toNat) (A366055 n)

end

end A368932.P13468707355127435228

namespace A368932

/-- `or(A275926(A001700(n)), A366055(n))` -/
def P13468707355127435228.Spec : Prop :=
  ∀ n, P13468707355127435228.a n = A368932 n

end A368932

/-! ## A368932.P16105377164545046155

`or(A121373(A185544(n)), A366055(n))`
-/

namespace A368932.P16105377164545046155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121373 (A185544 n).toNat) (A366055 n)

end

end A368932.P16105377164545046155

namespace A368932

/-- `or(A121373(A185544(n)), A366055(n))` -/
def P16105377164545046155.Spec : Prop :=
  ∀ n, P16105377164545046155.a n = A368932 n

end A368932

/-! ## A368932.P14650108188867651963

`or(A240851(A121021(n)), A366055(n))`
-/

namespace A368932.P14650108188867651963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240851 (A121021 n).toNat) (A366055 n)

end

end A368932.P14650108188867651963

namespace A368932

/-- `or(A240851(A121021(n)), A366055(n))` -/
def P14650108188867651963.Spec : Prop :=
  ∀ n, P14650108188867651963.a n = A368932 n

end A368932

/-! ## A368932.P10328186489300070218

`or(A011765(A120820(n+1)), A366055(n))`
-/

namespace A368932.P10328186489300070218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011765 (A120820 (n + 1)).toNat) (A366055 n)

end

end A368932.P10328186489300070218

namespace A368932

/-- `or(A011765(A120820(n+1)), A366055(n))` -/
def P10328186489300070218.Spec : Prop :=
  ∀ n, P10328186489300070218.a n = A368932 n

end A368932

/-!
# A368933: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x-x^5) ).

The programs for A368933, the canonical program `A368933.P3573601983583615619` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368933 has offset 0).

The definition of A368933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368933.P3573601983583615619

`1/(n+1)*∑{#}[floor(n/5), C(n+#, #)*C(3*n-4*#+1, n-5*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A368933

/-- `1/(n+1)*∑{#}[floor(n/5), C(n+#, #)*C(3*n-4*#+1, n-5*#)]` -/
def P3573601983583615619.Spec : Prop :=
  ∀ n, P3573601983583615619.a n = (A368933 n : ℚ)

end A368933

/-! ## A368933.P7969871550403291033

`A235043(A003090(n+1))+A006013(n)`
-/

namespace A368933.P7969871550403291033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235043 (A003090 (n + 1)).toNat + A006013 n

end

end A368933.P7969871550403291033

namespace A368933

/-- `A235043(A003090(n+1))+A006013(n)` -/
def P7969871550403291033.Spec : Prop :=
  ∀ n, P7969871550403291033.a n = A368933 n

end A368933

/-!
# A368934: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x-x^2) ).

The programs for A368934, the canonical program `A368934.P17512439316478791711` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368934 has offset 0).

The definition of A368934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368934.P17512439316478791711

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(4*n-#+2, n-2*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A368934

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(4*n-#+2, n-2*#)]` -/
def P17512439316478791711.Spec : Prop :=
  ∀ n, P17512439316478791711.a n = (A368934 n : ℚ)

end A368934

/-!
# A368935: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x+x^3) ).

The programs for A368935, there is no canonical definition to state claims against.
-/

/-! ## A368935.P14521793316734962824

`A366084(n)+A044940(A007613(n))`
-/

namespace A368935.P14521793316734962824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366084 n + A044940 (A007613 n).toNat

end

end A368935.P14521793316734962824

/-! ## A368935.P11899642093432142066

`A366084(n)+A121021(A000055(n))`
-/

namespace A368935.P11899642093432142066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366084 n + A121021 (A000055 n).toNat

end

end A368935.P11899642093432142066

/-! ## A368935.P5524592693824007866

`A366084(n)+A103675(A064062(n))`
-/

namespace A368935.P5524592693824007866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366084 n + A103675 (A064062 n).toNat

end

end A368935.P5524592693824007866

/-!
# A368936: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x+x^4) ).

The programs for A368936, there is no canonical definition to state claims against.
-/

/-! ## A368936.P10529861279238622856

`A366089(n)+A011734(A159712(n))`
-/

namespace A368936.P10529861279238622856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366089 n + A011734 (A159712 n).toNat

end

end A368936.P10529861279238622856

/-! ## A368936.P6000839761585780012

`A366089(n)+A011734(A185544(n))`
-/

namespace A368936.P6000839761585780012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366089 n + A011734 (A185544 n).toNat

end

end A368936.P6000839761585780012

/-! ## A368936.P12808839544782887145

`A366089(n)+A275926(A001700(n))`
-/

namespace A368936.P12808839544782887145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366089 n + A275926 (A001700 n).toNat

end

end A368936.P12808839544782887145

/-! ## A368936.P864667204941124984

`or(A011734(A044046(n)), A366089(n))`
-/

namespace A368936.P864667204941124984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011734 (A044046 n).toNat) (A366089 n)

end

end A368936.P864667204941124984

/-! ## A368936.P12784575812620412791

`A366089(n)+A011734(A161746(n+1))`
-/

namespace A368936.P12784575812620412791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366089 n + A011734 (A161746 (n + 1)).toNat

end

end A368936.P12784575812620412791

/-!
# A368937: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x+x^5) ).

The programs for A368937, there is no canonical definition to state claims against.
-/

/-! ## A368937.P158126969442649416

`A006013(n)-A235043(A003090(n+1))`
-/

namespace A368937.P158126969442649416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A235043 (A003090 (n + 1)).toNat

end

end A368937.P158126969442649416

/-! ## A368937.P9580808775349140156

`A006013(n)-A185274(n*(n+1)/2)`
-/

namespace A368937.P9580808775349140156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A185274 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A368937.P9580808775349140156

/-!
# A368938: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x+x^2) ).

The programs for A368938, there is no canonical definition to state claims against.
-/

/-! ## A368938.P7784843072137287158

`A345235(3*(n+1))+A345228(A277862(n+1))`
-/

namespace A368938.P7784843072137287158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345235 (3 * (n + 1)) + A345228 (A277862 (n + 1)).toNat

end

end A368938.P7784843072137287158

/-!
# A368941: a(n) = floor(3/2 + sqrt(n)).

The programs for A368941, the canonical program `A368941.P450632481750621154` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368941 has offset 0).

The definition of A368941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368941.P15499117445569740997

`floor(3/2+sqrt(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368941.P15499117445569740997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A368941.P15499117445569740997

namespace A368941

/-- `floor(3/2+sqrt(n))` -/
def P15499117445569740997.Spec : Prop :=
  ∀ n, P15499117445569740997.a n = A368941 n

end A368941

/-! ## A368941.P450632481750621154

`A000194(n)+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368941

/-- `A000194(n)+1` -/
def P450632481750621154.Spec : Prop :=
  ∀ n, P450632481750621154.a n = A368941 n

theorem P450632481750621154.correct : P450632481750621154.Spec := by
  intro n
  simp only [A368941]

end A368941

/-! ## A368941.P312157901902446231

`ceil(sqrt(comp[lcm(n, n+1)]))`
-/

namespace A368941.P312157901902446231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉

end

end A368941.P312157901902446231

namespace A368941

/-- `ceil(sqrt(comp[lcm(n, n+1)]))` -/
def P312157901902446231.Spec : Prop :=
  ∀ n, P312157901902446231.a n = A368941 n

end A368941

/-! ## A368941.P7063217726803011377

`ceil(sqrt(a(n-1)+n))` with `a(0)=1`
-/

namespace A368941.P7063217726803011377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (a (n - 1) + (n : ℤ) : ℝ)⌉

end

end A368941.P7063217726803011377

namespace A368941

/-- `ceil(sqrt(a(n-1)+n))` -/
def P7063217726803011377.Spec : Prop :=
  ∀ n, P7063217726803011377.a n = A368941 n

end A368941

/-! ## A368941.P1554404470630776560

`n+1-floor(n²/(a(n-1)+n))` with `a(0)=1`
-/

namespace A368941.P1554404470630776560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - ⌊(n ^ 2 : ℚ) / (a (n - 1) + (n : ℤ) : ℚ)⌋

end

end A368941.P1554404470630776560

namespace A368941

/-- `n+1-floor(n²/(a(n-1)+n))` -/
def P1554404470630776560.Spec : Prop :=
  ∀ n, P1554404470630776560.a n = A368941 n

end A368941

/-! ## A368941.P8537562298614629416

`2-floor((2-n)/(n/a(n-1)+2))` with `a(0)=1`
-/

namespace A368941.P8537562298614629416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊(2 - (n : ℤ) : ℚ) / ((n : ℚ) / (a (n - 1) : ℚ) + 2)⌋

end

end A368941.P8537562298614629416

namespace A368941

/-- `2-floor((2-n)/(n/a(n-1)+2))` -/
def P8537562298614629416.Spec : Prop :=
  ∀ n, P8537562298614629416.a n = A368941 n

end A368941

/-! ## A368941.P45897483213459228

`2-floor((a(n-1)-n)/a(n-a(n-1)))` with `a(0)=1`
-/

namespace A368941.P45897483213459228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊(a (n - 1) - (n : ℤ) : ℚ) / (a ((n : ℤ) - a (n - 1)).toNat : ℚ)⌋

end

end A368941.P45897483213459228

namespace A368941

/-- `2-floor((a(n-1)-n)/a(n-a(n-1)))` -/
def P45897483213459228.Spec : Prop :=
  ∀ n, P45897483213459228.a n = A368941 n

end A368941

/-! ## A368941.P11035755878125102941

`round(sqrt(A080037(n)))`
-/

namespace A368941.P11035755878125102941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A080037 n : ℝ))

end

end A368941.P11035755878125102941

namespace A368941

/-- `round(sqrt(A080037(n)))` -/
def P11035755878125102941.Spec : Prop :=
  ∀ n, P11035755878125102941.a n = A368941 n

end A368941

/-! ## A368941.P6091184035448220161

`sqrt(A053187(n))+1`
-/

namespace A368941.P6091184035448220161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053187 n : ℝ) + 1

end

end A368941.P6091184035448220161

namespace A368941

/-- `sqrt(A053187(n))+1` -/
def P6091184035448220161.Spec : Prop :=
  ∀ n, P6091184035448220161.a n = (A368941 n : ℝ)

end A368941

/-! ## A368941.P1748359540612356344

`ceil(sqrt(comp[A005563(n)]))`
-/

namespace A368941.P1748359540612356344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌉

end

end A368941.P1748359540612356344

namespace A368941

/-- `ceil(sqrt(comp[A005563(n)]))` -/
def P1748359540612356344.Spec : Prop :=
  ∀ n, P1748359540612356344.a n = A368941 n

end A368941

/-! ## A368941.P7351100012364358934

`1-A056847(n)+n`
-/

namespace A368941.P7351100012364358934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056847 n + (n : ℤ)

end

end A368941.P7351100012364358934

namespace A368941

/-- `1-A056847(n)+n` -/
def P7351100012364358934.Spec : Prop :=
  ∀ n, P7351100012364358934.a n = A368941 n

end A368941

/-! ## A368941.P16442418187585872902

`A164386(n+1)-n`
-/

namespace A368941.P16442418187585872902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (n + 1) - (n : ℤ)

end

end A368941.P16442418187585872902

namespace A368941

/-- `A164386(n+1)-n` -/
def P16442418187585872902.Spec : Prop :=
  ∀ n, P16442418187585872902.a n = A368941 n

end A368941

/-! ## A368941.P8855812375114613950

`1+floor(sqrt(A232091(n)))`
-/

namespace A368941.P8855812375114613950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.sqrt (A232091 n)

end

end A368941.P8855812375114613950

namespace A368941

/-- `1+floor(sqrt(A232091(n)))` -/
def P8855812375114613950.Spec : Prop :=
  ∀ n, P8855812375114613950.a n = A368941 n

end A368941

/-! ## A368941.P16172864233394418098

`ceil(sqrt(A028392(n)+1))`
-/

namespace A368941.P16172864233394418098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028392 n + 1 : ℝ)⌉

end

end A368941.P16172864233394418098

namespace A368941

/-- `ceil(sqrt(A028392(n)+1))` -/
def P16172864233394418098.Spec : Prop :=
  ∀ n, P16172864233394418098.a n = A368941 n

end A368941

/-! ## A368941.P722960672514987323

`ceil(sqrt(A078358(n+1)))`
-/

namespace A368941.P722960672514987323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A078358 (n + 1) : ℝ)⌉

end

end A368941.P722960672514987323

namespace A368941

/-- `ceil(sqrt(A078358(n+1)))` -/
def P722960672514987323.Spec : Prop :=
  ∀ n, P722960672514987323.a n = A368941 n

end A368941

/-! ## A368941.P16733350731954936197

`ceil(sqrt(A164514(n+1)))`
-/

namespace A368941.P16733350731954936197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A164514 (n + 1) : ℝ)⌉

end

end A368941.P16733350731954936197

namespace A368941

/-- `ceil(sqrt(A164514(n+1)))` -/
def P16733350731954936197.Spec : Prop :=
  ∀ n, P16733350731954936197.a n = A368941 n

end A368941

/-! ## A368941.P14915267641372749389

`ceil(sqrt(A183299(n+1)))`
-/

namespace A368941.P14915267641372749389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A183299 (n + 1) : ℝ)⌉

end

end A368941.P14915267641372749389

namespace A368941

/-- `ceil(sqrt(A183299(n+1)))` -/
def P14915267641372749389.Spec : Prop :=
  ∀ n, P14915267641372749389.a n = A368941 n

end A368941

/-! ## A368941.P11628411948561103249

`round(sqrt(A183569(n+1)))`
-/

namespace A368941.P11628411948561103249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A183569 (n + 1) : ℝ))

end

end A368941.P11628411948561103249

namespace A368941

/-- `round(sqrt(A183569(n+1)))` -/
def P11628411948561103249.Spec : Prop :=
  ∀ n, P11628411948561103249.a n = A368941 n

end A368941

/-! ## A368941.P11311793875567923111

`round(sqrt(A183866(n+1)))`
-/

namespace A368941.P11311793875567923111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A183866 (n + 1) : ℝ))

end

end A368941.P11311793875567923111

namespace A368941

/-- `round(sqrt(A183866(n+1)))` -/
def P11311793875567923111.Spec : Prop :=
  ∀ n, P11311793875567923111.a n = A368941 n

end A368941

/-! ## A368941.P7471786268224436424

`A008621(A027709(n))`
-/

namespace A368941.P7471786268224436424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A027709 n).toNat

end

end A368941.P7471786268224436424

namespace A368941

/-- `A008621(A027709(n))` -/
def P7471786268224436424.Spec : Prop :=
  ∀ n, P7471786268224436424.a n = A368941 n

end A368941

/-!
# A368942: Burning number of the n-antiprism graph.

The programs for A368942, the canonical program `A368942.P14870500008882824552` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368942 has offset 1).

The definition of A368942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368942.P14870500008882824552

`floor((sqrt(16*(n+1)-1)+5)/4)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A368942

/-- `floor((sqrt(16*(n+1)-1)+5)/4)` -/
def P14870500008882824552.Spec : Prop :=
  ∀ n, P14870500008882824552.a n = A368942 (n + 1)

theorem P14870500008882824552.correct : P14870500008882824552.Spec := by
  intro n
  simp only [A368942, Nat.add_sub_cancel]

end A368942

/-! ## A368942.P17670031218122943127

`A204166(2*(n+1))`
-/

namespace A368942.P17670031218122943127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (2 * (n + 1))

end

end A368942.P17670031218122943127

namespace A368942

/-- `A204166(2*(n+1))` -/
def P17670031218122943127.Spec : Prop :=
  ∀ n, P17670031218122943127.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P1481224605171766549

`floor(atan(3)+sqrt(n+1))`
-/

namespace A368942.P1481224605171766549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (3 : ℝ) + Real.sqrt (n + 1 : ℝ)⌋

end

end A368942.P1481224605171766549

namespace A368942

/-- `floor(atan(3)+sqrt(n+1))` -/
def P1481224605171766549.Spec : Prop :=
  ∀ n, P1481224605171766549.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P12451599539413389911

`comp[∑[comp[or(2, n)]]]-n`
-/

namespace A368942.P12451599539413389911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A368942.P12451599539413389911

namespace A368942

/-- `comp[∑[comp[or(2, n)]]]-n` -/
def P12451599539413389911.Spec : Prop :=
  ∀ n, P12451599539413389911.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P1780007320350054621

`comp[∑[A042948(n)]]-n`
-/

namespace A368942.P1780007320350054621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A368942.P1780007320350054621

namespace A368942

/-- `comp[∑[A042948(n)]]-n` -/
def P1780007320350054621.Spec : Prop :=
  ∀ n, P1780007320350054621.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P1876897255936956811

`comp[A011848(2*n+1)]-n`
-/

namespace A368942.P1876897255936956811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A368942.P1876897255936956811

namespace A368942

/-- `comp[A011848(2*n+1)]-n` -/
def P1876897255936956811.Spec : Prop :=
  ∀ n, P1876897255936956811.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P9578142139190130041

`A003059(A004738(n+2)+n)`
-/

namespace A368942.P9578142139190130041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A004738 (n + 2) + (n : ℤ)).toNat

end

end A368942.P9578142139190130041

namespace A368942

/-- `A003059(A004738(n+2)+n)` -/
def P9578142139190130041.Spec : Prop :=
  ∀ n, P9578142139190130041.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P4743317472455618028

`A003059(A055087(n)+n+2)`
-/

namespace A368942.P4743317472455618028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A055087 n + (n + 2 : ℤ)).toNat

end

end A368942.P4743317472455618028

namespace A368942

/-- `A003059(A055087(n)+n+2)` -/
def P4743317472455618028.Spec : Prop :=
  ∀ n, P4743317472455618028.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P11200551150661749767

`A003059(A004739(n+1)+n+1)`
-/

namespace A368942.P11200551150661749767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A004739 (n + 1) + (n + 1 : ℤ)).toNat

end

end A368942.P11200551150661749767

namespace A368942

/-- `A003059(A004739(n+1)+n+1)` -/
def P11200551150661749767.Spec : Prop :=
  ∀ n, P11200551150661749767.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P618810012352909210

`A000194(A336751(n+2)+n)`
-/

namespace A368942.P618810012352909210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A336751 (n + 2) + (n : ℤ)).toNat

end

end A368942.P618810012352909210

namespace A368942

/-- `A000194(A336751(n+2)+n)` -/
def P618810012352909210.Spec : Prop :=
  ∀ n, P618810012352909210.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P3655713070328119892

`A351846(Δ[n²])+1`
-/

namespace A368942.P3655713070328119892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A368942.P3655713070328119892

namespace A368942

/-- `A351846(Δ[n²])+1` -/
def P3655713070328119892.Spec : Prop :=
  ∀ n, P3655713070328119892.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P16973508344489265948

`A008619(A002024(2*(n+1)))`
-/

namespace A368942.P16973508344489265948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002024 (2 * (n + 1))).toNat

end

end A368942.P16973508344489265948

namespace A368942

/-- `A008619(A002024(2*(n+1)))` -/
def P16973508344489265948.Spec : Prop :=
  ∀ n, P16973508344489265948.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P10990194903416012090

`A080513(A003056(2*n+1))`
-/

namespace A368942.P10990194903416012090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A003056 (2 * n + 1)).toNat

end

end A368942.P10990194903416012090

namespace A368942

/-- `A080513(A003056(2*n+1))` -/
def P10990194903416012090.Spec : Prop :=
  ∀ n, P10990194903416012090.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P4406031452426885996

`A065033(A003057(2*n+3))`
-/

namespace A368942.P4406031452426885996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003057 (2 * n + 3)).toNat

end

end A368942.P4406031452426885996

namespace A368942

/-- `A065033(A003057(2*n+3))` -/
def P4406031452426885996.Spec : Prop :=
  ∀ n, P4406031452426885996.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P12287688958657147766

`A008619(A003056(2*n+1)+1)`
-/

namespace A368942.P12287688958657147766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003056 (2 * n + 1) + 1).toNat

end

end A368942.P12287688958657147766

namespace A368942

/-- `A008619(A003056(2*n+1)+1)` -/
def P12287688958657147766.Spec : Prop :=
  ∀ n, P12287688958657147766.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P1918726461482606771

`A008619(A052146(2*n+1))+1`
-/

namespace A368942.P1918726461482606771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A052146 (2 * n + 1)).toNat + 1

end

end A368942.P1918726461482606771

namespace A368942

/-- `A008619(A052146(2*n+1))+1` -/
def P1918726461482606771.Spec : Prop :=
  ∀ n, P1918726461482606771.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P17692222498826514756

`A065033(A002024(2*(n+1))+1)`
-/

namespace A368942.P17692222498826514756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A002024 (2 * (n + 1)) + 1).toNat

end

end A368942.P17692222498826514756

namespace A368942

/-- `A065033(A002024(2*(n+1))+1)` -/
def P17692222498826514756.Spec : Prop :=
  ∀ n, P17692222498826514756.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P12216005661667148445

`A110654(A002024(2*(n+1))+1)`
-/

namespace A368942.P12216005661667148445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002024 (2 * (n + 1)) + 1).toNat

end

end A368942.P12216005661667148445

namespace A368942

/-- `A110654(A002024(2*(n+1))+1)` -/
def P12216005661667148445.Spec : Prop :=
  ∀ n, P12216005661667148445.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P4426394095063199871

`A057059(A057944(2*n+1))+1`
-/

namespace A368942.P4426394095063199871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (A057944 (2 * n + 1)).toNat + 1

end

end A368942.P4426394095063199871

namespace A368942

/-- `A057059(A057944(2*n+1))+1` -/
def P4426394095063199871.Spec : Prop :=
  ∀ n, P4426394095063199871.a n = A368942 (n + 1)

end A368942

/-! ## A368942.P4025818842926387344

`A065033(A130855(2*n+1)+1)`
-/

namespace A368942.P4025818842926387344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A130855 (2 * n + 1) + 1).toNat

end

end A368942.P4025818842926387344

namespace A368942

/-- `A065033(A130855(2*n+1)+1)` -/
def P4025818842926387344.Spec : Prop :=
  ∀ n, P4025818842926387344.a n = A368942 (n + 1)

end A368942

/-!
# A368943: Number of unlabeled mappings from n points to themselves with unique square root (endofunctions).

The programs for A368943, there is no canonical definition to state claims against.
-/

/-! ## A368943.P17072743675146318635

`A136443(A308030(n+1))`
-/

namespace A368943.P17072743675146318635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136443 (A308030 (n + 1)).toNat

end

end A368943.P17072743675146318635

/-!
# A368944: Palindromes in base 10 that are the product of two repdigit numbers.

The programs for A368944, there is no canonical definition to state claims against.
-/

/-! ## A368944.P16250825619929207016

`record[A331472(A368955(n+1))]`
-/

namespace A368944.P16250825619929207016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A368955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368944.P16250825619929207016

/-! ## A368944.P17580463009422518915

`filter[A368955(n+1), A136522(#)]`
-/

namespace A368944.P17580463009422518915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A368944.P17580463009422518915

/-! ## A368944.P17051436237732094665

`∩[A002113(n+1), A368955(n+1)]`
-/

namespace A368944.P17051436237732094665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368944.P17051436237732094665

/-! ## A368944.P2247596588712220851

`∩[A257054(n+1), A368955(n+1)]`
-/

namespace A368944.P2247596588712220851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368944.P2247596588712220851

/-!
# A368945: a(n) is the length of the central extent of width 0 for the symmetric representation of sigma, SRS(n), when that has an even number of parts otherwise -1.

The programs for A368945, there is no canonical definition to state claims against.
-/

/-! ## A368945.P12700934810180950051

`A347361(n+1)-A306682(A327710(3*n))`
-/

namespace A368945.P12700934810180950051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347361 (n + 1) - A306682 (A327710 (3 * n)).toNat

end

end A368945.P12700934810180950051

/-! ## A368945.P14699818464753392782

`A118136(n)-A120992(A214679(2*(n+1)))`
-/

namespace A368945.P14699818464753392782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118136 n - A120992 (A214679 (2 * (n + 1))).toNat

end

end A368945.P14699818464753392782

/-! ## A368945.P9163657802268218191

`A076512(n+1)-A007814(A203378(n+5))`
-/

namespace A368945.P9163657802268218191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (n + 1) - A007814 (A203378 (n + 5)).toNat

end

end A368945.P9163657802268218191

/-!
# A368946: Irregular triangle read by rows: row n lists the strings of the MIU formal system at the n-th level of the tree generated by recursively applying the system rules, starting from the MI string (see comments and example).

The programs for A368946, there is no canonical definition to state claims against.
-/

/-! ## A368946.P5760006227277375276

`A368953(A156552(n+1)%A113995(3*n))`
-/

namespace A368946.P5760006227277375276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368953 (Int.tmod (A156552 (n + 1)) (A113995 (3 * n))).toNat

end

end A368946.P5760006227277375276

/-!
# A368950: Numbers with 11 odd divisors.

The programs for A368950, there is no canonical definition to state claims against.
-/

/-! ## A368950.P5477175496975327433

`A000079(n)*A165824(A046314(3*(n+1)))`
-/

namespace A368950.P5477175496975327433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A165824 (A046314 (3 * (n + 1))).toNat

end

end A368950.P5477175496975327433

/-!
# A368951: Number of connected labeled graphs with n edges and n vertices and with loops allowed.

The programs for A368951, there is no canonical definition to state claims against.
-/

/-! ## A368951.P12431952020891573751

`A322147(A186752(n+2))`
-/

namespace A368951.P12431952020891573751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322147 (A186752 (n + 2)).toNat

end

end A368951.P12431952020891573751

/-! ## A368951.P9407414855966756094

`A322147(eq[1, A297328(n+2)])`
-/

namespace A368951.P9407414855966756094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368951.P9407414855966756094

/-! ## A368951.P760338149104568873

`A322147(∑[A185118(3*n+4)+n])`
-/

namespace A368951.P760338149104568873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 (3 * n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322147 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368951.P760338149104568873

/-! ## A368951.P5920514363852069620

`A322147(lt[A208931(n+3), A126664(3*n+2)])`
-/

namespace A368951.P5920514363852069620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208931 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126664 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368951.P5920514363852069620

/-! ## A368951.P6054239537893905454

`A369195(A004006(n)+n)`
-/

namespace A368951.P6054239537893905454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369195 (A004006 n + (n : ℤ)).toNat

end

end A368951.P6054239537893905454

/-!
# A368952: Irregular triangle T(n,k) read by rows: row n lists the larger number in each pair of triangular numbers (a, b) satisfying a - b = n.

The programs for A368952, there is no canonical definition to state claims against.
-/

/-! ## A368952.P3561104140826579474

`C(A379633(n+1)+1, 2)`
-/

namespace A368952.P3561104140826579474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A379633 (n + 1) + 1).toNat 2

end

end A368952.P3561104140826579474

/-! ## A368952.P2100514694331086204

`A000217(A379633(n+1))`
-/

namespace A368952.P2100514694331086204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A379633 (n + 1)).toNat

end

end A368952.P2100514694331086204

/-! ## A368952.P6745797345522174379

`A000124(A379633(n+1))-A057427(2*(n+1))`
-/

namespace A368952.P6745797345522174379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A379633 (n + 1)).toNat - A057427 (2 * (n + 1))

end

end A368952.P6745797345522174379

/-! ## A368952.P12538140541700574110

`A000124(A379633(n+1))-A357138(3*n+2)`
-/

namespace A368952.P12538140541700574110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A379633 (n + 1)).toNat - A357138 (3 * n + 2)

end

end A368952.P12538140541700574110

/-! ## A368952.P18064431585364957023

`A115364(A356956(n+2))`
-/

namespace A368952.P18064431585364957023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A356956 (n + 2)).toNat

end

end A368952.P18064431585364957023

/-!
# A368954: Row lengths of A368953: in the MIU formal system, number of distinct strings n steps distant from the MI string.

The programs for A368954, there is no canonical definition to state claims against.
-/

/-! ## A368954.P18394797121423286963

`A305829(n!+1-n)+comp[A027384(n+2)]`
-/

namespace A368954.P18394797121423286963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305829 ((Nat.factorial n : ℤ) + (1 - (n : ℤ))).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A368954.P18394797121423286963

/-! ## A368954.P14286177477054876009

`A181046(A279552(n)+A080098(n))`
-/

namespace A368954.P14286177477054876009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181046 (A279552 n + A080098 n).toNat

end

end A368954.P14286177477054876009

/-! ## A368954.P6676358952497903009

`A269381(A000568(n)*A077169(n))`
-/

namespace A368954.P6676358952497903009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A000568 n * A077169 n).toNat

end

end A368954.P6676358952497903009

/-!
# A368956: a(n) = 3^n - 2^(n+1) - 1.

The programs for A368956, the canonical program `A368956.P10050442384758841331` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368956 has offset 1).

The definition of A368956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)-2^(n+2)-1` (program `A368956.P10050442384758841331`, by `A368956.P10050442384758841331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368956.P8904476887991433945

`ogf((-2+12x-12x^2)/(1-6x+11x^2-6x^3))`
-/

namespace A368956.P8904476887991433945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 12, -12] [1, -6, 11, -6] n

end

end A368956.P8904476887991433945

namespace A368956

/-- `ogf((-2+12x-12x^2)/(1-6x+11x^2-6x^3))` -/
def P8904476887991433945.Spec : Prop :=
  ∀ n, P8904476887991433945.a n = A368956 (n + 1)

end A368956

/-! ## A368956.P10050442384758841331

`3^(n+1)-2^(n+2)-1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A368956

/-- `3^(n+1)-2^(n+2)-1` -/
def P10050442384758841331.Spec : Prop :=
  ∀ n, P10050442384758841331.a n = A368956 (n + 1)

theorem P10050442384758841331.correct : P10050442384758841331.Spec := by
  intro n
  simp only [A368956, Nat.add_sub_cancel]

end A368956

/-! ## A368956.P4050048341619854480

`2*(A134063(n+1)-2)`
-/

namespace A368956.P4050048341619854480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134063 (n + 1) - 2)

end

end A368956.P4050048341619854480

namespace A368956

/-- `2*(A134063(n+1)-2)` -/
def P4050048341619854480.Spec : Prop :=
  ∀ n, P4050048341619854480.a n = A368956 (n + 1)

end A368956

/-! ## A368956.P9102163019724445022

`(A255459(n)-5)/2`
-/

namespace A368956.P9102163019724445022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255459 n - 5 : ℚ) / 2

end

end A368956.P9102163019724445022

namespace A368956

/-- `(A255459(n)-5)/2` -/
def P9102163019724445022.Spec : Prop :=
  ∀ n, P9102163019724445022.a n = (A368956 (n + 1) : ℚ)

theorem P9102163019724445022.correct : P9102163019724445022.Spec := by
  intro n
  simp only [A368956, Nat.add_sub_cancel, A368956.P9102163019724445022.a, A368956.P10050442384758841331.a, A255459, A255459.P9954296886225926394.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A368956

/-!
# A368957: Expansion of (1/x) * Series_Reversion( x * (1-x^2/(1-x))^2 ).

The programs for A368957, there is no canonical definition to state claims against.
-/

/-! ## A368957.P8597177371471688682

`A151571(A003436(n))-A268411(n+3)`
-/

namespace A368957.P8597177371471688682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 (A003436 n).toNat - A268411 (n + 3)

end

end A368957.P8597177371471688682

/-!
# A368961: Expansion of (1/x) * Series_Reversion( x * (1-x-x^2)^2 ).

The programs for A368961, there is no canonical definition to state claims against.
-/

/-! ## A368961.P7426517796805989512

`A171803(n)+A046660(A001147(n))`
-/

namespace A368961.P7426517796805989512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171803 n + A046660 (A001147 n).toNat

end

end A368961.P7426517796805989512

/-! ## A368961.P14820271326232717499

`A171803(n)+A024155(A067735(n))`
-/

namespace A368961.P14820271326232717499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171803 n + A024155 (A067735 n).toNat

end

end A368961.P14820271326232717499

/-!
# A368962: Expansion of (1/x) * Series_Reversion( x * (1-x-x^3)^2 ).

The programs for A368962, there is no canonical definition to state claims against.
-/

/-! ## A368962.P13656086319053910991

`A001057(Δ[Δ[A022558(n)]])`
-/

namespace A368962.P13656086319053910991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n).toNat

end

end A368962.P13656086319053910991

/-! ## A368962.P2369361284751773329

`A003602(Δ[Δ[A022558(n)]])`
-/

namespace A368962.P2369361284751773329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (n + 1) - f1 n).toNat

end

end A368962.P2369361284751773329

/-!
# A368963: Expansion of (1/x) * Series_Reversion( x * (1-x-x^2)^3 ).

The programs for A368963, there is no canonical definition to state claims against.
-/

/-! ## A368963.P2152373086745967763

`A171805(n+1)+A154725(A213103(n))`
-/

namespace A368963.P2152373086745967763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171805 (n + 1) + A154725 (A213103 n).toNat

end

end A368963.P2152373086745967763

/-! ## A368963.P16784630419092713085

`A326152(A053530(n))+A171805(n+1)`
-/

namespace A368963.P16784630419092713085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 (A053530 n).toNat + A171805 (n + 1)

end

end A368963.P16784630419092713085

/-!
# A368964: Expansion of (1/x) * Series_Reversion( x * (1-x-x^3)^3 ).

The programs for A368964, there is no canonical definition to state claims against.
-/

/-! ## A368964.P10127175391264823658

`A018577(A005153(n+1))+and(-(-1)^n, ceil(n/2))`
-/

namespace A368964.P10127175391264823658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018577 (A005153 (n + 1)).toNat + Int.land (-((-1) ^ n)) ⌈(n : ℚ) / 2⌉

end

end A368964.P10127175391264823658

/-!
# A368965: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x-x^2)^2 ).

The programs for A368965, there is no canonical definition to state claims against.
-/

/-! ## A368965.P4482358327155687992

`A358456(A003052(n+1)+1)`
-/

namespace A368965.P4482358327155687992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358456 (A003052 (n + 1) + 1).toNat

end

end A368965.P4482358327155687992

/-!
# A368966: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x-x^3)^2 ).

The programs for A368966, there is no canonical definition to state claims against.
-/

/-! ## A368966.P6254666458466534873

`xor(n, A050296(A155627(n)))`
-/

namespace A368966.P6254666458466534873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A050296 (A155627 n).toNat)

end

end A368966.P6254666458466534873

/-!
# A368967: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x-x^2)^2 ).

The programs for A368967, there is no canonical definition to state claims against.
-/

/-! ## A368967.P346630799067705059

`A077641(or(n, A293743(2*n+1)))`
-/

namespace A368967.P346630799067705059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077641 (Int.lor (n : ℤ) (A293743 (2 * n + 1))).toNat

end

end A368967.P346630799067705059

/-!
# A368968: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x-x^3)^2 ).

The programs for A368968, there is no canonical definition to state claims against.
-/

/-! ## A368968.P12708815615741076067

`A379021(n)-A071670(A051118(n))`
-/

namespace A368968.P12708815615741076067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379021 n - A071670 (A051118 n).toNat

end

end A368968.P12708815615741076067

/-! ## A368968.P9388553325392126228

`A379021(n)-A179011(A277862(n+1))`
-/

namespace A368968.P9388553325392126228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379021 n - A179011 (A277862 (n + 1)).toNat

end

end A368968.P9388553325392126228

/-!
# A368970: Expansion of (1/x) * Series_Reversion( x * (1-x+x^3)^2 ).

The programs for A368970, there is no canonical definition to state claims against.
-/

/-! ## A368970.P4632126961381716622

`A088462(A150873(n)+A150870(n))`
-/

namespace A368970.P4632126961381716622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A150873 n + A150870 n).toNat

end

end A368970.P4632126961381716622

/-! ## A368970.P10942785970157160618

`A156562(A150984(n))`
-/

namespace A368970.P10942785970157160618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A150984 n).toNat

end

end A368970.P10942785970157160618

/-!
# A368971: Expansion of (1/x) * Series_Reversion( x * (1-x+x^2)^3 ).

The programs for A368971, there is no canonical definition to state claims against.
-/

/-! ## A368971.P3356078578235825288

`A283467(A270678(n)+A270647(n+1))`
-/

namespace A368971.P3356078578235825288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (A270678 n + A270647 (n + 1)).toNat

end

end A368971.P3356078578235825288

/-! ## A368971.P17321477337920429080

`A283467(A270678(n)+A270648(n+1))`
-/

namespace A368971.P17321477337920429080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (A270678 n + A270648 (n + 1)).toNat

end

end A368971.P17321477337920429080

/-!
# A368972: Expansion of (1/x) * Series_Reversion( x * (1-x+x^3)^3 ).

The programs for A368972, there is no canonical definition to state claims against.
-/

/-! ## A368972.P6919405003059317384

`A363994(A301673(n))`
-/

namespace A368972.P6919405003059317384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 (A301673 n).toNat

end

end A368972.P6919405003059317384

/-!
# A368973: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x+x^2)^2 ).

The programs for A368973, there is no canonical definition to state claims against.
-/

/-! ## A368973.P899546584569537158

`or(A001221(A125500(n)), A352706(n))`
-/

namespace A368973.P899546584569537158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A125500 n).toNat) (A352706 n)

end

end A368973.P899546584569537158

/-! ## A368973.P1852013067690977090

`A352706(A228050(n+1))`
-/

namespace A368973.P1852013067690977090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352706 (A228050 (n + 1)).toNat

end

end A368973.P1852013067690977090

/-! ## A368973.P11606290084638338610

`A273943(2*A352706(n))`
-/

namespace A368973.P11606290084638338610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * A352706 n).toNat

end

end A368973.P11606290084638338610

/-!
# A368974: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x+x^3)^2 ).

The programs for A368974, there is no canonical definition to state claims against.
-/

/-! ## A368974.P6810594472958344654

`A127757(A094374(2*n)-n)`
-/

namespace A368974.P6810594472958344654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A094374 (2 * n) - (n : ℤ)).toNat

end

end A368974.P6810594472958344654

/-!
# A368975: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x+x^2)^2 ).

The programs for A368975, there is no canonical definition to state claims against.
-/

/-! ## A368975.P13494039990365102646

`A369478(n)+A280618(A364759(n))`
-/

namespace A368975.P13494039990365102646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369478 n + A280618 (A364759 n).toNat

end

end A368975.P13494039990365102646

/-! ## A368975.P4465850666504692713

`A369478(n)+A369461(A369485(n))`
-/

namespace A368975.P4465850666504692713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369478 n + A369461 (A369485 n).toNat

end

end A368975.P4465850666504692713

/-!
# A368976: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x+x^3)^2 ).

The programs for A368976, there is no canonical definition to state claims against.
-/

/-! ## A368976.P4757103981886912495

`A004128(A118970(n))`
-/

namespace A368976.P4757103981886912495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (A118970 n).toNat

end

end A368976.P4757103981886912495

/-!
# A368977: The number of bi-unitary divisors of n that are exponentially odd numbers (A268335).

The programs for A368977, there is no canonical definition to state claims against.
-/

/-! ## A368977.P15537719010504774553

`A095691(A227324(n+1))`
-/

namespace A368977.P15537719010504774553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (A227324 (n + 1)).toNat

end

end A368977.P15537719010504774553

/-! ## A368977.P163335230855560398

`∏{e}[n+1, A173438(A155601(#))]`
-/

namespace A368977.P163335230855560398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A173438 (A155601 (Nat.factorization (f1 n) p)).toNat

end

end A368977.P163335230855560398

/-! ## A368977.P14496798312855362497

`∏{e}[n+1, A374757(A296975(#))]`
-/

namespace A368977.P14496798312855362497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A374757 (A296975 (Nat.factorization (f1 n) p)).toNat

end

end A368977.P14496798312855362497

/-! ## A368977.P3397019955761566870

`A073184(A368886(n+1)%A170992(n+2))`
-/

namespace A368977.P3397019955761566870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (Int.tmod (A368886 (n + 1)) (A170992 (n + 2))).toNat

end

end A368977.P3397019955761566870

/-! ## A368977.P9656456388440532035

`gcd(A133602(n), A294931(n+1))`
-/

namespace A368977.P9656456388440532035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133602 n) (A294931 (n + 1))

end

end A368977.P9656456388440532035

/-!
# A368978: The number of bi-unitary divisors of n that are squares (A000290).

The programs for A368978, the canonical program `A368978.P8301569034531244745` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368978 has offset 1).

The definition of A368978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368978.P8301569034531244745

`A365171((n+1)/∏{p}[n+1, #])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A368978

/-- `A365171((n+1)/∏{p}[n+1, #])` -/
def P8301569034531244745.Spec : Prop :=
  ∀ n, P8301569034531244745.a n = A368978 (n + 1)

theorem P8301569034531244745.correct : P8301569034531244745.Spec := by
  intro n
  simp only [A368978, Nat.add_sub_cancel]

end A368978

/-! ## A368978.P7931176878751316346

`∑{d}[(n+1)/∏{p}[n+1, #], A353519(#)]`
-/

namespace A368978.P7931176878751316346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A353519 d

end

end A368978.P7931176878751316346

namespace A368978

/-- `∑{d}[(n+1)/∏{p}[n+1, #], A353519(#)]` -/
def P7931176878751316346.Spec : Prop :=
  ∀ n, P7931176878751316346.a n = A368978 (n + 1)

end A368978

/-! ## A368978.P15030948485373968239

`A365171(A003557(n+1))`
-/

namespace A368978.P15030948485373968239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A003557 (n + 1)).toNat

end

end A368978.P15030948485373968239

namespace A368978

/-- `A365171(A003557(n+1))` -/
def P15030948485373968239.Spec : Prop :=
  ∀ n, P15030948485373968239.a n = A368978 (n + 1)

theorem P15030948485373968239.correct : P15030948485373968239.Spec := by
  intro n
  simp only [A368978, Nat.add_sub_cancel, A368978.P15030948485373968239.a, A368978.P8301569034531244745.f1, A368978.P8301569034531244745.a, A003557, A003557.P6364735403900941810.a, A365171, A365171.P15755108315260376590.f1, A365171.P15755108315260376590.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A353519, A353519.P6983840421202540414.a, A219009, A219009.P4084313568037727888.f1, A219009.P4084313568037727888.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063775, A063775.P4217061199488976379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368978

/-! ## A368978.P10151311365251692114

`A365171(A292589(n+1))`
-/

namespace A368978.P10151311365251692114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A292589 (n + 1)).toNat

end

end A368978.P10151311365251692114

namespace A368978

/-- `A365171(A292589(n+1))` -/
def P10151311365251692114.Spec : Prop :=
  ∀ n, P10151311365251692114.a n = A368978 (n + 1)

end A368978

/-! ## A368978.P10978711583206569129

`A365171(A336551(n+1)+1)`
-/

namespace A368978.P10978711583206569129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A336551 (n + 1) + 1).toNat

end

end A368978.P10978711583206569129

namespace A368978

/-- `A365171(A336551(n+1)+1)` -/
def P10978711583206569129.Spec : Prop :=
  ∀ n, P10978711583206569129.a n = A368978 (n + 1)

theorem P10978711583206569129.correct : P10978711583206569129.Spec := by
  intro n
  simp only [A368978, Nat.add_sub_cancel, A368978.P10978711583206569129.a, A368978.P8301569034531244745.f1, A368978.P8301569034531244745.a, A336551, A336551.P8666843674191054020.a, A365171, A365171.P15755108315260376590.f1, A365171.P15755108315260376590.a, A003557, A003557.P6364735403900941810.a, A353519, A353519.P6983840421202540414.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A219009, A219009.P4084313568037727888.f1, A219009.P4084313568037727888.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063775, A063775.P4217061199488976379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368978

/-! ## A368978.P7852810742383981794

`∏{e}[n+1, A001221(A218175(#))]`
-/

namespace A368978.P7852810742383981794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001221 (A218175 (Nat.factorization (f1 n) p)).toNat

end

end A368978.P7852810742383981794

namespace A368978

/-- `∏{e}[n+1, A001221(A218175(#))]` -/
def P7852810742383981794.Spec : Prop :=
  ∀ n, P7852810742383981794.a n = A368978 (n + 1)

end A368978

/-! ## A368978.P13356721486580055989

`∏{e}[(n+1)*∏{p}[n+1, #²], A035382(#)]`
-/

namespace A368978.P13356721486580055989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A035382 (Nat.factorization (f1 n) p)

end

end A368978.P13356721486580055989

namespace A368978

/-- `∏{e}[(n+1)*∏{p}[n+1, #²], A035382(#)]` -/
def P13356721486580055989.Spec : Prop :=
  ∀ n, P13356721486580055989.a n = A368978 (n + 1)

end A368978

/-! ## A368978.P11257403108452045365

`A227283(2*n+1)%A046951(n+1)+1`
-/

namespace A368978.P11257403108452045365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227283 (2 * n + 1)) (A046951 (n + 1)) + 1

end

end A368978.P11257403108452045365

namespace A368978

/-- `A227283(2*n+1)%A046951(n+1)+1` -/
def P11257403108452045365.Spec : Prop :=
  ∀ n, P11257403108452045365.a n = A368978 (n + 1)

end A368978

/-! ## A368978.P16125090257690208994

`A261396(A227283(2*n+1)%A046951(n+1))`
-/

namespace A368978.P16125090257690208994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261396 (Int.tmod (A227283 (2 * n + 1)) (A046951 (n + 1))).toNat

end

end A368978.P16125090257690208994

namespace A368978

/-- `A261396(A227283(2*n+1)%A046951(n+1))` -/
def P16125090257690208994.Spec : Prop :=
  ∀ n, P16125090257690208994.a n = A368978 (n + 1)

end A368978

/-! ## A368978.P16359956515001565327

`A126081(A037291(n+1))`
-/

namespace A368978.P16359956515001565327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126081 (A037291 (n + 1)).toNat

end

end A368978.P16359956515001565327

namespace A368978

/-- `A126081(A037291(n+1))` -/
def P16359956515001565327.Spec : Prop :=
  ∀ n, P16359956515001565327.a n = A368978 (n + 1)

end A368978

/-!
# A368979: 

The programs for A368979, there is no canonical definition to state claims against.
-/

/-! ## A368979.P8787388023823454376

`A049419(A331737(n+1))`
-/

namespace A368979.P8787388023823454376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A331737 (n + 1)).toNat

end

end A368979.P8787388023823454376

/-!
# A368980: The number of exponential divisors of n that are squares (A000290).

The programs for A368980, the canonical program `A368980.P9473977594289059310` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368980 has offset 1).

The definition of A368980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368980.P9473977594289059310

`∏{e}[n+1, A183063(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368980

/-- `∏{e}[n+1, A183063(#)]` -/
def P9473977594289059310.Spec : Prop :=
  ∀ n, P9473977594289059310.a n = A368980 (n + 1)

theorem P9473977594289059310.correct : P9473977594289059310.Spec := by
  intro n
  simp only [A368980, Nat.add_sub_cancel]

end A368980

/-! ## A368980.P6956366975411305107

`∏{e}[n+1, A318979(#)]`
-/

namespace A368980.P6956366975411305107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A318979 (Nat.factorization (f1 n) p)

end

end A368980.P6956366975411305107

namespace A368980

/-- `∏{e}[n+1, A318979(#)]` -/
def P6956366975411305107.Spec : Prop :=
  ∀ n, P6956366975411305107.a n = A368980 (n + 1)

end A368980

/-! ## A368980.P1568089539446629099

`A010052(n+1)*A083911(A068980(2*n+1))`
-/

namespace A368980.P1568089539446629099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A083911 (A068980 (2 * n + 1)).toNat

end

end A368980.P1568089539446629099

namespace A368980

/-- `A010052(n+1)*A083911(A068980(2*n+1))` -/
def P1568089539446629099.Spec : Prop :=
  ∀ n, P1568089539446629099.a n = A368980 (n + 1)

end A368980

/-! ## A368980.P2120631445268889378

`A000122(n+1)/A049710(A049515(n+1))`
-/

namespace A368980.P2120631445268889378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (n + 1) : ℚ) / (A049710 (A049515 (n + 1)).toNat : ℚ)

end

end A368980.P2120631445268889378

namespace A368980

/-- `A000122(n+1)/A049710(A049515(n+1))` -/
def P2120631445268889378.Spec : Prop :=
  ∀ n, P2120631445268889378.a n = (A368980 (n + 1) : ℚ)

end A368980

/-! ## A368980.P10104993758427098786

`and(A095683(n+1), A148036(n))`
-/

namespace A368980.P10104993758427098786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095683 (n + 1)) (A148036 n)

end

end A368980.P10104993758427098786

namespace A368980

/-- `and(A095683(n+1), A148036(n))` -/
def P10104993758427098786.Spec : Prop :=
  ∀ n, P10104993758427098786.a n = A368980 (n + 1)

end A368980

/-! ## A368980.P10876361354685262160

`A349907(A342530(n+1))`
-/

namespace A368980.P10876361354685262160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (A342530 (n + 1)).toNat

end

end A368980.P10876361354685262160

namespace A368980

/-- `A349907(A342530(n+1))` -/
def P10876361354685262160.Spec : Prop :=
  ∀ n, P10876361354685262160.a n = A368980 (n + 1)

end A368980

/-! ## A368980.P11413723942792909957

`A099544(A245557(n))`
-/

namespace A368980.P11413723942792909957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099544 (A245557 n).toNat

end

end A368980.P11413723942792909957

namespace A368980

/-- `A099544(A245557(n))` -/
def P11413723942792909957.Spec : Prop :=
  ∀ n, P11413723942792909957.a n = A368980 (n + 1)

end A368980

/-! ## A368980.P12760964211108019982

`A124010(A364055(n+1)+1)`
-/

namespace A368980.P12760964211108019982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A364055 (n + 1) + 1).toNat

end

end A368980.P12760964211108019982

namespace A368980

/-- `A124010(A364055(n+1)+1)` -/
def P12760964211108019982.Spec : Prop :=
  ∀ n, P12760964211108019982.a n = A368980 (n + 1)

end A368980

/-! ## A368980.P16538076453897226226

`A091393(A048767(n+1))`
-/

namespace A368980.P16538076453897226226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (A048767 (n + 1)).toNat

end

end A368980.P16538076453897226226

namespace A368980

/-- `A091393(A048767(n+1))` -/
def P16538076453897226226.Spec : Prop :=
  ∀ n, P16538076453897226226.a n = A368980 (n + 1)

end A368980

/-! ## A368980.P12601381365378471958

`A131743(A158757(n))`
-/

namespace A368980.P12601381365378471958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (A158757 n).toNat

end

end A368980.P12601381365378471958

namespace A368980

/-- `A131743(A158757(n))` -/
def P12601381365378471958.Spec : Prop :=
  ∀ n, P12601381365378471958.a n = A368980 (n + 1)

end A368980

/-!
# A368981: a(n) = Sum_{k=0..n} binomial(n, k - 1)*(1 - k)^(k - 1)*(n - k)*(n - k + 1)^(n - k).

The programs for A368981, there is no canonical definition to state claims against.
-/

/-! ## A368981.P2185687986814937851

`n*A302481(A034193(n))`
-/

namespace A368981.P2185687986814937851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302481 (A034193 n).toNat

end

end A368981.P2185687986814937851

/-! ## A368981.P1808159145205855485

`A005843(A360433(n)-A166976(n))`
-/

namespace A368981.P1808159145205855485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A360433 n - A166976 n).toNat

end

end A368981.P1808159145205855485

/-!
# A368982: Triangle read by rows: T(n, k) = binomial(n, k - 1) * (k - 1)^(k - 1) * (n - k) * (n - k + 1)^(n - k) / 2.

The programs for A368982, there is no canonical definition to state claims against.
-/

/-! ## A368982.P5774855302742698614

`A368849(n)/2`
-/

namespace A368982.P5774855302742698614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368849 n : ℚ) / 2

end

end A368982.P5774855302742698614

/-! ## A368982.P5087901944930030152

`A369072(n)-A369025(n)`
-/

namespace A368982.P5087901944930030152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369072 n - A369025 n

end

end A368982.P5087901944930030152

/-! ## A368982.P11924299031269544559

`(A369018(n)-A369019(n))/2`
-/

namespace A368982.P11924299031269544559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369018 n - A369019 n : ℚ) / 2

end

end A368982.P11924299031269544559

/-! ## A368982.P14201755935063596807

`A003056(n)/2*A369016(n)`
-/

namespace A368982.P14201755935063596807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) / 2 * (A369016 n : ℚ)

end

end A368982.P14201755935063596807

/-! ## A368982.P3468912286861756991

`A083291(n)/2*A369016(n)`
-/

namespace A368982.P3468912286861756991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083291 n : ℚ) / 2 * (A369016 n : ℚ)

end

end A368982.P3468912286861756991

/-!
# A368983: Number of connected graphs with loops (symmetric relations) on n unlabeled vertices with n edges.

The programs for A368983, there is no canonical definition to state claims against.
-/

/-! ## A368983.P11226868035613307043

`A217420(n+1)+A005703(n)`
-/

namespace A368983.P11226868035613307043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217420 (n + 1) + A005703 n

end

end A368983.P11226868035613307043

/-! ## A368983.P17355108243019654699

`A322114(A054254(n+1))`
-/

namespace A368983.P17355108243019654699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322114 (A054254 (n + 1)).toNat

end

end A368983.P17355108243019654699

/-! ## A368983.P601215993539078389

`A322114(A186752(n+2))`
-/

namespace A368983.P601215993539078389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322114 (A186752 (n + 2)).toNat

end

end A368983.P601215993539078389

/-! ## A368983.P2201051535781446325

`A322114(eq[1, A262125(n)])`
-/

namespace A368983.P2201051535781446325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368983.P2201051535781446325

/-! ## A368983.P5602773513623507527

`A322114(eq[1, A297328(n+2)])`
-/

namespace A368983.P5602773513623507527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368983.P5602773513623507527

/-! ## A368983.P5939767386314477132

`A322114(eq[A051731(n+2), A208510(n+3)])`
-/

namespace A368983.P5939767386314477132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322114 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A368983.P5939767386314477132

/-!
# A368984: Number of graphs with loops (symmetric relations) on n unlabeled vertices in which each connected component has an equal number of vertices and edges.

The programs for A368984, there is no canonical definition to state claims against.
-/

/-! ## A368984.P14796884470803140343

`A368598(n)-A368835(n)`
-/

namespace A368984.P14796884470803140343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368598 n - A368835 n

end

end A368984.P14796884470803140343

/-! ## A368984.P17977783342631042632

`A368926(∑[n+1]+1)`
-/

namespace A368984.P17977783342631042632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368926 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A368984.P17977783342631042632

/-! ## A368984.P6858669550560043141

`A023193(A246555(n)+A003462(n))`
-/

namespace A368984.P6858669550560043141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A246555 n + A003462 n).toNat

end

end A368984.P6858669550560043141

/-! ## A368984.P4467037985846943962

`A260999(A006882(n))+A094292(n)`
-/

namespace A368984.P4467037985846943962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A006882 n).toNat + A094292 n

end

end A368984.P4467037985846943962

/-!
# A368985: a(n) = sum of the side lengths of the minimum containing squares of all partitions of n.

The programs for A368985, there is no canonical definition to state claims against.
-/

/-! ## A368985.P4207539868297445481

`A274616(A211978(n)^A181937(n))`
-/

namespace A368985.P4207539868297445481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (SequenceMachineLib.roundAway ((A211978 n : ℚ) ^ (A181937 n : ℤ))).toNat

end

end A368985.P4207539868297445481

/-!
# A368986: a(n) = sum of the origin-to-boundary graph-distances of all partitions of n.

The programs for A368986, there is no canonical definition to state claims against.
-/

/-! ## A368986.P17887724576797453371

`A335467(A060482(n+1))`
-/

namespace A368986.P17887724576797453371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (A060482 (n + 1)).toNat

end

end A368986.P17887724576797453371

/-! ## A368986.P10661075943009365053

`A348960(A035998(n+2))`
-/

namespace A368986.P10661075943009365053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A035998 (n + 2)).toNat

end

end A368986.P10661075943009365053

/-! ## A368986.P2527525452370918893

`A348960(A036009(n+2))`
-/

namespace A368986.P2527525452370918893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A036009 (n + 2)).toNat

end

end A368986.P2527525452370918893

/-! ## A368986.P4118667528150664790

`A348960(A039905(n+2))`
-/

namespace A368986.P4118667528150664790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A039905 (n + 2)).toNat

end

end A368986.P4118667528150664790

/-! ## A368986.P7144604416406622374

`A348960(A137792(n+2))`
-/

namespace A368986.P7144604416406622374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A137792 (n + 2)).toNat

end

end A368986.P7144604416406622374

/-!
# A368987: Triangle read by rows: T(n,k) is the number of unlabeled point-determining graphs with n nodes and k edges, n >= 0, 0 <= k <= n*(n - 1)/2.

The programs for A368987, there is no canonical definition to state claims against.
-/

/-! ## A368987.P18306255569151124026

`A322603(A369283(n))`
-/

namespace A368987.P18306255569151124026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322603 (A369283 n).toNat

end

end A368987.P18306255569151124026

/-! ## A368987.P16867592143765706386

`A358434(A144019(n+2))`
-/

namespace A368987.P16867592143765706386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358434 (A144019 (n + 2)).toNat

end

end A368987.P16867592143765706386

/-! ## A368987.P3906390433113797328

`A049046(A369283(n)²+1)`
-/

namespace A368987.P3906390433113797328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A369283 n ^ 2 + 1).toNat

end

end A368987.P3906390433113797328

/-! ## A368987.P15720650012359418355

`A355745(A073435(n+1)-A090624(n+2))`
-/

namespace A368987.P15720650012359418355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (A073435 (n + 1) - A090624 (n + 2)).toNat

end

end A368987.P15720650012359418355

/-! ## A368987.P12089318147691266299

`A281082(A008486(2*n)-A281082(2*n+1))`
-/

namespace A368987.P12089318147691266299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281082 (A008486 (2 * n) - A281082 (2 * n + 1)).toNat

end

end A368987.P12089318147691266299

/-!
# A368989: Values of records in A368698.

The programs for A368989, there is no canonical definition to state claims against.
-/

/-! ## A368989.P3999148551321793800

`A368698(A368988(n+1))`
-/

namespace A368989.P3999148551321793800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368698 (A368988 (n + 1)).toNat

end

end A368989.P3999148551321793800

/-! ## A368989.P12511163942994571516

`record[A368698(n)]`
-/

namespace A368989.P12511163942994571516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368989.P12511163942994571516

/-! ## A368989.P1052041647231235012

`record[A336564(A253565(n))]`
-/

namespace A368989.P1052041647231235012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (A253565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368989.P1052041647231235012

/-! ## A368989.P7441955800652720351

`record[A354985(A005940(n+1))]`
-/

namespace A368989.P7441955800652720351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368989.P7441955800652720351

/-! ## A368989.P10723476856772317789

`record[A345937(record[A005940(n+1)])]`
-/

namespace A368989.P10723476856772317789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345937 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368989.P10723476856772317789

/-!
# A368990: a(n) = 1 if A005940(1+n) is nondeficient, otherwise 0. Here A005940 is the Doudna sequence.

The programs for A368990, the canonical program `A368990.P4935486375508684149` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368990 has offset 0).

The definition of A368990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A294936, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368990.P4935486375508684149

`A294936(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A368990

/-- `A294936(A005940(1+n))` -/
def P4935486375508684149.Spec : Prop :=
  ∀ n, P4935486375508684149.a n = A368990 n

theorem P4935486375508684149.correct : P4935486375508684149.Spec := by
  intro n
  simp only [A368990]

end A368990

/-! ## A368990.P4480518788388141346

`1-A336834(n)`
-/

namespace A368990.P4480518788388141346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336834 n

end

end A368990.P4480518788388141346

namespace A368990

/-- `1-A336834(n)` -/
def P4480518788388141346.Spec : Prop :=
  ∀ n, P4480518788388141346.a n = A368990 n

end A368990

/-! ## A368990.P17282302718408610864

`Δ[A368991(abs(1-n))]`
-/

namespace A368990.P17282302718408610864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368991 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368990.P17282302718408610864

namespace A368990

/-- `Δ[A368991(abs(1-n))]` -/
def P17282302718408610864.Spec : Prop :=
  ∀ n, P17282302718408610864.a n = A368990 n

end A368990

/-! ## A368990.P17737182899191478352

`C(2, A275770(n+1)*A336834(n))`
-/

namespace A368990.P17737182899191478352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A275770 (n + 1) * A336834 n).toNat

end

end A368990.P17737182899191478352

namespace A368990

/-- `C(2, A275770(n+1)*A336834(n))` -/
def P17737182899191478352.Spec : Prop :=
  ∀ n, (P17737182899191478352.a n : ℤ) = A368990 n

end A368990

/-! ## A368990.P5452403758955313739

`A336834(A336834(n)+A046109(2*n+3))`
-/

namespace A368990.P5452403758955313739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336834 (A336834 n + A046109 (2 * n + 3)).toNat

end

end A368990.P5452403758955313739

namespace A368990

/-- `A336834(A336834(n)+A046109(2*n+3))` -/
def P5452403758955313739.Spec : Prop :=
  ∀ n, P5452403758955313739.a n = A368990 n

end A368990

/-! ## A368990.P7998916992902184266

`A010051(A336834(n)+A002144(n+1))`
-/

namespace A368990.P7998916992902184266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A336834 n + A002144 (n + 1)).toNat

end

end A368990.P7998916992902184266

namespace A368990

/-- `A010051(A336834(n)+A002144(n+1))` -/
def P7998916992902184266.Spec : Prop :=
  ∀ n, P7998916992902184266.a n = A368990 n

end A368990

/-! ## A368990.P14643470311018479272

`A000122(A000040(n+1)*A336834(n))`
-/

namespace A368990.P14643470311018479272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000040 (n + 1) * A336834 n).toNat

end

end A368990.P14643470311018479272

namespace A368990

/-- `A000122(A000040(n+1)*A336834(n))` -/
def P14643470311018479272.Spec : Prop :=
  ∀ n, P14643470311018479272.a n = A368990 n

end A368990

/-! ## A368990.P171082757808377284

`A000122(A045468(n+1)*A336834(n))`
-/

namespace A368990.P171082757808377284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A045468 (n + 1) * A336834 n).toNat

end

end A368990.P171082757808377284

namespace A368990

/-- `A000122(A045468(n+1)*A336834(n))` -/
def P171082757808377284.Spec : Prop :=
  ∀ n, P171082757808377284.a n = A368990 n

end A368990

/-! ## A368990.P15783684950812369672

`A010051(A336834(n)+A062584(2*n+3))`
-/

namespace A368990.P15783684950812369672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A336834 n + A062584 (2 * n + 3)).toNat

end

end A368990.P15783684950812369672

namespace A368990

/-- `A010051(A336834(n)+A062584(2*n+3))` -/
def P15783684950812369672.Spec : Prop :=
  ∀ n, P15783684950812369672.a n = A368990 n

end A368990

/-! ## A368990.P8195646184120849605

`A294936(A340362(n+1)+A340364(n+1)*A340366(n+1))`
-/

namespace A368990.P8195646184120849605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A340362 (n + 1) + A340364 (n + 1) * A340366 (n + 1)).toNat

end

end A368990.P8195646184120849605

namespace A368990

/-- `A294936(A340362(n+1)+A340364(n+1)*A340366(n+1))` -/
def P8195646184120849605.Spec : Prop :=
  ∀ n, P8195646184120849605.a n = A368990 n

end A368990

/-!
# A368991: Doudna-gram for nondeficient numbers; Partial sums of A368990.

The programs for A368991, the canonical program `A368991.P7436517708181029196` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368991 has offset 0).

The definition of A368991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368990, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368991.P7436517708181029196

`a(n-1)+A368990(n)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A368991

/-- `a(n-1)+A368990(n)` -/
def P7436517708181029196.Spec : Prop :=
  ∀ n, P7436517708181029196.a n = A368991 n

theorem P7436517708181029196.correct : P7436517708181029196.Spec := by
  intro n
  simp only [A368991]

end A368991

/-! ## A368991.P3884752607409034880

`∑[A368990(n)]`
-/

namespace A368991.P3884752607409034880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368991.P3884752607409034880

namespace A368991

/-- `∑[A368990(n)]` -/
def P3884752607409034880.Spec : Prop :=
  ∀ n, P3884752607409034880.a n = A368991 n

end A368991

/-! ## A368991.P4940983840290001970

`∑[1-A336834(n)]`
-/

namespace A368991.P4940983840290001970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368991.P4940983840290001970

namespace A368991

/-- `∑[1-A336834(n)]` -/
def P4940983840290001970.Spec : Prop :=
  ∀ n, P4940983840290001970.a n = A368991 n

end A368991

/-! ## A368991.P17530117691801662099

`∑[xor(A054977(n+1), A336834(n))]`
-/

namespace A368991.P17530117691801662099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 (n + 1)) (A336834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368991.P17530117691801662099

namespace A368991

/-- `∑[xor(A054977(n+1), A336834(n))]` -/
def P17530117691801662099.Spec : Prop :=
  ∀ n, P17530117691801662099.a n = A368991 n

end A368991

/-! ## A368991.P10591671914776534696

`∑[xor(A001511(2*n+3), A336834(n))]`
-/

namespace A368991.P10591671914776534696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001511 (2 * n + 3)) (A336834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368991.P10591671914776534696

namespace A368991

/-- `∑[xor(A001511(2*n+3), A336834(n))]` -/
def P10591671914776534696.Spec : Prop :=
  ∀ n, P10591671914776534696.a n = A368991 n

end A368991

/-! ## A368991.P14336556650955525423

`∑[A294936(A005940(n+1))]`
-/

namespace A368991.P14336556650955525423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368991.P14336556650955525423

namespace A368991

/-- `∑[A294936(A005940(n+1))]` -/
def P14336556650955525423.Spec : Prop :=
  ∀ n, P14336556650955525423.a n = A368991 n

end A368991

/-!
# A368992: a(n) = A336546(A005940(1+n)).

The programs for A368992, there is no canonical definition to state claims against.
-/

/-! ## A368992.P14157635475577865882

`A336546(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368992.P14157635475577865882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (A005940 (1 + n)).toNat

end

end A368992.P14157635475577865882

/-! ## A368992.P14862431841769821309

`C(A002175(n), A353803(A005940(n+1)))`
-/

namespace A368992.P14862431841769821309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002175 n).toNat (A353803 (A005940 (n + 1)).toNat).toNat

end

end A368992.P14862431841769821309

/-! ## A368992.P5624613611352307153

`C(A262678(n), A353803(A005940(n+1)))`
-/

namespace A368992.P5624613611352307153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262678 n).toNat (A353803 (A005940 (n + 1)).toNat).toNat

end

end A368992.P5624613611352307153

/-! ## A368992.P5050725011970719673

`C(A001222(n+1), A353803(A005940(n+1)))`
-/

namespace A368992.P5050725011970719673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A353803 (A005940 (n + 1)).toNat).toNat

end

end A368992.P5050725011970719673

/-! ## A368992.P15314586269913801270

`C(A002024(n+1), A353803(A005940(n+1)))`
-/

namespace A368992.P15314586269913801270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A353803 (A005940 (n + 1)).toNat).toNat

end

end A368992.P15314586269913801270

/-! ## A368992.P16415457372950336478

`C(A071626(n+1), A353803(A005940(n+1)))`
-/

namespace A368992.P16415457372950336478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071626 (n + 1)).toNat (A353803 (A005940 (n + 1)).toNat).toNat

end

end A368992.P16415457372950336478

/-! ## A368992.P2728575055688948137

`C(A303206(n+5), A353803(A005940(n+1)))`
-/

namespace A368992.P2728575055688948137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303206 (n + 5)).toNat (A353803 (A005940 (n + 1)).toNat).toNat

end

end A368992.P2728575055688948137

/-!
# A368993: Doudna-gram for A336547; Partial sums of A368992.

The programs for A368993, there is no canonical definition to state claims against.
-/

/-! ## A368993.P14400054090859092937

`a(n-1)+A368992(n)` with `a(0)=1`
-/

namespace A368993.P14400054090859092937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A368992 n

end

end A368993.P14400054090859092937

/-! ## A368993.P13191200390428466467

`∑[A368992(n)]`
-/

namespace A368993.P13191200390428466467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368993.P13191200390428466467

/-! ## A368993.P1834767351466983615

`∑[A336546(A005940(n+1))]`
-/

namespace A368993.P1834767351466983615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368993.P1834767351466983615

/-!
# A368994: a(n) = 1 if A342001(k) is a multiple of four, and 0 otherwise.

The programs for A368994, the canonical program `A368994.P10252783783940313295` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368994 has offset 1).

The definition of A368994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368994.P10252783783940313295

`A121262(A342001(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368994

/-- `A121262(A342001(n+1))` -/
def P10252783783940313295.Spec : Prop :=
  ∀ n, P10252783783940313295.a n = A368994 (n + 1)

theorem P10252783783940313295.correct : P10252783783940313295.Spec := by
  intro n
  simp only [A368994, Nat.add_sub_cancel]

end A368994

/-! ## A368994.P17578269494385231237

`A353494(n+1)*A369001(n+1)`
-/

namespace A368994.P17578269494385231237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (n + 1) * A369001 (n + 1)

end

end A368994.P17578269494385231237

namespace A368994

/-- `A353494(n+1)*A369001(n+1)` -/
def P17578269494385231237.Spec : Prop :=
  ∀ n, P17578269494385231237.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P5894407845316596183

`A353494(A342001(n+1))*A368997(n+1)`
-/

namespace A368994.P5894407845316596183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A342001 (n + 1)).toNat * A368997 (n + 1)

end

end A368994.P5894407845316596183

namespace A368994

/-- `A353494(A342001(n+1))*A368997(n+1)` -/
def P5894407845316596183.Spec : Prop :=
  ∀ n, P5894407845316596183.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P11984312862178093113

`A353494(n+1)+A369001(n+1)-A358680(n+1)`
-/

namespace A368994.P11984312862178093113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (n + 1) + (A369001 (n + 1) - A358680 (n + 1))

end

end A368994.P11984312862178093113

namespace A368994

/-- `A353494(n+1)+A369001(n+1)-A358680(n+1)` -/
def P11984312862178093113.Spec : Prop :=
  ∀ n, P11984312862178093113.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P4049531858191971746

`A369004(n+1)+A121262(n+1)*A373264(n+1)`
-/

namespace A368994.P4049531858191971746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1) + A121262 (n + 1) * A373264 (n + 1)

end

end A368994.P4049531858191971746

namespace A368994

/-- `A369004(n+1)+A121262(n+1)*A373264(n+1)` -/
def P4049531858191971746.Spec : Prop :=
  ∀ n, P4049531858191971746.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P4725287212117243373

`A369004(n+1)+A353494(n+1)*A373264(n+1)`
-/

namespace A368994.P4725287212117243373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1) + A353494 (n + 1) * A373264 (n + 1)

end

end A368994.P4725287212117243373

namespace A368994

/-- `A369004(n+1)+A353494(n+1)*A373264(n+1)` -/
def P4725287212117243373.Spec : Prop :=
  ∀ n, P4725287212117243373.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P4904213863474170797

`A368997(A276086(A373145(n+1)))`
-/

namespace A368994.P4904213863474170797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368997 (A276086 (A373145 (n + 1)).toNat).toNat

end

end A368994.P4904213863474170797

namespace A368994

/-- `A368997(A276086(A373145(n+1)))` -/
def P4904213863474170797.Spec : Prop :=
  ∀ n, P4904213863474170797.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P12644076560164629663

`A369004(A065679(n+1))`
-/

namespace A368994.P12644076560164629663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (A065679 (n + 1)).toNat

end

end A368994.P12644076560164629663

namespace A368994

/-- `A369004(A065679(n+1))` -/
def P12644076560164629663.Spec : Prop :=
  ∀ n, P12644076560164629663.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P2530295788624299765

`A003415(A106114(n+1))-A368914(n+1)`
-/

namespace A368994.P2530295788624299765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A106114 (n + 1)).toNat - A368914 (n + 1)

end

end A368994.P2530295788624299765

namespace A368994

/-- `A003415(A106114(n+1))-A368914(n+1)` -/
def P2530295788624299765.Spec : Prop :=
  ∀ n, P2530295788624299765.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P17806114442800719356

`A092248(A224417(2*n+1))-A368914(n+1)`
-/

namespace A368994.P17806114442800719356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (A224417 (2 * n + 1)).toNat - A368914 (n + 1)

end

end A368994.P17806114442800719356

namespace A368994

/-- `A092248(A224417(2*n+1))-A368914(n+1)` -/
def P17806114442800719356.Spec : Prop :=
  ∀ n, P17806114442800719356.a n = A368994 (n + 1)

end A368994

/-! ## A368994.P17343789132165764274

`A000122(A224417(2*n+1)*A368914(n+1))`
-/

namespace A368994.P17343789132165764274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A224417 (2 * n + 1) * A368914 (n + 1)).toNat

end

end A368994.P17343789132165764274

namespace A368994

/-- `A000122(A224417(2*n+1)*A368914(n+1))` -/
def P17343789132165764274.Spec : Prop :=
  ∀ n, P17343789132165764274.a n = A368994 (n + 1)

end A368994

/-!
# A368995: Numbers k for which A342001(k) is a multiple of four.

The programs for A368995, there is no canonical definition to state claims against.
-/

/-! ## A368995.P18317462094273753149

`eq[1, A368994(n+1)]+1`
-/

namespace A368995.P18317462094273753149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368995.P18317462094273753149

/-! ## A368995.P1471518117122552119

`filter[A072442(n), A368994(#)]`
-/

namespace A368995.P1471518117122552119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P1471518117122552119

/-! ## A368995.P11545684947810029363

`filter[A077156(n), A368994(#)]`
-/

namespace A368995.P11545684947810029363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P11545684947810029363

/-! ## A368995.P14878655637532147958

`filter[A077157(n), A368994(#)]`
-/

namespace A368995.P14878655637532147958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P14878655637532147958

/-! ## A368995.P18068598914576424912

`filter[A089088(n), A368994(#)]`
-/

namespace A368995.P18068598914576424912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P18068598914576424912

/-! ## A368995.P11939549149929175309

`filter[A116966(n), A368994(#)]`
-/

namespace A368995.P11939549149929175309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P11939549149929175309

/-! ## A368995.P2816282900750981101

`filter[A003159(n+1), A368994(#)]`
-/

namespace A368995.P2816282900750981101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P2816282900750981101

/-! ## A368995.P13755312388856136185

`filter[A018252(n+1), A368994(#)]`
-/

namespace A368995.P13755312388856136185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P13755312388856136185

/-! ## A368995.P6048320000626512348

`filter[A026234(n+1), A368994(#)]`
-/

namespace A368995.P6048320000626512348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P6048320000626512348

/-! ## A368995.P17235398684437716356

`filter[A026239(n+1), A368994(#)]`
-/

namespace A368995.P17235398684437716356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A368995.P17235398684437716356

/-!
# A368996: Numbers k for which there is a prime p such that p^p divides A342001(k).

The programs for A368996, there is no canonical definition to state claims against.
-/

/-! ## A368996.P15981964903453508165

`eq[0, A368914(n+1)]+1`
-/

namespace A368996.P15981964903453508165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368996.P15981964903453508165

/-! ## A368996.P1954429334625014432

`∪[A368995(n+1), A369007(n+1)]`
-/

namespace A368996.P1954429334625014432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368996.P1954429334625014432

/-! ## A368996.P12575362651727684906

`comp[A000027(n+1)*A368914(n+1)]`
-/

namespace A368996.P12575362651727684906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A368914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A368996.P12575362651727684906

/-! ## A368996.P18110179179908272308

`lt[A368914(n+1), A177842(n)%2]+1`
-/

namespace A368996.P18110179179908272308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177842 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A368996.P18110179179908272308

/-! ## A368996.P14423992795353477334

`lt[A368914(n+1), A142020(n+1)%2]+1`
-/

namespace A368996.P14423992795353477334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142020 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A368996.P14423992795353477334

/-!
# A368997: a(n) = 1 if A342001(n) is even, otherwise 0.

The programs for A368997, the canonical program `A368997.P2323535588264354679` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368997 has offset 1).

The definition of A368997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368997.P6340265268069138897

`1-A342001(n+1)%2`
-/

namespace A368997.P6340265268069138897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A342001 (n + 1)) 2

end

end A368997.P6340265268069138897

namespace A368997

/-- `1-A342001(n+1)%2` -/
def P6340265268069138897.Spec : Prop :=
  ∀ n, P6340265268069138897.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P15528358996263001434

`A059841(A373145(n+1))`
-/

namespace A368997.P15528358996263001434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A373145 (n + 1)).toNat

end

end A368997.P15528358996263001434

namespace A368997

/-- `A059841(A373145(n+1))` -/
def P15528358996263001434.Spec : Prop :=
  ∀ n, P15528358996263001434.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P2323535588264354679

`A035263(n+1)*A358680(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A368997

/-- `A035263(n+1)*A358680(n+1)` -/
def P2323535588264354679.Spec : Prop :=
  ∀ n, P2323535588264354679.a n = A368997 (n + 1)

theorem P2323535588264354679.correct : P2323535588264354679.Spec := by
  intro n
  simp only [A368997, Nat.add_sub_cancel]

end A368997

/-! ## A368997.P4722570537928196332

`A059841(A003415(n+1)/A003557(n+1))`
-/

namespace A368997.P4722570537928196332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (SequenceMachineLib.roundAway ((A003415 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A368997.P4722570537928196332

namespace A368997

/-- `A059841(A003415(n+1)/A003557(n+1))` -/
def P4722570537928196332.Spec : Prop :=
  ∀ n, P4722570537928196332.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P9630130932320278843

`and(1, A373378(n+1)+1)`
-/

namespace A368997.P9630130932320278843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A373378 (n + 1) + 1)

end

end A368997.P9630130932320278843

namespace A368997

/-- `and(1, A373378(n+1)+1)` -/
def P9630130932320278843.Spec : Prop :=
  ∀ n, P9630130932320278843.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P12068344656891984281

`A358680(A038387(n+1))`
-/

namespace A368997.P12068344656891984281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A038387 (n + 1)).toNat

end

end A368997.P12068344656891984281

namespace A368997

/-- `A358680(A038387(n+1))` -/
def P12068344656891984281.Spec : Prop :=
  ∀ n, P12068344656891984281.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P3940111115122776830

`A358680(A066990(n+1))`
-/

namespace A368997.P3940111115122776830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A066990 (n + 1)).toNat

end

end A368997.P3940111115122776830

namespace A368997

/-- `A358680(A066990(n+1))` -/
def P3940111115122776830.Spec : Prop :=
  ∀ n, P3940111115122776830.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P10618237101392039252

`A059841(A373378(n+1))`
-/

namespace A368997.P10618237101392039252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A373378 (n + 1)).toNat

end

end A368997.P10618237101392039252

namespace A368997

/-- `A059841(A373378(n+1))` -/
def P10618237101392039252.Spec : Prop :=
  ∀ n, P10618237101392039252.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P617934398972249620

`A358680(A365296(n+1))`
-/

namespace A368997.P617934398972249620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A365296 (n + 1)).toNat

end

end A368997.P617934398972249620

namespace A368997

/-- `A358680(A365296(n+1))` -/
def P617934398972249620.Spec : Prop :=
  ∀ n, P617934398972249620.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P16251591438894469618

`A121262(2*A342001(n+1))`
-/

namespace A368997.P16251591438894469618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * A342001 (n + 1)).toNat

end

end A368997.P16251591438894469618

namespace A368997

/-- `A121262(2*A342001(n+1))` -/
def P16251591438894469618.Spec : Prop :=
  ∀ n, P16251591438894469618.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P4063707433967854429

`A353494(2*A342001(n+1))`
-/

namespace A368997.P4063707433967854429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (2 * A342001 (n + 1)).toNat

end

end A368997.P4063707433967854429

namespace A368997

/-- `A353494(2*A342001(n+1))` -/
def P4063707433967854429.Spec : Prop :=
  ∀ n, P4063707433967854429.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P6044299850068783628

`A358680(2*A342001(n+1))`
-/

namespace A368997.P6044299850068783628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (2 * A342001 (n + 1)).toNat

end

end A368997.P6044299850068783628

namespace A368997

/-- `A358680(2*A342001(n+1))` -/
def P6044299850068783628.Spec : Prop :=
  ∀ n, P6044299850068783628.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P17294760567561495543

`A358680(2*A373145(n+1))`
-/

namespace A368997.P17294760567561495543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (2 * A373145 (n + 1)).toNat

end

end A368997.P17294760567561495543

namespace A368997

/-- `A358680(2*A373145(n+1))` -/
def P17294760567561495543.Spec : Prop :=
  ∀ n, P17294760567561495543.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P8751877355625895935

`A353557(n+1)+A328981(n+1)`
-/

namespace A368997.P8751877355625895935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) + A328981 (n + 1)

end

end A368997.P8751877355625895935

namespace A368997

/-- `A353557(n+1)+A328981(n+1)` -/
def P8751877355625895935.Spec : Prop :=
  ∀ n, P8751877355625895935.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P13717724377244201502

`A035263(n+1)-A353558(n+1)`
-/

namespace A368997.P13717724377244201502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) - A353558 (n + 1)

end

end A368997.P13717724377244201502

namespace A368997

/-- `A035263(n+1)-A353558(n+1)` -/
def P13717724377244201502.Spec : Prop :=
  ∀ n, P13717724377244201502.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P12336585653478677364

`and(A035263(n+1), A318441(n+1))`
-/

namespace A368997.P12336585653478677364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A318441 (n + 1))

end

end A368997.P12336585653478677364

namespace A368997

/-- `and(A035263(n+1), A318441(n+1))` -/
def P12336585653478677364.Spec : Prop :=
  ∀ n, P12336585653478677364.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P18340355619215168370

`and(A035263(n+1), A332994(n+1))`
-/

namespace A368997.P18340355619215168370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A332994 (n + 1))

end

end A368997.P18340355619215168370

namespace A368997

/-- `and(A035263(n+1), A332994(n+1))` -/
def P18340355619215168370.Spec : Prop :=
  ∀ n, P18340355619215168370.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P1200873762659072939

`and(A035263(n+1), A348937(n+1))`
-/

namespace A368997.P1200873762659072939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A348937 (n + 1))

end

end A368997.P1200873762659072939

namespace A368997

/-- `and(A035263(n+1), A348937(n+1))` -/
def P1200873762659072939.Spec : Prop :=
  ∀ n, P1200873762659072939.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P6913915799659980823

`and(A035263(n+1), A378535(n+1))`
-/

namespace A368997.P6913915799659980823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A378535 (n + 1))

end

end A368997.P6913915799659980823

namespace A368997

/-- `and(A035263(n+1), A378535(n+1))` -/
def P6913915799659980823.Spec : Prop :=
  ∀ n, P6913915799659980823.a n = A368997 (n + 1)

end A368997

/-! ## A368997.P2494324366858384218

`xor(A353556(n+1), A356163(n+1))`
-/

namespace A368997.P2494324366858384218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A353556 (n + 1)) (A356163 (n + 1))

end

end A368997.P2494324366858384218

namespace A368997

/-- `xor(A353556(n+1), A356163(n+1))` -/
def P2494324366858384218.Spec : Prop :=
  ∀ n, P2494324366858384218.a n = A368997 (n + 1)

end A368997

/-!
# A368998: Numbers k such that A003415(k) and A276085(k) are both even, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function; Numbers k for which A342001(k) is even.

The programs for A368998, the canonical program `A368998.P17822232149440979523` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368998 has offset 1).

The definition of A368998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368998.P17822232149440979523

`eq[1, A368997(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A368998

/-- `eq[1, A368997(n+1)]+1` -/
def P17822232149440979523.Spec : Prop :=
  ∀ n, (P17822232149440979523.a n : ℤ) = A368998 (n + 1)

theorem P17822232149440979523.correct : P17822232149440979523.Spec := by
  intro n
  simp only [A368998, Nat.add_sub_cancel]

end A368998

/-! ## A368998.P460238124154981639

`∪[A046337(n+1), A108269(n+1)]`
-/

namespace A368998.P460238124154981639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368998.P460238124154981639

namespace A368998

/-- `∪[A046337(n+1), A108269(n+1)]` -/
def P460238124154981639.Spec : Prop :=
  ∀ n, (P460238124154981639.a n : ℤ) = A368998 (n + 1)

end A368998

/-! ## A368998.P1377303057369587849

`∪[A108269(n+1), A345452(n+1)]`
-/

namespace A368998.P1377303057369587849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368998.P1377303057369587849

namespace A368998

/-- `∪[A108269(n+1), A345452(n+1)]` -/
def P1377303057369587849.Spec : Prop :=
  ∀ n, (P1377303057369587849.a n : ℤ) = A368998 (n + 1)

end A368998

/-! ## A368998.P11111444030246037411

`∪[A108269(n+1), A369002(n+1)]`
-/

namespace A368998.P11111444030246037411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368998.P11111444030246037411

namespace A368998

/-- `∪[A108269(n+1), A369002(n+1)]` -/
def P11111444030246037411.Spec : Prop :=
  ∀ n, (P11111444030246037411.a n : ℤ) = A368998 (n + 1)

end A368998

/-! ## A368998.P4253309624743922923

`filter[A235992(n+2), A035263(#)]`
-/

namespace A368998.P4253309624743922923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A368998.P4253309624743922923

namespace A368998

/-- `filter[A235992(n+2), A035263(#)]` -/
def P4253309624743922923.Spec : Prop :=
  ∀ n, P4253309624743922923.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P8356893940858455112

`filter[A235992(n+2), A368997(#)]`
-/

namespace A368998.P8356893940858455112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P8356893940858455112

namespace A368998

/-- `filter[A235992(n+2), A368997(#)]` -/
def P8356893940858455112.Spec : Prop :=
  ∀ n, P8356893940858455112.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P2725710799673485702

`filter[A018252(n+1), A368997(#)]`
-/

namespace A368998.P2725710799673485702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P2725710799673485702

namespace A368998

/-- `filter[A018252(n+1), A368997(#)]` -/
def P2725710799673485702.Spec : Prop :=
  ∀ n, P2725710799673485702.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P4941459820447593493

`filter[A141468(n+2), A368997(#)]`
-/

namespace A368998.P4941459820447593493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P4941459820447593493

namespace A368998

/-- `filter[A141468(n+2), A368997(#)]` -/
def P4941459820447593493.Spec : Prop :=
  ∀ n, P4941459820447593493.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P8304969466474381627

`filter[A222307(2*n+1), A368997(#)]`
-/

namespace A368998.P8304969466474381627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P8304969466474381627

namespace A368998

/-- `filter[A222307(2*n+1), A368997(#)]` -/
def P8304969466474381627.Spec : Prop :=
  ∀ n, P8304969466474381627.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P12150231332654882159

`lt[A342001(n+1)%2+1, 2]+1`
-/

namespace A368998.P12150231332654882159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342001 (n + 1)) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A368998.P12150231332654882159

namespace A368998

/-- `lt[A342001(n+1)%2+1, 2]+1` -/
def P12150231332654882159.Spec : Prop :=
  ∀ n, (P12150231332654882159.a n : ℤ) = A368998 (n + 1)

end A368998

/-! ## A368998.P9476367168464252277

`filter[A003159(n+1), A358680(#)]`
-/

namespace A368998.P9476367168464252277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A368998.P9476367168464252277

namespace A368998

/-- `filter[A003159(n+1), A358680(#)]` -/
def P9476367168464252277.Spec : Prop :=
  ∀ n, P9476367168464252277.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P16190534773888282376

`filter[A003159(n+1), A368997(#)]`
-/

namespace A368998.P16190534773888282376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P16190534773888282376

namespace A368998

/-- `filter[A003159(n+1), A368997(#)]` -/
def P16190534773888282376.Spec : Prop :=
  ∀ n, P16190534773888282376.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P10317939289735139043

`∩[A003159(n+1), A235992(n+1)]`
-/

namespace A368998.P10317939289735139043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368998.P10317939289735139043

namespace A368998

/-- `∩[A003159(n+1), A235992(n+1)]` -/
def P10317939289735139043.Spec : Prop :=
  ∀ n, (P10317939289735139043.a n : ℤ) = A368998 (n + 1)

end A368998

/-! ## A368998.P8613619264568368473

`filter[A260401(n+1), A368997(#)]`
-/

namespace A368998.P8613619264568368473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P8613619264568368473

namespace A368998

/-- `filter[A260401(n+1), A368997(#)]` -/
def P8613619264568368473.Spec : Prop :=
  ∀ n, P8613619264568368473.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P2079084693383316797

`filter[A174891(n+1), A368997(#)]`
-/

namespace A368998.P2079084693383316797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P2079084693383316797

namespace A368998

/-- `filter[A174891(n+1), A368997(#)]` -/
def P2079084693383316797.Spec : Prop :=
  ∀ n, P2079084693383316797.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P5988224631855186473

`filter[A107750(n+1), A368997(#)]`
-/

namespace A368998.P5988224631855186473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P5988224631855186473

namespace A368998

/-- `filter[A107750(n+1), A368997(#)]` -/
def P5988224631855186473.Spec : Prop :=
  ∀ n, P5988224631855186473.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P16141440148460161712

`filter[A042965(n+2), A368997(#)]`
-/

namespace A368998.P16141440148460161712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P16141440148460161712

namespace A368998

/-- `filter[A042965(n+2), A368997(#)]` -/
def P16141440148460161712.Spec : Prop :=
  ∀ n, P16141440148460161712.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P17458432031428907947

`filter[A065090(n+1), A368997(#)]`
-/

namespace A368998.P17458432031428907947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P17458432031428907947

namespace A368998

/-- `filter[A065090(n+1), A368997(#)]` -/
def P17458432031428907947.Spec : Prop :=
  ∀ n, P17458432031428907947.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P14186287085026776592

`filter[A171581(n+1), A368997(#)]`
-/

namespace A368998.P14186287085026776592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P14186287085026776592

namespace A368998

/-- `filter[A171581(n+1), A368997(#)]` -/
def P14186287085026776592.Spec : Prop :=
  ∀ n, P14186287085026776592.a n = A368998 (n + 1)

end A368998

/-! ## A368998.P7425813095030879772

`filter[A338924(n+1), A368997(#)]`
-/

namespace A368998.P7425813095030879772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368998.P7425813095030879772

namespace A368998

/-- `filter[A338924(n+1), A368997(#)]` -/
def P7425813095030879772.Spec : Prop :=
  ∀ n, P7425813095030879772.a n = A368998 (n + 1)

end A368998

/-!
# A368999: Numbers k for which A342001(k) is odd.

The programs for A368999, the canonical program `A368999.P12334488890265234210` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368999 has offset 1).

The definition of A368999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368999.P12334488890265234210

`lt[A368997(n+1), 1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A368999

/-- `lt[A368997(n+1), 1]+1` -/
def P12334488890265234210.Spec : Prop :=
  ∀ n, (P12334488890265234210.a n : ℤ) = A368999 (n + 1)

theorem P12334488890265234210.correct : P12334488890265234210.Spec := by
  intro n
  simp only [A368999, Nat.add_sub_cancel]

end A368999

/-! ## A368999.P17822346716997713326

`comp[A368998(n+1)-1]+1`
-/

namespace A368999.P17822346716997713326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A368999.P17822346716997713326

namespace A368999

/-- `comp[A368998(n+1)-1]+1` -/
def P17822346716997713326.Spec : Prop :=
  ∀ n, (P17822346716997713326.a n : ℤ) = A368999 (n + 1)

end A368999

/-! ## A368999.P9360049803727283949

`∪[A036554(n+1), A067019(n+1)]`
-/

namespace A368999.P9360049803727283949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368999.P9360049803727283949

namespace A368999

/-- `∪[A036554(n+1), A067019(n+1)]` -/
def P9360049803727283949.Spec : Prop :=
  ∀ n, (P9360049803727283949.a n : ℤ) = A368999 (n + 1)

end A368999

/-! ## A368999.P6431862010982398694

`∪[A036554(n+1), A235991(n+1)]`
-/

namespace A368999.P6431862010982398694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368999.P6431862010982398694

namespace A368999

/-- `∪[A036554(n+1), A235991(n+1)]` -/
def P6431862010982398694.Spec : Prop :=
  ∀ n, (P6431862010982398694.a n : ℤ) = A368999 (n + 1)

end A368999

/-! ## A368999.P6674364929293193373

`∪[A036554(n+1), A359373(n+1)]`
-/

namespace A368999.P6674364929293193373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368999.P6674364929293193373

namespace A368999

/-- `∪[A036554(n+1), A359373(n+1)]` -/
def P6674364929293193373.Spec : Prop :=
  ∀ n, (P6674364929293193373.a n : ℤ) = A368999 (n + 1)

end A368999

/-! ## A368999.P2869233819521981929

`eq[1, gcd(2, A342001(n+1))]+1`
-/

namespace A368999.P2869233819521981929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A342001 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A368999.P2869233819521981929

namespace A368999

/-- `eq[1, gcd(2, A342001(n+1))]+1` -/
def P2869233819521981929.Spec : Prop :=
  ∀ n, (P2869233819521981929.a n : ℤ) = A368999 (n + 1)

end A368999

/-! ## A368999.P9403746315035541300

`filter[A369003(n+1), A359832(#)]`
-/

namespace A368999.P9403746315035541300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A368999.P9403746315035541300

namespace A368999

/-- `filter[A369003(n+1), A359832(#)]` -/
def P9403746315035541300.Spec : Prop :=
  ∀ n, P9403746315035541300.a n = A368999 (n + 1)

end A368999

/-! ## A368999.P773711635989450446

`∩[A359794(n+1), A369003(n+1)]`
-/

namespace A368999.P773711635989450446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368999.P773711635989450446

namespace A368999

/-- `∩[A359794(n+1), A369003(n+1)]` -/
def P773711635989450446.Spec : Prop :=
  ∀ n, (P773711635989450446.a n : ℤ) = A368999 (n + 1)

end A368999

