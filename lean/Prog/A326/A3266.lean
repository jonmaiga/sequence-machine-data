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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A326601: Central terms in triangle A326600.

The programs for A326601, there is no canonical definition to state claims against.
-/

/-! ## A326601.P16419170230116664584

`A326600(∑[4*n])`
-/

namespace A326601.P16419170230116664584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326601.P16419170230116664584

/-! ## A326601.P7918753192920508134

`record[A326600(4*A091018(n))]`
-/

namespace A326601.P7918753192920508134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326600 (4 * A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326601.P7918753192920508134

/-! ## A326601.P116765897506982204

`record[gcd(A114327(n), A326600(n))]`
-/

namespace A326601.P116765897506982204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A326600 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326601.P116765897506982204

/-! ## A326601.P6190503954853217748

`record[A326600(A194274(A230641(n)))]`
-/

namespace A326601.P6190503954853217748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326600 (A194274 (A230641 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326601.P6190503954853217748

/-! ## A326601.P15097680436965663100

`lcm(A033999(n), A326600(A046092(n)))`
-/

namespace A326601.P15097680436965663100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A326600 (A046092 n).toNat)

end

end A326601.P15097680436965663100

/-!
# A326604: G.f. A(x) satisfies x / Series_Reversion(x*A(x)) = (2*A(x) + 1+x)/3.

The programs for A326604, there is no canonical definition to state claims against.
-/

/-! ## A326604.P3979466144550250062

`A153284(or(1, n))*A249933(n)`
-/

namespace A326604.P3979466144550250062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (Nat.lor 1 n) * A249933 n

end

end A326604.P3979466144550250062

/-! ## A326604.P16708017726479149342

`A193592(∑[n+2]-2)*A249933(n)`
-/

namespace A326604.P16708017726479149342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (∑ j ∈ Finset.range (n + 1), f1 j - 2) * A249933 n

end

end A326604.P16708017726479149342

/-! ## A326604.P18305527105281464940

`A153284((1-n)²+n)*A249933(n)`
-/

namespace A326604.P18305527105281464940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat * A249933 n

end

end A326604.P18305527105281464940

/-! ## A326604.P13804601070978883802

`A059289(A008578(n+1))*A249933(n)`
-/

namespace A326604.P13804601070978883802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059289 (A008578 (n + 1)).toNat * A249933 n

end

end A326604.P13804601070978883802

/-! ## A326604.P7971141931043366791

`A020639(A049425(n))*A249933(n)`
-/

namespace A326604.P7971141931043366791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A049425 n).toNat * A249933 n

end

end A326604.P7971141931043366791

/-!
# A326608: Numbers m such that m | A000385(m-1) = Sum_{k=1..m-1} sigma(k) * sigma(m-k).

The programs for A326608, there is no canonical definition to state claims against.
-/

/-! ## A326608.P9147543069043847423

`eq[2*n/gcd(8, n+4), A006666(n+3)]`
-/

namespace A326608.P9147543069043847423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (Nat.gcd 8 (n + 4) : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A326608.P9147543069043847423

/-!
# A326612: Indices where A001175 (Pisano period) sets a new record value.

The programs for A326612, there is no canonical definition to state claims against.
-/

/-! ## A326612.P12470571038171033331

`∩[A337138(n+1), A382175(n+1)]`
-/

namespace A326612.P12470571038171033331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326612.P12470571038171033331

/-!
# A326618: a(n) = n^18 + n^9 + 1.

The programs for A326618, the canonical program `A326618.P11820745124358580354` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326618 has offset 0).

The definition of A326618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^18+n^9+1` (program `A326618.P11820745124358580354`, by `A326618.P11820745124358580354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326618.P11820745124358580354

`n^18+n^9+1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A326618

/-- `n^18+n^9+1` -/
def P11820745124358580354.Spec : Prop :=
  ∀ n, (P11820745124358580354.a n : ℤ) = A326618 n

theorem P11820745124358580354.correct : P11820745124358580354.Spec := by
  intro n
  simp only [A326618]

end A326618

/-! ## A326618.P11525205518875779350

`A060883(n^3)`
-/

namespace A326618.P11525205518875779350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (n ^ 3)

end

end A326618.P11525205518875779350

namespace A326618

/-- `A060883(n^3)` -/
def P11525205518875779350.Spec : Prop :=
  ∀ n, P11525205518875779350.a n = A326618 n

theorem P11525205518875779350.correct : P11525205518875779350.Spec := by
  intro n
  simp only [A326618, Nat.add_sub_cancel, A326618.P11525205518875779350.a, A326618.P11820745124358580354.a, A060883, A060883.P9775535391316657163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326618

/-! ## A326618.P1321115640937228092

`record[A060883(A167222(n))]`
-/

namespace A326618.P1321115640937228092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (A167222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326618.P1321115640937228092

namespace A326618

/-- `record[A060883(A167222(n))]` -/
def P1321115640937228092.Spec : Prop :=
  ∀ n, P1321115640937228092.a n = A326618 n

end A326618

/-! ## A326618.P12297227833048108294

`or(1, A060883(A000578(n)))`
-/

namespace A326618.P12297227833048108294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060883 (A000578 n).toNat)

end

end A326618.P12297227833048108294

namespace A326618

/-- `or(1, A060883(A000578(n)))` -/
def P12297227833048108294.Spec : Prop :=
  ∀ n, P12297227833048108294.a n = A326618 n

end A326618

/-! ## A326618.P1315844781200297233

`record[A060883(gcd(n, A055400(n)))]`
-/

namespace A326618.P1315844781200297233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (Int.gcd (n : ℤ) (A055400 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326618.P1315844781200297233

namespace A326618

/-- `record[A060883(gcd(n, A055400(n)))]` -/
def P1315844781200297233.Spec : Prop :=
  ∀ n, P1315844781200297233.a n = A326618 n

end A326618

/-!
# A326619: Numerator of the average of the set of distinct prime indices of n.

The programs for A326619, there is no canonical definition to state claims against.
-/

/-! ## A326619.P18149017981361777986

`A326567(∏{p}[n+2, #])`
-/

namespace A326619.P18149017981361777986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A326619.P18149017981361777986

/-! ## A326619.P6023315768560550748

`A326567(A007947(n+2))`
-/

namespace A326619.P6023315768560550748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A007947 (n + 2)).toNat

end

end A326619.P6023315768560550748

/-! ## A326619.P62774374554872870

`A326567(A015052(n+2))`
-/

namespace A326619.P62774374554872870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A015052 (n + 2)).toNat

end

end A326619.P62774374554872870

/-! ## A326619.P7461924833033153966

`A326567(A015053(n+2))`
-/

namespace A326619.P7461924833033153966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A015053 (n + 2)).toNat

end

end A326619.P7461924833033153966

/-! ## A326619.P1608718324575209774

`A326567(A053166(n+2))`
-/

namespace A326619.P1608718324575209774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A053166 (n + 2)).toNat

end

end A326619.P1608718324575209774

/-! ## A326619.P10814539740886037463

`A326567(A062759(n+2))`
-/

namespace A326619.P10814539740886037463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A062759 (n + 2)).toNat

end

end A326619.P10814539740886037463

/-! ## A326619.P12670240385286727200

`A326567(A078615(n+2))`
-/

namespace A326619.P12670240385286727200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A078615 (n + 2)).toNat

end

end A326619.P12670240385286727200

/-! ## A326619.P1844831977239635092

`A326567(A166140(n+2))`
-/

namespace A326619.P1844831977239635092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A166140 (n + 2)).toNat

end

end A326619.P1844831977239635092

/-! ## A326619.P8075747731791121363

`A326567(A066638(n+2))`
-/

namespace A326619.P8075747731791121363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A066638 (n + 2)).toNat

end

end A326619.P8075747731791121363

/-! ## A326619.P6500505598367343669

`A326567(A087321(n+2))`
-/

namespace A326619.P6500505598367343669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A087321 (n + 2)).toNat

end

end A326619.P6500505598367343669

/-!
# A326620: Denominator of the average of the set of distinct prime indices of n.

The programs for A326620, the canonical program `A326620.P3481273243227883870` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326620 has offset 2).

The definition of A326620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326620.P3481273243227883870

`A326568(∏{p}[n+2, #])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A326620

/-- `A326568(∏{p}[n+2, #])` -/
def P3481273243227883870.Spec : Prop :=
  ∀ n, P3481273243227883870.a n = A326620 (n + 2)

theorem P3481273243227883870.correct : P3481273243227883870.Spec := by
  intro n
  simp only [A326620, Nat.add_sub_cancel]

end A326620

/-! ## A326620.P14299171240874033807

`A326568(A007947(n+2))`
-/

namespace A326620.P14299171240874033807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A007947 (n + 2)).toNat

end

end A326620.P14299171240874033807

namespace A326620

/-- `A326568(A007947(n+2))` -/
def P14299171240874033807.Spec : Prop :=
  ∀ n, P14299171240874033807.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P10244804878839902284

`A326568(A062759(n+2))`
-/

namespace A326620.P10244804878839902284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A062759 (n + 2)).toNat

end

end A326620.P10244804878839902284

namespace A326620

/-- `A326568(A062759(n+2))` -/
def P10244804878839902284.Spec : Prop :=
  ∀ n, P10244804878839902284.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P4907875398616421363

`A326568(A328915(n+2))`
-/

namespace A326620.P4907875398616421363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A328915 (n + 2)).toNat

end

end A326620.P4907875398616421363

namespace A326620

/-- `A326568(A328915(n+2))` -/
def P4907875398616421363.Spec : Prop :=
  ∀ n, P4907875398616421363.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P17101427278458557830

`A326568(A273258(n+2))`
-/

namespace A326620.P17101427278458557830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A273258 (n + 2)).toNat

end

end A326620.P17101427278458557830

namespace A326620

/-- `A326568(A273258(n+2))` -/
def P17101427278458557830.Spec : Prop :=
  ∀ n, P17101427278458557830.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P8850378742566338777

`A326568(A078615(n+2))`
-/

namespace A326620.P8850378742566338777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A078615 (n + 2)).toNat

end

end A326620.P8850378742566338777

namespace A326620

/-- `A326568(A078615(n+2))` -/
def P8850378742566338777.Spec : Prop :=
  ∀ n, P8850378742566338777.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P12017076995704647135

`A326568(A015053(n+2)²)`
-/

namespace A326620.P12017076995704647135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A015053 (n + 2) ^ 2).toNat

end

end A326620.P12017076995704647135

namespace A326620

/-- `A326568(A015053(n+2)²)` -/
def P12017076995704647135.Spec : Prop :=
  ∀ n, P12017076995704647135.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P4654082406345817555

`A326568(A166140(n+2))`
-/

namespace A326620.P4654082406345817555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A166140 (n + 2)).toNat

end

end A326620.P4654082406345817555

namespace A326620

/-- `A326568(A166140(n+2))` -/
def P4654082406345817555.Spec : Prop :=
  ∀ n, P4654082406345817555.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P10662400482149315729

`A326568(A066638(n+2))`
-/

namespace A326620.P10662400482149315729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A066638 (n + 2)).toNat

end

end A326620.P10662400482149315729

namespace A326620

/-- `A326568(A066638(n+2))` -/
def P10662400482149315729.Spec : Prop :=
  ∀ n, P10662400482149315729.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P13604114023354364746

`A326568(A087321(n+2))`
-/

namespace A326620.P13604114023354364746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A087321 (n + 2)).toNat

end

end A326620.P13604114023354364746

namespace A326620

/-- `A326568(A087321(n+2))` -/
def P13604114023354364746.Spec : Prop :=
  ∀ n, P13604114023354364746.a n = A326620 (n + 2)

end A326620

/-! ## A326620.P9890641642979187523

`A326568(A285769(n+2))`
-/

namespace A326620.P9890641642979187523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A285769 (n + 2)).toNat

end

end A326620.P9890641642979187523

namespace A326620

/-- `A326568(A285769(n+2))` -/
def P9890641642979187523.Spec : Prop :=
  ∀ n, P9890641642979187523.a n = A326620 (n + 2)

end A326620

/-!
# A326621: Numbers n such that the average of the set of distinct prime indices of n is an integer.

The programs for A326621, there is no canonical definition to state claims against.
-/

/-! ## A326621.P11679587983171648872

`eq[1, A326620(n+2)]+2`
-/

namespace A326621.P11679587983171648872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326620 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A326621.P11679587983171648872

/-! ## A326621.P6432707749142068688

`record[A020725(n+1)/A326620(n+2)]`
-/

namespace A326621.P6432707749142068688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A326620 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326621.P6432707749142068688

/-! ## A326621.P11181678641590330504

`record[A000027(n+2)/A326620(n+2)]`
-/

namespace A326621.P11181678641590330504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) / (A326620 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326621.P11181678641590330504

/-! ## A326621.P1441771833965182544

`record[A233583(n+3)/A326620(n+2)]`
-/

namespace A326621.P1441771833965182544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 3) : ℚ) / (A326620 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326621.P1441771833965182544

/-! ## A326621.P13146509206611271040

`record[A032742(2*(n+2))/A326620(n+2)]`
-/

namespace A326621.P13146509206611271040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (2 * (n + 2)) : ℚ) / (A326620 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326621.P13146509206611271040

/-! ## A326621.P9640760747590303633

`record[A001057(2*n+3)/A326620(n+2)]`
-/

namespace A326621.P9640760747590303633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001057 (2 * n + 3) : ℚ) / (A326620 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326621.P9640760747590303633

/-! ## A326621.P9307993931910327119

`record[root(A078898(2*(n+2)), A326620(n+2))]`
-/

namespace A326621.P9307993931910327119
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A078898 (2 * (n + 2)) : ℝ) ^ (1 / (A326620 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326621.P9307993931910327119

/-! ## A326621.P5121176287096240320

`A080513(record[n/A326620(n+2)+n]+1)`
-/

namespace A326621.P5121176287096240320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A326620 (n + 2) : ℚ) + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A326621.P5121176287096240320

/-! ## A326621.P9577393260184117389

`lt[n, A233583(n+2)/A326620(n+2)]+2`
-/

namespace A326621.P9577393260184117389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 2) : ℚ) / (A326620 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A326621.P9577393260184117389

/-! ## A326621.P5723368999350770074

`record[A064916(A064919(n+2))/A326620(n+2)]`
-/

namespace A326621.P5723368999350770074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064916 (A064919 (n + 2)).toNat : ℚ) / (A326620 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326621.P5723368999350770074

/-!
# A326622: Number of factorizations of n into factors > 1 with integer average.

The programs for A326622, there is no canonical definition to state claims against.
-/

/-! ## A326622.P17423391078377756277

`A373369(n+1)*A373403(A245092(3*n+2))`
-/

namespace A326622.P17423391078377756277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373369 (n + 1) * A373403 (A245092 (3 * n + 2)).toNat

end

end A326622.P17423391078377756277

/-! ## A326622.P12623832115897609396

`A378598(A000041(2*(n+2)))+A373369(n+1)`
-/

namespace A326622.P12623832115897609396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378598 (A000041 (2 * (n + 2))).toNat + A373369 (n + 1)

end

end A326622.P12623832115897609396

/-! ## A326622.P11200582233739669106

`A136441(A212216(n))*A373369(n+1)`
-/

namespace A326622.P11200582233739669106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136441 (A212216 n).toNat * A373369 (n + 1)

end

end A326622.P11200582233739669106

/-! ## A326622.P3764882387313057237

`A373472(A217099(2*n+5))+A373369(n+1)`
-/

namespace A326622.P3764882387313057237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373472 (A217099 (2 * n + 5)).toNat + A373369 (n + 1)

end

end A326622.P3764882387313057237

/-!
# A326623: Heinz numbers of integer partitions whose geometric mean is an integer.

The programs for A326623, there is no canonical definition to state claims against.
-/

/-! ## A326623.P13418196846584660058

`∪[A246655(n+1), A326624(n+1)]`
-/

namespace A326623.P13418196846584660058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326623.P13418196846584660058

/-! ## A326623.P18410352516368993005

`∪[A326624(n+1), A326645(n+1)]`
-/

namespace A326623.P18410352516368993005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326623.P18410352516368993005

/-! ## A326623.P16495262879820488858

`∪[A326624(n+1), A337935(n+1)]`
-/

namespace A326623.P16495262879820488858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326623.P16495262879820488858

/-! ## A326623.P7275313640050926997

`∪[A002961(n+1), A000961(n+2)]%A306010(3*n+5)`
-/

namespace A326623.P7275313640050926997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A306010 (3 * n + 5))

end

end A326623.P7275313640050926997

/-! ## A326623.P6505326470671664119

`record[A058321(n)-A285728(n+1)]`
-/

namespace A326623.P6505326470671664119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 n - A285728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326623.P6505326470671664119

/-!
# A326624: Heinz numbers of non-constant integer partitions whose geometric mean is an integer.

The programs for A326624, there is no canonical definition to state claims against.
-/

/-! ## A326624.P4519674381456003909

`filter[A326623(n+1), A143731(#)]`
-/

namespace A326624.P4519674381456003909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A326624.P4519674381456003909

/-! ## A326624.P4867382573617211516

`∩[A024619(n+1), A326623(n+1)]`
-/

namespace A326624.P4867382573617211516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326624.P4867382573617211516

/-! ## A326624.P13014857770279670710

`∩[A069116(n+1), A326623(n+1)]`
-/

namespace A326624.P13014857770279670710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326624.P13014857770279670710

/-!
# A326625: Number of strict integer partitions of n whose geometric mean is an integer.

The programs for A326625, there is no canonical definition to state claims against.
-/

/-! ## A326625.P16853807397384564218

`A333381(n*A359361(n+2))`
-/

namespace A326625.P16853807397384564218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 ((n : ℤ) * A359361 (n + 2)).toNat

end

end A326625.P16853807397384564218

/-! ## A326625.P2718314394139857907

`A333381(n*A097306(n+1))`
-/

namespace A326625.P2718314394139857907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 ((n : ℤ) * A097306 (n + 1)).toNat

end

end A326625.P2718314394139857907

/-! ## A326625.P5745927052988902100

`A327342(A307857(3*n+2)+A305801(n+1))`
-/

namespace A326625.P5745927052988902100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327342 (A307857 (3 * n + 2) + A305801 (n + 1)).toNat

end

end A326625.P5745927052988902100

/-! ## A326625.P1090466509382312815

`A001221(A153339(n+4)-11)`
-/

namespace A326625.P1090466509382312815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A153339 (n + 4) - 11).toNat

end

end A326625.P1090466509382312815

/-! ## A326625.P8188960352898148832

`A333381(n*A274651(n+1))`
-/

namespace A326625.P8188960352898148832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 ((n : ℤ) * A274651 (n + 1)).toNat

end

end A326625.P8188960352898148832

/-!
# A326626: Number of partitions of n into 10 squarefree parts.

The programs for A326626, there is no canonical definition to state claims against.
-/

/-! ## A326626.P13560934897671994735

`A326627(n)/(abs(1-n)+1)`
-/

namespace A326626.P13560934897671994735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326627 n : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ)

end

end A326626.P13560934897671994735

/-! ## A326626.P15921147502509940377

`abs(A326627(n)/A274922(n))`
-/

namespace A326626.P15921147502509940377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A326627 n : ℚ) / (A274922 n : ℚ)|

end

end A326626.P15921147502509940377

/-! ## A326626.P8825106403018912324

`floor(A326627(n)/A028310(n))`
-/

namespace A326626.P8825106403018912324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326627 n : ℚ) / (A028310 n : ℚ)⌋

end

end A326626.P8825106403018912324

/-! ## A326626.P9397114602035901271

`floor(A326627(n)/A233583(n+1))`
-/

namespace A326626.P9397114602035901271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326627 n : ℚ) / (A233583 (n + 1) : ℚ)⌋

end

end A326626.P9397114602035901271

/-! ## A326626.P16965947148323527966

`A000035(2*n)+A326627(n)/A028310(n)`
-/

namespace A326626.P16965947148323527966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℚ) + (A326627 n : ℚ) / (A028310 n : ℚ)

end

end A326626.P16965947148323527966

/-! ## A326626.P15195780890759123325

`A156729(A365498(n+1))+A326627(n)/A028310(n)`
-/

namespace A326626.P15195780890759123325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156729 (A365498 (n + 1)).toNat : ℚ) + (A326627 n : ℚ) / (A028310 n : ℚ)

end

end A326626.P15195780890759123325

/-! ## A326626.P15336062743552410481

`A326627(n)/A028310(n)*A023532(A100484(n+1))`
-/

namespace A326626.P15336062743552410481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326627 n : ℚ) / (A028310 n : ℚ) * (A023532 (A100484 (n + 1)).toNat : ℚ)

end

end A326626.P15336062743552410481

/-! ## A326626.P10809871388517482842

`A326627(n)/A028310(n)*A062745(A359305(n+1))`
-/

namespace A326626.P10809871388517482842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326627 n : ℚ) / (A028310 n : ℚ) * (A062745 (A359305 (n + 1)).toNat : ℚ)

end

end A326626.P10809871388517482842

/-! ## A326626.P8323164487325446900

`A326627(n)/A028310(n)*A248776(A359305(2*n+3))`
-/

namespace A326626.P8323164487325446900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326627 n : ℚ) / (A028310 n : ℚ) * (A248776 (A359305 (2 * n + 3)).toNat : ℚ)

end

end A326626.P8323164487325446900

/-!
# A326627: Sum of all the parts in the partitions of n into 10 squarefree parts.

The programs for A326627, there is no canonical definition to state claims against.
-/

/-! ## A326627.P7253488657368218321

`n*A326626(n)`
-/

namespace A326627.P7253488657368218321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A326626 n

end

end A326627.P7253488657368218321

/-! ## A326627.P13091916889047083807

`A326628(n)+A326629(n)+A326630(n)+A326631(n)+A326632(n)+A326633(n)+A326634(n)+A326635(n)+A326636(n)+A326637(n)`
-/

namespace A326627.P13091916889047083807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326628 n + A326629 n + A326630 n + A326631 n + A326632 n + A326633 n + A326634 n + A326635 n + A326636 n + A326637 n

end

end A326627.P13091916889047083807

/-! ## A326627.P5455067815723142996

`n*(A326628(n)-A340988(A000009(n)))`
-/

namespace A326627.P5455067815723142996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A326628 n - A340988 ((A000009 n).toNat + 91))

end

end A326627.P5455067815723142996

/-! ## A326627.P5977383832005192603

`n*(A326628(n)+A178798(A326635(n)))`
-/

namespace A326627.P5977383832005192603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A326628 n + A178798 (A326635 n).toNat)

end

end A326627.P5977383832005192603

/-! ## A326627.P9338836420551913820

`A000005(A011782(n))*A326628(n)`
-/

namespace A326627.P9338836420551913820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A326628 n

end

end A326627.P9338836420551913820

/-!
# A326628: Sum of the smallest parts of the partitions of n into 10 squarefree parts.

The programs for A326628, there is no canonical definition to state claims against.
-/

/-! ## A326628.P11557071069636941695

`A326627(n)-A326629(n)-A326630(n)-A326631(n)-A326632(n)-A326633(n)-A326634(n)-A326635(n)-A326636(n)-A326637(n)`
-/

namespace A326628.P11557071069636941695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326629 n - A326630 n - A326631 n - A326632 n - A326633 n - A326634 n - A326635 n - A326636 n - A326637 n

end

end A326628.P11557071069636941695

/-! ## A326628.P3114969118489083709

`A340988(A000009(n))+A326626(n)`
-/

namespace A326628.P3114969118489083709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A000009 n).toNat + 91) + A326626 n

end

end A326628.P3114969118489083709

/-! ## A326628.P8249739483943634494

`A274399(A326626(n)%A173957(n+1))`
-/

namespace A326628.P8249739483943634494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (Int.tmod (A326626 n) (A173957 (n + 1))).toNat

end

end A326628.P8249739483943634494

/-! ## A326628.P3156892746862360628

`A326629(n)-A151774(A275064(n))`
-/

namespace A326628.P3156892746862360628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326629 n - A151774 (A275064 n).toNat

end

end A326628.P3156892746862360628

/-! ## A326628.P2059536885358375289

`A326626(n)+A112802(A094598(2*(n+2)))`
-/

namespace A326628.P2059536885358375289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A112802 (A094598 (2 * (n + 2))).toNat

end

end A326628.P2059536885358375289

/-!
# A326629: Sum of the ninth largest parts of the partitions of n into 10 squarefree parts.

The programs for A326629, there is no canonical definition to state claims against.
-/

/-! ## A326629.P4931909462168348751

`A326627(n)-A326628(n)-A326630(n)-A326631(n)-A326632(n)-A326633(n)-A326634(n)-A326635(n)-A326636(n)-A326637(n)`
-/

namespace A326629.P4931909462168348751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326630 n - A326631 n - A326632 n - A326633 n - A326634 n - A326635 n - A326636 n - A326637 n

end

end A326629.P4931909462168348751

/-! ## A326629.P4671169026224845019

`A340988(A000009(n+1))+A326628(n)`
-/

namespace A326629.P4671169026224845019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A000009 (n + 1)).toNat + 91) + A326628 n

end

end A326629.P4671169026224845019

/-! ## A326629.P6941704934582247340

`A340988(A000009(n+1))+A274399(A326626(n))`
-/

namespace A326629.P6941704934582247340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A000009 (n + 1)).toNat + 91) + A274399 (A326626 n).toNat

end

end A326629.P6941704934582247340

/-! ## A326629.P3726835647231621866

`A326628(n)+A178798(A087153(n))`
-/

namespace A326629.P3726835647231621866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326628 n + A178798 (A087153 n).toNat

end

end A326629.P3726835647231621866

/-! ## A326629.P16287973378511906536

`A326628(n)+A151774(A275064(n))`
-/

namespace A326629.P16287973378511906536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326628 n + A151774 (A275064 n).toNat

end

end A326629.P16287973378511906536

/-!
# A326630: Sum of the eighth largest parts in the partitions of n into 10 squarefree parts.

The programs for A326630, there is no canonical definition to state claims against.
-/

/-! ## A326630.P8127894927094784652

`A326627(n)-A326628(n)-A326629(n)-A326631(n)-A326632(n)-A326633(n)-A326634(n)-A326635(n)-A326636(n)-A326637(n)`
-/

namespace A326630.P8127894927094784652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326629 n - A326631 n - A326632 n - A326633 n - A326634 n - A326635 n - A326636 n - A326637 n

end

end A326630.P8127894927094784652

/-! ## A326630.P13218382531681280923

`A028904(A326631(n)%A096636(n))`
-/

namespace A326630.P13218382531681280923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (Int.tmod (A326631 n) (A096636 n)).toNat

end

end A326630.P13218382531681280923

/-! ## A326630.P10982752807636601654

`A081600(A326631(n))^A014963(A304205(n+1))`
-/

namespace A326630.P10982752807636601654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081600 (A326631 n).toNat : ℚ) ^ (A014963 (A304205 (n + 1)).toNat : ℤ)

end

end A326630.P10982752807636601654

/-! ## A326630.P3783944064828075851

`A081600(A326631(n))%A006530(A329695(n))`
-/

namespace A326630.P3783944064828075851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081600 (A326631 n).toNat) (A006530 (A329695 n).toNat)

end

end A326630.P3783944064828075851

/-!
# A326631: Sum of the seventh largest parts of the partitions of n into 10 squarefree parts.

The programs for A326631, there is no canonical definition to state claims against.
-/

/-! ## A326631.P11143458006845274332

`A326627(n)-A326628(n)-A326629(n)-A326630(n)-A326632(n)-A326633(n)-A326634(n)-A326635(n)-A326636(n)-A326637(n)`
-/

namespace A326631.P11143458006845274332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326629 n - A326630 n - A326632 n - A326633 n - A326634 n - A326635 n - A326636 n - A326637 n

end

end A326631.P11143458006845274332

/-! ## A326631.P10339737156752695479

`(A341714(n)%A293842(n+1))%A261776(n)`
-/

namespace A326631.P10339737156752695479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A341714 n) (A293842 (n + 1))) (A261776 n)

end

end A326631.P10339737156752695479

/-!
# A326632: Sum of the sixth largest parts of the partitions of n into 10 squarefree parts.

The programs for A326632, there is no canonical definition to state claims against.
-/

/-! ## A326632.P167994417369981941

`A326627(n)-A326628(n)-A326629(n)-A326630(n)-A326631(n)-A326633(n)-A326634(n)-A326635(n)-A326636(n)-A326637(n)`
-/

namespace A326632.P167994417369981941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326629 n - A326630 n - A326631 n - A326633 n - A326634 n - A326635 n - A326636 n - A326637 n

end

end A326632.P167994417369981941

/-!
# A326633: Sum of the fifth largest parts of the partitions of n into 10 squarefree parts.

The programs for A326633, there is no canonical definition to state claims against.
-/

/-! ## A326633.P12043512679103684754

`A326627(n)-A326628(n)-A326629(n)-A326630(n)-A326631(n)-A326632(n)-A326634(n)-A326635(n)-A326636(n)-A326637(n)`
-/

namespace A326633.P12043512679103684754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326629 n - A326630 n - A326631 n - A326632 n - A326634 n - A326635 n - A326636 n - A326637 n

end

end A326633.P12043512679103684754

/-! ## A326633.P8542954013472900118

`A225850(A326626(n)^A165022(n+1))`
-/

namespace A326633.P8542954013472900118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (SequenceMachineLib.roundAway ((A326626 n : ℚ) ^ (A165022 (n + 1) : ℤ))).toNat

end

end A326633.P8542954013472900118

/-!
# A326634: Sum of the fourth largest parts of the partitions of n into 10 squarefree parts.

The programs for A326634, there is no canonical definition to state claims against.
-/

/-! ## A326634.P15910312156020958

`A326627(n)-A326628(n)-A326629(n)-A326630(n)-A326631(n)-A326632(n)-A326633(n)-A326635(n)-A326636(n)-A326637(n)`
-/

namespace A326634.P15910312156020958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326629 n - A326630 n - A326631 n - A326632 n - A326633 n - A326635 n - A326636 n - A326637 n

end

end A326634.P15910312156020958

/-!
# A326635: Sum of the third largest parts of the partitions of n into 10 squarefree parts.

The programs for A326635, there is no canonical definition to state claims against.
-/

/-! ## A326635.P17029032383018876758

`A326627(n)-A326628(n)-A326629(n)-A326630(n)-A326631(n)-A326632(n)-A326633(n)-A326634(n)-A326636(n)-A326637(n)`
-/

namespace A326635.P17029032383018876758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326629 n - A326630 n - A326631 n - A326632 n - A326633 n - A326634 n - A326636 n - A326637 n

end

end A326635.P17029032383018876758

/-! ## A326635.P2180372385687337294

`∑{e}[A003945(n), A326530(#)]`
-/

namespace A326635.P2180372385687337294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326530 (Nat.factorization (f1 n).natAbs p)

end

end A326635.P2180372385687337294

/-! ## A326635.P17939600231656902943

`∑{e}[A042950(n), A326530(#)]`
-/

namespace A326635.P17939600231656902943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326530 (Nat.factorization (f1 n).natAbs p)

end

end A326635.P17939600231656902943

/-! ## A326635.P14039925543905425493

`A326530(C(n, A000030(n))-1)`
-/

namespace A326635.P14039925543905425493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326530 (Nat.choose n (A000030 n).toNat - 1)

end

end A326635.P14039925543905425493

/-! ## A326635.P9882415562236187123

`A326530(C(n, A081600(n))-1)`
-/

namespace A326635.P9882415562236187123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326530 (Nat.choose n (A081600 n).toNat - 1)

end

end A326635.P9882415562236187123

/-!
# A326636: Sum of the second largest parts of the partitions of n into 10 squarefree parts.

The programs for A326636, there is no canonical definition to state claims against.
-/

/-! ## A326636.P3375177103106711367

`A326627(n)-A326628(n)-A326629(n)-A326630(n)-A326631(n)-A326632(n)-A326633(n)-A326634(n)-A326635(n)-A326637(n)`
-/

namespace A326636.P3375177103106711367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326629 n - A326630 n - A326631 n - A326632 n - A326633 n - A326634 n - A326635 n - A326637 n

end

end A326636.P3375177103106711367

/-! ## A326636.P7992875691044943645

`∑{e}[A003945(n), A326531(#)]`
-/

namespace A326636.P7992875691044943645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326531 (Nat.factorization (f1 n).natAbs p)

end

end A326636.P7992875691044943645

/-! ## A326636.P10781158536009706817

`∑{e}[A042950(n), A326531(#)]`
-/

namespace A326636.P10781158536009706817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326531 (Nat.factorization (f1 n).natAbs p)

end

end A326636.P10781158536009706817

/-!
# A326637: Sum of the largest parts of the partitions of n into 10 squarefree parts.

The programs for A326637, there is no canonical definition to state claims against.
-/

/-! ## A326637.P6873985441360194039

`A326627(n)-A326628(n)-A326629(n)-A326630(n)-A326631(n)-A326632(n)-A326633(n)-A326634(n)-A326635(n)-A326636(n)`
-/

namespace A326637.P6873985441360194039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n - A326628 n - A326629 n - A326630 n - A326631 n - A326632 n - A326633 n - A326634 n - A326635 n - A326636 n

end

end A326637.P6873985441360194039

/-! ## A326637.P13112523678856140432

`∑{e}[A003945(n), A326532(#)]`
-/

namespace A326637.P13112523678856140432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326532 (Nat.factorization (f1 n).natAbs p)

end

end A326637.P13112523678856140432

/-! ## A326637.P10329249753908218455

`∑{e}[A042950(n), A326532(#)]`
-/

namespace A326637.P10329249753908218455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326532 (Nat.factorization (f1 n).natAbs p)

end

end A326637.P10329249753908218455

/-! ## A326637.P8504053195506714623

`A000196(A326532(abs(1-n))²)`
-/

namespace A326637.P8504053195506714623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A326532 |1 - (n : ℤ)|.toNat ^ 2).toNat

end

end A326637.P8504053195506714623

/-! ## A326637.P8207424296057272970

`A326532(abs(1-n))%A006918(A000032(n))`
-/

namespace A326637.P8207424296057272970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326532 |1 - (n : ℤ)|.toNat) (A006918 (A000032 n).toNat)

end

end A326637.P8207424296057272970

/-!
# A326638: For any k, the cumulative sum a(1) + a(2) + a(3) + ... + a(k) shares at least three digits with a(k). Lexicographically first sequence of positive integers without duplicate terms having this property.

The programs for A326638, there is no canonical definition to state claims against.
-/

/-! ## A326638.P12146310188561987743

`A382277(n+2)-A382278(A382321(n+1))`
-/

namespace A326638.P12146310188561987743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382277 (n + 2 + 10) - A382278 (A382321 (n + 1)).toNat

end

end A326638.P12146310188561987743

/-!
# A326639: For any k, the cumulative sum a(1) + a(2) + a(3) + ... + a(k) shares at least four digits with a(k). Lexicographically first sequence of positive integers without duplicate terms having this property.

The programs for A326639, there is no canonical definition to state claims against.
-/

/-! ## A326639.P5031087444754141563

`A190016(n+4)+A056170(A008544(n))`
-/

namespace A326639.P5031087444754141563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (n + 4) + A056170 (A008544 n).toNat

end

end A326639.P5031087444754141563

/-!
# A326641: Number of integer partitions of n whose mean and geometric mean are both integers.

The programs for A326641, there is no canonical definition to state claims against.
-/

/-! ## A326641.P6759641046653876349

`A326642(n)+A277692(2*n+1)`
-/

namespace A326641.P6759641046653876349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326642 n + A277692 (2 * n + 1)

end

end A326641.P6759641046653876349

/-! ## A326641.P3301527449645456217

`∑{d}[n, A276430(A060524(A055646(#)))]`
-/

namespace A326641.P3301527449645456217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276430 (A060524 (A055646 d).toNat).toNat

end

end A326641.P3301527449645456217

/-! ## A326641.P2372714585882127037

`A317838(A343371(n))%A181485(n+1)`
-/

namespace A326641.P2372714585882127037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317838 (A343371 n).toNat) (A181485 (n + 1))

end

end A326641.P2372714585882127037

/-! ## A326641.P9655804935614961743

`A327780(n)+A324105(A077168(n))`
-/

namespace A326641.P9655804935614961743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327780 n + A324105 (A077168 n).toNat

end

end A326641.P9655804935614961743

/-! ## A326641.P6923866414822220839

`A350064(n+1)-A051064(A093629(n))`
-/

namespace A326641.P6923866414822220839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350064 (n + 1) - A051064 (A093629 n).toNat

end

end A326641.P6923866414822220839

/-!
# A326642: Number of non-constant integer partitions of n whose mean and geometric mean are both integers.

The programs for A326642, there is no canonical definition to state claims against.
-/

/-! ## A326642.P2293388764158555981

`A326641(n)-∑{d}[n, ceil(acot(#))]`
-/

namespace A326642.P2293388764158555981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 n - ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A326642.P2293388764158555981

/-! ## A326642.P18144607418937917113

`A326641(A028310(n))-∏{e}[n, #+1]`
-/

namespace A326642.P18144607418937917113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 (A028310 n).toNat - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A326642.P18144607418937917113

/-! ## A326642.P6514323774102181462

`A326641(n)-A183063(A004277(n))`
-/

namespace A326642.P6514323774102181462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 n - A183063 (A004277 n).toNat

end

end A326642.P6514323774102181462

/-! ## A326642.P12933823312941392843

`A326641(n)-A212957(A000124(n))`
-/

namespace A326642.P12933823312941392843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 n - A212957 (A000124 n).toNat

end

end A326642.P12933823312941392843

/-! ## A326642.P4639710260250806364

`A326641(A028310(n))-A000005(A028310(n))`
-/

namespace A326642.P4639710260250806364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 (A028310 n).toNat - A000005 (A028310 n).toNat

end

end A326642.P4639710260250806364

/-!
# A326643: Number of subsets of {1..n} whose mean and geometric mean are both integers.

The programs for A326643, there is no canonical definition to state claims against.
-/

/-! ## A326643.P8756152443590725273

`∑[A326644(n)]`
-/

namespace A326643.P8756152443590725273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326643.P8756152443590725273

/-!
# A326644: Number of subsets of {1..n} containing n whose mean and geometric mean are both integers.

The programs for A326644, there is no canonical definition to state claims against.
-/

/-! ## A326644.P13123816038103408122

`Δ[A326643(floor(acot(n)+n)-1)]`
-/

namespace A326644.P13123816038103408122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326643 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326644.P13123816038103408122

/-! ## A326644.P12177599874674567632

`Δ[A326643(round(sqrt(n²+1))-1)]`
-/

namespace A326644.P12177599874674567632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326643 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326644.P12177599874674567632

/-! ## A326644.P6110858154903208558

`-Δ[-A326643(A004273(n)-n)]`
-/

namespace A326644.P6110858154903208558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A326643 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A326644.P6110858154903208558

/-! ## A326644.P11673941142894362610

`A326643(n)-A326643(log2(A011782(n)))`
-/

namespace A326644.P11673941142894362610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326643 n - A326643 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A326644.P11673941142894362610

/-! ## A326644.P8293669357292448063

`A326643(n)-A326643(A028310(n)-1)`
-/

namespace A326644.P8293669357292448063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326643 n - A326643 (A028310 n - 1).toNat

end

end A326644.P8293669357292448063

/-! ## A326644.P9496574608744989320

`A326643(n)-A326643(A004273(n)-n)`
-/

namespace A326644.P9496574608744989320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326643 n - A326643 (A004273 n - (n : ℤ)).toNat

end

end A326644.P9496574608744989320

/-! ## A326644.P11828739616955605300

`A326643(n)-A326643(n-A057427(n))`
-/

namespace A326644.P11828739616955605300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326643 n - A326643 ((n : ℤ) - A057427 n).toNat

end

end A326644.P11828739616955605300

/-!
# A326645: Heinz numbers of integer partitions whose mean and geometric mean are both integers.

The programs for A326645, there is no canonical definition to state claims against.
-/

/-! ## A326645.P9323122056334618831

`∪[A246655(n+1), A326646(n+1)]`
-/

namespace A326645.P9323122056334618831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326645.P9323122056334618831

/-! ## A326645.P2059856111389678787

`∩[A316413(n+1), A326623(n+1)]`
-/

namespace A326645.P2059856111389678787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326645.P2059856111389678787

/-! ## A326645.P11099728078333368826

`∩[A326623(n+1), A360009(n+1)]`
-/

namespace A326645.P11099728078333368826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326645.P11099728078333368826

/-! ## A326645.P17530149061764615794

`∩[A326623(n+1), A391226(n+1)]`
-/

namespace A326645.P17530149061764615794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326645.P17530149061764615794

/-! ## A326645.P4762700754232757939

`∩[A316465(n+1), A326623(n+1)]`
-/

namespace A326645.P4762700754232757939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326645.P4762700754232757939

/-!
# A326646: Heinz numbers of non-constant integer partitions whose mean and geometric mean are both integers.

The programs for A326646, there is no canonical definition to state claims against.
-/

/-! ## A326646.P8309530961645925227

`∩[A316413(n+1), A326624(n+1)]`
-/

namespace A326646.P8309530961645925227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326646.P8309530961645925227

/-!
# A326647: Number of factorizations of n into factors > 1 with integer average and integer geometric mean.

The programs for A326647, there is no canonical definition to state claims against.
-/

/-! ## A326647.P4712487387321529438

`A255938(A326028(n+1))`
-/

namespace A326647.P4712487387321529438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 (A326028 (n + 1)).toNat

end

end A326647.P4712487387321529438

/-! ## A326647.P13641027036816807911

`A256478(A326028(n+1)²)`
-/

namespace A326647.P13641027036816807911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A326028 (n + 1) ^ 2).toNat

end

end A326647.P13641027036816807911

/-! ## A326647.P6946477804651184465

`A060681(A326028(n+1)+1)`
-/

namespace A326647.P6946477804651184465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A326028 (n + 1) + 1).toNat

end

end A326647.P6946477804651184465

/-! ## A326647.P18315278534781660319

`A123066(A326028(n+1)+1)`
-/

namespace A326647.P18315278534781660319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123066 (A326028 (n + 1) + 1).toNat

end

end A326647.P18315278534781660319

/-! ## A326647.P9272580726820284698

`A204187(A326028(n+1)+1)`
-/

namespace A326647.P9272580726820284698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204187 (A326028 (n + 1) + 1).toNat

end

end A326647.P9272580726820284698

/-! ## A326647.P13754798879212214216

`A299757(A326028(n+1)+1)`
-/

namespace A326647.P13754798879212214216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (A326028 (n + 1) + 1).toNat

end

end A326647.P13754798879212214216

/-! ## A326647.P3449485450994065562

`∑{d}[A090885(n+1), A087049(#)]`
-/

namespace A326647.P3449485450994065562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087049 d

end

end A326647.P3449485450994065562

/-! ## A326647.P17792939266708716182

`or(a(A124761(n)), A316782(n+1))` with `a(0)=0`
-/

namespace A326647.P17792939266708716182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (A124761 n).toNat) (A316782 (n + 1))

end

end A326647.P17792939266708716182

/-! ## A326647.P8754219432237711067

`∑{d}[∑{e}[n+1, #²], A029143(A051903(#))]`
-/

namespace A326647.P8754219432237711067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029143 (A051903 d).toNat

end

end A326647.P8754219432237711067

/-! ## A326647.P3661026407846619574

`or(A316782(n+1)%(n+1), A131532(n))`
-/

namespace A326647.P3661026407846619574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A316782 (n + 1)) (n + 1 : ℤ)) (A131532 n)

end

end A326647.P3661026407846619574

/-!
# A326648: Number of colored integer partitions of n using all colors of an initial interval of the color palette such that each block of part i with multiplicity j has a pattern of i*j distinct colors in increasing order.

The programs for A326648, there is no canonical definition to state claims against.
-/

/-! ## A326648.P15335994253281291858

`A254524(A151233(n)+1)`
-/

namespace A326648.P15335994253281291858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (A151233 n + 1).toNat

end

end A326648.P15335994253281291858

/-! ## A326648.P12001273988111742027

`A089576(A113715(n)-A089576(n))`
-/

namespace A326648.P12001273988111742027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (A113715 n - A089576 n).toNat

end

end A326648.P12001273988111742027

/-!
# A326649: Total number of colors in all colored integer partitions of n using all colors of an initial interval of the color palette such that each block of part i with multiplicity j has a pattern of i*j distinct colors in increasing order.

The programs for A326649, there is no canonical definition to state claims against.
-/

/-! ## A326649.P7768857830941476403

`∑[A220522(A076906(n))]`
-/

namespace A326649.P7768857830941476403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 (A076906 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326649.P7768857830941476403

/-! ## A326649.P11896030366122335484

`A233386(A149586(n+1))`
-/

namespace A326649.P11896030366122335484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233386 (A149586 (n + 1)).toNat

end

end A326649.P11896030366122335484

/-!
# A326650: Number of colored integer partitions using all colors of an n-set such that each block of part i with multiplicity j has a pattern of i*j distinct colors in increasing order.

The programs for A326650, there is no canonical definition to state claims against.
-/

/-! ## A326650.P5027852193902583869

`A255004(A181600(n²))`
-/

namespace A326650.P5027852193902583869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255004 (A181600 (n ^ 2)).toNat

end

end A326650.P5027852193902583869

/-!
# A326651: a(n) = Sum_{k>0} k * A326616(k,n).

The programs for A326651, there is no canonical definition to state claims against.
-/

/-! ## A326651.P5521842698588452604

`n*A022846(A097117(∑[n]))`
-/

namespace A326651.P5521842698588452604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022846 (A097117 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A326651.P5521842698588452604

/-!
# A326652: a(n) is the sum of each distinct digit in n, raised to the power of its number of appearances in n.

The programs for A326652, there is no canonical definition to state claims against.
-/

/-! ## A326652.P14817792965702781260

`A304037(A113581(n+1))`
-/

namespace A326652.P14817792965702781260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304037 (A113581 (n + 1)).toNat

end

end A326652.P14817792965702781260

/-! ## A326652.P13466729965533960245

`A217928(n+1)^A043284(n+1)`
-/

namespace A326652.P13466729965533960245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217928 (n + 1) : ℚ) ^ (A043284 (n + 1) : ℤ)

end

end A326652.P13466729965533960245

/-! ## A326652.P12234925705107992587

`A217928(n+1)^A083230(n+1)`
-/

namespace A326652.P12234925705107992587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217928 (n + 1) : ℚ) ^ (A083230 (n + 1) : ℤ)

end

end A326652.P12234925705107992587

/-! ## A326652.P16134299558598361099

`A061762(n+1)-A007954(A045918(n+1))`
-/

namespace A326652.P16134299558598361099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (n + 1) - A007954 (A045918 (n + 1)).toNat

end

end A326652.P16134299558598361099

/-! ## A326652.P11136585170378531139

`A061762(n+1)-A007954(A047842(n+1))`
-/

namespace A326652.P11136585170378531139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (n + 1) - A007954 (A047842 (n + 1)).toNat

end

end A326652.P11136585170378531139

/-! ## A326652.P2591207740819550709

`A007953(n+1)-A062329(A047813(n+1))`
-/

namespace A326652.P2591207740819550709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A062329 (A047813 (n + 1)).toNat

end

end A326652.P2591207740819550709

/-! ## A326652.P523274451680035893

`A106612(A045876(n+1))^A043284(n+1)`
-/

namespace A326652.P523274451680035893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106612 (A045876 (n + 1)).toNat : ℚ) ^ (A043284 (n + 1) : ℤ)

end

end A326652.P523274451680035893

/-! ## A326652.P11726979621657420175

`A007953(A106612(n+1))^A083230(n+1)`
-/

namespace A326652.P11726979621657420175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A106612 (n + 1)).toNat : ℚ) ^ (A083230 (n + 1) : ℤ)

end

end A326652.P11726979621657420175

/-! ## A326652.P1200856466031593695

`A007953(A180410(n+1))^A043284(n+1)`
-/

namespace A326652.P1200856466031593695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A180410 (n + 1)).toNat : ℚ) ^ (A043284 (n + 1) : ℤ)

end

end A326652.P1200856466031593695

/-! ## A326652.P14481647969432607999

`A106612(A045876(n+1))^A083230(n+1)`
-/

namespace A326652.P14481647969432607999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106612 (A045876 (n + 1)).toNat : ℚ) ^ (A083230 (n + 1) : ℤ)

end

end A326652.P14481647969432607999

/-!
# A326654: Number of colored integer partitions of n using all colors of an initial interval of the color palette such that each block of part i with multiplicity j has a pattern of i*j colors in (weakly) increasing order.

The programs for A326654, there is no canonical definition to state claims against.
-/

/-! ## A326654.P2564988650468115975

`A392462(A274174(n))+A340413(n)`
-/

namespace A326654.P2564988650468115975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392462 (A274174 n).toNat + A340413 n

end

end A326654.P2564988650468115975

/-!
# A326655: Numbers k such that 3*4^k+1 is prime.

The programs for A326655, there is no canonical definition to state claims against.
-/

/-! ## A326655.P4151098913200783070

`record[A326139(A002253(n+1))]`
-/

namespace A326655.P4151098913200783070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A002253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326655.P4151098913200783070

/-! ## A326655.P4812234575439793815

`eq[3, A263046(2*n)]`
-/

namespace A326655.P4812234575439793815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326655.P4812234575439793815

/-! ## A326655.P705073288804734516

`eq[2*n, A179013(2*(n+1))]`
-/

namespace A326655.P705073288804734516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179013 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326655.P705073288804734516

/-! ## A326655.P4832638514972667614

`record[A142150(A002253(n+2))]`
-/

namespace A326655.P4832638514972667614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A002253 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326655.P4832638514972667614

/-! ## A326655.P12026655198576969694

`record[A057979(A002253(n+1)+1)]`
-/

namespace A326655.P12026655198576969694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A002253 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326655.P12026655198576969694

/-!
# A326656: Total number of colors in all colored integer partitions of n using all colors of an initial interval of the color palette such that each block of part i with multiplicity j has a pattern of i*j colors in (weakly) increasing order.

The programs for A326656, there is no canonical definition to state claims against.
-/

/-! ## A326656.P8528342003267072714

`A002264(A015128(n)*A179264(n+1))`
-/

namespace A326656.P8528342003267072714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A015128 n * A179264 (n + 1)).toNat

end

end A326656.P8528342003267072714

/-!
# A326657: a(n) = 4*floor(n/2) + ceiling((n-1)^2/2).

The programs for A326657, the canonical program `A326657.P17472403926591910786` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326657 has offset 0).

The definition of A326657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*floor(n/2)+ceil((n-1)²/2)` (program `A326657.P17472403926591910786`, by `A326657.P17472403926591910786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326657.P16897170434017475103

`ogf((1-2x+5x^2-2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A326657.P16897170434017475103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 5, -2] [1, -2, 0, 2, -1] n

end

end A326657.P16897170434017475103

namespace A326657

/-- `ogf((1-2x+5x^2-2x^3)/(1-2x+2x^3-x^4))` -/
def P16897170434017475103.Spec : Prop :=
  ∀ n, P16897170434017475103.a n = A326657 n

end A326657

/-! ## A326657.P17472403926591910786

`4*floor(n/2)+ceil((n-1)²/2)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A326657

/-- `4*floor(n/2)+ceil((n-1)²/2)` -/
def P17472403926591910786.Spec : Prop :=
  ∀ n, P17472403926591910786.a n = A326657 n

theorem P17472403926591910786.correct : P17472403926591910786.Spec := by
  intro n
  simp only [A326657]

end A326657

/-! ## A326657.P208651208638366575

`xor(1, ∑[or(1, n)]-1)`
-/

namespace A326657.P208651208638366575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A326657.P208651208638366575

namespace A326657

/-- `xor(1, ∑[or(1, n)]-1)` -/
def P208651208638366575.Spec : Prop :=
  ∀ n, P208651208638366575.a n = A326657 n

end A326657

/-! ## A326657.P15663684861783113440

`xor(1, floor(n²/2)+n)`
-/

namespace A326657.P15663684861783113440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ))

end

end A326657.P15663684861783113440

namespace A326657

/-- `xor(1, floor(n²/2)+n)` -/
def P15663684861783113440.Spec : Prop :=
  ∀ n, P15663684861783113440.a n = A326657 n

end A326657

/-! ## A326657.P17839344343260788724

`2*n+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A326657.P17839344343260788724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * n + a (n - 2)

end

end A326657.P17839344343260788724

namespace A326657

/-- `2*n+a(n-2)` -/
def P17839344343260788724.Spec : Prop :=
  ∀ n, (P17839344343260788724.a n : ℤ) = A326657 n

end A326657

/-! ## A326657.P1076630961207129140

`a(n-2)+n+n` with `a(0)=1, a(1)=0`
-/

namespace A326657.P1076630961207129140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + n + n

end

end A326657.P1076630961207129140

namespace A326657

/-- `a(n-2)+n+n` -/
def P1076630961207129140.Spec : Prop :=
  ∀ n, (P1076630961207129140.a n : ℤ) = A326657 n

end A326657

/-! ## A326657.P3895581851774449390

`∑[2*n-a(n-1)]` with `a(0)=1, a(1)=-1`
-/

namespace A326657.P3895581851774449390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326657.P3895581851774449390

namespace A326657

/-- `∑[2*n-a(n-1)]` -/
def P3895581851774449390.Spec : Prop :=
  ∀ n, P3895581851774449390.a n = A326657 n

end A326657

/-! ## A326657.P17237514329900199914

`∑[n-(a(n-1)-n)]` with `a(0)=1, a(1)=-1`
-/

namespace A326657.P17237514329900199914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (n : ℤ) - (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326657.P17237514329900199914

namespace A326657

/-- `∑[n-(a(n-1)-n)]` -/
def P17237514329900199914.Spec : Prop :=
  ∀ n, P17237514329900199914.a n = A326657 n

end A326657

/-! ## A326657.P13446610897912257015

`3*n-(n-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A326657.P13446610897912257015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a (n - 2))

end

end A326657.P13446610897912257015

namespace A326657

/-- `3*n-(n-a(n-2))` -/
def P13446610897912257015.Spec : Prop :=
  ∀ n, P13446610897912257015.a n = A326657 n

end A326657

/-! ## A326657.P9298941319595736313

`n-1-(a(n-1)-n²)` with `a(0)=1`
-/

namespace A326657.P9298941319595736313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 1 - (a (n - 1) - (n ^ 2 : ℤ))

end

end A326657.P9298941319595736313

namespace A326657

/-- `n-1-(a(n-1)-n²)` -/
def P9298941319595736313.Spec : Prop :=
  ∀ n, P9298941319595736313.a n = A326657 n

end A326657

/-!
# A326658: a(n) = 6*floor(n/2) + ceiling((n-1)^2/2).

The programs for A326658, the canonical program `A326658.P796226296567597610` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326658 has offset 0).

The definition of A326658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*floor(n/2)+ceil((n-1)²/2)` (program `A326658.P796226296567597610`, by `A326658.P796226296567597610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326658.P2900936845261794311

`ogf((1-2x+7x^2-4x^3)/(1-2x+2x^3-x^4))`
-/

namespace A326658.P2900936845261794311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 7, -4] [1, -2, 0, 2, -1] n

end

end A326658.P2900936845261794311

namespace A326658

/-- `ogf((1-2x+7x^2-4x^3)/(1-2x+2x^3-x^4))` -/
def P2900936845261794311.Spec : Prop :=
  ∀ n, P2900936845261794311.a n = A326658 n

end A326658

/-! ## A326658.P796226296567597610

`6*floor(n/2)+ceil((n-1)²/2)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A326658

/-- `6*floor(n/2)+ceil((n-1)²/2)` -/
def P796226296567597610.Spec : Prop :=
  ∀ n, P796226296567597610.a n = A326658 n

theorem P796226296567597610.correct : P796226296567597610.Spec := by
  intro n
  simp only [A326658]

end A326658

/-! ## A326658.P13468392214930755070

`∑[a(n-2)+2]` with `a(0)=1, a(1)=-1, a(2)=7`
-/

namespace A326658.P13468392214930755070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 7] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326658.P13468392214930755070

namespace A326658

/-- `∑[a(n-2)+2]` -/
def P13468392214930755070.Spec : Prop :=
  ∀ n, P13468392214930755070.a n = A326658 n

end A326658

/-! ## A326658.P12984899067175921802

`a(n-4)+4*n` with `a(0)=1, a(1)=0, a(2)=7, a(3)=8`
-/

namespace A326658.P12984899067175921802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 7, 8] fun n a =>
  a (n - 4) + 4 * n

end

end A326658.P12984899067175921802

namespace A326658

/-- `a(n-4)+4*n` -/
def P12984899067175921802.Spec : Prop :=
  ∀ n, (P12984899067175921802.a n : ℤ) = A326658 n

end A326658

/-! ## A326658.P14702867415436558987

`a(n-2)+n+2+n` with `a(0)=1, a(1)=0`
-/

namespace A326658.P14702867415436558987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (n + 2) + n

end

end A326658.P14702867415436558987

namespace A326658

/-- `a(n-2)+n+2+n` -/
def P14702867415436558987.Spec : Prop :=
  ∀ n, (P14702867415436558987.a n : ℤ) = A326658 n

end A326658

/-! ## A326658.P10649898428508120074

`and(∑[or(1, n)]+n, -4^(n%2))`
-/

namespace A326658.P10649898428508120074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) (-(4 ^ (n % 2) : ℤ))

end

end A326658.P10649898428508120074

namespace A326658

/-- `and(∑[or(1, n)]+n, -4^(n%2))` -/
def P10649898428508120074.Spec : Prop :=
  ∀ n, P10649898428508120074.a n = A326658 n

end A326658

/-! ## A326658.P11466438973827076044

`xor(A010684(n), A116940(n))`
-/

namespace A326658.P11466438973827076044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A116940 n)

end

end A326658.P11466438973827076044

namespace A326658

/-- `xor(A010684(n), A116940(n))` -/
def P11466438973827076044.Spec : Prop :=
  ∀ n, P11466438973827076044.a n = A326658 n

end A326658

/-! ## A326658.P14041516460002889389

`xor(A000034(n), A183575(n+1))`
-/

namespace A326658.P14041516460002889389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 n) (A183575 (n + 1))

end

end A326658.P14041516460002889389

namespace A326658

/-- `xor(A000034(n), A183575(n+1))` -/
def P14041516460002889389.Spec : Prop :=
  ∀ n, P14041516460002889389.a n = A326658 n

end A326658

/-! ## A326658.P14809126674986421969

`xor(A010674(n), A047838(n+2))`
-/

namespace A326658.P14809126674986421969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A047838 (n + 2))

end

end A326658.P14809126674986421969

namespace A326658

/-- `xor(A010674(n), A047838(n+2))` -/
def P14809126674986421969.Spec : Prop :=
  ∀ n, P14809126674986421969.a n = A326658 n

end A326658

/-!
# A326659: T(n,k) = [0<k<=n] * n*(T(n-1,k-1)+T(n-1,k)) + [k=0 and n>=0]; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A326659, the canonical program `A326659.P9880251924717591820` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326659 has offset 0).

The definition of A326659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326659.P9880251924717591820

`T(n-1,k)+(T(n-1,k-1)+T(n-1,k+1)+2*T(n-1,k))*col(n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A326659

/-- `T(n-1,k)+(T(n-1,k-1)+T(n-1,k+1)+2*T(n-1,k))*col(n)` -/
def P9880251924717591820.Spec : Prop :=
  ∀ n, (P9880251924717591820.a n : ℤ) = A326659 n

theorem P9880251924717591820.correct : P9880251924717591820.Spec := by
  intro n
  simp only [A326659]

end A326659

/-! ## A326659.P12025506760379576635

`A233543(n)*A271705(n)`
-/

namespace A326659.P12025506760379576635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A271705 n

end

end A326659.P12025506760379576635

namespace A326659

/-- `A233543(n)*A271705(n)` -/
def P12025506760379576635.Spec : Prop :=
  ∀ n, P12025506760379576635.a n = A326659 n

end A326659

/-! ## A326659.P13109035607655778438

`A002262(n)!*A271705(n)`
-/

namespace A326659.P13109035607655778438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A271705 n

end

end A326659.P13109035607655778438

namespace A326659

/-- `A002262(n)!*A271705(n)` -/
def P13109035607655778438.Spec : Prop :=
  ∀ n, P13109035607655778438.a n = A326659 n

end A326659

/-! ## A326659.P7066940608298422892

`log2(A059268(n))!*A271705(n)`
-/

namespace A326659.P7066940608298422892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℤ) * A271705 n

end

end A326659.P7066940608298422892

namespace A326659

/-- `log2(A059268(n))!*A271705(n)` -/
def P7066940608298422892.Spec : Prop :=
  ∀ n, P7066940608298422892.a n = A326659 n

end A326659

/-! ## A326659.P4777174556612966941

`A021009(A112367(n))*A271705(n)`
-/

namespace A326659.P4777174556612966941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A112367 n).toNat * A271705 n

end

end A326659.P4777174556612966941

namespace A326659

/-- `A021009(A112367(n))*A271705(n)` -/
def P4777174556612966941.Spec : Prop :=
  ∀ n, P4777174556612966941.a n = A326659 n

end A326659

/-! ## A326659.P15359862910793535014

`A104150(A002260(n+1))*A271705(n)`
-/

namespace A326659.P15359862910793535014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A002260 (n + 1)).toNat * A271705 n

end

end A326659.P15359862910793535014

namespace A326659

/-- `A104150(A002260(n+1))*A271705(n)` -/
def P15359862910793535014.Spec : Prop :=
  ∀ n, P15359862910793535014.a n = A326659 n

end A326659

/-! ## A326659.P10945548532094824059

`A059114(n)/A059110(n)*A271705(n)`
-/

namespace A326659.P10945548532094824059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (A059110 n : ℚ) * (A271705 n : ℚ)

end

end A326659.P10945548532094824059

namespace A326659

/-- `A059114(n)/A059110(n)*A271705(n)` -/
def P10945548532094824059.Spec : Prop :=
  ∀ n, P10945548532094824059.a n = (A326659 n : ℚ)

end A326659

/-! ## A326659.P10262932392285152865

`A112624(A059268(n))*A271705(n)`
-/

namespace A326659.P10262932392285152865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A059268 n).toNat * A271705 n

end

end A326659.P10262932392285152865

namespace A326659

/-- `A112624(A059268(n))*A271705(n)` -/
def P10262932392285152865.Spec : Prop :=
  ∀ n, P10262932392285152865.a n = A326659 n

end A326659

/-!
# A326660: Number of n-bead asymmetric bracelets with exactly 3 different colored beads.

The programs for A326660, the canonical program `A326660.P15065931834303715620` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326660 has offset 1).

The definition of A326660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326660.P15065931834303715620

`A056288(n+1)-A056349(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A326660

/-- `A056288(n+1)-A056349(n+1)` -/
def P15065931834303715620.Spec : Prop :=
  ∀ n, P15065931834303715620.a n = A326660 (n + 1)

theorem P15065931834303715620.correct : P15065931834303715620.Spec := by
  intro n
  simp only [A326660, Nat.add_sub_cancel]

end A326660

/-! ## A326660.P1679329084204371711

`A056349(n+1)-A056499(n+1)`
-/

namespace A326660.P1679329084204371711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056349 (n + 1) - A056499 (n + 1)

end

end A326660.P1679329084204371711

namespace A326660

/-- `A056349(n+1)-A056499(n+1)` -/
def P1679329084204371711.Spec : Prop :=
  ∀ n, P1679329084204371711.a n = A326660 (n + 1)

end A326660

/-! ## A326660.P1284234723814761460

`(A056288(n+1)-A056499(n+1))/2`
-/

namespace A326660.P1284234723814761460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056288 (n + 1) - A056499 (n + 1) : ℚ) / 2

end

end A326660.P1284234723814761460

namespace A326660

/-- `(A056288(n+1)-A056499(n+1))/2` -/
def P1284234723814761460.Spec : Prop :=
  ∀ n, P1284234723814761460.a n = (A326660 (n + 1) : ℚ)

end A326660

/-! ## A326660.P7015632289634204581

`∑{d}[n+1, A008683(#)*A305542((n+1)/#)]`
-/

namespace A326660.P7015632289634204581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A305542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326660.P7015632289634204581

namespace A326660

/-- `∑{d}[n+1, A008683(#)*A305542((n+1)/#)]` -/
def P7015632289634204581.Spec : Prop :=
  ∀ n, P7015632289634204581.a n = A326660 (n + 1)

end A326660

/-! ## A326660.P5782203636074457964

`A309651(∑[n]+3)`
-/

namespace A326660.P5782203636074457964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A326660.P5782203636074457964

namespace A326660

/-- `A309651(∑[n]+3)` -/
def P5782203636074457964.Spec : Prop :=
  ∀ n, P5782203636074457964.a n = A326660 (n + 1)

end A326660

/-! ## A326660.P1059582087352919545

`A309651(A152950(n+1))%A124292(n+1)`
-/

namespace A326660.P1059582087352919545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309651 (A152950 (n + 1)).toNat) (A124292 (n + 1))

end

end A326660.P1059582087352919545

namespace A326660

/-- `A309651(A152950(n+1))%A124292(n+1)` -/
def P1059582087352919545.Spec : Prop :=
  ∀ n, P1059582087352919545.a n = A326660 (n + 1)

end A326660

/-!
# A326661: Rectangular array in 3 columns that solve the complementary equation c(n) = a(n) + b(3n), where a(1) = 1; see Comments.

The programs for A326661, there is no canonical definition to state claims against.
-/

/-! ## A326661.P8488934367967922228

`xor(A025455(A121596(n)), A326662(n+1))`
-/

namespace A326661.P8488934367967922228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025455 (A121596 n).toNat) (A326662 (n + 1))

end

end A326661.P8488934367967922228

/-! ## A326661.P18294870968098251467

`xor(A102683(A126087(n)), A326662(n+1))`
-/

namespace A326661.P18294870968098251467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A126087 n).toNat) (A326662 (n + 1))

end

end A326661.P18294870968098251467

/-!
# A326662: Rectangular array in 3 columns that solve the complementary equation c(n) = a(2n) + b(2n), where a(1) = 1; see Comments.

The programs for A326662, there is no canonical definition to state claims against.
-/

/-! ## A326662.P3492166873038299349

`xor(A025455(A121596(n)), A326661(n+1))`
-/

namespace A326662.P3492166873038299349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025455 (A121596 n).toNat) (A326661 (n + 1))

end

end A326662.P3492166873038299349

/-! ## A326662.P2184146355190341313

`xor(A102683(A126087(n)), A326661(n+1))`
-/

namespace A326662.P2184146355190341313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A126087 n).toNat) (A326661 (n + 1))

end

end A326662.P2184146355190341313

/-!
# A326663: Column 3 of the array at A309157; see Comments.

The programs for A326663, the canonical program `A326663.P17721520339589115185` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326663 has offset 1).

The definition of A326663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326663.P17721520339589115185

`7*n+6-A014578(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A326663

/-- `7*n+6-A014578(n+1)` -/
def P17721520339589115185.Spec : Prop :=
  ∀ n, P17721520339589115185.a n = A326663 (n + 1)

theorem P17721520339589115185.correct : P17721520339589115185.Spec := by
  intro n
  simp only [A326663, Nat.add_sub_cancel]

end A326663

/-! ## A326663.P7682684955993378540

`A182581(n+1)+A017041(n)`
-/

namespace A326663.P7682684955993378540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1) + A017041 n

end

end A326663.P7682684955993378540

namespace A326663

/-- `A182581(n+1)+A017041(n)` -/
def P7682684955993378540.Spec : Prop :=
  ∀ n, P7682684955993378540.a n = A326663 (n + 1)

end A326663

/-! ## A326663.P2187542059325012922

`A056832(A300840(n+1))+A017029(n)`
-/

namespace A326663.P2187542059325012922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A300840 (n + 1)).toNat + A017029 n

end

end A326663.P2187542059325012922

namespace A326663

/-- `A056832(A300840(n+1))+A017029(n)` -/
def P2187542059325012922.Spec : Prop :=
  ∀ n, P2187542059325012922.a n = A326663 (n + 1)

end A326663

/-! ## A326663.P14747301476667009083

`A063725(A318666(n+1))+A017041(n)`
-/

namespace A326663.P14747301476667009083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A318666 (n + 1)).toNat + A017041 n

end

end A326663.P14747301476667009083

namespace A326663

/-- `A063725(A318666(n+1))+A017041(n)` -/
def P14747301476667009083.Spec : Prop :=
  ∀ n, P14747301476667009083.a n = A326663 (n + 1)

end A326663

/-! ## A326663.P9249288290338715398

`A017053(n)-A035263(A064989(n+1))`
-/

namespace A326663.P9249288290338715398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A035263 (A064989 (n + 1)).toNat

end

end A326663.P9249288290338715398

namespace A326663

/-- `A017053(n)-A035263(A064989(n+1))` -/
def P9249288290338715398.Spec : Prop :=
  ∀ n, P9249288290338715398.a n = A326663 (n + 1)

end A326663

/-! ## A326663.P3205851848703805507

`A008589(n+1)-gcd(2, val(n+1, 3))`
-/

namespace A326663.P3205851848703805507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1) - (Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 3) : ℤ)

end

end A326663.P3205851848703805507

namespace A326663

/-- `A008589(n+1)-gcd(2, val(n+1, 3))` -/
def P3205851848703805507.Spec : Prop :=
  ∀ n, P3205851848703805507.a n = A326663 (n + 1)

end A326663

/-! ## A326663.P4965151890988381391

`A008458(n+1)-A014578(n+1)+n`
-/

namespace A326663.P4965151890988381391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1) - A014578 (n + 1) + (n : ℤ)

end

end A326663.P4965151890988381391

namespace A326663

/-- `A008458(n+1)-A014578(n+1)+n` -/
def P4965151890988381391.Spec : Prop :=
  ∀ n, P4965151890988381391.a n = A326663 (n + 1)

end A326663

/-! ## A326663.P8747617509849327322

`A008458(n+1)-A163532(n+1)²+n`
-/

namespace A326663.P8747617509849327322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1) - A163532 (n + 1) ^ 2 + (n : ℤ)

end

end A326663.P8747617509849327322

namespace A326663

/-- `A008458(n+1)-A163532(n+1)²+n` -/
def P8747617509849327322.Spec : Prop :=
  ∀ n, P8747617509849327322.a n = A326663 (n + 1)

end A326663

/-! ## A326663.P11345320836857371525

`A017053(n)-A035263(A061898(n+1))`
-/

namespace A326663.P11345320836857371525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A035263 (A061898 (n + 1)).toNat

end

end A326663.P11345320836857371525

namespace A326663

/-- `A017053(n)-A035263(A061898(n+1))` -/
def P11345320836857371525.Spec : Prop :=
  ∀ n, P11345320836857371525.a n = A326663 (n + 1)

end A326663

/-! ## A326663.P9427470172827468588

`A017053(n)-A035263(A064614(n+1))`
-/

namespace A326663.P9427470172827468588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A035263 (A064614 (n + 1)).toNat

end

end A326663.P9427470172827468588

namespace A326663

/-- `A017053(n)-A035263(A064614(n+1))` -/
def P9427470172827468588.Spec : Prop :=
  ∀ n, P9427470172827468588.a n = A326663 (n + 1)

end A326663

/-!
# A326664: Column 3 of the array at A326661 see Comments.

The programs for A326664, the canonical program `A326664.P7135180711450705937` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326664 has offset 1).

The definition of A326664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326664.P7135180711450705937

`or(Δ[A054893(n)], 9*n+7)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A326664

/-- `or(Δ[A054893(n)], 9*n+7)` -/
def P7135180711450705937.Spec : Prop :=
  ∀ n, P7135180711450705937.a n = A326664 (n + 1)

theorem P7135180711450705937.correct : P7135180711450705937.Spec := by
  intro n
  simp only [A326664, Nat.add_sub_cancel]

end A326664

/-! ## A326664.P2852062241394624243

`9*(n+1)-gcd(2, Δ[A230631(n)])`
-/

namespace A326664.P2852062241394624243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - (Int.gcd 2 (f1 (n + 1) - f1 n) : ℤ)

end

end A326664.P2852062241394624243

namespace A326664

/-- `9*(n+1)-gcd(2, Δ[A230631(n)])` -/
def P2852062241394624243.Spec : Prop :=
  ∀ n, P2852062241394624243.a n = A326664 (n + 1)

end A326664

/-! ## A326664.P216776588078715711

`or(A000073(val(n+1, 2)), 9*n+7)`
-/

namespace A326664.P216776588078715711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000073 (SequenceMachineLib.valuation (n + 1) 2)) (9 * n + 7 : ℤ)

end

end A326664.P216776588078715711

namespace A326664

/-- `or(A000073(val(n+1, 2)), 9*n+7)` -/
def P216776588078715711.Spec : Prop :=
  ∀ n, P216776588078715711.a n = A326664 (n + 1)

end A326664

/-! ## A326664.P12068231972109714001

`A040001(A115364(n+1))+A017233(n)`
-/

namespace A326664.P12068231972109714001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A115364 (n + 1)).toNat + A017233 n

end

end A326664.P12068231972109714001

namespace A326664

/-- `A040001(A115364(n+1))+A017233(n)` -/
def P12068231972109714001.Spec : Prop :=
  ∀ n, P12068231972109714001.a n = A326664 (n + 1)

end A326664

/-! ## A326664.P13302522326392080458

`or(A004526(A007814(n+1)), A017245(n))`
-/

namespace A326664.P13302522326392080458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 (A007814 (n + 1)).toNat) (A017245 n)

end

end A326664.P13302522326392080458

namespace A326664

/-- `or(A004526(A007814(n+1)), A017245(n))` -/
def P13302522326392080458.Spec : Prop :=
  ∀ n, P13302522326392080458.a n = A326664 (n + 1)

end A326664

/-! ## A326664.P10678844966454459793

`A016789(A016789(n))-A166486(A053165(n+1))`
-/

namespace A326664.P10678844966454459793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A016789 n).toNat - A166486 (A053165 (n + 1)).toNat

end

end A326664.P10678844966454459793

namespace A326664

/-- `A016789(A016789(n))-A166486(A053165(n+1))` -/
def P10678844966454459793.Spec : Prop :=
  ∀ n, P10678844966454459793.a n = A326664 (n + 1)

end A326664

/-! ## A326664.P6856147576681910323

`or(A008611(A124388(n)), A235127(n+1))`
-/

namespace A326664.P6856147576681910323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 (A124388 n).toNat) (A235127 (n + 1))

end

end A326664.P6856147576681910323

namespace A326664

/-- `or(A008611(A124388(n)), A235127(n+1))` -/
def P6856147576681910323.Spec : Prop :=
  ∀ n, P6856147576681910323.a n = A326664 (n + 1)

end A326664

/-! ## A326664.P14644530721684000106

`9*(n+1)-A260451((n+1)²)`
-/

namespace A326664.P14644530721684000106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - A260451 ((n + 1) ^ 2)

end

end A326664.P14644530721684000106

namespace A326664

/-- `9*(n+1)-A260451((n+1)²)` -/
def P14644530721684000106.Spec : Prop :=
  ∀ n, P14644530721684000106.a n = A326664 (n + 1)

end A326664

/-! ## A326664.P17121795679092560056

`A260452((n+1)²)+A017221(n)`
-/

namespace A326664.P17121795679092560056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 ((n + 1) ^ 2) + A017221 n

end

end A326664.P17121795679092560056

namespace A326664

/-- `A260452((n+1)²)+A017221(n)` -/
def P17121795679092560056.Spec : Prop :=
  ∀ n, P17121795679092560056.a n = A326664 (n + 1)

end A326664

/-!
# A326665: Solution sequence (a(n)) of the complementary equation a(n) = b(n-1) + b(a(n-1)), for n >= 1, with a(0) = 1.

The programs for A326665, there is no canonical definition to state claims against.
-/

/-! ## A326665.P10927141664485126680

`∑[comp[∑[comp[6*n-1]+n]]+n]`
-/

namespace A326665.P10927141664485126680
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326665.P10927141664485126680

/-! ## A326665.P2577225482927300119

`a(n-1)+A008620(A123578(4*n+3))+A004277(n)` with `a(0)=1`
-/

namespace A326665.P2577225482927300119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008620 (A123578 (4 * n + 3)).toNat + A004277 n)

end

end A326665.P2577225482927300119

/-! ## A326665.P5801313037179221832

`∑[lt[A127248(2*n), A101980(n)]]-1`
-/

namespace A326665.P5801313037179221832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127248 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101980 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A326665.P5801313037179221832

/-! ## A326665.P16157244363455311658

`∑[A000196(n)]+A352745(2*n+1)²`
-/

namespace A326665.P16157244363455311658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A352745 (2 * n + 1) ^ 2

end

end A326665.P16157244363455311658

/-! ## A326665.P13420113130551239868

`eq[0, A230696(n)]+a(n-1)` with `a(0)=1`
-/

namespace A326665.P13420113130551239868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230696 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + a (n - 1)

end

end A326665.P13420113130551239868

/-!
# A326666: Numbers k such that there exists a factorization of k into factors > 1 whose mean is not an integer but whose geometric mean is an integer.

The programs for A326666, there is no canonical definition to state claims against.
-/

/-! ## A326666.P1033890705136483063

`record[A038608(A144548(n+4))]`
-/

namespace A326666.P1033890705136483063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A144548 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326666.P1033890705136483063

/-! ## A326666.P11553923320288174190

`∩[A076770(n+1), A144548(n+1)]`
-/

namespace A326666.P11553923320288174190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326666.P11553923320288174190

/-! ## A326666.P17872737368765299960

`∩[A024995(n+2), A144548(n+1)]`
-/

namespace A326666.P17872737368765299960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024995 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326666.P17872737368765299960

/-! ## A326666.P3139850222115814236

`∩[A002760(n+1), A334936(n+1)]`
-/

namespace A326666.P3139850222115814236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326666.P3139850222115814236

/-! ## A326666.P3498121813050578806

`∩[A144548(n+1), A334936(n+1)]`
-/

namespace A326666.P3498121813050578806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326666.P3498121813050578806

/-!
# A326667: Number of factorizations of 2^n into factors > 1 with integer average.

The programs for A326667, there is no canonical definition to state claims against.
-/

/-! ## A326667.P12796333588084190571

`A326622(2^(n+1))`
-/

namespace A326667.P12796333588084190571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (2 ^ (n + 1))

end

end A326667.P12796333588084190571

/-! ## A326667.P17328501100490199048

`record[A326622(A053211(n+1))]`
-/

namespace A326667.P17328501100490199048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A053211 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326667.P17328501100490199048

/-! ## A326667.P2027502976611710359

`record[A326622(A099627(n+1))]`
-/

namespace A326667.P2027502976611710359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A099627 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326667.P2027502976611710359

/-! ## A326667.P12455778671910298447

`record[A326622(A125624(n+1))]`
-/

namespace A326667.P12455778671910298447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A125624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326667.P12455778671910298447

/-! ## A326667.P3313294059821831101

`record[A326622(A118462(n+2))]`
-/

namespace A326667.P3313294059821831101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A118462 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326667.P3313294059821831101

/-!
# A326668: Number of strict factorizations of 2^n into factors > 1 with integer average.

The programs for A326668, there is no canonical definition to state claims against.
-/

/-! ## A326668.P166430514085313148

`A081604(A108411(n))+A034397(n+1)`
-/

namespace A326668.P166430514085313148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A108411 n).toNat + A034397 (n + 1)

end

end A326668.P166430514085313148

/-!
# A326669: Numbers k such that the average position of the ones in the binary expansion of k is an integer.

The programs for A326669, there is no canonical definition to state claims against.
-/

/-! ## A326669.P5587768749391544156

`eq[1, A326700(n+1)]+1`
-/

namespace A326669.P5587768749391544156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326669.P5587768749391544156

/-! ## A326669.P7555496609284080986

`∪[2^n, A282107(n+1)]`
-/

namespace A326669.P7555496609284080986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326669.P7555496609284080986

/-! ## A326669.P6967896874367214401

`lt[A326700(2*(n+1)), 2]+1`
-/

namespace A326669.P6967896874367214401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A326669.P6967896874367214401

/-! ## A326669.P18358477372946108056

`∪[A282107(n+1), A000079(n)]`
-/

namespace A326669.P18358477372946108056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326669.P18358477372946108056

/-! ## A326669.P6224400789369503120

`∪[A282107(n+1), A008860(n)]`
-/

namespace A326669.P6224400789369503120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326669.P6224400789369503120

/-! ## A326669.P10244582600137688012

`∪[A282107(n+1), A008861(n)]`
-/

namespace A326669.P10244582600137688012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326669.P10244582600137688012

/-! ## A326669.P7754558384156382433

`∪[A282107(n+1), A008862(n)]`
-/

namespace A326669.P7754558384156382433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326669.P7754558384156382433

/-! ## A326669.P4865294573928865321

`∪[A282107(n+1), A008863(n)]`
-/

namespace A326669.P4865294573928865321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326669.P4865294573928865321

/-! ## A326669.P7523823781246950990

`∪[A282107(n+1), A029746(n)]`
-/

namespace A326669.P7523823781246950990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326669.P7523823781246950990

/-! ## A326669.P8181288028190327342

`∪[A282107(n+1), A029749(n)]`
-/

namespace A326669.P8181288028190327342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326669.P8181288028190327342

/-!
# A326670: Number of strict integer partitions y of n such that the average of the set {2^(s - 1): s in y} is an integer.

The programs for A326670, there is no canonical definition to state claims against.
-/

/-! ## A326670.P11269822432846618473

`A232753(A232753(A155046(n+1)))`
-/

namespace A326670.P11269822432846618473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A232753 (A155046 (n + 1)).toNat).toNat

end

end A326670.P11269822432846618473

/-! ## A326670.P12622640504338089124

`A054725(or(A126869(n), A208355(n)))`
-/

namespace A326670.P12622640504338089124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (Int.lor (A126869 n) (A208355 n)).toNat

end

end A326670.P12622640504338089124

/-! ## A326670.P2383822732969558051

`A235402(A336973(n+1)+A080513(n))`
-/

namespace A326670.P2383822732969558051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A336973 (n + 1) + A080513 n).toNat

end

end A326670.P2383822732969558051

/-! ## A326670.P1406058813126717317

`A226046(A303427(n)+A184119(n+1))`
-/

namespace A326670.P1406058813126717317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A303427 n + A184119 (n + 1)).toNat

end

end A326670.P1406058813126717317

/-!
# A326672: The positions of ones in the binary expansion of n have integer geometric mean.

The programs for A326672, there is no canonical definition to state claims against.
-/

/-! ## A326672.P10654342829489129648

`eq[0, A293377(A323889(n²))]`
-/

namespace A326672.P10654342829489129648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 (A323889 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326672.P10654342829489129648

/-! ## A326672.P11129089945243860384

`eq[A000120(n), A065038(A125644(n))]`
-/

namespace A326672.P11129089945243860384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065038 (A125644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326672.P11129089945243860384

/-! ## A326672.P1566076591877136938

`eq[2, A025690(A004011(n))]`
-/

namespace A326672.P1566076591877136938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025690 (A004011 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326672.P1566076591877136938

/-! ## A326672.P15946634746813927198

`∩[A371477(n+1), A115813(n)]`
-/

namespace A326672.P15946634746813927198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326672.P15946634746813927198

/-! ## A326672.P7682961994265985389

`∩[A035258(n+1), A371477(n+1)]`
-/

namespace A326672.P7682961994265985389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326672.P7682961994265985389

/-!
# A326673: The positions of ones in the reversed binary expansion of n have integer geometric mean.

The programs for A326673, there is no canonical definition to state claims against.
-/

/-! ## A326673.P5986528076059612146

`record[A290104(A303845(n+1)²)]`
-/

namespace A326673.P5986528076059612146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A303845 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326673.P5986528076059612146

/-! ## A326673.P12512220578080692597

`eq[A030101(n), A158416(round(n²/5))]`
-/

namespace A326673.P12512220578080692597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326673.P12512220578080692597

/-! ## A326673.P3686326447992135640

`record[and(A303961(n+1), A303980(n+1))]`
-/

namespace A326673.P3686326447992135640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A303961 (n + 1)) (A303980 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326673.P3686326447992135640

/-! ## A326673.P15427958212402415831

`eq[A103626(n), A333224(n)]`
-/

namespace A326673.P15427958212402415831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103626 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326673.P15427958212402415831

/-! ## A326673.P14305336697121838469

`eq[A004065(n), A175186(n+1)]`
-/

namespace A326673.P14305336697121838469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175186 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326673.P14305336697121838469

/-!
# A326674: GCD of the set of positions of 1's in the reversed binary expansion of n.

The programs for A326674, the canonical program `A326674.P12564829722531985873` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326674 has offset 1).

The definition of A326674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326674.P12564829722531985873

`A356352(A006068(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A326674

/-- `A356352(A006068(n+1))` -/
def P12564829722531985873.Spec : Prop :=
  ∀ n, P12564829722531985873.a n = A326674 (n + 1)

theorem P12564829722531985873.correct : P12564829722531985873.Spec := by
  intro n
  simp only [A326674, Nat.add_sub_cancel]

end A326674

/-! ## A326674.P1950570020316919007

`A064894(A265723(n+1))`
-/

namespace A326674.P1950570020316919007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A265723 (n + 1)).toNat

end

end A326674.P1950570020316919007

namespace A326674

/-- `A064894(A265723(n+1))` -/
def P1950570020316919007.Spec : Prop :=
  ∀ n, P1950570020316919007.a n = A326674 (n + 1)

end A326674

/-! ## A326674.P13368431093120431911

`A064894(2*(n+1))`
-/

namespace A326674.P13368431093120431911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (2 * (n + 1))

end

end A326674.P13368431093120431911

namespace A326674

/-- `A064894(2*(n+1))` -/
def P13368431093120431911.Spec : Prop :=
  ∀ n, P13368431093120431911.a n = A326674 (n + 1)

end A326674

/-! ## A326674.P8262041617182770061

`A118759(A064894(n+2+n))`
-/

namespace A326674.P8262041617182770061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A064894 (n + 2 + n)).toNat

end

end A326674.P8262041617182770061

namespace A326674

/-- `A118759(A064894(n+2+n))` -/
def P8262041617182770061.Spec : Prop :=
  ∀ n, P8262041617182770061.a n = A326674 (n + 1)

end A326674

/-! ## A326674.P2757148950797980454

`A064894(A026491(n))^and(1, n)`
-/

namespace A326674.P2757148950797980454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A026491 n).toNat ^ Nat.land 1 n

end

end A326674.P2757148950797980454

namespace A326674

/-- `A064894(A026491(n))^and(1, n)` -/
def P2757148950797980454.Spec : Prop :=
  ∀ n, P2757148950797980454.a n = A326674 (n + 1)

end A326674

/-! ## A326674.P7184758485019347776

`A246098(A064894(Δ[n²]+1))`
-/

namespace A326674.P7184758485019347776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246098 (A064894 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A326674.P7184758485019347776

namespace A326674

/-- `A246098(A064894(Δ[n²]+1))` -/
def P7184758485019347776.Spec : Prop :=
  ∀ n, P7184758485019347776.a n = A326674 (n + 1)

end A326674

/-! ## A326674.P15604401663725096185

`A064894(A005843(n+1))%(n+2)`
-/

namespace A326674.P15604401663725096185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064894 (A005843 (n + 1)).toNat) (n + 2 : ℤ)

end

end A326674.P15604401663725096185

namespace A326674

/-- `A064894(A005843(n+1))%(n+2)` -/
def P15604401663725096185.Spec : Prop :=
  ∀ n, P15604401663725096185.a n = A326674 (n + 1)

end A326674

/-! ## A326674.P6266299185556467364

`A052409(A057335(n+1))`
-/

namespace A326674.P6266299185556467364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A057335 (n + 1)).toNat

end

end A326674.P6266299185556467364

namespace A326674

/-- `A052409(A057335(n+1))` -/
def P6266299185556467364.Spec : Prop :=
  ∀ n, P6266299185556467364.a n = A326674 (n + 1)

end A326674

/-!
# A326675: The positions of 1's in the reversed binary expansion of n are pairwise coprime, where a singleton is not coprime unless it is {1}.

The programs for A326675, there is no canonical definition to state claims against.
-/

/-! ## A326675.P16861146496266880653

`filter[A087087(n+1), A267579(#)]`
-/

namespace A326675.P16861146496266880653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A326675.P16861146496266880653

/-! ## A326675.P13025719383263668898

`∩[A138591(n+1), A087087(n)]`
-/

namespace A326675.P13025719383263668898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326675.P13025719383263668898

/-! ## A326675.P104892097255510257

`∩[comp[A337666(n+1)], A087087(n)]`
-/

namespace A326675.P104892097255510257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A326675.P104892097255510257

/-! ## A326675.P9358691647859923488

`∩[A291166(n+1), A087087(n)]`
-/

namespace A326675.P9358691647859923488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326675.P9358691647859923488

/-! ## A326675.P6832824212327972575

`∩[A291166(n+1), comp[A335237(n+1)]]`
-/

namespace A326675.P6832824212327972575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291166 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A326675.P6832824212327972575

/-!
# A326676: Triangular array: T(n,k) equals the number of n triangle stacks of large Schröder type with k down-triangles in the bottom row of the stack.

The programs for A326676, there is no canonical definition to state claims against.
-/

/-! ## A326676.P14313284075726109429

`C(A114219(n), A020639(A331315(n+1)))`
-/

namespace A326676.P14313284075726109429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A114219 n).toNat (A020639 (A331315 (n + 1)).toNat).toNat

end

end A326676.P14313284075726109429

/-! ## A326676.P1591343721232037836

`C(A002262(n), A130130(A232006(n+1)))`
-/

namespace A326676.P1591343721232037836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A130130 (A232006 (n + 1)).toNat).toNat

end

end A326676.P1591343721232037836

/-! ## A326676.P9464853539113490847

`A383713(comp[∑[n]]%A194270(2*n+3))`
-/

namespace A326676.P9464853539113490847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383713 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A194270 (2 * n + 3))).toNat

end

end A326676.P9464853539113490847

/-! ## A326676.P3131440325151387933

`A127241(A288265(n+1))+A026729(n)`
-/

namespace A326676.P3131440325151387933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127241 (A288265 (n + 1)).toNat + A026729 n

end

end A326676.P3131440325151387933

/-! ## A326676.P14423158352417420060

`gcd(A010815(A079625(n+2)), A026729(n))`
-/

namespace A326676.P14423158352417420060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A079625 (n + 2)).toNat) (A026729 n)

end

end A326676.P14423158352417420060

/-!
# A326677: Numbers with a record number of divisors, counted with multiplicity (A169594).

The programs for A326677, there is no canonical definition to state claims against.
-/

/-! ## A326677.P13867286082199492785

`A181824(lt[A317239(n), n])`
-/

namespace A326677.P13867286082199492785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A326677.P13867286082199492785

/-! ## A326677.P17544209557028843038

`∩[A181824(n+1), A197640(n+1)]`
-/

namespace A326677.P17544209557028843038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326677.P17544209557028843038

/-! ## A326677.P14114710711017348679

`∩[A164836(n+1), A181824(n+1)]`
-/

namespace A326677.P14114710711017348679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326677.P14114710711017348679

/-! ## A326677.P8432101485119636729

`record[gcd(A127686(n+1), A181824(n+1))]`
-/

namespace A326677.P8432101485119636729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127686 (n + 1)) (A181824 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326677.P8432101485119636729

/-! ## A326677.P12831623398313296318

`A025487(comp[floor(n*(ϕ+3))]%A347369(3*n+4))`
-/

namespace A326677.P12831623398313296318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A347369 (3 * n + 4))).toNat

end

end A326677.P12831623398313296318

/-!
# A326678: Sum of all the parts in the partitions of n into 10 primes.

The programs for A326678, there is no canonical definition to state claims against.
-/

/-! ## A326678.P17259496117311891891

`A326679(n)+A326680(n)+A326681(n)+A326682(n)+A326683(n)+A326684(n)+A326685(n)+A326686(n)+A326687(n)+A326688(n)`
-/

namespace A326678.P17259496117311891891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A326680 n + A326681 n + A326682 n + A326683 n + A326684 n + A326685 n + A326686 n + A326687 n + A326688 n

end

end A326678.P17259496117311891891

/-! ## A326678.P17276919133284595226

`(n*A004526(A326679(n)))^A014963(A167499(n+13))`
-/

namespace A326678.P17276919133284595226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A004526 (A326679 n).toNat : ℚ) ^ (A014963 (A167499 (n + 13)).toNat : ℤ)

end

end A326678.P17276919133284595226

/-! ## A326678.P18206010604217234178

`A004526(n*and(A053173(n+1), A326680(n)))`
-/

namespace A326678.P18206010604217234178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * Int.land (A053173 (n + 1)) (A326680 n)).toNat

end

end A326678.P18206010604217234178

/-! ## A326678.P6668621037046432783

`A004526(n*and(A326680(n), A346123(n+1)))`
-/

namespace A326678.P6668621037046432783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * Int.land (A326680 n) (A346123 (n + 1))).toNat

end

end A326678.P6668621037046432783

/-! ## A326678.P17551825795974432470

`n*A001221(A326681(n)!)`
-/

namespace A326678.P17551825795974432470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (Nat.factorial (A326681 n).toNat)

end

end A326678.P17551825795974432470

/-!
# A326679: Sum of the smallest parts of the partitions of n into 10 primes.

The programs for A326679, there is no canonical definition to state claims against.
-/

/-! ## A326679.P9315051553376170541

`A326678(n)-A326680(n)-A326681(n)-A326682(n)-A326683(n)-A326684(n)-A326685(n)-A326686(n)-A326687(n)-A326688(n)`
-/

namespace A326679.P9315051553376170541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326680 n - A326681 n - A326682 n - A326683 n - A326684 n - A326685 n - A326686 n - A326687 n - A326688 n

end

end A326679.P9315051553376170541

/-! ## A326679.P17180181294393178242

`A185284(A326681(n))+A081600(A326681(n))`
-/

namespace A326679.P17180181294393178242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A326681 n).toNat + A081600 (A326681 n).toNat

end

end A326679.P17180181294393178242

/-! ## A326679.P1434024944200528298

`A081600(A326681(n))%A268448(n+1)`
-/

namespace A326679.P1434024944200528298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081600 (A326681 n).toNat) (A268448 (n + 1))

end

end A326679.P1434024944200528298

/-! ## A326679.P3710600857152527120

`A001222(A322272(n+1))*A081600(A326681(n))`
-/

namespace A326679.P3710600857152527120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322272 (n + 1)).toNat * A081600 (A326681 n).toNat

end

end A326679.P3710600857152527120

/-! ## A326679.P9531031103415110083

`and(A053173(n+1), A326680(n))`
-/

namespace A326679.P9531031103415110083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053173 (n + 1)) (A326680 n)

end

end A326679.P9531031103415110083

/-!
# A326680: Sum of the ninth largest parts of the partitions of n into 10 primes.

The programs for A326680, there is no canonical definition to state claims against.
-/

/-! ## A326680.P17953006244131361715

`A326678(n)-A326679(n)-A326681(n)-A326682(n)-A326683(n)-A326684(n)-A326685(n)-A326686(n)-A326687(n)-A326688(n)`
-/

namespace A326680.P17953006244131361715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326681 n - A326682 n - A326683 n - A326684 n - A326685 n - A326686 n - A326687 n - A326688 n

end

end A326680.P17953006244131361715

/-! ## A326680.P14288650778621833419

`A326681(n)-A011723(A186747(n))`
-/

namespace A326680.P14288650778621833419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n - A011723 (A186747 n).toNat

end

end A326680.P14288650778621833419

/-! ## A326680.P11842597556219182036

`A065039(A326679(n))-A011723(A186747(n))`
-/

namespace A326680.P11842597556219182036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (A326679 n).toNat - A011723 (A186747 n).toNat

end

end A326680.P11842597556219182036

/-! ## A326680.P11816463412678412062

`or(A001222(A322272(n+1))*A081600(A326681(n)), A011723(A326681(n)))`
-/

namespace A326680.P11816463412678412062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A322272 (n + 1)).toNat * A081600 (A326681 n).toNat) (A011723 (A326681 n).toNat)

end

end A326680.P11816463412678412062

/-! ## A326680.P8683174866388432938

`A326679(n)+A185284(A087897(n))`
-/

namespace A326680.P8683174866388432938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A185284 (A087897 n).toNat

end

end A326680.P8683174866388432938

/-!
# A326681: Sum of the eighth largest parts of the partitions of n into 10 primes.

The programs for A326681, there is no canonical definition to state claims against.
-/

/-! ## A326681.P7282552332093770954

`A326678(n)-A326679(n)-A326680(n)-A326682(n)-A326683(n)-A326684(n)-A326685(n)-A326686(n)-A326687(n)-A326688(n)`
-/

namespace A326681.P7282552332093770954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326680 n - A326682 n - A326683 n - A326684 n - A326685 n - A326686 n - A326687 n - A326688 n

end

end A326681.P7282552332093770954

/-! ## A326681.P3535984036260707974

`A065039(A326679(n))+A058343(A226040(n))`
-/

namespace A326681.P3535984036260707974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (A326679 n).toNat + A058343 (A226040 n).toNat

end

end A326681.P3535984036260707974

/-! ## A326681.P5554145454804147446

`A326680(n)+A011723(A186747(n))`
-/

namespace A326681.P5554145454804147446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A011723 (A186747 n).toNat

end

end A326681.P5554145454804147446

/-! ## A326681.P6600454536391446787

`A186747(A186747(n))+A065039(A326679(n))`
-/

namespace A326681.P6600454536391446787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A186747 n).toNat + A065039 (A326679 n).toNat

end

end A326681.P6600454536391446787

/-!
# A326682: Sum of the seventh largest parts of the partitions of n into 10 primes.

The programs for A326682, there is no canonical definition to state claims against.
-/

/-! ## A326682.P8999124977615824425

`A326678(n)-A326679(n)-A326680(n)-A326681(n)-A326683(n)-A326684(n)-A326685(n)-A326686(n)-A326687(n)-A326688(n)`
-/

namespace A326682.P8999124977615824425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326680 n - A326681 n - A326683 n - A326684 n - A326685 n - A326686 n - A326687 n - A326688 n

end

end A326682.P8999124977615824425

/-! ## A326682.P6956366600643974623

`A029915(A326684(n)%A285894(n))`
-/

namespace A326682.P6956366600643974623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029915 (Int.tmod (A326684 n) (A285894 n)).toNat

end

end A326682.P6956366600643974623

/-! ## A326682.P5922585361856040961

`A029915(A326684(n))%A141214(A007918(n))`
-/

namespace A326682.P5922585361856040961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029915 (A326684 n).toNat) (A141214 (A007918 n).toNat)

end

end A326682.P5922585361856040961

/-! ## A326682.P11183873533060070118

`A326681(n)+A011723(A186747(n+1))`
-/

namespace A326682.P11183873533060070118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A011723 (A186747 (n + 1)).toNat

end

end A326682.P11183873533060070118

/-!
# A326683: Sum of the sixth largest parts in the partitions of n into 10 primes.

The programs for A326683, there is no canonical definition to state claims against.
-/

/-! ## A326683.P8077071722571168303

`A326678(n)-A326679(n)-A326680(n)-A326681(n)-A326682(n)-A326684(n)-A326685(n)-A326686(n)-A326687(n)-A326688(n)`
-/

namespace A326683.P8077071722571168303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326680 n - A326681 n - A326682 n - A326684 n - A326685 n - A326686 n - A326687 n - A326688 n

end

end A326683.P8077071722571168303

/-!
# A326684: Sum of the fifth largest parts of the partitions of n into 10 primes.

The programs for A326684, there is no canonical definition to state claims against.
-/

/-! ## A326684.P18333885944377575786

`A326678(n)-A326679(n)-A326680(n)-A326681(n)-A326682(n)-A326683(n)-A326685(n)-A326686(n)-A326687(n)-A326688(n)`
-/

namespace A326684.P18333885944377575786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326680 n - A326681 n - A326682 n - A326683 n - A326685 n - A326686 n - A326687 n - A326688 n

end

end A326684.P18333885944377575786

/-!
# A326685: Sum of the fourth largest parts of the partitions of n into 10 primes.

The programs for A326685, there is no canonical definition to state claims against.
-/

/-! ## A326685.P146862680845215629

`A326678(n)-A326679(n)-A326680(n)-A326681(n)-A326682(n)-A326683(n)-A326684(n)-A326686(n)-A326687(n)-A326688(n)`
-/

namespace A326685.P146862680845215629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326680 n - A326681 n - A326682 n - A326683 n - A326684 n - A326686 n - A326687 n - A326688 n

end

end A326685.P146862680845215629

/-! ## A326685.P7391670441573259831

`A326546(A305719(2*(n+1))%A309127(n+1))`
-/

namespace A326685.P7391670441573259831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326546 (Int.tmod (A305719 (2 * (n + 1))) (A309127 (n + 1))).toNat

end

end A326685.P7391670441573259831

/-! ## A326685.P16645727188168665680

`A326546(A289207(n))^A294338(A324743(2*n+1))`
-/

namespace A326685.P16645727188168665680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326546 (A289207 n).toNat : ℚ) ^ (A294338 (A324743 (2 * n + 1)).toNat : ℤ)

end

end A326685.P16645727188168665680

/-!
# A326686: Sum of the third largest parts of the partitions of n into 10 primes.

The programs for A326686, there is no canonical definition to state claims against.
-/

/-! ## A326686.P9481081937173966257

`A326678(n)-A326679(n)-A326680(n)-A326681(n)-A326682(n)-A326683(n)-A326684(n)-A326685(n)-A326687(n)-A326688(n)`
-/

namespace A326686.P9481081937173966257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326680 n - A326681 n - A326682 n - A326683 n - A326684 n - A326685 n - A326687 n - A326688 n

end

end A326686.P9481081937173966257

/-! ## A326686.P9408800063099150062

`A010122(A016116(n))*A326547(A289207(n))`
-/

namespace A326686.P9408800063099150062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (A016116 n).toNat * A326547 (A289207 n).toNat

end

end A326686.P9408800063099150062

/-!
# A326687: Sum of the second largest parts in the partitions of n into 10 primes.

The programs for A326687, there is no canonical definition to state claims against.
-/

/-! ## A326687.P3687441736551882247

`A326678(n)-A326679(n)-A326680(n)-A326681(n)-A326682(n)-A326683(n)-A326684(n)-A326685(n)-A326686(n)-A326688(n)`
-/

namespace A326687.P3687441736551882247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326680 n - A326681 n - A326682 n - A326683 n - A326684 n - A326685 n - A326686 n - A326688 n

end

end A326687.P3687441736551882247

/-!
# A326688: Sum of the largest parts of the partitions of n into 10 primes.

The programs for A326688, there is no canonical definition to state claims against.
-/

/-! ## A326688.P15754826119100288680

`A326678(n)-A326679(n)-A326680(n)-A326681(n)-A326682(n)-A326683(n)-A326684(n)-A326685(n)-A326686(n)-A326687(n)`
-/

namespace A326688.P15754826119100288680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n - A326679 n - A326680 n - A326681 n - A326682 n - A326683 n - A326684 n - A326685 n - A326686 n - A326687 n

end

end A326688.P15754826119100288680

/-!
# A326689: Numerator of the fraction (Sum_{prime p | n} 1/p - 1/n).

The programs for A326689, the canonical program `A326689.P15399592672610924281` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326689 has offset 1).

The definition of A326689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326689.P15399592672610924281

`(∑{p}[n+1, (n+1)/#]-1)/∏{p}[n+1, gcd(#, floor(n/#))]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A326689

/-- `(∑{p}[n+1, (n+1)/#]-1)/∏{p}[n+1, gcd(#, floor(n/#))]` -/
def P15399592672610924281.Spec : Prop :=
  ∀ n, P15399592672610924281.a n = (A326689 (n + 1) : ℚ)

end A326689

/-! ## A326689.P14337757621283945407

`(A069359(n+1)-1)/A326691(n+1)`
-/

namespace A326689.P14337757621283945407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069359 (n + 1) - 1 : ℚ) / (A326691 (n + 1) : ℚ)

end

end A326689.P14337757621283945407

namespace A326689

/-- `(A069359(n+1)-1)/A326691(n+1)` -/
def P14337757621283945407.Spec : Prop :=
  ∀ n, P14337757621283945407.a n = (A326689 (n + 1) : ℚ)

end A326689

/-! ## A326689.P6759344994323015602

`A023443(A069359(n+1))/A326691(n+1)`
-/

namespace A326689.P6759344994323015602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A069359 (n + 1)).toNat : ℚ) / (A326691 (n + 1) : ℚ)

end

end A326689.P6759344994323015602

namespace A326689

/-- `A023443(A069359(n+1))/A326691(n+1)` -/
def P6759344994323015602.Spec : Prop :=
  ∀ n, P6759344994323015602.a n = (A326689 (n + 1) : ℚ)

end A326689

/-! ## A326689.P15314734798824398878

`A180312(2^n+n*a(n-1))%A065033(n)` with `a(0)=-1`
-/

namespace A326689.P15314734798824398878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  Int.tmod (A180312 ((2 ^ n : ℤ) + (n : ℤ) * a (n - 1)).toNat) (A065033 n)

end

end A326689.P15314734798824398878

namespace A326689

/-- `A180312(2^n+n*a(n-1))%A065033(n)` -/
def P15314734798824398878.Spec : Prop :=
  ∀ n, P15314734798824398878.a n = A326689 (n + 1)

end A326689

/-! ## A326689.P8298570616769579638

`A061394(A056189(n+1))-1`
-/

namespace A326689.P8298570616769579638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (A056189 (n + 1)).toNat - 1

end

end A326689.P8298570616769579638

namespace A326689

/-- `A061394(A056189(n+1))-1` -/
def P8298570616769579638.Spec : Prop :=
  ∀ n, P8298570616769579638.a n = A326689 (n + 1)

end A326689

/-!
# A326690: Denominator of the fraction (Sum_{prime p | n} 1/p - 1/n).

The programs for A326690, the canonical program `A326690.P5441931073126081329` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326690 has offset 1).

The definition of A326690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326690.P5441931073126081329

`(n+1)/∏{p}[n+1, gcd(#, floor(n/#))]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A326690

/-- `(n+1)/∏{p}[n+1, gcd(#, floor(n/#))]` -/
def P5441931073126081329.Spec : Prop :=
  ∀ n, P5441931073126081329.a n = (A326690 (n + 1) : ℚ)

end A326690

/-! ## A326690.P10220661558423186422

`(n+1)/A326691(n+1)`
-/

namespace A326690.P10220661558423186422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A326691 (n + 1) : ℚ)

end

end A326690.P10220661558423186422

namespace A326690

/-- `(n+1)/A326691(n+1)` -/
def P10220661558423186422.Spec : Prop :=
  ∀ n, P10220661558423186422.a n = (A326690 (n + 1) : ℚ)

end A326690

/-! ## A326690.P15295020004355942753

`(n+1)/gcd(n+1, A003415(n+1)+n)`
-/

namespace A326690.P15295020004355942753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A003415 (n + 1) + (n : ℤ)) : ℚ)

end

end A326690.P15295020004355942753

namespace A326690

/-- `(n+1)/gcd(n+1, A003415(n+1)+n)` -/
def P15295020004355942753.Spec : Prop :=
  ∀ n, P15295020004355942753.a n = (A326690 (n + 1) : ℚ)

end A326690

/-! ## A326690.P12089771532340421567

`(n+1)²/gcd((n+1)², A072194(n+1))`
-/

namespace A326690.P12089771532340421567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A072194 (n + 1)) : ℚ)

end

end A326690.P12089771532340421567

namespace A326690

/-- `(n+1)²/gcd((n+1)², A072194(n+1))` -/
def P12089771532340421567.Spec : Prop :=
  ∀ n, P12089771532340421567.a n = (A326690 (n + 1) : ℚ)

end A326690

/-! ## A326690.P1703702035373008811

`(n+1)/gcd(n+1, A231333(n+1))`
-/

namespace A326690.P1703702035373008811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A231333 (n + 1)) : ℚ)

end

end A326690.P1703702035373008811

namespace A326690

/-- `(n+1)/gcd(n+1, A231333(n+1))` -/
def P1703702035373008811.Spec : Prop :=
  ∀ n, P1703702035373008811.a n = (A326690 (n + 1) : ℚ)

end A326690

/-! ## A326690.P13595081872330838299

`A051537(A326691(n+1)+∑[n])`
-/

namespace A326690.P13595081872330838299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A326691 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A326690.P13595081872330838299

namespace A326690

/-- `A051537(A326691(n+1)+∑[n])` -/
def P13595081872330838299.Spec : Prop :=
  ∀ n, P13595081872330838299.a n = A326690 (n + 1)

end A326690

/-! ## A326690.P17413701355892055243

`A054531(A326691(n+1)+∑[n])`
-/

namespace A326690.P17413701355892055243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A326691 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A326690.P17413701355892055243

namespace A326690

/-- `A054531(A326691(n+1)+∑[n])` -/
def P17413701355892055243.Spec : Prop :=
  ∀ n, P17413701355892055243.a n = A326690 (n + 1)

end A326690

/-! ## A326690.P2590864981914245079

`A054531(A235138(n+1)+A000124(n))`
-/

namespace A326690.P2590864981914245079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A235138 (n + 1) + A000124 n).toNat

end

end A326690.P2590864981914245079

namespace A326690

/-- `A054531(A235138(n+1)+A000124(n))` -/
def P2590864981914245079.Spec : Prop :=
  ∀ n, P2590864981914245079.a n = A326690 (n + 1)

end A326690

/-! ## A326690.P13446470775744074889

`A277227(A326691(n+1)+A000124(n))`
-/

namespace A326690.P13446470775744074889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A326691 (n + 1) + A000124 n).toNat

end

end A326690.P13446470775744074889

namespace A326690

/-- `A277227(A326691(n+1)+A000124(n))` -/
def P13446470775744074889.Spec : Prop :=
  ∀ n, P13446470775744074889.a n = A326690 (n + 1)

end A326690

/-! ## A326690.P8351207039120113035

`A277227(A235138(n+1)+A133263(n))`
-/

namespace A326690.P8351207039120113035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A235138 (n + 1) + A133263 n).toNat

end

end A326690.P8351207039120113035

namespace A326690

/-- `A277227(A235138(n+1)+A133263(n))` -/
def P8351207039120113035.Spec : Prop :=
  ∀ n, P8351207039120113035.a n = A326690 (n + 1)

end A326690

/-!
# A326691: a(n) = n/denominator(Sum_{prime p | n} 1/p - 1/n).

The programs for A326691, the canonical program `A326691.P3172993936142207661` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326691 has offset 1).

The definition of A326691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326691.P3172993936142207661

`(n+1)/A326690(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A326691

/-- `(n+1)/A326690(n+1)` -/
def P3172993936142207661.Spec : Prop :=
  ∀ n, P3172993936142207661.a n = (A326691 (n + 1) : ℚ)

end A326691

/-! ## A326691.P7509843960763487125

`∏{p}[n+1, gcd(#, floor(n/#))]`
-/

namespace A326691.P7509843960763487125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) ⌊(n : ℚ) / (p : ℚ)⌋

end

end A326691.P7509843960763487125

namespace A326691

/-- `∏{p}[n+1, gcd(#, floor(n/#))]` -/
def P7509843960763487125.Spec : Prop :=
  ∀ n, (P7509843960763487125.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P9622290784798502851

`gcd(n+1, 1-∑{p}[n+1, (n+1)/#])`
-/

namespace A326691.P9622290784798502851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (1 - ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))

end

end A326691.P9622290784798502851

namespace A326691

/-- `gcd(n+1, 1-∑{p}[n+1, (n+1)/#])` -/
def P9622290784798502851.Spec : Prop :=
  ∀ n, (P9622290784798502851.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P11671881040105461305

`gcd(n+1, ∑[A258057(n)]-1)`
-/

namespace A326691.P11671881040105461305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A326691.P11671881040105461305

namespace A326691

/-- `gcd(n+1, ∑[A258057(n)]-1)` -/
def P11671881040105461305.Spec : Prop :=
  ∀ n, (P11671881040105461305.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P12815398148437478232

`gcd(1-A065967(n+1), A000027(n+1))`
-/

namespace A326691.P12815398148437478232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A065967 (n + 1)) (A000027 (n + 1))

end

end A326691.P12815398148437478232

namespace A326691

/-- `gcd(1-A065967(n+1), A000027(n+1))` -/
def P12815398148437478232.Spec : Prop :=
  ∀ n, (P12815398148437478232.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P10168273233481181074

`gcd(1-A069359(n+1), A007947(n+1))`
-/

namespace A326691.P10168273233481181074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A069359 (n + 1)) (A007947 (n + 1))

end

end A326691.P10168273233481181074

namespace A326691

/-- `gcd(1-A069359(n+1), A007947(n+1))` -/
def P10168273233481181074.Spec : Prop :=
  ∀ n, (P10168273233481181074.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P11938070797152496933

`gcd(A065967(n+1)-1, A038388(n+1))`
-/

namespace A326691.P11938070797152496933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065967 (n + 1) - 1) (A038388 (n + 1))

end

end A326691.P11938070797152496933

namespace A326691

/-- `gcd(A065967(n+1)-1, A038388(n+1))` -/
def P11938070797152496933.Spec : Prop :=
  ∀ n, (P11938070797152496933.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P5798107926929786273

`gcd(A069359(n+1)-1, A055231(n+1))`
-/

namespace A326691.P5798107926929786273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069359 (n + 1) - 1) (A055231 (n + 1))

end

end A326691.P5798107926929786273

namespace A326691

/-- `gcd(A069359(n+1)-1, A055231(n+1))` -/
def P5798107926929786273.Spec : Prop :=
  ∀ n, (P5798107926929786273.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P10032031938267348708

`gcd(1-A319703(2*n+2), A028310(n+1))`
-/

namespace A326691.P10032031938267348708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A319703 (2 * n + 2)) (A028310 (n + 1))

end

end A326691.P10032031938267348708

namespace A326691

/-- `gcd(1-A319703(2*n+2), A028310(n+1))` -/
def P10032031938267348708.Spec : Prop :=
  ∀ n, (P10032031938267348708.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P1259941520005844710

`gcd(A055231(n+1), A373003(n+1))`
-/

namespace A326691.P1259941520005844710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055231 (n + 1)) (A373003 (n + 1))

end

end A326691.P1259941520005844710

namespace A326691

/-- `gcd(A055231(n+1), A373003(n+1))` -/
def P1259941520005844710.Spec : Prop :=
  ∀ n, (P1259941520005844710.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P17034685300750721359

`gcd(n+1, A231333(n+1))`
-/

namespace A326691.P17034685300750721359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A231333 (n + 1))

end

end A326691.P17034685300750721359

namespace A326691

/-- `gcd(n+1, A231333(n+1))` -/
def P17034685300750721359.Spec : Prop :=
  ∀ n, (P17034685300750721359.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P12094362452056100107

`gcd(1-A003415(n+1), A233583(n+2))`
-/

namespace A326691.P12094362452056100107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A003415 (n + 1)) (A233583 (n + 2))

end

end A326691.P12094362452056100107

namespace A326691

/-- `gcd(1-A003415(n+1), A233583(n+2))` -/
def P12094362452056100107.Spec : Prop :=
  ∀ n, (P12094362452056100107.a n : ℤ) = A326691 (n + 1)

end A326691

/-! ## A326691.P3054935300260776038

`A007913((n+1)*A326690(n+1))`
-/

namespace A326691.P3054935300260776038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A326690 (n + 1)).toNat

end

end A326691.P3054935300260776038

namespace A326691

/-- `A007913((n+1)*A326690(n+1))` -/
def P3054935300260776038.Spec : Prop :=
  ∀ n, P3054935300260776038.a n = A326691 (n + 1)

end A326691

/-! ## A326691.P7259225143241730040

`A051537(A326690(n+1)+∑[n])`
-/

namespace A326691.P7259225143241730040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A326690 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A326691.P7259225143241730040

namespace A326691

/-- `A051537(A326690(n+1)+∑[n])` -/
def P7259225143241730040.Spec : Prop :=
  ∀ n, P7259225143241730040.a n = A326691 (n + 1)

end A326691

/-! ## A326691.P1032868834582607567

`A054531(A326690(n+1)+∑[n])`
-/

namespace A326691.P1032868834582607567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A326690 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A326691.P1032868834582607567

namespace A326691

/-- `A054531(A326690(n+1)+∑[n])` -/
def P1032868834582607567.Spec : Prop :=
  ∀ n, P1032868834582607567.a n = A326691 (n + 1)

end A326691

/-! ## A326691.P17196758351426809774

`A126988(A326690(n+1)+A000217(n))`
-/

namespace A326691.P17196758351426809774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A326690 (n + 1) + A000217 n).toNat

end

end A326691.P17196758351426809774

namespace A326691

/-- `A126988(A326690(n+1)+A000217(n))` -/
def P17196758351426809774.Spec : Prop :=
  ∀ n, P17196758351426809774.a n = A326691 (n + 1)

end A326691

/-!
# A326692: Values of k for which the denominator of (Sum_{prime p | k} 1/p - 1/k) is k.

The programs for A326692, the canonical program `A326692.P17715033095032022352` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326692 has offset 1).

The definition of A326692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9933 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326692.P17715033095032022352

`eq[1, A326691(n+1)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A326692

/-- `eq[1, A326691(n+1)]+1` -/
def P17715033095032022352.Spec : Prop :=
  ∀ n, (P17715033095032022352.a n : ℤ) = A326692 (n + 1)

theorem P17715033095032022352.correct : P17715033095032022352.Spec := by
  intro n
  simp only [A326692, Nat.add_sub_cancel]

end A326692

/-! ## A326692.P15785701157570065599

`record[(n+2)/A326691(n+2)]`
-/

namespace A326692.P15785701157570065599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A326691 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326692.P15785701157570065599

namespace A326692

/-- `record[(n+2)/A326691(n+2)]` -/
def P15785701157570065599.Spec : Prop :=
  ∀ n, P15785701157570065599.a n = (A326692 (n + 1) : ℚ)

end A326692

/-! ## A326692.P8227276864172162652

`record[A326690(n+1)]`
-/

namespace A326692.P8227276864172162652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326692.P8227276864172162652

namespace A326692

/-- `record[A326690(n+1)]` -/
def P8227276864172162652.Spec : Prop :=
  ∀ n, P8227276864172162652.a n = A326692 (n + 1)

end A326692

/-! ## A326692.P9703937277757196965

`eq[n, A326690(round(acot(n)+n))]`
-/

namespace A326692.P9703937277757196965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326690 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326692.P9703937277757196965

namespace A326692

/-- `eq[n, A326690(round(acot(n)+n))]` -/
def P9703937277757196965.Spec : Prop :=
  ∀ n, (P9703937277757196965.a n : ℤ) = A326692 (n + 1)

end A326692

/-! ## A326692.P13715120672585769310

`eq[n, A326690(abs(1-n)+1)]`
-/

namespace A326692.P13715120672585769310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326690 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326692.P13715120672585769310

namespace A326692

/-- `eq[n, A326690(abs(1-n)+1)]` -/
def P13715120672585769310.Spec : Prop :=
  ∀ n, (P13715120672585769310.a n : ℤ) = A326692 (n + 1)

end A326692

/-! ## A326692.P3714139147209640741

`record[(n+1)²/gcd((n+1)², A072194(n+1))]`
-/

namespace A326692.P3714139147209640741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A072194 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326692.P3714139147209640741

namespace A326692

/-- `record[(n+1)²/gcd((n+1)², A072194(n+1))]` -/
def P3714139147209640741.Spec : Prop :=
  ∀ n, P3714139147209640741.a n = (A326692 (n + 1) : ℚ)

end A326692

/-! ## A326692.P16605848424978634965

`eq[1, A326691(A000038(n)+n)]`
-/

namespace A326692.P16605848424978634965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326692.P16605848424978634965

namespace A326692

/-- `eq[1, A326691(A000038(n)+n)]` -/
def P16605848424978634965.Spec : Prop :=
  ∀ n, (P16605848424978634965.a n : ℤ) = A326692 (n + 1)

end A326692

/-! ## A326692.P14043248835943987035

`eq[1, A326691(xor(n, A000038(n)))]`
-/

namespace A326692.P14043248835943987035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326692.P14043248835943987035

namespace A326692

/-- `eq[1, A326691(xor(n, A000038(n)))]` -/
def P14043248835943987035.Spec : Prop :=
  ∀ n, (P14043248835943987035.a n : ℤ) = A326692 (n + 1)

end A326692

/-! ## A326692.P18368696022623827044

`eq[gcd(n, 1-A003415(n)), A014963(4*n+2)]`
-/

namespace A326692.P18368696022623827044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (1 - A003415 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326692.P18368696022623827044

namespace A326692

/-- `eq[gcd(n, 1-A003415(n)), A014963(4*n+2)]` -/
def P18368696022623827044.Spec : Prop :=
  ∀ n, (P18368696022623827044.a n : ℤ) = A326692 (n + 1)

end A326692

/-! ## A326692.P3293132149762933367

`record[(n+1)/gcd(n+1, A231333(n+1))]`
-/

namespace A326692.P3293132149762933367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A231333 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326692.P3293132149762933367

namespace A326692

/-- `record[(n+1)/gcd(n+1, A231333(n+1))]` -/
def P3293132149762933367.Spec : Prop :=
  ∀ n, P3293132149762933367.a n = (A326692 (n + 1) : ℚ)

end A326692

/-!
# A326696: Numbers m with at least one divisor d > 1 such that sigma(d) divides m.

The programs for A326696, there is no canonical definition to state claims against.
-/

/-! ## A326696.P9097293942272025018

`lt[1, A326697(n+1)]+1`
-/

namespace A326696.P9097293942272025018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A326696.P9097293942272025018

/-! ## A326696.P8691856698836420216

`lt[1, A326698(n+1)]+1`
-/

namespace A326696.P8691856698836420216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A326696.P8691856698836420216

/-! ## A326696.P7502584607264410063

`lt[1, A327156(n+1)]+1`
-/

namespace A326696.P7502584607264410063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A326696.P7502584607264410063

/-! ## A326696.P13080551679158978265

`eq[1, A000045(a(A173441(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A326696.P13080551679158978265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A000045 (f2 (A173441 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326696.P13080551679158978265

/-! ## A326696.P8817050148666991138

`eq[1, A000010(a(A173441(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A326696.P8817050148666991138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A173441 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326696.P8817050148666991138

/-! ## A326696.P5345942045404971148

`eq[1, A074942(a(A173441(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A326696.P5345942045404971148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A074942 (f2 (A173441 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326696.P5345942045404971148

/-! ## A326696.P13166002732675593594

`eq[1, A130290(a(A173441(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A326696.P13166002732675593594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A130290 (f2 (A173441 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326696.P13166002732675593594

/-! ## A326696.P12943075350837268997

`eq[1, A007318(a(A173441(n)))]` with `a(0)=0, a(1)=7`
-/

namespace A326696.P12943075350837268997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f2 =>
  A007318 (f2 (A173441 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326696.P12943075350837268997

/-! ## A326696.P7903493852591544902

`eq[1, A014963(a(A173441(n)))!]` with `a(0)=3, a(1)=3`
-/

namespace A326696.P7903493852591544902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  Nat.factorial (A014963 (f2 (A173441 n).toNat)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326696.P7903493852591544902

/-!
# A326697: a(n) is the sum of divisors d of n such that sigma(d) divides n.

The programs for A326697, there is no canonical definition to state claims against.
-/

/-! ## A326697.P12392551183783286695

`A253894(A326698(n+1)²)`
-/

namespace A326697.P12392551183783286695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253894 (A326698 (n + 1) ^ 2).toNat

end

end A326697.P12392551183783286695

/-! ## A326697.P13589981321277268171

`A025581(A045926(A326698(n+1)+1))`
-/

namespace A326697.P13589981321277268171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A045926 (A326698 (n + 1) + 1).toNat).toNat

end

end A326697.P13589981321277268171

/-!
# A326698: a(n) is the product of divisors d of n such that sigma(d) divides n.

The programs for A326698, there is no canonical definition to state claims against.
-/

/-! ## A326698.P8974894226275097210

`A276299(A326697(n+1)+A243834(3*n+1))`
-/

namespace A326698.P8974894226275097210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A326697 (n + 1) + A243834 (3 * n + 1)).toNat

end

end A326698.P8974894226275097210

/-! ## A326698.P5020221163868824177

`A187501(A050433(n+1)^A266616(n))`
-/

namespace A326698.P5020221163868824177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187501 (SequenceMachineLib.roundAway ((A050433 (n + 1) : ℚ) ^ (A266616 n : ℤ))).toNat

end

end A326698.P5020221163868824177

/-! ## A326698.P9731065450759387383

`∏{d}[A000045(n+1), A277698(A056926(#))]`
-/

namespace A326698.P9731065450759387383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A277698 (A056926 d).toNat

end

end A326698.P9731065450759387383

/-! ## A326698.P11554462322322389065

`A010551(gcd(A231306(n), A235450(3*n+1)))`
-/

namespace A326698.P11554462322322389065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010551 (Int.gcd (A231306 n) (A235450 (3 * n + 1)))

end

end A326698.P11554462322322389065

/-!
# A326699: Numerator of the average position of a 1 in the reversed binary expansion of n.

The programs for A326699, there is no canonical definition to state claims against.
-/

/-! ## A326699.P15049674628150845924

`A029931(n+1)/A000120(n+1)*A326700(n+1)`
-/

namespace A326699.P15049674628150845924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029931 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ) * (A326700 (n + 1) : ℚ)

end

end A326699.P15049674628150845924

/-! ## A326699.P16438603941250638693

`A326567(A019565(n+1))`
-/

namespace A326699.P16438603941250638693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A019565 (n + 1)).toNat

end

end A326699.P16438603941250638693

/-! ## A326699.P8056107686486706451

`A371383(A048794(n+1))`
-/

namespace A326699.P8056107686486706451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 (A048794 (n + 1)).toNat

end

end A326699.P8056107686486706451

/-! ## A326699.P16814242686062170494

`A099246(A395303(n+1))`
-/

namespace A326699.P16814242686062170494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A395303 (n + 1)).toNat

end

end A326699.P16814242686062170494

/-! ## A326699.P13564504266791666692

`A000120(A338120(n+1)-A053188(n))`
-/

namespace A326699.P13564504266791666692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A338120 (n + 1) - A053188 n).toNat

end

end A326699.P13564504266791666692

