import SequenceMachineLib
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C002
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
import Seq.Opaque.C024

/-!
# A176200: A symmetrical triangle T(n, m) = 2*Eulerian(n+1, m) -1, read by rows.

The programs for A176200, there is no canonical definition to state claims against.
-/

/-! ## A176200.P8032539148159534023

`ceil(A176204(n)/2)`
-/

namespace A176200.P8032539148159534023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176204 n : ℚ) / 2⌉

end

end A176200.P8032539148159534023

/-! ## A176200.P6006487728366513129

`2*A008292(n+1)-1`
-/

namespace A176200.P6006487728366513129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - 1

end

end A176200.P6006487728366513129

/-! ## A176200.P11247217136020376820

`2*(A123125(comp[∑[n]])-1)+1`
-/

namespace A176200.P11247217136020376820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1) + 1

end

end A176200.P11247217136020376820

/-! ## A176200.P8316280187710808106

`A141690(n)+A014473(n)`
-/

namespace A176200.P8316280187710808106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + A014473 n

end

end A176200.P8316280187710808106

/-! ## A176200.P12681239440795093592

`A007318(n)+A141690(n)-1`
-/

namespace A176200.P12681239440795093592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A141690 n - 1)

end

end A176200.P12681239440795093592

/-! ## A176200.P3242142234524980295

`2*A123125(A014132(n+1))-1`
-/

namespace A176200.P3242142234524980295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123125 (A014132 (n + 1)).toNat - 1

end

end A176200.P3242142234524980295

/-! ## A176200.P8810193439645807840

`2*A173018(A007401(n+1))-1`
-/

namespace A176200.P8810193439645807840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173018 (A007401 (n + 1)).toNat - 1

end

end A176200.P8810193439645807840

/-! ## A176200.P16720237081142372445

`2*A173018(lt[0, A173787(n)])-1`
-/

namespace A176200.P16720237081142372445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A176200.P16720237081142372445

/-! ## A176200.P5185881986383221489

`A008292(n+1)+A176487(n)-A007318(n)`
-/

namespace A176200.P5185881986383221489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A176487 n - A007318 n)

end

end A176200.P5185881986383221489

/-! ## A176200.P7644300382674168433

`A008292(A000027(n+1))+A008292(n+1)-1`
-/

namespace A176200.P7644300382674168433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000027 (n + 1)).toNat + (A008292 (n + 1) - 1)

end

end A176200.P7644300382674168433

/-! ## A176200.P7452672860775168537

`A008292(n+1)+A008292(n+1)-char[A025480(n)]`
-/

namespace A176200.P7452672860775168537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A008292 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A176200.P7452672860775168537

/-! ## A176200.P17902489116923146049

`A008292(n+1)+A008292(n+1)-char[A056539(n)]`
-/

namespace A176200.P17902489116923146049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A008292 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A176200.P17902489116923146049

/-! ## A176200.P15611688038181455894

`A008292(n+1)+A008292(n+1)-A034947(n+1)²`
-/

namespace A176200.P15611688038181455894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A008292 (n + 1) - A034947 (n + 1) ^ 2)

end

end A176200.P15611688038181455894

/-! ## A176200.P884493942506536211

`A008292(n+1)+A008292(n+1)-A001222(A002144(n+1))`
-/

namespace A176200.P884493942506536211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A008292 (n + 1) - A001222 (A002144 (n + 1)).toNat)

end

end A176200.P884493942506536211

/-! ## A176200.P4380942328738259538

`A008292(n+1)+A008292(A038722(n+1))-1`
-/

namespace A176200.P4380942328738259538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A008292 (A038722 (n + 1)).toNat - 1)

end

end A176200.P4380942328738259538

/-! ## A176200.P5420873826459787562

`2*A141686(n+1)/A007318(n)-1`
-/

namespace A176200.P5420873826459787562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A141686 (n + 1) : ℚ) / (A007318 n : ℚ)) - 1

end

end A176200.P5420873826459787562

/-! ## A176200.P17135878169740903636

`A060187(n+1)+A154338(n)-1`
-/

namespace A176200.P17135878169740903636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A154338 n - 1)

end

end A176200.P17135878169740903636

/-! ## A176200.P18192115286525527317

`A166344(n+1)+A166345(n+1)-1`
-/

namespace A176200.P18192115286525527317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166344 (n + 1) + (A166345 (n + 1) - 1)

end

end A176200.P18192115286525527317

/-! ## A176200.P7163372945978544484

`2*sqrt(A177823(n+1))-1`
-/

namespace A176200.P7163372945978544484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A177823 (n + 1) : ℝ) - 1

end

end A176200.P7163372945978544484

/-! ## A176200.P8301595506893131926

`A008292(n+1)+A008292(n+1)-A059268(A000217(n))`
-/

namespace A176200.P8301595506893131926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A008292 (n + 1) - A059268 (A000217 n).toNat)

end

end A176200.P8301595506893131926

/-!
# A176201: G.f. satisfies A(x)/A(x^2) = (1 + 9x + 9x^2 + 9x^3 + ...).

The programs for A176201, there is no canonical definition to state claims against.
-/

/-! ## A176201.P1940604215063845178

`A007425(A001692(n)*A060151(n+1))`
-/

namespace A176201.P1940604215063845178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A001692 n * A060151 (n + 1)).toNat

end

end A176201.P1940604215063845178

/-! ## A176201.P16549612954912819510

`A007425(A001692(n)*A181988(n+1))`
-/

namespace A176201.P16549612954912819510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A001692 n * A181988 (n + 1)).toNat

end

end A176201.P16549612954912819510

/-!
# A176202: Convolution triangle, row sums = A000041. M = A000041 in each column with two interleaved zeros; Q = A000726 diagonalized with the rest zeros. A176202 = M*Q.

The programs for A176202, there is no canonical definition to state claims against.
-/

/-! ## A176202.P2206101980783269368

`A370813(A057988(n+2)+2)`
-/

namespace A176202.P2206101980783269368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A057988 (n + 2) + 2).toNat

end

end A176202.P2206101980783269368

/-! ## A176202.P4994165173165064583

`and(A175788(n), A251984(A025620(n+1)))`
-/

namespace A176202.P4994165173165064583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175788 n) (A251984 (A025620 (n + 1)).toNat)

end

end A176202.P4994165173165064583

/-! ## A176202.P14002224201854903208

`and(A054571(A022121(n)), A058071(n))`
-/

namespace A176202.P14002224201854903208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054571 (A022121 n).toNat) (A058071 n)

end

end A176202.P14002224201854903208

/-! ## A176202.P13518851434071348437

`and(A161564(n), A325988(A250229(n+1)))`
-/

namespace A176202.P13518851434071348437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161564 n) (A325988 (A250229 (n + 1)).toNat)

end

end A176202.P13518851434071348437

/-! ## A176202.P7847224578696371626

`A326625(A115994(n+1)*A253189(n+1))`
-/

namespace A176202.P7847224578696371626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (A115994 (n + 1) * A253189 (n + 1)).toNat

end

end A176202.P7847224578696371626

/-!
# A176203: Triangle read by rows: T(n, k) = 16*binomial(n, k) - 15.

The programs for A176203, the canonical program `A176203.P792592331452368531` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176203 has offset 0).

The definition of A176203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176203.P792592331452368531

`2*A168625(n)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A176203

/-- `2*A168625(n)-1` -/
def P792592331452368531.Spec : Prop :=
  ∀ n, P792592331452368531.a n = A176203 n

theorem P792592331452368531.correct : P792592331452368531.Spec := by
  intro n
  simp only [A176203]

end A176203

/-! ## A176203.P4498229104448737581

`4*A131061(n)-3`
-/

namespace A176203.P4498229104448737581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131061 n - 3

end

end A176203.P4498229104448737581

namespace A176203

/-- `4*A131061(n)-3` -/
def P4498229104448737581.Spec : Prop :=
  ∀ n, P4498229104448737581.a n = A176203 n

end A176203

/-! ## A176203.P10151580041197728064

`16*(A007318(n)-1)+1`
-/

namespace A176203.P10151580041197728064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A007318 n - 1) + 1

end

end A176203.P10151580041197728064

namespace A176203

/-- `16*(A007318(n)-1)+1` -/
def P10151580041197728064.Spec : Prop :=
  ∀ n, P10151580041197728064.a n = A176203 n

end A176203

/-! ## A176203.P16700417471086608664

`A014473(n)/(1/4)²+1`
-/

namespace A176203.P16700417471086608664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014473 n : ℚ) / ((1 : ℚ) / 4) ^ 2 + 1

end

end A176203.P16700417471086608664

namespace A176203

/-- `A014473(n)/(1/4)²+1` -/
def P16700417471086608664.Spec : Prop :=
  ∀ n, P16700417471086608664.a n = (A176203 n : ℚ)

end A176203

/-! ## A176203.P12014741715477198968

`4*(2*A109128(n)-1)-3`
-/

namespace A176203.P12014741715477198968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * A109128 n - 1) - 3

end

end A176203.P12014741715477198968

namespace A176203

/-- `4*(2*A109128(n)-1)-3` -/
def P12014741715477198968.Spec : Prop :=
  ∀ n, P12014741715477198968.a n = A176203 n

end A176203

/-! ## A176203.P7477291727344354631

`2*(A131067(n)+A014473(n))-1`
-/

namespace A176203.P7477291727344354631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131067 n + A014473 n) - 1

end

end A176203.P7477291727344354631

namespace A176203

/-- `2*(A131067(n)+A014473(n))-1` -/
def P7477291727344354631.Spec : Prop :=
  ∀ n, P7477291727344354631.a n = A176203 n

end A176203

/-! ## A176203.P10470821522403935314

`4*(A131060(n)+A014473(n))-3`
-/

namespace A176203.P10470821522403935314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A131060 n + A014473 n) - 3

end

end A176203.P10470821522403935314

namespace A176203

/-- `4*(A131060(n)+A014473(n))-3` -/
def P10470821522403935314.Spec : Prop :=
  ∀ n, P10470821522403935314.a n = A176203 n

end A176203

/-! ## A176203.P7859968308463935459

`A158057(A014473(n))`
-/

namespace A176203.P7859968308463935459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (A014473 n).toNat

end

end A176203.P7859968308463935459

namespace A176203

/-- `A158057(A014473(n))` -/
def P7859968308463935459.Spec : Prop :=
  ∀ n, P7859968308463935459.a n = A176203 n

end A176203

/-! ## A176203.P18435573364989662938

`A158057(A007318(n)-1)`
-/

namespace A176203.P18435573364989662938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (A007318 n - 1).toNat

end

end A176203.P18435573364989662938

namespace A176203

/-- `A158057(A007318(n)-1)` -/
def P18435573364989662938.Spec : Prop :=
  ∀ n, P18435573364989662938.a n = A176203 n

end A176203

/-! ## A176203.P1000396110257668781

`A008598(A007318(n)-1)+1`
-/

namespace A176203.P1000396110257668781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A007318 n - 1).toNat + 1

end

end A176203.P1000396110257668781

namespace A176203

/-- `A008598(A007318(n)-1)+1` -/
def P1000396110257668781.Spec : Prop :=
  ∀ n, P1000396110257668781.a n = A176203 n

end A176203

/-! ## A176203.P2853377519821979541

`A168625(n)+A168625(n)-A168625(A161680(n))`
-/

namespace A176203.P2853377519821979541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (A168625 n - A168625 (A161680 n).toNat)

end

end A176203.P2853377519821979541

namespace A176203

/-- `A168625(n)+A168625(n)-A168625(A161680(n))` -/
def P2853377519821979541.Spec : Prop :=
  ∀ n, P2853377519821979541.a n = A176203 n

end A176203

/-! ## A176203.P16064307973294325538

`A151977(A028326(n))`
-/

namespace A176203.P16064307973294325538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A028326 n).toNat

end

end A176203.P16064307973294325538

namespace A176203

/-- `A151977(A028326(n))` -/
def P16064307973294325538.Spec : Prop :=
  ∀ n, P16064307973294325538.a n = A176203 n

end A176203

/-! ## A176203.P12934170783530387155

`A017077(2*A014473(n))`
-/

namespace A176203.P12934170783530387155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (2 * A014473 n).toNat

end

end A176203.P12934170783530387155

namespace A176203

/-- `A017077(2*A014473(n))` -/
def P12934170783530387155.Spec : Prop :=
  ∀ n, P12934170783530387155.a n = A176203 n

end A176203

/-! ## A176203.P5911809364154816271

`A017077(2*(A007318(n)-1))`
-/

namespace A176203.P5911809364154816271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (2 * (A007318 n - 1)).toNat

end

end A176203.P5911809364154816271

namespace A176203

/-- `A017077(2*(A007318(n)-1))` -/
def P5911809364154816271.Spec : Prop :=
  ∀ n, P5911809364154816271.a n = A176203 n

end A176203

/-! ## A176203.P2597549219239959042

`2*A047452(A109128(n))-1`
-/

namespace A176203.P2597549219239959042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047452 (A109128 n).toNat - 1

end

end A176203.P2597549219239959042

namespace A176203

/-- `2*A047452(A109128(n))-1` -/
def P2597549219239959042.Spec : Prop :=
  ∀ n, P2597549219239959042.a n = A176203 n

end A176203

/-! ## A176203.P14511773257882078154

`2*A075123(A132737(n))-1`
-/

namespace A176203.P14511773257882078154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075123 (A132737 n).toNat - 1

end

end A176203.P14511773257882078154

namespace A176203

/-- `2*A075123(A132737(n))-1` -/
def P14511773257882078154.Spec : Prop :=
  ∀ n, P14511773257882078154.a n = A176203 n

end A176203

/-! ## A176203.P14426260023468972615

`2*A168390(A132731(n))-1`
-/

namespace A176203.P14426260023468972615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168390 (A132731 n).toNat - 1

end

end A176203.P14426260023468972615

namespace A176203

/-- `2*A168390(A132731(n))-1` -/
def P14426260023468972615.Spec : Prop :=
  ∀ n, P14426260023468972615.a n = A176203 n

end A176203

/-! ## A176203.P2101704864567146847

`A017077(A007318(n)+A007318(n)-2)`
-/

namespace A176203.P2101704864567146847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A007318 n + (A007318 n - 2)).toNat

end

end A176203.P2101704864567146847

namespace A176203

/-- `A017077(A007318(n)+A007318(n)-2)` -/
def P2101704864567146847.Spec : Prop :=
  ∀ n, P2101704864567146847.a n = A176203 n

end A176203

/-! ## A176203.P306707787620053394

`A017077(A007318(n)-(2-A007318(n)))`
-/

namespace A176203.P306707787620053394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A007318 n - (2 - A007318 n)).toNat

end

end A176203.P306707787620053394

namespace A176203

/-- `A017077(A007318(n)-(2-A007318(n)))` -/
def P306707787620053394.Spec : Prop :=
  ∀ n, P306707787620053394.a n = A176203 n

end A176203

/-! ## A176203.P6958703254776019848

`A247061(A131060(n))`
-/

namespace A176203.P6958703254776019848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (A131060 n).toNat

end

end A176203.P6958703254776019848

namespace A176203

/-- `A247061(A131060(n))` -/
def P6958703254776019848.Spec : Prop :=
  ∀ n, P6958703254776019848.a n = A176203 n

end A176203

/-!
# A176204: Triangle T(n, k) = 4 * A008292(n+1, k) - 3, read by rows.

The programs for A176204, there is no canonical definition to state claims against.
-/

/-! ## A176204.P5524176977963814572

`2*A176200(n)-1`
-/

namespace A176204.P5524176977963814572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176200 n - 1

end

end A176204.P5524176977963814572

/-! ## A176204.P777800682526578036

`4*A008292(n+1)-3`
-/

namespace A176204.P777800682526578036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008292 (n + 1) - 3

end

end A176204.P777800682526578036

/-! ## A176204.P6831382604264521412

`4*A123125(A014132(n+1))-3`
-/

namespace A176204.P6831382604264521412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123125 (A014132 (n + 1)).toNat - 3

end

end A176204.P6831382604264521412

/-! ## A176204.P14741740470889369540

`2*(A141690(n)+A014473(n))-1`
-/

namespace A176204.P14741740470889369540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141690 n + A014473 n) - 1

end

end A176204.P14741740470889369540

/-! ## A176204.P9194027692258400404

`4*(A128613(n+1)+A128612(n+1))-3`
-/

namespace A176204.P9194027692258400404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A128613 (n + 1) + A128612 (n + 1)) - 3

end

end A176204.P9194027692258400404

/-! ## A176204.P8321974454234935716

`A176200(A061579(n))+A176200(n)-1`
-/

namespace A176204.P8321974454234935716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 (A061579 n).toNat + (A176200 n - 1)

end

end A176204.P8321974454234935716

/-! ## A176204.P11081704551304105177

`4*A065826(n+1)/A002260(n+1)-3`
-/

namespace A176204.P11081704551304105177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A065826 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)) - 3

end

end A176204.P11081704551304105177

/-! ## A176204.P1024349331792967603

`4*A141686(n+1)/A007318(n)-3`
-/

namespace A176204.P1024349331792967603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A141686 (n + 1) : ℚ) / (A007318 n : ℚ)) - 3

end

end A176204.P1024349331792967603

/-! ## A176204.P16428799819997099392

`4*sqrt(A177823(n+1))-3`
-/

namespace A176204.P16428799819997099392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A177823 (n + 1) : ℝ) - 3

end

end A176204.P16428799819997099392

/-!
# A176206: Irregular triangle T(n,k) (n >= 1, k >= 1) read by rows: row n has length A000070(n-1) and every column k gives the positive integers.

The programs for A176206, there is no canonical definition to state claims against.
-/

/-! ## A176206.P18265696307640268121

`A338156(eq[A066247(2*(n+1)), A338156(n+1)])`
-/

namespace A176206.P18265696307640268121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176206.P18265696307640268121

/-! ## A176206.P5714044943093822140

`A338156(eq[A054977(n), A338156(n+1)])`
-/

namespace A176206.P5714044943093822140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176206.P5714044943093822140

/-! ## A176206.P5410484684580047320

`A338156(eq[A057427(n), A338156(n+1)])`
-/

namespace A176206.P5410484684580047320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176206.P5410484684580047320

/-! ## A176206.P8407662994101325570

`A338156(eq[A158388(n), A338156(n+1)])`
-/

namespace A176206.P8407662994101325570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176206.P8407662994101325570

/-! ## A176206.P6412075390944428937

`A338156(lt[A338156(n+1), A046698(3*n+1)])`
-/

namespace A176206.P6412075390944428937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176206.P6412075390944428937

/-! ## A176206.P11900224223430795330

`ceil((A340530(n+1)/sqrt(3)+1)/ϕ)`
-/

namespace A176206.P11900224223430795330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A340530 (n + 1) : ℝ) / Real.sqrt (3 : ℝ) + 1) / Real.goldenRatio⌉

end

end A176206.P11900224223430795330

/-! ## A176206.P1001141726162502851

`A000006(A340530(n+1))`
-/

namespace A176206.P1001141726162502851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A340530 (n + 1)).toNat

end

end A176206.P1001141726162502851

/-! ## A176206.P5720570199968388915

`A127321(A340530(n+1)²)`
-/

namespace A176206.P5720570199968388915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A340530 (n + 1) ^ 2).toNat

end

end A176206.P5720570199968388915

/-! ## A176206.P13378802754511746131

`A000720(A340530(n+1)+1)`
-/

namespace A176206.P13378802754511746131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A340530 (n + 1) + 1).toNat

end

end A176206.P13378802754511746131

/-!
# A176207: Permutations of partitions listed in A080577 with partition lengths listed in A176208; the table has shape A058884.

The programs for A176207, there is no canonical definition to state claims against.
-/

/-! ## A176207.P10299719742472980981

`gcd(A352622(A352599(n+1)), A352628(n))`
-/

namespace A176207.P10299719742472980981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A352622 (A352599 (n + 1)).toNat) (A352628 n)

end

end A176207.P10299719742472980981

/-! ## A176207.P15072678308951807183

`gcd(A059130(n), A153783(A049917(n+1)))`
-/

namespace A176207.P15072678308951807183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059130 n) (A153783 (A049917 (n + 1)).toNat)

end

end A176207.P15072678308951807183

/-! ## A176207.P4492752621067167044

`A317954(A284996(n+1)+A032277(n+1)²)`
-/

namespace A176207.P4492752621067167044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (A284996 (n + 1) + A032277 (n + 1) ^ 2).toNat

end

end A176207.P4492752621067167044

/-! ## A176207.P18260743101733084723

`A059130(n)-A085980(A076970(A213954(n+2)))`
-/

namespace A176207.P18260743101733084723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059130 n - A085980 (A076970 (A213954 (n + 2)).toNat).toNat

end

end A176207.P18260743101733084723

/-! ## A176207.P13180602179724016483

`A031346(A300890(A084646(n+1)*A136301(n+3)))`
-/

namespace A176207.P13180602179724016483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A300890 (A084646 (n + 1) * A136301 (n + 3)).toNat).toNat

end

end A176207.P13180602179724016483

/-!
# A176208: An irregular table with shape sequence A058884 measuring the length of ordered partitions defined by A176207.

The programs for A176208, there is no canonical definition to state claims against.
-/

/-! ## A176208.P17541692693063113190

`A000120(∩[A328596(n+1), A329367(n+1)])`
-/

namespace A176208.P17541692693063113190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329367 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176208.P17541692693063113190

/-! ## A176208.P17255658933920901205

`A000120(eq[A293668(n), A329313(n)])`
-/

namespace A176208.P17255658933920901205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176208.P17255658933920901205

/-! ## A176208.P10294499463488510066

`A048881(eq[A293668(n), A329313(n)])`
-/

namespace A176208.P10294499463488510066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176208.P10294499463488510066

/-! ## A176208.P11893042706509866890

`A000120(eq[A329313(n), A347523(n)])`
-/

namespace A176208.P11893042706509866890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176208.P11893042706509866890

/-! ## A176208.P2474333407481322723

`A000120(lt[A329313(n)², A334029(n)])`
-/

namespace A176208.P2474333407481322723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176208.P2474333407481322723

/-!
# A176209: Numbers that can be greedily decomposed as a sum of two or more squares >= 4.

The programs for A176209, the canonical program `A176209.P9314758080330930000` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176209 has offset 1).

The definition of A176209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9826 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176209.P9314758080330930000

`filter[A376357(n+1), A049240(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176209

/-- `filter[A376357(n+1), A049240(#)]` -/
def P9314758080330930000.Spec : Prop :=
  ∀ n, P9314758080330930000.a n = A176209 (n + 1)

theorem P9314758080330930000.correct : P9314758080330930000.Spec := by
  intro n
  simp only [A176209, Nat.add_sub_cancel]

end A176209

/-! ## A176209.P3800074697696257674

`∩[A000037(n+1), A376357(n+1)]`
-/

namespace A176209.P3800074697696257674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176209.P3800074697696257674

namespace A176209

/-- `∩[A000037(n+1), A376357(n+1)]` -/
def P3800074697696257674.Spec : Prop :=
  ∀ n, (P3800074697696257674.a n : ℤ) = A176209 (n + 1)

end A176209

/-! ## A176209.P11792665037826243387

`∩[A164514(n+1), A376357(n+1)]`
-/

namespace A176209.P11792665037826243387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176209.P11792665037826243387

namespace A176209

/-- `∩[A164514(n+1), A376357(n+1)]` -/
def P11792665037826243387.Spec : Prop :=
  ∀ n, (P11792665037826243387.a n : ℤ) = A176209 (n + 1)

end A176209

/-! ## A176209.P2518071166157027304

`lt[6, a(A053186(n))²]` with `a(0)=2, a(1)=0`
-/

namespace A176209.P2518071166157027304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  f2 (A053186 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176209.P2518071166157027304

namespace A176209

/-- `lt[6, a(A053186(n))²]` -/
def P2518071166157027304.Spec : Prop :=
  ∀ n, (P2518071166157027304.a n : ℤ) = A176209 (n + 1)

end A176209

/-! ## A176209.P13566227293811650406

`filter[A376357(n+1), A267594(#)]`
-/

namespace A176209.P13566227293811650406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A176209.P13566227293811650406

namespace A176209

/-- `filter[A376357(n+1), A267594(#)]` -/
def P13566227293811650406.Spec : Prop :=
  ∀ n, P13566227293811650406.a n = A176209 (n + 1)

end A176209

/-! ## A176209.P11888960084284848869

`filter[A376357(n+1), A267612(#)]`
-/

namespace A176209.P11888960084284848869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A176209.P11888960084284848869

namespace A176209

/-- `filter[A376357(n+1), A267612(#)]` -/
def P11888960084284848869.Spec : Prop :=
  ∀ n, P11888960084284848869.a n = A176209 (n + 1)

end A176209

/-! ## A176209.P2686399863058493670

`filter[A376357(n+1), A267635(#)]`
-/

namespace A176209.P2686399863058493670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A176209.P2686399863058493670

namespace A176209

/-- `filter[A376357(n+1), A267635(#)]` -/
def P2686399863058493670.Spec : Prop :=
  ∀ n, P2686399863058493670.a n = A176209 (n + 1)

end A176209

/-! ## A176209.P5729109150781712192

`eq[1, A000045(a(A053186(n)))]` with `a(0)=3, a(1)=0`
-/

namespace A176209.P5729109150781712192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  A000045 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176209.P5729109150781712192

namespace A176209

/-- `eq[1, A000045(a(A053186(n)))]` -/
def P5729109150781712192.Spec : Prop :=
  ∀ n, (P5729109150781712192.a n : ℤ) = A176209 (n + 1)

end A176209

/-! ## A176209.P1023154400284365773

`eq[1, A000120(a(A053186(n)))]` with `a(0)=3, a(1)=0`
-/

namespace A176209.P1023154400284365773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  A000120 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176209.P1023154400284365773

namespace A176209

/-- `eq[1, A000120(a(A053186(n)))]` -/
def P1023154400284365773.Spec : Prop :=
  ∀ n, (P1023154400284365773.a n : ℤ) = A176209 (n + 1)

end A176209

/-! ## A176209.P13812516396152652528

`eq[1, A000194(a(A053186(n)))]` with `a(0)=3, a(1)=0`
-/

namespace A176209.P13812516396152652528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  A000194 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176209.P13812516396152652528

namespace A176209

/-- `eq[1, A000194(a(A053186(n)))]` -/
def P13812516396152652528.Spec : Prop :=
  ∀ n, (P13812516396152652528.a n : ℤ) = A176209 (n + 1)

end A176209

/-! ## A176209.P834385375733874869

`eq[1, A062108(a(A053186(n)))]` with `a(0)=3, a(1)=0`
-/

namespace A176209.P834385375733874869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176209.P834385375733874869

namespace A176209

/-- `eq[1, A062108(a(A053186(n)))]` -/
def P834385375733874869.Spec : Prop :=
  ∀ n, (P834385375733874869.a n : ℤ) = A176209 (n + 1)

end A176209

/-! ## A176209.P3073384583874086614

`eq[1, A309331(a(A053186(n)))]` with `a(0)=3, a(1)=0`
-/

namespace A176209.P3073384583874086614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  A309331 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176209.P3073384583874086614

namespace A176209

/-- `eq[1, A309331(a(A053186(n)))]` -/
def P3073384583874086614.Spec : Prop :=
  ∀ n, (P3073384583874086614.a n : ℤ) = A176209 (n + 1)

end A176209

/-!
# A176210: Triangle read by rows in which row n (n>=3) lists those partitions of n with every part > 2.

The programs for A176210, there is no canonical definition to state claims against.
-/

/-! ## A176210.P9629718925769803399

`A349946(A212176(n+2)²)`
-/

namespace A176210.P9629718925769803399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349946 (A212176 (n + 2) ^ 2).toNat

end

end A176210.P9629718925769803399

/-! ## A176210.P236409623820039872

`A001227(3^A212176(n+2))`
-/

namespace A176210.P236409623820039872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A212176 (n + 2) : ℤ))).toNat

end

end A176210.P236409623820039872

/-! ## A176210.P6037434785447200738

`A003434(3^A212176(n+2))`
-/

namespace A176210.P6037434785447200738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A212176 (n + 2) : ℤ))).toNat

end

end A176210.P6037434785447200738

/-! ## A176210.P11653684794051744673

`A016003(3^A212176(n+2))`
-/

namespace A176210.P11653684794051744673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016003 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A212176 (n + 2) : ℤ))).toNat

end

end A176210.P11653684794051744673

/-! ## A176210.P15752523794752563151

`A016007(3^A212176(n+2))`
-/

namespace A176210.P15752523794752563151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016007 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A212176 (n + 2) : ℤ))).toNat

end

end A176210.P15752523794752563151

/-!
# A176211: Numbers of the form Product_{m_i >= 3} A000211(m_i), possibly repeated, in natural order.

The programs for A176211, there is no canonical definition to state claims against.
-/

/-! ## A176211.P6726862066120310536

`A176212(A261101(∑[A318770(n)]))`
-/

namespace A176211.P6726862066120310536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176212 (A261101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A176211.P6726862066120310536

/-! ## A176211.P11410359245280592834

`A176212(∑[A168185(A022114(n))])`
-/

namespace A176211.P11410359245280592834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A022114 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176212 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176211.P11410359245280592834

/-! ## A176211.P3617840267297289669

`A176212(A044917(n+1-A004216(n+1)))`
-/

namespace A176211.P3617840267297289669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176212 (A044917 ((n + 1 : ℤ) - A004216 (n + 1)).toNat).toNat

end

end A176211.P3617840267297289669

/-! ## A176211.P16872910772343417970

`A176212(A089170(n)*A137721(n+1))`
-/

namespace A176211.P16872910772343417970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176212 (A089170 n * A137721 (n + 1)).toNat

end

end A176211.P16872910772343417970

/-! ## A176211.P6376900170946988833

`A176212(n+1)-A297240(A103770(n))`
-/

namespace A176211.P6376900170946988833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176212 (n + 1) - A297240 (A103770 n).toNat

end

end A176211.P6376900170946988833

/-!
# A176212: Terms of A176211, duplicates removed.

The programs for A176212, there is no canonical definition to state claims against.
-/

/-! ## A176212.P8127090978954056874

`record[A176211(floor(lcm(2, n)/4)+1)]`
-/

namespace A176212.P8127090978954056874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P8127090978954056874

/-! ## A176212.P11991316484932756360

`record[A176211(floor(or(4, n)/7)+1)]`
-/

namespace A176212.P11991316484932756360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (⌊(Nat.lor 4 n : ℚ) / 7⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P11991316484932756360

/-! ## A176212.P8814183574290983361

`record[A176211(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A176212.P8814183574290983361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P8814183574290983361

/-! ## A176212.P16514671235692194914

`record[A176211(floor((n+1)*3^(n%2)/7)+1)]`
-/

namespace A176212.P16514671235692194914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (⌊((n + 1) * 3 ^ (n % 2) : ℚ) / 7⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P16514671235692194914

/-! ## A176212.P2557737356243069689

`record[A176211(A020986(n))]`
-/

namespace A176212.P2557737356243069689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P2557737356243069689

/-! ## A176212.P8645036180331772302

`record[A176211(A028920(n))]`
-/

namespace A176212.P8645036180331772302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P8645036180331772302

/-! ## A176212.P6999440517641196943

`record[A176211(A065648(n))]`
-/

namespace A176212.P6999440517641196943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P6999440517641196943

/-! ## A176212.P12662362054475619958

`record[A176211(A117910(n))]`
-/

namespace A176212.P12662362054475619958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P12662362054475619958

/-! ## A176212.P6847201852392121623

`record[A176211(A133310(n))]`
-/

namespace A176212.P6847201852392121623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176211 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176212.P6847201852392121623

/-!
# A176213: Decimal expansion of 2+sqrt(6).

The programs for A176213, there is no canonical definition to state claims against.
-/

/-! ## A176213.P7697454418696393744

`A010464(floor(1/(n+1)+n))`
-/

namespace A176213.P7697454418696393744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat + 1)

end

end A176213.P7697454418696393744

/-! ## A176213.P7061412119252951218

`A010464(n)+A000038(n)`
-/

namespace A176213.P7061412119252951218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + A000038 n

end

end A176213.P7061412119252951218

/-! ## A176213.P12581959587236782671

`A086180(A000007(n)+n)`
-/

namespace A176213.P12581959587236782671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A176213.P12581959587236782671

/-! ## A176213.P3355852414461138480

`A086180(gcd(n, A008486(n)))`
-/

namespace A176213.P3355852414461138480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (Int.gcd (n : ℤ) (A008486 n) + 1)

end

end A176213.P3355852414461138480

/-! ## A176213.P2910430958939768196

`A086180(or(n, A000007(n)))`
-/

namespace A176213.P2910430958939768196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A176213.P2910430958939768196

/-! ## A176213.P4965786725456618551

`A086180(xor(n, A000007(n)))`
-/

namespace A176213.P4965786725456618551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A176213.P4965786725456618551

/-! ## A176213.P5687812711384549392

`A086180(A004275(n+1)-n)`
-/

namespace A176213.P5687812711384549392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((A004275 (n + 1) - (n : ℤ)).toNat + 1)

end

end A176213.P5687812711384549392

/-! ## A176213.P2957026579770222325

`A086180(A008486(n)-2*n)`
-/

namespace A176213.P2957026579770222325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((A008486 n - (2 * n : ℤ)).toNat + 1)

end

end A176213.P2957026579770222325

/-! ## A176213.P2122733383864604672

`2*A086180(n)-A010464(n)`
-/

namespace A176213.P2122733383864604672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086180 (n + 1) - A010464 (n + 1)

end

end A176213.P2122733383864604672

/-! ## A176213.P3278087666293020291

`A086180(n+2-A040001(2*n))`
-/

namespace A176213.P3278087666293020291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (((n + 2 : ℤ) - A040001 (2 * n)).toNat + 1)

end

end A176213.P3278087666293020291

/-! ## A176213.P3616323848636971209

`A086180(A167688(a(n-1)+1)+n)` with `a(0)=4`
-/

namespace A176213.P3616323848636971209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A086180 ((A167688 (a (n - 1) + 1).toNat + (n : ℤ)).toNat + 1)

end

end A176213.P3616323848636971209

/-! ## A176213.P14922079606522508692

`A086180(A000035(A001316(n))+n)`
-/

namespace A176213.P14922079606522508692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((A000035 (A001316 n).toNat + (n : ℤ)).toNat + 1)

end

end A176213.P14922079606522508692

/-! ## A176213.P3215647365559371101

`A086180(A008683(A008574(n))+n)`
-/

namespace A176213.P3215647365559371101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((A008683 (A008574 n).toNat + (n : ℤ)).toNat + 1)

end

end A176213.P3215647365559371101

/-! ## A176213.P14479781812537350096

`A086180(A008683(A022144(n))+n)`
-/

namespace A176213.P14479781812537350096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((A008683 (A022144 n).toNat + (n : ℤ)).toNat + 1)

end

end A176213.P14479781812537350096

/-! ## A176213.P3707260804180917724

`A086180(A008683(A046109(n))+n)`
-/

namespace A176213.P3707260804180917724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 ((A008683 (A046109 n).toNat + (n : ℤ)).toNat + 1)

end

end A176213.P3707260804180917724

/-! ## A176213.P16541460512794442800

`A010464(n)+A090488(n)-A010466(n)`
-/

namespace A176213.P16541460512794442800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + (A090488 (n + 1) - A010466 (n + 1))

end

end A176213.P16541460512794442800

/-! ## A176213.P10674648317699257283

`A010464(n)*A010694(n)/A382713(n)`
-/

namespace A176213.P10674648317699257283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010464 (n + 1) * A010694 n : ℚ) / (A382713 n : ℚ)

end

end A176213.P10674648317699257283

/-! ## A176213.P14488509897715592658

`A040003(n+1)/A382713(n)*A010464(n)`
-/

namespace A176213.P14488509897715592658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040003 (n + 1) : ℚ) / (A382713 n : ℚ) * (A010464 (n + 1) : ℚ)

end

end A176213.P14488509897715592658

/-! ## A176213.P17845261929181589386

`A010694(n+1)+A010464(n)-A040003(n)`
-/

namespace A176213.P17845261929181589386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (n + 1) + (A010464 (n + 1) - A040003 n)

end

end A176213.P17845261929181589386

/-!
# A176218: Decimal expansion of (4 + 3*sqrt(2))/2.

The programs for A176218, there is no canonical definition to state claims against.
-/

/-! ## A176218.P13506361438086635868

`floor(A230981(n)+acot(n)²)`
-/

namespace A176218.P13506361438086635868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230981 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A176218.P13506361438086635868

/-! ## A176218.P3470670137494233656

`A230981(n)+A365823(n)-A090488(n)`
-/

namespace A176218.P3470670137494233656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230981 (n + 1) + (A365823 (n + 1) - A090488 (n + 1))

end

end A176218.P3470670137494233656

/-! ## A176218.P11041742650825667288

`A230981(n)+C(2, A168077(2*(n+1)))`
-/

namespace A176218.P11041742650825667288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230981 (n + 1) + (Nat.choose 2 (A168077 (2 * (n + 1))).toNat : ℤ)

end

end A176218.P11041742650825667288

/-! ## A176218.P15405927781468161799

`A230981(n)^(A151933(n)+1)`
-/

namespace A176218.P15405927781468161799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230981 (n + 1) : ℚ) ^ (A151933 n + 1 : ℤ)

end

end A176218.P15405927781468161799

/-! ## A176218.P6783811060724958961

`A230981(n)+A109043(A151933(n))`
-/

namespace A176218.P6783811060724958961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230981 (n + 1) + A109043 (A151933 n).toNat

end

end A176218.P6783811060724958961

/-!
# A176222: a(n) = (n^2 - 3*n + 1 + (-1)^n)/2.

The programs for A176222, the canonical program `A176222.P7282304553799120848` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176222 has offset 3).

The definition of A176222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176222.P12242650436279980822

`(n+3)*n/2+(n+4)%2`
-/

namespace A176222.P12242650436279980822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / 2) + (((n + 4) % 2 : ℕ) : ℚ)

end

end A176222.P12242650436279980822

namespace A176222

/-- `(n+3)*n/2+(n+4)%2` -/
def P12242650436279980822.Spec : Prop :=
  ∀ n, P12242650436279980822.a n = (A176222 (n + 3) : ℚ)

end A176222

/-! ## A176222.P7282304553799120848

`ceil(n/2)*(2*floor(n/2)+3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A176222

/-- `ceil(n/2)*(2*floor(n/2)+3)` -/
def P7282304553799120848.Spec : Prop :=
  ∀ n, P7282304553799120848.a n = A176222 (n + 3)

theorem P7282304553799120848.correct : P7282304553799120848.Spec := by
  intro n
  simp only [A176222, Nat.add_sub_cancel]

end A176222

/-! ## A176222.P13627878866074903662

`((n+3)²-3*(n+3)+1+(-1)^(n+3))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176222.P13627878866074903662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) ^ 2 : ℤ) - (3 * (n + 3) : ℤ) + (1 + (-1) ^ (n + 3)) : ℚ) / 2

end

end A176222.P13627878866074903662

namespace A176222

/-- `((n+3)²-3*(n+3)+1+(-1)^(n+3))/2` -/
def P13627878866074903662.Spec : Prop :=
  ∀ n, P13627878866074903662.a n = (A176222 (n + 3) : ℚ)

end A176222

/-! ## A176222.P2496137631789496494

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=10`
-/

namespace A176222.P2496137631789496494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 10] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A176222.P2496137631789496494

namespace A176222

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2496137631789496494.Spec : Prop :=
  ∀ n, P2496137631789496494.a n = A176222 (n + 3)

end A176222

/-! ## A176222.P14843346535582560616

`∑[xor(1, n+1)]`
-/

namespace A176222.P14843346535582560616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176222.P14843346535582560616

namespace A176222

/-- `∑[xor(1, n+1)]` -/
def P14843346535582560616.Spec : Prop :=
  ∀ n, (P14843346535582560616.a n : ℤ) = A176222 (n + 3)

end A176222

/-! ## A176222.P11075799324245053218

`∑[1-xor(1, -n)]`
-/

namespace A176222.P11075799324245053218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176222.P11075799324245053218

namespace A176222

/-- `∑[1-xor(1, -n)]` -/
def P11075799324245053218.Spec : Prop :=
  ∀ n, P11075799324245053218.a n = A176222 (n + 3)

end A176222

/-! ## A176222.P18118170674574798191

`∑[Δ[or(1, n)]+n]`
-/

namespace A176222.P18118170674574798191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176222.P18118170674574798191

namespace A176222

/-- `∑[Δ[or(1, n)]+n]` -/
def P18118170674574798191.Spec : Prop :=
  ∀ n, P18118170674574798191.a n = A176222 (n + 3)

end A176222

/-! ## A176222.P2207672920317210990

`∑[n*ratio[or(1, n)]]`
-/

namespace A176222.P2207672920317210990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176222.P2207672920317210990

namespace A176222

/-- `∑[n*ratio[or(1, n)]]` -/
def P2207672920317210990.Spec : Prop :=
  ∀ n, P2207672920317210990.a n = (A176222 (n + 3) : ℚ)

end A176222

/-! ## A176222.P7987452249335439663

`∑[2*n%2+n]`
-/

namespace A176222.P7987452249335439663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176222.P7987452249335439663

namespace A176222

/-- `∑[2*n%2+n]` -/
def P7987452249335439663.Spec : Prop :=
  ∀ n, (P7987452249335439663.a n : ℤ) = A176222 (n + 3)

end A176222

/-! ## A176222.P4443932680743730176

`∑[2*and(1, n)+n]`
-/

namespace A176222.P4443932680743730176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176222.P4443932680743730176

namespace A176222

/-- `∑[2*and(1, n)+n]` -/
def P4443932680743730176.Spec : Prop :=
  ∀ n, (P4443932680743730176.a n : ℤ) = A176222 (n + 3)

end A176222

/-! ## A176222.P11841901235959163340

`∑[lcm(2, and(1, n))+n]`
-/

namespace A176222.P11841901235959163340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.land 1 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176222.P11841901235959163340

namespace A176222

/-- `∑[lcm(2, and(1, n))+n]` -/
def P11841901235959163340.Spec : Prop :=
  ∀ n, (P11841901235959163340.a n : ℤ) = A176222 (n + 3)

end A176222

/-! ## A176222.P8053033340064673493

`and(1, n)+∑[n]+n`
-/

namespace A176222.P8053033340064673493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A176222.P8053033340064673493

namespace A176222

/-- `and(1, n)+∑[n]+n` -/
def P8053033340064673493.Spec : Prop :=
  ∀ n, (P8053033340064673493.a n : ℤ) = A176222 (n + 3)

end A176222

/-! ## A176222.P17639397388760308655

`∑[a(n-2)+2]` with `a(0)=0, a(1)=3`
-/

namespace A176222.P17639397388760308655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176222.P17639397388760308655

namespace A176222

/-- `∑[a(n-2)+2]` -/
def P17639397388760308655.Spec : Prop :=
  ∀ n, (P17639397388760308655.a n : ℤ) = A176222 (n + 3)

end A176222

/-! ## A176222.P3394045793882722630

`∑[n+1]-log2(gcd(2, n))`
-/

namespace A176222.P3394045793882722630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A176222.P3394045793882722630

namespace A176222

/-- `∑[n+1]-log2(gcd(2, n))` -/
def P3394045793882722630.Spec : Prop :=
  ∀ n, P3394045793882722630.a n = (A176222 (n + 3) : ℝ)

end A176222

/-! ## A176222.P2955677340545190495

`or(1, n+1)+∑[n]-1`
-/

namespace A176222.P2955677340545190495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A176222.P2955677340545190495

namespace A176222

/-- `or(1, n+1)+∑[n]-1` -/
def P2955677340545190495.Spec : Prop :=
  ∀ n, P2955677340545190495.a n = A176222 (n + 3)

end A176222

/-! ## A176222.P14888879251469204134

`Δ[n²]+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A176222.P14888879251469204134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 2)

end

end A176222.P14888879251469204134

namespace A176222

/-- `Δ[n²]+a(n-2)` -/
def P14888879251469204134.Spec : Prop :=
  ∀ n, P14888879251469204134.a n = A176222 (n + 3)

end A176222

/-! ## A176222.P11415425349412925195

`(n+2)%2+∑[n]+n`
-/

namespace A176222.P11415425349412925195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 2 + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A176222.P11415425349412925195

namespace A176222

/-- `(n+2)%2+∑[n]+n` -/
def P11415425349412925195.Spec : Prop :=
  ∀ n, (P11415425349412925195.a n : ℤ) = A176222 (n + 3)

end A176222

/-! ## A176222.P4391670638697272848

`∑[n+1]-ceil(cos(2)^n)`
-/

namespace A176222.P4391670638697272848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈Real.cos (2 : ℝ) ^ n⌉

end

end A176222.P4391670638697272848

namespace A176222

/-- `∑[n+1]-ceil(cos(2)^n)` -/
def P4391670638697272848.Spec : Prop :=
  ∀ n, P4391670638697272848.a n = A176222 (n + 3)

end A176222

/-! ## A176222.P982894266509694666

`floor(∑[n+1]-cos(3)^n)`
-/

namespace A176222.P982894266509694666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (3 : ℝ) ^ n⌋

end

end A176222.P982894266509694666

namespace A176222

/-- `floor(∑[n+1]-cos(3)^n)` -/
def P982894266509694666.Spec : Prop :=
  ∀ n, P982894266509694666.a n = A176222 (n + 3)

end A176222

/-! ## A176222.P16482020517256606849

`∑[n+1]-ceil(tan(3)^n)`
-/

namespace A176222.P16482020517256606849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈Real.tan (3 : ℝ) ^ n⌉

end

end A176222.P16482020517256606849

namespace A176222

/-- `∑[n+1]-ceil(tan(3)^n)` -/
def P16482020517256606849.Spec : Prop :=
  ∀ n, P16482020517256606849.a n = A176222 (n + 3)

end A176222

/-!
# A176223: Natural numbers k which give a prime by the function f(k) = 2 * k + 13 for at least two iterations.

The programs for A176223, there is no canonical definition to state claims against.
-/

/-! ## A176223.P12284778839286432620

`A001651(eq[A167020(n+6), A231776(n+4)])`
-/

namespace A176223.P12284778839286432620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176223.P12284778839286432620

/-! ## A176223.P6901000699832739765

`eq[A198020(n+6), A198020(A005408(n+9))]`
-/

namespace A176223.P6901000699832739765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (A005408 (n + 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176223.P6901000699832739765

/-! ## A176223.P2101351780883420058

`eq[A065381(A046067(n+10)), A067760(n+4)]`
-/

namespace A176223.P2101351780883420058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065381 (A046067 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176223.P2101351780883420058

/-! ## A176223.P3218969873261008888

`eq[A006285(A046067(n+10)), A276417(n+7)]`
-/

namespace A176223.P3218969873261008888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (A046067 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176223.P3218969873261008888

/-! ## A176223.P6131857343173696041

`eq[A000040(A046067(n+10)), A188903(n+7)]`
-/

namespace A176223.P6131857343173696041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046067 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176223.P6131857343173696041

/-!
# A176224: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=2.

The programs for A176224, the canonical program `A176224.P7399068725741792420` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176224 has offset 0).

The definition of A176224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176224.P7399068725741792420

`A099627(n)-A089633(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A176224

/-- `A099627(n)-A089633(n)` -/
def P7399068725741792420.Spec : Prop :=
  ∀ n, P7399068725741792420.a n = A176224 n

theorem P7399068725741792420.correct : P7399068725741792420.Spec := by
  intro n
  simp only [A176224]

end A176224

/-! ## A176224.P504294530085279686

`A130321(n)-A173787(n)`
-/

namespace A176224.P504294530085279686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n - A173787 n

end

end A176224.P504294530085279686

namespace A176224

/-- `A130321(n)-A173787(n)` -/
def P504294530085279686.Spec : Prop :=
  ∀ n, P504294530085279686.a n = A176224 n

end A176224

/-! ## A176224.P6613197332934676475

`A271709(n)-A137688(n)`
-/

namespace A176224.P6613197332934676475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - A137688 n

end

end A176224.P6613197332934676475

namespace A176224

/-- `A271709(n)-A137688(n)` -/
def P6613197332934676475.Spec : Prop :=
  ∀ n, P6613197332934676475.a n = A176224 n

end A176224

/-! ## A176224.P2170834528939054821

`A271709(n)-Δ[A007664(n)]`
-/

namespace A176224.P2170834528939054821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - (f1 (n + 1) - f1 n)

end

end A176224.P2170834528939054821

namespace A176224

/-- `A271709(n)-Δ[A007664(n)]` -/
def P2170834528939054821.Spec : Prop :=
  ∀ n, P2170834528939054821.a n = A176224 n

end A176224

/-! ## A176224.P7713009346553417827

`A173786(n)-(A089633(n)+1)`
-/

namespace A176224.P7713009346553417827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n - (A089633 n + 1)

end

end A176224.P7713009346553417827

namespace A176224

/-- `A173786(n)-(A089633(n)+1)` -/
def P7713009346553417827.Spec : Prop :=
  ∀ n, P7713009346553417827.a n = A176224 n

end A176224

/-! ## A176224.P9758856639717646339

`A131816(n)+1-A137688(n)`
-/

namespace A176224.P9758856639717646339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (1 - A137688 n)

end

end A176224.P9758856639717646339

namespace A176224

/-- `A131816(n)+1-A137688(n)` -/
def P9758856639717646339.Spec : Prop :=
  ∀ n, P9758856639717646339.a n = A176224 n

end A176224

/-! ## A176224.P17412048138133390962

`A264802(n+1)-A130328(n)`
-/

namespace A176224.P17412048138133390962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A130328 n

end

end A176224.P17412048138133390962

namespace A176224

/-- `A264802(n+1)-A130328(n)` -/
def P17412048138133390962.Spec : Prop :=
  ∀ n, P17412048138133390962.a n = A176224 n

end A176224

/-! ## A176224.P12738033474139145633

`A271709(n)-A140513(n)/2`
-/

namespace A176224.P12738033474139145633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271709 n : ℚ) - (A140513 n : ℚ) / 2

end

end A176224.P12738033474139145633

namespace A176224

/-- `A271709(n)-A140513(n)/2` -/
def P12738033474139145633.Spec : Prop :=
  ∀ n, P12738033474139145633.a n = (A176224 n : ℚ)

end A176224

/-! ## A176224.P11351114508103954547

`A000079(A025581(n))-A173787(n)`
-/

namespace A176224.P11351114508103954547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat - A173787 n

end

end A176224.P11351114508103954547

namespace A176224

/-- `A000079(A025581(n))-A173787(n)` -/
def P11351114508103954547.Spec : Prop :=
  ∀ n, P11351114508103954547.a n = A176224 n

end A176224

/-! ## A176224.P12673786867886082606

`A011782(A004736(n+1))-A173787(n)`
-/

namespace A176224.P12673786867886082606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat - A173787 n

end

end A176224.P12673786867886082606

namespace A176224

/-- `A011782(A004736(n+1))-A173787(n)` -/
def P12673786867886082606.Spec : Prop :=
  ∀ n, P12673786867886082606.a n = A176224 n

end A176224

/-! ## A176224.P861237540601181651

`A131816(n)+1-A131816(A057944(n))`
-/

namespace A176224.P861237540601181651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (1 - A131816 (A057944 n).toNat)

end

end A176224.P861237540601181651

namespace A176224

/-- `A131816(n)+1-A131816(A057944(n))` -/
def P861237540601181651.Spec : Prop :=
  ∀ n, P861237540601181651.a n = A176224 n

end A176224

/-! ## A176224.P14225089501102085926

`A131816(n)+2-A000051(A003056(n))`
-/

namespace A176224.P14225089501102085926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (2 - A000051 (A003056 n).toNat)

end

end A176224.P14225089501102085926

namespace A176224

/-- `A131816(n)+2-A000051(A003056(n))` -/
def P14225089501102085926.Spec : Prop :=
  ∀ n, P14225089501102085926.a n = A176224 n

end A176224

/-! ## A176224.P540616310333563222

`A130321(n)+A173786(n)-A140513(n)`
-/

namespace A176224.P540616310333563222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + (A173786 n - A140513 n)

end

end A176224.P540616310333563222

namespace A176224

/-- `A130321(n)+A173786(n)-A140513(n)` -/
def P540616310333563222.Spec : Prop :=
  ∀ n, P540616310333563222.a n = A176224 n

end A176224

/-! ## A176224.P15210037943896314176

`(A154690(n)-A038208(n))/A007318(n)`
-/

namespace A176224.P15210037943896314176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n - A038208 n : ℚ) / (A007318 n : ℚ)

end

end A176224.P15210037943896314176

namespace A176224

/-- `(A154690(n)-A038208(n))/A007318(n)` -/
def P15210037943896314176.Spec : Prop :=
  ∀ n, P15210037943896314176.a n = (A176224 n : ℚ)

end A176224

/-! ## A176224.P1383551393548155965

`A271709(n)-A059268(A127739(n+1)-1)`
-/

namespace A176224.P1383551393548155965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - A059268 (A127739 (n + 1) - 1).toNat

end

end A176224.P1383551393548155965

namespace A176224

/-- `A271709(n)-A059268(A127739(n+1)-1)` -/
def P1383551393548155965.Spec : Prop :=
  ∀ n, P1383551393548155965.a n = A176224 n

end A176224

/-! ## A176224.P7790176175344501169

`A173786(n)+A271709(n)-A018900(n+1)`
-/

namespace A176224.P7790176175344501169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n + (A271709 n - A018900 (n + 1))

end

end A176224.P7790176175344501169

namespace A176224

/-- `A173786(n)+A271709(n)-A018900(n+1)` -/
def P7790176175344501169.Spec : Prop :=
  ∀ n, P7790176175344501169.a n = A176224 n

end A176224

/-! ## A176224.P14483853093005148877

`A350770(n+1)+2-A137688(n)`
-/

namespace A176224.P14483853093005148877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350770 (n + 1) + (2 - A137688 n)

end

end A176224.P14483853093005148877

namespace A176224

/-- `A350770(n+1)+2-A137688(n)` -/
def P14483853093005148877.Spec : Prop :=
  ∀ n, P14483853093005148877.a n = A176224 n

end A176224

/-! ## A176224.P6729310622355384590

`A271709(n)-A000010(A140513(n))`
-/

namespace A176224.P6729310622355384590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - A000010 (A140513 n).toNat

end

end A176224.P6729310622355384590

namespace A176224

/-- `A271709(n)-A000010(A140513(n))` -/
def P6729310622355384590.Spec : Prop :=
  ∀ n, P6729310622355384590.a n = A176224 n

end A176224

/-! ## A176224.P1947257775644269958

`2-A261366(A173787(n)+1)`
-/

namespace A176224.P1947257775644269958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A261366 (A173787 n + 1).toNat

end

end A176224.P1947257775644269958

namespace A176224

/-- `2-A261366(A173787(n)+1)` -/
def P1947257775644269958.Spec : Prop :=
  ∀ n, P1947257775644269958.a n = A176224 n

end A176224

/-!
# A176225: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=3.

The programs for A176225, there is no canonical definition to state claims against.
-/

/-! ## A176225.P10612480257407862090

`5-4*A306344(n)`
-/

namespace A176225.P10612480257407862090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * A306344 n

end

end A176225.P10612480257407862090

/-! ## A176225.P14650530450932937658

`5-A008574(A306344(n))`
-/

namespace A176225.P14650530450932937658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A008574 (A306344 n).toNat

end

end A176225.P14650530450932937658

/-! ## A176225.P3641924870200240624

`A239374(n+2)-A004273(A004273(A306344(n)))`
-/

namespace A176225.P3641924870200240624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239374 (n + 2) - A004273 (A004273 (A306344 n).toNat).toNat

end

end A176225.P3641924870200240624

/-! ## A176225.P2027097488454292688

`A247130(A172339(n))`
-/

namespace A176225.P2027097488454292688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247130 (A172339 n).toNat

end

end A176225.P2027097488454292688

/-! ## A176225.P12156304319153602414

`1-A186709(A157177(n))`
-/

namespace A176225.P12156304319153602414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A186709 (A157177 n).toNat

end

end A176225.P12156304319153602414

/-!
# A176226: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=5.

The programs for A176226, there is no canonical definition to state claims against.
-/

/-! ## A176226.P13959935431084183432

`5-A007733(A178166(n))`
-/

namespace A176226.P13959935431084183432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007733 (A178166 n).toNat

end

end A176226.P13959935431084183432

/-! ## A176226.P5576859792250557673

`1-8*A165033(4^A007318(n))`
-/

namespace A176226.P5576859792250557673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 8 * A165033 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A176226.P5576859792250557673

/-! ## A176226.P13721571519396986341

`1-8*A004180(5^A007318(n))`
-/

namespace A176226.P13721571519396986341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 8 * A004180 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A176226.P13721571519396986341

/-! ## A176226.P53657602175640851

`1-8*A059995(5^A007318(n))`
-/

namespace A176226.P53657602175640851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 8 * A059995 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A176226.P53657602175640851

/-! ## A176226.P13834240296582937283

`1-8*A059995(5^A028657(n))`
-/

namespace A176226.P13834240296582937283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 8 * A059995 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A028657 n : ℤ))).toNat

end

end A176226.P13834240296582937283

/-!
# A176227: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=4.

The programs for A176227, the canonical program `A176227.P861613329376267430` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176227 has offset 0).

The definition of A176227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176227.P14371444995654323112

`A176224(A185868(n+1)-1)`
-/

namespace A176227.P14371444995654323112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 (A185868 (n + 1) - 1).toNat

end

end A176227.P14371444995654323112

namespace A176227

/-- `A176224(A185868(n+1)-1)` -/
def P14371444995654323112.Spec : Prop :=
  ∀ n, P14371444995654323112.a n = A176227 n

end A176227

/-! ## A176227.P861613329376267430

`A176224(eq[0, A053398(n+1)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A176227

/-- `A176224(eq[0, A053398(n+1)])` -/
def P861613329376267430.Spec : Prop :=
  ∀ n, P861613329376267430.a n = A176227 n

theorem P861613329376267430.correct : P861613329376267430.Spec := by
  intro n
  simp only [A176227]

end A176227

/-! ## A176227.P16416066742394009331

`A176224((1-round(sqrt(2*(n+1))))²+2*n+1-A057427(n))`
-/

namespace A176227.P16416066742394009331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ) - A057427 n).toNat

end

end A176227.P16416066742394009331

namespace A176227

/-- `A176224((1-round(sqrt(2*(n+1))))²+2*n+1-A057427(n))` -/
def P16416066742394009331.Spec : Prop :=
  ∀ n, P16416066742394009331.a n = A176227 n

end A176227

/-! ## A176227.P838074008310696292

`A176224(A292564(n)+A002262(n))`
-/

namespace A176227.P838074008310696292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 (A292564 n + A002262 n).toNat

end

end A176227.P838074008310696292

namespace A176227

/-- `A176224(A292564(n)+A002262(n))` -/
def P838074008310696292.Spec : Prop :=
  ∀ n, P838074008310696292.a n = A176227 n

end A176227

/-! ## A176227.P5616386311026068189

`A271709(A185869(n+1))-A055236(n)`
-/

namespace A176227.P5616386311026068189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 (A185869 (n + 1)).toNat - A055236 n

end

end A176227.P5616386311026068189

namespace A176227

/-- `A271709(A185869(n+1))-A055236(n)` -/
def P5616386311026068189.Spec : Prop :=
  ∀ n, P5616386311026068189.a n = A176227 n

end A176227

/-!
# A176228: Triangle read by rows: T(n,k) = binomial(n,k) + Fibonacci(n) + 1.

The programs for A176228, the canonical program `A176228.P12776521110466897369` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176228 has offset 0).

The definition of A176228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176228.P12776521110466897369

`A007318(n)+A108037(n)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A176228

/-- `A007318(n)+A108037(n)+1` -/
def P12776521110466897369.Spec : Prop :=
  ∀ n, P12776521110466897369.a n = A176228 n

theorem P12776521110466897369.correct : P12776521110466897369.Spec := by
  intro n
  simp only [A176228]

end A176228

/-! ## A176228.P5525883447808349594

`A014473(n)+A108037(n)+2`
-/

namespace A176228.P5525883447808349594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A108037 n + 2)

end

end A176228.P5525883447808349594

namespace A176228

/-- `A014473(n)+A108037(n)+2` -/
def P5525883447808349594.Spec : Prop :=
  ∀ n, P5525883447808349594.a n = A176228 n

end A176228

/-! ## A176228.P4780387060737795171

`A007318(n)+A001611(A003056(n))`
-/

namespace A176228.P4780387060737795171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A001611 (A003056 n).toNat

end

end A176228.P4780387060737795171

namespace A176228

/-- `A007318(n)+A001611(A003056(n))` -/
def P4780387060737795171.Spec : Prop :=
  ∀ n, P4780387060737795171.a n = A176228 n

end A176228

/-! ## A176228.P11960135872085802185

`A157725(A003056(n))+A014473(n)`
-/

namespace A176228.P11960135872085802185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (A003056 n).toNat + A014473 n

end

end A176228.P11960135872085802185

namespace A176228

/-- `A157725(A003056(n))+A014473(n)` -/
def P11960135872085802185.Spec : Prop :=
  ∀ n, P11960135872085802185.a n = A176228 n

end A176228

/-! ## A176228.P6617932541525817190

`A212804(A002024(n+1))+A007318(n)+1`
-/

namespace A176228.P6617932541525817190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002024 (n + 1)).toNat + (A007318 n + 1)

end

end A176228.P6617932541525817190

namespace A176228

/-- `A212804(A002024(n+1))+A007318(n)+1` -/
def P6617932541525817190.Spec : Prop :=
  ∀ n, P6617932541525817190.a n = A176228 n

end A176228

/-! ## A176228.P319021071115154017

`A108037(n)+A008619(A028326(n))`
-/

namespace A176228.P319021071115154017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n + A008619 (A028326 n).toNat

end

end A176228.P319021071115154017

namespace A176228

/-- `A108037(n)+A008619(A028326(n))` -/
def P319021071115154017.Spec : Prop :=
  ∀ n, P319021071115154017.a n = A176228 n

end A176228

/-! ## A176228.P6517905159260404991

`A008619(A028326(n))+A000045(A003056(n))`
-/

namespace A176228.P6517905159260404991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028326 n).toNat + A000045 (A003056 n).toNat

end

end A176228.P6517905159260404991

namespace A176228

/-- `A008619(A028326(n))+A000045(A003056(n))` -/
def P6517905159260404991.Spec : Prop :=
  ∀ n, P6517905159260404991.a n = A176228 n

end A176228

/-!
# A176229: The smaller members p of cousin prime pairs (p,p+4) with a semiprime arithmetic mean p+2.

The programs for A176229, there is no canonical definition to state claims against.
-/

/-! ## A176229.P17119835656554285720

`A125215(n+1)-2`
-/

namespace A176229.P17119835656554285720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125215 (n + 1) - 2

end

end A176229.P17119835656554285720

/-! ## A176229.P6358798337857876519

`3*A125272(n+1)-2`
-/

namespace A176229.P6358798337857876519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A125272 (n + 1) - 2

end

end A176229.P6358798337857876519

/-! ## A176229.P18435175016134741251

`∩[A283532(n+1), A288632(n+1)]`
-/

namespace A176229.P18435175016134741251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P18435175016134741251

/-! ## A176229.P1581411976886245039

`∩[A015913(n+1), A091180(n+1)]`
-/

namespace A176229.P1581411976886245039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P1581411976886245039

/-! ## A176229.P7637373532064098646

`∩[A029710(n+1), A091180(n+1)]`
-/

namespace A176229.P7637373532064098646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P7637373532064098646

/-! ## A176229.P6446925930946689041

`∩[A091180(n+1), A172238(n+1)]`
-/

namespace A176229.P6446925930946689041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P6446925930946689041

/-! ## A176229.P11902021804685053462

`∩[A015913(n+1), A283532(n+1)]`
-/

namespace A176229.P11902021804685053462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P11902021804685053462

/-! ## A176229.P10600055751998088454

`∩[A015913(n+1), A288632(n+1)]`
-/

namespace A176229.P10600055751998088454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P10600055751998088454

/-! ## A176229.P5828219537975087494

`∩[A029710(n+1), A283532(n+1)]`
-/

namespace A176229.P5828219537975087494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P5828219537975087494

/-! ## A176229.P2195266393277257073

`∩[A029710(n+1), A288632(n+1)]`
-/

namespace A176229.P2195266393277257073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P2195266393277257073

/-! ## A176229.P5478904793640922474

`∩[A172238(n+1), A283532(n+1)]`
-/

namespace A176229.P5478904793640922474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P5478904793640922474

/-! ## A176229.P13156058149753822107

`∩[A172238(n+1), A288632(n+1)]`
-/

namespace A176229.P13156058149753822107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P13156058149753822107

/-! ## A176229.P15855370273164619171

`∩[A029708(n+1), A075278(n+1)]-2`
-/

namespace A176229.P15855370273164619171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075278 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A176229.P15855370273164619171

/-! ## A176229.P2424042618156610440

`∩[A075278(n+1), A087679(n+1)]-2`
-/

namespace A176229.P2424042618156610440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A176229.P2424042618156610440

/-! ## A176229.P9233685376111306987

`∩[A056772(n+1), A091180(n+1)]`
-/

namespace A176229.P9233685376111306987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P9233685376111306987

/-! ## A176229.P897284897733078779

`∩[A056772(n+1), A283532(n+1)]`
-/

namespace A176229.P897284897733078779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P897284897733078779

/-! ## A176229.P15954282050084624913

`∩[A056772(n+1), A288632(n+1)]`
-/

namespace A176229.P15954282050084624913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P15954282050084624913

/-! ## A176229.P5030117164406813831

`p?[A094524(n+1)-4]`
-/

namespace A176229.P5030117164406813831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176229.P5030117164406813831

/-! ## A176229.P7384302795457241613

`p?[3*A023208(n+1)-2]`
-/

namespace A176229.P7384302795457241613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023208 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176229.P7384302795457241613

/-! ## A176229.P2880166469992551667

`∩[A029710(n+1), A063637(n+1)]`
-/

namespace A176229.P2880166469992551667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176229.P2880166469992551667

/-!
# A176230: Exponential Riordan array [1/sqrt(1-2x), x/(1-2x)].

The programs for A176230, the canonical program `A176230.P15310352882889084004` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176230 has offset 0).

The definition of A176230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176230.P6042616046808895768

`abs(A176231(n))`
-/

namespace A176230.P6042616046808895768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176231 n|

end

end A176230.P6042616046808895768

namespace A176230

/-- `abs(A176231(n))` -/
def P6042616046808895768.Spec : Prop :=
  ∀ n, P6042616046808895768.a n = A176230 n

end A176230

/-! ## A176230.P15310352882889084004

`abs(A096713(A061885(n)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176230

/-- `abs(A096713(A061885(n)))` -/
def P15310352882889084004.Spec : Prop :=
  ∀ n, P15310352882889084004.a n = A176230 n

theorem P15310352882889084004.correct : P15310352882889084004.Spec := by
  intro n
  simp only [A176230]

end A176230

/-! ## A176230.P10340782720615546572

`A097807(n)*A176231(n)`
-/

namespace A176230.P10340782720615546572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A176231 n

end

end A176230.P10340782720615546572

namespace A176230

/-- `A097807(n)*A176231(n)` -/
def P10340782720615546572.Spec : Prop :=
  ∀ n, P10340782720615546572.a n = A176230 n

end A176230

/-! ## A176230.P9812867183008941688

`gcd(A000038(n), A176231(n))`
-/

namespace A176230.P9812867183008941688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A176231 n)

end

end A176230.P9812867183008941688

namespace A176230

/-- `gcd(A000038(n), A176231(n))` -/
def P9812867183008941688.Spec : Prop :=
  ∀ n, (P9812867183008941688.a n : ℤ) = A176230 n

end A176230

/-! ## A176230.P7221017095362420820

`lcm(A007318(n), A176231(n))`
-/

namespace A176230.P7221017095362420820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A176231 n)

end

end A176230.P7221017095362420820

namespace A176230

/-- `lcm(A007318(n), A176231(n))` -/
def P7221017095362420820.Spec : Prop :=
  ∀ n, (P7221017095362420820.a n : ℤ) = A176230 n

end A176230

/-! ## A176230.P16487103877734362371

`abs(A096713(A004277(n)-A002262(n)))`
-/

namespace A176230.P16487103877734362371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096713 (A004277 n - A002262 n).toNat|

end

end A176230.P16487103877734362371

namespace A176230

/-- `abs(A096713(A004277(n)-A002262(n)))` -/
def P16487103877734362371.Spec : Prop :=
  ∀ n, P16487103877734362371.a n = A176230 n

end A176230

/-! ## A176230.P3561522742338010607

`A001497(n)/A054142(n)*A086645(n)`
-/

namespace A176230.P3561522742338010607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001497 n : ℚ) / (A054142 n : ℚ) * (A086645 n : ℚ)

end

end A176230.P3561522742338010607

namespace A176230

/-- `A001497(n)/A054142(n)*A086645(n)` -/
def P3561522742338010607.Spec : Prop :=
  ∀ n, P3561522742338010607.a n = (A176230 n : ℚ)

end A176230

/-! ## A176230.P2734492470335101250

`A100861(A061579(n)+A057944(n))`
-/

namespace A176230.P2734492470335101250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (A061579 n + A057944 n).toNat

end

end A176230.P2734492470335101250

namespace A176230

/-- `A100861(A061579(n)+A057944(n))` -/
def P2734492470335101250.Spec : Prop :=
  ∀ n, P2734492470335101250.a n = A176230 n

end A176230

/-! ## A176230.P2246090518063979189

`A119743(A038722(n+2))`
-/

namespace A176230.P2246090518063979189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119743 (A038722 (n + 2)).toNat

end

end A176230.P2246090518063979189

namespace A176230

/-- `A119743(A038722(n+2))` -/
def P2246090518063979189.Spec : Prop :=
  ∀ n, P2246090518063979189.a n = A176230 n

end A176230

/-! ## A176230.P11643564448409229725

`A048854(n)/A130321(n)`
-/

namespace A176230.P11643564448409229725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048854 n : ℚ) / (A130321 n : ℚ)

end

end A176230.P11643564448409229725

namespace A176230

/-- `A048854(n)/A130321(n)` -/
def P11643564448409229725.Spec : Prop :=
  ∀ n, P11643564448409229725.a n = (A176230 n : ℚ)

end A176230

/-! ## A176230.P18196572304668873494

`gcd(A048854(n), A085881(n))`
-/

namespace A176230.P18196572304668873494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048854 n) (A085881 n)

end

end A176230.P18196572304668873494

namespace A176230

/-- `gcd(A048854(n), A085881(n))` -/
def P18196572304668873494.Spec : Prop :=
  ∀ n, (P18196572304668873494.a n : ℤ) = A176230 n

end A176230

/-! ## A176230.P6569322364968192147

`A048854(n)/A011782(A004736(n+1))`
-/

namespace A176230.P6569322364968192147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048854 n : ℚ) / (A011782 (A004736 (n + 1)).toNat : ℚ)

end

end A176230.P6569322364968192147

namespace A176230

/-- `A048854(n)/A011782(A004736(n+1))` -/
def P6569322364968192147.Spec : Prop :=
  ∀ n, P6569322364968192147.a n = (A176230 n : ℚ)

end A176230

/-! ## A176230.P8356276815889010764

`A007318(n)/A038207(n)*A048854(n)`
-/

namespace A176230.P8356276815889010764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A038207 n : ℚ) * (A048854 n : ℚ)

end

end A176230.P8356276815889010764

namespace A176230

/-- `A007318(n)/A038207(n)*A048854(n)` -/
def P8356276815889010764.Spec : Prop :=
  ∀ n, P8356276815889010764.a n = (A176230 n : ℚ)

end A176230

/-!
# A176231: Coefficient array of orthogonal polynomials whose moment sequence is the double factorial numbers A001147.

The programs for A176231, the canonical program `A176231.P2236781922509874742` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176231 has offset 0).

The definition of A176231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176231.P16171389694360440892

`A096713(C(∑[char[∑[n]]], 2)+n)`
-/

namespace A176231.P16171389694360440892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n)

end

end A176231.P16171389694360440892

namespace A176231

/-- `A096713(C(∑[char[∑[n]]], 2)+n)` -/
def P16171389694360440892.Spec : Prop :=
  ∀ n, P16171389694360440892.a n = A176231 n

end A176231

/-! ## A176231.P10092178944688222971

`A096713(eq[0, ceil(2*sqrt(n+1))%2])`
-/

namespace A176231.P10092178944688222971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176231.P10092178944688222971

namespace A176231

/-- `A096713(eq[0, ceil(2*sqrt(n+1))%2])` -/
def P10092178944688222971.Spec : Prop :=
  ∀ n, P10092178944688222971.a n = A176231 n

end A176231

/-! ## A176231.P2236781922509874742

`A096713(lt[0, floor(sqrt(4*n+1))%2])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176231

/-- `A096713(lt[0, floor(sqrt(4*n+1))%2])` -/
def P2236781922509874742.Spec : Prop :=
  ∀ n, P2236781922509874742.a n = A176231 n

theorem P2236781922509874742.correct : P2236781922509874742.Spec := by
  intro n
  simp only [A176231]

end A176231

/-! ## A176231.P12386822828055909019

`(and(2, comp[∑[n]]+n)-1)*A176230(n)`
-/

namespace A176231.P12386822828055909019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A176230 n

end

end A176231.P12386822828055909019

namespace A176231

/-- `(and(2, comp[∑[n]]+n)-1)*A176230(n)` -/
def P12386822828055909019.Spec : Prop :=
  ∀ n, P12386822828055909019.a n = A176231 n

end A176231

/-! ## A176231.P3489783734469883978

`A096713(lt[(ceil(sqrt(n))²-n)², n]-1)`
-/

namespace A176231.P3489783734469883978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A176231.P3489783734469883978

namespace A176231

/-- `A096713(lt[(ceil(sqrt(n))²-n)², n]-1)` -/
def P3489783734469883978.Spec : Prop :=
  ∀ n, P3489783734469883978.a n = A176231 n

end A176231

/-! ## A176231.P16213595266708713334

`A096713(A061885(n))`
-/

namespace A176231.P16213595266708713334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (A061885 n).toNat

end

end A176231.P16213595266708713334

namespace A176231

/-- `A096713(A061885(n))` -/
def P16213595266708713334.Spec : Prop :=
  ∀ n, P16213595266708713334.a n = A176231 n

end A176231

/-! ## A176231.P11265997691706756257

`A097807(n)*A176230(n)`
-/

namespace A176231.P11265997691706756257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A176230 n

end

end A176231.P11265997691706756257

namespace A176231

/-- `A097807(n)*A176230(n)` -/
def P11265997691706756257.Spec : Prop :=
  ∀ n, P11265997691706756257.a n = A176231 n

end A176231

/-! ## A176231.P3499894615483054007

`A096713(A004277(n)-A002262(n))`
-/

namespace A176231.P3499894615483054007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (A004277 n - A002262 n).toNat

end

end A176231.P3499894615483054007

namespace A176231

/-- `A096713(A004277(n)-A002262(n))` -/
def P3499894615483054007.Spec : Prop :=
  ∀ n, P3499894615483054007.a n = A176231 n

end A176231

/-! ## A176231.P5008315862151828569

`A112292(n)*A130595(n)`
-/

namespace A176231.P5008315862151828569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112292 n * A130595 n

end

end A176231.P5008315862151828569

namespace A176231

/-- `A112292(n)*A130595(n)` -/
def P5008315862151828569.Spec : Prop :=
  ∀ n, P5008315862151828569.a n = A176231 n

end A176231

/-!
# A176232: Determinant of the n X n matrix with rows (1!,-1,0,...,0), (1, 2!,-1,0,...,0), (0,1,3!,-1,0,...,0), ..., (0,0,...,1,n!).

The programs for A176232, the canonical program `A176232.P17295217476967715702` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176232 has offset 0).

The definition of A176232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176232.P17295217476967715702

`n!*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A176232

/-- `n!*a(n-1)+a(n-2)` -/
def P17295217476967715702.Spec : Prop :=
  ∀ n, (P17295217476967715702.a n : ℤ) = A176232 n

theorem P17295217476967715702.correct : P17295217476967715702.Spec := by
  intro n
  simp only [A176232]

end A176232

/-! ## A176232.P1776770756022831625

`a(n-2)+a(n-1)*A000142(n)` with `a(0)=1, a(1)=1`
-/

namespace A176232.P1776770756022831625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A000142 n

end

end A176232.P1776770756022831625

namespace A176232

/-- `a(n-2)+a(n-1)*A000142(n)` -/
def P1776770756022831625.Spec : Prop :=
  ∀ n, P1776770756022831625.a n = A176232 n

end A176232

/-!
# A176235: Numbers n such that one of nonprime(n)-1 or nonprime(n)+1 is prime.

The programs for A176235, there is no canonical definition to state claims against.
-/

/-! ## A176235.P7767977227870651448

`A022447(A100317(n+3))`
-/

namespace A176235.P7767977227870651448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A100317 (n + 3)).toNat

end

end A176235.P7767977227870651448

/-! ## A176235.P9713524557123856437

`record[A239968(A100317(n+1))]`
-/

namespace A176235.P9713524557123856437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A100317 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176235.P9713524557123856437

/-! ## A176235.P9151795575370054057

`A022447(2*A174047(n+1))`
-/

namespace A176235.P9151795575370054057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (2 * A174047 (n + 1)).toNat

end

end A176235.P9151795575370054057

/-! ## A176235.P14158581114610588856

`A026233(2*A174047(n+1))`
-/

namespace A176235.P14158581114610588856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (2 * A174047 (n + 1)).toNat

end

end A176235.P14158581114610588856

/-! ## A176235.P4560883576572200586

`A062298(2*A174047(n+1))`
-/

namespace A176235.P4560883576572200586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (2 * A174047 (n + 1)).toNat

end

end A176235.P4560883576572200586

/-! ## A176235.P4249184751991301884

`A022447(∑[2*A256253(n+1)])`
-/

namespace A176235.P4249184751991301884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176235.P4249184751991301884

/-!
# A176236: Numbers n such that one of nonnegative nonprime(n)-2 or nonnegative nonprime(n)+2 is prime.

The programs for A176236, there is no canonical definition to state claims against.
-/

/-! ## A176236.P12943432141029905345

`∑[A088135(n+1)%A088121(A088123(n+1))]`
-/

namespace A176236.P12943432141029905345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088135 (n + 1)) (A088121 (A088123 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176236.P12943432141029905345

/-!
# A176237: Binary expansion of n contains at least one 1-bit at even position and one 1-bit at odd position.

The programs for A176237, there is no canonical definition to state claims against.
-/

/-! ## A176237.P2327501221275030239

`lt[gcd(and(85, n)², n²), n²]`
-/

namespace A176237.P2327501221275030239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.land 85 n ^ 2) (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176237.P2327501221275030239

/-! ## A176237.P11734507729649809299

`lt[1, (a(floor(n/2))-(-1)^n)²]` with `a(0)=0`
-/

namespace A176237.P11734507729649809299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176237.P11734507729649809299

/-! ## A176237.P14125441233906591923

`comp[and(floor(∑[2^n/3]), comp[floor(ϕ*n)])]`
-/

namespace A176237.P14125441233906591923
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176237.P14125441233906591923

/-! ## A176237.P9705447247751157069

`lt[1, xor(1, ((n-1)*n%2+1)*a(floor(n/2)))]` with `a(0)=0`
-/

namespace A176237.P9705447247751157069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.xor 1 ((((n : ℤ) - 1) * ((n % 2 : ℕ) : ℤ) + 1) * f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176237.P9705447247751157069

/-! ## A176237.P4060295338053614118

`lt[0, acot((3-(-1)^n)*a(floor(n/2))+1-(-1)^n)]` with `a(0)=-3`
-/

namespace A176237.P4060295338053614118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [-3] fun n f2 =>
  SequenceMachineLib.acot ((3 - (-1) ^ n : ℝ) * f2 ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A176237.P4060295338053614118

/-! ## A176237.P2089616776609150304

`comp[A377413(n)]`
-/

namespace A176237.P2089616776609150304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176237.P2089616776609150304

/-! ## A176237.P3015963376312336058

`comp[A377414(n)]`
-/

namespace A176237.P3015963376312336058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176237.P3015963376312336058

/-! ## A176237.P10460627327194258829

`comp[A377415(n)]`
-/

namespace A176237.P10460627327194258829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176237.P10460627327194258829

/-! ## A176237.P5493090627012528189

`lt[0, A139353(n)]`
-/

namespace A176237.P5493090627012528189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176237.P5493090627012528189

/-! ## A176237.P4601788151370687858

`lt[0, A139354(n)]`
-/

namespace A176237.P4601788151370687858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176237.P4601788151370687858

/-!
# A176238: Natural numbers n such that d(d(n)+1) > 2.

The programs for A176238, the canonical program `A176238.P9477818329557450048` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176238 has offset 1).

The definition of A176238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176238.P7836262130878747656

`comp[A166546(n+1)-1]+1`
-/

namespace A176238.P7836262130878747656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176238.P7836262130878747656

namespace A176238

/-- `comp[A166546(n+1)-1]+1` -/
def P7836262130878747656.Spec : Prop :=
  ∀ n, (P7836262130878747656.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P12931718609617644534

`lt[1, A001222(∏{e}[n, #+1]+1)]`
-/

namespace A176238.P12931718609617644534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176238.P12931718609617644534

namespace A176238

/-- `lt[1, A001222(∏{e}[n, #+1]+1)]` -/
def P12931718609617644534.Spec : Prop :=
  ∀ n, (P12931718609617644534.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P14539411391839592899

`lt[2, A000005(∏{e}[n, #+1]+1)]`
-/

namespace A176238.P14539411391839592899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176238.P14539411391839592899

namespace A176238

/-- `lt[2, A000005(∏{e}[n, #+1]+1)]` -/
def P14539411391839592899.Spec : Prop :=
  ∀ n, (P14539411391839592899.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P18088483249057414346

`eq[1, A208645(A032741(n))]`
-/

namespace A176238.P18088483249057414346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176238.P18088483249057414346

namespace A176238

/-- `eq[1, A208645(A032741(n))]` -/
def P18088483249057414346.Spec : Prop :=
  ∀ n, (P18088483249057414346.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P9477818329557450048

`lt[1, A001065(A032741(n)+2)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176238

/-- `lt[1, A001065(A032741(n)+2)]` -/
def P9477818329557450048.Spec : Prop :=
  ∀ n, (P9477818329557450048.a n : ℤ) = A176238 (n + 1)

theorem P9477818329557450048.correct : P9477818329557450048.Spec := by
  intro n
  simp only [A176238, Nat.add_sub_cancel]

end A176238

/-! ## A176238.P6012948031557550589

`lt[1, A001222(A032741(n)+2)]`
-/

namespace A176238.P6012948031557550589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032741 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176238.P6012948031557550589

namespace A176238

/-- `lt[1, A001222(A032741(n)+2)]` -/
def P6012948031557550589.Spec : Prop :=
  ∀ n, (P6012948031557550589.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P10469561571357997577

`lt[1, A003415(A032741(n)+2)]`
-/

namespace A176238.P10469561571357997577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A032741 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176238.P10469561571357997577

namespace A176238

/-- `lt[1, A003415(A032741(n)+2)]` -/
def P10469561571357997577.Spec : Prop :=
  ∀ n, (P10469561571357997577.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P7419660686240407609

`lt[1, A018783(A032741(n)+2)]`
-/

namespace A176238.P7419660686240407609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A032741 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176238.P7419660686240407609

namespace A176238

/-- `lt[1, A018783(A032741(n)+2)]` -/
def P7419660686240407609.Spec : Prop :=
  ∀ n, (P7419660686240407609.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P16338507328442430702

`lt[1, A032741(A032741(n)+2)]`
-/

namespace A176238.P16338507328442430702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176238.P16338507328442430702

namespace A176238

/-- `lt[1, A032741(A032741(n)+2)]` -/
def P16338507328442430702.Spec : Prop :=
  ∀ n, (P16338507328442430702.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P3566607889372454078

`lt[1, A002033(Δ[A006218(n)])]+1`
-/

namespace A176238.P3566607889372454078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176238.P3566607889372454078

namespace A176238

/-- `lt[1, A002033(Δ[A006218(n)])]+1` -/
def P3566607889372454078.Spec : Prop :=
  ∀ n, (P3566607889372454078.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P3775710834956841757

`lt[1, A002033(A000005(n+1))]+1`
-/

namespace A176238.P3775710834956841757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176238.P3775710834956841757

namespace A176238

/-- `lt[1, A002033(A000005(n+1))]+1` -/
def P3775710834956841757.Spec : Prop :=
  ∀ n, (P3775710834956841757.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P15848176550844584028

`lt[2, A319410(A334954(n+1))]+1`
-/

namespace A176238.P15848176550844584028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (A334954 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176238.P15848176550844584028

namespace A176238

/-- `lt[2, A319410(A334954(n+1))]+1` -/
def P15848176550844584028.Spec : Prop :=
  ∀ n, (P15848176550844584028.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P13644482081189343386

`lt[1, A001222(Δ[A006218(n)]+1)]+1`
-/

namespace A176238.P13644482081189343386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176238.P13644482081189343386

namespace A176238

/-- `lt[1, A001222(Δ[A006218(n)]+1)]+1` -/
def P13644482081189343386.Spec : Prop :=
  ∀ n, (P13644482081189343386.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P6487792915468954377

`lt[2, A000005(A000005(n+1)+1)]+1`
-/

namespace A176238.P6487792915468954377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176238.P6487792915468954377

namespace A176238

/-- `lt[2, A000005(A000005(n+1)+1)]+1` -/
def P6487792915468954377.Spec : Prop :=
  ∀ n, (P6487792915468954377.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P7012853054076129217

`eq[A055671(A032741(n)+2), A339579(n+1)]`
-/

namespace A176238.P7012853054076129217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A032741 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176238.P7012853054076129217

namespace A176238

/-- `eq[A055671(A032741(n)+2), A339579(n+1)]` -/
def P7012853054076129217.Spec : Prop :=
  ∀ n, (P7012853054076129217.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P1895536779065017303

`eq[1, A001221(A001222(A000005(n+2)+1))]+2`
-/

namespace A176238.P1895536779065017303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001222 (A000005 (n + 2) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A176238.P1895536779065017303

namespace A176238

/-- `eq[1, A001221(A001222(A000005(n+2)+1))]+2` -/
def P1895536779065017303.Spec : Prop :=
  ∀ n, (P1895536779065017303.a n : ℤ) = A176238 (n + 1)

end A176238

/-! ## A176238.P16534834403578086222

`eq[A010051(n+1), A049084(A000005(n+1)+1)]+1`
-/

namespace A176238.P16534834403578086222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176238.P16534834403578086222

namespace A176238

/-- `eq[A010051(n+1), A049084(A000005(n+1)+1)]+1` -/
def P16534834403578086222.Spec : Prop :=
  ∀ n, (P16534834403578086222.a n : ℤ) = A176238 (n + 1)

end A176238

/-!
# A176240: Primes of the form n-th semiprime-n.

The programs for A176240, the canonical program `A176240.P1797861923911203434` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176240 has offset 1).

The definition of A176240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176240.P94035904707105291

`p?[A175708(n+1)]`
-/

namespace A176240.P94035904707105291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P94035904707105291

namespace A176240

/-- `p?[A175708(n+1)]` -/
def P94035904707105291.Spec : Prop :=
  ∀ n, P94035904707105291.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P3931639705010902100

`p?[A176540(n+1)-n]`
-/

namespace A176240.P3931639705010902100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P3931639705010902100

namespace A176240

/-- `p?[A176540(n+1)-n]` -/
def P3931639705010902100.Spec : Prop :=
  ∀ n, P3931639705010902100.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P13972075586841823703

`p?[A186621(n+1)-n]`
-/

namespace A176240.P13972075586841823703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P13972075586841823703

namespace A176240

/-- `p?[A186621(n+1)-n]` -/
def P13972075586841823703.Spec : Prop :=
  ∀ n, P13972075586841823703.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P585782592309501954

`p?[A001358(n+1)-(n+1)]`
-/

namespace A176240.P585782592309501954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P585782592309501954

namespace A176240

/-- `p?[A001358(n+1)-(n+1)]` -/
def P585782592309501954.Spec : Prop :=
  ∀ n, P585782592309501954.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P1797861923911203434

`p?[A088707(n+1)-(n+2)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A176240

/-- `p?[A088707(n+1)-(n+2)]` -/
def P1797861923911203434.Spec : Prop :=
  ∀ n, P1797861923911203434.a n = A176240 (n + 1)

theorem P1797861923911203434.correct : P1797861923911203434.Spec := by
  intro n
  simp only [A176240, Nat.add_sub_cancel]

end A176240

/-! ## A176240.P128582014693115119

`p?[eq[2, A001222(n+1)]-n]`
-/

namespace A176240.P128582014693115119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P128582014693115119

namespace A176240

/-- `p?[eq[2, A001222(n+1)]-n]` -/
def P128582014693115119.Spec : Prop :=
  ∀ n, P128582014693115119.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P10509588134468502498

`p?[eq[2, A033273(n+1)]-n]`
-/

namespace A176240.P10509588134468502498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P10509588134468502498

namespace A176240

/-- `p?[eq[2, A033273(n+1)]-n]` -/
def P10509588134468502498.Spec : Prop :=
  ∀ n, P10509588134468502498.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P11940264939205891827

`p?[eq[2, A050379(n+1)]-n]`
-/

namespace A176240.P11940264939205891827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P11940264939205891827

namespace A176240

/-- `p?[eq[2, A050379(n+1)]-n]` -/
def P11940264939205891827.Spec : Prop :=
  ∀ n, P11940264939205891827.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P9141901957871928792

`A175708(A176241(n+1))`
-/

namespace A176240.P9141901957871928792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (A176241 (n + 1)).toNat

end

end A176240.P9141901957871928792

namespace A176240

/-- `A175708(A176241(n+1))` -/
def P9141901957871928792.Spec : Prop :=
  ∀ n, P9141901957871928792.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P8277630074489576141

`filter[A175708(n+1), A010051(#)]`
-/

namespace A176240.P8277630074489576141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A176240.P8277630074489576141

namespace A176240

/-- `filter[A175708(n+1), A010051(#)]` -/
def P8277630074489576141.Spec : Prop :=
  ∀ n, P8277630074489576141.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P17451300991876198214

`p?[A084126(n+1)*A084127(n+1)-(n+1)]`
-/

namespace A176240.P17451300991876198214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) * A084127 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P17451300991876198214

namespace A176240

/-- `p?[A084126(n+1)*A084127(n+1)-(n+1)]` -/
def P17451300991876198214.Spec : Prop :=
  ∀ n, P17451300991876198214.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P3757903124622838528

`filter[A175708(n+1), A080339(#)]`
-/

namespace A176240.P3757903124622838528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A176240.P3757903124622838528

namespace A176240

/-- `filter[A175708(n+1), A080339(#)]` -/
def P3757903124622838528.Spec : Prop :=
  ∀ n, P3757903124622838528.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P3270556965815552085

`filter[A175708(n+1), A080545(#)]`
-/

namespace A176240.P3270556965815552085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A176240.P3270556965815552085

namespace A176240

/-- `filter[A175708(n+1), A080545(#)]` -/
def P3270556965815552085.Spec : Prop :=
  ∀ n, P3270556965815552085.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P14817436105462748587

`p?[A014681(A001358(n+1)-n)]`
-/

namespace A176240.P14817436105462748587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A001358 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P14817436105462748587

namespace A176240

/-- `p?[A014681(A001358(n+1)-n)]` -/
def P14817436105462748587.Spec : Prop :=
  ∀ n, P14817436105462748587.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P16554604269013808761

`p?[record[A179312(n+1)]-n]`
-/

namespace A176240.P16554604269013808761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P16554604269013808761

namespace A176240

/-- `p?[record[A179312(n+1)]-n]` -/
def P16554604269013808761.Spec : Prop :=
  ∀ n, P16554604269013808761.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P871572741949616511

`p?[eq[2, A001055(n+1)]-n]`
-/

namespace A176240.P871572741949616511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P871572741949616511

namespace A176240

/-- `p?[eq[2, A001055(n+1)]-n]` -/
def P871572741949616511.Spec : Prop :=
  ∀ n, P871572741949616511.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P6362935034933749917

`p?[eq[2, A226378(n)]-(n+1)]`
-/

namespace A176240.P6362935034933749917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P6362935034933749917

namespace A176240

/-- `p?[eq[2, A226378(n)]-(n+1)]` -/
def P6362935034933749917.Spec : Prop :=
  ∀ n, P6362935034933749917.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P11553587810924463602

`p?[A004086(A210616(n+1))-(n+1)]`
-/

namespace A176240.P11553587810924463602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A210616 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P11553587810924463602

namespace A176240

/-- `p?[A004086(A210616(n+1))-(n+1)]` -/
def P11553587810924463602.Spec : Prop :=
  ∀ n, P11553587810924463602.a n = A176240 (n + 1)

end A176240

/-! ## A176240.P10845877789911249681

`p?[A000720(A106349(n+1))-(n+1)]`
-/

namespace A176240.P10845877789911249681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A106349 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176240.P10845877789911249681

namespace A176240

/-- `p?[A000720(A106349(n+1))-(n+1)]` -/
def P10845877789911249681.Spec : Prop :=
  ∀ n, P10845877789911249681.a n = A176240 (n + 1)

end A176240

/-!
# A176241: Numbers k such that k-th semiprime - k is prime.

The programs for A176241, the canonical program `A176241.P3332778446777319815` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176241 has offset 1).

The definition of A176241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176241.P3332778446777319815

`eq[1, A001222(A001358(n+1)-(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176241

/-- `eq[1, A001222(A001358(n+1)-(n+1))]+1` -/
def P3332778446777319815.Spec : Prop :=
  ∀ n, (P3332778446777319815.a n : ℤ) = A176241 (n + 1)

theorem P3332778446777319815.correct : P3332778446777319815.Spec := by
  intro n
  simp only [A176241, Nat.add_sub_cancel]

end A176241

/-! ## A176241.P5877317313513521756

`lt[A000005(A001358(n+1)-(n+1)), 3]+1`
-/

namespace A176241.P5877317313513521756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001358 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A176241.P5877317313513521756

namespace A176241

/-- `lt[A000005(A001358(n+1)-(n+1)), 3]+1` -/
def P5877317313513521756.Spec : Prop :=
  ∀ n, (P5877317313513521756.a n : ℤ) = A176241 (n + 1)

end A176241

/-! ## A176241.P2875856748627150236

`eq[1, A001222(A175708(n+1))]+1`
-/

namespace A176241.P2875856748627150236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175708 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176241.P2875856748627150236

namespace A176241

/-- `eq[1, A001222(A175708(n+1))]+1` -/
def P2875856748627150236.Spec : Prop :=
  ∀ n, (P2875856748627150236.a n : ℤ) = A176241 (n + 1)

end A176241

/-! ## A176241.P6052452619281519933

`eq[1, A008481(A175708(abs(1-n)+1))]`
-/

namespace A176241.P6052452619281519933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A175708 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176241.P6052452619281519933

namespace A176241

/-- `eq[1, A008481(A175708(abs(1-n)+1))]` -/
def P6052452619281519933.Spec : Prop :=
  ∀ n, (P6052452619281519933.a n : ℤ) = A176241 (n + 1)

end A176241

/-! ## A176241.P11319436386721861943

`eq[2, A137502(A186621(n+1)-n)]+1`
-/

namespace A176241.P11319436386721861943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A186621 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176241.P11319436386721861943

namespace A176241

/-- `eq[2, A137502(A186621(n+1)-n)]+1` -/
def P11319436386721861943.Spec : Prop :=
  ∀ n, (P11319436386721861943.a n : ℤ) = A176241 (n + 1)

end A176241

/-! ## A176241.P12801419927963387581

`record[n+1-A239968(A001358(n+1)-(n+1))]`
-/

namespace A176241.P12801419927963387581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A239968 (A001358 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176241.P12801419927963387581

namespace A176241

/-- `record[n+1-A239968(A001358(n+1)-(n+1))]` -/
def P12801419927963387581.Spec : Prop :=
  ∀ n, P12801419927963387581.a n = A176241 (n + 1)

end A176241

/-!
# A176242: Triangle read by rows, T(n, 1) = 1 and T(n,k) = q^k*T(n-1, k) + T(n-1, k-1) for 2 <= k <= n, n >= 1, with q=2.

The programs for A176242, there is no canonical definition to state claims against.
-/

/-! ## A176242.P8182532319869553987

`A065361(A176243(n+1))`
-/

namespace A176242.P8182532319869553987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A176243 (n + 1)).toNat

end

end A176242.P8182532319869553987

/-! ## A176242.P12845613780195119417

`A081611(A176243(n+1)-1)`
-/

namespace A176242.P12845613780195119417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A176243 (n + 1) - 1).toNat

end

end A176242.P12845613780195119417

/-! ## A176242.P1733336396049885085

`A059261(ceil(A176244(n+1)/2))`
-/

namespace A176242.P1733336396049885085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 ⌈(A176244 (n + 1) : ℚ) / 2⌉.toNat

end

end A176242.P1733336396049885085

/-! ## A176242.P8407738067767186764

`A059261((A176244(n+1)+1)/2)`
-/

namespace A176242.P8407738067767186764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (SequenceMachineLib.roundAway ((A176244 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A176242.P8407738067767186764

/-! ## A176242.P4266525555732082801

`A119353(A176243(n+1)+3)-2`
-/

namespace A176242.P4266525555732082801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A176243 (n + 1) + 3).toNat - 2

end

end A176242.P4266525555732082801

/-!
# A176243: Triangle generated by T(n,k) = q^k*T(n-1, k) + T(n-1, k-1), with q=3.

The programs for A176243, there is no canonical definition to state claims against.
-/

/-! ## A176243.P4399941421398820291

`A215090(A176244(n+1))`
-/

namespace A176243.P4399941421398820291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A176244 (n + 1)).toNat

end

end A176243.P4399941421398820291

/-! ## A176243.P6956917967753375157

`A283315(A086329(n))+A160562(n)`
-/

namespace A176243.P6956917967753375157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283315 (A086329 n).toNat + A160562 n

end

end A176243.P6956917967753375157

/-! ## A176243.P14887105932445911783

`A022173(n)%A332357(A161344(n+1))`
-/

namespace A176243.P14887105932445911783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022173 n) (A332357 (A161344 (n + 1)).toNat)

end

end A176243.P14887105932445911783

/-! ## A176243.P12814936036557169249

`A022173(n)-(n+1)*A083344(A049614(n))`
-/

namespace A176243.P12814936036557169249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 n - (n + 1 : ℤ) * A083344 (A049614 n).toNat

end

end A176243.P12814936036557169249

/-! ## A176243.P13615248311607154147

`A344300(3^A026780(n))%A059797(A247764(3*n+5))`
-/

namespace A176243.P13615248311607154147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344300 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A026780 n : ℤ))).toNat) (A059797 (A247764 (3 * n + 5)).toNat)

end

end A176243.P13615248311607154147

/-!
# A176244: Triangle generated by T(n,k) = q^k*T(n-1, k) + T(n-1, k-1), with q=4.

The programs for A176244, there is no canonical definition to state claims against.
-/

/-! ## A176244.P4646645944779717983

`A006288(A176243(n+1))`
-/

namespace A176244.P4646645944779717983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A176243 (n + 1)).toNat

end

end A176244.P4646645944779717983

/-! ## A176244.P9365018500360127973

`A023717(gcd(C(2, n+2), A176243(n+1)))`
-/

namespace A176244.P9365018500360127973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A176243 (n + 1)))

end

end A176244.P9365018500360127973

/-! ## A176244.P2495430961342779905

`A023717(A176243(n+1)+A025469(n))`
-/

namespace A176244.P2495430961342779905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A176243 (n + 1) + A025469 n).toNat

end

end A176244.P2495430961342779905

/-! ## A176244.P2153717952715937317

`A023717(A176243(n+1)%A001554(n))`
-/

namespace A176244.P2153717952715937317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (Int.tmod (A176243 (n + 1)) (A001554 n)).toNat

end

end A176244.P2153717952715937317

/-! ## A176244.P10568495045267606767

`A023717(A176243(n+1))%A002089(n)`
-/

namespace A176244.P10568495045267606767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 (A176243 (n + 1)).toNat) (A002089 n)

end

end A176244.P10568495045267606767

/-!
# A176246: a(n) = A001223(n+1) - 1.

The programs for A176246, the canonical program `A176246.P14955082673946823167` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176246 has offset 1).

The definition of A176246 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176246.P14955082673946823167

`A001223(n+2)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A176246

/-- `A001223(n+2)-1` -/
def P14955082673946823167.Spec : Prop :=
  ∀ n, P14955082673946823167.a n = A176246 (n + 1)

theorem P14955082673946823167.correct : P14955082673946823167.Spec := by
  intro n
  simp only [A176246, Nat.add_sub_cancel]

end A176246

/-! ## A176246.P12978236235349687814

`∑[A036263(n+1)]`
-/

namespace A176246.P12978236235349687814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176246.P12978236235349687814

namespace A176246

/-- `∑[A036263(n+1)]` -/
def P12978236235349687814.Spec : Prop :=
  ∀ n, P12978236235349687814.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P686521763274750923

`abs(Δ[A330545(n+2)])`
-/

namespace A176246.P686521763274750923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A176246.P686521763274750923

namespace A176246

/-- `abs(Δ[A330545(n+2)])` -/
def P686521763274750923.Spec : Prop :=
  ∀ n, P686521763274750923.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P1500123904855365428

`2*A028334(n+2)-1`
-/

namespace A176246.P1500123904855365428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028334 (n + 2) - 1

end

end A176246.P1500123904855365428

namespace A176246

/-- `2*A028334(n+2)-1` -/
def P1500123904855365428.Spec : Prop :=
  ∀ n, P1500123904855365428.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P9269013048441350107

`A261470(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A176246.P9269013048441350107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A261470 n + a (n - 2)

end

end A176246.P9269013048441350107

namespace A176246

/-- `A261470(n)+a(n-2)` -/
def P9269013048441350107.Spec : Prop :=
  ∀ n, P9269013048441350107.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P13188469336942368232

`A000265(A135732(n+1))`
-/

namespace A176246.P13188469336942368232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A135732 (n + 1)).toNat

end

end A176246.P13188469336942368232

namespace A176246

/-- `A000265(A135732(n+1))` -/
def P13188469336942368232.Spec : Prop :=
  ∀ n, P13188469336942368232.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P4390020428224189768

`A004273(A028334(n+2))`
-/

namespace A176246.P4390020428224189768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A028334 (n + 2)).toNat

end

end A176246.P4390020428224189768

namespace A176246

/-- `A004273(A028334(n+2))` -/
def P4390020428224189768.Spec : Prop :=
  ∀ n, P4390020428224189768.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P12718219224283218710

`A330492(2*A001223(n+2))`
-/

namespace A176246.P12718219224283218710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (2 * A001223 (n + 2)).toNat

end

end A176246.P12718219224283218710

namespace A176246

/-- `A330492(2*A001223(n+2))` -/
def P12718219224283218710.Spec : Prop :=
  ∀ n, P12718219224283218710.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P15352982572892337699

`A135732(n+1)-A000007(n)`
-/

namespace A176246.P15352982572892337699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1) - A000007 n

end

end A176246.P15352982572892337699

namespace A176246

/-- `A135732(n+1)-A000007(n)` -/
def P15352982572892337699.Spec : Prop :=
  ∀ n, P15352982572892337699.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P12357855729546840869

`A135732(n+1)/A054977(n)`
-/

namespace A176246.P12357855729546840869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135732 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A176246.P12357855729546840869

namespace A176246

/-- `A135732(n+1)/A054977(n)` -/
def P12357855729546840869.Spec : Prop :=
  ∀ n, P12357855729546840869.a n = (A176246 (n + 1) : ℚ)

end A176246

/-! ## A176246.P6626298852360649342

`A046933(n+1)+A036263(n+1)`
-/

namespace A176246.P6626298852360649342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + A036263 (n + 1)

end

end A176246.P6626298852360649342

namespace A176246

/-- `A046933(n+1)+A036263(n+1)` -/
def P6626298852360649342.Spec : Prop :=
  ∀ n, P6626298852360649342.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P14532795357552066596

`A006093(n+1)-A096379(n+1)`
-/

namespace A176246.P14532795357552066596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A096379 (n + 1)

end

end A176246.P14532795357552066596

namespace A176246

/-- `A006093(n+1)-A096379(n+1)` -/
def P14532795357552066596.Spec : Prop :=
  ∀ n, P14532795357552066596.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P1469407109586361113

`A093667(n+1)-A008864(n+1)`
-/

namespace A176246.P1469407109586361113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A008864 (n + 1)

end

end A176246.P1469407109586361113

namespace A176246

/-- `A093667(n+1)-A008864(n+1)` -/
def P1469407109586361113.Spec : Prop :=
  ∀ n, P1469407109586361113.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P18366060602023563669

`A258326(n+1)-A000040(n+1)`
-/

namespace A176246.P18366060602023563669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258326 (n + 1) - A000040 (n + 1)

end

end A176246.P18366060602023563669

namespace A176246

/-- `A258326(n+1)-A000040(n+1)` -/
def P18366060602023563669.Spec : Prop :=
  ∀ n, P18366060602023563669.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P522289632121584347

`A172367(n+1)-A154115(n+1)`
-/

namespace A176246.P522289632121584347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) - A154115 (n + 1)

end

end A176246.P522289632121584347

namespace A176246

/-- `A172367(n+1)-A154115(n+1)` -/
def P522289632121584347.Spec : Prop :=
  ∀ n, P522289632121584347.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P7516714827722680145

`A004139(n+1)%A006254(n+1)`
-/

namespace A176246.P7516714827722680145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004139 (n + 1)) (A006254 (n + 1))

end

end A176246.P7516714827722680145

namespace A176246

/-- `A004139(n+1)%A006254(n+1)` -/
def P7516714827722680145.Spec : Prop :=
  ∀ n, P7516714827722680145.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P15124079775659326322

`A215848(n+1)%A006254(n+1)`
-/

namespace A176246.P15124079775659326322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215848 (n + 1)) (A006254 (n + 1))

end

end A176246.P15124079775659326322

namespace A176246

/-- `A215848(n+1)%A006254(n+1)` -/
def P15124079775659326322.Spec : Prop :=
  ∀ n, P15124079775659326322.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P12928442306595509441

`Δ[p?[2*n+1]]-1`
-/

namespace A176246.P12928442306595509441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A176246.P12928442306595509441

namespace A176246

/-- `Δ[p?[2*n+1]]-1` -/
def P12928442306595509441.Spec : Prop :=
  ∀ n, P12928442306595509441.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P10534143094726889397

`floor(log(cosh(Δ[p?[2*n+1]])))`
-/

namespace A176246.P10534143094726889397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))⌋

end

end A176246.P10534143094726889397

namespace A176246

/-- `floor(log(cosh(Δ[p?[2*n+1]])))` -/
def P10534143094726889397.Spec : Prop :=
  ∀ n, P10534143094726889397.a n = A176246 (n + 1)

end A176246

/-! ## A176246.P12875522140107787341

`floor(log(sinh(Δ[p?[2*n+1]])))`
-/

namespace A176246.P12875522140107787341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sinh ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))⌋

end

end A176246.P12875522140107787341

namespace A176246

/-- `floor(log(sinh(Δ[p?[2*n+1]])))` -/
def P12875522140107787341.Spec : Prop :=
  ∀ n, P12875522140107787341.a n = A176246 (n + 1)

end A176246

/-!
# A176247: Primes p which give a prime iterated by f(p) = 2*p + 13 for at least two steps.

The programs for A176247, there is no canonical definition to state claims against.
-/

/-! ## A176247.P13286797708693541102

`p?[A176223(n+1)]`
-/

namespace A176247.P13286797708693541102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176247.P13286797708693541102

/-! ## A176247.P6169729726178017256

`∩[A106859(n+1), A176223(n+1)]`
-/

namespace A176247.P6169729726178017256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P6169729726178017256

/-! ## A176247.P4102867430651424710

`∩[A003627(n+1), A176223(n+1)]`
-/

namespace A176247.P4102867430651424710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P4102867430651424710

/-! ## A176247.P5206284769209483525

`∩[A042993(n+1), A176223(n+1)]`
-/

namespace A176247.P5206284769209483525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P5206284769209483525

/-! ## A176247.P4546498402322016602

`∩[A045309(n+1), A176223(n+1)]`
-/

namespace A176247.P4546498402322016602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P4546498402322016602

/-! ## A176247.P11940652143046692914

`∩[A176223(n+1), A341786(n+1)]`
-/

namespace A176247.P11940652143046692914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P11940652143046692914

/-! ## A176247.P9013057809261994098

`∩[A049596(n+1), A176223(n+1)]`
-/

namespace A176247.P9013057809261994098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P9013057809261994098

/-! ## A176247.P5658533498212998892

`∩[A040036(n+1), A176223(n+1)]`
-/

namespace A176247.P5658533498212998892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P5658533498212998892

/-! ## A176247.P6407591818344494838

`∩[A040044(n+1), A176223(n+1)]`
-/

namespace A176247.P6407591818344494838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P6407591818344494838

/-! ## A176247.P426065956642372916

`∩[A040046(n+1), A176223(n+1)]`
-/

namespace A176247.P426065956642372916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P426065956642372916

/-! ## A176247.P6155043066066761825

`∩[A040060(n+1), A176223(n+1)]`
-/

namespace A176247.P6155043066066761825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P6155043066066761825

/-! ## A176247.P7615731077442458687

`∩[A040083(n+1), A176223(n+1)]`
-/

namespace A176247.P7615731077442458687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P7615731077442458687

/-! ## A176247.P4082172146554399514

`∩[A040087(n+1), A176223(n+1)]`
-/

namespace A176247.P4082172146554399514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P4082172146554399514

/-! ## A176247.P4781344372251242270

`∩[A040095(n+1), A176223(n+1)]`
-/

namespace A176247.P4781344372251242270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P4781344372251242270

/-! ## A176247.P18144033488662546273

`∩[A040028(n+1), A176223(n+1)]`
-/

namespace A176247.P18144033488662546273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P18144033488662546273

/-! ## A176247.P16857413580272096553

`∩[A040049(n+1), A176223(n+1)]`
-/

namespace A176247.P16857413580272096553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P16857413580272096553

/-! ## A176247.P13420667107168895757

`∩[A040054(n+1), A176223(n+1)]`
-/

namespace A176247.P13420667107168895757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P13420667107168895757

/-! ## A176247.P10583362022110287470

`∩[A040062(n+1), A176223(n+1)]`
-/

namespace A176247.P10583362022110287470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P10583362022110287470

/-! ## A176247.P12103394396585841185

`∩[A040065(n+1), A176223(n+1)]`
-/

namespace A176247.P12103394396585841185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P12103394396585841185

/-! ## A176247.P2442076456454831451

`∩[A040078(n+1), A176223(n+1)]`
-/

namespace A176247.P2442076456454831451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176247.P2442076456454831451

/-!
# A176248: a(n) is the least odd multiple of 3, k, such that k*2^n-1 is a Sophie Germain prime.

The programs for A176248, there is no canonical definition to state claims against.
-/

/-! ## A176248.P2187768942745382107

`lcm(3, A179658(n+1))`
-/

namespace A176248.P2187768942745382107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A179658 (n + 1))

end

end A176248.P2187768942745382107

/-! ## A176248.P16911186956977960154

`A179658(char[1]+1+n)`
-/

namespace A176248.P16911186956977960154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179658 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A176248.P16911186956977960154

/-! ## A176248.P12394389667900208220

`A179658(n+1)+A061007(A008574(n))`
-/

namespace A176248.P12394389667900208220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179658 (n + 1) + A061007 (A008574 n).toNat

end

end A176248.P12394389667900208220

/-! ## A176248.P1633687875271475649

`or(A073423(A103221(n)), A179658(n+1))`
-/

namespace A176248.P1633687875271475649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073423 (A103221 n).toNat) (A179658 (n + 1))

end

end A176248.P1633687875271475649

/-! ## A176248.P3648061998888887651

`or(A173677(A278251(n)), A179658(n+1))`
-/

namespace A176248.P3648061998888887651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173677 (A278251 n).toNat) (A179658 (n + 1))

end

end A176248.P3648061998888887651

/-! ## A176248.P6472530116855138676

`A093178(A051935(n+1))*A179658(n+1)`
-/

namespace A176248.P6472530116855138676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A051935 (n + 1)).toNat * A179658 (n + 1)

end

end A176248.P6472530116855138676

/-! ## A176248.P11162888112999601596

`A204998(A179658(n+1))`
-/

namespace A176248.P11162888112999601596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204998 (A179658 (n + 1)).toNat

end

end A176248.P11162888112999601596

/-! ## A176248.P18262913620301554175

`A179658(n+1)*A358692(n+1)`
-/

namespace A176248.P18262913620301554175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179658 (n + 1) * A358692 (n + 1)

end

end A176248.P18262913620301554175

/-! ## A176248.P7332824691731334158

`A109044(2*A179658(n+1))/2`
-/

namespace A176248.P7332824691731334158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109044 (2 * A179658 (n + 1)).toNat : ℚ) / 2

end

end A176248.P7332824691731334158

/-! ## A176248.P1167434618716789751

`A058306(A179658(n+1)+2)*A179658(n+1)`
-/

namespace A176248.P1167434618716789751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 (A179658 (n + 1) + 2).toNat * A179658 (n + 1)

end

end A176248.P1167434618716789751

/-!
# A176252: Smallest primes in growing order where the parts of compositions of integer 7 used as decimal digits enable primes.

The programs for A176252, there is no canonical definition to state claims against.
-/

/-! ## A176252.P17337418019570557980

`A062337(lt[A000700(n), A000005(n+1)])`
-/

namespace A176252.P17337418019570557980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176252.P17337418019570557980

/-! ## A176252.P7288679548076701730

`A062337(lt[A357189(n), A319350(n+1)])`
-/

namespace A176252.P7288679548076701730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176252.P7288679548076701730

/-! ## A176252.P4724123634594615293

`A062337(lt[A184095(n+1), A142560(n+1)])`
-/

namespace A176252.P4724123634594615293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176252.P4724123634594615293

/-! ## A176252.P14536577893893762681

`A062337(lt[A342098(2*(n+1)), ∑{d}[n+1, #]])`
-/

namespace A176252.P14536577893893762681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342098 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A176252.P14536577893893762681

/-!
# A176253: Indices n corresponding to Fibonacci numbers Fib(n) whose decimal expansion does not contain the digit "5".

The programs for A176253, there is no canonical definition to state claims against.
-/

/-! ## A176253.P10762002653291922823

`record[(n+1)/(A085859(n+1)+1)]`
-/

namespace A176253.P10762002653291922823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085859 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176253.P10762002653291922823

/-! ## A176253.P7888667534182106644

`eq[A000007(n), A085859(n)]`
-/

namespace A176253.P7888667534182106644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176253.P7888667534182106644

/-! ## A176253.P12500835980181396502

`eq[A000038(n), A085859(n)]`
-/

namespace A176253.P12500835980181396502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176253.P12500835980181396502

/-! ## A176253.P1025559843297134340

`record[A028310(gcd(n, A085859(n)))]`
-/

namespace A176253.P1025559843297134340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A085859 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176253.P1025559843297134340

/-! ## A176253.P10398565303139462052

`eq[A008683((n+1)²), A085859(n)]`
-/

namespace A176253.P10398565303139462052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176253.P10398565303139462052

/-!
# A176254: Smallest primes in growing order where the parts of compositions of integer 8 = 2^3 used as decimal digits enable primes.

The programs for A176254, there is no canonical definition to state claims against.
-/

/-! ## A176254.P4871244900955018747

`A062343(lt[A218357(n+3), A072180(3*n+1)])`
-/

namespace A176254.P4871244900955018747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218357 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072180 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176254.P4871244900955018747

/-! ## A176254.P95844076727076445

`A062343(lt[A029223(n), A023506(n+1)])`
-/

namespace A176254.P95844076727076445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176254.P95844076727076445

/-! ## A176254.P8607814574135289754

`A062343(lt[A204922(n+1), A131213(n+1)])`
-/

namespace A176254.P8607814574135289754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176254.P8607814574135289754

/-! ## A176254.P2655017416053921147

`A062343(lt[A175790(2*n+3), A082052(n+1)])`
-/

namespace A176254.P2655017416053921147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175790 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176254.P2655017416053921147

/-!
# A176255: Numbers of the form 4k-1 with least prime divisor of the form 4m+1.

The programs for A176255, there is no canonical definition to state claims against.
-/

/-! ## A176255.P16340157710452998996

`filter[A168489(n+1), A353492(#)]`
-/

namespace A176255.P16340157710452998996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176255.P16340157710452998996

/-! ## A176255.P7798911291629624763

`filter[A091236(n+1), A353492(#)]`
-/

namespace A176255.P7798911291629624763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176255.P7798911291629624763

/-! ## A176255.P17310942388948055073

`eq[A353492(n+1), A353497(n+1)]+1`
-/

namespace A176255.P17310942388948055073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176255.P17310942388948055073

/-! ## A176255.P16684490240208303365

`filter[A004767(n), A353492(#)]`
-/

namespace A176255.P16684490240208303365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176255.P16684490240208303365

/-! ## A176255.P2277225386142210149

`filter[A080457(2*(n+1)), A353492(#)]`
-/

namespace A176255.P2277225386142210149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080457 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176255.P2277225386142210149

/-! ## A176255.P6325896196222080263

`filter[A255763(2*n+1), A353492(#)]`
-/

namespace A176255.P6325896196222080263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176255.P6325896196222080263

/-! ## A176255.P3582555923743084516

`eq[2, gcd(A014673(n+1), A175126(n))]`
-/

namespace A176255.P3582555923743084516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014673 (n + 1)) (A175126 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176255.P3582555923743084516

/-! ## A176255.P1352334238723519997

`eq[A025441(A107286(n)), A087960(n)]`
-/

namespace A176255.P1352334238723519997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176255.P1352334238723519997

/-! ## A176255.P71051880528801860

`eq[A000035(A175126(n)), A110514(n)]`
-/

namespace A176255.P71051880528801860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A175126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176255.P71051880528801860

/-! ## A176255.P8355965516527918167

`eq[A025426(A107286(n)), A228826(n)]`
-/

namespace A176255.P8355965516527918167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176255.P8355965516527918167

/-! ## A176255.P4670538282790365877

`eq[A000034(A175126(n)), A228826(n)]`
-/

namespace A176255.P4670538282790365877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A175126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176255.P4670538282790365877

/-! ## A176255.P17021160124032975334

`eq[A025441(A107286(n)), A126773(n+1)]`
-/

namespace A176255.P17021160124032975334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176255.P17021160124032975334

/-!
# A176256: Numbers of the form 4k+1 with least prime divisor of the form 4m-1.

The programs for A176256, there is no canonical definition to state claims against.
-/

/-! ## A176256.P15845351175939250805

`filter[A016813(n), A353492(#)]`
-/

namespace A176256.P15845351175939250805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P15845351175939250805

/-! ## A176256.P6286741068061310559

`filter[A222945(n), A353492(#)]`
-/

namespace A176256.P6286741068061310559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P6286741068061310559

/-! ## A176256.P16059679532424490495

`filter[A266072(n), A353492(#)]`
-/

namespace A176256.P16059679532424490495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P16059679532424490495

/-! ## A176256.P15033551038631015369

`filter[A266256(n), A353492(#)]`
-/

namespace A176256.P15033551038631015369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P15033551038631015369

/-! ## A176256.P15820382606211354727

`filter[A266662(n), A353492(#)]`
-/

namespace A176256.P15820382606211354727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P15820382606211354727

/-! ## A176256.P5263292688491812470

`filter[A339597(n), A353492(#)]`
-/

namespace A176256.P5263292688491812470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P5263292688491812470

/-! ## A176256.P12540571166294808294

`filter[A004766(n+1), A353492(#)]`
-/

namespace A176256.P12540571166294808294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P12540571166294808294

/-! ## A176256.P9601471353742004328

`filter[A042948(n+1), A353492(#)]`
-/

namespace A176256.P9601471353742004328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P9601471353742004328

/-! ## A176256.P18280519166870598707

`filter[A047610(n+1), A353492(#)]`
-/

namespace A176256.P18280519166870598707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P18280519166870598707

/-! ## A176256.P14721420098839495597

`filter[A047613(n+1), A353492(#)]`
-/

namespace A176256.P14721420098839495597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P14721420098839495597

/-! ## A176256.P316180226929930483

`filter[A047619(n+1), A353492(#)]`
-/

namespace A176256.P316180226929930483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P316180226929930483

/-! ## A176256.P17861887952149084250

`filter[A091072(n+1), A353492(#)]`
-/

namespace A176256.P17861887952149084250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P17861887952149084250

/-! ## A176256.P16345022681664432531

`filter[A091113(n+1), A353492(#)]`
-/

namespace A176256.P16345022681664432531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P16345022681664432531

/-! ## A176256.P736218985120834594

`filter[A100832(n+1), A353492(#)]`
-/

namespace A176256.P736218985120834594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P736218985120834594

/-! ## A176256.P3499307576163773380

`filter[A110185(n+1), A353492(#)]`
-/

namespace A176256.P3499307576163773380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P3499307576163773380

/-! ## A176256.P12424595775483396669

`filter[A168204(n+1), A353492(#)]`
-/

namespace A176256.P12424595775483396669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P12424595775483396669

/-! ## A176256.P5917086133044671278

`filter[A225836(n+1), A353492(#)]`
-/

namespace A176256.P5917086133044671278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P5917086133044671278

/-! ## A176256.P14551492026447127208

`filter[A266449(n+1), A353492(#)]`
-/

namespace A176256.P14551492026447127208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P14551492026447127208

/-! ## A176256.P11089112314127601718

`filter[A277549(n+1), A353492(#)]`
-/

namespace A176256.P11089112314127601718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P11089112314127601718

/-! ## A176256.P14571299280800170064

`filter[A047616(n+2), A353492(#)]`
-/

namespace A176256.P14571299280800170064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A176256.P14571299280800170064

/-!
# A176257: Numbers of the form 4k-1 with greatest prime divisor of the form 4m+1.

The programs for A176257, the canonical program `A176257.P13315151628699199712` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176257 has offset 1).

The definition of A176257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2062 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176257.P13315151628699199712

`filter[A071821(n+1), A373979(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176257

/-- `filter[A071821(n+1), A373979(#)]` -/
def P13315151628699199712.Spec : Prop :=
  ∀ n, P13315151628699199712.a n = A176257 (n + 1)

theorem P13315151628699199712.correct : P13315151628699199712.Spec := by
  intro n
  simp only [A176257, Nat.add_sub_cancel]

end A176257

/-! ## A176257.P13171117644483040928

`∩[A071821(n+1), A004767(n)]`
-/

namespace A176257.P13171117644483040928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176257.P13171117644483040928

namespace A176257

/-- `∩[A071821(n+1), A004767(n)]` -/
def P13171117644483040928.Spec : Prop :=
  ∀ n, (P13171117644483040928.a n : ℤ) = A176257 (n + 1)

end A176257

/-! ## A176257.P9345934427472610089

`∩[A071821(n+1), A091236(n+1)]`
-/

namespace A176257.P9345934427472610089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176257.P9345934427472610089

namespace A176257

/-- `∩[A071821(n+1), A091236(n+1)]` -/
def P9345934427472610089.Spec : Prop :=
  ∀ n, (P9345934427472610089.a n : ℤ) = A176257 (n + 1)

end A176257

/-! ## A176257.P10607309725091173971

`∩[A071821(n+1), A131098(n+1)]`
-/

namespace A176257.P10607309725091173971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176257.P10607309725091173971

namespace A176257

/-- `∩[A071821(n+1), A131098(n+1)]` -/
def P10607309725091173971.Spec : Prop :=
  ∀ n, (P10607309725091173971.a n : ℤ) = A176257 (n + 1)

end A176257

/-! ## A176257.P11591173247088004694

`∩[A071821(n+1), A008574(n)-1]`
-/

namespace A176257.P11591173247088004694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176257.P11591173247088004694

namespace A176257

/-- `∩[A071821(n+1), A008574(n)-1]` -/
def P11591173247088004694.Spec : Prop :=
  ∀ n, (P11591173247088004694.a n : ℤ) = A176257 (n + 1)

end A176257

/-! ## A176257.P4122259918693465925

`eq[and(2, A006530(n+2)), A169700(n)]+2`
-/

namespace A176257.P4122259918693465925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A006530 (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A176257.P4122259918693465925

namespace A176257

/-- `eq[and(2, A006530(n+2)), A169700(n)]+2` -/
def P4122259918693465925.Spec : Prop :=
  ∀ n, (P4122259918693465925.a n : ℤ) = A176257 (n + 1)

end A176257

/-!
# A176258: Numbers of the form 4k+1 with greatest prime divisor of the form 4m-1.

The programs for A176258, the canonical program `A176258.P9328120445977838014` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176258 has offset 1).

The definition of A176258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2060 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176258.P9328120445977838014

`filter[A071822(n+1), A373978(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176258

/-- `filter[A071822(n+1), A373978(#)]` -/
def P9328120445977838014.Spec : Prop :=
  ∀ n, P9328120445977838014.a n = A176258 (n + 1)

theorem P9328120445977838014.correct : P9328120445977838014.Spec := by
  intro n
  simp only [A176258, Nat.add_sub_cancel]

end A176258

/-! ## A176258.P17759652442936765343

`∩[A071822(n+1), A016813(n)]`
-/

namespace A176258.P17759652442936765343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176258.P17759652442936765343

namespace A176258

/-- `∩[A071822(n+1), A016813(n)]` -/
def P17759652442936765343.Spec : Prop :=
  ∀ n, (P17759652442936765343.a n : ℤ) = A176258 (n + 1)

end A176258

/-! ## A176258.P11991668925615151145

`∩[A004766(n+1), A071822(n+1)]`
-/

namespace A176258.P11991668925615151145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176258.P11991668925615151145

namespace A176258

/-- `∩[A004766(n+1), A071822(n+1)]` -/
def P11991668925615151145.Spec : Prop :=
  ∀ n, (P11991668925615151145.a n : ℤ) = A176258 (n + 1)

end A176258

/-! ## A176258.P9770555494357659954

`∩[A071822(n+1), A091113(n+1)]`
-/

namespace A176258.P9770555494357659954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176258.P9770555494357659954

namespace A176258

/-- `∩[A071822(n+1), A091113(n+1)]` -/
def P9770555494357659954.Spec : Prop :=
  ∀ n, (P9770555494357659954.a n : ℤ) = A176258 (n + 1)

end A176258

/-! ## A176258.P13781943835710037967

`lt[1, A007814(or(n, A006530(n+1)+1))]+1`
-/

namespace A176258.P13781943835710037967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (n : ℤ) (A006530 (n + 1) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176258.P13781943835710037967

namespace A176258

/-- `lt[1, A007814(or(n, A006530(n+1)+1))]+1` -/
def P13781943835710037967.Spec : Prop :=
  ∀ n, (P13781943835710037967.a n : ℤ) = A176258 (n + 1)

end A176258

/-!
# A176259: Triangle, T(n, k) = Fibonacci(k+1) + Fibonacci(n-k+1) - Fibonacci(n+1), read by rows.

The programs for A176259, the canonical program `A176259.P12714678586709053484` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176259 has offset 0).

The definition of A176259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176259.P12714678586709053484

`A104762(n+1)+A104763(n+1)-A131410(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176259

/-- `A104762(n+1)+A104763(n+1)-A131410(n+1)` -/
def P12714678586709053484.Spec : Prop :=
  ∀ n, P12714678586709053484.a n = A176259 n

theorem P12714678586709053484.correct : P12714678586709053484.Spec := by
  intro n
  simp only [A176259]

end A176259

/-! ## A176259.P12876627873334077499

`1-A025075(A174667(n))`
-/

namespace A176259.P12876627873334077499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A025075 (A174667 n).toNat

end

end A176259.P12876627873334077499

namespace A176259

/-- `1-A025075(A174667(n))` -/
def P12876627873334077499.Spec : Prop :=
  ∀ n, P12876627873334077499.a n = A176259 n

end A176259

/-! ## A176259.P15380981520893450075

`1-A163352(A300776(n+1))`
-/

namespace A176259.P15380981520893450075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A163352 (A300776 (n + 1)).toNat

end

end A176259.P15380981520893450075

namespace A176259

/-- `1-A163352(A300776(n+1))` -/
def P15380981520893450075.Spec : Prop :=
  ∀ n, P15380981520893450075.a n = A176259 n

end A176259

/-! ## A176259.P7689610382761104000

`1-A302242(A156584(n))`
-/

namespace A176259.P7689610382761104000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A302242 (A156584 n).toNat

end

end A176259.P7689610382761104000

namespace A176259

/-- `1-A302242(A156584(n))` -/
def P7689610382761104000.Spec : Prop :=
  ∀ n, P7689610382761104000.a n = A176259 n

end A176259

/-! ## A176259.P63422247214364526

`2-A000120(A174158(n+1))`
-/

namespace A176259.P63422247214364526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000120 (A174158 (n + 1)).toNat

end

end A176259.P63422247214364526

namespace A176259

/-- `2-A000120(A174158(n+1))` -/
def P63422247214364526.Spec : Prop :=
  ∀ n, P63422247214364526.a n = A176259 n

end A176259

/-!
# A176260: Period 2: repeat [5, 1].

The programs for A176260, the canonical program `A176260.P750230549755017519` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176260 has offset 0).

The definition of A176260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176260.P750230549755017519

`a(n-2)` with `a(0)=5, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A176260

/-- `a(n-2)` -/
def P750230549755017519.Spec : Prop :=
  ∀ n, (P750230549755017519.a n : ℤ) = A176260 n

theorem P750230549755017519.correct : P750230549755017519.Spec := by
  intro n
  simp only [A176260]

end A176260

/-!
# A176262: Numbers of the form 3k+1 with greatest prime divisor of the form 3m-1.

The programs for A176262, there is no canonical definition to state claims against.
-/

/-! ## A176262.P3367706042219232912

`eq[A139213(A006530(n+1)), A139214(n+2)]+1`
-/

namespace A176262.P3367706042219232912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139213 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139214 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176262.P3367706042219232912

/-! ## A176262.P3921455531867037370

`eq[A329251(n+1), A359378(A070229(n+1))]+1`
-/

namespace A176262.P3921455531867037370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (A070229 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176262.P3921455531867037370

/-! ## A176262.P11476048501353254633

`A115638(A092793(n+2))+record[A091733(3*n+4)]`
-/

namespace A176262.P11476048501353254633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (A092793 (n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176262.P11476048501353254633

/-! ## A176262.P6673778635451427536

`record[A091733(3*n+4)]-A000034(A023857(2*(n+1)))`
-/

namespace A176262.P6673778635451427536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000034 (A023857 (2 * (n + 1))).toNat

end

end A176262.P6673778635451427536

/-! ## A176262.P14198746894886211804

`record[A091733(3*n+4)]+A008683(A105975(n+1))`
-/

namespace A176262.P14198746894886211804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (A105975 (n + 1)).toNat

end

end A176262.P14198746894886211804

/-!
# A176264: Triangle T(n,k) = A015442(k) - A015442(n) + A015442(n-k) read by rows.

The programs for A176264, there is no canonical definition to state claims against.
-/

/-! ## A176264.P10962118319893199311

`A325862(A230661(n+1))-A236112(A166343(n+1)+3)`
-/

namespace A176264.P10962118319893199311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325862 (A230661 (n + 1)).toNat - A236112 (A166343 (n + 1) + 3).toNat

end

end A176264.P10962118319893199311

/-! ## A176264.P10339966618804773823

`A325862(A230661(n+1))-A230652(n+1)²%A216999(n)`
-/

namespace A176264.P10339966618804773823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325862 (A230661 (n + 1)).toNat - Int.tmod (A230652 (n + 1) ^ 2) (A216999 n)

end

end A176264.P10339966618804773823

/-!
# A176265: a(n) = floor(abs(n*cos(n))).

The programs for A176265, the canonical program `A176265.P11176988656008863969` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176265 has offset 1).

The definition of A176265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(abs((n+1)*cos(n+1)))` (program `A176265.P11176988656008863969`, by `A176265.P11176988656008863969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176265.P11176988656008863969

`floor(abs((n+1)*cos(n+1)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A176265

/-- `floor(abs((n+1)*cos(n+1)))` -/
def P11176988656008863969.Spec : Prop :=
  ∀ n, P11176988656008863969.a n = A176265 (n + 1)

theorem P11176988656008863969.correct : P11176988656008863969.Spec := by
  intro n
  simp only [A176265, Nat.add_sub_cancel]

end A176265

/-! ## A176265.P17197445131845345951

`floor((n+1)*sin(acos(sin(n+1))))`
-/

namespace A176265.P17197445131845345951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sin (Real.arccos (Real.sin (n + 1 : ℝ)))⌋

end

end A176265.P17197445131845345951

namespace A176265

/-- `floor((n+1)*sin(acos(sin(n+1))))` -/
def P17197445131845345951.Spec : Prop :=
  ∀ n, P17197445131845345951.a n = A176265 (n + 1)

end A176265

/-! ## A176265.P5373140837879981083

`ceil(abs((n+1)*cos(n+1)))-1`
-/

namespace A176265.P5373140837879981083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(n + 1 : ℝ) * Real.cos (n + 1 : ℝ)|⌉ - 1

end

end A176265.P5373140837879981083

namespace A176265

/-- `ceil(abs((n+1)*cos(n+1)))-1` -/
def P5373140837879981083.Spec : Prop :=
  ∀ n, P5373140837879981083.a n = A176265 (n + 1)

end A176265

/-! ## A176265.P3856067492063475774

`floor((n+1)/abs(1/cos(n+1)))`
-/

namespace A176265.P3856067492063475774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / |1 / Real.cos (n + 1 : ℝ)|⌋

end

end A176265.P3856067492063475774

namespace A176265

/-- `floor((n+1)/abs(1/cos(n+1)))` -/
def P3856067492063475774.Spec : Prop :=
  ∀ n, P3856067492063475774.a n = A176265 (n + 1)

end A176265

/-! ## A176265.P13145392957349114102

`floor(sqrt((n+1)²*cos(n+1)²))`
-/

namespace A176265.P13145392957349114102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 1) ^ 2 : ℝ) * Real.cos (n + 1 : ℝ) ^ 2)⌋

end

end A176265.P13145392957349114102

namespace A176265

/-- `floor(sqrt((n+1)²*cos(n+1)²))` -/
def P13145392957349114102.Spec : Prop :=
  ∀ n, P13145392957349114102.a n = A176265 (n + 1)

end A176265

/-!
# A176266: Binomial(prime(n),s)/prime(n) where s is the sum of the decimal digits of n.

The programs for A176266, the canonical program `A176266.P11595990340571434479` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176266 has offset 1).

The definition of A176266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3898 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176266.P11595990340571434479

`C(A014692(n+1)+n, ∑{digits}[n+1, #])/(A014692(n+1)+n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A176266

/-- `C(A014692(n+1)+n, ∑{digits}[n+1, #])/(A014692(n+1)+n)` -/
def P11595990340571434479.Spec : Prop :=
  ∀ n, P11595990340571434479.a n = (A176266 (n + 1) : ℚ)

end A176266

/-! ## A176266.P12904055352425383494

`C(A000040(n+1), A007953(n+1))/A000040(n+1)`
-/

namespace A176266.P12904055352425383494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1)).toNat (A007953 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A176266.P12904055352425383494

namespace A176266

/-- `C(A000040(n+1), A007953(n+1))/A000040(n+1)` -/
def P12904055352425383494.Spec : Prop :=
  ∀ n, P12904055352425383494.a n = (A176266 (n + 1) : ℚ)

end A176266

/-!
# A176267: a(n) = binomial(prime(n),s)/prime(n) where s is the sum of the decimal digits of prime(n).

The programs for A176267, there is no canonical definition to state claims against.
-/

/-! ## A176267.P3138004782984706890

`A128936(A000040(n+5))/A000040(n+5)`
-/

namespace A176267.P3138004782984706890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128936 (A000040 (n + 5)).toNat : ℚ) / (A000040 (n + 5) : ℚ)

end

end A176267.P3138004782984706890

/-!
# A176270: Triangle T(n,m) = 1 + m*(m-n) read by rows, 0 <= m <= n.

The programs for A176270, the canonical program `A176270.P12132002411983152534` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176270 has offset 0).

The definition of A176270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077028, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176270.P12132002411983152534

`2-A077028(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176270

/-- `2-A077028(n)` -/
def P12132002411983152534.Spec : Prop :=
  ∀ n, P12132002411983152534.a n = A176270 n

theorem P12132002411983152534.correct : P12132002411983152534.Spec := by
  intro n
  simp only [A176270]

end A176270

/-! ## A176270.P3011375470593477034

`1-A004247(n)`
-/

namespace A176270.P3011375470593477034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004247 n

end

end A176270.P3011375470593477034

namespace A176270

/-- `1-A004247(n)` -/
def P3011375470593477034.Spec : Prop :=
  ∀ n, P3011375470593477034.a n = A176270 n

end A176270

/-! ## A176270.P10627902440851944722

`4-A309555(n)`
-/

namespace A176270.P10627902440851944722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A309555 n

end

end A176270.P10627902440851944722

namespace A176270

/-- `4-A309555(n)` -/
def P10627902440851944722.Spec : Prop :=
  ∀ n, P10627902440851944722.a n = A176270 n

end A176270

/-! ## A176270.P5176372241658247984

`2-sqrt(A082043(n))`
-/

namespace A176270.P5176372241658247984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.sqrt (A082043 n : ℝ)

end

end A176270.P5176372241658247984

namespace A176270

/-- `2-sqrt(A082043(n))` -/
def P5176372241658247984.Spec : Prop :=
  ∀ n, P5176372241658247984.a n = (A176270 n : ℝ)

end A176270

/-! ## A176270.P13681082239545926692

`ceil(A176625(n)/3)`
-/

namespace A176270.P13681082239545926692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176625 n : ℚ) / 3⌉

end

end A176270.P13681082239545926692

namespace A176270

/-- `ceil(A176625(n)/3)` -/
def P13681082239545926692.Spec : Prop :=
  ∀ n, P13681082239545926692.a n = A176270 n

end A176270

/-! ## A176270.P11171939092177845965

`(4-A296180(n))/3`
-/

namespace A176270.P11171939092177845965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - A296180 n : ℚ) / 3

end

end A176270.P11171939092177845965

namespace A176270

/-- `(4-A296180(n))/3` -/
def P11171939092177845965.Spec : Prop :=
  ∀ n, P11171939092177845965.a n = (A176270 n : ℚ)

end A176270

/-! ## A176270.P6043945312420528089

`2-floor(sqrt(A082046(n)))`
-/

namespace A176270.P6043945312420528089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.sqrt (A082046 n)

end

end A176270.P6043945312420528089

namespace A176270

/-- `2-floor(sqrt(A082046(n)))` -/
def P6043945312420528089.Spec : Prop :=
  ∀ n, P6043945312420528089.a n = A176270 n

end A176270

/-! ## A176270.P10294429914984567700

`2-ceil(sqrt(A082039(n)))`
-/

namespace A176270.P10294429914984567700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈Real.sqrt (A082039 n : ℝ)⌉

end

end A176270.P10294429914984567700

namespace A176270

/-- `2-ceil(sqrt(A082039(n)))` -/
def P10294429914984567700.Spec : Prop :=
  ∀ n, P10294429914984567700.a n = A176270 n

end A176270

/-! ## A176270.P8118721954739612514

`(3-A130154(n+1))/2`
-/

namespace A176270.P8118721954739612514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A130154 (n + 1) : ℚ) / 2

end

end A176270.P8118721954739612514

namespace A176270

/-- `(3-A130154(n+1))/2` -/
def P8118721954739612514.Spec : Prop :=
  ∀ n, P8118721954739612514.a n = (A176270 n : ℚ)

end A176270

/-! ## A176270.P10189446703021652935

`A024000(A004247(n))`
-/

namespace A176270.P10189446703021652935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A004247 n).toNat

end

end A176270.P10189446703021652935

namespace A176270

/-- `A024000(A004247(n))` -/
def P10189446703021652935.Spec : Prop :=
  ∀ n, P10189446703021652935.a n = A176270 n

end A176270

/-! ## A176270.P4499053149892964437

`A022958(A077028(n))`
-/

namespace A176270.P4499053149892964437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A077028 n).toNat

end

end A176270.P4499053149892964437

namespace A176270

/-- `A022958(A077028(n))` -/
def P4499053149892964437.Spec : Prop :=
  ∀ n, P4499053149892964437.a n = A176270 n

end A176270

/-! ## A176270.P11944867045084790192

`A168050(A157528(n))`
-/

namespace A176270.P11944867045084790192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 (A157528 n).toNat

end

end A176270.P11944867045084790192

namespace A176270

/-- `A168050(A157528(n))` -/
def P11944867045084790192.Spec : Prop :=
  ∀ n, P11944867045084790192.a n = A176270 n

end A176270

/-! ## A176270.P8017287202260865484

`A022960(A309555(n))`
-/

namespace A176270.P8017287202260865484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022960 (A309555 n).toNat

end

end A176270.P8017287202260865484

namespace A176270

/-- `A022960(A309555(n))` -/
def P8017287202260865484.Spec : Prop :=
  ∀ n, P8017287202260865484.a n = A176270 n

end A176270

/-! ## A176270.P11812067958158788607

`A097140(A130154(n+1))`
-/

namespace A176270.P11812067958158788607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A130154 (n + 1)).toNat

end

end A176270.P11812067958158788607

namespace A176270

/-- `A097140(A130154(n+1))` -/
def P11812067958158788607.Spec : Prop :=
  ∀ n, P11812067958158788607.a n = A176270 n

end A176270

/-! ## A176270.P12140392580745804294

`2-A128139(A056943(n))`
-/

namespace A176270.P12140392580745804294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A128139 (A056943 n).toNat

end

end A176270.P12140392580745804294

namespace A176270

/-- `2-A128139(A056943(n))` -/
def P12140392580745804294.Spec : Prop :=
  ∀ n, P12140392580745804294.a n = A176270 n

end A176270

/-! ## A176270.P11623365389667859162

`2-A128139(A083920(n))`
-/

namespace A176270.P11623365389667859162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A128139 (A083920 n).toNat

end

end A176270.P11623365389667859162

namespace A176270

/-- `2-A128139(A083920(n))` -/
def P11623365389667859162.Spec : Prop :=
  ∀ n, P11623365389667859162.a n = A176270 n

end A176270

/-! ## A176270.P4995886500855148366

`2-A128139(A271439(n))`
-/

namespace A176270.P4995886500855148366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A128139 (A271439 n).toNat

end

end A176270.P4995886500855148366

namespace A176270

/-- `2-A128139(A271439(n))` -/
def P4995886500855148366.Spec : Prop :=
  ∀ n, P4995886500855148366.a n = A176270 n

end A176270

/-! ## A176270.P10823156677008991380

`A035214(n)-A086460(n)`
-/

namespace A176270.P10823156677008991380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - A086460 n

end

end A176270.P10823156677008991380

namespace A176270

/-- `A035214(n)-A086460(n)` -/
def P10823156677008991380.Spec : Prop :=
  ∀ n, P10823156677008991380.a n = A176270 n

end A176270

/-! ## A176270.P6084881144910420129

`A002024(n+1)-A059036(n)`
-/

namespace A176270.P6084881144910420129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A059036 n

end

end A176270.P6084881144910420129

namespace A176270

/-- `A002024(n+1)-A059036(n)` -/
def P6084881144910420129.Spec : Prop :=
  ∀ n, P6084881144910420129.a n = A176270 n

end A176270

/-! ## A176270.P11606847365566419874

`A048147(n)+1-A073254(n)`
-/

namespace A176270.P11606847365566419874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n + (1 - A073254 n)

end

end A176270.P11606847365566419874

namespace A176270

/-- `A048147(n)+1-A073254(n)` -/
def P11606847365566419874.Spec : Prop :=
  ∀ n, P11606847365566419874.a n = A176270 n

end A176270

/-!
# A176273: Partial sums of A036967.

The programs for A176273, there is no canonical definition to state claims against.
-/

/-! ## A176273.P13499746958619925451

`∑[A036967(n+1)]`
-/

namespace A176273.P13499746958619925451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P13499746958619925451

/-! ## A176273.P13818081790698369820

`∑[record[A036967(A133310(n))]]`
-/

namespace A176273.P13818081790698369820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P13818081790698369820

/-! ## A176273.P18201622272004746992

`∑[record[A036967(A106466(n))]]`
-/

namespace A176273.P18201622272004746992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P18201622272004746992

/-! ## A176273.P16251577285605311

`∑[record[A036967(A126759(n))]]`
-/

namespace A176273.P16251577285605311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P16251577285605311

/-! ## A176273.P14830521119051049153

`∑[record[A036967(A065648(n))]]`
-/

namespace A176273.P14830521119051049153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P14830521119051049153

/-! ## A176273.P12848421563686866843

`∑[record[A036967(A102885(n))]]`
-/

namespace A176273.P12848421563686866843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P12848421563686866843

/-! ## A176273.P9358695728327533025

`∑[record[A036967(A038568(n))]]`
-/

namespace A176273.P9358695728327533025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P9358695728327533025

/-! ## A176273.P2767444880937536817

`∑[record[A036967(A286535(n))]]`
-/

namespace A176273.P2767444880937536817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (A286535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P2767444880937536817

/-! ## A176273.P9205682334332110148

`∑[record[A036967(A033930(n))]]`
-/

namespace A176273.P9205682334332110148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176273.P9205682334332110148

/-!
# A176274: Numbers of the form 3k-1 with greatest prime divisor of the form 3m+1.

The programs for A176274, there is no canonical definition to state claims against.
-/

/-! ## A176274.P15139878953530209335

`eq[A139213(n+1), A139214(A006530(n+1)+1)]+1`
-/

namespace A176274.P15139878953530209335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139214 (A006530 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176274.P15139878953530209335

/-! ## A176274.P2010355483950213712

`A016789(lt[A357182(n), A005073(3*n+2)])`
-/

namespace A176274.P2010355483950213712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005073 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176274.P2010355483950213712

/-!
# A176275: Numbers of the form 6k+1 with the least prime divisor of the form 6m-1.

The programs for A176275, there is no canonical definition to state claims against.
-/

/-! ## A176275.P1751405644692594882

`eq[A106458(n)+2, A010872(A175126(n))]`
-/

namespace A176275.P1751405644692594882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A175126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176275.P1751405644692594882

/-! ## A176275.P17564208614840859379

`lt[A129203(A107286(n)), A010872(n+1)]`
-/

namespace A176275.P17564208614840859379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129203 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176275.P17564208614840859379

/-!
# A176276: Worpitzky(n, k)*Harmonic(k), triangle read by rows.

The programs for A176276, there is no canonical definition to state claims against.
-/

/-! ## A176276.P5611815475875781206

`A000254(A002262(n))*A008277(n+1)`
-/

namespace A176276.P5611815475875781206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A002262 n).toNat * A008277 (n + 1)

end

end A176276.P5611815475875781206

/-! ## A176276.P7664942522942888281

`A008277(n+1)*A067176(A112367(n))`
-/

namespace A176276.P7664942522942888281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A067176 (A112367 n).toNat

end

end A176276.P7664942522942888281

/-! ## A176276.P14489295262031235420

`abs(A080417(n+1))*A067176(A112367(n))`
-/

namespace A176276.P14489295262031235420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080417 (n + 1)| * A067176 (A112367 n).toNat

end

end A176276.P14489295262031235420

/-! ## A176276.P95910096653501342

`A000254(A002262(n))*A008278(A038722(n+1))`
-/

namespace A176276.P95910096653501342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A002262 n).toNat * A008278 (A038722 (n + 1)).toNat

end

end A176276.P95910096653501342

/-! ## A176276.P12890563478145475772

`A000254(A002262(n))*A048993(A014132(n+1))`
-/

namespace A176276.P12890563478145475772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A002262 n).toNat * A048993 (A014132 (n + 1)).toNat

end

end A176276.P12890563478145475772

/-! ## A176276.P11720814192496521106

`A048993(A014132(n+1))*A067176(A112367(n))`
-/

namespace A176276.P11720814192496521106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A014132 (n + 1)).toNat * A067176 (A112367 n).toNat

end

end A176276.P11720814192496521106

/-! ## A176276.P8641552744990126799

`A075497(n+1)/A130321(n)*A000254(A002262(n))`
-/

namespace A176276.P8641552744990126799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A130321 n : ℚ) * (A000254 (A002262 n).toNat : ℚ)

end

end A176276.P8641552744990126799

/-! ## A176276.P1324980056480387788

`A321331(n)/A002260(n+1)*A000254(A002262(n))`
-/

namespace A176276.P1324980056480387788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321331 n : ℚ) / (A002260 (n + 1) : ℚ) * (A000254 (A002262 n).toNat : ℚ)

end

end A176276.P1324980056480387788

/-! ## A176276.P10461147717526053801

`A075499(n+1)/A130321(n)²*A000254(A002262(n))`
-/

namespace A176276.P10461147717526053801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ) * (A000254 (A002262 n).toNat : ℚ)

end

end A176276.P10461147717526053801

/-!
# A176277: Sum over the odd entries of the rows in the triangle Worpitzky(n, k)*Harmonic(k) (A176276).

The programs for A176277, there is no canonical definition to state claims against.
-/

/-! ## A176277.P2098083938714480018

`round(A052833(n+1)/4)`
-/

namespace A176277.P2098083938714480018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052833 (n + 1) : ℚ) / 4)

end

end A176277.P2098083938714480018

/-! ## A176277.P17168924926517244788

`ceil(A129062(∑[n+1]+2)/2)`
-/

namespace A176277.P17168924926517244788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129062 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 2⌉

end

end A176277.P17168924926517244788

/-! ## A176277.P4759019636502747255

`round(A129062(C(n+2, 2)+2)/2)`
-/

namespace A176277.P4759019636502747255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A129062 (Nat.choose (n + 2) 2 + 2) : ℚ) / 2)

end

end A176277.P4759019636502747255

/-! ## A176277.P7361031954914822181

`floor((A129062(A133263(n+1))+1)/2)`
-/

namespace A176277.P7361031954914822181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129062 (A133263 (n + 1)).toNat + 1 : ℚ) / 2⌋

end

end A176277.P7361031954914822181

/-! ## A176277.P13876491339909106013

`A129062(∑[n+1]+2)/A000032(C(2, n+1))`
-/

namespace A176277.P13876491339909106013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129062 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / (A000032 (Nat.choose 2 (n + 1)) : ℚ)

end

end A176277.P13876491339909106013

/-!
# A176278: Numbers of the form 6k-1 with the least prime divisor of the form 6m+1.

The programs for A176278, there is no canonical definition to state claims against.
-/

/-! ## A176278.P1337041948141028762

`eq[A010872(A175126(n)), A106458(n)]`
-/

namespace A176278.P1337041948141028762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A175126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176278.P1337041948141028762

/-! ## A176278.P13403778960645053529

`eq[A010872(A175126(n)), A112167(n)]`
-/

namespace A176278.P13403778960645053529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A175126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176278.P13403778960645053529

/-! ## A176278.P16982485600013764110

`eq[A011655(A175126(n)), A112166(n)]`
-/

namespace A176278.P16982485600013764110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A175126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176278.P16982485600013764110

/-! ## A176278.P9655808515943713172

`eq[A049347(n), A080425(A175126(n))]`
-/

namespace A176278.P9655808515943713172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A175126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176278.P9655808515943713172

/-! ## A176278.P2060777130158290695

`eq[A010872(A175126(n)), A139213(n)]`
-/

namespace A176278.P2060777130158290695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A175126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176278.P2060777130158290695

/-! ## A176278.P14436204436781387772

`lt[A080427(n+1), A080427(A020639(n+1))]+1`
-/

namespace A176278.P14436204436781387772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A176278.P14436204436781387772

/-!
# A176279: Numbers k such that 2*prime(k)-1 and 2*prime(k)+1 are both prime or both composite.

The programs for A176279, there is no canonical definition to state claims against.
-/

/-! ## A176279.P3188963167567613985

`comp[eq[1, A194606(n+1)]]+1`
-/

namespace A176279.P3188963167567613985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194606 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A176279.P3188963167567613985

/-! ## A176279.P4263170527123267752

`comp[A049084(A174047(n+1))]`
-/

namespace A176279.P4263170527123267752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A174047 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176279.P4263170527123267752

/-! ## A176279.P16841502253962754927

`comp[A049084(A207336(n+2))]`
-/

namespace A176279.P16841502253962754927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A207336 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176279.P16841502253962754927

/-! ## A176279.P4347957303703869022

`lt[A007645(n+1), A276809(n+1)]+1`
-/

namespace A176279.P4347957303703869022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A176279.P4347957303703869022

/-! ## A176279.P390246397184857815

`lt[A038873(n+1), A276809(n+1)]+1`
-/

namespace A176279.P390246397184857815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A176279.P390246397184857815

/-! ## A176279.P18259808262201951673

`lt[A063637(n+1), A276809(n+1)]+1`
-/

namespace A176279.P18259808262201951673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A176279.P18259808262201951673

/-! ## A176279.P5514977377579474766

`lt[A243615(n+1), A276809(n+1)]+1`
-/

namespace A176279.P5514977377579474766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A176279.P5514977377579474766

/-! ## A176279.P5842454860604601511

`lt[A000040(2*(n+1)), A276809(n+1)]+1`
-/

namespace A176279.P5842454860604601511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A176279.P5842454860604601511

/-! ## A176279.P8092082432587091456

`lt[A022549(3*n+4), A276809(n+1)]+1`
-/

namespace A176279.P8092082432587091456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A176279.P8092082432587091456

/-! ## A176279.P16444347517633312168

`A000720(p?[A004526(A109934(n+1))])`
-/

namespace A176279.P16444347517633312168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A109934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176279.P16444347517633312168

/-!
# A176280: Diagonal sums of number triangle A046521.

The programs for A176280, there is no canonical definition to state claims against.
-/

/-! ## A176280.P16719572012467488895

`A081696(n)+A001076(n)`
-/

namespace A176280.P16719572012467488895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081696 n + A001076 n

end

end A176280.P16719572012467488895

/-! ## A176280.P14923089313345790848

`A026671(n)-A001076(n)`
-/

namespace A176280.P14923089313345790848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - A001076 n

end

end A176280.P14923089313345790848

/-! ## A176280.P5645186533527501171

`A026676(2*n)-A001076(n)`
-/

namespace A176280.P5645186533527501171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (2 * n) - A001076 n

end

end A176280.P5645186533527501171

/-! ## A176280.P5822092359524737213

`A081696(n)+A014445(n)/2`
-/

namespace A176280.P5822092359524737213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081696 n : ℚ) + (A014445 n : ℚ) / 2

end

end A176280.P5822092359524737213

/-! ## A176280.P7758178196835414840

`(A081696(n)+A026671(n))/2`
-/

namespace A176280.P7758178196835414840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081696 n + A026671 n : ℚ) / 2

end

end A176280.P7758178196835414840

/-! ## A176280.P1593370390232145486

`A026671(n)-A014445(n)/2`
-/

namespace A176280.P1593370390232145486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026671 n : ℚ) - (A014445 n : ℚ) / 2

end

end A176280.P1593370390232145486

/-! ## A176280.P11324326268470718506

`A026742(2*n+1)-A001076(n)`
-/

namespace A176280.P11324326268470718506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (2 * n + 1) - A001076 n

end

end A176280.P11324326268470718506

/-! ## A176280.P4149621721563574963

`A026671(n)-A000045(A008585(n))/2`
-/

namespace A176280.P4149621721563574963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026671 n : ℚ) - (A000045 (A008585 n).toNat : ℚ) / 2

end

end A176280.P4149621721563574963

/-!
# A176281: Hankel transform of A176280.

The programs for A176281, the canonical program `A176281.P10688306516156888176` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176281 has offset 0).

The definition of A176281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176281.P10688306516156888176

`8*a(n-1)-16*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A176281

/-- `8*a(n-1)-16*a(n-2)+8*a(n-3)` -/
def P10688306516156888176.Spec : Prop :=
  ∀ n, P10688306516156888176.a n = A176281 n

theorem P10688306516156888176.correct : P10688306516156888176.Spec := by
  intro n
  simp only [A176281]

end A176281

/-! ## A176281.P17766895707876882282

`2^(n-1)*A246640(n)`
-/

namespace A176281.P17766895707876882282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A246640 n : ℚ)

end

end A176281.P17766895707876882282

namespace A176281

/-- `2^(n-1)*A246640(n)` -/
def P17766895707876882282.Spec : Prop :=
  ∀ n, P17766895707876882282.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P12771135581868789363

`2^(n-1)*A032908(n+1)`
-/

namespace A176281.P12771135581868789363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A032908 (n + 1) : ℚ)

end

end A176281.P12771135581868789363

namespace A176281

/-- `2^(n-1)*A032908(n+1)` -/
def P12771135581868789363.Spec : Prop :=
  ∀ n, P12771135581868789363.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P1044874846784391815

`2^(n-1)*A093467(n+2)`
-/

namespace A176281.P1044874846784391815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A093467 (n + 2) : ℚ)

end

end A176281.P1044874846784391815

namespace A176281

/-- `2^(n-1)*A093467(n+2)` -/
def P1044874846784391815.Spec : Prop :=
  ∀ n, P1044874846784391815.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P13332935276767717002

`(Δ[A001906(n)]+1)*2^(n-1)`
-/

namespace A176281.P13332935276767717002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A176281.P13332935276767717002

namespace A176281

/-- `(Δ[A001906(n)]+1)*2^(n-1)` -/
def P13332935276767717002.Spec : Prop :=
  ∀ n, P13332935276767717002.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P7658649820860703412

`(A001519(n+1)+1)*2^(n-1)`
-/

namespace A176281.P7658649820860703412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001519 (n + 1) + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A176281.P7658649820860703412

namespace A176281

/-- `(A001519(n+1)+1)*2^(n-1)` -/
def P7658649820860703412.Spec : Prop :=
  ∀ n, P7658649820860703412.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P14806923689976155391

`(∑[A000045(2*n)]+2)*2^(n-1)`
-/

namespace A176281.P14806923689976155391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A176281.P14806923689976155391

namespace A176281

/-- `(∑[A000045(2*n)]+2)*2^(n-1)` -/
def P14806923689976155391.Spec : Prop :=
  ∀ n, P14806923689976155391.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P17482562438131384190

`a(n-1)+A084326(n)+a(n-1)` with `a(0)=1`
-/

namespace A176281.P17482562438131384190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A084326 n + a (n - 1))

end

end A176281.P17482562438131384190

namespace A176281

/-- `a(n-1)+A084326(n)+a(n-1)` -/
def P17482562438131384190.Spec : Prop :=
  ∀ n, P17482562438131384190.a n = A176281 n

end A176281

/-! ## A176281.P17079911926609386494

`2^(n-1)*(A000045(2*n+1)+1)`
-/

namespace A176281.P17079911926609386494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (2 * n + 1) + 1 : ℚ)

end

end A176281.P17079911926609386494

namespace A176281

/-- `2^(n-1)*(A000045(2*n+1)+1)` -/
def P17079911926609386494.Spec : Prop :=
  ∀ n, P17079911926609386494.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P15280848711585179309

`A080878(n+1)*A080878(n)`
-/

namespace A176281.P15280848711585179309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (n + 1) * A080878 n

end

end A176281.P15280848711585179309

namespace A176281

/-- `A080878(n+1)*A080878(n)` -/
def P15280848711585179309.Spec : Prop :=
  ∀ n, P15280848711585179309.a n = A176281 n

end A176281

/-! ## A176281.P6893686508822885888

`(A082761(n)+A000079(n))/2`
-/

namespace A176281.P6893686508822885888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082761 n + A000079 n : ℚ) / 2

end

end A176281.P6893686508822885888

namespace A176281

/-- `(A082761(n)+A000079(n))/2` -/
def P6893686508822885888.Spec : Prop :=
  ∀ n, P6893686508822885888.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P10248650690194393497

`(∑[A001906(n)]/2+1)*A000079(n)`
-/

namespace A176281.P10248650690194393497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 + 1) * (A000079 n : ℚ)

end

end A176281.P10248650690194393497

namespace A176281

/-- `(∑[A001906(n)]/2+1)*A000079(n)` -/
def P10248650690194393497.Spec : Prop :=
  ∀ n, P10248650690194393497.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P14850187845661822322

`(A000045(2*n+1)+1)/2*A000079(n)`
-/

namespace A176281.P14850187845661822322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 1) + 1 : ℚ) / 2 * (A000079 n : ℚ)

end

end A176281.P14850187845661822322

namespace A176281

/-- `(A000045(2*n+1)+1)/2*A000079(n)` -/
def P14850187845661822322.Spec : Prop :=
  ∀ n, P14850187845661822322.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P11074093184312000508

`A001611(2*n+1)/2*A011782(n+1)`
-/

namespace A176281.P11074093184312000508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n + 1) : ℚ) / 2 * (A011782 (n + 1) : ℚ)

end

end A176281.P11074093184312000508

namespace A176281

/-- `A001611(2*n+1)/2*A011782(n+1)` -/
def P11074093184312000508.Spec : Prop :=
  ∀ n, P11074093184312000508.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P7140016002932583090

`A001611(2*n+1)/2*A131577(n+1)`
-/

namespace A176281.P7140016002932583090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n + 1) : ℚ) / 2 * (A131577 (n + 1) : ℚ)

end

end A176281.P7140016002932583090

namespace A176281

/-- `A001611(2*n+1)/2*A131577(n+1)` -/
def P7140016002932583090.Spec : Prop :=
  ∀ n, P7140016002932583090.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P18399286717923954190

`A001611(2*n+1)*A016116(2*n)/2`
-/

namespace A176281.P18399286717923954190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n + 1) * A016116 (2 * n) : ℚ) / 2

end

end A176281.P18399286717923954190

namespace A176281

/-- `A001611(2*n+1)*A016116(2*n)/2` -/
def P18399286717923954190.Spec : Prop :=
  ∀ n, P18399286717923954190.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P13346941235477947043

`A001611(2*n+1)*A060546(2*n)/2`
-/

namespace A176281.P13346941235477947043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n + 1) * A060546 (2 * n) : ℚ) / 2

end

end A176281.P13346941235477947043

namespace A176281

/-- `A001611(2*n+1)*A060546(2*n)/2` -/
def P13346941235477947043.Spec : Prop :=
  ∀ n, P13346941235477947043.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P11929335525334484453

`A001611(2*n+1)*A131575(2*n+1)/2`
-/

namespace A176281.P11929335525334484453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n + 1) * A131575 (2 * n + 1) : ℚ) / 2

end

end A176281.P11929335525334484453

namespace A176281

/-- `A001611(2*n+1)*A131575(2*n+1)/2` -/
def P11929335525334484453.Spec : Prop :=
  ∀ n, P11929335525334484453.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P17000038831035243732

`A001611(2*n+1)*A135530(2*n+1)/2`
-/

namespace A176281.P17000038831035243732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n + 1) * A135530 (2 * n + 1) : ℚ) / 2

end

end A176281.P17000038831035243732

namespace A176281

/-- `A001611(2*n+1)*A135530(2*n+1)/2` -/
def P17000038831035243732.Spec : Prop :=
  ∀ n, P17000038831035243732.a n = (A176281 n : ℚ)

end A176281

/-! ## A176281.P535504844735276321

`(record[A001611(A000265(n+1))-1]+1)*2^(n-1)`
-/

namespace A176281.P535504844735276321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A000265 (n + 1)).toNat - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A176281.P535504844735276321

namespace A176281

/-- `(record[A001611(A000265(n+1))-1]+1)*2^(n-1)` -/
def P535504844735276321.Spec : Prop :=
  ∀ n, P535504844735276321.a n = (A176281 n : ℚ)

end A176281

/-!
# A176282: Triangle T(n,k) = 1 + A000330(n) - A000330(k) - A000330(n-k), read by rows.

The programs for A176282, the canonical program `A176282.P9389801225300793779` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176282 has offset 0).

The definition of A176282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176282.P9389801225300793779

`A068606(n)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176282

/-- `A068606(n)+1` -/
def P9389801225300793779.Spec : Prop :=
  ∀ n, P9389801225300793779.a n = A176282 n

theorem P9389801225300793779.correct : P9389801225300793779.Spec := by
  intro n
  simp only [A176282]

end A176282

/-! ## A176282.P11176915519557082513

`∑[char[∑[n]]]*A004247(n)+1`
-/

namespace A176282.P11176915519557082513
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004247 n + 1

end

end A176282.P11176915519557082513

namespace A176282

/-- `∑[char[∑[n]]]*A004247(n)+1` -/
def P11176915519557082513.Spec : Prop :=
  ∀ n, P11176915519557082513.a n = A176282 n

end A176282

/-! ## A176282.P10456946802078733908

`A004247(n)*A123578(n)+1`
-/

namespace A176282.P10456946802078733908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A123578 n + 1

end

end A176282.P10456946802078733908

namespace A176282

/-- `A004247(n)*A123578(n)+1` -/
def P10456946802078733908.Spec : Prop :=
  ∀ n, P10456946802078733908.a n = A176282 n

end A176282

/-! ## A176282.P6067459191813494396

`A004247(n)*A130855(n)+1`
-/

namespace A176282.P6067459191813494396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A130855 n + 1

end

end A176282.P6067459191813494396

namespace A176282

/-- `A004247(n)*A130855(n)+1` -/
def P6067459191813494396.Spec : Prop :=
  ∀ n, P6067459191813494396.a n = A176282 n

end A176282

/-! ## A176282.P8892785965582734068

`A002262(n)*A095834(n+1)+1`
-/

namespace A176282.P8892785965582734068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A095834 (n + 1) + 1

end

end A176282.P8892785965582734068

namespace A176282

/-- `A002262(n)*A095834(n+1)+1` -/
def P8892785965582734068.Spec : Prop :=
  ∀ n, P8892785965582734068.a n = A176282 n

end A176282

/-! ## A176282.P12767928343364634843

`A077028(n)+A003056(n)*A004247(n)`
-/

namespace A176282.P12767928343364634843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A003056 n * A004247 n

end

end A176282.P12767928343364634843

namespace A176282

/-- `A077028(n)+A003056(n)*A004247(n)` -/
def P12767928343364634843.Spec : Prop :=
  ∀ n, P12767928343364634843.a n = A176282 n

end A176282

/-! ## A176282.P14359213044284520998

`A004247(n)*A183110(n+1)+1`
-/

namespace A176282.P14359213044284520998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A183110 (n + 1) + 1

end

end A176282.P14359213044284520998

namespace A176282

/-- `A004247(n)*A183110(n+1)+1` -/
def P14359213044284520998.Spec : Prop :=
  ∀ n, P14359213044284520998.a n = A176282 n

end A176282

/-! ## A176282.P10896491700399371548

`A061800(A068606(n))`
-/

namespace A176282.P10896491700399371548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A068606 n).toNat

end

end A176282.P10896491700399371548

namespace A176282

/-- `A061800(A068606(n))` -/
def P10896491700399371548.Spec : Prop :=
  ∀ n, P10896491700399371548.a n = A176282 n

end A176282

/-!
# A176283: Triangle T(n,k) = 1 + A000537(n) - A000537(k) - A000537(n-k), read by rows.

The programs for A176283, there is no canonical definition to state claims against.
-/

/-! ## A176283.P8502239701137754945

`A181543(n)%A141214(A080031(n))`
-/

namespace A176283.P8502239701137754945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181543 n) (A141214 (A080031 n).toNat)

end

end A176283.P8502239701137754945

/-! ## A176283.P11450215915636643097

`A213983(A008459(n))%A141214(n+1)`
-/

namespace A176283.P11450215915636643097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213983 (A008459 n).toNat) (A141214 (n + 1))

end

end A176283.P11450215915636643097

/-! ## A176283.P1645531461348357885

`((A007318(n)^3)%A050501(2^(n+1)))%Δ[A006503(n+1)]`
-/

namespace A176283.P1645531461348357885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A007318 n ^ 3) (A050501 (2 ^ (n + 1)))) (f1 (n + 1) - f1 n)

end

end A176283.P1645531461348357885

/-!
# A176284: Triangle T(n,k) = 1 + 3*n*k*(n-k) read by rows.

The programs for A176284, the canonical program `A176284.P4705285900737383214` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176284 has offset 0).

The definition of A176284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176284.P4041131864844092529

`or(1, A157632(n))`
-/

namespace A176284.P4041131864844092529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157632 n)

end

end A176284.P4041131864844092529

namespace A176284

/-- `or(1, A157632(n))` -/
def P4041131864844092529.Spec : Prop :=
  ∀ n, P4041131864844092529.a n = A176284 n

end A176284

/-! ## A176284.P9199525253076025187

`A257238(n)+1-A000578(A025581(n))`
-/

namespace A176284.P9199525253076025187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257238 n + (1 - A000578 (A025581 n).toNat)

end

end A176284.P9199525253076025187

namespace A176284

/-- `A257238(n)+1-A000578(A025581(n))` -/
def P9199525253076025187.Spec : Prop :=
  ∀ n, P9199525253076025187.a n = A176284 n

end A176284

/-! ## A176284.P4705285900737383214

`A004247(n)*A008486(A003056(n))+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176284

/-- `A004247(n)*A008486(A003056(n))+1` -/
def P4705285900737383214.Spec : Prop :=
  ∀ n, P4705285900737383214.a n = A176284 n

theorem P4705285900737383214.correct : P4705285900737383214.Spec := by
  intro n
  simp only [A176284]

end A176284

/-! ## A176284.P2331951729587598689

`A003991(A004736(n+1)+3+n)*A004247(n)+1`
-/

namespace A176284.P2331951729587598689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A004736 (n + 1) + 3 + (n : ℤ)).toNat * A004247 n + 1

end

end A176284.P2331951729587598689

namespace A176284

/-- `A003991(A004736(n+1)+3+n)*A004247(n)+1` -/
def P2331951729587598689.Spec : Prop :=
  ∀ n, P2331951729587598689.a n = A176284 n

end A176284

/-! ## A176284.P9757315587889029431

`A003056(n)*A004526(A287326(n))+1`
-/

namespace A176284.P9757315587889029431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A004526 (A287326 n).toNat + 1

end

end A176284.P9757315587889029431

namespace A176284

/-- `A003056(n)*A004526(A287326(n))+1` -/
def P9757315587889029431.Spec : Prop :=
  ∀ n, P9757315587889029431.a n = A176284 n

end A176284

/-! ## A176284.P13698027607122305758

`A019426(A157635(n)+1)`
-/

namespace A176284.P13698027607122305758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A157635 n + 1).toNat

end

end A176284.P13698027607122305758

namespace A176284

/-- `A019426(A157635(n)+1)` -/
def P13698027607122305758.Spec : Prop :=
  ∀ n, P13698027607122305758.a n = A176284 n

end A176284

/-! ## A176284.P16668892965702109207

`A168301(A157635(n))`
-/

namespace A176284.P16668892965702109207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168301 (A157635 n).toNat

end

end A176284.P16668892965702109207

namespace A176284

/-- `A168301(A157635(n))` -/
def P16668892965702109207.Spec : Prop :=
  ∀ n, P16668892965702109207.a n = A176284 n

end A176284

/-! ## A176284.P11134637997148533684

`A067745(A157635(n)+1)`
-/

namespace A176284.P11134637997148533684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (A157635 n + 1).toNat

end

end A176284.P11134637997148533684

namespace A176284

/-- `A067745(A157635(n)+1)` -/
def P11134637997148533684.Spec : Prop :=
  ∀ n, P11134637997148533684.a n = A176284 n

end A176284

/-! ## A176284.P135477073631476305

`A007310(or(1, A157635(n)))`
-/

namespace A176284.P135477073631476305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (Int.lor 1 (A157635 n)).toNat

end

end A176284.P135477073631476305

namespace A176284

/-- `A007310(or(1, A157635(n)))` -/
def P135477073631476305.Spec : Prop :=
  ∀ n, P135477073631476305.a n = A176284 n

end A176284

/-! ## A176284.P10509990034314637065

`A016777(A003056(n)*A004247(n))`
-/

namespace A176284.P10509990034314637065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A003056 n * A004247 n).toNat

end

end A176284.P10509990034314637065

namespace A176284

/-- `A016777(A003056(n)*A004247(n))` -/
def P10509990034314637065.Spec : Prop :=
  ∀ n, P10509990034314637065.a n = A176284 n

end A176284

/-! ## A176284.P5729922818030983322

`A165355(A003056(n)*A004247(n))`
-/

namespace A176284.P5729922818030983322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (A003056 n * A004247 n).toNat

end

end A176284.P5729922818030983322

namespace A176284

/-- `A165355(A003056(n)*A004247(n))` -/
def P5729922818030983322.Spec : Prop :=
  ∀ n, P5729922818030983322.a n = A176284 n

end A176284

/-! ## A176284.P8538532965653281334

`A008585(A003056(n)*A004247(n))+1`
-/

namespace A176284.P8538532965653281334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A003056 n * A004247 n).toNat + 1

end

end A176284.P8538532965653281334

namespace A176284

/-- `A008585(A003056(n)*A004247(n))+1` -/
def P8538532965653281334.Spec : Prop :=
  ∀ n, P8538532965653281334.a n = A176284 n

end A176284

/-! ## A176284.P4995587951533591489

`A030118(A157632(n))`
-/

namespace A176284.P4995587951533591489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 (A157632 n).toNat

end

end A176284.P4995587951533591489

namespace A176284

/-- `A030118(A157632(n))` -/
def P4995587951533591489.Spec : Prop :=
  ∀ n, P4995587951533591489.a n = A176284 n

end A176284

/-! ## A176284.P6916241715411871672

`A060789(A157632(n)+1)`
-/

namespace A176284.P6916241715411871672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A157632 n + 1).toNat

end

end A176284.P6916241715411871672

namespace A176284

/-- `A060789(A157632(n)+1)` -/
def P6916241715411871672.Spec : Prop :=
  ∀ n, P6916241715411871672.a n = A176284 n

end A176284

/-!
# A176286: Triangle T(n,k) = 1 + 2*k*(n-k)*(k^2 -n*k +2*n^2) read by rows.

The programs for A176286, there is no canonical definition to state claims against.
-/

/-! ## A176286.P161048126328295952

`or(1, A157633(n))`
-/

namespace A176286.P161048126328295952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157633 n)

end

end A176286.P161048126328295952

/-! ## A176286.P14975765071250215788

`A157633(n)%A157634(n)+1`
-/

namespace A176286.P14975765071250215788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157633 n) (A157634 n) + 1

end

end A176286.P14975765071250215788

/-! ## A176286.P18339886385578747096

`A157633(n)+A057427(A004247(n))`
-/

namespace A176286.P18339886385578747096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + A057427 (A004247 n).toNat

end

end A176286.P18339886385578747096

/-! ## A176286.P12010670397785719480

`A157633(n)+A057979(A157654(n))`
-/

namespace A176286.P12010670397785719480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + A057979 (A157654 n).toNat

end

end A176286.P12010670397785719480

/-! ## A176286.P12531110424133484079

`A157633(n)+A130296(n+1)%A157633(n)`
-/

namespace A176286.P12531110424133484079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + Int.tmod (A130296 (n + 1)) (A157633 n)

end

end A176286.P12531110424133484079

/-! ## A176286.P10601586909756709869

`A157633(n)+A105812(A287326(n))`
-/

namespace A176286.P10601586909756709869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + A105812 (A287326 n).toNat

end

end A176286.P10601586909756709869

/-! ## A176286.P4002652695806808241

`A157633(n)-A105812(A157635(n))`
-/

namespace A176286.P4002652695806808241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n - A105812 (A157635 n).toNat

end

end A176286.P4002652695806808241

/-! ## A176286.P14345090939903928106

`A157633(n)+A057979(A157632(n))`
-/

namespace A176286.P14345090939903928106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + A057979 (A157632 n).toNat

end

end A176286.P14345090939903928106

/-! ## A176286.P15063603311004858328

`A157633(n)+A105812(A176284(n))`
-/

namespace A176286.P15063603311004858328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + A105812 (A176284 n).toNat

end

end A176286.P15063603311004858328

/-! ## A176286.P5045896190848429383

`A157633(n)+A057427(A049207(n)/2)`
-/

namespace A176286.P5045896190848429383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + A057427 (SequenceMachineLib.roundAway ((A049207 n : ℚ) / 2)).toNat

end

end A176286.P5045896190848429383

/-! ## A176286.P6329451605016139257

`A157633(n)+A001221(A152714(n))`
-/

namespace A176286.P6329451605016139257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + A001221 (A152714 n).toNat

end

end A176286.P6329451605016139257

/-! ## A176286.P1007947031625194161

`A157633(n)+A057427(A049207(n))`
-/

namespace A176286.P1007947031625194161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n + A057427 (A049207 n).toNat

end

end A176286.P1007947031625194161

/-! ## A176286.P15543562087255460160

`A000265(A157633(n)+1)`
-/

namespace A176286.P15543562087255460160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A157633 n + 1).toNat

end

end A176286.P15543562087255460160

/-! ## A176286.P5499947801274471489

`gcd(A157633(n)+1, A000217(A157633(n)+1))`
-/

namespace A176286.P5499947801274471489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157633 n + 1) (A000217 (A157633 n + 1).toNat)

end

end A176286.P5499947801274471489

/-!
# A176287: Diagonal sums of number triangle A092392.

The programs for A176287, there is no canonical definition to state claims against.
-/

/-! ## A176287.P6106684530876924181

`A270363(n+1)-A030238(n)`
-/

namespace A176287.P6106684530876924181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270363 (n + 1) - A030238 n

end

end A176287.P6106684530876924181

/-! ## A176287.P595385494597793850

`2*A100217(n)-A132364(n)`
-/

namespace A176287.P595385494597793850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100217 n - A132364 n

end

end A176287.P595385494597793850

/-! ## A176287.P6506249468158865961

`A270363(n+1)-A132364(n+2)`
-/

namespace A176287.P6506249468158865961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270363 (n + 1) - A132364 (n + 2)

end

end A176287.P6506249468158865961

/-! ## A176287.P5217983812137579660

`A109245(n+1)+A109245(n)-A026641(n+1)`
-/

namespace A176287.P5217983812137579660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109245 (n + 1) + (A109245 n - A026641 (n + 1))

end

end A176287.P5217983812137579660

/-! ## A176287.P2553906927752464994

`A100217(n+2)-A001700(n+1)`
-/

namespace A176287.P2553906927752464994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100217 (n + 2) - A001700 (n + 1)

end

end A176287.P2553906927752464994

/-! ## A176287.P2216583197449286968

`A100217(n+2)-A088218(n+2)`
-/

namespace A176287.P2216583197449286968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100217 (n + 2) - A088218 (n + 2)

end

end A176287.P2216583197449286968

/-!
# A176288: Hankel transform of A176287.

The programs for A176288, the canonical program `A176288.P7895504304188078202` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176288 has offset 0).

The definition of A176288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176288.P7895504304188078202

`6*a(n-1)-17*a(n-2)+24*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=3, a(2)=15, a(3)=55`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A176288

/-- `6*a(n-1)-17*a(n-2)+24*a(n-3)-16*a(n-4)` -/
def P7895504304188078202.Spec : Prop :=
  ∀ n, P7895504304188078202.a n = A176288 n

theorem P7895504304188078202.correct : P7895504304188078202.Spec := by
  intro n
  simp only [A176288]

end A176288

/-!
# A176289: Denominators of the rational sequence with e.g.f. (x/2)*(1+exp(-x))/(1-exp(-x)).

The programs for A176289, the canonical program `A176289.P5972869027486302748` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176289 has offset 0).

The definition of A176289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176289.P3074756898488960367

`A027642(n-char[1])`
-/

namespace A176289.P3074756898488960367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A176289.P3074756898488960367

namespace A176289

/-- `A027642(n-char[1])` -/
def P3074756898488960367.Spec : Prop :=
  ∀ n, P3074756898488960367.a n = A176289 n

end A176289

/-! ## A176289.P5972869027486302748

`A141056(n)-n%2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A176289

/-- `A141056(n)-n%2` -/
def P5972869027486302748.Spec : Prop :=
  ∀ n, P5972869027486302748.a n = A176289 n

theorem P5972869027486302748.correct : P5972869027486302748.Spec := by
  intro n
  simp only [A176289]

end A176289

/-! ## A176289.P16494522584714148130

`sqrt(A172282(n-char[1]))`
-/

namespace A176289.P16494522584714148130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A172282 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℝ)

end

end A176289.P16494522584714148130

namespace A176289

/-- `sqrt(A172282(n-char[1]))` -/
def P16494522584714148130.Spec : Prop :=
  ∀ n, P16494522584714148130.a n = (A176289 n : ℝ)

end A176289

/-! ## A176289.P17554434626546528860

`A027642(n)^a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A176289.P17554434626546528860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A027642 n : ℝ) ^ (a (n - 1))

end

end A176289.P17554434626546528860

namespace A176289

/-- `A027642(n)^a(n-1)` -/
def P17554434626546528860.Spec : Prop :=
  ∀ n, P17554434626546528860.a n = (A176289 n : ℝ)

end A176289

/-! ## A176289.P8009995143496322617

`gcd(1-a(n-1), A176591(n))` with `a(0)=1`
-/

namespace A176289.P8009995143496322617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (1 - (a (n - 1) : ℤ)) (A176591 n)

end

end A176289.P8009995143496322617

namespace A176289

/-- `gcd(1-a(n-1), A176591(n))` -/
def P8009995143496322617.Spec : Prop :=
  ∀ n, (P8009995143496322617.a n : ℤ) = A176289 n

end A176289

/-! ## A176289.P15829738406259491127

`A002445(A142150(n))`
-/

namespace A176289.P15829738406259491127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (A142150 n).toNat

end

end A176289.P15829738406259491127

namespace A176289

/-- `A002445(A142150(n))` -/
def P15829738406259491127.Spec : Prop :=
  ∀ n, P15829738406259491127.a n = A176289 n

end A176289

/-! ## A176289.P4122127214538510153

`A176591(A124625(n+1))`
-/

namespace A176289.P4122127214538510153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (A124625 (n + 1)).toNat

end

end A176289.P4122127214538510153

namespace A176289

/-- `A176591(A124625(n+1))` -/
def P4122127214538510153.Spec : Prop :=
  ∀ n, P4122127214538510153.a n = A176289 n

end A176289

/-! ## A176289.P8152872194833926050

`A176591(A346467(n+1))`
-/

namespace A176289.P8152872194833926050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (A346467 (n + 1)).toNat

end

end A176289.P8152872194833926050

namespace A176289

/-- `A176591(A346467(n+1))` -/
def P8152872194833926050.Spec : Prop :=
  ∀ n, P8152872194833926050.a n = A176289 n

end A176289

/-! ## A176289.P9357338923802072578

`A176591(A338824(n+2))`
-/

namespace A176289.P9357338923802072578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (A338824 (n + 2)).toNat

end

end A176289.P9357338923802072578

namespace A176289

/-- `A176591(A338824(n+2))` -/
def P9357338923802072578.Spec : Prop :=
  ∀ n, P9357338923802072578.a n = A176289 n

end A176289

/-! ## A176289.P3037962968007572013

`A159075(n)+A027642(n)`
-/

namespace A176289.P3037962968007572013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A027642 n

end

end A176289.P3037962968007572013

namespace A176289

/-- `A159075(n)+A027642(n)` -/
def P3037962968007572013.Spec : Prop :=
  ∀ n, P3037962968007572013.a n = A176289 n

end A176289

/-! ## A176289.P10309489317904665566

`A002445(n-A026741(n))`
-/

namespace A176289.P10309489317904665566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 ((n : ℤ) - A026741 n).toNat

end

end A176289.P10309489317904665566

namespace A176289

/-- `A002445(n-A026741(n))` -/
def P10309489317904665566.Spec : Prop :=
  ∀ n, P10309489317904665566.a n = A176289 n

end A176289

/-! ## A176289.P3630206006077020486

`A027642(n)-A063524(n)`
-/

namespace A176289.P3630206006077020486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n - A063524 n

end

end A176289.P3630206006077020486

namespace A176289

/-- `A027642(n)-A063524(n)` -/
def P3630206006077020486.Spec : Prop :=
  ∀ n, P3630206006077020486.a n = A176289 n

end A176289

/-! ## A176289.P6322531403126306871

`A141056(n)-A000035(n)`
-/

namespace A176289.P6322531403126306871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n - A000035 n

end

end A176289.P6322531403126306871

namespace A176289

/-- `A141056(n)-A000035(n)` -/
def P6322531403126306871.Spec : Prop :=
  ∀ n, P6322531403126306871.a n = A176289 n

end A176289

/-! ## A176289.P15019990124620833265

`A040001(n)*A141459(n)`
-/

namespace A176289.P15019990124620833265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A141459 n

end

end A176289.P15019990124620833265

namespace A176289

/-- `A040001(n)*A141459(n)` -/
def P15019990124620833265.Spec : Prop :=
  ∀ n, P15019990124620833265.a n = A176289 n

end A176289

/-! ## A176289.P17309739914331504442

`A141056(n)/A000034(n)`
-/

namespace A176289.P17309739914331504442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A000034 n : ℚ)

end

end A176289.P17309739914331504442

namespace A176289

/-- `A141056(n)/A000034(n)` -/
def P17309739914331504442.Spec : Prop :=
  ∀ n, P17309739914331504442.a n = (A176289 n : ℚ)

end A176289

/-! ## A176289.P15368200533450501145

`A027642(n)/A373565(n)`
-/

namespace A176289.P15368200533450501145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A373565 n : ℚ)

end

end A176289.P15368200533450501145

namespace A176289

/-- `A027642(n)/A373565(n)` -/
def P15368200533450501145.Spec : Prop :=
  ∀ n, P15368200533450501145.a n = (A176289 n : ℚ)

end A176289

/-! ## A176289.P3190839146181864900

`A141056(n%A109613(n))`
-/

namespace A176289.P3190839146181864900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (Int.tmod (n : ℤ) (A109613 n)).toNat

end

end A176289.P3190839146181864900

namespace A176289

/-- `A141056(n%A109613(n))` -/
def P3190839146181864900.Spec : Prop :=
  ∀ n, P3190839146181864900.a n = A176289 n

end A176289

/-! ## A176289.P9598973153368523076

`gcd(A010674(n), A027642(n))`
-/

namespace A176289.P9598973153368523076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010674 n) (A027642 n)

end

end A176289.P9598973153368523076

namespace A176289

/-- `gcd(A010674(n), A027642(n))` -/
def P9598973153368523076.Spec : Prop :=
  ∀ n, (P9598973153368523076.a n : ℤ) = A176289 n

end A176289

/-! ## A176289.P17732856010422675923

`gcd(A010676(n), A141056(n))`
-/

namespace A176289.P17732856010422675923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010676 n) (A141056 n)

end

end A176289.P17732856010422675923

namespace A176289

/-- `gcd(A010676(n), A141056(n))` -/
def P17732856010422675923.Spec : Prop :=
  ∀ n, (P17732856010422675923.a n : ℤ) = A176289 n

end A176289

/-! ## A176289.P4665134771587172827

`gcd(A073097(n), A106458(n))`
-/

namespace A176289.P4665134771587172827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073097 n) (A106458 n)

end

end A176289.P4665134771587172827

namespace A176289

/-- `gcd(A073097(n), A106458(n))` -/
def P4665134771587172827.Spec : Prop :=
  ∀ n, (P4665134771587172827.a n : ℤ) = A176289 n

end A176289

/-!
# A176290: Hankel transform of A105872.

The programs for A176290, the canonical program `A176290.P11794118264467704744` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176290 has offset 0).

The definition of A176290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176290.P11794118264467704744

`10*a(n-1)-27*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=-3, a(3)=-75`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A176290

/-- `10*a(n-1)-27*a(n-2)+10*a(n-3)-a(n-4)` -/
def P11794118264467704744.Spec : Prop :=
  ∀ n, P11794118264467704744.a n = A176290 n

theorem P11794118264467704744.correct : P11794118264467704744.Spec := by
  intro n
  simp only [A176290]

end A176290

/-!
# A176291: A symmetrical triangle based on Narayana numbers and Eulerian numbers of type B: T(n, k) = 2 + A060187(n, k) - 2*binomial(n, k)*binomial(n+1, k)/(k+1).

The programs for A176291, there is no canonical definition to state claims against.
-/

/-! ## A176291.P10988458814404744188

`A060187(n+1)+1-A132787(n+1)`
-/

namespace A176291.P10988458814404744188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (1 - A132787 (n + 1))

end

end A176291.P10988458814404744188

/-! ## A176291.P17689423846629154384

`A060187(n+1)+2-(A001263(n+1)+A001263(n+1))`
-/

namespace A176291.P17689423846629154384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (2 - (A001263 (n + 1) + A001263 (n + 1)))

end

end A176291.P17689423846629154384

/-! ## A176291.P2073679571019503584

`A257612(n)/A137688(n)+1-A132787(n+1)`
-/

namespace A176291.P2073679571019503584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257612 n : ℚ) / (A137688 n : ℚ) + 1 - (A132787 (n + 1) : ℚ)

end

end A176291.P2073679571019503584

/-! ## A176291.P15019615293623311957

`A257612(n)/A137688(n)-2*A001263(n+1)+2`
-/

namespace A176291.P15019615293623311957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257612 n : ℚ) / (A137688 n : ℚ) - (2 * A001263 (n + 1) : ℚ) + 2

end

end A176291.P15019615293623311957

/-! ## A176291.P15115371766050729903

`(A154337(n)+A154334(n))/2+1-A132787(n+1)`
-/

namespace A176291.P15115371766050729903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154337 n + A154334 n : ℚ) / 2 + 1 - (A132787 (n + 1) : ℚ)

end

end A176291.P15115371766050729903

/-!
# A176292: Numbers k such that the prime factorizations of composite(k) and composite(k+1) have the same number of primes (including multiplicities).

The programs for A176292, the canonical program `A176292.P6728800770954373532` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176292 has offset 1).

The definition of A176292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176292.P6728800770954373532

`eq[0, Δ[A062502(n+1)]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176292

/-- `eq[0, Δ[A062502(n+1)]]` -/
def P6728800770954373532.Spec : Prop :=
  ∀ n, (P6728800770954373532.a n : ℤ) = A176292 (n + 1)

theorem P6728800770954373532.correct : P6728800770954373532.Spec := by
  intro n
  simp only [A176292, Nat.add_sub_cancel]

end A176292

/-! ## A176292.P11749551782141149290

`eq[0, Δ[A001222(A018252(n+1))]]`
-/

namespace A176292.P11749551782141149290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018252 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176292.P11749551782141149290

namespace A176292

/-- `eq[0, Δ[A001222(A018252(n+1))]]` -/
def P11749551782141149290.Spec : Prop :=
  ∀ n, (P11749551782141149290.a n : ℤ) = A176292 (n + 1)

end A176292

/-! ## A176292.P951479970991299789

`eq[0, Δ[A001222(A083257(n+1))]]`
-/

namespace A176292.P951479970991299789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083257 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176292.P951479970991299789

namespace A176292

/-- `eq[0, Δ[A001222(A083257(n+1))]]` -/
def P951479970991299789.Spec : Prop :=
  ∀ n, (P951479970991299789.a n : ℤ) = A176292 (n + 1)

end A176292

/-! ## A176292.P11955298856868574997

`eq[A062502(n+1), A062502(n+2)]`
-/

namespace A176292.P11955298856868574997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176292.P11955298856868574997

namespace A176292

/-- `eq[A062502(n+1), A062502(n+2)]` -/
def P11955298856868574997.Spec : Prop :=
  ∀ n, (P11955298856868574997.a n : ℤ) = A176292 (n + 1)

end A176292

/-! ## A176292.P1055149193033495752

`eq[0, Δ[A001222(A062312(n+1))]]`
-/

namespace A176292.P1055149193033495752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062312 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176292.P1055149193033495752

namespace A176292

/-- `eq[0, Δ[A001222(A062312(n+1))]]` -/
def P1055149193033495752.Spec : Prop :=
  ∀ n, (P1055149193033495752.a n : ℤ) = A176292 (n + 1)

end A176292

/-!
# A176293: Triangle T(n,k) = 1 + 2*k*(n-k)*(n-1)^2, read by rows.

The programs for A176293, there is no canonical definition to state claims against.
-/

/-! ## A176293.P8898957001571339926

`A003003(A173918(n))`
-/

namespace A176293.P8898957001571339926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A173918 n).toNat

end

end A176293.P8898957001571339926

/-! ## A176293.P6294431008554828972

`A003003(A174412(n))`
-/

namespace A176293.P6294431008554828972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A174412 n).toNat

end

end A176293.P6294431008554828972

/-! ## A176293.P4065364627408448314

`A110898(A173890(n))`
-/

namespace A176293.P4065364627408448314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110898 (A173890 n).toNat

end

end A176293.P4065364627408448314

/-! ## A176293.P17257723711088959444

`A114792(A176428(n))`
-/

namespace A176293.P17257723711088959444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114792 (A176428 n).toNat

end

end A176293.P17257723711088959444

/-! ## A176293.P17854382645020925622

`A123509(A173881(n))`
-/

namespace A176293.P17854382645020925622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123509 (A173881 n).toNat

end

end A176293.P17854382645020925622

/-!
# A176296: Irregular triangle read by rows: eigenvalues of Laplacian of parity's landscape graph.

The programs for A176296, there is no canonical definition to state claims against.
-/

/-! ## A176296.P12291962654156438686

`filter[A326296(n+3), A059841(#)]`
-/

namespace A176296.P12291962654156438686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326296 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A176296.P12291962654156438686

/-!
# A176297: Numbers with at least one 3 in their prime signature.

The programs for A176297, the canonical program `A176297.P9536497243792750572` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176297 has offset 1).

The definition of A176297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4761 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176297.P9536497243792750572

`lt[0, A295883(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176297

/-- `lt[0, A295883(n+1)]+1` -/
def P9536497243792750572.Spec : Prop :=
  ∀ n, (P9536497243792750572.a n : ℤ) = A176297 (n + 1)

theorem P9536497243792750572.correct : P9536497243792750572.Spec := by
  intro n
  simp only [A176297, Nat.add_sub_cancel]

end A176297

/-! ## A176297.P16198015286509980832

`∩[A325990(n+1), A366761(n+1)]`
-/

namespace A176297.P16198015286509980832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176297.P16198015286509980832

namespace A176297

/-- `∩[A325990(n+1), A366761(n+1)]` -/
def P16198015286509980832.Spec : Prop :=
  ∀ n, (P16198015286509980832.a n : ℤ) = A176297 (n + 1)

end A176297

/-! ## A176297.P16348802380035581292

`A375072(n+1)%A090053(n+1)`
-/

namespace A176297.P16348802380035581292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375072 (n + 1)) (A090053 (n + 1))

end

end A176297.P16348802380035581292

namespace A176297

/-- `A375072(n+1)%A090053(n+1)` -/
def P16348802380035581292.Spec : Prop :=
  ∀ n, P16348802380035581292.a n = A176297 (n + 1)

end A176297

/-! ## A176297.P257388792528831429

`A375072(n+1)%A255732(A000009(n))`
-/

namespace A176297.P257388792528831429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375072 (n + 1)) (A255732 (A000009 n).toNat)

end

end A176297.P257388792528831429

namespace A176297

/-- `A375072(n+1)%A255732(A000009(n))` -/
def P257388792528831429.Spec : Prop :=
  ∀ n, P257388792528831429.a n = A176297 (n + 1)

end A176297

/-! ## A176297.P1318037386810439428

`A375072(n+1)+A000038(A031936(n+1))`
-/

namespace A176297.P1318037386810439428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1) + A000038 (A031936 (n + 1)).toNat

end

end A176297.P1318037386810439428

namespace A176297

/-- `A375072(n+1)+A000038(A031936(n+1))` -/
def P1318037386810439428.Spec : Prop :=
  ∀ n, P1318037386810439428.a n = A176297 (n + 1)

end A176297

/-!
# A176298: Triangle T(n,k) = 1 + n - floor(n/(k+1)) - floor(n/(n-k+1)) read by rows.

The programs for A176298, there is no canonical definition to state claims against.
-/

/-! ## A176298.P5546594738619707304

`A328301(round(log2(A166346(n+1))))`
-/

namespace A176298.P5546594738619707304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328301 (SequenceMachineLib.roundAway (Real.logb 2 (A166346 (n + 1) : ℝ))).toNat

end

end A176298.P5546594738619707304

/-! ## A176298.P16325883939230561870

`A110592(A046802(n))`
-/

namespace A176298.P16325883939230561870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A046802 n).toNat

end

end A176298.P16325883939230561870

/-! ## A176298.P8229072776618563394

`A110592(A174035(n))`
-/

namespace A176298.P8229072776618563394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A174035 n).toNat

end

end A176298.P8229072776618563394

/-! ## A176298.P5393380004685459918

`A110592(A184173(n))`
-/

namespace A176298.P5393380004685459918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A184173 n).toNat

end

end A176298.P5393380004685459918

/-! ## A176298.P6047033098854402331

`A110592(A188587(n))`
-/

namespace A176298.P6047033098854402331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A188587 n).toNat

end

end A176298.P6047033098854402331

/-!
# A176299: Variant sequence A169652, with a(1)=1 and a(2)=3.

The programs for A176299, there is no canonical definition to state claims against.
-/

/-! ## A176299.P1750103549773030347

`Δ[ceil((1/2-a(n-1))²)]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A176299.P1750103549773030347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  ⌈((1 : ℚ) / 2 - (f1 (n - 1) : ℚ)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176299.P1750103549773030347

/-! ## A176299.P4860577294054313481

`Δ[a(n-1)+a(n-1)²]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A176299.P4860577294054313481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A176299.P4860577294054313481

/-! ## A176299.P7418330059786166762

`floor(a(n-1)+sqrt(a(n-1)))²` with `a(0)=1, a(1)=3`
-/

namespace A176299.P7418330059786166762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (a (n - 1) : ℝ)⌋ ^ 2

end

end A176299.P7418330059786166762

