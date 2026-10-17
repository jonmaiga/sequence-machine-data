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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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

/-!
# A024700: a(n) = (prime(n+2)^2 - 1)/3.

The programs for A024700, the canonical program `A024700.P4547345291719890790` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024700 has offset 1).

The definition of A024700 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024700.P14846356768658620778

`2*A084922(n+3)`
-/

namespace A024700.P14846356768658620778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084922 (n + 3)

end

end A024700.P14846356768658620778

namespace A024700

/-- `2*A084922(n+3)` -/
def P14846356768658620778.Spec : Prop :=
  ∀ n, P14846356768658620778.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P8230765487695269924

`4*A081115(n+3)`
-/

namespace A024700.P8230765487695269924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081115 (n + 3)

end

end A024700.P8230765487695269924

namespace A024700

/-- `4*A081115(n+3)` -/
def P8230765487695269924.Spec : Prop :=
  ∀ n, P8230765487695269924.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P3739002504444808054

`8*A024702(n+3)`
-/

namespace A024700.P3739002504444808054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A024702 (n + 3)

end

end A024700.P3739002504444808054

namespace A024700

/-- `8*A024702(n+3)` -/
def P3739002504444808054.Spec : Prop :=
  ∀ n, P3739002504444808054.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P12949743555428414957

`4/3*A024701(n+2)`
-/

namespace A024700.P12949743555428414957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A024701 (n + 2) : ℚ)

end

end A024700.P12949743555428414957

namespace A024700

/-- `4/3*A024701(n+2)` -/
def P12949743555428414957.Spec : Prop :=
  ∀ n, P12949743555428414957.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P4547345291719890790

`(A001248(n+3)-1)/3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024700

/-- `(A001248(n+3)-1)/3` -/
def P4547345291719890790.Spec : Prop :=
  ∀ n, P4547345291719890790.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P1390830431343868645

`(A286679(n+3)-1)/2`
-/

namespace A024700.P1390830431343868645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286679 (n + 3) - 1 : ℚ) / 2

end

end A024700.P1390830431343868645

namespace A024700

/-- `(A286679(n+3)-1)/2` -/
def P1390830431343868645.Spec : Prop :=
  ∀ n, P1390830431343868645.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P11635889813171829394

`(A066872(n+3)-2)/3`
-/

namespace A024700.P11635889813171829394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 3) - 2 : ℚ) / 3

end

end A024700.P11635889813171829394

namespace A024700

/-- `(A066872(n+3)-2)/3` -/
def P11635889813171829394.Spec : Prop :=
  ∀ n, P11635889813171829394.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P927788448817785645

`A084922(n+3)²/A081115(n+3)`
-/

namespace A024700.P927788448817785645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084922 (n + 3) ^ 2 : ℚ) / (A081115 (n + 3) : ℚ)

end

end A024700.P927788448817785645

namespace A024700

/-- `A084922(n+3)²/A081115(n+3)` -/
def P927788448817785645.Spec : Prop :=
  ∀ n, P927788448817785645.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P14071772595757027235

`8*A061066(n+3)/3`
-/

namespace A024700.P14071772595757027235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A061066 (n + 3) : ℚ) / 3)

end

end A024700.P14071772595757027235

namespace A024700

/-- `8*A061066(n+3)/3` -/
def P14071772595757027235.Spec : Prop :=
  ∀ n, P14071772595757027235.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P12753844951180870704

`A081115(n+3)+A024701(n+2)`
-/

namespace A024700.P12753844951180870704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081115 (n + 3) + A024701 (n + 2)

end

end A024700.P12753844951180870704

namespace A024700

/-- `A081115(n+3)+A024701(n+2)` -/
def P12753844951180870704.Spec : Prop :=
  ∀ n, P12753844951180870704.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P8007267689872037464

`A216244(n+3)-A084922(n+3)`
-/

namespace A024700.P8007267689872037464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 3) - A084922 (n + 3)

end

end A024700.P8007267689872037464

namespace A024700

/-- `A216244(n+3)-A084922(n+3)` -/
def P8007267689872037464.Spec : Prop :=
  ∀ n, P8007267689872037464.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P12858629353429734891

`A024702(n+3)+A024702(n+3)+A024701(n+2)`
-/

namespace A024700.P12858629353429734891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3) + (A024702 (n + 3) + A024701 (n + 2))

end

end A024700.P12858629353429734891

namespace A024700

/-- `A024702(n+3)+A024702(n+3)+A024701(n+2)` -/
def P12858629353429734891.Spec : Prop :=
  ∀ n, P12858629353429734891.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P4254340822271413657

`A024701(n+2)+A024701(n+2)-A084922(n+3)`
-/

namespace A024700.P4254340822271413657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 2) + (A024701 (n + 2) - A084922 (n + 3))

end

end A024700.P4254340822271413657

namespace A024700

/-- `A024701(n+2)+A024701(n+2)-A084922(n+3)` -/
def P4254340822271413657.Spec : Prop :=
  ∀ n, P4254340822271413657.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P2270161656629360844

`A216244(n+3)-(A061066(n+3)+A024702(n+3))`
-/

namespace A024700.P2270161656629360844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 3) - (A061066 (n + 3) + A024702 (n + 3))

end

end A024700.P2270161656629360844

namespace A024700

/-- `A216244(n+3)-(A061066(n+3)+A024702(n+3))` -/
def P2270161656629360844.Spec : Prop :=
  ∀ n, P2270161656629360844.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P15825387966703581833

`A084920(n+3)/3`
-/

namespace A024700.P15825387966703581833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 3) : ℚ) / 3

end

end A024700.P15825387966703581833

namespace A024700

/-- `A084920(n+3)/3` -/
def P15825387966703581833.Spec : Prop :=
  ∀ n, P15825387966703581833.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P6825499830608476857

`floor(A001248(n+3)/3)`
-/

namespace A024700.P6825499830608476857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001248 (n + 3) : ℚ) / 3⌋

end

end A024700.P6825499830608476857

namespace A024700

/-- `floor(A001248(n+3)/3)` -/
def P6825499830608476857.Spec : Prop :=
  ∀ n, P6825499830608476857.a n = A024700 (n + 1)

end A024700

/-! ## A024700.P1397782213067532904

`(A049001(n+3)+1)/3`
-/

namespace A024700.P1397782213067532904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049001 (n + 3) + 1 : ℚ) / 3

end

end A024700.P1397782213067532904

namespace A024700

/-- `(A049001(n+3)+1)/3` -/
def P1397782213067532904.Spec : Prop :=
  ∀ n, P1397782213067532904.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P15142326834303722787

`A166010(n+3)/3+1`
-/

namespace A024700.P15142326834303722787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166010 (n + 3) : ℚ) / 3 + 1

end

end A024700.P15142326834303722787

namespace A024700

/-- `A166010(n+3)/3+1` -/
def P15142326834303722787.Spec : Prop :=
  ∀ n, P15142326834303722787.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P15109540015969622838

`(A182200(n+3)+2)/3`
-/

namespace A024700.P15109540015969622838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182200 (n + 3) + 2 : ℚ) / 3

end

end A024700.P15109540015969622838

namespace A024700

/-- `(A182200(n+3)+2)/3` -/
def P15109540015969622838.Spec : Prop :=
  ∀ n, P15109540015969622838.a n = (A024700 (n + 1) : ℚ)

end A024700

/-! ## A024700.P9688845007781772239

`floor(A000040(n+3)²/3)`
-/

namespace A024700.P9688845007781772239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 3) ^ 2 : ℚ) / 3⌋

end

end A024700.P9688845007781772239

namespace A024700

/-- `floor(A000040(n+3)²/3)` -/
def P9688845007781772239.Spec : Prop :=
  ∀ n, P9688845007781772239.a n = A024700 (n + 1)

end A024700

/-!
# A024701: a(n) = (-1 + prime(n+1)^2)/4.

The programs for A024701, the canonical program `A024701.P6348216972000098590` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024701 has offset 1).

The definition of A024701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024701.P6348216972000098590

`floor((p?[2*n+1]/2)²)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024701

/-- `floor((p?[2*n+1]/2)²)` -/
def P6348216972000098590.Spec : Prop :=
  ∀ n, P6348216972000098590.a n = A024701 (n + 1)

theorem P6348216972000098590.correct : P6348216972000098590.Spec := by
  intro n
  simp only [A024701, Nat.add_sub_cancel]

end A024701

/-! ## A024701.P16971074992904835187

`round((p?[2*n+1]/2)²)`
-/

namespace A024701.P16971074992904835187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2) ^ 2)

end

end A024701.P16971074992904835187

namespace A024701

/-- `round((p?[2*n+1]/2)²)` -/
def P16971074992904835187.Spec : Prop :=
  ∀ n, P16971074992904835187.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P15875447037053771767

`floor(cosh(log(p?[2*n+1]))²)`
-/

namespace A024701.P15875447037053771767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)) ^ 2⌋

end

end A024701.P15875447037053771767

namespace A024701

/-- `floor(cosh(log(p?[2*n+1]))²)` -/
def P15875447037053771767.Spec : Prop :=
  ∀ n, P15875447037053771767.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P12442480440001182544

`ceil(sinh(log(p?[2*n+1]))²)`
-/

namespace A024701.P12442480440001182544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)) ^ 2⌉

end

end A024701.P12442480440001182544

namespace A024701

/-- `ceil(sinh(log(p?[2*n+1]))²)` -/
def P12442480440001182544.Spec : Prop :=
  ∀ n, P12442480440001182544.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P2810492949791785580

`round(sinh(log(p?[2*n+1]))²)`
-/

namespace A024701.P2810492949791785580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)) ^ 2)

end

end A024701.P2810492949791785580

namespace A024701

/-- `round(sinh(log(p?[2*n+1]))²)` -/
def P2810492949791785580.Spec : Prop :=
  ∀ n, P2810492949791785580.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P10525086370956426038

`A074367(n+1)+1`
-/

namespace A024701.P10525086370956426038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074367 (n + 1) + 1

end

end A024701.P10525086370956426038

namespace A024701

/-- `A074367(n+1)+1` -/
def P10525086370956426038.Spec : Prop :=
  ∀ n, P10525086370956426038.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P6244636105768349833

`A222963(n+2)+2`
-/

namespace A024701.P6244636105768349833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222963 (n + 2) + 2

end

end A024701.P6244636105768349833

namespace A024701

/-- `A222963(n+2)+2` -/
def P6244636105768349833.Spec : Prop :=
  ∀ n, P6244636105768349833.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P5369571221154935997

`2*A061066(n+2)`
-/

namespace A024701.P5369571221154935997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061066 (n + 2)

end

end A024701.P5369571221154935997

namespace A024701

/-- `2*A061066(n+2)` -/
def P5369571221154935997.Spec : Prop :=
  ∀ n, P5369571221154935997.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P6883175619517213235

`A216244(n+2)/2`
-/

namespace A024701.P6883175619517213235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216244 (n + 2) : ℚ) / 2

end

end A024701.P6883175619517213235

namespace A024701

/-- `A216244(n+2)/2` -/
def P6883175619517213235.Spec : Prop :=
  ∀ n, P6883175619517213235.a n = (A024701 (n + 1) : ℚ)

end A024701

/-! ## A024701.P16642319955592853431

`∑[A062046(n+1)]+2`
-/

namespace A024701.P16642319955592853431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A024701.P16642319955592853431

namespace A024701

/-- `∑[A062046(n+1)]+2` -/
def P16642319955592853431.Spec : Prop :=
  ∀ n, P16642319955592853431.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P18227260249271153132

`(A243887(n+1)+1)/2`
-/

namespace A024701.P18227260249271153132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243887 (n + 1) + 1 : ℚ) / 2

end

end A024701.P18227260249271153132

namespace A024701

/-- `(A243887(n+1)+1)/2` -/
def P18227260249271153132.Spec : Prop :=
  ∀ n, P18227260249271153132.a n = (A024701 (n + 1) : ℚ)

end A024701

/-! ## A024701.P8751975854160216454

`(A066885(n+2)-1)/2`
-/

namespace A024701.P8751975854160216454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066885 (n + 2) - 1 : ℚ) / 2

end

end A024701.P8751975854160216454

namespace A024701

/-- `(A066885(n+2)-1)/2` -/
def P8751975854160216454.Spec : Prop :=
  ∀ n, P8751975854160216454.a n = (A024701 (n + 1) : ℚ)

end A024701

/-! ## A024701.P6382965335591130186

`2*C(A006254(n+1), 2)`
-/

namespace A024701.P6382965335591130186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A006254 (n + 1)).toNat 2

end

end A024701.P6382965335591130186

namespace A024701

/-- `2*C(A006254(n+1), 2)` -/
def P6382965335591130186.Spec : Prop :=
  ∀ n, (P6382965335591130186.a n : ℤ) = A024701 (n + 1)

end A024701

/-! ## A024701.P17291844316352346459

`floor((A065091(n+1)/2)²)`
-/

namespace A024701.P17291844316352346459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A065091 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A024701.P17291844316352346459

namespace A024701

/-- `floor((A065091(n+1)/2)²)` -/
def P17291844316352346459.Spec : Prop :=
  ∀ n, P17291844316352346459.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P9335499573947512594

`(∑[A124434(n+1)]-1)/2`
-/

namespace A024701.P9335499573947512594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124434 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A024701.P9335499573947512594

namespace A024701

/-- `(∑[A124434(n+1)]-1)/2` -/
def P9335499573947512594.Spec : Prop :=
  ∀ n, P9335499573947512594.a n = (A024701 (n + 1) : ℚ)

end A024701

/-! ## A024701.P10141059345593973395

`A005097(n+1)*A006254(n+1)`
-/

namespace A024701.P10141059345593973395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A006254 (n + 1)

end

end A024701.P10141059345593973395

namespace A024701

/-- `A005097(n+1)*A006254(n+1)` -/
def P10141059345593973395.Spec : Prop :=
  ∀ n, P10141059345593973395.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P17853030555114811752

`A006254(n+1)+A006254(n+1)*A067076(n+1)`
-/

namespace A024701.P17853030555114811752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + A006254 (n + 1) * A067076 (n + 1)

end

end A024701.P17853030555114811752

namespace A024701

/-- `A006254(n+1)+A006254(n+1)*A067076(n+1)` -/
def P17853030555114811752.Spec : Prop :=
  ∀ n, P17853030555114811752.a n = A024701 (n + 1)

end A024701

/-! ## A024701.P18372584330031829741

`A084921(n+2)/2`
-/

namespace A024701.P18372584330031829741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084921 (n + 2) : ℚ) / 2

end

end A024701.P18372584330031829741

namespace A024701

/-- `A084921(n+2)/2` -/
def P18372584330031829741.Spec : Prop :=
  ∀ n, P18372584330031829741.a n = (A024701 (n + 1) : ℚ)

end A024701

/-! ## A024701.P4111497613014914372

`A084920(n+2)/4`
-/

namespace A024701.P4111497613014914372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 2) : ℚ) / 4

end

end A024701.P4111497613014914372

namespace A024701

/-- `A084920(n+2)/4` -/
def P4111497613014914372.Spec : Prop :=
  ∀ n, P4111497613014914372.a n = (A024701 (n + 1) : ℚ)

end A024701

/-! ## A024701.P2363418204010985770

`floor(sqrt(A185052(n+2)))`
-/

namespace A024701.P2363418204010985770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A185052 (n + 2))

end

end A024701.P2363418204010985770

namespace A024701

/-- `floor(sqrt(A185052(n+2)))` -/
def P2363418204010985770.Spec : Prop :=
  ∀ n, P2363418204010985770.a n = A024701 (n + 1)

end A024701

/-!
# A024702: a(n) = (prime(n)^2 - 1)/24.

The programs for A024702, the canonical program `A024702.P11141641154328853276` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024702 has offset 3).

The definition of A024702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024702.P18056427067841100531

`A081115(n+3)/2`
-/

namespace A024702.P18056427067841100531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081115 (n + 3) : ℚ) / 2

end

end A024702.P18056427067841100531

namespace A024702

/-- `A081115(n+3)/2` -/
def P18056427067841100531.Spec : Prop :=
  ∀ n, P18056427067841100531.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P2116793805909848873

`A084922(n+3)/4`
-/

namespace A024702.P2116793805909848873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084922 (n + 3) : ℚ) / 4

end

end A024702.P2116793805909848873

namespace A024702

/-- `A084922(n+3)/4` -/
def P2116793805909848873.Spec : Prop :=
  ∀ n, P2116793805909848873.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P11141641154328853276

`A024700(n+1)/8`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024702

/-- `A024700(n+1)/8` -/
def P11141641154328853276.Spec : Prop :=
  ∀ n, P11141641154328853276.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P640453908285162997

`A061066(n+3)/3`
-/

namespace A024702.P640453908285162997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061066 (n + 3) : ℚ) / 3

end

end A024702.P640453908285162997

namespace A024702

/-- `A061066(n+3)/3` -/
def P640453908285162997.Spec : Prop :=
  ∀ n, P640453908285162997.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P16005245505014338525

`A024701(n+2)/6`
-/

namespace A024702.P16005245505014338525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024701 (n + 2) : ℚ) / 6

end

end A024702.P16005245505014338525

namespace A024702

/-- `A024701(n+2)/6` -/
def P16005245505014338525.Spec : Prop :=
  ∀ n, P16005245505014338525.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P15947049861122740140

`A216244(n+3)-(A061066(n+3)+A024700(n+1))`
-/

namespace A024702.P15947049861122740140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 3) - (A061066 (n + 3) + A024700 (n + 1))

end

end A024702.P15947049861122740140

namespace A024702

/-- `A216244(n+3)-(A061066(n+3)+A024700(n+1))` -/
def P15947049861122740140.Spec : Prop :=
  ∀ n, P15947049861122740140.a n = A024702 (n + 3)

end A024702

/-! ## A024702.P13880852194993986295

`floor(A001248(n+3)/24)`
-/

namespace A024702.P13880852194993986295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001248 (n + 3) : ℚ) / 24⌋

end

end A024702.P13880852194993986295

namespace A024702

/-- `floor(A001248(n+3)/24)` -/
def P13880852194993986295.Spec : Prop :=
  ∀ n, P13880852194993986295.a n = A024702 (n + 3)

end A024702

/-! ## A024702.P2389304876644690245

`floor(A084921(n+3)/3)/4`
-/

namespace A024702.P2389304876644690245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A084921 (n + 3) : ℚ) / 3⌋ : ℚ) / 4

end

end A024702.P2389304876644690245

namespace A024702

/-- `floor(A084921(n+3)/3)/4` -/
def P2389304876644690245.Spec : Prop :=
  ∀ n, P2389304876644690245.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P14822671083076891539

`floor(A000040(n+3)²/6)/4`
-/

namespace A024702.P14822671083076891539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A000040 (n + 3) ^ 2 : ℚ) / 6⌋ : ℚ) / 4

end

end A024702.P14822671083076891539

namespace A024702

/-- `floor(A000040(n+3)²/6)/4` -/
def P14822671083076891539.Spec : Prop :=
  ∀ n, P14822671083076891539.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P6405224696076325662

`A127922(n+3)/A000040(n+3)`
-/

namespace A024702.P6405224696076325662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127922 (n + 3) : ℚ) / (A000040 (n + 3) : ℚ)

end

end A024702.P6405224696076325662

namespace A024702

/-- `A127922(n+3)/A000040(n+3)` -/
def P6405224696076325662.Spec : Prop :=
  ∀ n, P6405224696076325662.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P2817525621443864751

`A000217(A005097(n+2))/3`
-/

namespace A024702.P2817525621443864751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A005097 (n + 2)).toNat : ℚ) / 3

end

end A024702.P2817525621443864751

namespace A024702

/-- `A000217(A005097(n+2))/3` -/
def P2817525621443864751.Spec : Prop :=
  ∀ n, P2817525621443864751.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P7391791831133863964

`A001318(A181709(n+1)-1)`
-/

namespace A024702.P7391791831133863964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A181709 (n + 1) - 1).toNat

end

end A024702.P7391791831133863964

namespace A024702

/-- `A001318(A181709(n+1)-1)` -/
def P7391791831133863964.Spec : Prop :=
  ∀ n, P7391791831133863964.a n = A024702 (n + 3)

end A024702

/-! ## A024702.P15615655428858536012

`A027626(A089038(n+1))`
-/

namespace A024702.P15615655428858536012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (A089038 (n + 1)).toNat

end

end A024702.P15615655428858536012

namespace A024702

/-- `A027626(A089038(n+1))` -/
def P15615655428858536012.Spec : Prop :=
  ∀ n, P15615655428858536012.a n = A024702 (n + 3)

end A024702

/-! ## A024702.P14651239635202456982

`A001840(A067076(n+2))`
-/

namespace A024702.P14651239635202456982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A067076 (n + 2)).toNat

end

end A024702.P14651239635202456982

namespace A024702

/-- `A001840(A067076(n+2))` -/
def P14651239635202456982.Spec : Prop :=
  ∀ n, P14651239635202456982.a n = A024702 (n + 3)

end A024702

/-! ## A024702.P17537938629077890567

`A087539(A006254(n+2))`
-/

namespace A024702.P17537938629077890567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087539 (A006254 (n + 2)).toNat

end

end A024702.P17537938629077890567

namespace A024702

/-- `A087539(A006254(n+2))` -/
def P17537938629077890567.Spec : Prop :=
  ∀ n, P17537938629077890567.a n = A024702 (n + 3)

end A024702

/-! ## A024702.P6205607062371475386

`A007997(A089192(n+2))`
-/

namespace A024702.P6205607062371475386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (A089192 (n + 2)).toNat

end

end A024702.P6205607062371475386

namespace A024702

/-- `A007997(A089192(n+2))` -/
def P6205607062371475386.Spec : Prop :=
  ∀ n, P6205607062371475386.a n = A024702 (n + 3)

end A024702

/-! ## A024702.P4537396788285826229

`A058212(A098090(n+2))`
-/

namespace A024702.P4537396788285826229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A098090 (n + 2)).toNat

end

end A024702.P4537396788285826229

namespace A024702

/-- `A058212(A098090(n+2))` -/
def P4537396788285826229.Spec : Prop :=
  ∀ n, P4537396788285826229.a n = A024702 (n + 3)

end A024702

/-! ## A024702.P1002197835442341844

`A161680(A006254(n+2))/A006254(A020639(2*(n+1)))`
-/

namespace A024702.P1002197835442341844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 (A006254 (n + 2)).toNat : ℚ) / (A006254 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A024702.P1002197835442341844

namespace A024702

/-- `A161680(A006254(n+2))/A006254(A020639(2*(n+1)))` -/
def P1002197835442341844.Spec : Prop :=
  ∀ n, P1002197835442341844.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P13410525021061649007

`A001399(A154115(n+2))/2`
-/

namespace A024702.P13410525021061649007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001399 (A154115 (n + 2)).toNat : ℚ) / 2

end

end A024702.P13410525021061649007

namespace A024702

/-- `A001399(A154115(n+2))/2` -/
def P13410525021061649007.Spec : Prop :=
  ∀ n, P13410525021061649007.a n = (A024702 (n + 3) : ℚ)

end A024702

/-! ## A024702.P17519556624614881295

`A008742(A004139(n+1))`
-/

namespace A024702.P17519556624614881295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A004139 (n + 1)).toNat

end

end A024702.P17519556624614881295

namespace A024702

/-- `A008742(A004139(n+1))` -/
def P17519556624614881295.Spec : Prop :=
  ∀ n, P17519556624614881295.a n = A024702 (n + 3)

end A024702

/-!
# A024703: Prime divisors, including repetitions, of n-th term of A024702.

The programs for A024703, the canonical program `A024703.P14754064723573950428` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024703 has offset 3).

The definition of A024703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024703.P14754064723573950428

`A239669(n+3)-4`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A024703

/-- `A239669(n+3)-4` -/
def P14754064723573950428.Spec : Prop :=
  ∀ n, P14754064723573950428.a n = A024703 (n + 3)

theorem P14754064723573950428.correct : P14754064723573950428.Spec := by
  intro n
  simp only [A024703, Nat.add_sub_cancel]

end A024703

/-! ## A024703.P4840594615574105649

`A193295(A000040(n+3))-4`
-/

namespace A024703.P4840594615574105649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (A000040 (n + 3)).toNat - 4

end

end A024703.P4840594615574105649

namespace A024703

/-- `A193295(A000040(n+3))-4` -/
def P4840594615574105649.Spec : Prop :=
  ∀ n, P4840594615574105649.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P4738671996722437839

`∑{e}[A024702(n+3), #]`
-/

namespace A024703.P4738671996722437839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A024703.P4738671996722437839

namespace A024703

/-- `∑{e}[A024702(n+3), #]` -/
def P4738671996722437839.Spec : Prop :=
  ∀ n, (P4738671996722437839.a n : ℤ) = A024703 (n + 3)

end A024703

/-! ## A024703.P2095915203529435701

`∑{e}[A061066(n+3)/3, #]`
-/

namespace A024703.P2095915203529435701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061066 (n + 3) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A024703.P2095915203529435701

namespace A024703

/-- `∑{e}[A061066(n+3)/3, #]` -/
def P2095915203529435701.Spec : Prop :=
  ∀ n, (P2095915203529435701.a n : ℤ) = A024703 (n + 3)

end A024703

/-! ## A024703.P15391430498756799947

`∑{e}[A024701(n+2)/6, #]`
-/

namespace A024703.P15391430498756799947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024701 (n + 2) : ℚ) / 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A024703.P15391430498756799947

namespace A024703

/-- `∑{e}[A024701(n+2)/6, #]` -/
def P15391430498756799947.Spec : Prop :=
  ∀ n, (P15391430498756799947.a n : ℤ) = A024703 (n + 3)

end A024703

/-! ## A024703.P15971872200194676731

`∑{e}[A024700(n+1)/8, #]`
-/

namespace A024703.P15971872200194676731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024700 (n + 1) : ℚ) / 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A024703.P15971872200194676731

namespace A024703

/-- `∑{e}[A024700(n+1)/8, #]` -/
def P15971872200194676731.Spec : Prop :=
  ∀ n, (P15971872200194676731.a n : ℤ) = A024703 (n + 3)

end A024703

/-! ## A024703.P10771058141642050978

`∑{e}[floor(A001248(n+3)/24), #]`
-/

namespace A024703.P10771058141642050978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001248 (n + 3) : ℚ) / 24⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A024703.P10771058141642050978

namespace A024703

/-- `∑{e}[floor(A001248(n+3)/24), #]` -/
def P10771058141642050978.Spec : Prop :=
  ∀ n, (P10771058141642050978.a n : ℤ) = A024703 (n + 3)

end A024703

/-! ## A024703.P4412213275062709368

`∑{e}[A058212(A098090(n+2)), #]`
-/

namespace A024703.P4412213275062709368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A098090 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A024703.P4412213275062709368

namespace A024703

/-- `∑{e}[A058212(A098090(n+2)), #]` -/
def P4412213275062709368.Spec : Prop :=
  ∀ n, (P4412213275062709368.a n : ℤ) = A024703 (n + 3)

end A024703

/-! ## A024703.P4457082558218245925

`A001222(A024702(n+3))`
-/

namespace A024703.P4457082558218245925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024702 (n + 3)).toNat

end

end A024703.P4457082558218245925

namespace A024703

/-- `A001222(A024702(n+3))` -/
def P4457082558218245925.Spec : Prop :=
  ∀ n, P4457082558218245925.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P11225932935869102109

`A001222(A081115(n+3)/2)`
-/

namespace A024703.P11225932935869102109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A081115 (n + 3) : ℚ) / 2)).toNat

end

end A024703.P11225932935869102109

namespace A024703

/-- `A001222(A081115(n+3)/2)` -/
def P11225932935869102109.Spec : Prop :=
  ∀ n, P11225932935869102109.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P16212430121575455021

`A001222(A084922(n+3)/4)`
-/

namespace A024703.P16212430121575455021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A084922 (n + 3) : ℚ) / 4)).toNat

end

end A024703.P16212430121575455021

namespace A024703

/-- `A001222(A084922(n+3)/4)` -/
def P16212430121575455021.Spec : Prop :=
  ∀ n, P16212430121575455021.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P25818503993571899

`A001222(A024700(n+1)/8)`
-/

namespace A024703.P25818503993571899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A024700 (n + 1) : ℚ) / 8)).toNat

end

end A024703.P25818503993571899

namespace A024703

/-- `A001222(A024700(n+1)/8)` -/
def P25818503993571899.Spec : Prop :=
  ∀ n, P25818503993571899.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P4441813876507248490

`A001222(A008742(A004139(n+1)))`
-/

namespace A024703.P4441813876507248490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008742 (A004139 (n + 1)).toNat).toNat

end

end A024703.P4441813876507248490

namespace A024703

/-- `A001222(A008742(A004139(n+1)))` -/
def P4441813876507248490.Spec : Prop :=
  ∀ n, P4441813876507248490.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P4732569824228390616

`A001222(A027626(A089038(n+1)))`
-/

namespace A024703.P4732569824228390616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027626 (A089038 (n + 1)).toNat).toNat

end

end A024703.P4732569824228390616

namespace A024703

/-- `A001222(A027626(A089038(n+1)))` -/
def P4732569824228390616.Spec : Prop :=
  ∀ n, P4732569824228390616.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P992573301862229267

`A001222(A008742(A045319(n+2)))`
-/

namespace A024703.P992573301862229267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008742 (A045319 (n + 2)).toNat).toNat

end

end A024703.P992573301862229267

namespace A024703

/-- `A001222(A008742(A045319(n+2)))` -/
def P992573301862229267.Spec : Prop :=
  ∀ n, P992573301862229267.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P9212891283730668266

`A001222(A008742(A045344(n+2)))`
-/

namespace A024703.P9212891283730668266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008742 (A045344 (n + 2)).toNat).toNat

end

end A024703.P9212891283730668266

namespace A024703

/-- `A001222(A008742(A045344(n+2)))` -/
def P9212891283730668266.Spec : Prop :=
  ∀ n, P9212891283730668266.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P7229398417030184066

`A001222(A001840(A067076(n+2)))`
-/

namespace A024703.P7229398417030184066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001840 (A067076 (n + 2)).toNat).toNat

end

end A024703.P7229398417030184066

namespace A024703

/-- `A001222(A001840(A067076(n+2)))` -/
def P7229398417030184066.Spec : Prop :=
  ∀ n, P7229398417030184066.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P777748395327397706

`A001222(A008742(A065091(n+2)))`
-/

namespace A024703.P777748395327397706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008742 (A065091 (n + 2)).toNat).toNat

end

end A024703.P777748395327397706

namespace A024703

/-- `A001222(A008742(A065091(n+2)))` -/
def P777748395327397706.Spec : Prop :=
  ∀ n, P777748395327397706.a n = A024703 (n + 3)

end A024703

/-! ## A024703.P1319892711659798251

`A001222(A007997(A089192(n+2)))`
-/

namespace A024703.P1319892711659798251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007997 (A089192 (n + 2)).toNat).toNat

end

end A024703.P1319892711659798251

namespace A024703

/-- `A001222(A007997(A089192(n+2)))` -/
def P1319892711659798251.Spec : Prop :=
  ∀ n, P1319892711659798251.a n = A024703 (n + 3)

end A024703

/-!
# A024704: Positions of even numbers in A024702.

The programs for A024704, the canonical program `A024704.P6119245964848831634` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024704 has offset 1).

The definition of A024704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024704.P7445048624023316403

`eq[2, gcd(2, A054505(n+2))]+2`
-/

namespace A024704.P7445048624023316403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A054505 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A024704.P7445048624023316403

namespace A024704

/-- `eq[2, gcd(2, A054505(n+2))]+2` -/
def P7445048624023316403.Spec : Prop :=
  ∀ n, (P7445048624023316403.a n : ℤ) = A024704 (n + 1)

end A024704

/-! ## A024704.P14939109254004052509

`eq[2, A306530(n+1)]+1`
-/

namespace A024704.P14939109254004052509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024704.P14939109254004052509

namespace A024704

/-- `eq[2, A306530(n+1)]+1` -/
def P14939109254004052509.Spec : Prop :=
  ∀ n, (P14939109254004052509.a n : ℤ) = A024704 (n + 1)

end A024704

/-! ## A024704.P9434496929075585535

`lt[2, A053760(n+1)]+1`
-/

namespace A024704.P9434496929075585535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024704.P9434496929075585535

namespace A024704

/-- `lt[2, A053760(n+1)]+1` -/
def P9434496929075585535.Spec : Prop :=
  ∀ n, (P9434496929075585535.a n : ℤ) = A024704 (n + 1)

end A024704

/-! ## A024704.P17881495774585050516

`lt[2, A091382(n+1)]+1`
-/

namespace A024704.P17881495774585050516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024704.P17881495774585050516

namespace A024704

/-- `lt[2, A091382(n+1)]+1` -/
def P17881495774585050516.Spec : Prop :=
  ∀ n, (P17881495774585050516.a n : ℤ) = A024704 (n + 1)

end A024704

/-! ## A024704.P6119245964848831634

`lt[3, A091282(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024704

/-- `lt[3, A091282(n+1)]+1` -/
def P6119245964848831634.Spec : Prop :=
  ∀ n, (P6119245964848831634.a n : ℤ) = A024704 (n + 1)

theorem P6119245964848831634.correct : P6119245964848831634.Spec := by
  intro n
  simp only [A024704, Nat.add_sub_cancel]

end A024704

/-! ## A024704.P6925924545358443515

`lt[1, and(5, A040976(n+1))]+1`
-/

namespace A024704.P6925924545358443515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A040976 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024704.P6925924545358443515

namespace A024704

/-- `lt[1, and(5, A040976(n+1))]+1` -/
def P6925924545358443515.Spec : Prop :=
  ∀ n, (P6925924545358443515.a n : ℤ) = A024704 (n + 1)

end A024704

/-! ## A024704.P16111967711098966572

`lt[and(6, A076342(n+1)), 1]+1`
-/

namespace A024704.P16111967711098966572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A076342 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024704.P16111967711098966572

namespace A024704

/-- `lt[and(6, A076342(n+1)), 1]+1` -/
def P16111967711098966572.Spec : Prop :=
  ∀ n, (P16111967711098966572.a n : ℤ) = A024704 (n + 1)

end A024704

/-! ## A024704.P6650787516054209709

`A000720(p?[8*n-a(n-1)])` with `a(0)=1`
-/

namespace A024704.P6650787516054209709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (8 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024704.P6650787516054209709

namespace A024704

/-- `A000720(p?[8*n-a(n-1)])` -/
def P6650787516054209709.Spec : Prop :=
  ∀ n, P6650787516054209709.a n = A024704 (n + 1)

end A024704

/-! ## A024704.P10638029147014688830

`lt[and(4, -record[A000010(n+1)]), 2]+1`
-/

namespace A024704.P10638029147014688830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (-f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A024704.P10638029147014688830

namespace A024704

/-- `lt[and(4, -record[A000010(n+1)]), 2]+1` -/
def P10638029147014688830.Spec : Prop :=
  ∀ n, (P10638029147014688830.a n : ℤ) = A024704 (n + 1)

end A024704

/-! ## A024704.P13515534754177295485

`A000720(A001132(n+1))`
-/

namespace A024704.P13515534754177295485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001132 (n + 1)).toNat

end

end A024704.P13515534754177295485

namespace A024704

/-- `A000720(A001132(n+1))` -/
def P13515534754177295485.Spec : Prop :=
  ∀ n, P13515534754177295485.a n = A024704 (n + 1)

end A024704

/-! ## A024704.P15990432203859293721

`A000720(A038873(n+2))`
-/

namespace A024704.P15990432203859293721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038873 (n + 2)).toNat

end

end A024704.P15990432203859293721

namespace A024704

/-- `A000720(A038873(n+2))` -/
def P15990432203859293721.Spec : Prop :=
  ∀ n, P15990432203859293721.a n = A024704 (n + 1)

end A024704

/-! ## A024704.P6363952506608362625

`A000720(A097958(n+2))`
-/

namespace A024704.P6363952506608362625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A097958 (n + 2)).toNat

end

end A024704.P6363952506608362625

namespace A024704

/-- `A000720(A097958(n+2))` -/
def P6363952506608362625.Spec : Prop :=
  ∀ n, P6363952506608362625.a n = A024704 (n + 1)

end A024704

/-! ## A024704.P2998897467805681098

`eq[2, A118917(eq[1, A074206(n)])]`
-/

namespace A024704.P2998897467805681098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024704.P2998897467805681098

namespace A024704

/-- `eq[2, A118917(eq[1, A074206(n)])]` -/
def P2998897467805681098.Spec : Prop :=
  ∀ n, (P2998897467805681098.a n : ℤ) = A024704 (n + 1)

end A024704

/-! ## A024704.P12183063310361836901

`A000720(p?[A004773(2*n)-1])`
-/

namespace A024704.P12183063310361836901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024704.P12183063310361836901

namespace A024704

/-- `A000720(p?[A004773(2*n)-1])` -/
def P12183063310361836901.Spec : Prop :=
  ∀ n, P12183063310361836901.a n = A024704 (n + 1)

end A024704

/-! ## A024704.P3133882955846080115

`A344616(p?[A004773(2*n)-1])`
-/

namespace A024704.P3133882955846080115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024704.P3133882955846080115

namespace A024704

/-- `A344616(p?[A004773(2*n)-1])` -/
def P3133882955846080115.Spec : Prop :=
  ∀ n, P3133882955846080115.a n = A024704 (n + 1)

end A024704

/-! ## A024704.P16018263107560874811

`A055396(p?[A069909(n)])`
-/

namespace A024704.P16018263107560874811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024704.P16018263107560874811

namespace A024704

/-- `A055396(p?[A069909(n)])` -/
def P16018263107560874811.Spec : Prop :=
  ∀ n, P16018263107560874811.a n = A024704 (n + 1)

end A024704

/-! ## A024704.P6070739421324037170

`lt[2, A068508(A068499(n+1))]`
-/

namespace A024704.P6070739421324037170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068508 (A068499 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024704.P6070739421324037170

namespace A024704

/-- `lt[2, A068508(A068499(n+1))]` -/
def P6070739421324037170.Spec : Prop :=
  ∀ n, (P6070739421324037170.a n : ℤ) = A024704 (n + 1)

end A024704

/-!
# A024705: Positions of odd numbers in A024702.

The programs for A024705, the canonical program `A024705.P11783983241854966151` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024705 has offset 1).

The definition of A024705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024705.P11783983241854966151

`filter[n+3, A024711(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024705

/-- `filter[n+3, A024711(#)]` -/
def P11783983241854966151.Spec : Prop :=
  ∀ n, (P11783983241854966151.a n : ℤ) = A024705 (n + 1)

theorem P11783983241854966151.correct : P11783983241854966151.Spec := by
  intro n
  simp only [A024705, Nat.add_sub_cancel]

end A024705

/-! ## A024705.P16362424399068549371

`eq[2, A241604(n+1)]+1`
-/

namespace A024705.P16362424399068549371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024705.P16362424399068549371

namespace A024705

/-- `eq[2, A241604(n+1)]+1` -/
def P16362424399068549371.Spec : Prop :=
  ∀ n, (P16362424399068549371.a n : ℤ) = A024705 (n + 1)

end A024705

/-! ## A024705.P2522099184803055339

`eq[2, A053760(n+3)]+3`
-/

namespace A024705.P2522099184803055339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A024705.P2522099184803055339

namespace A024705

/-- `eq[2, A053760(n+3)]+3` -/
def P2522099184803055339.Spec : Prop :=
  ∀ n, (P2522099184803055339.a n : ℤ) = A024705 (n + 1)

end A024705

/-! ## A024705.P4170172517033075030

`eq[1, gcd(2, A054505(n+3))]+3`
-/

namespace A024705.P4170172517033075030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A054505 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A024705.P4170172517033075030

namespace A024705

/-- `eq[1, gcd(2, A054505(n+3))]+3` -/
def P4170172517033075030.Spec : Prop :=
  ∀ n, (P4170172517033075030.a n : ℤ) = A024705 (n + 1)

end A024705

/-! ## A024705.P5041909648358093887

`eq[1, and(1, A001917(n+3))]+3`
-/

namespace A024705.P5041909648358093887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001917 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A024705.P5041909648358093887

namespace A024705

/-- `eq[1, and(1, A001917(n+3))]+3` -/
def P5041909648358093887.Spec : Prop :=
  ∀ n, (P5041909648358093887.a n : ℤ) = A024705 (n + 1)

end A024705

/-! ## A024705.P14488417451146961327

`A000720(p?[8*n-a(n-1)])` with `a(0)=1, a(1)=5`
-/

namespace A024705.P14488417451146961327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (8 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024705.P14488417451146961327

namespace A024705

/-- `A000720(p?[8*n-a(n-1)])` -/
def P14488417451146961327.Spec : Prop :=
  ∀ n, P14488417451146961327.a n = A024705 (n + 1)

end A024705

/-! ## A024705.P6614905143075214967

`A000720(A003629(n+2))`
-/

namespace A024705.P6614905143075214967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A003629 (n + 2)).toNat

end

end A024705.P6614905143075214967

namespace A024705

/-- `A000720(A003629(n+2))` -/
def P6614905143075214967.Spec : Prop :=
  ∀ n, P6614905143075214967.a n = A024705 (n + 1)

end A024705

/-! ## A024705.P202722378354747976

`A000720(p?[A319041(n+2)])`
-/

namespace A024705.P202722378354747976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024705.P202722378354747976

namespace A024705

/-- `A000720(p?[A319041(n+2)])` -/
def P202722378354747976.Spec : Prop :=
  ∀ n, P202722378354747976.a n = A024705 (n + 1)

end A024705

/-! ## A024705.P16722931469534001910

`A000720(p?[A006369(2*(n+2))])`
-/

namespace A024705.P16722931469534001910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024705.P16722931469534001910

namespace A024705

/-- `A000720(p?[A006369(2*(n+2))])` -/
def P16722931469534001910.Spec : Prop :=
  ∀ n, P16722931469534001910.a n = A024705 (n + 1)

end A024705

/-! ## A024705.P9949022094618552201

`lt[A111374(record[A014963(n+1)]+1), 0]`
-/

namespace A024705.P9949022094618552201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111374 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A024705.P9949022094618552201

namespace A024705

/-- `lt[A111374(record[A014963(n+1)]+1), 0]` -/
def P9949022094618552201.Spec : Prop :=
  ∀ n, (P9949022094618552201.a n : ℤ) = A024705 (n + 1)

end A024705

/-! ## A024705.P5866038590381290452

`lt[A111374(A000040(n+1)+1), 0]+1`
-/

namespace A024705.P5866038590381290452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111374 (A000040 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024705.P5866038590381290452

namespace A024705

/-- `lt[A111374(A000040(n+1)+1), 0]+1` -/
def P5866038590381290452.Spec : Prop :=
  ∀ n, (P5866038590381290452.a n : ℤ) = A024705 (n + 1)

end A024705

/-!
# A024706: Positions of multiples of 3 in A024702.

The programs for A024706, the canonical program `A024706.P297945440486149003` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024706 has offset 1).

The definition of A024706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024706.P297945440486149003

`eq[3, gcd(3, A024702(n+3))]+3`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024706

/-- `eq[3, gcd(3, A024702(n+3))]+3` -/
def P297945440486149003.Spec : Prop :=
  ∀ n, (P297945440486149003.a n : ℤ) = A024706 (n + 1)

theorem P297945440486149003.correct : P297945440486149003.Spec := by
  intro n
  simp only [A024706, Nat.add_sub_cancel]

end A024706

/-! ## A024706.P15324879624505188047

`lt[6, dr(A068499(n+1))]`
-/

namespace A024706.P15324879624505188047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A068499 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024706.P15324879624505188047

namespace A024706

/-- `lt[6, dr(A068499(n+1))]` -/
def P15324879624505188047.Spec : Prop :=
  ∀ n, (P15324879624505188047.a n : ℤ) = A024706 (n + 1)

end A024706

/-! ## A024706.P6321216341349171386

`eq[1, dr(A175787(n+1)²)]`
-/

namespace A024706.P6321216341349171386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A175787 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024706.P6321216341349171386

namespace A024706

/-- `eq[1, dr(A175787(n+1)²)]` -/
def P6321216341349171386.Spec : Prop :=
  ∀ n, (P6321216341349171386.a n : ℤ) = A024706 (n + 1)

end A024706

/-! ## A024706.P7262432610210458960

`eq[1, dr(A001248(n+1))]+1`
-/

namespace A024706.P7262432610210458960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001248 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024706.P7262432610210458960

namespace A024706

/-- `eq[1, dr(A001248(n+1))]+1` -/
def P7262432610210458960.Spec : Prop :=
  ∀ n, (P7262432610210458960.a n : ℤ) = A024706 (n + 1)

end A024706

/-! ## A024706.P434586116798755525

`eq[1, dr(A000040(n+1)²)]+1`
-/

namespace A024706.P434586116798755525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024706.P434586116798755525

namespace A024706

/-- `eq[1, dr(A000040(n+1)²)]+1` -/
def P434586116798755525.Spec : Prop :=
  ∀ n, (P434586116798755525.a n : ℤ) = A024706 (n + 1)

end A024706

/-! ## A024706.P13083101281460775211

`A000720(A129805(n+1))`
-/

namespace A024706.P13083101281460775211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A129805 (n + 1)).toNat

end

end A024706.P13083101281460775211

namespace A024706

/-- `A000720(A129805(n+1))` -/
def P13083101281460775211.Spec : Prop :=
  ∀ n, P13083101281460775211.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P1383783777597176550

`A000720(p?[A056020(n+1)])`
-/

namespace A024706.P1383783777597176550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P1383783777597176550

namespace A024706

/-- `A000720(p?[A056020(n+1)])` -/
def P1383783777597176550.Spec : Prop :=
  ∀ n, P1383783777597176550.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P18059404967158271600

`A061395(p?[A056020(n+1)])`
-/

namespace A024706.P18059404967158271600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P18059404967158271600

namespace A024706

/-- `A061395(p?[A056020(n+1)])` -/
def P18059404967158271600.Spec : Prop :=
  ∀ n, P18059404967158271600.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P16248016460889155838

`A000720(p?[A054966(n+1)])`
-/

namespace A024706.P16248016460889155838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P16248016460889155838

namespace A024706

/-- `A000720(p?[A054966(n+1)])` -/
def P16248016460889155838.Spec : Prop :=
  ∀ n, P16248016460889155838.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P14741224707457751028

`A000720(p?[A281899(n)-1])`
-/

namespace A024706.P14741224707457751028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P14741224707457751028

namespace A024706

/-- `A000720(p?[A281899(n)-1])` -/
def P14741224707457751028.Spec : Prop :=
  ∀ n, P14741224707457751028.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P6272963684489376479

`A344616(p?[A166524(n+1)])`
-/

namespace A024706.P6272963684489376479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P6272963684489376479

namespace A024706

/-- `A344616(p?[A166524(n+1)])` -/
def P6272963684489376479.Spec : Prop :=
  ∀ n, P6272963684489376479.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P8973943570204989942

`A026233(p?[A056020(n+1)])`
-/

namespace A024706.P8973943570204989942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P8973943570204989942

namespace A024706

/-- `A026233(p?[A056020(n+1)])` -/
def P8973943570204989942.Spec : Prop :=
  ∀ n, P8973943570204989942.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P15125711106929640045

`A055396(p?[A054966(n+1)])`
-/

namespace A024706.P15125711106929640045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P15125711106929640045

namespace A024706

/-- `A055396(p?[A054966(n+1)])` -/
def P15125711106929640045.Spec : Prop :=
  ∀ n, P15125711106929640045.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P3759361007840754189

`A055396(p?[A056020(n+1)])`
-/

namespace A024706.P3759361007840754189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P3759361007840754189

namespace A024706

/-- `A055396(p?[A056020(n+1)])` -/
def P3759361007840754189.Spec : Prop :=
  ∀ n, P3759361007840754189.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P17893589331554554544

`A049084(p?[A155098(n+1)%A017113(n)])`
-/

namespace A024706.P17893589331554554544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155098 (n + 1)) (A017113 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024706.P17893589331554554544

namespace A024706

/-- `A049084(p?[A155098(n+1)%A017113(n)])` -/
def P17893589331554554544.Spec : Prop :=
  ∀ n, P17893589331554554544.a n = A024706 (n + 1)

end A024706

/-! ## A024706.P2533291233940991839

`eq[1, dr(A240960(n+1)²)]`
-/

namespace A024706.P2533291233940991839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A240960 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024706.P2533291233940991839

namespace A024706

/-- `eq[1, dr(A240960(n+1)²)]` -/
def P2533291233940991839.Spec : Prop :=
  ∀ n, (P2533291233940991839.a n : ℤ) = A024706 (n + 1)

end A024706

/-!
# A024707: Positions of multiples of 5 in A024702.

The programs for A024707, the canonical program `A024707.P1654818595505930273` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024707 has offset 1).

The definition of A024707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024707.P1654818595505930273

`∪[A049510(n+1), A049511(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024707

/-- `∪[A049510(n+1), A049511(n+1)]` -/
def P1654818595505930273.Spec : Prop :=
  ∀ n, (P1654818595505930273.a n : ℤ) = A024707 (n + 1)

theorem P1654818595505930273.correct : P1654818595505930273.Spec := by
  intro n
  simp only [A024707, Nat.add_sub_cancel]

end A024707

/-! ## A024707.P7811742377372579776

`eq[1, A244738(n+1)]+1`
-/

namespace A024707.P7811742377372579776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024707.P7811742377372579776

namespace A024707

/-- `eq[1, A244738(n+1)]+1` -/
def P7811742377372579776.Spec : Prop :=
  ∀ n, (P7811742377372579776.a n : ℤ) = A024707 (n + 1)

end A024707

/-! ## A024707.P3933516736689700399

`lt[2, A235712(n+1)]+1`
-/

namespace A024707.P3933516736689700399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024707.P3933516736689700399

namespace A024707

/-- `lt[2, A235712(n+1)]+1` -/
def P3933516736689700399.Spec : Prop :=
  ∀ n, (P3933516736689700399.a n : ℤ) = A024707 (n + 1)

end A024707

/-! ## A024707.P12463995645641958744

`eq[1, A001248(n+1)%5]+1`
-/

namespace A024707.P12463995645641958744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024707.P12463995645641958744

namespace A024707

/-- `eq[1, A001248(n+1)%5]+1` -/
def P12463995645641958744.Spec : Prop :=
  ∀ n, (P12463995645641958744.a n : ℤ) = A024707 (n + 1)

end A024707

/-! ## A024707.P1280382270442993607

`lt[(2*(A000040(n+1)+1)+1)%5, 2]+1`
-/

namespace A024707.P1280382270442993607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A000040 (n + 1) + 1) + 1) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024707.P1280382270442993607

namespace A024707

/-- `lt[(2*(A000040(n+1)+1)+1)%5, 2]+1` -/
def P1280382270442993607.Spec : Prop :=
  ∀ n, (P1280382270442993607.a n : ℤ) = A024707 (n + 1)

end A024707

/-! ## A024707.P11801787809254182229

`A000720(A045468(n+1))`
-/

namespace A024707.P11801787809254182229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045468 (n + 1)).toNat

end

end A024707.P11801787809254182229

namespace A024707

/-- `A000720(A045468(n+1))` -/
def P11801787809254182229.Spec : Prop :=
  ∀ n, P11801787809254182229.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P3978041506450564813

`A000720(A038872(n+2))`
-/

namespace A024707.P3978041506450564813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038872 (n + 2)).toNat

end

end A024707.P3978041506450564813

namespace A024707

/-- `A000720(A038872(n+2))` -/
def P3978041506450564813.Spec : Prop :=
  ∀ n, P3978041506450564813.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P16780417293313831302

`A000720(A064739(n+2))`
-/

namespace A024707.P16780417293313831302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A064739 (n + 2)).toNat

end

end A024707.P16780417293313831302

namespace A024707

/-- `A000720(A064739(n+2))` -/
def P16780417293313831302.Spec : Prop :=
  ∀ n, P16780417293313831302.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P5761272507238804035

`A000720(p?[A032766(n+1)+n])`
-/

namespace A024707.P5761272507238804035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P5761272507238804035

namespace A024707

/-- `A000720(p?[A032766(n+1)+n])` -/
def P5761272507238804035.Spec : Prop :=
  ∀ n, P5761272507238804035.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P486652504584541813

`A066328(p?[A032766(n+1)+n])`
-/

namespace A024707.P486652504584541813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P486652504584541813

namespace A024707

/-- `A066328(p?[A032766(n+1)+n])` -/
def P486652504584541813.Spec : Prop :=
  ∀ n, P486652504584541813.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P15439525156146929638

`A000720(p?[A001068(2*n)-1])`
-/

namespace A024707.P15439525156146929638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P15439525156146929638

namespace A024707

/-- `A000720(p?[A001068(2*n)-1])` -/
def P15439525156146929638.Spec : Prop :=
  ∀ n, P15439525156146929638.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P12514741303258379421

`A055396(p?[A090771(n+1)])`
-/

namespace A024707.P12514741303258379421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P12514741303258379421

namespace A024707

/-- `A055396(p?[A090771(n+1)])` -/
def P12514741303258379421.Spec : Prop :=
  ∀ n, P12514741303258379421.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P5631991791447157087

`A026238(p?[A329784(n+1)])`
-/

namespace A024707.P5631991791447157087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P5631991791447157087

namespace A024707

/-- `A026238(p?[A329784(n+1)])` -/
def P5631991791447157087.Spec : Prop :=
  ∀ n, P5631991791447157087.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P3553019652810930216

`A055396(p?[A329784(n+1)])`
-/

namespace A024707.P3553019652810930216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P3553019652810930216

namespace A024707

/-- `A055396(p?[A329784(n+1)])` -/
def P3553019652810930216.Spec : Prop :=
  ∀ n, P3553019652810930216.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P7610538281058176267

`eq[2, A010161(eq[1, A284289(n)])]`
-/

namespace A024707.P7610538281058176267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010161 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024707.P7610538281058176267

namespace A024707

/-- `eq[2, A010161(eq[1, A284289(n)])]` -/
def P7610538281058176267.Spec : Prop :=
  ∀ n, (P7610538281058176267.a n : ℤ) = A024707 (n + 1)

end A024707

/-! ## A024707.P1622123289049783493

`A003963(p?[A032766(n+1)+n])`
-/

namespace A024707.P1622123289049783493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P1622123289049783493

namespace A024707

/-- `A003963(p?[A032766(n+1)+n])` -/
def P1622123289049783493.Spec : Prop :=
  ∀ n, P1622123289049783493.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P6209712927617502067

`A026233(p?[A032766(n+1)+n])`
-/

namespace A024707.P6209712927617502067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P6209712927617502067

namespace A024707

/-- `A026233(p?[A032766(n+1)+n])` -/
def P6209712927617502067.Spec : Prop :=
  ∀ n, P6209712927617502067.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P15858747198508378232

`A026238(p?[A032766(n+1)+n])`
-/

namespace A024707.P15858747198508378232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024707.P15858747198508378232

namespace A024707

/-- `A026238(p?[A032766(n+1)+n])` -/
def P15858747198508378232.Spec : Prop :=
  ∀ n, P15858747198508378232.a n = A024707 (n + 1)

end A024707

/-! ## A024707.P6894906954296397165

`eq[1, A080891(A000040(n+1))]+1`
-/

namespace A024707.P6894906954296397165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024707.P6894906954296397165

namespace A024707

/-- `eq[1, A080891(A000040(n+1))]+1` -/
def P6894906954296397165.Spec : Prop :=
  ∀ n, (P6894906954296397165.a n : ℤ) = A024707 (n + 1)

end A024707

/-!
# A024708: Number of distinct prime divisors of n-th term of A024702.

The programs for A024708, the canonical program `A024708.P5871249470200672772` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024708 has offset 3).

The definition of A024708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024708.P5871249470200672772

`∑{p}[A024702(n+3), A001222(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A024708

/-- `∑{p}[A024702(n+3), A001222(#)]` -/
def P5871249470200672772.Spec : Prop :=
  ∀ n, P5871249470200672772.a n = A024708 (n + 3)

theorem P5871249470200672772.correct : P5871249470200672772.Spec := by
  intro n
  simp only [A024708, Nat.add_sub_cancel]

end A024708

/-! ## A024708.P5192086366014852667

`∑{p}[A061066(n+3)/3, A014189(#)+1]`
-/

namespace A024708.P5192086366014852667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061066 (n + 3) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (A014189 p + 1)

end

end A024708.P5192086366014852667

namespace A024708

/-- `∑{p}[A061066(n+3)/3, A014189(#)+1]` -/
def P5192086366014852667.Spec : Prop :=
  ∀ n, P5192086366014852667.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P11124950869065046254

`∑{e}[A061066(n+3)/3, A002144(#)%2]`
-/

namespace A024708.P11124950869065046254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061066 (n + 3) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Int.tmod (A002144 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)) 2

end

end A024708.P11124950869065046254

namespace A024708

/-- `∑{e}[A061066(n+3)/3, A002144(#)%2]` -/
def P11124950869065046254.Spec : Prop :=
  ∀ n, P11124950869065046254.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P10598991591756277154

`∑{e}[A061066(n+3)/3, A033553(#)%2]`
-/

namespace A024708.P10598991591756277154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061066 (n + 3) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Int.tmod (A033553 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)) 2

end

end A024708.P10598991591756277154

namespace A024708

/-- `∑{e}[A061066(n+3)/3, A033553(#)%2]` -/
def P10598991591756277154.Spec : Prop :=
  ∀ n, P10598991591756277154.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P537854692717334166

`∑{e}[A061066(n+3)/3, A133835(#)%2]`
-/

namespace A024708.P537854692717334166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061066 (n + 3) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Int.tmod (A133835 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)) 2

end

end A024708.P537854692717334166

namespace A024708

/-- `∑{e}[A061066(n+3)/3, A133835(#)%2]` -/
def P537854692717334166.Spec : Prop :=
  ∀ n, P537854692717334166.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P6245432186518588627

`∑{e}[A061066(n+3)/3, A145047(#)%2]`
-/

namespace A024708.P6245432186518588627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061066 (n + 3) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Int.tmod (A145047 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)) 2

end

end A024708.P6245432186518588627

namespace A024708

/-- `∑{e}[A061066(n+3)/3, A145047(#)%2]` -/
def P6245432186518588627.Spec : Prop :=
  ∀ n, P6245432186518588627.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P3028878239921724394

`A001222(∏{p}[A024702(n+3), #])`
-/

namespace A024708.P3028878239921724394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A024708.P3028878239921724394

namespace A024708

/-- `A001222(∏{p}[A024702(n+3), #])` -/
def P3028878239921724394.Spec : Prop :=
  ∀ n, P3028878239921724394.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P10798241091440127004

`A001222(∏{p}[A024700(n+1)/8, #])`
-/

namespace A024708.P10798241091440127004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024700 (n + 1) : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A024708.P10798241091440127004

namespace A024708

/-- `A001222(∏{p}[A024700(n+1)/8, #])` -/
def P10798241091440127004.Spec : Prop :=
  ∀ n, P10798241091440127004.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P10891812325194430267

`A001221(A024702(n+3))`
-/

namespace A024708.P10891812325194430267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A024702 (n + 3)).toNat

end

end A024708.P10891812325194430267

namespace A024708

/-- `A001221(A024702(n+3))` -/
def P10891812325194430267.Spec : Prop :=
  ∀ n, P10891812325194430267.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P4049389581151258703

`A001221(A081115(n+3)/2)`
-/

namespace A024708.P4049389581151258703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A081115 (n + 3) : ℚ) / 2)).toNat

end

end A024708.P4049389581151258703

namespace A024708

/-- `A001221(A081115(n+3)/2)` -/
def P4049389581151258703.Spec : Prop :=
  ∀ n, P4049389581151258703.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P8688960071298907416

`A001221(A084922(n+3)/4)`
-/

namespace A024708.P8688960071298907416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A084922 (n + 3) : ℚ) / 4)).toNat

end

end A024708.P8688960071298907416

namespace A024708

/-- `A001221(A084922(n+3)/4)` -/
def P8688960071298907416.Spec : Prop :=
  ∀ n, P8688960071298907416.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P5364597098091158950

`A001221(A024700(n+1)/8)`
-/

namespace A024708.P5364597098091158950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A024700 (n + 1) : ℚ) / 8)).toNat

end

end A024708.P5364597098091158950

namespace A024708

/-- `A001221(A024700(n+1)/8)` -/
def P5364597098091158950.Spec : Prop :=
  ∀ n, P5364597098091158950.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P10989741987130828240

`A001221(A008742(A004139(n+1)))`
-/

namespace A024708.P10989741987130828240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008742 (A004139 (n + 1)).toNat).toNat

end

end A024708.P10989741987130828240

namespace A024708

/-- `A001221(A008742(A004139(n+1)))` -/
def P10989741987130828240.Spec : Prop :=
  ∀ n, P10989741987130828240.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P5086290204443914596

`A001221(A027626(A089038(n+1)))`
-/

namespace A024708.P5086290204443914596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027626 (A089038 (n + 1)).toNat).toNat

end

end A024708.P5086290204443914596

namespace A024708

/-- `A001221(A027626(A089038(n+1)))` -/
def P5086290204443914596.Spec : Prop :=
  ∀ n, P5086290204443914596.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P7810231987701460051

`A001221(A008742(A045319(n+2)))`
-/

namespace A024708.P7810231987701460051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008742 (A045319 (n + 2)).toNat).toNat

end

end A024708.P7810231987701460051

namespace A024708

/-- `A001221(A008742(A045319(n+2)))` -/
def P7810231987701460051.Spec : Prop :=
  ∀ n, P7810231987701460051.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P821699070895168506

`A001221(A008742(A045344(n+2)))`
-/

namespace A024708.P821699070895168506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008742 (A045344 (n + 2)).toNat).toNat

end

end A024708.P821699070895168506

namespace A024708

/-- `A001221(A008742(A045344(n+2)))` -/
def P821699070895168506.Spec : Prop :=
  ∀ n, P821699070895168506.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P3573108009375526542

`A001221(A001840(A067076(n+2)))`
-/

namespace A024708.P3573108009375526542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001840 (A067076 (n + 2)).toNat).toNat

end

end A024708.P3573108009375526542

namespace A024708

/-- `A001221(A001840(A067076(n+2)))` -/
def P3573108009375526542.Spec : Prop :=
  ∀ n, P3573108009375526542.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P2527672057919074322

`A001221(A008742(A065091(n+2)))`
-/

namespace A024708.P2527672057919074322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008742 (A065091 (n + 2)).toNat).toNat

end

end A024708.P2527672057919074322

namespace A024708

/-- `A001221(A008742(A065091(n+2)))` -/
def P2527672057919074322.Spec : Prop :=
  ∀ n, P2527672057919074322.a n = A024708 (n + 3)

end A024708

/-! ## A024708.P4337457964790864632

`A001221(A007997(A089192(n+2)))`
-/

namespace A024708.P4337457964790864632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007997 (A089192 (n + 2)).toNat).toNat

end

end A024708.P4337457964790864632

namespace A024708

/-- `A001221(A007997(A089192(n+2)))` -/
def P4337457964790864632.Spec : Prop :=
  ∀ n, P4337457964790864632.a n = A024708 (n + 3)

end A024708

/-!
# A024709: Least prime divisor of A024702(n).

The programs for A024709, there is no canonical definition to state claims against.
-/

/-! ## A024709.P9356082855848763156

`A020639(∏{p}[A024702(n+4), #])`
-/

namespace A024709.P9356082855848763156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A024709.P9356082855848763156

/-! ## A024709.P5220827470136525182

`A020639(∏{p}[A081115(n+4)/2, #])`
-/

namespace A024709.P5220827470136525182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081115 (n + 4) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A024709.P5220827470136525182

/-! ## A024709.P17912333332217725832

`A020639(A024702(n+4))`
-/

namespace A024709.P17912333332217725832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024702 (n + 4)).toNat

end

end A024709.P17912333332217725832

/-! ## A024709.P13898861957304224862

`A020639(A081115(n+4)/2)`
-/

namespace A024709.P13898861957304224862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A081115 (n + 4) : ℚ) / 2)).toNat

end

end A024709.P13898861957304224862

/-! ## A024709.P2304715111761929216

`A020639(A024701(n+3)/6)`
-/

namespace A024709.P2304715111761929216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A024701 (n + 3) : ℚ) / 6)).toNat

end

end A024709.P2304715111761929216

/-! ## A024709.P17078615686585011239

`A020639(∑[A075888(n+3)]+1)`
-/

namespace A024709.P17078615686585011239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A024709.P17078615686585011239

/-! ## A024709.P10833297146463007530

`A020639(A008742(A004139(n+2)))`
-/

namespace A024709.P10833297146463007530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008742 (A004139 (n + 2)).toNat).toNat

end

end A024709.P10833297146463007530

/-! ## A024709.P18181099658762559007

`A020639(A027626(A089038(n+2)))`
-/

namespace A024709.P18181099658762559007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A027626 (A089038 (n + 2)).toNat).toNat

end

end A024709.P18181099658762559007

/-! ## A024709.P10580502834248958287

`A020639(A008731(A173064(n+4)))`
-/

namespace A024709.P10580502834248958287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008731 (A173064 (n + 4)).toNat).toNat

end

end A024709.P10580502834248958287

/-! ## A024709.P8919010187728095105

`A020639(A000217(A005097(n+3))/3)`
-/

namespace A024709.P8919010187728095105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A000217 (A005097 (n + 3)).toNat : ℚ) / 3)).toNat

end

end A024709.P8919010187728095105

/-! ## A024709.P15682393272810115960

`A020639(A161680(A006254(n+3))/3)`
-/

namespace A024709.P15682393272810115960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A161680 (A006254 (n + 3)).toNat : ℚ) / 3)).toNat

end

end A024709.P15682393272810115960

/-!
# A024710: Greatest prime divisor of A024702(n).

The programs for A024710, the canonical program `A024710.P12335000155047876747` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024710 has offset 4).

The definition of A024710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024710.P12335000155047876747

`A087713(n+4)-A000007(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024710

/-- `A087713(n+4)-A000007(n)` -/
def P12335000155047876747.Spec : Prop :=
  ∀ n, P12335000155047876747.a n = A024710 (n + 4)

theorem P12335000155047876747.correct : P12335000155047876747.Spec := by
  intro n
  simp only [A024710, Nat.add_sub_cancel]

end A024710

/-! ## A024710.P12507605495821378592

`A087713(n+4)-(A057428(n)+1)`
-/

namespace A024710.P12507605495821378592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087713 (n + 4) - (A057428 n + 1)

end

end A024710.P12507605495821378592

namespace A024710

/-- `A087713(n+4)-(A057428(n)+1)` -/
def P12507605495821378592.Spec : Prop :=
  ∀ n, P12507605495821378592.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P17557680007722398990

`A087713(n+4)+n-A028310(n)`
-/

namespace A024710.P17557680007722398990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087713 (n + 4) + ((n : ℤ) - A028310 n)

end

end A024710.P17557680007722398990

namespace A024710

/-- `A087713(n+4)+n-A028310(n)` -/
def P17557680007722398990.Spec : Prop :=
  ∀ n, P17557680007722398990.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P900491171181697600

`A020639(A087713(n+4)+A000007(n))`
-/

namespace A024710.P900491171181697600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A087713 (n + 4) + A000007 n).toNat

end

end A024710.P900491171181697600

namespace A024710

/-- `A020639(A087713(n+4)+A000007(n))` -/
def P900491171181697600.Spec : Prop :=
  ∀ n, P900491171181697600.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P9812605918409320590

`A006530(A379445(n+4))-A000007(n)`
-/

namespace A024710.P9812605918409320590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A379445 (n + 4)).toNat - A000007 n

end

end A024710.P9812605918409320590

namespace A024710

/-- `A006530(A379445(n+4))-A000007(n)` -/
def P9812605918409320590.Spec : Prop :=
  ∀ n, P9812605918409320590.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P1505128753662732768

`A006530(A024702(n+4))`
-/

namespace A024710.P1505128753662732768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024702 (n + 4)).toNat

end

end A024710.P1505128753662732768

namespace A024710

/-- `A006530(A024702(n+4))` -/
def P1505128753662732768.Spec : Prop :=
  ∀ n, P1505128753662732768.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P1124817167669860278

`A006530(A081115(n+4)/2)`
-/

namespace A024710.P1124817167669860278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A081115 (n + 4) : ℚ) / 2)).toNat

end

end A024710.P1124817167669860278

namespace A024710

/-- `A006530(A081115(n+4)/2)` -/
def P1124817167669860278.Spec : Prop :=
  ∀ n, P1124817167669860278.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P5484019335666601802

`A006530(A084922(n+4)/4)`
-/

namespace A024710.P5484019335666601802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A084922 (n + 4) : ℚ) / 4)).toNat

end

end A024710.P5484019335666601802

namespace A024710

/-- `A006530(A084922(n+4)/4)` -/
def P5484019335666601802.Spec : Prop :=
  ∀ n, P5484019335666601802.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P8155839198308346378

`A006530(∑[A075888(n+3)]+1)`
-/

namespace A024710.P8155839198308346378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A024710.P8155839198308346378

namespace A024710

/-- `A006530(∑[A075888(n+3)]+1)` -/
def P8155839198308346378.Spec : Prop :=
  ∀ n, P8155839198308346378.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P11038262128037760875

`A006530(A008742(A004139(n+2)))`
-/

namespace A024710.P11038262128037760875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008742 (A004139 (n + 2)).toNat).toNat

end

end A024710.P11038262128037760875

namespace A024710

/-- `A006530(A008742(A004139(n+2)))` -/
def P11038262128037760875.Spec : Prop :=
  ∀ n, P11038262128037760875.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P15416732598462027236

`A006530(A027626(A089038(n+2)))`
-/

namespace A024710.P15416732598462027236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027626 (A089038 (n + 2)).toNat).toNat

end

end A024710.P15416732598462027236

namespace A024710

/-- `A006530(A027626(A089038(n+2)))` -/
def P15416732598462027236.Spec : Prop :=
  ∀ n, P15416732598462027236.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P2428337988438674287

`A006530(A008731(A173064(n+4)))`
-/

namespace A024710.P2428337988438674287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008731 (A173064 (n + 4)).toNat).toNat

end

end A024710.P2428337988438674287

namespace A024710

/-- `A006530(A008731(A173064(n+4)))` -/
def P2428337988438674287.Spec : Prop :=
  ∀ n, P2428337988438674287.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P14569908912789171269

`A006530(A081115(n+4))`
-/

namespace A024710.P14569908912789171269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A081115 (n + 4)).toNat

end

end A024710.P14569908912789171269

namespace A024710

/-- `A006530(A081115(n+4))` -/
def P14569908912789171269.Spec : Prop :=
  ∀ n, P14569908912789171269.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P6059100811222307579

`A006530(A024700(n+2)/4)`
-/

namespace A024710.P6059100811222307579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A024700 (n + 2) : ℚ) / 4)).toNat

end

end A024710.P6059100811222307579

namespace A024710

/-- `A006530(A024700(n+2)/4)` -/
def P6059100811222307579.Spec : Prop :=
  ∀ n, P6059100811222307579.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P8842974790002972113

`A006530(A008724(A000040(n+4)))`
-/

namespace A024710.P8842974790002972113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008724 (A000040 (n + 4)).toNat).toNat

end

end A024710.P8842974790002972113

namespace A024710

/-- `A006530(A008724(A000040(n+4)))` -/
def P8842974790002972113.Spec : Prop :=
  ∀ n, P8842974790002972113.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P3701647841505003289

`A006530(A000212(A000040(n+4))/4)`
-/

namespace A024710.P3701647841505003289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000212 (A000040 (n + 4)).toNat : ℚ) / 4)).toNat

end

end A024710.P3701647841505003289

namespace A024710

/-- `A006530(A000212(A000040(n+4))/4)` -/
def P3701647841505003289.Spec : Prop :=
  ∀ n, P3701647841505003289.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P12313591105073918981

`A006530(A001399(eq[2, A266620(n+1)-(n+1)]))`
-/

namespace A024710.P12313591105073918981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A024710.P12313591105073918981

namespace A024710

/-- `A006530(A001399(eq[2, A266620(n+1)-(n+1)]))` -/
def P12313591105073918981.Spec : Prop :=
  ∀ n, P12313591105073918981.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P17578226592064854419

`A006530(A084922(n+4))`
-/

namespace A024710.P17578226592064854419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084922 (n + 4)).toNat

end

end A024710.P17578226592064854419

namespace A024710

/-- `A006530(A084922(n+4))` -/
def P17578226592064854419.Spec : Prop :=
  ∀ n, P17578226592064854419.a n = A024710 (n + 4)

end A024710

/-! ## A024710.P4844100935377064492

`A006530(A062717(A181709(n+2)))`
-/

namespace A024710.P4844100935377064492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062717 (A181709 (n + 2)).toNat).toNat

end

end A024710.P4844100935377064492

namespace A024710

/-- `A006530(A062717(A181709(n+2)))` -/
def P4844100935377064492.Spec : Prop :=
  ∀ n, P4844100935377064492.a n = A024710 (n + 4)

end A024710

/-!
# A024711: a(n) = residue mod 2 of n-th term of A024702.

The programs for A024711, the canonical program `A024711.P16972264116986831310` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024711 has offset 3).

The definition of A024711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024711.P16972264116986831310

`A024702(n+3)%2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024711

/-- `A024702(n+3)%2` -/
def P16972264116986831310.Spec : Prop :=
  ∀ n, P16972264116986831310.a n = A024711 (n + 3)

theorem P16972264116986831310.correct : P16972264116986831310.Spec := by
  intro n
  simp only [A024711, Nat.add_sub_cancel]

end A024711

/-! ## A024711.P7709913182217512042

`char[A024705(n+1)-3]`
-/

namespace A024711.P7709913182217512042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024705 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A024711.P7709913182217512042

namespace A024711

/-- `char[A024705(n+1)-3]` -/
def P7709913182217512042.Spec : Prop :=
  ∀ n, (P7709913182217512042.a n : ℤ) = A024711 (n + 3)

end A024711

/-! ## A024711.P17654311436818974288

`A084928(val(A084922(n+3), 2))`
-/

namespace A024711.P17654311436818974288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084928 (SequenceMachineLib.valuation (A084922 (n + 3)).toNat 2)

end

end A024711.P17654311436818974288

namespace A024711

/-- `A084928(val(A084922(n+3), 2))` -/
def P17654311436818974288.Spec : Prop :=
  ∀ n, P17654311436818974288.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P780103531540368584

`and(A024702(n+3), A060576(n))`
-/

namespace A024711.P780103531540368584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024702 (n + 3)) (A060576 n)

end

end A024711.P780103531540368584

namespace A024711

/-- `and(A024702(n+3), A060576(n))` -/
def P780103531540368584.Spec : Prop :=
  ∀ n, P780103531540368584.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P10888889006163723841

`and(A024702(n+3), A158388(n))`
-/

namespace A024711.P10888889006163723841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024702 (n + 3)) (A158388 n)

end

end A024711.P10888889006163723841

namespace A024711

/-- `and(A024702(n+3), A158388(n))` -/
def P10888889006163723841.Spec : Prop :=
  ∀ n, P10888889006163723841.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P17089429422536099239

`A024698(n+2)%2`
-/

namespace A024711.P17089429422536099239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024698 (n + 2)) 2

end

end A024711.P17089429422536099239

namespace A024711

/-- `A024698(n+2)%2` -/
def P17089429422536099239.Spec : Prop :=
  ∀ n, P17089429422536099239.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P7467466427015917624

`A001917(n+3)%2`
-/

namespace A024711.P7467466427015917624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001917 (n + 3)) 2

end

end A024711.P7467466427015917624

namespace A024711

/-- `A001917(n+3)%2` -/
def P7467466427015917624.Spec : Prop :=
  ∀ n, P7467466427015917624.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P10441190129541364774

`A054505(n+3)%2`
-/

namespace A024711.P10441190129541364774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054505 (n + 3)) 2

end

end A024711.P10441190129541364774

namespace A024711

/-- `A054505(n+3)%2` -/
def P10441190129541364774.Spec : Prop :=
  ∀ n, P10441190129541364774.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P766750640543823954

`A061066(n+3)%2`
-/

namespace A024711.P766750640543823954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061066 (n + 3)) 2

end

end A024711.P766750640543823954

namespace A024711

/-- `A061066(n+3)%2` -/
def P766750640543823954.Spec : Prop :=
  ∀ n, P766750640543823954.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P9423156558976504828

`A127922(n+3)%2`
-/

namespace A024711.P9423156558976504828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127922 (n + 3)) 2

end

end A024711.P9423156558976504828

namespace A024711

/-- `A127922(n+3)%2` -/
def P9423156558976504828.Spec : Prop :=
  ∀ n, P9423156558976504828.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P11458556978221875826

`and(1, A024701(n+2)/2)`
-/

namespace A024711.P11458556978221875826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((A024701 (n + 2) : ℚ) / 2))

end

end A024711.P11458556978221875826

namespace A024711

/-- `and(1, A024701(n+2)/2)` -/
def P11458556978221875826.Spec : Prop :=
  ∀ n, P11458556978221875826.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P16010290459416315845

`and(2, A006254(n+2))/2`
-/

namespace A024711.P16010290459416315845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A006254 (n + 2)) : ℚ) / 2

end

end A024711.P16010290459416315845

namespace A024711

/-- `and(2, A006254(n+2))/2` -/
def P16010290459416315845.Spec : Prop :=
  ∀ n, P16010290459416315845.a n = (A024711 (n + 3) : ℚ)

end A024711

/-! ## A024711.P11149870786369450941

`and(2, A098605(n+2))/2`
-/

namespace A024711.P11149870786369450941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A098605 (n + 2)) : ℚ) / 2

end

end A024711.P11149870786369450941

namespace A024711

/-- `and(2, A098605(n+2))/2` -/
def P11149870786369450941.Spec : Prop :=
  ∀ n, P11149870786369450941.a n = (A024711 (n + 3) : ℚ)

end A024711

/-! ## A024711.P4427659368353436515

`and(4, A352851(n+2))/4`
-/

namespace A024711.P4427659368353436515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 4 (A352851 (n + 2)) : ℚ) / 4

end

end A024711.P4427659368353436515

namespace A024711

/-- `and(4, A352851(n+2))/4` -/
def P4427659368353436515.Spec : Prop :=
  ∀ n, P4427659368353436515.a n = (A024711 (n + 3) : ℚ)

end A024711

/-! ## A024711.P1588516696605110002

`A000035(A001917(n+3))`
-/

namespace A024711.P1588516696605110002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001917 (n + 3)).toNat

end

end A024711.P1588516696605110002

namespace A024711

/-- `A000035(A001917(n+3))` -/
def P1588516696605110002.Spec : Prop :=
  ∀ n, P1588516696605110002.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P11714451162434754863

`A138436(n+3)%2`
-/

namespace A024711.P11714451162434754863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138436 (n + 3)) 2

end

end A024711.P11714451162434754863

namespace A024711

/-- `A138436(n+3)%2` -/
def P11714451162434754863.Spec : Prop :=
  ∀ n, P11714451162434754863.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P9732610933611602974

`A138438(n+3)%2`
-/

namespace A024711.P9732610933611602974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138438 (n + 3)) 2

end

end A024711.P9732610933611602974

namespace A024711

/-- `A138438(n+3)%2` -/
def P9732610933611602974.Spec : Prop :=
  ∀ n, P9732610933611602974.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P2926006322142667698

`A138457(n+3)%2`
-/

namespace A024711.P2926006322142667698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138457 (n + 3)) 2

end

end A024711.P2926006322142667698

namespace A024711

/-- `A138457(n+3)%2` -/
def P2926006322142667698.Spec : Prop :=
  ∀ n, P2926006322142667698.a n = A024711 (n + 3)

end A024711

/-! ## A024711.P15585834291314647174

`A138458(n+3)%2`
-/

namespace A024711.P15585834291314647174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138458 (n + 3)) 2

end

end A024711.P15585834291314647174

namespace A024711

/-- `A138458(n+3)%2` -/
def P15585834291314647174.Spec : Prop :=
  ∀ n, P15585834291314647174.a n = A024711 (n + 3)

end A024711

/-!
# A024712: a(n) = residue mod 3 of n-th term of A024702.

The programs for A024712, the canonical program `A024712.P13920250056796469756` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024712 has offset 3).

The definition of A024712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024712.P3245237395095610230

`A024702(n+3)%3`
-/

namespace A024712.P3245237395095610230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024702 (n + 3)) 3

end

end A024712.P3245237395095610230

namespace A024712

/-- `A024702(n+3)%3` -/
def P3245237395095610230.Spec : Prop :=
  ∀ n, P3245237395095610230.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P9973025708397496107

`A084922(n+3)%3`
-/

namespace A024712.P9973025708397496107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084922 (n + 3)) 3

end

end A024712.P9973025708397496107

namespace A024712

/-- `A084922(n+3)%3` -/
def P9973025708397496107.Spec : Prop :=
  ∀ n, P9973025708397496107.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P13920250056796469756

`(A024700(n+1)/2)%3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024712

/-- `(A024700(n+1)/2)%3` -/
def P13920250056796469756.Spec : Prop :=
  ∀ n, P13920250056796469756.a n = A024712 (n + 3)

theorem P13920250056796469756.correct : P13920250056796469756.Spec := by
  intro n
  simp only [A024712, Nat.add_sub_cancel]

end A024712

/-! ## A024712.P804887506359842852

`(2*A081115(n+3))%3`
-/

namespace A024712.P804887506359842852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A081115 (n + 3)) 3

end

end A024712.P804887506359842852

namespace A024712

/-- `(2*A081115(n+3))%3` -/
def P804887506359842852.Spec : Prop :=
  ∀ n, P804887506359842852.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P3368114807597864913

`A138421(n+3)%3`
-/

namespace A024712.P3368114807597864913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138421 (n + 3)) 3

end

end A024712.P3368114807597864913

namespace A024712

/-- `A138421(n+3)%3` -/
def P3368114807597864913.Spec : Prop :=
  ∀ n, P3368114807597864913.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P17864001390065914190

`A138442(n+3)%3`
-/

namespace A024712.P17864001390065914190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138442 (n + 3)) 3

end

end A024712.P17864001390065914190

namespace A024712

/-- `A138442(n+3)%3` -/
def P17864001390065914190.Spec : Prop :=
  ∀ n, P17864001390065914190.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P16208937557220535944

`A138447(n+3)%3`
-/

namespace A024712.P16208937557220535944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138447 (n + 3)) 3

end

end A024712.P16208937557220535944

namespace A024712

/-- `A138447(n+3)%3` -/
def P16208937557220535944.Spec : Prop :=
  ∀ n, P16208937557220535944.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P7188568015464232666

`A138450(n+3)%3`
-/

namespace A024712.P7188568015464232666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138450 (n + 3)) 3

end

end A024712.P7188568015464232666

namespace A024712

/-- `A138450(n+3)%3` -/
def P7188568015464232666.Spec : Prop :=
  ∀ n, P7188568015464232666.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P18296790148851069578

`A138456(n+3)%3`
-/

namespace A024712.P18296790148851069578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138456 (n + 3)) 3

end

end A024712.P18296790148851069578

namespace A024712

/-- `A138456(n+3)%3` -/
def P18296790148851069578.Spec : Prop :=
  ∀ n, P18296790148851069578.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P10696956542603011683

`A138458(n+3)%3`
-/

namespace A024712.P10696956542603011683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138458 (n + 3)) 3

end

end A024712.P10696956542603011683

namespace A024712

/-- `A138458(n+3)%3` -/
def P10696956542603011683.Spec : Prop :=
  ∀ n, P10696956542603011683.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P10280678522147054096

`(A084921(n+3)/3)%3`
-/

namespace A024712.P10280678522147054096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A084921 (n + 3) : ℚ) / 3)) 3

end

end A024712.P10280678522147054096

namespace A024712

/-- `(A084921(n+3)/3)%3` -/
def P10280678522147054096.Spec : Prop :=
  ∀ n, P10280678522147054096.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P2287645301972827651

`9%dr(A000040(n+3)^4)`
-/

namespace A024712.P2287645301972827651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 % SequenceMachineLib.digitalRoot (A000040 (n + 3) ^ 4)

end

end A024712.P2287645301972827651

namespace A024712

/-- `9%dr(A000040(n+3)^4)` -/
def P2287645301972827651.Spec : Prop :=
  ∀ n, (P2287645301972827651.a n : ℤ) = A024712 (n + 3)

end A024712

/-! ## A024712.P13913594677242019808

`3-A040248(A000040(n+3))`
-/

namespace A024712.P13913594677242019808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A040248 (A000040 (n + 3)).toNat

end

end A024712.P13913594677242019808

namespace A024712

/-- `3-A040248(A000040(n+3))` -/
def P13913594677242019808.Spec : Prop :=
  ∀ n, P13913594677242019808.a n = A024712 (n + 3)

end A024712

/-! ## A024712.P10447286296304267826

`(A062717(n+2)+A171140(n+1)-A164097(n+1))%3`
-/

namespace A024712.P10447286296304267826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062717 (n + 2) + (A171140 (n + 1) - A164097 (n + 1))) 3

end

end A024712.P10447286296304267826

namespace A024712

/-- `(A062717(n+2)+A171140(n+1)-A164097(n+1))%3` -/
def P10447286296304267826.Spec : Prop :=
  ∀ n, P10447286296304267826.a n = A024712 (n + 3)

end A024712

/-!
# A024713: a(n) = residue mod 5 of n-th term of A024702.

The programs for A024713, the canonical program `A024713.P1693480862469099154` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024713 has offset 3).

The definition of A024713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024713.P6599957947427487781

`A024702(n+3)%5`
-/

namespace A024713.P6599957947427487781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024702 (n + 3)) 5

end

end A024713.P6599957947427487781

namespace A024713

/-- `A024702(n+3)%5` -/
def P6599957947427487781.Spec : Prop :=
  ∀ n, P6599957947427487781.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P4582635748825806602

`(A081115(n+3)/2)%5`
-/

namespace A024713.P4582635748825806602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A081115 (n + 3) : ℚ) / 2)) 5

end

end A024713.P4582635748825806602

namespace A024713

/-- `(A081115(n+3)/2)%5` -/
def P4582635748825806602.Spec : Prop :=
  ∀ n, P4582635748825806602.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P7050014979555727190

`(A084922(n+3)/4)%5`
-/

namespace A024713.P7050014979555727190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A084922 (n + 3) : ℚ) / 4)) 5

end

end A024713.P7050014979555727190

namespace A024713

/-- `(A084922(n+3)/4)%5` -/
def P7050014979555727190.Spec : Prop :=
  ∀ n, P7050014979555727190.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P1693480862469099154

`(A024700(n+1)/8)%5`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024713

/-- `(A024700(n+1)/8)%5` -/
def P1693480862469099154.Spec : Prop :=
  ∀ n, P1693480862469099154.a n = A024713 (n + 3)

theorem P1693480862469099154.correct : P1693480862469099154.Spec := by
  intro n
  simp only [A024713, Nat.add_sub_cancel]

end A024713

/-! ## A024713.P15211176840039904863

`A024701(n+2)%5`
-/

namespace A024713.P15211176840039904863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024701 (n + 2)) 5

end

end A024713.P15211176840039904863

namespace A024713

/-- `A024701(n+2)%5` -/
def P15211176840039904863.Spec : Prop :=
  ∀ n, P15211176840039904863.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P8645829622915374400

`A137831(n+3)%3`
-/

namespace A024713.P8645829622915374400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137831 (n + 3)) 3

end

end A024713.P8645829622915374400

namespace A024713

/-- `A137831(n+3)%3` -/
def P8645829622915374400.Spec : Prop :=
  ∀ n, P8645829622915374400.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P3922728209090889878

`A060429(n+3)%5`
-/

namespace A024713.P3922728209090889878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060429 (n + 3)) 5

end

end A024713.P3922728209090889878

namespace A024713

/-- `A060429(n+3)%5` -/
def P3922728209090889878.Spec : Prop :=
  ∀ n, P3922728209090889878.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P5484468386117568910

`11%A137807(n+3)`
-/

namespace A024713.P5484468386117568910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A137807 (n + 3))

end

end A024713.P5484468386117568910

namespace A024713

/-- `11%A137807(n+3)` -/
def P5484468386117568910.Spec : Prop :=
  ∀ n, P5484468386117568910.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P4033788843701436557

`floor(A000040(n+3)²%10/4)`
-/

namespace A024713.P4033788843701436557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A000040 (n + 3) ^ 2) 10 : ℚ) / 4⌋

end

end A024713.P4033788843701436557

namespace A024713

/-- `floor(A000040(n+3)²%10/4)` -/
def P4033788843701436557.Spec : Prop :=
  ∀ n, P4033788843701436557.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P18213959408505545433

`A001318(A181709(n+1)-1)%5`
-/

namespace A024713.P18213959408505545433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001318 (A181709 (n + 1) - 1).toNat) 5

end

end A024713.P18213959408505545433

namespace A024713

/-- `A001318(A181709(n+1)-1)%5` -/
def P18213959408505545433.Spec : Prop :=
  ∀ n, P18213959408505545433.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P12724904461153105807

`A053796(A005097(n+2))`
-/

namespace A024713.P12724904461153105807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053796 (A005097 (n + 2)).toNat

end

end A024713.P12724904461153105807

namespace A024713

/-- `A053796(A005097(n+2))` -/
def P12724904461153105807.Spec : Prop :=
  ∀ n, P12724904461153105807.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P15362936217798950865

`A053796(A097069(n+2))`
-/

namespace A024713.P15362936217798950865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053796 (A097069 (n + 2)).toNat

end

end A024713.P15362936217798950865

namespace A024713

/-- `A053796(A097069(n+2))` -/
def P15362936217798950865.Spec : Prop :=
  ∀ n, P15362936217798950865.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P10333442405618151801

`A053796(A097932(n+2))`
-/

namespace A024713.P10333442405618151801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053796 (A097932 (n + 2)).toNat

end

end A024713.P10333442405618151801

namespace A024713

/-- `A053796(A097932(n+2))` -/
def P10333442405618151801.Spec : Prop :=
  ∀ n, P10333442405618151801.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P18259363509807601440

`floor(record[A014963(n+5)²]%10/4)`
-/

namespace A024713.P18259363509807601440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10 : ℚ) / 4⌋

end

end A024713.P18259363509807601440

namespace A024713

/-- `floor(record[A014963(n+5)²]%10/4)` -/
def P18259363509807601440.Spec : Prop :=
  ∀ n, P18259363509807601440.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P179244058306872842

`1-A100047(A065091(n+2))`
-/

namespace A024713.P179244058306872842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100047 (A065091 (n + 2)).toNat

end

end A024713.P179244058306872842

namespace A024713

/-- `1-A100047(A065091(n+2))` -/
def P179244058306872842.Spec : Prop :=
  ∀ n, P179244058306872842.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P8103864474154232648

`2-A091398(p?[A064429(2*n)])`
-/

namespace A024713.P8103864474154232648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A091398 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024713.P8103864474154232648

namespace A024713

/-- `2-A091398(p?[A064429(2*n)])` -/
def P8103864474154232648.Spec : Prop :=
  ∀ n, P8103864474154232648.a n = A024713 (n + 3)

end A024713

/-! ## A024713.P9975672795361769524

`2-A086937(n+3)`
-/

namespace A024713.P9975672795361769524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A086937 (n + 3)

end

end A024713.P9975672795361769524

namespace A024713

/-- `2-A086937(n+3)` -/
def P9975672795361769524.Spec : Prop :=
  ∀ n, P9975672795361769524.a n = A024713 (n + 3)

end A024713

/-!
# A024714: a(n) = residue mod 7 of n-th term of A024702.

The programs for A024714, the canonical program `A024714.P6602538012905876606` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024714 has offset 3).

The definition of A024714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024714.P6602538012905876606

`A024700(n+1)%7`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024714

/-- `A024700(n+1)%7` -/
def P6602538012905876606.Spec : Prop :=
  ∀ n, P6602538012905876606.a n = A024714 (n + 3)

theorem P6602538012905876606.correct : P6602538012905876606.Spec := by
  intro n
  simp only [A024714, Nat.add_sub_cancel]

end A024714

/-! ## A024714.P17815546568672406776

`A024702(n+3)%7`
-/

namespace A024714.P17815546568672406776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024702 (n + 3)) 7

end

end A024714.P17815546568672406776

namespace A024714

/-- `A024702(n+3)%7` -/
def P17815546568672406776.Spec : Prop :=
  ∀ n, P17815546568672406776.a n = A024714 (n + 3)

end A024714

/-! ## A024714.P4357890732755691784

`(2*A084922(n+3))%7`
-/

namespace A024714.P4357890732755691784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A084922 (n + 3)) 7

end

end A024714.P4357890732755691784

namespace A024714

/-- `(2*A084922(n+3))%7` -/
def P4357890732755691784.Spec : Prop :=
  ∀ n, P4357890732755691784.a n = A024714 (n + 3)

end A024714

/-! ## A024714.P12317726922579731368

`(A081115(n+3)/2)%7`
-/

namespace A024714.P12317726922579731368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A081115 (n + 3) : ℚ) / 2)) 7

end

end A024714.P12317726922579731368

namespace A024714

/-- `(A081115(n+3)/2)%7` -/
def P12317726922579731368.Spec : Prop :=
  ∀ n, P12317726922579731368.a n = A024714 (n + 3)

end A024714

/-! ## A024714.P12059220779161530577

`floor(A000040(n+3)²/3)%7`
-/

namespace A024714.P12059220779161530577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000040 (n + 3) ^ 2 : ℚ) / 3⌋ 7

end

end A024714.P12059220779161530577

namespace A024714

/-- `floor(A000040(n+3)²/3)%7` -/
def P12059220779161530577.Spec : Prop :=
  ∀ n, P12059220779161530577.a n = A024714 (n + 3)

end A024714

/-! ## A024714.P15367719422300244809

`A000212(A000040(n+3))%7`
-/

namespace A024714.P15367719422300244809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000212 (A000040 (n + 3)).toNat) 7

end

end A024714.P15367719422300244809

namespace A024714

/-- `A000212(A000040(n+3))%7` -/
def P15367719422300244809.Spec : Prop :=
  ∀ n, P15367719422300244809.a n = A024714 (n + 3)

end A024714

/-! ## A024714.P1673556563921057601

`A010876(A024702(n+3))`
-/

namespace A024714.P1673556563921057601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A024702 (n + 3)).toNat

end

end A024714.P1673556563921057601

namespace A024714

/-- `A010876(A024702(n+3))` -/
def P1673556563921057601.Spec : Prop :=
  ∀ n, P1673556563921057601.a n = A024714 (n + 3)

end A024714

/-!
# A024715: a(n) = residue mod 11 of n-th term of A024702.

The programs for A024715, the canonical program `A024715.P948663604118300273` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024715 has offset 3).

The definition of A024715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024715.P948663604118300273

`A024702(n+3)%11`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024715

/-- `A024702(n+3)%11` -/
def P948663604118300273.Spec : Prop :=
  ∀ n, P948663604118300273.a n = A024715 (n + 3)

theorem P948663604118300273.correct : P948663604118300273.Spec := by
  intro n
  simp only [A024715, Nat.add_sub_cancel]

end A024715

/-! ## A024715.P5670015016180185808

`(A081115(n+3)/2)%11`
-/

namespace A024715.P5670015016180185808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A081115 (n + 3) : ℚ) / 2)) 11

end

end A024715.P5670015016180185808

namespace A024715

/-- `(A081115(n+3)/2)%11` -/
def P5670015016180185808.Spec : Prop :=
  ∀ n, P5670015016180185808.a n = A024715 (n + 3)

end A024715

/-! ## A024715.P12177353678101877621

`(A084922(n+3)/4)%11`
-/

namespace A024715.P12177353678101877621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A084922 (n + 3) : ℚ) / 4)) 11

end

end A024715.P12177353678101877621

namespace A024715

/-- `(A084922(n+3)/4)%11` -/
def P12177353678101877621.Spec : Prop :=
  ∀ n, P12177353678101877621.a n = A024715 (n + 3)

end A024715

/-! ## A024715.P133002354569981794

`(A066885(n+3)-1)%11`
-/

namespace A024715.P133002354569981794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066885 (n + 3) - 1) 11

end

end A024715.P133002354569981794

namespace A024715

/-- `(A066885(n+3)-1)%11` -/
def P133002354569981794.Spec : Prop :=
  ∀ n, P133002354569981794.a n = A024715 (n + 3)

end A024715

/-! ## A024715.P16280114666969998415

`A084920(n+3)%22/2`
-/

namespace A024715.P16280114666969998415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A084920 (n + 3)) 22 : ℚ) / 2

end

end A024715.P16280114666969998415

namespace A024715

/-- `A084920(n+3)%22/2` -/
def P16280114666969998415.Spec : Prop :=
  ∀ n, P16280114666969998415.a n = (A024715 (n + 3) : ℚ)

end A024715

/-! ## A024715.P2769172505586975243

`A008742(A004139(n+1))%11`
-/

namespace A024715.P2769172505586975243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008742 (A004139 (n + 1)).toNat) 11

end

end A024715.P2769172505586975243

namespace A024715

/-- `A008742(A004139(n+1))%11` -/
def P2769172505586975243.Spec : Prop :=
  ∀ n, P2769172505586975243.a n = A024715 (n + 3)

end A024715

/-! ## A024715.P7564970060034460478

`A152947(A172367(n+1))%11`
-/

namespace A024715.P7564970060034460478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152947 (A172367 (n + 1)).toNat) 11

end

end A024715.P7564970060034460478

namespace A024715

/-- `A152947(A172367(n+1))%11` -/
def P7564970060034460478.Spec : Prop :=
  ∀ n, P7564970060034460478.a n = A024715 (n + 3)

end A024715

/-! ## A024715.P10012751218926315205

`A007590(record[A076567(n+1)])%11`
-/

namespace A024715.P10012751218926315205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007590 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 11

end

end A024715.P10012751218926315205

namespace A024715

/-- `A007590(record[A076567(n+1)])%11` -/
def P10012751218926315205.Spec : Prop :=
  ∀ n, P10012751218926315205.a n = A024715 (n + 3)

end A024715

/-! ## A024715.P3665686178167032754

`A010880(A024702(n+3))`
-/

namespace A024715.P3665686178167032754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A024702 (n + 3)).toNat

end

end A024715.P3665686178167032754

namespace A024715

/-- `A010880(A024702(n+3))` -/
def P3665686178167032754.Spec : Prop :=
  ∀ n, P3665686178167032754.a n = A024715 (n + 3)

end A024715

/-!
# A024716: a(n) = Sum_{1 <= j <= i <= n} S(i,j), where S(i,j) are Stirling numbers of the second kind.

The programs for A024716, there is no canonical definition to state claims against.
-/

/-! ## A024716.P9070285314426697172

`∑[A011972(∑[n])]`
-/

namespace A024716.P9070285314426697172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P9070285314426697172

/-! ## A024716.P9460638825221304833

`∑[A095674(∑[n])]`
-/

namespace A024716.P9460638825221304833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095674 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P9460638825221304833

/-! ## A024716.P11833691698825696879

`∑[A123346(∑[n])]`
-/

namespace A024716.P11833691698825696879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P11833691698825696879

/-! ## A024716.P2441946302863173897

`∑[A283424(∑[n])]`
-/

namespace A024716.P2441946302863173897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P2441946302863173897

/-! ## A024716.P5223641779978935035

`∑[record[A095149(n)]]`
-/

namespace A024716.P5223641779978935035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P5223641779978935035

/-! ## A024716.P7893106994139071714

`∑[record[A108087(n)]]`
-/

namespace A024716.P7893106994139071714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P7893106994139071714

/-! ## A024716.P2662022112342661955

`∑[record[A144155(n)]]`
-/

namespace A024716.P2662022112342661955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P2662022112342661955

/-! ## A024716.P15749750905838287176

`∑[record[A186020(n)]]`
-/

namespace A024716.P15749750905838287176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P15749750905838287176

/-! ## A024716.P14068841520064691515

`∑[record[A205574(n)]]`
-/

namespace A024716.P14068841520064691515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P14068841520064691515

/-! ## A024716.P9641002217589656102

`∑[record[A212431(n)]]`
-/

namespace A024716.P9641002217589656102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024716.P9641002217589656102

/-!
# A024717: Sum of max{S(i,j): 1<=j<=i} for i = 1,2,...,n, where S(i,j) are Stirling numbers of the second kind.

The programs for A024717, there is no canonical definition to state claims against.
-/

/-! ## A024717.P15373547744173585969

`∑[A002870(n+1)]`
-/

namespace A024717.P15373547744173585969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024717.P15373547744173585969

/-! ## A024717.P9428365660983058033

`∑[A008277(A024417(n+1)+∑[n])]`
-/

namespace A024717.P9428365660983058033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A024417 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024717.P9428365660983058033

/-! ## A024717.P16334019332134285859

`A002870(n+1)+a(A259361(n²))` with `a(0)=1`
-/

namespace A024717.P16334019332134285859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002870 (n + 1) + a (A259361 (n ^ 2)).toNat

end

end A024717.P16334019332134285859

/-! ## A024717.P5937762471190369293

`A002870(n+1)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A024717.P5937762471190369293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002870 (n + 1) + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A024717.P5937762471190369293

/-! ## A024717.P9652932194187359265

`∑[A048993(A024417(n+1)+∑[n+1])]`
-/

namespace A024717.P9652932194187359265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A024417 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024717.P9652932194187359265

/-!
# A024718: a(n) = (1/2)*(1 + Sum_{k=0..n} binomial(2*k, k)).

The programs for A024718, the canonical program `A024718.P9617034669250128048` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024718 has offset 0).

The definition of A024718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024718.P9617034669250128048

`1/2*(1+A006134(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024718

/-- `1/2*(1+A006134(n))` -/
def P9617034669250128048.Spec : Prop :=
  ∀ n, P9617034669250128048.a n = (A024718 n : ℚ)

end A024718

/-! ## A024718.P8077563063559944570

`∑[(4-2/n)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A024718.P8077563063559944570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024718.P8077563063559944570

namespace A024718

/-- `∑[(4-2/n)*a(n-1)]` -/
def P8077563063559944570.Spec : Prop :=
  ∀ n, P8077563063559944570.a n = (A024718 n : ℚ)

end A024718

/-! ## A024718.P11622622072690136683

`∑[2*(2-n^(-1))*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A024718.P11622622072690136683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024718.P11622622072690136683

namespace A024718

/-- `∑[2*(2-n^(-1))*a(n-1)]` -/
def P11622622072690136683.Spec : Prop :=
  ∀ n, P11622622072690136683.a n = (A024718 n : ℚ)

end A024718

/-! ## A024718.P11069146101082796238

`(record[a(n-1)/(floor(n/2)/n-1)]+2*a(n-1))/2` with `a(0)=1`
-/

namespace A024718.P11069146101082796238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * a (n - 1)) / 2

end

end A024718.P11069146101082796238

namespace A024718

/-- `(record[a(n-1)/(floor(n/2)/n-1)]+2*a(n-1))/2` -/
def P11069146101082796238.Spec : Prop :=
  ∀ n, P11069146101082796238.a n = (A024718 n : ℚ)

end A024718

/-! ## A024718.P6331788464202799319

`∑[A088218(n)]`
-/

namespace A024718.P6331788464202799319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024718.P6331788464202799319

namespace A024718

/-- `∑[A088218(n)]` -/
def P6331788464202799319.Spec : Prop :=
  ∀ n, P6331788464202799319.a n = A024718 n

end A024718

/-! ## A024718.P5150545976001632623

`A086905(2*n)`
-/

namespace A024718.P5150545976001632623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 (2 * n)

end

end A024718.P5150545976001632623

namespace A024718

/-- `A086905(2*n)` -/
def P5150545976001632623.Spec : Prop :=
  ∀ n, P5150545976001632623.a n = A024718 n

end A024718

/-! ## A024718.P7011981646062493043

`A124642(2*n)`
-/

namespace A024718.P7011981646062493043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 (2 * n)

end

end A024718.P7011981646062493043

namespace A024718

/-- `A124642(2*n)` -/
def P7011981646062493043.Spec : Prop :=
  ∀ n, P7011981646062493043.a n = A024718 n

end A024718

/-! ## A024718.P278387598055513628

`∑[abs(A110556(n))]`
-/

namespace A024718.P278387598055513628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110556 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024718.P278387598055513628

namespace A024718

/-- `∑[abs(A110556(n))]` -/
def P278387598055513628.Spec : Prop :=
  ∀ n, P278387598055513628.a n = A024718 n

end A024718

/-! ## A024718.P5012424326200581766

`record[∑[A126930(n)]]`
-/

namespace A024718.P5012424326200581766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024718.P5012424326200581766

namespace A024718

/-- `record[∑[A126930(n)]]` -/
def P5012424326200581766.Spec : Prop :=
  ∀ n, P5012424326200581766.a n = A024718 n

end A024718

/-! ## A024718.P4962623830060807078

`ceil(A006134(n)/2)`
-/

namespace A024718.P4962623830060807078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006134 n : ℚ) / 2⌉

end

end A024718.P4962623830060807078

namespace A024718

/-- `ceil(A006134(n)/2)` -/
def P4962623830060807078.Spec : Prop :=
  ∀ n, P4962623830060807078.a n = A024718 n

end A024718

/-! ## A024718.P16385477850692880634

`Δ[A143954(n)]+1`
-/

namespace A024718.P16385477850692880634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A024718.P16385477850692880634

namespace A024718

/-- `Δ[A143954(n)]+1` -/
def P16385477850692880634.Spec : Prop :=
  ∀ n, P16385477850692880634.a n = A024718 n

end A024718

/-! ## A024718.P14104888609179848920

`∑[A260878(n)-1]`
-/

namespace A024718.P14104888609179848920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024718.P14104888609179848920

namespace A024718

/-- `∑[A260878(n)-1]` -/
def P14104888609179848920.Spec : Prop :=
  ∀ n, P14104888609179848920.a n = A024718 n

end A024718

/-! ## A024718.P14750572137657919960

`∑[A210736(2*n)]`
-/

namespace A024718.P14750572137657919960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024718.P14750572137657919960

namespace A024718

/-- `∑[A210736(2*n)]` -/
def P14750572137657919960.Spec : Prop :=
  ∀ n, P14750572137657919960.a n = A024718 n

end A024718

/-! ## A024718.P16147368713967012919

`A174783(2*n)+1`
-/

namespace A024718.P16147368713967012919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (2 * n) + 1

end

end A024718.P16147368713967012919

namespace A024718

/-- `A174783(2*n)+1` -/
def P16147368713967012919.Spec : Prop :=
  ∀ n, P16147368713967012919.a n = A024718 n

end A024718

/-! ## A024718.P10487983236474417676

`A191790(2*n)+1`
-/

namespace A024718.P10487983236474417676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (2 * n) + 1

end

end A024718.P10487983236474417676

namespace A024718

/-- `A191790(2*n)+1` -/
def P10487983236474417676.Spec : Prop :=
  ∀ n, P10487983236474417676.a n = A024718 n

end A024718

/-! ## A024718.P1601490413253105632

`A306376(n)+2^n`
-/

namespace A024718.P1601490413253105632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306376 n + (2 ^ n : ℤ)

end

end A024718.P1601490413253105632

namespace A024718

/-- `A306376(n)+2^n` -/
def P1601490413253105632.Spec : Prop :=
  ∀ n, P1601490413253105632.a n = A024718 n

end A024718

/-! ## A024718.P18281132288006120285

`A332754(Δ[n²])+1`
-/

namespace A024718.P18281132288006120285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A024718.P18281132288006120285

namespace A024718

/-- `A332754(Δ[n²])+1` -/
def P18281132288006120285.Spec : Prop :=
  ∀ n, P18281132288006120285.a n = A024718 n

end A024718

/-! ## A024718.P3511157366976275006

`∑[ceil(A000984(n)/2)]`
-/

namespace A024718.P3511157366976275006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000984 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024718.P3511157366976275006

namespace A024718

/-- `∑[ceil(A000984(n)/2)]` -/
def P3511157366976275006.Spec : Prop :=
  ∀ n, P3511157366976275006.a n = A024718 n

end A024718

/-! ## A024718.P4472516181126516630

`∑[record[A138364(n)]]+1`
-/

namespace A024718.P4472516181126516630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024718.P4472516181126516630

namespace A024718

/-- `∑[record[A138364(n)]]+1` -/
def P4472516181126516630.Spec : Prop :=
  ∀ n, P4472516181126516630.a n = A024718 n

end A024718

/-! ## A024718.P11531631292687497210

`∑[A052473(n+2)-2]`
-/

namespace A024718.P11531631292687497210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052473 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024718.P11531631292687497210

namespace A024718

/-- `∑[A052473(n+2)-2]` -/
def P11531631292687497210.Spec : Prop :=
  ∀ n, P11531631292687497210.a n = A024718 n

end A024718

/-!
# A024719: a(n) = (1/3)*(2 + Sum_{k=0..n} C(3k,k)).

The programs for A024719, the canonical program `A024719.P8166155060792017` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024719 has offset 0).

The definition of A024719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024719.P16564429419266532046

`ceil(A188675(n)/3)`
-/

namespace A024719.P16564429419266532046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188675 n : ℚ) / 3⌉

end

end A024719.P16564429419266532046

namespace A024719

/-- `ceil(A188675(n)/3)` -/
def P16564429419266532046.Spec : Prop :=
  ∀ n, P16564429419266532046.a n = A024719 n

end A024719

/-! ## A024719.P12381169812938691660

`∑[A025174(n)]+1`
-/

namespace A024719.P12381169812938691660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024719.P12381169812938691660

namespace A024719

/-- `∑[A025174(n)]+1` -/
def P12381169812938691660.Spec : Prop :=
  ∀ n, P12381169812938691660.a n = A024719 n

end A024719

/-! ## A024719.P8166155060792017

`∑[ceil(A005809(n)/3)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024719

/-- `∑[ceil(A005809(n)/3)]` -/
def P8166155060792017.Spec : Prop :=
  ∀ n, P8166155060792017.a n = A024719 n

theorem P8166155060792017.correct : P8166155060792017.Spec := by
  intro n
  simp only [A024719]

end A024719

/-! ## A024719.P10319591404609430761

`∑[ceil(A227726(n)/4)]`
-/

namespace A024719.P10319591404609430761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227726 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P10319591404609430761

namespace A024719

/-- `∑[ceil(A227726(n)/4)]` -/
def P10319591404609430761.Spec : Prop :=
  ∀ n, P10319591404609430761.a n = A024719 n

end A024719

/-! ## A024719.P2472756300640764016

`(∑[A165817(n)]+1)/2`
-/

namespace A024719.P2472756300640764016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A024719.P2472756300640764016

namespace A024719

/-- `(∑[A165817(n)]+1)/2` -/
def P2472756300640764016.Spec : Prop :=
  ∀ n, P2472756300640764016.a n = (A024719 n : ℚ)

end A024719

/-! ## A024719.P11878815834236171079

`∑[A099578(comp[2*(n+1)])]`
-/

namespace A024719.P11878815834236171079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P11878815834236171079

namespace A024719

/-- `∑[A099578(comp[2*(n+1)])]` -/
def P11878815834236171079.Spec : Prop :=
  ∀ n, P11878815834236171079.a n = A024719 n

end A024719

/-! ## A024719.P7879011253346990512

`∑[A127040(comp[2*n+3])]`
-/

namespace A024719.P7879011253346990512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P7879011253346990512

namespace A024719

/-- `∑[A127040(comp[2*n+3])]` -/
def P7879011253346990512.Spec : Prop :=
  ∀ n, P7879011253346990512.a n = A024719 n

end A024719

/-! ## A024719.P7851067257381970819

`∑[ceil(Δ[n²]*A001764(n)/3)]`
-/

namespace A024719.P7851067257381970819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A001764 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P7851067257381970819

namespace A024719

/-- `∑[ceil(Δ[n²]*A001764(n)/3)]` -/
def P7851067257381970819.Spec : Prop :=
  ∀ n, P7851067257381970819.a n = A024719 n

end A024719

/-! ## A024719.P14272730524325213131

`(∑[A291662(n)+1+n]-n)/2`
-/

namespace A024719.P14272730524325213131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291662 n + 1 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A024719.P14272730524325213131

namespace A024719

/-- `(∑[A291662(n)+1+n]-n)/2` -/
def P14272730524325213131.Spec : Prop :=
  ∀ n, P14272730524325213131.a n = (A024719 n : ℚ)

end A024719

/-! ## A024719.P8925071227046629517

`∑[A025174(A123108(2*n))]`
-/

namespace A024719.P8925071227046629517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P8925071227046629517

namespace A024719

/-- `∑[A025174(A123108(2*n))]` -/
def P8925071227046629517.Spec : Prop :=
  ∀ n, P8925071227046629517.a n = A024719 n

end A024719

/-! ## A024719.P10063259415442273840

`∑[A165817(n)-A025174(n)]`
-/

namespace A024719.P10063259415442273840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n - A025174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P10063259415442273840

namespace A024719

/-- `∑[A165817(n)-A025174(n)]` -/
def P10063259415442273840.Spec : Prop :=
  ∀ n, P10063259415442273840.a n = A024719 n

end A024719

/-! ## A024719.P2319013143048652439

`∑[gcd(A005809(n), A025174(n))]`
-/

namespace A024719.P2319013143048652439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005809 n) (A025174 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P2319013143048652439

namespace A024719

/-- `∑[gcd(A005809(n), A025174(n))]` -/
def P2319013143048652439.Spec : Prop :=
  ∀ n, (P2319013143048652439.a n : ℤ) = A024719 n

end A024719

/-! ## A024719.P5305785559185759439

`A000124(n)-∑[n-A025174(n)]`
-/

namespace A024719.P5305785559185759439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P5305785559185759439

namespace A024719

/-- `A000124(n)-∑[n-A025174(n)]` -/
def P5305785559185759439.Spec : Prop :=
  ∀ n, P5305785559185759439.a n = A024719 n

end A024719

/-! ## A024719.P1273939859434177804

`∑[A025174(A007318(A000124(n)))]`
-/

namespace A024719.P1273939859434177804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P1273939859434177804

namespace A024719

/-- `∑[A025174(A007318(A000124(n)))]` -/
def P1273939859434177804.Spec : Prop :=
  ∀ n, P1273939859434177804.a n = A024719 n

end A024719

/-! ## A024719.P4351779674468701736

`∑[A025174(A008619(A004273(n)))]`
-/

namespace A024719.P4351779674468701736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P4351779674468701736

namespace A024719

/-- `∑[A025174(A008619(A004273(n)))]` -/
def P4351779674468701736.Spec : Prop :=
  ∀ n, P4351779674468701736.a n = A024719 n

end A024719

/-! ## A024719.P13176254345919101179

`∑[A025174(A008619(A004275(n)))]`
-/

namespace A024719.P13176254345919101179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P13176254345919101179

namespace A024719

/-- `∑[A025174(A008619(A004275(n)))]` -/
def P13176254345919101179.Spec : Prop :=
  ∀ n, P13176254345919101179.a n = A024719 n

end A024719

/-! ## A024719.P1987603474560560871

`A088536(n+1)+∑[A225006(n)-A088536(n+1)]`
-/

namespace A024719.P1987603474560560871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225006 n - A088536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088536 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P1987603474560560871

namespace A024719

/-- `A088536(n+1)+∑[A225006(n)-A088536(n+1)]` -/
def P1987603474560560871.Spec : Prop :=
  ∀ n, P1987603474560560871.a n = A024719 n

end A024719

/-! ## A024719.P13917458226814361058

`a(n-1)+C(2*n+n-1, n-1)` with `a(0)=1`
-/

namespace A024719.P13917458226814361058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose ((2 * n : ℤ) + ((n : ℤ) - 1)).toNat ((n : ℤ) - 1).toNat

end

end A024719.P13917458226814361058

namespace A024719

/-- `a(n-1)+C(2*n+n-1, n-1)` -/
def P13917458226814361058.Spec : Prop :=
  ∀ n, (P13917458226814361058.a n : ℤ) = A024719 n

end A024719

/-! ## A024719.P1533558284192617343

`∑[ceil(C(3*n, n)/3)]`
-/

namespace A024719.P1533558284192617343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (3 * n) n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024719.P1533558284192617343

namespace A024719

/-- `∑[ceil(C(3*n, n)/3)]` -/
def P1533558284192617343.Spec : Prop :=
  ∀ n, P1533558284192617343.a n = A024719 n

end A024719

/-! ## A024719.P18408796503162842719

`(∑[C(3*n, n)]+2)/3`
-/

namespace A024719.P18408796503162842719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / 3

end

end A024719.P18408796503162842719

namespace A024719

/-- `(∑[C(3*n, n)]+2)/3` -/
def P18408796503162842719.Spec : Prop :=
  ∀ n, P18408796503162842719.a n = (A024719 n : ℚ)

end A024719

/-!
# A024720: a(n) = (1/4)*(3 + Sum_{k=0..n} C(4k,k)).

The programs for A024720, the canonical program `A024720.P13827087372202772204` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024720 has offset 0).

The definition of A024720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024720.P13827087372202772204

`A224274(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024720

/-- `A224274(n)+a(n-1)` -/
def P13827087372202772204.Spec : Prop :=
  ∀ n, P13827087372202772204.a n = A024720 n

theorem P13827087372202772204.correct : P13827087372202772204.Spec := by
  intro n
  simp only [A024720]

end A024720

/-! ## A024720.P17046012314278586758

`∑[A224274(A028310(n))]`
-/

namespace A024720.P17046012314278586758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024720.P17046012314278586758

namespace A024720

/-- `∑[A224274(A028310(n))]` -/
def P17046012314278586758.Spec : Prop :=
  ∀ n, P17046012314278586758.a n = A024720 n

end A024720

/-! ## A024720.P18114894473412063658

`ceil(A225612(n)/4)`
-/

namespace A024720.P18114894473412063658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225612 n : ℚ) / 4⌉

end

end A024720.P18114894473412063658

namespace A024720

/-- `ceil(A225612(n)/4)` -/
def P18114894473412063658.Spec : Prop :=
  ∀ n, P18114894473412063658.a n = A024720 n

end A024720

/-! ## A024720.P14154157117466132059

`∑[ceil(A005810(n)/4)]`
-/

namespace A024720.P14154157117466132059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005810 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024720.P14154157117466132059

namespace A024720

/-- `∑[ceil(A005810(n)/4)]` -/
def P14154157117466132059.Spec : Prop :=
  ∀ n, P14154157117466132059.a n = A024720 n

end A024720

/-! ## A024720.P17425864004897434214

`∑[gcd(A005810(n), A262977(n))]`
-/

namespace A024720.P17425864004897434214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005810 n) (A262977 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024720.P17425864004897434214

namespace A024720

/-- `∑[gcd(A005810(n), A262977(n))]` -/
def P17425864004897434214.Spec : Prop :=
  ∀ n, (P17425864004897434214.a n : ℤ) = A024720 n

end A024720

/-! ## A024720.P12888692673048014439

`∑[A224274(n+1)]+1-A224274(n+1)`
-/

namespace A024720.P12888692673048014439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A224274 (n + 1))

end

end A024720.P12888692673048014439

namespace A024720

/-- `∑[A224274(n+1)]+1-A224274(n+1)` -/
def P12888692673048014439.Spec : Prop :=
  ∀ n, P12888692673048014439.a n = A024720 n

end A024720

/-! ## A024720.P13709061394446193120

`a(n-1)+C(Δ[(2*n+1)*(n-2)], n-1)` with `a(0)=1`
-/

namespace A024720.P13709061394446193120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (f1 (n + 1) - f1 n).toNat ((n : ℤ) - 1).toNat

end

end A024720.P13709061394446193120

namespace A024720

/-- `a(n-1)+C(Δ[(2*n+1)*(n-2)], n-1)` -/
def P13709061394446193120.Spec : Prop :=
  ∀ n, (P13709061394446193120.a n : ℤ) = A024720 n

end A024720

/-! ## A024720.P3806356521770419091

`∑[A109955(2*n²)]`
-/

namespace A024720.P3806356521770419091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024720.P3806356521770419091

namespace A024720

/-- `∑[A109955(2*n²)]` -/
def P3806356521770419091.Spec : Prop :=
  ∀ n, P3806356521770419091.a n = A024720 n

end A024720

/-! ## A024720.P10094907995273415202

`∑[A111418(2*n²)]`
-/

namespace A024720.P10094907995273415202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024720.P10094907995273415202

namespace A024720

/-- `∑[A111418(2*n²)]` -/
def P10094907995273415202.Spec : Prop :=
  ∀ n, P10094907995273415202.a n = A024720 n

end A024720

/-! ## A024720.P5851874793823096976

`∑[A069269(2*n²)]`
-/

namespace A024720.P5851874793823096976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024720.P5851874793823096976

namespace A024720

/-- `∑[A069269(2*n²)]` -/
def P5851874793823096976.Spec : Prop :=
  ∀ n, P5851874793823096976.a n = A024720 n

end A024720

/-!
# A024721: a(n) = (1/5)*(4 + Sum_{k=0..n} C(5*k,k)).

The programs for A024721, there is no canonical definition to state claims against.
-/

/-! ## A024721.P7727767283562176076

`ceil(A225615(n)/5)`
-/

namespace A024721.P7727767283562176076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225615 n : ℚ) / 5⌉

end

end A024721.P7727767283562176076

/-! ## A024721.P10744629381903398094

`A163456(n)+a(n-1)` with `a(0)=1`
-/

namespace A024721.P10744629381903398094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163456 n + a (n - 1)

end

end A024721.P10744629381903398094

/-! ## A024721.P17708550935927303788

`∑[A163456(A065033(2*n))]`
-/

namespace A024721.P17708550935927303788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163456 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024721.P17708550935927303788

/-! ## A024721.P6994020618297868521

`∑[A163456(A008619(A004273(n)))]`
-/

namespace A024721.P6994020618297868521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163456 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024721.P6994020618297868521

/-! ## A024721.P15593208721133751515

`∑[A001449(n)/A001449(A178334(n))]`
-/

namespace A024721.P15593208721133751515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (A001449 (A178334 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024721.P15593208721133751515

/-! ## A024721.P12677092627826438064

`∑[A163456(n+1)]+1-A163456(n+1)`
-/

namespace A024721.P12677092627826438064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A163456 (n + 1))

end

end A024721.P12677092627826438064

/-! ## A024721.P10410039684498604795

`(∑[C(5*n, n)]+4)/5`
-/

namespace A024721.P10410039684498604795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℚ) / 5

end

end A024721.P10410039684498604795

/-! ## A024721.P17950629946065759969

`∑[A109960(2*n²)]`
-/

namespace A024721.P17950629946065759969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109960 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024721.P17950629946065759969

/-! ## A024721.P10678095196356574

`∑[A069270(2*n²)]`
-/

namespace A024721.P10678095196356574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024721.P10678095196356574

/-!
# A024722: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=a(2)=1.

The programs for A024722, there is no canonical definition to state claims against.
-/

/-! ## A024722.P11438900270416723551

`A259899(A000677(n)+1)`
-/

namespace A024722.P11438900270416723551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A000677 n + 1).toNat

end

end A024722.P11438900270416723551

/-! ## A024722.P10988155548478487914

`A259899(or(1, A000677(n)))`
-/

namespace A024722.P10988155548478487914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (Int.lor 1 (A000677 n)).toNat

end

end A024722.P10988155548478487914

/-! ## A024722.P10066092670891652411

`A118168(ceil(sqrt(A229734(n))))`
-/

namespace A024722.P10066092670891652411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 ⌈Real.sqrt (A229734 n : ℝ)⌉.toNat

end

end A024722.P10066092670891652411

/-! ## A024722.P15795145571296682117

`ceil(A070207(n)/A279626(n))`
-/

namespace A024722.P15795145571296682117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070207 n : ℚ) / (A279626 n : ℚ)⌉

end

end A024722.P15795145571296682117

/-! ## A024722.P9753656807115520653

`floor(A003056(floor(A176497(n+1)/3)+1)/3)+1`
-/

namespace A024722.P9753656807115520653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 (⌊(A176497 (n + 1) : ℚ) / 3⌋ + 1).toNat : ℚ) / 3⌋ + 1

end

end A024722.P9753656807115520653

/-!
# A024723: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=a(2)=1 and a(3)=2.

The programs for A024723, there is no canonical definition to state claims against.
-/

/-! ## A024723.P11594893280780037927

`A024945(round(log2(A126132(2^(n+1)))))`
-/

namespace A024723.P11594893280780037927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024945 (SequenceMachineLib.roundAway (Real.logb 2 (A126132 (2 ^ (n + 1)) : ℝ))).toNat

end

end A024723.P11594893280780037927

/-! ## A024723.P4930867332618179234

`A051119(or(2, A100132(n)))`
-/

namespace A024723.P4930867332618179234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (Int.lor 2 (A100132 n)).toNat

end

end A024723.P4930867332618179234

/-!
# A024724: A024723(n+3)/2.

The programs for A024724, there is no canonical definition to state claims against.
-/

/-! ## A024724.P15302800180538142949

`A024723(n+4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024724.P15302800180538142949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024723 (n + 4) : ℚ) / 2

end

end A024724.P15302800180538142949

/-! ## A024724.P7460112798294835986

`A000265(A024723(n+4))`
-/

namespace A024724.P7460112798294835986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024723 (n + 4)).toNat

end

end A024724.P7460112798294835986

/-! ## A024724.P16780464651923026134

`A302042(A024723(n+4)+2)-1`
-/

namespace A024724.P16780464651923026134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A024723 (n + 4) + 2).toNat - 1

end

end A024724.P16780464651923026134

/-! ## A024724.P10488087671664413507

`Δ[A302042(∑[A024723(n+3)])]`
-/

namespace A024724.P10488087671664413507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024723 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024724.P10488087671664413507

/-! ## A024724.P18112603457506647734

`A008619(A024723(n+4)-1)`
-/

namespace A024724.P18112603457506647734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024723 (n + 4) - 1).toNat

end

end A024724.P18112603457506647734

/-!
# A024725: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=a(2)=1 and a(3)=3.

The programs for A024725, there is no canonical definition to state claims against.
-/

/-! ## A024725.P16384591150244165395

`A024947(A077741(n+1)+1-A257639(n+1))`
-/

namespace A024725.P16384591150244165395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024947 (A077741 (n + 1) + (1 - A257639 (n + 1))).toNat

end

end A024725.P16384591150244165395

/-! ## A024725.P9601944391543232181

`A008486(A275176(n)%A205077(n+1))`
-/

namespace A024725.P9601944391543232181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A275176 n) (A205077 (n + 1))).toNat

end

end A024725.P9601944391543232181

/-! ## A024725.P13699687934354620802

`A024947(A077741(n+2)-A257639(n+1))`
-/

namespace A024725.P13699687934354620802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024947 (A077741 (n + 2) - A257639 (n + 1)).toNat

end

end A024725.P13699687934354620802

/-!
# A024726: a(n) = s(n+3)/3, where s(n) = A024725(n).

The programs for A024726, there is no canonical definition to state claims against.
-/

/-! ## A024726.P17633201308423867730

`A024725(n+4)/3`
-/

namespace A024726.P17633201308423867730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024725 (n + 4) : ℚ) / 3

end

end A024726.P17633201308423867730

/-! ## A024726.P8570154216011434669

`A016729(A024725(n+4)-2)`
-/

namespace A024726.P8570154216011434669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (A024725 (n + 4) - 2).toNat

end

end A024726.P8570154216011434669

/-! ## A024726.P17670147750798009477

`A024948(A145981(n)+n)`
-/

namespace A024726.P17670147750798009477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024948 (A145981 n + (n : ℤ)).toNat

end

end A024726.P17670147750798009477

/-! ## A024726.P9428297354923257692

`A024948(or(n, A145981(n)))`
-/

namespace A024726.P9428297354923257692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024948 (Int.lor (n : ℤ) (A145981 n)).toNat

end

end A024726.P9428297354923257692

/-! ## A024726.P4623713351282525534

`A024948(xor(n, A145981(n)))`
-/

namespace A024726.P4623713351282525534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024948 (Int.xor (n : ℤ) (A145981 n)).toNat

end

end A024726.P4623713351282525534

/-!
# A024727: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=a(2)=1 and a(3)=4.

The programs for A024727, there is no canonical definition to state claims against.
-/

/-! ## A024727.P6554723072024843753

`A024949(or(A004904(n+1), A030302(n+2)))`
-/

namespace A024727.P6554723072024843753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024949 (Int.lor (A004904 (n + 1)) (A030302 (n + 2))).toNat

end

end A024727.P6554723072024843753

/-! ## A024727.P8233130688518815477

`A024949(round(log(A055019(3*n+5))))`
-/

namespace A024727.P8233130688518815477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024949 (SequenceMachineLib.roundAway (Real.log (A055019 (3 * n + 5) : ℝ))).toNat

end

end A024727.P8233130688518815477

/-! ## A024727.P6651802646475618598

`A048166(A319695(A071108(n+2)))`
-/

namespace A024727.P6651802646475618598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (A319695 (A071108 (n + 2)).toNat).toNat

end

end A024727.P6651802646475618598

/-! ## A024727.P5928729701241028029

`A256139(A122886(n)*A288126(n))`
-/

namespace A024727.P5928729701241028029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256139 (A122886 n * A288126 n).toNat

end

end A024727.P5928729701241028029

/-! ## A024727.P17302218542548072178

`A062799(A328436(n)+A064605(n+1))`
-/

namespace A024727.P17302218542548072178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (A328436 n + A064605 (n + 1)).toNat

end

end A024727.P17302218542548072178

/-!
# A024728: a(n) = A024727(n+3)/4.

The programs for A024728, there is no canonical definition to state claims against.
-/

/-! ## A024728.P12697507278412916674

`A024727(n+4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024728.P12697507278412916674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024727 (n + 4) : ℚ) / 4

end

end A024728.P12697507278412916674

/-! ## A024728.P8110330344838373708

`∏[ratio[sqrt(A024727(n+3))]²]`
-/

namespace A024728.P8110330344838373708
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A024727 (n + 3) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) / f2 n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024728.P8110330344838373708

/-! ## A024728.P3990838671503417119

`A000265(A024727(n+4))`
-/

namespace A024728.P3990838671503417119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024727 (n + 4)).toNat

end

end A024728.P3990838671503417119

/-! ## A024728.P10462499855028277046

`∑{d}[A024727(n+4), #%2*A000010(#)]`
-/

namespace A024728.P10462499855028277046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024727 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d % 2 : ℕ) : ℤ) * A000010 d

end

end A024728.P10462499855028277046

/-! ## A024728.P12916006766005040543

`A002265(A024727(n+4)+1)`
-/

namespace A024728.P12916006766005040543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A024727 (n + 4) + 1).toNat

end

end A024728.P12916006766005040543

/-!
# A024729: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=a(2)=1 and a(3)=5.

The programs for A024729, there is no canonical definition to state claims against.
-/

/-! ## A024729.P7738769544711484332

`A024951(round(log2(A126132(2^(n+1)))))`
-/

namespace A024729.P7738769544711484332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024951 (SequenceMachineLib.roundAway (Real.logb 2 (A126132 (2 ^ (n + 1)) : ℝ))).toNat

end

end A024729.P7738769544711484332

/-! ## A024729.P8219087327956414657

`A024951(or(n, A318962(A062399(n))))`
-/

namespace A024729.P8219087327956414657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024951 (Int.lor (n : ℤ) (A318962 (A062399 n).toNat)).toNat

end

end A024729.P8219087327956414657

/-! ## A024729.P3773818569084246180

`A024951(A077741(n+1)+1-A257639(n+1))`
-/

namespace A024729.P3773818569084246180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024951 (A077741 (n + 1) + (1 - A257639 (n + 1))).toNat

end

end A024729.P3773818569084246180

/-! ## A024729.P2133337695449730008

`A024951(or(A046469(n), A156062(n)))`
-/

namespace A024729.P2133337695449730008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024951 (Int.lor (A046469 n) (A156062 n)).toNat

end

end A024729.P2133337695449730008

/-! ## A024729.P10913784586474092908

`A024951(or(A046469(n), A318962(n)))`
-/

namespace A024729.P10913784586474092908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024951 (Int.lor (A046469 n) (A318962 n)).toNat

end

end A024729.P10913784586474092908

/-!
# A024730: a(n) = s(n+3)/5, where s is A024729.

The programs for A024730, there is no canonical definition to state claims against.
-/

/-! ## A024730.P4128795806726950607

`A024729(n+4)/5`
-/

namespace A024730.P4128795806726950607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024729 (n + 4) : ℚ) / 5

end

end A024730.P4128795806726950607

/-! ## A024730.P1095086071026091574

`A002266(A024729(n+4))`
-/

namespace A024730.P1095086071026091574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A024729 (n + 4)).toNat

end

end A024730.P1095086071026091574

/-! ## A024730.P3877425597982946625

`A154470(A024951(n+3)/5)`
-/

namespace A024730.P3877425597982946625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (SequenceMachineLib.roundAway ((A024951 (n + 3) : ℚ) / 5)).toNat

end

end A024730.P3877425597982946625

/-! ## A024730.P4279390113808431511

`A024952(A062399(A000007(n)+n))`
-/

namespace A024730.P4279390113808431511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024952 (A062399 (A000007 n + (n : ℤ)).toNat).toNat

end

end A024730.P4279390113808431511

/-! ## A024730.P4229854309015930612

`A024952(or(A000007(n), A062399(n)))`
-/

namespace A024730.P4229854309015930612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024952 (Int.lor (A000007 n) (A062399 n)).toNat

end

end A024730.P4229854309015930612

/-!
# A024731: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=a(2)=1 and a(3)=6.

The programs for A024731, there is no canonical definition to state claims against.
-/

/-! ## A024731.P385633564683311316

`A024953(or(A004904(n+1), A030302(n+2)))`
-/

namespace A024731.P385633564683311316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024953 (Int.lor (A004904 (n + 1)) (A030302 (n + 2))).toNat

end

end A024731.P385633564683311316

/-! ## A024731.P393676658239858129

`A276886(A024727(n+1))`
-/

namespace A024731.P393676658239858129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276886 (A024727 (n + 1)).toNat

end

end A024731.P393676658239858129

/-! ## A024731.P13511938433921530123

`gcd(A000203(A325935(n+1)), A002110(n))`
-/

namespace A024731.P13511938433921530123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A325935 (n + 1)).toNat) (A002110 n)

end

end A024731.P13511938433921530123

/-!
# A024732: a(n) = s(n+3)/6, where s is A024731.

The programs for A024732, there is no canonical definition to state claims against.
-/

/-! ## A024732.P5147892745064091065

`A024731(n+4)/6`
-/

namespace A024732.P5147892745064091065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024731 (n + 4) : ℚ) / 6

end

end A024732.P5147892745064091065

/-! ## A024732.P4891676446605136201

`A024954(A005361(3^n))`
-/

namespace A024732.P4891676446605136201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024954 (A005361 (3 ^ n)).toNat

end

end A024732.P4891676446605136201

/-! ## A024732.P7478155270087397863

`A024954(A062399(A000007(n)+n))`
-/

namespace A024732.P7478155270087397863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024954 (A062399 (A000007 n + (n : ℤ)).toNat).toNat

end

end A024732.P7478155270087397863

/-! ## A024732.P16385270922985820477

`A024954(A062399(A000038(n)+n))`
-/

namespace A024732.P16385270922985820477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024954 (A062399 (A000038 n + (n : ℤ)).toNat).toNat

end

end A024732.P16385270922985820477

/-! ## A024732.P4070127489907044670

`A024954(A061147(n+1)-A157928(n))`
-/

namespace A024732.P4070127489907044670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024954 (A061147 (n + 1) - A157928 n).toNat

end

end A024732.P4070127489907044670

/-!
# A024733: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=a(2)=1 and a(3)=7.

The programs for A024733, there is no canonical definition to state claims against.
-/

/-! ## A024733.P535893491209044983

`A024955(xor(n, A113652(a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A024733.P535893491209044983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A024955 (Int.xor (n : ℤ) (A113652 (a (n - 1)).toNat)).toNat

end

end A024733.P535893491209044983

/-! ## A024733.P16731839804104309591

`A024955(A005672(n)!%2+n)`
-/

namespace A024733.P16731839804104309591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024955 (Nat.factorial (A005672 n).toNat % 2 + n)

end

end A024733.P16731839804104309591

/-! ## A024733.P15013010850790039986

`A024955(Δ[A005673(n)]!%2+n)`
-/

namespace A024733.P15013010850790039986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024955 (Nat.factorial (f1 (n + 1) - f1 n).toNat % 2 + n)

end

end A024733.P15013010850790039986

/-! ## A024733.P11499003177364678048

`A024955((A000045(n+1)-2^floor(n/2))!%12+n)`
-/

namespace A024733.P11499003177364678048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024955 (Nat.factorial (SequenceMachineLib.roundAway ((A000045 (n + 1) : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat % 12 + n)

end

end A024733.P11499003177364678048

/-! ## A024733.P3816409282406505744

`A024955((A295730(n+1)-A295724(n))!%12+n)`
-/

namespace A024733.P3816409282406505744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024955 (Nat.factorial (A295730 (n + 1) - A295724 n).toNat % 12 + n)

end

end A024733.P3816409282406505744

/-!
# A024734: a(n) = A024733(n+3)/7.

The programs for A024734, there is no canonical definition to state claims against.
-/

/-! ## A024734.P10898451398560324965

`A024733(n+4)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024734.P10898451398560324965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024733 (n + 4) : ℚ) / 7

end

end A024734.P10898451398560324965

/-! ## A024734.P14665476450184906527

`A024956(sqrt(A137735(n^4)))`
-/

namespace A024734.P14665476450184906527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024956 (SequenceMachineLib.roundAway (Real.sqrt (A137735 (n ^ 4) : ℝ))).toNat

end

end A024734.P14665476450184906527

/-! ## A024734.P3936226301499715802

`A024956(A004916(n+1)+A000007(n))`
-/

namespace A024734.P3936226301499715802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024956 (A004916 (n + 1) + A000007 n).toNat

end

end A024734.P3936226301499715802

/-! ## A024734.P400042545463170259

`A024956(A010894(n)+A004916(n+1))`
-/

namespace A024734.P400042545463170259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024956 (A010894 (n + 21) + A004916 (n + 1)).toNat

end

end A024734.P400042545463170259

/-! ## A024734.P17979441514427762931

`A024956(A061147(n+1)-A057427(n))`
-/

namespace A024734.P17979441514427762931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024956 (A061147 (n + 1) - A057427 n).toNat

end

end A024734.P17979441514427762931

/-!
# A024735: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=2 and a(2)=a(3)=1.

The programs for A024735, there is no canonical definition to state claims against.
-/

/-! ## A024735.P3621021439877161804

`2*A089657(a(n-1))` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A024735.P3621021439877161804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  2 * A089657 (a (n - 1)).toNat

end

end A024735.P3621021439877161804

/-! ## A024735.P13666810937494239620

`2*A189891(a(n-1))` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A024735.P13666810937494239620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  2 * A189891 (a (n - 1)).toNat

end

end A024735.P13666810937494239620

/-! ## A024735.P18032683264315991393

`A118759(a(n-3)+2*a(n-1))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=8`
-/

namespace A024735.P18032683264315991393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 2, 4, 8] fun n a =>
  A118759 (a (n - 3) + 2 * a (n - 1)).toNat

end

end A024735.P18032683264315991393

/-! ## A024735.P12108526527285935823

`A036375(n)+(A084553(n+1)²%5)%2`
-/

namespace A024735.P12108526527285935823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n + Int.tmod (Int.tmod (A084553 (n + 1) ^ 2) 5) 2

end

end A024735.P12108526527285935823

/-!
# A024736: s(n+3)/2, where s is A024735.

The programs for A024736, there is no canonical definition to state claims against.
-/

/-! ## A024736.P10356329564329513147

`A024735(n+4)/2`
-/

namespace A024736.P10356329564329513147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024735 (n + 4) : ℚ) / 2

end

end A024736.P10356329564329513147

/-! ## A024736.P3268371318869632131

`record[A024735(A008619(n))/2]`
-/

namespace A024736.P3268371318869632131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024735 (A008619 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024736.P3268371318869632131

/-! ## A024736.P2302927785614666741

`record[A024735(A008620(n))/2]`
-/

namespace A024736.P2302927785614666741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024735 (A008620 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024736.P2302927785614666741

/-! ## A024736.P13815288473917649432

`record[A024735(A080513(n))/2]`
-/

namespace A024736.P13815288473917649432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024735 (A080513 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024736.P13815288473917649432

/-! ## A024736.P17219160492780882168

`record[A024735(A004277(n)-n)/2]`
-/

namespace A024736.P17219160492780882168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024735 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024736.P17219160492780882168

/-!
# A024738: a(n) = s(n+3)/3, where s is A024737.

The programs for A024738, there is no canonical definition to state claims against.
-/

/-! ## A024738.P10451461080093850444

`A024737(n+4)/3`
-/

namespace A024738.P10451461080093850444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024737 (n + 4) : ℚ) / 3

end

end A024738.P10451461080093850444

/-! ## A024738.P16020331800487112640

`record[root(3, -1)*A024737(n+1)]`
-/

namespace A024738.P16020331800487112640
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (1 / (-1 : ℝ)) * (A024737 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024738.P16020331800487112640

/-! ## A024738.P3871625222878493628

`record[A024737(A065033(n))/3]`
-/

namespace A024738.P3871625222878493628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024737 (A065033 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024738.P3871625222878493628

/-! ## A024738.P956539812656212706

`record[A024737(A286543(n))/3]`
-/

namespace A024738.P956539812656212706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024737 (A286543 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024738.P956539812656212706

/-! ## A024738.P7591755286409107235

`record[A024737(∑[A267845(n)])/3]`
-/

namespace A024738.P7591755286409107235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267845 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024737 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024738.P7591755286409107235

/-!
# A024739: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=a(3)=2 and a(2)=1.

The programs for A024739, there is no canonical definition to state claims against.
-/

/-! ## A024739.P16756496829634686615

`A131883(A192663(n)+1-n)`
-/

namespace A024739.P16756496829634686615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A192663 n + (1 - (n : ℤ))).toNat

end

end A024739.P16756496829634686615

/-! ## A024739.P15604267411539540404

`A131883(1-(n-A192663(n)))`
-/

namespace A024739.P15604267411539540404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (1 - ((n : ℤ) - A192663 n)).toNat

end

end A024739.P15604267411539540404

/-! ## A024739.P18155804777578172425

`A131883(A192663(n))+A112315(n)`
-/

namespace A024739.P18155804777578172425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A192663 n).toNat + A112315 n

end

end A024739.P18155804777578172425

/-! ## A024739.P4067218615969572361

`A134975(n)+A131883(A192663(n))`
-/

namespace A024739.P4067218615969572361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134975 n + A131883 (A192663 n).toNat

end

end A024739.P4067218615969572361

/-! ## A024739.P232940692278828777

`A131883(A253513(n)+A192663(n))`
-/

namespace A024739.P232940692278828777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A253513 n + A192663 n).toNat

end

end A024739.P232940692278828777

/-!
# A024740: s(n+3)/4, where s is A024739.

The programs for A024740, there is no canonical definition to state claims against.
-/

/-! ## A024740.P15531066083134251931

`A024739(n+4)/4`
-/

namespace A024740.P15531066083134251931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024739 (n + 4) : ℚ) / 4

end

end A024740.P15531066083134251931

/-! ## A024740.P18239145880662818

`A038572(A024959(n+3))`
-/

namespace A024740.P18239145880662818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A024959 (n + 3)).toNat

end

end A024740.P18239145880662818

/-! ## A024740.P16203620040093225136

`A038572(record[A024959(∑[log2(gcd(2, n))])])`
-/

namespace A024740.P16203620040093225136
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024959 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024740.P16203620040093225136

/-! ## A024740.P18385549330248854303

`record[A024959(n+1)/A071928(A158686(n))]`
-/

namespace A024740.P18385549330248854303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024959 (n + 1) : ℚ) / (A071928 (A158686 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024740.P18385549330248854303

/-! ## A024740.P13828503405053924052

`A004526(record[A024959(n+1)])`
-/

namespace A024740.P13828503405053924052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024740.P13828503405053924052

/-!
# A024742: a(n) = A024741(n+3)/6.

The programs for A024742, there is no canonical definition to state claims against.
-/

/-! ## A024742.P7574515687294509235

`A024741(n+4)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024742.P7574515687294509235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024741 (n + 4) : ℚ) / 6

end

end A024742.P7574515687294509235

/-! ## A024742.P1604782161819960688

`A038502(A024961(n+3))`
-/

namespace A024742.P1604782161819960688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A024961 (n + 3)).toNat

end

end A024742.P1604782161819960688

/-! ## A024742.P9245599327837839421

`A008615(A024741(n+4))`
-/

namespace A024742.P9245599327837839421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A024741 (n + 4)).toNat

end

end A024742.P9245599327837839421

/-! ## A024742.P1594373829118748870

`record[A112689(A024741(n+1))]`
-/

namespace A024742.P1594373829118748870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A024741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024742.P1594373829118748870

/-! ## A024742.P16393797447435034011

`A024961(A061497(n+3))/3`
-/

namespace A024742.P16393797447435034011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024961 (A061497 (n + 3)).toNat : ℚ) / 3

end

end A024742.P16393797447435034011

/-!
# A024743: a(n) = Sum_{i=1..floor((n+1)/4)} a(2*i-1) * a(n-2*i+1), with a(1)=3, a(2)=1, and a(3)=2.

The programs for A024743, there is no canonical definition to state claims against.
-/

/-! ## A024743.P6653355683077673991

`A172000(a(n-1))+1` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A024743.P6653355683077673991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  A172000 (a (n - 1)).toNat + 1

end

end A024743.P6653355683077673991

/-! ## A024743.P670266233452675015

`3*A102452(a(n-1))` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A024743.P670266233452675015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  3 * A102452 (a (n - 1)).toNat

end

end A024743.P670266233452675015

/-! ## A024743.P13657742221034686138

`3*A113006(a(n-1))` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A024743.P13657742221034686138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  3 * A113006 (a (n - 1)).toNat

end

end A024743.P13657742221034686138

/-!
# A024744: a(n) = s(n+3)/6, where s is A024743.

The programs for A024744, there is no canonical definition to state claims against.
-/

/-! ## A024744.P167249532426683963

`A024743(n+4)/6`
-/

namespace A024744.P167249532426683963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024743 (n + 4) : ℚ) / 6

end

end A024744.P167249532426683963

/-! ## A024744.P5965274561714287048

`A024963(A061147(n+1)+2)/2`
-/

namespace A024744.P5965274561714287048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024963 (A061147 (n + 1) + 2).toNat : ℚ) / 2

end

end A024744.P5965274561714287048

/-! ## A024744.P2888169837030576129

`A024963(n+3)/∑{d}[A178582(3*(n+1)), -(-1)^#]`
-/

namespace A024744.P2888169837030576129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178582 (3 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024963 (n + 3) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, (-((-1) ^ d)) : ℤ) : ℚ)

end

end A024744.P2888169837030576129

/-!
# A024745: Binomial coefficients: C(n,k), 1 <= k <= n-1, sorted.

The programs for A024745, there is no canonical definition to state claims against.
-/

/-! ## A024745.P621537866973345541

`∑[char[∑[A003016(n+2)]]]+2`
-/

namespace A024745.P621537866973345541
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A024745.P621537866973345541

/-! ## A024745.P13550388669544014260

`a(n-1)+C(n, A260466(a(n-1)+1))` with `a(0)=2`
-/

namespace A024745.P13550388669544014260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.choose n (A260466 (a (n - 1) + 1)).toNat

end

end A024745.P13550388669544014260

/-! ## A024745.P8514955901329425501

`A360655(n+2)-A360654(n+2)`
-/

namespace A024745.P8514955901329425501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360655 (n + 2) - A360654 (n + 2)

end

end A024745.P8514955901329425501

/-! ## A024745.P16265677917290147548

`A007318(A128373(n+2))`
-/

namespace A024745.P16265677917290147548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A128373 (n + 2)).toNat

end

end A024745.P16265677917290147548

/-! ## A024745.P9707325794729072045

`A135227(A128373(10/5+n))`
-/

namespace A024745.P9707325794729072045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 (A128373 (SequenceMachineLib.roundAway ((10 : ℚ) / 5 + (n : ℚ))).toNat).toNat

end

end A024745.P9707325794729072045

/-! ## A024745.P1932141294989616035

`A135227(A128373(n+2))%A017449(n)`
-/

namespace A024745.P1932141294989616035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135227 (A128373 (n + 2)).toNat) (A017449 n)

end

end A024745.P1932141294989616035

/-! ## A024745.P4843711199945950317

`A135227(lcm(A057077(n), A128373(n+2)))`
-/

namespace A024745.P4843711199945950317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 (Int.lcm (A057077 n) (A128373 (n + 2)))

end

end A024745.P4843711199945950317

/-! ## A024745.P12427806484079633492

`or(A000038(n), A135227(A128373(n+2)))`
-/

namespace A024745.P12427806484079633492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A135227 (A128373 (n + 2)).toNat)

end

end A024745.P12427806484079633492

/-! ## A024745.P6566732585810448814

`∑{d}[A135227(A128373(n+2)), A000010(#)]`
-/

namespace A024745.P6566732585810448814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A024745.P6566732585810448814

/-! ## A024745.P14682347575984229366

`A033999(n)²*A135227(A128373(n+2))`
-/

namespace A024745.P14682347575984229366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A135227 (A128373 (n + 2)).toNat

end

end A024745.P14682347575984229366

/-!
# A024746: Binomial coefficients: C(n,k), 2 <= k <= n-2, sorted.

The programs for A024746, there is no canonical definition to state claims against.
-/

/-! ## A024746.P5216755475059459361

`A319382(ceil(log(2*A018499(n+1))))`
-/

namespace A024746.P5216755475059459361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 ⌈Real.log (2 * A018499 (n + 1) : ℝ)⌉.toNat

end

end A024746.P5216755475059459361

/-! ## A024746.P17722569491304925768

`A319382(ceil(log(A018499(n+2))))`
-/

namespace A024746.P17722569491304925768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 ⌈Real.log (A018499 (n + 2) : ℝ)⌉.toNat

end

end A024746.P17722569491304925768

/-!
# A024748: Binomial coefficients: C(n,k), 4 <= k <= n-4, sorted.

The programs for A024748, there is no canonical definition to state claims against.
-/

/-! ## A024748.P1800190962073865019

`filter[A024747(n+1), A014306(#)]`
-/

namespace A024748.P1800190962073865019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A024748.P1800190962073865019

/-! ## A024748.P16482889797703083727

`A024756(round(log(A024777(n+2))))`
-/

namespace A024748.P16482889797703083727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024756 (SequenceMachineLib.roundAway (Real.log (A024777 (n + 2) : ℝ))).toNat

end

end A024748.P16482889797703083727

/-! ## A024748.P8818607907536257635

`A090706(A001567(n+1)+A000301(n))`
-/

namespace A024748.P8818607907536257635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A001567 (n + 1) + A000301 n).toNat

end

end A024748.P8818607907536257635

/-!
# A024749: Binomial coefficients: C(n,k), 5 <= k <= n-5, sorted.

The programs for A024749, there is no canonical definition to state claims against.
-/

/-! ## A024749.P5864261107102771153

`A024757(round(log(A024777(n+2))))`
-/

namespace A024749.P5864261107102771153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024757 (SequenceMachineLib.roundAway (Real.log (A024777 (n + 2) : ℝ))).toNat

end

end A024749.P5864261107102771153

/-! ## A024749.P10511711326260302820

`A024757(floor(ratio[A348365(n+1)]))`
-/

namespace A024749.P10511711326260302820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024757 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A024749.P10511711326260302820

/-!
# A024750: Binomial coefficients: C(n,k), 6 <= k <= n-6, sorted.

The programs for A024750, there is no canonical definition to state claims against.
-/

/-! ## A024750.P13775387468794816551

`A024758(round(log(A024777(n+2))))`
-/

namespace A024750.P13775387468794816551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024758 (SequenceMachineLib.roundAway (Real.log (A024777 (n + 2) : ℝ))).toNat

end

end A024750.P13775387468794816551

/-!
# A024751: Binomial coefficients: C(n,k), 7 <= k <= n-7, sorted.

The programs for A024751, there is no canonical definition to state claims against.
-/

/-! ## A024751.P10241034636269792422

`A024759(round(log(A024777(n+2))))`
-/

namespace A024751.P10241034636269792422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024759 (SequenceMachineLib.roundAway (Real.log (A024777 (n + 2) : ℝ))).toNat

end

end A024751.P10241034636269792422

/-!
# A024752: Binomial coefficients: C(n,k), 8 <= k <= n-8, sorted.

The programs for A024752, there is no canonical definition to state claims against.
-/

/-! ## A024752.P8007830799424964504

`A024760(round(log(A024777(n+2))))`
-/

namespace A024752.P8007830799424964504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024760 (SequenceMachineLib.roundAway (Real.log (A024777 (n + 2) : ℝ))).toNat

end

end A024752.P8007830799424964504

/-! ## A024752.P18292871337981236193

`A024760(A080513(n))*A033630(A000351(n))`
-/

namespace A024752.P18292871337981236193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024760 (A080513 n).toNat * A033630 (A000351 n).toNat

end

end A024752.P18292871337981236193

/-!
# A024753: Binomial coefficients: C(n,k), 9 <= k <= n-9, sorted.

The programs for A024753, there is no canonical definition to state claims against.
-/

/-! ## A024753.P3329041225873367048

`A024761(round(log(A024777(n+2))))`
-/

namespace A024753.P3329041225873367048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024761 (SequenceMachineLib.roundAway (Real.log (A024777 (n + 2) : ℝ))).toNat

end

end A024753.P3329041225873367048

/-! ## A024753.P4093638033624801438

`A024761(A156253(n+1)^A007732(n+1))`
-/

namespace A024753.P4093638033624801438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024761 (SequenceMachineLib.roundAway ((A156253 (n + 1) : ℚ) ^ (A007732 (n + 1) : ℤ))).toNat

end

end A024753.P4093638033624801438

/-!
# A024754: Binomial coefficients: C(n,k), 10 <= k <= n-10, sorted.

The programs for A024754, there is no canonical definition to state claims against.
-/

/-! ## A024754.P7030083668127188812

`A024762(round(log(A024777(n+2))))`
-/

namespace A024754.P7030083668127188812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024762 (SequenceMachineLib.roundAway (Real.log (A024777 (n + 2) : ℝ))).toNat

end

end A024754.P7030083668127188812

/-!
# A024755: Binomial coefficients: C(n,k), 3 <= k <= n-3, sorted, duplicates removed.

The programs for A024755, there is no canonical definition to state claims against.
-/

/-! ## A024755.P3453154121764429653

`record[A024747(n+1)%((2*n)²-6)²]`
-/

namespace A024755.P3453154121764429653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024747 (n + 1)) ((((2 * n) ^ 2 : ℤ) - 6) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024755.P3453154121764429653

/-! ## A024755.P9232103522446731741

`record[A024747(A004151(n+1))]`
-/

namespace A024755.P9232103522446731741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024747 (A004151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024755.P9232103522446731741

/-! ## A024755.P17633059078811488179

`record[A024747(A008611(n+2))]`
-/

namespace A024755.P17633059078811488179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024747 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024755.P17633059078811488179

/-! ## A024755.P9885104137837193316

`record[gcd(A024747(n+1), A037213(n))]`
-/

namespace A024755.P9885104137837193316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024747 (n + 1)) (A037213 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024755.P9885104137837193316

/-! ## A024755.P6247170049637138218

`record[A024747(A008624(n+2))]`
-/

namespace A024755.P6247170049637138218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024747 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024755.P6247170049637138218

/-! ## A024755.P16085509859448997389

`record[A024747(A004736(n+1))]`
-/

namespace A024755.P16085509859448997389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024747 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024755.P16085509859448997389

/-! ## A024755.P7890308120225133348

`lt[2, A357327(n+1)]+1`
-/

namespace A024755.P7890308120225133348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024755.P7890308120225133348

/-! ## A024755.P12444120582612463418

`record[A024747(A037213(n)+1)]`
-/

namespace A024755.P12444120582612463418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024747 (A037213 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024755.P12444120582612463418

/-!
# A024756: Binomial coefficients: C(n,k), 4 <= k <= n-4, sorted, duplicates removed.

The programs for A024756, there is no canonical definition to state claims against.
-/

/-! ## A024756.P17033822825268578998

`record[A024748(A052938(n))]`
-/

namespace A024756.P17033822825268578998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024748 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024756.P17033822825268578998

/-! ## A024756.P5108529435155846961

`record[A024748(A004151(n+1))]`
-/

namespace A024756.P5108529435155846961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024748 (A004151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024756.P5108529435155846961

/-! ## A024756.P16113973819728225322

`record[A024748(A008611(n+2))]`
-/

namespace A024756.P16113973819728225322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024748 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024756.P16113973819728225322

/-! ## A024756.P13408244578916996433

`record[A024748(n+1)/A051340(n+1)]`
-/

namespace A024756.P13408244578916996433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024748 (n + 1) : ℚ) / (A051340 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024756.P13408244578916996433

/-! ## A024756.P10022636185797199014

`record[A024748(A008624(n+2))]`
-/

namespace A024756.P10022636185797199014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024748 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024756.P10022636185797199014

/-! ## A024756.P3722722083994655920

`record[A024748(A065648(n))]`
-/

namespace A024756.P3722722083994655920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024748 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024756.P3722722083994655920

/-! ## A024756.P2531166338458837891

`record[A024748(A051340(n))]`
-/

namespace A024756.P2531166338458837891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024748 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024756.P2531166338458837891

/-! ## A024756.P6064368436699915410

`filter[A024755(n+1), A014306(#)]`
-/

namespace A024756.P6064368436699915410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A024756.P6064368436699915410

/-!
# A024757: Binomial coefficients: C(n,k), 5 <= k <= n-5, sorted, duplicates removed.

The programs for A024757, there is no canonical definition to state claims against.
-/

/-! ## A024757.P16142632305795194155

`record[A024749(A052938(n))]`
-/

namespace A024757.P16142632305795194155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024749 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024757.P16142632305795194155

/-! ## A024757.P13235559020309083319

`record[A024749(A004151(n+1))]`
-/

namespace A024757.P13235559020309083319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024749 (A004151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024757.P13235559020309083319

/-! ## A024757.P13895992212030954345

`record[A024749(A008611(n+2))]`
-/

namespace A024757.P13895992212030954345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024749 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024757.P13895992212030954345

/-! ## A024757.P17373028760896080115

`record[A024749(A028242(n+3))]`
-/

namespace A024757.P17373028760896080115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024749 (A028242 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024757.P17373028760896080115

/-! ## A024757.P3227705294562025237

`record[A024749(A065648(n))]`
-/

namespace A024757.P3227705294562025237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024749 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024757.P3227705294562025237

/-! ## A024757.P12348430819886296615

`record[A024749(A004736(n+1))]`
-/

namespace A024757.P12348430819886296615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024749 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024757.P12348430819886296615

/-!
# A024758: Binomial coefficients: C(n,k), 6 <= k <= n-6, sorted, duplicates removed.

The programs for A024758, there is no canonical definition to state claims against.
-/

/-! ## A024758.P17679169517051217918

`record[A024750(A052938(n))]`
-/

namespace A024758.P17679169517051217918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024750 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024758.P17679169517051217918

/-! ## A024758.P3742956132382532375

`record[A024750(A291766(n))]`
-/

namespace A024758.P3742956132382532375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024750 (A291766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024758.P3742956132382532375

/-! ## A024758.P15740508873130452892

`record[A024750(A326139(n+1))]`
-/

namespace A024758.P15740508873130452892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024750 (A326139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024758.P15740508873130452892

/-! ## A024758.P2035925759375991898

`record[A024750(A008611(n+2))]`
-/

namespace A024758.P2035925759375991898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024750 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024758.P2035925759375991898

/-! ## A024758.P17940015125925082882

`record[A024750(A008624(n+2))]`
-/

namespace A024758.P17940015125925082882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024750 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024758.P17940015125925082882

/-! ## A024758.P5470795777556624885

`record[A024750(A219158(n+1))]`
-/

namespace A024758.P5470795777556624885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024750 (A219158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024758.P5470795777556624885

/-! ## A024758.P14721930298194965128

`record[A024750(A004736(n+1))]`
-/

namespace A024758.P14721930298194965128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024750 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024758.P14721930298194965128

/-! ## A024758.P11690798041886172043

`record[A024750(A157458(n+1))]`
-/

namespace A024758.P11690798041886172043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024750 (A157458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024758.P11690798041886172043

/-!
# A024759: Binomial coefficients: C(n,k), 7 <= k <= n-7, sorted, duplicates removed.

The programs for A024759, there is no canonical definition to state claims against.
-/

/-! ## A024759.P5422419852404959744

`record[A024751(A052938(n))]`
-/

namespace A024759.P5422419852404959744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024751 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024759.P5422419852404959744

/-! ## A024759.P9013859799423577707

`record[A024751(A022447(n+1))]`
-/

namespace A024759.P9013859799423577707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024751 (A022447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024759.P9013859799423577707

/-! ## A024759.P11830160737287031013

`record[A024751(A032742(n+1))]`
-/

namespace A024759.P11830160737287031013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024751 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024759.P11830160737287031013

/-! ## A024759.P14874520648667369142

`record[A024751(A008611(n+2))]`
-/

namespace A024759.P14874520648667369142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024751 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024759.P14874520648667369142

/-! ## A024759.P15028198768990439758

`record[A024751(A008619(and(n, n+1)))]`
-/

namespace A024759.P15028198768990439758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024751 (A008619 (Nat.land n (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024759.P15028198768990439758

/-! ## A024759.P5973810999349249217

`record[A024751(A008624(n+2))]`
-/

namespace A024759.P5973810999349249217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024751 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024759.P5973810999349249217

/-! ## A024759.P11647027366214379282

`record[A024751(A035936(n))]`
-/

namespace A024759.P11647027366214379282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024751 (A035936 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024759.P11647027366214379282

/-! ## A024759.P14621398483718752798

`A024751(A169864(n+1))`
-/

namespace A024759.P14621398483718752798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024751 (A169864 (n + 1)).toNat

end

end A024759.P14621398483718752798

/-!
# A024760: Binomial coefficients: C(n,k), 8 <= k <= n-8, sorted, duplicates removed.

The programs for A024760, there is no canonical definition to state claims against.
-/

/-! ## A024760.P17524836461962673561

`record[A024752(A052938(n))]`
-/

namespace A024760.P17524836461962673561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P17524836461962673561

/-! ## A024760.P2695423348557444267

`record[A024752(A008611(n+2))]`
-/

namespace A024760.P2695423348557444267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P2695423348557444267

/-! ## A024760.P2827010271358728534

`record[A024752(n+1)%A024752(n+2)]`
-/

namespace A024760.P2827010271358728534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024752 (n + 1)) (A024752 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P2827010271358728534

/-! ## A024760.P4871310417638971438

`record[A024752(A008624(n+2))]`
-/

namespace A024760.P4871310417638971438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P4871310417638971438

/-! ## A024760.P1417636411319897242

`record[A024752(A027750(n+1))]`
-/

namespace A024760.P1417636411319897242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P1417636411319897242

/-! ## A024760.P7976508068994003317

`record[A024752(A003963(n+1))]`
-/

namespace A024760.P7976508068994003317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P7976508068994003317

/-! ## A024760.P12283057580691159573

`record[A024752(A028920(n))]`
-/

namespace A024760.P12283057580691159573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P12283057580691159573

/-! ## A024760.P7242031025228565763

`record[A024752(A035936(n))]`
-/

namespace A024760.P7242031025228565763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A035936 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P7242031025228565763

/-! ## A024760.P14397663997519242684

`record[A024752(A004736(n+1))]`
-/

namespace A024760.P14397663997519242684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024760.P14397663997519242684

/-! ## A024760.P2478274206219314610

`A024752(A169864(n+1))`
-/

namespace A024760.P2478274206219314610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024752 (A169864 (n + 1)).toNat

end

end A024760.P2478274206219314610

/-!
# A024761: Binomial coefficients: C(n,k), 9 <= k <= n-9, sorted, duplicates removed.

The programs for A024761, there is no canonical definition to state claims against.
-/

/-! ## A024761.P17817527907711794317

`record[A024753(A328396(n))]`
-/

namespace A024761.P17817527907711794317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A328396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024761.P17817527907711794317

/-! ## A024761.P14783818778137710270

`record[A024753(A003602(n+1))]`
-/

namespace A024761.P14783818778137710270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024761.P14783818778137710270

/-! ## A024761.P12312507146627246331

`record[A024753(A032742(n+1))]`
-/

namespace A024761.P12312507146627246331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024761.P12312507146627246331

/-! ## A024761.P11217699312531806321

`record[A024753(A008611(n+2))]`
-/

namespace A024761.P11217699312531806321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024761.P11217699312531806321

/-! ## A024761.P3275638582966697185

`record[A024753(A057979(n+2))]`
-/

namespace A024761.P3275638582966697185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A057979 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024761.P3275638582966697185

/-! ## A024761.P6468635120445895943

`record[A024753(A008624(n+2))]`
-/

namespace A024761.P6468635120445895943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024761.P6468635120445895943

/-! ## A024761.P12809640418087522470

`record[A024753(A002260(n+1))]`
-/

namespace A024761.P12809640418087522470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024761.P12809640418087522470

/-! ## A024761.P18022572941553882118

`record[A024753(A004736(n+1))]`
-/

namespace A024761.P18022572941553882118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024761.P18022572941553882118

/-! ## A024761.P3484435068853359011

`A024753(A169864(n+1))`
-/

namespace A024761.P3484435068853359011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024753 (A169864 (n + 1)).toNat

end

end A024761.P3484435068853359011

/-!
# A024762: Binomial coefficients: C(n,k), 10 <= k <= n-10, sorted, duplicates removed.

The programs for A024762, there is no canonical definition to state claims against.
-/

/-! ## A024762.P11717930866775739568

`record[A024754(n+1)-char[2]]`
-/

namespace A024762.P11717930866775739568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P11717930866775739568

/-! ## A024762.P16912882222153115500

`record[A024754(A291769(n))]`
-/

namespace A024762.P16912882222153115500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P16912882222153115500

/-! ## A024762.P14725171557231502570

`record[A024754(A032742(n+1))]`
-/

namespace A024762.P14725171557231502570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P14725171557231502570

/-! ## A024762.P1831151305446290577

`record[A024754(A008611(n+2))]`
-/

namespace A024762.P1831151305446290577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P1831151305446290577

/-! ## A024762.P17846001885762836382

`record[A024754(n+1)*A287769(n+1)]`
-/

namespace A024762.P17846001885762836382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (n + 1) * A287769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P17846001885762836382

/-! ## A024762.P2108836015712762122

`record[A024754(A008624(n+2))]`
-/

namespace A024762.P2108836015712762122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P2108836015712762122

/-! ## A024762.P11843257699076674419

`record[A024754(A020986(n))]`
-/

namespace A024762.P11843257699076674419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P11843257699076674419

/-! ## A024762.P8990934820975562249

`record[A024754(A002260(n+1))]`
-/

namespace A024762.P8990934820975562249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P8990934820975562249

/-! ## A024762.P10704327715782511170

`record[A024754(A004736(n+1))]`
-/

namespace A024762.P10704327715782511170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024762.P10704327715782511170

/-! ## A024762.P845314586325138159

`A024754(A169864(n+1))`
-/

namespace A024762.P845314586325138159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024754 (A169864 (n + 1)).toNat

end

end A024762.P845314586325138159

/-!
# A024764: Every prefix prime in base 4 (written in base 4).

The programs for A024764, there is no canonical definition to state claims against.
-/

/-! ## A024764.P2101079655421915692

`A030665(a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A024764.P2101079655421915692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A030665 (a (n - 2)).toNat

end

end A024764.P2101079655421915692

/-! ## A024764.P17033342608787101629

`A218255(a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A024764.P17033342608787101629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A218255 (a (n - 2)).toNat

end

end A024764.P17033342608787101629

/-! ## A024764.P1649846698834046668

`A256481(a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A024764.P1649846698834046668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A256481 (a (n - 2)).toNat

end

end A024764.P1649846698834046668

/-!
# A024766: Every prefix prime in base 6 (written in base 6).

The programs for A024766, there is no canonical definition to state claims against.
-/

/-! ## A024766.P4760860641784489804

`A001729(A129672(n+1))`
-/

namespace A024766.P4760860641784489804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (A129672 (n + 1)).toNat

end

end A024766.P4760860641784489804

/-! ## A024766.P9973937930825462920

`A007092(∏{p}[A129672(n+1), #])`
-/

namespace A024766.P9973937930825462920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A024766.P9973937930825462920

/-! ## A024766.P8873689129323760563

`A007092(A129672(n+1)%A061663(n+1))`
-/

namespace A024766.P8873689129323760563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Int.tmod (A129672 (n + 1)) (A061663 (n + 1))).toNat

end

end A024766.P8873689129323760563

/-! ## A024766.P17890843526857095491

`A007092(A129672(n+1))%A069276(n+1)`
-/

namespace A024766.P17890843526857095491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007092 (A129672 (n + 1)).toNat) (A069276 (n + 1))

end

end A024766.P17890843526857095491

/-! ## A024766.P14926398074227131505

`A007092(A000034(2*(n+1))*A129672(n+1))`
-/

namespace A024766.P14926398074227131505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A000034 (2 * (n + 1)) * A129672 (n + 1)).toNat

end

end A024766.P14926398074227131505

/-!
# A024767: Every prefix prime in base 7 (written in base 7).

The programs for A024767, there is no canonical definition to state claims against.
-/

/-! ## A024767.P901016988251793931

`A007093(A129673(n+1))`
-/

namespace A024767.P901016988251793931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A129673 (n + 1)).toNat

end

end A024767.P901016988251793931

/-!
# A024768: Prefix primes in base 8 (written in base 8).

The programs for A024768, there is no canonical definition to state claims against.
-/

/-! ## A024768.P7698128480796649768

`A007094(A129692(n+1))`
-/

namespace A024768.P7698128480796649768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A129692 (n + 1)).toNat

end

end A024768.P7698128480796649768

/-! ## A024768.P2649931813488066289

`A007094(p?[lt[A249068(n), 5]])`
-/

namespace A024768.P2649931813488066289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249068 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A024768.P2649931813488066289

/-! ## A024768.P15913368714398588300

`A007094(∩[A190785(n+1), A344620(n+1)])`
-/

namespace A024768.P15913368714398588300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344620 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A024768.P15913368714398588300

/-! ## A024768.P11869543038043851604

`A173105(lt[A246466(n), n+1])`
-/

namespace A024768.P11869543038043851604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246466 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173105 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A024768.P11869543038043851604

/-! ## A024768.P8178624460620798310

`A173105(lt[A246466(n)-1, n])`
-/

namespace A024768.P8178624460620798310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246466 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173105 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A024768.P8178624460620798310

/-!
# A024769: Every prefix prime in base 9 (written in base 9).

The programs for A024769, there is no canonical definition to state claims against.
-/

/-! ## A024769.P9192908398759006604

`A007095(A129693(n+1))`
-/

namespace A024769.P9192908398759006604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A129693 (n + 1)).toNat

end

end A024769.P9192908398759006604

/-! ## A024769.P11947213902226122037

`A052382(p?[A129693(n+1)])`
-/

namespace A024769.P11947213902226122037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024769.P11947213902226122037

/-! ## A024769.P4572277313049714546

`A052382(∏{d}[A129693(n+1), #])`
-/

namespace A024769.P4572277313049714546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A024769.P4572277313049714546

/-! ## A024769.P11762693490671429686

`A052382(∑{p}[A129693(n+1), #])`
-/

namespace A024769.P11762693490671429686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A024769.P11762693490671429686

/-! ## A024769.P6995347997338329883

`A052382(∏{p}[A129693(n+1), #])`
-/

namespace A024769.P6995347997338329883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A024769.P6995347997338329883

/-!
# A024770: Right-truncatable primes: every prefix is prime.

The programs for A024770, there is no canonical definition to state claims against.
-/

/-! ## A024770.P5585036906352629177

`Δ[A173057(a(floor(1/(n+1)))+n)]` with `a(0)=0`
-/

namespace A024770.P5585036906352629177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A173057 (f1 ⌊1 / (n + 1 : ℚ)⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024770.P5585036906352629177

/-! ## A024770.P11697686540462220218

`xor(1, Δ[A173057(A028310(n))])+1`
-/

namespace A024770.P11697686540462220218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n) + 1

end

end A024770.P11697686540462220218

/-! ## A024770.P13157970561161485057

`A000038(n)+Δ[A173057(A028310(n))]`
-/

namespace A024770.P13157970561161485057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A024770.P13157970561161485057

/-! ## A024770.P17945969511831418733

`Δ[A057427(n)*A173057(A028310(n))]`
-/

namespace A024770.P17945969511831418733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A173057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024770.P17945969511831418733

/-! ## A024770.P13743214845774425410

`Δ[A173057(A028310(n))*A178334(n)]`
-/

namespace A024770.P13743214845774425410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173057 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024770.P13743214845774425410

/-! ## A024770.P760959713441480190

`Δ[A173057(A028310(n))%A001020(n)]`
-/

namespace A024770.P760959713441480190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173057 (A028310 n).toNat) (A001020 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024770.P760959713441480190

/-! ## A024770.P17346812403662495654

`Δ[A173057(A028310(n))-A000038(2*n)]`
-/

namespace A024770.P17346812403662495654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173057 (A028310 n).toNat - A000038 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024770.P17346812403662495654

/-! ## A024770.P1867109479824628461

`Δ[A043545(2*n)*A173057(A028310(n))]`
-/

namespace A024770.P1867109479824628461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * n) * A173057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024770.P1867109479824628461

/-! ## A024770.P10656246536876950361

`Δ[A000040(n+1)%2*A173057(A028310(n))]`
-/

namespace A024770.P10656246536876950361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A173057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024770.P10656246536876950361

/-! ## A024770.P5066121234355739507

`Δ[A006530((n+1)²+1)%2*A173057(A028310(n))]`
-/

namespace A024770.P5066121234355739507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 ((n + 1) ^ 2 + 1)) 2 * A173057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024770.P5066121234355739507

/-!
# A024771: Expansion of 1/((1-x)(1-8x)(1-9x)(1-10x)).

The programs for A024771, the canonical program `A024771.P28828017085431720` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024771 has offset 0).

The definition of A024771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024771.P28828017085431720

`(28*10^(n+3)-63*9^(n+3)+36*8^(n+3)-1)/504`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024771

/-- `(28*10^(n+3)-63*9^(n+3)+36*8^(n+3)-1)/504` -/
def P28828017085431720.Spec : Prop :=
  ∀ n, P28828017085431720.a n = (A024771 n : ℚ)

end A024771

/-! ## A024771.P15334284077095306769

`∑[A020976(n)]`
-/

namespace A024771.P15334284077095306769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024771.P15334284077095306769

namespace A024771

/-- `∑[A020976(n)]` -/
def P15334284077095306769.Spec : Prop :=
  ∀ n, P15334284077095306769.a n = A024771 n

end A024771

/-! ## A024771.P6961348149767233446

`2*A024441(n)-A024438(n)`
-/

namespace A024771.P6961348149767233446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024441 n - A024438 n

end

end A024771.P6961348149767233446

namespace A024771

/-- `2*A024441(n)-A024438(n)` -/
def P6961348149767233446.Spec : Prop :=
  ∀ n, P6961348149767233446.a n = A024771 n

end A024771

/-! ## A024771.P16816906212714032974

`A016257(n+1)-A016256(n+1)`
-/

namespace A024771.P16816906212714032974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016257 (n + 1) - A016256 (n + 1)

end

end A024771.P16816906212714032974

namespace A024771

/-- `A016257(n+1)-A016256(n+1)` -/
def P16816906212714032974.Spec : Prop :=
  ∀ n, P16816906212714032974.a n = A024771 n

end A024771

/-! ## A024771.P986944271776092097

`∑[A016186(n+1)-Δ[A016256(n)]]`
-/

namespace A024771.P986944271776092097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016256 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016186 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024771.P986944271776092097

namespace A024771

/-- `∑[A016186(n+1)-Δ[A016256(n)]]` -/
def P986944271776092097.Spec : Prop :=
  ∀ n, P986944271776092097.a n = A024771 n

end A024771

/-! ## A024771.P3155652167658096134

`A021264(n)+A028015(n)-A021268(n)`
-/

namespace A024771.P3155652167658096134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021264 n + (A028015 n - A021268 n)

end

end A024771.P3155652167658096134

namespace A024771

/-- `A021264(n)+A028015(n)-A021268(n)` -/
def P3155652167658096134.Spec : Prop :=
  ∀ n, P3155652167658096134.a n = A024771 n

end A024771

/-! ## A024771.P17657295809739942598

`A024438(n)+A024441(n)-A024437(n)`
-/

namespace A024771.P17657295809739942598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024438 n + (A024441 n - A024437 n)

end

end A024771.P17657295809739942598

namespace A024771

/-- `A024438(n)+A024441(n)-A024437(n)` -/
def P17657295809739942598.Spec : Prop :=
  ∀ n, P17657295809739942598.a n = A024771 n

end A024771

/-! ## A024771.P1257119361880073875

`A016261(n+1)-A016257(n+1)`
-/

namespace A024771.P1257119361880073875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016261 (n + 1) - A016257 (n + 1)

end

end A024771.P1257119361880073875

namespace A024771

/-- `A016261(n+1)-A016257(n+1)` -/
def P1257119361880073875.Spec : Prop :=
  ∀ n, P1257119361880073875.a n = A024771 n

end A024771

/-! ## A024771.P14879921946002146814

`Δ[∑[A016261(n)%(A016257(n)+1)]+n]`
-/

namespace A024771.P14879921946002146814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016261 n) (A016257 n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024771.P14879921946002146814

namespace A024771

/-- `Δ[∑[A016261(n)%(A016257(n)+1)]+n]` -/
def P14879921946002146814.Spec : Prop :=
  ∀ n, P14879921946002146814.a n = A024771 n

end A024771

/-! ## A024771.P3427973145714901718

`∑[2*A020977(n)-A020979(n)]`
-/

namespace A024771.P3427973145714901718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020977 n - A020979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024771.P3427973145714901718

namespace A024771

/-- `∑[2*A020977(n)-A020979(n)]` -/
def P3427973145714901718.Spec : Prop :=
  ∀ n, P3427973145714901718.a n = A024771 n

end A024771

/-!
# A024772: Expansion of 1/((1-x)(1-8x)(1-9x)(1-11x)).

The programs for A024772, there is no canonical definition to state claims against.
-/

/-! ## A024772.P5338668487667556005

`∑[A020977(n)]`
-/

namespace A024772.P5338668487667556005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024772.P5338668487667556005

/-! ## A024772.P16219270369707325133

`2*A024439(n)-A024437(n)`
-/

namespace A024772.P16219270369707325133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024439 n - A024437 n

end

end A024772.P16219270369707325133

/-! ## A024772.P3921529462808549062

`2*A024442(n)-A024439(n)`
-/

namespace A024772.P3921529462808549062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024442 n - A024439 n

end

end A024772.P3921529462808549062

/-! ## A024772.P6377108936021269366

`2*A024999(n)-A025009(n)`
-/

namespace A024772.P6377108936021269366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024999 n - A025009 n

end

end A024772.P6377108936021269366

/-! ## A024772.P15759444189554930294

`A016262(n+1)-A016259(n+1)`
-/

namespace A024772.P15759444189554930294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016262 (n + 1) - A016259 (n + 1)

end

end A024772.P15759444189554930294

/-! ## A024772.P9258132783578759424

`a(n-1)+lcm(A020977(n), A033999(n))` with `a(0)=1`
-/

namespace A024772.P9258132783578759424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A020977 n) (A033999 n)

end

end A024772.P9258132783578759424

/-! ## A024772.P7211334911756873157

`A024441(n)+A024444(n)-A024439(n)`
-/

namespace A024772.P7211334911756873157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024441 n + (A024444 n - A024439 n)

end

end A024772.P7211334911756873157

/-!
# A024773: Every prefix and suffix prime in base 5 (written in base 5).

The programs for A024773, there is no canonical definition to state claims against.
-/

/-! ## A024773.P15004591663482385717

`floor(3/(4*a(n-1)+1)*10^n)` with `a(0)=2`
-/

namespace A024773.P15004591663482385717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊3 / (4 * a (n - 1) + 1 : ℚ) * (10 ^ n : ℚ)⌋

end

end A024773.P15004591663482385717

/-!
# A024774: Every prefix and suffix prime in base 6 (written in base 6).

The programs for A024774, there is no canonical definition to state claims against.
-/

/-! ## A024774.P5745386036840215641

`∩[A024766(n+1), A024781(n+1)]`
-/

namespace A024774.P5745386036840215641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024774.P5745386036840215641

/-! ## A024774.P10655165123756880221

`A024766(A036469(n)*A318812(n+1))`
-/

namespace A024774.P10655165123756880221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024766 (A036469 n * A318812 (n + 1)).toNat

end

end A024774.P10655165123756880221

/-! ## A024774.P5509541521907419628

`A024766(A036469(n)%A024764(n+1))`
-/

namespace A024774.P5509541521907419628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024766 (Int.tmod (A036469 n) (A024764 (n + 1))).toNat

end

end A024774.P5509541521907419628

/-!
# A024776: Every prefix and suffix prime in base 8 (written in base 8).

The programs for A024776, there is no canonical definition to state claims against.
-/

/-! ## A024776.P14709942441198632414

`∩[A024768(n+1), A024783(n+1)]`
-/

namespace A024776.P14709942441198632414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024776.P14709942441198632414

/-! ## A024776.P15429765841031975797

`∩[A024768(n+1), A085557(n+1)]`
-/

namespace A024776.P15429765841031975797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024776.P15429765841031975797

/-! ## A024776.P16331941084943174830

`A024768(lcm(A020655(n+1), A275077(n)))`
-/

namespace A024776.P16331941084943174830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024768 (Int.lcm (A020655 (n + 1)) (A275077 n))

end

end A024776.P16331941084943174830

/-! ## A024776.P156477461474246127

`A024768(A047201(n+1)*A074465(n+1))`
-/

namespace A024776.P156477461474246127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024768 (A047201 (n + 1) * A074465 (n + 1)).toNat

end

end A024776.P156477461474246127

/-! ## A024776.P4571931105326675020

`∩[A024768(n+1), A346151(n)]`
-/

namespace A024776.P4571931105326675020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346151 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024776.P4571931105326675020

/-!
# A024777: Every prefix and suffix prime in base 9 (written in base 9).

The programs for A024777, there is no canonical definition to state claims against.
-/

/-! ## A024777.P17243230877300857998

`A024784(∑[A324749(n)])`
-/

namespace A024777.P17243230877300857998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024784 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024777.P17243230877300857998

/-! ## A024777.P7486195890272003898

`A024784(record[A163771(n)])`
-/

namespace A024777.P7486195890272003898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024784 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024777.P7486195890272003898

/-! ## A024777.P17683203846794139039

`A024784(A094873(n)+1)`
-/

namespace A024777.P17683203846794139039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024784 (A094873 n + 1).toNat

end

end A024777.P17683203846794139039

/-! ## A024777.P4427983951837032843

`A024769(A117307(n+1))`
-/

namespace A024777.P4427983951837032843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024769 (A117307 (n + 1)).toNat

end

end A024777.P4427983951837032843

/-!
# A024778: Expansion of 1/((1-x)(1-8x)(1-9x)(1-12x)).

The programs for A024778, there is no canonical definition to state claims against.
-/

/-! ## A024778.P13980564912173434847

`∑[A020978(n)]`
-/

namespace A024778.P13980564912173434847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024778.P13980564912173434847

/-! ## A024778.P5834741068153288843

`2*A021974(n)-A021904(n)`
-/

namespace A024778.P5834741068153288843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021974 n - A021904 n

end

end A024778.P5834741068153288843

/-! ## A024778.P12771161650347948914

`2*A024443(n)-A024440(n)`
-/

namespace A024778.P12771161650347948914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024443 n - A024440 n

end

end A024778.P12771161650347948914

/-! ## A024778.P4732343092530528656

`2*A025007(n)-A025031(n)`
-/

namespace A024778.P4732343092530528656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025007 n - A025031 n

end

end A024778.P4732343092530528656

/-! ## A024778.P4288833499676241485

`A016263(n+1)-A016260(n+1)`
-/

namespace A024778.P4288833499676241485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016263 (n + 1) - A016260 (n + 1)

end

end A024778.P4288833499676241485

/-! ## A024778.P3055521424719297961

`A020978(n)+2/A020639(2*(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A024778.P3055521424719297961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A020978 n : ℚ) + 2 / (A020639 (2 * (n + 1)) : ℚ) * a (n - 1)

end

end A024778.P3055521424719297961

/-! ## A024778.P6943985946374553213

`A016263(n)+A020978(n)-A016260(n)`
-/

namespace A024778.P6943985946374553213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016263 n + (A020978 n - A016260 n)

end

end A024778.P6943985946374553213

/-!
# A024779: Every suffix is prime and contains no 0 digits in base 4 (written in base 4).

The programs for A024779, there is no canonical definition to state claims against.
-/

/-! ## A024779.P13553456021347473911

`A007090(A129940(n+1))`
-/

namespace A024779.P13553456021347473911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A129940 (n + 1)).toNat

end

end A024779.P13553456021347473911

/-! ## A024779.P15204860326624821633

`p?[C(n+1, A182287(n))]`
-/

namespace A024779.P15204860326624821633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A182287 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A024779.P15204860326624821633

/-!
# A024782: Every suffix prime and no 0 digits in base 7 (written in base 7).

The programs for A024782, there is no canonical definition to state claims against.
-/

/-! ## A024782.P13806581462858999382

`A007093(C(A045314(n+1), A334949(2*n+3)))`
-/

namespace A024782.P13806581462858999382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Nat.choose (A045314 (n + 1)).toNat (A334949 (2 * n + 3)).toNat)

end

end A024782.P13806581462858999382

/-!
# A024783: Every suffix prime and no 0 digits in base 8 (written in base 8).

The programs for A024783, there is no canonical definition to state claims against.
-/

/-! ## A024783.P1275555537226258428

`A007094(A129944(n+1))`
-/

namespace A024783.P1275555537226258428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A129944 (n + 1)).toNat

end

end A024783.P1275555537226258428

/-! ## A024783.P9294502581986411591

`A007094(p?[A028777(n+1)])`
-/

namespace A024783.P9294502581986411591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024783.P9294502581986411591

/-! ## A024783.P1291039293988424900

`A344543(p?[A028777(n+1)])`
-/

namespace A024783.P1291039293988424900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024783.P1291039293988424900

/-! ## A024783.P13609423765163400981

`A344543(p?[A129944(n+1)])`
-/

namespace A024783.P13609423765163400981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024783.P13609423765163400981

/-! ## A024783.P9463150234995895233

`∩[A004682(n+1), A344543(n+1)]`
-/

namespace A024783.P9463150234995895233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024783.P9463150234995895233

/-!
# A024784: Every suffix prime and no 0 digits in base 9 (written in base 9).

The programs for A024784, there is no canonical definition to state claims against.
-/

/-! ## A024784.P13342707131790103791

`A007095(A129945(n+1))`
-/

namespace A024784.P13342707131790103791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A129945 (n + 1)).toNat

end

end A024784.P13342707131790103791

/-! ## A024784.P825818217600364767

`A052382(p?[A129945(n+1)])`
-/

namespace A024784.P825818217600364767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024784.P825818217600364767

/-! ## A024784.P17531822926889635988

`A052382(∏{d}[A129945(n+1), #])`
-/

namespace A024784.P17531822926889635988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A024784.P17531822926889635988

/-! ## A024784.P14532541103267420580

`A052382(∑{p}[A129945(n+1), #])`
-/

namespace A024784.P14532541103267420580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A024784.P14532541103267420580

/-! ## A024784.P3378372275903074059

`A052382(∏{p}[A129945(n+1), #])`
-/

namespace A024784.P3378372275903074059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A024784.P3378372275903074059

/-!
# A024785: Left-truncatable primes: every suffix is prime and no digits are zero.

The programs for A024785, there is no canonical definition to state claims against.
-/

/-! ## A024785.P13661264730117060057

`∩[A033664(n+1), A137812(n+1)]`
-/

namespace A024785.P13661264730117060057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024785.P13661264730117060057

/-! ## A024785.P7407439470560708325

`∩[A137812(n+1), A308711(n+1)]`
-/

namespace A024785.P7407439470560708325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024785.P7407439470560708325

/-! ## A024785.P10988530403521643564

`∩[A033664(n+1), A038618(n+1)]`
-/

namespace A024785.P10988530403521643564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024785.P10988530403521643564

/-! ## A024785.P4255108069598032768

`∩[A033664(n+1), A195943(n+1)]`
-/

namespace A024785.P4255108069598032768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024785.P4255108069598032768

/-! ## A024785.P17479381403551312147

`∩[A038618(n+1), A308711(n+1)]`
-/

namespace A024785.P17479381403551312147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024785.P17479381403551312147

/-! ## A024785.P4066842282505610626

`∩[A195943(n+1), A308711(n+1)]`
-/

namespace A024785.P4066842282505610626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024785.P4066842282505610626

/-! ## A024785.P14060780988521796761

`filter[A033664(n+1), A209929(#)]`
-/

namespace A024785.P14060780988521796761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A024785.P14060780988521796761

/-! ## A024785.P16315052476529384831

`filter[A308711(n+1), A209929(#)]`
-/

namespace A024785.P16315052476529384831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A024785.P16315052476529384831

/-! ## A024785.P7727642940830967313

`∩[A033664(n+1), A052382(n+1)]`
-/

namespace A024785.P7727642940830967313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024785.P7727642940830967313

/-! ## A024785.P7198957597317687431

`∩[A052382(n+1), A308711(n+1)]`
-/

namespace A024785.P7198957597317687431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024785.P7198957597317687431

/-! ## A024785.P17409166677730059788

`record[A004719(A033664(n+1))]`
-/

namespace A024785.P17409166677730059788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A033664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024785.P17409166677730059788

/-! ## A024785.P16127630802738698814

`record[A004719(A308711(n+1))]`
-/

namespace A024785.P16127630802738698814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A308711 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024785.P16127630802738698814

/-! ## A024785.P13872165281409548334

`filter[A033664(n+1), A168046(#)]`
-/

namespace A024785.P13872165281409548334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A024785.P13872165281409548334

/-! ## A024785.P16401022340677754667

`filter[A308711(n+1), A168046(#)]`
-/

namespace A024785.P16401022340677754667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A024785.P16401022340677754667

/-!
# A024786: Number of 2's in all partitions of n.

The programs for A024786, there is no canonical definition to state claims against.
-/

/-! ## A024786.P1101206801282698387

`∑[A182712(n+1)]`
-/

namespace A024786.P1101206801282698387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024786.P1101206801282698387

/-! ## A024786.P1412011086943449581

`∑[A087787(abs(1-n))]`
-/

namespace A024786.P1412011086943449581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024786.P1412011086943449581

/-! ## A024786.P6943287680468913020

`A087787(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A024786.P6943287680468913020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087787 (n - 1) + a (n - 1)

end

end A024786.P6943287680468913020

/-! ## A024786.P6342301831793773134

`a(n-2)+A000041(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A024786.P6342301831793773134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A000041 (n - 1)

end

end A024786.P6342301831793773134

/-! ## A024786.P14380402345007768007

`∑[A000041(n)-A087787(n)]`
-/

namespace A024786.P14380402345007768007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A087787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024786.P14380402345007768007

/-! ## A024786.P3880800496158259333

`∑[2*A270143(n)]-A270143(n)`
-/

namespace A024786.P3880800496158259333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A270143 n

end

end A024786.P3880800496158259333

/-! ## A024786.P2457763503096852206

`(A000070(n)-A087787(n))/2`
-/

namespace A024786.P2457763503096852206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n - A087787 n : ℚ) / 2

end

end A024786.P2457763503096852206

/-! ## A024786.P14189447702359253218

`A194452(n+1)-A096541(n+1)`
-/

namespace A024786.P14189447702359253218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194452 (n + 1) - A096541 (n + 1)

end

end A024786.P14189447702359253218

/-! ## A024786.P14754489387662637578

`A006128(n)-A194452(n)`
-/

namespace A024786.P14754489387662637578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A194452 n

end

end A024786.P14754489387662637578

/-! ## A024786.P7549479283710328337

`Δ[A000097(n)-A000070(n)]`
-/

namespace A024786.P7549479283710328337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024786.P7549479283710328337

/-! ## A024786.P2415641020733849297

`Δ[A000097(n)]-A000041(n+1)`
-/

namespace A024786.P2415641020733849297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 (n + 1)

end

end A024786.P2415641020733849297

/-! ## A024786.P7407787061699767410

`Δ[A000097(n)-A000041(n)]-A000041(n)`
-/

namespace A024786.P7407787061699767410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 n

end

end A024786.P7407787061699767410

/-! ## A024786.P8574296033051819614

`A000097(n+1)-(A000097(n)+A000041(n+1))`
-/

namespace A024786.P8574296033051819614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 (n + 1) - (A000097 n + A000041 (n + 1))

end

end A024786.P8574296033051819614

/-! ## A024786.P883587986766010271

`Δ[A103628(n)-A103650(n+1)]`
-/

namespace A024786.P883587986766010271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103628 n - A103650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024786.P883587986766010271

/-! ## A024786.P2277470407368853517

`Δ[A093695(n)/2]`
-/

namespace A024786.P2277470407368853517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093695 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024786.P2277470407368853517

/-! ## A024786.P12460710872335636172

`A014153(n)-A135348(n+1)`
-/

namespace A024786.P12460710872335636172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n - A135348 (n + 1)

end

end A024786.P12460710872335636172

/-! ## A024786.P4148424532062679229

`A014153(n)-(A103650(n+2)+A103628(n))`
-/

namespace A024786.P4148424532062679229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n - (A103650 (n + 2) + A103628 n)

end

end A024786.P4148424532062679229

/-! ## A024786.P7932044762914024368

`A082775(n+2)%A000097(n)`
-/

namespace A024786.P7932044762914024368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082775 (n + 2)) (A000097 n)

end

end A024786.P7932044762914024368

/-! ## A024786.P10715224308209643292

`A265257(n)+A024788(n+2)`
-/

namespace A024786.P10715224308209643292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265257 n + A024788 (n + 2)

end

end A024786.P10715224308209643292

/-! ## A024786.P2728803714333087241

`A024788(n+1)+A024788(n+3)`
-/

namespace A024786.P2728803714333087241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 1) + A024788 (n + 3)

end

end A024786.P2728803714333087241

/-!
# A024787: Number of 3's in all partitions of n.

The programs for A024787, there is no canonical definition to state claims against.
-/

/-! ## A024787.P10600332437158577211

`∑[A182713(n+1)]`
-/

namespace A024787.P10600332437158577211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024787.P10600332437158577211

/-! ## A024787.P7724083689782100991

`a(n-3)+A000041(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A024787.P7724083689782100991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + A000041 (n - 2)

end

end A024787.P7724083689782100991

/-! ## A024787.P4370149561172569731

`∑[∑[A002865(n)-A174455(n)]]`
-/

namespace A024787.P4370149561172569731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A174455 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024787.P4370149561172569731

/-! ## A024787.P1020652692574452161

`∑[A000041(n)-A240056(n+1)]`
-/

namespace A024787.P1020652692574452161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024787.P1020652692574452161

/-! ## A024787.P4737503322663000556

`A024786(n+1)-A116646(n+1)`
-/

namespace A024787.P4737503322663000556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) - A116646 (n + 1)

end

end A024787.P4737503322663000556

/-! ## A024787.P10282709409403721385

`A000097(n)-(A316861(n+1)+A024786(n+2))`
-/

namespace A024787.P10282709409403721385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - (A316861 (n + 1) + A024786 (n + 2))

end

end A024787.P10282709409403721385

/-! ## A024787.P17992174029476938484

`A000097(n+1)-(A316861(n+1)+A000070(n+1))`
-/

namespace A024787.P17992174029476938484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 (n + 1) - (A316861 (n + 1) + A000070 (n + 1))

end

end A024787.P17992174029476938484

/-! ## A024787.P5338139675970903515

`A117524(n+1)+A024788(n+1)`
-/

namespace A024787.P5338139675970903515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117524 (n + 1) + A024788 (n + 1)

end

end A024787.P5338139675970903515

/-! ## A024787.P1007405093749156535

`A024790(n+1)+A024790(n+4)`
-/

namespace A024787.P1007405093749156535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (n + 1) + A024790 (n + 4)

end

end A024787.P1007405093749156535

/-!
# A024788: Number of 4's in all partitions of n.

The programs for A024788, there is no canonical definition to state claims against.
-/

/-! ## A024788.P5668584958556683504

`∑[A182714(n+1)]`
-/

namespace A024788.P5668584958556683504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024788.P5668584958556683504

/-! ## A024788.P17657742631300752538

`a(n-4)+A000041(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A024788.P17657742631300752538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 4) + A000041 (n - 3)

end

end A024788.P17657742631300752538

/-! ## A024788.P6100213572501886294

`A265257(n+1)-A087787(n)`
-/

namespace A024788.P6100213572501886294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265257 (n + 1) - A087787 n

end

end A024788.P6100213572501886294

/-! ## A024788.P14198860783392853693

`∑[A000041(n)-A240059(n+1)]`
-/

namespace A024788.P14198860783392853693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024788.P14198860783392853693

/-! ## A024788.P5125979021942490493

`A024787(n+1)-A117524(n+1)`
-/

namespace A024788.P5125979021942490493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 1) - A117524 (n + 1)

end

end A024788.P5125979021942490493

/-! ## A024788.P3374748814687746138

`A265257(n+1)-A182712(n+2)`
-/

namespace A024788.P3374748814687746138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265257 (n + 1) - A182712 (n + 2)

end

end A024788.P3374748814687746138

/-! ## A024788.P1148539577359576754

`∑[A000041(n)-∑[A240058(n+1)]]`
-/

namespace A024788.P1148539577359576754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240058 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024788.P1148539577359576754

/-! ## A024788.P17279818289544852293

`A024786(n+1)-(A117524(n+1)+A116646(n+1))`
-/

namespace A024788.P17279818289544852293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) - (A117524 (n + 1) + A116646 (n + 1))

end

end A024788.P17279818289544852293

/-! ## A024788.P15176386958033714832

`A024792(n+5)+A024792(n+1)`
-/

namespace A024788.P15176386958033714832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (n + 5) + A024792 (n + 1)

end

end A024788.P15176386958033714832

/-!
# A024789: Number of 5's in all partitions of n.

The programs for A024789, there is no canonical definition to state claims against.
-/

/-! ## A024789.P3491548493086503768

`∑[A206555(n+1)]`
-/

namespace A024789.P3491548493086503768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024789.P3491548493086503768

/-! ## A024789.P6150803162101394904

`∑[A240065(n)-A240063(n+1)]`
-/

namespace A024789.P6150803162101394904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240065 n - A240063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024789.P6150803162101394904

/-! ## A024789.P10976809198435404044

`A024794(n+6)+A024794(n+1)`
-/

namespace A024789.P10976809198435404044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024794 (n + 6) + A024794 (n + 1)

end

end A024789.P10976809198435404044

/-! ## A024789.P14464314818946596873

`A206555(A028310(n)+1)+a(n-1)` with `a(0)=0`
-/

namespace A024789.P14464314818946596873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A206555 (A028310 n + 1).toNat + a (n - 1)

end

end A024789.P14464314818946596873

/-! ## A024789.P17055415504025401317

`∑[A000041(n)-A240063(n+3)-A240063(n+1)]`
-/

namespace A024789.P17055415504025401317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240063 (n + 3) - A240063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024789.P17055415504025401317

/-! ## A024789.P13467238553297477858

`A161224(A167499(n)%A000325(n))`
-/

namespace A024789.P13467238553297477858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 (Int.tmod (A167499 n) (A000325 n)).toNat

end

end A024789.P13467238553297477858

/-! ## A024789.P17809401800194610050

`A161224(A167499(n))%A032020(n)`
-/

namespace A024789.P17809401800194610050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161224 (A167499 n).toNat) (A032020 n)

end

end A024789.P17809401800194610050

/-!
# A024790: Number of 6's in all partitions of n.

The programs for A024790, there is no canonical definition to state claims against.
-/

/-! ## A024790.P15915300992020874346

`∑[A206556(n+1)]`
-/

namespace A024790.P15915300992020874346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024790.P15915300992020874346

/-! ## A024790.P7460756070142857578

`∑[A192002(A220479(n+1)+1)]`
-/

namespace A024790.P7460756070142857578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A220479 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024790.P7460756070142857578

/-! ## A024790.P4902010437142485702

`A101872(A000079(n))-A097797(n+1)`
-/

namespace A024790.P4902010437142485702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A000079 n).toNat - A097797 (n + 1)

end

end A024790.P4902010437142485702

/-! ## A024790.P543401452606824822

`∑{d}[A043320(n+1), A232482(#)]`
-/

namespace A024790.P543401452606824822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A232482 d

end

end A024790.P543401452606824822

/-! ## A024790.P14715141365605545571

`∑{d}[A187829(n+1), A232482(#)]`
-/

namespace A024790.P14715141365605545571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A232482 d

end

end A024790.P14715141365605545571

/-!
# A024791: Number of 7's in all partitions of n.

The programs for A024791, there is no canonical definition to state claims against.
-/

/-! ## A024791.P9455431869123203618

`∑[A206557(n+1)]`
-/

namespace A024791.P9455431869123203618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024791.P9455431869123203618

/-! ## A024791.P11261527118351575625

`A206557(A028310(n)+1)+a(n-1)` with `a(0)=0`
-/

namespace A024791.P11261527118351575625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A206557 (A028310 n + 1).toNat + a (n - 1)

end

end A024791.P11261527118351575625

/-! ## A024791.P12459521023495475858

`floor(A320067(2*(n+1))/A113003(3*(n+1)))`
-/

namespace A024791.P12459521023495475858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A320067 (2 * (n + 1)) : ℚ) / (A113003 (3 * (n + 1)) : ℚ)⌋

end

end A024791.P12459521023495475858

/-! ## A024791.P4309123473878299389

`floor(A334275(3*(n+1))/A027379(n+2))`
-/

namespace A024791.P4309123473878299389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334275 (3 * (n + 1)) : ℚ) / (A027379 (n + 2) : ℚ)⌋

end

end A024791.P4309123473878299389

/-! ## A024791.P10617488087186056724

`round(A356067(3*n+1)/A356059(n+4))`
-/

namespace A024791.P10617488087186056724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A356067 (3 * n + 1) : ℚ) / (A356059 (n + 4) : ℚ))

end

end A024791.P10617488087186056724

/-!
# A024792: Number of 8's in all partitions of n.

The programs for A024792, there is no canonical definition to state claims against.
-/

/-! ## A024792.P13893941324313695923

`∑[A206558(n+1)]`
-/

namespace A024792.P13893941324313695923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024792.P13893941324313695923

/-! ## A024792.P15859370778729604931

`∑[A034397(n+2)%A032370(n+1)]`
-/

namespace A024792.P15859370778729604931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034397 (n + 2)) (A032370 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024792.P15859370778729604931

/-! ## A024792.P7054485229994264568

`or(A185284(2*(n+2)), A319475(n+3))`
-/

namespace A024792.P7054485229994264568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (2 * (n + 2))) (A319475 (n + 3))

end

end A024792.P7054485229994264568

/-! ## A024792.P10508659126455349411

`or(A005070(A027423(n)), A026813(n))`
-/

namespace A024792.P10508659126455349411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005070 (A027423 n).toNat) (A026813 n)

end

end A024792.P10508659126455349411

/-!
# A024793: Number of 9's in all partitions of n.

The programs for A024793, there is no canonical definition to state claims against.
-/

/-! ## A024793.P4383981538479727657

`∑[A206559(n+1)]`
-/

namespace A024793.P4383981538479727657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024793.P4383981538479727657

/-! ## A024793.P14051704399766421989

`A326590(n+2)-A185284(A340693(n+1))`
-/

namespace A024793.P14051704399766421989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326590 (n + 2) - A185284 (A340693 (n + 1)).toNat

end

end A024793.P14051704399766421989

/-! ## A024793.P15373431873705268718

`floor(A118082(3*n+2)/138)`
-/

namespace A024793.P15373431873705268718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118082 (3 * n + 2) : ℚ) / 138⌋

end

end A024793.P15373431873705268718

/-! ## A024793.P15650860698106387211

`floor(A239494(3*n+2)/A250120(n))`
-/

namespace A024793.P15650860698106387211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239494 (3 * n + 2) : ℚ) / (A250120 n : ℚ)⌋

end

end A024793.P15650860698106387211

/-! ## A024793.P16671624019463556115

`Δ[A026815(n)]+A326591(n+1)%A301756(2*(n+2))`
-/

namespace A024793.P16671624019463556115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A326591 (n + 1)) (A301756 (2 * (n + 2)))

end

end A024793.P16671624019463556115

/-!
# A024794: Number of 10's in all partitions of n.

The programs for A024794, there is no canonical definition to state claims against.
-/

/-! ## A024794.P16107101169103947265

`∑[A206560(n+1)]`
-/

namespace A024794.P16107101169103947265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024794.P16107101169103947265

/-! ## A024794.P5286518734189618462

`A118759(A000041(n+1)-A261776(n+1))`
-/

namespace A024794.P5286518734189618462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A000041 (n + 1) - A261776 (n + 1)).toNat

end

end A024794.P5286518734189618462

/-! ## A024794.P9678713663073067440

`A326292(A132383(n)+6+n)`
-/

namespace A024794.P9678713663073067440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (A132383 n + 6 + (n : ℤ)).toNat

end

end A024794.P9678713663073067440

/-! ## A024794.P10360204095113476237

`A326292(eq[0, A244215(n)])`
-/

namespace A024794.P10360204095113476237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024794.P10360204095113476237

/-! ## A024794.P12162148053281732342

`filter[A326589(n+1), A110471(#)]`
-/

namespace A024794.P12162148053281732342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A110471 (f1 j).toNat = 1) n)

end

end A024794.P12162148053281732342

/-!
# A024795: Numbers that are the sum of 3 nonzero squares, including repetitions.

The programs for A024795, there is no canonical definition to state claims against.
-/

/-! ## A024795.P2780770043907066185

`A000408(A322021(n+1)%A238787(3*n+4))`
-/

namespace A024795.P2780770043907066185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (Int.tmod (A322021 (n + 1)) (A238787 (3 * n + 4))).toNat

end

end A024795.P2780770043907066185

/-! ## A024795.P35006895950465183

`A000408(n+1)-A081221(A006721(n))`
-/

namespace A024795.P35006895950465183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1) - A081221 (A006721 n).toNat

end

end A024795.P35006895950465183

/-! ## A024795.P5179917783463921859

`A000408(A187829(n+1)-A025437(n))`
-/

namespace A024795.P5179917783463921859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (A187829 (n + 1) - A025437 n).toNat

end

end A024795.P5179917783463921859

/-! ## A024795.P17229143458851657392

`A000408(n+1)-A107846(A245792(n))`
-/

namespace A024795.P17229143458851657392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1) - A107846 (A245792 n).toNat

end

end A024795.P17229143458851657392

/-! ## A024795.P16477702886479948651

`A000408(n+1)-A035187(A002623(3*n+4))`
-/

namespace A024795.P16477702886479948651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1) - A035187 (A002623 (3 * n + 4)).toNat

end

end A024795.P16477702886479948651

/-!
# A024796: Numbers expressible in more than one way as i^2 + j^2 + k^2, where 1 <= i <= j <= k.

The programs for A024796, there is no canonical definition to state claims against.
-/

/-! ## A024796.P2824362534673191723

`lt[1, A025427(n)]`
-/

namespace A024796.P2824362534673191723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024796.P2824362534673191723

/-! ## A024796.P13531585252123493674

`eq[2, A046698(A025427(n)²)]`
-/

namespace A024796.P13531585252123493674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A025427 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024796.P13531585252123493674

/-! ## A024796.P6859192733153895716

`eq[2, A046698(A025427(n)+1)]`
-/

namespace A024796.P6859192733153895716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A025427 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024796.P6859192733153895716

/-! ## A024796.P12495903653512279193

`eq[2, A046698(2*A025427(n))]`
-/

namespace A024796.P12495903653512279193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (2 * A025427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024796.P12495903653512279193

/-! ## A024796.P3497378663805391925

`lt[A000161(n)+1, A000164(n)]`
-/

namespace A024796.P3497378663805391925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024796.P3497378663805391925

/-! ## A024796.P3009478069858937547

`eq[1, A008719(a(A025427(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A024796.P3009478069858937547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A008719 (f2 (A025427 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024796.P3009478069858937547

/-! ## A024796.P8504285957028115184

`eq[1, A098474(a(A025427(n)))]` with `a(0)=7, a(1)=7`
-/

namespace A024796.P8504285957028115184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 7] fun n f2 =>
  A098474 (f2 (A025427 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024796.P8504285957028115184

/-! ## A024796.P13544588096344829558

`eq[2, 2%A028309(A025427(n)+1)]`
-/

namespace A024796.P13544588096344829558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A028309 (A025427 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024796.P13544588096344829558

/-! ## A024796.P758606351594925942

`eq[3, 3%A028309(2*A025427(n))]`
-/

namespace A024796.P758606351594925942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A028309 (2 * A025427 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024796.P758606351594925942

/-! ## A024796.P2505494781164743549

`eq[7, 7%A007504(A025427(n)+1)]`
-/

namespace A024796.P2505494781164743549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A007504 (A025427 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024796.P2505494781164743549

/-! ## A024796.P11083393683854230080

`eq[A000038(n), A130779(A025427(n)²)]`
-/

namespace A024796.P11083393683854230080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A025427 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024796.P11083393683854230080

/-!
# A024797: Positions of primes in A000408.

The programs for A024797, there is no canonical definition to state claims against.
-/

/-! ## A024797.P1864552073919132622

`eq[2, A000005(A000408(n+1))]+1`
-/

namespace A024797.P1864552073919132622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024797.P1864552073919132622

/-! ## A024797.P3797522705937318935

`record[A000027(n+1)%A014963(A000408(n+1))]`
-/

namespace A024797.P3797522705937318935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A014963 (A000408 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024797.P3797522705937318935

/-! ## A024797.P17529946504688265128

`record[(A005408(n)-n)%A014963(A000408(n+1))]`
-/

namespace A024797.P17529946504688265128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n - (n : ℤ)) (A014963 (A000408 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024797.P17529946504688265128

/-! ## A024797.P13161874111949795600

`record[A008619(2*n)%A014963(A000408(n+1))]`
-/

namespace A024797.P13161874111949795600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (A014963 (A000408 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024797.P13161874111949795600

/-! ## A024797.P17084871823440524915

`record[A003602(2*n+1)%A014963(A000408(n+1))]`
-/

namespace A024797.P17084871823440524915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (2 * n + 1)) (A014963 (A000408 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024797.P17084871823440524915

/-!
# A024798: Positions of even numbers in A000408.

The programs for A024798, there is no canonical definition to state claims against.
-/

/-! ## A024798.P4322099385782353882

`eq[2, gcd(2, A000408(n+2))]+2`
-/

namespace A024798.P4322099385782353882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000408 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A024798.P4322099385782353882

/-! ## A024798.P3794050631860017915

`eq[2, A020639(A000408(n+1))]+1`
-/

namespace A024798.P3794050631860017915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024798.P3794050631860017915

/-! ## A024798.P14857703966384533909

`eq[1, A091090(A000408(n+1))]+A033999(n)²`
-/

namespace A024798.P14857703966384533909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A033999 n ^ 2

end

end A024798.P14857703966384533909

/-! ## A024798.P1817280198823649659

`eq[1, A091090(A000408(n+1))]+A057077(n)²`
-/

namespace A024798.P1817280198823649659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A057077 n ^ 2

end

end A024798.P1817280198823649659

/-! ## A024798.P18257361521048233530

`eq[1, A091090(A000408(n+1))]+A087960(n)²`
-/

namespace A024798.P18257361521048233530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A087960 n ^ 2

end

end A024798.P18257361521048233530

/-! ## A024798.P15480266891550752397

`eq[1, A091090(A000408(n+1))]+A165326(n)²`
-/

namespace A024798.P15480266891550752397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A165326 n ^ 2

end

end A024798.P15480266891550752397

/-! ## A024798.P5051530465914886681

`A000034(2*n)+eq[1, A091090(A000408(n+1))]`
-/

namespace A024798.P5051530465914886681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A024798.P5051530465914886681

/-! ## A024798.P13705728548998661129

`(eq[1, A091090(A000408(n+1))]+1)%A017053(n)`
-/

namespace A024798.P13705728548998661129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A017053 n)

end

end A024798.P13705728548998661129

/-! ## A024798.P2864898401517650869

`eq[1, A091090(A000408(n+1))]+A226482(n)%2`
-/

namespace A024798.P2864898401517650869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + Int.tmod (A226482 n) 2

end

end A024798.P2864898401517650869

/-! ## A024798.P11152218021904398158

`eq[1, A091090(A000408(n+1))]+A008836(n+1)²`
-/

namespace A024798.P11152218021904398158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A008836 (n + 1) ^ 2

end

end A024798.P11152218021904398158

/-! ## A024798.P7588904466603059118

`record[A280193(A000408(n+2))+n]`
-/

namespace A024798.P7588904466603059118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A000408 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024798.P7588904466603059118

/-!
# A024799: Positions of odd numbers in A000408.

The programs for A024799, there is no canonical definition to state claims against.
-/

/-! ## A024799.P17235693563812989027

`record[(n+2)/gcd(2, A000408(n+2))]`
-/

namespace A024799.P17235693563812989027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd 2 (A000408 (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024799.P17235693563812989027

/-! ## A024799.P15053488853078560033

`record[n+2-A019430(A144020(n+1))]`
-/

namespace A024799.P15053488853078560033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A019430 (A144020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024799.P15053488853078560033

/-! ## A024799.P1059578491260276227

`lt[A019431(n), A019431(A000408(n+1))]+1`
-/

namespace A024799.P1059578491260276227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A000408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024799.P1059578491260276227

/-! ## A024799.P4167168830080951143

`eq[char[A024798(n+1)], A000007(n)]`
-/

namespace A024799.P4167168830080951143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024798 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024799.P4167168830080951143

/-! ## A024799.P14706057521719462218

`eq[char[A024798(n+1)], A000038(n)]`
-/

namespace A024799.P14706057521719462218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024798 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024799.P14706057521719462218

/-! ## A024799.P11037471499269418133

`eq[char[A024798(n+1)], A020761(n)]`
-/

namespace A024799.P11037471499269418133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024798 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024799.P11037471499269418133

/-! ## A024799.P6652466050673334760

`record[n-A280193(A000408(n+1))]`
-/

namespace A024799.P6652466050673334760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A280193 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024799.P6652466050673334760

/-! ## A024799.P4729808150825018001

`record[A280193(A144020(n+1))+A023443(n)]`
-/

namespace A024799.P4729808150825018001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A144020 (n + 1)).toNat + A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024799.P4729808150825018001

