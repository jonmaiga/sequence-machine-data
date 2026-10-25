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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A136800: Number of composites in prime gaps of size 3 or larger, in order of appearance.

The programs for A136800, the canonical program `A136800.P8889398827105192195` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136800 has offset 1).

The definition of A136800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136798, A136799, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136800.P8889398827105192195

`A136799(n+1)-A136798(n+1)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A136800

/-- `A136799(n+1)-A136798(n+1)+1` -/
def P8889398827105192195.Spec : Prop :=
  ∀ n, P8889398827105192195.a n = A136800 (n + 1)

theorem P8889398827105192195.correct : P8889398827105192195.Spec := by
  intro n
  simp only [A136800, Nat.add_sub_cancel]

end A136800

/-! ## A136800.P7204995479033068617

`A001223(A049579(n+1))-1`
-/

namespace A136800.P7204995479033068617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A049579 (n + 1)).toNat - 1

end

end A136800.P7204995479033068617

namespace A136800

/-- `A001223(A049579(n+1))-1` -/
def P7204995479033068617.Spec : Prop :=
  ∀ n, P7204995479033068617.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P9616355642417889649

`A136799(n+1)-A049591(n+1)`
-/

namespace A136800.P9616355642417889649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1) - A049591 (n + 1)

end

end A136800.P9616355642417889649

namespace A136800

/-- `A136799(n+1)-A049591(n+1)` -/
def P9616355642417889649.Spec : Prop :=
  ∀ n, P9616355642417889649.a n = A136800 (n + 1)

theorem P9616355642417889649.correct : P9616355642417889649.Spec := by
  intro n
  simp only [A136800, Nat.add_sub_cancel, A136800.P9616355642417889649.a, A136800.P8889398827105192195.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A136798, A136798.P11682257404800107167.a, A136799, A136799.P12211769734399561323.a, A001223, A001223.P5083310856331133973.a, A025584, A025584.P1747553391340850671.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A046933, A046933.P9479947770746769512.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A151800, A151800.P4570031678714564115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136800

/-! ## A136800.P8510604911613975158

`A136799(n+1)+2-A107987(n+1)`
-/

namespace A136800.P8510604911613975158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1) + (2 - A107987 (n + 1))

end

end A136800.P8510604911613975158

namespace A136800

/-- `A136799(n+1)+2-A107987(n+1)` -/
def P8510604911613975158.Spec : Prop :=
  ∀ n, P8510604911613975158.a n = A136800 (n + 1)

theorem P8510604911613975158.correct : P8510604911613975158.Spec := by
  intro n
  simp only [A136800, Nat.add_sub_cancel, A136800.P8510604911613975158.a, A136800.P8889398827105192195.a, A107987, A107987.P5415694799470960516.a, A136798, A136798.P11682257404800107167.a, A136799, A136799.P12211769734399561323.a, A025584, A025584.P1747553391340850671.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A001223, A001223.P5083310856331133973.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A065091, A065091.P6971844946592549357.a, A156828, A156828.P15006888903266838988.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A046933, A046933.P9479947770746769512.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A151800, A151800.P4570031678714564115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136800

/-! ## A136800.P3518902523244778104

`A001223(lt[1, A001223(n+1)-1]+1)-1`
-/

namespace A136800.P3518902523244778104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A136800.P3518902523244778104

namespace A136800

/-- `A001223(lt[1, A001223(n+1)-1]+1)-1` -/
def P3518902523244778104.Spec : Prop :=
  ∀ n, P3518902523244778104.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P2009873809434486549

`A004442(A136799(n+1)-A136798(n+1))`
-/

namespace A136800.P2009873809434486549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A136799 (n + 1) - A136798 (n + 1)).toNat

end

end A136800.P2009873809434486549

namespace A136800

/-- `A004442(A136799(n+1)-A136798(n+1))` -/
def P2009873809434486549.Spec : Prop :=
  ∀ n, P2009873809434486549.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P10449180418516358433

`2*A047846(n+2)+1`
-/

namespace A136800.P10449180418516358433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047846 (n + 2) + 1

end

end A136800.P10449180418516358433

namespace A136800

/-- `2*A047846(n+2)+1` -/
def P10449180418516358433.Spec : Prop :=
  ∀ n, P10449180418516358433.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P7319804809671354118

`A005408(A047846(n+2))`
-/

namespace A136800.P7319804809671354118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A047846 (n + 2)).toNat

end

end A136800.P7319804809671354118

namespace A136800

/-- `A005408(A047846(n+2))` -/
def P7319804809671354118.Spec : Prop :=
  ∀ n, P7319804809671354118.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P16360554102976095760

`A004273(A047846(n+2)+1)`
-/

namespace A136800.P16360554102976095760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047846 (n + 2) + 1).toNat

end

end A136800.P16360554102976095760

namespace A136800

/-- `A004273(A047846(n+2)+1)` -/
def P16360554102976095760.Spec : Prop :=
  ∀ n, P16360554102976095760.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P4472718041502761081

`A004442(2*A047846(n+2))`
-/

namespace A136800.P4472718041502761081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A047846 (n + 2)).toNat

end

end A136800.P4472718041502761081

namespace A136800

/-- `A004442(2*A047846(n+2))` -/
def P4472718041502761081.Spec : Prop :=
  ∀ n, P4472718041502761081.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P9567579875980538182

`A008611(6*A047846(n+2))`
-/

namespace A136800.P9567579875980538182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * A047846 (n + 2)).toNat

end

end A136800.P9567579875980538182

namespace A136800

/-- `A008611(6*A047846(n+2))` -/
def P9567579875980538182.Spec : Prop :=
  ∀ n, P9567579875980538182.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P16703284947795268965

`A136799(n+1)-A067774(n+2)`
-/

namespace A136800.P16703284947795268965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1) - A067774 (n + 2)

end

end A136800.P16703284947795268965

namespace A136800

/-- `A136799(n+1)-A067774(n+2)` -/
def P16703284947795268965.Spec : Prop :=
  ∀ n, P16703284947795268965.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P15681062543289577006

`A025584(n+3)-A136798(n+1)`
-/

namespace A136800.P15681062543289577006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 3) - A136798 (n + 1)

end

end A136800.P15681062543289577006

namespace A136800

/-- `A025584(n+3)-A136798(n+1)` -/
def P15681062543289577006.Spec : Prop :=
  ∀ n, P15681062543289577006.a n = A136800 (n + 1)

theorem P15681062543289577006.correct : P15681062543289577006.Spec := by
  intro n
  simp only [A136800, Nat.add_sub_cancel, A136800.P15681062543289577006.a, A136800.P8889398827105192195.a, A025584, A025584.P1747553391340850671.a, A136798, A136798.P11682257404800107167.a, A136799, A136799.P12211769734399561323.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A001223, A001223.P5083310856331133973.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065091, A065091.P6971844946592549357.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A046933, A046933.P9479947770746769512.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136800

/-! ## A136800.P8362101329219883523

`A135732(A049579(n+1)-1)`
-/

namespace A136800.P8362101329219883523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (A049579 (n + 1) - 1).toNat

end

end A136800.P8362101329219883523

namespace A136800

/-- `A135732(A049579(n+1)-1)` -/
def P8362101329219883523.Spec : Prop :=
  ∀ n, P8362101329219883523.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P9015514585797019546

`A176246(A049579(n+1)-1)`
-/

namespace A136800.P9015514585797019546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (A049579 (n + 1) - 1).toNat

end

end A136800.P9015514585797019546

namespace A136800

/-- `A176246(A049579(n+1)-1)` -/
def P9015514585797019546.Spec : Prop :=
  ∀ n, P9015514585797019546.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P4120994284708140515

`filter[A135732(n+1), A179770(#)]`
-/

namespace A136800.P4120994284708140515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179770 (f1 j).toNat = 1) n)

end

end A136800.P4120994284708140515

namespace A136800

/-- `filter[A135732(n+1), A179770(#)]` -/
def P4120994284708140515.Spec : Prop :=
  ∀ n, P4120994284708140515.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P3589295004166935367

`filter[A176246(n+1), A179770(#)]`
-/

namespace A136800.P3589295004166935367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179770 (f1 j).toNat = 1) n)

end

end A136800.P3589295004166935367

namespace A136800

/-- `filter[A176246(n+1), A179770(#)]` -/
def P3589295004166935367.Spec : Prop :=
  ∀ n, P3589295004166935367.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P450933097882574172

`filter[A135732(n+1), A266070(#)]`
-/

namespace A136800.P450933097882574172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A136800.P450933097882574172

namespace A136800

/-- `filter[A135732(n+1), A266070(#)]` -/
def P450933097882574172.Spec : Prop :=
  ∀ n, P450933097882574172.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P4700704616096506362

`A176246(lt[1, A176246(n+1)]+1)`
-/

namespace A136800.P4700704616096506362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A136800.P4700704616096506362

namespace A136800

/-- `A176246(lt[1, A176246(n+1)]+1)` -/
def P4700704616096506362.Spec : Prop :=
  ∀ n, P4700704616096506362.a n = A136800 (n + 1)

end A136800

/-! ## A136800.P13633263704524324559

`A046933(A049579(n+1))`
-/

namespace A136800.P13633263704524324559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (A049579 (n + 1)).toNat

end

end A136800.P13633263704524324559

namespace A136800

/-- `A046933(A049579(n+1))` -/
def P13633263704524324559.Spec : Prop :=
  ∀ n, P13633263704524324559.a n = A136800 (n + 1)

end A136800

/-!
# A136801: Largest prime factor of the composites in the n-th prime gap larger than 2.

The programs for A136801, there is no canonical definition to state claims against.
-/

/-! ## A136801.P12276051036136596375

`A052248(A049579(n+1))`
-/

namespace A136801.P12276051036136596375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (A049579 (n + 1)).toNat

end

end A136801.P12276051036136596375

/-! ## A136801.P4069963536077183019

`A002034(A136802(n+1))`
-/

namespace A136801.P4069963536077183019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A136802 (n + 1)).toNat

end

end A136801.P4069963536077183019

/-! ## A136801.P11526042660205878996

`A052248(lt[2, A075526(n)])`
-/

namespace A136801.P11526042660205878996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136801.P11526042660205878996

/-! ## A136801.P4816068519820485653

`A006530(2*A136802(n+1))`
-/

namespace A136801.P4816068519820485653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A136802 (n + 1)).toNat

end

end A136801.P4816068519820485653

/-! ## A136801.P5817556439904236610

`A052248(lt[2, A054541(n+1)])`
-/

namespace A136801.P5817556439904236610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136801.P5817556439904236610

/-! ## A136801.P6810142617877371706

`A052248(lt[3, A076368(n+1)])`
-/

namespace A136801.P6810142617877371706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136801.P6810142617877371706

/-! ## A136801.P2286694964315864513

`A052248(lt[3, A230847(n+1)])`
-/

namespace A136801.P2286694964315864513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136801.P2286694964315864513

/-! ## A136801.P10492239253408723466

`p?[A052248(n+2)%A061215(n+2)]`
-/

namespace A136801.P10492239253408723466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052248 (n + 2)) (A061215 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136801.P10492239253408723466

/-! ## A136801.P13401546910530349268

`A052248(eq[1, A052180(n+2)%2]+2)`
-/

namespace A136801.P13401546910530349268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052180 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A136801.P13401546910530349268

/-! ## A136801.P11218586660750351862

`A052248(A066328(A049591(n+1)))`
-/

namespace A136801.P11218586660750351862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (A066328 (A049591 (n + 1)).toNat).toNat

end

end A136801.P11218586660750351862

/-!
# A136802: The composite with the largest prime factor in the n-th prime gap larger than 2.

The programs for A136802, there is no canonical definition to state claims against.
-/

/-! ## A136802.P12701670619416406463

`A114331(A049579(n+1))`
-/

namespace A136802.P12701670619416406463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (A049579 (n + 1)).toNat

end

end A136802.P12701670619416406463

/-! ## A136802.P1850978267154562073

`A114331(lt[2, A054541(n+1)])`
-/

namespace A136802.P1850978267154562073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136802.P1850978267154562073

/-! ## A136802.P5117226788860345206

`A114331(lt[3, A076368(n+1)])`
-/

namespace A136802.P5117226788860345206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136802.P5117226788860345206

/-! ## A136802.P13327499453569398733

`A114331(lt[3, A230847(n+1)])`
-/

namespace A136802.P13327499453569398733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136802.P13327499453569398733

/-! ## A136802.P2874402468127761006

`filter[A114331(n+2), A292438(#)]`
-/

namespace A136802.P2874402468127761006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A136802.P2874402468127761006

/-! ## A136802.P9463777586548945139

`∩[A164276(n+1), A114331(n+2)]`
-/

namespace A136802.P9463777586548945139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136802.P9463777586548945139

/-! ## A136802.P9548923978749358959

`∩[A100318(n+1), A114331(n+2)]`
-/

namespace A136802.P9548923978749358959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136802.P9548923978749358959

/-! ## A136802.P7847462877345044218

`∩[A167707(n+1), A114331(n+2)]`
-/

namespace A136802.P7847462877345044218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136802.P7847462877345044218

/-!
# A136803: Squares mod 257.

The programs for A136803, there is no canonical definition to state claims against.
-/

/-! ## A136803.P17549661751495588155

`record[n*A165573(n)]`
-/

namespace A136803.P17549661751495588155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136803.P17549661751495588155

/-! ## A136803.P17605583463384400549

`lt[A165573(28*n), 1]`
-/

namespace A136803.P17605583463384400549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (28 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136803.P17605583463384400549

/-! ## A136803.P11823862884528143109

`comp[eq[-1, A165573(36*n)]]`
-/

namespace A136803.P11823862884528143109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (36 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A136803.P11823862884528143109

/-! ## A136803.P3531274739776336934

`eq[n, and(n, A165573(3*n))]`
-/

namespace A136803.P3531274739776336934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A165573 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136803.P3531274739776336934

/-! ## A136803.P8411399712553068884

`record[n^A165573(A028310(n))]`
-/

namespace A136803.P8411399712553068884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A165573 (A028310 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136803.P8411399712553068884

/-! ## A136803.P9525878310620624193

`eq[abs(A165481(n)), A165573(n)]`
-/

namespace A136803.P9525878310620624193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165481 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136803.P9525878310620624193

/-! ## A136803.P11907878012370328477

`eq[abs(A165596(n)), A165573(n)]`
-/

namespace A136803.P11907878012370328477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165596 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136803.P11907878012370328477

/-! ## A136803.P11530394621067660760

`lt[A023532(n)-1, A165573(n)]`
-/

namespace A136803.P11530394621067660760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136803.P11530394621067660760

/-! ## A136803.P1785302909273516622

`lt[A025457(n)-1, A165573(n)]`
-/

namespace A136803.P1785302909273516622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136803.P1785302909273516622

/-! ## A136803.P14518700360419934862

`lt[A151774(n)-1, A165573(n)]`
-/

namespace A136803.P14518700360419934862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136803.P14518700360419934862

/-! ## A136803.P15989216463025535332

`lt[A179081(n)-1, A165573(n)]`
-/

namespace A136803.P15989216463025535332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136803.P15989216463025535332

/-! ## A136803.P7483195869823070641

`lt[A219463(n)-1, A165573(n)]`
-/

namespace A136803.P7483195869823070641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136803.P7483195869823070641

/-! ## A136803.P5610916974572229880

`eq[A056926(6*n), A165573(n)]`
-/

namespace A136803.P5610916974572229880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (6 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136803.P5610916974572229880

/-! ## A136803.P9432983929324877607

`eq[n, A028310(n)*A165573(n)]`
-/

namespace A136803.P9432983929324877607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136803.P9432983929324877607

/-! ## A136803.P16051136568850718819

`lt[abs(A165591(n))-1, A165573(n)]`
-/

namespace A136803.P16051136568850718819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165591 n| - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136803.P16051136568850718819

/-! ## A136803.P18154819351475562166

`lt[-(A018252(n+1)%2), A165573(n)]`
-/

namespace A136803.P18154819351475562166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A018252 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136803.P18154819351475562166

/-! ## A136803.P7025785056119992432

`eq[A001222(n+1)*A165573(n), A001222(n+1)]`
-/

namespace A136803.P7025785056119992432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136803.P7025785056119992432

/-! ## A136803.P1634857608811896038

`eq[A020639(n+1)^A165573(n), A020639(n+1)]`
-/

namespace A136803.P1634857608811896038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A165573 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A136803.P1634857608811896038

/-! ## A136803.P11376616839066933052

`eq[A000010(n+2)^A165573(n), A000010(n+2)]`
-/

namespace A136803.P11376616839066933052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) ^ (A165573 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A136803.P11376616839066933052

/-! ## A136803.P368967147490547386

`comp[A136804(n+1)]`
-/

namespace A136803.P368967147490547386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136803.P368967147490547386

/-!
# A136804: Nonsquares mod 257.

The programs for A136804, there is no canonical definition to state claims against.
-/

/-! ## A136804.P16510491254027576669

`comp[A136803(n+1)]`
-/

namespace A136804.P16510491254027576669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136804.P16510491254027576669

/-! ## A136804.P6566307042685686763

`comp[n*A165573(n)]`
-/

namespace A136804.P6566307042685686763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136804.P6566307042685686763

/-! ## A136804.P6071434715289884968

`lt[0, A165573(28*n)]`
-/

namespace A136804.P6071434715289884968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (28 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136804.P6071434715289884968

/-! ## A136804.P17832107607722001497

`eq[-1, A165573(36*n)]`
-/

namespace A136804.P17832107607722001497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (36 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136804.P17832107607722001497

/-! ## A136804.P11052872964232675079

`eq[A165573(n), A260196(n)]`
-/

namespace A136804.P11052872964232675079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136804.P11052872964232675079

/-! ## A136804.P14297655115710709705

`lt[A165573(n), A023532(n)]`
-/

namespace A136804.P14297655115710709705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P14297655115710709705

/-! ## A136804.P2493109770879513

`lt[A165573(n), A025457(n)]`
-/

namespace A136804.P2493109770879513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P2493109770879513

/-! ## A136804.P5910547325747114053

`lt[A165573(n), A151774(n)]`
-/

namespace A136804.P5910547325747114053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P5910547325747114053

/-! ## A136804.P8647339173430641002

`lt[A165573(n), A179081(n)]`
-/

namespace A136804.P8647339173430641002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P8647339173430641002

/-! ## A136804.P11697855776595506221

`lt[A165573(n), A219463(n)]`
-/

namespace A136804.P11697855776595506221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P11697855776595506221

/-! ## A136804.P17180945793963216895

`lt[A165573(n), abs(A165481(n))]`
-/

namespace A136804.P17180945793963216895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165481 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P17180945793963216895

/-! ## A136804.P12727332658320164896

`lt[A165573(n), abs(A165591(n))]`
-/

namespace A136804.P12727332658320164896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165591 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P12727332658320164896

/-! ## A136804.P4210064892807759403

`lt[A165573(n), abs(A165596(n))]`
-/

namespace A136804.P4210064892807759403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165596 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P4210064892807759403

/-! ## A136804.P18019530331075315556

`eq[-A165573(n), A293668(n)]`
-/

namespace A136804.P18019530331075315556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A165573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136804.P18019530331075315556

/-! ## A136804.P7307587326425581624

`lt[A165573(n), char[A165594(n)]]`
-/

namespace A136804.P7307587326425581624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165594 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136804.P7307587326425581624

/-! ## A136804.P12305684021407620294

`lt[A165573(n), sin(A007090(n))]`
-/

namespace A136804.P12305684021407620294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A007090 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A136804.P12305684021407620294

/-! ## A136804.P4481312329357772970

`lt[A165573(n), sin(A011848(n))]`
-/

namespace A136804.P4481312329357772970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A011848 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A136804.P4481312329357772970

/-! ## A136804.P6398733954129701033

`lt[A165573(n), A165471(n)/2]`
-/

namespace A136804.P6398733954129701033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165471 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A136804.P6398733954129701033

/-! ## A136804.P6902081056978046529

`lt[C(A165573(n)+4, 4), A001221(n²+1)]`
-/

namespace A136804.P6902081056978046529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165573 n + 4).toNat 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136804.P6902081056978046529

/-! ## A136804.P10944344773033349506

`lt[A165573(n)+A000005(n+1), A000005(n+1)]`
-/

namespace A136804.P10944344773033349506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n + A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136804.P10944344773033349506

/-!
# A136805: Squares mod 65537.

The programs for A136805, there is no canonical definition to state claims against.
-/

/-! ## A136805.P5018452731861895809

`comp[A136806(n+1)]`
-/

namespace A136805.P5018452731861895809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136805.P5018452731861895809

/-! ## A136805.P17098380799130733103

`lt[1, A165471(n)+2]`
-/

namespace A136805.P17098380799130733103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136805.P17098380799130733103

/-! ## A136805.P14693322262481326495

`eq[A132126(n+1), A165471(n)]`
-/

namespace A136805.P14693322262481326495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136805.P14693322262481326495

/-! ## A136805.P15493778411759500809

`eq[A055401(n)*A165471(n), A055401(n)]`
-/

namespace A136805.P15493778411759500809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 n * A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136805.P15493778411759500809

/-! ## A136805.P8712609674820923732

`eq[A057427(n), A165471(n)]`
-/

namespace A136805.P8712609674820923732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136805.P8712609674820923732

/-! ## A136805.P3876993944409701395

`eq[A000093(n)*A165471(n), A000093(n)]`
-/

namespace A136805.P3876993944409701395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n * A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136805.P3876993944409701395

/-! ## A136805.P17394185075323976481

`eq[A061762(n)*A165471(n), A061762(n)]`
-/

namespace A136805.P17394185075323976481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n * A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136805.P17394185075323976481

/-! ## A136805.P11161265299230097628

`eq[A165471(n)*A178487(n), A178487(n)]`
-/

namespace A136805.P11161265299230097628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n * A178487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136805.P11161265299230097628

/-! ## A136805.P12713371641221440707

`eq[A165471(n²), A165471(n)]`
-/

namespace A136805.P12713371641221440707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136805.P12713371641221440707

/-! ## A136805.P2589745863642126378

`eq[A165471(n), A178334(n)]`
-/

namespace A136805.P2589745863642126378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136805.P2589745863642126378

/-!
# A136806: Nonsquares mod 65537.

The programs for A136806, there is no canonical definition to state claims against.
-/

/-! ## A136806.P12420935120291587698

`comp[A136805(n+1)]`
-/

namespace A136806.P12420935120291587698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136806.P12420935120291587698

/-! ## A136806.P18093439478096671544

`eq[1, A165471(n)+2]`
-/

namespace A136806.P18093439478096671544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136806.P18093439478096671544

/-! ## A136806.P4523514938261075252

`lt[A165471(2*n), abs(A165471(2*n))]`
-/

namespace A136806.P4523514938261075252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165471 (2 * n)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136806.P4523514938261075252

/-! ## A136806.P1803550049569898696

`eq[A165471(n), A260196(n)]`
-/

namespace A136806.P1803550049569898696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136806.P1803550049569898696

/-! ## A136806.P10602904405309140898

`eq[2, A057427(n)-A165471(n)]`
-/

namespace A136806.P10602904405309140898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A165471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136806.P10602904405309140898

/-! ## A136806.P15175096603746703162

`lt[2*A165471(n), A165573(n)]`
-/

namespace A136806.P15175096603746703162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136806.P15175096603746703162

/-! ## A136806.P1027657419026100076

`lt[A000578(n)*A165471(n), n]`
-/

namespace A136806.P1027657419026100076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A165471 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136806.P1027657419026100076

/-! ## A136806.P16505422950630810572

`lt[A165471(n)*A280684(n+1), A165471(n)]`
-/

namespace A136806.P16505422950630810572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n * A280684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136806.P16505422950630810572

/-! ## A136806.P9215617740955957269

`lt[A165471(n), A165471(n²)]`
-/

namespace A136806.P9215617740955957269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136806.P9215617740955957269

/-!
# A136807: Hankel transform of double factorial numbers n!*2^n=A000165(n).

The programs for A136807, there is no canonical definition to state claims against.
-/

/-! ## A136807.P16255737963099866562

`∏[(2^n*n!)²]`
-/

namespace A136807.P16255737963099866562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A136807.P16255737963099866562

/-! ## A136807.P6131495661070888719

`∏[∏[floor(2/acot(n))²]]`
-/

namespace A136807.P6131495661070888719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A136807.P6131495661070888719

/-! ## A136807.P5551232682032742353

`∏[∏[log2(lcm(2, 4^n))]²]`
-/

namespace A136807.P5551232682032742353
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A136807.P5551232682032742353

/-! ## A136807.P7582504107549632454

`∏[(n!/2^-n)²]`
-/

namespace A136807.P7582504107549632454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A136807.P7582504107549632454

/-! ## A136807.P15528571724143568886

`∏[(2^(log2(n!)+n))²]`
-/

namespace A136807.P15528571724143568886
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A136807.P15528571724143568886

/-!
# A136808: Numbers k such that k and k^2 use only the digits 0, 1 and 2.

The programs for A136808, there is no canonical definition to state claims against.
-/

/-! ## A136808.P8985159763554110284

`∩[A136814(n+1), A136816(n+1)]`
-/

namespace A136808.P8985159763554110284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136808.P8985159763554110284

/-! ## A136808.P1353768826597956247

`A007088(A337582(n+1))`
-/

namespace A136808.P1353768826597956247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A337582 (n + 1)).toNat

end

end A136808.P1353768826597956247

/-! ## A136808.P2738235495970685077

`∩[A136809(n+1), A136821(n+1)]`
-/

namespace A136808.P2738235495970685077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136808.P2738235495970685077

/-! ## A136808.P11701072523803308130

`∩[A136835(n+1), A007088(n)]`
-/

namespace A136808.P11701072523803308130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136808.P11701072523803308130

/-! ## A136808.P2733441228003810110

`∩[A136809(n+1), A136818(n+1)]`
-/

namespace A136808.P2733441228003810110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136808.P2733441228003810110

/-! ## A136808.P4699790473150266992

`∩[A136814(n+1), A136818(n+1)]`
-/

namespace A136808.P4699790473150266992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136808.P4699790473150266992

/-! ## A136808.P15119225874446282379

`∩[A136815(n+1), A136818(n+1)]`
-/

namespace A136808.P15119225874446282379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136808.P15119225874446282379

/-! ## A136808.P14489516767462870177

`∩[A136818(n+1), A136822(n+1)]`
-/

namespace A136808.P14489516767462870177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136808.P14489516767462870177

/-! ## A136808.P3758589139735211560

`∩[A136818(n+1), A136825(n+1)]`
-/

namespace A136808.P3758589139735211560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136808.P3758589139735211560

/-!
# A136809: Numbers k such that k and k^2 use only the digits 0, 1, 2 and 3.

The programs for A136809, there is no canonical definition to state claims against.
-/

/-! ## A136809.P11089386803778666513

`∩[A136814(n+1), A136815(n+1)]`
-/

namespace A136809.P11089386803778666513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P11089386803778666513

/-! ## A136809.P10072214729882637304

`∩[A136814(n+1), A007088(n)]`
-/

namespace A136809.P10072214729882637304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P10072214729882637304

/-! ## A136809.P15555395403131129154

`∩[A136815(n+1), A007088(n)]`
-/

namespace A136809.P15555395403131129154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P15555395403131129154

/-! ## A136809.P6514921157658176357

`∩[A136812(n+1), A136814(n+1)]`
-/

namespace A136809.P6514921157658176357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P6514921157658176357

/-! ## A136809.P10939249358046081957

`∩[A136812(n+1), A136815(n+1)]`
-/

namespace A136809.P10939249358046081957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P10939249358046081957

/-! ## A136809.P3799215176657221612

`∩[A136810(n+1), A136812(n+1)]`
-/

namespace A136809.P3799215176657221612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P3799215176657221612

/-! ## A136809.P596274427501422668

`∩[A136810(n+1), A136814(n+1)]`
-/

namespace A136809.P596274427501422668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P596274427501422668

/-! ## A136809.P15046602553238541585

`∩[A136810(n+1), A136815(n+1)]`
-/

namespace A136809.P15046602553238541585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P15046602553238541585

/-! ## A136809.P16550693739815462460

`∩[A136814(n+1), A265747(n)]`
-/

namespace A136809.P16550693739815462460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P16550693739815462460

/-! ## A136809.P11058144333914237007

`∩[A136814(n+1), A169683(n)]`
-/

namespace A136809.P11058144333914237007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P11058144333914237007

/-! ## A136809.P3289785893291790575

`∩[A136815(n+1), A169683(n)]`
-/

namespace A136809.P3289785893291790575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P3289785893291790575

/-! ## A136809.P5913723770975724926

`∩[A136810(n+1), A136811(n+1)]`
-/

namespace A136809.P5913723770975724926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P5913723770975724926

/-! ## A136809.P3111134061665924699

`∩[A136811(n+1), A136812(n+1)]`
-/

namespace A136809.P3111134061665924699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P3111134061665924699

/-! ## A136809.P10577037264898292732

`∩[A136814(n+1), A080897(n)]`
-/

namespace A136809.P10577037264898292732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136809.P10577037264898292732

/-!
# A136810: Numbers k such that k and k^2 use only the digits 0, 1, 2, 3 and 4.

The programs for A136810, there is no canonical definition to state claims against.
-/

/-! ## A136810.P873055205274447055

`∩[A158304(n+1), A007091(n)]`
-/

namespace A136810.P873055205274447055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136810.P873055205274447055

/-! ## A136810.P72786879057596051

`∩[A158304(n+1), A007092(A037465(n))]`
-/

namespace A136810.P72786879057596051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A037465 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136810.P72786879057596051

/-! ## A136810.P57778202100626166

`∩[A158304(n+1), A007094(A037467(n))]`
-/

namespace A136810.P57778202100626166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037467 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136810.P57778202100626166

/-! ## A136810.P4639802973273842785

`∩[A158304(n+1), A007095(A037468(n))]`
-/

namespace A136810.P4639802973273842785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037468 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136810.P4639802973273842785

/-! ## A136810.P610089997205280740

`A175427(A085305(n+2))`
-/

namespace A136810.P610089997205280740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A085305 (n + 2)).toNat

end

end A136810.P610089997205280740

/-!
# A136812: Numbers k such that k and k^2 use only the digits 0, 1, 2, 3 and 6.

The programs for A136812, there is no canonical definition to state claims against.
-/

/-! ## A136812.P380409799594318893

`A046829(lt[A047920(n), ∏{p}[n+1, #]])`
-/

namespace A136812.P380409799594318893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046829 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A136812.P380409799594318893

/-! ## A136812.P12174999362099542871

`A136815(n+1)*A251092(A008000(3*n))`
-/

namespace A136812.P12174999362099542871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136815 (n + 1) * A251092 (A008000 (3 * n)).toNat

end

end A136812.P12174999362099542871

/-!
# A136815: Numbers k such that k and k^2 use only the digits 0, 1, 2, 3 and 9.

The programs for A136815, there is no canonical definition to state claims against.
-/

/-! ## A136815.P340469564620605936

`eq[n, A222239(A230101(n))]`
-/

namespace A136815.P340469564620605936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136815.P340469564620605936

/-! ## A136815.P4590964313115695519

`A169939(record[A169992(2*n+1)])`
-/

namespace A136815.P4590964313115695519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169992 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A136815.P4590964313115695519

/-!
# A136816: Numbers k such that k and k^2 use only the digits 0, 1, 2 and 4.

The programs for A136816, there is no canonical definition to state claims against.
-/

/-! ## A136816.P6007855739591725790

`∩[A136819(n+1), A136821(n+1)]`
-/

namespace A136816.P6007855739591725790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P6007855739591725790

/-! ## A136816.P4018960160195315711

`∩[A136810(n+1), A136819(n+1)]`
-/

namespace A136816.P4018960160195315711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P4018960160195315711

/-! ## A136816.P3396556576780886437

`∩[A136810(n+1), A136821(n+1)]`
-/

namespace A136816.P3396556576780886437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P3396556576780886437

/-! ## A136816.P2475193601379551728

`∩[A136810(n+1), A136818(n+1)]`
-/

namespace A136816.P2475193601379551728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P2475193601379551728

/-! ## A136816.P17972420229660662009

`∩[A136818(n+1), A136819(n+1)]`
-/

namespace A136816.P17972420229660662009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P17972420229660662009

/-! ## A136816.P11642655244757394978

`∩[A136818(n+1), A136821(n+1)]`
-/

namespace A136816.P11642655244757394978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P11642655244757394978

/-! ## A136816.P16378490530193115910

`∩[A136810(n+1), A136820(n+1)]`
-/

namespace A136816.P16378490530193115910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P16378490530193115910

/-! ## A136816.P17835683461255335222

`∩[A136818(n+1), A136820(n+1)]`
-/

namespace A136816.P17835683461255335222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P17835683461255335222

/-! ## A136816.P7319703033324959356

`∩[A136819(n+1), A136820(n+1)]`
-/

namespace A136816.P7319703033324959356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P7319703033324959356

/-! ## A136816.P5440515693636334386

`∩[A136820(n+1), A136821(n+1)]`
-/

namespace A136816.P5440515693636334386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P5440515693636334386

/-! ## A136816.P7668094110168602717

`∩[A136810(n+1), A136817(n+1)]`
-/

namespace A136816.P7668094110168602717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P7668094110168602717

/-! ## A136816.P6126038523256328667

`∩[A136817(n+1), A136818(n+1)]`
-/

namespace A136816.P6126038523256328667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P6126038523256328667

/-! ## A136816.P10236959331746686609

`∩[A136817(n+1), A136819(n+1)]`
-/

namespace A136816.P10236959331746686609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P10236959331746686609

/-! ## A136816.P1542387076814119658

`∩[A136817(n+1), A136820(n+1)]`
-/

namespace A136816.P1542387076814119658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P1542387076814119658

/-! ## A136816.P5416792993938117694

`∩[A136817(n+1), A136821(n+1)]`
-/

namespace A136816.P5416792993938117694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P5416792993938117694

/-! ## A136816.P15487745506465390400

`∩[A136818(n+1), A257086(n+1)]`
-/

namespace A136816.P15487745506465390400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P15487745506465390400

/-! ## A136816.P13842034606520853129

`∩[A136819(n+1), A257085(n+1)]`
-/

namespace A136816.P13842034606520853129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P13842034606520853129

/-! ## A136816.P13525267464576053921

`∩[A136820(n+1), A257085(n+1)]`
-/

namespace A136816.P13525267464576053921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P13525267464576053921

/-! ## A136816.P16640540637629072965

`∩[A136821(n+1), A257085(n+1)]`
-/

namespace A136816.P16640540637629072965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136816.P16640540637629072965

/-!
# A136817: Numbers k such that k and k^2 use only the digits 0, 1, 2, 4 and 5.

The programs for A136817, there is no canonical definition to state claims against.
-/

/-! ## A136817.P5249241199517512204

`∩[A257086(n+1), A379396(n+1)]`
-/

namespace A136817.P5249241199517512204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136817.P5249241199517512204

/-! ## A136817.P17622764523040019072

`A257086(A351870(n)+A061901(n))`
-/

namespace A136817.P17622764523040019072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (A351870 n + A061901 n).toNat

end

end A136817.P17622764523040019072

/-!
# A136818: Numbers k such that k and k^2 use only the digits 0, 1, 2, 4 and 6.

The programs for A136818, there is no canonical definition to state claims against.
-/

/-! ## A136818.P222419246482611631

`lt[A083698(A003132(n)), 3]`
-/

namespace A136818.P222419246482611631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083698 (A003132 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136818.P222419246482611631

/-! ## A136818.P15102719182385905046

`A222234(lt[A076314(n), 4])`
-/

namespace A136818.P15102719182385905046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A136818.P15102719182385905046

/-! ## A136818.P9815216388316173780

`lt[A263131(A069877(n)), 8]`
-/

namespace A136818.P9815216388316173780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263131 (A069877 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136818.P9815216388316173780

/-! ## A136818.P2126747292781816136

`lt[A351231(3*n+2), A353702(n+3)]`
-/

namespace A136818.P2126747292781816136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351231 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353702 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136818.P2126747292781816136

/-!
# A136820: Numbers k such that k and k^2 use only the digits 0, 1, 2, 4 and 8.

The programs for A136820, there is no canonical definition to state claims against.
-/

/-! ## A136820.P15893813813303272401

`A007089(lt[A051613(3*n+1), A059471(n+1)])`
-/

namespace A136820.P15893813813303272401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051613 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136820.P15893813813303272401

/-! ## A136820.P14582630397949874840

`A007089(lt[A326077(n), A081099(2*(n+2))])`
-/

namespace A136820.P14582630397949874840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081099 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136820.P14582630397949874840

/-! ## A136820.P3569996784043270153

`record[A007089(n)-A199238(A330743(n))]`
-/

namespace A136820.P3569996784043270153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n - A199238 (A330743 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136820.P3569996784043270153

/-! ## A136820.P16562153109124855520

`A007089(lt[A216223(n), A005229(2*(n+2))])`
-/

namespace A136820.P16562153109124855520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136820.P16562153109124855520

/-!
# A136821: Numbers k such that k and k^2 use only the digits 0, 1, 2, 4 and 9.

The programs for A136821, there is no canonical definition to state claims against.
-/

/-! ## A136821.P5964760054138868274

`A151671(A270613(2*n+5))+A007089(n)`
-/

namespace A136821.P5964760054138868274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151671 (A270613 (2 * n + 5)).toNat + A007089 n

end

end A136821.P5964760054138868274

/-! ## A136821.P3629022460871666646

`A136820(n+1)+A051766(A223012(n+1))`
-/

namespace A136821.P3629022460871666646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1) + A051766 (A223012 (n + 1)).toNat

end

end A136821.P3629022460871666646

/-! ## A136821.P1963052007186402212

`A206590(A222944(2*(n+1)))+A007089(n)`
-/

namespace A136821.P1963052007186402212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206590 (A222944 (2 * (n + 1))).toNat + A007089 n

end

end A136821.P1963052007186402212

/-! ## A136821.P8620896536142735964

`A282530(A120754(n+1))+A007089(n)`
-/

namespace A136821.P8620896536142735964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282530 (A120754 (n + 1)).toNat + A007089 n

end

end A136821.P8620896536142735964

/-! ## A136821.P16230823736762840518

`A282530(A120754(n+1))+A136820(n+1)`
-/

namespace A136821.P16230823736762840518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282530 (A120754 (n + 1)).toNat + A136820 (n + 1)

end

end A136821.P16230823736762840518

/-!
# A136822: Numbers k such that k and k^2 use only the digits 0, 1, 2 and 5.

The programs for A136822, there is no canonical definition to state claims against.
-/

/-! ## A136822.P18050689352614732219

`∩[A136824(n+1), A136825(n+1)]`
-/

namespace A136822.P18050689352614732219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P18050689352614732219

/-! ## A136822.P4726694917609963439

`∩[A136824(n+1), A136826(n+1)]`
-/

namespace A136822.P4726694917609963439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P4726694917609963439

/-! ## A136822.P11777531875555139192

`∩[A136825(n+1), A136826(n+1)]`
-/

namespace A136822.P11777531875555139192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P11777531875555139192

/-! ## A136822.P3189061102246152170

`∩[A136811(n+1), A136824(n+1)]`
-/

namespace A136822.P3189061102246152170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P3189061102246152170

/-! ## A136822.P896746667256657963

`∩[A136811(n+1), A136825(n+1)]`
-/

namespace A136822.P896746667256657963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P896746667256657963

/-! ## A136822.P339239531362738782

`∩[A136811(n+1), A136826(n+1)]`
-/

namespace A136822.P339239531362738782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P339239531362738782

/-! ## A136822.P17738255811155859308

`∩[A136811(n+1), A136823(n+1)]`
-/

namespace A136822.P17738255811155859308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P17738255811155859308

/-! ## A136822.P7095910009894818883

`∩[A136823(n+1), A136824(n+1)]`
-/

namespace A136822.P7095910009894818883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P7095910009894818883

/-! ## A136822.P1541992361596620689

`∩[A136823(n+1), A136825(n+1)]`
-/

namespace A136822.P1541992361596620689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P1541992361596620689

/-! ## A136822.P15664123927783745448

`∩[A136823(n+1), A136826(n+1)]`
-/

namespace A136822.P15664123927783745448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P15664123927783745448

/-! ## A136822.P16340438495770567442

`∩[A136811(n+1), A136817(n+1)]`
-/

namespace A136822.P16340438495770567442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P16340438495770567442

/-! ## A136822.P5531810612197881721

`∩[A136817(n+1), A136823(n+1)]`
-/

namespace A136822.P5531810612197881721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P5531810612197881721

/-! ## A136822.P13885545183693511459

`∩[A136817(n+1), A136824(n+1)]`
-/

namespace A136822.P13885545183693511459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P13885545183693511459

/-! ## A136822.P904283451248685473

`∩[A136817(n+1), A136825(n+1)]`
-/

namespace A136822.P904283451248685473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P904283451248685473

/-! ## A136822.P4273907056076598070

`∩[A136817(n+1), A136826(n+1)]`
-/

namespace A136822.P4273907056076598070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P4273907056076598070

/-! ## A136822.P16826260938123665452

`∩[A136823(n+1), A257086(n+1)]`
-/

namespace A136822.P16826260938123665452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P16826260938123665452

/-! ## A136822.P14748252623178059312

`∩[A136824(n+1), A257086(n+1)]`
-/

namespace A136822.P14748252623178059312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P14748252623178059312

/-! ## A136822.P16125911839957075853

`∩[A136825(n+1), A257086(n+1)]`
-/

namespace A136822.P16125911839957075853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P16125911839957075853

/-! ## A136822.P2438882856791178893

`∩[A136826(n+1), A257086(n+1)]`
-/

namespace A136822.P2438882856791178893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P2438882856791178893

/-! ## A136822.P875184892073671527

`∩[A136824(n+1), A257085(n+1)]`
-/

namespace A136822.P875184892073671527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136822.P875184892073671527

/-!
# A136823: Numbers k such that k and k^2 use only the digits 0, 1, 2, 5 and 6.

The programs for A136823, there is no canonical definition to state claims against.
-/

/-! ## A136823.P13378326937542243052

`eq[A000120(A284697(n+1)), A352517(n)]-2`
-/

namespace A136823.P13378326937542243052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A284697 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A136823.P13378326937542243052

/-!
# A136827: 

The programs for A136827, there is no canonical definition to state claims against.
-/

/-! ## A136827.P8625678227456620276

`∩[A136828(n+1), A136829(n+1)]`
-/

namespace A136827.P8625678227456620276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P8625678227456620276

/-! ## A136827.P18383517546056044757

`∩[A136828(n+1), A136830(n+1)]`
-/

namespace A136827.P18383517546056044757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P18383517546056044757

/-! ## A136827.P13600855094891266317

`∩[A136829(n+1), A136830(n+1)]`
-/

namespace A136827.P13600855094891266317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P13600855094891266317

/-! ## A136827.P12635950147857486183

`∩[A136812(n+1), A136818(n+1)]`
-/

namespace A136827.P12635950147857486183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P12635950147857486183

/-! ## A136827.P4986666162721773894

`∩[A136818(n+1), A136828(n+1)]`
-/

namespace A136827.P4986666162721773894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P4986666162721773894

/-! ## A136827.P11950460026100727660

`∩[A136818(n+1), A136829(n+1)]`
-/

namespace A136827.P11950460026100727660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P11950460026100727660

/-! ## A136827.P6438028498708547139

`∩[A136818(n+1), A136830(n+1)]`
-/

namespace A136827.P6438028498708547139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P6438028498708547139

/-! ## A136827.P4873822438520422331

`∩[A136828(n+1), A169683(n)]`
-/

namespace A136827.P4873822438520422331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P4873822438520422331

/-! ## A136827.P15991244493448215947

`∩[A136829(n+1), A169683(n)]`
-/

namespace A136827.P15991244493448215947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P15991244493448215947

/-! ## A136827.P1762111094257707904

`∩[A136830(n+1), A169683(n)]`
-/

namespace A136827.P1762111094257707904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P1762111094257707904

/-! ## A136827.P2677645664078223956

`∩[A080897(n), A136828(n+1)]`
-/

namespace A136827.P2677645664078223956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P2677645664078223956

/-! ## A136827.P5138062781826151409

`∩[A080897(n), A136829(n+1)]`
-/

namespace A136827.P5138062781826151409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P5138062781826151409

/-! ## A136827.P14842661821925794360

`∩[A080897(n), A136830(n+1)]`
-/

namespace A136827.P14842661821925794360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P14842661821925794360

/-! ## A136827.P16254882703344956235

`∩[A109827(n), A136828(n+1)]`
-/

namespace A136827.P16254882703344956235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P16254882703344956235

/-! ## A136827.P12445397203131602730

`∩[A109827(n), A136829(n+1)]`
-/

namespace A136827.P12445397203131602730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P12445397203131602730

/-! ## A136827.P10178128375216888298

`∩[A136828(n+1), A345358(n+1)]`
-/

namespace A136827.P10178128375216888298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P10178128375216888298

/-! ## A136827.P5596668125697430453

`∩[A136829(n+1), A345358(n+1)]`
-/

namespace A136827.P5596668125697430453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P5596668125697430453

/-! ## A136827.P11542406598977283398

`∩[A136830(n+1), A345358(n+1)]`
-/

namespace A136827.P11542406598977283398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136827.P11542406598977283398

/-!
# A136828: Numbers k such that k and k^2 use only the digits 0, 1, 2, 6 and 7.

The programs for A136828, there is no canonical definition to state claims against.
-/

/-! ## A136828.P15916554709868650695

`eq[A051801(n), A172128(A051801(2*n))]`
-/

namespace A136828.P15916554709868650695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172128 (A051801 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136828.P15916554709868650695

/-! ## A136828.P11811920558900845561

`A337665(A258650(n))+A014418(n)`
-/

namespace A136828.P11811920558900845561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337665 (A258650 n).toNat + A014418 n

end

end A136828.P11811920558900845561

/-! ## A136828.P4459344225259043695

`A085186(n)*A306211(A020015(n))`
-/

namespace A136828.P4459344225259043695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085186 n * A306211 (A020015 n).toNat

end

end A136828.P4459344225259043695

/-! ## A136828.P14383274030697564523

`lcm(A085186(n), A106208(A082169(n)))`
-/

namespace A136828.P14383274030697564523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085186 n) (A106208 (A082169 n).toNat)

end

end A136828.P14383274030697564523

/-!
# A136829: Numbers k such that k and k^2 use only the digits 0, 1, 2, 6 and 8.

The programs for A136829, there is no canonical definition to state claims against.
-/

/-! ## A136829.P1341704807776205488

`A323141(A301922(n+1))+A007088(n)`
-/

namespace A136829.P1341704807776205488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323141 (A301922 (n + 1)).toNat + A007088 n

end

end A136829.P1341704807776205488

/-! ## A136829.P11467028284402346347

`A105570(A007111(n))+A007088(n)`
-/

namespace A136829.P11467028284402346347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A007111 n).toNat + A007088 n

end

end A136829.P11467028284402346347

/-! ## A136829.P8730362845028446525

`A326681(A133228(n+1))+A007088(n)`
-/

namespace A136829.P8730362845028446525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 (A133228 (n + 1)).toNat + A007088 n

end

end A136829.P8730362845028446525

/-!
# A136830: Numbers k such that k and k^2 use only the digits 0, 1, 2, 6 and 9.

The programs for A136830, there is no canonical definition to state claims against.
-/

/-! ## A136830.P786108325087736274

`∩[A046851(n+1), A361780(n+1)]`
-/

namespace A136830.P786108325087736274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136830.P786108325087736274

/-! ## A136830.P12975314719117231477

`record[and(-A278157(n+1), A103181(n))]`
-/

namespace A136830.P12975314719117231477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A278157 (n + 1)) (A103181 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136830.P12975314719117231477

/-! ## A136830.P186445214293114951

`A046851(eq[A079341(n+2), A309307(n+1)])`
-/

namespace A136830.P186445214293114951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079341 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046851 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136830.P186445214293114951

/-! ## A136830.P17915154857555815798

`∪[A130446(A046851(2*(n+1))), A007088(n)]`
-/

namespace A136830.P17915154857555815798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A046851 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136830.P17915154857555815798

/-!
# A136831: 

The programs for A136831, there is no canonical definition to state claims against.
-/

/-! ## A136831.P12868442634681863500

`∩[A136832(n+1), A136833(n+1)]`
-/

namespace A136831.P12868442634681863500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136831.P12868442634681863500

/-! ## A136831.P13252627758589828129

`∩[A136828(n+1), A136832(n+1)]`
-/

namespace A136831.P13252627758589828129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136831.P13252627758589828129

/-! ## A136831.P14306886354695612732

`∩[A136828(n+1), A136833(n+1)]`
-/

namespace A136831.P14306886354695612732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136831.P14306886354695612732

/-! ## A136831.P9757085662532384750

`∩[A007088(n), A136832(n+1)]`
-/

namespace A136831.P9757085662532384750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136831.P9757085662532384750

/-! ## A136831.P12925076150403886167

`∩[A007088(n), A136833(n+1)]`
-/

namespace A136831.P12925076150403886167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136831.P12925076150403886167

/-!
# A136833: Numbers k such that k and k^2 use only the digits 0, 1, 2, 7 and 9.

The programs for A136833, there is no canonical definition to state claims against.
-/

/-! ## A136833.P1224464420026751112

`eq[A051801(n), A275352(7^val(n+1, 7))]`
-/

namespace A136833.P1224464420026751112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (7 ^ SequenceMachineLib.valuation (n + 1) 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136833.P1224464420026751112

/-! ## A136833.P10080535383550792379

`eq[A004176(n), A283001(A118880(n))]`
-/

namespace A136833.P10080535383550792379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A118880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136833.P10080535383550792379

/-! ## A136833.P6013331207291588021

`eq[A347470(A347470(n))², A235049(n)]`
-/

namespace A136833.P6013331207291588021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (A347470 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136833.P6013331207291588021

/-! ## A136833.P17795940110636126495

`A136828(n+1)+A092248(A136860(n+5))`
-/

namespace A136833.P17795940110636126495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1) + A092248 (A136860 (n + 5)).toNat

end

end A136833.P17795940110636126495

/-!
# A136834: Number of dimer arrangements on (2n-1) X (2n-1) square with exactly one monomer.

The programs for A136834, there is no canonical definition to state claims against.
-/

/-! ## A136834.P1922544013578829666

`A137308(Δ[n²])`
-/

namespace A136834.P1922544013578829666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137308 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136834.P1922544013578829666

/-!
# A136837: Numbers k such that k and k^2 use only the digits 0, 1, 3, 4 and 5.

The programs for A136837, there is no canonical definition to state claims against.
-/

/-! ## A136837.P3983013863273722809

`A136854(A028430(n+1))`
-/

namespace A136837.P3983013863273722809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136854 (A028430 (n + 1)).toNat

end

end A136837.P3983013863273722809

/-! ## A136837.P12519891639667240204

`A136854(A037336(n+1))`
-/

namespace A136837.P12519891639667240204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136854 (A037336 (n + 1)).toNat

end

end A136837.P12519891639667240204

/-! ## A136837.P7703136951334594409

`A136854(A037443(n+1))`
-/

namespace A136837.P7703136951334594409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136854 (A037443 (n + 1)).toNat

end

end A136837.P7703136951334594409

/-! ## A136837.P5855075117540986005

`A136854(A073790(n+1))`
-/

namespace A136837.P5855075117540986005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136854 (A073790 (n + 1)).toNat

end

end A136837.P5855075117540986005

/-!
# A136838: Numbers k such that k and k^2 use only the digits 0, 1, 3, 4 and 6.

The programs for A136838, there is no canonical definition to state claims against.
-/

/-! ## A136838.P7058173699095844405

`record[10*a(A001222(n+1)-1)]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A136838.P7058173699095844405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 6] fun n f1 =>
  10 * f1 (A001222 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136838.P7058173699095844405

/-! ## A136838.P8940824585119984488

`lt[A004086(n²), 10]*A000034(A274612(3*n+1))`
-/

namespace A136838.P8940824585119984488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) * A000034 (A274612 (3 * n + 1)).toNat

end

end A136838.P8940824585119984488

/-!
# A136839: Numbers k such that k and k^2 use only the digits 0, 1, 3, 4 and 7.

The programs for A136839, there is no canonical definition to state claims against.
-/

/-! ## A136839.P16494103440653124846

`A136863(A043315(n+1))`
-/

namespace A136839.P16494103440653124846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136863 (A043315 (n + 1)).toNat

end

end A136839.P16494103440653124846

/-! ## A136839.P9578023123567615416

`A136863(A044912(n+1))`
-/

namespace A136839.P9578023123567615416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136863 (A044912 (n + 1)).toNat

end

end A136839.P9578023123567615416

/-! ## A136839.P3879928270451606582

`A136863(A055649(n+1))`
-/

namespace A136839.P3879928270451606582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136863 (A055649 (n + 1)).toNat

end

end A136839.P3879928270451606582

/-! ## A136839.P17984189802601079735

`A136863(A061378(n+1))`
-/

namespace A136839.P17984189802601079735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136863 (A061378 (n + 1)).toNat

end

end A136839.P17984189802601079735

/-! ## A136839.P16616997434798220863

`A136863(A062399(n+1))`
-/

namespace A136839.P16616997434798220863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136863 (A062399 (n + 1)).toNat

end

end A136839.P16616997434798220863

/-!
# A136840: Numbers k such that k and k^2 use only the digits 0, 1, 3, 4 and 8.

The programs for A136840, there is no canonical definition to state claims against.
-/

/-! ## A136840.P17015115469689595705

`A136869(n+1)/A136868(A157702(n))`
-/

namespace A136840.P17015115469689595705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136869 (n + 1) : ℚ) / (A136868 (A157702 n).toNat : ℚ)

end

end A136840.P17015115469689595705

/-! ## A136840.P3323781986690189570

`A136869(n+1)/A326753(A049377(n))`
-/

namespace A136840.P3323781986690189570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136869 (n + 1) : ℚ) / (A326753 (A049377 n).toNat : ℚ)

end

end A136840.P3323781986690189570

/-!
# A136841: Numbers k such that k and k^2 use only the digits 0, 1, 3, 4 and 9.

The programs for A136841, there is no canonical definition to state claims against.
-/

/-! ## A136841.P16034156419804640121

`A233583(10*a(n-2))+1` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A136841.P16034156419804640121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A233583 (10 * a (n - 2)).toNat + 1

end

end A136841.P16034156419804640121

/-! ## A136841.P16910288876146991560

`ceil(root(A125258(10*a(n-2)), 4))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A136841.P16910288876146991560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  ⌈(A125258 (10 * a (n - 2)).toNat : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A136841.P16910288876146991560

/-! ## A136841.P6658842923443902351

`A040115(A004663(n+1))`
-/

namespace A136841.P6658842923443902351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 (A004663 (n + 1)).toNat

end

end A136841.P6658842923443902351

/-! ## A136841.P18345802575872738287

`A062279(A136846(n+1))`
-/

namespace A136841.P18345802575872738287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (A136846 (n + 1)).toNat

end

end A136841.P18345802575872738287

/-!
# A136842: Numbers k such that k and k^2 use only the digits 0, 1, 3 and 5.

The programs for A136842, there is no canonical definition to state claims against.
-/

/-! ## A136842.P1610140667200320774

`∩[A136844(n+1), A136845(n+1)]`
-/

namespace A136842.P1610140667200320774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P1610140667200320774

/-! ## A136842.P7205597050174237389

`∩[A136844(n+1), A136846(n+1)]`
-/

namespace A136842.P7205597050174237389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P7205597050174237389

/-! ## A136842.P10696376014012883640

`∩[A136845(n+1), A136846(n+1)]`
-/

namespace A136842.P10696376014012883640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P10696376014012883640

/-! ## A136842.P9578585990152066293

`∩[A136837(n+1), A136844(n+1)]`
-/

namespace A136842.P9578585990152066293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P9578585990152066293

/-! ## A136842.P14461354550976801361

`∩[A136837(n+1), A136845(n+1)]`
-/

namespace A136842.P14461354550976801361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P14461354550976801361

/-! ## A136842.P7799301946935687747

`∩[A136837(n+1), A136846(n+1)]`
-/

namespace A136842.P7799301946935687747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P7799301946935687747

/-! ## A136842.P15277598717446387871

`∩[A136837(n+1), A136843(n+1)]`
-/

namespace A136842.P15277598717446387871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P15277598717446387871

/-! ## A136842.P17443654225933906466

`∩[A136843(n+1), A136844(n+1)]`
-/

namespace A136842.P17443654225933906466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P17443654225933906466

/-! ## A136842.P6386925282080992068

`∩[A136843(n+1), A136845(n+1)]`
-/

namespace A136842.P6386925282080992068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P6386925282080992068

/-! ## A136842.P17620472159348150691

`∩[A136843(n+1), A136846(n+1)]`
-/

namespace A136842.P17620472159348150691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136842.P17620472159348150691

/-!
# A136846: Numbers k such that k and k^2 use only the digits 0, 1, 3, 5 and 9.

The programs for A136846, there is no canonical definition to state claims against.
-/

/-! ## A136846.P14830640578300332219

`A007095(floor(3^(n-1)))`
-/

namespace A136846.P14830640578300332219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A136846.P14830640578300332219

/-! ## A136846.P11069944605913637034

`eq[dr(n^3), A003132(n)]`
-/

namespace A136846.P11069944605913637034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 3 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136846.P11069944605913637034

/-! ## A136846.P1906641529415706294

`A087217(a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A136846.P1906641529415706294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A087217 (a (n - 2)).toNat

end

end A136846.P1906641529415706294

/-! ## A136846.P7663185433253377234

`Δ[A052382(ceil(3^n/6))]`
-/

namespace A136846.P7663185433253377234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 ⌈(3 ^ n : ℚ) / 6⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136846.P7663185433253377234

/-! ## A136846.P14186767269650317746

`A052406(floor(3^(n-1))+1)`
-/

namespace A136846.P14186767269650317746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

end

end A136846.P14186767269650317746

/-!
# A136847: Numbers k such that k and k^2 use only the digits 0, 1, 3 and 6.

The programs for A136847, there is no canonical definition to state claims against.
-/

/-! ## A136847.P9228848988331006256

`∩[A136848(n+1), A136849(n+1)]`
-/

namespace A136847.P9228848988331006256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P9228848988331006256

/-! ## A136847.P11450395073747555891

`∩[A136838(n+1), A136843(n+1)]`
-/

namespace A136847.P11450395073747555891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P11450395073747555891

/-! ## A136847.P13027844638378564154

`∩[A136838(n+1), A136848(n+1)]`
-/

namespace A136847.P13027844638378564154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P13027844638378564154

/-! ## A136847.P7939871637144710262

`∩[A136838(n+1), A136849(n+1)]`
-/

namespace A136847.P7939871637144710262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P7939871637144710262

/-! ## A136847.P11499538558948100648

`∩[A136843(n+1), A136848(n+1)]`
-/

namespace A136847.P11499538558948100648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P11499538558948100648

/-! ## A136847.P14991937574562430430

`∩[A136843(n+1), A136849(n+1)]`
-/

namespace A136847.P14991937574562430430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P14991937574562430430

/-! ## A136847.P7019979022566270361

`∩[A136838(n+1), A136850(n+1)]`
-/

namespace A136847.P7019979022566270361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P7019979022566270361

/-! ## A136847.P4337992221034943161

`∩[A136843(n+1), A136850(n+1)]`
-/

namespace A136847.P4337992221034943161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P4337992221034943161

/-! ## A136847.P14333928437512519272

`∩[A136848(n+1), A136850(n+1)]`
-/

namespace A136847.P14333928437512519272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P14333928437512519272

/-! ## A136847.P18102015753120984399

`∩[A136849(n+1), A136850(n+1)]`
-/

namespace A136847.P18102015753120984399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136847.P18102015753120984399

/-!
# A136849: Numbers k such that k and k^2 use only the digits 0, 1, 3, 6 and 8.

The programs for A136849, there is no canonical definition to state claims against.
-/

/-! ## A136849.P6359696066666743036

`A136847(A002998(n+1))`
-/

namespace A136849.P6359696066666743036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136847 (A002998 (n + 1)).toNat

end

end A136849.P6359696066666743036

/-! ## A136849.P1863245324215237167

`A004178(A136847(n+1))`
-/

namespace A136849.P1863245324215237167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A136847 (n + 1)).toNat

end

end A136849.P1863245324215237167

/-! ## A136849.P11075571616470485743

`A136847(A032555(n+1))`
-/

namespace A136849.P11075571616470485743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136847 (A032555 (n + 1)).toNat

end

end A136849.P11075571616470485743

/-! ## A136849.P8907237826233616876

`A136847(A032557(n+1))`
-/

namespace A136849.P8907237826233616876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136847 (A032557 (n + 1)).toNat

end

end A136849.P8907237826233616876

/-! ## A136849.P16681713474314520072

`A136847(A032559(n+1))`
-/

namespace A136849.P16681713474314520072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136847 (A032559 (n + 1)).toNat

end

end A136849.P16681713474314520072

/-!
# A136850: Numbers k such that k and k^2 use only the digits 0, 1, 3, 6 and 9.

The programs for A136850, there is no canonical definition to state claims against.
-/

/-! ## A136850.P11984527990399803186

`lt[A082263(A330236(n+1)), 3]`
-/

namespace A136850.P11984527990399803186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082263 (A330236 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136850.P11984527990399803186

/-! ## A136850.P3149069072186670637

`A192116(n+1)+A109082(A192126(n))`
-/

namespace A136850.P3149069072186670637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1) + A109082 (A192126 n).toNat

end

end A136850.P3149069072186670637

/-! ## A136850.P7680925259892677883

`A192116(n+1)+A109082(A192127(n))`
-/

namespace A136850.P7680925259892677883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1) + A109082 (A192127 n).toNat

end

end A136850.P7680925259892677883

/-! ## A136850.P14451191742357069124

`A192116(n+1)+A109082(A192128(n))`
-/

namespace A136850.P14451191742357069124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1) + A109082 (A192128 n).toNat

end

end A136850.P14451191742357069124

/-! ## A136850.P10303211109370919595

`or(A023416(A049170(n)), A027428(n+1))`
-/

namespace A136850.P10303211109370919595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023416 (A049170 n).toNat) (A027428 (n + 1))

end

end A136850.P10303211109370919595

/-!
# A136851: a(1)=3 (smallest odd prime); for n>=2, a(n) = smallest prime such that 1) a(n)-a(n-1) = prime if odd, else double of prime and 2) for sum_{ k = 1..n } a(k) = prime if odd, else double of prime.

The programs for A136851, there is no canonical definition to state claims against.
-/

/-! ## A136851.P6901735532102770548

`A316857(∪[A033875(2*(n+2)), A034472(n)])`
-/

namespace A136851.P6901735532102770548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A136851.P6901735532102770548

/-!
# A136852: Numbers k such that k and k^2 use only the digits 0, 1, 3, 8 and 9.

The programs for A136852, there is no canonical definition to state claims against.
-/

/-! ## A136852.P2879542953742626460

`record[A037213(A054047(n²))]`
-/

namespace A136852.P2879542953742626460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A054047 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136852.P2879542953742626460

/-! ## A136852.P16933433148555967934

`lt[A004183(A001613(n²)), 1]`
-/

namespace A136852.P16933433148555967934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A001613 (n ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136852.P16933433148555967934

/-! ## A136852.P8048661210247398810

`lt[A001613(A222238(n²)), 1]`
-/

namespace A136852.P8048661210247398810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A222238 (n ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136852.P8048661210247398810

/-! ## A136852.P12813725907720062514

`lt[A001613(A222252(n²)), 1]`
-/

namespace A136852.P12813725907720062514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A222252 (n ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136852.P12813725907720062514

/-! ## A136852.P14592980974746842310

`eq[n², A222228(A004181(n²))]`
-/

namespace A136852.P14592980974746842310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A004181 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136852.P14592980974746842310

/-!
# A136853: Numbers k such that k and k^2 use only the digits 0, 1, 3, and 9.

The programs for A136853, the canonical program `A136853.P9307651076024166048` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136853 has offset 1).

The definition of A136853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136853.P9307651076024166048

`10*a(n-2)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136853

/-- `10*a(n-2)` -/
def P9307651076024166048.Spec : Prop :=
  ∀ n, (P9307651076024166048.a n : ℤ) = A136853 (n + 1)

theorem P9307651076024166048.correct : P9307651076024166048.Spec := by
  intro n
  simp only [A136853, Nat.add_sub_cancel]

end A136853

/-! ## A136853.P14952790367315427193

`ogf((x+3x^2)/(1-10x^2))`
-/

namespace A136853.P14952790367315427193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, 0, -10] n

end

end A136853.P14952790367315427193

namespace A136853

/-- `ogf((x+3x^2)/(1-10x^2))` -/
def P14952790367315427193.Spec : Prop :=
  ∀ n, P14952790367315427193.a n = A136853 (n + 1)

end A136853

/-! ## A136853.P10482976651097911584

`floor(A004663(n+1)/10)`
-/

namespace A136853.P10482976651097911584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004663 (n + 1) : ℚ) / 10⌋

end

end A136853.P10482976651097911584

namespace A136853

/-- `floor(A004663(n+1)/10)` -/
def P10482976651097911584.Spec : Prop :=
  ∀ n, P10482976651097911584.a n = A136853 (n + 1)

end A136853

/-! ## A136853.P9471637465574177618

`∩[A136846(n+1), A398453(n+1)]`
-/

namespace A136853.P9471637465574177618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136853.P9471637465574177618

namespace A136853

/-- `∩[A136846(n+1), A398453(n+1)]` -/
def P9471637465574177618.Spec : Prop :=
  ∀ n, (P9471637465574177618.a n : ℤ) = A136853 (n + 1)

end A136853

/-! ## A136853.P7901531733213256734

`∩[A136815(n+1), A136841(n+1)]`
-/

namespace A136853.P7901531733213256734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136853.P7901531733213256734

namespace A136853

/-- `∩[A136815(n+1), A136841(n+1)]` -/
def P7901531733213256734.Spec : Prop :=
  ∀ n, (P7901531733213256734.a n : ℤ) = A136853 (n + 1)

end A136853

/-!
# A136854: Numbers k such that k and k^2 use only the digits 0, 1, 4 and 5.

The programs for A136854, there is no canonical definition to state claims against.
-/

/-! ## A136854.P12883541107760710157

`∩[A136837(n+1), A136856(n+1)]`
-/

namespace A136854.P12883541107760710157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P12883541107760710157

/-! ## A136854.P8954015117957021537

`∩[A136837(n+1), A136858(n+1)]`
-/

namespace A136854.P8954015117957021537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P8954015117957021537

/-! ## A136854.P5281605266616578020

`∩[A136856(n+1), A136858(n+1)]`
-/

namespace A136854.P5281605266616578020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P5281605266616578020

/-! ## A136854.P6691904151870477410

`∩[A136837(n+1), A136857(n+1)]`
-/

namespace A136854.P6691904151870477410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P6691904151870477410

/-! ## A136854.P10220781282109302158

`∩[A136856(n+1), A136857(n+1)]`
-/

namespace A136854.P10220781282109302158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P10220781282109302158

/-! ## A136854.P10040056095223427065

`∩[A136857(n+1), A136858(n+1)]`
-/

namespace A136854.P10040056095223427065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P10040056095223427065

/-! ## A136854.P8312830842221417136

`∩[A136837(n+1), A136855(n+1)]`
-/

namespace A136854.P8312830842221417136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P8312830842221417136

/-! ## A136854.P11178437752936146775

`∩[A136855(n+1), A136856(n+1)]`
-/

namespace A136854.P11178437752936146775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P11178437752936146775

/-! ## A136854.P17754498641725942979

`∩[A136855(n+1), A136857(n+1)]`
-/

namespace A136854.P17754498641725942979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P17754498641725942979

/-! ## A136854.P14744846220168096649

`∩[A136855(n+1), A136858(n+1)]`
-/

namespace A136854.P14744846220168096649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136854.P14744846220168096649

/-!
# A136856: Numbers k such that k and k^2 use only the digits 0, 1, 4, 5 and 7.

The programs for A136856, there is no canonical definition to state claims against.
-/

/-! ## A136856.P2952222020688529595

`A222223(lcm(A099254(n), A136937(n+1)))`
-/

namespace A136856.P2952222020688529595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (Int.lcm (A099254 n) (A136937 (n + 1)))

end

end A136856.P2952222020688529595

/-! ## A136856.P12494685809093221693

`eq[A004086(n), A342122(A113581(n))]`
-/

namespace A136856.P12494685809093221693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342122 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136856.P12494685809093221693

/-!
# A136857: Numbers k such that k and k^2 use only the digits 0, 1, 4, 5 and 8.

The programs for A136857, there is no canonical definition to state claims against.
-/

/-! ## A136857.P10921105660293974232

`A136866(n+1)%p?[2^n-1]`
-/

namespace A136857.P10921105660293974232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136866 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A136857.P10921105660293974232

/-! ## A136857.P10441560500580600814

`A136866(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A136857.P10441560500580600814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136866 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A136857.P10441560500580600814

/-! ## A136857.P13283710191552281716

`A004182(A136866(n+1))`
-/

namespace A136857.P13283710191552281716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A136866 (n + 1)).toNat

end

end A136857.P13283710191552281716

/-!
# A136858: Numbers k such that k and k^2 use only the digits 0, 1, 4, 5 and 9.

The programs for A136858, there is no canonical definition to state claims against.
-/

/-! ## A136858.P68981534148652650

`∩[A051221(n+1), A285550(n+1)]`
-/

namespace A136858.P68981534148652650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136858.P68981534148652650

/-!
# A136859: Numbers k such that k and k^2 use only the digits 0, 1, 4 and 6.

The programs for A136859, there is no canonical definition to state claims against.
-/

/-! ## A136859.P298866994290786849

`ogf((x+4x^2)/(1-10x^2))`
-/

namespace A136859.P298866994290786849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, 0, -10] n

end

end A136859.P298866994290786849

/-! ## A136859.P8638019729773281219

`10*a(n-2)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A136859.P8638019729773281219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  10 * a (n - 2)

end

end A136859.P8638019729773281219

/-! ## A136859.P15576896327789611263

`∪[Δ[floor(4/9*10^n)], floor(10^(n-1))]`
-/

namespace A136859.P15576896327789611263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 9 * (10 ^ n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A136859.P15576896327789611263

/-! ## A136859.P3521179514080510213

`floor(A004655(2*(n+1))/10)`
-/

namespace A136859.P3521179514080510213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004655 (2 * (n + 1)) : ℚ) / 10⌋

end

end A136859.P3521179514080510213

/-! ## A136859.P7742755532690918085

`∏[10/a(n-1)]%∏[A059855(n+1)]` with `a(0)=7, a(1)=1, a(2)=2`
-/

namespace A136859.P7742755532690918085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [7, 1, 2] fun n f1 =>
  10 / f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A136859.P7742755532690918085

/-! ## A136859.P18370946512289127190

`∏[A328579(a(n-1))]%∏[((n-1)%2+1)²+1]` with `a(0)=7, a(1)=1`
-/

namespace A136859.P18370946512289127190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  A328579 (f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 2 + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A136859.P18370946512289127190

/-! ## A136859.P18047917166391528811

`∏{digits}[A094620(n), A007090(#)]`
-/

namespace A136859.P18047917166391528811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007090 x).prod

end

end A136859.P18047917166391528811

/-! ## A136859.P6235243204503746347

`record[A000035(n)/2*A004655(n)]`
-/

namespace A136859.P6235243204503746347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 n : ℚ) / 2 * (A004655 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136859.P6235243204503746347

/-! ## A136859.P17574141673146251055

`∏[A328579(a(n-1))]%A004643(n)` with `a(0)=7, a(1)=1`
-/

namespace A136859.P17574141673146251055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  A328579 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A004643 n)

end

end A136859.P17574141673146251055

/-!
# A136863: Numbers k such that k and k^2 use only the digits 0, 1, 4 and 7.

The programs for A136863, there is no canonical definition to state claims against.
-/

/-! ## A136863.P11631265485123599224

`∩[A136839(n+1), A136860(n+1)]`
-/

namespace A136863.P11631265485123599224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136863.P11631265485123599224

/-! ## A136863.P8992242370427041985

`∩[A136839(n+1), A136856(n+1)]`
-/

namespace A136863.P8992242370427041985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136863.P8992242370427041985

/-! ## A136863.P17730599864454739847

`∩[A136856(n+1), A136860(n+1)]`
-/

namespace A136863.P17730599864454739847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136863.P17730599864454739847

/-! ## A136863.P4759727231855980252

`∩[A136839(n+1), A136865(n+1)]`
-/

namespace A136863.P4759727231855980252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136863.P4759727231855980252

/-! ## A136863.P4633593413765663128

`∩[A136856(n+1), A136865(n+1)]`
-/

namespace A136863.P4633593413765663128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136863.P4633593413765663128

/-!
# A136866: Numbers k such that k and k^2 use only the digits 0, 1, 4 and 8.

The programs for A136866, there is no canonical definition to state claims against.
-/

/-! ## A136866.P8252867387042879181

`∩[A136840(n+1), A136857(n+1)]`
-/

namespace A136866.P8252867387042879181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P8252867387042879181

/-! ## A136866.P16806226553607825752

`∩[A136840(n+1), A136861(n+1)]`
-/

namespace A136866.P16806226553607825752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P16806226553607825752

/-! ## A136866.P6528500551172107295

`∩[A136840(n+1), A136867(n+1)]`
-/

namespace A136866.P6528500551172107295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P6528500551172107295

/-! ## A136866.P12916978602531874202

`∩[A136857(n+1), A136861(n+1)]`
-/

namespace A136866.P12916978602531874202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P12916978602531874202

/-! ## A136866.P3320766122125320780

`∩[A136857(n+1), A136867(n+1)]`
-/

namespace A136866.P3320766122125320780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P3320766122125320780

/-! ## A136866.P17101388512564466590

`∩[A136861(n+1), A136867(n+1)]`
-/

namespace A136866.P17101388512564466590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P17101388512564466590

/-! ## A136866.P14330703531460699567

`∩[A136840(n+1), A136864(n+1)]`
-/

namespace A136866.P14330703531460699567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P14330703531460699567

/-! ## A136866.P123668289327255571

`∩[A136857(n+1), A136864(n+1)]`
-/

namespace A136866.P123668289327255571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P123668289327255571

/-! ## A136866.P7588394130876298315

`∩[A136861(n+1), A136864(n+1)]`
-/

namespace A136866.P7588394130876298315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P7588394130876298315

/-! ## A136866.P9125995404895774156

`∩[A136864(n+1), A136867(n+1)]`
-/

namespace A136866.P9125995404895774156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136866.P9125995404895774156

/-!
# A136867: Numbers k such that k and k^2 use only the digits 0, 1, 4, 8 and 9.

The programs for A136867, there is no canonical definition to state claims against.
-/

/-! ## A136867.P13584844426110319894

`A136879(A004914(n+2))`
-/

namespace A136867.P13584844426110319894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136879 (A004914 (n + 2)).toNat

end

end A136867.P13584844426110319894

/-! ## A136867.P5794424934535844727

`A136879(A000005(5^n))`
-/

namespace A136867.P5794424934535844727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136879 (A000005 (5 ^ n)).toNat

end

end A136867.P5794424934535844727

/-! ## A136867.P17698477501579409567

`filter[A136874(n+1), A268240(#)]`
-/

namespace A136867.P17698477501579409567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268240 (f1 j).toNat = 1) n)

end

end A136867.P17698477501579409567

/-! ## A136867.P10079129001570678572

`filter[A136879(n+1), A268240(#)]`
-/

namespace A136867.P10079129001570678572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268240 (f1 j).toNat = 1) n)

end

end A136867.P10079129001570678572

/-!
# A136868: Table read by antidiagonals: T(n,k) is the number of connected directed multigraphs with loops with n arcs and k vertices, which are transitive (the existence of a path between two points implies the existence of an arc between those two points).

The programs for A136868, there is no canonical definition to state claims against.
-/

/-! ## A136868.P1807307122947373341

`A277239(n)-A004526(A333361(n))`
-/

namespace A136868.P1807307122947373341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 n - A004526 (A333361 n).toNat

end

end A136868.P1807307122947373341

/-! ## A136868.P8579369545559085164

`A290428(n)+A178798(A035607(n))`
-/

namespace A136868.P8579369545559085164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 n + A178798 (A035607 n).toNat

end

end A136868.P8579369545559085164

/-! ## A136868.P16329076608316320088

`A290428(n)-A016389(A187783(n))`
-/

namespace A136868.P16329076608316320088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 n - A016389 (A187783 n).toNat

end

end A136868.P16329076608316320088

/-! ## A136868.P2452947932034204637

`A241216(2^A138352(n))+A178798(A035607(n))`
-/

namespace A136868.P2452947932034204637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A138352 n : ℤ))).toNat + A178798 (A035607 n).toNat

end

end A136868.P2452947932034204637

/-!
# A136869: Numbers k such that k and k^2 use only the digits 0, 1, 5, 6 and 7.

The programs for A136869, there is no canonical definition to state claims against.
-/

/-! ## A136869.P2731223289890712977

`10*a(A140735(A005563(n))-2)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=76`
-/

namespace A136869.P2731223289890712977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10, 76] fun n a =>
  10 * a (A140735 (A005563 n).toNat - 2).toNat

end

end A136869.P2731223289890712977

/-!
# A136870: Numbers k such that k and k^2 use only the digits 0, 1, 5, 6 and 8.

The programs for A136870, there is no canonical definition to state claims against.
-/

/-! ## A136870.P5367316024522187863

`A037314(record[A193403(n+1)²])`
-/

namespace A136870.P5367316024522187863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193403 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A136870.P5367316024522187863

/-!
# A136874: Numbers k such that k and k^2 use only the digits 0, 1, 5, 8 and 9.

The programs for A136874, there is no canonical definition to state claims against.
-/

/-! ## A136874.P17474435703277694538

`A136881(n+1)*A266314((2*n)²)`
-/

namespace A136874.P17474435703277694538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136881 (n + 1) * A266314 ((2 * n) ^ 2)

end

end A136874.P17474435703277694538

/-! ## A136874.P1403262346027704517

`A230456(n+1)%2*A136881(n+1)`
-/

namespace A136874.P1403262346027704517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230456 (n + 1)) 2 * A136881 (n + 1)

end

end A136874.P1403262346027704517

/-! ## A136874.P12364904196237028462

`A000034(A000123(n))*A136881(n+1)`
-/

namespace A136874.P12364904196237028462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000123 n).toNat * A136881 (n + 1)

end

end A136874.P12364904196237028462

/-! ## A136874.P12276484833609182805

`gcd(A046145(A016742(n)), A136881(n+1))`
-/

namespace A136874.P12276484833609182805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046145 (A016742 n).toNat) (A136881 (n + 1))

end

end A136874.P12276484833609182805

/-! ## A136874.P4788993626482364310

`A136881(n+1)^A014963(A031428(n+1))`
-/

namespace A136874.P4788993626482364310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136881 (n + 1) : ℚ) ^ (A014963 (A031428 (n + 1)).toNat : ℤ)

end

end A136874.P4788993626482364310

/-! ## A136874.P15835199783478597374

`lcm(A136881(n+1), A337260(A205724(n+1)))`
-/

namespace A136874.P15835199783478597374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136881 (n + 1)) (A337260 (A205724 (n + 1)).toNat)

end

end A136874.P15835199783478597374

/-! ## A136874.P18101264076668471276

`A136881(n+1)+A046145(A016742(n))*A046145(n)`
-/

namespace A136874.P18101264076668471276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136881 (n + 1) + A046145 (A016742 n).toNat * A046145 n

end

end A136874.P18101264076668471276

/-! ## A136874.P3482331409570194647

`A136881(n+1)%A225813(n)`
-/

namespace A136874.P3482331409570194647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136881 (n + 1)) (A225813 n)

end

end A136874.P3482331409570194647

/-!
# A136875: Numbers k such that k and k^2 use only the digits 0, 1, 6 and 7.

The programs for A136875, there is no canonical definition to state claims against.
-/

/-! ## A136875.P5106284246628401971

`∩[A136860(n+1), A136876(n+1)]`
-/

namespace A136875.P5106284246628401971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136875.P5106284246628401971

/-! ## A136875.P9200854680268584163

`∩[A136828(n+1), A136848(n+1)]`
-/

namespace A136875.P9200854680268584163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136875.P9200854680268584163

/-! ## A136875.P14367135012915812104

`∩[A136828(n+1), A136860(n+1)]`
-/

namespace A136875.P14367135012915812104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136875.P14367135012915812104

/-! ## A136875.P2323721648482398352

`∩[A136828(n+1), A136876(n+1)]`
-/

namespace A136875.P2323721648482398352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136875.P2323721648482398352

/-! ## A136875.P5936493080693515555

`∩[A136848(n+1), A136860(n+1)]`
-/

namespace A136875.P5936493080693515555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136875.P5936493080693515555

/-!
# A136876: Numbers k such that k and k^2 use only the digits 0, 1, 6, 7 and 8.

The programs for A136876, there is no canonical definition to state claims against.
-/

/-! ## A136876.P1563339812375863939

`A035688(A132621(n))+A007924(n)`
-/

namespace A136876.P1563339812375863939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035688 (A132621 n).toNat + A007924 n

end

end A136876.P1563339812375863939

/-!
# A136878: Numbers k such that k and k^2 use only the digits 0, 1, 6 and 8.

The programs for A136878, there is no canonical definition to state claims against.
-/

/-! ## A136878.P16175890964139551831

`∩[A136829(n+1), A136849(n+1)]`
-/

namespace A136878.P16175890964139551831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P16175890964139551831

/-! ## A136878.P4821599949211938733

`∩[A136829(n+1), A136876(n+1)]`
-/

namespace A136878.P4821599949211938733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P4821599949211938733

/-! ## A136878.P1766480834770138024

`∩[A136849(n+1), A136876(n+1)]`
-/

namespace A136878.P1766480834770138024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P1766480834770138024

/-! ## A136878.P11913349031568221474

`∩[A136829(n+1), A136870(n+1)]`
-/

namespace A136878.P11913349031568221474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P11913349031568221474

/-! ## A136878.P6840156292424347959

`∩[A136849(n+1), A136870(n+1)]`
-/

namespace A136878.P6840156292424347959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P6840156292424347959

/-! ## A136878.P16304022562798205987

`∩[A136870(n+1), A136876(n+1)]`
-/

namespace A136878.P16304022562798205987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P16304022562798205987

/-! ## A136878.P5298622914008866938

`∩[A136829(n+1), A136861(n+1)]`
-/

namespace A136878.P5298622914008866938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P5298622914008866938

/-! ## A136878.P12444150670935903577

`∩[A136849(n+1), A136861(n+1)]`
-/

namespace A136878.P12444150670935903577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P12444150670935903577

/-! ## A136878.P10626467595698168158

`∩[A136861(n+1), A136870(n+1)]`
-/

namespace A136878.P10626467595698168158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P10626467595698168158

/-! ## A136878.P5932122344138892427

`∩[A136861(n+1), A136876(n+1)]`
-/

namespace A136878.P5932122344138892427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136878.P5932122344138892427

/-!
# A136881: Numbers k such that k and k^2 use only the digits 0, 1, 8 and 9.

The programs for A136881, there is no canonical definition to state claims against.
-/

/-! ## A136881.P11278393513334327859

`∩[A136852(n+1), A136867(n+1)]`
-/

namespace A136881.P11278393513334327859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P11278393513334327859

/-! ## A136881.P13014201349905984707

`∩[A136852(n+1), A136880(n+1)]`
-/

namespace A136881.P13014201349905984707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P13014201349905984707

/-! ## A136881.P1419484677530338004

`∩[A136867(n+1), A136880(n+1)]`
-/

namespace A136881.P1419484677530338004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P1419484677530338004

/-! ## A136881.P8763202952028941856

`∩[A136852(n+1), A136874(n+1)]`
-/

namespace A136881.P8763202952028941856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P8763202952028941856

/-! ## A136881.P3940580800324738341

`∩[A136852(n+1), A136879(n+1)]`
-/

namespace A136881.P3940580800324738341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P3940580800324738341

/-! ## A136881.P2309515730312377821

`∩[A136867(n+1), A136874(n+1)]`
-/

namespace A136881.P2309515730312377821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P2309515730312377821

/-! ## A136881.P2992082426813147947

`∩[A136867(n+1), A136879(n+1)]`
-/

namespace A136881.P2992082426813147947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P2992082426813147947

/-! ## A136881.P7361258185429648069

`∩[A136874(n+1), A136879(n+1)]`
-/

namespace A136881.P7361258185429648069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P7361258185429648069

/-! ## A136881.P14941393095919883515

`∩[A136874(n+1), A136880(n+1)]`
-/

namespace A136881.P14941393095919883515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P14941393095919883515

/-! ## A136881.P3585226160527392098

`∩[A136879(n+1), A136880(n+1)]`
-/

namespace A136881.P3585226160527392098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P3585226160527392098

/-! ## A136881.P17006127098542296598

`∩[A136835(n+1), A136852(n+1)]`
-/

namespace A136881.P17006127098542296598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P17006127098542296598

/-! ## A136881.P12367350390695685907

`∩[A136835(n+1), A136867(n+1)]`
-/

namespace A136881.P12367350390695685907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P12367350390695685907

/-! ## A136881.P1558792403195035965

`∩[A136835(n+1), A136879(n+1)]`
-/

namespace A136881.P1558792403195035965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P1558792403195035965

/-! ## A136881.P15367217197365211937

`∩[A136835(n+1), A136880(n+1)]`
-/

namespace A136881.P15367217197365211937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136881.P15367217197365211937

/-!
# A136882: Numbers k such that k and k^2 use only the digits 0, 2, 3, 4 and 5.

The programs for A136882, there is no canonical definition to state claims against.
-/

/-! ## A136882.P8467166843696917556

`A157608(A147202(n+1))+A136899(n+1)`
-/

namespace A136882.P8467166843696917556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157608 (A147202 (n + 1)).toNat + A136899 (n + 1)

end

end A136882.P8467166843696917556

/-!
# A136883: Numbers k such that k and k^2 use only the digits 0, 2, 3, 4 and 6.

The programs for A136883, there is no canonical definition to state claims against.
-/

/-! ## A136883.P8768434421144094748

`A262689(C(2^(n+1), 3))`
-/

namespace A136883.P8768434421144094748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Nat.choose (2 ^ (n + 1)) 3)

end

end A136883.P8768434421144094748

/-! ## A136883.P14986454931852943696

`2*A262689(floor(10^(n-1)))`
-/

namespace A136883.P14986454931852943696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262689 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A136883.P14986454931852943696

/-!
# A136884: Numbers k such that k and k^2 use only the digits 0, 2, 3, 4 and 7.

The programs for A136884, there is no canonical definition to state claims against.
-/

/-! ## A136884.P11665557345380482806

`A007090(floor(4^n/2))`
-/

namespace A136884.P11665557345380482806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 ⌊(4 ^ n : ℚ) / 2⌋.toNat

end

end A136884.P11665557345380482806

/-! ## A136884.P9093818552503067712

`A024644(floor(4^n/2))`
-/

namespace A136884.P9093818552503067712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 ⌊(4 ^ n : ℚ) / 2⌋.toNat

end

end A136884.P9093818552503067712

/-! ## A136884.P4428722884757792048

`record[10*a(A056239(n)-1)]` with `a(0)=0, a(1)=2`
-/

namespace A136884.P4428722884757792048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  10 * f1 (A056239 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136884.P4428722884757792048

/-! ## A136884.P11872721863061840430

`and(10^n, -2)/A006530(5^n)`
-/

namespace A136884.P11872721863061840430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / (A006530 (5 ^ n) : ℚ)

end

end A136884.P11872721863061840430

/-!
# A136885: Numbers k such that k and k^2 use only the digits 0, 2, 3, 4 and 8.

The programs for A136885, there is no canonical definition to state claims against.
-/

/-! ## A136885.P15734114695892219492

`A244159(n)*A336500(A016933(2*n))`
-/

namespace A136885.P15734114695892219492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n * A336500 (A016933 (2 * n)).toNat

end

end A136885.P15734114695892219492

/-! ## A136885.P214882874205526344

`A183095(A253317(2*(n+1)))*A239903(n)`
-/

namespace A136885.P214882874205526344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (A253317 (2 * (n + 1))).toNat * A239903 n

end

end A136885.P214882874205526344

/-! ## A136885.P17077130729824283231

`(A244159(n)+A000007(A046161(n)))*A005811(2*n+2)`
-/

namespace A136885.P17077130729824283231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244159 n + A000007 (A046161 n).toNat) * A005811 (2 * n + 2)

end

end A136885.P17077130729824283231

/-!
# A136886: Numbers k such that k and k^2 use only the digits 0, 2, 3, 4 and 9.

The programs for A136886, there is no canonical definition to state claims against.
-/

/-! ## A136886.P15419071021397956175

`A233583(10*a(n-2)+1)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A136886.P15419071021397956175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  A233583 (10 * a (n - 2) + 1).toNat

end

end A136886.P15419071021397956175

/-! ## A136886.P7175869498954921335

`eq[0, A029229(A113581(n))]`
-/

namespace A136886.P7175869498954921335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136886.P7175869498954921335

/-! ## A136886.P6933303436685402652

`eq[1, A001996(A004086(n))]`
-/

namespace A136886.P6933303436685402652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136886.P6933303436685402652

/-!
# A136887: Numbers k such that k and k^2 use only the digits 0, 2, 3 and 5.

The programs for A136887, there is no canonical definition to state claims against.
-/

/-! ## A136887.P2238091065564265288

`∩[A136889(n+1), A136890(n+1)]`
-/

namespace A136887.P2238091065564265288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P2238091065564265288

/-! ## A136887.P3434760801410404696

`∩[A136889(n+1), A136891(n+1)]`
-/

namespace A136887.P3434760801410404696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P3434760801410404696

/-! ## A136887.P15535841748917744281

`∩[A136890(n+1), A136891(n+1)]`
-/

namespace A136887.P15535841748917744281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P15535841748917744281

/-! ## A136887.P17687172525559975306

`∩[A136882(n+1), A136889(n+1)]`
-/

namespace A136887.P17687172525559975306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P17687172525559975306

/-! ## A136887.P11224024676291235409

`∩[A136882(n+1), A136890(n+1)]`
-/

namespace A136887.P11224024676291235409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P11224024676291235409

/-! ## A136887.P5027539276495807898

`∩[A136882(n+1), A136891(n+1)]`
-/

namespace A136887.P5027539276495807898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P5027539276495807898

/-! ## A136887.P17452431085793712726

`∩[A136882(n+1), A136888(n+1)]`
-/

namespace A136887.P17452431085793712726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P17452431085793712726

/-! ## A136887.P6998404904633243688

`∩[A136888(n+1), A136889(n+1)]`
-/

namespace A136887.P6998404904633243688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P6998404904633243688

/-! ## A136887.P1094588784793270304

`∩[A136888(n+1), A136890(n+1)]`
-/

namespace A136887.P1094588784793270304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P1094588784793270304

/-! ## A136887.P12254944347060697893

`∩[A136888(n+1), A136891(n+1)]`
-/

namespace A136887.P12254944347060697893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P12254944347060697893

/-! ## A136887.P17900205575037166235

`∩[A136811(n+1), A136882(n+1)]`
-/

namespace A136887.P17900205575037166235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P17900205575037166235

/-! ## A136887.P8716696636943709554

`∩[A136811(n+1), A136888(n+1)]`
-/

namespace A136887.P8716696636943709554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P8716696636943709554

/-! ## A136887.P17427887362437191703

`∩[A136811(n+1), A136889(n+1)]`
-/

namespace A136887.P17427887362437191703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P17427887362437191703

/-! ## A136887.P16071185578950078472

`∩[A136811(n+1), A136890(n+1)]`
-/

namespace A136887.P16071185578950078472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P16071185578950078472

/-! ## A136887.P9061436347752589692

`∩[A136811(n+1), A136891(n+1)]`
-/

namespace A136887.P9061436347752589692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136887.P9061436347752589692

/-!
# A136892: Numbers k such that k and k^2 use only the digits 0, 2, 3, 6 and 7.

The programs for A136892, there is no canonical definition to state claims against.
-/

/-! ## A136892.P16798231136936094491

`A070683(A155641(n)-1)`
-/

namespace A136892.P16798231136936094491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 (A155641 n - 1).toNat

end

end A136892.P16798231136936094491

/-!
# A136893: Numbers k such that k and k^2 use only the digits 0, 2, 3, 6 and 8.

The programs for A136893, there is no canonical definition to state claims against.
-/

/-! ## A136893.P1695819099970863631

`6*record[gcd((n-∑{digits}[n, #])/9, floor(10^(n-1)))]`
-/

namespace A136893.P1695819099970863631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)) ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136893.P1695819099970863631

/-! ## A136893.P12956655157201805628

`6*A007089(floor(3^(n-1)))`
-/

namespace A136893.P12956655157201805628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007089 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A136893.P12956655157201805628

/-! ## A136893.P9968388534361984511

`6*A109683(floor(3^(n-1)))`
-/

namespace A136893.P9968388534361984511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A109683 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A136893.P9968388534361984511

/-! ## A136893.P1333110769187377783

`record[∑{digits}[n, 10^#]-A093141(n)]`
-/

namespace A136893.P1333110769187377783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) - A093141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136893.P1333110769187377783

/-! ## A136893.P13143289636420491563

`10*A176488(∑[n])*a(n-1)` with `a(0)=0, a(1)=6`
-/

namespace A136893.P13143289636420491563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  10 * A176488 (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A136893.P13143289636420491563

/-!
# A136894: Numbers k such that k and k^2 use only the digits 0, 2, 3, 6 and 9.

The programs for A136894, there is no canonical definition to state claims against.
-/

/-! ## A136894.P7819983189204479230

`A004176(A136939(n+1))`
-/

namespace A136894.P7819983189204479230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A136939 (n + 1)).toNat

end

end A136894.P7819983189204479230

/-! ## A136894.P15071460317778342299

`A004176(A136944(n+1))`
-/

namespace A136894.P15071460317778342299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A136944 (n + 1)).toNat

end

end A136894.P15071460317778342299

/-! ## A136894.P3138152631734163687

`A004176(A136946(n+1))`
-/

namespace A136894.P3138152631734163687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A136946 (n + 1)).toNat

end

end A136894.P3138152631734163687

/-! ## A136894.P10678229672443346851

`A023443(A136944(n+1)+1)`
-/

namespace A136894.P10678229672443346851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A136944 (n + 1) + 1).toNat

end

end A136894.P10678229672443346851

/-! ## A136894.P15099394600352997795

`A136944(A351374(n+2)-1)`
-/

namespace A136894.P15099394600352997795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136944 (A351374 (n + 2) - 1).toNat

end

end A136894.P15099394600352997795

/-!
# A136895: Numbers k such that k and k^2 use only the digits 0, 2, 3, 7 and 9.

The programs for A136895, there is no canonical definition to state claims against.
-/

/-! ## A136895.P848480751382149476

`record[gcd(3*n, A032741(A280913(n)))]`
-/

namespace A136895.P848480751382149476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) (A032741 (A280913 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136895.P848480751382149476

/-! ## A136895.P17810383409685513589

`A008585(lt[A280913(n), 2])`
-/

namespace A136895.P17810383409685513589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A136895.P17810383409685513589

/-! ## A136895.P17299038896883838011

`A008585(eq[A000030(n), A004159(n)])`
-/

namespace A136895.P17299038896883838011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136895.P17299038896883838011

/-! ## A136895.P7296104989093526385

`A034326(A000244(n))*A136853(n+1)`
-/

namespace A136895.P7296104989093526385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034326 (A000244 n).toNat * A136853 (n + 1)

end

end A136895.P7296104989093526385

/-! ## A136895.P14514543543390608427

`A136926(n+1)/A061205(A004663(n))`
-/

namespace A136895.P14514543543390608427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136926 (n + 1) : ℚ) / (A061205 (A004663 n).toNat : ℚ)

end

end A136895.P14514543543390608427

/-!
# A136896: Numbers k such that k and k^2 use only the digits 0, 2, 3, 8 and 9.

The programs for A136896, there is no canonical definition to state claims against.
-/

/-! ## A136896.P11364224890984593016

`∩[A243190(n+1), A328780(n+1)]`
-/

namespace A136896.P11364224890984593016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136896.P11364224890984593016

/-!
# A136897: Numbers k such that k and k^2 use only the digits 0, 2, 4 and 5.

The programs for A136897, there is no canonical definition to state claims against.
-/

/-! ## A136897.P3549241363931017361

`∩[A136882(n+1), A136899(n+1)]`
-/

namespace A136897.P3549241363931017361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P3549241363931017361

/-! ## A136897.P5040787996985801056

`∩[A136882(n+1), A136898(n+1)]`
-/

namespace A136897.P5040787996985801056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P5040787996985801056

/-! ## A136897.P9219186236494045592

`∩[A136898(n+1), A136899(n+1)]`
-/

namespace A136897.P9219186236494045592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P9219186236494045592

/-! ## A136897.P6199931878941385799

`∩[A136882(n+1), A136900(n+1)]`
-/

namespace A136897.P6199931878941385799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P6199931878941385799

/-! ## A136897.P15870957273709933724

`∩[A136898(n+1), A136900(n+1)]`
-/

namespace A136897.P15870957273709933724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P15870957273709933724

/-! ## A136897.P15491095627503504670

`∩[A136899(n+1), A136900(n+1)]`
-/

namespace A136897.P15491095627503504670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P15491095627503504670

/-! ## A136897.P1266905305083989077

`∩[A136882(n+1), A136901(n+1)]`
-/

namespace A136897.P1266905305083989077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P1266905305083989077

/-! ## A136897.P7024450572466829248

`∩[A136898(n+1), A136901(n+1)]`
-/

namespace A136897.P7024450572466829248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P7024450572466829248

/-! ## A136897.P6303009043875874598

`∩[A136899(n+1), A136901(n+1)]`
-/

namespace A136897.P6303009043875874598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P6303009043875874598

/-! ## A136897.P15397901652686372635

`∩[A136900(n+1), A136901(n+1)]`
-/

namespace A136897.P15397901652686372635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P15397901652686372635

/-! ## A136897.P15639993921816841480

`∩[A136817(n+1), A136882(n+1)]`
-/

namespace A136897.P15639993921816841480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P15639993921816841480

/-! ## A136897.P3022169193657001598

`∩[A136817(n+1), A136898(n+1)]`
-/

namespace A136897.P3022169193657001598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P3022169193657001598

/-! ## A136897.P12388074860099187635

`∩[A136817(n+1), A136899(n+1)]`
-/

namespace A136897.P12388074860099187635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P12388074860099187635

/-! ## A136897.P11524066041576713118

`∩[A136817(n+1), A136900(n+1)]`
-/

namespace A136897.P11524066041576713118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P11524066041576713118

/-! ## A136897.P12047097692625436100

`∩[A136817(n+1), A136901(n+1)]`
-/

namespace A136897.P12047097692625436100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P12047097692625436100

/-! ## A136897.P7893207728170523639

`∩[A136898(n+1), A257086(n+1)]`
-/

namespace A136897.P7893207728170523639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P7893207728170523639

/-! ## A136897.P6503933944134698233

`∩[A136899(n+1), A257086(n+1)]`
-/

namespace A136897.P6503933944134698233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P6503933944134698233

/-! ## A136897.P6948758211571400476

`∩[A136900(n+1), A257086(n+1)]`
-/

namespace A136897.P6948758211571400476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P6948758211571400476

/-! ## A136897.P7210833930917507277

`∩[A136901(n+1), A257086(n+1)]`
-/

namespace A136897.P7210833930917507277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136897.P7210833930917507277

/-!
# A136899: Numbers k such that k and k^2 use only the digits 0, 2, 4, 5 and 7.

The programs for A136899, there is no canonical definition to state claims against.
-/

/-! ## A136899.P14399612694696559891

`A136882(n+1)-A157608(A147202(n+1))`
-/

namespace A136899.P14399612694696559891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136882 (n + 1) - A157608 (A147202 (n + 1)).toNat

end

end A136899.P14399612694696559891

