import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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

/-!
# A185900: 1/8 the number of nX3 0..7 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185900, there is no canonical definition to state claims against.
-/

/-! ## A185900.P6299353418406840096

`A185903(∑[n+3]+1)`
-/

namespace A185900.P6299353418406840096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185903 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185900.P6299353418406840096

/-! ## A185900.P437891312045907741

`record[A185903(A078649(n+1))]`
-/

namespace A185900.P437891312045907741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185903 (A078649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185900.P437891312045907741

/-!
# A185901: 1/8 the number of nX4 0..7 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185901, there is no canonical definition to state claims against.
-/

/-! ## A185901.P8975249586065153032

`A185903(∑[n+3]+7)`
-/

namespace A185901.P8975249586065153032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185903 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A185901.P8975249586065153032

/-!
# A185904: Multiplication table for the tetrahedral numbers (A000292), by antidiagonals.

The programs for A185904, the canonical program `A185904.P11695102435182326736` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185904 has offset 1).

The definition of A185904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185904.P11695102435182326736

`A000292(A002260(n+1))*A058187(A099375(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185904

/-- `A000292(A002260(n+1))*A058187(A099375(n))` -/
def P11695102435182326736.Spec : Prop :=
  ∀ n, P11695102435182326736.a n = A185904 (n + 1)

theorem P11695102435182326736.correct : P11695102435182326736.Spec := by
  intro n
  simp only [A185904, Nat.add_sub_cancel]

end A185904

/-! ## A185904.P427500607740739484

`A058187(A158405(n+1))*A058187(A099375(n))`
-/

namespace A185904.P427500607740739484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (A158405 (n + 1)).toNat * A058187 (A099375 n).toNat

end

end A185904.P427500607740739484

namespace A185904

/-- `A058187(A158405(n+1))*A058187(A099375(n))` -/
def P427500607740739484.Spec : Prop :=
  ∀ n, P427500607740739484.a n = A185904 (n + 1)

end A185904

/-! ## A185904.P8817333907427135479

`A000292(A002260(n+1))*A000292(A004736(n+1))`
-/

namespace A185904.P8817333907427135479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A000292 (A004736 (n + 1)).toNat

end

end A185904.P8817333907427135479

namespace A185904

/-- `A000292(A002260(n+1))*A000292(A004736(n+1))` -/
def P8817333907427135479.Spec : Prop :=
  ∀ n, P8817333907427135479.a n = A185904 (n + 1)

end A185904

/-! ## A185904.P14371911179527193054

`A000292(A057555(2*n+1))*A000292(A057555(2*(n+1)))`
-/

namespace A185904.P14371911179527193054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A057555 (2 * n + 1)).toNat * A000292 (A057555 (2 * (n + 1))).toNat

end

end A185904.P14371911179527193054

namespace A185904

/-- `A000292(A057555(2*n+1))*A000292(A057555(2*(n+1)))` -/
def P14371911179527193054.Spec : Prop :=
  ∀ n, P14371911179527193054.a n = A185904 (n + 1)

end A185904

/-! ## A185904.P788417748176956766

`A000292(A004736(n+1))*A307394(A292564(n))`
-/

namespace A185904.P788417748176956766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A004736 (n + 1)).toNat * A307394 (A292564 n).toNat

end

end A185904.P788417748176956766

namespace A185904

/-- `A000292(A004736(n+1))*A307394(A292564(n))` -/
def P788417748176956766.Spec : Prop :=
  ∀ n, P788417748176956766.a n = A185904 (n + 1)

end A185904

/-! ## A185904.P7278111070486245493

`A000292(A002260(n+1))*A133826(A061885(n))`
-/

namespace A185904.P7278111070486245493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A133826 (A061885 n).toNat

end

end A185904.P7278111070486245493

namespace A185904

/-- `A000292(A002260(n+1))*A133826(A061885(n))` -/
def P7278111070486245493.Spec : Prop :=
  ∀ n, P7278111070486245493.a n = A185904 (n + 1)

end A185904

/-! ## A185904.P10307410845762791927

`∏{e}[A036561(n), A000292(#+1)]`
-/

namespace A185904.P10307410845762791927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000292 (Nat.factorization (f1 n).natAbs p + 1)

end

end A185904.P10307410845762791927

namespace A185904

/-- `∏{e}[A036561(n), A000292(#+1)]` -/
def P10307410845762791927.Spec : Prop :=
  ∀ n, P10307410845762791927.a n = A185904 (n + 1)

end A185904

/-! ## A185904.P4747006904216444966

`∏{e}[A036561(n), A008804(2*#)]`
-/

namespace A185904.P4747006904216444966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008804 (2 * Nat.factorization (f1 n).natAbs p)

end

end A185904.P4747006904216444966

namespace A185904

/-- `∏{e}[A036561(n), A008804(2*#)]` -/
def P4747006904216444966.Spec : Prop :=
  ∀ n, P4747006904216444966.a n = A185904 (n + 1)

end A185904

/-! ## A185904.P5395382336777718891

`∏{e}[A175840(n), A008804(2*#)]`
-/

namespace A185904.P5395382336777718891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008804 (2 * Nat.factorization (f1 n).natAbs p)

end

end A185904.P5395382336777718891

namespace A185904

/-- `∏{e}[A175840(n), A008804(2*#)]` -/
def P5395382336777718891.Spec : Prop :=
  ∀ n, P5395382336777718891.a n = A185904 (n + 1)

end A185904

/-! ## A185904.P2294798918828982534

`∏{e}[A175840(n), A058187(2*#)]`
-/

namespace A185904.P2294798918828982534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A058187 (2 * Nat.factorization (f1 n).natAbs p)

end

end A185904.P2294798918828982534

namespace A185904

/-- `∏{e}[A175840(n), A058187(2*#)]` -/
def P2294798918828982534.Spec : Prop :=
  ∀ n, P2294798918828982534.a n = A185904 (n + 1)

end A185904

/-!
# A185905: Rectangular array binomial(k+3,4)*binomial(n+3,4), by antidiagonals.

The programs for A185905, the canonical program `A185905.P11562554649795205989` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185905 has offset 1).

The definition of A185905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185905.P11562554649795205989

`∏{e}[A036561(n), C(#+4, 4)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185905

/-- `∏{e}[A036561(n), C(#+4, 4)]` -/
def P11562554649795205989.Spec : Prop :=
  ∀ n, (P11562554649795205989.a n : ℤ) = A185905 (n + 1)

theorem P11562554649795205989.correct : P11562554649795205989.Spec := by
  intro n
  simp only [A185905, Nat.add_sub_cancel]

end A185905

/-! ## A185905.P3449578758390539707

`A061200(A036561(n))`
-/

namespace A185905.P3449578758390539707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (A036561 n).toNat

end

end A185905.P3449578758390539707

namespace A185905

/-- `A061200(A036561(n))` -/
def P3449578758390539707.Spec : Prop :=
  ∀ n, P3449578758390539707.a n = A185905 (n + 1)

end A185905

/-! ## A185905.P17425802444730314831

`A061200(A082234(n+1))`
-/

namespace A185905.P17425802444730314831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (A082234 (n + 1)).toNat

end

end A185905.P17425802444730314831

namespace A185905

/-- `A061200(A082234(n+1))` -/
def P17425802444730314831.Spec : Prop :=
  ∀ n, P17425802444730314831.a n = A185905 (n + 1)

end A185905

/-! ## A185905.P15477666968445688048

`A061200(A230445(n)+1)`
-/

namespace A185905.P15477666968445688048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (A230445 n + 1).toNat

end

end A185905.P15477666968445688048

namespace A185905

/-- `A061200(A230445(n)+1)` -/
def P15477666968445688048.Spec : Prop :=
  ∀ n, P15477666968445688048.a n = A185905 (n + 1)

end A185905

/-! ## A185905.P10496482488673340720

`∑{d}[A036561(n), A007426(#)]`
-/

namespace A185905.P10496482488673340720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007426 d

end

end A185905.P10496482488673340720

namespace A185905

/-- `∑{d}[A036561(n), A007426(#)]` -/
def P10496482488673340720.Spec : Prop :=
  ∀ n, P10496482488673340720.a n = A185905 (n + 1)

end A185905

/-! ## A185905.P14738144832311373113

`A061200(A081954(n+1)/2)`
-/

namespace A185905.P14738144832311373113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (SequenceMachineLib.roundAway ((A081954 (n + 1) : ℚ) / 2)).toNat

end

end A185905.P14738144832311373113

namespace A185905

/-- `A061200(A081954(n+1)/2)` -/
def P14738144832311373113.Spec : Prop :=
  ∀ n, P14738144832311373113.a n = A185905 (n + 1)

end A185905

/-! ## A185905.P7647332172570946886

`A061200(A175840(A061579(n)))`
-/

namespace A185905.P7647332172570946886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (A175840 (A061579 n).toNat).toNat

end

end A185905.P7647332172570946886

namespace A185905

/-- `A061200(A175840(A061579(n)))` -/
def P7647332172570946886.Spec : Prop :=
  ∀ n, P7647332172570946886.a n = A185905 (n + 1)

end A185905

/-! ## A185905.P2895942141467337993

`A061200(A038218(n)/A013611(n))`
-/

namespace A185905.P2895942141467337993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (SequenceMachineLib.roundAway ((A038218 n : ℚ) / (A013611 n : ℚ))).toNat

end

end A185905.P2895942141467337993

namespace A185905

/-- `A061200(A038218(n)/A013611(n))` -/
def P2895942141467337993.Spec : Prop :=
  ∀ n, P2895942141467337993.a n = A185905 (n + 1)

end A185905

/-! ## A185905.P8089836987516415257

`∑{d}[A155118(A014132(n+1)), A007426(#)]`
-/

namespace A185905.P8089836987516415257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007426 d

end

end A185905.P8089836987516415257

namespace A185905

/-- `∑{d}[A155118(A014132(n+1)), A007426(#)]` -/
def P8089836987516415257.Spec : Prop :=
  ∀ n, P8089836987516415257.a n = A185905 (n + 1)

end A185905

/-!
# A185906: Weight array of A000007 (which has only one nonzero term and whose second accumulation array is the multiplication table for the positive integers), by antidiagonals.

The programs for A185906, the canonical program `A185906.P18308349898053673452` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185906 has offset 1).

The definition of A185906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185906.P18308349898053673452

`round(sin(4^(2*(4-n))))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185906

/-- `round(sin(4^(2*(4-n))))` -/
def P18308349898053673452.Spec : Prop :=
  ∀ n, P18308349898053673452.a n = A185906 (n + 1)

theorem P18308349898053673452.correct : P18308349898053673452.Spec := by
  intro n
  simp only [A185906, Nat.add_sub_cancel]

end A185906

/-!
# A185907: Weight array of A185908, by descending antidiagonals.

The programs for A185907, the canonical program `A185907.P17717947783364132317` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185907 has offset 1).

The definition of A185907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185907.P17717947783364132317

`C(C(2, A026729(n)), 2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185907

/-- `C(C(2, A026729(n)), 2)` -/
def P17717947783364132317.Spec : Prop :=
  ∀ n, (P17717947783364132317.a n : ℤ) = A185907 (n + 1)

theorem P17717947783364132317.correct : P17717947783364132317.Spec := by
  intro n
  simp only [A185907, Nat.add_sub_cancel]

end A185907

/-! ## A185907.P4803820475418536588

`C(C(2, A098158(n)), 2)`
-/

namespace A185907.P4803820475418536588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A098158 n).toNat) 2

end

end A185907.P4803820475418536588

namespace A185907

/-- `C(C(2, A098158(n)), 2)` -/
def P4803820475418536588.Spec : Prop :=
  ∀ n, (P4803820475418536588.a n : ℤ) = A185907 (n + 1)

end A185907

/-! ## A185907.P15469235524318304723

`C(C(2, A115296(n)), 2)`
-/

namespace A185907.P15469235524318304723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A115296 n).toNat) 2

end

end A185907.P15469235524318304723

namespace A185907

/-- `C(C(2, A115296(n)), 2)` -/
def P15469235524318304723.Spec : Prop :=
  ∀ n, (P15469235524318304723.a n : ℤ) = A185907 (n + 1)

end A185907

/-! ## A185907.P4989044040063547861

`C(C(2, A238341(n)), 2)`
-/

namespace A185907.P4989044040063547861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A238341 n).toNat) 2

end

end A185907.P4989044040063547861

namespace A185907

/-- `C(C(2, A238341(n)), 2)` -/
def P4989044040063547861.Spec : Prop :=
  ∀ n, (P4989044040063547861.a n : ℤ) = A185907 (n + 1)

end A185907

/-! ## A185907.P15785101233807081033

`round(1/A286157(n+1))`
-/

namespace A185907.P15785101233807081033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A286157 (n + 1) : ℚ))

end

end A185907.P15785101233807081033

namespace A185907

/-- `round(1/A286157(n+1))` -/
def P15785101233807081033.Spec : Prop :=
  ∀ n, P15785101233807081033.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P4640633684870463882

`A023531(A286151(n))`
-/

namespace A185907.P4640633684870463882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A286151 n).toNat

end

end A185907.P4640633684870463882

namespace A185907

/-- `A023531(A286151(n))` -/
def P4640633684870463882.Spec : Prop :=
  ∀ n, P4640633684870463882.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P11976737641982968644

`A011371(C(2, A026729(n)))`
-/

namespace A185907.P11976737641982968644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (Nat.choose 2 (A026729 n).toNat)

end

end A185907.P11976737641982968644

namespace A185907

/-- `A011371(C(2, A026729(n)))` -/
def P11976737641982968644.Spec : Prop :=
  ∀ n, P11976737641982968644.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P15814835673565125341

`A002620(C(2, A115296(n)))`
-/

namespace A185907.P15814835673565125341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Nat.choose 2 (A115296 n).toNat)

end

end A185907.P15814835673565125341

namespace A185907

/-- `A002620(C(2, A115296(n)))` -/
def P15814835673565125341.Spec : Prop :=
  ∀ n, P15814835673565125341.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P4176451074596322985

`A000749(C(3, A098158(n)))`
-/

namespace A185907.P4176451074596322985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (Nat.choose 3 (A098158 n).toNat)

end

end A185907.P4176451074596322985

namespace A185907

/-- `A000749(C(3, A098158(n)))` -/
def P4176451074596322985.Spec : Prop :=
  ∀ n, P4176451074596322985.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P15090873268040756284

`A026729(n)*A113704(n)`
-/

namespace A185907.P15090873268040756284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A113704 n

end

end A185907.P15090873268040756284

namespace A185907

/-- `A026729(n)*A113704(n)` -/
def P15090873268040756284.Spec : Prop :=
  ∀ n, P15090873268040756284.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P15332486149311870852

`A087748(n)*A113704(n)`
-/

namespace A185907.P15332486149311870852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 n * A113704 n

end

end A185907.P15332486149311870852

namespace A185907

/-- `A087748(n)*A113704(n)` -/
def P15332486149311870852.Spec : Prop :=
  ∀ n, P15332486149311870852.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P17851661811351330564

`A098158(n)*A113704(n)`
-/

namespace A185907.P17851661811351330564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A113704 n

end

end A185907.P17851661811351330564

namespace A185907

/-- `A098158(n)*A113704(n)` -/
def P17851661811351330564.Spec : Prop :=
  ∀ n, P17851661811351330564.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P10507303661425448744

`A101688(n)*A113704(n)`
-/

namespace A185907.P10507303661425448744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A113704 n

end

end A185907.P10507303661425448744

namespace A185907

/-- `A101688(n)*A113704(n)` -/
def P10507303661425448744.Spec : Prop :=
  ∀ n, P10507303661425448744.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P506638803667747445

`A103633(n)*A113704(n)`
-/

namespace A185907.P506638803667747445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 n * A113704 n

end

end A185907.P506638803667747445

namespace A185907

/-- `A103633(n)*A113704(n)` -/
def P506638803667747445.Spec : Prop :=
  ∀ n, P506638803667747445.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P17616558817766528050

`A106344(n)*A113704(n)`
-/

namespace A185907.P17616558817766528050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106344 n * A113704 n

end

end A185907.P17616558817766528050

namespace A185907

/-- `A106344(n)*A113704(n)` -/
def P17616558817766528050.Spec : Prop :=
  ∀ n, P17616558817766528050.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P4242260753132394703

`A113704(n)*A115296(n)`
-/

namespace A185907.P4242260753132394703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 n * A115296 n

end

end A185907.P4242260753132394703

namespace A185907

/-- `A113704(n)*A115296(n)` -/
def P4242260753132394703.Spec : Prop :=
  ∀ n, P4242260753132394703.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P10700253595273941237

`A113704(n)*A117389(n)`
-/

namespace A185907.P10700253595273941237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 n * A117389 n

end

end A185907.P10700253595273941237

namespace A185907

/-- `A113704(n)*A117389(n)` -/
def P10700253595273941237.Spec : Prop :=
  ∀ n, P10700253595273941237.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P18173643261147940487

`A113704(n)*A127241(n)`
-/

namespace A185907.P18173643261147940487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 n * A127241 n

end

end A185907.P18173643261147940487

namespace A185907

/-- `A113704(n)*A127241(n)` -/
def P18173643261147940487.Spec : Prop :=
  ∀ n, P18173643261147940487.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P16423070516844620463

`A026729(n)*A238341(n)`
-/

namespace A185907.P16423070516844620463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A238341 n

end

end A185907.P16423070516844620463

namespace A185907

/-- `A026729(n)*A238341(n)` -/
def P16423070516844620463.Spec : Prop :=
  ∀ n, P16423070516844620463.a n = A185907 (n + 1)

end A185907

/-! ## A185907.P2543418136599743039

`A026729(n)*A242451(n)`
-/

namespace A185907.P2543418136599743039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A242451 n

end

end A185907.P2543418136599743039

namespace A185907

/-- `A026729(n)*A242451(n)` -/
def P2543418136599743039.Spec : Prop :=
  ∀ n, P2543418136599743039.a n = A185907 (n + 1)

end A185907

/-!
# A185908: Array: T(n,k) = n-1 + min{n,k}, by antidiagonals.

The programs for A185908, the canonical program `A185908.P15290961818141262910` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185908 has offset 1).

The definition of A185908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185908.P5251243239829397984

`A002260(A003983(n+1)+n)`
-/

namespace A185908.P5251243239829397984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A003983 (n + 1) + (n : ℤ)).toNat

end

end A185908.P5251243239829397984

namespace A185908

/-- `A002260(A003983(n+1)+n)` -/
def P5251243239829397984.Spec : Prop :=
  ∀ n, P5251243239829397984.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P15955123744748743153

`A003983(n+1)+A002262(n)`
-/

namespace A185908.P15955123744748743153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + A002262 n

end

end A185908.P15955123744748743153

namespace A185908

/-- `A003983(n+1)+A002262(n)` -/
def P15955123744748743153.Spec : Prop :=
  ∀ n, P15955123744748743153.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P6112802878953925360

`A002262(n)+A004197(n)+1`
-/

namespace A185908.P6112802878953925360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A004197 n + 1)

end

end A185908.P6112802878953925360

namespace A185908

/-- `A002262(n)+A004197(n)+1` -/
def P6112802878953925360.Spec : Prop :=
  ∀ n, P6112802878953925360.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P13131211412464722711

`A002260(A004197(n)+1+n)`
-/

namespace A185908.P13131211412464722711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A004197 n + 1 + (n : ℤ)).toNat

end

end A185908.P13131211412464722711

namespace A185908

/-- `A002260(A004197(n)+1+n)` -/
def P13131211412464722711.Spec : Prop :=
  ∀ n, P13131211412464722711.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P15979372739525681978

`A094727(n+1)-A003984(n)`
-/

namespace A185908.P15979372739525681978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) - A003984 n

end

end A185908.P15979372739525681978

namespace A185908

/-- `A094727(n+1)-A003984(n)` -/
def P15979372739525681978.Spec : Prop :=
  ∀ n, P15979372739525681978.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P13862042565066266485

`A204006(n+1)-A025581(n)`
-/

namespace A185908.P13862042565066266485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) - A025581 n

end

end A185908.P13862042565066266485

namespace A185908

/-- `A204006(n+1)-A025581(n)` -/
def P13862042565066266485.Spec : Prop :=
  ∀ n, P13862042565066266485.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P15570297333071317505

`A108872(n+1)-A051125(n+1)`
-/

namespace A185908.P15570297333071317505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A051125 (n + 1)

end

end A185908.P15570297333071317505

namespace A185908

/-- `A108872(n+1)-A051125(n+1)` -/
def P15570297333071317505.Spec : Prop :=
  ∀ n, P15570297333071317505.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P13146516943598616570

`A002260(A204002(n+1)-1+n)`
-/

namespace A185908.P13146516943598616570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204002 (n + 1) - 1 + (n : ℤ)).toNat

end

end A185908.P13146516943598616570

namespace A185908

/-- `A002260(A204002(n+1)-1+n)` -/
def P13146516943598616570.Spec : Prop :=
  ∀ n, P13146516943598616570.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P15290961818141262910

`A002260(n+1)+val(A036561(n), 6)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185908

/-- `A002260(n+1)+val(A036561(n), 6)` -/
def P15290961818141262910.Spec : Prop :=
  ∀ n, P15290961818141262910.a n = A185908 (n + 1)

theorem P15290961818141262910.correct : P15290961818141262910.Spec := by
  intro n
  simp only [A185908, Nat.add_sub_cancel]

end A185908

/-! ## A185908.P8764302331211790678

`A002262(n)+val(A036561(n), 6)+1`
-/

namespace A185908.P8764302331211790678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1 : ℤ)

end

end A185908.P8764302331211790678

namespace A185908

/-- `A002262(n)+val(A036561(n), 6)+1` -/
def P8764302331211790678.Spec : Prop :=
  ∀ n, P8764302331211790678.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P9608880091695917805

`A003983(n+1)+n-A057944(n)`
-/

namespace A185908.P9608880091695917805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + ((n : ℤ) - A057944 n)

end

end A185908.P9608880091695917805

namespace A185908

/-- `A003983(n+1)+n-A057944(n)` -/
def P9608880091695917805.Spec : Prop :=
  ∀ n, P9608880091695917805.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P2361220188567262933

`A002260(A002260(A106255(n+1))+n)`
-/

namespace A185908.P2361220188567262933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A002260 (A106255 (n + 1)).toNat + (n : ℤ)).toNat

end

end A185908.P2361220188567262933

namespace A185908

/-- `A002260(A002260(A106255(n+1))+n)` -/
def P2361220188567262933.Spec : Prop :=
  ∀ n, P2361220188567262933.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P12966330842150491310

`A002260(A002260(A168281(n+1))+n)`
-/

namespace A185908.P12966330842150491310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A002260 (A168281 (n + 1)).toNat + (n : ℤ)).toNat

end

end A185908.P12966330842150491310

namespace A185908

/-- `A002260(A002260(A168281(n+1))+n)` -/
def P12966330842150491310.Spec : Prop :=
  ∀ n, P12966330842150491310.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P7659422282177714559

`A194258(A001614(n+1))`
-/

namespace A185908.P7659422282177714559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A001614 (n + 1)).toNat

end

end A185908.P7659422282177714559

namespace A185908

/-- `A194258(A001614(n+1))` -/
def P7659422282177714559.Spec : Prop :=
  ∀ n, P7659422282177714559.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P6573513611009860438

`A194258(A133280(n)+1)`
-/

namespace A185908.P6573513611009860438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A133280 n + 1).toNat

end

end A185908.P6573513611009860438

namespace A185908

/-- `A194258(A133280(n)+1)` -/
def P6573513611009860438.Spec : Prop :=
  ∀ n, P6573513611009860438.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P14888859935735324508

`A349520(2*n+1)+A004197(n)`
-/

namespace A185908.P14888859935735324508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * n + 1) + A004197 n

end

end A185908.P14888859935735324508

namespace A185908

/-- `A349520(2*n+1)+A004197(n)` -/
def P14888859935735324508.Spec : Prop :=
  ∀ n, P14888859935735324508.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P12079190830181814108

`A057555(2*n+1)+A004197(n)`
-/

namespace A185908.P12079190830181814108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) + A004197 n

end

end A185908.P12079190830181814108

namespace A185908

/-- `A057555(2*n+1)+A004197(n)` -/
def P12079190830181814108.Spec : Prop :=
  ∀ n, P12079190830181814108.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P5210533092744061244

`A000194(2*n+1)-A023969(2*n+1)*A053188(2*n+1)`
-/

namespace A185908.P5210533092744061244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n + 1) - A023969 (2 * n + 1) * A053188 (2 * n + 1)

end

end A185908.P5210533092744061244

namespace A185908

/-- `A000194(2*n+1)-A023969(2*n+1)*A053188(2*n+1)` -/
def P5210533092744061244.Spec : Prop :=
  ∀ n, P5210533092744061244.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P223197034638811948

`A389648(A185870(n+1))`
-/

namespace A185908.P223197034638811948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389648 (A185870 (n + 1)).toNat

end

end A185908.P223197034638811948

namespace A185908

/-- `A389648(A185870(n+1))` -/
def P223197034638811948.Spec : Prop :=
  ∀ n, P223197034638811948.a n = A185908 (n + 1)

end A185908

/-! ## A185908.P17952964034245295051

`A226005(A017041(n)+n)/2`
-/

namespace A185908.P17952964034245295051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226005 (A017041 n + (n : ℤ)).toNat : ℚ) / 2

end

end A185908.P17952964034245295051

namespace A185908

/-- `A226005(A017041(n)+n)/2` -/
def P17952964034245295051.Spec : Prop :=
  ∀ n, P17952964034245295051.a n = (A185908 (n + 1) : ℚ)

end A185908

/-!
# A185909: Accumulation array of A185908, by antidiagonals.

The programs for A185909, there is no canonical definition to state claims against.
-/

/-! ## A185909.P3795063088529247606

`A271916(n+1)+A127779(n+1)`
-/

namespace A185909.P3795063088529247606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + A127779 (n + 1)

end

end A185909.P3795063088529247606

/-! ## A185909.P12513789179993745633

`A271916(n+1)+A104633(A038722(n+1))`
-/

namespace A185909.P12513789179993745633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + A104633 (A038722 (n + 1)).toNat

end

end A185909.P12513789179993745633

/-! ## A185909.P10082936838305024491

`A127779(n+1)+A107985(n)-A185958(n+1)`
-/

namespace A185909.P10082936838305024491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (n + 1) + (A107985 n - A185958 (n + 1))

end

end A185909.P10082936838305024491

/-! ## A185909.P1334607112354409726

`A002260(n+1)*A193974(n)-A185958(n+1)`
-/

namespace A185909.P1334607112354409726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A193974 n - A185958 (n + 1)

end

end A185909.P1334607112354409726

/-! ## A185909.P4424909186732489003

`(A002262(n)+1)*A193974(n)-A185958(n+1)`
-/

namespace A185909.P4424909186732489003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A193974 n - A185958 (n + 1)

end

end A185909.P4424909186732489003

/-! ## A185909.P2294378891744680642

`A057555(Δ[n²])*A193974(n)-A185958(n+1)`
-/

namespace A185909.P2294378891744680642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A193974 n - A185958 (n + 1)

end

end A185909.P2294378891744680642

/-! ## A185909.P13554804745340573822

`A097285(Δ[n²])*A193974(n)-A185958(n+1)`
-/

namespace A185909.P13554804745340573822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A193974 n - A185958 (n + 1)

end

end A185909.P13554804745340573822

/-! ## A185909.P5262432352125859119

`abs(A140756(n+1)*A193974(n))-A185958(n+1)`
-/

namespace A185909.P5262432352125859119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1) * A193974 n| - A185958 (n + 1)

end

end A185909.P5262432352125859119

/-! ## A185909.P7772421314452984879

`A110769(n+1)+A141419(n+1)-A185958(n+1)`
-/

namespace A185909.P7772421314452984879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 (n + 1) + (A141419 (n + 1) - A185958 (n + 1))

end

end A185909.P7772421314452984879

/-! ## A185909.P12529016129552379590

`A000005(A059268(n))*A193974(n)-A185958(n+1)`
-/

namespace A185909.P12529016129552379590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A193974 n - A185958 (n + 1)

end

end A185909.P12529016129552379590

/-!
# A185910: Array: T(n,k) = n^2 + k - 1, by antidiagonals.

The programs for A185910, the canonical program `A185910.P2173537638597524682` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185910 has offset 1).

The definition of A185910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185910.P5807956506480987608

`A133819(n+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A185910.P5807956506480987608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A185910.P5807956506480987608

namespace A185910

/-- `A133819(n+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P5807956506480987608.Spec : Prop :=
  ∀ n, P5807956506480987608.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P11854934103414397311

`A002260(n+1)²+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A185910.P11854934103414397311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A185910.P11854934103414397311

namespace A185910

/-- `A002260(n+1)²+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P11854934103414397311.Spec : Prop :=
  ∀ n, P11854934103414397311.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P2173537638597524682

`A133819(n+1)+A025581(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185910

/-- `A133819(n+1)+A025581(n)` -/
def P2173537638597524682.Spec : Prop :=
  ∀ n, P2173537638597524682.a n = A185910 (n + 1)

theorem P2173537638597524682.correct : P2173537638597524682.Spec := by
  intro n
  simp only [A185910, Nat.add_sub_cancel]

end A185910

/-! ## A185910.P5719106914538387455

`A143844(n)+A094727(n+1)`
-/

namespace A185910.P5719106914538387455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A094727 (n + 1)

end

end A185910.P5719106914538387455

namespace A185910

/-- `A143844(n)+A094727(n+1)` -/
def P5719106914538387455.Spec : Prop :=
  ∀ n, P5719106914538387455.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P4132245083949706771

`A223544(n+1)+A176270(n)`
-/

namespace A185910.P4132245083949706771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + A176270 n

end

end A185910.P4132245083949706771

namespace A185910

/-- `A223544(n+1)+A176270(n)` -/
def P4132245083949706771.Spec : Prop :=
  ∀ n, P4132245083949706771.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P7225403518783862760

`A075362(n+1)-A004247(n)`
-/

namespace A185910.P7225403518783862760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A004247 n

end

end A185910.P7225403518783862760

namespace A185910

/-- `A075362(n+1)-A004247(n)` -/
def P7225403518783862760.Spec : Prop :=
  ∀ n, P7225403518783862760.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P13812891006618814082

`A130269(n+1)-A049780(n)`
-/

namespace A185910.P13812891006618814082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130269 (n + 1) - A049780 n

end

end A185910.P13812891006618814082

namespace A185910

/-- `A130269(n+1)-A049780(n)` -/
def P13812891006618814082.Spec : Prop :=
  ∀ n, P13812891006618814082.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P4375283120456042228

`A215630(n+1)-A091435(n)`
-/

namespace A185910.P4375283120456042228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) - A091435 n

end

end A185910.P4375283120456042228

namespace A185910

/-- `A215630(n+1)-A091435(n)` -/
def P4375283120456042228.Spec : Prop :=
  ∀ n, P4375283120456042228.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P15260254447361744962

`A004201(n+1)-A335821(n)`
-/

namespace A185910.P15260254447361744962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - A335821 n

end

end A185910.P15260254447361744962

namespace A185910

/-- `A004201(n+1)-A335821(n)` -/
def P15260254447361744962.Spec : Prop :=
  ∀ n, P15260254447361744962.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P6995268222433749983

`A025581(n)+A002260(n+1)²`
-/

namespace A185910.P6995268222433749983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A002260 (n + 1) ^ 2

end

end A185910.P6995268222433749983

namespace A185910

/-- `A025581(n)+A002260(n+1)²` -/
def P6995268222433749983.Spec : Prop :=
  ∀ n, P6995268222433749983.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P610649622342593086

`A025581(n)+(A002262(n)+1)²`
-/

namespace A185910.P610649622342593086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A002262 n + 1) ^ 2

end

end A185910.P610649622342593086

namespace A185910

/-- `A025581(n)+(A002262(n)+1)²` -/
def P610649622342593086.Spec : Prop :=
  ∀ n, P610649622342593086.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P6916212647451717771

`A002262(n)²+A051162(n)+1`
-/

namespace A185910.P6916212647451717771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (A051162 n + 1)

end

end A185910.P6916212647451717771

namespace A185910

/-- `A002262(n)²+A051162(n)+1` -/
def P6916212647451717771.Spec : Prop :=
  ∀ n, P6916212647451717771.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P8447142672530416597

`A094727(n+1)+A002262(n)²`
-/

namespace A185910.P8447142672530416597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A002262 n ^ 2

end

end A185910.P8447142672530416597

namespace A185910

/-- `A094727(n+1)+A002262(n)²` -/
def P8447142672530416597.Spec : Prop :=
  ∀ n, P8447142672530416597.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P9372858766791968374

`A025581(n)+A140756(n+1)²`
-/

namespace A185910.P9372858766791968374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A140756 (n + 1) ^ 2

end

end A185910.P9372858766791968374

namespace A185910

/-- `A025581(n)+A140756(n+1)²` -/
def P9372858766791968374.Spec : Prop :=
  ∀ n, P9372858766791968374.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P332542014105036641

`∑[A198954(n)]-2*A049780(n)`
-/

namespace A185910.P332542014105036641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A049780 n

end

end A185910.P332542014105036641

namespace A185910

/-- `∑[A198954(n)]-2*A049780(n)` -/
def P332542014105036641.Spec : Prop :=
  ∀ n, P332542014105036641.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P17148493052433906785

`A070216(n+1)-A004201(n+1)`
-/

namespace A185910.P17148493052433906785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) - A004201 (n + 1)

end

end A185910.P17148493052433906785

namespace A185910

/-- `A070216(n+1)-A004201(n+1)` -/
def P17148493052433906785.Spec : Prop :=
  ∀ n, P17148493052433906785.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P11488783006823344911

`A092283(n+1)-A002260(n+1)`
-/

namespace A185910.P11488783006823344911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092283 (n + 1) - A002260 (n + 1)

end

end A185910.P11488783006823344911

namespace A185910

/-- `A092283(n+1)-A002260(n+1)` -/
def P11488783006823344911.Spec : Prop :=
  ∀ n, P11488783006823344911.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P8429008630769131430

`A162610(n+1)-A094053(n+1)`
-/

namespace A185910.P8429008630769131430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) - A094053 (n + 1)

end

end A185910.P8429008630769131430

namespace A185910

/-- `A162610(n+1)-A094053(n+1)` -/
def P8429008630769131430.Spec : Prop :=
  ∀ n, P8429008630769131430.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P16079280428996627621

`A217575(n+1)-A094728(n+1)`
-/

namespace A185910.P16079280428996627621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - A094728 (n + 1)

end

end A185910.P16079280428996627621

namespace A185910

/-- `A217575(n+1)-A094728(n+1)` -/
def P16079280428996627621.Spec : Prop :=
  ∀ n, P16079280428996627621.a n = A185910 (n + 1)

end A185910

/-! ## A185910.P16905894243873627643

`A265129(n+1)-A185877(n+1)`
-/

namespace A185910.P16905894243873627643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A185877 (n + 1)

end

end A185910.P16905894243873627643

namespace A185910

/-- `A265129(n+1)-A185877(n+1)` -/
def P16905894243873627643.Spec : Prop :=
  ∀ n, P16905894243873627643.a n = A185910 (n + 1)

end A185910

/-!
# A185911: Weight array of A185910, by antidiagonals.

The programs for A185911, the canonical program `A185911.P10711686436472147663` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185911 has offset 1).

The definition of A185911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185911.P13133487240663987579

`A198954(A271439(n))`
-/

namespace A185911.P13133487240663987579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A271439 n).toNat

end

end A185911.P13133487240663987579

namespace A185911

/-- `A198954(A271439(n))` -/
def P13133487240663987579.Spec : Prop :=
  ∀ n, P13133487240663987579.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P15290978602846350653

`A082985(n)*A103451(n)`
-/

namespace A185911.P15290978602846350653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 n * A103451 n

end

end A185911.P15290978602846350653

namespace A185911

/-- `A082985(n)*A103451(n)` -/
def P15290978602846350653.Spec : Prop :=
  ∀ n, P15290978602846350653.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P1565033865016331740

`A091042(n)*A103451(n)`
-/

namespace A185911.P1565033865016331740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n * A103451 n

end

end A185911.P1565033865016331740

namespace A185911

/-- `A091042(n)*A103451(n)` -/
def P1565033865016331740.Spec : Prop :=
  ∀ n, P1565033865016331740.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P11237194363505287765

`A103451(n)*A112351(n)`
-/

namespace A185911.P11237194363505287765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A112351 n

end

end A185911.P11237194363505287765

namespace A185911

/-- `A103451(n)*A112351(n)` -/
def P11237194363505287765.Spec : Prop :=
  ∀ n, P11237194363505287765.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P11455693218030613664

`A103451(n)*A376102(n)`
-/

namespace A185911.P11455693218030613664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A376102 n

end

end A185911.P11455693218030613664

namespace A185911

/-- `A103451(n)*A376102(n)` -/
def P11455693218030613664.Spec : Prop :=
  ∀ n, P11455693218030613664.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P1194739348427790557

`lcm(A082985(n), A103452(n))`
-/

namespace A185911.P1194739348427790557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082985 n) (A103452 n)

end

end A185911.P1194739348427790557

namespace A185911

/-- `lcm(A082985(n), A103452(n))` -/
def P1194739348427790557.Spec : Prop :=
  ∀ n, (P1194739348427790557.a n : ℤ) = A185911 (n + 1)

end A185911

/-! ## A185911.P10711686436472147663

`A127775(n+1)+A073424(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A185911

/-- `A127775(n+1)+A073424(n)` -/
def P10711686436472147663.Spec : Prop :=
  ∀ n, P10711686436472147663.a n = A185911 (n + 1)

theorem P10711686436472147663.correct : P10711686436472147663.Spec := by
  intro n
  simp only [A185911, Nat.add_sub_cancel]

end A185911

/-! ## A185911.P13519509178081439302

`A029637(n+1)*A103451(n)`
-/

namespace A185911.P13519509178081439302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (n + 1) * A103451 n

end

end A185911.P13519509178081439302

namespace A185911

/-- `A029637(n+1)*A103451(n)` -/
def P13519509178081439302.Spec : Prop :=
  ∀ n, P13519509178081439302.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P18029145146896538143

`A103451(n)*A116666(n+1)`
-/

namespace A185911.P18029145146896538143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A116666 (n + 1)

end

end A185911.P18029145146896538143

namespace A185911

/-- `A103451(n)*A116666(n+1)` -/
def P18029145146896538143.Spec : Prop :=
  ∀ n, P18029145146896538143.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P9123174296118471225

`A103451(n)*A125704(n+1)`
-/

namespace A185911.P9123174296118471225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A125704 (n + 1)

end

end A185911.P9123174296118471225

namespace A185911

/-- `A103451(n)*A125704(n+1)` -/
def P9123174296118471225.Spec : Prop :=
  ∀ n, P9123174296118471225.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P17339248793491626539

`A103451(n)*A134560(n+1)`
-/

namespace A185911.P17339248793491626539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A134560 (n + 1)

end

end A185911.P17339248793491626539

namespace A185911

/-- `A103451(n)*A134560(n+1)` -/
def P17339248793491626539.Spec : Prop :=
  ∀ n, P17339248793491626539.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P8568250412803842273

`A103451(n)*A158405(n+1)`
-/

namespace A185911.P8568250412803842273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A158405 (n + 1)

end

end A185911.P8568250412803842273

namespace A185911

/-- `A103451(n)*A158405(n+1)` -/
def P8568250412803842273.Spec : Prop :=
  ∀ n, P8568250412803842273.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P1618013440945932777

`A103451(n)*A209572(n+1)`
-/

namespace A185911.P1618013440945932777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A209572 (n + 1)

end

end A185911.P1618013440945932777

namespace A185911

/-- `A103451(n)*A209572(n+1)` -/
def P1618013440945932777.Spec : Prop :=
  ∀ n, P1618013440945932777.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P15049207704258249898

`A103451(n)*A210224(n+1)`
-/

namespace A185911.P15049207704258249898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A210224 (n + 1)

end

end A185911.P15049207704258249898

namespace A185911

/-- `A103451(n)*A210224(n+1)` -/
def P15049207704258249898.Spec : Prop :=
  ∀ n, P15049207704258249898.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P7495201407040210006

`A103451(n)*A258993(n+1)`
-/

namespace A185911.P7495201407040210006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A258993 (n + 1)

end

end A185911.P7495201407040210006

namespace A185911

/-- `A103451(n)*A258993(n+1)` -/
def P7495201407040210006.Spec : Prop :=
  ∀ n, P7495201407040210006.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P11433091666887750452

`2*A127648(n)-A103452(n)`
-/

namespace A185911.P11433091666887750452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127648 n - A103452 n

end

end A185911.P11433091666887750452

namespace A185911

/-- `2*A127648(n)-A103452(n)` -/
def P11433091666887750452.Spec : Prop :=
  ∀ n, P11433091666887750452.a n = A185911 (n + 1)

end A185911

/-! ## A185911.P1881729827492024935

`gcd(A073423(n), A127775(n+1))`
-/

namespace A185911.P1881729827492024935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A127775 (n + 1))

end

end A185911.P1881729827492024935

namespace A185911

/-- `gcd(A073423(n), A127775(n+1))` -/
def P1881729827492024935.Spec : Prop :=
  ∀ n, (P1881729827492024935.a n : ℤ) = A185911 (n + 1)

end A185911

/-! ## A185911.P14506291003807075473

`lcm(A098599(n), A134560(n+1))`
-/

namespace A185911.P14506291003807075473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098599 n) (A134560 (n + 1))

end

end A185911.P14506291003807075473

namespace A185911

/-- `lcm(A098599(n), A134560(n+1))` -/
def P14506291003807075473.Spec : Prop :=
  ∀ n, (P14506291003807075473.a n : ℤ) = A185911 (n + 1)

end A185911

/-! ## A185911.P16646453192696784938

`A073424(n)+Δ[A003056(n)²]`
-/

namespace A185911.P16646453192696784938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + (f1 (n + 1) - f1 n)

end

end A185911.P16646453192696784938

namespace A185911

/-- `A073424(n)+Δ[A003056(n)²]` -/
def P16646453192696784938.Spec : Prop :=
  ∀ n, P16646453192696784938.a n = A185911 (n + 1)

end A185911

/-!
# A185914: Array: T(n,k)=k-n+1 for k>=n; T(n,k)=0 for k

The programs for A185914, the canonical program `A185914.P13255273733279209154` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185914 has offset 1).

The definition of A185914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185914.P15066925865318870578

`log2(ceil(2^(A038722(n+1)-n)))`
-/

namespace A185914.P15066925865318870578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌈(2 : ℚ) ^ (A038722 (n + 1) - (n : ℤ) : ℤ)⌉ : ℝ)

end

end A185914.P15066925865318870578

namespace A185914

/-- `log2(ceil(2^(A038722(n+1)-n)))` -/
def P15066925865318870578.Spec : Prop :=
  ∀ n, P15066925865318870578.a n = (A185914 (n + 1) : ℝ)

end A185914

/-! ## A185914.P4215509010397774851

`C(comp[∑[n]]-n, 2)-n-A053616(n)`
-/

namespace A185914.P4215509010397774851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - A053616 n

end

end A185914.P4215509010397774851

namespace A185914

/-- `C(comp[∑[n]]-n, 2)-n-A053616(n)` -/
def P4215509010397774851.Spec : Prop :=
  ∀ n, P4215509010397774851.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P13255273733279209154

`A004736(n+1)-A053616(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A185914

/-- `A004736(n+1)-A053616(n)` -/
def P13255273733279209154.Spec : Prop :=
  ∀ n, P13255273733279209154.a n = A185914 (n + 1)

theorem P13255273733279209154.correct : P13255273733279209154.Spec := by
  intro n
  simp only [A185914, Nat.add_sub_cancel]

end A185914

/-! ## A185914.P4607966168709592080

`A025581(n)+1-A053616(n)`
-/

namespace A185914.P4607966168709592080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (1 - A053616 n)

end

end A185914.P4607966168709592080

namespace A185914

/-- `A025581(n)+1-A053616(n)` -/
def P4607966168709592080.Spec : Prop :=
  ∀ n, P4607966168709592080.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P2154427738624846470

`A077605(n+1)*A143182(n)`
-/

namespace A185914.P2154427738624846470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A143182 n

end

end A185914.P2154427738624846470

namespace A185914

/-- `A077605(n+1)*A143182(n)` -/
def P2154427738624846470.Spec : Prop :=
  ∀ n, P2154427738624846470.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P6806713771466088753

`(1-A340507(n))*A143182(n)`
-/

namespace A185914.P6806713771466088753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A340507 n) * A143182 n

end

end A185914.P6806713771466088753

namespace A185914

/-- `(1-A340507(n))*A143182(n)` -/
def P6806713771466088753.Spec : Prop :=
  ∀ n, P6806713771466088753.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P9803707352983724169

`(A278818(n)-n)*char[A245300(n)]`
-/

namespace A185914.P9803707352983724169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278818 n - (n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A185914.P9803707352983724169

namespace A185914

/-- `(A278818(n)-n)*char[A245300(n)]` -/
def P9803707352983724169.Spec : Prop :=
  ∀ n, P9803707352983724169.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P5810768482713257080

`(A049581(n)+1)*A077605(n+1)`
-/

namespace A185914.P5810768482713257080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049581 n + 1) * A077605 (n + 1)

end

end A185914.P5810768482713257080

namespace A185914

/-- `(A049581(n)+1)*A077605(n+1)` -/
def P5810768482713257080.Spec : Prop :=
  ∀ n, P5810768482713257080.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P125726767931226904

`(A114327(n)+1)*A077605(n+1)`
-/

namespace A185914.P125726767931226904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114327 n + 1) * A077605 (n + 1)

end

end A185914.P125726767931226904

namespace A185914

/-- `(A114327(n)+1)*A077605(n+1)` -/
def P125726767931226904.Spec : Prop :=
  ∀ n, P125726767931226904.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P2227254246222609684

`A077605(n+1)*A130517(n+1)`
-/

namespace A185914.P2227254246222609684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A130517 (n + 1)

end

end A185914.P2227254246222609684

namespace A185914

/-- `A077605(n+1)*A130517(n+1)` -/
def P2227254246222609684.Spec : Prop :=
  ∀ n, P2227254246222609684.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P4038364570435506489

`(1-A340507(n))*A130517(n+1)`
-/

namespace A185914.P4038364570435506489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A340507 n) * A130517 (n + 1)

end

end A185914.P4038364570435506489

namespace A185914

/-- `(1-A340507(n))*A130517(n+1)` -/
def P4038364570435506489.Spec : Prop :=
  ∀ n, P4038364570435506489.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P9184656638311288209

`C(A130517(n+1), A220073(n+1))`
-/

namespace A185914.P9184656638311288209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130517 (n + 1)).toNat (A220073 (n + 1)).toNat

end

end A185914.P9184656638311288209

namespace A185914

/-- `C(A130517(n+1), A220073(n+1))` -/
def P9184656638311288209.Spec : Prop :=
  ∀ n, (P9184656638311288209.a n : ℤ) = A185914 (n + 1)

end A185914

/-! ## A185914.P15636091419292686675

`A127739(n+1)-(A053616(n)+n)`
-/

namespace A185914.P15636091419292686675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - (A053616 n + (n : ℤ))

end

end A185914.P15636091419292686675

namespace A185914

/-- `A127739(n+1)-(A053616(n)+n)` -/
def P15636091419292686675.Spec : Prop :=
  ∀ n, P15636091419292686675.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P4905988512490881892

`(A130517(n+1)-A056951(n+1))/2`
-/

namespace A185914.P4905988512490881892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130517 (n + 1) - A056951 (n + 1) : ℚ) / 2

end

end A185914.P4905988512490881892

namespace A185914

/-- `(A130517(n+1)-A056951(n+1))/2` -/
def P4905988512490881892.Spec : Prop :=
  ∀ n, P4905988512490881892.a n = (A185914 (n + 1) : ℚ)

end A185914

/-! ## A185914.P13658561653003134209

`(A038722(n+1)-n)*A077605(n+1)`
-/

namespace A185914.P13658561653003134209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038722 (n + 1) - (n : ℤ)) * A077605 (n + 1)

end

end A185914.P13658561653003134209

namespace A185914

/-- `(A038722(n+1)-n)*A077605(n+1)` -/
def P13658561653003134209.Spec : Prop :=
  ∀ n, P13658561653003134209.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P9057541674567949419

`(A130517(n+1)-A049581(n))*A143182(n)`
-/

namespace A185914.P9057541674567949419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130517 (n + 1) - A049581 n) * A143182 n

end

end A185914.P9057541674567949419

namespace A185914

/-- `(A130517(n+1)-A049581(n))*A143182(n)` -/
def P9057541674567949419.Spec : Prop :=
  ∀ n, P9057541674567949419.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P17682513991112877883

`A003991(n+1)/A002260(n+1)-A053616(n)`
-/

namespace A185914.P17682513991112877883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) - (A053616 n : ℚ)

end

end A185914.P17682513991112877883

namespace A185914

/-- `A003991(n+1)/A002260(n+1)-A053616(n)` -/
def P17682513991112877883.Spec : Prop :=
  ∀ n, P17682513991112877883.a n = (A185914 (n + 1) : ℚ)

end A185914

/-! ## A185914.P12318138994142353871

`A128179(A064789(n+1))`
-/

namespace A185914.P12318138994142353871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128179 (A064789 (n + 1)).toNat

end

end A185914.P12318138994142353871

namespace A185914

/-- `A128179(A064789(n+1))` -/
def P12318138994142353871.Spec : Prop :=
  ∀ n, P12318138994142353871.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P13518967398456649826

`A027656(A122196(2*n+1)-1)`
-/

namespace A185914.P13518967398456649826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A122196 (2 * n + 1) - 1).toNat

end

end A185914.P13518967398456649826

namespace A185914

/-- `A027656(A122196(2*n+1)-1)` -/
def P13518967398456649826.Spec : Prop :=
  ∀ n, P13518967398456649826.a n = A185914 (n + 1)

end A185914

/-! ## A185914.P10863061724684744676

`A004737(2*n+1)*A118175(2*n)`
-/

namespace A185914.P10863061724684744676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * n + 1) * A118175 (2 * n)

end

end A185914.P10863061724684744676

namespace A185914

/-- `A004737(2*n+1)*A118175(2*n)` -/
def P10863061724684744676.Spec : Prop :=
  ∀ n, P10863061724684744676.a n = A185914 (n + 1)

end A185914

/-!
# A185915: Accumulation array of A185914, by antidiagonals.

The programs for A185915, there is no canonical definition to state claims against.
-/

/-! ## A185915.P3383916793541313678

`A104633(n+1)-A271916(A080036(n))`
-/

namespace A185915.P3383916793541313678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) - A271916 (A080036 n).toNat

end

end A185915.P3383916793541313678

/-! ## A185915.P16569972129919094387

`A104633(n+1)-A271916(A014132(n+1))`
-/

namespace A185915.P16569972129919094387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) - A271916 (A014132 (n + 1)).toNat

end

end A185915.P16569972129919094387

/-! ## A185915.P14587094040867604178

`A104633(n+1)-A271916(eq[n, A066182(n+1)])`
-/

namespace A185915.P14587094040867604178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) - A271916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185915.P14587094040867604178

/-! ## A185915.P16365486618817117065

`A107985(A007401(n+1))-A185909(A014132(n+1))`
-/

namespace A185915.P16365486618817117065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 (A007401 (n + 1)).toNat - A185909 (A014132 (n + 1)).toNat

end

end A185915.P16365486618817117065

/-! ## A185915.P6530611402396960779

`A322584(A120027(n)*A130321(n))`
-/

namespace A185915.P6530611402396960779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (A120027 n * A130321 n).toNat

end

end A185915.P6530611402396960779

/-!
# A185916: Weight array of A185914, by antidiagonals.

The programs for A185916, the canonical program `A185916.P655898616161062102` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185916 has offset 1).

The definition of A185916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185916.P3626204891890381117

`char[∑[n]]-char[2*(n+1)²]`
-/

namespace A185916.P3626204891890381117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185916.P3626204891890381117

namespace A185916

/-- `char[∑[n]]-char[2*(n+1)²]` -/
def P3626204891890381117.Spec : Prop :=
  ∀ n, P3626204891890381117.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P655898616161062102

`A115359((n-1)%(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A185916

/-- `A115359((n-1)%(n+1))` -/
def P655898616161062102.Spec : Prop :=
  ∀ n, P655898616161062102.a n = A185916 (n + 1)

theorem P655898616161062102.correct : P655898616161062102.Spec := by
  intro n
  simp only [A185916, Nat.add_sub_cancel]

end A185916

/-! ## A185916.P10771329669400134202

`A115359(A061579(n))`
-/

namespace A185916.P10771329669400134202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (A061579 n).toNat

end

end A185916.P10771329669400134202

namespace A185916

/-- `A115359(A061579(n))` -/
def P10771329669400134202.Spec : Prop :=
  ∀ n, P10771329669400134202.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P12655675302142218679

`A115359(n-A057427(n))`
-/

namespace A185916.P12655675302142218679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 ((n : ℤ) - A057427 n).toNat

end

end A185916.P12655675302142218679

namespace A185916

/-- `A115359(n-A057427(n))` -/
def P12655675302142218679.Spec : Prop :=
  ∀ n, P12655675302142218679.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P6545317729299977618

`A323407(A277227(n+1))%2`
-/

namespace A185916.P6545317729299977618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323407 (A277227 (n + 1)).toNat) 2

end

end A185916.P6545317729299977618

namespace A185916

/-- `A323407(A277227(n+1))%2` -/
def P6545317729299977618.Spec : Prop :=
  ∀ n, P6545317729299977618.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P8303717866849973362

`A115359(A289207(n+1))`
-/

namespace A185916.P8303717866849973362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (A289207 (n + 1)).toNat

end

end A185916.P8303717866849973362

namespace A185916

/-- `A115359(A289207(n+1))` -/
def P8303717866849973362.Spec : Prop :=
  ∀ n, P8303717866849973362.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P973504872327398243

`A185917(comp[∑[n]])`
-/

namespace A185916.P973504872327398243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A185916.P973504872327398243

namespace A185916

/-- `A185917(comp[∑[n]])` -/
def P973504872327398243.Spec : Prop :=
  ∀ n, P973504872327398243.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P587398013250371015

`or(A005369(2*n)-A010052(2*n), A005369(2*n))`
-/

namespace A185916.P587398013250371015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 (2 * n) - A010052 (2 * n)) (A005369 (2 * n))

end

end A185916.P587398013250371015

namespace A185916

/-- `or(A005369(2*n)-A010052(2*n), A005369(2*n))` -/
def P587398013250371015.Spec : Prop :=
  ∀ n, P587398013250371015.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P16155939116659501607

`A115359(A289207(2*n)/2)`
-/

namespace A185916.P16155939116659501607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A185916.P16155939116659501607

namespace A185916

/-- `A115359(A289207(2*n)/2)` -/
def P16155939116659501607.Spec : Prop :=
  ∀ n, P16155939116659501607.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P13494598096280744098

`A008683(A087811(A109400(2*n+1)))`
-/

namespace A185916.P13494598096280744098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A087811 (A109400 (2 * n + 1)).toNat).toNat

end

end A185916.P13494598096280744098

namespace A185916

/-- `A008683(A087811(A109400(2*n+1)))` -/
def P13494598096280744098.Spec : Prop :=
  ∀ n, P13494598096280744098.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P7664412789220213158

`A169803(n)*A293051(n)`
-/

namespace A185916.P7664412789220213158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n * A293051 n

end

end A185916.P7664412789220213158

namespace A185916

/-- `A169803(n)*A293051(n)` -/
def P7664412789220213158.Spec : Prop :=
  ∀ n, P7664412789220213158.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P18322992465093541042

`A154271(A286159(n+1)²)*A154271(A286159(n+1))`
-/

namespace A185916.P18322992465093541042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A286159 (n + 1) ^ 2).toNat * A154271 (A286159 (n + 1)).toNat

end

end A185916.P18322992465093541042

namespace A185916

/-- `A154271(A286159(n+1)²)*A154271(A286159(n+1))` -/
def P18322992465093541042.Spec : Prop :=
  ∀ n, P18322992465093541042.a n = A185916 (n + 1)

end A185916

/-! ## A185916.P14091741697856568121

`A326798(2*n)%2`
-/

namespace A185916.P14091741697856568121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326798 (2 * n)) 2

end

end A185916.P14091741697856568121

namespace A185916

/-- `A326798(2*n)%2` -/
def P14091741697856568121.Spec : Prop :=
  ∀ n, P14091741697856568121.a n = A185916 (n + 1)

end A185916

/-!
# A185917: Weight array of max{n,k}, by antidiagonals.

The programs for A185917, the canonical program `A185917.P4328663214748278600` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185917 has offset 1).

The definition of A185917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185917.P822695081216038331

`C(2, A204181(n+1))-1`
-/

namespace A185917.P822695081216038331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A204181 (n + 1)).toNat : ℤ) - 1

end

end A185917.P822695081216038331

namespace A185917

/-- `C(2, A204181(n+1))-1` -/
def P822695081216038331.Spec : Prop :=
  ∀ n, P822695081216038331.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P15430342780903132094

`floor(1/(2-A204242(n+1)))`
-/

namespace A185917.P15430342780903132094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (2 - A204242 (n + 1) : ℚ)⌋

end

end A185917.P15430342780903132094

namespace A185917

/-- `floor(1/(2-A204242(n+1)))` -/
def P15430342780903132094.Spec : Prop :=
  ∀ n, P15430342780903132094.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P4017551681300836703

`A185916(A083920(n)+1)`
-/

namespace A185917.P4017551681300836703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A083920 n + 1).toNat

end

end A185917.P4017551681300836703

namespace A185917

/-- `A185916(A083920(n)+1)` -/
def P4017551681300836703.Spec : Prop :=
  ∀ n, P4017551681300836703.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P8036590494499408283

`A185916(A122797(n+1))`
-/

namespace A185917.P8036590494499408283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A122797 (n + 1)).toNat

end

end A185917.P8036590494499408283

namespace A185917

/-- `A185916(A122797(n+1))` -/
def P8036590494499408283.Spec : Prop :=
  ∀ n, P8036590494499408283.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P18440980684142136087

`A134824(A204179(n+1))`
-/

namespace A185917.P18440980684142136087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A204179 (n + 1)).toNat

end

end A185917.P18440980684142136087

namespace A185917

/-- `A134824(A204179(n+1))` -/
def P18440980684142136087.Spec : Prop :=
  ∀ n, P18440980684142136087.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P13054488414798080279

`A185916(A271439(n)+1)`
-/

namespace A185917.P13054488414798080279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A271439 n + 1).toNat

end

end A185917.P13054488414798080279

namespace A185917

/-- `A185916(A271439(n)+1)` -/
def P13054488414798080279.Spec : Prop :=
  ∀ n, P13054488414798080279.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P1195069700167482689

`A103451(n)-A000007(A157654(n))`
-/

namespace A185917.P1195069700167482689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n - A000007 (A157654 n).toNat

end

end A185917.P1195069700167482689

namespace A185917

/-- `A103451(n)-A000007(A157654(n))` -/
def P1195069700167482689.Spec : Prop :=
  ∀ n, P1195069700167482689.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P17112762677627080201

`A152602(n)%2-A000007(A157654(n))`
-/

namespace A185917.P17112762677627080201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152602 n) 2 - A000007 (A157654 n).toNat

end

end A185917.P17112762677627080201

namespace A185917

/-- `A152602(n)%2-A000007(A157654(n))` -/
def P17112762677627080201.Spec : Prop :=
  ∀ n, P17112762677627080201.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P5993099091888379947

`floor(1/A008288(n))-A000007(A157654(n))`
-/

namespace A185917.P5993099091888379947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A008288 n : ℚ)⌋ - A000007 (A157654 n).toNat

end

end A185917.P5993099091888379947

namespace A185917

/-- `floor(1/A008288(n))-A000007(A157654(n))` -/
def P5993099091888379947.Spec : Prop :=
  ∀ n, P5993099091888379947.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P12251817706277396630

`floor(1/A026374(n))-A000007(A157654(n))`
-/

namespace A185917.P12251817706277396630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A026374 n : ℚ)⌋ - A000007 (A157654 n).toNat

end

end A185917.P12251817706277396630

namespace A185917

/-- `floor(1/A026374(n))-A000007(A157654(n))` -/
def P12251817706277396630.Spec : Prop :=
  ∀ n, P12251817706277396630.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P10050855665497905986

`floor(1/A048004(n))-A000007(A157654(n))`
-/

namespace A185917.P10050855665497905986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A048004 n : ℚ)⌋ - A000007 (A157654 n).toNat

end

end A185917.P10050855665497905986

namespace A185917

/-- `floor(1/A048004(n))-A000007(A157654(n))` -/
def P10050855665497905986.Spec : Prop :=
  ∀ n, P10050855665497905986.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P14380265091812320629

`C(2, A048720(n)+2)-A000007(A157654(n))`
-/

namespace A185917.P14380265091812320629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A048720 n + 2).toNat : ℤ) - A000007 (A157654 n).toNat

end

end A185917.P14380265091812320629

namespace A185917

/-- `C(2, A048720(n)+2)-A000007(A157654(n))` -/
def P14380265091812320629.Spec : Prop :=
  ∀ n, P14380265091812320629.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P4328663214748278600

`A010054(n+1)+A010054(n)-A003982(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A185917

/-- `A010054(n+1)+A010054(n)-A003982(n)` -/
def P4328663214748278600.Spec : Prop :=
  ∀ n, P4328663214748278600.a n = A185917 (n + 1)

theorem P4328663214748278600.correct : P4328663214748278600.Spec := by
  intro n
  simp only [A185917, Nat.add_sub_cancel]

end A185917

/-! ## A185917.P1174053562773838205

`A000007(A048720(n))-A000007(A157654(n))`
-/

namespace A185917.P1174053562773838205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048720 n).toNat - A000007 (A157654 n).toNat

end

end A185917.P1174053562773838205

namespace A185917

/-- `A000007(A048720(n))-A000007(A157654(n))` -/
def P1174053562773838205.Spec : Prop :=
  ∀ n, P1174053562773838205.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P14994848014394610551

`A103452(A286150(n))`
-/

namespace A185917.P14994848014394610551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (A286150 n).toNat

end

end A185917.P14994848014394610551

namespace A185917

/-- `A103452(A286150(n))` -/
def P14994848014394610551.Spec : Prop :=
  ∀ n, P14994848014394610551.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P5135630180636742315

`2*A103451(n)-A103451(A286151(n))`
-/

namespace A185917.P5135630180636742315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103451 n - A103451 (A286151 n).toNat

end

end A185917.P5135630180636742315

namespace A185917

/-- `2*A103451(n)-A103451(A286151(n))` -/
def P5135630180636742315.Spec : Prop :=
  ∀ n, P5135630180636742315.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P6072491169555465465

`A008683(28*(n+1))^(A007318(n)-1)-A000007(A157654(n))`
-/

namespace A185917.P6072491169555465465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (28 * (n + 1)) : ℚ) ^ (A007318 n - 1 : ℤ) - (A000007 (A157654 n).toNat : ℚ)

end

end A185917.P6072491169555465465

namespace A185917

/-- `A008683(28*(n+1))^(A007318(n)-1)-A000007(A157654(n))` -/
def P6072491169555465465.Spec : Prop :=
  ∀ n, P6072491169555465465.a n = (A185917 (n + 1) : ℚ)

end A185917

/-! ## A185917.P17532039955431990853

`A185916(A185870(n+1)-A185911(n+1))`
-/

namespace A185917.P17532039955431990853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A185870 (n + 1) - A185911 (n + 1)).toNat

end

end A185917.P17532039955431990853

namespace A185917

/-- `A185916(A185870(n+1)-A185911(n+1))` -/
def P17532039955431990853.Spec : Prop :=
  ∀ n, P17532039955431990853.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P18170179361478443402

`A009531(A204242(n+1))`
-/

namespace A185917.P18170179361478443402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A204242 (n + 1)).toNat

end

end A185917.P18170179361478443402

namespace A185917

/-- `A009531(A204242(n+1))` -/
def P18170179361478443402.Spec : Prop :=
  ∀ n, P18170179361478443402.a n = A185917 (n + 1)

end A185917

/-! ## A185917.P18282692092628321096

`A165747(A165727(n))^A165746(n)`
-/

namespace A185917.P18282692092628321096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165747 (A165727 n).toNat : ℚ) ^ (A165746 n : ℤ)

end

end A185917.P18282692092628321096

namespace A185917

/-- `A165747(A165727(n))^A165746(n)` -/
def P18282692092628321096.Spec : Prop :=
  ∀ n, P18282692092628321096.a n = (A185917 (n + 1) : ℚ)

end A185917

/-!
# A185918: a(n) = 12*n^2 - 2*n - 1.

The programs for A185918, the canonical program `A185918.P12744030162887049850` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185918 has offset 0).

The definition of A185918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²-2*n-1` (program `A185918.P12744030162887049850`, by `A185918.P12744030162887049850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185918.P12744030162887049850

`12*n²-2*n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185918

/-- `12*n²-2*n-1` -/
def P12744030162887049850.Spec : Prop :=
  ∀ n, P12744030162887049850.a n = A185918 n

theorem P12744030162887049850.correct : P12744030162887049850.Spec := by
  intro n
  simp only [A185918]

end A185918

/-! ## A185918.P14924594325685414042

`∑[a(n-1)+24]` with `a(0)=-1, a(1)=10`
-/

namespace A185918.P14924594325685414042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 10] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185918.P14924594325685414042

namespace A185918

/-- `∑[a(n-1)+24]` -/
def P14924594325685414042.Spec : Prop :=
  ∀ n, P14924594325685414042.a n = A185918 n

end A185918

/-! ## A185918.P2451055862220535955

`∑[record[A298036(n)-2]]`
-/

namespace A185918.P2451055862220535955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185918.P2451055862220535955

namespace A185918

/-- `∑[record[A298036(n)-2]]` -/
def P2451055862220535955.Spec : Prop :=
  ∀ n, P2451055862220535955.a n = A185918 n

end A185918

/-! ## A185918.P7745860116088644884

`Δ[A141530(n)-(1-n)²]`
-/

namespace A185918.P7745860116088644884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 n - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185918.P7745860116088644884

namespace A185918

/-- `Δ[A141530(n)-(1-n)²]` -/
def P7745860116088644884.Spec : Prop :=
  ∀ n, P7745860116088644884.a n = A185918 n

end A185918

/-! ## A185918.P1647711279589793237

`Δ[Δ[A067998(n)²]-A067998(n)]`
-/

namespace A185918.P1647711279589793237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A067998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185918.P1647711279589793237

namespace A185918

/-- `Δ[Δ[A067998(n)²]-A067998(n)]` -/
def P1647711279589793237.Spec : Prop :=
  ∀ n, P1647711279589793237.a n = A185918 n

end A185918

/-! ## A185918.P3572114250186147053

`record[A154615(n)-A325657(n+1)]`
-/

namespace A185918.P3572114250186147053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154615 n - A325657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185918.P3572114250186147053

namespace A185918

/-- `record[A154615(n)-A325657(n+1)]` -/
def P3572114250186147053.Spec : Prop :=
  ∀ n, P3572114250186147053.a n = A185918 n

end A185918

/-!
# A185919: Number of (n+1)X2 0..3 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185919, there is no canonical definition to state claims against.
-/

/-! ## A185919.P4070174232705801165

`A185923(∑[n]+1)`
-/

namespace A185919.P4070174232705801165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185919.P4070174232705801165

/-! ## A185919.P2908334846298967888

`A205281(∑[n]+1)`
-/

namespace A185919.P2908334846298967888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185919.P2908334846298967888

/-! ## A185919.P1954160857873032427

`lcm(2, A185923(A000124(n)))`
-/

namespace A185919.P1954160857873032427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185923 (A000124 n).toNat)

end

end A185919.P1954160857873032427

/-! ## A185919.P17953124221930620823

`record[A205281(∑[A057979(n)])]`
-/

namespace A185919.P17953124221930620823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185919.P17953124221930620823

/-! ## A185919.P5560781862120210590

`record[A205281(A114091(n+1))]`
-/

namespace A185919.P5560781862120210590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185919.P5560781862120210590

/-!
# A185920: Number of (n+1)X3 0..3 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185920, there is no canonical definition to state claims against.
-/

/-! ## A185920.P5525541857482043021

`A185923(∑[n+1]+2)`
-/

namespace A185920.P5525541857482043021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185923 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185920.P5525541857482043021

/-! ## A185920.P1859614618892359951

`record[A185923(A114091(n+1)+1)]`
-/

namespace A185920.P1859614618892359951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185923 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185920.P1859614618892359951

/-! ## A185920.P1707161503299044963

`record[A010054(n)*A185923(n+2)]`
-/

namespace A185920.P1707161503299044963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185923 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185920.P1707161503299044963

/-! ## A185920.P11229722969535093922

`record[A033806(n)*A185923(n+2)]`
-/

namespace A185920.P11229722969535093922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 n * A185923 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185920.P11229722969535093922

/-!
# A185921: Number of (n+1)X4 0..3 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185921, there is no canonical definition to state claims against.
-/

/-! ## A185921.P16853260419548482519

`A185923(∑[n+2]+4)`
-/

namespace A185921.P16853260419548482519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185923 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185921.P16853260419548482519

/-!
# A185922: 

The programs for A185922, there is no canonical definition to state claims against.
-/

/-! ## A185922.P15949136623369666185

`A185923(eq[3, A193592(n)])`
-/

namespace A185922.P15949136623369666185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185922.P15949136623369666185

/-!
# A185924: 

The programs for A185924, there is no canonical definition to state claims against.
-/

/-! ## A185924.P14233064046996793505

`A185933((n+1)²+n²)`
-/

namespace A185924.P14233064046996793505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 ((n + 1) ^ 2 + n ^ 2)

end

end A185924.P14233064046996793505

/-!
# A185925: Number of (n+1) X 2 0..3 arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185925, there is no canonical definition to state claims against.
-/

/-! ## A185925.P5750445524377298588

`A185933(∑[n]+1)`
-/

namespace A185925.P5750445524377298588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185925.P5750445524377298588

/-! ## A185925.P12436299164903513722

`lcm(2, A185933(A000124(n)))`
-/

namespace A185925.P12436299164903513722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185933 (A000124 n).toNat)

end

end A185925.P12436299164903513722

/-! ## A185925.P5400122376760273493

`record[root(A185933(n+1), A185946(n))]`
-/

namespace A185925.P5400122376760273493
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185933 (n + 1) : ℝ) ^ (1 / (A185946 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185925.P5400122376760273493

/-! ## A185925.P13788597143762259153

`record[A185916(n+1)*A185933(n+1)]`
-/

namespace A185925.P13788597143762259153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (n + 1) * A185933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185925.P13788597143762259153

/-! ## A185925.P9331018615436695501

`record[A185917(n+1)*A185933(n+1)]`
-/

namespace A185925.P9331018615436695501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (n + 1) * A185933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185925.P9331018615436695501

/-!
# A185926: Number of (n+1)X3 0..3 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185926, there is no canonical definition to state claims against.
-/

/-! ## A185926.P6877671413159766891

`A185933(∑[n+1]+2)`
-/

namespace A185926.P6877671413159766891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185926.P6877671413159766891

/-! ## A185926.P7091839105641617693

`record[A185933(A286158(n+1)+2)]`
-/

namespace A185926.P7091839105641617693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (A286158 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185926.P7091839105641617693

/-! ## A185926.P3882789440349459707

`record[gcd(A185933(n+3), A185937(n))]`
-/

namespace A185926.P3882789440349459707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185933 (n + 3)) (A185937 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185926.P3882789440349459707

/-! ## A185926.P5681160457670753168

`record[A185916(n+1)*A185933(n+2)]`
-/

namespace A185926.P5681160457670753168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (n + 1) * A185933 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185926.P5681160457670753168

/-! ## A185926.P7523349462936211510

`record[root(A185933(n+2), A002260(n+1))]`
-/

namespace A185926.P7523349462936211510
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185933 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185926.P7523349462936211510

/-!
# A185927: Number of (n+1)X4 0..3 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185927, there is no canonical definition to state claims against.
-/

/-! ## A185927.P15897910218765923613

`A185933(A167614(n+1))`
-/

namespace A185927.P15897910218765923613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (A167614 (n + 1)).toNat

end

end A185927.P15897910218765923613

/-! ## A185927.P4762361695550691124

`A185933(∑[n+3]+1)`
-/

namespace A185927.P4762361695550691124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185927.P4762361695550691124

/-!
# A185928: Number of (n+1)X5 0..3 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185928, there is no canonical definition to state claims against.
-/

/-! ## A185928.P2478549080149832943

`A185933(A167614(n+2)+1)`
-/

namespace A185928.P2478549080149832943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (A167614 (n + 2) + 1).toNat

end

end A185928.P2478549080149832943

/-! ## A185928.P11721937349376699689

`A185933(A055998(n+2))`
-/

namespace A185928.P11721937349376699689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (A055998 (n + 2)).toNat

end

end A185928.P11721937349376699689

/-! ## A185928.P12716579451373271241

`A185933(A056000(n)+7)`
-/

namespace A185928.P12716579451373271241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (A056000 n + 7).toNat

end

end A185928.P12716579451373271241

/-! ## A185928.P10959096185304630547

`A185933(A046691(n+2)+1)`
-/

namespace A185928.P10959096185304630547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (A046691 (n + 2) + 1).toNat

end

end A185928.P10959096185304630547

/-!
# A185931: 

The programs for A185931, there is no canonical definition to state claims against.
-/

/-! ## A185931.P11076386102529421080

`A185933(A000124(n+6)+n)`
-/

namespace A185931.P11076386102529421080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185933 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A185931.P11076386102529421080

/-!
# A185934: Lesser of two consecutive primes which both equal 1 (mod 3).

The programs for A185934, the canonical program `A185934.P5020716041999348457` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185934 has offset 1).

The definition of A185934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185934.P12695009682219108343

`A217659(n+1)-6*A219244(n+1)`
-/

namespace A185934.P12695009682219108343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217659 (n + 1) - 6 * A219244 (n + 1)

end

end A185934.P12695009682219108343

namespace A185934

/-- `A217659(n+1)-6*A219244(n+1)` -/
def P12695009682219108343.Spec : Prop :=
  ∀ n, P12695009682219108343.a n = A185934 (n + 1)

end A185934

/-! ## A185934.P5020716041999348457

`filter[A258578(n+1), A070563(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A185934

/-- `filter[A258578(n+1), A070563(#)]` -/
def P5020716041999348457.Spec : Prop :=
  ∀ n, P5020716041999348457.a n = A185934 (n + 1)

theorem P5020716041999348457.correct : P5020716041999348457.Spec := by
  intro n
  simp only [A185934, Nat.add_sub_cancel]

end A185934

/-! ## A185934.P600717814543131106

`filter[A258578(n+1), A135461(#)]`
-/

namespace A185934.P600717814543131106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A185934.P600717814543131106

namespace A185934

/-- `filter[A258578(n+1), A135461(#)]` -/
def P600717814543131106.Spec : Prop :=
  ∀ n, P600717814543131106.a n = A185934 (n + 1)

end A185934

/-! ## A185934.P10884027399414293160

`filter[A258578(n+1), A319691(#)]`
-/

namespace A185934.P10884027399414293160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A185934.P10884027399414293160

namespace A185934

/-- `filter[A258578(n+1), A319691(#)]` -/
def P10884027399414293160.Spec : Prop :=
  ∀ n, P10884027399414293160.a n = A185934 (n + 1)

end A185934

/-! ## A185934.P488116069890949054

`filter[A258578(n+1), A353815(#)]`
-/

namespace A185934.P488116069890949054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A185934.P488116069890949054

namespace A185934

/-- `filter[A258578(n+1), A353815(#)]` -/
def P488116069890949054.Spec : Prop :=
  ∀ n, P488116069890949054.a n = A185934 (n + 1)

end A185934

/-! ## A185934.P8077586111885500838

`filter[A258578(n+1), A353816(#)]`
-/

namespace A185934.P8077586111885500838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A185934.P8077586111885500838

namespace A185934

/-- `filter[A258578(n+1), A353816(#)]` -/
def P8077586111885500838.Spec : Prop :=
  ∀ n, P8077586111885500838.a n = A185934 (n + 1)

end A185934

/-! ## A185934.P9099126339438219038

`filter[A258578(n+1), A354982(#)]`
-/

namespace A185934.P9099126339438219038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A185934.P9099126339438219038

namespace A185934

/-- `filter[A258578(n+1), A354982(#)]` -/
def P9099126339438219038.Spec : Prop :=
  ∀ n, P9099126339438219038.a n = A185934 (n + 1)

end A185934

/-! ## A185934.P5867695272380329303

`∩[A258578(n+1), A016921(n)]`
-/

namespace A185934.P5867695272380329303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P5867695272380329303

namespace A185934

/-- `∩[A258578(n+1), A016921(n)]` -/
def P5867695272380329303.Spec : Prop :=
  ∀ n, (P5867695272380329303.a n : ℤ) = A185934 (n + 1)

end A185934

/-! ## A185934.P7037164178527654442

`∩[A258578(n+1), A271114(n)]`
-/

namespace A185934.P7037164178527654442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P7037164178527654442

namespace A185934

/-- `∩[A258578(n+1), A271114(n)]` -/
def P7037164178527654442.Spec : Prop :=
  ∀ n, (P7037164178527654442.a n : ℤ) = A185934 (n + 1)

end A185934

/-! ## A185934.P16764886690238386903

`∩[A258578(n+1), A308196(n)]`
-/

namespace A185934.P16764886690238386903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P16764886690238386903

namespace A185934

/-- `∩[A258578(n+1), A308196(n)]` -/
def P16764886690238386903.Spec : Prop :=
  ∀ n, (P16764886690238386903.a n : ℤ) = A185934 (n + 1)

end A185934

/-! ## A185934.P774344779997567634

`A065091(lt[1, A079083(n+1)-2])`
-/

namespace A185934.P774344779997567634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079083 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A185934.P774344779997567634

namespace A185934

/-- `A065091(lt[1, A079083(n+1)-2])` -/
def P774344779997567634.Spec : Prop :=
  ∀ n, P774344779997567634.a n = A185934 (n + 1)

end A185934

/-! ## A185934.P12602062737183930209

`A065091(lt[2, A079083(n+1)/2])`
-/

namespace A185934.P12602062737183930209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079083 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A185934.P12602062737183930209

namespace A185934

/-- `A065091(lt[2, A079083(n+1)/2])` -/
def P12602062737183930209.Spec : Prop :=
  ∀ n, P12602062737183930209.a n = A185934 (n + 1)

end A185934

/-! ## A185934.P16505818439575483248

`∩[A001074(n+1), A258578(n+1)]`
-/

namespace A185934.P16505818439575483248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P16505818439575483248

namespace A185934

/-- `∩[A001074(n+1), A258578(n+1)]` -/
def P16505818439575483248.Spec : Prop :=
  ∀ n, (P16505818439575483248.a n : ℤ) = A185934 (n + 1)

end A185934

/-! ## A185934.P8742519399879515999

`∩[A002476(n+1), A258578(n+1)]`
-/

namespace A185934.P8742519399879515999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P8742519399879515999

namespace A185934

/-- `∩[A002476(n+1), A258578(n+1)]` -/
def P8742519399879515999.Spec : Prop :=
  ∀ n, (P8742519399879515999.a n : ℤ) = A185934 (n + 1)

end A185934

/-! ## A185934.P9628991870463025633

`∩[A004611(n+1), A258578(n+1)]`
-/

namespace A185934.P9628991870463025633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P9628991870463025633

namespace A185934

/-- `∩[A004611(n+1), A258578(n+1)]` -/
def P9628991870463025633.Spec : Prop :=
  ∀ n, (P9628991870463025633.a n : ℤ) = A185934 (n + 1)

end A185934

/-! ## A185934.P5832621909593140806

`∩[A007645(n+1), A258578(n+1)]`
-/

namespace A185934.P5832621909593140806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P5832621909593140806

namespace A185934

/-- `∩[A007645(n+1), A258578(n+1)]` -/
def P5832621909593140806.Spec : Prop :=
  ∀ n, (P5832621909593140806.a n : ℤ) = A185934 (n + 1)

end A185934

/-! ## A185934.P16959573954782769678

`∩[A034017(n+1), A258578(n+1)]`
-/

namespace A185934.P16959573954782769678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P16959573954782769678

namespace A185934

/-- `∩[A034017(n+1), A258578(n+1)]` -/
def P16959573954782769678.Spec : Prop :=
  ∀ n, (P16959573954782769678.a n : ℤ) = A185934 (n + 1)

end A185934

/-! ## A185934.P10604679988411645447

`∩[A034021(n+1), A258578(n+1)]`
-/

namespace A185934.P10604679988411645447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185934.P10604679988411645447

namespace A185934

/-- `∩[A034021(n+1), A258578(n+1)]` -/
def P10604679988411645447.Spec : Prop :=
  ∀ n, (P10604679988411645447.a n : ℤ) = A185934 (n + 1)

end A185934

/-!
# A185935: Lesser of two consecutive primes which both equal 2 (mod 3).

The programs for A185935, there is no canonical definition to state claims against.
-/

/-! ## A185935.P8428679596353261100

`A002374(A137263(n+1))`
-/

namespace A185935.P8428679596353261100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A137263 (n + 1)).toNat

end

end A185935.P8428679596353261100

/-! ## A185935.P17118107155756690237

`record[A078182(A258578(n+1))]`
-/

namespace A185935.P17118107155756690237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A258578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185935.P17118107155756690237

/-! ## A185935.P13722581913218684690

`filter[A258578(n+1), A080846(#)]`
-/

namespace A185935.P13722581913218684690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A185935.P13722581913218684690

/-! ## A185935.P4797798727461566385

`filter[A258578(n+1), A131532(#)]`
-/

namespace A185935.P4797798727461566385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A185935.P4797798727461566385

/-! ## A185935.P3581411958429809075

`filter[A258578(n+1), A131735(#)]`
-/

namespace A185935.P3581411958429809075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131735 (f1 j).toNat = 1) n)

end

end A185935.P3581411958429809075

/-! ## A185935.P5096253781929759834

`filter[A258578(n+1), A204418(#)]`
-/

namespace A185935.P5096253781929759834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A185935.P5096253781929759834

/-! ## A185935.P6216950961153128221

`filter[A258578(n+1), A214090(#)]`
-/

namespace A185935.P6216950961153128221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A185935.P6216950961153128221

/-! ## A185935.P13472067491296463716

`filter[A258578(n+1), A329682(#)]`
-/

namespace A185935.P13472067491296463716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329682 (f1 j).toNat = 1) n)

end

end A185935.P13472067491296463716

/-! ## A185935.P11885060678026325019

`∩[A258578(n+1), A007494(n)]`
-/

namespace A185935.P11885060678026325019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185935.P11885060678026325019

/-!
# A185936: First of a run of 3 or more consecutive primes which all equal 1 (mod 3).

The programs for A185936, the canonical program `A185936.P13373559221152438877` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185936 has offset 1).

The definition of A185936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185936.P13373559221152438877

`∩[A002476(n+1), A054643(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A185936

/-- `∩[A002476(n+1), A054643(n+1)]` -/
def P13373559221152438877.Spec : Prop :=
  ∀ n, (P13373559221152438877.a n : ℤ) = A185936 (n + 1)

theorem P13373559221152438877.correct : P13373559221152438877.Spec := by
  intro n
  simp only [A185936, Nat.add_sub_cancel]

end A185936

/-! ## A185936.P13514256601423648812

`∩[A045375(n+1), A054643(n+1)]`
-/

namespace A185936.P13514256601423648812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P13514256601423648812

namespace A185936

/-- `∩[A045375(n+1), A054643(n+1)]` -/
def P13514256601423648812.Spec : Prop :=
  ∀ n, (P13514256601423648812.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P10825369870432425692

`∩[A054643(n+1), A123365(n+1)]`
-/

namespace A185936.P10825369870432425692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P10825369870432425692

namespace A185936

/-- `∩[A054643(n+1), A123365(n+1)]` -/
def P10825369870432425692.Spec : Prop :=
  ∀ n, (P10825369870432425692.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P10559089149205931659

`∩[A054643(n+1), A133290(n+1)]`
-/

namespace A185936.P10559089149205931659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P10559089149205931659

namespace A185936

/-- `∩[A054643(n+1), A133290(n+1)]` -/
def P10559089149205931659.Spec : Prop :=
  ∀ n, (P10559089149205931659.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P17884111112416641800

`∩[A054643(n+1), A137827(n+1)]`
-/

namespace A185936.P17884111112416641800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P17884111112416641800

namespace A185936

/-- `∩[A054643(n+1), A137827(n+1)]` -/
def P17884111112416641800.Spec : Prop :=
  ∀ n, (P17884111112416641800.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P15929926332466006677

`filter[A054643(n+1), A070563(#)]`
-/

namespace A185936.P15929926332466006677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A185936.P15929926332466006677

namespace A185936

/-- `filter[A054643(n+1), A070563(#)]` -/
def P15929926332466006677.Spec : Prop :=
  ∀ n, P15929926332466006677.a n = A185936 (n + 1)

end A185936

/-! ## A185936.P6907235587787125718

`∩[A054643(n+1), A107925(n+1)]`
-/

namespace A185936.P6907235587787125718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P6907235587787125718

namespace A185936

/-- `∩[A054643(n+1), A107925(n+1)]` -/
def P6907235587787125718.Spec : Prop :=
  ∀ n, (P6907235587787125718.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P783957854966008426

`∩[A004611(n+1), A054643(n+1)]`
-/

namespace A185936.P783957854966008426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P783957854966008426

namespace A185936

/-- `∩[A004611(n+1), A054643(n+1)]` -/
def P783957854966008426.Spec : Prop :=
  ∀ n, (P783957854966008426.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P678174625817272974

`∩[A054643(n+1), A129904(n+1)]`
-/

namespace A185936.P678174625817272974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P678174625817272974

namespace A185936

/-- `∩[A054643(n+1), A129904(n+1)]` -/
def P678174625817272974.Spec : Prop :=
  ∀ n, (P678174625817272974.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P4817081932641606680

`∩[A054643(n+1), A348932(n+1)]`
-/

namespace A185936.P4817081932641606680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P4817081932641606680

namespace A185936

/-- `∩[A054643(n+1), A348932(n+1)]` -/
def P4817081932641606680.Spec : Prop :=
  ∀ n, (P4817081932641606680.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P17487118860757250173

`∩[A054643(n+1), A260682(n+1)]`
-/

namespace A185936.P17487118860757250173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P17487118860757250173

namespace A185936

/-- `∩[A054643(n+1), A260682(n+1)]` -/
def P17487118860757250173.Spec : Prop :=
  ∀ n, (P17487118860757250173.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P6531572573321997501

`filter[A054643(n+1), A354982(#)]`
-/

namespace A185936.P6531572573321997501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A185936.P6531572573321997501

namespace A185936

/-- `filter[A054643(n+1), A354982(#)]` -/
def P6531572573321997501.Spec : Prop :=
  ∀ n, P6531572573321997501.a n = A185936 (n + 1)

end A185936

/-! ## A185936.P13347585702869858835

`filter[A054643(n+2), A353815(#)]`
-/

namespace A185936.P13347585702869858835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A185936.P13347585702869858835

namespace A185936

/-- `filter[A054643(n+2), A353815(#)]` -/
def P13347585702869858835.Spec : Prop :=
  ∀ n, P13347585702869858835.a n = A185936 (n + 1)

end A185936

/-! ## A185936.P5517301515026100576

`filter[A054643(n+2), A353816(#)]`
-/

namespace A185936.P5517301515026100576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A185936.P5517301515026100576

namespace A185936

/-- `filter[A054643(n+2), A353816(#)]` -/
def P5517301515026100576.Spec : Prop :=
  ∀ n, P5517301515026100576.a n = A185936 (n + 1)

end A185936

/-! ## A185936.P4302369951564581973

`∩[A054643(n+1), A074628(n+1)]`
-/

namespace A185936.P4302369951564581973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P4302369951564581973

namespace A185936

/-- `∩[A054643(n+1), A074628(n+1)]` -/
def P4302369951564581973.Spec : Prop :=
  ∀ n, (P4302369951564581973.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P6535251835216237725

`∩[A054643(n+1), A374135(n+1)]`
-/

namespace A185936.P6535251835216237725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P6535251835216237725

namespace A185936

/-- `∩[A054643(n+1), A374135(n+1)]` -/
def P6535251835216237725.Spec : Prop :=
  ∀ n, (P6535251835216237725.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P11818380736833533722

`∩[A054643(n+1), A202822(n+1)]`
-/

namespace A185936.P11818380736833533722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185936.P11818380736833533722

namespace A185936

/-- `∩[A054643(n+1), A202822(n+1)]` -/
def P11818380736833533722.Spec : Prop :=
  ∀ n, (P11818380736833533722.a n : ℤ) = A185936 (n + 1)

end A185936

/-! ## A185936.P2117733089237257494

`filter[A054643(n+1), A319691(#)]`
-/

namespace A185936.P2117733089237257494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A185936.P2117733089237257494

namespace A185936

/-- `filter[A054643(n+1), A319691(#)]` -/
def P2117733089237257494.Spec : Prop :=
  ∀ n, P2117733089237257494.a n = A185936 (n + 1)

end A185936

/-!
# A185937: Riordan array (A000045(x)^m, x*A000108(x)), m = 1.

The programs for A185937, there is no canonical definition to state claims against.
-/

/-! ## A185937.P12995040611421106391

`A139375(n-floor(sqrt(2*n+1)-1/2))%A201166(n)`
-/

namespace A185937.P12995040611421106391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139375 ((n : ℤ) - ⌊Real.sqrt (2 * n + 1 : ℝ) - ((1 : ℚ) / 2 : ℝ)⌋).toNat) (A201166 n)

end

end A185937.P12995040611421106391

/-! ## A185937.P3456729690052146184

`A139375(A083920(n))%A132057(n+1)`
-/

namespace A185937.P3456729690052146184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139375 (A083920 n).toNat) (A132057 (n + 1))

end

end A185937.P3456729690052146184

/-! ## A185937.P14895186196275448403

`A185675(n)-A139375(n)`
-/

namespace A185937.P14895186196275448403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185675 n - A139375 n

end

end A185937.P14895186196275448403

/-! ## A185937.P7166949085734706066

`A155161(n+1)+A010893(A213275(n))`
-/

namespace A185937.P7166949085734706066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + A010893 ((A213275 n).toNat + 13)

end

end A185937.P7166949085734706066

/-! ## A185937.P9348661591960725806

`A155161(n+1)+A010893(A227655(n))`
-/

namespace A185937.P9348661591960725806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + A010893 ((A227655 n).toNat + 13)

end

end A185937.P9348661591960725806

/-!
# A185938: First of a run of 3 or more consecutive primes which are congruent to 2 (mod 3).

The programs for A185938, the canonical program `A185938.P17107618719082406059` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185938 has offset 1).

The definition of A185938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185938.P17107618719082406059

`∩[A054643(n+1), A121762(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A185938

/-- `∩[A054643(n+1), A121762(n+1)]` -/
def P17107618719082406059.Spec : Prop :=
  ∀ n, (P17107618719082406059.a n : ℤ) = A185938 (n + 1)

theorem P17107618719082406059.correct : P17107618719082406059.Spec := by
  intro n
  simp only [A185938, Nat.add_sub_cancel]

end A185938

/-! ## A185938.P1161168790199746274

`∩[A003627(n+1), A054643(n+1)]`
-/

namespace A185938.P1161168790199746274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P1161168790199746274

namespace A185938

/-- `∩[A003627(n+1), A054643(n+1)]` -/
def P1161168790199746274.Spec : Prop :=
  ∀ n, (P1161168790199746274.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P6890348480822148500

`∩[A007528(n+1), A054643(n+1)]`
-/

namespace A185938.P6890348480822148500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P6890348480822148500

namespace A185938

/-- `∩[A007528(n+1), A054643(n+1)]` -/
def P6890348480822148500.Spec : Prop :=
  ∀ n, (P6890348480822148500.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P15212007316465388928

`∩[A054643(n+1), A056955(n+1)]`
-/

namespace A185938.P15212007316465388928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P15212007316465388928

namespace A185938

/-- `∩[A054643(n+1), A056955(n+1)]` -/
def P15212007316465388928.Spec : Prop :=
  ∀ n, (P15212007316465388928.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P15658588732210281285

`∩[A054643(n+1), A259548(n+1)]`
-/

namespace A185938.P15658588732210281285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P15658588732210281285

namespace A185938

/-- `∩[A054643(n+1), A259548(n+1)]` -/
def P15658588732210281285.Spec : Prop :=
  ∀ n, (P15658588732210281285.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P7400414421464653430

`∩[A054643(n+1), A082406(n+1)]`
-/

namespace A185938.P7400414421464653430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P7400414421464653430

namespace A185938

/-- `∩[A054643(n+1), A082406(n+1)]` -/
def P7400414421464653430.Spec : Prop :=
  ∀ n, (P7400414421464653430.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P10326868925133218836

`∩[A054643(n+1), A167409(n+1)]`
-/

namespace A185938.P10326868925133218836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P10326868925133218836

namespace A185938

/-- `∩[A054643(n+1), A167409(n+1)]` -/
def P10326868925133218836.Spec : Prop :=
  ∀ n, (P10326868925133218836.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P8992965283277234890

`∩[A054643(n+1), A016969(n)]`
-/

namespace A185938.P8992965283277234890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P8992965283277234890

namespace A185938

/-- `∩[A054643(n+1), A016969(n)]` -/
def P8992965283277234890.Spec : Prop :=
  ∀ n, (P8992965283277234890.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P2600126249214214276

`∩[A054643(n+1), A101328(n+2)]`
-/

namespace A185938.P2600126249214214276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P2600126249214214276

namespace A185938

/-- `∩[A054643(n+1), A101328(n+2)]` -/
def P2600126249214214276.Spec : Prop :=
  ∀ n, (P2600126249214214276.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P3739669170663224162

`∩[A054643(n+1), A016921(n)-2]`
-/

namespace A185938.P3739669170663224162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P3739669170663224162

namespace A185938

/-- `∩[A054643(n+1), A016921(n)-2]` -/
def P3739669170663224162.Spec : Prop :=
  ∀ n, (P3739669170663224162.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P2615413947210561461

`∩[A054643(n+1), A271114(n)-2]`
-/

namespace A185938.P2615413947210561461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P2615413947210561461

namespace A185938

/-- `∩[A054643(n+1), A271114(n)-2]` -/
def P2615413947210561461.Spec : Prop :=
  ∀ n, (P2615413947210561461.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P6391202252492794418

`∩[A054643(n+1), A277571(n+1)]`
-/

namespace A185938.P6391202252492794418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P6391202252492794418

namespace A185938

/-- `∩[A054643(n+1), A277571(n+1)]` -/
def P6391202252492794418.Spec : Prop :=
  ∀ n, (P6391202252492794418.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P6130344074412240149

`∩[A054643(n+1), A277567(n+1)-2]`
-/

namespace A185938.P6130344074412240149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P6130344074412240149

namespace A185938

/-- `∩[A054643(n+1), A277567(n+1)-2]` -/
def P6130344074412240149.Spec : Prop :=
  ∀ n, (P6130344074412240149.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P5718216687120645322

`∩[A054643(n+1), A348934(n+1)]`
-/

namespace A185938.P5718216687120645322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P5718216687120645322

namespace A185938

/-- `∩[A054643(n+1), A348934(n+1)]` -/
def P5718216687120645322.Spec : Prop :=
  ∀ n, (P5718216687120645322.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P7101850073899843410

`∩[A054643(n+1), A084088(n+1)]`
-/

namespace A185938.P7101850073899843410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P7101850073899843410

namespace A185938

/-- `∩[A054643(n+1), A084088(n+1)]` -/
def P7101850073899843410.Spec : Prop :=
  ∀ n, (P7101850073899843410.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P12378735777506142827

`∩[A004612(n+1), A054643(n+1)]`
-/

namespace A185938.P12378735777506142827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P12378735777506142827

namespace A185938

/-- `∩[A004612(n+1), A054643(n+1)]` -/
def P12378735777506142827.Spec : Prop :=
  ∀ n, (P12378735777506142827.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P13847505603799808294

`∩[A054643(n+1), A179871(n+1)]`
-/

namespace A185938.P13847505603799808294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P13847505603799808294

namespace A185938

/-- `∩[A054643(n+1), A179871(n+1)]` -/
def P13847505603799808294.Spec : Prop :=
  ∀ n, (P13847505603799808294.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P1732953720192330670

`∩[A054643(n+1), A348931(n+1)]`
-/

namespace A185938.P1732953720192330670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P1732953720192330670

namespace A185938

/-- `∩[A054643(n+1), A348931(n+1)]` -/
def P1732953720192330670.Spec : Prop :=
  ∀ n, (P1732953720192330670.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P9395022258826318754

`∩[A054643(n+1), A352273(n+1)]`
-/

namespace A185938.P9395022258826318754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P9395022258826318754

namespace A185938

/-- `∩[A054643(n+1), A352273(n+1)]` -/
def P9395022258826318754.Spec : Prop :=
  ∀ n, (P9395022258826318754.a n : ℤ) = A185938 (n + 1)

end A185938

/-! ## A185938.P5532351495981400869

`∩[A054643(n+1), A347838(n+1)]`
-/

namespace A185938.P5532351495981400869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P5532351495981400869

namespace A185938

/-- `∩[A054643(n+1), A347838(n+1)]` -/
def P5532351495981400869.Spec : Prop :=
  ∀ n, (P5532351495981400869.a n : ℤ) = A185938 (n + 1)

end A185938

/-!
# A185939: a(n) = 9*n^2 - 6*n + 2.

The programs for A185939, the canonical program `A185939.P3704988232293684187` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185939 has offset 1).

The definition of A185939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185939.P3704988232293684187

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=5, a(1)=26, a(2)=65`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185939

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3704988232293684187.Spec : Prop :=
  ∀ n, P3704988232293684187.a n = A185939 (n + 1)

theorem P3704988232293684187.correct : P3704988232293684187.Spec := by
  intro n
  simp only [A185939, Nat.add_sub_cancel]

end A185939

/-! ## A185939.P10275964411044658358

`1+(3*n+2)²`
-/

namespace A185939.P10275964411044658358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (3 * n + 2) ^ 2

end

end A185939.P10275964411044658358

namespace A185939

/-- `1+(3*n+2)²` -/
def P10275964411044658358.Spec : Prop :=
  ∀ n, (P10275964411044658358.a n : ℤ) = A185939 (n + 1)

end A185939

/-! ## A185939.P8151247243967527163

`∑[a(n-1)+18]` with `a(0)=5, a(1)=21`
-/

namespace A185939.P8151247243967527163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 21] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185939.P8151247243967527163

namespace A185939

/-- `∑[a(n-1)+18]` -/
def P8151247243967527163.Spec : Prop :=
  ∀ n, (P8151247243967527163.a n : ℤ) = A185939 (n + 1)

end A185939

/-! ## A185939.P16895089236868502665

`(A016957(n)²+4)/4`
-/

namespace A185939.P16895089236868502665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016957 n ^ 2 + 4 : ℚ) / 4

end

end A185939.P16895089236868502665

namespace A185939

/-- `(A016957(n)²+4)/4` -/
def P16895089236868502665.Spec : Prop :=
  ∀ n, P16895089236868502665.a n = (A185939 (n + 1) : ℚ)

end A185939

/-! ## A185939.P1644864018477715084

`record[A014682(n+1)²+1]`
-/

namespace A185939.P1644864018477715084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185939.P1644864018477715084

namespace A185939

/-- `record[A014682(n+1)²+1]` -/
def P1644864018477715084.Spec : Prop :=
  ∀ n, P1644864018477715084.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P15265483140958595623

`round(cosh(log((A016945(n)-1)*3*(n+1)+3)))`
-/

namespace A185939.P15265483140958595623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((A016945 n - 1) * (3 * (n + 1) : ℤ) + 3 : ℝ)))

end

end A185939.P15265483140958595623

namespace A185939

/-- `round(cosh(log((A016945(n)-1)*3*(n+1)+3)))` -/
def P15265483140958595623.Spec : Prop :=
  ∀ n, P15265483140958595623.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P16521262081090901126

`ceil(ceil((A016945(n)*A016969(n)+2)/2)/2)`
-/

namespace A185939.P16521262081090901126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A016945 n * A016969 n + 2 : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A185939.P16521262081090901126

namespace A185939

/-- `ceil(ceil((A016945(n)*A016969(n)+2)/2)/2)` -/
def P16521262081090901126.Spec : Prop :=
  ∀ n, P16521262081090901126.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P2587505614380460281

`(A016796(n)+A016794(n))/A016794(n)`
-/

namespace A185939.P2587505614380460281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016796 n + A016794 n : ℚ) / (A016794 n : ℚ)

end

end A185939.P2587505614380460281

namespace A185939

/-- `(A016796(n)+A016794(n))/A016794(n)` -/
def P2587505614380460281.Spec : Prop :=
  ∀ n, P2587505614380460281.a n = (A185939 (n + 1) : ℚ)

end A185939

/-! ## A185939.P12284610497975243111

`(A016797(n)+A016795(n))/A016795(n)`
-/

namespace A185939.P12284610497975243111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016797 n + A016795 n : ℚ) / (A016795 n : ℚ)

end

end A185939.P12284610497975243111

namespace A185939

/-- `(A016797(n)+A016795(n))/A016795(n)` -/
def P12284610497975243111.Spec : Prop :=
  ∀ n, P12284610497975243111.a n = (A185939 (n + 1) : ℚ)

end A185939

/-! ## A185939.P12454717277612055802

`(A016798(n)+A016796(n))/A016796(n)`
-/

namespace A185939.P12454717277612055802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016798 n + A016796 n : ℚ) / (A016796 n : ℚ)

end

end A185939.P12454717277612055802

namespace A185939

/-- `(A016798(n)+A016796(n))/A016796(n)` -/
def P12454717277612055802.Spec : Prop :=
  ∀ n, P12454717277612055802.a n = (A185939 (n + 1) : ℚ)

end A185939

/-! ## A185939.P7697185614437254970

`(A016799(n)+A016797(n))/A016797(n)`
-/

namespace A185939.P7697185614437254970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016799 n + A016797 n : ℚ) / (A016797 n : ℚ)

end

end A185939.P7697185614437254970

namespace A185939

/-- `(A016799(n)+A016797(n))/A016797(n)` -/
def P7697185614437254970.Spec : Prop :=
  ∀ n, P7697185614437254970.a n = (A185939 (n + 1) : ℚ)

end A185939

/-! ## A185939.P5306966246828659506

`(A016800(n)+A016798(n))/A016798(n)`
-/

namespace A185939.P5306966246828659506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016800 n + A016798 n : ℚ) / (A016798 n : ℚ)

end

end A185939.P5306966246828659506

namespace A185939

/-- `(A016800(n)+A016798(n))/A016798(n)` -/
def P5306966246828659506.Spec : Prop :=
  ∀ n, P5306966246828659506.a n = (A185939 (n + 1) : ℚ)

end A185939

/-! ## A185939.P14490890746230866567

`Δ[A115519(n)]`
-/

namespace A185939.P14490890746230866567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185939.P14490890746230866567

namespace A185939

/-- `Δ[A115519(n)]` -/
def P14490890746230866567.Spec : Prop :=
  ∀ n, P14490890746230866567.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P7440096363316481086

`Δ[A067389(n)-∑[n]]`
-/

namespace A185939.P7440096363316481086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185939.P7440096363316481086

namespace A185939

/-- `Δ[A067389(n)-∑[n]]` -/
def P7440096363316481086.Spec : Prop :=
  ∀ n, P7440096363316481086.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P12430094475654336003

`abs(1-3*A056105(n+1))`
-/

namespace A185939.P12430094475654336003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 3 * A056105 (n + 1)|

end

end A185939.P12430094475654336003

namespace A185939

/-- `abs(1-3*A056105(n+1))` -/
def P12430094475654336003.Spec : Prop :=
  ∀ n, P12430094475654336003.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P429059502398975892

`Δ[Δ[A366478(n)]]`
-/

namespace A185939.P429059502398975892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366478 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185939.P429059502398975892

namespace A185939

/-- `Δ[Δ[A366478(n)]]` -/
def P429059502398975892.Spec : Prop :=
  ∀ n, P429059502398975892.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P1017097837946652402

`record[A166517(n)²+1]`
-/

namespace A185939.P1017097837946652402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185939.P1017097837946652402

namespace A185939

/-- `record[A166517(n)²+1]` -/
def P1017097837946652402.Spec : Prop :=
  ∀ n, P1017097837946652402.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P16859145765871616242

`record[Δ[A064680(n)]²+1]`
-/

namespace A185939.P16859145765871616242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185939.P16859145765871616242

namespace A185939

/-- `record[Δ[A064680(n)]²+1]` -/
def P16859145765871616242.Spec : Prop :=
  ∀ n, P16859145765871616242.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P13550567615916210559

`record[Δ[A092530(n)]²+1]`
-/

namespace A185939.P13550567615916210559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185939.P13550567615916210559

namespace A185939

/-- `record[Δ[A092530(n)]²+1]` -/
def P13550567615916210559.Spec : Prop :=
  ∀ n, P13550567615916210559.a n = A185939 (n + 1)

end A185939

/-! ## A185939.P6768635571788881351

`Δ[A053618(2*n+1)+Δ[A000332(2*n+1)]]`
-/

namespace A185939.P6768635571788881351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053618 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185939.P6768635571788881351

namespace A185939

/-- `Δ[A053618(2*n+1)+Δ[A000332(2*n+1)]]` -/
def P6768635571788881351.Spec : Prop :=
  ∀ n, P6768635571788881351.a n = A185939 (n + 1)

end A185939

/-!
# A185940: a(n) = 1 - 2^(n+1) + 3^(n+2).

The programs for A185940, the canonical program `A185940.P3316636084145407751` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185940 has offset 1).

The definition of A185940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185940.P3316636084145407751

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=24, a(1)=74, a(2)=228`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185940

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P3316636084145407751.Spec : Prop :=
  ∀ n, P3316636084145407751.a n = A185940 (n + 1)

theorem P3316636084145407751.correct : P3316636084145407751.Spec := by
  intro n
  simp only [A185940, Nat.add_sub_cancel]

end A185940

/-! ## A185940.P10074572416219782066

`A083313(n+3)+1`
-/

namespace A185940.P10074572416219782066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 (n + 3) + 1

end

end A185940.P10074572416219782066

namespace A185940

/-- `A083313(n+3)+1` -/
def P10074572416219782066.Spec : Prop :=
  ∀ n, P10074572416219782066.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P7988276067024519011

`A064686(n+4)+1`
-/

namespace A185940.P7988276067024519011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064686 (n + 4) + 1

end

end A185940.P7988276067024519011

namespace A185940

/-- `A064686(n+4)+1` -/
def P7988276067024519011.Spec : Prop :=
  ∀ n, P7988276067024519011.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P757365442397097603

`A304167(n+3)-1`
-/

namespace A185940.P757365442397097603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304167 (n + 3) - 1

end

end A185940.P757365442397097603

namespace A185940

/-- `A304167(n+3)-1` -/
def P757365442397097603.Spec : Prop :=
  ∀ n, P757365442397097603.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P11576372615492175754

`Δ[A053152(n+3)]+1`
-/

namespace A185940.P11576372615492175754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053152 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A185940.P11576372615492175754

namespace A185940

/-- `Δ[A053152(n+3)]+1` -/
def P11576372615492175754.Spec : Prop :=
  ∀ n, P11576372615492175754.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P16147310539347390660

`Δ[A053156(n+3)]+1`
-/

namespace A185940.P16147310539347390660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A185940.P16147310539347390660

namespace A185940

/-- `Δ[A053156(n+3)]+1` -/
def P16147310539347390660.Spec : Prop :=
  ∀ n, P16147310539347390660.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P5654311901342902550

`A083323(n+3)+2^(n+2)`
-/

namespace A185940.P5654311901342902550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 (n + 3) + (2 ^ (n + 2) : ℤ)

end

end A185940.P5654311901342902550

namespace A185940

/-- `A083323(n+3)+2^(n+2)` -/
def P5654311901342902550.Spec : Prop :=
  ∀ n, P5654311901342902550.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P8224447842552753953

`A126644(n+2)+2^(n+3)`
-/

namespace A185940.P8224447842552753953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126644 (n + 2) + (2 ^ (n + 3) : ℤ)

end

end A185940.P8224447842552753953

namespace A185940

/-- `A126644(n+2)+2^(n+3)` -/
def P8224447842552753953.Spec : Prop :=
  ∀ n, P8224447842552753953.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P2304598789511265957

`A034472(n+3)-2^(n+2)`
-/

namespace A185940.P2304598789511265957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A185940.P2304598789511265957

namespace A185940

/-- `A034472(n+3)-2^(n+2)` -/
def P2304598789511265957.Spec : Prop :=
  ∀ n, P2304598789511265957.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P12200107832313684010

`A103457(n+3)-2^(n+2)`
-/

namespace A185940.P12200107832313684010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A185940.P12200107832313684010

namespace A185940

/-- `A103457(n+3)-2^(n+2)` -/
def P12200107832313684010.Spec : Prop :=
  ∀ n, P12200107832313684010.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P5048107617885071118

`3^(n+3)-A126646(n+1)`
-/

namespace A185940.P5048107617885071118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 3) : ℤ) - A126646 (n + 1)

end

end A185940.P5048107617885071118

namespace A185940

/-- `3^(n+3)-A126646(n+1)` -/
def P5048107617885071118.Spec : Prop :=
  ∀ n, P5048107617885071118.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P5787824905742347682

`3^(n+3)-A000225(n+2)`
-/

namespace A185940.P5787824905742347682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 3) : ℤ) - A000225 (n + 2)

end

end A185940.P5787824905742347682

namespace A185940

/-- `3^(n+3)-A000225(n+2)` -/
def P5787824905742347682.Spec : Prop :=
  ∀ n, P5787824905742347682.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P14454522829270770757

`3^(n+3)-A255047(n+2)`
-/

namespace A185940.P14454522829270770757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 3) : ℤ) - A255047 (n + 2)

end

end A185940.P14454522829270770757

namespace A185940

/-- `3^(n+3)-A255047(n+2)` -/
def P14454522829270770757.Spec : Prop :=
  ∀ n, P14454522829270770757.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P10023745773275321180

`Δ[A053581(n+2)+A036550(n)]`
-/

namespace A185940.P10023745773275321180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 (n + 2) + A036550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185940.P10023745773275321180

namespace A185940

/-- `Δ[A053581(n+2)+A036550(n)]` -/
def P10023745773275321180.Spec : Prop :=
  ∀ n, P10023745773275321180.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P13766430113828709175

`A001047(n+3)+A000051(n+2)`
-/

namespace A185940.P13766430113828709175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 3) + A000051 (n + 2)

end

end A185940.P13766430113828709175

namespace A185940

/-- `A001047(n+3)+A000051(n+2)` -/
def P13766430113828709175.Spec : Prop :=
  ∀ n, P13766430113828709175.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P6356503793267985710

`A024023(n+3)-A095121(n+1)`
-/

namespace A185940.P6356503793267985710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 3) - A095121 (n + 1)

end

end A185940.P6356503793267985710

namespace A185940

/-- `A024023(n+3)-A095121(n+1)` -/
def P6356503793267985710.Spec : Prop :=
  ∀ n, P6356503793267985710.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P14187580323873029410

`A094388(n+3)+A027649(n+2)`
-/

namespace A185940.P14187580323873029410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (n + 3) + A027649 (n + 2)

end

end A185940.P14187580323873029410

namespace A185940

/-- `A094388(n+3)+A027649(n+2)` -/
def P14187580323873029410.Spec : Prop :=
  ∀ n, P14187580323873029410.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P7280985888154079465

`A024023(n+3)-A000918(n+2)`
-/

namespace A185940.P7280985888154079465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 3) - A000918 (n + 2)

end

end A185940.P7280985888154079465

namespace A185940

/-- `A024023(n+3)-A000918(n+2)` -/
def P7280985888154079465.Spec : Prop :=
  ∀ n, P7280985888154079465.a n = A185940 (n + 1)

end A185940

/-! ## A185940.P14099311010350063532

`A053156(n+3)+A007051(n+3)`
-/

namespace A185940.P14099311010350063532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 3) + A007051 (n + 3)

end

end A185940.P14099311010350063532

namespace A185940

/-- `A053156(n+3)+A007051(n+3)` -/
def P14099311010350063532.Spec : Prop :=
  ∀ n, P14099311010350063532.a n = A185940 (n + 1)

end A185940

/-!
# A185942: First of a run of 4 or more consecutive primes which all equal 1 (mod 3).

The programs for A185942, there is no canonical definition to state claims against.
-/

/-! ## A185942.P7409694862410100964

`A064989(∩[A054643(n+1), A217659(n+1)])`
-/

namespace A185942.P7409694862410100964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A185942.P7409694862410100964

/-!
# A185943: Riordan array ((1/(1-x))^m, x*A000108(x)), m = 2.

The programs for A185943, there is no canonical definition to state claims against.
-/

/-! ## A185943.P5279080347459524457

`A291812(A089944(n))+1`
-/

namespace A185943.P5279080347459524457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A089944 n).toNat + 1

end

end A185943.P5279080347459524457

/-! ## A185943.P9188003209040454035

`1-(A185037(A008288(n))-A291812(A089944(n)))`
-/

namespace A185943.P9188003209040454035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A185037 (A008288 n).toNat - A291812 (A089944 n).toNat)

end

end A185943.P9188003209040454035

/-! ## A185943.P9154914897498466101

`A091863(A125860(n))+A025581(n)`
-/

namespace A185943.P9154914897498466101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (A125860 n).toNat + A025581 n

end

end A185943.P9154914897498466101

/-! ## A185943.P17452302271042056066

`A056239(2^A135278(n))+A002620(A291883(n+1))`
-/

namespace A185943.P17452302271042056066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A135278 n : ℤ))).toNat + A002620 (A291883 (n + 1)).toNat

end

end A185943.P17452302271042056066

/-!
# A185944: Riordan array ( (1/(1-x))^m , x*A000108(x) ), m = 3.

The programs for A185944, there is no canonical definition to state claims against.
-/

/-! ## A185944.P2429299310769349556

`A108286(n+1)-Δ[A240330(A289107(n))]`
-/

namespace A185944.P2429299310769349556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240330 (A289107 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108286 (n + 1) - (f1 (n + 1) - f1 n)

end

end A185944.P2429299310769349556

/-! ## A185944.P12939812843716608750

`A108286(n+1)+Δ[A262693(A101127(n))]`
-/

namespace A185944.P12939812843716608750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A101127 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108286 (n + 1) + (f1 (n + 1) - f1 n)

end

end A185944.P12939812843716608750

/-! ## A185944.P5513184542191751875

`A325400(C(A108286(n+1), A052307(n)))`
-/

namespace A185944.P5513184542191751875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (Nat.choose (A108286 (n + 1)).toNat (A052307 n).toNat)

end

end A185944.P5513184542191751875

/-! ## A185944.P17321753058907712130

`or(A021913(A051292(n)), A108286(n+1))`
-/

namespace A185944.P17321753058907712130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 (A051292 n).toNat) (A108286 (n + 1))

end

end A185944.P17321753058907712130

/-! ## A185944.P17300724917634723925

`or(A108286(n+1), A165560(A001006(n)))`
-/

namespace A185944.P17300724917634723925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108286 (n + 1)) (A165560 (A001006 n).toNat)

end

end A185944.P17300724917634723925

/-!
# A185945: Riordan array ( (1/(1-x))^m , x*A000108(x) ), m =4.

The programs for A185945, there is no canonical definition to state claims against.
-/

/-! ## A185945.P11902636820189493032

`A104713(n+3)+A083929(A351870(n))`
-/

namespace A185945.P11902636820189493032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104713 (n + 3) + A083929 (A351870 n).toNat

end

end A185945.P11902636820189493032

/-! ## A185945.P15387779118120993336

`A112765(A216973(n)!)+A104713(n+3)`
-/

namespace A185945.P15387779118120993336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (Nat.factorial (A216973 n).toNat) + A104713 (n + 3)

end

end A185945.P15387779118120993336

/-! ## A185945.P17032990118535237121

`A180649(A114656(n+1))+A104713(n+3)`
-/

namespace A185945.P17032990118535237121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A114656 (n + 1)).toNat + A104713 (n + 3)

end

end A185945.P17032990118535237121

/-!
# A185948: Exponential Riordan array (e^(mx),x*A000108(x)), m=3.

The programs for A185948, there is no canonical definition to state claims against.
-/

/-! ## A185948.P14610381973993158904

`A171616(A333560(n))+A143495(n+3)`
-/

namespace A185948.P14610381973993158904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171616 (A333560 n).toNat + A143495 (n + 3)

end

end A185948.P14610381973993158904

/-!
# A185950: a(n) = 4*n^2 - n - 1.

The programs for A185950, the canonical program `A185950.P17301800486229009801` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185950 has offset 0).

The definition of A185950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185950.P17301800486229009801

`(4*n-1)*n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185950

/-- `(4*n-1)*n-1` -/
def P17301800486229009801.Spec : Prop :=
  ∀ n, P17301800486229009801.a n = A185950 n

theorem P17301800486229009801.correct : P17301800486229009801.Spec := by
  intro n
  simp only [A185950]

end A185950

/-! ## A185950.P2460863699083516545

`∑[record[lcm(4, n)-1]]`
-/

namespace A185950.P2460863699083516545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185950.P2460863699083516545

namespace A185950

/-- `∑[record[lcm(4, n)-1]]` -/
def P2460863699083516545.Spec : Prop :=
  ∀ n, P2460863699083516545.a n = A185950 n

end A185950

/-! ## A185950.P851343178584615186

`∑[a(n-1)+8]` with `a(0)=-1, a(1)=3`
-/

namespace A185950.P851343178584615186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185950.P851343178584615186

namespace A185950

/-- `∑[a(n-1)+8]` -/
def P851343178584615186.Spec : Prop :=
  ∀ n, P851343178584615186.a n = A185950 n

end A185950

/-! ## A185950.P14397464671922280278

`-(or(1, -(2*n)²)+n)`
-/

namespace A185950.P14397464671922280278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor 1 (-((2 * n) ^ 2 : ℤ)) + (n : ℤ))

end

end A185950.P14397464671922280278

namespace A185950

/-- `-(or(1, -(2*n)²)+n)` -/
def P14397464671922280278.Spec : Prop :=
  ∀ n, P14397464671922280278.a n = A185950 n

end A185950

/-! ## A185950.P16929781718696302451

`-(xor(1, -(2*n)²)+n)`
-/

namespace A185950.P16929781718696302451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor 1 (-((2 * n) ^ 2 : ℤ)) + (n : ℤ))

end

end A185950.P16929781718696302451

namespace A185950

/-- `-(xor(1, -(2*n)²)+n)` -/
def P16929781718696302451.Spec : Prop :=
  ∀ n, P16929781718696302451.a n = A185950 n

end A185950

/-! ## A185950.P15195926995163781591

`-(Δ[-C(2*n, 3)]+n+1)`
-/

namespace A185950.P15195926995163781591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + (n + 1 : ℤ))

end

end A185950.P15195926995163781591

namespace A185950

/-- `-(Δ[-C(2*n, 3)]+n+1)` -/
def P15195926995163781591.Spec : Prop :=
  ∀ n, P15195926995163781591.a n = A185950 n

end A185950

/-! ## A185950.P6732560838487258823

`(A014635(n)-2)/2`
-/

namespace A185950.P6732560838487258823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014635 n - 2 : ℚ) / 2

end

end A185950.P6732560838487258823

namespace A185950

/-- `(A014635(n)-2)/2` -/
def P6732560838487258823.Spec : Prop :=
  ∀ n, P6732560838487258823.a n = (A185950 n : ℚ)

end A185950

/-! ## A185950.P16774773658235105733

`(A185438(n)-3)/2`
-/

namespace A185950.P16774773658235105733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185438 n - 3 : ℚ) / 2

end

end A185950.P16774773658235105733

namespace A185950

/-- `(A185438(n)-3)/2` -/
def P16774773658235105733.Spec : Prop :=
  ∀ n, P16774773658235105733.a n = (A185950 n : ℚ)

end A185950

/-! ## A185950.P1797188075863726552

`(A062783(n)-3)/3`
-/

namespace A185950.P1797188075863726552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062783 n - 3 : ℚ) / 3

end

end A185950.P1797188075863726552

namespace A185950

/-- `(A062783(n)-3)/3` -/
def P1797188075863726552.Spec : Prop :=
  ∀ n, P1797188075863726552.a n = (A185950 n : ℚ)

end A185950

/-! ## A185950.P7335612638384588619

`(A104188(n)-4)/4`
-/

namespace A185950.P7335612638384588619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104188 n - 4 : ℚ) / 4

end

end A185950.P7335612638384588619

namespace A185950

/-- `(A104188(n)-4)/4` -/
def P7335612638384588619.Spec : Prop :=
  ∀ n, P7335612638384588619.a n = (A185950 n : ℚ)

end A185950

/-! ## A185950.P13758449801020047328

`(A244802(n+1)-4)/3`
-/

namespace A185950.P13758449801020047328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244802 (n + 1) - 4 : ℚ) / 3

end

end A185950.P13758449801020047328

namespace A185950

/-- `(A244802(n+1)-4)/3` -/
def P13758449801020047328.Spec : Prop :=
  ∀ n, P13758449801020047328.a n = (A185950 n : ℚ)

end A185950

/-! ## A185950.P9528449448890937399

`A176126(A131098(n+1))`
-/

namespace A185950.P9528449448890937399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176126 (A131098 (n + 1)).toNat

end

end A185950.P9528449448890937399

namespace A185950

/-- `A176126(A131098(n+1))` -/
def P9528449448890937399.Spec : Prop :=
  ∀ n, P9528449448890937399.a n = A185950 n

end A185950

/-!
# A185951: Exponential Riordan array (1, x*cosh(x)).

The programs for A185951, there is no canonical definition to state claims against.
-/

/-! ## A185951.P10664459457721971051

`A097448(A188832(n+1))`
-/

namespace A185951.P10664459457721971051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A188832 (n + 1)).toNat

end

end A185951.P10664459457721971051

/-! ## A185951.P13516604858113477127

`A111526(n)*A130409(A117396(n))`
-/

namespace A185951.P13516604858113477127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 n * A130409 (A117396 n).toNat

end

end A185951.P13516604858113477127

/-! ## A185951.P3401668531672322945

`A111526(n)*A151710(A008459(n))`
-/

namespace A185951.P3401668531672322945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 n * A151710 (A008459 n).toNat

end

end A185951.P3401668531672322945

/-! ## A185951.P1049433763034552423

`and(A002033(A000129(n)), A147308(n))`
-/

namespace A185951.P1049433763034552423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 (A000129 n).toNat) (A147308 n)

end

end A185951.P1049433763034552423

/-! ## A185951.P7561602146269947661

`and(A147308(n), A324935(A032020(n)))`
-/

namespace A185951.P7561602146269947661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147308 n) (A324935 (A032020 n).toNat)

end

end A185951.P7561602146269947661

/-!
# A185952: Partial products of A002313.

The programs for A185952, there is no canonical definition to state claims against.
-/

/-! ## A185952.P10088926826785109802

`∏[p?[comp[or(3, n)]]]`
-/

namespace A185952.P10088926826785109802
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185952.P10088926826785109802

/-! ## A185952.P7852630633231931838

`∏[p?[or(1, n)+n]]`
-/

namespace A185952.P7852630633231931838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185952.P7852630633231931838

/-! ## A185952.P8625555448894617793

`∏[p?[floor(4*n/3)]]`
-/

namespace A185952.P8625555448894617793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n : ℚ) / 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185952.P8625555448894617793

/-! ## A185952.P15418641156146863000

`lcm(2, ∏[p?[or(2, 3*n)-1]])`
-/

namespace A185952.P15418641156146863000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A185952.P15418641156146863000

/-! ## A185952.P9320453821716937074

`∏[A002313(n+1)]`
-/

namespace A185952.P9320453821716937074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185952.P9320453821716937074

/-!
# A185953: Number of pairwise coprime triples of positive integers with largest element n (i.e., A015617(n) - A015617(n-1)).

The programs for A185953, there is no canonical definition to state claims against.
-/

/-! ## A185953.P9809431191827309781

`(A186987(n+1)-A039649(n+1))%A186987(n+1)`
-/

namespace A185953.P9809431191827309781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186987 (n + 1) - A039649 (n + 1)) (A186987 (n + 1))

end

end A185953.P9809431191827309781

/-! ## A185953.P4195188895214861112

`Δ[A015617(A065033(2*n))]`
-/

namespace A185953.P4195188895214861112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185953.P4195188895214861112

/-! ## A185953.P15629349364988551216

`Δ[A015617(A123108(2*n))]`
-/

namespace A185953.P15629349364988551216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185953.P15629349364988551216

/-! ## A185953.P2158925353655145863

`A015617(n+1)-A015617(A028310(n))`
-/

namespace A185953.P2158925353655145863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (n + 1) - A015617 (A028310 n).toNat

end

end A185953.P2158925353655145863

/-! ## A185953.P12460877590110408986

`A015617(n+1)-A015617(A065033(2*n))`
-/

namespace A185953.P12460877590110408986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (n + 1) - A015617 (A065033 (2 * n)).toNat

end

end A185953.P12460877590110408986

/-! ## A185953.P12101727834480345709

`Δ[A015617(A026233(A008578(n+1)))]`
-/

namespace A185953.P12101727834480345709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (A026233 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185953.P12101727834480345709

/-! ## A185953.P17085924803428390779

`Δ[A015632(A233583(n+1))-A233583(n+1)]`
-/

namespace A185953.P17085924803428390779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015632 (A233583 (n + 1)).toNat - A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185953.P17085924803428390779

/-! ## A185953.P214298309451603066

`Δ[A015617(A007318(A000124(n)))]`
-/

namespace A185953.P214298309451603066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185953.P214298309451603066

/-! ## A185953.P2979775562784054776

`Δ[A015617(A003056(∑[n]+1))]`
-/

namespace A185953.P2979775562784054776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (A003056 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185953.P2979775562784054776

/-! ## A185953.P14246920814839078358

`A015617(n+1)-A015617(A137735(n²))`
-/

namespace A185953.P14246920814839078358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (n + 1) - A015617 (A137735 (n ^ 2)).toNat

end

end A185953.P14246920814839078358

/-! ## A185953.P7018405851229763861

`Δ[A015617(A137735(n²))]`
-/

namespace A185953.P7018405851229763861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185953.P7018405851229763861

/-!
# A185955: Fajtlowicz p-primes.

The programs for A185955, there is no canonical definition to state claims against.
-/

/-! ## A185955.P563073485199251414

`A096342(n+1)-A029832(A042736(n))`
-/

namespace A185955.P563073485199251414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1) - A029832 (A042736 n).toNat

end

end A185955.P563073485199251414

/-! ## A185955.P13046377390561667870

`A096342(n+1)-A279082(A046136(n+1))`
-/

namespace A185955.P13046377390561667870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1) - A279082 (A046136 (n + 1)).toNat

end

end A185955.P13046377390561667870

/-!
# A185956: Fajtlowicz q-primes.

The programs for A185956, there is no canonical definition to state claims against.
-/

/-! ## A185956.P9335245288067374835

`p?[A112232(A072062(n+1))]`
-/

namespace A185956.P9335245288067374835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A072062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185956.P9335245288067374835

/-! ## A185956.P4681790146328255163

`p?[-A049310(xor(n, floor(n/2)))]`
-/

namespace A185956.P4681790146328255163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A049310 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185956.P4681790146328255163

/-! ## A185956.P5667797123370458659

`p?[-A049310(A003188(n))]`
-/

namespace A185956.P5667797123370458659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A049310 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185956.P5667797123370458659

/-! ## A185956.P2700558449521963648

`p?[A074306(A074145(n+1))]`
-/

namespace A185956.P2700558449521963648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A074145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185956.P2700558449521963648

/-! ## A185956.P6766597468066548718

`p?[A023444(A254054(n+1))]`
-/

namespace A185956.P6766597468066548718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A254054 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185956.P6766597468066548718

/-!
# A185957: Second accumulation array of the array min{n,k}, by antidiagonals.

The programs for A185957, there is no canonical definition to state claims against.
-/

/-! ## A185957.P6932600227365498741

`A055641(A022112(n))+A000217(A003991(n+1))`
-/

namespace A185957.P6932600227365498741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A022112 n).toNat + A000217 (A003991 (n + 1)).toNat

end

end A185957.P6932600227365498741

/-! ## A185957.P17148046368949048048

`A058343(A054760(n))+A000217(A003991(n+1))`
-/

namespace A185957.P17148046368949048048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (A054760 n).toNat + A000217 (A003991 (n + 1)).toNat

end

end A185957.P17148046368949048048

/-! ## A185957.P8534252549060185687

`A058348(A174545(n))+A000217(A003991(n+1))`
-/

namespace A185957.P8534252549060185687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (A174545 n).toNat + A000217 (A003991 (n + 1)).toNat

end

end A185957.P8534252549060185687

/-! ## A185957.P8477464393418424624

`A117384(A098359(n+1))`
-/

namespace A185957.P8477464393418424624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (A098359 (n + 1)).toNat

end

end A185957.P8477464393418424624

/-! ## A185957.P9068664944536443240

`A069264(A223576(n+1))`
-/

namespace A185957.P9068664944536443240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069264 (A223576 (n + 1)).toNat

end

end A185957.P9068664944536443240

/-!
# A185958: Accumulation array of the array max{n,k}, by antidiagonals.

The programs for A185958, there is no canonical definition to state claims against.
-/

/-! ## A185958.P14741986082104075220

`A107985(n)-A271916(n+1)`
-/

namespace A185958.P14741986082104075220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n - A271916 (n + 1)

end

end A185958.P14741986082104075220

/-! ## A185958.P6783560855676702925

`A157636(eq[0, A103451(n)])-A271916(n+1)`
-/

namespace A185958.P6783560855676702925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A271916 (n + 1)

end

end A185958.P6783560855676702925

/-! ## A185958.P13552065405279972358

`A157636(lt[1, A157633(n)])-A271916(n+1)`
-/

namespace A185958.P13552065405279972358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A271916 (n + 1)

end

end A185958.P13552065405279972358

/-! ## A185958.P5367242312304762272

`A157636(lt[1, A157637(n)])-A271916(n+1)`
-/

namespace A185958.P5367242312304762272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A271916 (n + 1)

end

end A185958.P5367242312304762272

/-! ## A185958.P12776401688919844133

`A003991(n+1)+A107985(n)-A115262(n)`
-/

namespace A185958.P12776401688919844133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A107985 n - A115262 n)

end

end A185958.P12776401688919844133

/-! ## A185958.P3963568050460810619

`A127779(n+1)+A107985(n)-A185909(n+1)`
-/

namespace A185958.P3963568050460810619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (n + 1) + (A107985 n - A185909 (n + 1))

end

end A185958.P3963568050460810619

/-! ## A185958.P17889007774535149441

`A002260(n+1)*A193974(n)-A185909(n+1)`
-/

namespace A185958.P17889007774535149441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A193974 n - A185909 (n + 1)

end

end A185958.P17889007774535149441

/-! ## A185958.P4678053932943231331

`(A002262(n)+1)*A193974(n)-A185909(n+1)`
-/

namespace A185958.P4678053932943231331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A193974 n - A185909 (n + 1)

end

end A185958.P4678053932943231331

/-! ## A185958.P18374179264276717049

`A057555(Δ[n²])*A193974(n)-A185909(n+1)`
-/

namespace A185958.P18374179264276717049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A193974 n - A185909 (n + 1)

end

end A185958.P18374179264276717049

/-! ## A185958.P16970262942066324328

`A097285(Δ[n²])*A193974(n)-A185909(n+1)`
-/

namespace A185958.P16970262942066324328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A193974 n - A185909 (n + 1)

end

end A185958.P16970262942066324328

/-! ## A185958.P9021866105142752354

`A110769(n+1)+A141419(n+1)-A185909(n+1)`
-/

namespace A185958.P9021866105142752354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 (n + 1) + (A141419 (n + 1) - A185909 (n + 1))

end

end A185958.P9021866105142752354

/-! ## A185958.P2716356113395570449

`A000005(A059268(n))*A193974(n)-A185909(n+1)`
-/

namespace A185958.P2716356113395570449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A193974 n - A185909 (n + 1)

end

end A185958.P2716356113395570449

/-!
# A185959: Number of Cayley graphs on n nodes.

The programs for A185959, there is no canonical definition to state claims against.
-/

/-! ## A185959.P9806915473217511244

`∑{d}[n+1, A327754(#)]`
-/

namespace A185959.P9806915473217511244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327754 d

end

end A185959.P9806915473217511244

/-! ## A185959.P7847019359550821794

`and(-A319372(A023647(2*(n+3))), A006799(n+1))`
-/

namespace A185959.P7847019359550821794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A319372 (A023647 (2 * (n + 3))).toNat) (A006799 (n + 1))

end

end A185959.P7847019359550821794

/-! ## A185959.P14691943420935392394

`A006799(n+1)-A045872(A147087(n+1))`
-/

namespace A185959.P14691943420935392394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006799 (n + 1) - A045872 ((A147087 (n + 1)).toNat + 10)

end

end A185959.P14691943420935392394

/-! ## A185959.P6216765836235031149

`∑{d}[n+1, A006800(#)]-A045872(A147087(n+1))`
-/

namespace A185959.P6216765836235031149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006800 d - A045872 ((A147087 (n + 1)).toNat + 10)

end

end A185959.P6216765836235031149

/-!
# A185961: Let d_1=1 < d_2 < d_3 < ... be the divisors of n; sequence lists positive numbers n such that for some k, n = 2(d_1 + ... + d_k).

The programs for A185961, there is no canonical definition to state claims against.
-/

/-! ## A185961.P1899287607637006221

`lcm(n+1, A332294(A056928(n+2)))`
-/

namespace A185961.P1899287607637006221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A332294 (A056928 (n + 2)).toNat)

end

end A185961.P1899287607637006221

/-! ## A185961.P8524346253831939962

`A140271(n+1)*A338555(A134459(n+1))`
-/

namespace A185961.P8524346253831939962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n + 1) * A338555 (A134459 (n + 1)).toNat

end

end A185961.P8524346253831939962

/-! ## A185961.P4152075088644555187

`A304180(n+1)*A338555(A134459(n+1))`
-/

namespace A185961.P4152075088644555187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (n + 1) * A338555 (A134459 (n + 1)).toNat

end

end A185961.P4152075088644555187

/-!
# A185962: Riordan array ((1-x)^2/(1-x+x^2), x(1-x)^2/(1-x+x^2)).

The programs for A185962, there is no canonical definition to state claims against.
-/

/-! ## A185962.P7785500305923993974

`A111963(n)%p?[A133263(A111960(n))]`
-/

namespace A185962.P7785500305923993974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A111960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111963 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A185962.P7785500305923993974

/-! ## A185962.P8665224889974856068

`A111963(n)%A089483(A084061(n))`
-/

namespace A185962.P8665224889974856068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111963 n) (A089483 (A084061 n).toNat)

end

end A185962.P8665224889974856068

/-! ## A185962.P2584223046937469399

`or(A057212(A131128(n)), A109246(n))`
-/

namespace A185962.P2584223046937469399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057212 (A131128 n).toNat) (A109246 n)

end

end A185962.P2584223046937469399

/-!
# A185963: Row sums of number triangle A185962.

The programs for A185963, the canonical program `A185963.P16951610829913740184` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185963 has offset 0).

The definition of A185963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185963.P16951610829913740184

`A233581(n)+∑[A233581(n)]-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A185963

/-- `A233581(n)+∑[A233581(n)]-1` -/
def P16951610829913740184.Spec : Prop :=
  ∀ n, P16951610829913740184.a n = A185963 n

theorem P16951610829913740184.correct : P16951610829913740184.Spec := by
  intro n
  simp only [A185963]

end A185963

/-! ## A185963.P15462476679489093239

`A176971(3*(n+1))`
-/

namespace A185963.P15462476679489093239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (3 * (n + 1))

end

end A185963.P15462476679489093239

namespace A185963

/-- `A176971(3*(n+1))` -/
def P15462476679489093239.Spec : Prop :=
  ∀ n, P15462476679489093239.a n = A185963 n

end A185963

/-! ## A185963.P2461512549323729802

`∑[A104769(3*n)]+1`
-/

namespace A185963.P2461512549323729802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185963.P2461512549323729802

namespace A185963

/-- `∑[A104769(3*n)]+1` -/
def P2461512549323729802.Spec : Prop :=
  ∀ n, P2461512549323729802.a n = A185963 n

end A185963

/-! ## A185963.P7549973856095761734

`∑[∑[A233581(n+1)]]+1`
-/

namespace A185963.P7549973856095761734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185963.P7549973856095761734

namespace A185963

/-- `∑[∑[A233581(n+1)]]+1` -/
def P7549973856095761734.Spec : Prop :=
  ∀ n, P7549973856095761734.a n = A185963 n

end A185963

/-! ## A185963.P13795135408034307859

`Δ[-A233581(n+1)]`
-/

namespace A185963.P13795135408034307859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A233581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185963.P13795135408034307859

namespace A185963

/-- `Δ[-A233581(n+1)]` -/
def P13795135408034307859.Spec : Prop :=
  ∀ n, P13795135408034307859.a n = A185963 n

end A185963

/-! ## A185963.P676697239331414283

`A233581(n+1)-A233581(n+2)`
-/

namespace A185963.P676697239331414283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233581 (n + 1) - A233581 (n + 2)

end

end A185963.P676697239331414283

namespace A185963

/-- `A233581(n+1)-A233581(n+2)` -/
def P676697239331414283.Spec : Prop :=
  ∀ n, P676697239331414283.a n = A185963 n

end A185963

/-! ## A185963.P4318882409873953912

`1-A077905(A016777(n+1))`
-/

namespace A185963.P4318882409873953912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077905 (A016777 (n + 1)).toNat

end

end A185963.P4318882409873953912

namespace A185963

/-- `1-A077905(A016777(n+1))` -/
def P4318882409873953912.Spec : Prop :=
  ∀ n, P4318882409873953912.a n = A185963 n

end A185963

/-! ## A185963.P6441374340178545957

`A247917(3*n)`
-/

namespace A185963.P6441374340178545957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (3 * n)

end

end A185963.P6441374340178545957

namespace A185963

/-- `A247917(3*n)` -/
def P6441374340178545957.Spec : Prop :=
  ∀ n, P6441374340178545957.a n = A185963 n

end A185963

/-! ## A185963.P1306444545697512367

`Δ[A077905(3*n+2)]`
-/

namespace A185963.P1306444545697512367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185963.P1306444545697512367

namespace A185963

/-- `Δ[A077905(3*n+2)]` -/
def P1306444545697512367.Spec : Prop :=
  ∀ n, P1306444545697512367.a n = A185963 n

end A185963

/-!
# A185964: Diagonal sums of number triangle A185962.

The programs for A185964, the canonical program `A185964.P12449774211014871614` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185964 has offset 0).

The definition of A185964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185964.P12449774211014871614

`Δ[a(n-1)+a(n-4)-2*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185964

/-- `Δ[a(n-1)+a(n-4)-2*a(n-3)]` -/
def P12449774211014871614.Spec : Prop :=
  ∀ n, P12449774211014871614.a n = A185964 n

theorem P12449774211014871614.correct : P12449774211014871614.Spec := by
  intro n
  simp only [A185964]

end A185964

/-! ## A185964.P307326750886692085

`Δ[a(n-1)-(2*a(n-3)-a(n-4))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A185964.P307326750886692085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0] fun n f1 =>
  f1 (n - 1) - (2 * f1 (n - 3) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185964.P307326750886692085

namespace A185964

/-- `Δ[a(n-1)-(2*a(n-3)-a(n-4))]` -/
def P307326750886692085.Spec : Prop :=
  ∀ n, P307326750886692085.a n = A185964 n

end A185964

/-! ## A185964.P14379631202901704858

`Δ[A104554(n)]`
-/

namespace A185964.P14379631202901704858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185964.P14379631202901704858

namespace A185964

/-- `Δ[A104554(n)]` -/
def P14379631202901704858.Spec : Prop :=
  ∀ n, P14379631202901704858.a n = A185964 n

end A185964

/-! ## A185964.P5766417975662820766

`A104554(n+1)-A104554(n)`
-/

namespace A185964.P5766417975662820766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104554 (n + 1) - A104554 n

end

end A185964.P5766417975662820766

namespace A185964

/-- `A104554(n+1)-A104554(n)` -/
def P5766417975662820766.Spec : Prop :=
  ∀ n, P5766417975662820766.a n = A185964 n

end A185964

/-! ## A185964.P15642150544439720358

`A104554(n+3)+∑[A104554(n+1)]`
-/

namespace A185964.P15642150544439720358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104554 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185964.P15642150544439720358

namespace A185964

/-- `A104554(n+3)+∑[A104554(n+1)]` -/
def P15642150544439720358.Spec : Prop :=
  ∀ n, P15642150544439720358.a n = A185964 n

end A185964

/-!
# A185965: Central coefficients of number triangle A185962.

The programs for A185965, there is no canonical definition to state claims against.
-/

/-! ## A185965.P472424623231093501

`(n+1)*A185966(n)`
-/

namespace A185965.P472424623231093501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A185966 n

end

end A185965.P472424623231093501

/-! ## A185965.P8844461827890112759

`A123018(∑[4*n])`
-/

namespace A185965.P8844461827890112759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185965.P8844461827890112759

/-! ## A185965.P3176034651948790548

`A185962(∑[4*n])`
-/

namespace A185965.P3176034651948790548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185962 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185965.P3176034651948790548

/-! ## A185965.P746518250945343250

`xor(1, xor(1, A185962(A046092(n))))`
-/

namespace A185965.P746518250945343250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A185962 (A046092 n).toNat))

end

end A185965.P746518250945343250

/-! ## A185965.P18407970736835367211

`A185962(A046092(n))/A007318(∑[n])`
-/

namespace A185965.P18407970736835367211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185962 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A185965.P18407970736835367211

/-!
# A185966: Series reversion of A028310.

The programs for A185966, there is no canonical definition to state claims against.
-/

/-! ## A185966.P1616596996218798273

`A185965(n)/(n+1)`
-/

namespace A185966.P1616596996218798273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185965 n : ℚ) / (n + 1 : ℚ)

end

end A185966.P1616596996218798273

/-! ## A185966.P10197091102370097758

`ceil(A185965(n)/A028242(2*n))`
-/

namespace A185966.P10197091102370097758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185965 n : ℚ) / (A028242 (2 * n) : ℚ)⌉

end

end A185966.P10197091102370097758

/-! ## A185966.P1910075523761202281

`A185965(n)/A028242(2*n)*A007318(∑[n])`
-/

namespace A185966.P1910075523761202281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185965 n : ℚ) / (A028242 (2 * n) : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A185966.P1910075523761202281

/-! ## A185966.P2859774375501343427

`A123018(∑[4*n])/(n+1)`
-/

namespace A185966.P2859774375501343427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123018 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A185966.P2859774375501343427

/-! ## A185966.P4844375500708544135

`A185962(∑[4*n])/(n+1)`
-/

namespace A185966.P4844375500708544135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185962 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A185966.P4844375500708544135

/-!
# A185967: Inverse of Riordan array ((1-x)(1-x^2)(1-x^3)/(1-x^6), x(1-x)(1-x^2)(1-x^3)/(1-x^6)).

The programs for A185967, there is no canonical definition to state claims against.
-/

/-! ## A185967.P5358425056551339691

`A102450(A307214(n))`
-/

namespace A185967.P5358425056551339691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A307214 n).toNat

end

end A185967.P5358425056551339691

/-! ## A185967.P15951192309282002360

`A342798(A188111(n+1))`
-/

namespace A185967.P15951192309282002360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342798 (A188111 (n + 1)).toNat

end

end A185967.P15951192309282002360

/-! ## A185967.P230521669898395172

`A188111(n+1)-A188086(A188110(n+1))`
-/

namespace A185967.P230521669898395172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188111 (n + 1) - A188086 (A188110 (n + 1)).toNat

end

end A185967.P230521669898395172

/-!
# A185968: a(n) = n^2*2^(n^2-1).

The programs for A185968, the canonical program `A185968.P7312688582741148626` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185968 has offset 0).

The definition of A185968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185968.P7312688582741148626

`n²*2^(n²-1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185968

/-- `n²*2^(n²-1)` -/
def P7312688582741148626.Spec : Prop :=
  ∀ n, P7312688582741148626.a n = (A185968 n : ℚ)

end A185968

/-! ## A185968.P16199624564478447418

`A001787(n²)`
-/

namespace A185968.P16199624564478447418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n ^ 2)

end

end A185968.P16199624564478447418

namespace A185968

/-- `A001787(n²)` -/
def P16199624564478447418.Spec : Prop :=
  ∀ n, P16199624564478447418.a n = A185968 n

end A185968

/-! ## A185968.P12150681102135288286

`A118442(n²)`
-/

namespace A185968.P12150681102135288286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118442 (n ^ 2)

end

end A185968.P12150681102135288286

namespace A185968

/-- `A118442(n²)` -/
def P12150681102135288286.Spec : Prop :=
  ∀ n, P12150681102135288286.a n = A185968 n

end A185968

/-! ## A185968.P14049280381196026555

`A097067(n²+1)`
-/

namespace A185968.P14049280381196026555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n ^ 2 + 1)

end

end A185968.P14049280381196026555

namespace A185968

/-- `A097067(n²+1)` -/
def P14049280381196026555.Spec : Prop :=
  ∀ n, P14049280381196026555.a n = A185968 n

end A185968

/-! ## A185968.P17202446621571030895

`A139756(n²+1)`
-/

namespace A185968.P17202446621571030895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n ^ 2 + 1)

end

end A185968.P17202446621571030895

namespace A185968

/-- `A139756(n²+1)` -/
def P17202446621571030895.Spec : Prop :=
  ∀ n, P17202446621571030895.a n = A185968 n

end A185968

/-!
# A185969: Let S be the sequence of power towers built of 2 and 3 sorted by their height and for equal heights - in lexicographic order: 2, 3, 2^2, 2^3, 3^2, 3^3, 2^2^2, 2^2^3 etc. A(n) = the permutation of indexes which reorders S by magnitude.

The programs for A185969, there is no canonical definition to state claims against.
-/

/-! ## A185969.P12283563433519943423

`A081241(A375374(n+1))`
-/

namespace A185969.P12283563433519943423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (A375374 (n + 1)).toNat

end

end A185969.P12283563433519943423

/-! ## A185969.P14704373156504579884

`A081241(A375375(A375375(A375375(n+1))))`
-/

namespace A185969.P14704373156504579884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (A375375 (A375375 (A375375 (n + 1)).toNat).toNat).toNat

end

end A185969.P14704373156504579884

/-! ## A185969.P7318464596180475502

`A375374(A299237(n+1))`
-/

namespace A185969.P7318464596180475502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375374 (A299237 (n + 1)).toNat

end

end A185969.P7318464596180475502

/-!
# A185970: a(n) = 2^((n^2-n-2)/2)*(n+2)!

The programs for A185970, the canonical program `A185970.P13347069573920601442` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185970 has offset 0).

The definition of A185970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185970.P13347069573920601442

`2^C(n, 2)*A001710(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A185970

/-- `2^C(n, 2)*A001710(n+2)` -/
def P13347069573920601442.Spec : Prop :=
  ∀ n, P13347069573920601442.a n = A185970 n

theorem P13347069573920601442.correct : P13347069573920601442.Spec := by
  intro n
  simp only [A185970]

end A185970

/-! ## A185970.P6579643380357457892

`∏[Δ[n*2^(n-1)]]`
-/

namespace A185970.P6579643380357457892
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185970.P6579643380357457892

namespace A185970

/-- `∏[Δ[n*2^(n-1)]]` -/
def P6579643380357457892.Spec : Prop :=
  ∀ n, P6579643380357457892.a n = (A185970 n : ℚ)

end A185970

/-! ## A185970.P12296872948650387807

`2^∑[n-1]*(n+2)!`
-/

namespace A185970.P12296872948650387807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) * (Nat.factorial (n + 2) : ℚ)

end

end A185970.P12296872948650387807

namespace A185970

/-- `2^∑[n-1]*(n+2)!` -/
def P12296872948650387807.Spec : Prop :=
  ∀ n, P12296872948650387807.a n = (A185970 n : ℚ)

end A185970

/-! ## A185970.P10478005942961559003

`(n+2)!/2^∑[1-n]`
-/

namespace A185970.P10478005942961559003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A185970.P10478005942961559003

namespace A185970

/-- `(n+2)!/2^∑[1-n]` -/
def P10478005942961559003.Spec : Prop :=
  ∀ n, P10478005942961559003.a n = (A185970 n : ℚ)

end A185970

/-! ## A185970.P12097980680097080431

`(n+2)!*∏[2^(n-1)]`
-/

namespace A185970.P12097980680097080431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A185970.P12097980680097080431

namespace A185970

/-- `(n+2)!*∏[2^(n-1)]` -/
def P12097980680097080431.Spec : Prop :=
  ∀ n, P12097980680097080431.a n = (A185970 n : ℚ)

end A185970

/-!
# A185971: Convolution inverse of A001147.

The programs for A185971, there is no canonical definition to state claims against.
-/

/-! ## A185971.P14729744845334280344

`floor(acot(n)²-A000698(n))`
-/

namespace A185971.P14729744845334280344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 - (A000698 n : ℝ)⌋

end

end A185971.P14729744845334280344

/-! ## A185971.P8860024735143049907

`A000038(n)-A000698(n)`
-/

namespace A185971.P8860024735143049907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A000698 n

end

end A185971.P8860024735143049907

/-! ## A185971.P5169568252559955625

`(-A000698(n))^A178334(n)`
-/

namespace A185971.P5169568252559955625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A000698 n : ℚ) ^ (A178334 n : ℤ)

end

end A185971.P5169568252559955625

/-! ## A185971.P16927720994531844439

`A000698(n)*A153881(n+1)`
-/

namespace A185971.P16927720994531844439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000698 n * A153881 (n + 1)

end

end A185971.P16927720994531844439

/-! ## A185971.P2047919390806743083

`2*A000007(n)-A000698(n)`
-/

namespace A185971.P2047919390806743083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A000698 n

end

end A185971.P2047919390806743083

/-! ## A185971.P7661218916739825886

`A177797(n)+A055634(A004273(n))`
-/

namespace A185971.P7661218916739825886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177797 n + A055634 (A004273 n).toNat

end

end A185971.P7661218916739825886

/-! ## A185971.P17761206357057264916

`A177797(n)-A055634(A004277(n))`
-/

namespace A185971.P17761206357057264916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177797 n - A055634 (A004277 n).toNat

end

end A185971.P17761206357057264916

/-! ## A185971.P10916784870501280116

`A000038(n)-A286781(A161680(n))`
-/

namespace A185971.P10916784870501280116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A286781 (A161680 n).toNat

end

end A185971.P10916784870501280116

/-! ## A185971.P854727312938571059

`A220779(A076877(n+1))-A000698(n)`
-/

namespace A185971.P854727312938571059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220779 (A076877 (n + 1)).toNat - A000698 n

end

end A185971.P854727312938571059

/-! ## A185971.P5181613686951505006

`val(A010900(n), A293319(n))-A000698(n)`
-/

namespace A185971.P5181613686951505006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A010900 n).toNat (A293319 n).toNat : ℤ) - A000698 n

end

end A185971.P5181613686951505006

/-!
# A185973: Array of divisor product arguments appearing in the denominator of the unique representation of primorials A002110 in terms of divisor products.

The programs for A185973, there is no canonical definition to state claims against.
-/

/-! ## A185973.P15177905637721859103

`A076686(8*A185972(n+1))`
-/

namespace A185973.P15177905637721859103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (8 * A185972 (n + 1)).toNat

end

end A185973.P15177905637721859103

/-!
# A185974: Partitions in Abramowitz-Stegun order A036036 mapped one-to-one to positive integers.

The programs for A185974, there is no canonical definition to state claims against.
-/

/-! ## A185974.P13780873332210728035

`A122111(A334434(n))`
-/

namespace A185974.P13780873332210728035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A334434 n).toNat

end

end A185974.P13780873332210728035

/-! ## A185974.P10420002069987977636

`∑{d}[A334434(n), A329034(#)]`
-/

namespace A185974.P10420002069987977636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A185974.P10420002069987977636

/-! ## A185974.P15705099515825772845

`A054977(A008804(n))*A334438(n)`
-/

namespace A185974.P15705099515825772845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A008804 n).toNat * A334438 n

end

end A185974.P15705099515825772845

/-! ## A185974.P2643430948497719921

`A057427(A318775(n))*A334438(n)`
-/

namespace A185974.P2643430948497719921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A318775 n).toNat * A334438 n

end

end A185974.P2643430948497719921

/-! ## A185974.P8204161764950225037

`A334438(n)+A046660(A046390(n+1))`
-/

namespace A185974.P8204161764950225037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334438 n + A046660 (A046390 (n + 1)).toNat

end

end A185974.P8204161764950225037

/-! ## A185974.P850046155183818712

`A368994(A330366(3*n+1))+A334438(n)`
-/

namespace A185974.P850046155183818712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (A330366 (3 * n + 1)).toNat + A334438 n

end

end A185974.P850046155183818712

/-! ## A185974.P6063051778164098148

`A334438(n)%A002189(n)`
-/

namespace A185974.P6063051778164098148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334438 n) (A002189 n)

end

end A185974.P6063051778164098148

/-! ## A185974.P17227924016296030348

`A373585(A061326(3*n+2))+A334438(n)`
-/

namespace A185974.P17227924016296030348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (A061326 (3 * n + 2)).toNat + A334438 n

end

end A185974.P17227924016296030348

/-! ## A185974.P16910885955266882158

`A373585(A061327(n+4))+A334438(n)`
-/

namespace A185974.P16910885955266882158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (A061327 (n + 4)).toNat + A334438 n

end

end A185974.P16910885955266882158

/-! ## A185974.P10671520903551020963

`A064989(A344122(n+2)/4)`
-/

namespace A185974.P10671520903551020963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A344122 (n + 2) : ℚ) / 4)).toNat

end

end A185974.P10671520903551020963

/-!
# A185975: Prime number factorization of n mapped to a(n)-th partition in A-St order.

The programs for A185975, there is no canonical definition to state claims against.
-/

/-! ## A185975.P5999250004881482796

`A166276(A246677(n+1))`
-/

namespace A185975.P5999250004881482796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166276 (A246677 (n + 1)).toNat

end

end A185975.P5999250004881482796

/-! ## A185975.P10937450873582399092

`A166276(A156552(n+2))`
-/

namespace A185975.P10937450873582399092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166276 (A156552 (n + 2)).toNat

end

end A185975.P10937450873582399092

/-! ## A185975.P10860089570605209018

`A166276(A252754(n+2))`
-/

namespace A185975.P10860089570605209018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166276 (A252754 (n + 2)).toNat

end

end A185975.P10860089570605209018

/-! ## A185975.P4536015054858668053

`A229119(A243354(n+2))`
-/

namespace A185975.P4536015054858668053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229119 (A243354 (n + 2)).toNat

end

end A185975.P4536015054858668053

/-! ## A185975.P10426953229657545088

`A229119(A286556(n+2))`
-/

namespace A185975.P10426953229657545088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229119 (A286556 (n + 2)).toNat

end

end A185975.P10426953229657545088

/-!
# A185976: Number of multiset repetition class defining partitions of N with 1<=N<=n.

The programs for A185976, there is no canonical definition to state claims against.
-/

/-! ## A185976.P9981586454381621682

`∑[A007294(n+1)]`
-/

namespace A185976.P9981586454381621682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185976.P9981586454381621682

/-! ## A185976.P7054775901731620202

`∑[abs(Δ[A302835(n)])]`
-/

namespace A185976.P7054775901731620202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185976.P7054775901731620202

/-! ## A185976.P10222008880955020579

`A302835(n+1)-1`
-/

namespace A185976.P10222008880955020579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 (n + 1) - 1

end

end A185976.P10222008880955020579

/-! ## A185976.P2761839484324570798

`record[A302835(abs(1-n))-1]`
-/

namespace A185976.P2761839484324570798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 |1 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185976.P2761839484324570798

/-! ## A185976.P11866057793317427686

`A007294(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A185976.P11866057793317427686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007294 (Nat.choose (n + 1) n) + a (n - 1)

end

end A185976.P11866057793317427686

/-! ## A185976.P83289232119262742

`∑[∑[A303906(n+1)]+1]`
-/

namespace A185976.P83289232119262742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185976.P83289232119262742

/-! ## A185976.P16924704658703893986

`A349675(2*(n+1))-1`
-/

namespace A185976.P16924704658703893986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349675 (2 * (n + 1)) - 1

end

end A185976.P16924704658703893986

/-! ## A185976.P11533657634593098282

`∑[A339374(n+1)+A339373(n+1)]`
-/

namespace A185976.P11533657634593098282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339374 (n + 1) + A339373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185976.P11533657634593098282

/-! ## A185976.P9357207354619292518

`A023443(A302835(n+1))`
-/

namespace A185976.P9357207354619292518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A302835 (n + 1)).toNat

end

end A185976.P9357207354619292518

/-!
# A185977: Minimal number of parts of multiset repetition class defining partitions of n.

The programs for A185977, there is no canonical definition to state claims against.
-/

/-! ## A185977.P3957129812309483438

`A340458(n+1)+A185284(A052083(n+1))`
-/

namespace A185977.P3957129812309483438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340458 (n + 1) + A185284 (A052083 (n + 1)).toNat

end

end A185977.P3957129812309483438

/-! ## A185977.P12328190550094436829

`A340458(A135381(n)+1)`
-/

namespace A185977.P12328190550094436829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340458 (A135381 n + 1).toNat

end

end A185977.P12328190550094436829

/-! ## A185977.P9893972143336460632

`A340458(A135382(n+1)+1)`
-/

namespace A185977.P9893972143336460632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340458 (A135382 (n + 1) + 1).toNat

end

end A185977.P9893972143336460632

/-! ## A185977.P4196485608384401471

`A265690(A130124(n+2)/2)`
-/

namespace A185977.P4196485608384401471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265690 (SequenceMachineLib.roundAway ((A130124 (n + 2) : ℚ) / 2)).toNat

end

end A185977.P4196485608384401471

/-! ## A185977.P10401720096927716260

`A001222(A168264(n+2))`
-/

namespace A185977.P10401720096927716260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A168264 (n + 2)).toNat

end

end A185977.P10401720096927716260

/-!
# A185978: Nontriangular numbers which are the sum of two (positive) triangular numbers.

The programs for A185978, the canonical program `A185978.P8182532355553636214` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185978 has offset 1).

The definition of A185978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185978.P8182532355553636214

`filter[A051533(n+1), A123110(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185978

/-- `filter[A051533(n+1), A123110(#)]` -/
def P8182532355553636214.Spec : Prop :=
  ∀ n, P8182532355553636214.a n = A185978 (n + 1)

theorem P8182532355553636214.correct : P8182532355553636214.Spec := by
  intro n
  simp only [A185978, Nat.add_sub_cancel]

end A185978

/-! ## A185978.P13975171892876194316

`filter[A020756(n+2), A123110(#)]`
-/

namespace A185978.P13975171892876194316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A185978.P13975171892876194316

namespace A185978

/-- `filter[A020756(n+2), A123110(#)]` -/
def P13975171892876194316.Spec : Prop :=
  ∀ n, P13975171892876194316.a n = A185978 (n + 1)

end A185978

/-! ## A185978.P6274483746231127360

`∩[A014132(n+1), A020756(n+1)]`
-/

namespace A185978.P6274483746231127360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185978.P6274483746231127360

namespace A185978

/-- `∩[A014132(n+1), A020756(n+1)]` -/
def P6274483746231127360.Spec : Prop :=
  ∀ n, (P6274483746231127360.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P15061650174954468659

`∩[A014132(n+1), A051533(n+1)]`
-/

namespace A185978.P15061650174954468659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185978.P15061650174954468659

namespace A185978

/-- `∩[A014132(n+1), A051533(n+1)]` -/
def P15061650174954468659.Spec : Prop :=
  ∀ n, (P15061650174954468659.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P12669712740442728779

`∩[A051533(n+1), A080036(n)-1]`
-/

namespace A185978.P12669712740442728779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185978.P12669712740442728779

namespace A185978

/-- `∩[A051533(n+1), A080036(n)-1]` -/
def P12669712740442728779.Spec : Prop :=
  ∀ n, (P12669712740442728779.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P4348456889267446827

`eq[2, A061336(n)]`
-/

namespace A185978.P4348456889267446827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185978.P4348456889267446827

namespace A185978

/-- `eq[2, A061336(n)]` -/
def P4348456889267446827.Spec : Prop :=
  ∀ n, (P4348456889267446827.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P1504826219901550388

`lt[A198954(n), A008441(n)]`
-/

namespace A185978.P1504826219901550388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185978.P1504826219901550388

namespace A185978

/-- `lt[A198954(n), A008441(n)]` -/
def P1504826219901550388.Spec : Prop :=
  ∀ n, (P1504826219901550388.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P4953899384147017336

`lt[A010054(n), tanh(A052344(n))]`
-/

namespace A185978.P4953899384147017336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A052344 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A185978.P4953899384147017336

namespace A185978

/-- `lt[A010054(n), tanh(A052344(n))]` -/
def P4953899384147017336.Spec : Prop :=
  ∀ n, (P4953899384147017336.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P17807687299832168709

`lt[A073423(n), A008441(n)/21]`
-/

namespace A185978.P17807687299832168709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 n : ℚ) / 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A185978.P17807687299832168709

namespace A185978

/-- `lt[A073423(n), A008441(n)/21]` -/
def P17807687299832168709.Spec : Prop :=
  ∀ n, (P17807687299832168709.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P9342298173943984847

`eq[A000007(A008441(n)), A010054(n)]`
-/

namespace A185978.P9342298173943984847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008441 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185978.P9342298173943984847

namespace A185978

/-- `eq[A000007(A008441(n)), A010054(n)]` -/
def P9342298173943984847.Spec : Prop :=
  ∀ n, (P9342298173943984847.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P4310356002207591739

`eq[A028310(A008441(n)), A053603(n)]`
-/

namespace A185978.P4310356002207591739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A008441 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185978.P4310356002207591739

namespace A185978

/-- `eq[A028310(A008441(n)), A053603(n)]` -/
def P4310356002207591739.Spec : Prop :=
  ∀ n, (P4310356002207591739.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P7899797039015421533

`eq[A000007(A008441(n)), A133089(n)]`
-/

namespace A185978.P7899797039015421533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008441 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185978.P7899797039015421533

namespace A185978

/-- `eq[A000007(A008441(n)), A133089(n)]` -/
def P7899797039015421533.Spec : Prop :=
  ∀ n, (P7899797039015421533.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P17804878179230296121

`lt[1, (A002262(n)*A209941(n))²]`
-/

namespace A185978.P17804878179230296121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n * A209941 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185978.P17804878179230296121

namespace A185978

/-- `lt[1, (A002262(n)*A209941(n))²]` -/
def P17804878179230296121.Spec : Prop :=
  ∀ n, (P17804878179230296121.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P7218565732938533978

`eq[A000038(A004020(n)), A010054(n)]`
-/

namespace A185978.P7218565732938533978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A004020 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185978.P7218565732938533978

namespace A185978

/-- `eq[A000038(A004020(n)), A010054(n)]` -/
def P7218565732938533978.Spec : Prop :=
  ∀ n, (P7218565732938533978.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P2072499182909175662

`lt[A053603(n), A053603(n)*A226314(n+1)]`
-/

namespace A185978.P2072499182909175662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n * A226314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185978.P2072499182909175662

namespace A185978

/-- `lt[A053603(n), A053603(n)*A226314(n+1)]` -/
def P2072499182909175662.Spec : Prop :=
  ∀ n, (P2072499182909175662.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P15237069834135036243

`eq[2, A002828(A073423(n)+A017089(n))]`
-/

namespace A185978.P15237069834135036243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A073423 n + A017089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185978.P15237069834135036243

namespace A185978

/-- `eq[2, A002828(A073423(n)+A017089(n))]` -/
def P15237069834135036243.Spec : Prop :=
  ∀ n, (P15237069834135036243.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P12818720252613960582

`eq[2, A002828(A017089(n)-A073423(n))]`
-/

namespace A185978.P12818720252613960582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A017089 n - A073423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185978.P12818720252613960582

namespace A185978

/-- `eq[2, A002828(A017089(n)-A073423(n))]` -/
def P12818720252613960582.Spec : Prop :=
  ∀ n, (P12818720252613960582.a n : ℤ) = A185978 (n + 1)

end A185978

/-! ## A185978.P12285506419965154618

`eq[A048578((n+1)*A010054(n)), A176873(n)]`
-/

namespace A185978.P12285506419965154618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 ((n + 1 : ℤ) * A010054 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185978.P12285506419965154618

namespace A185978

/-- `eq[A048578((n+1)*A010054(n)), A176873(n)]` -/
def P12285506419965154618.Spec : Prop :=
  ∀ n, (P12285506419965154618.a n : ℤ) = A185978 (n + 1)

end A185978

/-!
# A185979: Numbers which are the sum of two positive triangular numbers in more than one way.

The programs for A185979, the canonical program `A185979.P4021787341801991134` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185979 has offset 1).

The definition of A185979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185979.P8533708958274387281

`lt[1, A052344(n)]`
-/

namespace A185979.P8533708958274387281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185979.P8533708958274387281

namespace A185979

/-- `lt[1, A052344(n)]` -/
def P8533708958274387281.Spec : Prop :=
  ∀ n, (P8533708958274387281.a n : ℤ) = A185979 (n + 1)

end A185979

/-! ## A185979.P4021787341801991134

`lt[2, A053603(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185979

/-- `lt[2, A053603(n)]` -/
def P4021787341801991134.Spec : Prop :=
  ∀ n, (P4021787341801991134.a n : ℤ) = A185979 (n + 1)

theorem P4021787341801991134.correct : P4021787341801991134.Spec := by
  intro n
  simp only [A185979, Nat.add_sub_cancel]

end A185979

/-! ## A185979.P6010711602044330152

`eq[2, A055642(4*A053603(n))]`
-/

namespace A185979.P6010711602044330152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (4 * A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185979.P6010711602044330152

namespace A185979

/-- `eq[2, A055642(4*A053603(n))]` -/
def P6010711602044330152.Spec : Prop :=
  ∀ n, (P6010711602044330152.a n : ℤ) = A185979 (n + 1)

end A185979

/-! ## A185979.P10357467027999354656

`lt[A010054(n)+1, A052343(n)]`
-/

namespace A185979.P10357467027999354656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185979.P10357467027999354656

namespace A185979

/-- `lt[A010054(n)+1, A052343(n)]` -/
def P10357467027999354656.Spec : Prop :=
  ∀ n, (P10357467027999354656.a n : ℤ) = A185979 (n + 1)

end A185979

/-! ## A185979.P12245263461705187300

`eq[1, A052344(a(A052344(n)))]` with `a(0)=51, a(1)=51`
-/

namespace A185979.P12245263461705187300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [51, 51] fun n f2 =>
  A052344 (f2 (A052344 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185979.P12245263461705187300

namespace A185979

/-- `eq[1, A052344(a(A052344(n)))]` -/
def P12245263461705187300.Spec : Prop :=
  ∀ n, (P12245263461705187300.a n : ℤ) = A185979 (n + 1)

end A185979

/-! ## A185979.P15867842053654097511

`eq[1, A175191((A053603(n)+3)²+1)]`
-/

namespace A185979.P15867842053654097511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175191 ((A053603 n + 3) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185979.P15867842053654097511

namespace A185979

/-- `eq[1, A175191((A053603(n)+3)²+1)]` -/
def P15867842053654097511.Spec : Prop :=
  ∀ n, (P15867842053654097511.a n : ℤ) = A185979 (n + 1)

end A185979

/-! ## A185979.P13543067443770884540

`eq[2, A055642(A178943(A053603(n)+1))]`
-/

namespace A185979.P13543067443770884540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A178943 (A053603 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185979.P13543067443770884540

namespace A185979

/-- `eq[2, A055642(A178943(A053603(n)+1))]` -/
def P13543067443770884540.Spec : Prop :=
  ∀ n, (P13543067443770884540.a n : ℤ) = A185979 (n + 1)

end A185979

/-! ## A185979.P14847422410664405863

`eq[2, A055642(A000040(A053603(n)+2))]`
-/

namespace A185979.P14847422410664405863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000040 (A053603 n + 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185979.P14847422410664405863

namespace A185979

/-- `eq[2, A055642(A000040(A053603(n)+2))]` -/
def P14847422410664405863.Spec : Prop :=
  ∀ n, (P14847422410664405863.a n : ℤ) = A185979 (n + 1)

end A185979

/-! ## A185979.P9608249437209762307

`∪[A185980(n+1), A262749(n+1)]`
-/

namespace A185979.P9608249437209762307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185979.P9608249437209762307

namespace A185979

/-- `∪[A185980(n+1), A262749(n+1)]` -/
def P9608249437209762307.Spec : Prop :=
  ∀ n, (P9608249437209762307.a n : ℤ) = A185979 (n + 1)

end A185979

/-!
# A185980: Nontriangular numbers that are the sum of two (positive) triangular numbers in more than one way.

The programs for A185980, there is no canonical definition to state claims against.
-/

/-! ## A185980.P10085347439949536208

`filter[A118139(n+1), A123110(#)]`
-/

namespace A185980.P10085347439949536208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A185980.P10085347439949536208

/-! ## A185980.P6995450873106037349

`filter[A185979(n+1), A123110(#)]`
-/

namespace A185980.P6995450873106037349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A185980.P6995450873106037349

/-! ## A185980.P8636362073380999891

`lt[A198954(n)+2, A008441(n)]`
-/

namespace A185980.P8636362073380999891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185980.P8636362073380999891

/-! ## A185980.P3797690866804461609

`eq[2, and(A052343(n), A061336(n))]`
-/

namespace A185980.P3797690866804461609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052343 n) (A061336 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185980.P3797690866804461609

/-! ## A185980.P3260487909314230504

`eq[2, and(A052344(n), A061336(n))]`
-/

namespace A185980.P3260487909314230504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052344 n) (A061336 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185980.P3260487909314230504

/-! ## A185980.P2319533894491299985

`eq[or(2, A052343(n)), A052344(n)]`
-/

namespace A185980.P2319533894491299985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A052343 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185980.P2319533894491299985

/-! ## A185980.P10181349620740499861

`∩[A014132(n+1), A118139(n+1)]`
-/

namespace A185980.P10181349620740499861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185980.P10181349620740499861

/-! ## A185980.P14679677752833276409

`∩[A014132(n+1), A185979(n+1)]`
-/

namespace A185980.P14679677752833276409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185980.P14679677752833276409

/-! ## A185980.P15510051948247738988

`∩[A020756(n+1), A258265(n+1)]`
-/

namespace A185980.P15510051948247738988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185980.P15510051948247738988

/-! ## A185980.P16977131598134303199

`∩[A118139(n+1), A185978(n+1)]`
-/

namespace A185980.P16977131598134303199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185980.P16977131598134303199

/-!
# A185982: Triangle read by rows: number of set partitions of n elements with k connectors, 0<=k

The programs for A185982, there is no canonical definition to state claims against.
-/

/-! ## A185982.P8613931315044749111

`A186745(A306100(n+1))+A130749(n)`
-/

namespace A185982.P8613931315044749111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 (A306100 (n + 1)).toNat + A130749 n

end

end A185982.P8613931315044749111

/-! ## A185982.P8721805252461682371

`A008277(n+1)+Δ[A186745(A306100(n))]`
-/

namespace A185982.P8721805252461682371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 (A306100 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) + (f1 (n + 1) - f1 n)

end

end A185982.P8721805252461682371

/-! ## A185982.P1141189793991815344

`A130749(n)+A100950(A274741(n))`
-/

namespace A185982.P1141189793991815344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130749 n + A100950 (A274741 n).toNat

end

end A185982.P1141189793991815344

/-! ## A185982.P18157034803201909949

`A008277(n+1)-A016389(A057732(n+1))`
-/

namespace A185982.P18157034803201909949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A016389 (A057732 (n + 1)).toNat

end

end A185982.P18157034803201909949

/-! ## A185982.P11832004953208377371

`A185264(A169941(2*(n+2)))+A130749(n)`
-/

namespace A185982.P11832004953208377371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A169941 (2 * (n + 2))).toNat + A130749 n

end

end A185982.P11832004953208377371

/-!
# A185983: Triangle read by rows: number of set partitions of n elements with k circular connectors.

The programs for A185983, there is no canonical definition to state claims against.
-/

/-! ## A185983.P5901613336749784097

`A043562(A174791(n))*A191312(n)`
-/

namespace A185983.P5901613336749784097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A174791 n).toNat * A191312 n

end

end A185983.P5901613336749784097

/-! ## A185983.P8306851889121999230

`A289978(A056973(2^n))`
-/

namespace A185983.P8306851889121999230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A056973 (2 ^ n)).toNat

end

end A185983.P8306851889121999230

/-! ## A185983.P2104459714333610844

`A125781(n)%A127055(A201635(n))`
-/

namespace A185983.P2104459714333610844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125781 n) (A127055 (A201635 n).toNat)

end

end A185983.P2104459714333610844

/-! ## A185983.P13422249775221052496

`A118654(A245111(n)+A010060(n))`
-/

namespace A185983.P13422249775221052496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118654 (A245111 n + A010060 n).toNat

end

end A185983.P13422249775221052496

/-! ## A185983.P7156295904311374457

`A307296(A007318(n)*A266599(n+1))`
-/

namespace A185983.P7156295904311374457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307296 (A007318 n * A266599 (n + 1)).toNat

end

end A185983.P7156295904311374457

/-!
# A185984: 1/128 the number of (n+2) X (n+2) binary arrays with each 3 X 3 subblock trace equal to some horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A185984, there is no canonical definition to state claims against.
-/

/-! ## A185984.P11522120953958215306

`A185993((n+1)²+n²)`
-/

namespace A185984.P11522120953958215306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 ((n + 1) ^ 2 + n ^ 2)

end

end A185984.P11522120953958215306

/-!
# A185985: 1/128 the number of (n+2) X 3 binary arrays with each 3 X 3 subblock trace equal to some horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A185985, the canonical program `A185985.P15709430619559429798` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185985 has offset 1).

The definition of A185985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185985.P15709430619559429798

`4*a(n-1)+7*a(n-2)-12*a(n-3)+27*a(n-4)` with `a(0)=0, a(1)=10, a(2)=28, a(3)=200`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185985

/-- `4*a(n-1)+7*a(n-2)-12*a(n-3)+27*a(n-4)` -/
def P15709430619559429798.Spec : Prop :=
  ∀ n, P15709430619559429798.a n = A185985 (n + 1)

theorem P15709430619559429798.correct : P15709430619559429798.Spec := by
  intro n
  simp only [A185985, Nat.add_sub_cancel]

end A185985

/-! ## A185985.P15902535338637282151

`A185993(∑[n]+1)`
-/

namespace A185985.P15902535338637282151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185985.P15902535338637282151

namespace A185985

/-- `A185993(∑[n]+1)` -/
def P15902535338637282151.Spec : Prop :=
  ∀ n, P15902535338637282151.a n = A185985 (n + 1)

end A185985

/-! ## A185985.P10974557738125429650

`lcm(2, A185993(A000124(n)))`
-/

namespace A185985.P10974557738125429650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185993 (A000124 n).toNat)

end

end A185985.P10974557738125429650

namespace A185985

/-- `lcm(2, A185993(A000124(n)))` -/
def P10974557738125429650.Spec : Prop :=
  ∀ n, (P10974557738125429650.a n : ℤ) = A185985 (n + 1)

end A185985

/-! ## A185985.P12797196589177374316

`record[A010054(n)*A185993(n+1)]`
-/

namespace A185985.P12797196589177374316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185985.P12797196589177374316

namespace A185985

/-- `record[A010054(n)*A185993(n+1)]` -/
def P12797196589177374316.Spec : Prop :=
  ∀ n, P12797196589177374316.a n = A185985 (n + 1)

end A185985

/-! ## A185985.P14471726861498447480

`record[A073424(n)*A185993(n+1)]`
-/

namespace A185985.P14471726861498447480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n * A185993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185985.P14471726861498447480

namespace A185985

/-- `record[A073424(n)*A185993(n+1)]` -/
def P14471726861498447480.Spec : Prop :=
  ∀ n, P14471726861498447480.a n = A185985 (n + 1)

end A185985

/-!
# A185986: 1/128 the number of (n+2)X4 binary arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185986, there is no canonical definition to state claims against.
-/

/-! ## A185986.P5166029566157874839

`A185993(∑[n+1]+2)`
-/

namespace A185986.P5166029566157874839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185986.P5166029566157874839

/-! ## A185986.P10320285475623242777

`record[A185993(A114091(n+1)+1)]`
-/

namespace A185986.P10320285475623242777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185986.P10320285475623242777

/-! ## A185986.P8711191668180223050

`record[A010054(n)*A185993(n+2)]`
-/

namespace A185986.P8711191668180223050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185993 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185986.P8711191668180223050

/-! ## A185986.P14246953625912078391

`record[gcd(A185993(n+2), A337835(2*n+1))]`
-/

namespace A185986.P14246953625912078391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185993 (n + 2)) (A337835 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185986.P14246953625912078391

/-! ## A185986.P17381651279339716873

`record[A185993(A101881(n)+1)]`
-/

namespace A185986.P17381651279339716873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185986.P17381651279339716873

/-!
# A185987: 1/128 the number of (n+2)X5 binary arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185987, there is no canonical definition to state claims against.
-/

/-! ## A185987.P16593967513246635950

`A185993(∑[n+2]+4)`
-/

namespace A185987.P16593967513246635950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185987.P16593967513246635950

/-! ## A185987.P6060055734304952685

`or(A025461(n), A185993(A167614(n+1)))`
-/

namespace A185987.P6060055734304952685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025461 n) (A185993 (A167614 (n + 1)).toNat)

end

end A185987.P6060055734304952685

/-! ## A185987.P13201911367655534574

`or(A185993(A167614(n+1)), A316869(n))`
-/

namespace A185987.P13201911367655534574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185993 (A167614 (n + 1)).toNat) (A316869 n)

end

end A185987.P13201911367655534574

/-! ## A185987.P10333061441060969792

`A185993(A167614(n+1))+A034561(n+1)`
-/

namespace A185987.P10333061441060969792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A167614 (n + 1)).toNat + A034561 (n + 1)

end

end A185987.P10333061441060969792

/-! ## A185987.P12434039049062082055

`A185993(A167614(n+1))+A070202(n+1)`
-/

namespace A185987.P12434039049062082055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A167614 (n + 1)).toNat + A070202 (n + 1)

end

end A185987.P12434039049062082055

/-!
# A185988: 1/128 the number of (n+2)X6 binary arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185988, there is no canonical definition to state claims against.
-/

/-! ## A185988.P7271431373986819418

`A185993(A374004(n+1))`
-/

namespace A185988.P7271431373986819418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A374004 (n + 1)).toNat

end

end A185988.P7271431373986819418

/-! ## A185988.P2941275667998698060

`A185993(A055999(n)+10)`
-/

namespace A185988.P2941275667998698060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A055999 n + 10).toNat

end

end A185988.P2941275667998698060

/-! ## A185988.P15737664006542769441

`A185993(A167614(n+2)+1)`
-/

namespace A185988.P15737664006542769441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A167614 (n + 2) + 1).toNat

end

end A185988.P15737664006542769441

/-! ## A185988.P4452741668843704757

`A185993(Δ[A264443(n)-n²])`
-/

namespace A185988.P4452741668843704757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (f1 (n + 1) - f1 n).toNat

end

end A185988.P4452741668843704757

/-! ## A185988.P13926990590095154174

`A185993(A141214(n+1))`
-/

namespace A185988.P13926990590095154174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A141214 (n + 1)).toNat

end

end A185988.P13926990590095154174

/-!
# A185989: 1/128 the number of (n+2)X7 binary arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185989, there is no canonical definition to state claims against.
-/

/-! ## A185989.P639041391973267002

`A185993(A374005(n+1))`
-/

namespace A185989.P639041391973267002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A374005 (n + 1)).toNat

end

end A185989.P639041391973267002

/-! ## A185989.P14172559980102743758

`A185993(A155212(n)+13)`
-/

namespace A185989.P14172559980102743758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A155212 n + 13).toNat

end

end A185989.P14172559980102743758

/-! ## A185989.P7249120655475648264

`A185993(A056000(n)+15)`
-/

namespace A185989.P7249120655475648264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A056000 n + 15).toNat

end

end A185989.P7249120655475648264

/-! ## A185989.P18012368621184859289

`A185993(eq[6, A131818(n+1)])`
-/

namespace A185989.P18012368621184859289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185989.P18012368621184859289

/-! ## A185989.P14745299655190308491

`A185993(Δ[A264443(n)])`
-/

namespace A185989.P14745299655190308491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (f1 (n + 1) - f1 n).toNat

end

end A185989.P14745299655190308491

/-!
# A185990: 1/128 the number of (n+2)X8 binary arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185990, there is no canonical definition to state claims against.
-/

/-! ## A185990.P11824900562005562292

`A185993(A374007(n+1))`
-/

namespace A185990.P11824900562005562292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A374007 (n + 1)).toNat

end

end A185990.P11824900562005562292

/-! ## A185990.P2279957618375892143

`A185993(eq[7, A131818(n+1)])`
-/

namespace A185990.P2279957618375892143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185990.P2279957618375892143

/-! ## A185990.P2116272816860159122

`A185993(A056119(n)+16)`
-/

namespace A185990.P2116272816860159122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A056119 n + 16).toNat

end

end A185990.P2116272816860159122

/-! ## A185990.P16251435062550362828

`A185993(eq[5, A193592(n)])`
-/

namespace A185990.P16251435062550362828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185990.P16251435062550362828

/-! ## A185990.P3134858284674316037

`A185993(eq[8, A185782(n+1)])`
-/

namespace A185990.P3134858284674316037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185990.P3134858284674316037

/-!
# A185991: 1/128 the number of (n+2)X9 binary arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185991, there is no canonical definition to state claims against.
-/

/-! ## A185991.P9246561276549710095

`A185993(A374008(n+1))`
-/

namespace A185991.P9246561276549710095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A374008 (n + 1)).toNat

end

end A185991.P9246561276549710095

/-! ## A185991.P9004326138521015460

`A185993(A167499(n+5)+2)`
-/

namespace A185991.P9004326138521015460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A167499 (n + 5) + 2).toNat

end

end A185991.P9004326138521015460

/-! ## A185991.P3016052157253614828

`A185993(eq[8, A131818(n+1)])`
-/

namespace A185991.P3016052157253614828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185991.P3016052157253614828

/-! ## A185991.P7581293193618333517

`A185993(eq[6, A193592(n)])`
-/

namespace A185991.P7581293193618333517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185991.P7581293193618333517

/-!
# A185992: 1/128 the number of (n+2)X10 binary arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185992, there is no canonical definition to state claims against.
-/

/-! ## A185992.P11795742489682114613

`A185993(A374009(n+1))`
-/

namespace A185992.P11795742489682114613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (A374009 (n + 1)).toNat

end

end A185992.P11795742489682114613

/-! ## A185992.P9774924590671421759

`A185993(eq[9, A131818(n+1)])`
-/

namespace A185992.P9774924590671421759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185992.P9774924590671421759

/-! ## A185992.P13911329706638102666

`A185993(eq[64, A057728(n+1)])`
-/

namespace A185992.P13911329706638102666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185992.P13911329706638102666

/-!
# A185994: A generalized q-Catalan number for q=2.

The programs for A185994, there is no canonical definition to state claims against.
-/

/-! ## A185994.P15771902743394791999

`A004198(A002110(n))+A000629(n)`
-/

namespace A185994.P15771902743394791999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A002110 n).toNat + A000629 n

end

end A185994.P15771902743394791999

/-! ## A185994.P8516377868575455486

`A027907(A047707(n))+A002050(n)`
-/

namespace A185994.P8516377868575455486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A047707 n).toNat + A002050 n

end

end A185994.P8516377868575455486

/-!
# A185995: a(n) = 2^(binomial(2*n+2,3)/4).

The programs for A185995, the canonical program `A185995.P979104805758151756` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185995 has offset 0).

The definition of A185995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185995.P979104805758151756

`2^A000330(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A185995

/-- `2^A000330(n)` -/
def P979104805758151756.Spec : Prop :=
  ∀ n, P979104805758151756.a n = (A185995 n : ℚ)

end A185995

/-! ## A185995.P6162870731822898296

`2^∑[n²]`
-/

namespace A185995.P6162870731822898296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185995.P6162870731822898296

namespace A185995

/-- `2^∑[n²]` -/
def P6162870731822898296.Spec : Prop :=
  ∀ n, (P6162870731822898296.a n : ℤ) = A185995 n

end A185995

/-! ## A185995.P15930257159955869161

`∏[2^dr(n)²]`
-/

namespace A185995.P15930257159955869161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.digitalRoot (n : ℤ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185995.P15930257159955869161

namespace A185995

/-- `∏[2^dr(n)²]` -/
def P15930257159955869161.Spec : Prop :=
  ∀ n, (P15930257159955869161.a n : ℤ) = A185995 n

end A185995

/-! ## A185995.P5119353081345372880

`∏[2^(n*dr(n))]`
-/

namespace A185995.P5119353081345372880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n * SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185995.P5119353081345372880

namespace A185995

/-- `∏[2^(n*dr(n))]` -/
def P5119353081345372880.Spec : Prop :=
  ∀ n, (P5119353081345372880.a n : ℤ) = A185995 n

end A185995

/-! ## A185995.P2453174283662430911

`∏[2^n^dr(n)]`
-/

namespace A185995.P2453174283662430911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n) ^ SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185995.P2453174283662430911

namespace A185995

/-- `∏[2^n^dr(n)]` -/
def P2453174283662430911.Spec : Prop :=
  ∀ n, (P2453174283662430911.a n : ℤ) = A185995 n

end A185995

/-!
# A185996: Coefficient array of orthogonal polynomials P(n,x)=(x-2n+2)*P(n-1,x)-(2n-3)*P(n-2,x), P(0,x)=1, P(1,x)=x-1.

The programs for A185996, there is no canonical definition to state claims against.
-/

/-! ## A185996.P1647004123257544670

`A008683(A096334(n))*A325118(A294609(n+1))`
-/

namespace A185996.P1647004123257544670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A096334 n).toNat * A325118 (A294609 (n + 1)).toNat

end

end A185996.P1647004123257544670

/-!
# A185998: Expansion of 1/(1-x-x^2/(1-2x-3x^2/(1-4x-5x^2/(1-6x-7x^2/(1-8x-9x^2/(1-...)))))) (continued fraction).

The programs for A185998, there is no canonical definition to state claims against.
-/

/-! ## A185998.P8375432499631728106

`A178119((n-1)%(n+1))`
-/

namespace A185998.P8375432499631728106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178119 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A185998.P8375432499631728106

/-! ## A185998.P8705684169833490659

`A178119(A028310(n)-1)`
-/

namespace A185998.P8705684169833490659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178119 (A028310 n - 1).toNat

end

end A185998.P8705684169833490659

/-! ## A185998.P8292687771134622427

`A178119(A004273(n)-n)`
-/

namespace A185998.P8292687771134622427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178119 (A004273 n - (n : ℤ)).toNat

end

end A185998.P8292687771134622427

/-! ## A185998.P9712633829340711466

`A178119(n-A057427(n))`
-/

namespace A185998.P9712633829340711466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178119 ((n : ℤ) - A057427 n).toNat

end

end A185998.P9712633829340711466

/-! ## A185998.P3792121358383287646

`A178119(n-A178334(n))`
-/

namespace A185998.P3792121358383287646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178119 ((n : ℤ) - A178334 n).toNat

end

end A185998.P3792121358383287646

