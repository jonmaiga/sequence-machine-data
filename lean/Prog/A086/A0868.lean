import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A086800: Triangle read by rows in which row n lists differences between prime(n) and prime(k) for 1 <= k <= n.

The programs for A086800, the canonical program `A086800.P19232803000022683` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086800 has offset 1).

The definition of A086800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086800.P19232803000022683

`A000040(row(n)+1)-A000040(col(n)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086800

/-- `A000040(row(n)+1)-A000040(col(n)+1)` -/
def P19232803000022683.Spec : Prop :=
  ∀ n, P19232803000022683.a n = A086800 (n + 1)

theorem P19232803000022683.correct : P19232803000022683.Spec := by
  intro n
  simp only [A086800, Nat.add_sub_cancel]

end A086800

/-! ## A086800.P3246403742653696987

`A033270(A158747(n))`
-/

namespace A086800.P3246403742653696987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A158747 n).toNat

end

end A086800.P3246403742653696987

namespace A086800

/-- `A033270(A158747(n))` -/
def P3246403742653696987.Spec : Prop :=
  ∀ n, P3246403742653696987.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P1738239651185027247

`A005145(n+1)-A037126(n+1)`
-/

namespace A086800.P1738239651185027247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A037126 (n + 1)

end

end A086800.P1738239651185027247

namespace A086800

/-- `A005145(n+1)-A037126(n+1)` -/
def P1738239651185027247.Spec : Prop :=
  ∀ n, P1738239651185027247.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P15685457343146793673

`2*A005145(n+1)-A065342(n+1)`
-/

namespace A086800.P15685457343146793673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005145 (n + 1) - A065342 (n + 1)

end

end A086800.P15685457343146793673

namespace A086800

/-- `2*A005145(n+1)-A065342(n+1)` -/
def P15685457343146793673.Spec : Prop :=
  ∀ n, P15685457343146793673.a n = A086800 (n + 1)

theorem P15685457343146793673.correct : P15685457343146793673.Spec := by
  intro n
  simp only [A086800, Nat.add_sub_cancel, A086800.P15685457343146793673.a, A086800.P19232803000022683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005145, A005145.P7903299518883907964.a, A065342, A065342.P17350315595011203306.a, A037126, A037126.P12409953000028740775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086800

/-! ## A086800.P131781027421169514

`A065342(n+1)-2*A037126(n+1)`
-/

namespace A086800.P131781027421169514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (n + 1) - 2 * A037126 (n + 1)

end

end A086800.P131781027421169514

namespace A086800

/-- `A065342(n+1)-2*A037126(n+1)` -/
def P131781027421169514.Spec : Prop :=
  ∀ n, P131781027421169514.a n = A086800 (n + 1)

theorem P131781027421169514.correct : P131781027421169514.Spec := by
  intro n
  simp only [A086800, Nat.add_sub_cancel, A086800.P131781027421169514.a, A086800.P19232803000022683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037126, A037126.P12409953000028740775.a, A065342, A065342.P17350315595011203306.a, A005145, A005145.P7903299518883907964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086800

/-! ## A086800.P6801690514773028632

`A051599(A057944(n))-A037126(n+1)`
-/

namespace A086800.P6801690514773028632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051599 (A057944 n).toNat - A037126 (n + 1)

end

end A086800.P6801690514773028632

namespace A086800

/-- `A051599(A057944(n))-A037126(n+1)` -/
def P6801690514773028632.Spec : Prop :=
  ∀ n, P6801690514773028632.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P10957766779233188153

`A005145(n+1)-A000040(A002260(n+1))`
-/

namespace A086800.P10957766779233188153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A000040 (A002260 (n + 1)).toNat

end

end A086800.P10957766779233188153

namespace A086800

/-- `A005145(n+1)-A000040(A002260(n+1))` -/
def P10957766779233188153.Spec : Prop :=
  ∀ n, P10957766779233188153.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P12438854447643113669

`A005145(n+1)-A000040(A002262(n)+1)`
-/

namespace A086800.P12438854447643113669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A000040 (A002262 n + 1).toNat

end

end A086800.P12438854447643113669

namespace A086800

/-- `A005145(n+1)-A000040(A002262(n)+1)` -/
def P12438854447643113669.Spec : Prop :=
  ∀ n, P12438854447643113669.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P11017731063187369408

`A000040(A002024(n+1))-A037126(n+1)`
-/

namespace A086800.P11017731063187369408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat - A037126 (n + 1)

end

end A086800.P11017731063187369408

namespace A086800

/-- `A000040(A002024(n+1))-A037126(n+1)` -/
def P11017731063187369408.Spec : Prop :=
  ∀ n, P11017731063187369408.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P4179908018763172555

`A026239(A111653(n+1))-A037126(n+1)`
-/

namespace A086800.P4179908018763172555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A111653 (n + 1)).toNat - A037126 (n + 1)

end

end A086800.P4179908018763172555

namespace A086800

/-- `A026239(A111653(n+1))-A037126(n+1)` -/
def P4179908018763172555.Spec : Prop :=
  ∀ n, P4179908018763172555.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P16775153333266962295

`A008578(A003057(n+2))-A037126(n+1)`
-/

namespace A086800.P16775153333266962295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A003057 (n + 2)).toNat - A037126 (n + 1)

end

end A086800.P16775153333266962295

namespace A086800

/-- `A008578(A003057(n+2))-A037126(n+1)` -/
def P16775153333266962295.Spec : Prop :=
  ∀ n, P16775153333266962295.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P9886428902878327676

`A067747(A111650(n+1)-1)-A037126(n+1)`
-/

namespace A086800.P9886428902878327676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A111650 (n + 1) - 1).toNat - A037126 (n + 1)

end

end A086800.P9886428902878327676

namespace A086800

/-- `A067747(A111650(n+1)-1)-A037126(n+1)` -/
def P9886428902878327676.Spec : Prop :=
  ∀ n, P9886428902878327676.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P13440903202467318524

`A000040(A003057(n+2)-1)-A037126(n+1)`
-/

namespace A086800.P13440903202467318524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2) - 1).toNat - A037126 (n + 1)

end

end A086800.P13440903202467318524

namespace A086800

/-- `A000040(A003057(n+2)-1)-A037126(n+1)` -/
def P13440903202467318524.Spec : Prop :=
  ∀ n, P13440903202467318524.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P12093491421143256953

`A000040(A002024(n+1))-A000040(A002260(n+1))`
-/

namespace A086800.P12093491421143256953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat - A000040 (A002260 (n + 1)).toNat

end

end A086800.P12093491421143256953

namespace A086800

/-- `A000040(A002024(n+1))-A000040(A002260(n+1))` -/
def P12093491421143256953.Spec : Prop :=
  ∀ n, P12093491421143256953.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P7033501208909476340

`A000040(A002024(n+1))-A000040(A002262(n)+1)`
-/

namespace A086800.P7033501208909476340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat - A000040 (A002262 n + 1).toNat

end

end A086800.P7033501208909476340

namespace A086800

/-- `A000040(A002024(n+1))-A000040(A002262(n)+1)` -/
def P7033501208909476340.Spec : Prop :=
  ∀ n, P7033501208909476340.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P16497528901191300105

`A000040(A003056(n)+1)-A000040(A002260(n+1))`
-/

namespace A086800.P16497528901191300105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003056 n + 1).toNat - A000040 (A002260 (n + 1)).toNat

end

end A086800.P16497528901191300105

namespace A086800

/-- `A000040(A003056(n)+1)-A000040(A002260(n+1))` -/
def P16497528901191300105.Spec : Prop :=
  ∀ n, P16497528901191300105.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P16662047447920942611

`A000040(A003056(n)+1)-A000040(A002262(n)+1)`
-/

namespace A086800.P16662047447920942611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003056 n + 1).toNat - A000040 (A002262 n + 1).toNat

end

end A086800.P16662047447920942611

namespace A086800

/-- `A000040(A003056(n)+1)-A000040(A002262(n)+1)` -/
def P16662047447920942611.Spec : Prop :=
  ∀ n, P16662047447920942611.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P5366793477702911380

`A037126(A127739(n+1))-A037126(n+1)`
-/

namespace A086800.P5366793477702911380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A127739 (n + 1)).toNat - A037126 (n + 1)

end

end A086800.P5366793477702911380

namespace A086800

/-- `A037126(A127739(n+1))-A037126(n+1)` -/
def P5366793477702911380.Spec : Prop :=
  ∀ n, P5366793477702911380.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P2421401000977367185

`A037126(A004736(n+1)+n)-A037126(n+1)`
-/

namespace A086800.P2421401000977367185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A004736 (n + 1) + (n : ℤ)).toNat - A037126 (n + 1)

end

end A086800.P2421401000977367185

namespace A086800

/-- `A037126(A004736(n+1)+n)-A037126(n+1)` -/
def P2421401000977367185.Spec : Prop :=
  ∀ n, P2421401000977367185.a n = A086800 (n + 1)

end A086800

/-! ## A086800.P12668981661765035081

`A006530(A077320(n+1))-A037126(n+1)`
-/

namespace A086800.P12668981661765035081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077320 (n + 1)).toNat - A037126 (n + 1)

end

end A086800.P12668981661765035081

namespace A086800

/-- `A006530(A077320(n+1))-A037126(n+1)` -/
def P12668981661765035081.Spec : Prop :=
  ∀ n, P12668981661765035081.a n = A086800 (n + 1)

end A086800

/-!
# A086801: a(n) = prime(n) - 3.

The programs for A086801, the canonical program `A086801.P17699144881820784956` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086801 has offset 1).

The definition of A086801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-3` (program `A086801.P17699144881820784956`, by `A086801.P17699144881820784956.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086801.P17699144881820784956

`A000040(n+1)-3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086801

/-- `A000040(n+1)-3` -/
def P17699144881820784956.Spec : Prop :=
  ∀ n, P17699144881820784956.a n = A086801 (n + 1)

theorem P17699144881820784956.correct : P17699144881820784956.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel]

end A086801

/-! ## A086801.P7118698000878110641

`p?[a(n-1)+2]-3` with `a(0)=2, a(1)=1`
-/

namespace A086801.P7118698000878110641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3

end

end A086801.P7118698000878110641

namespace A086801

/-- `p?[a(n-1)+2]-3` -/
def P7118698000878110641.Spec : Prop :=
  ∀ n, P7118698000878110641.a n = A086801 (n + 1)

theorem P7118698000878110641.correct : P7118698000878110641.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P11386914511039721002

`∑[A075526(n)]-2`
-/

namespace A086801.P11386914511039721002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A086801.P11386914511039721002

namespace A086801

/-- `∑[A075526(n)]-2` -/
def P11386914511039721002.Spec : Prop :=
  ∀ n, P11386914511039721002.a n = A086801 (n + 1)

end A086801

/-! ## A086801.P1672685418744435442

`Δ[A007504(n)]-3`
-/

namespace A086801.P1672685418744435442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A086801.P1672685418744435442

namespace A086801

/-- `Δ[A007504(n)]-3` -/
def P1672685418744435442.Spec : Prop :=
  ∀ n, P1672685418744435442.a n = A086801 (n + 1)

end A086801

/-! ## A086801.P3803482058543454179

`A040976(n+1)-1`
-/

namespace A086801.P3803482058543454179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 1

end

end A086801.P3803482058543454179

namespace A086801

/-- `A040976(n+1)-1` -/
def P3803482058543454179.Spec : Prop :=
  ∀ n, P3803482058543454179.a n = A086801 (n + 1)

theorem P3803482058543454179.correct : P3803482058543454179.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P3803482058543454179.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P17592595346940105360

`A006093(n+1)-2`
-/

namespace A086801.P17592595346940105360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 2

end

end A086801.P17592595346940105360

namespace A086801

/-- `A006093(n+1)-2` -/
def P17592595346940105360.Spec : Prop :=
  ∀ n, P17592595346940105360.a n = A086801 (n + 1)

theorem P17592595346940105360.correct : P17592595346940105360.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P17592595346940105360.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P11817822950730855635

`A008864(n+1)-4`
-/

namespace A086801.P11817822950730855635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 4

end

end A086801.P11817822950730855635

namespace A086801

/-- `A008864(n+1)-4` -/
def P11817822950730855635.Spec : Prop :=
  ∀ n, P11817822950730855635.a n = A086801 (n + 1)

theorem P11817822950730855635.correct : P11817822950730855635.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P11817822950730855635.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P11514918015006145786

`A028815(n+1)-4`
-/

namespace A086801.P11514918015006145786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - 4

end

end A086801.P11514918015006145786

namespace A086801

/-- `A028815(n+1)-4` -/
def P11514918015006145786.Spec : Prop :=
  ∀ n, P11514918015006145786.a n = A086801 (n + 1)

end A086801

/-! ## A086801.P3934372041228083601

`A052147(n+1)-5`
-/

namespace A086801.P3934372041228083601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 5

end

end A086801.P3934372041228083601

namespace A086801

/-- `A052147(n+1)-5` -/
def P3934372041228083601.Spec : Prop :=
  ∀ n, P3934372041228083601.a n = A086801 (n + 1)

theorem P3934372041228083601.correct : P3934372041228083601.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P3934372041228083601.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P9547412520314274888

`A113935(n+1)-6`
-/

namespace A086801.P9547412520314274888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 6

end

end A086801.P9547412520314274888

namespace A086801

/-- `A113935(n+1)-6` -/
def P9547412520314274888.Spec : Prop :=
  ∀ n, P9547412520314274888.a n = A086801 (n + 1)

theorem P9547412520314274888.correct : P9547412520314274888.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P9547412520314274888.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P11564285551623025157

`sqrt(A005722(n+1))-2`
-/

namespace A086801.P11564285551623025157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) - 2

end

end A086801.P11564285551623025157

namespace A086801

/-- `sqrt(A005722(n+1))-2` -/
def P11564285551623025157.Spec : Prop :=
  ∀ n, P11564285551623025157.a n = (A086801 (n + 1) : ℝ)

end A086801

/-! ## A086801.P13393121222794021675

`sqrt(A001248(n+1))-3`
-/

namespace A086801.P13393121222794021675
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - 3

end

end A086801.P13393121222794021675

namespace A086801

/-- `sqrt(A001248(n+1))-3` -/
def P13393121222794021675.Spec : Prop :=
  ∀ n, P13393121222794021675.a n = (A086801 (n + 1) : ℝ)

end A086801

/-! ## A086801.P5385474707721051898

`A037168(n+1)/2-2`
-/

namespace A086801.P5385474707721051898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) : ℚ) / 2 - 2

end

end A086801.P5385474707721051898

namespace A086801

/-- `A037168(n+1)/2-2` -/
def P5385474707721051898.Spec : Prop :=
  ∀ n, P5385474707721051898.a n = (A086801 (n + 1) : ℚ)

theorem P5385474707721051898.correct : P5385474707721051898.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P5385474707721051898.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P17614818958462420769

`A001748(n+1)/3-3`
-/

namespace A086801.P17614818958462420769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 - 3

end

end A086801.P17614818958462420769

namespace A086801

/-- `A001748(n+1)/3-3` -/
def P17614818958462420769.Spec : Prop :=
  ∀ n, P17614818958462420769.a n = (A086801 (n + 1) : ℚ)

theorem P17614818958462420769.correct : P17614818958462420769.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P17614818958462420769.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P8599433261467623339

`A001749(n+1)/4-3`
-/

namespace A086801.P8599433261467623339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4 - 3

end

end A086801.P8599433261467623339

namespace A086801

/-- `A001749(n+1)/4-3` -/
def P8599433261467623339.Spec : Prop :=
  ∀ n, P8599433261467623339.a n = (A086801 (n + 1) : ℚ)

theorem P8599433261467623339.correct : P8599433261467623339.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P8599433261467623339.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P253549709929177100

`A001750(n+1)/5-3`
-/

namespace A086801.P253549709929177100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001750 (n + 1) : ℚ) / 5 - 3

end

end A086801.P253549709929177100

namespace A086801

/-- `A001750(n+1)/5-3` -/
def P253549709929177100.Spec : Prop :=
  ∀ n, P253549709929177100.a n = (A086801 (n + 1) : ℚ)

theorem P253549709929177100.correct : P253549709929177100.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P253549709929177100.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001750, A001750.P4133817528224649628.f1, A001750.P4133817528224649628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P10737524110073223777

`A065890(n+1)-1+n`
-/

namespace A086801.P10737524110073223777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) - 1 + (n : ℤ)

end

end A086801.P10737524110073223777

namespace A086801

/-- `A065890(n+1)-1+n` -/
def P10737524110073223777.Spec : Prop :=
  ∀ n, P10737524110073223777.a n = A086801 (n + 1)

theorem P10737524110073223777.correct : P10737524110073223777.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P10737524110073223777.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065890, A065890.P15936493256530540462.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P5128068634846030608

`A014689(n+1)-2+n`
-/

namespace A086801.P5128068634846030608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 2 + (n : ℤ)

end

end A086801.P5128068634846030608

namespace A086801

/-- `A014689(n+1)-2+n` -/
def P5128068634846030608.Spec : Prop :=
  ∀ n, P5128068634846030608.a n = A086801 (n + 1)

theorem P5128068634846030608.correct : P5128068634846030608.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P5128068634846030608.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P3418485368621583710

`A014692(n+1)-3+n`
-/

namespace A086801.P3418485368621583710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 3 + (n : ℤ)

end

end A086801.P3418485368621583710

namespace A086801

/-- `A014692(n+1)-3+n` -/
def P3418485368621583710.Spec : Prop :=
  ∀ n, P3418485368621583710.a n = A086801 (n + 1)

theorem P3418485368621583710.correct : P3418485368621583710.Spec := by
  intro n
  simp only [A086801, Nat.add_sub_cancel, A086801.P3418485368621583710.a, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086801

/-! ## A086801.P13971944596403282278

`A014688(n+1)-(n+4)`
-/

namespace A086801.P13971944596403282278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 4 : ℤ)

end

end A086801.P13971944596403282278

namespace A086801

/-- `A014688(n+1)-(n+4)` -/
def P13971944596403282278.Spec : Prop :=
  ∀ n, P13971944596403282278.a n = A086801 (n + 1)

end A086801

/-!
# A086802: Triangle read by rows in which row n lists (prime(n)-prime(k))/2 for 2 <= k <= n.

The programs for A086802, there is no canonical definition to state claims against.
-/

/-! ## A086802.P16513546809847423370

`A086800(comp[∑[n]]+1)/2`
-/

namespace A086802.P16513546809847423370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086800 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A086802.P16513546809847423370

/-! ## A086802.P6294551421583212424

`A142150(A204890(n+2))`
-/

namespace A086802.P6294551421583212424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A204890 (n + 2)).toNat

end

end A086802.P6294551421583212424

/-! ## A086802.P17171519014241142652

`A004526(A086800(comp[∑[n]]+1))`
-/

namespace A086802.P17171519014241142652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086800 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A086802.P17171519014241142652

/-! ## A086802.P7483627528443097164

`A389809(n+1)-A065305(n+2)`
-/

namespace A086802.P7483627528443097164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) - A065305 (n + 2)

end

end A086802.P7483627528443097164

/-! ## A086802.P2860497560188729981

`floor(A086800(A014132(n+1)+1)/2)`
-/

namespace A086802.P2860497560188729981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086800 (A014132 (n + 1) + 1).toNat : ℚ) / 2⌋

end

end A086802.P2860497560188729981

/-! ## A086802.P8604442328598302423

`floor(A086800(A007401(n+1)+2)/2)`
-/

namespace A086802.P8604442328598302423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086800 (A007401 (n + 1) + 2).toNat : ℚ) / 2⌋

end

end A086802.P8604442328598302423

/-! ## A086802.P10896436173565589762

`A000040(comp[∑[n]]-n)-A065305(n+2)`
-/

namespace A086802.P10896436173565589762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A065305 (n + 2)

end

end A086802.P10896436173565589762

/-! ## A086802.P6803560674564443950

`A005145(∑[A035214(n)])-A065305(n+2)`
-/

namespace A086802.P6803560674564443950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A065305 (n + 2)

end

end A086802.P6803560674564443950

/-! ## A086802.P9360292993463607453

`A205558(n+1)-A205558(A127739(n+1))`
-/

namespace A086802.P9360292993463607453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (n + 1) - A205558 (A127739 (n + 1)).toNat

end

end A086802.P9360292993463607453

/-! ## A086802.P10200077838081969448

`A005145(A014132(n+1))-A065305(n+2)`
-/

namespace A086802.P10200077838081969448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A014132 (n + 1)).toNat - A065305 (n + 2)

end

end A086802.P10200077838081969448

/-!
# A086803: a(n) = Product_{i=2..n} (prime(n+1)-prime(i)).

The programs for A086803, there is no canonical definition to state claims against.
-/

/-! ## A086803.P14694107500250327133

`A080497(p?[Δ[n²]])`
-/

namespace A086803.P14694107500250327133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080497 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086803.P14694107500250327133

/-! ## A086803.P9676763824875967357

`record[∏{p}[n, A080497(#)]]`
-/

namespace A086803.P9676763824875967357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A080497 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086803.P9676763824875967357

/-! ## A086803.P14233721088518453282

`A080497(A045344(n+1))`
-/

namespace A086803.P14233721088518453282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080497 (A045344 (n + 1)).toNat

end

end A086803.P14233721088518453282

/-! ## A086803.P9512737774953033192

`A080497(A065091(n+1))`
-/

namespace A086803.P9512737774953033192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080497 (A065091 (n + 1)).toNat

end

end A086803.P9512737774953033192

/-! ## A086803.P1329882397647605244

`A080497(A140475(n+1))`
-/

namespace A086803.P1329882397647605244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080497 (A140475 (n + 1)).toNat

end

end A086803.P1329882397647605244

/-!
# A086804: a(0)=0; for n > 0, a(n) = (n+1)^(n-2)*2^(n^2).

The programs for A086804, there is no canonical definition to state claims against.
-/

/-! ## A086804.P2300951060779057850

`lcm(A011592(n), A317450(n+1))`
-/

namespace A086804.P2300951060779057850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011592 n) (A317450 (n + 1))

end

end A086804.P2300951060779057850

/-! ## A086804.P2217828633092085025

`abs(A317450(n+1))*A057427(n)`
-/

namespace A086804.P2217828633092085025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317450 (n + 1)| * A057427 n

end

end A086804.P2217828633092085025

/-! ## A086804.P16344881182710686309

`lcm(A011592(n)², A317450(A348553(n)))`
-/

namespace A086804.P16344881182710686309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011592 n ^ 2) (A317450 (A348553 n).toNat)

end

end A086804.P16344881182710686309

/-! ## A086804.P14584808534533030524

`lcm(A131577(n), A317450(A000027(n+1)))`
-/

namespace A086804.P14584808534533030524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131577 n) (A317450 (A000027 (n + 1)).toNat)

end

end A086804.P14584808534533030524

/-! ## A086804.P16937920070556890187

`lcm(A062157(n)*A317450(n+1), A062157(n))`
-/

namespace A086804.P16937920070556890187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n * A317450 (n + 1)) (A062157 n)

end

end A086804.P16937920070556890187

/-!
# A086808: Sum of the entries in the character table of the alternating group A_n.

The programs for A086808, there is no canonical definition to state claims against.
-/

/-! ## A086808.P702356539073033257

`A196376(A000984(n))-A005590(n)`
-/

namespace A086808.P702356539073033257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196376 (A000984 n).toNat - A005590 n

end

end A086808.P702356539073033257

/-! ## A086808.P750759022085940951

`A185712(A126931(n+1))`
-/

namespace A086808.P750759022085940951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A126931 (n + 1)).toNat

end

end A086808.P750759022085940951

/-! ## A086808.P17449873966478896200

`A372511(A269506(n+1))`
-/

namespace A086808.P17449873966478896200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372511 (A269506 (n + 1)).toNat

end

end A086808.P17449873966478896200

/-!
# A086809: Indices k where A057176(k) = 2.

The programs for A086809, there is no canonical definition to state claims against.
-/

/-! ## A086809.P7256457640580935375

`eq[2, A057176(n)]`
-/

namespace A086809.P7256457640580935375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086809.P7256457640580935375

/-! ## A086809.P2506406823290331329

`A333222(record[p?[A209140(n+1)]])`
-/

namespace A086809.P2506406823290331329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086809.P2506406823290331329

/-!
# A086810: Triangle read by rows: T(n, k) = binomial(n-1, k-1) * binomial(n + k, k) / (n + 1) for k > 0 and T(n, 0) = 0^n.

The programs for A086810, the canonical program `A086810.P1302734509594098919` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086810 has offset 0).

The definition of A086810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086810.P1302734509594098919

`A088617(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086810

/-- `A088617(n-1)-a(n-1)` -/
def P1302734509594098919.Spec : Prop :=
  ∀ n, P1302734509594098919.a n = A086810 n

theorem P1302734509594098919.correct : P1302734509594098919.Spec := by
  intro n
  simp only [A086810]

end A086810

/-! ## A086810.P8833169311413394559

`A088617(n)/A001263(n+1)*A090181(n)`
-/

namespace A086810.P8833169311413394559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088617 n : ℚ) / (A001263 (n + 1) : ℚ) * (A090181 n : ℚ)

end

end A086810.P8833169311413394559

namespace A086810

/-- `A088617(n)/A001263(n+1)*A090181(n)` -/
def P8833169311413394559.Spec : Prop :=
  ∀ n, P8833169311413394559.a n = (A086810 n : ℚ)

end A086810

/-! ## A086810.P4065056028630794771

`A133336(A061579(n))`
-/

namespace A086810.P4065056028630794771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (A061579 n).toNat

end

end A086810.P4065056028630794771

namespace A086810

/-- `A133336(A061579(n))` -/
def P4065056028630794771.Spec : Prop :=
  ∀ n, P4065056028630794771.a n = A086810 n

end A086810

/-! ## A086810.P6424860856345299694

`A133336(A114327(n)+n)`
-/

namespace A086810.P6424860856345299694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (A114327 n + (n : ℤ)).toNat

end

end A086810.P6424860856345299694

namespace A086810

/-- `A133336(A114327(n)+n)` -/
def P6424860856345299694.Spec : Prop :=
  ∀ n, P6424860856345299694.a n = A086810 n

end A086810

/-! ## A086810.P7569562317878355308

`A133336(A038722(n+1)-1)`
-/

namespace A086810.P7569562317878355308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (A038722 (n + 1) - 1).toNat

end

end A086810.P7569562317878355308

namespace A086810

/-- `A133336(A038722(n+1)-1)` -/
def P7569562317878355308.Spec : Prop :=
  ∀ n, P7569562317878355308.a n = A086810 n

end A086810

/-! ## A086810.P10021146871205520930

`A386789(n)/A002024(n+1)`
-/

namespace A086810.P10021146871205520930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386789 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A086810.P10021146871205520930

namespace A086810

/-- `A386789(n)/A002024(n+1)` -/
def P10021146871205520930.Spec : Prop :=
  ∀ n, P10021146871205520930.a n = (A086810 n : ℚ)

end A086810

/-! ## A086810.P8569815037958232836

`A357367(n)/A130493(n+1)`
-/

namespace A086810.P8569815037958232836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357367 n : ℚ) / (A130493 (n + 1) : ℚ)

end

end A086810.P8569815037958232836

namespace A086810

/-- `A357367(n)/A130493(n+1)` -/
def P8569815037958232836.Spec : Prop :=
  ∀ n, P8569815037958232836.a n = (A086810 n : ℚ)

end A086810

/-! ## A086810.P8913764287167951321

`A386789(n)/A130822(n+1)`
-/

namespace A086810.P8913764287167951321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386789 n : ℚ) / (A130822 (n + 1) : ℚ)

end

end A086810.P8913764287167951321

namespace A086810

/-- `A386789(n)/A130822(n+1)` -/
def P8913764287167951321.Spec : Prop :=
  ∀ n, P8913764287167951321.a n = (A086810 n : ℚ)

end A086810

/-!
# A086811: Average (scaled by a certain explicit factor) over all integers k of a_k(n), the n-th coefficient of the k-th cyclotomic polynomial.

The programs for A086811, there is no canonical definition to state claims against.
-/

/-! ## A086811.P15903899921753229995

`A344956(a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A086811.P15903899921753229995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A344956 (a (n - 1)).toNat

end

end A086811.P15903899921753229995

/-! ## A086811.P15717599374255548771

`A257839(A126362(n))`
-/

namespace A086811.P15717599374255548771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A126362 n).toNat

end

end A086811.P15717599374255548771

/-!
# A086812: Number of symmetric invertible n X n matrices over GF(2).

The programs for A086812, there is no canonical definition to state claims against.
-/

/-! ## A086812.P15890210528941533865

`∏[∑[2^n]+n%2]`
-/

namespace A086812.P15890210528941533865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086812.P15890210528941533865

/-! ## A086812.P5205087025907396855

`∏[2^(n+1)-char[2*n]]`
-/

namespace A086812.P5205087025907396855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086812.P5205087025907396855

/-! ## A086812.P12849123642494911080

`(∑[2^n]-(and(n, -2)-n))*a(n-1)` with `a(0)=1`
-/

namespace A086812.P12849123642494911080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Int.land (n : ℤ) (-2) - (n : ℤ))) * a (n - 1)

end

end A086812.P12849123642494911080

/-! ## A086812.P17020501159546971231

`abs(∏[record[A103316(n)]])`
-/

namespace A086812.P17020501159546971231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A086812.P17020501159546971231

/-! ## A086812.P314411497688999299

`abs(∏[Δ[A112884(n+1)]])`
-/

namespace A086812.P314411497688999299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112884 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A086812.P314411497688999299

/-!
# A086813: a(1)=1 then a(n)= (1/2) *(5*a(n-1)+1) if a(n-1) is odd, a(n)=3/2*a(n-1) otherwise.

The programs for A086813, the canonical program `A086813.P1482014871251574478` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086813 has offset 1).

The definition of A086813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086813.P1482014871251574478

`ceil(a(n-1)/2)+lcm(2, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086813

/-- `ceil(a(n-1)/2)+lcm(2, a(n-1))` -/
def P1482014871251574478.Spec : Prop :=
  ∀ n, P1482014871251574478.a n = A086813 (n + 1)

theorem P1482014871251574478.correct : P1482014871251574478.Spec := by
  intro n
  simp only [A086813, Nat.add_sub_cancel]

end A086813

/-! ## A086813.P15745279534295002290

`A014682(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A086813.P15745279534295002290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014682 (a (n - 1)).toNat + a (n - 1)

end

end A086813.P15745279534295002290

namespace A086813

/-- `A014682(a(n-1))+a(n-1)` -/
def P15745279534295002290.Spec : Prop :=
  ∀ n, P15745279534295002290.a n = A086813 (n + 1)

end A086813

/-! ## A086813.P6064211969341517564

`A113497(a(n-1)+2)-3` with `a(0)=1`
-/

namespace A086813.P6064211969341517564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113497 (a (n - 1) + 2).toNat - 3

end

end A086813.P6064211969341517564

namespace A086813

/-- `A113497(a(n-1)+2)-3` -/
def P6064211969341517564.Spec : Prop :=
  ∀ n, P6064211969341517564.a n = A086813 (n + 1)

end A086813

/-! ## A086813.P10246930018663486453

`A001057(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A086813.P10246930018663486453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001057 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A086813.P10246930018663486453

namespace A086813

/-- `A001057(a(n-1))+2*a(n-1)` -/
def P10246930018663486453.Spec : Prop :=
  ∀ n, P10246930018663486453.a n = A086813 (n + 1)

end A086813

/-! ## A086813.P1985707984353110082

`2*a(n-1)-A130472(a(n-1))` with `a(0)=1`
-/

namespace A086813.P1985707984353110082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A130472 (a (n - 1)).toNat

end

end A086813.P1985707984353110082

namespace A086813

/-- `2*a(n-1)-A130472(a(n-1))` -/
def P1985707984353110082.Spec : Prop :=
  ∀ n, P1985707984353110082.a n = A086813 (n + 1)

end A086813

/-!
# A086814: a(n) = ceiling( (1 + n + 2*n^2 + 4*n^3)/(1 + 2*n + n^2) ).

The programs for A086814, the canonical program `A086814.P14341533488929118432` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086814 has offset 1).

The definition of A086814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((1+n+1+2*(n+1)²+4*(n+1)^3)/(1+2*(n+1)+(n+1)²))` (program `A086814.P14341533488929118432`, by `A086814.P14341533488929118432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086814.P14341533488929118432

`ceil((1+n+1+2*(n+1)²+4*(n+1)^3)/(1+2*(n+1)+(n+1)²))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086814

/-- `ceil((1+n+1+2*(n+1)²+4*(n+1)^3)/(1+2*(n+1)+(n+1)²))` -/
def P14341533488929118432.Spec : Prop :=
  ∀ n, P14341533488929118432.a n = A086814 (n + 1)

theorem P14341533488929118432.correct : P14341533488929118432.Spec := by
  intro n
  simp only [A086814, Nat.add_sub_cancel]

end A086814

/-!
# A086815: a(n)=(n-1)*n^(2*n).

The programs for A086815, the canonical program `A086815.P18331496425929572721` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086815 has offset 1).

The definition of A086815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)^(2*(n+1))` (program `A086815.P18331496425929572721`, by `A086815.P18331496425929572721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086815.P18331496425929572721

`n*(n+1)^(2*(n+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086815

/-- `n*(n+1)^(2*(n+1))` -/
def P18331496425929572721.Spec : Prop :=
  ∀ n, (P18331496425929572721.a n : ℤ) = A086815 (n + 1)

theorem P18331496425929572721.correct : P18331496425929572721.Spec := by
  intro n
  simp only [A086815, Nat.add_sub_cancel]

end A086815

/-! ## A086815.P761762696731703242

`lcm(n, ((n+1)^(n+1))²)`
-/

namespace A086815.P761762696731703242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (((n + 1) ^ (n + 1)) ^ 2)

end

end A086815.P761762696731703242

namespace A086815

/-- `lcm(n, ((n+1)^(n+1))²)` -/
def P761762696731703242.Spec : Prop :=
  ∀ n, (P761762696731703242.a n : ℤ) = A086815 (n + 1)

end A086815

/-! ## A086815.P9053370558673637027

`floor(n/acot(((n+1)^(n+1))²))`
-/

namespace A086815.P9053370558673637027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (((n + 1) ^ (n + 1)) ^ 2 : ℝ)⌋

end

end A086815.P9053370558673637027

namespace A086815

/-- `floor(n/acot(((n+1)^(n+1))²))` -/
def P9053370558673637027.Spec : Prop :=
  ∀ n, P9053370558673637027.a n = A086815 (n + 1)

end A086815

/-! ## A086815.P16519887906580626628

`round(n/acot(((n+1)^(n+1))²))`
-/

namespace A086815.P16519887906580626628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (((n + 1) ^ (n + 1)) ^ 2 : ℝ))

end

end A086815.P16519887906580626628

namespace A086815

/-- `round(n/acot(((n+1)^(n+1))²))` -/
def P16519887906580626628.Spec : Prop :=
  ∀ n, P16519887906580626628.a n = A086815 (n + 1)

end A086815

/-! ## A086815.P17113806533420379886

`record[(n-3)*floor(((n-2)^(n-2))²)]`
-/

namespace A086815.P17113806533420379886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * ⌊(((n : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086815.P17113806533420379886

namespace A086815

/-- `record[(n-3)*floor(((n-2)^(n-2))²)]` -/
def P17113806533420379886.Spec : Prop :=
  ∀ n, P17113806533420379886.a n = A086815 (n + 1)

end A086815

/-!
# A086816: Smaller member of a twin prime pair with a triangular sum.

The programs for A086816, there is no canonical definition to state claims against.
-/

/-! ## A086816.P1696566523295703398

`6*A166119(n+1)-1`
-/

namespace A086816.P1696566523295703398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A166119 (n + 1) - 1

end

end A086816.P1696566523295703398

/-! ## A086816.P8194864263728312838

`A165966(n+1)/2-1`
-/

namespace A086816.P8194864263728312838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165966 (n + 1) : ℚ) / 2 - 1

end

end A086816.P8194864263728312838

/-! ## A086816.P2378082212422795828

`A000217(A105174(n+1))/2-1`
-/

namespace A086816.P2378082212422795828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A105174 (n + 1)).toNat : ℚ) / 2 - 1

end

end A086816.P2378082212422795828

/-! ## A086816.P9460513363719691345

`A033999(2*n+1)+A000217(A105174(n+1))/2`
-/

namespace A086816.P9460513363719691345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) : ℚ) + (A000217 (A105174 (n + 1)).toNat : ℚ) / 2

end

end A086816.P9460513363719691345

/-! ## A086816.P16854364350720834194

`A008683(A040061(n+1))+A000217(A105174(n+1))/2`
-/

namespace A086816.P16854364350720834194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A040061 (n + 1)).toNat : ℚ) + (A000217 (A105174 (n + 1)).toNat : ℚ) / 2

end

end A086816.P16854364350720834194

/-! ## A086816.P2725684176601813531

`A008683(A052180(n+2))+A000217(A105174(n+1))/2`
-/

namespace A086816.P2725684176601813531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A052180 (n + 2)).toNat : ℚ) + (A000217 (A105174 (n + 1)).toNat : ℚ) / 2

end

end A086816.P2725684176601813531

/-! ## A086816.P18315106279130891355

`A176126(A105174(n+1))`
-/

namespace A086816.P18315106279130891355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176126 (A105174 (n + 1)).toNat

end

end A086816.P18315106279130891355

/-! ## A086816.P563366789452564372

`∩[A138985(n+1), A225077(n+1)]`
-/

namespace A086816.P563366789452564372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086816.P563366789452564372

/-! ## A086816.P3480303410139306991

`∩[A186351(n+1), A225077(n+1)]`
-/

namespace A086816.P3480303410139306991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086816.P3480303410139306991

/-! ## A086816.P12128943141719226121

`∩[A225077(n+1), A391537(n+1)]`
-/

namespace A086816.P12128943141719226121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086816.P12128943141719226121

/-! ## A086816.P258898643940245932

`floor(A000096(A105174(n+1)-1)/2)`
-/

namespace A086816.P258898643940245932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000096 (A105174 (n + 1) - 1).toNat : ℚ) / 2⌋

end

end A086816.P258898643940245932

/-!
# A086817: a(n) is the number of terms in the expansion of (x+y-z)*(x^2+y^2-z^2)*(x^3+y^3-z^3)*...*(x^n+y^n-z^n).

The programs for A086817, there is no canonical definition to state claims against.
-/

/-! ## A086817.P17919976864567700450

`A060247(A090400(n+3)-A062773(2*n+3))`
-/

namespace A086817.P17919976864567700450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060247 (A090400 (n + 3) - A062773 (2 * n + 3)).toNat

end

end A086817.P17919976864567700450

/-!
# A086818: a(1) = 111, a(n) = the smallest squarefree number > a(n-1) which contains all the digits of a(n-1).

The programs for A086818, there is no canonical definition to state claims against.
-/

/-! ## A086818.P1203217868840610512

`record[A077812(A014311(n+1))]`
-/

namespace A086818.P1203217868840610512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077812 (A014311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086818.P1203217868840610512

/-! ## A086818.P14465748007977792772

`∩[A038445(n+1), A077813(n+1)]`
-/

namespace A086818.P14465748007977792772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086818.P14465748007977792772

/-! ## A086818.P1086937972700070229

`∩[A052217(n+1), A077813(n+1)]`
-/

namespace A086818.P1086937972700070229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086818.P1086937972700070229

/-! ## A086818.P17073080002763343234

`∩[A077813(n+1), A262712(n+1)]`
-/

namespace A086818.P17073080002763343234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086818.P17073080002763343234

/-! ## A086818.P18412418850640627386

`∩[A077813(n+1), A290842(n+1)]`
-/

namespace A086818.P18412418850640627386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086818.P18412418850640627386

/-!
# A086820: Continued fraction expansion of Lochs constant.

The programs for A086820, there is no canonical definition to state claims against.
-/

/-! ## A086820.P9660581098910917808

`A062543(abs(1-n))%(n+1)²²`
-/

namespace A086820.P9660581098910917808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062543 |1 - (n : ℤ)|.toNat) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A086820.P9660581098910917808

/-! ## A086820.P17847599443368482339

`A057427(n)*A062543(abs(1-n))`
-/

namespace A086820.P17847599443368482339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A062543 |1 - (n : ℤ)|.toNat

end

end A086820.P17847599443368482339

/-! ## A086820.P12920373923365028545

`char[A344180(n)]*A062543(abs(1-n))`
-/

namespace A086820.P12920373923365028545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A062543 |1 - (n : ℤ)|.toNat

end

end A086820.P12920373923365028545

/-! ## A086820.P1679345181619940677

`log2(A036453(n+1))*A062543(abs(1-n))`
-/

namespace A086820.P1679345181619940677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A036453 (n + 1) : ℝ) * (A062543 |1 - (n : ℤ)|.toNat : ℝ)

end

end A086820.P1679345181619940677

/-! ## A086820.P9925375841622816106

`char[A003963(n+1)]*A062543(abs(1-n))`
-/

namespace A086820.P9925375841622816106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A062543 |1 - (n : ℤ)|.toNat

end

end A086820.P9925375841622816106

/-! ## A086820.P7544206330988312775

`char[A161908(n+1)]*A062543(abs(1-n))`
-/

namespace A086820.P7544206330988312775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A062543 |1 - (n : ℤ)|.toNat

end

end A086820.P7544206330988312775

/-! ## A086820.P1724144483988265838

`A062543(n-A057427(n))-floor(1/(n+1))`
-/

namespace A086820.P1724144483988265838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062543 ((n : ℤ) - A057427 n).toNat - ⌊1 / (n + 1 : ℚ)⌋

end

end A086820.P1724144483988265838

/-! ## A086820.P11506757904606313035

`A057979(A001316(n))*A062543(abs(1-n))`
-/

namespace A086820.P11506757904606313035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A001316 n).toNat * A062543 |1 - (n : ℤ)|.toNat

end

end A086820.P11506757904606313035

/-! ## A086820.P18055392722010136829

`char[A003188(n+1)]*A062543(n-A057427(n))`
-/

namespace A086820.P18055392722010136829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A062543 ((n : ℤ) - A057427 n).toNat

end

end A086820.P18055392722010136829

/-!
# A086822: a(n) = floor((6*n^0+5*n^1+4*n^2+3*n^3) / (1*n^0+1*n^1+1*n^2)).

The programs for A086822, the canonical program `A086822.P379118430902955516` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086822 has offset 1).

The definition of A086822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086822.P379118430902955516

`2*a(n-1)-a(n-2)` with `a(0)=6, a(1)=8, a(2)=10, a(3)=13`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086822

/-- `2*a(n-1)-a(n-2)` -/
def P379118430902955516.Spec : Prop :=
  ∀ n, P379118430902955516.a n = A086822 (n + 1)

theorem P379118430902955516.correct : P379118430902955516.Spec := by
  intro n
  simp only [A086822, Nat.add_sub_cancel]

end A086822

/-!
# A086823: Coefficient of x^2 in the n-th cyclotomic polynomial. (The same as the coefficient of x^(phi(n)-2) ).

The programs for A086823, the canonical program `A086823.P4348796408001696709` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086823 has offset 1).

The definition of A086823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086823.P4348796408001696709

`ceil(-(A086831(n+1)/2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086823

/-- `ceil(-(A086831(n+1)/2))` -/
def P4348796408001696709.Spec : Prop :=
  ∀ n, P4348796408001696709.a n = A086823 (n + 1)

theorem P4348796408001696709.correct : P4348796408001696709.Spec := by
  intro n
  simp only [A086823, Nat.add_sub_cancel]

end A086823

/-! ## A086823.P13984407880450399271

`A008683(abs(or(8, A067856(n+1))))`
-/

namespace A086823.P13984407880450399271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |Int.lor 8 (A067856 (n + 1))|.toNat

end

end A086823.P13984407880450399271

namespace A086823

/-- `A008683(abs(or(8, A067856(n+1))))` -/
def P13984407880450399271.Spec : Prop :=
  ∀ n, P13984407880450399271.a n = A086823 (n + 1)

end A086823

/-! ## A086823.P3785049018416196492

`A353629(n+1)-A359591(n+1)`
-/

namespace A086823.P3785049018416196492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (n + 1) - A359591 (n + 1)

end

end A086823.P3785049018416196492

namespace A086823

/-- `A353629(n+1)-A359591(n+1)` -/
def P3785049018416196492.Spec : Prop :=
  ∀ n, P3785049018416196492.a n = A086823 (n + 1)

end A086823

/-! ## A086823.P14945832988524236373

`(A008966(n+1)-A086831(n+1))/2`
-/

namespace A086823.P14945832988524236373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008966 (n + 1) - A086831 (n + 1) : ℚ) / 2

end

end A086823.P14945832988524236373

namespace A086823

/-- `(A008966(n+1)-A086831(n+1))/2` -/
def P14945832988524236373.Spec : Prop :=
  ∀ n, P14945832988524236373.a n = (A086823 (n + 1) : ℚ)

end A086823

/-! ## A086823.P13291182792814967473

`(A008683(n+1)²-A086831(n+1))/2`
-/

namespace A086823.P13291182792814967473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) ^ 2 - A086831 (n + 1) : ℚ) / 2

end

end A086823.P13291182792814967473

namespace A086823

/-- `(A008683(n+1)²-A086831(n+1))/2` -/
def P13291182792814967473.Spec : Prop :=
  ∀ n, P13291182792814967473.a n = (A086823 (n + 1) : ℚ)

end A086823

/-! ## A086823.P10042754711454024694

`A132380(A266072(n)-A067856(n+1))`
-/

namespace A086823.P10042754711454024694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A266072 n - A067856 (n + 1)).toNat

end

end A086823.P10042754711454024694

namespace A086823

/-- `A132380(A266072(n)-A067856(n+1))` -/
def P10042754711454024694.Spec : Prop :=
  ∀ n, P10042754711454024694.a n = A086823 (n + 1)

end A086823

/-! ## A086823.P7871285982672196564

`A132380(A067856(n+1)²-A067856(n+1))`
-/

namespace A086823.P7871285982672196564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A067856 (n + 1) ^ 2 - A067856 (n + 1)).toNat

end

end A086823.P7871285982672196564

namespace A086823

/-- `A132380(A067856(n+1)²-A067856(n+1))` -/
def P7871285982672196564.Spec : Prop :=
  ∀ n, P7871285982672196564.a n = A086823 (n + 1)

end A086823

/-! ## A086823.P14037430208300902503

`A132380((A067856(n+1)-1)*A067856(n+1))`
-/

namespace A086823.P14037430208300902503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 ((A067856 (n + 1) - 1) * A067856 (n + 1)).toNat

end

end A086823.P14037430208300902503

namespace A086823

/-- `A132380((A067856(n+1)-1)*A067856(n+1))` -/
def P14037430208300902503.Spec : Prop :=
  ∀ n, P14037430208300902503.a n = A086823 (n + 1)

end A086823

/-!
# A086824: Least positive k such that k! >= n^k.

The programs for A086824, there is no canonical definition to state claims against.
-/

/-! ## A086824.P11029310314162045060

`A065027(n-char[1])`
-/

namespace A086824.P11029310314162045060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A086824.P11029310314162045060

/-! ## A086824.P3722950002072882568

`A159075(n)+A065027(n)`
-/

namespace A086824.P3722950002072882568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A065027 n

end

end A086824.P3722950002072882568

/-! ## A086824.P3714338557001499878

`A065027(n)-A063524(n)`
-/

namespace A086824.P3714338557001499878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 n - A063524 n

end

end A086824.P3714338557001499878

/-! ## A086824.P13306817744984355955

`A065027(n)/A373565(n)`
-/

namespace A086824.P13306817744984355955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065027 n : ℚ) / (A373565 n : ℚ)

end

end A086824.P13306817744984355955

/-! ## A086824.P3500063846065806065

`gcd(A065027(n), A169585(n))`
-/

namespace A086824.P3500063846065806065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065027 n) (A169585 n)

end

end A086824.P3500063846065806065

/-! ## A086824.P3080037204916458160

`round(A065027(n)/A141044(n))`
-/

namespace A086824.P3080037204916458160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065027 n : ℚ) / (A141044 n : ℚ))

end

end A086824.P3080037204916458160

/-! ## A086824.P17073063673830311501

`A065027(n)-A000007(A004442(n))`
-/

namespace A086824.P17073063673830311501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 n - A000007 (A004442 n).toNat

end

end A086824.P17073063673830311501

/-! ## A086824.P17268479625384682357

`A065027(n)-A000007(A123108(n))`
-/

namespace A086824.P17268479625384682357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 n - A000007 (A123108 n).toNat

end

end A086824.P17268479625384682357

/-! ## A086824.P4474726844249551442

`A065027(A028310(n))/A141044(n)`
-/

namespace A086824.P4474726844249551442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065027 (A028310 n).toNat : ℚ) / (A141044 n : ℚ)

end

end A086824.P4474726844249551442

/-! ## A086824.P5420191135081454491

`A065027(n)/A065027(n*A063524(n))`
-/

namespace A086824.P5420191135081454491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065027 n : ℚ) / (A065027 ((n : ℤ) * A063524 n).toNat : ℚ)

end

end A086824.P5420191135081454491

/-! ## A086824.P6406551692186485016

`A171526(A065027(n))`
-/

namespace A086824.P6406551692186485016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A065027 n).toNat

end

end A086824.P6406551692186485016

/-! ## A086824.P3767522241966750594

`A065027(n)-A010054(A283262(n+1))`
-/

namespace A086824.P3767522241966750594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 n - A010054 (A283262 (n + 1)).toNat

end

end A086824.P3767522241966750594

/-!
# A086826: Number of nonsplittable links (prime or composite) with n crossings.

The programs for A086826, there is no canonical definition to state claims against.
-/

/-! ## A086826.P4236586159808577221

`A008616(A143608(n))`
-/

namespace A086826.P4236586159808577221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A143608 n).toNat

end

end A086826.P4236586159808577221

/-! ## A086826.P4976993328776238202

`A025800(A191660(n))`
-/

namespace A086826.P4976993328776238202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025800 (A191660 n).toNat

end

end A086826.P4976993328776238202

/-! ## A086826.P17102162509702971987

`A340401(A192478(n+1))`
-/

namespace A086826.P17102162509702971987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (A192478 (n + 1)).toNat

end

end A086826.P17102162509702971987

/-! ## A086826.P13930441134431440986

`A025866(2*A191660(n))`
-/

namespace A086826.P13930441134431440986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025866 (2 * A191660 n).toNat

end

end A086826.P13930441134431440986

/-! ## A086826.P312849828703459304

`A165190(2*A143608(n))`
-/

namespace A086826.P312849828703459304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (2 * A143608 n).toNat

end

end A086826.P312849828703459304

/-!
# A086827: Smaller member of a twin prime pair such that the sum sets a record for number of prime divisors (counted with multiplicity).

The programs for A086827, there is no canonical definition to state claims against.
-/

/-! ## A086827.P16114638570030815595

`A001359(A131559(n+1))`
-/

namespace A086827.P16114638570030815595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A131559 (n + 1)).toNat

end

end A086827.P16114638570030815595

/-! ## A086827.P16945951778016693168

`p?[A164291(n+2)%A164291(n+3)]`
-/

namespace A086827.P16945951778016693168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164291 (n + 2)) (A164291 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086827.P16945951778016693168

/-! ## A086827.P16014144956660009964

`A014574(A131559(n+1))-A007318(∑[n])`
-/

namespace A086827.P16014144956660009964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A131559 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086827.P16014144956660009964

/-!
# A086828: a(1) = 0, a(2) = 1, a(3) = 1, a(4) = 7; thereafter, a(n) = a(n-1) + (n-1)*a(n-2).

The programs for A086828, the canonical program `A086828.P18109315317456048292` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086828 has offset 1).

The definition of A086828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+n*a(n-2)` (program `A086828.P18109315317456048292`, by `A086828.P18109315317456048292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086828.P18109315317456048292

`a(n-1)+n*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086828

/-- `a(n-1)+n*a(n-2)` -/
def P18109315317456048292.Spec : Prop :=
  ∀ n, (P18109315317456048292.a n : ℤ) = A086828 (n + 1)

theorem P18109315317456048292.correct : P18109315317456048292.Spec := by
  intro n
  simp only [A086828, Nat.add_sub_cancel]

end A086828

/-! ## A086828.P9333698209052188134

`A088018((n+1)²/∏{p}[n+1, #]*A255126(2*(n+1)))`
-/

namespace A086828.P9333698209052188134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088018 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A255126 (2 * (n + 1)) : ℚ))).toNat

end

end A086828.P9333698209052188134

namespace A086828

/-- `A088018((n+1)²/∏{p}[n+1, #]*A255126(2*(n+1)))` -/
def P9333698209052188134.Spec : Prop :=
  ∀ n, P9333698209052188134.a n = A086828 (n + 1)

end A086828

/-! ## A086828.P3744022204619069552

`A138364(n)+A091009(A002110(n))`
-/

namespace A086828.P3744022204619069552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n + A091009 (A002110 n).toNat

end

end A086828.P3744022204619069552

namespace A086828

/-- `A138364(n)+A091009(A002110(n))` -/
def P3744022204619069552.Spec : Prop :=
  ∀ n, P3744022204619069552.a n = A086828 (n + 1)

end A086828

/-!
# A086829: 

The programs for A086829, there is no canonical definition to state claims against.
-/

/-! ## A086829.P9759668972091515439

`ceil((n+1)²!/8)`
-/

namespace A086829.P9759668972091515439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial ((n + 1) ^ 2) : ℚ) / 8⌉

end

end A086829.P9759668972091515439

/-! ## A086829.P15843505132638824924

`lcm(8, (n+1)²!)/8`
-/

namespace A086829.P15843505132638824924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 (Nat.factorial ((n + 1) ^ 2)) : ℚ) / 8

end

end A086829.P15843505132638824924

/-!
# A086830: Orders of the non-Abelian groups in sequence A086792.

The programs for A086830, there is no canonical definition to state claims against.
-/

/-! ## A086830.P13339058959793615719

`A086792(comp[n!-n])`
-/

namespace A086830.P13339058959793615719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086792 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A086830.P13339058959793615719

/-!
# A086831: Ramanujan sum c_n(2).

The programs for A086831, the canonical program `A086831.P11312860387243571074` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086831 has offset 1).

The definition of A086831 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086831.P11312860387243571074

`A000010(n+1)*A008683((n+1)/gcd(n+1, 2))/A000010((n+1)/gcd(n+1, 2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086831

/-- `A000010(n+1)*A008683((n+1)/gcd(n+1, 2))/A000010((n+1)/gcd(n+1, 2))` -/
def P11312860387243571074.Spec : Prop :=
  ∀ n, P11312860387243571074.a n = (A086831 (n + 1) : ℚ)

end A086831

/-! ## A086831.P14393767268712914213

`A157658(n+1)-A373926(n+1)`
-/

namespace A086831.P14393767268712914213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1) - A373926 (n + 1)

end

end A086831.P14393767268712914213

namespace A086831

/-- `A157658(n+1)-A373926(n+1)` -/
def P14393767268712914213.Spec : Prop :=
  ∀ n, P14393767268712914213.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P1713321585704232596

`A067856(n+1)*A189021(n+1)`
-/

namespace A086831.P1713321585704232596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1) * A189021 (n + 1)

end

end A086831.P1713321585704232596

namespace A086831

/-- `A067856(n+1)*A189021(n+1)` -/
def P1713321585704232596.Spec : Prop :=
  ∀ n, P1713321585704232596.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P7808162443230124036

`A085384(n+1)*A189021(n+1)`
-/

namespace A086831.P7808162443230124036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (n + 1) * A189021 (n + 1)

end

end A086831.P7808162443230124036

namespace A086831

/-- `A085384(n+1)*A189021(n+1)` -/
def P7808162443230124036.Spec : Prop :=
  ∀ n, P7808162443230124036.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P10825084922445779871

`A085384(2*(n+1))/A000034(n)`
-/

namespace A086831.P10825084922445779871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085384 (2 * (n + 1)) : ℚ) / (A000034 n : ℚ)

end

end A086831.P10825084922445779871

namespace A086831

/-- `A085384(2*(n+1))/A000034(n)` -/
def P10825084922445779871.Spec : Prop :=
  ∀ n, P10825084922445779871.a n = (A086831 (n + 1) : ℚ)

end A086831

/-! ## A086831.P6416091004121360460

`2*A359591(n+1)-A008683(n+1)`
-/

namespace A086831.P6416091004121360460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359591 (n + 1) - A008683 (n + 1)

end

end A086831.P6416091004121360460

namespace A086831

/-- `2*A359591(n+1)-A008683(n+1)` -/
def P6416091004121360460.Spec : Prop :=
  ∀ n, P6416091004121360460.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P10270303633357035969

`A008683(gcd(n+1, ∑[n]))*A000188(n+1)`
-/

namespace A086831.P10270303633357035969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)) * A000188 (n + 1)

end

end A086831.P10270303633357035969

namespace A086831

/-- `A008683(gcd(n+1, ∑[n]))*A000188(n+1)` -/
def P10270303633357035969.Spec : Prop :=
  ∀ n, P10270303633357035969.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P3994498330315022349

`∑{d}[n+1, A022998(#)*A046692((n+1)/#)]`
-/

namespace A086831.P3994498330315022349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A022998 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086831.P3994498330315022349

namespace A086831

/-- `∑{d}[n+1, A022998(#)*A046692((n+1)/#)]` -/
def P3994498330315022349.Spec : Prop :=
  ∀ n, P3994498330315022349.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P9845542069774206866

`∑{d}[n+1, A055615(#)*A345082((n+1)/#)]`
-/

namespace A086831.P9845542069774206866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A345082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086831.P9845542069774206866

namespace A086831

/-- `∑{d}[n+1, A055615(#)*A345082((n+1)/#)]` -/
def P9845542069774206866.Spec : Prop :=
  ∀ n, P9845542069774206866.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P14237071834054696325

`(A085384(2*(n+1))-A008683(2*(n+1)))/2`
-/

namespace A086831.P14237071834054696325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085384 (2 * (n + 1)) - A008683 (2 * (n + 1)) : ℚ) / 2

end

end A086831.P14237071834054696325

namespace A086831

/-- `(A085384(2*(n+1))-A008683(2*(n+1)))/2` -/
def P14237071834054696325.Spec : Prop :=
  ∀ n, P14237071834054696325.a n = (A086831 (n + 1) : ℚ)

end A086831

/-! ## A086831.P7506013639067775001

`∑{d}[n+1, A007427(#)*A010684((n+1)/#-1)]`
-/

namespace A086831.P7506013639067775001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A010684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A086831.P7506013639067775001

namespace A086831

/-- `∑{d}[n+1, A007427(#)*A010684((n+1)/#-1)]` -/
def P7506013639067775001.Spec : Prop :=
  ∀ n, P7506013639067775001.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P3351750611106845563

`∑{d}[n+1, A008683(#)*A130706((n+1)/#-1)]`
-/

namespace A086831.P3351750611106845563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A086831.P3351750611106845563

namespace A086831

/-- `∑{d}[n+1, A008683(#)*A130706((n+1)/#-1)]` -/
def P3351750611106845563.Spec : Prop :=
  ∀ n, P3351750611106845563.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P6876382795844826561

`∑{d}[n+1, A092673(#)*A127802((n+1)/#-1)]`
-/

namespace A086831.P6876382795844826561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A127802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A086831.P6876382795844826561

namespace A086831

/-- `∑{d}[n+1, A092673(#)*A127802((n+1)/#-1)]` -/
def P6876382795844826561.Spec : Prop :=
  ∀ n, P6876382795844826561.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P14325101797515969766

`A092149(A001511(n+1))*A092152(n+1)`
-/

namespace A086831.P14325101797515969766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092149 (A001511 (n + 1)).toNat * A092152 (n + 1)

end

end A086831.P14325101797515969766

namespace A086831

/-- `A092149(A001511(n+1))*A092152(n+1)` -/
def P14325101797515969766.Spec : Prop :=
  ∀ n, P14325101797515969766.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P3387743038583781938

`(A046660(n+1)+1)*A008683(A252463(n+1))`
-/

namespace A086831.P3387743038583781938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046660 (n + 1) + 1) * A008683 (A252463 (n + 1)).toNat

end

end A086831.P3387743038583781938

namespace A086831

/-- `(A046660(n+1)+1)*A008683(A252463(n+1))` -/
def P3387743038583781938.Spec : Prop :=
  ∀ n, P3387743038583781938.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P2585541805649910202

`A008683(n+1)+A008683(n+1)-A361019(n+1)`
-/

namespace A086831.P2585541805649910202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A008683 (n + 1) - A361019 (n + 1))

end

end A086831.P2585541805649910202

namespace A086831

/-- `A008683(n+1)+A008683(n+1)-A361019(n+1)` -/
def P2585541805649910202.Spec : Prop :=
  ∀ n, P2585541805649910202.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P17510112273676529710

`∑{d}[n+1, A046692(#)*A257088((n+1)/#)]`
-/

namespace A086831.P17510112273676529710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A257088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086831.P17510112273676529710

namespace A086831

/-- `∑{d}[n+1, A046692(#)*A257088((n+1)/#)]` -/
def P17510112273676529710.Spec : Prop :=
  ∀ n, P17510112273676529710.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P9996882263164430724

`A008683(A060819(2*(n+1)))*A000189(A000189(2*(n+1)))`
-/

namespace A086831.P9996882263164430724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060819 (2 * (n + 1))).toNat * A000189 (A000189 (2 * (n + 1))).toNat

end

end A086831.P9996882263164430724

namespace A086831

/-- `A008683(A060819(2*(n+1)))*A000189(A000189(2*(n+1)))` -/
def P9996882263164430724.Spec : Prop :=
  ∀ n, P9996882263164430724.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P2491780335222262733

`A008683(A060819(2*(n+1)))*A000190(A000190(2*(n+1)))`
-/

namespace A086831.P2491780335222262733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060819 (2 * (n + 1))).toNat * A000190 (A000190 (2 * (n + 1))).toNat

end

end A086831.P2491780335222262733

namespace A086831

/-- `A008683(A060819(2*(n+1)))*A000190(A000190(2*(n+1)))` -/
def P2491780335222262733.Spec : Prop :=
  ∀ n, P2491780335222262733.a n = A086831 (n + 1)

end A086831

/-! ## A086831.P4337046464335408243

`A008683(A060819(2*(n+1)))*A003557(A003557(2*(n+1)))`
-/

namespace A086831.P4337046464335408243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060819 (2 * (n + 1))).toNat * A003557 (A003557 (2 * (n + 1))).toNat

end

end A086831.P4337046464335408243

namespace A086831

/-- `A008683(A060819(2*(n+1)))*A003557(A003557(2*(n+1)))` -/
def P4337046464335408243.Spec : Prop :=
  ∀ n, P4337046464335408243.a n = A086831 (n + 1)

end A086831

/-!
# A086832: Number of ways to tile an n X n board having a black border with the following 1 X 1 tiles: bbbb, bbww, wbbw, bwwb, wwbb, where the colors are read clockwise around each tile.

The programs for A086832, there is no canonical definition to state claims against.
-/

/-! ## A086832.P15418869155991579130

`A220614(∑[4*n]+1)`
-/

namespace A086832.P15418869155991579130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086832.P15418869155991579130

/-! ## A086832.P14126638388439078554

`record[A220614(Δ[A235355(n)])]`
-/

namespace A086832.P14126638388439078554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086832.P14126638388439078554

/-! ## A086832.P5665993558881540665

`A220614(A001844(n))+char[11]`
-/

namespace A086832.P5665993558881540665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086832.P5665993558881540665

/-! ## A086832.P494786734413305315

`record[A003982(n)*A220614(n+1)]`
-/

namespace A086832.P494786734413305315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A220614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086832.P494786734413305315

/-! ## A086832.P11685450784114181223

`record[root(A220614(n+1), A331886(n))]`
-/

namespace A086832.P11685450784114181223
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220614 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086832.P11685450784114181223

/-!
# A086833: Minimum number of different addends occurring in any shortest addition chain of Brauer type for a given n, or 0 if n has no shortest addition chain of Brauer type.

The programs for A086833, there is no canonical definition to state claims against.
-/

/-! ## A086833.P17537476262436428171

`A054725(n+1)+val(A245618(A245640(n+1)), 7)`
-/

namespace A086833.P17537476262436428171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1) + (SequenceMachineLib.valuation (A245618 (A245640 (n + 1)).toNat).toNat 7 : ℤ)

end

end A086833.P17537476262436428171

/-! ## A086833.P5369309068343530696

`A064415(n+1)+A076142(n+1)^A297026(n+1)`
-/

namespace A086833.P5369309068343530696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064415 (n + 1) : ℚ) + (A076142 (n + 1) : ℚ) ^ (A297026 (n + 1) : ℤ)

end

end A086833.P5369309068343530696

/-! ## A086833.P11353412262080304527

`A054725(n+1)+floor(A141574(2*n+1)/A141552(n+1))`
-/

namespace A086833.P11353412262080304527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1) + ⌊(A141574 (2 * n + 1) : ℚ) / (A141552 (n + 1) : ℚ)⌋

end

end A086833.P11353412262080304527

/-! ## A086833.P17304734797501434313

`A005245(n+1)-A003313(n+1)%A088263(n+1)`
-/

namespace A086833.P17304734797501434313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (n + 1) - Int.tmod (A003313 (n + 1)) (A088263 (n + 1))

end

end A086833.P17304734797501434313

/-! ## A086833.P16854544393202298408

`or(A054725(n+1), A258822(A286880(2*n+3)))`
-/

namespace A086833.P16854544393202298408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054725 (n + 1)) (A258822 (A286880 (2 * n + 3)).toNat)

end

end A086833.P16854544393202298408

/-!
# A086834: Smallest prime that is the smallest of at least two consecutive primes with sum=n; a(n)=0 if no consecutive primes with sum=n exist.

The programs for A086834, there is no canonical definition to state claims against.
-/

/-! ## A086834.P7839251086045264731

`A271419(A147955(A248670(n+1)%A005408(n)))`
-/

namespace A086834.P7839251086045264731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (A147955 (Int.tmod (A248670 (n + 1)) (A005408 n)).toNat).toNat

end

end A086834.P7839251086045264731

/-! ## A086834.P16538256870187981468

`A294185(A048673(n+1)^A029274(A080842(n+1)))`
-/

namespace A086834.P16538256870187981468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (SequenceMachineLib.roundAway ((A048673 (n + 1) : ℚ) ^ (A029274 (A080842 (n + 1)).toNat : ℤ))).toNat

end

end A086834.P16538256870187981468

/-! ## A086834.P7728042565536871188

`A142150(A274112(A281499(n))+2)`
-/

namespace A086834.P7728042565536871188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A274112 (A281499 n).toNat + 2).toNat

end

end A086834.P7728042565536871188

/-! ## A086834.P17471989736721824280

`A001222(A192652(n+3)^A084143(n+1))`
-/

namespace A086834.P17471989736721824280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A192652 (n + 3) : ℚ) ^ (A084143 (n + 1) : ℤ))).toNat

end

end A086834.P17471989736721824280

/-!
# A086836: On a 3 X 3 board, number of distinct positions of n digits (modulo rotation/reflection).

The programs for A086836, there is no canonical definition to state claims against.
-/

/-! ## A086836.P8866837151232657900

`A087074(n+9)`
-/

namespace A086836.P8866837151232657900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087074 (n + 9)

end

end A086836.P8866837151232657900

/-!
# A086837: Brilliant Sarrus numbers.

The programs for A086837, there is no canonical definition to state claims against.
-/

/-! ## A086837.P2183597034961317381

`∩[A001567(n+1), A078972(n+1)]`
-/

namespace A086837.P2183597034961317381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086837.P2183597034961317381

/-!
# A086838: Indices k where A057176(k) = 4.

The programs for A086838, there is no canonical definition to state claims against.
-/

/-! ## A086838.P7417042784999223912

`eq[4, A057176(n)]`
-/

namespace A086838.P7417042784999223912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086838.P7417042784999223912

/-!
# A086839: Number of steps needed to reverse a pattern of length 2*n of cellular automaton Rule 90.

The programs for A086839, there is no canonical definition to state claims against.
-/

/-! ## A086839.P11030261100362036925

`A160657(n+1)/2`
-/

namespace A086839.P11030261100362036925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160657 (n + 1) : ℚ) / 2

end

end A086839.P11030261100362036925

/-! ## A086839.P834515334404494759

`A268754(2*(n+1))/2`
-/

namespace A086839.P834515334404494759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268754 (2 * (n + 1)) : ℚ) / 2

end

end A086839.P834515334404494759

/-! ## A086839.P1274476230911786628

`ceil(A268754(A051755(n+2))/2)`
-/

namespace A086839.P1274476230911786628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268754 (A051755 (n + 2)).toNat : ℚ) / 2⌉

end

end A086839.P1274476230911786628

/-! ## A086839.P6169550553206523245

`(A268754(A051755(n+2))+A000007(n))/2`
-/

namespace A086839.P6169550553206523245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268754 (A051755 (n + 2)).toNat + A000007 n : ℚ) / 2

end

end A086839.P6169550553206523245

/-!
# A086841: a(n) = a((a(n-2))*mod(n,2)+a(n-1)*(1-mod(n,2))) + a((n - a(n-2))*mod(n,2)+(n-a(n-1))*(1-mod(n,2))).

The programs for A086841, there is no canonical definition to state claims against.
-/

/-! ## A086841.P7325943800858559976

`or(A004001(n+1), A010055(A000125(n+3)))`
-/

namespace A086841.P7325943800858559976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004001 (n + 1)) (A010055 (A000125 (n + 3)).toNat)

end

end A086841.P7325943800858559976

/-! ## A086841.P5117629849289872296

`A025468(A047754(n+1))+A004001(n+1)`
-/

namespace A086841.P5117629849289872296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A047754 (n + 1)).toNat + A004001 (n + 1)

end

end A086841.P5117629849289872296

/-! ## A086841.P14572508118259476803

`A185284(A039641(n+1))+A004001(n+1)`
-/

namespace A086841.P14572508118259476803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A039641 (n + 1)).toNat + A004001 (n + 1)

end

end A086841.P14572508118259476803

/-! ## A086841.P15090095681268377648

`A004001(n+1)-A121373(A317186(3*n+2))`
-/

namespace A086841.P15090095681268377648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A121373 (A317186 (3 * n + 2)).toNat

end

end A086841.P15090095681268377648

/-!
# A086842: Number of n-node prime P5-free chordal graphs which are not split.

The programs for A086842, there is no canonical definition to state claims against.
-/

/-! ## A086842.P9910930492301643434

`A049783(abs(1-n)!)`
-/

namespace A086842.P9910930492301643434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 (Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A086842.P9910930492301643434

/-! ## A086842.P16974377398907299528

`A049783(A273694(n))`
-/

namespace A086842.P16974377398907299528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 (A273694 n).toNat

end

end A086842.P16974377398907299528

/-! ## A086842.P15001191912895695516

`A212219(A153900(n))`
-/

namespace A086842.P15001191912895695516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212219 (A153900 n).toNat

end

end A086842.P15001191912895695516

/-! ## A086842.P18347047665297920069

`A238793(A239553(n))`
-/

namespace A086842.P18347047665297920069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238793 (A239553 n).toNat

end

end A086842.P18347047665297920069

/-! ## A086842.P6956049737865152789

`A358474(A217282(n))`
-/

namespace A086842.P6956049737865152789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358474 (A217282 n).toNat

end

end A086842.P6956049737865152789

/-!
# A086843: Odd numbers m such that the sequence defined by b(1) = m; for k>1, b(k) = floor(phi*b(k-1)), where phi = (1 + sqrt(5))/2, contains only odd numbers.

The programs for A086843, there is no canonical definition to state claims against.
-/

/-! ## A086843.P7243977010928835576

`comp[lcm(n, gcd(2, floor(n/ϕ)))]`
-/

namespace A086843.P7243977010928835576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Int.gcd 2 ⌊(n : ℝ) / Real.goldenRatio⌋)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A086843.P7243977010928835576

/-! ## A086843.P15057325658455002680

`lt[0, (n*floor(ϕ*n))%2]`
-/

namespace A086843.P15057325658455002680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ⌊Real.goldenRatio * (n : ℝ)⌋) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A086843.P15057325658455002680

/-! ## A086843.P7730690287063458079

`eq[1, (n*ceil(n/ϕ))%2]`
-/

namespace A086843.P7730690287063458079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086843.P7730690287063458079

/-! ## A086843.P1016643138716913629

`eq[1, and(1, n*ceil(n/ϕ))]`
-/

namespace A086843.P1016643138716913629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086843.P1016643138716913629

/-! ## A086843.P13591637939516195521

`lt[floor(n/ϕ)%2, and(1, n)]`
-/

namespace A086843.P13591637939516195521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) / Real.goldenRatio⌋ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A086843.P13591637939516195521

/-! ## A086843.P8387603885699705735

`eq[1, gcd(4, and(n, floor(ϕ*n)))]`
-/

namespace A086843.P8387603885699705735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (Int.land (n : ℤ) ⌊Real.goldenRatio * (n : ℝ)⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086843.P8387603885699705735

/-! ## A086843.P7628084561521555500

`2*A387349(n+1)-1`
-/

namespace A086843.P7628084561521555500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A387349 (n + 1) - 1

end

end A086843.P7628084561521555500

/-! ## A086843.P18120495415134179931

`filter[2*n+1, A085002(#)]`
-/

namespace A086843.P18120495415134179931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085002 (f1 j) = 1) n)

end

end A086843.P18120495415134179931

/-! ## A086843.P12368904389276655315

`eq[n%2, A000034(floor(n/ϕ))]`
-/

namespace A086843.P12368904389276655315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086843.P12368904389276655315

/-! ## A086843.P8746187298579931513

`eq[and(1, n), A040001(floor(ϕ*n))]`
-/

namespace A086843.P8746187298579931513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086843.P8746187298579931513

/-!
# A086844: Odd numbers m such that the sequence defined by b(1) = m; for k>1, b(k) = floor((1+sqrt(3))*b(k-1)) contains only odd numbers.

The programs for A086844, there is no canonical definition to state claims against.
-/

/-! ## A086844.P6452379075854815709

`lt[floor(n*sqrt(3))%2, n%2]`
-/

namespace A086844.P6452379075854815709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A086844.P6452379075854815709

/-! ## A086844.P4825608828334644947

`lt[(-1)^n, ((-1)^n)^ceil(n*(sqrt(3)-1))]`
-/

namespace A086844.P4825608828334644947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) ^ (⌈(n : ℝ) * (Real.sqrt (3 : ℝ) - 1)⌉ : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A086844.P4825608828334644947

/-! ## A086844.P16817507815066642626

`2*A190674(n+1)+1`
-/

namespace A086844.P16817507815066642626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190674 (n + 1) + 1

end

end A086844.P16817507815066642626

/-! ## A086844.P11368142271039569138

`eq[0, A190224(n^(n%2))]`
-/

namespace A086844.P11368142271039569138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086844.P11368142271039569138

/-! ## A086844.P12578959763546216461

`eq[1, gcd(2, n²*A198081(n))]`
-/

namespace A086844.P12578959763546216461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ((n ^ 2 : ℤ) * A198081 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086844.P12578959763546216461

/-! ## A086844.P10186654556163052452

`2*eq[1, A190672(n+1)]+3`
-/

namespace A086844.P10186654556163052452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A086844.P10186654556163052452

/-! ## A086844.P10534723536192101146

`eq[1, (n*(A195120(n)+1))%2]`
-/

namespace A086844.P10534723536192101146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (A195120 n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086844.P10534723536192101146

/-! ## A086844.P1003569188324760860

`∩[2*n+1, A190225(n+1)]`
-/

namespace A086844.P1003569188324760860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086844.P1003569188324760860

/-! ## A086844.P16426012082762232021

`∩[2*n+1, A283775(n+1)]`
-/

namespace A086844.P16426012082762232021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086844.P16426012082762232021

/-! ## A086844.P16686184628160719401

`eq[A215781(n)%2, and(3, n²-1)]`
-/

namespace A086844.P16686184628160719401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215781 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n ^ 2 : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086844.P16686184628160719401

/-!
# A086845: a(1) = 0, a(n) = a(floor(n/2)) + 2*a(ceiling(n/2)) + floor(n/2).

The programs for A086845, the canonical program `A086845.P16562978890172487487` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086845 has offset 1).

The definition of A086845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/2)-1)+2*a(ceil((n+1)/2)-1)+floor((n+1)/2)` (program `A086845.P16562978890172487487`, by `A086845.P16562978890172487487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086845.P16562978890172487487

`a(floor((n+1)/2)-1)+2*a(ceil((n+1)/2)-1)+floor((n+1)/2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086845

/-- `a(floor((n+1)/2)-1)+2*a(ceil((n+1)/2)-1)+floor((n+1)/2)` -/
def P16562978890172487487.Spec : Prop :=
  ∀ n, P16562978890172487487.a n = A086845 (n + 1)

theorem P16562978890172487487.correct : P16562978890172487487.Spec := by
  intro n
  simp only [A086845, Nat.add_sub_cancel]

end A086845

/-! ## A086845.P8030460653350543992

`∑[n%2+gcd(2, n)*a(floor(n/2))]` with `a(0)=0`
-/

namespace A086845.P8030460653350543992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n % 2 + Nat.gcd 2 n * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P8030460653350543992

namespace A086845

/-- `∑[n%2+gcd(2, n)*a(floor(n/2))]` -/
def P8030460653350543992.Spec : Prop :=
  ∀ n, (P8030460653350543992.a n : ℤ) = A086845 (n + 1)

end A086845

/-! ## A086845.P4060584445759549810

`∑[A087808(n)]`
-/

namespace A086845.P4060584445759549810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P4060584445759549810

namespace A086845

/-- `∑[A087808(n)]` -/
def P4060584445759549810.Spec : Prop :=
  ∀ n, P4060584445759549810.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P3313388723511896806

`A087808(A028310(n))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A086845.P3313388723511896806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A087808 (A028310 n).toNat + a (n - 1)

end

end A086845.P3313388723511896806

namespace A086845

/-- `A087808(A028310(n))+a(n-1)` -/
def P3313388723511896806.Spec : Prop :=
  ∀ n, P3313388723511896806.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P7322951796719802125

`A087808(n)+a(n-1)%A050760(n+1)` with `a(0)=0`
-/

namespace A086845.P7322951796719802125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087808 n + Int.tmod (a (n - 1)) (A050760 (n + 1))

end

end A086845.P7322951796719802125

namespace A086845

/-- `A087808(n)+a(n-1)%A050760(n+1)` -/
def P7322951796719802125.Spec : Prop :=
  ∀ n, P7322951796719802125.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P3179395473725971081

`∑[A135542(2*n+1)-A080100(n)]`
-/

namespace A086845.P3179395473725971081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135542 (2 * n + 1) - A080100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P3179395473725971081

namespace A086845

/-- `∑[A135542(2*n+1)-A080100(n)]` -/
def P3179395473725971081.Spec : Prop :=
  ∀ n, P3179395473725971081.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P13050871394459601684

`∑[A135529(A054429(2*n+1))-1]`
-/

namespace A086845.P13050871394459601684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A054429 (2 * n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P13050871394459601684

namespace A086845

/-- `∑[A135529(A054429(2*n+1))-1]` -/
def P13050871394459601684.Spec : Prop :=
  ∀ n, P13050871394459601684.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P9541700311200520296

`∑[A135529(A010078(n+1))-A080100(n)]`
-/

namespace A086845.P9541700311200520296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A010078 (n + 1)).toNat - A080100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P9541700311200520296

namespace A086845

/-- `∑[A135529(A010078(n+1))-A080100(n)]` -/
def P9541700311200520296.Spec : Prop :=
  ∀ n, P9541700311200520296.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P17847099036390695553

`∑[∑{d}[A005940(n+1), A156552(A014963(#))]]`
-/

namespace A086845.P17847099036390695553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A156552 (A014963 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P17847099036390695553

namespace A086845

/-- `∑[∑{d}[A005940(n+1), A156552(A014963(#))]]` -/
def P17847099036390695553.Spec : Prop :=
  ∀ n, P17847099036390695553.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P16950617113906649441

`∑[A275728(A276082(n))]`
-/

namespace A086845.P16950617113906649441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 (A276082 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P16950617113906649441

namespace A086845

/-- `∑[A275728(A276082(n))]` -/
def P16950617113906649441.Spec : Prop :=
  ∀ n, P16950617113906649441.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P12751905509708491891

`∑[A275729(A276083(n))]`
-/

namespace A086845.P12751905509708491891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 (A276083 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P12751905509708491891

namespace A086845

/-- `∑[A275729(A276083(n))]` -/
def P12751905509708491891.Spec : Prop :=
  ∀ n, P12751905509708491891.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P10528694153104650815

`∑[A048675(A005940(n+1))]`
-/

namespace A086845.P10528694153104650815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P10528694153104650815

namespace A086845

/-- `∑[A048675(A005940(n+1))]` -/
def P10528694153104650815.Spec : Prop :=
  ∀ n, P10528694153104650815.a n = A086845 (n + 1)

end A086845

/-! ## A086845.P16025291525642631249

`∑[A048675(A324641(n+1)-A324640(n+1))]`
-/

namespace A086845.P16025291525642631249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A324641 (n + 1) - A324640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086845.P16025291525642631249

namespace A086845

/-- `∑[A048675(A324641(n+1)-A324640(n+1))]` -/
def P16025291525642631249.Spec : Prop :=
  ∀ n, P16025291525642631249.a n = A086845 (n + 1)

end A086845

/-!
# A086847: a(n) = gcd(A001608(n), n), where A001608 = Perrin sequence.

The programs for A086847, the canonical program `A086847.P2184080056741312262` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086847 has offset 1).

The definition of A086847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001608(n+1), n+1)` (program `A086847.P2184080056741312262`, by `A086847.P2184080056741312262.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086847.P2184080056741312262

`gcd(A001608(n+1), n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086847

/-- `gcd(A001608(n+1), n+1)` -/
def P2184080056741312262.Spec : Prop :=
  ∀ n, (P2184080056741312262.a n : ℤ) = A086847 (n + 1)

theorem P2184080056741312262.correct : P2184080056741312262.Spec := by
  intro n
  simp only [A086847, Nat.add_sub_cancel]

end A086847

/-! ## A086847.P13583461496776737238

`(n+1)/A349440(n+1)`
-/

namespace A086847.P13583461496776737238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A349440 (n + 1) : ℚ)

end

end A086847.P13583461496776737238

namespace A086847

/-- `(n+1)/A349440(n+1)` -/
def P13583461496776737238.Spec : Prop :=
  ∀ n, P13583461496776737238.a n = (A086847 (n + 1) : ℚ)

end A086847

/-! ## A086847.P18298411383254414659

`gcd(A000027(n+1), A215339(n+1))`
-/

namespace A086847.P18298411383254414659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A215339 (n + 1))

end

end A086847.P18298411383254414659

namespace A086847

/-- `gcd(A000027(n+1), A215339(n+1))` -/
def P18298411383254414659.Spec : Prop :=
  ∀ n, (P18298411383254414659.a n : ℤ) = A086847 (n + 1)

end A086847

/-! ## A086847.P10166271095094630397

`gcd(2*n+1-n, A084338(n+1)-A000931(n))`
-/

namespace A086847.P10166271095094630397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A084338 (n + 1) - A000931 n)

end

end A086847.P10166271095094630397

namespace A086847

/-- `gcd(2*n+1-n, A084338(n+1)-A000931(n))` -/
def P10166271095094630397.Spec : Prop :=
  ∀ n, (P10166271095094630397.a n : ℤ) = A086847 (n + 1)

end A086847

/-! ## A086847.P17158947489045819737

`gcd(n+1, Δ[A193744(n)])`
-/

namespace A086847.P17158947489045819737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A086847.P17158947489045819737

namespace A086847

/-- `gcd(n+1, Δ[A193744(n)])` -/
def P17158947489045819737.Spec : Prop :=
  ∀ n, (P17158947489045819737.a n : ℤ) = A086847 (n + 1)

end A086847

/-!
# A086849: Sum of first n nonsquares.

The programs for A086849, the canonical program `A086849.P3631588082345199433` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086849 has offset 1).

The definition of A086849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086849.P3631588082345199433

`A000217(A000037(n+1))-A000330(A000196(A000037(n+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086849

/-- `A000217(A000037(n+1))-A000330(A000196(A000037(n+1)))` -/
def P3631588082345199433.Spec : Prop :=
  ∀ n, P3631588082345199433.a n = A086849 (n + 1)

theorem P3631588082345199433.correct : P3631588082345199433.Spec := by
  intro n
  simp only [A086849, Nat.add_sub_cancel]

end A086849

/-! ## A086849.P2871044314667682891

`∑[comp[n²]]`
-/

namespace A086849.P2871044314667682891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086849.P2871044314667682891

namespace A086849

/-- `∑[comp[n²]]` -/
def P2871044314667682891.Spec : Prop :=
  ∀ n, (P2871044314667682891.a n : ℤ) = A086849 (n + 1)

end A086849

/-! ## A086849.P10331353648243236735

`comp[n²]+a(n-1)` with `a(0)=2`
-/

namespace A086849.P10331353648243236735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 1)

end

end A086849.P10331353648243236735

namespace A086849

/-- `comp[n²]+a(n-1)` -/
def P10331353648243236735.Spec : Prop :=
  ∀ n, (P10331353648243236735.a n : ℤ) = A086849 (n + 1)

end A086849

/-! ## A086849.P3462839078383528272

`floor(∑[sqrt(A030140(n+1))])`
-/

namespace A086849.P3462839078383528272
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030140 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A086849.P3462839078383528272

namespace A086849

/-- `floor(∑[sqrt(A030140(n+1))])` -/
def P3462839078383528272.Spec : Prop :=
  ∀ n, P3462839078383528272.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P8310605389112946506

`and(∑[A000037(n+1)], -1)`
-/

namespace A086849.P8310605389112946506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A086849.P8310605389112946506

namespace A086849

/-- `and(∑[A000037(n+1)], -1)` -/
def P8310605389112946506.Spec : Prop :=
  ∀ n, P8310605389112946506.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P8578795166181263706

`∑[∑[A089800(n)+2]]/2`
-/

namespace A086849.P8578795166181263706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A086849.P8578795166181263706

namespace A086849

/-- `∑[∑[A089800(n)+2]]/2` -/
def P8578795166181263706.Spec : Prop :=
  ∀ n, P8578795166181263706.a n = (A086849 (n + 1) : ℚ)

end A086849

/-! ## A086849.P16639644236876955232

`∑[A183299(n+1)]+1+n`
-/

namespace A086849.P16639644236876955232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A086849.P16639644236876955232

namespace A086849

/-- `∑[A183299(n+1)]+1+n` -/
def P16639644236876955232.Spec : Prop :=
  ∀ n, P16639644236876955232.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P16156389308300881240

`∑[comp[A000290(n)]+1]-(n+1)`
-/

namespace A086849.P16156389308300881240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A086849.P16156389308300881240

namespace A086849

/-- `∑[comp[A000290(n)]+1]-(n+1)` -/
def P16156389308300881240.Spec : Prop :=
  ∀ n, P16156389308300881240.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P13823175228542461245

`∑[comp[A005563(n)-1]+1]+1+n`
-/

namespace A086849.P13823175228542461245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A086849.P13823175228542461245

namespace A086849

/-- `∑[comp[A005563(n)-1]+1]+1+n` -/
def P13823175228542461245.Spec : Prop :=
  ∀ n, (P13823175228542461245.a n : ℤ) = A086849 (n + 1)

end A086849

/-! ## A086849.P17059365081497113631

`∑[A000037(n+1)]%A006970(n+1)`
-/

namespace A086849.P17059365081497113631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006970 (n + 1))

end

end A086849.P17059365081497113631

namespace A086849

/-- `∑[A000037(n+1)]%A006970(n+1)` -/
def P17059365081497113631.Spec : Prop :=
  ∀ n, P17059365081497113631.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P8106861299298827410

`∑[eq[2, A020639(A000005(n+1))]]+n+1`
-/

namespace A086849.P8106861299298827410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A086849.P8106861299298827410

namespace A086849

/-- `∑[eq[2, A020639(A000005(n+1))]]+n+1` -/
def P8106861299298827410.Spec : Prop :=
  ∀ n, (P8106861299298827410.a n : ℤ) = A086849 (n + 1)

end A086849

/-! ## A086849.P14015493058834088220

`A165453(n+1)+∑[n+1]`
-/

namespace A086849.P14015493058834088220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A086849.P14015493058834088220

namespace A086849

/-- `A165453(n+1)+∑[n+1]` -/
def P14015493058834088220.Spec : Prop :=
  ∀ n, P14015493058834088220.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P12439119356450032885

`A000326(n+1)+A165453(n+1)-A002378(n)`
-/

namespace A086849.P12439119356450032885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) + (A165453 (n + 1) - A002378 n)

end

end A086849.P12439119356450032885

namespace A086849

/-- `A000326(n+1)+A165453(n+1)-A002378(n)` -/
def P12439119356450032885.Spec : Prop :=
  ∀ n, P12439119356450032885.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P10799537726806515655

`A132295(A000037(n+1))`
-/

namespace A086849.P10799537726806515655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132295 (A000037 (n + 1)).toNat

end

end A086849.P10799537726806515655

namespace A086849

/-- `A132295(A000037(n+1))` -/
def P10799537726806515655.Spec : Prop :=
  ∀ n, P10799537726806515655.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P10954513142876835714

`A132295(A164514(n+2))`
-/

namespace A086849.P10954513142876835714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132295 (A164514 (n + 2)).toNat

end

end A086849.P10954513142876835714

namespace A086849

/-- `A132295(A164514(n+2))` -/
def P10954513142876835714.Spec : Prop :=
  ∀ n, P10954513142876835714.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P1643088445757646288

`A132295(A183299(n+2))`
-/

namespace A086849.P1643088445757646288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132295 (A183299 (n + 2)).toNat

end

end A086849.P1643088445757646288

namespace A086849

/-- `A132295(A183299(n+2))` -/
def P1643088445757646288.Spec : Prop :=
  ∀ n, P1643088445757646288.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P7501604273193012070

`∑[A183302(2*(n+1))]-∑[n]`
-/

namespace A086849.P7501604273193012070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183302 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A086849.P7501604273193012070

namespace A086849

/-- `∑[A183302(2*(n+1))]-∑[n]` -/
def P7501604273193012070.Spec : Prop :=
  ∀ n, P7501604273193012070.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P1251697994803255650

`A000027(∑[comp[A000290(n)]])`
-/

namespace A086849.P1251697994803255650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086849.P1251697994803255650

namespace A086849

/-- `A000027(∑[comp[A000290(n)]])` -/
def P1251697994803255650.Spec : Prop :=
  ∀ n, P1251697994803255650.a n = A086849 (n + 1)

end A086849

/-! ## A086849.P8679189813442946389

`A182112(n)+A179865(n+1)`
-/

namespace A086849.P8679189813442946389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182112 n + A179865 (n + 1)

end

end A086849.P8679189813442946389

namespace A086849

/-- `A182112(n)+A179865(n+1)` -/
def P8679189813442946389.Spec : Prop :=
  ∀ n, P8679189813442946389.a n = A086849 (n + 1)

end A086849

/-!
# A086851: a(0) = 1, a(n+1) = a(n)^2 - n.

The programs for A086851, the canonical program `A086851.P14264933131126126778` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086851 has offset 0).

The definition of A086851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086851.P14264933131126126778

`a(n-1)²-n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086851

/-- `a(n-1)²-n+1` -/
def P14264933131126126778.Spec : Prop :=
  ∀ n, P14264933131126126778.a n = A086851 n

theorem P14264933131126126778.correct : P14264933131126126778.Spec := by
  intro n
  simp only [A086851]

end A086851

/-! ## A086851.P17687260046978757324

`1-(n-a(n-1)²)` with `a(0)=1`
-/

namespace A086851.P17687260046978757324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - a (n - 1) ^ 2)

end

end A086851.P17687260046978757324

namespace A086851

/-- `1-(n-a(n-1)²)` -/
def P17687260046978757324.Spec : Prop :=
  ∀ n, P17687260046978757324.a n = A086851 n

end A086851

/-! ## A086851.P11042873096661709102

`a(n-1)^2+1-n` with `a(0)=1`
-/

namespace A086851.P11042873096661709102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 + (1 - (n : ℤ))

end

end A086851.P11042873096661709102

namespace A086851

/-- `a(n-1)^2+1-n` -/
def P11042873096661709102.Spec : Prop :=
  ∀ n, P11042873096661709102.a n = A086851 n

theorem P11042873096661709102.correct : P11042873096661709102.Spec := by
  intro n
  simp only [A086851, Nat.add_sub_cancel, A086851.P11042873096661709102.a, A086851.P14264933131126126778.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A086851

/-! ## A086851.P10312278370086302345

`1-(n-a(n-1)^2)` with `a(0)=1`
-/

namespace A086851.P10312278370086302345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - a (n - 1) ^ 2)

end

end A086851.P10312278370086302345

namespace A086851

/-- `1-(n-a(n-1)^2)` -/
def P10312278370086302345.Spec : Prop :=
  ∀ n, P10312278370086302345.a n = A086851 n

end A086851

/-! ## A086851.P8754395264315889112

`a(n-1)*a(n-1)+1-n` with `a(0)=1`
-/

namespace A086851.P8754395264315889112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * a (n - 1) + (1 - (n : ℤ))

end

end A086851.P8754395264315889112

namespace A086851

/-- `a(n-1)*a(n-1)+1-n` -/
def P8754395264315889112.Spec : Prop :=
  ∀ n, P8754395264315889112.a n = A086851 n

theorem P8754395264315889112.correct : P8754395264315889112.Spec := by
  intro n
  simp only [A086851, Nat.add_sub_cancel, A086851.P8754395264315889112.a, A086851.P14264933131126126778.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A086851

/-!
# A086852: Number of permutations of length n with exactly 1 rising or falling succession.

The programs for A086852, there is no canonical definition to state claims against.
-/

/-! ## A086852.P10952813984293645823

`2*A000130(n)`
-/

namespace A086852.P10952813984293645823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000130 n

end

end A086852.P10952813984293645823

/-! ## A086852.P11760712762469611981

`A001100(C(n, 2)+2)`
-/

namespace A086852.P11760712762469611981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001100 (Nat.choose n 2 + 2)

end

end A086852.P11760712762469611981

/-! ## A086852.P1494667975365945120

`A001100(∑[n-1]+3)`
-/

namespace A086852.P1494667975365945120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001100 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A086852.P1494667975365945120

/-! ## A086852.P10450753459920906941

`2*A086856(A152948(n+1))`
-/

namespace A086852.P10450753459920906941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086856 (A152948 (n + 1)).toNat

end

end A086852.P10450753459920906941

/-! ## A086852.P13131410452416761705

`A000130(n)+A000130(A028310(n))`
-/

namespace A086852.P13131410452416761705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000130 n + A000130 (A028310 n).toNat

end

end A086852.P13131410452416761705

/-! ## A086852.P16659318995525406285

`A000130(n)+A000130(A118759(n))`
-/

namespace A086852.P16659318995525406285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000130 n + A000130 (A118759 n).toNat

end

end A086852.P16659318995525406285

/-! ## A086852.P13002834535293099744

`and(A001100(A152948(n+1)), A057428(n))`
-/

namespace A086852.P13002834535293099744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001100 (A152948 (n + 1)).toNat) (A057428 n)

end

end A086852.P13002834535293099744

/-! ## A086852.P11354793321799127196

`A000130(n)+A000130(A151933(n)+n)`
-/

namespace A086852.P11354793321799127196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000130 n + A000130 (A151933 n + (n : ℤ)).toNat

end

end A086852.P11354793321799127196

/-! ## A086852.P16636916220427531271

`A000130(n)+A000130(n)%A000138(n)`
-/

namespace A086852.P16636916220427531271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000130 n + Int.tmod (A000130 n) (A000138 n)

end

end A086852.P16636916220427531271

/-! ## A086852.P2055826591657352104

`A000130(n)+A000130(A004273(n)+1-n)`
-/

namespace A086852.P2055826591657352104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000130 n + A000130 (A004273 n + (1 - (n : ℤ))).toNat

end

end A086852.P2055826591657352104

/-!
# A086853: Number of permutations of length n with exactly 2 rising or falling successions.

The programs for A086853, there is no canonical definition to state claims against.
-/

/-! ## A086853.P6688244510242928929

`2*A000349(n)`
-/

namespace A086853.P6688244510242928929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000349 n

end

end A086853.P6688244510242928929

/-! ## A086853.P4982311557823578965

`2*A086856(∑[abs(1-(char[2]+n))]+1)`
-/

namespace A086853.P4982311557823578965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086856 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A086853.P4982311557823578965

/-! ## A086853.P8264405750607754268

`A001100(A238531(n)+1)`
-/

namespace A086853.P8264405750607754268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001100 (A238531 n + 1).toNat

end

end A086853.P8264405750607754268

/-! ## A086853.P1488272322379983012

`A000349(n)+A000349(A028310(n))`
-/

namespace A086853.P1488272322379983012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000349 n + A000349 (A028310 n).toNat

end

end A086853.P1488272322379983012

/-! ## A086853.P14527390546849876570

`A000349(n)+A000349(A118759(n))`
-/

namespace A086853.P14527390546849876570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000349 n + A000349 (A118759 n).toNat

end

end A086853.P14527390546849876570

/-! ## A086853.P15545496006936763790

`A000349(A233583(n+1))+A000349(n)`
-/

namespace A086853.P15545496006936763790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000349 (A233583 (n + 1)).toNat + A000349 n

end

end A086853.P15545496006936763790

/-! ## A086853.P4401642805098865338

`A000349(n)+A000349(A064429(A064429(n)))`
-/

namespace A086853.P4401642805098865338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000349 n + A000349 (A064429 (A064429 n).toNat).toNat

end

end A086853.P4401642805098865338

/-! ## A086853.P4020471298413370951

`A000349(n)+A000349(n)%A000142(n)`
-/

namespace A086853.P4020471298413370951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000349 n + Int.tmod (A000349 n) (A000142 n)

end

end A086853.P4020471298413370951

/-!
# A086854: Number of permutations of length n with exactly 3 rising or falling successions.

The programs for A086854, there is no canonical definition to state claims against.
-/

/-! ## A086854.P5102455269715637624

`2*A001267(n)`
-/

namespace A086854.P5102455269715637624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001267 n

end

end A086854.P5102455269715637624

/-! ## A086854.P4289469009273884161

`A001267(n)/(A130706(n)+1/2)`
-/

namespace A086854.P4289469009273884161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001267 n : ℚ) / ((A130706 n : ℚ) + (1 : ℚ) / 2)

end

end A086854.P4289469009273884161

/-! ## A086854.P189536186718208166

`A001267(n)+A001267(A028310(n))`
-/

namespace A086854.P189536186718208166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001267 n + A001267 (A028310 n).toNat

end

end A086854.P189536186718208166

/-! ## A086854.P11776468896901814607

`A001267(A233583(n+1))+A001267(n)`
-/

namespace A086854.P11776468896901814607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001267 (A233583 (n + 1)).toNat + A001267 n

end

end A086854.P11776468896901814607

/-! ## A086854.P15769836256326886217

`A001267(A000007(n)+n)+A001267(n)`
-/

namespace A086854.P15769836256326886217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001267 (A000007 n + (n : ℤ)).toNat + A001267 n

end

end A086854.P15769836256326886217

/-! ## A086854.P12276737265252544011

`A001267(n)+A001267(A130706(n)+n)`
-/

namespace A086854.P12276737265252544011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001267 n + A001267 (A130706 n + (n : ℤ)).toNat

end

end A086854.P12276737265252544011

/-! ## A086854.P6851774941850950411

`A001267(n)/abs(A008683(A014963(n+1))/2)`
-/

namespace A086854.P6851774941850950411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001267 n : ℚ) / |(A008683 (A014963 (n + 1)).toNat : ℚ) / 2|

end

end A086854.P6851774941850950411

/-! ## A086854.P1941575820775983382

`A001267(n)+A001267(n)%A000142(n)`
-/

namespace A086854.P1941575820775983382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001267 n + Int.tmod (A001267 n) (A000142 n)

end

end A086854.P1941575820775983382

/-!
# A086855: Number of permutations of length n with exactly 4 rising or falling successions.

The programs for A086855, there is no canonical definition to state claims against.
-/

/-! ## A086855.P2303814938702673562

`2*A001268(n)`
-/

namespace A086855.P2303814938702673562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001268 n

end

end A086855.P2303814938702673562

/-! ## A086855.P566502226531676618

`A001268(abs(1-n)+1)+A001268(n)`
-/

namespace A086855.P566502226531676618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001268 (|1 - (n : ℤ)| + 1).toNat + A001268 n

end

end A086855.P566502226531676618

/-! ## A086855.P4912241350008858273

`A001268(n)+A001268(n)+A028326(n)%2`
-/

namespace A086855.P4912241350008858273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001268 n + (A001268 n + Int.tmod (A028326 n) 2)

end

end A086855.P4912241350008858273

/-! ## A086855.P5288964964126199626

`A001268(n)/abs(A008683(A014963(n+1))/2)`
-/

namespace A086855.P5288964964126199626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001268 n : ℚ) / |(A008683 (A014963 (n + 1)).toNat : ℚ) / 2|

end

end A086855.P5288964964126199626

/-! ## A086855.P297146146206454388

`A001268(n)+A001268(n)%A001277(n+2)`
-/

namespace A086855.P297146146206454388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001268 n + Int.tmod (A001268 n) (A001277 (n + 2))

end

end A086855.P297146146206454388

/-!
# A086856: Triangle read by rows: T(n,k) = one-half number of permutations of length n with exactly k rising or falling successions, for n >= 1, 0 <= k <= n-1. T(1,0) = 1 by convention.

The programs for A086856, there is no canonical definition to state claims against.
-/

/-! ## A086856.P12788094097282571310

`ceil(A001100(n+1)/2)`
-/

namespace A086856.P12788094097282571310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001100 (n + 1) : ℚ) / 2⌉

end

end A086856.P12788094097282571310

/-! ## A086856.P4592400381211855387

`A010028(A038722(n+1))`
-/

namespace A086856.P4592400381211855387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010028 (A038722 (n + 1)).toNat

end

end A086856.P4592400381211855387

/-! ## A086856.P778477438000924413

`A010028(A061579(n)+1)`
-/

namespace A086856.P778477438000924413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010028 (A061579 n + 1).toNat

end

end A086856.P778477438000924413

/-! ## A086856.P5768488853820521357

`A001100(n+1)/A036453(n+1)`
-/

namespace A086856.P5768488853820521357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A086856.P5768488853820521357

/-! ## A086856.P4461695956748307986

`A001100(n+1)/A104435(n+1)`
-/

namespace A086856.P4461695956748307986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (n + 1) : ℚ) / (A104435 (n + 1) : ℚ)

end

end A086856.P4461695956748307986

/-! ## A086856.P11245304954350417187

`A001100(n+1)/(1-A057428(n))`
-/

namespace A086856.P11245304954350417187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (n + 1) : ℚ) / (1 - A057428 n : ℚ)

end

end A086856.P11245304954350417187

/-! ## A086856.P2899760592139010092

`A001100(n+1)/A007424((n+1)²)`
-/

namespace A086856.P2899760592139010092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (n + 1) : ℚ) / (A007424 ((n + 1) ^ 2) : ℚ)

end

end A086856.P2899760592139010092

/-! ## A086856.P302936462614689538

`A001100(n+1)/gcd(2, A001100(A152947(n+1)))`
-/

namespace A086856.P302936462614689538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (n + 1) : ℚ) / (Int.gcd 2 (A001100 (A152947 (n + 1)).toNat) : ℚ)

end

end A086856.P302936462614689538

/-! ## A086856.P12445558048696592307

`A001100(n+1)/A001100(A000217(n+1))`
-/

namespace A086856.P12445558048696592307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (n + 1) : ℚ) / (A001100 (A000217 (n + 1)).toNat : ℚ)

end

end A086856.P12445558048696592307

/-!
# A086857: a(0) = 0, a(1) = 1; for n > 1, a(n) = (a(n-1) + a(n-2) + 1)^2.

The programs for A086857, the canonical program `A086857.P17583998675240216732` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086857 has offset 0).

The definition of A086857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2)+1)²` (program `A086857.P17583998675240216732`, by `A086857.P17583998675240216732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086857.P17583998675240216732

`(a(n-1)+a(n-2)+1)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086857

/-- `(a(n-1)+a(n-2)+1)²` -/
def P17583998675240216732.Spec : Prop :=
  ∀ n, (P17583998675240216732.a n : ℤ) = A086857 n

theorem P17583998675240216732.correct : P17583998675240216732.Spec := by
  intro n
  simp only [A086857]

end A086857

/-! ## A086857.P7426690191114496875

`(a(n-1)+a(n-2)+1)^2` with `a(0)=0, a(1)=1`
-/

namespace A086857.P7426690191114496875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + (a (n - 2) + 1)) ^ 2

end

end A086857.P7426690191114496875

namespace A086857

/-- `(a(n-1)+a(n-2)+1)^2` -/
def P7426690191114496875.Spec : Prop :=
  ∀ n, (P7426690191114496875.a n : ℤ) = A086857 n

theorem P7426690191114496875.correct : P7426690191114496875.Spec := by
  intro n
  simp only [A086857, Nat.add_sub_cancel, A086857.P7426690191114496875.a, A086857.P17583998675240216732.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A086857

/-! ## A086857.P3438698682281076196

`(a(n-1)-xor(-1, a(n-2)))²` with `a(0)=0, a(1)=1`
-/

namespace A086857.P3438698682281076196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - Int.xor (-1) (a (n - 2))) ^ 2

end

end A086857.P3438698682281076196

namespace A086857

/-- `(a(n-1)-xor(-1, a(n-2)))²` -/
def P3438698682281076196.Spec : Prop :=
  ∀ n, P3438698682281076196.a n = A086857 n

end A086857

/-! ## A086857.P17782013030007650044

`(2-floor(1-a(n-1)-a(n-2)))²` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A086857.P17782013030007650044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - (1 - a (n - 1) - a (n - 2))) ^ 2

end

end A086857.P17782013030007650044

namespace A086857

/-- `(2-floor(1-a(n-1)-a(n-2)))²` -/
def P17782013030007650044.Spec : Prop :=
  ∀ n, P17782013030007650044.a n = A086857 n

end A086857

/-! ## A086857.P15199858607289215244

`(4/2-(1-a(n-1)-a(n-2)))²` with `a(0)=0, a(1)=1`
-/

namespace A086857.P15199858607289215244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))) ^ 2

end

end A086857.P15199858607289215244

namespace A086857

/-- `(4/2-(1-a(n-1)-a(n-2)))²` -/
def P15199858607289215244.Spec : Prop :=
  ∀ n, P15199858607289215244.a n = (A086857 n : ℚ)

end A086857

/-!
# A086858: Let f(n) be the inverse of the function g(x) = x^x. Then a(n) = floor(f(n)).

The programs for A086858, the canonical program `A086858.P16448906961336424724` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086858 has offset 1).

The definition of A086858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086858.P16448906961336424724

`∑[char[n^n-1]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086858

/-- `∑[char[n^n-1]]` -/
def P16448906961336424724.Spec : Prop :=
  ∀ n, (P16448906961336424724.a n : ℤ) = A086858 (n + 1)

theorem P16448906961336424724.correct : P16448906961336424724.Spec := by
  intro n
  simp only [A086858, Nat.add_sub_cancel]

end A086858

/-! ## A086858.P649854439283406565

`ceil(log(sqrt(∑[gcd(4, n)])))`
-/

namespace A086858.P649854439283406565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉

end

end A086858.P649854439283406565

namespace A086858

/-- `ceil(log(sqrt(∑[gcd(4, n)])))` -/
def P649854439283406565.Spec : Prop :=
  ∀ n, P649854439283406565.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P2676519017640904057

`ceil(log(sqrt(lt[sin(n), 0])))`
-/

namespace A086858.P2676519017640904057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℝ))⌉

end

end A086858.P2676519017640904057

namespace A086858

/-- `ceil(log(sqrt(lt[sin(n), 0])))` -/
def P2676519017640904057.Spec : Prop :=
  ∀ n, P2676519017640904057.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P9225110144328754864

`ceil(log2(log(lt[sin(n), 0])))`
-/

namespace A086858.P9225110144328754864
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.log (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℝ))⌉

end

end A086858.P9225110144328754864

namespace A086858

/-- `ceil(log2(log(lt[sin(n), 0])))` -/
def P9225110144328754864.Spec : Prop :=
  ∀ n, P9225110144328754864.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P7723940106070991301

`ceil(∑[acot(record[or(2, n)])])`
-/

namespace A086858.P7723940106070991301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A086858.P7723940106070991301

namespace A086858

/-- `ceil(∑[acot(record[or(2, n)])])` -/
def P7723940106070991301.Spec : Prop :=
  ∀ n, P7723940106070991301.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P50921408313891175

`ceil(∑[acot(record[xor(2, n)])])`
-/

namespace A086858.P50921408313891175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A086858.P50921408313891175

namespace A086858

/-- `ceil(∑[acot(record[xor(2, n)])])` -/
def P50921408313891175.Spec : Prop :=
  ∀ n, P50921408313891175.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P5937530350511198667

`round(log(log(C(n+6, 5))))`
-/

namespace A086858.P5937530350511198667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (Nat.choose (n + 6) 5 : ℝ)))

end

end A086858.P5937530350511198667

namespace A086858

/-- `round(log(log(C(n+6, 5))))` -/
def P5937530350511198667.Spec : Prop :=
  ∀ n, P5937530350511198667.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P18415116699073038494

`ceil(log2(n+3)*sin(9))`
-/

namespace A086858.P18415116699073038494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 3 : ℝ) * Real.sin (9 : ℝ)⌉

end

end A086858.P18415116699073038494

namespace A086858

/-- `ceil(log2(n+3)*sin(9))` -/
def P18415116699073038494.Spec : Prop :=
  ∀ n, P18415116699073038494.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P11125472915630930049

`ceil(log2((n+3)^sin(9)))`
-/

namespace A086858.P11125472915630930049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n + 3 : ℝ) ^ (Real.sin (9 : ℝ)))⌉

end

end A086858.P11125472915630930049

namespace A086858

/-- `ceil(log2((n+3)^sin(9)))` -/
def P11125472915630930049.Spec : Prop :=
  ∀ n, P11125472915630930049.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P5173470524297423403

`ceil(log2(n+3)/sinh(ϕ))`
-/

namespace A086858.P5173470524297423403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 3 : ℝ) / Real.sinh Real.goldenRatio⌉

end

end A086858.P5173470524297423403

namespace A086858

/-- `ceil(log2(n+3)/sinh(ϕ))` -/
def P5173470524297423403.Spec : Prop :=
  ∀ n, P5173470524297423403.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P8257090647699613447

`ceil(log2(root(n+3, sinh(ϕ))))`
-/

namespace A086858.P8257090647699613447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n + 3 : ℝ) ^ (1 / Real.sinh Real.goldenRatio))⌉

end

end A086858.P8257090647699613447

namespace A086858

/-- `ceil(log2(root(n+3, sinh(ϕ))))` -/
def P8257090647699613447.Spec : Prop :=
  ∀ n, P8257090647699613447.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P217947413771020534

`ceil(log(∑[sqrt(acot(2*n))]))`
-/

namespace A086858.P217947413771020534
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.acot (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A086858.P217947413771020534

namespace A086858

/-- `ceil(log(∑[sqrt(acot(2*n))]))` -/
def P217947413771020534.Spec : Prop :=
  ∀ n, P217947413771020534.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P10202725894709212455

`round(root(or(2, 6*n²), 9))`
-/

namespace A086858.P10202725894709212455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (6 * n ^ 2) : ℝ) ^ (1 / (9 : ℝ)))

end

end A086858.P10202725894709212455

namespace A086858

/-- `round(root(or(2, 6*n²), 9))` -/
def P10202725894709212455.Spec : Prop :=
  ∀ n, P10202725894709212455.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P7379399915617587459

`round(2^acot(7/(n+2)))`
-/

namespace A086858.P7379399915617587459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ (SequenceMachineLib.acot (7 / (n + 2 : ℚ) : ℝ)))

end

end A086858.P7379399915617587459

namespace A086858

/-- `round(2^acot(7/(n+2)))` -/
def P7379399915617587459.Spec : Prop :=
  ∀ n, P7379399915617587459.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P6147051851862399032

`ceil(atan(n+3)^3-ϕ)`
-/

namespace A086858.P6147051851862399032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 3 : ℝ) ^ 3 - Real.goldenRatio⌉

end

end A086858.P6147051851862399032

namespace A086858

/-- `ceil(atan(n+3)^3-ϕ)` -/
def P6147051851862399032.Spec : Prop :=
  ∀ n, P6147051851862399032.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P6459233219529442544

`comp[3^or(1, n)]-n+1`
-/

namespace A086858.P6459233219529442544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1

end

end A086858.P6459233219529442544

namespace A086858

/-- `comp[3^or(1, n)]-n+1` -/
def P6459233219529442544.Spec : Prop :=
  ∀ n, P6459233219529442544.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P12883929455564630915

`round(sqrt((2*n+1)^acot(2)))`
-/

namespace A086858.P12883929455564630915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * n + 1 : ℝ) ^ (SequenceMachineLib.acot (2 : ℝ))))

end

end A086858.P12883929455564630915

namespace A086858

/-- `round(sqrt((2*n+1)^acot(2)))` -/
def P12883929455564630915.Spec : Prop :=
  ∀ n, P12883929455564630915.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P4972945018486636041

`ceil(∑[tan(1/(2*(n+1)))])`
-/

namespace A086858.P4972945018486636041
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 / (2 * (n + 1) : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A086858.P4972945018486636041

namespace A086858

/-- `ceil(∑[tan(1/(2*(n+1)))])` -/
def P4972945018486636041.Spec : Prop :=
  ∀ n, P4972945018486636041.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P2421257491699791844

`ceil(∑[cosh(1)/(3*(n+1))])`
-/

namespace A086858.P2421257491699791844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (1 : ℝ) / (3 * (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A086858.P2421257491699791844

namespace A086858

/-- `ceil(∑[cosh(1)/(3*(n+1))])` -/
def P2421257491699791844.Spec : Prop :=
  ∀ n, P2421257491699791844.a n = A086858 (n + 1)

end A086858

/-! ## A086858.P15155793163197320750

`ceil(∑[cosh(1)/(n+1)]/3)`
-/

namespace A086858.P15155793163197320750
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (1 : ℝ) / (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / 3⌉

end

end A086858.P15155793163197320750

namespace A086858

/-- `ceil(∑[cosh(1)/(n+1)]/3)` -/
def P15155793163197320750.Spec : Prop :=
  ∀ n, P15155793163197320750.a n = A086858 (n + 1)

end A086858

/-!
# A086861: Floor( p/log(p) ), where p = prime(n).

The programs for A086861, the canonical program `A086861.P7013216846271427135` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086861 has offset 1).

The definition of A086861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086861.P7013216846271427135

`floor(A000040(n+1)/log(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086861

/-- `floor(A000040(n+1)/log(A000040(n+1)))` -/
def P7013216846271427135.Spec : Prop :=
  ∀ n, P7013216846271427135.a n = A086861 (n + 1)

theorem P7013216846271427135.correct : P7013216846271427135.Spec := by
  intro n
  simp only [A086861, Nat.add_sub_cancel]

end A086861

/-! ## A086861.P11778747202216877918

`n-A064663(n+1)`
-/

namespace A086861.P11778747202216877918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064663 (n + 1)

end

end A086861.P11778747202216877918

namespace A086861

/-- `n-A064663(n+1)` -/
def P11778747202216877918.Spec : Prop :=
  ∀ n, P11778747202216877918.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P2489434520014369365

`1-A064661(n+1)+n`
-/

namespace A086861.P2489434520014369365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064661 (n + 1) + (n : ℤ)

end

end A086861.P2489434520014369365

namespace A086861

/-- `1-A064661(n+1)+n` -/
def P2489434520014369365.Spec : Prop :=
  ∀ n, P2489434520014369365.a n = A086861 (n + 1)

theorem P2489434520014369365.correct : P2489434520014369365.Spec := by
  intro n
  simp only [A086861, Nat.add_sub_cancel, A086861.P2489434520014369365.a, A086861.P7013216846271427135.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A064661, A064661.P17074419430089675136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086861

/-! ## A086861.P6424631334588597709

`∏{p}[A000040(n+1), floor(#/log(#))]`
-/

namespace A086861.P6424631334588597709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(p : ℝ) / Real.log (p : ℝ)⌋

end

end A086861.P6424631334588597709

namespace A086861

/-- `∏{p}[A000040(n+1), floor(#/log(#))]` -/
def P6424631334588597709.Spec : Prop :=
  ∀ n, P6424631334588597709.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P15440424521776244112

`A050500(p?[xor(1, n)])`
-/

namespace A086861.P15440424521776244112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086861.P15440424521776244112

namespace A086861

/-- `A050500(p?[xor(1, n)])` -/
def P15440424521776244112.Spec : Prop :=
  ∀ n, P15440424521776244112.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P13115114603065027742

`A050500(Δ[A007504(n)])`
-/

namespace A086861.P13115114603065027742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (f1 (n + 1) - f1 n).toNat

end

end A086861.P13115114603065027742

namespace A086861

/-- `A050500(Δ[A007504(n)])` -/
def P13115114603065027742.Spec : Prop :=
  ∀ n, P13115114603065027742.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P13589987061938488485

`A050500(p?[A004442(n)])`
-/

namespace A086861.P13589987061938488485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086861.P13589987061938488485

namespace A086861

/-- `A050500(p?[A004442(n)])` -/
def P13589987061938488485.Spec : Prop :=
  ∀ n, P13589987061938488485.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P10099319978415718060

`A050500(p?[A006369(n)])`
-/

namespace A086861.P10099319978415718060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086861.P10099319978415718060

namespace A086861

/-- `A050500(p?[A006369(n)])` -/
def P10099319978415718060.Spec : Prop :=
  ∀ n, P10099319978415718060.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P5169322013329147517

`A050500(p?[A014681(n)])`
-/

namespace A086861.P5169322013329147517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086861.P5169322013329147517

namespace A086861

/-- `A050500(p?[A014681(n)])` -/
def P5169322013329147517.Spec : Prop :=
  ∀ n, P5169322013329147517.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P17767373908189412051

`A050500(A000040(n+1))`
-/

namespace A086861.P17767373908189412051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (A000040 (n + 1)).toNat

end

end A086861.P17767373908189412051

namespace A086861

/-- `A050500(A000040(n+1))` -/
def P17767373908189412051.Spec : Prop :=
  ∀ n, P17767373908189412051.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P10696283115233739630

`A050500(A008578(n+2))`
-/

namespace A086861.P10696283115233739630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (A008578 (n + 2)).toNat

end

end A086861.P10696283115233739630

namespace A086861

/-- `A050500(A008578(n+2))` -/
def P10696283115233739630.Spec : Prop :=
  ∀ n, P10696283115233739630.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P1766013008744901567

`A050500(A175787(n+2))`
-/

namespace A086861.P1766013008744901567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (A175787 (n + 2)).toNat

end

end A086861.P1766013008744901567

namespace A086861

/-- `A050500(A175787(n+2))` -/
def P1766013008744901567.Spec : Prop :=
  ∀ n, P1766013008744901567.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P7764378531762721163

`A050500(A182986(n+2))`
-/

namespace A086861.P7764378531762721163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (A182986 (n + 2)).toNat

end

end A086861.P7764378531762721163

namespace A086861

/-- `A050500(A182986(n+2))` -/
def P7764378531762721163.Spec : Prop :=
  ∀ n, P7764378531762721163.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P3553271988926299617

`A050500(p?[A006368(n)])`
-/

namespace A086861.P3553271988926299617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086861.P3553271988926299617

namespace A086861

/-- `A050500(p?[A006368(n)])` -/
def P3553271988926299617.Spec : Prop :=
  ∀ n, P3553271988926299617.a n = A086861 (n + 1)

end A086861

/-! ## A086861.P4322751690621125377

`A050500(p?[A001057(n)])`
-/

namespace A086861.P4322751690621125377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086861.P4322751690621125377

namespace A086861

/-- `A050500(p?[A001057(n)])` -/
def P4322751690621125377.Spec : Prop :=
  ∀ n, P4322751690621125377.a n = A086861 (n + 1)

end A086861

/-!
# A086862: Differences between successive palindromes.

The programs for A086862, there is no canonical definition to state claims against.
-/

/-! ## A086862.P9684501192248994546

`A002113(n+2)-A002113(n+1)`
-/

namespace A086862.P9684501192248994546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2) - A002113 (n + 1)

end

end A086862.P9684501192248994546

/-!
# A086863: a(n)=floor{square((1*n^0+1*n^1+2*n^2+4*n^3)/(1*n^0+2*n^1+1*n^2))}.

The programs for A086863, the canonical program `A086863.P12080904620428211243` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086863 has offset 1).

The definition of A086863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086863.P12080904620428211243

`A085505(n+1)-n²%(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086863

/-- `A085505(n+1)-n²%(n+1)` -/
def P12080904620428211243.Spec : Prop :=
  ∀ n, P12080904620428211243.a n = A086863 (n + 1)

theorem P12080904620428211243.correct : P12080904620428211243.Spec := by
  intro n
  simp only [A086863, Nat.add_sub_cancel]

end A086863

/-! ## A086863.P3923239608651491843

`A085505(n+1)+A057428(n)`
-/

namespace A086863.P3923239608651491843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) + A057428 n

end

end A086863.P3923239608651491843

namespace A086863

/-- `A085505(n+1)+A057428(n)` -/
def P3923239608651491843.Spec : Prop :=
  ∀ n, P3923239608651491843.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P11756550828307722858

`A085505(n+1)-A057427(n)`
-/

namespace A086863.P11756550828307722858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - A057427 n

end

end A086863.P11756550828307722858

namespace A086863

/-- `A085505(n+1)-A057427(n)` -/
def P11756550828307722858.Spec : Prop :=
  ∀ n, P11756550828307722858.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P7664571144270435195

`A085505(n+1)-abs(A165471(n))`
-/

namespace A086863.P7664571144270435195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - |A165471 n|

end

end A086863.P7664571144270435195

namespace A086863

/-- `A085505(n+1)-abs(A165471(n))` -/
def P7664571144270435195.Spec : Prop :=
  ∀ n, P7664571144270435195.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P7064633341045212458

`A085505(n+1)+A000007(n)-1`
-/

namespace A086863.P7064633341045212458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) + (A000007 n - 1)

end

end A086863.P7064633341045212458

namespace A086863

/-- `A085505(n+1)+A000007(n)-1` -/
def P7064633341045212458.Spec : Prop :=
  ∀ n, P7064633341045212458.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P1484620711333850749

`A085505(n+1)-A090996(A004761(n+1))`
-/

namespace A086863.P1484620711333850749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - A090996 (A004761 (n + 1)).toNat

end

end A086863.P1484620711333850749

namespace A086863

/-- `A085505(n+1)-A090996(A004761(n+1))` -/
def P1484620711333850749.Spec : Prop :=
  ∀ n, P1484620711333850749.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P16249345102187320052

`A085505(n+1)+A086790(n+2)-A086814(n+1)`
-/

namespace A086863.P16249345102187320052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) + (A086790 (n + 2) - A086814 (n + 1))

end

end A086863.P16249345102187320052

namespace A086863

/-- `A085505(n+1)+A086790(n+2)-A086814(n+1)` -/
def P16249345102187320052.Spec : Prop :=
  ∀ n, P16249345102187320052.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P5228838261890133055

`A085505(n+1)-A001221(A000961(n+1))`
-/

namespace A086863.P5228838261890133055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - A001221 (A000961 (n + 1)).toNat

end

end A086863.P5228838261890133055

namespace A086863

/-- `A085505(n+1)-A001221(A000961(n+1))` -/
def P5228838261890133055.Spec : Prop :=
  ∀ n, P5228838261890133055.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P15930686817288241742

`A085505(n+1)-A001222(A008578(n+1))`
-/

namespace A086863.P15930686817288241742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A086863.P15930686817288241742

namespace A086863

/-- `A085505(n+1)-A001222(A008578(n+1))` -/
def P15930686817288241742.Spec : Prop :=
  ∀ n, P15930686817288241742.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P9431706331631353055

`A085505(n+1)-A000035(A008578(2*(n+1)))`
-/

namespace A086863.P9431706331631353055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - A000035 (A008578 (2 * (n + 1))).toNat

end

end A086863.P9431706331631353055

namespace A086863

/-- `A085505(n+1)-A000035(A008578(2*(n+1)))` -/
def P9431706331631353055.Spec : Prop :=
  ∀ n, P9431706331631353055.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P17500592934290027242

`A085505(n+1)-A165471(n²)`
-/

namespace A086863.P17500592934290027242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - A165471 (n ^ 2)

end

end A086863.P17500592934290027242

namespace A086863

/-- `A085505(n+1)-A165471(n²)` -/
def P17500592934290027242.Spec : Prop :=
  ∀ n, P17500592934290027242.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P13748338305867550271

`A085505(n+1)-A002262(∑[n]+1)`
-/

namespace A086863.P13748338305867550271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086863.P13748338305867550271

namespace A086863

/-- `A085505(n+1)-A002262(∑[n]+1)` -/
def P13748338305867550271.Spec : Prop :=
  ∀ n, P13748338305867550271.a n = A086863 (n + 1)

end A086863

/-! ## A086863.P2107565449739660467

`A085505(n+1)-A001221(A025475(n+1))`
-/

namespace A086863.P2107565449739660467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - A001221 (A025475 (n + 1)).toNat

end

end A086863.P2107565449739660467

namespace A086863

/-- `A085505(n+1)-A001221(A025475(n+1))` -/
def P2107565449739660467.Spec : Prop :=
  ∀ n, P2107565449739660467.a n = A086863 (n + 1)

end A086863

/-!
# A086864: a(n) = (n-1)*(n-2)*(n-3)*(3*n-10)*3^(n-5)/4.

The programs for A086864, the canonical program `A086864.P15857541692846167241` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086864 has offset 1).

The definition of A086864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086864.P15857541692846167241

`n*(n-1)*(n-2)*(3*(n+1)-10)*3^(n-4)/4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086864

/-- `n*(n-1)*(n-2)*(3*(n+1)-10)*3^(n-4)/4` -/
def P15857541692846167241.Spec : Prop :=
  ∀ n, P15857541692846167241.a n = (A086864 (n + 1) : ℚ)

end A086864

/-! ## A086864.P18311725357213883444

`Δ[A004273(A358587(n+1)²)]`
-/

namespace A086864.P18311725357213883444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A358587 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086864.P18311725357213883444

namespace A086864

/-- `Δ[A004273(A358587(n+1)²)]` -/
def P18311725357213883444.Spec : Prop :=
  ∀ n, P18311725357213883444.a n = A086864 (n + 1)

end A086864

/-!
# A086865: Numbers n such that 2*10^n+11 is prime.

The programs for A086865, there is no canonical definition to state claims against.
-/

/-! ## A086865.P1722290735780202628

`lt[A329429(A331300(n)), 3]`
-/

namespace A086865.P1722290735780202628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329429 (A331300 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A086865.P1722290735780202628

/-! ## A086865.P3676495828956515285

`eq[A010884(n), A274346(n)]`
-/

namespace A086865.P3676495828956515285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086865.P3676495828956515285

/-! ## A086865.P4039866721681305205

`lt[A261356(A323243(n+1)), 4]`
-/

namespace A086865.P4039866721681305205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261356 (A323243 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A086865.P4039866721681305205

/-! ## A086865.P2125323112971872590

`lt[A004086(A257736(n+1)), 6]`
-/

namespace A086865.P2125323112971872590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A257736 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A086865.P2125323112971872590

/-! ## A086865.P17414202106044678668

`lt[A259153(A253885(n+3)), 23]`
-/

namespace A086865.P17414202106044678668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (A253885 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A086865.P17414202106044678668

/-!
# A086866: Third column of A059450.

The programs for A086866, the canonical program `A086866.P9146453805668651410` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086866 has offset 0).

The definition of A086866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086866.P9146453805668651410

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=17, a(4)=50`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086866

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P9146453805668651410.Spec : Prop :=
  ∀ n, P9146453805668651410.a n = A086866 n

theorem P9146453805668651410.correct : P9146453805668651410.Spec := by
  intro n
  simp only [A086866]

end A086866

/-! ## A086866.P15499359880182058592

`A058396(n)-xor(A111286(n+1), A131577(n))`
-/

namespace A086866.P15499359880182058592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n - Int.xor (A111286 (n + 1)) (A131577 n)

end

end A086866.P15499359880182058592

namespace A086866

/-- `A058396(n)-xor(A111286(n+1), A131577(n))` -/
def P15499359880182058592.Spec : Prop :=
  ∀ n, P15499359880182058592.a n = A086866 n

end A086866

/-! ## A086866.P17290952019880864962

`Δ[Δ[A034007(n)]*A289207(n)]`
-/

namespace A086866.P17290952019880864962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086866.P17290952019880864962

namespace A086866

/-- `Δ[Δ[A034007(n)]*A289207(n)]` -/
def P17290952019880864962.Spec : Prop :=
  ∀ n, P17290952019880864962.a n = A086866 n

end A086866

/-! ## A086866.P16927725678049272481

`Δ[A190050(n)-A111286(n+1)]`
-/

namespace A086866.P16927725678049272481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 n - A111286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086866.P16927725678049272481

namespace A086866

/-- `Δ[A190050(n)-A111286(n+1)]` -/
def P16927725678049272481.Spec : Prop :=
  ∀ n, P16927725678049272481.a n = A086866 n

end A086866

/-! ## A086866.P14549456282822325233

`A058396(n)-A008949(A347553(n+3))`
-/

namespace A086866.P14549456282822325233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n - A008949 (A347553 (n + 3)).toNat

end

end A086866.P14549456282822325233

namespace A086866

/-- `A058396(n)-A008949(A347553(n+3))` -/
def P14549456282822325233.Spec : Prop :=
  ∀ n, P14549456282822325233.a n = A086866 n

end A086866

/-! ## A086866.P4373781309417154447

`A059450(A133263(n))%A002999(n)`
-/

namespace A086866.P4373781309417154447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059450 (A133263 n).toNat) (A002999 n)

end

end A086866.P4373781309417154447

namespace A086866

/-- `A059450(A133263(n))%A002999(n)` -/
def P4373781309417154447.Spec : Prop :=
  ∀ n, P4373781309417154447.a n = A086866 n

end A086866

/-!
# A086867: a(n) = floor(abs(1/sin(n))).

The programs for A086867, the canonical program `A086867.P5641878844475301157` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086867 has offset 1).

The definition of A086867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(abs(1/sin(n+1)))` (program `A086867.P5641878844475301157`, by `A086867.P5641878844475301157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086867.P5641878844475301157

`floor(abs(1/sin(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086867

/-- `floor(abs(1/sin(n+1)))` -/
def P5641878844475301157.Spec : Prop :=
  ∀ n, P5641878844475301157.a n = A086867 (n + 1)

theorem P5641878844475301157.correct : P5641878844475301157.Spec := by
  intro n
  simp only [A086867, Nat.add_sub_cancel]

end A086867

/-! ## A086867.P6630556562614467152

`floor(sqrt(ceil(cot(n+1)²)))`
-/

namespace A086867.P6630556562614467152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌈Real.cot (n + 1 : ℝ) ^ 2⌉

end

end A086867.P6630556562614467152

namespace A086867

/-- `floor(sqrt(ceil(cot(n+1)²)))` -/
def P6630556562614467152.Spec : Prop :=
  ∀ n, P6630556562614467152.a n = A086867 (n + 1)

end A086867

/-! ## A086867.P16593468597242652003

`floor(tan(acot(abs(sin(n+1)))))`
-/

namespace A086867.P16593468597242652003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (SequenceMachineLib.acot |Real.sin (n + 1 : ℝ)|)⌋

end

end A086867.P16593468597242652003

namespace A086867

/-- `floor(tan(acot(abs(sin(n+1)))))` -/
def P16593468597242652003.Spec : Prop :=
  ∀ n, P16593468597242652003.a n = A086867 (n + 1)

end A086867

/-! ## A086867.P5524676149585004092

`floor(cot(atan(abs(sin(n+1)))))`
-/

namespace A086867.P5524676149585004092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.arctan |Real.sin (n + 1 : ℝ)|)⌋

end

end A086867.P5524676149585004092

namespace A086867

/-- `floor(cot(atan(abs(sin(n+1)))))` -/
def P5524676149585004092.Spec : Prop :=
  ∀ n, P5524676149585004092.a n = A086867 (n + 1)

end A086867

/-! ## A086867.P15921501422448141114

`floor(abs(sin(n+1)^-1))`
-/

namespace A086867.P15921501422448141114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.sin (n + 1 : ℝ) ^ (-1 : ℤ)|⌋

end

end A086867.P15921501422448141114

namespace A086867

/-- `floor(abs(sin(n+1)^-1))` -/
def P15921501422448141114.Spec : Prop :=
  ∀ n, P15921501422448141114.a n = A086867 (n + 1)

theorem P15921501422448141114.correct : P15921501422448141114.Spec := by
  intro n
  simp only [A086867, Nat.add_sub_cancel, A086867.P15921501422448141114.a, A086867.P5641878844475301157.a, SequenceMachineLib.memo_apply]
  try simp

end A086867

/-! ## A086867.P11640787598833783710

`ceil(1/abs(sin(n+1)))-1`
-/

namespace A086867.P11640787598833783710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / |Real.sin (n + 1 : ℝ)|⌉ - 1

end

end A086867.P11640787598833783710

namespace A086867

/-- `ceil(1/abs(sin(n+1)))-1` -/
def P11640787598833783710.Spec : Prop :=
  ∀ n, P11640787598833783710.a n = A086867 (n + 1)

end A086867

/-!
# A086868: a(n) = Floor(1/sin(A070752(n))).

The programs for A086868, the canonical program `A086868.P3547738365041611846` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086868 has offset 1).

The definition of A086868 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070752, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086868.P3547738365041611846

`floor(1/sin(A070752(n+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086868

/-- `floor(1/sin(A070752(n+1)))` -/
def P3547738365041611846.Spec : Prop :=
  ∀ n, P3547738365041611846.a n = A086868 (n + 1)

theorem P3547738365041611846.correct : P3547738365041611846.Spec := by
  intro n
  simp only [A086868, Nat.add_sub_cancel]

end A086868

/-! ## A086868.P628940987664106404

`floor(1/sin(lt[0, sin(n)]))`
-/

namespace A086868.P628940987664106404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.sin (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n : ℝ)⌋

end

end A086868.P628940987664106404

namespace A086868

/-- `floor(1/sin(lt[0, sin(n)]))` -/
def P628940987664106404.Spec : Prop :=
  ∀ n, P628940987664106404.a n = A086868 (n + 1)

theorem P628940987664106404.correct : P628940987664106404.Spec := by
  intro n
  simp only [A086868, Nat.add_sub_cancel, A086868.P628940987664106404.f1, A086868.P628940987664106404.f2, A086868.P628940987664106404.a, A086868.P3547738365041611846.a, A070752, A070752.P3648163339810385949.f1, A070752.P3648163339810385949.f2, A070752.P3648163339810385949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086868

/-! ## A086868.P11043907663608983435

`A086867(lt[0, sin(n)])`
-/

namespace A086868.P11043907663608983435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A086868.P11043907663608983435

namespace A086868

/-- `A086867(lt[0, sin(n)])` -/
def P11043907663608983435.Spec : Prop :=
  ∀ n, P11043907663608983435.a n = A086868 (n + 1)

end A086868

/-! ## A086868.P3829485327787280918

`A086867(lt[0, tan(n/2)])`
-/

namespace A086868.P3829485327787280918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A086868.P3829485327787280918

namespace A086868

/-- `A086867(lt[0, tan(n/2)])` -/
def P3829485327787280918.Spec : Prop :=
  ∀ n, P3829485327787280918.a n = A086868 (n + 1)

end A086868

/-! ## A086868.P6304888280476979737

`A086867(record[n^ceil(sin(n))])`
-/

namespace A086868.P6304888280476979737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.sin (n : ℝ)⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A086868.P6304888280476979737

namespace A086868

/-- `A086867(record[n^ceil(sin(n))])` -/
def P6304888280476979737.Spec : Prop :=
  ∀ n, P6304888280476979737.a n = A086868 (n + 1)

end A086868

/-! ## A086868.P15010542053716421729

`A086867(lt[0, n*cos(n+11)])`
-/

namespace A086868.P15010542053716421729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.cos (n + 11 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A086868.P15010542053716421729

namespace A086868

/-- `A086867(lt[0, n*cos(n+11)])` -/
def P15010542053716421729.Spec : Prop :=
  ∀ n, P15010542053716421729.a n = A086868 (n + 1)

end A086868

/-! ## A086868.P13880198737043520508

`A086867(lt[cos(n+1), cos(1-n)])`
-/

namespace A086868.P13880198737043520508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 - (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086868.P13880198737043520508

namespace A086868

/-- `A086867(lt[cos(n+1), cos(1-n)])` -/
def P13880198737043520508.Spec : Prop :=
  ∀ n, P13880198737043520508.a n = A086868 (n + 1)

end A086868

/-! ## A086868.P630892552850318354

`A086867(record[(n+1)*ceil(sin(n+1))])`
-/

namespace A086868.P630892552850318354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈Real.sin (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086868.P630892552850318354

namespace A086868

/-- `A086867(record[(n+1)*ceil(sin(n+1))])` -/
def P630892552850318354.Spec : Prop :=
  ∀ n, P630892552850318354.a n = A086868 (n + 1)

end A086868

/-! ## A086868.P14779644910903965216

`A086867(A070752(n+1))`
-/

namespace A086868.P14779644910903965216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (A070752 (n + 1)).toNat

end

end A086868.P14779644910903965216

namespace A086868

/-- `A086867(A070752(n+1))` -/
def P14779644910903965216.Spec : Prop :=
  ∀ n, P14779644910903965216.a n = A086868 (n + 1)

end A086868

/-!
# A086869: a(n) = Floor(abs(1/sin(A070751(n)))).

The programs for A086869, there is no canonical definition to state claims against.
-/

/-! ## A086869.P6911589636501437633

`A086867(lt[tan(n/2), 0])%A345707(n+1)`
-/

namespace A086869.P6911589636501437633
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086867 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)) (A345707 (n + 1))

end

end A086869.P6911589636501437633

/-! ## A086869.P16044173468759921926

`A086867(lt[cos(n+11), 0])%A345707(n+1)`
-/

namespace A086869.P16044173468759921926
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 11 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086867 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)) (A345707 (n + 1))

end

end A086869.P16044173468759921926

/-! ## A086869.P8386421495984568322

`A086867(A070751(n+1))%A345707(n+1)`
-/

namespace A086869.P8386421495984568322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086867 (A070751 (n + 1)).toNat) (A345707 (n + 1))

end

end A086869.P8386421495984568322

/-! ## A086869.P12999588120277587289

`A086867(comp[A246303(n+1)-9])%A345707(n+1)`
-/

namespace A086869.P12999588120277587289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1) - 9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086867 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A345707 (n + 1))

end

end A086869.P12999588120277587289

/-! ## A086869.P7525393801486781001

`A086867(A070751(n+1))%A151800(A048578(n))`
-/

namespace A086869.P7525393801486781001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086867 (A070751 (n + 1)).toNat) (A151800 (A048578 n).toNat)

end

end A086869.P7525393801486781001

/-!
# A086870: Primes equal to a product of twin primes minus 1 divided by 2.

The programs for A086870, there is no canonical definition to state claims against.
-/

/-! ## A086870.P14286630677252320895

`A269663(n+1)/2`
-/

namespace A086870.P14286630677252320895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269663 (n + 1) : ℚ) / 2

end

end A086870.P14286630677252320895

/-! ## A086870.P155153898765694911

`(A107423(n+1)-1)/2`
-/

namespace A086870.P155153898765694911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107423 (n + 1) - 1 : ℚ) / 2

end

end A086870.P155153898765694911

/-! ## A086870.P17320897397623442337

`ceil(A269663(Δ[n²]-n)/2)`
-/

namespace A086870.P17320897397623442337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269663 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌉

end

end A086870.P17320897397623442337

/-! ## A086870.P7909134431499362842

`floor(((A109945(n+1)+1)²-1)/2)`
-/

namespace A086870.P7909134431499362842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A109945 (n + 1) + 1) ^ 2 - 1 : ℚ) / 2⌋

end

end A086870.P7909134431499362842

/-! ## A086870.P4717143037029194557

`record[A103533(n+1)/A001223(A103746(n+1))]`
-/

namespace A086870.P4717143037029194557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103533 (n + 1) : ℚ) / (A001223 (A103746 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086870.P4717143037029194557

/-! ## A086870.P14901863056868721747

`∩[A103533(n+1), A120875(n+1)]/2`
-/

namespace A086870.P14901863056868721747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086870.P14901863056868721747

/-! ## A086870.P9449068553900734910

`∩[A066436(n+1), A120876(n+1)]`
-/

namespace A086870.P9449068553900734910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086870.P9449068553900734910

/-! ## A086870.P1849907003115817734

`∩[A066436(n+1), A102770(n+1)]`
-/

namespace A086870.P1849907003115817734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086870.P1849907003115817734

/-! ## A086870.P485560355045787234

`(A000203(A109945(n+1))²-2)/2`
-/

namespace A086870.P485560355045787234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A109945 (n + 1)).toNat ^ 2 - 2 : ℚ) / 2

end

end A086870.P485560355045787234

/-! ## A086870.P2834227107034851931

`∩[A102770(n+1), A256917(n+1)]`
-/

namespace A086870.P2834227107034851931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086870.P2834227107034851931

/-! ## A086870.P1533444407152283262

`∩[A120876(n+1), A256917(n+1)]`
-/

namespace A086870.P1533444407152283262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086870.P1533444407152283262

/-!
# A086871: Row sums of A059450.

The programs for A086871, the canonical program `A086871.P3333927499984275982` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086871 has offset 0).

The definition of A086871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086871.P7097946160930597432

`ceil(cosh(sin(n)))*A059231(n)`
-/

namespace A086871.P7097946160930597432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A059231 n

end

end A086871.P7097946160930597432

namespace A086871

/-- `ceil(cosh(sin(n)))*A059231(n)` -/
def P7097946160930597432.Spec : Prop :=
  ∀ n, P7097946160930597432.a n = A086871 n

end A086871

/-! ## A086871.P12784903008062181347

`A127846(n)+A059231(n)`
-/

namespace A086871.P12784903008062181347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127846 n + A059231 n

end

end A086871.P12784903008062181347

namespace A086871

/-- `A127846(n)+A059231(n)` -/
def P12784903008062181347.Spec : Prop :=
  ∀ n, P12784903008062181347.a n = A086871 n

end A086871

/-! ## A086871.P5925186660122635826

`A127846(n)+∑[A210474(n)]`
-/

namespace A086871.P5925186660122635826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127846 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086871.P5925186660122635826

namespace A086871

/-- `A127846(n)+∑[A210474(n)]` -/
def P5925186660122635826.Spec : Prop :=
  ∀ n, P5925186660122635826.a n = A086871 n

end A086871

/-! ## A086871.P1476365898297519216

`A000007(n)+Δ[A162326(n)]`
-/

namespace A086871.P1476365898297519216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A086871.P1476365898297519216

namespace A086871

/-- `A000007(n)+Δ[A162326(n)]` -/
def P1476365898297519216.Spec : Prop :=
  ∀ n, P1476365898297519216.a n = A086871 n

end A086871

/-! ## A086871.P8868934415341855998

`Δ[A162326(n)+A057427(n)]`
-/

namespace A086871.P8868934415341855998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162326 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086871.P8868934415341855998

namespace A086871

/-- `Δ[A162326(n)+A057427(n)]` -/
def P8868934415341855998.Spec : Prop :=
  ∀ n, P8868934415341855998.a n = A086871 n

end A086871

/-! ## A086871.P14155442294319796866

`Δ[A178334(n)+A162326(n)]`
-/

namespace A086871.P14155442294319796866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A162326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086871.P14155442294319796866

namespace A086871

/-- `Δ[A178334(n)+A162326(n)]` -/
def P14155442294319796866.Spec : Prop :=
  ∀ n, P14155442294319796866.a n = A086871 n

end A086871

/-! ## A086871.P3333927499984275982

`(A057427(n)+1)*A059231(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A086871

/-- `(A057427(n)+1)*A059231(n)` -/
def P3333927499984275982.Spec : Prop :=
  ∀ n, P3333927499984275982.a n = A086871 n

theorem P3333927499984275982.correct : P3333927499984275982.Spec := by
  intro n
  simp only [A086871]

end A086871

/-! ## A086871.P2009914250292001371

`(2-A000007(n))*A059231(n)`
-/

namespace A086871.P2009914250292001371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A059231 n

end

end A086871.P2009914250292001371

namespace A086871

/-- `(2-A000007(n))*A059231(n)` -/
def P2009914250292001371.Spec : Prop :=
  ∀ n, P2009914250292001371.a n = A086871 n

theorem P2009914250292001371.correct : P2009914250292001371.Spec := by
  intro n
  simp only [A086871, Nat.add_sub_cancel, A086871.P2009914250292001371.a, A086871.P3333927499984275982.a, A000007, A000007.P6599383543502402472.a, A057427, A057427.P3058147525557661423.a, A059231, A059231.P6613013363753559526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086871

/-! ## A086871.P14544753084208045226

`A059231(n)*A280560(2*n)`
-/

namespace A086871.P14544753084208045226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n * A280560 (2 * n)

end

end A086871.P14544753084208045226

namespace A086871

/-- `A059231(n)*A280560(2*n)` -/
def P14544753084208045226.Spec : Prop :=
  ∀ n, P14544753084208045226.a n = A086871 n

end A086871

/-! ## A086871.P6476266060204498850

`gcd(2, A210474(n))*A059231(n)`
-/

namespace A086871.P6476266060204498850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A210474 n) : ℤ) * A059231 n

end

end A086871.P6476266060204498850

namespace A086871

/-- `gcd(2, A210474(n))*A059231(n)` -/
def P6476266060204498850.Spec : Prop :=
  ∀ n, P6476266060204498850.a n = A086871 n

end A086871

/-! ## A086871.P8801698814160303988

`A006530(A062383(n))*A059231(n)`
-/

namespace A086871.P8801698814160303988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062383 n).toNat * A059231 n

end

end A086871.P8801698814160303988

namespace A086871

/-- `A006530(A062383(n))*A059231(n)` -/
def P8801698814160303988.Spec : Prop :=
  ∀ n, P8801698814160303988.a n = A086871 n

end A086871

/-! ## A086871.P14601672533195646839

`A006530(A102376(n))*A059231(n)`
-/

namespace A086871.P14601672533195646839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102376 n).toNat * A059231 n

end

end A086871.P14601672533195646839

namespace A086871

/-- `A006530(A102376(n))*A059231(n)` -/
def P14601672533195646839.Spec : Prop :=
  ∀ n, P14601672533195646839.a n = A086871 n

end A086871

/-! ## A086871.P17894505339716732267

`A020639(A256251(n))*A059231(n)`
-/

namespace A086871.P17894505339716732267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A256251 n).toNat * A059231 n

end

end A086871.P17894505339716732267

namespace A086871

/-- `A020639(A256251(n))*A059231(n)` -/
def P17894505339716732267.Spec : Prop :=
  ∀ n, P17894505339716732267.a n = A086871 n

end A086871

/-! ## A086871.P7718239598531353163

`(A057427(n)+1)*A059450(A000096(n))`
-/

namespace A086871.P7718239598531353163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A059450 (A000096 n).toNat

end

end A086871.P7718239598531353163

namespace A086871

/-- `(A057427(n)+1)*A059450(A000096(n))` -/
def P7718239598531353163.Spec : Prop :=
  ∀ n, P7718239598531353163.a n = A086871 n

end A086871

/-! ## A086871.P6461547605616450671

`A320389(A020639(n+1))*A059231(n)`
-/

namespace A086871.P6461547605616450671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320389 (A020639 (n + 1)).toNat * A059231 n

end

end A086871.P6461547605616450671

namespace A086871

/-- `A320389(A020639(n+1))*A059231(n)` -/
def P6461547605616450671.Spec : Prop :=
  ∀ n, P6461547605616450671.a n = A086871 n

end A086871

/-! ## A086871.P13776486621927865985

`(2-A000007(n))*A059450(A000096(n))`
-/

namespace A086871.P13776486621927865985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A059450 (A000096 n).toNat

end

end A086871.P13776486621927865985

namespace A086871

/-- `(2-A000007(n))*A059450(A000096(n))` -/
def P13776486621927865985.Spec : Prop :=
  ∀ n, P13776486621927865985.a n = A086871 n

end A086871

/-! ## A086871.P12542478349585598001

`A006318(n)/A001003(n)*A059231(n)`
-/

namespace A086871.P12542478349585598001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n : ℚ) / (A001003 n : ℚ) * (A059231 n : ℚ)

end

end A086871.P12542478349585598001

namespace A086871

/-- `A006318(n)/A001003(n)*A059231(n)` -/
def P12542478349585598001.Spec : Prop :=
  ∀ n, P12542478349585598001.a n = (A086871 n : ℚ)

end A086871

/-! ## A086871.P2633173528185117220

`A162326(n+1)+A000007(n)-A162326(n)`
-/

namespace A086871.P2633173528185117220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162326 (n + 1) + (A000007 n - A162326 n)

end

end A086871.P2633173528185117220

namespace A086871

/-- `A162326(n+1)+A000007(n)-A162326(n)` -/
def P2633173528185117220.Spec : Prop :=
  ∀ n, P2633173528185117220.a n = A086871 n

end A086871

/-! ## A086871.P5691732402360792261

`ceil(A082298(n)/2)`
-/

namespace A086871.P5691732402360792261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082298 n : ℚ) / 2⌉

end

end A086871.P5691732402360792261

namespace A086871

/-- `ceil(A082298(n)/2)` -/
def P5691732402360792261.Spec : Prop :=
  ∀ n, P5691732402360792261.a n = A086871 n

end A086871

/-!
# A086872: Triangle T(n, k) read by rows; given by [1, 2, 3, 4, 5, 6, ..] DELTA [1, 4, 9, 16, 25, 36, ...] where DELTA is the operator defined in A084938.

The programs for A086872, there is no canonical definition to state claims against.
-/

/-! ## A086872.P6543089941558262086

`A098906(A057944(n)+A061579(n)+1)`
-/

namespace A086872.P6543089941558262086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098906 (A057944 n + (A061579 n + 1)).toNat

end

end A086872.P6543089941558262086

/-!
# A086874: Seventh power of odd primes.

The programs for A086874, the canonical program `A086874.P14194867719360246777` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086874 has offset 1).

The definition of A086874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086874.P14194867719360246777

`A000040(n+2)^7`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086874

/-- `A000040(n+2)^7` -/
def P14194867719360246777.Spec : Prop :=
  ∀ n, P14194867719360246777.a n = A086874 (n + 1)

theorem P14194867719360246777.correct : P14194867719360246777.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel]

end A086874

/-! ## A086874.P745263052435021702

`p?[2*n+1]^7`
-/

namespace A086874.P745263052435021702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 7

end

end A086874.P745263052435021702

namespace A086874

/-- `p?[2*n+1]^7` -/
def P745263052435021702.Spec : Prop :=
  ∀ n, (P745263052435021702.a n : ℤ) = A086874 (n + 1)

end A086874

/-! ## A086874.P9803880837245305417

`root(p?[2*n+1], 1/7)`
-/

namespace A086874.P9803880837245305417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / ((1 : ℚ) / 7 : ℝ))

end

end A086874.P9803880837245305417

namespace A086874

/-- `root(p?[2*n+1], 1/7)` -/
def P9803880837245305417.Spec : Prop :=
  ∀ n, P9803880837245305417.a n = (A086874 (n + 1) : ℝ)

end A086874

/-! ## A086874.P1173147943053103609

`A065091(n+1)^7`
-/

namespace A086874.P1173147943053103609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 7

end

end A086874.P1173147943053103609

namespace A086874

/-- `A065091(n+1)^7` -/
def P1173147943053103609.Spec : Prop :=
  ∀ n, P1173147943053103609.a n = A086874 (n + 1)

end A086874

/-! ## A086874.P10744235259056793382

`A133538(n+1)-A092759(n+1)`
-/

namespace A086874.P10744235259056793382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133538 (n + 1) - A092759 (n + 1)

end

end A086874.P10744235259056793382

namespace A086874

/-- `A133538(n+1)-A092759(n+1)` -/
def P10744235259056793382.Spec : Prop :=
  ∀ n, P10744235259056793382.a n = A086874 (n + 1)

theorem P10744235259056793382.correct : P10744235259056793382.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel, A086874.P10744235259056793382.a, A086874.P14194867719360246777.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092759, A092759.P10365930146465751826.a, A133538, A133538.P15090665572470538733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086874

/-! ## A086874.P8709889282694352195

`A092759(n+2)`
-/

namespace A086874.P8709889282694352195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 2)

end

end A086874.P8709889282694352195

namespace A086874

/-- `A092759(n+2)` -/
def P8709889282694352195.Spec : Prop :=
  ∀ n, P8709889282694352195.a n = A086874 (n + 1)

end A086874

/-! ## A086874.P13943915174168577375

`Δ[A236209(n+1)]`
-/

namespace A086874.P13943915174168577375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086874.P13943915174168577375

namespace A086874

/-- `Δ[A236209(n+1)]` -/
def P13943915174168577375.Spec : Prop :=
  ∀ n, P13943915174168577375.a n = A086874 (n + 1)

end A086874

/-! ## A086874.P6774479666574560583

`A006005(n+2)^7`
-/

namespace A086874.P6774479666574560583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) ^ 7

end

end A086874.P6774479666574560583

namespace A086874

/-- `A006005(n+2)^7` -/
def P6774479666574560583.Spec : Prop :=
  ∀ n, P6774479666574560583.a n = A086874 (n + 1)

theorem P6774479666574560583.correct : P6774479666574560583.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel, A086874.P6774479666574560583.a, A086874.P14194867719360246777.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006005, A006005.P1228063357782503489.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086874

/-! ## A086874.P15416712285497870351

`A135182(n+2)+A098935(n+2)`
-/

namespace A086874.P15416712285497870351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 2) + A098935 (n + 2)

end

end A086874.P15416712285497870351

namespace A086874

/-- `A135182(n+2)+A098935(n+2)` -/
def P15416712285497870351.Spec : Prop :=
  ∀ n, P15416712285497870351.a n = A086874 (n + 1)

theorem P15416712285497870351.correct : P15416712285497870351.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel, A086874.P15416712285497870351.a, A086874.P14194867719360246777.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098935, A098935.P1627606373687162864.a, A135182, A135182.P14277112270970235389.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, A050997, A050997.P5231147570234137425.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086874

/-! ## A086874.P12916383480732415003

`A236209(n+2)-A236209(n+1)`
-/

namespace A086874.P12916383480732415003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236209 (n + 2) - A236209 (n + 1)

end

end A086874.P12916383480732415003

namespace A086874

/-- `A236209(n+2)-A236209(n+1)` -/
def P12916383480732415003.Spec : Prop :=
  ∀ n, P12916383480732415003.a n = A086874 (n + 1)

end A086874

/-! ## A086874.P9128752255648461272

`A000040(n+2)*A030516(n+2)`
-/

namespace A086874.P9128752255648461272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A030516 (n + 2)

end

end A086874.P9128752255648461272

namespace A086874

/-- `A000040(n+2)*A030516(n+2)` -/
def P9128752255648461272.Spec : Prop :=
  ∀ n, P9128752255648461272.a n = A086874 (n + 1)

theorem P9128752255648461272.correct : P9128752255648461272.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel, A086874.P9128752255648461272.a, A086874.P14194867719360246777.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030516, A030516.P1711246340231228216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086874

/-! ## A086874.P11721266739613883223

`A001248(n+2)*A050997(n+2)`
-/

namespace A086874.P11721266739613883223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) * A050997 (n + 2)

end

end A086874.P11721266739613883223

namespace A086874

/-- `A001248(n+2)*A050997(n+2)` -/
def P11721266739613883223.Spec : Prop :=
  ∀ n, P11721266739613883223.a n = A086874 (n + 1)

theorem P11721266739613883223.correct : P11721266739613883223.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel, A086874.P11721266739613883223.a, A086874.P14194867719360246777.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086874

/-! ## A086874.P12401862222675219088

`A030078(n+2)*A030514(n+2)`
-/

namespace A086874.P12401862222675219088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 2) * A030514 (n + 2)

end

end A086874.P12401862222675219088

namespace A086874

/-- `A030078(n+2)*A030514(n+2)` -/
def P12401862222675219088.Spec : Prop :=
  ∀ n, P12401862222675219088.a n = A086874 (n + 1)

theorem P12401862222675219088.correct : P12401862222675219088.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel, A086874.P12401862222675219088.a, A086874.P14194867719360246777.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A030514, A030514.P11974636125371552077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086874

/-! ## A086874.P11572902981809874939

`A030629(n+2)/A030078(n+2)`
-/

namespace A086874.P11572902981809874939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030629 (n + 2) : ℚ) / (A030078 (n + 2) : ℚ)

end

end A086874.P11572902981809874939

namespace A086874

/-- `A030629(n+2)/A030078(n+2)` -/
def P11572902981809874939.Spec : Prop :=
  ∀ n, P11572902981809874939.a n = (A086874 (n + 1) : ℚ)

end A086874

/-! ## A086874.P4880464819778751881

`A079395(n+2)/A030514(n+2)`
-/

namespace A086874.P4880464819778751881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079395 (n + 2) : ℚ) / (A030514 (n + 2) : ℚ)

end

end A086874.P4880464819778751881

namespace A086874

/-- `A079395(n+2)/A030514(n+2)` -/
def P4880464819778751881.Spec : Prop :=
  ∀ n, P4880464819778751881.a n = (A086874 (n + 1) : ℚ)

end A086874

/-! ## A086874.P9912823778673753369

`A138031(n+2)/A030516(n+2)`
-/

namespace A086874.P9912823778673753369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138031 (n + 2) : ℚ) / (A030516 (n + 2) : ℚ)

end

end A086874.P9912823778673753369

namespace A086874

/-- `A138031(n+2)/A030516(n+2)` -/
def P9912823778673753369.Spec : Prop :=
  ∀ n, P9912823778673753369.a n = (A086874 (n + 1) : ℚ)

end A086874

/-! ## A086874.P8953282184145947707

`A179645(n+2)/A000040(n+2)`
-/

namespace A086874.P8953282184145947707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179645 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A086874.P8953282184145947707

namespace A086874

/-- `A179645(n+2)/A000040(n+2)` -/
def P8953282184145947707.Spec : Prop :=
  ∀ n, P8953282184145947707.a n = (A086874 (n + 1) : ℚ)

end A086874

/-! ## A086874.P2530859485032314485

`A179665(n+2)/A001248(n+2)`
-/

namespace A086874.P2530859485032314485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179665 (n + 2) : ℚ) / (A001248 (n + 2) : ℚ)

end

end A086874.P2530859485032314485

namespace A086874

/-- `A179665(n+2)/A001248(n+2)` -/
def P2530859485032314485.Spec : Prop :=
  ∀ n, P2530859485032314485.a n = (A086874 (n + 1) : ℚ)

end A086874

/-! ## A086874.P6606913680521721348

`A030078(n+2)²*A000040(n+2)`
-/

namespace A086874.P6606913680521721348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 2) ^ 2 * A000040 (n + 2)

end

end A086874.P6606913680521721348

namespace A086874

/-- `A030078(n+2)²*A000040(n+2)` -/
def P6606913680521721348.Spec : Prop :=
  ∀ n, P6606913680521721348.a n = A086874 (n + 1)

theorem P6606913680521721348.correct : P6606913680521721348.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel, A086874.P6606913680521721348.a, A086874.P14194867719360246777.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086874

/-! ## A086874.P17663368802197693508

`A001248(n+2)²*A030078(n+2)`
-/

namespace A086874.P17663368802197693508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) ^ 2 * A030078 (n + 2)

end

end A086874.P17663368802197693508

namespace A086874

/-- `A001248(n+2)²*A030078(n+2)` -/
def P17663368802197693508.Spec : Prop :=
  ∀ n, P17663368802197693508.a n = A086874 (n + 1)

theorem P17663368802197693508.correct : P17663368802197693508.Spec := by
  intro n
  simp only [A086874, Nat.add_sub_cancel, A086874.P17663368802197693508.a, A086874.P14194867719360246777.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086874

/-!
# A086876: Run lengths in A071542.

The programs for A086876, there is no canonical definition to state claims against.
-/

/-! ## A086876.P5636904557636099427

`Δ[A213708(n)]`
-/

namespace A086876.P5636904557636099427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086876.P5636904557636099427

/-! ## A086876.P14096456273223965667

`abs(Δ[A173601(abs(1-n))])`
-/

namespace A086876.P14096456273223965667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A086876.P14096456273223965667

/-! ## A086876.P10918815125941725068

`A173601(n)+1-A213708(n)`
-/

namespace A086876.P10918815125941725068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n + (1 - A213708 n)

end

end A086876.P10918815125941725068

/-! ## A086876.P2865401530568422253

`A213708(n+1)-A213708(n)`
-/

namespace A086876.P2865401530568422253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 (n + 1) - A213708 n

end

end A086876.P2865401530568422253

/-! ## A086876.P6075693771415439406

`A218603(n)+A218604(n)+1`
-/

namespace A086876.P6075693771415439406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218603 n + (A218604 n + 1)

end

end A086876.P6075693771415439406

/-! ## A086876.P11338468127237118292

`Δ[A179016(n)-A218603(n)]`
-/

namespace A086876.P11338468127237118292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n - A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086876.P11338468127237118292

/-! ## A086876.P3928342405739904675

`Δ[A007843(a(n-1))]` with `a(0)=0`
-/

namespace A086876.P3928342405739904675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A007843 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086876.P3928342405739904675

/-!
# A086879: Number of symmetric singular n X n matrices over GF(2).

The programs for A086879, there is no canonical definition to state claims against.
-/

/-! ## A086879.P15563167547985941021

`2^((n+1)*(n+2)/2)-A086812(n+1)`
-/

namespace A086879.P15563167547985941021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n + 1) * (n + 2) : ℚ) / 2 : ℝ) - (A086812 (n + 1) : ℝ)

end

end A086879.P15563167547985941021

/-! ## A086879.P7473842746974743395

`∏[A000079(n+1)]-∏[A051049(n+1)]`
-/

namespace A086879.P7473842746974743395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ∏ j ∈ Finset.range (n + 1), f2 j

end

end A086879.P7473842746974743395

/-!
# A086880: a(n) = floor(Sum_{k=0..infinity} k^n/(k!)^2); related to generalized Bell numbers.

The programs for A086880, there is no canonical definition to state claims against.
-/

/-! ## A086880.P9188570039005893756

`A003056(A201950(n)+2)`
-/

namespace A086880.P9188570039005893756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A201950 n + 2).toNat

end

end A086880.P9188570039005893756

/-! ## A086880.P16133978423682893630

`A002024(A201949(∑[2*n])+3)-1`
-/

namespace A086880.P16133978423682893630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A201949 (∑ j ∈ Finset.range (n + 1), f1 j) + 3).toNat - 1

end

end A086880.P16133978423682893630

/-! ## A086880.P5636357366516782273

`ceil(A121096(n+2)/A121055(2*n))`
-/

namespace A086880.P5636357366516782273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121096 (n + 2) : ℚ) / (A121055 (2 * n) : ℚ)⌉

end

end A086880.P5636357366516782273

/-! ## A086880.P14258310788867590169

`A107680(a(n-1))-∑[1-A137921(n+1)]` with `a(0)=2`
-/

namespace A086880.P14258310788867590169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A107680 (a (n - 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086880.P14258310788867590169

/-!
# A086881: a(n) = (2*n)!*Sum[Sum[1/(i+j),{i,1,n}],{j,1,n}].

The programs for A086881, there is no canonical definition to state claims against.
-/

/-! ## A086881.P3985752551830308158

`A130679(2*(n+1))-A000254(2*(n+1))`
-/

namespace A086881.P3985752551830308158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130679 (2 * (n + 1)) - A000254 (2 * (n + 1))

end

end A086881.P3985752551830308158

/-!
# A086883: Numbers n such that the decimal expansion of 1/n is nonterminating and contains arbitrarily long palindromic substrings.

The programs for A086883, there is no canonical definition to state claims against.
-/

/-! ## A086883.P5312868754541807956

`eq[A127973(A292264(n)), A293390(n)]`
-/

namespace A086883.P5312868754541807956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127973 (A292264 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086883.P5312868754541807956

/-! ## A086883.P4488873236062462352

`A201462(lt[A360297(n+1), A253644(n+1)²])`
-/

namespace A086883.P4488873236062462352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253644 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201462 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086883.P4488873236062462352

/-! ## A086883.P7699795273639144810

`A230193(lt[A165520(2*(n+2)), A011531(n+1)])`
-/

namespace A086883.P7699795273639144810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165520 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230193 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086883.P7699795273639144810

/-! ## A086883.P173255333233629370

`A201462(lt[A360297(n+1), A253644(3*n+1)])`
-/

namespace A086883.P173255333233629370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253644 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201462 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086883.P173255333233629370

/-! ## A086883.P14323831101962595716

`A201462(lt[A360297(n+1), A325325(3*n+1)])`
-/

namespace A086883.P14323831101962595716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201462 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086883.P14323831101962595716

/-!
# A086884: Smallest string of 1's and 0's which is prime in every base from 2 to n.

The programs for A086884, there is no canonical definition to state claims against.
-/

/-! ## A086884.P5449466228330606001

`A007088(A086204(n+2))`
-/

namespace A086884.P5449466228330606001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A086204 (n + 2)).toNat

end

end A086884.P5449466228330606001

/-!
# A086885: Lower triangular matrix, read by rows: T(i,j) = number of ways i seats can be occupied by any number k (0<=k<=j<=i) of persons.

The programs for A086885, there is no canonical definition to state claims against.
-/

/-! ## A086885.P604157222071551538

`A176120(comp[∑[n]])`
-/

namespace A086885.P604157222071551538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A086885.P604157222071551538

/-! ## A086885.P17178066757034855039

`A293985(2*A003057(n+2)+n)`
-/

namespace A086885.P17178066757034855039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A086885.P17178066757034855039

/-! ## A086885.P9300549542857229805

`A293985(2*A014132(n+1)-n)`
-/

namespace A086885.P9300549542857229805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A086885.P9300549542857229805

/-! ## A086885.P9740717396353278146

`A293985(A014132(n+1)+A003057(n+2))`
-/

namespace A086885.P9740717396353278146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A014132 (n + 1) + A003057 (n + 2)).toNat

end

end A086885.P9740717396353278146

/-! ## A086885.P9564456743320086273

`A293985(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A086885.P9564456743320086273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A086885.P9564456743320086273

/-! ## A086885.P9976294686332661531

`A293985(A003057(n+2)+A003057(n+2)+n)`
-/

namespace A086885.P9976294686332661531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A003057 (n + 2) + (A003057 (n + 2) + (n : ℤ))).toNat

end

end A086885.P9976294686332661531

/-! ## A086885.P17122381047985079859

`A293985(lt[∑[n], n*A293985(n+1)])`
-/

namespace A086885.P17122381047985079859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A293985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A086885.P17122381047985079859

/-!
# A086887: a(n) = least semiprime with factors not previously used containing integers 2n and 2n+1 as substrings.

The programs for A086887, there is no canonical definition to state claims against.
-/

/-! ## A086887.P9453001344572985936

`A394347(2*n)*A394347(2*n+1)`
-/

namespace A086887.P9453001344572985936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394347 (2 * n) * A394347 (2 * n + 1)

end

end A086887.P9453001344572985936

/-!
# A086889: Real part of Propp's cubic recurrence starting with i (i^2=-1).

The programs for A086889, there is no canonical definition to state claims against.
-/

/-! ## A086889.P14612698990927721081

`A334950(n)-A334950(A224958(n))`
-/

namespace A086889.P14612698990927721081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334950 n - A334950 (A224958 n).toNat

end

end A086889.P14612698990927721081

/-! ## A086889.P1770285290670225671

`A024316(3*n+2)-A057554(A321722(n))`
-/

namespace A086889.P1770285290670225671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (3 * n + 2) - A057554 (A321722 n).toNat

end

end A086889.P1770285290670225671

/-!
# A086891: Denominator of 4*(Integral_{x=0..1} (1-x^2)^((2n-1)/2) dx)/Pi.

The programs for A086891, there is no canonical definition to state claims against.
-/

/-! ## A086891.P2673161911339112064

`A014682(∏[2*lcm(3, n+1)/3])`
-/

namespace A086891.P2673161911339112064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm 3 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086891.P2673161911339112064

/-! ## A086891.P8562045147824151725

`∏[A003570(record[gcd(2, n)^(n+1)-1])]`
-/

namespace A086891.P8562045147824151725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ (n + 1) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003570 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086891.P8562045147824151725

/-! ## A086891.P5905555393142602751

`∏[A054709(∑[A000302(n)])]`
-/

namespace A086891.P5905555393142602751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086891.P5905555393142602751

/-!
# A086892: Greatest common divisor of 2^n-1 and 3^n-1.

The programs for A086892, the canonical program `A086892.P11479569289397084803` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086892 has offset 1).

The definition of A086892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086892.P11479569289397084803

`gcd(2^(n+1)-1, 3^(n+1)-1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086892

/-- `gcd(2^(n+1)-1, 3^(n+1)-1)` -/
def P11479569289397084803.Spec : Prop :=
  ∀ n, (P11479569289397084803.a n : ℤ) = A086892 (n + 1)

theorem P11479569289397084803.correct : P11479569289397084803.Spec := by
  intro n
  simp only [A086892, Nat.add_sub_cancel]

end A086892

/-! ## A086892.P12580143533527426461

`lcm(3, A141498(n+1))/6`
-/

namespace A086892.P12580143533527426461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A141498 (n + 1)) : ℚ) / 6

end

end A086892.P12580143533527426461

namespace A086892

/-- `lcm(3, A141498(n+1))/6` -/
def P12580143533527426461.Spec : Prop :=
  ∀ n, P12580143533527426461.a n = (A086892 (n + 1) : ℚ)

end A086892

/-! ## A086892.P12624698992729662090

`A141498(n+1)/A010696(n)`
-/

namespace A086892.P12624698992729662090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141498 (n + 1) : ℚ) / (A010696 n : ℚ)

end

end A086892.P12624698992729662090

namespace A086892

/-- `A141498(n+1)/A010696(n)` -/
def P12624698992729662090.Spec : Prop :=
  ∀ n, P12624698992729662090.a n = (A086892 (n + 1) : ℚ)

end A086892

/-! ## A086892.P2221718024738391316

`A141498(n+1)/A040008(n+1)`
-/

namespace A086892.P2221718024738391316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141498 (n + 1) : ℚ) / (A040008 (n + 1) : ℚ)

end

end A086892.P2221718024738391316

namespace A086892

/-- `A141498(n+1)/A040008(n+1)` -/
def P2221718024738391316.Spec : Prop :=
  ∀ n, P2221718024738391316.a n = (A086892 (n + 1) : ℚ)

end A086892

/-! ## A086892.P5428972833434217243

`A141498(n+1)/(2*A010684(n))`
-/

namespace A086892.P5428972833434217243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141498 (n + 1) : ℚ) / (2 * A010684 n : ℚ)

end

end A086892.P5428972833434217243

namespace A086892

/-- `A141498(n+1)/(2*A010684(n))` -/
def P5428972833434217243.Spec : Prop :=
  ∀ n, P5428972833434217243.a n = (A086892 (n + 1) : ℚ)

end A086892

/-! ## A086892.P9029115036748778674

`A141498(n+1)/A131800(2*n+1)`
-/

namespace A086892.P9029115036748778674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141498 (n + 1) : ℚ) / (A131800 (2 * n + 1) : ℚ)

end

end A086892.P9029115036748778674

namespace A086892

/-- `A141498(n+1)/A131800(2*n+1)` -/
def P9029115036748778674.Spec : Prop :=
  ∀ n, P9029115036748778674.a n = (A086892 (n + 1) : ℚ)

end A086892

/-! ## A086892.P13535523696302384875

`A027760(n+1)*A141517(n+1)/Δ[2*(or(1, n)+n)]`
-/

namespace A086892.P13535523696302384875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lor 1 n + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027760 (n + 1) * A141517 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A086892.P13535523696302384875

namespace A086892

/-- `A027760(n+1)*A141517(n+1)/Δ[2*(or(1, n)+n)]` -/
def P13535523696302384875.Spec : Prop :=
  ∀ n, P13535523696302384875.a n = (A086892 (n + 1) : ℚ)

end A086892

/-! ## A086892.P12790770798219063545

`A027760(n+1)*A141517(n+1)/A010696(n)`
-/

namespace A086892.P12790770798219063545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027760 (n + 1) * A141517 (n + 1) : ℚ) / (A010696 n : ℚ)

end

end A086892.P12790770798219063545

namespace A086892

/-- `A027760(n+1)*A141517(n+1)/A010696(n)` -/
def P12790770798219063545.Spec : Prop :=
  ∀ n, P12790770798219063545.a n = (A086892 (n + 1) : ℚ)

end A086892

/-!
# A086893: a(n) is the index of F(n+1) at the unique occurrence of the ordered pair of reversed consecutive terms (F(n+1),F(n)) in Stern's diatomic sequence A002487, where F(k) denotes the k-th term of the Fibonacci sequence A000045.

The programs for A086893, the canonical program `A086893.P11400194920523370219` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086893 has offset 1).

The definition of A086893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086893.P11400194920523370219

`2^(n-1)*(3-(-1)^n/3)-1/3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086893

/-- `2^(n-1)*(3-(-1)^n/3)-1/3` -/
def P11400194920523370219.Spec : Prop :=
  ∀ n, P11400194920523370219.a n = (A086893 (n + 1) : ℚ)

end A086893

/-! ## A086893.P6871039540992998339

`∑[ceil(2^or(1, n-1))]`
-/

namespace A086893.P6871039540992998339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P6871039540992998339

namespace A086893

/-- `∑[ceil(2^or(1, n-1))]` -/
def P6871039540992998339.Spec : Prop :=
  ∀ n, P6871039540992998339.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P326988021238412534

`∑[ogf((1+2x-2x^2)/(1-4x^2))]`
-/

namespace A086893.P326988021238412534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P326988021238412534

namespace A086893

/-- `∑[ogf((1+2x-2x^2)/(1-4x^2))]` -/
def P326988021238412534.Spec : Prop :=
  ∀ n, P326988021238412534.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P6256982965389041269

`ogf((1+2x-2x^2)/(1-x-4x^2+4x^3))`
-/

namespace A086893.P6256982965389041269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -1, -4, 4] n

end

end A086893.P6256982965389041269

namespace A086893

/-- `ogf((1+2x-2x^2)/(1-x-4x^2+4x^3))` -/
def P6256982965389041269.Spec : Prop :=
  ∀ n, P6256982965389041269.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P4429635960256627018

`or(1, 4*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A086893.P4429635960256627018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor 1 (4 * a (n - 2))

end

end A086893.P4429635960256627018

namespace A086893

/-- `or(1, 4*a(n-2))` -/
def P4429635960256627018.Spec : Prop :=
  ∀ n, (P4429635960256627018.a n : ℤ) = A086893 (n + 1)

end A086893

/-! ## A086893.P2924027080222658107

`xor(1, 4*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A086893.P2924027080222658107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 1 (4 * a (n - 2))

end

end A086893.P2924027080222658107

namespace A086893

/-- `xor(1, 4*a(n-2))` -/
def P2924027080222658107.Spec : Prop :=
  ∀ n, (P2924027080222658107.a n : ℤ) = A086893 (n + 1)

end A086893

/-! ## A086893.P4541152177601980872

`∑[4*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A086893.P4541152177601980872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P4541152177601980872

namespace A086893

/-- `∑[4*a(n-2)]` -/
def P4541152177601980872.Spec : Prop :=
  ∀ n, (P4541152177601980872.a n : ℤ) = A086893 (n + 1)

end A086893

/-! ## A086893.P8963190896428773296

`∑[∏[(3-a(n-1))²]]` with `a(0)=1, a(1)=2`
-/

namespace A086893.P8963190896428773296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (3 - f2 (n - 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P8963190896428773296

namespace A086893

/-- `∑[∏[(3-a(n-1))²]]` -/
def P8963190896428773296.Spec : Prop :=
  ∀ n, P8963190896428773296.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P6843544158038807227

`∑[a(n-2)/(1/2)²]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A086893.P6843544158038807227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P6843544158038807227

namespace A086893

/-- `∑[a(n-2)/(1/2)²]` -/
def P6843544158038807227.Spec : Prop :=
  ∀ n, P6843544158038807227.a n = (A086893 (n + 1) : ℚ)

end A086893

/-! ## A086893.P17509287926450505177

`∑[2^∑[2-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A086893.P17509287926450505177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P17509287926450505177

namespace A086893

/-- `∑[2^∑[2-a(n-1)]]` -/
def P17509287926450505177.Spec : Prop :=
  ∀ n, P17509287926450505177.a n = (A086893 (n + 1) : ℚ)

end A086893

/-! ## A086893.P13749065998090726998

`∑[A158302(n)]`
-/

namespace A086893.P13749065998090726998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P13749065998090726998

namespace A086893

/-- `∑[A158302(n)]` -/
def P13749065998090726998.Spec : Prop :=
  ∀ n, P13749065998090726998.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P11262885066066596652

`∑[A140252(n)+1]`
-/

namespace A086893.P11262885066066596652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140252 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P11262885066066596652

namespace A086893

/-- `∑[A140252(n)+1]` -/
def P11262885066066596652.Spec : Prop :=
  ∀ n, P11262885066066596652.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P6651588167131093092

`A096773(xor(1, n+2))`
-/

namespace A086893.P6651588167131093092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (Nat.xor 1 (n + 2))

end

end A086893.P6651588167131093092

namespace A086893

/-- `A096773(xor(1, n+2))` -/
def P6651588167131093092.Spec : Prop :=
  ∀ n, P6651588167131093092.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P6548285064681592493

`∑[A081294(round(n/2))]`
-/

namespace A086893.P6548285064681592493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P6548285064681592493

namespace A086893

/-- `∑[A081294(round(n/2))]` -/
def P6548285064681592493.Spec : Prop :=
  ∀ n, P6548285064681592493.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P9825878682889668864

`∑[A173300(2*(n+1))]`
-/

namespace A086893.P9825878682889668864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173300 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086893.P9825878682889668864

namespace A086893

/-- `∑[A173300(2*(n+1))]` -/
def P9825878682889668864.Spec : Prop :=
  ∀ n, P9825878682889668864.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P2193764255128566367

`A169969(A053438(n))`
-/

namespace A086893.P2193764255128566367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169969 (A053438 n).toNat

end

end A086893.P2193764255128566367

namespace A086893

/-- `A169969(A053438(n))` -/
def P2193764255128566367.Spec : Prop :=
  ∀ n, P2193764255128566367.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P6140218404374002327

`A096773(A065190(n+2))`
-/

namespace A086893.P6140218404374002327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (A065190 (n + 2)).toNat

end

end A086893.P6140218404374002327

namespace A086893

/-- `A096773(A065190(n+2))` -/
def P6140218404374002327.Spec : Prop :=
  ∀ n, P6140218404374002327.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P3560222130850949388

`and(A283323(n), A290662(n))`
-/

namespace A086893.P3560222130850949388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283323 n) (A290662 n)

end

end A086893.P3560222130850949388

namespace A086893

/-- `and(A283323(n), A290662(n))` -/
def P3560222130850949388.Spec : Prop :=
  ∀ n, P3560222130850949388.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P15334896999885119908

`xor(A080924(n), A084170(n))`
-/

namespace A086893.P15334896999885119908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080924 n) (A084170 n)

end

end A086893.P15334896999885119908

namespace A086893

/-- `xor(A080924(n), A084170(n))` -/
def P15334896999885119908.Spec : Prop :=
  ∀ n, P15334896999885119908.a n = A086893 (n + 1)

end A086893

/-! ## A086893.P18351187577917766845

`xor(A270797(n), A280412(n))`
-/

namespace A086893.P18351187577917766845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A270797 n) (A280412 n)

end

end A086893.P18351187577917766845

namespace A086893

/-- `xor(A270797(n), A280412(n))` -/
def P18351187577917766845.Spec : Prop :=
  ∀ n, P18351187577917766845.a n = A086893 (n + 1)

end A086893

/-!
# A086894: a(n) = (A000522(2*n) + 1)/2.

The programs for A086894, the canonical program `A086894.P2071782429096505861` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086894 has offset 0).

The definition of A086894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086894.P2071782429096505861

`(A000522(2*n)+1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086894

/-- `(A000522(2*n)+1)/2` -/
def P2071782429096505861.Spec : Prop :=
  ∀ n, P2071782429096505861.a n = (A086894 n : ℚ)

end A086894

/-! ## A086894.P11897940177978097467

`record[A009132(n)]+n`
-/

namespace A086894.P11897940177978097467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A086894.P11897940177978097467

namespace A086894

/-- `record[A009132(n)]+n` -/
def P11897940177978097467.Spec : Prop :=
  ∀ n, P11897940177978097467.a n = A086894 n

end A086894

/-! ## A086894.P5430362681977414762

`A073591(2*n)/2`
-/

namespace A086894.P5430362681977414762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073591 (2 * n) : ℚ) / 2

end

end A086894.P5430362681977414762

namespace A086894

/-- `A073591(2*n)/2` -/
def P5430362681977414762.Spec : Prop :=
  ∀ n, P5430362681977414762.a n = (A086894 n : ℚ)

end A086894

/-! ## A086894.P1583097454569710696

`A009132(2*n)+n`
-/

namespace A086894.P1583097454569710696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009132 (2 * n) + (n : ℤ)

end

end A086894.P1583097454569710696

namespace A086894

/-- `A009132(2*n)+n` -/
def P1583097454569710696.Spec : Prop :=
  ∀ n, P1583097454569710696.a n = A086894 n

end A086894

/-! ## A086894.P9815579171060135406

`ceil(A000522(2*n)/2)`
-/

namespace A086894.P9815579171060135406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000522 (2 * n) : ℚ) / 2⌉

end

end A086894.P9815579171060135406

namespace A086894

/-- `ceil(A000522(2*n)/2)` -/
def P9815579171060135406.Spec : Prop :=
  ∀ n, P9815579171060135406.a n = A086894 n

end A086894

/-!
# A086895: a(n) = 1/3!*(A000522(3*n) + 3*A000522(n) + 2).

The programs for A086895, the canonical program `A086895.P5602228210711638196` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086895 has offset 0).

The definition of A086895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086895.P5602228210711638196

`1/3!*(A000522(3*n)+3*A000522(n)+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086895

/-- `1/3!*(A000522(3*n)+3*A000522(n)+2)` -/
def P5602228210711638196.Spec : Prop :=
  ∀ n, P5602228210711638196.a n = (A086895 n : ℚ)

end A086895

/-!
# A086896: a(n) = (1/4!)*(A000522(4*n) + 6*A000522(2*n) + 8*A000522(n) + 9).

The programs for A086896, the canonical program `A086896.P3300108808957288730` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086896 has offset 0).

The definition of A086896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086896.P3300108808957288730

`1/4!*(A000522(4*n)+6*A000522(2*n)+8*A000522(n)+9)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086896

/-- `1/4!*(A000522(4*n)+6*A000522(2*n)+8*A000522(n)+9)` -/
def P3300108808957288730.Spec : Prop :=
  ∀ n, P3300108808957288730.a n = (A086896 n : ℚ)

end A086896

/-!
# A086898: a(n) = Sum_{d|n} tau(d-1).

The programs for A086898, the canonical program `A086898.P9450987372198348200` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086898 has offset 1).

The definition of A086898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086898.P9450987372198348200

`A049822(n+1)+A032741(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A086898

/-- `A049822(n+1)+A032741(n+1)` -/
def P9450987372198348200.Spec : Prop :=
  ∀ n, P9450987372198348200.a n = A086898 (n + 1)

theorem P9450987372198348200.correct : P9450987372198348200.Spec := by
  intro n
  simp only [A086898, Nat.add_sub_cancel]

end A086898

/-! ## A086898.P11242670077250249506

`A000005(n+1)+A049822(n+1)-1`
-/

namespace A086898.P11242670077250249506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A049822 (n + 1) - 1)

end

end A086898.P11242670077250249506

namespace A086898

/-- `A000005(n+1)+A049822(n+1)-1` -/
def P11242670077250249506.Spec : Prop :=
  ∀ n, P11242670077250249506.a n = A086898 (n + 1)

theorem P11242670077250249506.correct : P11242670077250249506.Spec := by
  intro n
  simp only [A086898, Nat.add_sub_cancel, A086898.P11242670077250249506.a, A086898.P9450987372198348200.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049822, A049822.P4603734740658635360.f1, A049822.P4603734740658635360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086898

/-! ## A086898.P2458589693643047147

`∑{d}[n+1, A277692(#-1+#)]`
-/

namespace A086898.P2458589693643047147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A277692 ((d : ℤ) - 1 + (d : ℤ)).toNat

end

end A086898.P2458589693643047147

namespace A086898

/-- `∑{d}[n+1, A277692(#-1+#)]` -/
def P2458589693643047147.Spec : Prop :=
  ∀ n, P2458589693643047147.a n = A086898 (n + 1)

end A086898

/-! ## A086898.P14995538149274242514

`A301764(n+2)-1`
-/

namespace A086898.P14995538149274242514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301764 (n + 2) - 1

end

end A086898.P14995538149274242514

namespace A086898

/-- `A301764(n+2)-1` -/
def P14995538149274242514.Spec : Prop :=
  ∀ n, P14995538149274242514.a n = A086898 (n + 1)

end A086898

/-! ## A086898.P15819339265032456474

`A085207(C(A301764(n+2), 2))`
-/

namespace A086898.P15819339265032456474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (Nat.choose (A301764 (n + 2)).toNat 2)

end

end A086898.P15819339265032456474

namespace A086898

/-- `A085207(C(A301764(n+2), 2))` -/
def P15819339265032456474.Spec : Prop :=
  ∀ n, P15819339265032456474.a n = A086898 (n + 1)

end A086898

/-!
# A086899: Number of real n X n invertible symmetric (0,1) matrices.

The programs for A086899, there is no canonical definition to state claims against.
-/

/-! ## A086899.P13403636112365353788

`2^((n+1)*(n+2)/2)-A086906(n+1)`
-/

namespace A086899.P13403636112365353788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n + 1) * (n + 2) : ℚ) / 2 : ℝ) - (A086906 (n + 1) : ℝ)

end

end A086899.P13403636112365353788

/-! ## A086899.P2987080087902305787

`A086900(n+1)+A118996(n+1)`
-/

namespace A086899.P2987080087902305787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086900 (n + 1) + A118996 (n + 1)

end

end A086899.P2987080087902305787

/-! ## A086899.P18163898120137589071

`A086812(n+1)+A086879(n+1)-A086906(n+1)`
-/

namespace A086899.P18163898120137589071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086812 (n + 1) + (A086879 (n + 1) - A086906 (n + 1))

end

end A086899.P18163898120137589071

