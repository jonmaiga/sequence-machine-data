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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A315700: Coordination sequence Gal.6.638.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315700, the canonical program `A315700.P8415465502126498151` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315700 has offset 0).

The definition of A315700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315700.P8430874842781867476

`A313540(n)+n`
-/

namespace A315700.P8430874842781867476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + (n : ℤ)

end

end A315700.P8430874842781867476

namespace A315700

/-- `A313540(n)+n` -/
def P8430874842781867476.Spec : Prop :=
  ∀ n, P8430874842781867476.a n = A315700 n

end A315700

/-! ## A315700.P8415465502126498151

`abs(11*n-A313891(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315700

/-- `abs(11*n-A313891(n))` -/
def P8415465502126498151.Spec : Prop :=
  ∀ n, P8415465502126498151.a n = A315700 n

theorem P8415465502126498151.correct : P8415465502126498151.Spec := by
  intro n
  simp only [A315700]

end A315700

/-! ## A315700.P11185717621484871413

`A314028(n)+A004396(n)`
-/

namespace A315700.P11185717621484871413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314028 n + A004396 n

end

end A315700.P11185717621484871413

namespace A315700

/-- `A314028(n)+A004396(n)` -/
def P11185717621484871413.Spec : Prop :=
  ∀ n, P11185717621484871413.a n = A315700 n

end A315700

/-! ## A315700.P6108795100638354507

`A314107(n)+A004525(n)`
-/

namespace A315700.P6108795100638354507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314107 n + A004525 n

end

end A315700.P6108795100638354507

namespace A315700

/-- `A314107(n)+A004525(n)` -/
def P6108795100638354507.Spec : Prop :=
  ∀ n, P6108795100638354507.a n = A315700 n

end A315700

/-! ## A315700.P5900245992434503932

`abs(A008592(n)-A311924(n))`
-/

namespace A315700.P5900245992434503932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311924 n|

end

end A315700.P5900245992434503932

namespace A315700

/-- `abs(A008592(n)-A311924(n))` -/
def P5900245992434503932.Spec : Prop :=
  ∀ n, P5900245992434503932.a n = A315700 n

end A315700

/-! ## A315700.P14066858547472325810

`A315425(n)+A004524(n+1)`
-/

namespace A315700.P14066858547472325810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n + A004524 (n + 1)

end

end A315700.P14066858547472325810

namespace A315700

/-- `A315425(n)+A004524(n+1)` -/
def P14066858547472325810.Spec : Prop :=
  ∀ n, P14066858547472325810.a n = A315700 n

end A315700

/-! ## A315700.P7954613347194762424

`A312926(n)+A047424(n+1)`
-/

namespace A315700.P7954613347194762424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A047424 (n + 1)

end

end A315700.P7954613347194762424

namespace A315700

/-- `A312926(n)+A047424(n+1)` -/
def P7954613347194762424.Spec : Prop :=
  ∀ n, P7954613347194762424.a n = A315700 n

end A315700

/-! ## A315700.P12621497659320832969

`A128834(n)+A313136(n)+n`
-/

namespace A315700.P12621497659320832969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313136 n + (n : ℤ))

end

end A315700.P12621497659320832969

namespace A315700

/-- `A128834(n)+A313136(n)+n` -/
def P12621497659320832969.Spec : Prop :=
  ∀ n, P12621497659320832969.a n = A315700 n

end A315700

/-! ## A315700.P16439012617044366466

`A315425(n)+n-A004525(n)`
-/

namespace A315700.P16439012617044366466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n + ((n : ℤ) - A004525 n)

end

end A315700.P16439012617044366466

namespace A315700

/-- `A315425(n)+n-A004525(n)` -/
def P16439012617044366466.Spec : Prop :=
  ∀ n, P16439012617044366466.a n = A315700 n

end A315700

/-! ## A315700.P12233364219846089144

`A005843(n)-(n-A313540(n))`
-/

namespace A315700.P12233364219846089144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313540 n)

end

end A315700.P12233364219846089144

namespace A315700

/-- `A005843(n)-(n-A313540(n))` -/
def P12233364219846089144.Spec : Prop :=
  ∀ n, P12233364219846089144.a n = A315700 n

end A315700

/-! ## A315700.P1595087623891814308

`n-(n*A000007(n)-A313540(n))`
-/

namespace A315700.P1595087623891814308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n : ℤ) * A000007 n - A313540 n)

end

end A315700.P1595087623891814308

namespace A315700

/-- `n-(n*A000007(n)-A313540(n))` -/
def P1595087623891814308.Spec : Prop :=
  ∀ n, P1595087623891814308.a n = A315700 n

end A315700

/-! ## A315700.P6759296996408828365

`A314142(n)+A004396(A004525(n))`
-/

namespace A315700.P6759296996408828365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n + A004396 (A004525 n).toNat

end

end A315700.P6759296996408828365

namespace A315700

/-- `A314142(n)+A004396(A004525(n))` -/
def P6759296996408828365.Spec : Prop :=
  ∀ n, P6759296996408828365.a n = A315700 n

end A315700

/-! ## A315700.P18068945643741707300

`A004525(A004396(n))+A312926(n)+n`
-/

namespace A315700.P18068945643741707300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312926 n + (n : ℤ))

end

end A315700.P18068945643741707300

namespace A315700

/-- `A004525(A004396(n))+A312926(n)+n` -/
def P18068945643741707300.Spec : Prop :=
  ∀ n, P18068945643741707300.a n = A315700 n

end A315700

/-! ## A315700.P620084477207425297

`A314110(n)+A004525(A134667(n)+n)`
-/

namespace A315700.P620084477207425297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n + A004525 (A134667 n + (n : ℤ)).toNat

end

end A315700.P620084477207425297

namespace A315700

/-- `A314110(n)+A004525(A134667(n)+n)` -/
def P620084477207425297.Spec : Prop :=
  ∀ n, P620084477207425297.a n = A315700 n

end A315700

/-! ## A315700.P6593923719532784244

`A315488(n)+A004396(n-A004525(n))`
-/

namespace A315700.P6593923719532784244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A315700.P6593923719532784244

namespace A315700

/-- `A315488(n)+A004396(n-A004525(n))` -/
def P6593923719532784244.Spec : Prop :=
  ∀ n, P6593923719532784244.a n = A315700 n

end A315700

/-! ## A315700.P9103734456538329881

`A008458(n)+A008574(n)-A311924(n)`
-/

namespace A315700.P9103734456538329881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311924 n)

end

end A315700.P9103734456538329881

namespace A315700

/-- `A008458(n)+A008574(n)-A311924(n)` -/
def P9103734456538329881.Spec : Prop :=
  ∀ n, P9103734456538329881.a n = A315700 n

end A315700

/-! ## A315700.P11854986613502627680

`A004396(n)+A310393(n)+A004396(A004525(n))`
-/

namespace A315700.P11854986613502627680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310393 n + A004396 (A004525 n).toNat)

end

end A315700.P11854986613502627680

namespace A315700

/-- `A004396(n)+A310393(n)+A004396(A004525(n))` -/
def P11854986613502627680.Spec : Prop :=
  ∀ n, P11854986613502627680.a n = A315700 n

end A315700

/-! ## A315700.P9007611891612514433

`A004525(A004396(n))+A310452(n)+A004525(n)`
-/

namespace A315700.P9007611891612514433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A310452 n + A004525 n)

end

end A315700.P9007611891612514433

namespace A315700

/-- `A004525(A004396(n))+A310452(n)+A004525(n)` -/
def P9007611891612514433.Spec : Prop :=
  ∀ n, P9007611891612514433.a n = A315700 n

end A315700

/-! ## A315700.P1135998711410518481

`A004396(A315649(n))+2*n`
-/

namespace A315700.P1135998711410518481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315649 n).toNat + (2 * n : ℤ)

end

end A315700.P1135998711410518481

namespace A315700

/-- `A004396(A315649(n))+2*n` -/
def P1135998711410518481.Spec : Prop :=
  ∀ n, P1135998711410518481.a n = A315700 n

end A315700

/-!
# A315701: Coordination sequence Gal.4.136.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315701, the canonical program `A315701.P12195876164514550560` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315701 has offset 0).

The definition of A315701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315701.P12195876164514550560

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=17, a(4)=23, a(5)=28, a(6)=34, a(7)=40, a(8)=46`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A315701

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P12195876164514550560.Spec : Prop :=
  ∀ n, P12195876164514550560.a n = A315701 n

theorem P12195876164514550560.correct : P12195876164514550560.Spec := by
  intro n
  simp only [A315701]

end A315701

/-! ## A315701.P15000228555706595800

`A008458(n)-Δ[A011860(n)]`
-/

namespace A315701.P15000228555706595800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315701.P15000228555706595800

namespace A315701

/-- `A008458(n)-Δ[A011860(n)]` -/
def P15000228555706595800.Spec : Prop :=
  ∀ n, P15000228555706595800.a n = A315701 n

end A315701

/-! ## A315701.P4633905195739607360

`A008706(n)+n-Δ[A011860(n)]`
-/

namespace A315701.P4633905195739607360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315701.P4633905195739607360

namespace A315701

/-- `A008706(n)+n-Δ[A011860(n)]` -/
def P4633905195739607360.Spec : Prop :=
  ∀ n, P4633905195739607360.a n = A315701 n

end A315701

/-! ## A315701.P16201559285328021291

`A008458(n)-A004523(A057357(n)+1)`
-/

namespace A315701.P16201559285328021291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004523 (A057357 n + 1).toNat

end

end A315701.P16201559285328021291

namespace A315701

/-- `A008458(n)-A004523(A057357(n)+1)` -/
def P16201559285328021291.Spec : Prop :=
  ∀ n, P16201559285328021291.a n = A315701 n

end A315701

/-! ## A315701.P13299789676276909998

`A008486(2*n)-Δ[A011860(n)]`
-/

namespace A315701.P13299789676276909998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (f1 (n + 1) - f1 n)

end

end A315701.P13299789676276909998

namespace A315701

/-- `A008486(2*n)-Δ[A011860(n)]` -/
def P13299789676276909998.Spec : Prop :=
  ∀ n, P13299789676276909998.a n = A315701 n

end A315701

/-! ## A315701.P18397733634680622762

`abs(10*n-A311914(n))`
-/

namespace A315701.P18397733634680622762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311914 n|

end

end A315701.P18397733634680622762

namespace A315701

/-- `abs(10*n-A311914(n))` -/
def P18397733634680622762.Spec : Prop :=
  ∀ n, P18397733634680622762.a n = A315701 n

end A315701

/-! ## A315701.P12667749315930850333

`A008458(n)+A008574(n)-A311914(n)`
-/

namespace A315701.P12667749315930850333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311914 n)

end

end A315701.P12667749315930850333

namespace A315701

/-- `A008458(n)+A008574(n)-A311914(n)` -/
def P12667749315930850333.Spec : Prop :=
  ∀ n, P12667749315930850333.a n = A315701 n

end A315701

/-! ## A315701.P12269382949908987487

`A313487(n)+A047588(n+1)`
-/

namespace A315701.P12269382949908987487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 n + A047588 (n + 1)

end

end A315701.P12269382949908987487

namespace A315701

/-- `A313487(n)+A047588(n+1)` -/
def P12269382949908987487.Spec : Prop :=
  ∀ n, P12269382949908987487.a n = A315701 n

theorem P12269382949908987487.correct : P12269382949908987487.Spec := by
  intro n
  simp only [A315701, Nat.add_sub_cancel, A315701.P12269382949908987487.a, A315701.P12195876164514550560.a, A047588, A047588.P5089271559851880253.a, A313487, A313487.P15288592894226833753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315701

/-! ## A315701.P7613653677658525774

`A242062(n)+A310372(n)+n`
-/

namespace A315701.P7613653677658525774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 n + (A310372 n + (n : ℤ))

end

end A315701.P7613653677658525774

namespace A315701

/-- `A242062(n)+A310372(n)+n` -/
def P7613653677658525774.Spec : Prop :=
  ∀ n, P7613653677658525774.a n = A315701 n

end A315701

/-! ## A315701.P14400656422655239326

`A047513(A312895(n)+1)`
-/

namespace A315701.P14400656422655239326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A312895 n + 1).toNat

end

end A315701.P14400656422655239326

namespace A315701

/-- `A047513(A312895(n)+1)` -/
def P14400656422655239326.Spec : Prop :=
  ∀ n, P14400656422655239326.a n = A315701 n

end A315701

/-! ## A315701.P15606113044328074240

`A315541(n)+A238470(n)`
-/

namespace A315701.P15606113044328074240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n + A238470 n

end

end A315701.P15606113044328074240

namespace A315701

/-- `A315541(n)+A238470(n)` -/
def P15606113044328074240.Spec : Prop :=
  ∀ n, P15606113044328074240.a n = A315701 n

end A315701

/-! ## A315701.P16493438834882349941

`A005843(n)+A004396(A313487(n)+n)`
-/

namespace A315701.P16493438834882349941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313487 n + (n : ℤ)).toNat

end

end A315701.P16493438834882349941

namespace A315701

/-- `A005843(n)+A004396(A313487(n)+n)` -/
def P16493438834882349941.Spec : Prop :=
  ∀ n, P16493438834882349941.a n = A315701 n

end A315701

/-! ## A315701.P14494941425666242725

`A315647(n)+Δ[A011860(n)]`
-/

namespace A315701.P14494941425666242725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n + (f1 (n + 1) - f1 n)

end

end A315701.P14494941425666242725

namespace A315701

/-- `A315647(n)+Δ[A011860(n)]` -/
def P14494941425666242725.Spec : Prop :=
  ∀ n, P14494941425666242725.a n = A315701 n

end A315701

/-! ## A315701.P12372848586773978366

`(A315647(n)+A008458(n))/2`
-/

namespace A315701.P12372848586773978366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315647 n + A008458 n : ℚ) / 2

end

end A315701.P12372848586773978366

namespace A315701

/-- `(A315647(n)+A008458(n))/2` -/
def P12372848586773978366.Spec : Prop :=
  ∀ n, P12372848586773978366.a n = (A315701 n : ℚ)

end A315701

/-! ## A315701.P12138710496261229608

`A145569(A008458(n))+A057358(n)`
-/

namespace A315701.P12138710496261229608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A008458 n).toNat + A057358 n

end

end A315701.P12138710496261229608

namespace A315701

/-- `A145569(A008458(n))+A057358(n)` -/
def P12138710496261229608.Spec : Prop :=
  ∀ n, P12138710496261229608.a n = A315701 n

end A315701

/-! ## A315701.P6734739274239532526

`A313613(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A315701.P6734739274239532526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A315701.P6734739274239532526

namespace A315701

/-- `A313613(2*n)+A008574(n+1)-(8*n+4)` -/
def P6734739274239532526.Spec : Prop :=
  ∀ n, P6734739274239532526.a n = A315701 n

end A315701

/-! ## A315701.P18185243055172119877

`A008574(2*n)+A313613(2*n)-A008458(2*n)`
-/

namespace A315701.P18185243055172119877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A313613 (2 * n) - A008458 (2 * n))

end

end A315701.P18185243055172119877

namespace A315701

/-- `A008574(2*n)+A313613(2*n)-A008458(2*n)` -/
def P18185243055172119877.Spec : Prop :=
  ∀ n, P18185243055172119877.a n = A315701 n

end A315701

/-! ## A315701.P12821505124054683046

`A004396(A313487(n)+4*n)`
-/

namespace A315701.P12821505124054683046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313487 n + (4 * n : ℤ)).toNat

end

end A315701.P12821505124054683046

namespace A315701

/-- `A004396(A313487(n)+4*n)` -/
def P12821505124054683046.Spec : Prop :=
  ∀ n, P12821505124054683046.a n = A315701 n

end A315701

/-! ## A315701.P3381474610688291534

`A302255(A133655(n)+2*n)`
-/

namespace A315701.P3381474610688291534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 (A133655 n + (2 * n : ℤ)).toNat

end

end A315701.P3381474610688291534

namespace A315701

/-- `A302255(A133655(n)+2*n)` -/
def P3381474610688291534.Spec : Prop :=
  ∀ n, P3381474610688291534.a n = A315701 n

end A315701

/-! ## A315701.P8143348397936511959

`2*A008574(2*n)-A313836(2*n)`
-/

namespace A315701.P8143348397936511959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313836 (2 * n)

end

end A315701.P8143348397936511959

namespace A315701

/-- `2*A008574(2*n)-A313836(2*n)` -/
def P8143348397936511959.Spec : Prop :=
  ∀ n, P8143348397936511959.a n = A315701 n

end A315701

/-!
# A315702: Coordination sequence Gal.6.641.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315702, the canonical program `A315702.P17954955877429710355` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315702 has offset 0).

The definition of A315702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315702.P17954955877429710355

`abs(A008592(n)-A311889(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A315702

/-- `abs(A008592(n)-A311889(n))` -/
def P17954955877429710355.Spec : Prop :=
  ∀ n, P17954955877429710355.a n = A315702 n

theorem P17954955877429710355.correct : P17954955877429710355.Spec := by
  intro n
  simp only [A315702]

end A315702

/-! ## A315702.P13327021825428077702

`2*A008706(n)-A311889(n)`
-/

namespace A315702.P13327021825428077702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311889 n

end

end A315702.P13327021825428077702

namespace A315702

/-- `2*A008706(n)-A311889(n)` -/
def P13327021825428077702.Spec : Prop :=
  ∀ n, P13327021825428077702.a n = A315702 n

end A315702

/-! ## A315702.P12180332441564799669

`A184418(A008574(n))-A311889(n)`
-/

namespace A315702.P12180332441564799669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A311889 n

end

end A315702.P12180332441564799669

namespace A315702

/-- `A184418(A008574(n))-A311889(n)` -/
def P12180332441564799669.Spec : Prop :=
  ∀ n, P12180332441564799669.a n = A315702 n

end A315702

/-! ## A315702.P9013658709709458936

`A008458(n)+A008574(n)-A311889(n)`
-/

namespace A315702.P9013658709709458936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311889 n)

end

end A315702.P9013658709709458936

namespace A315702

/-- `A008458(n)+A008574(n)-A311889(n)` -/
def P9013658709709458936.Spec : Prop :=
  ∀ n, P9013658709709458936.a n = A315702 n

end A315702

/-! ## A315702.P16120593258600323027

`A311889(n)+A005843(A008706(n)-A311889(n))`
-/

namespace A315702.P16120593258600323027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311889 n + A005843 (A008706 n - A311889 n).toNat

end

end A315702.P16120593258600323027

namespace A315702

/-- `A311889(n)+A005843(A008706(n)-A311889(n))` -/
def P16120593258600323027.Spec : Prop :=
  ∀ n, P16120593258600323027.a n = A315702 n

end A315702

/-! ## A315702.P1491574031029037394

`2*A008574(n)-A004525(A312151(n))`
-/

namespace A315702.P1491574031029037394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A312151 n).toNat

end

end A315702.P1491574031029037394

namespace A315702

/-- `2*A008574(n)-A004525(A312151(n))` -/
def P1491574031029037394.Spec : Prop :=
  ∀ n, P1491574031029037394.a n = A315702 n

end A315702

/-! ## A315702.P12350743127626914381

`A005843(A008706(n))-A311889(n)`
-/

namespace A315702.P12350743127626914381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311889 n

end

end A315702.P12350743127626914381

namespace A315702

/-- `A005843(A008706(n))-A311889(n)` -/
def P12350743127626914381.Spec : Prop :=
  ∀ n, P12350743127626914381.a n = A315702 n

end A315702

/-! ## A315702.P6106154463902011663

`2*n+A004396(A315650(n))`
-/

namespace A315702.P6106154463902011663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315650 n).toNat

end

end A315702.P6106154463902011663

namespace A315702

/-- `2*n+A004396(A315650(n))` -/
def P6106154463902011663.Spec : Prop :=
  ∀ n, P6106154463902011663.a n = A315702 n

end A315702

/-! ## A315702.P15269493227011503753

`A008585(n)-(n-A004396(A315650(n)))`
-/

namespace A315702.P15269493227011503753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315650 n).toNat)

end

end A315702.P15269493227011503753

namespace A315702

/-- `A008585(n)-(n-A004396(A315650(n)))` -/
def P15269493227011503753.Spec : Prop :=
  ∀ n, P15269493227011503753.a n = A315702 n

end A315702

/-! ## A315702.P15188153456754899689

`A004396(2*A313560(n)-n)`
-/

namespace A315702.P15188153456754899689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313560 n - (n : ℤ)).toNat

end

end A315702.P15188153456754899689

namespace A315702

/-- `A004396(2*A313560(n)-n)` -/
def P15188153456754899689.Spec : Prop :=
  ∀ n, P15188153456754899689.a n = A315702 n

end A315702

/-! ## A315702.P1344137443290218342

`A004396(A315650(n)+A008486(n))`
-/

namespace A315702.P1344137443290218342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315650 n + A008486 n).toNat

end

end A315702.P1344137443290218342

namespace A315702

/-- `A004396(A315650(n)+A008486(n))` -/
def P1344137443290218342.Spec : Prop :=
  ∀ n, P1344137443290218342.a n = A315702 n

end A315702

/-! ## A315702.P15247044762831991343

`A004396(A315650(n)+A008585(n))`
-/

namespace A315702.P15247044762831991343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315650 n + A008585 n).toNat

end

end A315702.P15247044762831991343

namespace A315702

/-- `A004396(A315650(n)+A008585(n))` -/
def P15247044762831991343.Spec : Prop :=
  ∀ n, P15247044762831991343.a n = A315702 n

end A315702

/-! ## A315702.P4678737313725565199

`A004396(A313560(n)+A313560(n)-n)`
-/

namespace A315702.P4678737313725565199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313560 n + (A313560 n - (n : ℤ))).toNat

end

end A315702.P4678737313725565199

namespace A315702

/-- `A004396(A313560(n)+A313560(n)-n)` -/
def P4678737313725565199.Spec : Prop :=
  ∀ n, P4678737313725565199.a n = A315702 n

end A315702

/-! ## A315702.P6132606371836684890

`A004396(A008574(n)-(n-A315650(n)))`
-/

namespace A315702.P6132606371836684890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008574 n - ((n : ℤ) - A315650 n)).toNat

end

end A315702.P6132606371836684890

namespace A315702

/-- `A004396(A008574(n)-(n-A315650(n)))` -/
def P6132606371836684890.Spec : Prop :=
  ∀ n, P6132606371836684890.a n = A315702 n

end A315702

/-! ## A315702.P13012471606729241888

`A004396(A313560(n)-(n-A313560(n)))`
-/

namespace A315702.P13012471606729241888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313560 n - ((n : ℤ) - A313560 n)).toNat

end

end A315702.P13012471606729241888

namespace A315702

/-- `A004396(A313560(n)-(n-A313560(n)))` -/
def P13012471606729241888.Spec : Prop :=
  ∀ n, P13012471606729241888.a n = A315702 n

end A315702

/-!
# A315703: Coordination sequence Gal.6.643.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315703, the canonical program `A315703.P17229668802607991947` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315703 has offset 0).

The definition of A315703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315703.P17229668802607991947

`A313556(n)+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315703

/-- `A313556(n)+n` -/
def P17229668802607991947.Spec : Prop :=
  ∀ n, P17229668802607991947.a n = A315703 n

theorem P17229668802607991947.correct : P17229668802607991947.Spec := by
  intro n
  simp only [A315703]

end A315703

/-! ## A315703.P4375809922702183668

`abs(11*n-A313879(n))`
-/

namespace A315703.P4375809922702183668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313879 n|

end

end A315703.P4375809922702183668

namespace A315703

/-- `abs(11*n-A313879(n))` -/
def P4375809922702183668.Spec : Prop :=
  ∀ n, P4375809922702183668.a n = A315703 n

end A315703

/-! ## A315703.P3744680186554559350

`abs(9*n-A311861(n))+n`
-/

namespace A315703.P3744680186554559350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A311861 n| + (n : ℤ)

end

end A315703.P3744680186554559350

namespace A315703

/-- `abs(9*n-A311861(n))+n` -/
def P3744680186554559350.Spec : Prop :=
  ∀ n, P3744680186554559350.a n = A315703 n

end A315703

/-! ## A315703.P17735967959818239613

`A314031(n)+A004396(n)`
-/

namespace A315703.P17735967959818239613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 n + A004396 n

end

end A315703.P17735967959818239613

namespace A315703

/-- `A314031(n)+A004396(n)` -/
def P17735967959818239613.Spec : Prop :=
  ∀ n, P17735967959818239613.a n = A315703 n

end A315703

/-! ## A315703.P15078961148156703324

`A314110(n)+A004525(n)`
-/

namespace A315703.P15078961148156703324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n + A004525 n

end

end A315703.P15078961148156703324

namespace A315703

/-- `A314110(n)+A004525(n)` -/
def P15078961148156703324.Spec : Prop :=
  ∀ n, P15078961148156703324.a n = A315703 n

theorem P15078961148156703324.correct : P15078961148156703324.Spec := by
  intro n
  simp only [A315703, Nat.add_sub_cancel, A315703.P15078961148156703324.a, A315703.P17229668802607991947.a, A004525, A004525.P4158271949796742323.a, A313556, A313556.P12127503874440300930.a, A314110, A314110.P11829887775557874322.a, A312890, A312890.P5869710039852604831.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315703

/-! ## A315703.P15719318346811580575

`abs(A008592(n)-A311861(n))`
-/

namespace A315703.P15719318346811580575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311861 n|

end

end A315703.P15719318346811580575

namespace A315703

/-- `abs(A008592(n)-A311861(n))` -/
def P15719318346811580575.Spec : Prop :=
  ∀ n, P15719318346811580575.a n = A315703 n

end A315703

/-! ## A315703.P8710380437880708652

`A314706(n)+A042965(n+1)`
-/

namespace A315703.P8710380437880708652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + A042965 (n + 1)

end

end A315703.P8710380437880708652

namespace A315703

/-- `A314706(n)+A042965(n+1)` -/
def P8710380437880708652.Spec : Prop :=
  ∀ n, P8710380437880708652.a n = A315703 n

end A315703

/-! ## A315703.P4014413341535364682

`A312890(n)+A047229(n+1)`
-/

namespace A315703.P4014413341535364682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A047229 (n + 1)

end

end A315703.P4014413341535364682

namespace A315703

/-- `A312890(n)+A047229(n+1)` -/
def P4014413341535364682.Spec : Prop :=
  ∀ n, P4014413341535364682.a n = A315703 n

end A315703

/-! ## A315703.P17913308434687072863

`A314706(n)+A004396(2*n)`
-/

namespace A315703.P17913308434687072863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + A004396 (2 * n)

end

end A315703.P17913308434687072863

namespace A315703

/-- `A314706(n)+A004396(2*n)` -/
def P17913308434687072863.Spec : Prop :=
  ∀ n, P17913308434687072863.a n = A315703 n

end A315703

/-! ## A315703.P9509309025399141196

`A004525(n)+A312890(n)+n`
-/

namespace A315703.P9509309025399141196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312890 n + (n : ℤ))

end

end A315703.P9509309025399141196

namespace A315703

/-- `A004525(n)+A312890(n)+n` -/
def P9509309025399141196.Spec : Prop :=
  ∀ n, P9509309025399141196.a n = A315703 n

theorem P9509309025399141196.correct : P9509309025399141196.Spec := by
  intro n
  simp only [A315703, Nat.add_sub_cancel, A315703.P9509309025399141196.a, A315703.P17229668802607991947.a, A004525, A004525.P4158271949796742323.a, A312890, A312890.P5869710039852604831.a, A313556, A313556.P12127503874440300930.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315703

/-! ## A315703.P10185423302896852200

`A315488(n)+n-A004396(n)`
-/

namespace A315703.P10185423302896852200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n + ((n : ℤ) - A004396 n)

end

end A315703.P10185423302896852200

namespace A315703

/-- `A315488(n)+n-A004396(n)` -/
def P10185423302896852200.Spec : Prop :=
  ∀ n, P10185423302896852200.a n = A315703 n

theorem P10185423302896852200.correct : P10185423302896852200.Spec := by
  intro n
  simp only [A315703, Nat.add_sub_cancel, A315703.P10185423302896852200.a, A315703.P17229668802607991947.a, A004396, A004396.P17032557045289780609.a, A313556, A313556.P12127503874440300930.a, A315488, A315488.P5611134213742253392.a, A004525, A004525.P4158271949796742323.a, A312890, A312890.P5869710039852604831.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315703

/-! ## A315703.P4631488035161688516

`A314031(n)+A002264(2*n+1)`
-/

namespace A315703.P4631488035161688516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 n + A002264 (2 * n + 1)

end

end A315703.P4631488035161688516

namespace A315703

/-- `A314031(n)+A002264(2*n+1)` -/
def P4631488035161688516.Spec : Prop :=
  ∀ n, P4631488035161688516.a n = A315703 n

end A315703

/-! ## A315703.P2643714299759616186

`A310470(n)+2*A004396(A004525(n))`
-/

namespace A315703.P2643714299759616186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n + 2 * A004396 (A004525 n).toNat

end

end A315703.P2643714299759616186

namespace A315703

/-- `A310470(n)+2*A004396(A004525(n))` -/
def P2643714299759616186.Spec : Prop :=
  ∀ n, P2643714299759616186.a n = A315703 n

end A315703

/-! ## A315703.P4948715693737241285

`A314094(n)+A004396(2*A004525(n))`
-/

namespace A315703.P4948715693737241285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004396 (2 * A004525 n).toNat

end

end A315703.P4948715693737241285

namespace A315703

/-- `A314094(n)+A004396(2*A004525(n))` -/
def P4948715693737241285.Spec : Prop :=
  ∀ n, P4948715693737241285.a n = A315703 n

end A315703

/-! ## A315703.P11808398039664707460

`A004396(A004525(n))+A312926(n)+n`
-/

namespace A315703.P11808398039664707460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A312926 n + (n : ℤ))

end

end A315703.P11808398039664707460

namespace A315703

/-- `A004396(A004525(n))+A312926(n)+n` -/
def P11808398039664707460.Spec : Prop :=
  ∀ n, P11808398039664707460.a n = A315703 n

end A315703

/-! ## A315703.P10414062366338589643

`A008458(n)+A008574(n)-A311861(n)`
-/

namespace A315703.P10414062366338589643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311861 n)

end

end A315703.P10414062366338589643

namespace A315703

/-- `A008458(n)+A008574(n)-A311861(n)` -/
def P10414062366338589643.Spec : Prop :=
  ∀ n, P10414062366338589643.a n = A315703 n

end A315703

/-! ## A315703.P10956647909083835576

`A008574(n)+A314706(n)-A008576(n)`
-/

namespace A315703.P10956647909083835576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314706 n - A008576 n)

end

end A315703.P10956647909083835576

namespace A315703

/-- `A008574(n)+A314706(n)-A008576(n)` -/
def P10956647909083835576.Spec : Prop :=
  ∀ n, P10956647909083835576.a n = A315703 n

end A315703

/-! ## A315703.P9436606508305606410

`A008486(n)+A315488(n)-A008576(n)`
-/

namespace A315703.P9436606508305606410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315488 n - A008576 n)

end

end A315703.P9436606508305606410

namespace A315703

/-- `A008486(n)+A315488(n)-A008576(n)` -/
def P9436606508305606410.Spec : Prop :=
  ∀ n, P9436606508305606410.a n = A315703 n

end A315703

/-! ## A315703.P9044622064238703474

`A004525(n)+A310452(n)+A004396(A004525(n))`
-/

namespace A315703.P9044622064238703474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310452 n + A004396 (A004525 n).toNat)

end

end A315703.P9044622064238703474

namespace A315703

/-- `A004525(n)+A310452(n)+A004396(A004525(n))` -/
def P9044622064238703474.Spec : Prop :=
  ∀ n, P9044622064238703474.a n = A315703 n

end A315703

/-!
# A315704: Coordination sequence Gal.4.137.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315704, the canonical program `A315704.P11710660165894118179` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315704 has offset 0).

The definition of A315704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315704.P11710660165894118179

`A313561(n)+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315704

/-- `A313561(n)+n` -/
def P11710660165894118179.Spec : Prop :=
  ∀ n, P11710660165894118179.a n = A315704 n

theorem P11710660165894118179.correct : P11710660165894118179.Spec := by
  intro n
  simp only [A315704]

end A315704

/-! ## A315704.P6325783546071365259

`A008458(n)-Δ[floor(C(n, 2)/4)]`
-/

namespace A315704.P6325783546071365259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315704.P6325783546071365259

namespace A315704

/-- `A008458(n)-Δ[floor(C(n, 2)/4)]` -/
def P6325783546071365259.Spec : Prop :=
  ∀ n, P6325783546071365259.a n = A315704 n

end A315704

/-! ## A315704.P11687825891749084968

`Δ[A077588(n)-floor(C(n, 2)/4)]`
-/

namespace A315704.P11687825891749084968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n - ⌊(Nat.choose n 2 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A315704.P11687825891749084968

namespace A315704

/-- `Δ[A077588(n)-floor(C(n, 2)/4)]` -/
def P11687825891749084968.Spec : Prop :=
  ∀ n, P11687825891749084968.a n = A315704 n

end A315704

/-! ## A315704.P10044028030179280584

`A314112(n)+A004525(n)`
-/

namespace A315704.P10044028030179280584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314112 n + A004525 n

end

end A315704.P10044028030179280584

namespace A315704

/-- `A314112(n)+A004525(n)` -/
def P10044028030179280584.Spec : Prop :=
  ∀ n, P10044028030179280584.a n = A315704 n

theorem P10044028030179280584.correct : P10044028030179280584.Spec := by
  intro n
  simp only [A315704, Nat.add_sub_cancel, A315704.P10044028030179280584.a, A315704.P11710660165894118179.a, A004525, A004525.P4158271949796742323.a, A313561, A313561.P3656167571663365839.a, A314112, A314112.P8835196921211282987.a, A312894, A312894.P11041919530925850968.f1, A312894.P11041919530925850968.a, A011861, A011861.P4500963193198654930.a, A301293, A301293.P16402300677055153941.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315704

/-! ## A315704.P6593558088850785924

`abs(A008593(n)-A313875(n))`
-/

namespace A315704.P6593558088850785924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313875 n|

end

end A315704.P6593558088850785924

namespace A315704

/-- `abs(A008593(n)-A313875(n))` -/
def P6593558088850785924.Spec : Prop :=
  ∀ n, P6593558088850785924.a n = A315704 n

end A315704

/-! ## A315704.P16458735658764188824

`A008458(n)-Δ[A011861(n)]`
-/

namespace A315704.P16458735658764188824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315704.P16458735658764188824

namespace A315704

/-- `A008458(n)-Δ[A011861(n)]` -/
def P16458735658764188824.Spec : Prop :=
  ∀ n, P16458735658764188824.a n = A315704 n

end A315704

/-! ## A315704.P5049251628616104945

`A312894(n)+A047229(n+1)`
-/

namespace A315704.P5049251628616104945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312894 n + A047229 (n + 1)

end

end A315704.P5049251628616104945

namespace A315704

/-- `A312894(n)+A047229(n+1)` -/
def P5049251628616104945.Spec : Prop :=
  ∀ n, P5049251628616104945.a n = A315704 n

end A315704

/-! ## A315704.P5374677859738227771

`A004525(n)+A312894(n)+n`
-/

namespace A315704.P5374677859738227771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312894 n + (n : ℤ))

end

end A315704.P5374677859738227771

namespace A315704

/-- `A004525(n)+A312894(n)+n` -/
def P5374677859738227771.Spec : Prop :=
  ∀ n, P5374677859738227771.a n = A315704 n

theorem P5374677859738227771.correct : P5374677859738227771.Spec := by
  intro n
  simp only [A315704, Nat.add_sub_cancel, A315704.P5374677859738227771.a, A315704.P11710660165894118179.a, A004525, A004525.P4158271949796742323.a, A312894, A312894.P11041919530925850968.f1, A312894.P11041919530925850968.a, A313561, A313561.P3656167571663365839.a, A011861, A011861.P4500963193198654930.a, A301293, A301293.P16402300677055153941.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315704

/-! ## A315704.P11965486414045470330

`A315399(n)+n-A046978(n)`
-/

namespace A315704.P11965486414045470330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n + ((n : ℤ) - A046978 n)

end

end A315704.P11965486414045470330

namespace A315704

/-- `A315399(n)+n-A046978(n)` -/
def P11965486414045470330.Spec : Prop :=
  ∀ n, P11965486414045470330.a n = A315704 n

end A315704

/-! ## A315704.P6770134289223998303

`A008486(2*n)-Δ[A011861(n)]`
-/

namespace A315704.P6770134289223998303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (f1 (n + 1) - f1 n)

end

end A315704.P6770134289223998303

namespace A315704

/-- `A008486(2*n)-Δ[A011861(n)]` -/
def P6770134289223998303.Spec : Prop :=
  ∀ n, P6770134289223998303.a n = A315704 n

end A315704

/-! ## A315704.P5252604929050442114

`A008706(n)+n-Δ[A011861(n)]`
-/

namespace A315704.P5252604929050442114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315704.P5252604929050442114

namespace A315704

/-- `A008706(n)+n-Δ[A011861(n)]` -/
def P5252604929050442114.Spec : Prop :=
  ∀ n, P5252604929050442114.a n = A315704 n

end A315704

/-! ## A315704.P4225026519612453119

`A314161(n)+A004525(A004525(n))`
-/

namespace A315704.P4225026519612453119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n + A004525 (A004525 n).toNat

end

end A315704.P4225026519612453119

namespace A315704

/-- `A314161(n)+A004525(A004525(n))` -/
def P4225026519612453119.Spec : Prop :=
  ∀ n, P4225026519612453119.a n = A315704 n

end A315704

/-! ## A315704.P950632624978898694

`A004525(A004525(n))+A312943(n)+n`
-/

namespace A315704.P950632624978898694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A312943 n + (n : ℤ))

end

end A315704.P950632624978898694

namespace A315704

/-- `A004525(A004525(n))+A312943(n)+n` -/
def P950632624978898694.Spec : Prop :=
  ∀ n, P950632624978898694.a n = A315704 n

end A315704

/-! ## A315704.P646218976371794953

`A314026(n)+A004525(A004525(n)+n)`
-/

namespace A315704.P646218976371794953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315704.P646218976371794953

namespace A315704

/-- `A314026(n)+A004525(A004525(n)+n)` -/
def P646218976371794953.Spec : Prop :=
  ∀ n, P646218976371794953.a n = A315704 n

end A315704

/-! ## A315704.P4258280887287593774

`A315411(n)+n-A004525(A004525(n))`
-/

namespace A315704.P4258280887287593774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A315704.P4258280887287593774

namespace A315704

/-- `A315411(n)+n-A004525(A004525(n))` -/
def P4258280887287593774.Spec : Prop :=
  ∀ n, P4258280887287593774.a n = A315704 n

end A315704

/-! ## A315704.P3384283885631535996

`A008458(n)+A008574(n)-A311843(n)`
-/

namespace A315704.P3384283885631535996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311843 n)

end

end A315704.P3384283885631535996

namespace A315704

/-- `A008458(n)+A008574(n)-A311843(n)` -/
def P3384283885631535996.Spec : Prop :=
  ∀ n, P3384283885631535996.a n = A315704 n

end A315704

/-! ## A315704.P6799123291565027886

`A004525(n)+A310458(n)+A004525(A004525(n))`
-/

namespace A315704.P6799123291565027886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310458 n + A004525 (A004525 n).toNat)

end

end A315704.P6799123291565027886

namespace A315704

/-- `A004525(n)+A310458(n)+A004525(A004525(n))` -/
def P6799123291565027886.Spec : Prop :=
  ∀ n, P6799123291565027886.a n = A315704 n

end A315704

/-! ## A315704.P12260673998224141589

`A004525(n)+A315685(n)-A004525(A004525(n))`
-/

namespace A315704.P12260673998224141589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315685 n - A004525 (A004525 n).toNat)

end

end A315704.P12260673998224141589

namespace A315704

/-- `A004525(n)+A315685(n)-A004525(A004525(n))` -/
def P12260673998224141589.Spec : Prop :=
  ∀ n, P12260673998224141589.a n = A315704 n

end A315704

/-! ## A315704.P16290987228450746911

`A314250(n)+A046978(A046978(n)+n)`
-/

namespace A315704.P16290987228450746911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A315704.P16290987228450746911

namespace A315704

/-- `A314250(n)+A046978(A046978(n)+n)` -/
def P16290987228450746911.Spec : Prop :=
  ∀ n, P16290987228450746911.a n = A315704 n

end A315704

/-! ## A315704.P7731612295422909299

`(A315651(n)+A008458(n))/2`
-/

namespace A315704.P7731612295422909299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315651 n + A008458 n : ℚ) / 2

end

end A315704.P7731612295422909299

namespace A315704

/-- `(A315651(n)+A008458(n))/2` -/
def P7731612295422909299.Spec : Prop :=
  ∀ n, P7731612295422909299.a n = (A315704 n : ℚ)

end A315704

/-!
# A315705: Coordination sequence Gal.6.666.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315705, there is no canonical definition to state claims against.
-/

/-! ## A315705.P10206564421915544365

`or(A087116(A056971(n)), A315700(n))`
-/

namespace A315705.P10206564421915544365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087116 (A056971 n).toNat) (A315700 n)

end

end A315705.P10206564421915544365

/-! ## A315705.P5245292259639198633

`or(A001221(A006229(n)), A315693(n))`
-/

namespace A315705.P5245292259639198633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A006229 n).toNat) (A315693 n)

end

end A315705.P5245292259639198633

/-! ## A315705.P1207012354670127986

`or(A001222(A006229(n)), A315700(n))`
-/

namespace A315705.P1207012354670127986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A006229 n).toNat) (A315700 n)

end

end A315705.P1207012354670127986

/-! ## A315705.P2817796908723544760

`A008458(n)-A180160(A303238(n+1))`
-/

namespace A315705.P2817796908723544760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A180160 (A303238 (n + 1)).toNat

end

end A315705.P2817796908723544760

/-! ## A315705.P15896469739642857001

`A001222(A000302(n))+A000592(2*n)`
-/

namespace A315705.P15896469739642857001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000302 n).toNat + A000592 (2 * n)

end

end A315705.P15896469739642857001

/-!
# A315706: Coordination sequence Gal.5.294.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315706, the canonical program `A315706.P7813840819616838291` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315706 has offset 0).

The definition of A315706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315706.P7813840819616838291

`A314034(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315706

/-- `A314034(n)+A004396(n)` -/
def P7813840819616838291.Spec : Prop :=
  ∀ n, P7813840819616838291.a n = A315706 n

theorem P7813840819616838291.correct : P7813840819616838291.Spec := by
  intro n
  simp only [A315706]

end A315706

/-! ## A315706.P10293380392517651140

`abs(A008592(n)-A311816(n))`
-/

namespace A315706.P10293380392517651140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311816 n|

end

end A315706.P10293380392517651140

namespace A315706

/-- `abs(A008592(n)-A311816(n))` -/
def P10293380392517651140.Spec : Prop :=
  ∀ n, P10293380392517651140.a n = A315706 n

end A315706

/-! ## A315706.P921382168182319116

`A315653(n)+Δ[A011862(n)]`
-/

namespace A315706.P921382168182319116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315653 n + (f1 (n + 1) - f1 n)

end

end A315706.P921382168182319116

namespace A315706

/-- `A315653(n)+Δ[A011862(n)]` -/
def P921382168182319116.Spec : Prop :=
  ∀ n, P921382168182319116.a n = A315706 n

end A315706

/-! ## A315706.P14205971647310447081

`A008458(n)-Δ[A011862(n)]`
-/

namespace A315706.P14205971647310447081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315706.P14205971647310447081

namespace A315706

/-- `A008458(n)-Δ[A011862(n)]` -/
def P14205971647310447081.Spec : Prop :=
  ∀ n, P14205971647310447081.a n = A315706 n

end A315706

/-! ## A315706.P6990484989086832994

`A314710(n)+record[A283971(n)]`
-/

namespace A315706.P6990484989086832994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314710 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315706.P6990484989086832994

namespace A315706

/-- `A314710(n)+record[A283971(n)]` -/
def P6990484989086832994.Spec : Prop :=
  ∀ n, P6990484989086832994.a n = A315706 n

end A315706

/-! ## A315706.P2769339116569038423

`A314710(n)+A042965(n+1)`
-/

namespace A315706.P2769339116569038423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314710 n + A042965 (n + 1)

end

end A315706.P2769339116569038423

namespace A315706

/-- `A314710(n)+A042965(n+1)` -/
def P2769339116569038423.Spec : Prop :=
  ∀ n, P2769339116569038423.a n = A315706 n

end A315706

/-! ## A315706.P9611392115231851608

`A314710(n)+A004396(2*n)`
-/

namespace A315706.P9611392115231851608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314710 n + A004396 (2 * n)

end

end A315706.P9611392115231851608

namespace A315706

/-- `A314710(n)+A004396(2*n)` -/
def P9611392115231851608.Spec : Prop :=
  ∀ n, P9611392115231851608.a n = A315706 n

end A315706

/-! ## A315706.P1299029433923215029

`2*A008706(n)-A311816(n)`
-/

namespace A315706.P1299029433923215029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311816 n

end

end A315706.P1299029433923215029

namespace A315706

/-- `2*A008706(n)-A311816(n)` -/
def P1299029433923215029.Spec : Prop :=
  ∀ n, P1299029433923215029.a n = A315706 n

end A315706

/-! ## A315706.P1218793342574443430

`(A315653(n)+A008458(n))/2`
-/

namespace A315706.P1218793342574443430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315653 n + A008458 n : ℚ) / 2

end

end A315706.P1218793342574443430

namespace A315706

/-- `(A315653(n)+A008458(n))/2` -/
def P1218793342574443430.Spec : Prop :=
  ∀ n, P1218793342574443430.a n = (A315706 n : ℚ)

end A315706

/-! ## A315706.P17656721866544904022

`A008486(2*n)-Δ[A011862(n)]`
-/

namespace A315706.P17656721866544904022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (f1 (n + 1) - f1 n)

end

end A315706.P17656721866544904022

namespace A315706

/-- `A008486(2*n)-Δ[A011862(n)]` -/
def P17656721866544904022.Spec : Prop :=
  ∀ n, P17656721866544904022.a n = A315706 n

end A315706

/-! ## A315706.P17508830804164204541

`A008458(n)-A265187(n+1)+n`
-/

namespace A315706.P17508830804164204541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A265187 (n + 1) + (n : ℤ)

end

end A315706.P17508830804164204541

namespace A315706

/-- `A008458(n)-A265187(n+1)+n` -/
def P17508830804164204541.Spec : Prop :=
  ∀ n, P17508830804164204541.a n = A315706 n

end A315706

/-! ## A315706.P5004185036830105526

`A219529(n)+A004396(A004396(n))`
-/

namespace A315706.P5004185036830105526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A004396 (A004396 n).toNat

end

end A315706.P5004185036830105526

namespace A315706

/-- `A219529(n)+A004396(A004396(n))` -/
def P5004185036830105526.Spec : Prop :=
  ∀ n, P5004185036830105526.a n = A315706 n

end A315706

/-! ## A315706.P17793042953121610271

`A008576(2*n)+A004396(A004396(n))`
-/

namespace A315706.P17793042953121610271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) + A004396 (A004396 n).toNat

end

end A315706.P17793042953121610271

namespace A315706

/-- `A008576(2*n)+A004396(A004396(n))` -/
def P17793042953121610271.Spec : Prop :=
  ∀ n, P17793042953121610271.a n = A315706 n

end A315706

/-! ## A315706.P18190825484122897999

`A004396(A004396(n))+A312901(n)+n`
-/

namespace A315706.P18190825484122897999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A312901 n + (n : ℤ))

end

end A315706.P18190825484122897999

namespace A315706

/-- `A004396(A004396(n))+A312901(n)+n` -/
def P18190825484122897999.Spec : Prop :=
  ∀ n, P18190825484122897999.a n = A315706 n

end A315706

/-! ## A315706.P12296692936575831148

`A315495(n)+A004396(n-A004396(n))`
-/

namespace A315706.P12296692936575831148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315706.P12296692936575831148

namespace A315706

/-- `A315495(n)+A004396(n-A004396(n))` -/
def P12296692936575831148.Spec : Prop :=
  ∀ n, P12296692936575831148.a n = A315706 n

end A315706

/-! ## A315706.P11573458179497555523

`A008458(n)+A008574(n)-A311816(n)`
-/

namespace A315706.P11573458179497555523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311816 n)

end

end A315706.P11573458179497555523

namespace A315706

/-- `A008458(n)+A008574(n)-A311816(n)` -/
def P11573458179497555523.Spec : Prop :=
  ∀ n, P11573458179497555523.a n = A315706 n

end A315706

/-! ## A315706.P5036321203555134960

`A008574(n)+A314710(n)-A008576(n)`
-/

namespace A315706.P5036321203555134960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314710 n - A008576 n)

end

end A315706.P5036321203555134960

namespace A315706

/-- `A008574(n)+A314710(n)-A008576(n)` -/
def P5036321203555134960.Spec : Prop :=
  ∀ n, P5036321203555134960.a n = A315706 n

end A315706

/-! ## A315706.P5141336169248070904

`A019426(2*n+1)-A008620(A008620(2*n+1))`
-/

namespace A315706.P5141336169248070904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n + 1) - A008620 (A008620 (2 * n + 1)).toNat

end

end A315706.P5141336169248070904

namespace A315706

/-- `A019426(2*n+1)-A008620(A008620(2*n+1))` -/
def P5141336169248070904.Spec : Prop :=
  ∀ n, P5141336169248070904.a n = A315706 n

end A315706

/-! ## A315706.P8679399129280250391

`A004396(n)+A298024(n)+A004396(A004396(n))`
-/

namespace A315706.P8679399129280250391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A298024 n + A004396 (A004396 n).toNat)

end

end A315706.P8679399129280250391

namespace A315706

/-- `A004396(n)+A298024(n)+A004396(A004396(n))` -/
def P8679399129280250391.Spec : Prop :=
  ∀ n, P8679399129280250391.a n = A315706 n

end A315706

/-! ## A315706.P8439161983230497414

`A004396(A004396(n))+A008458(n)-A004396(n)`
-/

namespace A315706.P8439161983230497414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A008458 n - A004396 n)

end

end A315706.P8439161983230497414

namespace A315706

/-- `A004396(A004396(n))+A008458(n)-A004396(n)` -/
def P8439161983230497414.Spec : Prop :=
  ∀ n, P8439161983230497414.a n = A315706 n

end A315706

/-!
# A315707: Coordination sequence Gal.5.295.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315707, the canonical program `A315707.P2619736626862327509` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315707 has offset 0).

The definition of A315707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315707.P3776779402287782467

`∑[floor(a(n-5))]+n` with `a(0)=1, a(1)=4, a(2)=5, a(3)=4, a(4)=5, a(5)=5, a(6)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A315707.P3776779402287782467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5, 4, 5, 5, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A315707.P3776779402287782467

namespace A315707

/-- `∑[floor(a(n-5))]+n` -/
def P3776779402287782467.Spec : Prop :=
  ∀ n, (P3776779402287782467.a n : ℤ) = A315707 n

end A315707

/-! ## A315707.P2619736626862327509

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=17, a(4)=23, a(5)=29, a(6)=35`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A315707

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P2619736626862327509.Spec : Prop :=
  ∀ n, P2619736626862327509.a n = A315707 n

theorem P2619736626862327509.correct : P2619736626862327509.Spec := by
  intro n
  simp only [A315707]

end A315707

/-! ## A315707.P10262550550453984316

`round(A008458(n)-n/5)`
-/

namespace A315707.P10262550550453984316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008458 n : ℚ) - (n : ℚ) / 5)

end

end A315707.P10262550550453984316

namespace A315707

/-- `round(A008458(n)-n/5)` -/
def P10262550550453984316.Spec : Prop :=
  ∀ n, P10262550550453984316.a n = A315707 n

end A315707

/-! ## A315707.P3561569362407260891

`A312928(n)+A047363(n+1)`
-/

namespace A315707.P3561569362407260891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n + A047363 (n + 1)

end

end A315707.P3561569362407260891

namespace A315707

/-- `A312928(n)+A047363(n+1)` -/
def P3561569362407260891.Spec : Prop :=
  ∀ n, P3561569362407260891.a n = A315707 n

end A315707

/-! ## A315707.P2662721564697933780

`ceil(A158666(n)/(A017401(n)-n))`
-/

namespace A315707.P2662721564697933780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158666 n : ℚ) / (A017401 n - (n : ℤ) : ℚ)⌉

end

end A315707.P2662721564697933780

namespace A315707

/-- `ceil(A158666(n)/(A017401(n)-n))` -/
def P2662721564697933780.Spec : Prop :=
  ∀ n, P2662721564697933780.a n = A315707 n

end A315707

/-! ## A315707.P17784425469241626359

`A008458(n)-A047263(n+1)+n`
-/

namespace A315707.P17784425469241626359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047263 (n + 1) + (n : ℤ)

end

end A315707.P17784425469241626359

namespace A315707

/-- `A008458(n)-A047263(n+1)+n` -/
def P17784425469241626359.Spec : Prop :=
  ∀ n, P17784425469241626359.a n = A315707 n

end A315707

/-! ## A315707.P1389623010680922645

`A022144(n)-(A047263(n+1)+n)`
-/

namespace A315707.P1389623010680922645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A047263 (n + 1) + (n : ℤ))

end

end A315707.P1389623010680922645

namespace A315707

/-- `A022144(n)-(A047263(n+1)+n)` -/
def P1389623010680922645.Spec : Prop :=
  ∀ n, P1389623010680922645.a n = A315707 n

end A315707

/-! ## A315707.P2605086534790461800

`A008458(n)-A002266(n+2)`
-/

namespace A315707.P2605086534790461800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A002266 (n + 2)

end

end A315707.P2605086534790461800

namespace A315707

/-- `A008458(n)-A002266(n+2)` -/
def P2605086534790461800.Spec : Prop :=
  ∀ n, P2605086534790461800.a n = A315707 n

end A315707

/-! ## A315707.P9336829257613273657

`A008486(2*n)-round(n/5)`
-/

namespace A315707.P9336829257613273657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - SequenceMachineLib.roundAway ((n : ℚ) / 5)

end

end A315707.P9336829257613273657

namespace A315707

/-- `A008486(2*n)-round(n/5)` -/
def P9336829257613273657.Spec : Prop :=
  ∀ n, P9336829257613273657.a n = A315707 n

end A315707

/-! ## A315707.P12557503410127335590

`A047299(2*n+1)+A008486(n)`
-/

namespace A315707.P12557503410127335590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (2 * n + 1) + A008486 n

end

end A315707.P12557503410127335590

namespace A315707

/-- `A047299(2*n+1)+A008486(n)` -/
def P12557503410127335590.Spec : Prop :=
  ∀ n, P12557503410127335590.a n = A315707 n

end A315707

/-! ## A315707.P8869592384120626169

`A057354(2*n+1)+A008706(n)`
-/

namespace A315707.P8869592384120626169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n + 1) + A008706 n

end

end A315707.P8869592384120626169

namespace A315707

/-- `A057354(2*n+1)+A008706(n)` -/
def P8869592384120626169.Spec : Prop :=
  ∀ n, P8869592384120626169.a n = A315707 n

end A315707

/-! ## A315707.P15422901963953838091

`A001489(2*n)+A312928(2*n)-n`
-/

namespace A315707.P15422901963953838091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n) + (A312928 (2 * n) - (n : ℤ))

end

end A315707.P15422901963953838091

namespace A315707

/-- `A001489(2*n)+A312928(2*n)-n` -/
def P15422901963953838091.Spec : Prop :=
  ∀ n, P15422901963953838091.a n = A315707 n

end A315707

/-! ## A315707.P12261554626411456808

`A001489(2*n)+A313025(2*n)-n`
-/

namespace A315707.P12261554626411456808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n) + (A313025 (2 * n) - (n : ℤ))

end

end A315707.P12261554626411456808

namespace A315707

/-- `A001489(2*n)+A313025(2*n)-n` -/
def P12261554626411456808.Spec : Prop :=
  ∀ n, P12261554626411456808.a n = A315707 n

end A315707

/-! ## A315707.P5175286402446587086

`A047299(2*n+1)+A033627(n+2)-1`
-/

namespace A315707.P5175286402446587086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (2 * n + 1) + (A033627 (n + 2) - 1)

end

end A315707.P5175286402446587086

namespace A315707

/-- `A047299(2*n+1)+A033627(n+2)-1` -/
def P5175286402446587086.Spec : Prop :=
  ∀ n, P5175286402446587086.a n = A315707 n

end A315707

/-! ## A315707.P10940112862481456218

`A057354(2*n+1)+A008486(n)+2*n`
-/

namespace A315707.P10940112862481456218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n + 1) + (A008486 n + (2 * n : ℤ))

end

end A315707.P10940112862481456218

namespace A315707

/-- `A057354(2*n+1)+A008486(n)+2*n` -/
def P10940112862481456218.Spec : Prop :=
  ∀ n, P10940112862481456218.a n = A315707 n

end A315707

/-! ## A315707.P16476113339862386177

`A008574(2*n)-A047448(2*n+1)+n`
-/

namespace A315707.P16476113339862386177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A047448 (2 * n + 1) + (n : ℤ)

end

end A315707.P16476113339862386177

namespace A315707

/-- `A008574(2*n)-A047448(2*n+1)+n` -/
def P16476113339862386177.Spec : Prop :=
  ∀ n, P16476113339862386177.a n = A315707 n

end A315707

/-! ## A315707.P15863655672837106398

`A314685(n)+A047299(n+1)`
-/

namespace A315707.P15863655672837106398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n + A047299 (n + 1)

end

end A315707.P15863655672837106398

namespace A315707

/-- `A314685(n)+A047299(n+1)` -/
def P15863655672837106398.Spec : Prop :=
  ∀ n, P15863655672837106398.a n = A315707 n

end A315707

/-! ## A315707.P1568307996465018595

`A047263(A008574(n)+1)+n`
-/

namespace A315707.P1568307996465018595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A008574 n + 1).toNat + (n : ℤ)

end

end A315707.P1568307996465018595

namespace A315707

/-- `A047263(A008574(n)+1)+n` -/
def P1568307996465018595.Spec : Prop :=
  ∀ n, P1568307996465018595.a n = A315707 n

end A315707

/-! ## A315707.P16053863726914039824

`A047263(A004280(2*(n+1)))+n`
-/

namespace A315707.P16053863726914039824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A004280 (2 * (n + 1))).toNat + (n : ℤ)

end

end A315707.P16053863726914039824

namespace A315707

/-- `A047263(A004280(2*(n+1)))+n` -/
def P16053863726914039824.Spec : Prop :=
  ∀ n, P16053863726914039824.a n = A315707 n

end A315707

/-! ## A315707.P14923721937299647171

`A313537(n)+A151988(n)`
-/

namespace A315707.P14923721937299647171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n + A151988 n

end

end A315707.P14923721937299647171

namespace A315707

/-- `A313537(n)+A151988(n)` -/
def P14923721937299647171.Spec : Prop :=
  ∀ n, P14923721937299647171.a n = A315707 n

end A315707

/-!
# A315708: Coordination sequence Gal.6.666.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315708, there is no canonical definition to state claims against.
-/

/-! ## A315708.P7016802690899414592

`or(A185284(A158780(n)), A315707(n))`
-/

namespace A315708.P7016802690899414592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A158780 n).toNat) (A315707 n)

end

end A315708.P7016802690899414592

/-! ## A315708.P15169943510623762132

`A315707(n)+A185284(A069116(n+1))`
-/

namespace A315708.P15169943510623762132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n + A185284 (A069116 (n + 1)).toNat

end

end A315708.P15169943510623762132

/-! ## A315708.P818201287955191644

`A315707(n)+A185284(A254052(n+1))`
-/

namespace A315708.P818201287955191644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n + A185284 (A254052 (n + 1)).toNat

end

end A315708.P818201287955191644

/-!
# A315709: Coordination sequence Gal.6.627.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315709, the canonical program `A315709.P16063274037664583401` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315709 has offset 0).

The definition of A315709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315709.P16063274037664583401

`round(A008598(A008574(n))/11)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315709

/-- `round(A008598(A008574(n))/11)` -/
def P16063274037664583401.Spec : Prop :=
  ∀ n, P16063274037664583401.a n = A315709 n

theorem P16063274037664583401.correct : P16063274037664583401.Spec := by
  intro n
  simp only [A315709]

end A315709

/-! ## A315709.P1202397334679163769

`abs(A008592(n)-A311804(n))`
-/

namespace A315709.P1202397334679163769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311804 n|

end

end A315709.P1202397334679163769

namespace A315709

/-- `abs(A008592(n)-A311804(n))` -/
def P1202397334679163769.Spec : Prop :=
  ∀ n, P1202397334679163769.a n = A315709 n

end A315709

/-! ## A315709.P9202213296727718130

`ceil(A158686(n)/A017401(n))`
-/

namespace A315709.P9202213296727718130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158686 n : ℚ) / (A017401 n : ℚ)⌉

end

end A315709.P9202213296727718130

namespace A315709

/-- `ceil(A158686(n)/A017401(n))` -/
def P9202213296727718130.Spec : Prop :=
  ∀ n, P9202213296727718130.a n = A315709 n

end A315709

/-! ## A315709.P7852101520864897306

`2*A008706(n)-A311804(n)`
-/

namespace A315709.P7852101520864897306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311804 n

end

end A315709.P7852101520864897306

namespace A315709

/-- `2*A008706(n)-A311804(n)` -/
def P7852101520864897306.Spec : Prop :=
  ∀ n, P7852101520864897306.a n = A315709 n

end A315709

/-! ## A315709.P18148569678245744002

`(A315655(n)+A008458(n))/2`
-/

namespace A315709.P18148569678245744002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315655 n + A008458 n : ℚ) / 2

end

end A315709.P18148569678245744002

namespace A315709

/-- `(A315655(n)+A008458(n))/2` -/
def P18148569678245744002.Spec : Prop :=
  ∀ n, P18148569678245744002.a n = (A315709 n : ℚ)

end A315709

/-! ## A315709.P9721334707241615877

`A008458(n)+A008574(n)-A311804(n)`
-/

namespace A315709.P9721334707241615877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311804 n)

end

end A315709.P9721334707241615877

namespace A315709

/-- `A008458(n)+A008574(n)-A311804(n)` -/
def P9721334707241615877.Spec : Prop :=
  ∀ n, P9721334707241615877.a n = A315709 n

end A315709

/-! ## A315709.P2492644864731245384

`A005843(n)+A005843(A008574(n))-A311804(n)`
-/

namespace A315709.P2492644864731245384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311804 n)

end

end A315709.P2492644864731245384

namespace A315709

/-- `A005843(n)+A005843(A008574(n))-A311804(n)` -/
def P2492644864731245384.Spec : Prop :=
  ∀ n, P2492644864731245384.a n = A315709 n

end A315709

/-! ## A315709.P13398073649853663208

`A311804(n)+A005843(A008706(n)-A311804(n))`
-/

namespace A315709.P13398073649853663208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + A005843 (A008706 n - A311804 n).toNat

end

end A315709.P13398073649853663208

namespace A315709

/-- `A311804(n)+A005843(A008706(n)-A311804(n))` -/
def P13398073649853663208.Spec : Prop :=
  ∀ n, P13398073649853663208.a n = A315709 n

end A315709

/-! ## A315709.P6455695775499898560

`A005843(A008706(n))-A311804(n)`
-/

namespace A315709.P6455695775499898560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311804 n

end

end A315709.P6455695775499898560

namespace A315709

/-- `A005843(A008706(n))-A311804(n)` -/
def P6455695775499898560.Spec : Prop :=
  ∀ n, P6455695775499898560.a n = A315709 n

end A315709

/-! ## A315709.P14556552734057535338

`A005843(A008574(n)+n)-A311804(n)`
-/

namespace A315709.P14556552734057535338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A311804 n

end

end A315709.P14556552734057535338

namespace A315709

/-- `A005843(A008574(n)+n)-A311804(n)` -/
def P14556552734057535338.Spec : Prop :=
  ∀ n, P14556552734057535338.a n = A315709 n

end A315709

/-! ## A315709.P13966495174397663603

`A008574(n)+A315650(n)-A004396(A315650(n))`
-/

namespace A315709.P13966495174397663603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315650 n - A004396 (A315650 n).toNat)

end

end A315709.P13966495174397663603

namespace A315709

/-- `A008574(n)+A315650(n)-A004396(A315650(n))` -/
def P13966495174397663603.Spec : Prop :=
  ∀ n, P13966495174397663603.a n = A315709 n

end A315709

/-! ## A315709.P10699907521099593014

`A313730(2*n)-4*n`
-/

namespace A315709.P10699907521099593014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313730 (2 * n) - (4 * n : ℤ)

end

end A315709.P10699907521099593014

namespace A315709

/-- `A313730(2*n)-4*n` -/
def P10699907521099593014.Spec : Prop :=
  ∀ n, P10699907521099593014.a n = A315709 n

end A315709

/-! ## A315709.P17904066531743889211

`2*A008574(2*n)-A313738(2*n)`
-/

namespace A315709.P17904066531743889211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313738 (2 * n)

end

end A315709.P17904066531743889211

namespace A315709

/-- `2*A008574(2*n)-A313738(2*n)` -/
def P17904066531743889211.Spec : Prop :=
  ∀ n, P17904066531743889211.a n = A315709 n

end A315709

/-! ## A315709.P12260755579362458401

`A004396(A312927(2*n))`
-/

namespace A315709.P12260755579362458401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312927 (2 * n)).toNat

end

end A315709.P12260755579362458401

namespace A315709

/-- `A004396(A312927(2*n))` -/
def P12260755579362458401.Spec : Prop :=
  ∀ n, P12260755579362458401.a n = A315709 n

end A315709

/-! ## A315709.P10294087073676994945

`A004396(A313024(2*n))`
-/

namespace A315709.P10294087073676994945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313024 (2 * n)).toNat

end

end A315709.P10294087073676994945

namespace A315709

/-- `A004396(A313024(2*n))` -/
def P10294087073676994945.Spec : Prop :=
  ∀ n, P10294087073676994945.a n = A315709 n

end A315709

/-! ## A315709.P9502508367511334388

`A004525(A315762(2*n))`
-/

namespace A315709.P9502508367511334388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315762 (2 * n)).toNat

end

end A315709.P9502508367511334388

namespace A315709

/-- `A004525(A315762(2*n))` -/
def P9502508367511334388.Spec : Prop :=
  ∀ n, P9502508367511334388.a n = A315709 n

end A315709

/-!
# A315710: Coordination sequence Gal.6.628.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315710, the canonical program `A315710.P3884167862571020999` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315710 has offset 0).

The definition of A315710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315710.P3884167862571020999

`A313569(n)+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315710

/-- `A313569(n)+n` -/
def P3884167862571020999.Spec : Prop :=
  ∀ n, P3884167862571020999.a n = A315710 n

theorem P3884167862571020999.correct : P3884167862571020999.Spec := by
  intro n
  simp only [A315710]

end A315710

/-! ## A315710.P5508884395602807792

`abs(10*n-A311801(n))`
-/

namespace A315710.P5508884395602807792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311801 n|

end

end A315710.P5508884395602807792

namespace A315710

/-- `abs(10*n-A311801(n))` -/
def P5508884395602807792.Spec : Prop :=
  ∀ n, P5508884395602807792.a n = A315710 n

end A315710

/-! ## A315710.P3404572784326443227

`abs(10*n-(A313872(n)-n))`
-/

namespace A315710.P3404572784326443227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - (A313872 n - (n : ℤ))|

end

end A315710.P3404572784326443227

namespace A315710

/-- `abs(10*n-(A313872(n)-n))` -/
def P3404572784326443227.Spec : Prop :=
  ∀ n, P3404572784326443227.a n = A315710 n

end A315710

/-! ## A315710.P14980219385802577517

`A314124(n)+A004525(n)`
-/

namespace A315710.P14980219385802577517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n + A004525 n

end

end A315710.P14980219385802577517

namespace A315710

/-- `A314124(n)+A004525(n)` -/
def P14980219385802577517.Spec : Prop :=
  ∀ n, P14980219385802577517.a n = A315710 n

theorem P14980219385802577517.correct : P14980219385802577517.Spec := by
  intro n
  simp only [A315710, Nat.add_sub_cancel, A315710.P14980219385802577517.a, A315710.P3884167862571020999.a, A004525, A004525.P4158271949796742323.a, A313569, A313569.P8131727440747983242.a, A314124, A314124.P13406789306969075082.a, A312896, A312896.P16473508619976293498.a, A004396, A004396.P17032557045289780609.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315710

/-! ## A315710.P14440608723439781121

`abs(A008593(n)-A313872(n))`
-/

namespace A315710.P14440608723439781121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313872 n|

end

end A315710.P14440608723439781121

namespace A315710

/-- `abs(A008593(n)-A313872(n))` -/
def P14440608723439781121.Spec : Prop :=
  ∀ n, P14440608723439781121.a n = A315710 n

end A315710

/-! ## A315710.P7200382485696545853

`A314124(n)+Δ[A054925(n)]`
-/

namespace A315710.P7200382485696545853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n + (f1 (n + 1) - f1 n)

end

end A315710.P7200382485696545853

namespace A315710

/-- `A314124(n)+Δ[A054925(n)]` -/
def P7200382485696545853.Spec : Prop :=
  ∀ n, P7200382485696545853.a n = A315710 n

end A315710

/-! ## A315710.P14970087263109477849

`A314712(n)+A042965(n+1)`
-/

namespace A315710.P14970087263109477849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n + A042965 (n + 1)

end

end A315710.P14970087263109477849

namespace A315710

/-- `A314712(n)+A042965(n+1)` -/
def P14970087263109477849.Spec : Prop :=
  ∀ n, P14970087263109477849.a n = A315710 n

end A315710

/-! ## A315710.P1643131469811814804

`A312896(n)+A047229(n+1)`
-/

namespace A315710.P1643131469811814804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + A047229 (n + 1)

end

end A315710.P1643131469811814804

namespace A315710

/-- `A312896(n)+A047229(n+1)` -/
def P1643131469811814804.Spec : Prop :=
  ∀ n, P1643131469811814804.a n = A315710 n

end A315710

/-! ## A315710.P9889500307859270103

`A314712(n)+A004396(2*n)`
-/

namespace A315710.P9889500307859270103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n + A004396 (2 * n)

end

end A315710.P9889500307859270103

namespace A315710

/-- `A314712(n)+A004396(2*n)` -/
def P9889500307859270103.Spec : Prop :=
  ∀ n, P9889500307859270103.a n = A315710 n

end A315710

/-! ## A315710.P18048698718615392047

`A004525(n)+A312896(n)+n`
-/

namespace A315710.P18048698718615392047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312896 n + (n : ℤ))

end

end A315710.P18048698718615392047

namespace A315710

/-- `A004525(n)+A312896(n)+n` -/
def P18048698718615392047.Spec : Prop :=
  ∀ n, P18048698718615392047.a n = A315710 n

theorem P18048698718615392047.correct : P18048698718615392047.Spec := by
  intro n
  simp only [A315710, Nat.add_sub_cancel, A315710.P18048698718615392047.a, A315710.P3884167862571020999.a, A004525, A004525.P4158271949796742323.a, A312896, A312896.P16473508619976293498.a, A313569, A313569.P8131727440747983242.a, A004396, A004396.P17032557045289780609.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315710

/-! ## A315710.P8893036936621998174

`A128834(n)+A313145(n)+n`
-/

namespace A315710.P8893036936621998174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313145 n + (n : ℤ))

end

end A315710.P8893036936621998174

namespace A315710

/-- `A128834(n)+A313145(n)+n` -/
def P8893036936621998174.Spec : Prop :=
  ∀ n, P8893036936621998174.a n = A315710 n

end A315710

/-! ## A315710.P6744644216755248671

`abs(A008592(n)+n-A313872(n))`
-/

namespace A315710.P6744644216755248671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A313872 n)|

end

end A315710.P6744644216755248671

namespace A315710

/-- `abs(A008592(n)+n-A313872(n))` -/
def P6744644216755248671.Spec : Prop :=
  ∀ n, P6744644216755248671.a n = A315710 n

end A315710

/-! ## A315710.P2851931341269018212

`A313707(n)+n-Δ[A011865(n)]`
-/

namespace A315710.P2851931341269018212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315710.P2851931341269018212

namespace A315710

/-- `A313707(n)+n-Δ[A011865(n)]` -/
def P2851931341269018212.Spec : Prop :=
  ∀ n, P2851931341269018212.a n = A315710 n

theorem P2851931341269018212.correct : P2851931341269018212.Spec := by
  intro n
  simp only [A315710, Nat.add_sub_cancel, A315710.P2851931341269018212.f1, A315710.P2851931341269018212.a, A315710.P3884167862571020999.a, A011865, A011865.P18048699183673763300.a, A313569, A313569.P8131727440747983242.a, A313707, A313707.P5162178319112651376.f1, A313707.P5162178319112651376.a, A004525, A004525.P4158271949796742323.a, A312896, A312896.P16473508619976293498.a, A004396, A004396.P17032557045289780609.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315710

/-! ## A315710.P13118881431839834605

`A314151(n)+A004396(A004525(n))`
-/

namespace A315710.P13118881431839834605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n + A004396 (A004525 n).toNat

end

end A315710.P13118881431839834605

namespace A315710

/-- `A314151(n)+A004396(A004525(n))` -/
def P13118881431839834605.Spec : Prop :=
  ∀ n, P13118881431839834605.a n = A315710 n

end A315710

/-! ## A315710.P3650836718566302440

`A314159(n)+A004525(A004396(n))`
-/

namespace A315710.P3650836718566302440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n + A004525 (A004396 n).toNat

end

end A315710.P3650836718566302440

namespace A315710

/-- `A314159(n)+A004525(A004396(n))` -/
def P3650836718566302440.Spec : Prop :=
  ∀ n, P3650836718566302440.a n = A315710 n

end A315710

/-! ## A315710.P8072114522407946401

`A004396(A004525(n))+A312933(n)+n`
-/

namespace A315710.P8072114522407946401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A312933 n + (n : ℤ))

end

end A315710.P8072114522407946401

namespace A315710

/-- `A004396(A004525(n))+A312933(n)+n` -/
def P8072114522407946401.Spec : Prop :=
  ∀ n, P8072114522407946401.a n = A315710 n

end A315710

/-! ## A315710.P15188376477606958039

`A315415(n)+n-A004525(A004396(n))`
-/

namespace A315710.P15188376477606958039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A315710.P15188376477606958039

namespace A315710

/-- `A315415(n)+n-A004525(A004396(n))` -/
def P15188376477606958039.Spec : Prop :=
  ∀ n, P15188376477606958039.a n = A315710 n

end A315710

/-! ## A315710.P8548216362627858807

`A008458(n)+A008574(n)-A311801(n)`
-/

namespace A315710.P8548216362627858807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311801 n)

end

end A315710.P8548216362627858807

namespace A315710

/-- `A008458(n)+A008574(n)-A311801(n)` -/
def P8548216362627858807.Spec : Prop :=
  ∀ n, P8548216362627858807.a n = A315710 n

end A315710

/-! ## A315710.P1439998963903940804

`A008574(n)+A314712(n)-A008576(n)`
-/

namespace A315710.P1439998963903940804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314712 n - A008576 n)

end

end A315710.P1439998963903940804

namespace A315710

/-- `A008574(n)+A314712(n)-A008576(n)` -/
def P1439998963903940804.Spec : Prop :=
  ∀ n, P1439998963903940804.a n = A315710 n

end A315710

/-! ## A315710.P6746651968584723860

`A004525(A313485(2*n))+A004396(2*n)`
-/

namespace A315710.P6746651968584723860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313485 (2 * n)).toNat + A004396 (2 * n)

end

end A315710.P6746651968584723860

namespace A315710

/-- `A004525(A313485(2*n))+A004396(2*n)` -/
def P6746651968584723860.Spec : Prop :=
  ∀ n, P6746651968584723860.a n = A315710 n

end A315710

/-!
# A315711: Coordination sequence Gal.6.665.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315711, the canonical program `A315711.P13942884718722138506` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315711 has offset 0).

The definition of A315711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315711.P13369613595785942099

`(A315656(n)+A008458(n))/2`
-/

namespace A315711.P13369613595785942099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315656 n + A008458 n : ℚ) / 2

end

end A315711.P13369613595785942099

namespace A315711

/-- `(A315656(n)+A008458(n))/2` -/
def P13369613595785942099.Spec : Prop :=
  ∀ n, P13369613595785942099.a n = (A315711 n : ℚ)

end A315711

/-! ## A315711.P13942884718722138506

`A014682(A315656(n)+A008458(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315711

/-- `A014682(A315656(n)+A008458(n))` -/
def P13942884718722138506.Spec : Prop :=
  ∀ n, P13942884718722138506.a n = A315711 n

theorem P13942884718722138506.correct : P13942884718722138506.Spec := by
  intro n
  simp only [A315711]

end A315711

/-! ## A315711.P15669748587289908401

`A008458(n)-A077814(A004396(n))`
-/

namespace A315711.P15669748587289908401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A077814 (A004396 n).toNat

end

end A315711.P15669748587289908401

namespace A315711

/-- `A008458(n)-A077814(A004396(n))` -/
def P15669748587289908401.Spec : Prop :=
  ∀ n, P15669748587289908401.a n = A315711 n

end A315711

/-! ## A315711.P17524087911463849077

`A008458(n)+A008579(n)-A312736(n)`
-/

namespace A315711.P17524087911463849077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A312736 n)

end

end A315711.P17524087911463849077

namespace A315711

/-- `A008458(n)+A008579(n)-A312736(n)` -/
def P17524087911463849077.Spec : Prop :=
  ∀ n, P17524087911463849077.a n = A315711 n

end A315711

/-! ## A315711.P16685721059031051382

`A315656(n)+A001281(A008458(n)-A315656(n))`
-/

namespace A315711.P16685721059031051382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315656 n + A001281 (A008458 n - A315656 n).toNat

end

end A315711.P16685721059031051382

namespace A315711

/-- `A315656(n)+A001281(A008458(n)-A315656(n))` -/
def P16685721059031051382.Spec : Prop :=
  ∀ n, P16685721059031051382.a n = A315711 n

end A315711

/-! ## A315711.P476814747411645168

`A315656(n)+A004525(A008458(n)-A315656(n))`
-/

namespace A315711.P476814747411645168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315656 n + A004525 (A008458 n - A315656 n).toNat

end

end A315711.P476814747411645168

namespace A315711

/-- `A315656(n)+A004525(A008458(n)-A315656(n))` -/
def P476814747411645168.Spec : Prop :=
  ∀ n, P476814747411645168.a n = A315711 n

end A315711

/-! ## A315711.P13937421756942923232

`A315656(n)+A025480(A008458(n)-A315656(n))`
-/

namespace A315711.P13937421756942923232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315656 n + A025480 (A008458 n - A315656 n).toNat

end

end A315711.P13937421756942923232

namespace A315711

/-- `A315656(n)+A025480(A008458(n)-A315656(n))` -/
def P13937421756942923232.Spec : Prop :=
  ∀ n, P13937421756942923232.a n = A315711 n

end A315711

/-! ## A315711.P14227102303957495139

`A008458(n)-A004526(A008458(n)-A315656(n))`
-/

namespace A315711.P14227102303957495139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315656 n).toNat

end

end A315711.P14227102303957495139

namespace A315711

/-- `A008458(n)-A004526(A008458(n)-A315656(n))` -/
def P14227102303957495139.Spec : Prop :=
  ∀ n, P14227102303957495139.a n = A315711 n

end A315711

/-! ## A315711.P10133014172838096467

`A008486(n)+A004526(A315656(n))`
-/

namespace A315711.P10133014172838096467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315656 n).toNat

end

end A315711.P10133014172838096467

namespace A315711

/-- `A008486(n)+A004526(A315656(n))` -/
def P10133014172838096467.Spec : Prop :=
  ∀ n, P10133014172838096467.a n = A315711 n

end A315711

/-! ## A315711.P12171586228458454718

`A008585(n)+A004525(A315656(n))`
-/

namespace A315711.P12171586228458454718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315656 n).toNat

end

end A315711.P12171586228458454718

namespace A315711

/-- `A008585(n)+A004525(A315656(n))` -/
def P12171586228458454718.Spec : Prop :=
  ∀ n, P12171586228458454718.a n = A315711 n

end A315711

/-! ## A315711.P4697581462829383204

`A001281(A315656(n)+A008458(n))`
-/

namespace A315711.P4697581462829383204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315656 n + A008458 n).toNat

end

end A315711.P4697581462829383204

namespace A315711

/-- `A001281(A315656(n)+A008458(n))` -/
def P4697581462829383204.Spec : Prop :=
  ∀ n, P4697581462829383204.a n = A315711 n

end A315711

/-! ## A315711.P1338084804537711485

`A004525(A315656(n)+A008458(n))`
-/

namespace A315711.P1338084804537711485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315656 n + A008458 n).toNat

end

end A315711.P1338084804537711485

namespace A315711

/-- `A004525(A315656(n)+A008458(n))` -/
def P1338084804537711485.Spec : Prop :=
  ∀ n, P1338084804537711485.a n = A315711 n

end A315711

/-! ## A315711.P3950813166753582140

`A004526(A315656(n)+A008458(n))`
-/

namespace A315711.P3950813166753582140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315656 n + A008458 n).toNat

end

end A315711.P3950813166753582140

namespace A315711

/-- `A004526(A315656(n)+A008458(n))` -/
def P3950813166753582140.Spec : Prop :=
  ∀ n, P3950813166753582140.a n = A315711 n

end A315711

/-! ## A315711.P10667659484718113937

`A025480(A315656(n)+A008458(n))`
-/

namespace A315711.P10667659484718113937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315656 n + A008458 n).toNat

end

end A315711.P10667659484718113937

namespace A315711

/-- `A025480(A315656(n)+A008458(n))` -/
def P10667659484718113937.Spec : Prop :=
  ∀ n, P10667659484718113937.a n = A315711 n

end A315711

/-! ## A315711.P15910817606313636843

`abs(A001057(A315656(n)+A008458(n)))`
-/

namespace A315711.P15910817606313636843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A315656 n + A008458 n).toNat|

end

end A315711.P15910817606313636843

namespace A315711

/-- `abs(A001057(A315656(n)+A008458(n)))` -/
def P15910817606313636843.Spec : Prop :=
  ∀ n, P15910817606313636843.a n = A315711 n

end A315711

/-! ## A315711.P17847907964578234157

`A001057(A008458(n)+A315656(n)-1)`
-/

namespace A315711.P17847907964578234157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008458 n + (A315656 n - 1)).toNat

end

end A315711.P17847907964578234157

namespace A315711

/-- `A001057(A008458(n)+A315656(n)-1)` -/
def P17847907964578234157.Spec : Prop :=
  ∀ n, P17847907964578234157.a n = A315711 n

end A315711

/-! ## A315711.P533637024140266692

`A001057(A008458(n)-(1-A315656(n)))`
-/

namespace A315711.P533637024140266692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008458 n - (1 - A315656 n)).toNat

end

end A315711.P533637024140266692

namespace A315711

/-- `A001057(A008458(n)-(1-A315656(n)))` -/
def P533637024140266692.Spec : Prop :=
  ∀ n, P533637024140266692.a n = A315711 n

end A315711

/-!
# A315712: Coordination sequence Gal.6.631.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315712, there is no canonical definition to state claims against.
-/

/-! ## A315712.P16574403741619529920

`floor(2/acot(3*n))-A231122(37*2^n-1)`
-/

namespace A315712.P16574403741619529920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ - A231122 (37 * 2 ^ n - 1)

end

end A315712.P16574403741619529920

/-! ## A315712.P10806520057644391728

`A257991(A109033(n))+A016861(n)`
-/

namespace A315712.P10806520057644391728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A109033 n).toNat + A016861 n

end

end A315712.P10806520057644391728

/-! ## A315712.P15409478048612264173

`A315662(n)+A052344(A052324(n))`
-/

namespace A315712.P15409478048612264173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315662 n + A052344 (A052324 n).toNat

end

end A315712.P15409478048612264173

/-! ## A315712.P16903524921178609538

`A301708(n)+A001221(A192744(n))`
-/

namespace A315712.P16903524921178609538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n + A001221 (A192744 n).toNat

end

end A315712.P16903524921178609538

/-!
# A315715: Coordination sequence Gal.6.610.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315715, there is no canonical definition to state claims against.
-/

/-! ## A315715.P17893642888760174094

`A358577(n+1)+A268834(A303761(2*n+1))`
-/

namespace A315715.P17893642888760174094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358577 (n + 1) + A268834 (A303761 (2 * n + 1)).toNat

end

end A315715.P17893642888760174094

/-!
# A315716: Coordination sequence Gal.5.210.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315716, there is no canonical definition to state claims against.
-/

/-! ## A315716.P4971630928201765103

`2*A315723(n)-A299909(n)`
-/

namespace A315716.P4971630928201765103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315723 n - A299909 n

end

end A315716.P4971630928201765103

/-! ## A315716.P15543590744232112629

`A299909(n)-A005843(A299909(n)-A315723(n))`
-/

namespace A315716.P15543590744232112629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299909 n - A005843 (A299909 n - A315723 n).toNat

end

end A315716.P15543590744232112629

/-! ## A315716.P16934882484743251452

`A005843(A315723(n))-A299909(n)`
-/

namespace A315716.P16934882484743251452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315723 n).toNat - A299909 n

end

end A315716.P16934882484743251452

/-! ## A315716.P12884616516661193390

`A008458(A351870(n)-A091247(n))`
-/

namespace A315716.P12884616516661193390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A351870 n - A091247 n).toNat

end

end A315716.P12884616516661193390

/-!
# A315717: Coordination sequence Gal.5.212.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315717, there is no canonical definition to state claims against.
-/

/-! ## A315717.P5760954585171591106

`2*A315620(n)-A315598(n)`
-/

namespace A315717.P5760954585171591106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315620 n - A315598 n

end

end A315717.P5760954585171591106

/-! ## A315717.P3175587884057339076

`A315620(n)+A315723(n)-A315622(n)`
-/

namespace A315717.P3175587884057339076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315620 n + (A315723 n - A315622 n)

end

end A315717.P3175587884057339076

/-! ## A315717.P575088332109296915

`A005843(A315620(n))-A315598(n)`
-/

namespace A315717.P575088332109296915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315620 n).toNat - A315598 n

end

end A315717.P575088332109296915

/-! ## A315717.P2771711103096560929

`A005843(A315620(n))+-A315598(n)%A204502(3*n+4)`
-/

namespace A315717.P2771711103096560929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315620 n).toNat + Int.tmod (-A315598 n) (A204502 (3 * n + 4))

end

end A315717.P2771711103096560929

/-! ## A315717.P1798671245139249969

`A005843(A315620(n))+-A315598(n)%A259505(n+1)`
-/

namespace A315717.P1798671245139249969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315620 n).toNat + Int.tmod (-A315598 n) (A259505 (n + 1))

end

end A315717.P1798671245139249969

/-!
# A315718: Coordination sequence Gal.5.313.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315718, there is no canonical definition to state claims against.
-/

/-! ## A315718.P6747698723618236590

`A315719(n)-A051344(A182561(n+1))`
-/

namespace A315718.P6747698723618236590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315719 n - A051344 (A182561 (n + 1)).toNat

end

end A315718.P6747698723618236590

/-! ## A315718.P3009578832374208132

`A315719(n^gcd(11, n))`
-/

namespace A315718.P3009578832374208132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315719 (n ^ Nat.gcd 11 n)

end

end A315718.P3009578832374208132

/-! ## A315718.P12084298777266825065

`A315719(A062399(n))`
-/

namespace A315718.P12084298777266825065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315719 (A062399 n).toNat

end

end A315718.P12084298777266825065

/-! ## A315718.P15462142731673436690

`A095400(A315719(n))`
-/

namespace A315718.P15462142731673436690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095400 (A315719 n).toNat

end

end A315718.P15462142731673436690

/-! ## A315718.P4919360962166422083

`A315719(A120126(n))`
-/

namespace A315718.P4919360962166422083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315719 (A120126 n).toNat

end

end A315718.P4919360962166422083

/-!
# A315719: Coordination sequence Gal.6.658.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315719, the canonical program `A315719.P16119919274741780679` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315719 has offset 0).

The definition of A315719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315719.P16119919274741780679

`A315770(2*n)-A153733(A315770(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315719

/-- `A315770(2*n)-A153733(A315770(n))` -/
def P16119919274741780679.Spec : Prop :=
  ∀ n, P16119919274741780679.a n = A315719 n

theorem P16119919274741780679.correct : P16119919274741780679.Spec := by
  intro n
  simp only [A315719]

end A315719

/-! ## A315719.P9479401688668923750

`A315770(2*n)-A315770(n)%A004009(n)`
-/

namespace A315719.P9479401688668923750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315770 (2 * n) - Int.tmod (A315770 n) (A004009 n)

end

end A315719.P9479401688668923750

namespace A315719

/-- `A315770(2*n)-A315770(n)%A004009(n)` -/
def P9479401688668923750.Spec : Prop :=
  ∀ n, P9479401688668923750.a n = A315719 n

end A315719

/-! ## A315719.P11611322635136457881

`A315770(2*n)-A026741(A315770(n)+1)+1`
-/

namespace A315719.P11611322635136457881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315770 (2 * n) - A026741 (A315770 n + 1).toNat + 1

end

end A315719.P11611322635136457881

namespace A315719

/-- `A315770(2*n)-A026741(A315770(n)+1)+1` -/
def P11611322635136457881.Spec : Prop :=
  ∀ n, P11611322635136457881.a n = A315719 n

end A315719

/-! ## A315719.P11325113456054568270

`A315718(n)+A051344(A182561(n+1))`
-/

namespace A315719.P11325113456054568270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315718 n + A051344 (A182561 (n + 1)).toNat

end

end A315719.P11325113456054568270

namespace A315719

/-- `A315718(n)+A051344(A182561(n+1))` -/
def P11325113456054568270.Spec : Prop :=
  ∀ n, P11325113456054568270.a n = A315719 n

end A315719

/-!
# A315720: Coordination sequence Gal.6.319.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315720, there is no canonical definition to state claims against.
-/

/-! ## A315720.P18123028471579485162

`A117656(A004277(3*n))%A141249(2*(n+1))`
-/

namespace A315720.P18123028471579485162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117656 (A004277 (3 * n)).toNat) (A141249 (2 * (n + 1)))

end

end A315720.P18123028471579485162

/-! ## A315720.P12733654449144257093

`A117656(A004275(3*n+1))%A141249(2*(n+1))`
-/

namespace A315720.P12733654449144257093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117656 (A004275 (3 * n + 1)).toNat) (A141249 (2 * (n + 1)))

end

end A315720.P12733654449144257093

/-! ## A315720.P3223837797078346937

`xor(A185284((2-n)²), A315721(n))`
-/

namespace A315720.P3223837797078346937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 ((2 - (n : ℤ)) ^ 2).toNat) (A315721 n)

end

end A315720.P3223837797078346937

/-! ## A315720.P1029437417170821785

`A315721(xor(n, A185284(A000217(n))))`
-/

namespace A315720.P1029437417170821785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315721 (Int.xor (n : ℤ) (A185284 (A000217 n).toNat)).toNat

end

end A315720.P1029437417170821785

/-! ## A315720.P6188471187742771985

`A304107(3*n+2)-A344696(A006027(n+1))`
-/

namespace A315720.P6188471187742771985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304107 (3 * n + 2) - A344696 (A006027 (n + 1)).toNat

end

end A315720.P6188471187742771985

/-!
# A315721: Coordination sequence Gal.6.667.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315721, there is no canonical definition to state claims against.
-/

/-! ## A315721.P14846024559545893710

`2*A315724(n)-A008458(n)`
-/

namespace A315721.P14846024559545893710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315724 n - A008458 n

end

end A315721.P14846024559545893710

/-! ## A315721.P4848496261978537852

`A103517(A315724(n)-A016777(n))`
-/

namespace A315721.P4848496261978537852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315724 n - A016777 n).toNat

end

end A315721.P4848496261978537852

/-! ## A315721.P10942495055985074461

`A103517(A315724(n)%A016777(n))`
-/

namespace A315721.P10942495055985074461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315724 n) (A016777 n)).toNat

end

end A315721.P10942495055985074461

/-! ## A315721.P11182360621575525092

`A004275(A315724(n)-record[A014682(n)])`
-/

namespace A315721.P11182360621575525092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A315724 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A315721.P11182360621575525092

/-! ## A315721.P1884035725706162048

`2*A315724(n)-A008486(A005843(n))`
-/

namespace A315721.P1884035725706162048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315724 n - A008486 (A005843 n).toNat

end

end A315721.P1884035725706162048

/-! ## A315721.P11756332339967458947

`A008458(n)-A005843(A008458(n)-A315724(n))`
-/

namespace A315721.P11756332339967458947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315724 n).toNat

end

end A315721.P11756332339967458947

/-! ## A315721.P14685950244469269301

`A005843(A315724(n))-A008458(n)`
-/

namespace A315721.P14685950244469269301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315724 n).toNat - A008458 n

end

end A315721.P14685950244469269301

/-! ## A315721.P12566262623389383344

`A005408(A315724(n))-A271114(n)`
-/

namespace A315721.P12566262623389383344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A315724 n).toNat - A271114 n

end

end A315721.P12566262623389383344

/-! ## A315721.P14472107456374221185

`A005843(A315724(n))-A008486(A005843(n))`
-/

namespace A315721.P14472107456374221185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315724 n).toNat - A008486 (A005843 n).toNat

end

end A315721.P14472107456374221185

/-!
# A315723: Coordination sequence Gal.5.209.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315723, there is no canonical definition to state claims against.
-/

/-! ## A315723.P1077607728842646347

`(A315716(n)+A299909(n))/2`
-/

namespace A315723.P1077607728842646347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315716 n + A299909 n : ℚ) / 2

end

end A315723.P1077607728842646347

/-! ## A315723.P17141685808363994277

`A014682(A315716(n)+A299909(n))`
-/

namespace A315723.P17141685808363994277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315716 n + A299909 n).toNat

end

end A315723.P17141685808363994277

/-! ## A315723.P16154031610050651559

`A315716(n)+A004525(A299909(n)-A315716(n))`
-/

namespace A315723.P16154031610050651559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315716 n + A004525 (A299909 n - A315716 n).toNat

end

end A315723.P16154031610050651559

/-! ## A315723.P14993809604399782929

`A315716(n)+A006370(A299909(n)-A315716(n))`
-/

namespace A315723.P14993809604399782929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315716 n + A006370 (A299909 n - A315716 n).toNat

end

end A315723.P14993809604399782929

/-! ## A315723.P1201204749067953607

`A315716(n)+A026741(A299909(n)-A315716(n))`
-/

namespace A315723.P1201204749067953607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315716 n + A026741 (A299909 n - A315716 n).toNat

end

end A315723.P1201204749067953607

/-! ## A315723.P3174794879845556674

`A315716(n)+A029578(A299909(n)-A315716(n))`
-/

namespace A315723.P3174794879845556674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315716 n + A029578 (A299909 n - A315716 n).toNat

end

end A315723.P3174794879845556674

/-! ## A315723.P1371907020775090122

`A315716(n)+A097140(A299909(n)-A315716(n))`
-/

namespace A315723.P1371907020775090122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315716 n + A097140 (A299909 n - A315716 n).toNat

end

end A315723.P1371907020775090122

/-! ## A315723.P7170827633762815624

`A299909(n)-A004526(A299909(n)-A315716(n))`
-/

namespace A315723.P7170827633762815624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299909 n - A004526 (A299909 n - A315716 n).toNat

end

end A315723.P7170827633762815624

/-! ## A315723.P190459523545205955

`A004525(A315716(n)+A299909(n))`
-/

namespace A315723.P190459523545205955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315716 n + A299909 n).toNat

end

end A315723.P190459523545205955

/-! ## A315723.P591022340577120990

`A004526(A315716(n)+A299909(n))`
-/

namespace A315723.P591022340577120990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315716 n + A299909 n).toNat

end

end A315723.P591022340577120990

/-! ## A315723.P3721937971954661880

`A006370(A315716(n)+A299909(n))`
-/

namespace A315723.P3721937971954661880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315716 n + A299909 n).toNat

end

end A315723.P3721937971954661880

/-! ## A315723.P11626618081434139115

`A026741(A315716(n)+A299909(n))`
-/

namespace A315723.P11626618081434139115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315716 n + A299909 n).toNat

end

end A315723.P11626618081434139115

/-! ## A315723.P14270992352865502479

`A029578(A315716(n)+A299909(n))`
-/

namespace A315723.P14270992352865502479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315716 n + A299909 n).toNat

end

end A315723.P14270992352865502479

/-! ## A315723.P4905492777871780647

`A065033(A315716(n)+A299909(n))`
-/

namespace A315723.P4905492777871780647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315716 n + A299909 n).toNat

end

end A315723.P4905492777871780647

/-! ## A315723.P17393212050163617784

`A097140(A315716(n)+A299909(n))`
-/

namespace A315723.P17393212050163617784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A315716 n + A299909 n).toNat

end

end A315723.P17393212050163617784

/-! ## A315723.P11554860298867957401

`A065033(A299909(n)-(1-A315716(n)))`
-/

namespace A315723.P11554860298867957401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A299909 n - (1 - A315716 n)).toNat

end

end A315723.P11554860298867957401

/-!
# A315724: Coordination sequence Gal.6.665.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315724, there is no canonical definition to state claims against.
-/

/-! ## A315724.P2824127616226020572

`(A315721(n)+A008458(n))/2`
-/

namespace A315724.P2824127616226020572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315721 n + A008458 n : ℚ) / 2

end

end A315724.P2824127616226020572

/-! ## A315724.P2252720532799373850

`floor((A315721(n)+A016921(n))/2)`
-/

namespace A315724.P2252720532799373850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A315721 n + A016921 n : ℚ) / 2⌋

end

end A315724.P2252720532799373850

/-! ## A315724.P12110683870297307924

`A315721(n)+A001281(A008458(n)-A315721(n))`
-/

namespace A315724.P12110683870297307924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315721 n + A001281 (A008458 n - A315721 n).toNat

end

end A315724.P12110683870297307924

/-! ## A315724.P3686516781033833320

`A315721(n)+A004525(A008458(n)-A315721(n))`
-/

namespace A315724.P3686516781033833320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315721 n + A004525 (A008458 n - A315721 n).toNat

end

end A315724.P3686516781033833320

/-! ## A315724.P9142517039631452835

`A315721(n)+A004526(A016921(n)-A315721(n))`
-/

namespace A315724.P9142517039631452835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315721 n + A004526 (A016921 n - A315721 n).toNat

end

end A315724.P9142517039631452835

/-! ## A315724.P15957971434866259736

`A315721(n)+A025480(A008458(n)-A315721(n))`
-/

namespace A315724.P15957971434866259736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315721 n + A025480 (A008458 n - A315721 n).toNat

end

end A315724.P15957971434866259736

/-! ## A315724.P12746156216904240096

`A315721(n)+A026741(A008458(n)-A315721(n))`
-/

namespace A315724.P12746156216904240096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315721 n + A026741 (A008458 n - A315721 n).toNat

end

end A315724.P12746156216904240096

/-! ## A315724.P10228848262435002217

`A008458(n)-A004526(A008458(n)-A315721(n))`
-/

namespace A315724.P10228848262435002217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315721 n).toNat

end

end A315724.P10228848262435002217

/-! ## A315724.P3720903490539026240

`A008486(n)+A004526(A315721(n))`
-/

namespace A315724.P3720903490539026240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315721 n).toNat

end

end A315724.P3720903490539026240

/-! ## A315724.P1107503127341200958

`A008585(n)+A004525(A315721(n))`
-/

namespace A315724.P1107503127341200958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315721 n).toNat

end

end A315724.P1107503127341200958

/-! ## A315724.P14501588070388611492

`A001281(A315721(n)+A008458(n))`
-/

namespace A315724.P14501588070388611492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315721 n + A008458 n).toNat

end

end A315724.P14501588070388611492

/-! ## A315724.P15787097301294908450

`A004525(A315721(n)+A008458(n))`
-/

namespace A315724.P15787097301294908450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315721 n + A008458 n).toNat

end

end A315724.P15787097301294908450

/-! ## A315724.P4626377105435762731

`A004526(A315721(n)+A008458(n))`
-/

namespace A315724.P4626377105435762731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315721 n + A008458 n).toNat

end

end A315724.P4626377105435762731

/-! ## A315724.P5149547493601872779

`A004526(A315721(n)+A016921(n))`
-/

namespace A315724.P5149547493601872779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315721 n + A016921 n).toNat

end

end A315724.P5149547493601872779

/-! ## A315724.P2030885853043582284

`A025480(A315721(n)+A008458(n))`
-/

namespace A315724.P2030885853043582284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315721 n + A008458 n).toNat

end

end A315724.P2030885853043582284

/-! ## A315724.P4071436444030747291

`A026741(A315721(n)+A008458(n))`
-/

namespace A315724.P4071436444030747291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315721 n + A008458 n).toNat

end

end A315724.P4071436444030747291

/-! ## A315724.P13630163027861923198

`A065033(A315721(n)+A008458(n))`
-/

namespace A315724.P13630163027861923198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315721 n + A008458 n).toNat

end

end A315724.P13630163027861923198

/-! ## A315724.P12454636762377246788

`A065033(A008458(n)-(1-A315721(n)))`
-/

namespace A315724.P12454636762377246788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008458 n - (1 - A315721 n)).toNat

end

end A315724.P12454636762377246788

/-!
# A315725: Coordination sequence Gal.6.158.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315725, the canonical program `A315725.P11780031847012984770` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315725 has offset 0).

The definition of A315725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315725.P15600147942300309398

`abs(A008592(n)-A311635(n))`
-/

namespace A315725.P15600147942300309398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311635 n|

end

end A315725.P15600147942300309398

namespace A315725

/-- `abs(A008592(n)-A311635(n))` -/
def P15600147942300309398.Spec : Prop :=
  ∀ n, P15600147942300309398.a n = A315725 n

end A315725

/-! ## A315725.P15502045273457179096

`2*A008706(n)-A311635(n)`
-/

namespace A315725.P15502045273457179096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311635 n

end

end A315725.P15502045273457179096

namespace A315725

/-- `2*A008706(n)-A311635(n)` -/
def P15502045273457179096.Spec : Prop :=
  ∀ n, P15502045273457179096.a n = A315725 n

end A315725

/-! ## A315725.P14002044597580921592

`2*A313681(n)-A008574(n)`
-/

namespace A315725.P14002044597580921592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313681 n - A008574 n

end

end A315725.P14002044597580921592

namespace A315725

/-- `2*A313681(n)-A008574(n)` -/
def P14002044597580921592.Spec : Prop :=
  ∀ n, P14002044597580921592.a n = A315725 n

end A315725

/-! ## A315725.P14235229727244373530

`A103517(A313681(n)-(2*n+1))`
-/

namespace A315725.P14235229727244373530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313681 n - (2 * n + 1 : ℤ)).toNat

end

end A315725.P14235229727244373530

namespace A315725

/-- `A103517(A313681(n)-(2*n+1))` -/
def P14235229727244373530.Spec : Prop :=
  ∀ n, P14235229727244373530.a n = A315725 n

end A315725

/-! ## A315725.P11780031847012984770

`A315667(n)+A110654(floor(4*n/11))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A315725

/-- `A315667(n)+A110654(floor(4*n/11))` -/
def P11780031847012984770.Spec : Prop :=
  ∀ n, P11780031847012984770.a n = A315725 n

theorem P11780031847012984770.correct : P11780031847012984770.Spec := by
  intro n
  simp only [A315725]

end A315725

/-! ## A315725.P5198378078202153129

`A004275(A313681(n)-A004273(n))`
-/

namespace A315725.P5198378078202153129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313681 n - A004273 n).toNat

end

end A315725.P5198378078202153129

namespace A315725

/-- `A004275(A313681(n)-A004273(n))` -/
def P5198378078202153129.Spec : Prop :=
  ∀ n, P5198378078202153129.a n = A315725 n

end A315725

/-! ## A315725.P6204666838669786768

`A008458(n)+A008574(n)-A311635(n)`
-/

namespace A315725.P6204666838669786768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311635 n)

end

end A315725.P6204666838669786768

namespace A315725

/-- `A008458(n)+A008574(n)-A311635(n)` -/
def P6204666838669786768.Spec : Prop :=
  ∀ n, P6204666838669786768.a n = A315725 n

end A315725

/-! ## A315725.P5164458261521866928

`A004273(A313681(n)-n)-A004273(n)`
-/

namespace A315725.P5164458261521866928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313681 n - (n : ℤ)).toNat - A004273 n

end

end A315725.P5164458261521866928

namespace A315725

/-- `A004273(A313681(n)-n)-A004273(n)` -/
def P5164458261521866928.Spec : Prop :=
  ∀ n, P5164458261521866928.a n = A315725 n

end A315725

/-! ## A315725.P12033911781185235658

`A008574(n)+A005843(A313681(n)-A008574(n))`
-/

namespace A315725.P12033911781185235658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313681 n - A008574 n).toNat

end

end A315725.P12033911781185235658

namespace A315725

/-- `A008574(n)+A005843(A313681(n)-A008574(n))` -/
def P12033911781185235658.Spec : Prop :=
  ∀ n, P12033911781185235658.a n = A315725 n

end A315725

/-! ## A315725.P4513728923982665734

`A315667(n)+A004525(A315736(n)-A315667(n))`
-/

namespace A315725.P4513728923982665734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315667 n + A004525 (A315736 n - A315667 n).toNat

end

end A315725.P4513728923982665734

namespace A315725

/-- `A315667(n)+A004525(A315736(n)-A315667(n))` -/
def P4513728923982665734.Spec : Prop :=
  ∀ n, P4513728923982665734.a n = A315725 n

end A315725

/-! ## A315725.P4005570066094964485

`2*A315736(n)-A315754(n)`
-/

namespace A315725.P4005570066094964485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315736 n - A315754 n

end

end A315725.P4005570066094964485

namespace A315725

/-- `2*A315736(n)-A315754(n)` -/
def P4005570066094964485.Spec : Prop :=
  ∀ n, P4005570066094964485.a n = A315725 n

end A315725

/-! ## A315725.P2020208106594107546

`A005843(A313681(n))-A008574(n)`
-/

namespace A315725.P2020208106594107546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313681 n).toNat - A008574 n

end

end A315725.P2020208106594107546

namespace A315725

/-- `A005843(A313681(n))-A008574(n)` -/
def P2020208106594107546.Spec : Prop :=
  ∀ n, P2020208106594107546.a n = A315725 n

end A315725

/-! ## A315725.P3596819819864600126

`A004275(A313681(n))-A004275(2*n)`
-/

namespace A315725.P3596819819864600126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313681 n).toNat - A004275 (2 * n)

end

end A315725.P3596819819864600126

namespace A315725

/-- `A004275(A313681(n))-A004275(2*n)` -/
def P3596819819864600126.Spec : Prop :=
  ∀ n, P3596819819864600126.a n = A315725 n

end A315725

/-! ## A315725.P3272751714237318774

`2*A180004(A315629(n))-A315629(n)`
-/

namespace A315725.P3272751714237318774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180004 (A315629 n).toNat - A315629 n

end

end A315725.P3272751714237318774

namespace A315725

/-- `2*A180004(A315629(n))-A315629(n)` -/
def P3272751714237318774.Spec : Prop :=
  ∀ n, P3272751714237318774.a n = A315725 n

end A315725

/-! ## A315725.P14585862649711465050

`A017281(n)-A004442(A311635(n))`
-/

namespace A315725.P14585862649711465050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A311635 n).toNat

end

end A315725.P14585862649711465050

namespace A315725

/-- `A017281(n)-A004442(A311635(n))` -/
def P14585862649711465050.Spec : Prop :=
  ∀ n, P14585862649711465050.a n = A315725 n

end A315725

/-! ## A315725.P2875622538705979485

`A005843(A008706(n))-A311635(n)`
-/

namespace A315725.P2875622538705979485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311635 n

end

end A315725.P2875622538705979485

namespace A315725

/-- `A005843(A008706(n))-A311635(n)` -/
def P2875622538705979485.Spec : Prop :=
  ∀ n, P2875622538705979485.a n = A315725 n

end A315725

/-!
# A315726: Coordination sequence Gal.6.252.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315726, the canonical program `A315726.P3826273257408320648` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315726 has offset 0).

The definition of A315726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315726.P3805018037395557120

`A312684(n)+2*A253262(n)`
-/

namespace A315726.P3805018037395557120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312684 n + 2 * A253262 n

end

end A315726.P3805018037395557120

namespace A315726

/-- `A312684(n)+2*A253262(n)` -/
def P3805018037395557120.Spec : Prop :=
  ∀ n, P3805018037395557120.a n = A315726 n

end A315726

/-! ## A315726.P3826273257408320648

`2*A313682(n)-A008574(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315726

/-- `2*A313682(n)-A008574(n)` -/
def P3826273257408320648.Spec : Prop :=
  ∀ n, P3826273257408320648.a n = A315726 n

theorem P3826273257408320648.correct : P3826273257408320648.Spec := by
  intro n
  simp only [A315726]

end A315726

/-! ## A315726.P88426009225657304

`A004275(A313682(n)-A004273(n))`
-/

namespace A315726.P88426009225657304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313682 n - A004273 n).toNat

end

end A315726.P88426009225657304

namespace A315726

/-- `A004275(A313682(n)-A004273(n))` -/
def P88426009225657304.Spec : Prop :=
  ∀ n, P88426009225657304.a n = A315726 n

end A315726

/-! ## A315726.P2539675046317256118

`A330025(A330025(n)+n)+A314203(n)`
-/

namespace A315726.P2539675046317256118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A314203 n

end

end A315726.P2539675046317256118

namespace A315726

/-- `A330025(A330025(n)+n)+A314203(n)` -/
def P2539675046317256118.Spec : Prop :=
  ∀ n, P2539675046317256118.a n = A315726 n

end A315726

/-! ## A315726.P2507413393918688387

`A004273(A313682(n)-n)-A004273(n)`
-/

namespace A315726.P2507413393918688387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313682 n - (n : ℤ)).toNat - A004273 n

end

end A315726.P2507413393918688387

namespace A315726

/-- `A004273(A313682(n)-n)-A004273(n)` -/
def P2507413393918688387.Spec : Prop :=
  ∀ n, P2507413393918688387.a n = A315726 n

end A315726

/-! ## A315726.P1769983007206963367

`A008574(n)+A005843(A313682(n)-A008574(n))`
-/

namespace A315726.P1769983007206963367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313682 n - A008574 n).toNat

end

end A315726.P1769983007206963367

namespace A315726

/-- `A008574(n)+A005843(A313682(n)-A008574(n))` -/
def P1769983007206963367.Spec : Prop :=
  ∀ n, P1769983007206963367.a n = A315726 n

end A315726

/-! ## A315726.P8991087961987148104

`A313873(n)+A253262(n)`
-/

namespace A315726.P8991087961987148104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n + A253262 n

end

end A315726.P8991087961987148104

namespace A315726

/-- `A313873(n)+A253262(n)` -/
def P8991087961987148104.Spec : Prop :=
  ∀ n, P8991087961987148104.a n = A315726 n

end A315726

/-! ## A315726.P10893782009980962449

`A330025(n-A330025(n))+A315508(n)`
-/

namespace A315726.P10893782009980962449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A315508 n

end

end A315726.P10893782009980962449

namespace A315726

/-- `A330025(n-A330025(n))+A315508(n)` -/
def P10893782009980962449.Spec : Prop :=
  ∀ n, P10893782009980962449.a n = A315726 n

end A315726

/-! ## A315726.P13032878521037982899

`abs(A008592(n)-A311634(n))`
-/

namespace A315726.P13032878521037982899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311634 n|

end

end A315726.P13032878521037982899

namespace A315726

/-- `abs(A008592(n)-A311634(n))` -/
def P13032878521037982899.Spec : Prop :=
  ∀ n, P13032878521037982899.a n = A315726 n

end A315726

/-! ## A315726.P8064981922841232367

`2*A008706(n)-A311634(n)`
-/

namespace A315726.P8064981922841232367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311634 n

end

end A315726.P8064981922841232367

namespace A315726

/-- `2*A008706(n)-A311634(n)` -/
def P8064981922841232367.Spec : Prop :=
  ∀ n, P8064981922841232367.a n = A315726 n

end A315726

/-! ## A315726.P922241349297966124

`A008458(n)+A008574(n)-A311634(n)`
-/

namespace A315726.P922241349297966124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311634 n)

end

end A315726.P922241349297966124

namespace A315726

/-- `A008458(n)+A008574(n)-A311634(n)` -/
def P922241349297966124.Spec : Prop :=
  ∀ n, P922241349297966124.a n = A315726 n

end A315726

/-! ## A315726.P17801083505098389444

`2*A315742(n)-A008458(n)`
-/

namespace A315726.P17801083505098389444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315742 n - A008458 n

end

end A315726.P17801083505098389444

namespace A315726

/-- `2*A315742(n)-A008458(n)` -/
def P17801083505098389444.Spec : Prop :=
  ∀ n, P17801083505098389444.a n = A315726 n

end A315726

/-! ## A315726.P6249710383641722257

`A005408(A315742(n)-A005408(n))-A004273(n)`
-/

namespace A315726.P6249710383641722257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A315742 n - A005408 n).toNat - A004273 n

end

end A315726.P6249710383641722257

namespace A315726

/-- `A005408(A315742(n)-A005408(n))-A004273(n)` -/
def P6249710383641722257.Spec : Prop :=
  ∀ n, P6249710383641722257.a n = A315726 n

end A315726

/-! ## A315726.P10221474626793430419

`A005843(A313682(n))-A008574(n)`
-/

namespace A315726.P10221474626793430419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313682 n).toNat - A008574 n

end

end A315726.P10221474626793430419

namespace A315726

/-- `A005843(A313682(n))-A008574(n)` -/
def P10221474626793430419.Spec : Prop :=
  ∀ n, P10221474626793430419.a n = A315726 n

end A315726

/-! ## A315726.P15682307044112799934

`A004275(A313682(n))-A004275(2*n)`
-/

namespace A315726.P15682307044112799934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313682 n).toNat - A004275 (2 * n)

end

end A315726.P15682307044112799934

namespace A315726

/-- `A004275(A313682(n))-A004275(2*n)` -/
def P15682307044112799934.Spec : Prop :=
  ∀ n, P15682307044112799934.a n = A315726 n

end A315726

/-! ## A315726.P6345352012217991382

`A005843(A008706(n))-A311634(n)`
-/

namespace A315726.P6345352012217991382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311634 n

end

end A315726.P6345352012217991382

namespace A315726

/-- `A005843(A008706(n))-A311634(n)` -/
def P6345352012217991382.Spec : Prop :=
  ∀ n, P6345352012217991382.a n = A315726 n

end A315726

/-! ## A315726.P8394437083211580369

`A020639(A000040(n+1)-1)*A004525(A315679(n))`
-/

namespace A315726.P8394437083211580369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A004525 (A315679 n).toNat

end

end A315726.P8394437083211580369

namespace A315726

/-- `A020639(A000040(n+1)-1)*A004525(A315679(n))` -/
def P8394437083211580369.Spec : Prop :=
  ∀ n, P8394437083211580369.a n = A315726 n

end A315726

/-!
# A315727: Coordination sequence Gal.5.89.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315727, the canonical program `A315727.P1759850529148023067` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315727 has offset 0).

The definition of A315727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315727.P10879878066571845952

`abs(A008592(n)-A311633(n))`
-/

namespace A315727.P10879878066571845952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311633 n|

end

end A315727.P10879878066571845952

namespace A315727

/-- `abs(A008592(n)-A311633(n))` -/
def P10879878066571845952.Spec : Prop :=
  ∀ n, P10879878066571845952.a n = A315727 n

end A315727

/-! ## A315727.P1759850529148023067

`A315669(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315727

/-- `A315669(n)+Δ[A011862(n)]` -/
def P1759850529148023067.Spec : Prop :=
  ∀ n, P1759850529148023067.a n = A315727 n

theorem P1759850529148023067.correct : P1759850529148023067.Spec := by
  intro n
  simp only [A315727]

end A315727

/-! ## A315727.P14359230648641508390

`2*A008706(n)-A311633(n)`
-/

namespace A315727.P14359230648641508390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311633 n

end

end A315727.P14359230648641508390

namespace A315727

/-- `2*A008706(n)-A311633(n)` -/
def P14359230648641508390.Spec : Prop :=
  ∀ n, P14359230648641508390.a n = A315727 n

end A315727

/-! ## A315727.P17333940380425733005

`2*A313683(n)-A008574(n)`
-/

namespace A315727.P17333940380425733005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313683 n - A008574 n

end

end A315727.P17333940380425733005

namespace A315727

/-- `2*A313683(n)-A008574(n)` -/
def P17333940380425733005.Spec : Prop :=
  ∀ n, P17333940380425733005.a n = A315727 n

theorem P17333940380425733005.correct : P17333940380425733005.Spec := by
  intro n
  simp only [A315727, Nat.add_sub_cancel, A315727.P17333940380425733005.a, A315727.P1759850529148023067.f1, A315727.P1759850529148023067.a, A008574, A008574.P1300280032690682112.a, A011862, A011862.P9485299441699197278.a, A313683, A313683.P3336220210830735973.a, A315669, A315669.P3322575996641601745.a, A004396, A004396.P17032557045289780609.a, A311816, A311816.P10667073270982388372.f1, A311816.P10667073270982388372.a, A314828, A314828.P12558538320936083635.a, A312932, A312932.P265636690513476108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315727

/-! ## A315727.P3711437396568967205

`A315631(n)+Δ[2*A011862(n)]`
-/

namespace A315727.P3711437396568967205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315631 n + (f1 (n + 1) - f1 n)

end

end A315727.P3711437396568967205

namespace A315727

/-- `A315631(n)+Δ[2*A011862(n)]` -/
def P3711437396568967205.Spec : Prop :=
  ∀ n, P3711437396568967205.a n = A315727 n

end A315727

/-! ## A315727.P12594490450427574684

`A103517(A313683(n)-(2*n+1))`
-/

namespace A315727.P12594490450427574684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313683 n - (2 * n + 1 : ℤ)).toNat

end

end A315727.P12594490450427574684

namespace A315727

/-- `A103517(A313683(n)-(2*n+1))` -/
def P12594490450427574684.Spec : Prop :=
  ∀ n, P12594490450427574684.a n = A315727 n

end A315727

/-! ## A315727.P16749970544749663723

`A004275(A313683(n)-A004273(n))`
-/

namespace A315727.P16749970544749663723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313683 n - A004273 n).toNat

end

end A315727.P16749970544749663723

namespace A315727

/-- `A004275(A313683(n)-A004273(n))` -/
def P16749970544749663723.Spec : Prop :=
  ∀ n, P16749970544749663723.a n = A315727 n

end A315727

/-! ## A315727.P13840359457718438294

`A004277(A313683(n)-A004277(n))`
-/

namespace A315727.P13840359457718438294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313683 n - A004277 n).toNat

end

end A315727.P13840359457718438294

namespace A315727

/-- `A004277(A313683(n)-A004277(n))` -/
def P13840359457718438294.Spec : Prop :=
  ∀ n, P13840359457718438294.a n = A315727 n

end A315727

/-! ## A315727.P14074236874169725172

`2*A313683(n)-A028310(A008586(n))`
-/

namespace A315727.P14074236874169725172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313683 n - A028310 (A008586 n).toNat

end

end A315727.P14074236874169725172

namespace A315727

/-- `2*A313683(n)-A028310(A008586(n))` -/
def P14074236874169725172.Spec : Prop :=
  ∀ n, P14074236874169725172.a n = A315727 n

end A315727

/-! ## A315727.P6278767573885923467

`A008458(n)+A008574(n)-A311633(n)`
-/

namespace A315727.P6278767573885923467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311633 n)

end

end A315727.P6278767573885923467

namespace A315727

/-- `A008458(n)+A008574(n)-A311633(n)` -/
def P6278767573885923467.Spec : Prop :=
  ∀ n, P6278767573885923467.a n = A315727 n

end A315727

/-! ## A315727.P8657580169171727905

`A004273(A313683(n)-n)-A004273(n)`
-/

namespace A315727.P8657580169171727905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313683 n - (n : ℤ)).toNat - A004273 n

end

end A315727.P8657580169171727905

namespace A315727

/-- `A004273(A313683(n)-n)-A004273(n)` -/
def P8657580169171727905.Spec : Prop :=
  ∀ n, P8657580169171727905.a n = A315727 n

end A315727

/-! ## A315727.P4836189906583947883

`lcm(A008592(n)-A311633(n), A000034(n))`
-/

namespace A315727.P4836189906583947883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A311633 n) (A000034 n)

end

end A315727.P4836189906583947883

namespace A315727

/-- `lcm(A008592(n)-A311633(n), A000034(n))` -/
def P4836189906583947883.Spec : Prop :=
  ∀ n, (P4836189906583947883.a n : ℤ) = A315727 n

end A315727

/-! ## A315727.P2432713389472853220

`A008574(n)+A005843(A313683(n)-A008574(n))`
-/

namespace A315727.P2432713389472853220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313683 n - A008574 n).toNat

end

end A315727.P2432713389472853220

namespace A315727

/-- `A008574(n)+A005843(A313683(n)-A008574(n))` -/
def P2432713389472853220.Spec : Prop :=
  ∀ n, P2432713389472853220.a n = A315727 n

end A315727

/-! ## A315727.P450966097870181977

`A005843(A313683(n))-A008574(n)`
-/

namespace A315727.P450966097870181977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313683 n).toNat - A008574 n

end

end A315727.P450966097870181977

namespace A315727

/-- `A005843(A313683(n))-A008574(n)` -/
def P450966097870181977.Spec : Prop :=
  ∀ n, P450966097870181977.a n = A315727 n

end A315727

/-! ## A315727.P8235781802438624830

`A004275(A313683(n))-A004275(2*n)`
-/

namespace A315727.P8235781802438624830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313683 n).toNat - A004275 (2 * n)

end

end A315727.P8235781802438624830

namespace A315727

/-- `A004275(A313683(n))-A004275(2*n)` -/
def P8235781802438624830.Spec : Prop :=
  ∀ n, P8235781802438624830.a n = A315727 n

end A315727

/-! ## A315727.P10125404688613949027

`A005843(A008706(n))-A311633(n)`
-/

namespace A315727.P10125404688613949027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311633 n

end

end A315727.P10125404688613949027

namespace A315727

/-- `A005843(A008706(n))-A311633(n)` -/
def P10125404688613949027.Spec : Prop :=
  ∀ n, P10125404688613949027.a n = A315727 n

end A315727

/-! ## A315727.P9892638723315242443

`A001221(A001749(n+1))*A004525(A315680(n))`
-/

namespace A315727.P9892638723315242443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001749 (n + 1)).toNat * A004525 (A315680 n).toNat

end

end A315727.P9892638723315242443

namespace A315727

/-- `A001221(A001749(n+1))*A004525(A315680(n))` -/
def P9892638723315242443.Spec : Prop :=
  ∀ n, P9892638723315242443.a n = A315727 n

end A315727

/-!
# A315728: Coordination sequence Gal.6.342.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315728, the canonical program `A315728.P10676011387142651465` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315728 has offset 0).

The definition of A315728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315728.P10676011387142651465

`abs(A008592(n)-A311626(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A315728

/-- `abs(A008592(n)-A311626(n))` -/
def P10676011387142651465.Spec : Prop :=
  ∀ n, P10676011387142651465.a n = A315728 n

theorem P10676011387142651465.correct : P10676011387142651465.Spec := by
  intro n
  simp only [A315728]

end A315728

/-! ## A315728.P12412805758920470382

`2*A008706(n)-A311626(n)`
-/

namespace A315728.P12412805758920470382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311626 n

end

end A315728.P12412805758920470382

namespace A315728

/-- `2*A008706(n)-A311626(n)` -/
def P12412805758920470382.Spec : Prop :=
  ∀ n, P12412805758920470382.a n = A315728 n

end A315728

/-! ## A315728.P8398366730784167240

`A008706(n)+(9*n)%A311523(n)`
-/

namespace A315728.P8398366730784167240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + Int.tmod (9 * n : ℤ) (A311523 n)

end

end A315728.P8398366730784167240

namespace A315728

/-- `A008706(n)+(9*n)%A311523(n)` -/
def P8398366730784167240.Spec : Prop :=
  ∀ n, P8398366730784167240.a n = A315728 n

end A315728

/-! ## A315728.P15294267016723767171

`A065502(A313475(n))-A004277(n)`
-/

namespace A315728.P15294267016723767171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A313475 n).toNat - A004277 n

end

end A315728.P15294267016723767171

namespace A315728

/-- `A065502(A313475(n))-A004277(n)` -/
def P15294267016723767171.Spec : Prop :=
  ∀ n, P15294267016723767171.a n = A315728 n

end A315728

/-! ## A315728.P10700325884410968425

`A008458(n)+A008574(n)-A311626(n)`
-/

namespace A315728.P10700325884410968425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311626 n)

end

end A315728.P10700325884410968425

namespace A315728

/-- `A008458(n)+A008574(n)-A311626(n)` -/
def P10700325884410968425.Spec : Prop :=
  ∀ n, P10700325884410968425.a n = A315728 n

end A315728

/-! ## A315728.P18437699847596513563

`2*A315743(n)-A008458(n)`
-/

namespace A315728.P18437699847596513563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315743 n - A008458 n

end

end A315728.P18437699847596513563

namespace A315728

/-- `2*A315743(n)-A008458(n)` -/
def P18437699847596513563.Spec : Prop :=
  ∀ n, P18437699847596513563.a n = A315728 n

end A315728

/-! ## A315728.P17364547083542526633

`A103517(A315743(n)-A016777(n))`
-/

namespace A315728.P17364547083542526633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315743 n - A016777 n).toNat

end

end A315728.P17364547083542526633

namespace A315728

/-- `A103517(A315743(n)-A016777(n))` -/
def P17364547083542526633.Spec : Prop :=
  ∀ n, P17364547083542526633.a n = A315728 n

end A315728

/-! ## A315728.P11658544466091308967

`A008458(n)-A005843(A008458(n)-A315743(n))`
-/

namespace A315728.P11658544466091308967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315743 n).toNat

end

end A315728.P11658544466091308967

namespace A315728

/-- `A008458(n)-A005843(A008458(n)-A315743(n))` -/
def P11658544466091308967.Spec : Prop :=
  ∀ n, P11658544466091308967.a n = A315728 n

end A315728

/-! ## A315728.P8600916497762715790

`A017281(n)-A004442(A311626(n))`
-/

namespace A315728.P8600916497762715790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A311626 n).toNat

end

end A315728.P8600916497762715790

namespace A315728

/-- `A017281(n)-A004442(A311626(n))` -/
def P8600916497762715790.Spec : Prop :=
  ∀ n, P8600916497762715790.a n = A315728 n

end A315728

/-! ## A315728.P14241298439005621348

`A005843(A008706(n))-A311626(n)`
-/

namespace A315728.P14241298439005621348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311626 n

end

end A315728.P14241298439005621348

namespace A315728

/-- `A005843(A008706(n))-A311626(n)` -/
def P14241298439005621348.Spec : Prop :=
  ∀ n, P14241298439005621348.a n = A315728 n

end A315728

/-! ## A315728.P9090520061902716535

`A005843(A315743(n))-A008458(n)`
-/

namespace A315728.P9090520061902716535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315743 n).toNat - A008458 n

end

end A315728.P9090520061902716535

namespace A315728

/-- `A005843(A315743(n))-A008458(n)` -/
def P9090520061902716535.Spec : Prop :=
  ∀ n, P9090520061902716535.a n = A315728 n

end A315728

/-! ## A315728.P17223441741888563942

`A005843(A315743(n))-(A008706(n)+n)`
-/

namespace A315728.P17223441741888563942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315743 n).toNat - (A008706 n + (n : ℤ))

end

end A315728.P17223441741888563942

namespace A315728

/-- `A005843(A315743(n))-(A008706(n)+n)` -/
def P17223441741888563942.Spec : Prop :=
  ∀ n, P17223441741888563942.a n = A315728 n

end A315728

/-!
# A315729: Coordination sequence Gal.5.134.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315729, there is no canonical definition to state claims against.
-/

/-! ## A315729.P2994064993518881760

`A301710(n)+A046978(n)`
-/

namespace A315729.P2994064993518881760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A046978 n

end

end A315729.P2994064993518881760

/-! ## A315729.P15464929514212547224

`A315173(n)+A201629(n)`
-/

namespace A315729.P15464929514212547224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n + A201629 n

end

end A315729.P15464929514212547224

/-! ## A315729.P4026246685792713978

`abs(A008592(n)-A311625(n))`
-/

namespace A315729.P4026246685792713978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311625 n|

end

end A315729.P4026246685792713978

/-! ## A315729.P438701246934811251

`A315447(n)+∑[A021913(n)]`
-/

namespace A315729.P438701246934811251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315729.P438701246934811251

/-! ## A315729.P5716397627406567238

`A315447(n)+Δ[A011848(n)]`
-/

namespace A315729.P5716397627406567238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n + (f1 (n + 1) - f1 n)

end

end A315729.P5716397627406567238

/-! ## A315729.P9420391956701260074

`A315671(n)+Δ[A011861(n)]`
-/

namespace A315729.P9420391956701260074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n + (f1 (n + 1) - f1 n)

end

end A315729.P9420391956701260074

/-! ## A315729.P1712199559902425491

`A310530(n)+2*A046978(n)`
-/

namespace A315729.P1712199559902425491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n + 2 * A046978 n

end

end A315729.P1712199559902425491

/-! ## A315729.P11818292648225699660

`2*A008706(n)-A311625(n)`
-/

namespace A315729.P11818292648225699660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311625 n

end

end A315729.P11818292648225699660

/-! ## A315729.P15186729000734804029

`2*A313685(n)-A008574(n)`
-/

namespace A315729.P15186729000734804029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313685 n - A008574 n

end

end A315729.P15186729000734804029

/-! ## A315729.P6283133216854638620

`2*A315745(n)-A008458(n)`
-/

namespace A315729.P6283133216854638620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315745 n - A008458 n

end

end A315729.P6283133216854638620

/-!
# A315730: Coordination sequence Gal.6.620.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315730, the canonical program `A315730.P12339410108613406190` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315730 has offset 0).

The definition of A315730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315730.P13581622679927909655

`abs(A008592(n)-A311613(n))`
-/

namespace A315730.P13581622679927909655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311613 n|

end

end A315730.P13581622679927909655

namespace A315730

/-- `abs(A008592(n)-A311613(n))` -/
def P13581622679927909655.Spec : Prop :=
  ∀ n, P13581622679927909655.a n = A315730 n

end A315730

/-! ## A315730.P12339410108613406190

`A315682(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A315730

/-- `A315682(n)+Δ[A011864(n)]` -/
def P12339410108613406190.Spec : Prop :=
  ∀ n, P12339410108613406190.a n = A315730 n

theorem P12339410108613406190.correct : P12339410108613406190.Spec := by
  intro n
  simp only [A315730]

end A315730

/-! ## A315730.P3893246488816381323

`2*A008706(n)-A311613(n)`
-/

namespace A315730.P3893246488816381323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311613 n

end

end A315730.P3893246488816381323

namespace A315730

/-- `2*A008706(n)-A311613(n)` -/
def P3893246488816381323.Spec : Prop :=
  ∀ n, P3893246488816381323.a n = A315730 n

end A315730

/-! ## A315730.P17852658482325316980

`2*A313689(n)-A008574(n)`
-/

namespace A315730.P17852658482325316980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313689 n - A008574 n

end

end A315730.P17852658482325316980

namespace A315730

/-- `2*A313689(n)-A008574(n)` -/
def P17852658482325316980.Spec : Prop :=
  ∀ n, P17852658482325316980.a n = A315730 n

end A315730

/-! ## A315730.P1751013321831083889

`A103517(A313689(n)-Δ[n²])`
-/

namespace A315730.P1751013321831083889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313689 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A315730.P1751013321831083889

namespace A315730

/-- `A103517(A313689(n)-Δ[n²])` -/
def P1751013321831083889.Spec : Prop :=
  ∀ n, P1751013321831083889.a n = A315730 n

end A315730

/-! ## A315730.P15915536200480289621

`A315643(n)+Δ[2*A011864(n)]`
-/

namespace A315730.P15915536200480289621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315643 n + (f1 (n + 1) - f1 n)

end

end A315730.P15915536200480289621

namespace A315730

/-- `A315643(n)+Δ[2*A011864(n)]` -/
def P15915536200480289621.Spec : Prop :=
  ∀ n, P15915536200480289621.a n = A315730 n

theorem P15915536200480289621.correct : P15915536200480289621.Spec := by
  intro n
  simp only [A315730, Nat.add_sub_cancel, A315730.P15915536200480289621.f1, A315730.P15915536200480289621.a, A315730.P12339410108613406190.f1, A315730.P12339410108613406190.a, A011864, A011864.P3547417513882699266.a, A315643, A315643.P3183973614738207625.a, A315682, A315682.P15234509743992815969.f1, A315682.P15234509743992815969.a, A004278, A004278.P6535296897428680900.a, A017089, A017089.P13709942329986306669.a, A313899, A313899.P8562321666356515905.f1, A313899.P8562321666356515905.a, A313788, A313788.P6713366544553221303.a, A313696, A313696.P9738400648610204729.f1, A313696.P9738400648610204729.a, A313738, A313738.P18419223100438122022.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315730

/-! ## A315730.P716195461333983761

`A004275(A313689(n)-A004273(n))`
-/

namespace A315730.P716195461333983761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313689 n - A004273 n).toNat

end

end A315730.P716195461333983761

namespace A315730

/-- `A004275(A313689(n)-A004273(n))` -/
def P716195461333983761.Spec : Prop :=
  ∀ n, P716195461333983761.a n = A315730 n

end A315730

/-! ## A315730.P6184733792816152163

`A008458(n)+A008574(n)-A311613(n)`
-/

namespace A315730.P6184733792816152163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311613 n)

end

end A315730.P6184733792816152163

namespace A315730

/-- `A008458(n)+A008574(n)-A311613(n)` -/
def P6184733792816152163.Spec : Prop :=
  ∀ n, P6184733792816152163.a n = A315730 n

end A315730

/-! ## A315730.P343789054839155371

`A004273(A313689(n)-n)-A004273(n)`
-/

namespace A315730.P343789054839155371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313689 n - (n : ℤ)).toNat - A004273 n

end

end A315730.P343789054839155371

namespace A315730

/-- `A004273(A313689(n)-n)-A004273(n)` -/
def P343789054839155371.Spec : Prop :=
  ∀ n, P343789054839155371.a n = A315730 n

end A315730

/-! ## A315730.P826089194608847934

`(A008592(n)-A311613(n))^A014963(4*n+2)`
-/

namespace A315730.P826089194608847934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A311613 n : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A315730.P826089194608847934

namespace A315730

/-- `(A008592(n)-A311613(n))^A014963(4*n+2)` -/
def P826089194608847934.Spec : Prop :=
  ∀ n, P826089194608847934.a n = (A315730 n : ℚ)

end A315730

/-! ## A315730.P3644222478899062943

`A008574(n)+A005843(A313689(n)-A008574(n))`
-/

namespace A315730.P3644222478899062943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313689 n - A008574 n).toNat

end

end A315730.P3644222478899062943

namespace A315730

/-- `A008574(n)+A005843(A313689(n)-A008574(n))` -/
def P3644222478899062943.Spec : Prop :=
  ∀ n, P3644222478899062943.a n = A315730 n

end A315730

/-! ## A315730.P35490236245203372

`A315667(n)+A004525(A008458(n)-A315667(n))`
-/

namespace A315730.P35490236245203372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315667 n + A004525 (A008458 n - A315667 n).toNat

end

end A315730.P35490236245203372

namespace A315730

/-- `A315667(n)+A004525(A008458(n)-A315667(n))` -/
def P35490236245203372.Spec : Prop :=
  ∀ n, P35490236245203372.a n = A315730 n

end A315730

/-! ## A315730.P10609778150585573167

`A005843(A313689(n))-A008574(n)`
-/

namespace A315730.P10609778150585573167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313689 n).toNat - A008574 n

end

end A315730.P10609778150585573167

namespace A315730

/-- `A005843(A313689(n))-A008574(n)` -/
def P10609778150585573167.Spec : Prop :=
  ∀ n, P10609778150585573167.a n = A315730 n

end A315730

/-! ## A315730.P3766391307252986171

`A004275(A313689(n))-A004275(2*n)`
-/

namespace A315730.P3766391307252986171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313689 n).toNat - A004275 (2 * n)

end

end A315730.P3766391307252986171

namespace A315730

/-- `A004275(A313689(n))-A004275(2*n)` -/
def P3766391307252986171.Spec : Prop :=
  ∀ n, P3766391307252986171.a n = A315730 n

end A315730

/-! ## A315730.P9694849035369049233

`A005843(A008706(n))-A311613(n)`
-/

namespace A315730.P9694849035369049233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311613 n

end

end A315730.P9694849035369049233

namespace A315730

/-- `A005843(A008706(n))-A311613(n)` -/
def P9694849035369049233.Spec : Prop :=
  ∀ n, P9694849035369049233.a n = A315730 n

end A315730

/-!
# A315731: Coordination sequence Gal.5.301.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315731, the canonical program `A315731.P13330025247901741464` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315731 has offset 0).

The definition of A315731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315731.P11382841257069175615

`abs(A008592(n)-A311612(n))`
-/

namespace A315731.P11382841257069175615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311612 n|

end

end A315731.P11382841257069175615

namespace A315731

/-- `abs(A008592(n)-A311612(n))` -/
def P11382841257069175615.Spec : Prop :=
  ∀ n, P11382841257069175615.a n = A315731 n

end A315731

/-! ## A315731.P1054905655431929783

`2*A008706(n)-A311612(n)`
-/

namespace A315731.P1054905655431929783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311612 n

end

end A315731.P1054905655431929783

namespace A315731

/-- `2*A008706(n)-A311612(n)` -/
def P1054905655431929783.Spec : Prop :=
  ∀ n, P1054905655431929783.a n = A315731 n

end A315731

/-! ## A315731.P13330025247901741464

`A315304(n)+A008612(A016813(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315731

/-- `A315304(n)+A008612(A016813(n))` -/
def P13330025247901741464.Spec : Prop :=
  ∀ n, P13330025247901741464.a n = A315731 n

theorem P13330025247901741464.correct : P13330025247901741464.Spec := by
  intro n
  simp only [A315731]

end A315731

/-! ## A315731.P3956051461721344791

`A313683(n)+A004396(A004396(2*n))`
-/

namespace A315731.P3956051461721344791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A004396 (A004396 (2 * n)).toNat

end

end A315731.P3956051461721344791

namespace A315731

/-- `A313683(n)+A004396(A004396(2*n))` -/
def P3956051461721344791.Spec : Prop :=
  ∀ n, P3956051461721344791.a n = A315731 n

end A315731

/-! ## A315731.P1603687750491547124

`A008458(n)+A008574(n)-A311612(n)`
-/

namespace A315731.P1603687750491547124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311612 n)

end

end A315731.P1603687750491547124

namespace A315731

/-- `A008458(n)+A008574(n)-A311612(n)` -/
def P1603687750491547124.Spec : Prop :=
  ∀ n, P1603687750491547124.a n = A315731 n

end A315731

/-! ## A315731.P9234103505157326801

`2*A315748(n)-A008458(n)`
-/

namespace A315731.P9234103505157326801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315748 n - A008458 n

end

end A315731.P9234103505157326801

namespace A315731

/-- `2*A315748(n)-A008458(n)` -/
def P9234103505157326801.Spec : Prop :=
  ∀ n, P9234103505157326801.a n = A315731 n

end A315731

/-! ## A315731.P15388728105509302983

`A103517(A315748(n)-A016777(n))`
-/

namespace A315731.P15388728105509302983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315748 n - A016777 n).toNat

end

end A315731.P15388728105509302983

namespace A315731

/-- `A103517(A315748(n)-A016777(n))` -/
def P15388728105509302983.Spec : Prop :=
  ∀ n, P15388728105509302983.a n = A315731 n

end A315731

/-! ## A315731.P8603119938778948526

`A103517(A315748(n)%A016777(n))`
-/

namespace A315731.P8603119938778948526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315748 n) (A016777 n)).toNat

end

end A315731.P8603119938778948526

namespace A315731

/-- `A103517(A315748(n)%A016777(n))` -/
def P8603119938778948526.Spec : Prop :=
  ∀ n, P8603119938778948526.a n = A315731 n

end A315731

/-! ## A315731.P14719863738850174944

`A008458(n)-A005843(A008458(n)-A315748(n))`
-/

namespace A315731.P14719863738850174944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315748 n).toNat

end

end A315731.P14719863738850174944

namespace A315731

/-- `A008458(n)-A005843(A008458(n)-A315748(n))` -/
def P14719863738850174944.Spec : Prop :=
  ∀ n, P14719863738850174944.a n = A315731 n

end A315731

/-! ## A315731.P11991972027483992714

`A005843(A008706(n))-A311612(n)`
-/

namespace A315731.P11991972027483992714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311612 n

end

end A315731.P11991972027483992714

namespace A315731

/-- `A005843(A008706(n))-A311612(n)` -/
def P11991972027483992714.Spec : Prop :=
  ∀ n, P11991972027483992714.a n = A315731 n

end A315731

/-! ## A315731.P15906756998573204213

`A005843(A315748(n))-A008458(n)`
-/

namespace A315731.P15906756998573204213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315748 n).toNat - A008458 n

end

end A315731.P15906756998573204213

namespace A315731

/-- `A005843(A315748(n))-A008458(n)` -/
def P15906756998573204213.Spec : Prop :=
  ∀ n, P15906756998573204213.a n = A315731 n

end A315731

/-! ## A315731.P15156711526479197056

`A005408(A315748(n))-A271114(n)`
-/

namespace A315731.P15156711526479197056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A315748 n).toNat - A271114 n

end

end A315731.P15156711526479197056

namespace A315731

/-- `A005408(A315748(n))-A271114(n)` -/
def P15156711526479197056.Spec : Prop :=
  ∀ n, P15156711526479197056.a n = A315731 n

end A315731

/-! ## A315731.P7734893945052533459

`A004275(A315748(n))-A004275(3*n)`
-/

namespace A315731.P7734893945052533459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A315748 n).toNat - A004275 (3 * n)

end

end A315731.P7734893945052533459

namespace A315731

/-- `A004275(A315748(n))-A004275(3*n)` -/
def P7734893945052533459.Spec : Prop :=
  ∀ n, P7734893945052533459.a n = A315731 n

end A315731

/-! ## A315731.P8704267050602169777

`A004396(2*A313683(n))-A004396(n)`
-/

namespace A315731.P8704267050602169777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313683 n).toNat - A004396 n

end

end A315731.P8704267050602169777

namespace A315731

/-- `A004396(2*A313683(n))-A004396(n)` -/
def P8704267050602169777.Spec : Prop :=
  ∀ n, P8704267050602169777.a n = A315731 n

end A315731

/-! ## A315731.P10490359031407543042

`A315510(n)+A004396(n-A004396(n))`
-/

namespace A315731.P10490359031407543042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315510 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315731.P10490359031407543042

namespace A315731

/-- `A315510(n)+A004396(n-A004396(n))` -/
def P10490359031407543042.Spec : Prop :=
  ∀ n, P10490359031407543042.a n = A315731 n

end A315731

/-!
# A315732: Coordination sequence Gal.6.640.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315732, the canonical program `A315732.P13634539582885315922` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315732 has offset 0).

The definition of A315732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315732.P990927965916978748

`abs(A008592(n)-A311601(n))`
-/

namespace A315732.P990927965916978748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311601 n|

end

end A315732.P990927965916978748

namespace A315732

/-- `abs(A008592(n)-A311601(n))` -/
def P990927965916978748.Spec : Prop :=
  ∀ n, P990927965916978748.a n = A315732 n

end A315732

/-! ## A315732.P2157692945064350730

`2*A008706(n)-A311601(n)`
-/

namespace A315732.P2157692945064350730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311601 n

end

end A315732.P2157692945064350730

namespace A315732

/-- `2*A008706(n)-A311601(n)` -/
def P2157692945064350730.Spec : Prop :=
  ∀ n, P2157692945064350730.a n = A315732 n

end A315732

/-! ## A315732.P13634539582885315922

`2*A313692(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315732

/-- `2*A313692(n)-A008574(n)` -/
def P13634539582885315922.Spec : Prop :=
  ∀ n, P13634539582885315922.a n = A315732 n

theorem P13634539582885315922.correct : P13634539582885315922.Spec := by
  intro n
  simp only [A315732]

end A315732

/-! ## A315732.P9002296054292194335

`A103517(A313692(n)-(2*n+1))`
-/

namespace A315732.P9002296054292194335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313692 n - (2 * n + 1 : ℤ)).toNat

end

end A315732.P9002296054292194335

namespace A315732

/-- `A103517(A313692(n)-(2*n+1))` -/
def P9002296054292194335.Spec : Prop :=
  ∀ n, P9002296054292194335.a n = A315732 n

end A315732

/-! ## A315732.P9019834236177190808

`A004275(A313692(n)-A004273(n))`
-/

namespace A315732.P9019834236177190808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313692 n - A004273 n).toNat

end

end A315732.P9019834236177190808

namespace A315732

/-- `A004275(A313692(n)-A004273(n))` -/
def P9019834236177190808.Spec : Prop :=
  ∀ n, P9019834236177190808.a n = A315732 n

end A315732

/-! ## A315732.P18042013351987962649

`A008458(n)+A008574(n)-A311601(n)`
-/

namespace A315732.P18042013351987962649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311601 n)

end

end A315732.P18042013351987962649

namespace A315732

/-- `A008458(n)+A008574(n)-A311601(n)` -/
def P18042013351987962649.Spec : Prop :=
  ∀ n, P18042013351987962649.a n = A315732 n

end A315732

/-! ## A315732.P10528901670940646737

`A004273(A313692(n)-n)-A004273(n)`
-/

namespace A315732.P10528901670940646737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313692 n - (n : ℤ)).toNat - A004273 n

end

end A315732.P10528901670940646737

namespace A315732

/-- `A004273(A313692(n)-n)-A004273(n)` -/
def P10528901670940646737.Spec : Prop :=
  ∀ n, P10528901670940646737.a n = A315732 n

end A315732

/-! ## A315732.P2119771384178905237

`A008574(n)+A005843(A313692(n)-A008574(n))`
-/

namespace A315732.P2119771384178905237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313692 n - A008574 n).toNat

end

end A315732.P2119771384178905237

namespace A315732

/-- `A008574(n)+A005843(A313692(n)-A008574(n))` -/
def P2119771384178905237.Spec : Prop :=
  ∀ n, P2119771384178905237.a n = A315732 n

end A315732

/-! ## A315732.P15360499888998734206

`A311601(n)+A005843(A008706(n)-A311601(n))`
-/

namespace A315732.P15360499888998734206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n + A005843 (A008706 n - A311601 n).toNat

end

end A315732.P15360499888998734206

namespace A315732

/-- `A311601(n)+A005843(A008706(n)-A311601(n))` -/
def P15360499888998734206.Spec : Prop :=
  ∀ n, P15360499888998734206.a n = A315732 n

end A315732

/-! ## A315732.P10496531964753467791

`A330025(A330025(n)+n)+A314220(n)`
-/

namespace A315732.P10496531964753467791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A314220 n

end

end A315732.P10496531964753467791

namespace A315732

/-- `A330025(A330025(n)+n)+A314220(n)` -/
def P10496531964753467791.Spec : Prop :=
  ∀ n, P10496531964753467791.a n = A315732 n

end A315732

/-! ## A315732.P3911804699865518757

`2*A315749(n)-A008458(n)`
-/

namespace A315732.P3911804699865518757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315749 n - A008458 n

end

end A315732.P3911804699865518757

namespace A315732

/-- `2*A315749(n)-A008458(n)` -/
def P3911804699865518757.Spec : Prop :=
  ∀ n, P3911804699865518757.a n = A315732 n

end A315732

/-! ## A315732.P7640601439756946466

`A314263(n)+A128834(n)`
-/

namespace A315732.P7640601439756946466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314263 n + A128834 n

end

end A315732.P7640601439756946466

namespace A315732

/-- `A314263(n)+A128834(n)` -/
def P7640601439756946466.Spec : Prop :=
  ∀ n, P7640601439756946466.a n = A315732 n

theorem P7640601439756946466.correct : P7640601439756946466.Spec := by
  intro n
  simp only [A315732, Nat.add_sub_cancel, A315732.P7640601439756946466.a, A315732.P13634539582885315922.a, A008574, A008574.P1300280032690682112.a, A128834, A128834.P16779687439637953687.a, A313692, A313692.P7381687034045997065.a, A314263, A314263.P7199020950879472314.a, A010892, A010892.P14408744864468695543.a, A047448, A047448.P12851231882716690150.a, A312892, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315732

/-! ## A315732.P13422420281221652644

`A314263(n)-A010892(n+2)`
-/

namespace A315732.P13422420281221652644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314263 n - A010892 (n + 2)

end

end A315732.P13422420281221652644

namespace A315732

/-- `A314263(n)-A010892(n+2)` -/
def P13422420281221652644.Spec : Prop :=
  ∀ n, P13422420281221652644.a n = A315732 n

end A315732

/-! ## A315732.P17269986329039781680

`A005843(A313692(n))-A008574(n)`
-/

namespace A315732.P17269986329039781680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313692 n).toNat - A008574 n

end

end A315732.P17269986329039781680

namespace A315732

/-- `A005843(A313692(n))-A008574(n)` -/
def P17269986329039781680.Spec : Prop :=
  ∀ n, P17269986329039781680.a n = A315732 n

end A315732

/-! ## A315732.P16031625725500129885

`A004275(A313692(n))-A004275(2*n)`
-/

namespace A315732.P16031625725500129885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313692 n).toNat - A004275 (2 * n)

end

end A315732.P16031625725500129885

namespace A315732

/-- `A004275(A313692(n))-A004275(2*n)` -/
def P16031625725500129885.Spec : Prop :=
  ∀ n, P16031625725500129885.a n = A315732 n

end A315732

/-! ## A315732.P4608689080320008616

`A005843(A008706(n))-A311601(n)`
-/

namespace A315732.P4608689080320008616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311601 n

end

end A315732.P4608689080320008616

namespace A315732

/-- `A005843(A008706(n))-A311601(n)` -/
def P4608689080320008616.Spec : Prop :=
  ∀ n, P4608689080320008616.a n = A315732 n

end A315732

/-!
# A315733: Coordination sequence Gal.6.642.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315733, the canonical program `A315733.P14994170820374685614` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315733 has offset 0).

The definition of A315733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315733.P14994170820374685614

`abs(A008592(n)-A311593(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315733

/-- `abs(A008592(n)-A311593(n))` -/
def P14994170820374685614.Spec : Prop :=
  ∀ n, P14994170820374685614.a n = A315733 n

theorem P14994170820374685614.correct : P14994170820374685614.Spec := by
  intro n
  simp only [A315733]

end A315733

/-! ## A315733.P10158928006514556189

`2*A008706(n)-A311593(n)`
-/

namespace A315733.P10158928006514556189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311593 n

end

end A315733.P10158928006514556189

namespace A315733

/-- `2*A008706(n)-A311593(n)` -/
def P10158928006514556189.Spec : Prop :=
  ∀ n, P10158928006514556189.a n = A315733 n

end A315733

/-! ## A315733.P5595287315496541063

`2*A315454(n)-A315188(n)`
-/

namespace A315733.P5595287315496541063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315454 n - A315188 n

end

end A315733.P5595287315496541063

namespace A315733

/-- `2*A315454(n)-A315188(n)` -/
def P5595287315496541063.Spec : Prop :=
  ∀ n, P5595287315496541063.a n = A315733 n

end A315733

/-! ## A315733.P16448599519780887741

`A315645(n)+Δ[2*A011864(n)]`
-/

namespace A315733.P16448599519780887741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315645 n + (f1 (n + 1) - f1 n)

end

end A315733.P16448599519780887741

namespace A315733

/-- `A315645(n)+Δ[2*A011864(n)]` -/
def P16448599519780887741.Spec : Prop :=
  ∀ n, P16448599519780887741.a n = A315733 n

end A315733

/-! ## A315733.P6628008185305210807

`A008458(n)+A008574(n)-A311593(n)`
-/

namespace A315733.P6628008185305210807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311593 n)

end

end A315733.P6628008185305210807

namespace A315733

/-- `A008458(n)+A008574(n)-A311593(n)` -/
def P6628008185305210807.Spec : Prop :=
  ∀ n, P6628008185305210807.a n = A315733 n

end A315733

/-! ## A315733.P4076363185432062457

`A314264(n)+A128834(n)`
-/

namespace A315733.P4076363185432062457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314264 n + A128834 n

end

end A315733.P4076363185432062457

namespace A315733

/-- `A314264(n)+A128834(n)` -/
def P4076363185432062457.Spec : Prop :=
  ∀ n, P4076363185432062457.a n = A315733 n

end A315733

/-! ## A315733.P7411230004055622801

`A314264(n)-A010892(n+2)`
-/

namespace A315733.P7411230004055622801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314264 n - A010892 (n + 2)

end

end A315733.P7411230004055622801

namespace A315733

/-- `A314264(n)-A010892(n+2)` -/
def P7411230004055622801.Spec : Prop :=
  ∀ n, P7411230004055622801.a n = A315733 n

end A315733

/-! ## A315733.P17244886433995410115

`2*A315750(n)-A008458(n)`
-/

namespace A315733.P17244886433995410115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315750 n - A008458 n

end

end A315733.P17244886433995410115

namespace A315733

/-- `2*A315750(n)-A008458(n)` -/
def P17244886433995410115.Spec : Prop :=
  ∀ n, P17244886433995410115.a n = A315733 n

end A315733

/-! ## A315733.P964719738866849422

`A008458(n)-A005843(A008458(n)-A315750(n))`
-/

namespace A315733.P964719738866849422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315750 n).toNat

end

end A315733.P964719738866849422

namespace A315733

/-- `A008458(n)-A005843(A008458(n)-A315750(n))` -/
def P964719738866849422.Spec : Prop :=
  ∀ n, P964719738866849422.a n = A315733 n

end A315733

/-! ## A315733.P3247117705312097659

`A315686(n)+Δ[A011864(n)]`
-/

namespace A315733.P3247117705312097659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315686 n + (f1 (n + 1) - f1 n)

end

end A315733.P3247117705312097659

namespace A315733

/-- `A315686(n)+Δ[A011864(n)]` -/
def P3247117705312097659.Spec : Prop :=
  ∀ n, P3247117705312097659.a n = A315733 n

end A315733

/-! ## A315733.P15774090905117132898

`A005843(A008706(n))-A311593(n)`
-/

namespace A315733.P15774090905117132898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311593 n

end

end A315733.P15774090905117132898

namespace A315733

/-- `A005843(A008706(n))-A311593(n)` -/
def P15774090905117132898.Spec : Prop :=
  ∀ n, P15774090905117132898.a n = A315733 n

end A315733

/-! ## A315733.P1061891729966637741

`A005843(A315750(n))-A008458(n)`
-/

namespace A315733.P1061891729966637741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315750 n).toNat - A008458 n

end

end A315733.P1061891729966637741

namespace A315733

/-- `A005843(A315750(n))-A008458(n)` -/
def P1061891729966637741.Spec : Prop :=
  ∀ n, P1061891729966637741.a n = A315733 n

end A315733

/-!
# A315734: Coordination sequence Gal.4.136.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315734, the canonical program `A315734.P13720608880116082785` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315734 has offset 0).

The definition of A315734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315734.P13720608880116082785

`A004275(A080734(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315734

/-- `A004275(A080734(n+1))` -/
def P13720608880116082785.Spec : Prop :=
  ∀ n, P13720608880116082785.a n = A315734 n

theorem P13720608880116082785.correct : P13720608880116082785.Spec := by
  intro n
  simp only [A315734]

end A315734

/-! ## A315734.P2538120503202476003

`abs(A008592(n)-A311586(n))`
-/

namespace A315734.P2538120503202476003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311586 n|

end

end A315734.P2538120503202476003

namespace A315734

/-- `abs(A008592(n)-A311586(n))` -/
def P2538120503202476003.Spec : Prop :=
  ∀ n, P2538120503202476003.a n = A315734 n

end A315734

/-! ## A315734.P4126133564160680831

`A315676(n)+Δ[A011860(n)]`
-/

namespace A315734.P4126133564160680831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315676 n + (f1 (n + 1) - f1 n)

end

end A315734.P4126133564160680831

namespace A315734

/-- `A315676(n)+Δ[A011860(n)]` -/
def P4126133564160680831.Spec : Prop :=
  ∀ n, P4126133564160680831.a n = A315734 n

end A315734

/-! ## A315734.P2983289938940862341

`2*A313694(n)-A008574(n)`
-/

namespace A315734.P2983289938940862341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313694 n - A008574 n

end

end A315734.P2983289938940862341

namespace A315734

/-- `2*A313694(n)-A008574(n)` -/
def P2983289938940862341.Spec : Prop :=
  ∀ n, P2983289938940862341.a n = A315734 n

end A315734

/-! ## A315734.P15584500404233790522

`A315634(n)+Δ[2*A011860(n)]`
-/

namespace A315734.P15584500404233790522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315634 n + (f1 (n + 1) - f1 n)

end

end A315734.P15584500404233790522

namespace A315734

/-- `A315634(n)+Δ[2*A011860(n)]` -/
def P15584500404233790522.Spec : Prop :=
  ∀ n, P15584500404233790522.a n = A315734 n

end A315734

/-! ## A315734.P1701752780782440987

`A022144(n)-2*A047588(n+1)`
-/

namespace A315734.P1701752780782440987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047588 (n + 1)

end

end A315734.P1701752780782440987

namespace A315734

/-- `A022144(n)-2*A047588(n+1)` -/
def P1701752780782440987.Spec : Prop :=
  ∀ n, P1701752780782440987.a n = A315734 n

end A315734

/-! ## A315734.P6387250734461667690

`A008458(n)-A060464(n+1)+n`
-/

namespace A315734.P6387250734461667690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A060464 (n + 1) + (n : ℤ)

end

end A315734.P6387250734461667690

namespace A315734

/-- `A008458(n)-A060464(n+1)+n` -/
def P6387250734461667690.Spec : Prop :=
  ∀ n, P6387250734461667690.a n = A315734 n

end A315734

/-! ## A315734.P11701650018324329017

`A022144(n)-(A060464(n+1)+n)`
-/

namespace A315734.P11701650018324329017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A060464 (n + 1) + (n : ℤ))

end

end A315734.P11701650018324329017

namespace A315734

/-- `A022144(n)-(A060464(n+1)+n)` -/
def P11701650018324329017.Spec : Prop :=
  ∀ n, P11701650018324329017.a n = A315734 n

end A315734

/-! ## A315734.P12991123813837876758

`A004275(2*n+1)+2*A057357(2*n+1)`
-/

namespace A315734.P12991123813837876758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + 2 * A057357 (2 * n + 1)

end

end A315734.P12991123813837876758

namespace A315734

/-- `A004275(2*n+1)+2*A057357(2*n+1)` -/
def P12991123813837876758.Spec : Prop :=
  ∀ n, P12991123813837876758.a n = A315734 n

end A315734

/-! ## A315734.P4389064223507946164

`A004275(A057359(A016825(n)))`
-/

namespace A315734.P4389064223507946164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A057359 (A016825 n).toNat).toNat

end

end A315734.P4389064223507946164

namespace A315734

/-- `A004275(A057359(A016825(n)))` -/
def P4389064223507946164.Spec : Prop :=
  ∀ n, P4389064223507946164.a n = A315734 n

end A315734

/-! ## A315734.P2883070088394742234

`A004277(A313694(n)-A004277(n))`
-/

namespace A315734.P2883070088394742234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313694 n - A004277 n).toNat

end

end A315734.P2883070088394742234

namespace A315734

/-- `A004277(A313694(n)-A004277(n))` -/
def P2883070088394742234.Spec : Prop :=
  ∀ n, P2883070088394742234.a n = A315734 n

end A315734

/-! ## A315734.P15217906464723340264

`A022144(n)-A005843(A047588(n+1))`
-/

namespace A315734.P15217906464723340264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A005843 (A047588 (n + 1)).toNat

end

end A315734.P15217906464723340264

namespace A315734

/-- `A022144(n)-A005843(A047588(n+1))` -/
def P15217906464723340264.Spec : Prop :=
  ∀ n, P15217906464723340264.a n = A315734 n

end A315734

/-! ## A315734.P14042613781134032717

`2*A313694(n)-A028310(A008586(n))`
-/

namespace A315734.P14042613781134032717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313694 n - A028310 (A008586 n).toNat

end

end A315734.P14042613781134032717

namespace A315734

/-- `2*A313694(n)-A028310(A008586(n))` -/
def P14042613781134032717.Spec : Prop :=
  ∀ n, P14042613781134032717.a n = A315734 n

end A315734

/-! ## A315734.P14103759697439001392

`A008458(n)+A008574(n)-A311586(n)`
-/

namespace A315734.P14103759697439001392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311586 n)

end

end A315734.P14103759697439001392

namespace A315734

/-- `A008458(n)+A008574(n)-A311586(n)` -/
def P14103759697439001392.Spec : Prop :=
  ∀ n, P14103759697439001392.a n = A315734 n

end A315734

/-! ## A315734.P14134035310234512435

`A004273(A313694(n)-n)-A004273(n)`
-/

namespace A315734.P14134035310234512435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313694 n - (n : ℤ)).toNat - A004273 n

end

end A315734.P14134035310234512435

namespace A315734

/-- `A004273(A313694(n)-n)-A004273(n)` -/
def P14134035310234512435.Spec : Prop :=
  ∀ n, P14134035310234512435.a n = A315734 n

end A315734

/-! ## A315734.P9177990381363490861

`A008574(2*n)-A005843(A047588(n+1))`
-/

namespace A315734.P9177990381363490861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A005843 (A047588 (n + 1)).toNat

end

end A315734.P9177990381363490861

namespace A315734

/-- `A008574(2*n)-A005843(A047588(n+1))` -/
def P9177990381363490861.Spec : Prop :=
  ∀ n, P9177990381363490861.a n = A315734 n

end A315734

/-! ## A315734.P2862123478000561462

`A313836(n)-A194225(n+1)+n`
-/

namespace A315734.P2862123478000561462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n - A194225 (n + 1) + (n : ℤ)

end

end A315734.P2862123478000561462

namespace A315734

/-- `A313836(n)-A194225(n+1)+n` -/
def P2862123478000561462.Spec : Prop :=
  ∀ n, P2862123478000561462.a n = A315734 n

end A315734

/-! ## A315734.P16469730945331869506

`A047588(A008458(n)+1)-A047588(n+1)`
-/

namespace A315734.P16469730945331869506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A008458 n + 1).toNat - A047588 (n + 1)

end

end A315734.P16469730945331869506

namespace A315734

/-- `A047588(A008458(n)+1)-A047588(n+1)` -/
def P16469730945331869506.Spec : Prop :=
  ∀ n, P16469730945331869506.a n = A315734 n

end A315734

/-! ## A315734.P5116907542074752412

`A310411(2*n)-4*n`
-/

namespace A315734.P5116907542074752412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310411 (2 * n) - (4 * n : ℤ)

end

end A315734.P5116907542074752412

namespace A315734

/-- `A310411(2*n)-4*n` -/
def P5116907542074752412.Spec : Prop :=
  ∀ n, P5116907542074752412.a n = A315734 n

end A315734

/-! ## A315734.P15260429105258023138

`2*A008574(2*n)-A315309(2*n)`
-/

namespace A315734.P15260429105258023138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315309 (2 * n)

end

end A315734.P15260429105258023138

namespace A315734

/-- `2*A008574(2*n)-A315309(2*n)` -/
def P15260429105258023138.Spec : Prop :=
  ∀ n, P15260429105258023138.a n = A315734 n

end A315734

/-!
# A315735: Coordination sequence Gal.6.159.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315735, the canonical program `A315735.P11355329765123142326` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315735 has offset 0).

The definition of A315735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315735.P11355329765123142326

`abs(A008592(n)-A311554(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A315735

/-- `abs(A008592(n)-A311554(n))` -/
def P11355329765123142326.Spec : Prop :=
  ∀ n, P11355329765123142326.a n = A315735 n

theorem P11355329765123142326.correct : P11355329765123142326.Spec := by
  intro n
  simp only [A315735]

end A315735

/-! ## A315735.P15764783472697807682

`2*A008706(n)-A311554(n)`
-/

namespace A315735.P15764783472697807682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311554 n

end

end A315735.P15764783472697807682

namespace A315735

/-- `2*A008706(n)-A311554(n)` -/
def P15764783472697807682.Spec : Prop :=
  ∀ n, P15764783472697807682.a n = A315735 n

end A315735

/-! ## A315735.P18007760499923512091

`2*A313717(n)-A311426(n)`
-/

namespace A315735.P18007760499923512091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313717 n - A311426 n

end

end A315735.P18007760499923512091

namespace A315735

/-- `2*A313717(n)-A311426(n)` -/
def P18007760499923512091.Spec : Prop :=
  ∀ n, P18007760499923512091.a n = A315735 n

end A315735

/-! ## A315735.P303933098194025441

`A315666(n)+A002264(A030118(n))`
-/

namespace A315735.P303933098194025441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315666 n + A002264 (A030118 n).toNat

end

end A315735.P303933098194025441

namespace A315735

/-- `A315666(n)+A002264(A030118(n))` -/
def P303933098194025441.Spec : Prop :=
  ∀ n, P303933098194025441.a n = A315735 n

end A315735

/-! ## A315735.P9758410636923517050

`A008458(n)+A008574(n)-A311554(n)`
-/

namespace A315735.P9758410636923517050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311554 n)

end

end A315735.P9758410636923517050

namespace A315735

/-- `A008458(n)+A008574(n)-A311554(n)` -/
def P9758410636923517050.Spec : Prop :=
  ∀ n, P9758410636923517050.a n = A315735 n

end A315735

/-! ## A315735.P10978039783772552560

`A008458(n)+A313680(n)-A313754(n)`
-/

namespace A315735.P10978039783772552560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A313680 n - A313754 n)

end

end A315735.P10978039783772552560

namespace A315735

/-- `A008458(n)+A313680(n)-A313754(n)` -/
def P10978039783772552560.Spec : Prop :=
  ∀ n, P10978039783772552560.a n = A315735 n

end A315735

/-! ## A315735.P10104001920057335244

`A313717(n)+A315741(n)-A008706(n)`
-/

namespace A315735.P10104001920057335244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + (A315741 n - A008706 n)

end

end A315735.P10104001920057335244

namespace A315735

/-- `A313717(n)+A315741(n)-A008706(n)` -/
def P10104001920057335244.Spec : Prop :=
  ∀ n, P10104001920057335244.a n = A315735 n

end A315735

/-! ## A315735.P6411101159222459528

`2*A315741(n)-A315751(n)`
-/

namespace A315735.P6411101159222459528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315741 n - A315751 n

end

end A315735.P6411101159222459528

namespace A315735

/-- `2*A315741(n)-A315751(n)` -/
def P6411101159222459528.Spec : Prop :=
  ∀ n, P6411101159222459528.a n = A315735 n

end A315735

/-! ## A315735.P7011022085260148135

`A315751(n)-A005843(A315751(n)-A315741(n))`
-/

namespace A315735.P7011022085260148135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315751 n - A005843 (A315751 n - A315741 n).toNat

end

end A315735.P7011022085260148135

namespace A315735

/-- `A315751(n)-A005843(A315751(n)-A315741(n))` -/
def P7011022085260148135.Spec : Prop :=
  ∀ n, P7011022085260148135.a n = A315735 n

end A315735

/-! ## A315735.P12732135453239901550

`A005843(A313717(n))-A311426(n)`
-/

namespace A315735.P12732135453239901550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313717 n).toNat - A311426 n

end

end A315735.P12732135453239901550

namespace A315735

/-- `A005843(A313717(n))-A311426(n)` -/
def P12732135453239901550.Spec : Prop :=
  ∀ n, P12732135453239901550.a n = A315735 n

end A315735

/-! ## A315735.P14889435851084320607

`A005843(A008706(n))-A311554(n)`
-/

namespace A315735.P14889435851084320607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311554 n

end

end A315735.P14889435851084320607

namespace A315735

/-- `A005843(A008706(n))-A311554(n)` -/
def P14889435851084320607.Spec : Prop :=
  ∀ n, P14889435851084320607.a n = A315735 n

end A315735

/-! ## A315735.P7617879592397973081

`A005843(A315741(n))-A315751(n)`
-/

namespace A315735.P7617879592397973081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315741 n).toNat - A315751 n

end

end A315735.P7617879592397973081

namespace A315735

/-- `A005843(A315741(n))-A315751(n)` -/
def P7617879592397973081.Spec : Prop :=
  ∀ n, P7617879592397973081.a n = A315735 n

end A315735

/-! ## A315735.P853381544535937139

`A065502(A008458(n))-A311554(n)`
-/

namespace A315735.P853381544535937139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A311554 n

end

end A315735.P853381544535937139

namespace A315735

/-- `A065502(A008458(n))-A311554(n)` -/
def P853381544535937139.Spec : Prop :=
  ∀ n, P853381544535937139.a n = A315735 n

end A315735

/-!
# A315736: Coordination sequence Gal.6.253.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315736, the canonical program `A315736.P5734559020084422279` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315736 has offset 0).

The definition of A315736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315736.P13789758813457140763

`abs(10*n-A311553(n))`
-/

namespace A315736.P13789758813457140763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311553 n|

end

end A315736.P13789758813457140763

namespace A315736

/-- `abs(10*n-A311553(n))` -/
def P13789758813457140763.Spec : Prop :=
  ∀ n, P13789758813457140763.a n = A315736 n

end A315736

/-! ## A315736.P11475166553303411544

`2*A008706(n)-A311553(n)`
-/

namespace A315736.P11475166553303411544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311553 n

end

end A315736.P11475166553303411544

namespace A315736

/-- `2*A008706(n)-A311553(n)` -/
def P11475166553303411544.Spec : Prop :=
  ∀ n, P11475166553303411544.a n = A315736 n

end A315736

/-! ## A315736.P4985860488575205537

`2*A314109(n)-A310404(n)`
-/

namespace A315736.P4985860488575205537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314109 n - A310404 n

end

end A315736.P4985860488575205537

namespace A315736

/-- `2*A314109(n)-A310404(n)` -/
def P4985860488575205537.Spec : Prop :=
  ∀ n, P4985860488575205537.a n = A315736 n

end A315736

/-! ## A315736.P16678862175919779969

`2*A313718(n)-A311434(n)`
-/

namespace A315736.P16678862175919779969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313718 n - A311434 n

end

end A315736.P16678862175919779969

namespace A315736

/-- `2*A313718(n)-A311434(n)` -/
def P16678862175919779969.Spec : Prop :=
  ∀ n, P16678862175919779969.a n = A315736 n

end A315736

/-! ## A315736.P13445829924432560920

`A135042(2*n+1)-A311553(n)`
-/

namespace A315736.P13445829924432560920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A311553 n

end

end A315736.P13445829924432560920

namespace A315736

/-- `A135042(2*n+1)-A311553(n)` -/
def P13445829924432560920.Spec : Prop :=
  ∀ n, P13445829924432560920.a n = A315736 n

end A315736

/-! ## A315736.P6103376387309191833

`A184418(A008574(n))-A311553(n)`
-/

namespace A315736.P6103376387309191833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A311553 n

end

end A315736.P6103376387309191833

namespace A315736

/-- `A184418(A008574(n))-A311553(n)` -/
def P6103376387309191833.Spec : Prop :=
  ∀ n, P6103376387309191833.a n = A315736 n

end A315736

/-! ## A315736.P17548850578127009553

`A008458(n)+A008574(n)-A311553(n)`
-/

namespace A315736.P17548850578127009553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311553 n)

end

end A315736.P17548850578127009553

namespace A315736

/-- `A008458(n)+A008574(n)-A311553(n)` -/
def P17548850578127009553.Spec : Prop :=
  ∀ n, P17548850578127009553.a n = A315736 n

end A315736

/-! ## A315736.P5636732884016438351

`A311553(n)+A005843(A008706(n)-A311553(n))`
-/

namespace A315736.P5636732884016438351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311553 n + A005843 (A008706 n - A311553 n).toNat

end

end A315736.P5636732884016438351

namespace A315736

/-- `A311553(n)+A005843(A008706(n)-A311553(n))` -/
def P5636732884016438351.Spec : Prop :=
  ∀ n, P5636732884016438351.a n = A315736 n

end A315736

/-! ## A315736.P5734559020084422279

`A315678(n)+A004525(A315678(n)-A315629(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A315736

/-- `A315678(n)+A004525(A315678(n)-A315629(n))` -/
def P5734559020084422279.Spec : Prop :=
  ∀ n, P5734559020084422279.a n = A315736 n

theorem P5734559020084422279.correct : P5734559020084422279.Spec := by
  intro n
  simp only [A315736]

end A315736

/-! ## A315736.P5163257264464158695

`2*A315740(n)-A315746(n)`
-/

namespace A315736.P5163257264464158695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315740 n - A315746 n

end

end A315736.P5163257264464158695

namespace A315736

/-- `2*A315740(n)-A315746(n)` -/
def P5163257264464158695.Spec : Prop :=
  ∀ n, P5163257264464158695.a n = A315736 n

end A315736

/-! ## A315736.P17665041011694526393

`A005843(A313718(n))-A311434(n)`
-/

namespace A315736.P17665041011694526393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313718 n).toNat - A311434 n

end

end A315736.P17665041011694526393

namespace A315736

/-- `A005843(A313718(n))-A311434(n)` -/
def P17665041011694526393.Spec : Prop :=
  ∀ n, P17665041011694526393.a n = A315736 n

end A315736

/-! ## A315736.P12169041726938863562

`A005843(A008706(n))-A311553(n)`
-/

namespace A315736.P12169041726938863562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311553 n

end

end A315736.P12169041726938863562

namespace A315736

/-- `A005843(A008706(n))-A311553(n)` -/
def P12169041726938863562.Spec : Prop :=
  ∀ n, P12169041726938863562.a n = A315736 n

end A315736

/-! ## A315736.P12513346856619483578

`A005843(A314109(n))-A310404(n)`
-/

namespace A315736.P12513346856619483578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314109 n).toNat - A310404 n

end

end A315736.P12513346856619483578

namespace A315736

/-- `A005843(A314109(n))-A310404(n)` -/
def P12513346856619483578.Spec : Prop :=
  ∀ n, P12513346856619483578.a n = A315736 n

end A315736

/-! ## A315736.P1341065257811875505

`A065502(A008458(n))-A311553(n)`
-/

namespace A315736.P1341065257811875505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A311553 n

end

end A315736.P1341065257811875505

namespace A315736

/-- `A065502(A008458(n))-A311553(n)` -/
def P1341065257811875505.Spec : Prop :=
  ∀ n, P1341065257811875505.a n = A315736 n

end A315736

/-! ## A315736.P14978295650446481929

`A004396(2*A315740(n))-2*n`
-/

namespace A315736.P14978295650446481929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315740 n).toNat - (2 * n : ℤ)

end

end A315736.P14978295650446481929

namespace A315736

/-- `A004396(2*A315740(n))-2*n` -/
def P14978295650446481929.Spec : Prop :=
  ∀ n, P14978295650446481929.a n = A315736 n

end A315736

/-! ## A315736.P5918234144179551182

`A233583(A017281(n))-A311553(n)`
-/

namespace A315736.P5918234144179551182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A311553 n

end

end A315736.P5918234144179551182

namespace A315736

/-- `A233583(A017281(n))-A311553(n)` -/
def P5918234144179551182.Spec : Prop :=
  ∀ n, P5918234144179551182.a n = A315736 n

end A315736

/-!
# A315737: Coordination sequence Gal.5.90.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315737, the canonical program `A315737.P10781297996396530912` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315737 has offset 0).

The definition of A315737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315737.P10781297996396530912

`A313916(n)+A253262(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315737

/-- `A313916(n)+A253262(n)` -/
def P10781297996396530912.Spec : Prop :=
  ∀ n, P10781297996396530912.a n = A315737 n

theorem P10781297996396530912.correct : P10781297996396530912.Spec := by
  intro n
  simp only [A315737]

end A315737

/-! ## A315737.P12904197733771662147

`abs(A008592(n)-A311552(n))`
-/

namespace A315737.P12904197733771662147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311552 n|

end

end A315737.P12904197733771662147

namespace A315737

/-- `abs(A008592(n)-A311552(n))` -/
def P12904197733771662147.Spec : Prop :=
  ∀ n, P12904197733771662147.a n = A315737 n

end A315737

/-! ## A315737.P15651775899814563459

`A315679(n)+A002266(n+2)`
-/

namespace A315737.P15651775899814563459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n + A002266 (n + 2)

end

end A315737.P15651775899814563459

namespace A315737

/-- `A315679(n)+A002266(n+2)` -/
def P15651775899814563459.Spec : Prop :=
  ∀ n, P15651775899814563459.a n = A315737 n

end A315737

/-! ## A315737.P6751806707582917197

`2*A008706(n)-A311552(n)`
-/

namespace A315737.P6751806707582917197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311552 n

end

end A315737.P6751806707582917197

namespace A315737

/-- `2*A008706(n)-A311552(n)` -/
def P6751806707582917197.Spec : Prop :=
  ∀ n, P6751806707582917197.a n = A315737 n

end A315737

/-! ## A315737.P9634770567163746463

`A253262(n)+A312077(n)+n`
-/

namespace A315737.P9634770567163746463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A312077 n + (n : ℤ))

end

end A315737.P9634770567163746463

namespace A315737

/-- `A253262(n)+A312077(n)+n` -/
def P9634770567163746463.Spec : Prop :=
  ∀ n, P9634770567163746463.a n = A315737 n

theorem P9634770567163746463.correct : P9634770567163746463.Spec := by
  intro n
  simp only [A315737, Nat.add_sub_cancel, A315737.P9634770567163746463.a, A315737.P10781297996396530912.a, A253262, A253262.P6184646248567078382.a, A312077, A312077.P5583150468324327588.a, A313916, A313916.P11453756357199401341.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315737

/-! ## A315737.P5690134158636692291

`A315679(n)+A008676(A016777(n))`
-/

namespace A315737.P5690134158636692291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n + A008676 (A016777 n).toNat

end

end A315737.P5690134158636692291

namespace A315737

/-- `A315679(n)+A008676(A016777(n))` -/
def P5690134158636692291.Spec : Prop :=
  ∀ n, P5690134158636692291.a n = A315737 n

end A315737

/-! ## A315737.P8220710299751389071

`A184418(A008574(n))-A311552(n)`
-/

namespace A315737.P8220710299751389071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A311552 n

end

end A315737.P8220710299751389071

namespace A315737

/-- `A184418(A008574(n))-A311552(n)` -/
def P8220710299751389071.Spec : Prop :=
  ∀ n, P8220710299751389071.a n = A315737 n

end A315737

/-! ## A315737.P13367867435904267577

`A008458(n)+A008574(n)-A311552(n)`
-/

namespace A315737.P13367867435904267577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311552 n)

end

end A315737.P13367867435904267577

namespace A315737

/-- `A008458(n)+A008574(n)-A311552(n)` -/
def P13367867435904267577.Spec : Prop :=
  ∀ n, P13367867435904267577.a n = A315737 n

end A315737

/-! ## A315737.P3822725241016375638

`A008486(n)+A315445(n)-A072154(n)`
-/

namespace A315737.P3822725241016375638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315445 n - A072154 n)

end

end A315737.P3822725241016375638

namespace A315737

/-- `A008486(n)+A315445(n)-A072154(n)` -/
def P3822725241016375638.Spec : Prop :=
  ∀ n, P3822725241016375638.a n = A315737 n

end A315737

/-! ## A315737.P10197425482286889521

`A330025(n-A330025(n))+A315518(n)`
-/

namespace A315737.P10197425482286889521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A315518 n

end

end A315737.P10197425482286889521

namespace A315737

/-- `A330025(n-A330025(n))+A315518(n)` -/
def P10197425482286889521.Spec : Prop :=
  ∀ n, P10197425482286889521.a n = A315737 n

end A315737

/-! ## A315737.P9126281345867097714

`A330025(n)+A314209(n)`
-/

namespace A315737.P9126281345867097714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314209 n

end

end A315737.P9126281345867097714

namespace A315737

/-- `A330025(n)+A314209(n)` -/
def P9126281345867097714.Spec : Prop :=
  ∀ n, P9126281345867097714.a n = A315737 n

end A315737

/-! ## A315737.P4118932093904581959

`2*A315742(n)-A315749(n)`
-/

namespace A315737.P4118932093904581959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315742 n - A315749 n

end

end A315737.P4118932093904581959

namespace A315737

/-- `2*A315742(n)-A315749(n)` -/
def P4118932093904581959.Spec : Prop :=
  ∀ n, P4118932093904581959.a n = A315737 n

end A315737

/-! ## A315737.P5857791302939047250

`A005843(A008706(n))-A311552(n)`
-/

namespace A315737.P5857791302939047250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311552 n

end

end A315737.P5857791302939047250

namespace A315737

/-- `A005843(A008706(n))-A311552(n)` -/
def P5857791302939047250.Spec : Prop :=
  ∀ n, P5857791302939047250.a n = A315737 n

end A315737

/-! ## A315737.P11020366247566376884

`A180004(A315679(n))`
-/

namespace A315737.P11020366247566376884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A315679 n).toNat

end

end A315737.P11020366247566376884

namespace A315737

/-- `A180004(A315679(n))` -/
def P11020366247566376884.Spec : Prop :=
  ∀ n, P11020366247566376884.a n = A315737 n

end A315737

/-! ## A315737.P15916785897989013225

`A314209(n)-A330033(A304840(n+1)+n)`
-/

namespace A315737.P15916785897989013225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314209 n - A330033 (A304840 (n + 1) + (n : ℤ)).toNat

end

end A315737.P15916785897989013225

namespace A315737

/-- `A314209(n)-A330033(A304840(n+1)+n)` -/
def P15916785897989013225.Spec : Prop :=
  ∀ n, P15916785897989013225.a n = A315737 n

end A315737

/-!
# A315738: Coordination sequence Gal.6.343.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315738, the canonical program `A315738.P6865487008344501452` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315738 has offset 0).

The definition of A315738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315738.P1640131504274183055

`A314085(n)+A004396(n)`
-/

namespace A315738.P1640131504274183055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314085 n + A004396 n

end

end A315738.P1640131504274183055

namespace A315738

/-- `A314085(n)+A004396(n)` -/
def P1640131504274183055.Spec : Prop :=
  ∀ n, P1640131504274183055.a n = A315738 n

end A315738

/-! ## A315738.P9497941657019636642

`abs(A008592(n)-A311549(n))`
-/

namespace A315738.P9497941657019636642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311549 n|

end

end A315738.P9497941657019636642

namespace A315738

/-- `abs(A008592(n)-A311549(n))` -/
def P9497941657019636642.Spec : Prop :=
  ∀ n, P9497941657019636642.a n = A315738 n

end A315738

/-! ## A315738.P390085407653405610

`A315459(n)+∑[A021913(n)]`
-/

namespace A315738.P390085407653405610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315738.P390085407653405610

namespace A315738

/-- `A315459(n)+∑[A021913(n)]` -/
def P390085407653405610.Spec : Prop :=
  ∀ n, P390085407653405610.a n = A315738 n

end A315738

/-! ## A315738.P5510428576328588081

`A315459(n)+Δ[A011848(n)]`
-/

namespace A315738.P5510428576328588081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + (f1 (n + 1) - f1 n)

end

end A315738.P5510428576328588081

namespace A315738

/-- `A315459(n)+Δ[A011848(n)]` -/
def P5510428576328588081.Spec : Prop :=
  ∀ n, P5510428576328588081.a n = A315738 n

end A315738

/-! ## A315738.P4086688390605616902

`2*A008706(n)-A311549(n)`
-/

namespace A315738.P4086688390605616902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311549 n

end

end A315738.P4086688390605616902

namespace A315738

/-- `2*A008706(n)-A311549(n)` -/
def P4086688390605616902.Spec : Prop :=
  ∀ n, P4086688390605616902.a n = A315738 n

end A315738

/-! ## A315738.P17032528258221409267

`A315459(n)+n-A004525(n)`
-/

namespace A315738.P17032528258221409267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + ((n : ℤ) - A004525 n)

end

end A315738.P17032528258221409267

namespace A315738

/-- `A315459(n)+n-A004525(n)` -/
def P17032528258221409267.Spec : Prop :=
  ∀ n, P17032528258221409267.a n = A315738 n

end A315738

/-! ## A315738.P8372228054088223918

`A314085(n)+A002264(2*n+1)`
-/

namespace A315738.P8372228054088223918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314085 n + A002264 (2 * n + 1)

end

end A315738.P8372228054088223918

namespace A315738

/-- `A314085(n)+A002264(2*n+1)` -/
def P8372228054088223918.Spec : Prop :=
  ∀ n, P8372228054088223918.a n = A315738 n

end A315738

/-! ## A315738.P6865487008344501452

`A315515(n)+A004525(n-A004396(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315738

/-- `A315515(n)+A004525(n-A004396(n))` -/
def P6865487008344501452.Spec : Prop :=
  ∀ n, P6865487008344501452.a n = A315738 n

theorem P6865487008344501452.correct : P6865487008344501452.Spec := by
  intro n
  simp only [A315738]

end A315738

/-! ## A315738.P15664410586966137435

`A008458(n)+A008574(n)-A311549(n)`
-/

namespace A315738.P15664410586966137435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311549 n)

end

end A315738.P15664410586966137435

namespace A315738

/-- `A008458(n)+A008574(n)-A311549(n)` -/
def P15664410586966137435.Spec : Prop :=
  ∀ n, P15664410586966137435.a n = A315738 n

end A315738

/-! ## A315738.P14537479635401754741

`A008458(n)+A314085(n)-A219529(n)`
-/

namespace A315738.P14537479635401754741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A314085 n - A219529 n)

end

end A315738.P14537479635401754741

namespace A315738

/-- `A008458(n)+A314085(n)-A219529(n)` -/
def P14537479635401754741.Spec : Prop :=
  ∀ n, P14537479635401754741.a n = A315738 n

end A315738

/-! ## A315738.P1029010791431185501

`A004396(n)+A315670(n)-A004525(A004396(n))`
-/

namespace A315738.P1029010791431185501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315670 n - A004525 (A004396 n).toNat)

end

end A315738.P1029010791431185501

namespace A315738

/-- `A004396(n)+A315670(n)-A004525(A004396(n))` -/
def P1029010791431185501.Spec : Prop :=
  ∀ n, P1029010791431185501.a n = A315738 n

end A315738

/-! ## A315738.P5635883770002375020

`A004396(2*A313680(n)-n)`
-/

namespace A315738.P5635883770002375020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313680 n - (n : ℤ)).toNat

end

end A315738.P5635883770002375020

namespace A315738

/-- `A004396(2*A313680(n)-n)` -/
def P5635883770002375020.Spec : Prop :=
  ∀ n, P5635883770002375020.a n = A315738 n

end A315738

/-! ## A315738.P14432461500565360707

`A004396(A313680(n)+A313680(n)-n)`
-/

namespace A315738.P14432461500565360707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313680 n + (A313680 n - (n : ℤ))).toNat

end

end A315738.P14432461500565360707

namespace A315738

/-- `A004396(A313680(n)+A313680(n)-n)` -/
def P14432461500565360707.Spec : Prop :=
  ∀ n, P14432461500565360707.a n = A315738 n

end A315738

/-! ## A315738.P18360512939004200823

`A004396(A313680(n)-(n-A313680(n)))`
-/

namespace A315738.P18360512939004200823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313680 n - ((n : ℤ) - A313680 n)).toNat

end

end A315738.P18360512939004200823

namespace A315738

/-- `A004396(A313680(n)-(n-A313680(n)))` -/
def P18360512939004200823.Spec : Prop :=
  ∀ n, P18360512939004200823.a n = A315738 n

end A315738

/-!
# A315739: Coordination sequence Gal.5.135.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315739, the canonical program `A315739.P13129759353165828185` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315739 has offset 0).

The definition of A315739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315739.P6252401728742863560

`A314088(n)+A004396(n)`
-/

namespace A315739.P6252401728742863560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314088 n + A004396 n

end

end A315739.P6252401728742863560

namespace A315739

/-- `A314088(n)+A004396(n)` -/
def P6252401728742863560.Spec : Prop :=
  ∀ n, P6252401728742863560.a n = A315739 n

end A315739

/-! ## A315739.P2654963567510584718

`abs(A008592(n)-A311548(n))`
-/

namespace A315739.P2654963567510584718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311548 n|

end

end A315739.P2654963567510584718

namespace A315739

/-- `abs(A008592(n)-A311548(n))` -/
def P2654963567510584718.Spec : Prop :=
  ∀ n, P2654963567510584718.a n = A315739 n

end A315739

/-! ## A315739.P13129759353165828185

`A315680(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315739

/-- `A315680(n)+Δ[A011862(n)]` -/
def P13129759353165828185.Spec : Prop :=
  ∀ n, P13129759353165828185.a n = A315739 n

theorem P13129759353165828185.correct : P13129759353165828185.Spec := by
  intro n
  simp only [A315739]

end A315739

/-! ## A315739.P4322714913208780768

`2*A008706(n)-A311548(n)`
-/

namespace A315739.P4322714913208780768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311548 n

end

end A315739.P4322714913208780768

namespace A315739

/-- `2*A008706(n)-A311548(n)` -/
def P4322714913208780768.Spec : Prop :=
  ∀ n, P4322714913208780768.a n = A315739 n

end A315739

/-! ## A315739.P8675998756056066286

`A314088(n)+A002264(2*n+1)`
-/

namespace A315739.P8675998756056066286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314088 n + A002264 (2 * n + 1)

end

end A315739.P8675998756056066286

namespace A315739

/-- `A314088(n)+A002264(2*n+1)` -/
def P8675998756056066286.Spec : Prop :=
  ∀ n, P8675998756056066286.a n = A315739 n

end A315739

/-! ## A315739.P8815826680519057326

`A314088(n)+A004525(A004773(n))`
-/

namespace A315739.P8815826680519057326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314088 n + A004525 (A004773 n).toNat

end

end A315739.P8815826680519057326

namespace A315739

/-- `A314088(n)+A004525(A004773(n))` -/
def P8815826680519057326.Spec : Prop :=
  ∀ n, P8815826680519057326.a n = A315739 n

end A315739

/-! ## A315739.P13295773601465122932

`A008458(n)+A008574(n)-A311548(n)`
-/

namespace A315739.P13295773601465122932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311548 n)

end

end A315739.P13295773601465122932

namespace A315739

/-- `A008458(n)+A008574(n)-A311548(n)` -/
def P13295773601465122932.Spec : Prop :=
  ∀ n, P13295773601465122932.a n = A315739 n

end A315739

/-! ## A315739.P9517011896947882356

`A004396(n)+A315680(n)-A004396(A004396(n))`
-/

namespace A315739.P9517011896947882356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315680 n - A004396 (A004396 n).toNat)

end

end A315739.P9517011896947882356

namespace A315739

/-- `A004396(n)+A315680(n)-A004396(A004396(n))` -/
def P9517011896947882356.Spec : Prop :=
  ∀ n, P9517011896947882356.a n = A315739 n

end A315739

/-! ## A315739.P1476759965472307435

`A311548(n)+A005843(A008706(n)-A311548(n))`
-/

namespace A315739.P1476759965472307435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + A005843 (A008706 n - A311548 n).toNat

end

end A315739.P1476759965472307435

namespace A315739

/-- `A311548(n)+A005843(A008706(n)-A311548(n))` -/
def P1476759965472307435.Spec : Prop :=
  ∀ n, P1476759965472307435.a n = A315739 n

end A315739

/-! ## A315739.P12426060376225687074

`A315680(n)+A004525(A315680(n)-A315631(n))`
-/

namespace A315739.P12426060376225687074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315680 n + A004525 (A315680 n - A315631 n).toNat

end

end A315739.P12426060376225687074

namespace A315739

/-- `A315680(n)+A004525(A315680(n)-A315631(n))` -/
def P12426060376225687074.Spec : Prop :=
  ∀ n, P12426060376225687074.a n = A315739 n

end A315739

/-! ## A315739.P7740861980791170074

`A005843(A008706(n))-A311548(n)`
-/

namespace A315739.P7740861980791170074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311548 n

end

end A315739.P7740861980791170074

namespace A315739

/-- `A005843(A008706(n))-A311548(n)` -/
def P7740861980791170074.Spec : Prop :=
  ∀ n, P7740861980791170074.a n = A315739 n

end A315739

/-! ## A315739.P7906668741910037067

`2*n+A004396(A315727(n))`
-/

namespace A315739.P7906668741910037067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315727 n).toNat

end

end A315739.P7906668741910037067

namespace A315739

/-- `2*n+A004396(A315727(n))` -/
def P7906668741910037067.Spec : Prop :=
  ∀ n, P7906668741910037067.a n = A315739 n

end A315739

/-! ## A315739.P15038036772153207957

`A008585(n)-(n-A004396(A315727(n)))`
-/

namespace A315739.P15038036772153207957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315727 n).toNat)

end

end A315739.P15038036772153207957

namespace A315739

/-- `A008585(n)-(n-A004396(A315727(n)))` -/
def P15038036772153207957.Spec : Prop :=
  ∀ n, P15038036772153207957.a n = A315739 n

end A315739

/-! ## A315739.P16903629796907974864

`A004396(2*A313683(n)-n)`
-/

namespace A315739.P16903629796907974864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313683 n - (n : ℤ)).toNat

end

end A315739.P16903629796907974864

namespace A315739

/-- `A004396(2*A313683(n)-n)` -/
def P16903629796907974864.Spec : Prop :=
  ∀ n, P16903629796907974864.a n = A315739 n

end A315739

/-! ## A315739.P3063843153860265991

`A004396(A315727(n)+A008486(n))`
-/

namespace A315739.P3063843153860265991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315727 n + A008486 n).toNat

end

end A315739.P3063843153860265991

namespace A315739

/-- `A004396(A315727(n)+A008486(n))` -/
def P3063843153860265991.Spec : Prop :=
  ∀ n, P3063843153860265991.a n = A315739 n

end A315739

/-! ## A315739.P10891766671113957897

`A004396(A315727(n)+A008585(n))`
-/

namespace A315739.P10891766671113957897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315727 n + A008585 n).toNat

end

end A315739.P10891766671113957897

namespace A315739

/-- `A004396(A315727(n)+A008585(n))` -/
def P10891766671113957897.Spec : Prop :=
  ∀ n, P10891766671113957897.a n = A315739 n

end A315739

/-! ## A315739.P7525523605647149026

`A004396(A313683(n)+A313683(n)-n)`
-/

namespace A315739.P7525523605647149026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313683 n + (A313683 n - (n : ℤ))).toNat

end

end A315739.P7525523605647149026

namespace A315739

/-- `A004396(A313683(n)+A313683(n)-n)` -/
def P7525523605647149026.Spec : Prop :=
  ∀ n, P7525523605647149026.a n = A315739 n

end A315739

/-! ## A315739.P2965274266641626597

`A004396(A313683(n)-(n-A313683(n)))`
-/

namespace A315739.P2965274266641626597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313683 n - ((n : ℤ) - A313683 n)).toNat

end

end A315739.P2965274266641626597

namespace A315739

/-- `A004396(A313683(n)-(n-A313683(n)))` -/
def P2965274266641626597.Spec : Prop :=
  ∀ n, P2965274266641626597.a n = A315739 n

end A315739

/-!
# A315740: Coordination sequence Gal.6.209.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315740, the canonical program `A315740.P10736472122345280017` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315740 has offset 0).

The definition of A315740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315740.P9469500813436404540

`abs(A008592(n)-A311541(n))`
-/

namespace A315740.P9469500813436404540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311541 n|

end

end A315740.P9469500813436404540

namespace A315740

/-- `abs(A008592(n)-A311541(n))` -/
def P9469500813436404540.Spec : Prop :=
  ∀ n, P9469500813436404540.a n = A315740 n

end A315740

/-! ## A315740.P13809713134451677396

`2*A008706(n)-A311541(n)`
-/

namespace A315740.P13809713134451677396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311541 n

end

end A315740.P13809713134451677396

namespace A315740

/-- `2*A008706(n)-A311541(n)` -/
def P13809713134451677396.Spec : Prop :=
  ∀ n, P13809713134451677396.a n = A315740 n

end A315740

/-! ## A315740.P5451516671299065864

`A135042(2*n+1)-A311541(n)`
-/

namespace A315740.P5451516671299065864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A311541 n

end

end A315740.P5451516671299065864

namespace A315740

/-- `A135042(2*n+1)-A311541(n)` -/
def P5451516671299065864.Spec : Prop :=
  ∀ n, P5451516671299065864.a n = A315740 n

end A315740

/-! ## A315740.P6734939611968166679

`A008458(n)+A008574(n)-A311541(n)`
-/

namespace A315740.P6734939611968166679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311541 n)

end

end A315740.P6734939611968166679

namespace A315740

/-- `A008458(n)+A008574(n)-A311541(n)` -/
def P6734939611968166679.Spec : Prop :=
  ∀ n, P6734939611968166679.a n = A315740 n

end A315740

/-! ## A315740.P1623432507092300735

`gcd(A008592(n)-A311541(n), 2%A000034(n))`
-/

namespace A315740.P1623432507092300735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A311541 n) (Int.tmod 2 (A000034 n))

end

end A315740.P1623432507092300735

namespace A315740

/-- `gcd(A008592(n)-A311541(n), 2%A000034(n))` -/
def P1623432507092300735.Spec : Prop :=
  ∀ n, (P1623432507092300735.a n : ℤ) = A315740 n

end A315740

/-! ## A315740.P2689688667634142886

`A311541(n)+A005843(A008706(n)-A311541(n))`
-/

namespace A315740.P2689688667634142886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311541 n + A005843 (A008706 n - A311541 n).toNat

end

end A315740.P2689688667634142886

namespace A315740

/-- `A311541(n)+A005843(A008706(n)-A311541(n))` -/
def P2689688667634142886.Spec : Prop :=
  ∀ n, P2689688667634142886.a n = A315740 n

end A315740

/-! ## A315740.P16110267801863288934

`(A315754(n)+A315730(n))/2`
-/

namespace A315740.P16110267801863288934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315754 n + A315730 n : ℚ) / 2

end

end A315740.P16110267801863288934

namespace A315740

/-- `(A315754(n)+A315730(n))/2` -/
def P16110267801863288934.Spec : Prop :=
  ∀ n, P16110267801863288934.a n = (A315740 n : ℚ)

end A315740

/-! ## A315740.P10736472122345280017

`A047263(A313681(n)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315740

/-- `A047263(A313681(n)+1)` -/
def P10736472122345280017.Spec : Prop :=
  ∀ n, P10736472122345280017.a n = A315740 n

theorem P10736472122345280017.correct : P10736472122345280017.Spec := by
  intro n
  simp only [A315740]

end A315740

/-! ## A315740.P4814161255157423782

`A005843(A008706(n))-A311541(n)`
-/

namespace A315740.P4814161255157423782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311541 n

end

end A315740.P4814161255157423782

namespace A315740

/-- `A005843(A008706(n))-A311541(n)` -/
def P4814161255157423782.Spec : Prop :=
  ∀ n, P4814161255157423782.a n = A315740 n

end A315740

/-! ## A315740.P12062767402149244976

`A065502(A008458(n))-A311541(n)`
-/

namespace A315740.P12062767402149244976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A311541 n

end

end A315740.P12062767402149244976

namespace A315740

/-- `A065502(A008458(n))-A311541(n)` -/
def P12062767402149244976.Spec : Prop :=
  ∀ n, P12062767402149244976.a n = A315740 n

end A315740

/-! ## A315740.P6871087339752732488

`A090223(A007494(A313681(n)))`
-/

namespace A315740.P6871087339752732488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A007494 (A313681 n).toNat).toNat

end

end A315740.P6871087339752732488

namespace A315740

/-- `A090223(A007494(A313681(n)))` -/
def P6871087339752732488.Spec : Prop :=
  ∀ n, P6871087339752732488.a n = A315740 n

end A315740

/-! ## A315740.P3968233320954842680

`A004526(A315754(n)+A315730(n))`
-/

namespace A315740.P3968233320954842680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315754 n + A315730 n).toNat

end

end A315740.P3968233320954842680

namespace A315740

/-- `A004526(A315754(n)+A315730(n))` -/
def P3968233320954842680.Spec : Prop :=
  ∀ n, P3968233320954842680.a n = A315740 n

end A315740

/-! ## A315740.P4356261773026715085

`A233583(A017281(n))-A311541(n)`
-/

namespace A315740.P4356261773026715085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A311541 n

end

end A315740.P4356261773026715085

namespace A315740

/-- `A233583(A017281(n))-A311541(n)` -/
def P4356261773026715085.Spec : Prop :=
  ∀ n, P4356261773026715085.a n = A315740 n

end A315740

/-!
# A315741: Coordination sequence Gal.6.210.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315741, the canonical program `A315741.P5851134894198230130` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315741 has offset 0).

The definition of A315741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315741.P5851134894198230130

`2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=18, a(4)=23, a(5)=28, a(6)=33, a(7)=38, a(8)=43`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A315741

/-- `2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P5851134894198230130.Spec : Prop :=
  ∀ n, P5851134894198230130.a n = A315741 n

theorem P5851134894198230130.correct : P5851134894198230130.Spec := by
  intro n
  simp only [A315741]

end A315741

/-! ## A315741.P11287153910354964674

`A313680(n)+n`
-/

namespace A315741.P11287153910354964674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + (n : ℤ)

end

end A315741.P11287153910354964674

namespace A315741

/-- `A313680(n)+n` -/
def P11287153910354964674.Spec : Prop :=
  ∀ n, P11287153910354964674.a n = A315741 n

end A315741

/-! ## A315741.P6995384553604002969

`abs(10*n-A311536(n))`
-/

namespace A315741.P6995384553604002969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311536 n|

end

end A315741.P6995384553604002969

namespace A315741

/-- `abs(10*n-A311536(n))` -/
def P6995384553604002969.Spec : Prop :=
  ∀ n, P6995384553604002969.a n = A315741 n

end A315741

/-! ## A315741.P17897124955196463542

`A314091(n)+A004396(n)`
-/

namespace A315741.P17897124955196463542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n + A004396 n

end

end A315741.P17897124955196463542

namespace A315741

/-- `A314091(n)+A004396(n)` -/
def P17897124955196463542.Spec : Prop :=
  ∀ n, P17897124955196463542.a n = A315741 n

end A315741

/-! ## A315741.P5181996944368604572

`A180004(A313474(n))+n`
-/

namespace A315741.P5181996944368604572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313474 n).toNat + (n : ℤ)

end

end A315741.P5181996944368604572

namespace A315741

/-- `A180004(A313474(n))+n` -/
def P5181996944368604572.Spec : Prop :=
  ∀ n, P5181996944368604572.a n = A315741 n

end A315741

/-! ## A315741.P18184070458514401700

`abs(A008593(n)-A313803(n))`
-/

namespace A315741.P18184070458514401700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313803 n|

end

end A315741.P18184070458514401700

namespace A315741

/-- `abs(A008593(n)-A313803(n))` -/
def P18184070458514401700.Spec : Prop :=
  ∀ n, P18184070458514401700.a n = A315741 n

end A315741

/-! ## A315741.P8728337451938934669

`A315465(n)+Δ[A011848(n)]`
-/

namespace A315741.P8728337451938934669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n + (f1 (n + 1) - f1 n)

end

end A315741.P8728337451938934669

namespace A315741

/-- `A315465(n)+Δ[A011848(n)]` -/
def P8728337451938934669.Spec : Prop :=
  ∀ n, P8728337451938934669.a n = A315741 n

end A315741

/-! ## A315741.P488405361920708822

`A315515(n)+A002264(n+1)`
-/

namespace A315741.P488405361920708822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n + A002264 (n + 1)

end

end A315741.P488405361920708822

namespace A315741

/-- `A315515(n)+A002264(n+1)` -/
def P488405361920708822.Spec : Prop :=
  ∀ n, P488405361920708822.a n = A315741 n

end A315741

/-! ## A315741.P9255286481913548766

`A315515(n)+n-A004396(n)`
-/

namespace A315741.P9255286481913548766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n + ((n : ℤ) - A004396 n)

end

end A315741.P9255286481913548766

namespace A315741

/-- `A315515(n)+n-A004396(n)` -/
def P9255286481913548766.Spec : Prop :=
  ∀ n, P9255286481913548766.a n = A315741 n

end A315741

/-! ## A315741.P16008147746025821627

`A315465(n)+n-A004525(n)`
-/

namespace A315741.P16008147746025821627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n + ((n : ℤ) - A004525 n)

end

end A315741.P16008147746025821627

namespace A315741

/-- `A315465(n)+n-A004525(n)` -/
def P16008147746025821627.Spec : Prop :=
  ∀ n, P16008147746025821627.a n = A315741 n

end A315741

/-! ## A315741.P16864110515844040226

`A005843(n)-(n-A313680(n))`
-/

namespace A315741.P16864110515844040226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313680 n)

end

end A315741.P16864110515844040226

namespace A315741

/-- `A005843(n)-(n-A313680(n))` -/
def P16864110515844040226.Spec : Prop :=
  ∀ n, P16864110515844040226.a n = A315741 n

end A315741

/-! ## A315741.P10176949943707954995

`abs(A008591(n)+n-A311536(n))`
-/

namespace A315741.P10176949943707954995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A311536 n)|

end

end A315741.P10176949943707954995

namespace A315741

/-- `abs(A008591(n)+n-A311536(n))` -/
def P10176949943707954995.Spec : Prop :=
  ∀ n, P10176949943707954995.a n = A315741 n

end A315741

/-! ## A315741.P16805101596657741844

`abs(A008592(n)+n-A313803(n))`
-/

namespace A315741.P16805101596657741844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A313803 n)|

end

end A315741.P16805101596657741844

namespace A315741

/-- `abs(A008592(n)+n-A313803(n))` -/
def P16805101596657741844.Spec : Prop :=
  ∀ n, P16805101596657741844.a n = A315741 n

end A315741

/-! ## A315741.P1857453658485594333

`A315465(n)+n-Δ[A054925(n)]`
-/

namespace A315741.P1857453658485594333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315741.P1857453658485594333

namespace A315741

/-- `A315465(n)+n-Δ[A054925(n)]` -/
def P1857453658485594333.Spec : Prop :=
  ∀ n, P1857453658485594333.a n = A315741 n

end A315741

/-! ## A315741.P16994028365641081606

`A314091(n)+A002264(2*n+1)`
-/

namespace A315741.P16994028365641081606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n + A002264 (2 * n + 1)

end

end A315741.P16994028365641081606

namespace A315741

/-- `A314091(n)+A002264(2*n+1)` -/
def P16994028365641081606.Spec : Prop :=
  ∀ n, P16994028365641081606.a n = A315741 n

end A315741

/-! ## A315741.P9827037907719982867

`A008458(n)+A008574(n)-A311536(n)`
-/

namespace A315741.P9827037907719982867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311536 n)

end

end A315741.P9827037907719982867

namespace A315741

/-- `A008458(n)+A008574(n)-A311536(n)` -/
def P9827037907719982867.Spec : Prop :=
  ∀ n, P9827037907719982867.a n = A315741 n

end A315741

/-! ## A315741.P12537136694737093509

`A008486(n)+A315515(n)-A008576(n)`
-/

namespace A315741.P12537136694737093509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315515 n - A008576 n)

end

end A315741.P12537136694737093509

namespace A315741

/-- `A008486(n)+A315515(n)-A008576(n)` -/
def P12537136694737093509.Spec : Prop :=
  ∀ n, P12537136694737093509.a n = A315741 n

end A315741

/-! ## A315741.P3821856031236491370

`A004396(n)+A315673(n)-A004525(A004396(n))`
-/

namespace A315741.P3821856031236491370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315673 n - A004525 (A004396 n).toNat)

end

end A315741.P3821856031236491370

namespace A315741

/-- `A004396(n)+A315673(n)-A004525(A004396(n))` -/
def P3821856031236491370.Spec : Prop :=
  ∀ n, P3821856031236491370.a n = A315741 n

end A315741

/-! ## A315741.P18297676168832262241

`A004396(A004525(n))+A315760(n)-A004525(n)`
-/

namespace A315741.P18297676168832262241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315760 n - A004525 n)

end

end A315741.P18297676168832262241

namespace A315741

/-- `A004396(A004525(n))+A315760(n)-A004525(n)` -/
def P18297676168832262241.Spec : Prop :=
  ∀ n, P18297676168832262241.a n = A315741 n

theorem P18297676168832262241.correct : P18297676168832262241.Spec := by
  intro n
  simp only [A315741, Nat.add_sub_cancel, A315741.P18297676168832262241.a, A315741.P5851134894198230130.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A315760, A315760.P12014470375947906454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315741

/-! ## A315741.P240487917862004150

`n-A001057(2*A313680(n))`
-/

namespace A315741.P240487917862004150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A313680 n).toNat

end

end A315741.P240487917862004150

namespace A315741

/-- `n-A001057(2*A313680(n))` -/
def P240487917862004150.Spec : Prop :=
  ∀ n, P240487917862004150.a n = A315741 n

end A315741

/-!
# A315742: Coordination sequence Gal.5.302.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315742, the canonical program `A315742.P4234331020117959484` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315742 has offset 0).

The definition of A315742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315742.P4234331020117959484

`A313682(n)+n`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315742

/-- `A313682(n)+n` -/
def P4234331020117959484.Spec : Prop :=
  ∀ n, P4234331020117959484.a n = A315742 n

theorem P4234331020117959484.correct : P4234331020117959484.Spec := by
  intro n
  simp only [A315742]

end A315742

/-! ## A315742.P7802644832124296573

`abs(10*n-A311535(n))`
-/

namespace A315742.P7802644832124296573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311535 n|

end

end A315742.P7802644832124296573

namespace A315742

/-- `abs(10*n-A311535(n))` -/
def P7802644832124296573.Spec : Prop :=
  ∀ n, P7802644832124296573.a n = A315742 n

end A315742

/-! ## A315742.P15502210590471249476

`A330025(n)+A314220(n)`
-/

namespace A315742.P15502210590471249476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314220 n

end

end A315742.P15502210590471249476

namespace A315742

/-- `A330025(n)+A314220(n)` -/
def P15502210590471249476.Spec : Prop :=
  ∀ n, P15502210590471249476.a n = A315742 n

end A315742

/-! ## A315742.P8753976558776880710

`A315508(n)+Δ[A011858(n)]`
-/

namespace A315742.P8753976558776880710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315508 n + (f1 (n + 1) - f1 n)

end

end A315742.P8753976558776880710

namespace A315742

/-- `A315508(n)+Δ[A011858(n)]` -/
def P8753976558776880710.Spec : Prop :=
  ∀ n, P8753976558776880710.a n = A315742 n

end A315742

/-! ## A315742.P1961406232845674633

`A313476(n)+A047263(n+1)`
-/

namespace A315742.P1961406232845674633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + A047263 (n + 1)

end

end A315742.P1961406232845674633

namespace A315742

/-- `A313476(n)+A047263(n+1)` -/
def P1961406232845674633.Spec : Prop :=
  ∀ n, P1961406232845674633.a n = A315742 n

theorem P1961406232845674633.correct : P1961406232845674633.Spec := by
  intro n
  simp only [A315742, Nat.add_sub_cancel, A315742.P1961406232845674633.a, A315742.P4234331020117959484.a, A047263, A047263.P10177617567604490545.a, A313476, A313476.P1237108097731061015.a, A313682, A313682.P7898542429883627702.a, A312903, A312903.P5186887365123370171.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315742

/-! ## A315742.P15958643443177340407

`A315684(n)+A002266(n+2)`
-/

namespace A315742.P15958643443177340407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315684 n + A002266 (n + 2)

end

end A315742.P15958643443177340407

namespace A315742

/-- `A315684(n)+A002266(n+2)` -/
def P15958643443177340407.Spec : Prop :=
  ∀ n, P15958643443177340407.a n = A315742 n

end A315742

/-! ## A315742.P11268737179230527496

`2*A008706(n)-A311535(n)`
-/

namespace A315742.P11268737179230527496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311535 n

end

end A315742.P11268737179230527496

namespace A315742

/-- `2*A008706(n)-A311535(n)` -/
def P11268737179230527496.Spec : Prop :=
  ∀ n, P11268737179230527496.a n = A315742 n

end A315742

/-! ## A315742.P853845110407670291

`(A315726(n)+A008458(n))/2`
-/

namespace A315742.P853845110407670291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315726 n + A008458 n : ℚ) / 2

end

end A315742.P853845110407670291

namespace A315742

/-- `(A315726(n)+A008458(n))/2` -/
def P853845110407670291.Spec : Prop :=
  ∀ n, P853845110407670291.a n = (A315742 n : ℚ)

end A315742

/-! ## A315742.P4406627013432559306

`A253262(n)+A312143(n)+n`
-/

namespace A315742.P4406627013432559306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A312143 n + (n : ℤ))

end

end A315742.P4406627013432559306

namespace A315742

/-- `A253262(n)+A312143(n)+n` -/
def P4406627013432559306.Spec : Prop :=
  ∀ n, P4406627013432559306.a n = A315742 n

theorem P4406627013432559306.correct : P4406627013432559306.Spec := by
  intro n
  simp only [A315742, Nat.add_sub_cancel, A315742.P4406627013432559306.a, A315742.P4234331020117959484.a, A253262, A253262.P6184646248567078382.a, A312143, A312143.P2878235992731397495.a, A313682, A313682.P7898542429883627702.a, A047263, A047263.P10177617567604490545.a, A313476, A313476.P1237108097731061015.a, A312903, A312903.P5186887365123370171.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315742

/-! ## A315742.P11385151295134726654

`A313053(n)+A330025(n)+n`
-/

namespace A315742.P11385151295134726654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + (A330025 n + (n : ℤ))

end

end A315742.P11385151295134726654

namespace A315742

/-- `A313053(n)+A330025(n)+n` -/
def P11385151295134726654.Spec : Prop :=
  ∀ n, P11385151295134726654.a n = A315742 n

end A315742

/-! ## A315742.P2770977749421019736

`A005843(n)-(n-A313682(n))`
-/

namespace A315742.P2770977749421019736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313682 n)

end

end A315742.P2770977749421019736

namespace A315742

/-- `A005843(n)-(n-A313682(n))` -/
def P2770977749421019736.Spec : Prop :=
  ∀ n, P2770977749421019736.a n = A315742 n

theorem P2770977749421019736.correct : P2770977749421019736.Spec := by
  intro n
  simp only [A315742, Nat.add_sub_cancel, A315742.P2770977749421019736.a, A315742.P4234331020117959484.a, A005843, A005843.P3167286115683555970.a, A313682, A313682.P7898542429883627702.a, A047263, A047263.P10177617567604490545.a, A313476, A313476.P1237108097731061015.a, A312903, A312903.P5186887365123370171.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315742

/-! ## A315742.P7126659264780161639

`abs(A008591(n)+n-A311535(n))`
-/

namespace A315742.P7126659264780161639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A311535 n)|

end

end A315742.P7126659264780161639

namespace A315742

/-- `abs(A008591(n)+n-A311535(n))` -/
def P7126659264780161639.Spec : Prop :=
  ∀ n, P7126659264780161639.a n = A315742 n

end A315742

/-! ## A315742.P10599223693369717881

`A330025(A330025(n)+n)+A301718(n)`
-/

namespace A315742.P10599223693369717881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A301718 n

end

end A315742.P10599223693369717881

namespace A315742

/-- `A330025(A330025(n)+n)+A301718(n)` -/
def P10599223693369717881.Spec : Prop :=
  ∀ n, P10599223693369717881.a n = A315742 n

end A315742

/-! ## A315742.P2690800341220210633

`A008458(n)+A008574(n)-A311535(n)`
-/

namespace A315742.P2690800341220210633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311535 n)

end

end A315742.P2690800341220210633

namespace A315742

/-- `A008458(n)+A008574(n)-A311535(n)` -/
def P2690800341220210633.Spec : Prop :=
  ∀ n, P2690800341220210633.a n = A315742 n

end A315742

/-! ## A315742.P15965732094223662393

`A250120(n)+A314020(n)-A008574(n)`
-/

namespace A315742.P15965732094223662393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314020 n - A008574 n)

end

end A315742.P15965732094223662393

namespace A315742

/-- `A250120(n)+A314020(n)-A008574(n)` -/
def P15965732094223662393.Spec : Prop :=
  ∀ n, P15965732094223662393.a n = A315742 n

end A315742

/-! ## A315742.P15363386307723331190

`A008458(n)+A250120(n)-A315069(n)`
-/

namespace A315742.P15363386307723331190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315069 n)

end

end A315742.P15363386307723331190

namespace A315742

/-- `A008458(n)+A250120(n)-A315069(n)` -/
def P15363386307723331190.Spec : Prop :=
  ∀ n, P15363386307723331190.a n = A315742 n

end A315742

/-! ## A315742.P5235099840685911698

`A005843(n)+A005843(A008574(n))-A311535(n)`
-/

namespace A315742.P5235099840685911698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311535 n)

end

end A315742.P5235099840685911698

namespace A315742

/-- `A005843(n)+A005843(A008574(n))-A311535(n)` -/
def P5235099840685911698.Spec : Prop :=
  ∀ n, P5235099840685911698.a n = A315742 n

end A315742

/-! ## A315742.P18400892486075871675

`A315749(n)+n-A151988(n)`
-/

namespace A315742.P18400892486075871675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n + ((n : ℤ) - A151988 n)

end

end A315742.P18400892486075871675

namespace A315742

/-- `A315749(n)+n-A151988(n)` -/
def P18400892486075871675.Spec : Prop :=
  ∀ n, P18400892486075871675.a n = A315742 n

end A315742

/-! ## A315742.P6814596179308070369

`A313928(n)+A253262(n)`
-/

namespace A315742.P6814596179308070369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n + A253262 n

end

end A315742.P6814596179308070369

namespace A315742

/-- `A313928(n)+A253262(n)` -/
def P6814596179308070369.Spec : Prop :=
  ∀ n, P6814596179308070369.a n = A315742 n

end A315742

/-! ## A315742.P8714388512526945789

`A005843(A008706(n))-A311535(n)`
-/

namespace A315742.P8714388512526945789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311535 n

end

end A315742.P8714388512526945789

namespace A315742

/-- `A005843(A008706(n))-A311535(n)` -/
def P8714388512526945789.Spec : Prop :=
  ∀ n, P8714388512526945789.a n = A315742 n

end A315742

/-!
# A315743: Coordination sequence Gal.6.334.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315743, the canonical program `A315743.P14010390675010090140` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315743 has offset 0).

The definition of A315743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315743.P10323790905911457508

`abs(A008592(n)-A311523(n))`
-/

namespace A315743.P10323790905911457508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311523 n|

end

end A315743.P10323790905911457508

namespace A315743

/-- `abs(A008592(n)-A311523(n))` -/
def P10323790905911457508.Spec : Prop :=
  ∀ n, P10323790905911457508.a n = A315743 n

end A315743

/-! ## A315743.P14010390675010090140

`A315695(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A315743

/-- `A315695(n)+Δ[A011864(n)]` -/
def P14010390675010090140.Spec : Prop :=
  ∀ n, P14010390675010090140.a n = A315743 n

theorem P14010390675010090140.correct : P14010390675010090140.Spec := by
  intro n
  simp only [A315743]

end A315743

/-! ## A315743.P5404115157774883744

`2*A008706(n)-A311523(n)`
-/

namespace A315743.P5404115157774883744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311523 n

end

end A315743.P5404115157774883744

namespace A315743

/-- `2*A008706(n)-A311523(n)` -/
def P5404115157774883744.Spec : Prop :=
  ∀ n, P5404115157774883744.a n = A315743 n

end A315743

/-! ## A315743.P16928983734886967926

`(A315728(n)+A008458(n))/2`
-/

namespace A315743.P16928983734886967926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315728 n + A008458 n : ℚ) / 2

end

end A315743.P16928983734886967926

namespace A315743

/-- `(A315728(n)+A008458(n))/2` -/
def P16928983734886967926.Spec : Prop :=
  ∀ n, P16928983734886967926.a n = (A315743 n : ℚ)

end A315743

/-! ## A315743.P8650591175102482761

`A135042(2*n+1)-A311523(n)`
-/

namespace A315743.P8650591175102482761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A311523 n

end

end A315743.P8650591175102482761

namespace A315743

/-- `A135042(2*n+1)-A311523(n)` -/
def P8650591175102482761.Spec : Prop :=
  ∀ n, P8650591175102482761.a n = A315743 n

end A315743

/-! ## A315743.P10553933401955525956

`A008458(n)+A008574(n)-A311523(n)`
-/

namespace A315743.P10553933401955525956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311523 n)

end

end A315743.P10553933401955525956

namespace A315743

/-- `A008458(n)+A008574(n)-A311523(n)` -/
def P10553933401955525956.Spec : Prop :=
  ∀ n, P10553933401955525956.a n = A315743 n

end A315743

/-! ## A315743.P69406321381526716

`A000096(C(2, n+2))+A008592(n)-A311523(n)`
-/

namespace A315743.P69406321381526716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (Nat.choose 2 (n + 2)) + (A008592 n - A311523 n)

end

end A315743.P69406321381526716

namespace A315743

/-- `A000096(C(2, n+2))+A008592(n)-A311523(n)` -/
def P69406321381526716.Spec : Prop :=
  ∀ n, P69406321381526716.a n = A315743 n

end A315743

/-! ## A315743.P16551259612048180422

`(A008592(n)-A311523(n))^A000124(C(2, n+2))`
-/

namespace A315743.P16551259612048180422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A311523 n : ℚ) ^ (A000124 (Nat.choose 2 (n + 2)) : ℤ)

end

end A315743.P16551259612048180422

namespace A315743

/-- `(A008592(n)-A311523(n))^A000124(C(2, n+2))` -/
def P16551259612048180422.Spec : Prop :=
  ∀ n, P16551259612048180422.a n = (A315743 n : ℚ)

end A315743

/-! ## A315743.P3379210239094517078

`A005843(n)+A005843(A008574(n))-A311523(n)`
-/

namespace A315743.P3379210239094517078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311523 n)

end

end A315743.P3379210239094517078

namespace A315743

/-- `A005843(n)+A005843(A008574(n))-A311523(n)` -/
def P3379210239094517078.Spec : Prop :=
  ∀ n, P3379210239094517078.a n = A315743 n

end A315743

/-! ## A315743.P9849374080187023491

`A311523(n)+A005843(A008706(n)-A311523(n))`
-/

namespace A315743.P9849374080187023491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311523 n + A005843 (A008706 n - A311523 n).toNat

end

end A315743.P9849374080187023491

namespace A315743

/-- `A311523(n)+A005843(A008706(n)-A311523(n))` -/
def P9849374080187023491.Spec : Prop :=
  ∀ n, P9849374080187023491.a n = A315743 n

end A315743

/-! ## A315743.P3862877613035930583

`A315728(n)+A001281(A008458(n)-A315728(n))`
-/

namespace A315743.P3862877613035930583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315728 n + A001281 (A008458 n - A315728 n).toNat

end

end A315743.P3862877613035930583

namespace A315743

/-- `A315728(n)+A001281(A008458(n)-A315728(n))` -/
def P3862877613035930583.Spec : Prop :=
  ∀ n, P3862877613035930583.a n = A315743 n

end A315743

/-! ## A315743.P2933435168085216272

`A315728(n)+A004525(A008458(n)-A315728(n))`
-/

namespace A315743.P2933435168085216272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315728 n + A004525 (A008458 n - A315728 n).toNat

end

end A315743.P2933435168085216272

namespace A315743

/-- `A315728(n)+A004525(A008458(n)-A315728(n))` -/
def P2933435168085216272.Spec : Prop :=
  ∀ n, P2933435168085216272.a n = A315743 n

end A315743

/-! ## A315743.P3052238830169496243

`A008458(n)-A004526(A008458(n)-A315728(n))`
-/

namespace A315743.P3052238830169496243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315728 n).toNat

end

end A315743.P3052238830169496243

namespace A315743

/-- `A008458(n)-A004526(A008458(n)-A315728(n))` -/
def P3052238830169496243.Spec : Prop :=
  ∀ n, P3052238830169496243.a n = A315743 n

end A315743

/-! ## A315743.P17499382617665698632

`A008590(n)+A001057(A311626(n))`
-/

namespace A315743.P17499382617665698632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + A001057 (A311626 n).toNat

end

end A315743.P17499382617665698632

namespace A315743

/-- `A008590(n)+A001057(A311626(n))` -/
def P17499382617665698632.Spec : Prop :=
  ∀ n, P17499382617665698632.a n = A315743 n

end A315743

/-! ## A315743.P2030577193217038402

`A008574(2*n)-A004526(A311626(n))`
-/

namespace A315743.P2030577193217038402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A004526 (A311626 n).toNat

end

end A315743.P2030577193217038402

namespace A315743

/-- `A008574(2*n)-A004526(A311626(n))` -/
def P2030577193217038402.Spec : Prop :=
  ∀ n, P2030577193217038402.a n = A315743 n

end A315743

/-! ## A315743.P4202059286889940216

`2*A008574(n)-A004525(A311626(n))`
-/

namespace A315743.P4202059286889940216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A311626 n).toNat

end

end A315743.P4202059286889940216

namespace A315743

/-- `2*A008574(n)-A004525(A311626(n))` -/
def P4202059286889940216.Spec : Prop :=
  ∀ n, P4202059286889940216.a n = A315743 n

end A315743

/-! ## A315743.P16880660590829781180

`A005843(A008706(n))-A311523(n)`
-/

namespace A315743.P16880660590829781180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311523 n

end

end A315743.P16880660590829781180

namespace A315743

/-- `A005843(A008706(n))-A311523(n)` -/
def P16880660590829781180.Spec : Prop :=
  ∀ n, P16880660590829781180.a n = A315743 n

end A315743

/-! ## A315743.P651110908914862454

`A005843(A008574(n)+n)-A311523(n)`
-/

namespace A315743.P651110908914862454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A311523 n

end

end A315743.P651110908914862454

namespace A315743

/-- `A005843(A008574(n)+n)-A311523(n)` -/
def P651110908914862454.Spec : Prop :=
  ∀ n, P651110908914862454.a n = A315743 n

end A315743

/-! ## A315743.P12229225202943964433

`A008486(n)+A004526(A315728(n))`
-/

namespace A315743.P12229225202943964433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315728 n).toNat

end

end A315743.P12229225202943964433

namespace A315743

/-- `A008486(n)+A004526(A315728(n))` -/
def P12229225202943964433.Spec : Prop :=
  ∀ n, P12229225202943964433.a n = A315743 n

end A315743

/-! ## A315743.P16431757099362986004

`A001281(A315728(n)+A008458(n))`
-/

namespace A315743.P16431757099362986004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315728 n + A008458 n).toNat

end

end A315743.P16431757099362986004

namespace A315743

/-- `A001281(A315728(n)+A008458(n))` -/
def P16431757099362986004.Spec : Prop :=
  ∀ n, P16431757099362986004.a n = A315743 n

end A315743

/-!
# A315744: Coordination sequence Gal.6.643.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315744, the canonical program `A315744.P16771703429452510069` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315744 has offset 0).

The definition of A315744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315744.P17458666594883294263

`A313684(n)+n`
-/

namespace A315744.P17458666594883294263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313684 n + (n : ℤ)

end

end A315744.P17458666594883294263

namespace A315744

/-- `A313684(n)+n` -/
def P17458666594883294263.Spec : Prop :=
  ∀ n, P17458666594883294263.a n = A315744 n

end A315744

/-! ## A315744.P16771703429452510069

`A314094(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315744

/-- `A314094(n)+A004396(n)` -/
def P16771703429452510069.Spec : Prop :=
  ∀ n, P16771703429452510069.a n = A315744 n

theorem P16771703429452510069.correct : P16771703429452510069.Spec := by
  intro n
  simp only [A315744]

end A315744

/-! ## A315744.P18205017631806706462

`abs(A008592(n)-A311512(n))`
-/

namespace A315744.P18205017631806706462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311512 n|

end

end A315744.P18205017631806706462

namespace A315744

/-- `abs(A008592(n)-A311512(n))` -/
def P18205017631806706462.Spec : Prop :=
  ∀ n, P18205017631806706462.a n = A315744 n

end A315744

/-! ## A315744.P11658541934084932930

`abs(A008593(n)-A313794(n))`
-/

namespace A315744.P11658541934084932930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313794 n|

end

end A315744.P11658541934084932930

namespace A315744

/-- `abs(A008593(n)-A313794(n))` -/
def P11658541934084932930.Spec : Prop :=
  ∀ n, P11658541934084932930.a n = A315744 n

end A315744

/-! ## A315744.P15138595358762720023

`A315467(n)+∑[A021913(n)]`
-/

namespace A315744.P15138595358762720023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315744.P15138595358762720023

namespace A315744

/-- `A315467(n)+∑[A021913(n)]` -/
def P15138595358762720023.Spec : Prop :=
  ∀ n, P15138595358762720023.a n = A315744 n

end A315744

/-! ## A315744.P10275382970232389157

`A315467(n)+Δ[A011848(n)]`
-/

namespace A315744.P10275382970232389157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n + (f1 (n + 1) - f1 n)

end

end A315744.P10275382970232389157

namespace A315744

/-- `A315467(n)+Δ[A011848(n)]` -/
def P10275382970232389157.Spec : Prop :=
  ∀ n, P10275382970232389157.a n = A315744 n

end A315744

/-! ## A315744.P10706738781024989794

`A313023(n)+A047424(n+1)`
-/

namespace A315744.P10706738781024989794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313023 n + A047424 (n + 1)

end

end A315744.P10706738781024989794

namespace A315744

/-- `A313023(n)+A047424(n+1)` -/
def P10706738781024989794.Spec : Prop :=
  ∀ n, P10706738781024989794.a n = A315744 n

end A315744

/-! ## A315744.P6462331160730874728

`A314668(n)+A047273(n+1)`
-/

namespace A315744.P6462331160730874728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n + A047273 (n + 1)

end

end A315744.P6462331160730874728

namespace A315744

/-- `A314668(n)+A047273(n+1)` -/
def P6462331160730874728.Spec : Prop :=
  ∀ n, P6462331160730874728.a n = A315744 n

end A315744

/-! ## A315744.P8574317404188621467

`A128834(n)+A313228(n)+n`
-/

namespace A315744.P8574317404188621467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313228 n + (n : ℤ))

end

end A315744.P8574317404188621467

namespace A315744

/-- `A128834(n)+A313228(n)+n` -/
def P8574317404188621467.Spec : Prop :=
  ∀ n, P8574317404188621467.a n = A315744 n

end A315744

/-! ## A315744.P12243946038919704498

`A315467(n)+n-A004525(n)`
-/

namespace A315744.P12243946038919704498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n + ((n : ℤ) - A004525 n)

end

end A315744.P12243946038919704498

namespace A315744

/-- `A315467(n)+n-A004525(n)` -/
def P12243946038919704498.Spec : Prop :=
  ∀ n, P12243946038919704498.a n = A315744 n

end A315744

/-! ## A315744.P751101835263135488

`A314094(n)+A004526(comp[4*n])`
-/

namespace A315744.P751101835263135488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A315744.P751101835263135488

namespace A315744

/-- `A314094(n)+A004526(comp[4*n])` -/
def P751101835263135488.Spec : Prop :=
  ∀ n, P751101835263135488.a n = A315744 n

end A315744

/-! ## A315744.P14500239452411621034

`A314094(n)+A002264(2*n+1)`
-/

namespace A315744.P14500239452411621034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A002264 (2 * n + 1)

end

end A315744.P14500239452411621034

namespace A315744

/-- `A314094(n)+A002264(2*n+1)` -/
def P14500239452411621034.Spec : Prop :=
  ∀ n, P14500239452411621034.a n = A315744 n

theorem P14500239452411621034.correct : P14500239452411621034.Spec := by
  intro n
  simp only [A315744, Nat.add_sub_cancel, A315744.P14500239452411621034.a, A315744.P16771703429452510069.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A314094, A314094.P14203817368862660609.a, A047263, A047263.P10177617567604490545.a, A312890, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315744

/-! ## A315744.P4830722364891425433

`2*n+A314668(n)-A004525(n)`
-/

namespace A315744.P4830722364891425433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A314668 n - A004525 n)

end

end A315744.P4830722364891425433

namespace A315744

/-- `2*n+A314668(n)-A004525(n)` -/
def P4830722364891425433.Spec : Prop :=
  ∀ n, P4830722364891425433.a n = A315744 n

end A315744

/-! ## A315744.P4620088719569322542

`A008458(n)+A008574(n)-A311512(n)`
-/

namespace A315744.P4620088719569322542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311512 n)

end

end A315744.P4620088719569322542

namespace A315744

/-- `A008458(n)+A008574(n)-A311512(n)` -/
def P4620088719569322542.Spec : Prop :=
  ∀ n, P4620088719569322542.a n = A315744 n

end A315744

/-! ## A315744.P6223072972914000234

`A004396(n)+A315675(n)-A004525(A004396(n))`
-/

namespace A315744.P6223072972914000234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315675 n - A004525 (A004396 n).toNat)

end

end A315744.P6223072972914000234

namespace A315744

/-- `A004396(n)+A315675(n)-A004525(A004396(n))` -/
def P6223072972914000234.Spec : Prop :=
  ∀ n, P6223072972914000234.a n = A315744 n

end A315744

/-! ## A315744.P15324246760546553884

`A004525(A315738(n))+3*n`
-/

namespace A315744.P15324246760546553884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315738 n).toNat + (3 * n : ℤ)

end

end A315744.P15324246760546553884

namespace A315744

/-- `A004525(A315738(n))+3*n` -/
def P15324246760546553884.Spec : Prop :=
  ∀ n, P15324246760546553884.a n = A315744 n

end A315744

/-!
# A315745: Coordination sequence Gal.4.137.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315745, the canonical program `A315745.P1982268987440364031` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315745 has offset 0).

The definition of A315745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315745.P1982268987440364031

`A313685(n)+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315745

/-- `A313685(n)+n` -/
def P1982268987440364031.Spec : Prop :=
  ∀ n, P1982268987440364031.a n = A315745 n

theorem P1982268987440364031.correct : P1982268987440364031.Spec := by
  intro n
  simp only [A315745]

end A315745

/-! ## A315745.P3642910955404629509

`abs(A008592(n)-A311501(n))`
-/

namespace A315745.P3642910955404629509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311501 n|

end

end A315745.P3642910955404629509

namespace A315745

/-- `abs(A008592(n)-A311501(n))` -/
def P3642910955404629509.Spec : Prop :=
  ∀ n, P3642910955404629509.a n = A315745 n

end A315745

/-! ## A315745.P17889587589100940280

`A315469(n)+∑[A021913(n)]`
-/

namespace A315745.P17889587589100940280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315745.P17889587589100940280

namespace A315745

/-- `A315469(n)+∑[A021913(n)]` -/
def P17889587589100940280.Spec : Prop :=
  ∀ n, P17889587589100940280.a n = A315745 n

end A315745

/-! ## A315745.P11600880660049931627

`A315469(n)+Δ[A011848(n)]`
-/

namespace A315745.P11600880660049931627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n + (f1 (n + 1) - f1 n)

end

end A315745.P11600880660049931627

namespace A315745

/-- `A315469(n)+Δ[A011848(n)]` -/
def P11600880660049931627.Spec : Prop :=
  ∀ n, P11600880660049931627.a n = A315745 n

end A315745

/-! ## A315745.P18316485151269701072

`A315685(n)+Δ[A011861(n)]`
-/

namespace A315745.P18316485151269701072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n + (f1 (n + 1) - f1 n)

end

end A315745.P18316485151269701072

namespace A315745

/-- `A315685(n)+Δ[A011861(n)]` -/
def P18316485151269701072.Spec : Prop :=
  ∀ n, P18316485151269701072.a n = A315745 n

end A315745

/-! ## A315745.P17916838839912237192

`A315469(n)+A004524(n+1)`
-/

namespace A315745.P17916838839912237192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n + A004524 (n + 1)

end

end A315745.P17916838839912237192

namespace A315745

/-- `A315469(n)+A004524(n+1)` -/
def P17916838839912237192.Spec : Prop :=
  ∀ n, P17916838839912237192.a n = A315745 n

end A315745

/-! ## A315745.P434408007714382662

`A314672(n)+A047273(n+1)`
-/

namespace A315745.P434408007714382662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A047273 (n + 1)

end

end A315745.P434408007714382662

namespace A315745

/-- `A314672(n)+A047273(n+1)` -/
def P434408007714382662.Spec : Prop :=
  ∀ n, P434408007714382662.a n = A315745 n

end A315745

/-! ## A315745.P11517624414359147046

`A314672(n)+A004525(3*n)`
-/

namespace A315745.P11517624414359147046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A004525 (3 * n)

end

end A315745.P11517624414359147046

namespace A315745

/-- `A314672(n)+A004525(3*n)` -/
def P11517624414359147046.Spec : Prop :=
  ∀ n, P11517624414359147046.a n = A315745 n

end A315745

/-! ## A315745.P5717356999459845512

`A046978(n)+A313115(n)+n`
-/

namespace A315745.P5717356999459845512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313115 n + (n : ℤ))

end

end A315745.P5717356999459845512

namespace A315745

/-- `A046978(n)+A313115(n)+n` -/
def P5717356999459845512.Spec : Prop :=
  ∀ n, P5717356999459845512.a n = A315745 n

end A315745

/-! ## A315745.P11443611129221757056

`A188510(n)+A310397(n)+n`
-/

namespace A315745.P11443611129221757056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n + (A310397 n + (n : ℤ))

end

end A315745.P11443611129221757056

namespace A315745

/-- `A188510(n)+A310397(n)+n` -/
def P11443611129221757056.Spec : Prop :=
  ∀ n, P11443611129221757056.a n = A315745 n

end A315745

/-! ## A315745.P17612845206529738841

`A315469(n)+n-A004525(n)`
-/

namespace A315745.P17612845206529738841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n + ((n : ℤ) - A004525 n)

end

end A315745.P17612845206529738841

namespace A315745

/-- `A315469(n)+n-A004525(n)` -/
def P17612845206529738841.Spec : Prop :=
  ∀ n, P17612845206529738841.a n = A315745 n

end A315745

/-! ## A315745.P4296477449511125678

`A301710(n)+A004525(A004525(n))`
-/

namespace A315745.P4296477449511125678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A004525 (A004525 n).toNat

end

end A315745.P4296477449511125678

namespace A315745

/-- `A301710(n)+A004525(A004525(n))` -/
def P4296477449511125678.Spec : Prop :=
  ∀ n, P4296477449511125678.a n = A315745 n

end A315745

/-! ## A315745.P1582630508942145874

`A008458(n)-A201629(A004525(n))/2`
-/

namespace A315745.P1582630508942145874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) - (A201629 (A004525 n).toNat : ℚ) / 2

end

end A315745.P1582630508942145874

namespace A315745

/-- `A008458(n)-A201629(A004525(n))/2` -/
def P1582630508942145874.Spec : Prop :=
  ∀ n, P1582630508942145874.a n = (A315745 n : ℚ)

end A315745

/-! ## A315745.P5791785726859271238

`A004525(A004525(n))+A301293(n)+n`
-/

namespace A315745.P5791785726859271238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A301293 n + (n : ℤ))

end

end A315745.P5791785726859271238

namespace A315745

/-- `A004525(A004525(n))+A301293(n)+n` -/
def P5791785726859271238.Spec : Prop :=
  ∀ n, P5791785726859271238.a n = A315745 n

end A315745

/-! ## A315745.P4114267613913091548

`A314090(n)+A004525(A004525(n)+n)`
-/

namespace A315745.P4114267613913091548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315745.P4114267613913091548

namespace A315745

/-- `A314090(n)+A004525(A004525(n)+n)` -/
def P4114267613913091548.Spec : Prop :=
  ∀ n, P4114267613913091548.a n = A315745 n

end A315745

/-! ## A315745.P15580146489272871545

`A315520(n)+A004525(n-A004525(n))`
-/

namespace A315745.P15580146489272871545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A315745.P15580146489272871545

namespace A315745

/-- `A315520(n)+A004525(n-A004525(n))` -/
def P15580146489272871545.Spec : Prop :=
  ∀ n, P15580146489272871545.a n = A315745 n

end A315745

/-! ## A315745.P18243694238557525735

`A008458(n)+A008574(n)-A311501(n)`
-/

namespace A315745.P18243694238557525735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311501 n)

end

end A315745.P18243694238557525735

namespace A315745

/-- `A008458(n)+A008574(n)-A311501(n)` -/
def P18243694238557525735.Spec : Prop :=
  ∀ n, P18243694238557525735.a n = A315745 n

end A315745

/-! ## A315745.P10766570148532008316

`A004525(n)+A310498(n)+A004525(A004525(n))`
-/

namespace A315745.P10766570148532008316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310498 n + A004525 (A004525 n).toNat)

end

end A315745.P10766570148532008316

namespace A315745

/-- `A004525(n)+A310498(n)+A004525(A004525(n))` -/
def P10766570148532008316.Spec : Prop :=
  ∀ n, P10766570148532008316.a n = A315745 n

end A315745

/-! ## A315745.P14852497179663433116

`A314250(n)+A046978(n)`
-/

namespace A315745.P14852497179663433116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n + A046978 n

end

end A315745.P14852497179663433116

namespace A315745

/-- `A314250(n)+A046978(n)` -/
def P14852497179663433116.Spec : Prop :=
  ∀ n, P14852497179663433116.a n = A315745 n

end A315745

/-!
# A315746: Coordination sequence Gal.6.637.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315746, the canonical program `A315746.P339001443445391414` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315746 has offset 0).

The definition of A315746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315746.P7209497473140758404

`abs(A008592(n)-A311481(n))`
-/

namespace A315746.P7209497473140758404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311481 n|

end

end A315746.P7209497473140758404

namespace A315746

/-- `abs(A008592(n)-A311481(n))` -/
def P7209497473140758404.Spec : Prop :=
  ∀ n, P7209497473140758404.a n = A315746 n

end A315746

/-! ## A315746.P18041790745135021819

`2*A008706(n)-A311481(n)`
-/

namespace A315746.P18041790745135021819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311481 n

end

end A315746.P18041790745135021819

namespace A315746

/-- `2*A008706(n)-A311481(n)` -/
def P18041790745135021819.Spec : Prop :=
  ∀ n, P18041790745135021819.a n = A315746 n

end A315746

/-! ## A315746.P12985591090595027709

`A008458(n)+A008574(n)-A311481(n)`
-/

namespace A315746.P12985591090595027709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311481 n)

end

end A315746.P12985591090595027709

namespace A315746

/-- `A008458(n)+A008574(n)-A311481(n)` -/
def P12985591090595027709.Spec : Prop :=
  ∀ n, P12985591090595027709.a n = A315746 n

end A315746

/-! ## A315746.P4979430984554671715

`A005843(A008706(n))-A311481(n)`
-/

namespace A315746.P4979430984554671715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311481 n

end

end A315746.P4979430984554671715

namespace A315746

/-- `A005843(A008706(n))-A311481(n)` -/
def P4979430984554671715.Spec : Prop :=
  ∀ n, P4979430984554671715.a n = A315746 n

end A315746

/-! ## A315746.P339001443445391414

`2*n+A004396(A315730(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A315746

/-- `2*n+A004396(A315730(n))` -/
def P339001443445391414.Spec : Prop :=
  ∀ n, P339001443445391414.a n = A315746 n

theorem P339001443445391414.correct : P339001443445391414.Spec := by
  intro n
  simp only [A315746]

end A315746

/-! ## A315746.P6373559408690568159

`A004396(A315740(n))+2*n`
-/

namespace A315746.P6373559408690568159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315740 n).toNat + (2 * n : ℤ)

end

end A315746.P6373559408690568159

namespace A315746

/-- `A004396(A315740(n))+2*n` -/
def P6373559408690568159.Spec : Prop :=
  ∀ n, P6373559408690568159.a n = A315746 n

end A315746

/-! ## A315746.P5797497940086415112

`A005843(n)+A004396(A315740(n))`
-/

namespace A315746.P5797497940086415112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315740 n).toNat

end

end A315746.P5797497940086415112

namespace A315746

/-- `A005843(n)+A004396(A315740(n))` -/
def P5797497940086415112.Spec : Prop :=
  ∀ n, P5797497940086415112.a n = A315746 n

end A315746

/-! ## A315746.P345894020892208739

`A008585(n)+A004396(A315730(n))-n`
-/

namespace A315746.P345894020892208739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A004396 (A315730 n).toNat - (n : ℤ))

end

end A315746.P345894020892208739

namespace A315746

/-- `A008585(n)+A004396(A315730(n))-n` -/
def P345894020892208739.Spec : Prop :=
  ∀ n, P345894020892208739.a n = A315746 n

theorem P345894020892208739.correct : P345894020892208739.Spec := by
  intro n
  simp only [A315746, Nat.add_sub_cancel, A315746.P345894020892208739.a, A315746.P339001443445391414.a, A004396, A004396.P17032557045289780609.a, A008585, A008585.P13732812384316341435.a, A315730, A315730.P12339410108613406190.f1, A315730.P12339410108613406190.a, A011864, A011864.P3547417513882699266.a, A315682, A315682.P15234509743992815969.f1, A315682.P15234509743992815969.a, A315643, A315643.P3183973614738207625.a, A004278, A004278.P6535296897428680900.a, A017089, A017089.P13709942329986306669.a, A313899, A313899.P8562321666356515905.f1, A313899.P8562321666356515905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315746

/-! ## A315746.P3326962511782068586

`A004396(2*A313689(n)-n)`
-/

namespace A315746.P3326962511782068586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313689 n - (n : ℤ)).toNat

end

end A315746.P3326962511782068586

namespace A315746

/-- `A004396(2*A313689(n)-n)` -/
def P3326962511782068586.Spec : Prop :=
  ∀ n, P3326962511782068586.a n = A315746 n

end A315746

/-! ## A315746.P16066110789617015666

`A004396(A315730(n)+A008486(n))`
-/

namespace A315746.P16066110789617015666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315730 n + A008486 n).toNat

end

end A315746.P16066110789617015666

namespace A315746

/-- `A004396(A315730(n)+A008486(n))` -/
def P16066110789617015666.Spec : Prop :=
  ∀ n, P16066110789617015666.a n = A315746 n

end A315746

/-! ## A315746.P10831367242811079255

`A004396(A315730(n)+A008585(n))`
-/

namespace A315746.P10831367242811079255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315730 n + A008585 n).toNat

end

end A315746.P10831367242811079255

namespace A315746

/-- `A004396(A315730(n)+A008585(n))` -/
def P10831367242811079255.Spec : Prop :=
  ∀ n, P10831367242811079255.a n = A315746 n

end A315746

/-! ## A315746.P561044089846685502

`A004396(A005843(A313689(n))-n)`
-/

namespace A315746.P561044089846685502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A313689 n).toNat - (n : ℤ)).toNat

end

end A315746.P561044089846685502

namespace A315746

/-- `A004396(A005843(A313689(n))-n)` -/
def P561044089846685502.Spec : Prop :=
  ∀ n, P561044089846685502.a n = A315746 n

end A315746

/-! ## A315746.P13331863030987230768

`A004396(A313689(n)+A313689(n)-n)`
-/

namespace A315746.P13331863030987230768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313689 n + (A313689 n - (n : ℤ))).toNat

end

end A315746.P13331863030987230768

namespace A315746

/-- `A004396(A313689(n)+A313689(n)-n)` -/
def P13331863030987230768.Spec : Prop :=
  ∀ n, P13331863030987230768.a n = A315746 n

end A315746

/-! ## A315746.P3594948112866836999

`A004396(A313689(n)-(n-A313689(n)))`
-/

namespace A315746.P3594948112866836999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313689 n - ((n : ℤ) - A313689 n)).toNat

end

end A315746.P3594948112866836999

namespace A315746

/-- `A004396(A313689(n)-(n-A313689(n)))` -/
def P3594948112866836999.Spec : Prop :=
  ∀ n, P3594948112866836999.a n = A315746 n

end A315746

/-!
# A315747: Coordination sequence Gal.6.638.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315747, the canonical program `A315747.P2406798804632364496` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315747 has offset 0).

The definition of A315747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315747.P2406798804632364496

`A313688(n)+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315747

/-- `A313688(n)+n` -/
def P2406798804632364496.Spec : Prop :=
  ∀ n, P2406798804632364496.a n = A315747 n

theorem P2406798804632364496.correct : P2406798804632364496.Spec := by
  intro n
  simp only [A315747]

end A315747

/-! ## A315747.P16389036509887460282

`abs(10*n-A311475(n))`
-/

namespace A315747.P16389036509887460282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311475 n|

end

end A315747.P16389036509887460282

namespace A315747

/-- `abs(10*n-A311475(n))` -/
def P16389036509887460282.Spec : Prop :=
  ∀ n, P16389036509887460282.a n = A315747 n

end A315747

/-! ## A315747.P3133934132296599456

`A314098(n)+round(2*n/3)`
-/

namespace A315747.P3133934132296599456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314098 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A315747.P3133934132296599456

namespace A315747

/-- `A314098(n)+round(2*n/3)` -/
def P3133934132296599456.Spec : Prop :=
  ∀ n, P3133934132296599456.a n = A315747 n

end A315747

/-! ## A315747.P5126192120969244780

`A314185(n)+A004525(n)`
-/

namespace A315747.P5126192120969244780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314185 n + A004525 n

end

end A315747.P5126192120969244780

namespace A315747

/-- `A314185(n)+A004525(n)` -/
def P5126192120969244780.Spec : Prop :=
  ∀ n, P5126192120969244780.a n = A315747 n

end A315747

/-! ## A315747.P15855924534016395185

`A315517(n)+∑[A022003(n)]`
-/

namespace A315747.P15855924534016395185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315747.P15855924534016395185

namespace A315747

/-- `A315517(n)+∑[A022003(n)]` -/
def P15855924534016395185.Spec : Prop :=
  ∀ n, P15855924534016395185.a n = A315747 n

end A315747

/-! ## A315747.P12473302850127021652

`A315517(n)+A002264(n+1)`
-/

namespace A315747.P12473302850127021652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n + A002264 (n + 1)

end

end A315747.P12473302850127021652

namespace A315747

/-- `A315517(n)+A002264(n+1)` -/
def P12473302850127021652.Spec : Prop :=
  ∀ n, P12473302850127021652.a n = A315747 n

end A315747

/-! ## A315747.P10214216263059347451

`A315517(n)+n-A004396(n)`
-/

namespace A315747.P10214216263059347451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n + ((n : ℤ) - A004396 n)

end

end A315747.P10214216263059347451

namespace A315747

/-- `A315517(n)+n-A004396(n)` -/
def P10214216263059347451.Spec : Prop :=
  ∀ n, P10214216263059347451.a n = A315747 n

end A315747

/-! ## A315747.P15457912614522386814

`A315474(n)+n-A004525(n)`
-/

namespace A315747.P15457912614522386814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315474 n + ((n : ℤ) - A004525 n)

end

end A315747.P15457912614522386814

namespace A315747

/-- `A315474(n)+n-A004525(n)` -/
def P15457912614522386814.Spec : Prop :=
  ∀ n, P15457912614522386814.a n = A315747 n

theorem P15457912614522386814.correct : P15457912614522386814.Spec := by
  intro n
  simp only [A315747, Nat.add_sub_cancel, A315747.P15457912614522386814.a, A315747.P2406798804632364496.a, A004525, A004525.P4158271949796742323.a, A313688, A313688.P17375100154566226301.a, A315474, A315474.P12078327233869997343.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315747

/-! ## A315747.P6425560511605654759

`A315522(n)+A004525(n-A004396(n))`
-/

namespace A315747.P6425560511605654759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A315747.P6425560511605654759

namespace A315747

/-- `A315522(n)+A004525(n-A004396(n))` -/
def P6425560511605654759.Spec : Prop :=
  ∀ n, P6425560511605654759.a n = A315747 n

end A315747

/-! ## A315747.P10112604060775442635

`A008458(n)+A008574(n)-A311475(n)`
-/

namespace A315747.P10112604060775442635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311475 n)

end

end A315747.P10112604060775442635

namespace A315747

/-- `A008458(n)+A008574(n)-A311475(n)` -/
def P10112604060775442635.Spec : Prop :=
  ∀ n, P10112604060775442635.a n = A315747 n

end A315747

/-! ## A315747.P12668188962250846929

`A008486(n)+A315517(n)-A008576(n)`
-/

namespace A315747.P12668188962250846929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315517 n - A008576 n)

end

end A315747.P12668188962250846929

namespace A315747

/-- `A008486(n)+A315517(n)-A008576(n)` -/
def P12668188962250846929.Spec : Prop :=
  ∀ n, P12668188962250846929.a n = A315747 n

end A315747

/-! ## A315747.P6174182932315326294

`A004396(A315741(n))+2*n`
-/

namespace A315747.P6174182932315326294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315741 n).toNat + (2 * n : ℤ)

end

end A315747.P6174182932315326294

namespace A315747

/-- `A004396(A315741(n))+2*n` -/
def P6174182932315326294.Spec : Prop :=
  ∀ n, P6174182932315326294.a n = A315747 n

end A315747

/-! ## A315747.P1129657793215312206

`A005843(n)+A004396(A313680(n)+n)`
-/

namespace A315747.P1129657793215312206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313680 n + (n : ℤ)).toNat

end

end A315747.P1129657793215312206

namespace A315747

/-- `A005843(n)+A004396(A313680(n)+n)` -/
def P1129657793215312206.Spec : Prop :=
  ∀ n, P1129657793215312206.a n = A315747 n

end A315747

/-! ## A315747.P2055768924065777617

`n-A001057(2*A313688(n))`
-/

namespace A315747.P2055768924065777617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A313688 n).toNat

end

end A315747.P2055768924065777617

namespace A315747

/-- `n-A001057(2*A313688(n))` -/
def P2055768924065777617.Spec : Prop :=
  ∀ n, P2055768924065777617.a n = A315747 n

end A315747

/-! ## A315747.P14193923050403183031

`A314825(n)+A042965(n+1)`
-/

namespace A315747.P14193923050403183031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + A042965 (n + 1)

end

end A315747.P14193923050403183031

namespace A315747

/-- `A314825(n)+A042965(n+1)` -/
def P14193923050403183031.Spec : Prop :=
  ∀ n, P14193923050403183031.a n = A315747 n

end A315747

/-! ## A315747.P15727524323648081137

`A314825(n)+A004396(2*n)`
-/

namespace A315747.P15727524323648081137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + A004396 (2 * n)

end

end A315747.P15727524323648081137

namespace A315747

/-- `A314825(n)+A004396(2*n)` -/
def P15727524323648081137.Spec : Prop :=
  ∀ n, P15727524323648081137.a n = A315747 n

end A315747

/-! ## A315747.P16209645499723014245

`A008574(n)+A314825(n)-A008576(n)`
-/

namespace A315747.P16209645499723014245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314825 n - A008576 n)

end

end A315747.P16209645499723014245

namespace A315747

/-- `A008574(n)+A314825(n)-A008576(n)` -/
def P16209645499723014245.Spec : Prop :=
  ∀ n, P16209645499723014245.a n = A315747 n

end A315747

/-!
# A315748: Coordination sequence Gal.5.294.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315748, the canonical program `A315748.P2319200276665506335` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315748 has offset 0).

The definition of A315748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315748.P2319200276665506335

`A314099(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315748

/-- `A314099(n)+A004396(n)` -/
def P2319200276665506335.Spec : Prop :=
  ∀ n, P2319200276665506335.a n = A315748 n

theorem P2319200276665506335.correct : P2319200276665506335.Spec := by
  intro n
  simp only [A315748]

end A315748

/-! ## A315748.P8809696788536830280

`abs(A008592(n)-A311458(n))`
-/

namespace A315748.P8809696788536830280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311458 n|

end

end A315748.P8809696788536830280

namespace A315748

/-- `abs(A008592(n)-A311458(n))` -/
def P8809696788536830280.Spec : Prop :=
  ∀ n, P8809696788536830280.a n = A315748 n

end A315748

/-! ## A315748.P8278340966546812414

`A314828(n)+∑[A101825(n)]`
-/

namespace A315748.P8278340966546812414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315748.P8278340966546812414

namespace A315748

/-- `A314828(n)+∑[A101825(n)]` -/
def P8278340966546812414.Spec : Prop :=
  ∀ n, P8278340966546812414.a n = A315748 n

end A315748

/-! ## A315748.P14136263684523332428

`A315690(n)+Δ[A011862(n)]`
-/

namespace A315748.P14136263684523332428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n + (f1 (n + 1) - f1 n)

end

end A315748.P14136263684523332428

namespace A315748

/-- `A315690(n)+Δ[A011862(n)]` -/
def P14136263684523332428.Spec : Prop :=
  ∀ n, P14136263684523332428.a n = A315748 n

end A315748

/-! ## A315748.P5963008122879345998

`A314828(n)+record[A283971(n)]`
-/

namespace A315748.P5963008122879345998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315748.P5963008122879345998

namespace A315748

/-- `A314828(n)+record[A283971(n)]` -/
def P5963008122879345998.Spec : Prop :=
  ∀ n, P5963008122879345998.a n = A315748 n

end A315748

/-! ## A315748.P8944085380547727516

`A314828(n)+A042965(n+1)`
-/

namespace A315748.P8944085380547727516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A042965 (n + 1)

end

end A315748.P8944085380547727516

namespace A315748

/-- `A314828(n)+A042965(n+1)` -/
def P8944085380547727516.Spec : Prop :=
  ∀ n, P8944085380547727516.a n = A315748 n

end A315748

/-! ## A315748.P17972562892966751084

`A314828(n)+A004396(2*n)`
-/

namespace A315748.P17972562892966751084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 (2 * n)

end

end A315748.P17972562892966751084

namespace A315748

/-- `A314828(n)+A004396(2*n)` -/
def P17972562892966751084.Spec : Prop :=
  ∀ n, P17972562892966751084.a n = A315748 n

end A315748

/-! ## A315748.P11698000389998752766

`(A315731(n)+A008458(n))/2`
-/

namespace A315748.P11698000389998752766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315731 n + A008458 n : ℚ) / 2

end

end A315748.P11698000389998752766

namespace A315748

/-- `(A315731(n)+A008458(n))/2` -/
def P11698000389998752766.Spec : Prop :=
  ∀ n, P11698000389998752766.a n = (A315748 n : ℚ)

end A315748

/-! ## A315748.P3659752268011596379

`A314099(n)+A002264(2*n+1)`
-/

namespace A315748.P3659752268011596379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314099 n + A002264 (2 * n + 1)

end

end A315748.P3659752268011596379

namespace A315748

/-- `A314099(n)+A002264(2*n+1)` -/
def P3659752268011596379.Spec : Prop :=
  ∀ n, P3659752268011596379.a n = A315748 n

theorem P3659752268011596379.correct : P3659752268011596379.Spec := by
  intro n
  simp only [A315748, Nat.add_sub_cancel, A315748.P3659752268011596379.a, A315748.P2319200276665506335.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A314099, A314099.P18395783485758796748.a, A042965, A042965.P10256174339092268817.a, A312893, A312893.P922128372979076951.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315748

/-! ## A315748.P4709594221228979434

`A313721(n)+A004396(A004396(2*n))`
-/

namespace A315748.P4709594221228979434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A004396 (A004396 (2 * n)).toNat

end

end A315748.P4709594221228979434

namespace A315748

/-- `A313721(n)+A004396(A004396(2*n))` -/
def P4709594221228979434.Spec : Prop :=
  ∀ n, P4709594221228979434.a n = A315748 n

end A315748

/-! ## A315748.P934850962106070468

`A315523(n)+A004396(n-A004396(n))`
-/

namespace A315748.P934850962106070468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315748.P934850962106070468

namespace A315748

/-- `A315523(n)+A004396(n-A004396(n))` -/
def P934850962106070468.Spec : Prop :=
  ∀ n, P934850962106070468.a n = A315748 n

end A315748

/-! ## A315748.P11987423726245963380

`A008458(n)+A008574(n)-A311458(n)`
-/

namespace A315748.P11987423726245963380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311458 n)

end

end A315748.P11987423726245963380

namespace A315748

/-- `A008458(n)+A008574(n)-A311458(n)` -/
def P11987423726245963380.Spec : Prop :=
  ∀ n, P11987423726245963380.a n = A315748 n

end A315748

/-! ## A315748.P4436546112301586719

`A008574(n)+A314828(n)-A008576(n)`
-/

namespace A315748.P4436546112301586719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314828 n - A008576 n)

end

end A315748.P4436546112301586719

namespace A315748

/-- `A008574(n)+A314828(n)-A008576(n)` -/
def P4436546112301586719.Spec : Prop :=
  ∀ n, P4436546112301586719.a n = A315748 n

end A315748

/-! ## A315748.P14599178342147309046

`A004396(n)+A315690(n)-A004396(A004396(n))`
-/

namespace A315748.P14599178342147309046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315690 n - A004396 (A004396 n).toNat)

end

end A315748.P14599178342147309046

namespace A315748

/-- `A004396(n)+A315690(n)-A004396(A004396(n))` -/
def P14599178342147309046.Spec : Prop :=
  ∀ n, P14599178342147309046.a n = A315748 n

end A315748

/-! ## A315748.P17507530942120880614

`A005843(n)+A005843(A008574(n))-A311458(n)`
-/

namespace A315748.P17507530942120880614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311458 n)

end

end A315748.P17507530942120880614

namespace A315748

/-- `A005843(n)+A005843(A008574(n))-A311458(n)` -/
def P17507530942120880614.Spec : Prop :=
  ∀ n, P17507530942120880614.a n = A315748 n

end A315748

/-! ## A315748.P10168472069566287388

`A005843(A008574(n)+n)-A311458(n)`
-/

namespace A315748.P10168472069566287388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A311458 n

end

end A315748.P10168472069566287388

namespace A315748

/-- `A005843(A008574(n)+n)-A311458(n)` -/
def P10168472069566287388.Spec : Prop :=
  ∀ n, P10168472069566287388.a n = A315748 n

end A315748

/-! ## A315748.P18022424901908804621

`A313614(2*n)-4*n`
-/

namespace A315748.P18022424901908804621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 (2 * n) - (4 * n : ℤ)

end

end A315748.P18022424901908804621

namespace A315748

/-- `A313614(2*n)-4*n` -/
def P18022424901908804621.Spec : Prop :=
  ∀ n, P18022424901908804621.a n = A315748 n

end A315748

/-! ## A315748.P6007672051805082709

`2*A008574(2*n)-A313835(2*n)`
-/

namespace A315748.P6007672051805082709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313835 (2 * n)

end

end A315748.P6007672051805082709

namespace A315748

/-- `2*A008574(2*n)-A313835(2*n)` -/
def P6007672051805082709.Spec : Prop :=
  ∀ n, P6007672051805082709.a n = A315748 n

end A315748

/-! ## A315748.P13685370437799643882

`A004525(A310412(2*n))+A004396(A004396(2*n))`
-/

namespace A315748.P13685370437799643882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310412 (2 * n)).toNat + A004396 (A004396 (2 * n)).toNat

end

end A315748.P13685370437799643882

namespace A315748

/-- `A004525(A310412(2*n))+A004396(A004396(2*n))` -/
def P13685370437799643882.Spec : Prop :=
  ∀ n, P13685370437799643882.a n = A315748 n

end A315748

/-!
# A315749: Coordination sequence Gal.5.295.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315749, the canonical program `A315749.P13778468742197853903` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315749 has offset 0).

The definition of A315749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315749.P13778468742197853903

`A313692(n)+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315749

/-- `A313692(n)+n` -/
def P13778468742197853903.Spec : Prop :=
  ∀ n, P13778468742197853903.a n = A315749 n

theorem P13778468742197853903.correct : P13778468742197853903.Spec := by
  intro n
  simp only [A315749]

end A315749

/-! ## A315749.P14728004220278049431

`A313682(n)+A151988(n)`
-/

namespace A315749.P14728004220278049431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n + A151988 n

end

end A315749.P14728004220278049431

namespace A315749

/-- `A313682(n)+A151988(n)` -/
def P14728004220278049431.Spec : Prop :=
  ∀ n, P14728004220278049431.a n = A315749 n

end A315749

/-! ## A315749.P11254471559938081090

`A312892(n)+A047448(n+1)`
-/

namespace A315749.P11254471559938081090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + A047448 (n + 1)

end

end A315749.P11254471559938081090

namespace A315749

/-- `A312892(n)+A047448(n+1)` -/
def P11254471559938081090.Spec : Prop :=
  ∀ n, P11254471559938081090.a n = A315749 n

theorem P11254471559938081090.correct : P11254471559938081090.Spec := by
  intro n
  simp only [A315749, Nat.add_sub_cancel, A315749.P11254471559938081090.a, A315749.P13778468742197853903.a, A047448, A047448.P12851231882716690150.a, A312892, A312892.P8731984914629007574.a, A313692, A313692.P7381687034045997065.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315749

/-! ## A315749.P3872970618377396424

`A313025(n)+A047363(n+1)`
-/

namespace A315749.P3872970618377396424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313025 n + A047363 (n + 1)

end

end A315749.P3872970618377396424

namespace A315749

/-- `A313025(n)+A047363(n+1)` -/
def P3872970618377396424.Spec : Prop :=
  ∀ n, P3872970618377396424.a n = A315749 n

end A315749

/-! ## A315749.P4875404076851842156

`A313506(n)+A047263(n+1)`
-/

namespace A315749.P4875404076851842156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n + A047263 (n + 1)

end

end A315749.P4875404076851842156

namespace A315749

/-- `A313506(n)+A047263(n+1)` -/
def P4875404076851842156.Spec : Prop :=
  ∀ n, P4875404076851842156.a n = A315749 n

end A315749

/-! ## A315749.P8517644123576388966

`1-(A024000(n)-A313692(n))`
-/

namespace A315749.P8517644123576388966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024000 n - A313692 n)

end

end A315749.P8517644123576388966

namespace A315749

/-- `1-(A024000(n)-A313692(n))` -/
def P8517644123576388966.Spec : Prop :=
  ∀ n, P8517644123576388966.a n = A315749 n

theorem P8517644123576388966.correct : P8517644123576388966.Spec := by
  intro n
  simp only [A315749, Nat.add_sub_cancel, A315749.P8517644123576388966.a, A315749.P13778468742197853903.a, A024000, A024000.P8748414335487061084.a, A313692, A313692.P7381687034045997065.a, A047448, A047448.P12851231882716690150.a, A312892, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315749

/-! ## A315749.P9950275974815794231

`2*A008706(n)-A311440(n)`
-/

namespace A315749.P9950275974815794231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311440 n

end

end A315749.P9950275974815794231

namespace A315749

/-- `2*A008706(n)-A311440(n)` -/
def P9950275974815794231.Spec : Prop :=
  ∀ n, P9950275974815794231.a n = A315749 n

end A315749

/-! ## A315749.P1144118009977023509

`(A315732(n)+A008458(n))/2`
-/

namespace A315749.P1144118009977023509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315732 n + A008458 n : ℚ) / 2

end

end A315749.P1144118009977023509

namespace A315749

/-- `(A315732(n)+A008458(n))/2` -/
def P1144118009977023509.Spec : Prop :=
  ∀ n, P1144118009977023509.a n = (A315749 n : ℚ)

end A315749

/-! ## A315749.P134143193852803062

`A253262(n)+A312162(n)+n`
-/

namespace A315749.P134143193852803062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A312162 n + (n : ℤ))

end

end A315749.P134143193852803062

namespace A315749

/-- `A253262(n)+A312162(n)+n` -/
def P134143193852803062.Spec : Prop :=
  ∀ n, P134143193852803062.a n = A315749 n

end A315749

/-! ## A315749.P795779502525229787

`A313078(n)+A330025(n)+n`
-/

namespace A315749.P795779502525229787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n + (A330025 n + (n : ℤ))

end

end A315749.P795779502525229787

namespace A315749

/-- `A313078(n)+A330025(n)+n` -/
def P795779502525229787.Spec : Prop :=
  ∀ n, P795779502525229787.a n = A315749 n

theorem P795779502525229787.correct : P795779502525229787.Spec := by
  intro n
  simp only [A315749, Nat.add_sub_cancel, A315749.P795779502525229787.a, A315749.P13778468742197853903.a, A313078, A313078.P17380493994389403351.a, A313692, A313692.P7381687034045997065.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A047448, A047448.P12851231882716690150.a, A312892, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315749

/-! ## A315749.P12314720441051677818

`A315445(n)+n-A330025(n)`
-/

namespace A315749.P12314720441051677818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n + ((n : ℤ) - A330025 n)

end

end A315749.P12314720441051677818

namespace A315749

/-- `A315445(n)+n-A330025(n)` -/
def P12314720441051677818.Spec : Prop :=
  ∀ n, P12314720441051677818.a n = A315749 n

end A315749

/-! ## A315749.P2137028359784820149

`A005843(n)-(n-A313692(n))`
-/

namespace A315749.P2137028359784820149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313692 n)

end

end A315749.P2137028359784820149

namespace A315749

/-- `A005843(n)-(n-A313692(n))` -/
def P2137028359784820149.Spec : Prop :=
  ∀ n, P2137028359784820149.a n = A315749 n

theorem P2137028359784820149.correct : P2137028359784820149.Spec := by
  intro n
  simp only [A315749, Nat.add_sub_cancel, A315749.P2137028359784820149.a, A315749.P13778468742197853903.a, A005843, A005843.P3167286115683555970.a, A313692, A313692.P7381687034045997065.a, A047448, A047448.P12851231882716690150.a, A312892, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315749

/-! ## A315749.P3464369155657800761

`A008458(n)+A008574(n)-A311440(n)`
-/

namespace A315749.P3464369155657800761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311440 n)

end

end A315749.P3464369155657800761

namespace A315749

/-- `A008458(n)+A008574(n)-A311440(n)` -/
def P3464369155657800761.Spec : Prop :=
  ∀ n, P3464369155657800761.a n = A315749 n

end A315749

/-! ## A315749.P16269023445398152289

`A250120(n)+A314027(n)-A008574(n)`
-/

namespace A315749.P16269023445398152289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314027 n - A008574 n)

end

end A315749.P16269023445398152289

namespace A315749

/-- `A250120(n)+A314027(n)-A008574(n)` -/
def P16269023445398152289.Spec : Prop :=
  ∀ n, P16269023445398152289.a n = A315749 n

end A315749

/-! ## A315749.P16529959196538605826

`A008458(n)+A250120(n)-A315060(n)`
-/

namespace A315749.P16529959196538605826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315060 n)

end

end A315749.P16529959196538605826

namespace A315749

/-- `A008458(n)+A250120(n)-A315060(n)` -/
def P16529959196538605826.Spec : Prop :=
  ∀ n, P16529959196538605826.a n = A315749 n

end A315749

/-! ## A315749.P11018077859526876178

`A005843(n)+A005843(A008574(n))-A311440(n)`
-/

namespace A315749.P11018077859526876178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311440 n)

end

end A315749.P11018077859526876178

namespace A315749

/-- `A005843(n)+A005843(A008574(n))-A311440(n)` -/
def P11018077859526876178.Spec : Prop :=
  ∀ n, P11018077859526876178.a n = A315749 n

end A315749

/-! ## A315749.P15128403977371256448

`A330025(A330025(n)+n)+A314252(n)`
-/

namespace A315749.P15128403977371256448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A314252 n

end

end A315749.P15128403977371256448

namespace A315749

/-- `A330025(A330025(n)+n)+A314252(n)` -/
def P15128403977371256448.Spec : Prop :=
  ∀ n, P15128403977371256448.a n = A315749 n

end A315749

/-! ## A315749.P17403574060553895865

`A005843(A008574(n)+n)-A311440(n)`
-/

namespace A315749.P17403574060553895865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A311440 n

end

end A315749.P17403574060553895865

namespace A315749

/-- `A005843(A008574(n)+n)-A311440(n)` -/
def P17403574060553895865.Spec : Prop :=
  ∀ n, P17403574060553895865.a n = A315749 n

end A315749

/-! ## A315749.P17108841461833677157

`A005843(A008458(n))-(A313782(n)+n)`
-/

namespace A315749.P17108841461833677157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n).toNat - (A313782 n + (n : ℤ))

end

end A315749.P17108841461833677157

namespace A315749

/-- `A005843(A008458(n))-(A313782(n)+n)` -/
def P17108841461833677157.Spec : Prop :=
  ∀ n, P17108841461833677157.a n = A315749 n

end A315749

/-!
# A315750: Coordination sequence Gal.6.627.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315750, the canonical program `A315750.P12054932754406316108` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315750 has offset 0).

The definition of A315750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315750.P12054932754406316108

`abs(A008592(n)-A311434(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315750

/-- `abs(A008592(n)-A311434(n))` -/
def P12054932754406316108.Spec : Prop :=
  ∀ n, P12054932754406316108.a n = A315750 n

theorem P12054932754406316108.correct : P12054932754406316108.Spec := by
  intro n
  simp only [A315750]

end A315750

/-! ## A315750.P13675869077279028511

`A315699(n)+Δ[A011864(n)]`
-/

namespace A315750.P13675869077279028511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315699 n + (f1 (n + 1) - f1 n)

end

end A315750.P13675869077279028511

namespace A315750

/-- `A315699(n)+Δ[A011864(n)]` -/
def P13675869077279028511.Spec : Prop :=
  ∀ n, P13675869077279028511.a n = A315750 n

end A315750

/-! ## A315750.P12440707697746365359

`2*A008706(n)-A311434(n)`
-/

namespace A315750.P12440707697746365359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311434 n

end

end A315750.P12440707697746365359

namespace A315750

/-- `2*A008706(n)-A311434(n)` -/
def P12440707697746365359.Spec : Prop :=
  ∀ n, P12440707697746365359.a n = A315750 n

end A315750

/-! ## A315750.P4462407208245775404

`(A315733(n)+A008458(n))/2`
-/

namespace A315750.P4462407208245775404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315733 n + A008458 n : ℚ) / 2

end

end A315750.P4462407208245775404

namespace A315750

/-- `(A315733(n)+A008458(n))/2` -/
def P4462407208245775404.Spec : Prop :=
  ∀ n, P4462407208245775404.a n = (A315750 n : ℚ)

end A315750

/-! ## A315750.P3860039660840697774

`A008458(n)+A008574(n)-A311434(n)`
-/

namespace A315750.P3860039660840697774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311434 n)

end

end A315750.P3860039660840697774

namespace A315750

/-- `A008458(n)+A008574(n)-A311434(n)` -/
def P3860039660840697774.Spec : Prop :=
  ∀ n, P3860039660840697774.a n = A315750 n

end A315750

/-! ## A315750.P14078135391143855534

`A005843(n)+A005843(A008574(n))-A311434(n)`
-/

namespace A315750.P14078135391143855534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311434 n)

end

end A315750.P14078135391143855534

namespace A315750

/-- `A005843(n)+A005843(A008574(n))-A311434(n)` -/
def P14078135391143855534.Spec : Prop :=
  ∀ n, P14078135391143855534.a n = A315750 n

end A315750

/-! ## A315750.P12950527563608429381

`A315733(n)+A001281(A008458(n)-A315733(n))`
-/

namespace A315750.P12950527563608429381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n + A001281 (A008458 n - A315733 n).toNat

end

end A315750.P12950527563608429381

namespace A315750

/-- `A315733(n)+A001281(A008458(n)-A315733(n))` -/
def P12950527563608429381.Spec : Prop :=
  ∀ n, P12950527563608429381.a n = A315750 n

end A315750

/-! ## A315750.P8740285535093770487

`A008486(A005843(n))+A313696(n)-A313738(n)`
-/

namespace A315750.P8740285535093770487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A005843 n).toNat + (A313696 n - A313738 n)

end

end A315750.P8740285535093770487

namespace A315750

/-- `A008486(A005843(n))+A313696(n)-A313738(n)` -/
def P8740285535093770487.Spec : Prop :=
  ∀ n, P8740285535093770487.a n = A315750 n

end A315750

/-! ## A315750.P11914317933448124695

`A005843(A008706(n))-A311434(n)`
-/

namespace A315750.P11914317933448124695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311434 n

end

end A315750.P11914317933448124695

namespace A315750

/-- `A005843(A008706(n))-A311434(n)` -/
def P11914317933448124695.Spec : Prop :=
  ∀ n, P11914317933448124695.a n = A315750 n

end A315750

/-! ## A315750.P3857668541799115024

`A005843(A008574(n)+n)-A311434(n)`
-/

namespace A315750.P3857668541799115024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A311434 n

end

end A315750.P3857668541799115024

namespace A315750

/-- `A005843(A008574(n)+n)-A311434(n)` -/
def P3857668541799115024.Spec : Prop :=
  ∀ n, P3857668541799115024.a n = A315750 n

end A315750

/-! ## A315750.P8741631105408505244

`A005843(n)+A004396(A313689(n)+n)`
-/

namespace A315750.P8741631105408505244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313689 n + (n : ℤ)).toNat

end

end A315750.P8741631105408505244

namespace A315750

/-- `A005843(n)+A004396(A313689(n)+n)` -/
def P8741631105408505244.Spec : Prop :=
  ∀ n, P8741631105408505244.a n = A315750 n

end A315750

/-! ## A315750.P15167933510041687872

`A313722(2*n)-4*n`
-/

namespace A315750.P15167933510041687872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313722 (2 * n) - (4 * n : ℤ)

end

end A315750.P15167933510041687872

namespace A315750

/-- `A313722(2*n)-4*n` -/
def P15167933510041687872.Spec : Prop :=
  ∀ n, P15167933510041687872.a n = A315750 n

end A315750

/-! ## A315750.P11771893588005130319

`2*A008574(2*n)-A313745(2*n)`
-/

namespace A315750.P11771893588005130319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313745 (2 * n)

end

end A315750.P11771893588005130319

namespace A315750

/-- `2*A008574(2*n)-A313745(2*n)` -/
def P11771893588005130319.Spec : Prop :=
  ∀ n, P11771893588005130319.a n = A315750 n

end A315750

/-! ## A315750.P4073969620609668856

`A004396(A313689(n)+A008574(n))`
-/

namespace A315750.P4073969620609668856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313689 n + A008574 n).toNat

end

end A315750.P4073969620609668856

namespace A315750

/-- `A004396(A313689(n)+A008574(n))` -/
def P4073969620609668856.Spec : Prop :=
  ∀ n, P4073969620609668856.a n = A315750 n

end A315750

/-! ## A315750.P4600120317868136359

`A004396(A313689(n)+A008586(n))`
-/

namespace A315750.P4600120317868136359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313689 n + A008586 n).toNat

end

end A315750.P4600120317868136359

namespace A315750

/-- `A004396(A313689(n)+A008586(n))` -/
def P4600120317868136359.Spec : Prop :=
  ∀ n, P4600120317868136359.a n = A315750 n

end A315750

/-! ## A315750.P4156069186714879527

`A001281(A315733(n)+A008458(n))`
-/

namespace A315750.P4156069186714879527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315733 n + A008458 n).toNat

end

end A315750.P4156069186714879527

namespace A315750

/-- `A001281(A315733(n)+A008458(n))` -/
def P4156069186714879527.Spec : Prop :=
  ∀ n, P4156069186714879527.a n = A315750 n

end A315750

/-!
# A315751: Coordination sequence Gal.6.628.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315751, the canonical program `A315751.P7664283178857553201` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315751 has offset 0).

The definition of A315751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315751.P7664283178857553201

`A313693(n)+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315751

/-- `A313693(n)+n` -/
def P7664283178857553201.Spec : Prop :=
  ∀ n, P7664283178857553201.a n = A315751 n

theorem P7664283178857553201.correct : P7664283178857553201.Spec := by
  intro n
  simp only [A315751]

end A315751

/-! ## A315751.P1930024388922156450

`abs(10*n-A311426(n))`
-/

namespace A315751.P1930024388922156450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311426 n|

end

end A315751.P1930024388922156450

namespace A315751

/-- `abs(10*n-A311426(n))` -/
def P1930024388922156450.Spec : Prop :=
  ∀ n, P1930024388922156450.a n = A315751 n

end A315751

/-! ## A315751.P8832030973295221570

`abs(A008593(n)-A313781(n))`
-/

namespace A315751.P8832030973295221570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313781 n|

end

end A315751.P8832030973295221570

namespace A315751

/-- `abs(A008593(n)-A313781(n))` -/
def P8832030973295221570.Spec : Prop :=
  ∀ n, P8832030973295221570.a n = A315751 n

end A315751

/-! ## A315751.P830865923251306637

`A315476(n)+∑[A021913(n)]`
-/

namespace A315751.P830865923251306637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315751.P830865923251306637

namespace A315751

/-- `A315476(n)+∑[A021913(n)]` -/
def P830865923251306637.Spec : Prop :=
  ∀ n, P830865923251306637.a n = A315751 n

end A315751

/-! ## A315751.P15371731887913362796

`A315476(n)+Δ[A011848(n)]`
-/

namespace A315751.P15371731887913362796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n + (f1 (n + 1) - f1 n)

end

end A315751.P15371731887913362796

namespace A315751

/-- `A315476(n)+Δ[A011848(n)]` -/
def P15371731887913362796.Spec : Prop :=
  ∀ n, P15371731887913362796.a n = A315751 n

end A315751

/-! ## A315751.P4753285391163609178

`A315700(n)+Δ[A011865(n)]`
-/

namespace A315751.P4753285391163609178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n + (f1 (n + 1) - f1 n)

end

end A315751.P4753285391163609178

namespace A315751

/-- `A315700(n)+Δ[A011865(n)]` -/
def P4753285391163609178.Spec : Prop :=
  ∀ n, P4753285391163609178.a n = A315751 n

end A315751

/-! ## A315751.P5977768077075884017

`A314830(n)+A042965(n+1)`
-/

namespace A315751.P5977768077075884017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + A042965 (n + 1)

end

end A315751.P5977768077075884017

namespace A315751

/-- `A314830(n)+A042965(n+1)` -/
def P5977768077075884017.Spec : Prop :=
  ∀ n, P5977768077075884017.a n = A315751 n

end A315751

/-! ## A315751.P13674582061701668784

`A314683(n)+A047273(n+1)`
-/

namespace A315751.P13674582061701668784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + A047273 (n + 1)

end

end A315751.P13674582061701668784

namespace A315751

/-- `A314683(n)+A047273(n+1)` -/
def P13674582061701668784.Spec : Prop :=
  ∀ n, P13674582061701668784.a n = A315751 n

end A315751

/-! ## A315751.P17498937243213290414

`A314830(n)+A004396(2*n)`
-/

namespace A315751.P17498937243213290414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + A004396 (2 * n)

end

end A315751.P17498937243213290414

namespace A315751

/-- `A314830(n)+A004396(2*n)` -/
def P17498937243213290414.Spec : Prop :=
  ∀ n, P17498937243213290414.a n = A315751 n

end A315751

/-! ## A315751.P2974308072671973308

`A128834(n)+A313246(n)+n`
-/

namespace A315751.P2974308072671973308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313246 n + (n : ℤ))

end

end A315751.P2974308072671973308

namespace A315751

/-- `A128834(n)+A313246(n)+n` -/
def P2974308072671973308.Spec : Prop :=
  ∀ n, P2974308072671973308.a n = A315751 n

end A315751

/-! ## A315751.P13555335567645481491

`A315476(n)+n-A004525(n)`
-/

namespace A315751.P13555335567645481491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n + ((n : ℤ) - A004525 n)

end

end A315751.P13555335567645481491

namespace A315751

/-- `A315476(n)+n-A004525(n)` -/
def P13555335567645481491.Spec : Prop :=
  ∀ n, P13555335567645481491.a n = A315751 n

theorem P13555335567645481491.correct : P13555335567645481491.Spec := by
  intro n
  simp only [A315751, Nat.add_sub_cancel, A315751.P13555335567645481491.a, A315751.P7664283178857553201.a, A004525, A004525.P4158271949796742323.a, A313693, A313693.P2459513417228491263.a, A315476, A315476.P2170121001378105124.a, A311426, A311426.P12408021461851380809.a, A314683, A314683.P15823530726852142928.a, A004396, A004396.P17032557045289780609.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315751

/-! ## A315751.P3562874777777316597

`abs(A008592(n)+n-A313781(n))`
-/

namespace A315751.P3562874777777316597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A313781 n)|

end

end A315751.P3562874777777316597

namespace A315751

/-- `abs(A008592(n)+n-A313781(n))` -/
def P3562874777777316597.Spec : Prop :=
  ∀ n, P3562874777777316597.a n = A315751 n

end A315751

/-! ## A315751.P13556370327785233057

`A008458(n)-A002264(A004525(n)+1)`
-/

namespace A315751.P13556370327785233057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A002264 (A004525 n + 1).toNat

end

end A315751.P13556370327785233057

namespace A315751

/-- `A008458(n)-A002264(A004525(n)+1)` -/
def P13556370327785233057.Spec : Prop :=
  ∀ n, P13556370327785233057.a n = A315751 n

end A315751

/-! ## A315751.P17515176765346075114

`A314028(n)+A004525(A004396(n)+n)`
-/

namespace A315751.P17515176765346075114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314028 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A315751.P17515176765346075114

namespace A315751

/-- `A314028(n)+A004525(A004396(n)+n)` -/
def P17515176765346075114.Spec : Prop :=
  ∀ n, P17515176765346075114.a n = A315751 n

end A315751

/-! ## A315751.P12935394105601806988

`A315522(n)+A004396(n-A004525(n))`
-/

namespace A315751.P12935394105601806988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A315751.P12935394105601806988

namespace A315751

/-- `A315522(n)+A004396(n-A004525(n))` -/
def P12935394105601806988.Spec : Prop :=
  ∀ n, P12935394105601806988.a n = A315751 n

end A315751

/-! ## A315751.P5686710453859780373

`A008458(n)+A008574(n)-A311426(n)`
-/

namespace A315751.P5686710453859780373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311426 n)

end

end A315751.P5686710453859780373

namespace A315751

/-- `A008458(n)+A008574(n)-A311426(n)` -/
def P5686710453859780373.Spec : Prop :=
  ∀ n, P5686710453859780373.a n = A315751 n

end A315751

/-! ## A315751.P2635443975920616325

`A008574(n)+A314830(n)-A008576(n)`
-/

namespace A315751.P2635443975920616325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314830 n - A008576 n)

end

end A315751.P2635443975920616325

namespace A315751

/-- `A008574(n)+A314830(n)-A008576(n)` -/
def P2635443975920616325.Spec : Prop :=
  ∀ n, P2635443975920616325.a n = A315751 n

end A315751

/-! ## A315751.P719844249458002514

`A008706(n)+A315741(n)-A313717(n)`
-/

namespace A315751.P719844249458002514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A315741 n - A313717 n)

end

end A315751.P719844249458002514

namespace A315751

/-- `A008706(n)+A315741(n)-A313717(n)` -/
def P719844249458002514.Spec : Prop :=
  ∀ n, P719844249458002514.a n = A315751 n

end A315751

/-! ## A315751.P8179087517417433512

`A004525(A315744(n))+3*n`
-/

namespace A315751.P8179087517417433512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315744 n).toNat + (3 * n : ℤ)

end

end A315751.P8179087517417433512

namespace A315751

/-- `A004525(A315744(n))+3*n` -/
def P8179087517417433512.Spec : Prop :=
  ∀ n, P8179087517417433512.a n = A315751 n

end A315751

/-! ## A315751.P8151771483712200452

`A004525(A310410(2*n))+n`
-/

namespace A315751.P8151771483712200452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310410 (2 * n)).toNat + (n : ℤ)

end

end A315751.P8151771483712200452

namespace A315751

/-- `A004525(A310410(2*n))+n` -/
def P8151771483712200452.Spec : Prop :=
  ∀ n, P8151771483712200452.a n = A315751 n

end A315751

/-!
# A315752: Coordination sequence Gal.6.653.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315752, there is no canonical definition to state claims against.
-/

/-! ## A315752.P7265447656885744628

`A008458(n)-A160086(A033484(n+1))`
-/

namespace A315752.P7265447656885744628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A160086 (A033484 (n + 1)).toNat

end

end A315752.P7265447656885744628

/-! ## A315752.P7244879837178856772

`A315753(A087051(n))`
-/

namespace A315752.P7244879837178856772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315753 (A087051 n).toNat

end

end A315752.P7244879837178856772

/-! ## A315752.P3211439153551783355

`A092524(A315753(n))`
-/

namespace A315752.P3211439153551783355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A315753 n).toNat

end

end A315752.P3211439153551783355

/-! ## A315752.P392084405311655932

`A315753(A227549(n+1))`
-/

namespace A315752.P392084405311655932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315753 (A227549 (n + 1)).toNat

end

end A315752.P392084405311655932

/-! ## A315752.P2560475553376921343

`A315753(A396204(n+1))`
-/

namespace A315752.P2560475553376921343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315753 (A396204 (n + 1)).toNat

end

end A315752.P2560475553376921343

/-!
# A315753: Coordination sequence Gal.5.316.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315753, there is no canonical definition to state claims against.
-/

/-! ## A315753.P10852793315908741259

`A008458(A062399(n)-A111775(n+1))`
-/

namespace A315753.P10852793315908741259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A062399 n - A111775 (n + 1)).toNat

end

end A315753.P10852793315908741259

/-! ## A315753.P3659014557047917760

`A008458(A062399(n)-A219839(n+1))`
-/

namespace A315753.P3659014557047917760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A062399 n - A219839 (n + 1)).toNat

end

end A315753.P3659014557047917760

/-! ## A315753.P11108067242776142778

`A008458(A062399(n)-A309784(n+1))`
-/

namespace A315753.P11108067242776142778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A062399 n - A309784 (n + 1)).toNat

end

end A315753.P11108067242776142778

/-! ## A315753.P3829220244361074313

`A008458(A062399(n)-A325166(n+1))`
-/

namespace A315753.P3829220244361074313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A062399 n - A325166 (n + 1)).toNat

end

end A315753.P3829220244361074313

/-! ## A315753.P10003280685092902032

`A008458(n)-A051113(A346236(n+1))`
-/

namespace A315753.P10003280685092902032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A051113 (A346236 (n + 1)).toNat

end

end A315753.P10003280685092902032

/-!
# A315754: Coordination sequence Gal.6.209.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315754, the canonical program `A315754.P17150981886379048443` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315754 has offset 0).

The definition of A315754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315754.P4561789377259426882

`abs(A008592(n)-A311385(n))`
-/

namespace A315754.P4561789377259426882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311385 n|

end

end A315754.P4561789377259426882

namespace A315754

/-- `abs(A008592(n)-A311385(n))` -/
def P4561789377259426882.Spec : Prop :=
  ∀ n, P4561789377259426882.a n = A315754 n

end A315754

/-! ## A315754.P16258201449868960500

`2*A008706(n)-A311385(n)`
-/

namespace A315754.P16258201449868960500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311385 n

end

end A315754.P16258201449868960500

namespace A315754

/-- `2*A008706(n)-A311385(n)` -/
def P16258201449868960500.Spec : Prop :=
  ∀ n, P16258201449868960500.a n = A315754 n

end A315754

/-! ## A315754.P6785624335408229462

`2*A313718(n)-A008574(n)`
-/

namespace A315754.P6785624335408229462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313718 n - A008574 n

end

end A315754.P6785624335408229462

namespace A315754

/-- `2*A313718(n)-A008574(n)` -/
def P6785624335408229462.Spec : Prop :=
  ∀ n, P6785624335408229462.a n = A315754 n

end A315754

/-! ## A315754.P17150981886379048443

`2*A315678(n)-A315629(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A315754

/-- `2*A315678(n)-A315629(n)` -/
def P17150981886379048443.Spec : Prop :=
  ∀ n, P17150981886379048443.a n = A315754 n

theorem P17150981886379048443.correct : P17150981886379048443.Spec := by
  intro n
  simp only [A315754]

end A315754

/-! ## A315754.P16076417643899290590

`A103517(A313718(n)-(2*n+1))`
-/

namespace A315754.P16076417643899290590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313718 n - (2 * n + 1 : ℤ)).toNat

end

end A315754.P16076417643899290590

namespace A315754

/-- `A103517(A313718(n)-(2*n+1))` -/
def P16076417643899290590.Spec : Prop :=
  ∀ n, P16076417643899290590.a n = A315754 n

end A315754

/-! ## A315754.P6761405847376833073

`A004275(A313718(n)-A004273(n))`
-/

namespace A315754.P6761405847376833073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313718 n - A004273 n).toNat

end

end A315754.P6761405847376833073

namespace A315754

/-- `A004275(A313718(n)-A004273(n))` -/
def P6761405847376833073.Spec : Prop :=
  ∀ n, P6761405847376833073.a n = A315754 n

end A315754

/-! ## A315754.P10025000937493383721

`A000038(n)+A008592(n)-A311385(n)`
-/

namespace A315754.P10025000937493383721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A311385 n)

end

end A315754.P10025000937493383721

namespace A315754

/-- `A000038(n)+A008592(n)-A311385(n)` -/
def P10025000937493383721.Spec : Prop :=
  ∀ n, P10025000937493383721.a n = A315754 n

end A315754

/-! ## A315754.P11212071339057876915

`A008458(n)+A008574(n)-A311385(n)`
-/

namespace A315754.P11212071339057876915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311385 n)

end

end A315754.P11212071339057876915

namespace A315754

/-- `A008458(n)+A008574(n)-A311385(n)` -/
def P11212071339057876915.Spec : Prop :=
  ∀ n, P11212071339057876915.a n = A315754 n

end A315754

/-! ## A315754.P14318403258421006870

`A004273(A313718(n)-n)-A004273(n)`
-/

namespace A315754.P14318403258421006870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313718 n - (n : ℤ)).toNat - A004273 n

end

end A315754.P14318403258421006870

namespace A315754

/-- `A004273(A313718(n)-n)-A004273(n)` -/
def P14318403258421006870.Spec : Prop :=
  ∀ n, P14318403258421006870.a n = A315754 n

end A315754

/-! ## A315754.P13204137836374675127

`∑{d}[A008592(n)-A311385(n), A000010(#)]`
-/

namespace A315754.P13204137836374675127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A311385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315754.P13204137836374675127

namespace A315754

/-- `∑{d}[A008592(n)-A311385(n), A000010(#)]` -/
def P13204137836374675127.Spec : Prop :=
  ∀ n, P13204137836374675127.a n = A315754 n

end A315754

/-! ## A315754.P11674975585233094155

`A008574(n)+A005843(A313718(n)-A008574(n))`
-/

namespace A315754.P11674975585233094155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313718 n - A008574 n).toNat

end

end A315754.P11674975585233094155

namespace A315754

/-- `A008574(n)+A005843(A313718(n)-A008574(n))` -/
def P11674975585233094155.Spec : Prop :=
  ∀ n, P11674975585233094155.a n = A315754 n

end A315754

/-! ## A315754.P18434843928496900634

`A311385(n)+A005843(A008706(n)-A311385(n))`
-/

namespace A315754.P18434843928496900634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n + A005843 (A008706 n - A311385 n).toNat

end

end A315754.P18434843928496900634

namespace A315754

/-- `A311385(n)+A005843(A008706(n)-A311385(n))` -/
def P18434843928496900634.Spec : Prop :=
  ∀ n, P18434843928496900634.a n = A315754 n

end A315754

/-! ## A315754.P770805406730764624

`A005843(A313718(n))-A008574(n)`
-/

namespace A315754.P770805406730764624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313718 n).toNat - A008574 n

end

end A315754.P770805406730764624

namespace A315754

/-- `A005843(A313718(n))-A008574(n)` -/
def P770805406730764624.Spec : Prop :=
  ∀ n, P770805406730764624.a n = A315754 n

end A315754

/-! ## A315754.P12300197828964813878

`A004275(A313718(n))-A004275(2*n)`
-/

namespace A315754.P12300197828964813878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313718 n).toNat - A004275 (2 * n)

end

end A315754.P12300197828964813878

namespace A315754

/-- `A004275(A313718(n))-A004275(2*n)` -/
def P12300197828964813878.Spec : Prop :=
  ∀ n, P12300197828964813878.a n = A315754 n

end A315754

/-! ## A315754.P12859318127579494782

`A005843(A313718(n))+n-A008706(n)`
-/

namespace A315754.P12859318127579494782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313718 n).toNat + ((n : ℤ) - A008706 n)

end

end A315754.P12859318127579494782

namespace A315754

/-- `A005843(A313718(n))+n-A008706(n)` -/
def P12859318127579494782.Spec : Prop :=
  ∀ n, P12859318127579494782.a n = A315754 n

end A315754

/-! ## A315754.P9034926249225788602

`2*A315759(n)-A315767(n)`
-/

namespace A315754.P9034926249225788602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315759 n - A315767 n

end

end A315754.P9034926249225788602

namespace A315754

/-- `2*A315759(n)-A315767(n)` -/
def P9034926249225788602.Spec : Prop :=
  ∀ n, P9034926249225788602.a n = A315754 n

end A315754

/-! ## A315754.P470223372613302799

`A005843(A008706(n))-A311385(n)`
-/

namespace A315754.P470223372613302799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311385 n

end

end A315754.P470223372613302799

namespace A315754

/-- `A005843(A008706(n))-A311385(n)` -/
def P470223372613302799.Spec : Prop :=
  ∀ n, P470223372613302799.a n = A315754 n

end A315754

/-!
# A315755: Coordination sequence Gal.6.333.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315755, the canonical program `A315755.P16242125238513878474` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315755 has offset 0).

The definition of A315755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315755.P16242125238513878474

`abs(A008592(n)-A311384(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315755

/-- `abs(A008592(n)-A311384(n))` -/
def P16242125238513878474.Spec : Prop :=
  ∀ n, P16242125238513878474.a n = A315755 n

theorem P16242125238513878474.correct : P16242125238513878474.Spec := by
  intro n
  simp only [A315755]

end A315755

/-! ## A315755.P1481173448737395125

`A310532(n)+2*A330025(n)`
-/

namespace A315755.P1481173448737395125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 n + 2 * A330025 n

end

end A315755.P1481173448737395125

namespace A315755

/-- `A310532(n)+2*A330025(n)` -/
def P1481173448737395125.Spec : Prop :=
  ∀ n, P1481173448737395125.a n = A315755 n

end A315755

/-! ## A315755.P12311809862145686598

`A022144(n)-2*A151988(n)`
-/

namespace A315755.P12311809862145686598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A151988 n

end

end A315755.P12311809862145686598

namespace A315755

/-- `A022144(n)-2*A151988(n)` -/
def P12311809862145686598.Spec : Prop :=
  ∀ n, P12311809862145686598.a n = A315755 n

end A315755

/-! ## A315755.P15136258992416883460

`2*A008706(n)-A311384(n)`
-/

namespace A315755.P15136258992416883460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311384 n

end

end A315755.P15136258992416883460

namespace A315755

/-- `2*A008706(n)-A311384(n)` -/
def P15136258992416883460.Spec : Prop :=
  ∀ n, P15136258992416883460.a n = A315755 n

end A315755

/-! ## A315755.P14775391902406075330

`2*A313719(n)-A008574(n)`
-/

namespace A315755.P14775391902406075330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313719 n - A008574 n

end

end A315755.P14775391902406075330

namespace A315755

/-- `2*A313719(n)-A008574(n)` -/
def P14775391902406075330.Spec : Prop :=
  ∀ n, P14775391902406075330.a n = A315755 n

end A315755

/-! ## A315755.P11615608789505291768

`A103517(A313719(n)-(2*n+1))`
-/

namespace A315755.P11615608789505291768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313719 n - (2 * n + 1 : ℤ)).toNat

end

end A315755.P11615608789505291768

namespace A315755

/-- `A103517(A313719(n)-(2*n+1))` -/
def P11615608789505291768.Spec : Prop :=
  ∀ n, P11615608789505291768.a n = A315755 n

end A315755

/-! ## A315755.P9712968005964718150

`A004275(A016813(n)-A151988(n))`
-/

namespace A315755.P9712968005964718150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A016813 n - A151988 n).toNat

end

end A315755.P9712968005964718150

namespace A315755

/-- `A004275(A016813(n)-A151988(n))` -/
def P9712968005964718150.Spec : Prop :=
  ∀ n, P9712968005964718150.a n = A315755 n

end A315755

/-! ## A315755.P10582819221084742886

`A022144(n)-A005843(A151988(n))`
-/

namespace A315755.P10582819221084742886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A005843 (A151988 n).toNat

end

end A315755.P10582819221084742886

namespace A315755

/-- `A022144(n)-A005843(A151988(n))` -/
def P10582819221084742886.Spec : Prop :=
  ∀ n, P10582819221084742886.a n = A315755 n

end A315755

/-! ## A315755.P4350066004535469521

`A017089(n)-A103517(A151988(n))`
-/

namespace A315755.P4350066004535469521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n - A103517 (A151988 n).toNat

end

end A315755.P4350066004535469521

namespace A315755

/-- `A017089(n)-A103517(A151988(n))` -/
def P4350066004535469521.Spec : Prop :=
  ∀ n, P4350066004535469521.a n = A315755 n

end A315755

/-! ## A315755.P17174964573362296368

`A008458(n)+A008574(n)-A311384(n)`
-/

namespace A315755.P17174964573362296368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311384 n)

end

end A315755.P17174964573362296368

namespace A315755

/-- `A008458(n)+A008574(n)-A311384(n)` -/
def P17174964573362296368.Spec : Prop :=
  ∀ n, P17174964573362296368.a n = A315755 n

end A315755

/-! ## A315755.P11185030225490518581

`A315691(n)+A253262(n-A253262(n))`
-/

namespace A315755.P11185030225490518581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n + A253262 ((n : ℤ) - A253262 n).toNat

end

end A315755.P11185030225490518581

namespace A315755

/-- `A315691(n)+A253262(n-A253262(n))` -/
def P11185030225490518581.Spec : Prop :=
  ∀ n, P11185030225490518581.a n = A315755 n

end A315755

/-! ## A315755.P4183932038077539406

`A311384(n)+A005843(A008706(n)-A311384(n))`
-/

namespace A315755.P4183932038077539406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311384 n + A005843 (A008706 n - A311384 n).toNat

end

end A315755.P4183932038077539406

namespace A315755

/-- `A311384(n)+A005843(A008706(n)-A311384(n))` -/
def P4183932038077539406.Spec : Prop :=
  ∀ n, P4183932038077539406.a n = A315755 n

end A315755

/-! ## A315755.P5651120471376698747

`A330025(n-A330025(n))+A315536(n)`
-/

namespace A315755.P5651120471376698747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A315536 n

end

end A315755.P5651120471376698747

namespace A315755

/-- `A330025(n-A330025(n))+A315536(n)` -/
def P5651120471376698747.Spec : Prop :=
  ∀ n, P5651120471376698747.a n = A315755 n

end A315755

/-! ## A315755.P2622213438916880035

`A313938(n)+A253262(n)`
-/

namespace A315755.P2622213438916880035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313938 n + A253262 n

end

end A315755.P2622213438916880035

namespace A315755

/-- `A313938(n)+A253262(n)` -/
def P2622213438916880035.Spec : Prop :=
  ∀ n, P2622213438916880035.a n = A315755 n

end A315755

/-! ## A315755.P9028673453649256538

`A330025(n)+A301718(n)`
-/

namespace A315755.P9028673453649256538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A301718 n

end

end A315755.P9028673453649256538

namespace A315755

/-- `A330025(n)+A301718(n)` -/
def P9028673453649256538.Spec : Prop :=
  ∀ n, P9028673453649256538.a n = A315755 n

end A315755

/-! ## A315755.P18231020776382640220

`2*A315761(n)-A008458(n)`
-/

namespace A315755.P18231020776382640220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315761 n - A008458 n

end

end A315755.P18231020776382640220

namespace A315755

/-- `2*A315761(n)-A008458(n)` -/
def P18231020776382640220.Spec : Prop :=
  ∀ n, P18231020776382640220.a n = A315755 n

end A315755

/-! ## A315755.P7975633976257058677

`A005843(A008706(n))-A311384(n)`
-/

namespace A315755.P7975633976257058677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311384 n

end

end A315755.P7975633976257058677

namespace A315755

/-- `A005843(A008706(n))-A311384(n)` -/
def P7975633976257058677.Spec : Prop :=
  ∀ n, P7975633976257058677.a n = A315755 n

end A315755

/-!
# A315756: Coordination sequence Gal.6.637.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315756, the canonical program `A315756.P18231005908328482716` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315756 has offset 0).

The definition of A315756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315756.P18231005908328482716

`abs(A008592(n)-A311356(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315756

/-- `abs(A008592(n)-A311356(n))` -/
def P18231005908328482716.Spec : Prop :=
  ∀ n, P18231005908328482716.a n = A315756 n

theorem P18231005908328482716.correct : P18231005908328482716.Spec := by
  intro n
  simp only [A315756]

end A315756

/-! ## A315756.P7673029701101050439

`2*A008706(n)-A311356(n)`
-/

namespace A315756.P7673029701101050439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311356 n

end

end A315756.P7673029701101050439

namespace A315756

/-- `2*A008706(n)-A311356(n)` -/
def P7673029701101050439.Spec : Prop :=
  ∀ n, P7673029701101050439.a n = A315756 n

end A315756

/-! ## A315756.P1385899139608691683

`xor(1, A017281(n)-A311356(n))`
-/

namespace A315756.P1385899139608691683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A311356 n)

end

end A315756.P1385899139608691683

namespace A315756

/-- `xor(1, A017281(n)-A311356(n))` -/
def P1385899139608691683.Spec : Prop :=
  ∀ n, P1385899139608691683.a n = A315756 n

end A315756

/-! ## A315756.P16897542947230145820

`A017281(n)-A004442(A311356(n))`
-/

namespace A315756.P16897542947230145820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A311356 n).toNat

end

end A315756.P16897542947230145820

namespace A315756

/-- `A017281(n)-A004442(A311356(n))` -/
def P16897542947230145820.Spec : Prop :=
  ∀ n, P16897542947230145820.a n = A315756 n

end A315756

/-! ## A315756.P12743326349301444161

`A008458(n)+A008574(n)-A311356(n)`
-/

namespace A315756.P12743326349301444161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311356 n)

end

end A315756.P12743326349301444161

namespace A315756

/-- `A008458(n)+A008574(n)-A311356(n)` -/
def P12743326349301444161.Spec : Prop :=
  ∀ n, P12743326349301444161.a n = A315756 n

end A315756

/-! ## A315756.P10533221950111813286

`A311356(n)+A005843(A008706(n)-A311356(n))`
-/

namespace A315756.P10533221950111813286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n + A005843 (A008706 n - A311356 n).toNat

end

end A315756.P10533221950111813286

namespace A315756

/-- `A311356(n)+A005843(A008706(n)-A311356(n))` -/
def P10533221950111813286.Spec : Prop :=
  ∀ n, P10533221950111813286.a n = A315756 n

end A315756

/-! ## A315756.P8790322545836557403

`2*A315762(n)-A008458(n)`
-/

namespace A315756.P8790322545836557403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315762 n - A008458 n

end

end A315756.P8790322545836557403

namespace A315756

/-- `2*A315762(n)-A008458(n)` -/
def P8790322545836557403.Spec : Prop :=
  ∀ n, P8790322545836557403.a n = A315756 n

end A315756

/-! ## A315756.P12949551965328883612

`A008458(n)-A005843(A008458(n)-A315762(n))`
-/

namespace A315756.P12949551965328883612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315762 n).toNat

end

end A315756.P12949551965328883612

namespace A315756

/-- `A008458(n)-A005843(A008458(n)-A315762(n))` -/
def P12949551965328883612.Spec : Prop :=
  ∀ n, P12949551965328883612.a n = A315756 n

end A315756

/-! ## A315756.P11905467625583094856

`A005843(A008706(n))-A311356(n)`
-/

namespace A315756.P11905467625583094856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311356 n

end

end A315756.P11905467625583094856

namespace A315756

/-- `A005843(A008706(n))-A311356(n)` -/
def P11905467625583094856.Spec : Prop :=
  ∀ n, P11905467625583094856.a n = A315756 n

end A315756

/-! ## A315756.P16066578764783235076

`A005843(A315762(n))-A008458(n)`
-/

namespace A315756.P16066578764783235076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315762 n).toNat - A008458 n

end

end A315756.P16066578764783235076

namespace A315756

/-- `A005843(A315762(n))-A008458(n)` -/
def P16066578764783235076.Spec : Prop :=
  ∀ n, P16066578764783235076.a n = A315756 n

end A315756

/-! ## A315756.P9429916041925068570

`A004273(A315762(n))-A004273(3*n)`
-/

namespace A315756.P9429916041925068570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A315762 n).toNat - A004273 (3 * n)

end

end A315756.P9429916041925068570

namespace A315756

/-- `A004273(A315762(n))-A004273(3*n)` -/
def P9429916041925068570.Spec : Prop :=
  ∀ n, P9429916041925068570.a n = A315756 n

end A315756

/-! ## A315756.P15940885296000558482

`A065502(A008458(n))-A311356(n)`
-/

namespace A315756.P15940885296000558482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A311356 n

end

end A315756.P15940885296000558482

namespace A315756

/-- `A065502(A008458(n))-A311356(n)` -/
def P15940885296000558482.Spec : Prop :=
  ∀ n, P15940885296000558482.a n = A315756 n

end A315756

/-!
# A315757: Coordination sequence Gal.5.294.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315757, the canonical program `A315757.P1538617664775847239` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315757 has offset 0).

The definition of A315757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315757.P6861650292007488672

`abs(A008592(n)-A311344(n))`
-/

namespace A315757.P6861650292007488672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311344 n|

end

end A315757.P6861650292007488672

namespace A315757

/-- `abs(A008592(n)-A311344(n))` -/
def P6861650292007488672.Spec : Prop :=
  ∀ n, P6861650292007488672.a n = A315757 n

end A315757

/-! ## A315757.P3018413248072490348

`A315696(n)+Δ[A011862(n)]`
-/

namespace A315757.P3018413248072490348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 n + (f1 (n + 1) - f1 n)

end

end A315757.P3018413248072490348

namespace A315757

/-- `A315696(n)+Δ[A011862(n)]` -/
def P3018413248072490348.Spec : Prop :=
  ∀ n, P3018413248072490348.a n = A315757 n

end A315757

/-! ## A315757.P8763617435585088628

`A310369(n)+2*A004396(n)`
-/

namespace A315757.P8763617435585088628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 n + 2 * A004396 n

end

end A315757.P8763617435585088628

namespace A315757

/-- `A310369(n)+2*A004396(n)` -/
def P8763617435585088628.Spec : Prop :=
  ∀ n, P8763617435585088628.a n = A315757 n

end A315757

/-! ## A315757.P1538617664775847239

`2*A313721(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315757

/-- `2*A313721(n)-A008574(n)` -/
def P1538617664775847239.Spec : Prop :=
  ∀ n, P1538617664775847239.a n = A315757 n

theorem P1538617664775847239.correct : P1538617664775847239.Spec := by
  intro n
  simp only [A315757]

end A315757

/-! ## A315757.P8900892721809830216

`2*A315680(n)-A315631(n)`
-/

namespace A315757.P8900892721809830216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315680 n - A315631 n

end

end A315757.P8900892721809830216

namespace A315757

/-- `2*A315680(n)-A315631(n)` -/
def P8900892721809830216.Spec : Prop :=
  ∀ n, P8900892721809830216.a n = A315757 n

end A315757

/-! ## A315757.P16755648409044013346

`A315646(n)+Δ[2*A011862(n)]`
-/

namespace A315757.P16755648409044013346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 n + (f1 (n + 1) - f1 n)

end

end A315757.P16755648409044013346

namespace A315757

/-- `A315646(n)+Δ[2*A011862(n)]` -/
def P16755648409044013346.Spec : Prop :=
  ∀ n, P16755648409044013346.a n = A315757 n

end A315757

/-! ## A315757.P5249168689966838673

`A103517(A313721(n)-(2*n+1))`
-/

namespace A315757.P5249168689966838673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313721 n - (2 * n + 1 : ℤ)).toNat

end

end A315757.P5249168689966838673

namespace A315757

/-- `A103517(A313721(n)-(2*n+1))` -/
def P5249168689966838673.Spec : Prop :=
  ∀ n, P5249168689966838673.a n = A315757 n

end A315757

/-! ## A315757.P15237100436703170366

`2*A312932(2*n)-A008458(2*n)`
-/

namespace A315757.P15237100436703170366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312932 (2 * n) - A008458 (2 * n)

end

end A315757.P15237100436703170366

namespace A315757

/-- `2*A312932(2*n)-A008458(2*n)` -/
def P15237100436703170366.Spec : Prop :=
  ∀ n, P15237100436703170366.a n = A315757 n

end A315757

/-! ## A315757.P1071956674504370810

`A310369(n)+A005843(A004396(n))`
-/

namespace A315757.P1071956674504370810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 n + A005843 (A004396 n).toNat

end

end A315757.P1071956674504370810

namespace A315757

/-- `A310369(n)+A005843(A004396(n))` -/
def P1071956674504370810.Spec : Prop :=
  ∀ n, P1071956674504370810.a n = A315757 n

end A315757

/-! ## A315757.P17093169985589407130

`A314205(n)+A004396(A004396(n))`
-/

namespace A315757.P17093169985589407130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314205 n + A004396 (A004396 n).toNat

end

end A315757.P17093169985589407130

namespace A315757

/-- `A314205(n)+A004396(A004396(n))` -/
def P17093169985589407130.Spec : Prop :=
  ∀ n, P17093169985589407130.a n = A315757 n

end A315757

/-! ## A315757.P17602541934466788033

`A004275(A313721(n)-A004273(n))`
-/

namespace A315757.P17602541934466788033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313721 n - A004273 n).toNat

end

end A315757.P17602541934466788033

namespace A315757

/-- `A004275(A313721(n)-A004273(n))` -/
def P17602541934466788033.Spec : Prop :=
  ∀ n, P17602541934466788033.a n = A315757 n

end A315757

/-! ## A315757.P7813633303562653863

`A310493(n)+2*A004396(A004396(n))`
-/

namespace A315757.P7813633303562653863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310493 n + 2 * A004396 (A004396 n).toNat

end

end A315757.P7813633303562653863

namespace A315757

/-- `A310493(n)+2*A004396(A004396(n))` -/
def P7813633303562653863.Spec : Prop :=
  ∀ n, P7813633303562653863.a n = A315757 n

end A315757

/-! ## A315757.P17955013996692646262

`A314021(n)+A004396(2*A004396(n))`
-/

namespace A315757.P17955013996692646262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314021 n + A004396 (2 * A004396 n).toNat

end

end A315757.P17955013996692646262

namespace A315757

/-- `A314021(n)+A004396(2*A004396(n))` -/
def P17955013996692646262.Spec : Prop :=
  ∀ n, P17955013996692646262.a n = A315757 n

end A315757

/-! ## A315757.P17284780322654641040

`A313683(n)+A004396(A004396(n)+n)`
-/

namespace A315757.P17284780322654641040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A315757.P17284780322654641040

namespace A315757

/-- `A313683(n)+A004396(A004396(n)+n)` -/
def P17284780322654641040.Spec : Prop :=
  ∀ n, P17284780322654641040.a n = A315757 n

end A315757

/-! ## A315757.P11893015309195714180

`A315535(n)+A004396(n-A004396(n))`
-/

namespace A315757.P11893015309195714180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315757.P11893015309195714180

namespace A315757

/-- `A315535(n)+A004396(n-A004396(n))` -/
def P11893015309195714180.Spec : Prop :=
  ∀ n, P11893015309195714180.a n = A315757 n

end A315757

/-! ## A315757.P16085492630618472701

`A008458(n)+A008574(n)-A311344(n)`
-/

namespace A315757.P16085492630618472701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311344 n)

end

end A315757.P16085492630618472701

namespace A315757

/-- `A008458(n)+A008574(n)-A311344(n)` -/
def P16085492630618472701.Spec : Prop :=
  ∀ n, P16085492630618472701.a n = A315757 n

end A315757

/-! ## A315757.P4987535826683966004

`A004273(A313721(n)-n)-A004273(n)`
-/

namespace A315757.P4987535826683966004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313721 n - (n : ℤ)).toNat - A004273 n

end

end A315757.P4987535826683966004

namespace A315757

/-- `A004273(A313721(n)-n)-A004273(n)` -/
def P4987535826683966004.Spec : Prop :=
  ∀ n, P4987535826683966004.a n = A315757 n

end A315757

/-! ## A315757.P15364237070734321959

`A004396(n)+A315696(n)-A004396(A004396(n))`
-/

namespace A315757.P15364237070734321959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315696 n - A004396 (A004396 n).toNat)

end

end A315757.P15364237070734321959

namespace A315757

/-- `A004396(n)+A315696(n)-A004396(A004396(n))` -/
def P15364237070734321959.Spec : Prop :=
  ∀ n, P15364237070734321959.a n = A315757 n

end A315757

/-! ## A315757.P12159431554001239539

`A004275(A313721(n))-A004275(2*n)`
-/

namespace A315757.P12159431554001239539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313721 n).toNat - A004275 (2 * n)

end

end A315757.P12159431554001239539

namespace A315757

/-- `A004275(A313721(n))-A004275(2*n)` -/
def P12159431554001239539.Spec : Prop :=
  ∀ n, P12159431554001239539.a n = A315757 n

end A315757

/-! ## A315757.P5425818254293298577

`A310412(2*n)-4*n`
-/

namespace A315757.P5425818254293298577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 (2 * n) - (4 * n : ℤ)

end

end A315757.P5425818254293298577

namespace A315757

/-- `A310412(2*n)-4*n` -/
def P5425818254293298577.Spec : Prop :=
  ∀ n, P5425818254293298577.a n = A315757 n

end A315757

/-!
# A315758: Coordination sequence Gal.6.210.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315758, the canonical program `A315758.P11537770092758335120` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315758 has offset 0).

The definition of A315758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315758.P17151072976033796230

`A314201(n)+A004525(n)`
-/

namespace A315758.P17151072976033796230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314201 n + A004525 n

end

end A315758.P17151072976033796230

namespace A315758

/-- `A314201(n)+A004525(n)` -/
def P17151072976033796230.Spec : Prop :=
  ∀ n, P17151072976033796230.a n = A315758 n

end A315758

/-! ## A315758.P11537770092758335120

`abs(A008592(n)-A311332(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315758

/-- `abs(A008592(n)-A311332(n))` -/
def P11537770092758335120.Spec : Prop :=
  ∀ n, P11537770092758335120.a n = A315758 n

theorem P11537770092758335120.correct : P11537770092758335120.Spec := by
  intro n
  simp only [A315758]

end A315758

/-! ## A315758.P6116505543388843260

`A315459(n)+∑[A131735(n)]`
-/

namespace A315758.P6116505543388843260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315758.P6116505543388843260

namespace A315758

/-- `A315459(n)+∑[A131735(n)]` -/
def P6116505543388843260.Spec : Prop :=
  ∀ n, P6116505543388843260.a n = A315758 n

end A315758

/-! ## A315758.P12826617410898801132

`A314201(n)+Δ[A054925(n)]`
-/

namespace A315758.P12826617410898801132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314201 n + (f1 (n + 1) - f1 n)

end

end A315758.P12826617410898801132

namespace A315758

/-- `A314201(n)+Δ[A054925(n)]` -/
def P12826617410898801132.Spec : Prop :=
  ∀ n, P12826617410898801132.a n = A315758 n

end A315758

/-! ## A315758.P15741908985770533439

`A030118(n)+A315395(n)-1`
-/

namespace A315758.P15741908985770533439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n + (A315395 n - 1)

end

end A315758.P15741908985770533439

namespace A315758

/-- `A030118(n)+A315395(n)-1` -/
def P15741908985770533439.Spec : Prop :=
  ∀ n, P15741908985770533439.a n = A315758 n

end A315758

/-! ## A315758.P5328009445585951844

`2*A008706(n)-A311332(n)`
-/

namespace A315758.P5328009445585951844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311332 n

end

end A315758.P5328009445585951844

namespace A315758

/-- `2*A008706(n)-A311332(n)` -/
def P5328009445585951844.Spec : Prop :=
  ∀ n, P5328009445585951844.a n = A315758 n

end A315758

/-! ## A315758.P14698975050182979801

`2*A314108(n)-A310373(n)`
-/

namespace A315758.P14698975050182979801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314108 n - A310373 n

end

end A315758.P14698975050182979801

namespace A315758

/-- `2*A314108(n)-A310373(n)` -/
def P14698975050182979801.Spec : Prop :=
  ∀ n, P14698975050182979801.a n = A315758 n

end A315758

/-! ## A315758.P7147980234235230536

`A315395(n)+n-A128834(n)`
-/

namespace A315758.P7147980234235230536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315395 n + ((n : ℤ) - A128834 n)

end

end A315758.P7147980234235230536

namespace A315758

/-- `A315395(n)+n-A128834(n)` -/
def P7147980234235230536.Spec : Prop :=
  ∀ n, P7147980234235230536.a n = A315758 n

end A315758

/-! ## A315758.P503638526560596073

`A315681(n)+A002264(A030118(n))`
-/

namespace A315758.P503638526560596073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n + A002264 (A030118 n).toNat

end

end A315758.P503638526560596073

namespace A315758

/-- `A315681(n)+A002264(A030118(n))` -/
def P503638526560596073.Spec : Prop :=
  ∀ n, P503638526560596073.a n = A315758 n

end A315758

/-! ## A315758.P13960460466387798354

`A315459(n)+A002264(A030118(n)+n)`
-/

namespace A315758.P13960460466387798354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + A002264 (A030118 n + (n : ℤ)).toNat

end

end A315758.P13960460466387798354

namespace A315758

/-- `A315459(n)+A002264(A030118(n)+n)` -/
def P13960460466387798354.Spec : Prop :=
  ∀ n, P13960460466387798354.a n = A315758 n

end A315758

/-! ## A315758.P1991805921745061524

`A008458(n)+A008574(n)-A311332(n)`
-/

namespace A315758.P1991805921745061524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311332 n)

end

end A315758.P1991805921745061524

namespace A315758

/-- `A008458(n)+A008574(n)-A311332(n)` -/
def P1991805921745061524.Spec : Prop :=
  ∀ n, P1991805921745061524.a n = A315758 n

end A315758

/-! ## A315758.P12237954827406917747

`∑{d}[A008592(n)-A311332(n), A000010(#)]`
-/

namespace A315758.P12237954827406917747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A311332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315758.P12237954827406917747

namespace A315758

/-- `∑{d}[A008592(n)-A311332(n), A000010(#)]` -/
def P12237954827406917747.Spec : Prop :=
  ∀ n, P12237954827406917747.a n = A315758 n

end A315758

/-! ## A315758.P18072383778029674561

`A004525(n)+A315738(n)-A004525(A004396(n))`
-/

namespace A315758.P18072383778029674561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315738 n - A004525 (A004396 n).toNat)

end

end A315758.P18072383778029674561

namespace A315758

/-- `A004525(n)+A315738(n)-A004525(A004396(n))` -/
def P18072383778029674561.Spec : Prop :=
  ∀ n, P18072383778029674561.a n = A315758 n

end A315758

/-! ## A315758.P2325471699800491028

`A314236(n)+A046978(A004396(n))`
-/

namespace A315758.P2325471699800491028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n + A046978 (A004396 n).toNat

end

end A315758.P2325471699800491028

namespace A315758

/-- `A314236(n)+A046978(A004396(n))` -/
def P2325471699800491028.Spec : Prop :=
  ∀ n, P2325471699800491028.a n = A315758 n

end A315758

/-! ## A315758.P17775253279933533328

`A005843(A008706(n))-A311332(n)`
-/

namespace A315758.P17775253279933533328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311332 n

end

end A315758.P17775253279933533328

namespace A315758

/-- `A005843(A008706(n))-A311332(n)` -/
def P17775253279933533328.Spec : Prop :=
  ∀ n, P17775253279933533328.a n = A315758 n

end A315758

/-! ## A315758.P11459517060813671637

`A005843(A314108(n))-A310373(n)`
-/

namespace A315758.P11459517060813671637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314108 n).toNat - A310373 n

end

end A315758.P11459517060813671637

namespace A315758

/-- `A005843(A314108(n))-A310373(n)` -/
def P11459517060813671637.Spec : Prop :=
  ∀ n, P11459517060813671637.a n = A315758 n

end A315758

/-!
# A315759: Coordination sequence Gal.6.334.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315759, the canonical program `A315759.P12503429889593144043` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315759 has offset 0).

The definition of A315759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315759.P6874920639295477920

`abs(10*n-A311331(n))`
-/

namespace A315759.P6874920639295477920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311331 n|

end

end A315759.P6874920639295477920

namespace A315759

/-- `abs(10*n-A311331(n))` -/
def P6874920639295477920.Spec : Prop :=
  ∀ n, P6874920639295477920.a n = A315759 n

end A315759

/-! ## A315759.P11598226363560265877

`2*A008706(n)-A311331(n)`
-/

namespace A315759.P11598226363560265877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311331 n

end

end A315759.P11598226363560265877

namespace A315759

/-- `2*A008706(n)-A311331(n)` -/
def P11598226363560265877.Spec : Prop :=
  ∀ n, P11598226363560265877.a n = A315759 n

end A315759

/-! ## A315759.P14398261038847862767

`A000038(n)+A008592(n)-A311331(n)`
-/

namespace A315759.P14398261038847862767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A311331 n)

end

end A315759.P14398261038847862767

namespace A315759

/-- `A000038(n)+A008592(n)-A311331(n)` -/
def P14398261038847862767.Spec : Prop :=
  ∀ n, P14398261038847862767.a n = A315759 n

end A315759

/-! ## A315759.P17925069650876559072

`A008458(n)+A008574(n)-A311331(n)`
-/

namespace A315759.P17925069650876559072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311331 n)

end

end A315759.P17925069650876559072

namespace A315759

/-- `A008458(n)+A008574(n)-A311331(n)` -/
def P17925069650876559072.Spec : Prop :=
  ∀ n, P17925069650876559072.a n = A315759 n

end A315759

/-! ## A315759.P10979289539104472674

`∑{d}[A008592(n)-A311331(n), A000010(#)]`
-/

namespace A315759.P10979289539104472674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A311331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315759.P10979289539104472674

namespace A315759

/-- `∑{d}[A008592(n)-A311331(n), A000010(#)]` -/
def P10979289539104472674.Spec : Prop :=
  ∀ n, P10979289539104472674.a n = A315759 n

end A315759

/-! ## A315759.P7517081601360246822

`A311331(n)+A005843(A008706(n)-A311331(n))`
-/

namespace A315759.P7517081601360246822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311331 n + A005843 (A008706 n - A311331 n).toNat

end

end A315759.P7517081601360246822

namespace A315759

/-- `A311331(n)+A005843(A008706(n)-A311331(n))` -/
def P7517081601360246822.Spec : Prop :=
  ∀ n, P7517081601360246822.a n = A315759 n

end A315759

/-! ## A315759.P16221526778663157329

`A005843(A008706(n))-A311331(n)`
-/

namespace A315759.P16221526778663157329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311331 n

end

end A315759.P16221526778663157329

namespace A315759

/-- `A005843(A008706(n))-A311331(n)` -/
def P16221526778663157329.Spec : Prop :=
  ∀ n, P16221526778663157329.a n = A315759 n

end A315759

/-! ## A315759.P12503429889593144043

`2*n+A004396(A315754(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A315759

/-- `2*n+A004396(A315754(n))` -/
def P12503429889593144043.Spec : Prop :=
  ∀ n, P12503429889593144043.a n = A315759 n

theorem P12503429889593144043.correct : P12503429889593144043.Spec := by
  intro n
  simp only [A315759]

end A315759

/-! ## A315759.P6631044389301335110

`A008585(n)-(n-A004396(A315754(n)))`
-/

namespace A315759.P6631044389301335110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315754 n).toNat)

end

end A315759.P6631044389301335110

namespace A315759

/-- `A008585(n)-(n-A004396(A315754(n)))` -/
def P6631044389301335110.Spec : Prop :=
  ∀ n, P6631044389301335110.a n = A315759 n

theorem P6631044389301335110.correct : P6631044389301335110.Spec := by
  intro n
  simp only [A315759, Nat.add_sub_cancel, A315759.P6631044389301335110.a, A315759.P12503429889593144043.a, A004396, A004396.P17032557045289780609.a, A008585, A008585.P13732812384316341435.a, A315754, A315754.P17150981886379048443.a, A315629, A315629.P1423627926306205843.a, A315678, A315678.P12797774727885421403.a, A008574, A008574.P1300280032690682112.a, A008592, A008592.P4981059802862696142.a, A312163, A312163.P10738351713839419242.a, A313475, A313475.P17328450546123291622.a, A310455, A310455.P786279696323869961.a, A313118, A313118.P9114111145320884075.f1, A313118.P9114111145320884075.a, A313929, A313929.P15374622491825537121.f1, A313929.P15374622491825537121.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315759

/-! ## A315759.P831333002862644161

`A004396(2*A313718(n)-n)`
-/

namespace A315759.P831333002862644161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313718 n - (n : ℤ)).toNat

end

end A315759.P831333002862644161

namespace A315759

/-- `A004396(2*A313718(n)-n)` -/
def P831333002862644161.Spec : Prop :=
  ∀ n, P831333002862644161.a n = A315759 n

end A315759

/-! ## A315759.P12340852165642354589

`A004396(A315754(n)+A008486(n))`
-/

namespace A315759.P12340852165642354589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315754 n + A008486 n).toNat

end

end A315759.P12340852165642354589

namespace A315759

/-- `A004396(A315754(n)+A008486(n))` -/
def P12340852165642354589.Spec : Prop :=
  ∀ n, P12340852165642354589.a n = A315759 n

end A315759

/-! ## A315759.P6128501639042888099

`A004396(A315754(n)+A008585(n))`
-/

namespace A315759.P6128501639042888099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315754 n + A008585 n).toNat

end

end A315759.P6128501639042888099

namespace A315759

/-- `A004396(A315754(n)+A008585(n))` -/
def P6128501639042888099.Spec : Prop :=
  ∀ n, P6128501639042888099.a n = A315759 n

end A315759

/-! ## A315759.P13553787440052913989

`A004396(A313718(n)+A313718(n)-n)`
-/

namespace A315759.P13553787440052913989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313718 n + (A313718 n - (n : ℤ))).toNat

end

end A315759.P13553787440052913989

namespace A315759

/-- `A004396(A313718(n)+A313718(n)-n)` -/
def P13553787440052913989.Spec : Prop :=
  ∀ n, P13553787440052913989.a n = A315759 n

end A315759

/-! ## A315759.P2838217219722100511

`A004396(A313718(n)-(n-A313718(n)))`
-/

namespace A315759.P2838217219722100511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313718 n - ((n : ℤ) - A313718 n)).toNat

end

end A315759.P2838217219722100511

namespace A315759

/-- `A004396(A313718(n)-(n-A313718(n)))` -/
def P2838217219722100511.Spec : Prop :=
  ∀ n, P2838217219722100511.a n = A315759 n

end A315759

/-!
# A315760: Coordination sequence Gal.6.638.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315760, the canonical program `A315760.P12014470375947906454` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315760 has offset 0).

The definition of A315760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315760.P3197633648798559939

`A313717(n)+n`
-/

namespace A315760.P3197633648798559939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + (n : ℤ)

end

end A315760.P3197633648798559939

namespace A315760

/-- `A313717(n)+n` -/
def P3197633648798559939.Spec : Prop :=
  ∀ n, P3197633648798559939.a n = A315760 n

end A315760

/-! ## A315760.P13646897473977322551

`abs(11*n-A313754(n))`
-/

namespace A315760.P13646897473977322551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313754 n|

end

end A315760.P13646897473977322551

namespace A315760

/-- `abs(11*n-A313754(n))` -/
def P13646897473977322551.Spec : Prop :=
  ∀ n, P13646897473977322551.a n = A315760 n

end A315760

/-! ## A315760.P10201905191959529915

`A314108(n)+A004396(n)`
-/

namespace A315760.P10201905191959529915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314108 n + A004396 n

end

end A315760.P10201905191959529915

namespace A315760

/-- `A314108(n)+A004396(n)` -/
def P10201905191959529915.Spec : Prop :=
  ∀ n, P10201905191959529915.a n = A315760 n

end A315760

/-! ## A315760.P13330706399555662496

`A314204(n)+A004525(n)`
-/

namespace A315760.P13330706399555662496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314204 n + A004525 n

end

end A315760.P13330706399555662496

namespace A315760

/-- `A314204(n)+A004525(n)` -/
def P13330706399555662496.Spec : Prop :=
  ∀ n, P13330706399555662496.a n = A315760 n

end A315760

/-! ## A315760.P14574660418832808968

`abs(A008592(n)-A311312(n))`
-/

namespace A315760.P14574660418832808968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311312 n|

end

end A315760.P14574660418832808968

namespace A315760

/-- `abs(A008592(n)-A311312(n))` -/
def P14574660418832808968.Spec : Prop :=
  ∀ n, P14574660418832808968.a n = A315760 n

end A315760

/-! ## A315760.P11072127273539018933

`A313474(n)+A047513(n+1)`
-/

namespace A315760.P11072127273539018933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + A047513 (n + 1)

end

end A315760.P11072127273539018933

namespace A315760

/-- `A313474(n)+A047513(n+1)` -/
def P11072127273539018933.Spec : Prop :=
  ∀ n, P11072127273539018933.a n = A315760 n

end A315760

/-! ## A315760.P13292585878664094071

`2*A008706(n)-A311312(n)`
-/

namespace A315760.P13292585878664094071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311312 n

end

end A315760.P13292585878664094071

namespace A315760

/-- `2*A008706(n)-A311312(n)` -/
def P13292585878664094071.Spec : Prop :=
  ∀ n, P13292585878664094071.a n = A315760 n

end A315760

/-! ## A315760.P16941071186129304725

`A315485(n)+n-A004525(n)`
-/

namespace A315760.P16941071186129304725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315485 n + ((n : ℤ) - A004525 n)

end

end A315760.P16941071186129304725

namespace A315760

/-- `A315485(n)+n-A004525(n)` -/
def P16941071186129304725.Spec : Prop :=
  ∀ n, P16941071186129304725.a n = A315760 n

end A315760

/-! ## A315760.P17812983317756881527

`A315400(n)+n-A128834(n)`
-/

namespace A315760.P17812983317756881527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315400 n + ((n : ℤ) - A128834 n)

end

end A315760.P17812983317756881527

namespace A315760

/-- `A315400(n)+n-A128834(n)` -/
def P17812983317756881527.Spec : Prop :=
  ∀ n, P17812983317756881527.a n = A315760 n

end A315760

/-! ## A315760.P12424550301985104640

`A005843(n)-(n-A313717(n))`
-/

namespace A315760.P12424550301985104640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313717 n)

end

end A315760.P12424550301985104640

namespace A315760

/-- `A005843(n)-(n-A313717(n))` -/
def P12424550301985104640.Spec : Prop :=
  ∀ n, P12424550301985104640.a n = A315760 n

end A315760

/-! ## A315760.P11763377489875895934

`A314108(n)+A002264(2*n+1)`
-/

namespace A315760.P11763377489875895934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314108 n + A002264 (2 * n + 1)

end

end A315760.P11763377489875895934

namespace A315760

/-- `A314108(n)+A002264(2*n+1)` -/
def P11763377489875895934.Spec : Prop :=
  ∀ n, P11763377489875895934.a n = A315760 n

end A315760

/-! ## A315760.P18197434632581581375

`A008458(n)+A008574(n)-A311312(n)`
-/

namespace A315760.P18197434632581581375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311312 n)

end

end A315760.P18197434632581581375

namespace A315760

/-- `A008458(n)+A008574(n)-A311312(n)` -/
def P18197434632581581375.Spec : Prop :=
  ∀ n, P18197434632581581375.a n = A315760 n

end A315760

/-! ## A315760.P8887668378702636466

`A004396(n)+A315683(n)-A004525(A004396(n))`
-/

namespace A315760.P8887668378702636466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315683 n - A004525 (A004396 n).toNat)

end

end A315760.P8887668378702636466

namespace A315760

/-- `A004396(n)+A315683(n)-A004525(A004396(n))` -/
def P8887668378702636466.Spec : Prop :=
  ∀ n, P8887668378702636466.a n = A315760 n

end A315760

/-! ## A315760.P12014470375947906454

`A004525(n)+A315741(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315760

/-- `A004525(n)+A315741(n)-A004396(A004525(n))` -/
def P12014470375947906454.Spec : Prop :=
  ∀ n, P12014470375947906454.a n = A315760 n

theorem P12014470375947906454.correct : P12014470375947906454.Spec := by
  intro n
  simp only [A315760]

end A315760

/-! ## A315760.P13553830700954181029

`A004396(A315758(n))+2*n`
-/

namespace A315760.P13553830700954181029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315758 n).toNat + (2 * n : ℤ)

end

end A315760.P13553830700954181029

namespace A315760

/-- `A004396(A315758(n))+2*n` -/
def P13553830700954181029.Spec : Prop :=
  ∀ n, P13553830700954181029.a n = A315760 n

end A315760

/-! ## A315760.P718882191919146223

`n-A001057(2*A313717(n))`
-/

namespace A315760.P718882191919146223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A313717 n).toNat

end

end A315760.P718882191919146223

namespace A315760

/-- `n-A001057(2*A313717(n))` -/
def P718882191919146223.Spec : Prop :=
  ∀ n, P718882191919146223.a n = A315760 n

end A315760

/-!
# A315761: Coordination sequence Gal.5.295.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315761, the canonical program `A315761.P1947908363640495384` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315761 has offset 0).

The definition of A315761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315761.P3909372961880955862

`A313719(n)+n`
-/

namespace A315761.P3909372961880955862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + (n : ℤ)

end

end A315761.P3909372961880955862

namespace A315761

/-- `A313719(n)+n` -/
def P3909372961880955862.Spec : Prop :=
  ∀ n, P3909372961880955862.a n = A315761 n

end A315761

/-! ## A315761.P6218198023399915015

`abs(11*n-A313752(n))`
-/

namespace A315761.P6218198023399915015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313752 n|

end

end A315761.P6218198023399915015

namespace A315761

/-- `abs(11*n-A313752(n))` -/
def P6218198023399915015.Spec : Prop :=
  ∀ n, P6218198023399915015.a n = A315761 n

end A315761

/-! ## A315761.P1947908363640495384

`A330025(n)+A314252(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315761

/-- `A330025(n)+A314252(n)` -/
def P1947908363640495384.Spec : Prop :=
  ∀ n, P1947908363640495384.a n = A315761 n

theorem P1947908363640495384.correct : P1947908363640495384.Spec := by
  intro n
  simp only [A315761]

end A315761

/-! ## A315761.P9334612205622958677

`abs(A008592(n)-A311289(n))`
-/

namespace A315761.P9334612205622958677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311289 n|

end

end A315761.P9334612205622958677

namespace A315761

/-- `abs(A008592(n)-A311289(n))` -/
def P9334612205622958677.Spec : Prop :=
  ∀ n, P9334612205622958677.a n = A315761 n

end A315761

/-! ## A315761.P2059642558274217806

`A313537(n)+A047263(n+1)`
-/

namespace A315761.P2059642558274217806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n + A047263 (n + 1)

end

end A315761.P2059642558274217806

namespace A315761

/-- `A313537(n)+A047263(n+1)` -/
def P2059642558274217806.Spec : Prop :=
  ∀ n, P2059642558274217806.a n = A315761 n

end A315761

/-! ## A315761.P5057580711305754768

`A314827(n)+A047299(n+1)`
-/

namespace A315761.P5057580711305754768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n + A047299 (n + 1)

end

end A315761.P5057580711305754768

namespace A315761

/-- `A314827(n)+A047299(n+1)` -/
def P5057580711305754768.Spec : Prop :=
  ∀ n, P5057580711305754768.a n = A315761 n

end A315761

/-! ## A315761.P12570347829235188089

`A314670(n)+A047486(n+1)`
-/

namespace A315761.P12570347829235188089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A047486 (n + 1)

end

end A315761.P12570347829235188089

namespace A315761

/-- `A314670(n)+A047486(n+1)` -/
def P12570347829235188089.Spec : Prop :=
  ∀ n, P12570347829235188089.a n = A315761 n

end A315761

/-! ## A315761.P11314151387533546400

`(A315755(n)+A008458(n))/2`
-/

namespace A315761.P11314151387533546400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315755 n + A008458 n : ℚ) / 2

end

end A315761.P11314151387533546400

namespace A315761

/-- `(A315755(n)+A008458(n))/2` -/
def P11314151387533546400.Spec : Prop :=
  ∀ n, P11314151387533546400.a n = (A315761 n : ℚ)

end A315761

/-! ## A315761.P12237347710343222811

`A253262(n)+A312195(n)+n`
-/

namespace A315761.P12237347710343222811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A312195 n + (n : ℤ))

end

end A315761.P12237347710343222811

namespace A315761

/-- `A253262(n)+A312195(n)+n` -/
def P12237347710343222811.Spec : Prop :=
  ∀ n, P12237347710343222811.a n = A315761 n

end A315761

/-! ## A315761.P16005674348647546286

`A313116(n)+A330025(n)+n`
-/

namespace A315761.P16005674348647546286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + (A330025 n + (n : ℤ))

end

end A315761.P16005674348647546286

namespace A315761

/-- `A313116(n)+A330025(n)+n` -/
def P16005674348647546286.Spec : Prop :=
  ∀ n, P16005674348647546286.a n = A315761 n

theorem P16005674348647546286.correct : P16005674348647546286.Spec := by
  intro n
  simp only [A315761, Nat.add_sub_cancel, A315761.P16005674348647546286.a, A315761.P1947908363640495384.a, A313116, A313116.P8612234978426201844.a, A314252, A314252.P9634804335758676249.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A312162, A312162.P8460047677510331873.a, A008574, A008574.P1300280032690682112.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315761

/-! ## A315761.P16530431561878978557

`A008458(n)+n-A151988(n)`
-/

namespace A315761.P16530431561878978557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A151988 n)

end

end A315761.P16530431561878978557

namespace A315761

/-- `A008458(n)+n-A151988(n)` -/
def P16530431561878978557.Spec : Prop :=
  ∀ n, P16530431561878978557.a n = A315761 n

end A315761

/-! ## A315761.P4159825195118564460

`A022144(n)-(A151988(n)+n)`
-/

namespace A315761.P4159825195118564460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A151988 n + (n : ℤ))

end

end A315761.P4159825195118564460

namespace A315761

/-- `A022144(n)-(A151988(n)+n)` -/
def P4159825195118564460.Spec : Prop :=
  ∀ n, P4159825195118564460.a n = A315761 n

end A315761

/-! ## A315761.P5827518065850515650

`A005843(n)-(n-A313719(n))`
-/

namespace A315761.P5827518065850515650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313719 n)

end

end A315761.P5827518065850515650

namespace A315761

/-- `A005843(n)-(n-A313719(n))` -/
def P5827518065850515650.Spec : Prop :=
  ∀ n, P5827518065850515650.a n = A315761 n

end A315761

/-! ## A315761.P4989206614536056914

`record[A165998(n)]+n-A151988(n)`
-/

namespace A315761.P4989206614536056914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - A151988 n)

end

end A315761.P4989206614536056914

namespace A315761

/-- `record[A165998(n)]+n-A151988(n)` -/
def P4989206614536056914.Spec : Prop :=
  ∀ n, P4989206614536056914.a n = A315761 n

end A315761

/-! ## A315761.P4230830817055328551

`A004275(A016813(n))-(A151988(n)+n)`
-/

namespace A315761.P4230830817055328551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A016813 n).toNat - (A151988 n + (n : ℤ))

end

end A315761.P4230830817055328551

namespace A315761

/-- `A004275(A016813(n))-(A151988(n)+n)` -/
def P4230830817055328551.Spec : Prop :=
  ∀ n, P4230830817055328551.a n = A315761 n

end A315761

/-! ## A315761.P6579901927498991427

`A008458(n)+A008574(n)-A311289(n)`
-/

namespace A315761.P6579901927498991427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311289 n)

end

end A315761.P6579901927498991427

namespace A315761

/-- `A008458(n)+A008574(n)-A311289(n)` -/
def P6579901927498991427.Spec : Prop :=
  ∀ n, P6579901927498991427.a n = A315761 n

end A315761

/-! ## A315761.P13359982296746449368

`A151988(A008706(n))+n-A151988(n)`
-/

namespace A315761.P13359982296746449368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008706 n).toNat + ((n : ℤ) - A151988 n)

end

end A315761.P13359982296746449368

namespace A315761

/-- `A151988(A008706(n))+n-A151988(n)` -/
def P13359982296746449368.Spec : Prop :=
  ∀ n, P13359982296746449368.a n = A315761 n

end A315761

/-!
# A315762: Coordination sequence Gal.6.627.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315762, the canonical program `A315762.P14667034612637808872` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315762 has offset 0).

The definition of A315762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315762.P14667034612637808872

`abs(10*n-A311262(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315762

/-- `abs(10*n-A311262(n))` -/
def P14667034612637808872.Spec : Prop :=
  ∀ n, P14667034612637808872.a n = A315762 n

theorem P14667034612637808872.correct : P14667034612637808872.Spec := by
  intro n
  simp only [A315762]

end A315762

/-! ## A315762.P4337254091586791705

`2*A008706(n)-A311262(n)`
-/

namespace A315762.P4337254091586791705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311262 n

end

end A315762.P4337254091586791705

namespace A315762

/-- `2*A008706(n)-A311262(n)` -/
def P4337254091586791705.Spec : Prop :=
  ∀ n, P4337254091586791705.a n = A315762 n

end A315762

/-! ## A315762.P1296614218729889846

`(A315756(n)+A008458(n))/2`
-/

namespace A315762.P1296614218729889846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315756 n + A008458 n : ℚ) / 2

end

end A315762.P1296614218729889846

namespace A315762

/-- `(A315756(n)+A008458(n))/2` -/
def P1296614218729889846.Spec : Prop :=
  ∀ n, P1296614218729889846.a n = (A315762 n : ℚ)

end A315762

/-! ## A315762.P15912642409725439592

`A008590(n)+A001057(A311356(n))`
-/

namespace A315762.P15912642409725439592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + A001057 (A311356 n).toNat

end

end A315762.P15912642409725439592

namespace A315762

/-- `A008590(n)+A001057(A311356(n))` -/
def P15912642409725439592.Spec : Prop :=
  ∀ n, P15912642409725439592.a n = A315762 n

end A315762

/-! ## A315762.P10986879581158703943

`A008458(n)+A008574(n)-A311262(n)`
-/

namespace A315762.P10986879581158703943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311262 n)

end

end A315762.P10986879581158703943

namespace A315762

/-- `A008458(n)+A008574(n)-A311262(n)` -/
def P10986879581158703943.Spec : Prop :=
  ∀ n, P10986879581158703943.a n = A315762 n

end A315762

/-! ## A315762.P5824132414515178970

`A005843(n)+A005843(A008574(n))-A311262(n)`
-/

namespace A315762.P5824132414515178970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311262 n)

end

end A315762.P5824132414515178970

namespace A315762

/-- `A005843(n)+A005843(A008574(n))-A311262(n)` -/
def P5824132414515178970.Spec : Prop :=
  ∀ n, P5824132414515178970.a n = A315762 n

end A315762

/-! ## A315762.P2289250567440681164

`A315756(n)+A001281(A008458(n)-A315756(n))`
-/

namespace A315762.P2289250567440681164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315756 n + A001281 (A008458 n - A315756 n).toNat

end

end A315762.P2289250567440681164

namespace A315762

/-- `A315756(n)+A001281(A008458(n)-A315756(n))` -/
def P2289250567440681164.Spec : Prop :=
  ∀ n, P2289250567440681164.a n = A315762 n

end A315762

/-! ## A315762.P7597267479271918871

`A315756(n)+A004525(A008458(n)-A315756(n))`
-/

namespace A315762.P7597267479271918871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315756 n + A004525 (A008458 n - A315756 n).toNat

end

end A315762.P7597267479271918871

namespace A315762

/-- `A315756(n)+A004525(A008458(n)-A315756(n))` -/
def P7597267479271918871.Spec : Prop :=
  ∀ n, P7597267479271918871.a n = A315762 n

end A315762

/-! ## A315762.P7594986424347720547

`A315519(n)+A004525(A315519(n)-A315183(n))`
-/

namespace A315762.P7594986424347720547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315519 n + A004525 (A315519 n - A315183 n).toNat

end

end A315762.P7594986424347720547

namespace A315762

/-- `A315519(n)+A004525(A315519(n)-A315183(n))` -/
def P7594986424347720547.Spec : Prop :=
  ∀ n, P7594986424347720547.a n = A315762 n

end A315762

/-! ## A315762.P5574830904990645071

`A008458(n)-A004526(A008458(n)-A315756(n))`
-/

namespace A315762.P5574830904990645071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315756 n).toNat

end

end A315762.P5574830904990645071

namespace A315762

/-- `A008458(n)-A004526(A008458(n)-A315756(n))` -/
def P5574830904990645071.Spec : Prop :=
  ∀ n, P5574830904990645071.a n = A315762 n

end A315762

/-! ## A315762.P818256388744313071

`A005843(A008706(n))-A311262(n)`
-/

namespace A315762.P818256388744313071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311262 n

end

end A315762.P818256388744313071

namespace A315762

/-- `A005843(A008706(n))-A311262(n)` -/
def P818256388744313071.Spec : Prop :=
  ∀ n, P818256388744313071.a n = A315762 n

end A315762

/-! ## A315762.P727386042772307109

`A005843(A008574(n)+n)-A311262(n)`
-/

namespace A315762.P727386042772307109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A311262 n

end

end A315762.P727386042772307109

namespace A315762

/-- `A005843(A008574(n)+n)-A311262(n)` -/
def P727386042772307109.Spec : Prop :=
  ∀ n, P727386042772307109.a n = A315762 n

end A315762

/-! ## A315762.P11377063933536016615

`A008486(n)+A004526(A315756(n))`
-/

namespace A315762.P11377063933536016615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315756 n).toNat

end

end A315762.P11377063933536016615

namespace A315762

/-- `A008486(n)+A004526(A315756(n))` -/
def P11377063933536016615.Spec : Prop :=
  ∀ n, P11377063933536016615.a n = A315762 n

end A315762

/-! ## A315762.P9917728647411609343

`A313615(2*n)-4*n`
-/

namespace A315762.P9917728647411609343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 (2 * n) - (4 * n : ℤ)

end

end A315762.P9917728647411609343

namespace A315762

/-- `A313615(2*n)-4*n` -/
def P9917728647411609343.Spec : Prop :=
  ∀ n, P9917728647411609343.a n = A315762 n

end A315762

/-! ## A315762.P98921224443485376

`2*A008574(2*n)-A313834(2*n)`
-/

namespace A315762.P98921224443485376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313834 (2 * n)

end

end A315762.P98921224443485376

namespace A315762

/-- `2*A008574(2*n)-A313834(2*n)` -/
def P98921224443485376.Spec : Prop :=
  ∀ n, P98921224443485376.a n = A315762 n

end A315762

/-! ## A315762.P11182833461521234807

`A004396(A313718(n)+A008574(n))`
-/

namespace A315762.P11182833461521234807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313718 n + A008574 n).toNat

end

end A315762.P11182833461521234807

namespace A315762

/-- `A004396(A313718(n)+A008574(n))` -/
def P11182833461521234807.Spec : Prop :=
  ∀ n, P11182833461521234807.a n = A315762 n

end A315762

/-! ## A315762.P15203126521714140685

`A008574(2*n)-A134119(A315730(2*n))`
-/

namespace A315762.P15203126521714140685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A134119 (A315730 (2 * n)).toNat

end

end A315762.P15203126521714140685

namespace A315762

/-- `A008574(2*n)-A134119(A315730(2*n))` -/
def P15203126521714140685.Spec : Prop :=
  ∀ n, P15203126521714140685.a n = A315762 n

end A315762

/-! ## A315762.P3363075722219208875

`A001281(A315756(n)+A008458(n))`
-/

namespace A315762.P3363075722219208875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315756 n + A008458 n).toNat

end

end A315762.P3363075722219208875

namespace A315762

/-- `A001281(A315756(n)+A008458(n))` -/
def P3363075722219208875.Spec : Prop :=
  ∀ n, P3363075722219208875.a n = A315762 n

end A315762

/-! ## A315762.P223813245470496683

`A004525(A315756(n)+A008458(n))`
-/

namespace A315762.P223813245470496683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315756 n + A008458 n).toNat

end

end A315762.P223813245470496683

namespace A315762

/-- `A004525(A315756(n)+A008458(n))` -/
def P223813245470496683.Spec : Prop :=
  ∀ n, P223813245470496683.a n = A315762 n

end A315762

/-! ## A315762.P4762028731433801165

`A004526(A315756(n)+A008458(n))`
-/

namespace A315762.P4762028731433801165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315756 n + A008458 n).toNat

end

end A315762.P4762028731433801165

namespace A315762

/-- `A004526(A315756(n)+A008458(n))` -/
def P4762028731433801165.Spec : Prop :=
  ∀ n, P4762028731433801165.a n = A315762 n

end A315762

/-!
# A315763: Coordination sequence Gal.6.628.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315763, the canonical program `A315763.P15886996602990195972` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315763 has offset 0).

The definition of A315763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315763.P15886996602990195972

`A313720(n)+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315763

/-- `A313720(n)+n` -/
def P15886996602990195972.Spec : Prop :=
  ∀ n, P15886996602990195972.a n = A315763 n

theorem P15886996602990195972.correct : P15886996602990195972.Spec := by
  intro n
  simp only [A315763]

end A315763

/-! ## A315763.P11018396014299624878

`abs(11*n-A313747(n))`
-/

namespace A315763.P11018396014299624878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313747 n|

end

end A315763.P11018396014299624878

namespace A315763

/-- `abs(11*n-A313747(n))` -/
def P11018396014299624878.Spec : Prop :=
  ∀ n, P11018396014299624878.a n = A315763 n

end A315763

/-! ## A315763.P10965306814164133038

`A314110(n)+A004396(n)`
-/

namespace A315763.P10965306814164133038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n + A004396 n

end

end A315763.P10965306814164133038

namespace A315763

/-- `A314110(n)+A004396(n)` -/
def P10965306814164133038.Spec : Prop :=
  ∀ n, P10965306814164133038.a n = A315763 n

theorem P10965306814164133038.correct : P10965306814164133038.Spec := by
  intro n
  simp only [A315763, Nat.add_sub_cancel, A315763.P10965306814164133038.a, A315763.P15886996602990195972.a, A004396, A004396.P17032557045289780609.a, A313720, A313720.P17061328062091106116.a, A314110, A314110.P11829887775557874322.a, A312890, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315763

/-! ## A315763.P6130741591134749762

`A315534(n)+A002264(n+1)`
-/

namespace A315763.P6130741591134749762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315534 n + A002264 (n + 1)

end

end A315763.P6130741591134749762

namespace A315763

/-- `A315534(n)+A002264(n+1)` -/
def P6130741591134749762.Spec : Prop :=
  ∀ n, P6130741591134749762.a n = A315763 n

end A315763

/-! ## A315763.P11031660141061267678

`A312890(n)+A047222(n+1)`
-/

namespace A315763.P11031660141061267678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A047222 (n + 1)

end

end A315763.P11031660141061267678

namespace A315763

/-- `A312890(n)+A047222(n+1)` -/
def P11031660141061267678.Spec : Prop :=
  ∀ n, P11031660141061267678.a n = A315763 n

end A315763

/-! ## A315763.P13314171315932877618

`A313088(n)+A047424(n+1)`
-/

namespace A315763.P13314171315932877618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + A047424 (n + 1)

end

end A315763.P13314171315932877618

namespace A315763

/-- `A313088(n)+A047424(n+1)` -/
def P13314171315932877618.Spec : Prop :=
  ∀ n, P13314171315932877618.a n = A315763 n

end A315763

/-! ## A315763.P5508214533517977870

`A313485(n)+A047513(n+1)`
-/

namespace A315763.P5508214533517977870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A047513 (n + 1)

end

end A315763.P5508214533517977870

namespace A315763

/-- `A313485(n)+A047513(n+1)` -/
def P5508214533517977870.Spec : Prop :=
  ∀ n, P5508214533517977870.a n = A315763 n

end A315763

/-! ## A315763.P9654381691357772403

`A314706(n)+A047273(n+1)`
-/

namespace A315763.P9654381691357772403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + A047273 (n + 1)

end

end A315763.P9654381691357772403

namespace A315763

/-- `A314706(n)+A047273(n+1)` -/
def P9654381691357772403.Spec : Prop :=
  ∀ n, P9654381691357772403.a n = A315763 n

end A315763

/-! ## A315763.P3245229854157759744

`A310373(n)+2*A004396(n)`
-/

namespace A315763.P3245229854157759744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310373 n + 2 * A004396 n

end

end A315763.P3245229854157759744

namespace A315763

/-- `A310373(n)+2*A004396(n)` -/
def P3245229854157759744.Spec : Prop :=
  ∀ n, P3245229854157759744.a n = A315763 n

end A315763

/-! ## A315763.P6592908902902840606

`2*A315760(n)-A315758(n)`
-/

namespace A315763.P6592908902902840606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315760 n - A315758 n

end

end A315763.P6592908902902840606

namespace A315763

/-- `2*A315760(n)-A315758(n)` -/
def P6592908902902840606.Spec : Prop :=
  ∀ n, P6592908902902840606.a n = A315763 n

end A315763

/-! ## A315763.P14253294931300360746

`A004396(n)+A312890(n)+n`
-/

namespace A315763.P14253294931300360746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312890 n + (n : ℤ))

end

end A315763.P14253294931300360746

namespace A315763

/-- `A004396(n)+A312890(n)+n` -/
def P14253294931300360746.Spec : Prop :=
  ∀ n, P14253294931300360746.a n = A315763 n

theorem P14253294931300360746.correct : P14253294931300360746.Spec := by
  intro n
  simp only [A315763, Nat.add_sub_cancel, A315763.P14253294931300360746.a, A315763.P15886996602990195972.a, A004396, A004396.P17032557045289780609.a, A312890, A312890.P5869710039852604831.a, A313720, A313720.P17061328062091106116.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315763

/-! ## A315763.P18401548487211061432

`A315534(n)+n-A004396(n)`
-/

namespace A315763.P18401548487211061432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315534 n + ((n : ℤ) - A004396 n)

end

end A315763.P18401548487211061432

namespace A315763

/-- `A315534(n)+n-A004396(n)` -/
def P18401548487211061432.Spec : Prop :=
  ∀ n, P18401548487211061432.a n = A315763 n

theorem P18401548487211061432.correct : P18401548487211061432.Spec := by
  intro n
  simp only [A315763, Nat.add_sub_cancel, A315763.P18401548487211061432.a, A315763.P15886996602990195972.a, A004396, A004396.P17032557045289780609.a, A313720, A313720.P17061328062091106116.a, A315534, A315534.P15836177857492630035.a, A312890, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315763

/-! ## A315763.P16134258144835479452

`A315488(n)+n-A004525(n)`
-/

namespace A315763.P16134258144835479452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n + ((n : ℤ) - A004525 n)

end

end A315763.P16134258144835479452

namespace A315763

/-- `A315488(n)+n-A004525(n)` -/
def P16134258144835479452.Spec : Prop :=
  ∀ n, P16134258144835479452.a n = A315763 n

theorem P16134258144835479452.correct : P16134258144835479452.Spec := by
  intro n
  simp only [A315763, Nat.add_sub_cancel, A315763.P16134258144835479452.a, A315763.P15886996602990195972.a, A004525, A004525.P4158271949796742323.a, A313720, A313720.P17061328062091106116.a, A315488, A315488.P5611134213742253392.a, A004396, A004396.P17032557045289780609.a, A312890, A312890.P5869710039852604831.a, A313556, A313556.P12127503874440300930.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315763

/-! ## A315763.P12906683506235165933

`A314110(n)+A002264(2*n+1)`
-/

namespace A315763.P12906683506235165933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n + A002264 (2 * n + 1)

end

end A315763.P12906683506235165933

namespace A315763

/-- `A314110(n)+A002264(2*n+1)` -/
def P12906683506235165933.Spec : Prop :=
  ∀ n, P12906683506235165933.a n = A315763 n

theorem P12906683506235165933.correct : P12906683506235165933.Spec := by
  intro n
  simp only [A315763, Nat.add_sub_cancel, A315763.P12906683506235165933.a, A315763.P15886996602990195972.a, A002264, A002264.P5647656940077635922.a, A313720, A313720.P17061328062091106116.a, A314110, A314110.P11829887775557874322.a, A004396, A004396.P17032557045289780609.a, A312890, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315763

/-! ## A315763.P6757742077446543123

`A047513(n+1)+A315687(n)-n`
-/

namespace A315763.P6757742077446543123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A315687 n - (n : ℤ))

end

end A315763.P6757742077446543123

namespace A315763

/-- `A047513(n+1)+A315687(n)-n` -/
def P6757742077446543123.Spec : Prop :=
  ∀ n, P6757742077446543123.a n = A315763 n

end A315763

/-! ## A315763.P7275267031549600660

`A008458(n)+A008574(n)-A311257(n)`
-/

namespace A315763.P7275267031549600660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311257 n)

end

end A315763.P7275267031549600660

namespace A315763

/-- `A008458(n)+A008574(n)-A311257(n)` -/
def P7275267031549600660.Spec : Prop :=
  ∀ n, P7275267031549600660.a n = A315763 n

end A315763

/-! ## A315763.P4592586137009400630

`A008486(n)+A315534(n)-A008576(n)`
-/

namespace A315763.P4592586137009400630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315534 n - A008576 n)

end

end A315763.P4592586137009400630

namespace A315763

/-- `A008486(n)+A315534(n)-A008576(n)` -/
def P4592586137009400630.Spec : Prop :=
  ∀ n, P4592586137009400630.a n = A315763 n

end A315763

/-! ## A315763.P15689465231760197245

`A004396(n)+A310452(n)+A004396(A004525(n))`
-/

namespace A315763.P15689465231760197245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310452 n + A004396 (A004525 n).toNat)

end

end A315763.P15689465231760197245

namespace A315763

/-- `A004396(n)+A310452(n)+A004396(A004525(n))` -/
def P15689465231760197245.Spec : Prop :=
  ∀ n, P15689465231760197245.a n = A315763 n

end A315763

/-!
# A315764: Coordination sequence Gal.4.138.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315764, the canonical program `A315764.P17078646225777516565` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315764 has offset 0).

The definition of A315764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315764.P9830973688730913797

`A008458(A301718(n)-A313100(n))`
-/

namespace A315764.P9830973688730913797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A301718 n - A313100 n).toNat

end

end A315764.P9830973688730913797

namespace A315764

/-- `A008458(A301718(n)-A313100(n))` -/
def P9830973688730913797.Spec : Prop :=
  ∀ n, P9830973688730913797.a n = A315764 n

end A315764

/-! ## A315764.P10403284602712491464

`A008458(A301718(n)%A313100(n))`
-/

namespace A315764.P10403284602712491464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A301718 n) (A313100 n)).toNat

end

end A315764.P10403284602712491464

namespace A315764

/-- `A008458(A301718(n)%A313100(n))` -/
def P10403284602712491464.Spec : Prop :=
  ∀ n, P10403284602712491464.a n = A315764 n

end A315764

/-! ## A315764.P17078646225777516565

`A008486(2*(A301718(n)-A313100(n)))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315764

/-- `A008486(2*(A301718(n)-A313100(n)))` -/
def P17078646225777516565.Spec : Prop :=
  ∀ n, P17078646225777516565.a n = A315764 n

theorem P17078646225777516565.correct : P17078646225777516565.Spec := by
  intro n
  simp only [A315764]

end A315764

/-! ## A315764.P10527456277451438818

`A315617(n)+A315623(n)-A315581(n)`
-/

namespace A315764.P10527456277451438818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315617 n + (A315623 n - A315581 n)

end

end A315764.P10527456277451438818

namespace A315764

/-- `A315617(n)+A315623(n)-A315581(n)` -/
def P10527456277451438818.Spec : Prop :=
  ∀ n, P10527456277451438818.a n = A315764 n

end A315764

/-! ## A315764.P13749298712306074828

`2*A315623(n)-A315596(n)`
-/

namespace A315764.P13749298712306074828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315623 n - A315596 n

end

end A315764.P13749298712306074828

namespace A315764

/-- `2*A315623(n)-A315596(n)` -/
def P13749298712306074828.Spec : Prop :=
  ∀ n, P13749298712306074828.a n = A315764 n

end A315764

/-! ## A315764.P17979938275543884156

`A315596(n)+A005843(A315623(n)-A315596(n))`
-/

namespace A315764.P17979938275543884156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315596 n + A005843 (A315623 n - A315596 n).toNat

end

end A315764.P17979938275543884156

namespace A315764

/-- `A315596(n)+A005843(A315623(n)-A315596(n))` -/
def P17979938275543884156.Spec : Prop :=
  ∀ n, P17979938275543884156.a n = A315764 n

end A315764

/-! ## A315764.P4345648898934296032

`A005843(A315623(n))-A315596(n)`
-/

namespace A315764.P4345648898934296032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315623 n).toNat - A315596 n

end

end A315764.P4345648898934296032

namespace A315764

/-- `A005843(A315623(n))-A315596(n)` -/
def P4345648898934296032.Spec : Prop :=
  ∀ n, P4345648898934296032.a n = A315764 n

end A315764

/-!
# A315765: Coordination sequence Gal.4.146.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315765, the canonical program `A315765.P2144105475337667791` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315765 has offset 0).

The definition of A315765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315765.P2144105475337667791

`A008458(A047263(n+1)-Δ[A011861(n)])`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315765

/-- `A008458(A047263(n+1)-Δ[A011861(n)])` -/
def P2144105475337667791.Spec : Prop :=
  ∀ n, P2144105475337667791.a n = A315765 n

theorem P2144105475337667791.correct : P2144105475337667791.Spec := by
  intro n
  simp only [A315765]

end A315765

/-! ## A315765.P11713593575225798506

`A008458(A315704(n)-A313568(n))`
-/

namespace A315765.P11713593575225798506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A315704 n - A313568 n).toNat

end

end A315765.P11713593575225798506

namespace A315765

/-- `A008458(A315704(n)-A313568(n))` -/
def P11713593575225798506.Spec : Prop :=
  ∀ n, P11713593575225798506.a n = A315765 n

end A315765

/-! ## A315765.P1019417715286860182

`A008458(A315704(n)%A313568(n))`
-/

namespace A315765.P1019417715286860182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A315704 n) (A313568 n)).toNat

end

end A315765.P1019417715286860182

namespace A315765

/-- `A008458(A315704(n)%A313568(n))` -/
def P1019417715286860182.Spec : Prop :=
  ∀ n, P1019417715286860182.a n = A315765 n

end A315765

/-! ## A315765.P14257702364285914247

`A008486(2*(A315704(n)-A313568(n)))`
-/

namespace A315765.P14257702364285914247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * (A315704 n - A313568 n)).toNat

end

end A315765.P14257702364285914247

namespace A315765

/-- `A008486(2*(A315704(n)-A313568(n)))` -/
def P14257702364285914247.Spec : Prop :=
  ∀ n, P14257702364285914247.a n = A315765 n

end A315765

/-! ## A315765.P298854101152333790

`A028310(6*(A315704(n)-A313568(n)))`
-/

namespace A315765.P298854101152333790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (6 * (A315704 n - A313568 n)).toNat

end

end A315765.P298854101152333790

namespace A315765

/-- `A028310(6*(A315704(n)-A313568(n)))` -/
def P298854101152333790.Spec : Prop :=
  ∀ n, P298854101152333790.a n = A315765 n

end A315765

/-!
# A315766: Coordination sequence Gal.6.632.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315766, there is no canonical definition to state claims against.
-/

/-! ## A315766.P2102778344871616163

`A008458(A187829(n+1)-A000120(A098361(n)))`
-/

namespace A315766.P2102778344871616163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A187829 (n + 1) - A000120 (A098361 n).toNat).toNat

end

end A315766.P2102778344871616163

/-! ## A315766.P11576781450168963772

`A008458(n)-A160086(A033484(n))`
-/

namespace A315766.P11576781450168963772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A160086 (A033484 n).toNat

end

end A315766.P11576781450168963772

/-! ## A315766.P12346629849689823738

`A008458((A008574(n)-A001221(2^(n-1)*∑[n+2]))%A033627(n+1))`
-/

namespace A315766.P12346629849689823738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A008574 n - A001221 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat) (A033627 (n + 1))).toNat

end

end A315766.P12346629849689823738

/-! ## A315766.P6335822208147546853

`A315781(eq[A326682(n), A359893(2*n+3)])`
-/

namespace A315766.P6335822208147546853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315781 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315766.P6335822208147546853

/-! ## A315766.P14275191313292872685

`A008458(n)+A005928(A110735(n+1))`
-/

namespace A315766.P14275191313292872685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + A005928 (A110735 (n + 1)).toNat

end

end A315766.P14275191313292872685

/-!
# A315767: Coordination sequence Gal.6.627.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315767, the canonical program `A315767.P12035328824597699860` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315767 has offset 0).

The definition of A315767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315767.P17740984352002731631

`A047513(A313024(n)+1)`
-/

namespace A315767.P17740984352002731631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A313024 n + 1).toNat

end

end A315767.P17740984352002731631

namespace A315767

/-- `A047513(A313024(n)+1)` -/
def P17740984352002731631.Spec : Prop :=
  ∀ n, P17740984352002731631.a n = A315767 n

end A315767

/-! ## A315767.P5121078026366421007

`abs(A008592(n)-A311225(n))`
-/

namespace A315767.P5121078026366421007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311225 n|

end

end A315767.P5121078026366421007

namespace A315767

/-- `abs(A008592(n)-A311225(n))` -/
def P5121078026366421007.Spec : Prop :=
  ∀ n, P5121078026366421007.a n = A315767 n

end A315767

/-! ## A315767.P1081529446679545072

`2*A008706(n)-A311225(n)`
-/

namespace A315767.P1081529446679545072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311225 n

end

end A315767.P1081529446679545072

namespace A315767

/-- `2*A008706(n)-A311225(n)` -/
def P1081529446679545072.Spec : Prop :=
  ∀ n, P1081529446679545072.a n = A315767 n

end A315767

/-! ## A315767.P12035328824597699860

`2*A313730(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315767

/-- `2*A313730(n)-A008574(n)` -/
def P12035328824597699860.Spec : Prop :=
  ∀ n, P12035328824597699860.a n = A315767 n

theorem P12035328824597699860.correct : P12035328824597699860.Spec := by
  intro n
  simp only [A315767]

end A315767

/-! ## A315767.P5708919697939589787

`A004275(A313730(n)-A004273(n))`
-/

namespace A315767.P5708919697939589787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313730 n - A004273 n).toNat

end

end A315767.P5708919697939589787

namespace A315767

/-- `A004275(A313730(n)-A004273(n))` -/
def P5708919697939589787.Spec : Prop :=
  ∀ n, P5708919697939589787.a n = A315767 n

end A315767

/-! ## A315767.P5915573090581749272

`A008458(n)+A008574(n)-A311225(n)`
-/

namespace A315767.P5915573090581749272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311225 n)

end

end A315767.P5915573090581749272

namespace A315767

/-- `A008458(n)+A008574(n)-A311225(n)` -/
def P5915573090581749272.Spec : Prop :=
  ∀ n, P5915573090581749272.a n = A315767 n

end A315767

/-! ## A315767.P11032835612105721246

`A004273(A313730(n)-n)-A004273(n)`
-/

namespace A315767.P11032835612105721246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313730 n - (n : ℤ)).toNat - A004273 n

end

end A315767.P11032835612105721246

namespace A315767

/-- `A004273(A313730(n)-n)-A004273(n)` -/
def P11032835612105721246.Spec : Prop :=
  ∀ n, P11032835612105721246.a n = A315767 n

end A315767

/-! ## A315767.P2367213677982476204

`A008574(n)+A005843(A313730(n)-A008574(n))`
-/

namespace A315767.P2367213677982476204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313730 n - A008574 n).toNat

end

end A315767.P2367213677982476204

namespace A315767

/-- `A008574(n)+A005843(A313730(n)-A008574(n))` -/
def P2367213677982476204.Spec : Prop :=
  ∀ n, P2367213677982476204.a n = A315767 n

end A315767

/-! ## A315767.P8651187398655083554

`A314244(n)+A004525(A314244(n)-A310523(n))`
-/

namespace A315767.P8651187398655083554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314244 n + A004525 (A314244 n - A310523 n).toNat

end

end A315767.P8651187398655083554

namespace A315767

/-- `A314244(n)+A004525(A314244(n)-A310523(n))` -/
def P8651187398655083554.Spec : Prop :=
  ∀ n, P8651187398655083554.a n = A315767 n

end A315767

/-! ## A315767.P228487286042399277

`A005843(A313730(n))-A008574(n)`
-/

namespace A315767.P228487286042399277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313730 n).toNat - A008574 n

end

end A315767.P228487286042399277

namespace A315767

/-- `A005843(A313730(n))-A008574(n)` -/
def P228487286042399277.Spec : Prop :=
  ∀ n, P228487286042399277.a n = A315767 n

end A315767

/-! ## A315767.P4101443378640533315

`A004275(A313730(n))-A004275(2*n)`
-/

namespace A315767.P4101443378640533315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313730 n).toNat - A004275 (2 * n)

end

end A315767.P4101443378640533315

namespace A315767

/-- `A004275(A313730(n))-A004275(2*n)` -/
def P4101443378640533315.Spec : Prop :=
  ∀ n, P4101443378640533315.a n = A315767 n

end A315767

/-! ## A315767.P14989200650500607127

`A005843(A008706(n))-A311225(n)`
-/

namespace A315767.P14989200650500607127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311225 n

end

end A315767.P14989200650500607127

namespace A315767

/-- `A005843(A008706(n))-A311225(n)` -/
def P14989200650500607127.Spec : Prop :=
  ∀ n, P14989200650500607127.a n = A315767 n

end A315767

/-! ## A315767.P6432269743903705749

`A310413(2*n)-4*n`
-/

namespace A315767.P6432269743903705749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310413 (2 * n) - (4 * n : ℤ)

end

end A315767.P6432269743903705749

namespace A315767

/-- `A310413(2*n)-4*n` -/
def P6432269743903705749.Spec : Prop :=
  ∀ n, P6432269743903705749.a n = A315767 n

end A315767

/-! ## A315767.P12768658274765184104

`2*A008574(2*n)-A315307(2*n)`
-/

namespace A315767.P12768658274765184104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315307 (2 * n)

end

end A315767.P12768658274765184104

namespace A315767

/-- `2*A008574(2*n)-A315307(2*n)` -/
def P12768658274765184104.Spec : Prop :=
  ∀ n, P12768658274765184104.a n = A315767 n

end A315767

/-!
# A315768: Coordination sequence Gal.6.628.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315768, the canonical program `A315768.P5080605822707988904` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315768 has offset 0).

The definition of A315768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315768.P1878213884378251607

`A313729(n)+n`
-/

namespace A315768.P1878213884378251607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n + (n : ℤ)

end

end A315768.P1878213884378251607

namespace A315768

/-- `A313729(n)+n` -/
def P1878213884378251607.Spec : Prop :=
  ∀ n, P1878213884378251607.a n = A315768 n

end A315768

/-! ## A315768.P5080605822707988904

`A314208(n)+A004525(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315768

/-- `A314208(n)+A004525(n)` -/
def P5080605822707988904.Spec : Prop :=
  ∀ n, P5080605822707988904.a n = A315768 n

theorem P5080605822707988904.correct : P5080605822707988904.Spec := by
  intro n
  simp only [A315768]

end A315768

/-! ## A315768.P14177844138515066961

`abs(A008592(n)-A311196(n))`
-/

namespace A315768.P14177844138515066961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311196 n|

end

end A315768.P14177844138515066961

namespace A315768

/-- `abs(A008592(n)-A311196(n))` -/
def P14177844138515066961.Spec : Prop :=
  ∀ n, P14177844138515066961.a n = A315768 n

end A315768

/-! ## A315768.P18245021562111655084

`abs(A008593(n)-A313739(n))`
-/

namespace A315768.P18245021562111655084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313739 n|

end

end A315768.P18245021562111655084

namespace A315768

/-- `abs(A008593(n)-A313739(n))` -/
def P18245021562111655084.Spec : Prop :=
  ∀ n, P18245021562111655084.a n = A315768 n

end A315768

/-! ## A315768.P10924333888435971700

`A314208(n)+Δ[A054925(n)]`
-/

namespace A315768.P10924333888435971700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n + (f1 (n + 1) - f1 n)

end

end A315768.P10924333888435971700

namespace A315768

/-- `A314208(n)+Δ[A054925(n)]` -/
def P10924333888435971700.Spec : Prop :=
  ∀ n, P10924333888435971700.a n = A315768 n

end A315768

/-! ## A315768.P13329230109780281653

`A314884(n)+A042965(n+1)`
-/

namespace A315768.P13329230109780281653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + A042965 (n + 1)

end

end A315768.P13329230109780281653

namespace A315768

/-- `A314884(n)+A042965(n+1)` -/
def P13329230109780281653.Spec : Prop :=
  ∀ n, P13329230109780281653.a n = A315768 n

end A315768

/-! ## A315768.P2257109467555760456

`A313023(n)+A047229(n+1)`
-/

namespace A315768.P2257109467555760456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313023 n + A047229 (n + 1)

end

end A315768.P2257109467555760456

namespace A315768

/-- `A313023(n)+A047229(n+1)` -/
def P2257109467555760456.Spec : Prop :=
  ∀ n, P2257109467555760456.a n = A315768 n

end A315768

/-! ## A315768.P11514076870210066881

`A314884(n)+A004396(2*n)`
-/

namespace A315768.P11514076870210066881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + A004396 (2 * n)

end

end A315768.P11514076870210066881

namespace A315768

/-- `A314884(n)+A004396(2*n)` -/
def P11514076870210066881.Spec : Prop :=
  ∀ n, P11514076870210066881.a n = A315768 n

end A315768

/-! ## A315768.P9362857466245492400

`A004525(n)+A313023(n)+n`
-/

namespace A315768.P9362857466245492400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313023 n + (n : ℤ))

end

end A315768.P9362857466245492400

namespace A315768

/-- `A004525(n)+A313023(n)+n` -/
def P9362857466245492400.Spec : Prop :=
  ∀ n, P9362857466245492400.a n = A315768 n

end A315768

/-! ## A315768.P11687935540448012212

`A315403(n)+n-A128834(n)`
-/

namespace A315768.P11687935540448012212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315403 n + ((n : ℤ) - A128834 n)

end

end A315768.P11687935540448012212

namespace A315768

/-- `A315403(n)+n-A128834(n)` -/
def P11687935540448012212.Spec : Prop :=
  ∀ n, P11687935540448012212.a n = A315768 n

end A315768

/-! ## A315768.P1780593263937036756

`A315540(n)+A004525(n-A004396(n))`
-/

namespace A315768.P1780593263937036756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A315768.P1780593263937036756

namespace A315768

/-- `A315540(n)+A004525(n-A004396(n))` -/
def P1780593263937036756.Spec : Prop :=
  ∀ n, P1780593263937036756.a n = A315768 n

end A315768

/-! ## A315768.P14102168929273394314

`A008458(n)+A008574(n)-A311196(n)`
-/

namespace A315768.P14102168929273394314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311196 n)

end

end A315768.P14102168929273394314

namespace A315768

/-- `A008458(n)+A008574(n)-A311196(n)` -/
def P14102168929273394314.Spec : Prop :=
  ∀ n, P14102168929273394314.a n = A315768 n

end A315768

/-! ## A315768.P11199164086218916800

`A008574(n)+A314884(n)-A008576(n)`
-/

namespace A315768.P11199164086218916800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314884 n - A008576 n)

end

end A315768.P11199164086218916800

namespace A315768

/-- `A008574(n)+A314884(n)-A008576(n)` -/
def P11199164086218916800.Spec : Prop :=
  ∀ n, P11199164086218916800.a n = A315768 n

end A315768

/-!
# A315769: Coordination sequence Gal.6.370.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315769, the canonical program `A315769.P6576571063026310288` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315769 has offset 0).

The definition of A315769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315769.P60212571438169905

`A040001(n)*A301716(A026741(n))`
-/

namespace A315769.P60212571438169905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A301716 (A026741 n).toNat

end

end A315769.P60212571438169905

namespace A315769

/-- `A040001(n)*A301716(A026741(n))` -/
def P60212571438169905.Spec : Prop :=
  ∀ n, P60212571438169905.a n = A315769 n

end A315769

/-! ## A315769.P4921374272084805836

`A040001(n)*A301716(n/A040001(n))`
-/

namespace A315769.P4921374272084805836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A301716 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A315769.P4921374272084805836

namespace A315769

/-- `A040001(n)*A301716(n/A040001(n))` -/
def P4921374272084805836.Spec : Prop :=
  ∀ n, P4921374272084805836.a n = A315769 n

end A315769

/-! ## A315769.P6576571063026310288

`Δ[A267528(n+1)]*A301716(A026741(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315769

/-- `Δ[A267528(n+1)]*A301716(A026741(n))` -/
def P6576571063026310288.Spec : Prop :=
  ∀ n, P6576571063026310288.a n = A315769 n

theorem P6576571063026310288.correct : P6576571063026310288.Spec := by
  intro n
  simp only [A315769]

end A315769

/-! ## A315769.P11626864546767192309

`∏{p}[n, A000034(#+1)]*A301716(A026741(n))`
-/

namespace A315769.P11626864546767192309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A000034 (p + 1)) * A301716 (A026741 n).toNat

end

end A315769.P11626864546767192309

namespace A315769

/-- `∏{p}[n, A000034(#+1)]*A301716(A026741(n))` -/
def P11626864546767192309.Spec : Prop :=
  ∀ n, P11626864546767192309.a n = A315769 n

end A315769

/-! ## A315769.P2537328375242138992

`A000034(A007504(n))*A301716(A026741(n))`
-/

namespace A315769.P2537328375242138992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A007504 n).toNat * A301716 (A026741 n).toNat

end

end A315769.P2537328375242138992

namespace A315769

/-- `A000034(A007504(n))*A301716(A026741(n))` -/
def P2537328375242138992.Spec : Prop :=
  ∀ n, P2537328375242138992.a n = A315769 n

end A315769

/-!
# A315770: Coordination sequence Gal.5.307.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315770, the canonical program `A315770.P16809159360258042029` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315770 has offset 0).

The definition of A315770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315770.P16809159360258042029

`A008458(A315470(n)-A314677(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315770

/-- `A008458(A315470(n)-A314677(n))` -/
def P16809159360258042029.Spec : Prop :=
  ∀ n, P16809159360258042029.a n = A315770 n

theorem P16809159360258042029.correct : P16809159360258042029.Spec := by
  intro n
  simp only [A315770]

end A315770

/-! ## A315770.P6456568283129538247

`A008458(A315470(n)%A314677(n))`
-/

namespace A315770.P6456568283129538247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A315470 n) (A314677 n)).toNat

end

end A315770.P6456568283129538247

namespace A315770

/-- `A008458(A315470(n)%A314677(n))` -/
def P6456568283129538247.Spec : Prop :=
  ∀ n, P6456568283129538247.a n = A315770 n

end A315770

/-! ## A315770.P16730552960523399521

`A008458(ceil(6*n/7)^gcd(11, n))`
-/

namespace A315770.P16730552960523399521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (⌈6 * ((n : ℚ) / 7)⌉ ^ Nat.gcd 11 n).toNat

end

end A315770.P16730552960523399521

namespace A315770

/-- `A008458(ceil(6*n/7)^gcd(11, n))` -/
def P16730552960523399521.Spec : Prop :=
  ∀ n, P16730552960523399521.a n = A315770 n

end A315770

/-! ## A315770.P15280566486735619405

`A008458(round(log2(A280783(n+1))))`
-/

namespace A315770.P15280566486735619405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway (Real.logb 2 (A280783 (n + 1) : ℝ))).toNat

end

end A315770.P15280566486735619405

namespace A315770

/-- `A008458(round(log2(A280783(n+1))))` -/
def P15280566486735619405.Spec : Prop :=
  ∀ n, P15280566486735619405.a n = A315770 n

end A315770

/-! ## A315770.P12432987458765415448

`ceil(2/acot(3*n))-A020639(A053497(n))`
-/

namespace A315770.P12432987458765415448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (3 * n : ℝ)⌉ - A020639 (A053497 n).toNat

end

end A315770.P12432987458765415448

namespace A315770

/-- `ceil(2/acot(3*n))-A020639(A053497(n))` -/
def P12432987458765415448.Spec : Prop :=
  ∀ n, P12432987458765415448.a n = A315770 n

end A315770

/-!
# A315771: Coordination sequence Gal.6.629.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315771, there is no canonical definition to state claims against.
-/

/-! ## A315771.P14627419008038397998

`A008458(A156262(5*n+4)-A156262(3*n+4))`
-/

namespace A315771.P14627419008038397998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A156262 (5 * n + 4) - A156262 (3 * n + 4)).toNat

end

end A315771.P14627419008038397998

/-! ## A315771.P3069716254726586005

`A271114(n)-A325470(A264635(n+1))`
-/

namespace A315771.P3069716254726586005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A325470 (A264635 (n + 1)).toNat

end

end A315771.P3069716254726586005

/-! ## A315771.P14980727212312639717

`A033627(2*(n+1))-A064989(A290687(n))`
-/

namespace A315771.P14980727212312639717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (2 * (n + 1)) - A064989 (A290687 n).toNat

end

end A315771.P14980727212312639717

/-! ## A315771.P8141299452098168382

`A209900(A020646(n))`
-/

namespace A315771.P8141299452098168382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A020646 n).toNat

end

end A315771.P8141299452098168382

/-!
# A315772: Coordination sequence Gal.6.631.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315772, there is no canonical definition to state claims against.
-/

/-! ## A315772.P10485828884959300950

`A008458(A187829(n+1)-A025454(n))`
-/

namespace A315772.P10485828884959300950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A187829 (n + 1) - A025454 n).toNat

end

end A315772.P10485828884959300950

/-!
# A315778: Coordination sequence Gal.6.48.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315778, there is no canonical definition to state claims against.
-/

/-! ## A315778.P8485531213620861407

`A008458(round(sqrt(A161910(n))))`
-/

namespace A315778.P8485531213620861407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway (Real.sqrt (A161910 n : ℝ))).toNat

end

end A315778.P8485531213620861407

/-! ## A315778.P7768507686590211587

`A226602(A115639(∑[A325862(n)]))`
-/

namespace A315778.P7768507686590211587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A115639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A315778.P7768507686590211587

/-!
# A315779: Coordination sequence Gal.6.50.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315779, there is no canonical definition to state claims against.
-/

/-! ## A315779.P9625284479983336079

`A315780(n^A196879(n))`
-/

namespace A315779.P9625284479983336079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A196879 n : ℤ))).toNat

end

end A315779.P9625284479983336079

/-! ## A315779.P2787942025679090596

`A315780(n)%record[A233311(n+2)]`
-/

namespace A315779.P2787942025679090596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233311 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315780 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A315779.P2787942025679090596

/-! ## A315779.P3014364865873146595

`A315780(n)+C(n, A096845(n+1))`
-/

namespace A315779.P3014364865873146595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 n + (Nat.choose n (A096845 (n + 1)).toNat : ℤ)

end

end A315779.P3014364865873146595

/-! ## A315779.P14864960435077093837

`A294336(A109830(n+1))*A315780(n)`
-/

namespace A315779.P14864960435077093837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (A109830 (n + 1)).toNat * A315780 n

end

end A315779.P14864960435077093837

/-! ## A315779.P3564221754264642534

`A315780(A062399(n))`
-/

namespace A315779.P3564221754264642534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 (A062399 n).toNat

end

end A315779.P3564221754264642534

/-!
# A315780: Coordination sequence Gal.4.1.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315780, there is no canonical definition to state claims against.
-/

/-! ## A315780.P2142085823419102045

`2*A315786(n)-A315788(n)`
-/

namespace A315780.P2142085823419102045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315786 n - A315788 n

end

end A315780.P2142085823419102045

/-! ## A315780.P12623580496183977861

`A005843(A315786(n))-A315788(n)`
-/

namespace A315780.P12623580496183977861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315786 n).toNat - A315788 n

end

end A315780.P12623580496183977861

/-!
# A315782: Coordination sequence Gal.6.61.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315782, there is no canonical definition to state claims against.
-/

/-! ## A315782.P17145766917530326444

`A315781(lt[A315781(3*n), A315814(2*n+3)])`
-/

namespace A315782.P17145766917530326444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315781 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315814 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315781 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315782.P17145766917530326444

/-!
# A315784: Coordination sequence Gal.6.49.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315784, there is no canonical definition to state claims against.
-/

/-! ## A315784.P3210621468248071086

`A315646(A077739(n+1)-A026834(n+1))`
-/

namespace A315784.P3210621468248071086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 (A077739 (n + 1) - A026834 (n + 1)).toNat

end

end A315784.P3210621468248071086

/-! ## A315784.P18112453208768680270

`A036438(or(A032559(n+1), A334947(n+1)))`
-/

namespace A315784.P18112453208768680270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036438 (Int.lor (A032559 (n + 1)) (A334947 (n + 1))).toNat

end

end A315784.P18112453208768680270

/-! ## A315784.P13995015100018025424

`A338519(or(A032559(n+1), A102669(3*n)))`
-/

namespace A315784.P13995015100018025424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338519 (Int.lor (A032559 (n + 1)) (A102669 (3 * n))).toNat

end

end A315784.P13995015100018025424

/-!
# A315785: Coordination sequence Gal.4.17.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315785, there is no canonical definition to state claims against.
-/

/-! ## A315785.P13220628044805616882

`A301690(A227549(n+1)+A063993(n))`
-/

namespace A315785.P13220628044805616882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 (A227549 (n + 1) + A063993 n).toNat

end

end A315785.P13220628044805616882

/-!
# A315786: Coordination sequence Gal.4.2.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315786, there is no canonical definition to state claims against.
-/

/-! ## A315786.P11379235672625870047

`(A315788(n)+A315780(n))/2`
-/

namespace A315786.P11379235672625870047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315788 n + A315780 n : ℚ) / 2

end

end A315786.P11379235672625870047

/-! ## A315786.P8373115919855137740

`A014682(A315788(n)+A315780(n))`
-/

namespace A315786.P8373115919855137740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315788 n + A315780 n).toNat

end

end A315786.P8373115919855137740

/-! ## A315786.P416769765435049766

`A315780(n)+A001281(A315788(n)-A315780(n))`
-/

namespace A315786.P416769765435049766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 n + A001281 (A315788 n - A315780 n).toNat

end

end A315786.P416769765435049766

/-! ## A315786.P3785889524384313275

`A315780(n)+A004525(A315788(n)-A315780(n))`
-/

namespace A315786.P3785889524384313275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 n + A004525 (A315788 n - A315780 n).toNat

end

end A315786.P3785889524384313275

/-! ## A315786.P1094928597833211476

`A315780(n)+A025480(A315788(n)-A315780(n))`
-/

namespace A315786.P1094928597833211476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 n + A025480 (A315788 n - A315780 n).toNat

end

end A315786.P1094928597833211476

/-! ## A315786.P4247126630854622103

`A315780(n)+A029578(A315788(n)-A315780(n))`
-/

namespace A315786.P4247126630854622103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 n + A029578 (A315788 n - A315780 n).toNat

end

end A315786.P4247126630854622103

/-! ## A315786.P6923729456572498544

`A315780(n)+A078898(A315788(n)-A315780(n))`
-/

namespace A315786.P6923729456572498544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 n + A078898 (A315788 n - A315780 n).toNat

end

end A315786.P6923729456572498544

/-! ## A315786.P11482727069982316334

`A315788(n)-A004526(A315788(n)-A315780(n))`
-/

namespace A315786.P11482727069982316334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315788 n - A004526 (A315788 n - A315780 n).toNat

end

end A315786.P11482727069982316334

/-! ## A315786.P12777051981707097302

`A001281(A315788(n)+A315780(n))`
-/

namespace A315786.P12777051981707097302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315788 n + A315780 n).toNat

end

end A315786.P12777051981707097302

/-! ## A315786.P1118183163408123161

`A004525(A315788(n)+A315780(n))`
-/

namespace A315786.P1118183163408123161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315788 n + A315780 n).toNat

end

end A315786.P1118183163408123161

/-! ## A315786.P11835972521535923337

`A004526(A315788(n)+A315780(n))`
-/

namespace A315786.P11835972521535923337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315788 n + A315780 n).toNat

end

end A315786.P11835972521535923337

/-! ## A315786.P18219819717225394763

`A025480(A315788(n)+A315780(n))`
-/

namespace A315786.P18219819717225394763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315788 n + A315780 n).toNat

end

end A315786.P18219819717225394763

/-! ## A315786.P9904118622894522118

`A029578(A315788(n)+A315780(n))`
-/

namespace A315786.P9904118622894522118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315788 n + A315780 n).toNat

end

end A315786.P9904118622894522118

/-! ## A315786.P12202124676335114414

`A078898(A315788(n)+A315780(n))`
-/

namespace A315786.P12202124676335114414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A315788 n + A315780 n).toNat

end

end A315786.P12202124676335114414

/-! ## A315786.P1099980140736998923

`A110654(A315788(n)+A315780(n))`
-/

namespace A315786.P1099980140736998923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A315788 n + A315780 n).toNat

end

end A315786.P1099980140736998923

/-! ## A315786.P12386906811637182127

`A003602(A315780(n)+A315788(n)-1)`
-/

namespace A315786.P12386906811637182127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A315780 n + (A315788 n - 1)).toNat

end

end A315786.P12386906811637182127

/-! ## A315786.P16415929954088125011

`A008619(A315780(n)+A315788(n)-1)`
-/

namespace A315786.P16415929954088125011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315780 n + (A315788 n - 1)).toNat

end

end A315786.P16415929954088125011

/-! ## A315786.P12364206769269107234

`A003602(A315780(n)-(1-A315788(n)))`
-/

namespace A315786.P12364206769269107234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A315780 n - (1 - A315788 n)).toNat

end

end A315786.P12364206769269107234

/-! ## A315786.P10216668196069959393

`A008619(A315780(n)-(1-A315788(n)))`
-/

namespace A315786.P10216668196069959393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315780 n - (1 - A315788 n)).toNat

end

end A315786.P10216668196069959393

/-! ## A315786.P12315038407735141276

`A110654(A315780(n)-(1-A315788(n)))`
-/

namespace A315786.P12315038407735141276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A315780 n - (1 - A315788 n)).toNat

end

end A315786.P12315038407735141276

/-!
# A315788: Coordination sequence Gal.3.4.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315788, the canonical program `A315788.P8782784959098183992` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315788 has offset 0).

The definition of A315788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315788.P17593580086004444921

`2*A315786(n)-A315780(n)`
-/

namespace A315788.P17593580086004444921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315786 n - A315780 n

end

end A315788.P17593580086004444921

namespace A315788

/-- `2*A315786(n)-A315780(n)` -/
def P17593580086004444921.Spec : Prop :=
  ∀ n, P17593580086004444921.a n = A315788 n

end A315788

/-! ## A315788.P4335681014538599972

`A005843(A315786(n))-A315780(n)`
-/

namespace A315788.P4335681014538599972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315786 n).toNat - A315780 n

end

end A315788.P4335681014538599972

namespace A315788

/-- `A005843(A315786(n))-A315780(n)` -/
def P4335681014538599972.Spec : Prop :=
  ∀ n, P4335681014538599972.a n = A315788 n

end A315788

/-! ## A315788.P8782784959098183992

`A008458(A008458(n)-(A310441(n)+A004525(n)))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A315788

/-- `A008458(A008458(n)-(A310441(n)+A004525(n)))` -/
def P8782784959098183992.Spec : Prop :=
  ∀ n, P8782784959098183992.a n = A315788 n

theorem P8782784959098183992.correct : P8782784959098183992.Spec := by
  intro n
  simp only [A315788]

end A315788

/-! ## A315788.P14947795556616141954

`A008458(A008458(n)-A004525(n)-A310441(n))`
-/

namespace A315788.P14947795556616141954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n - A004525 n - A310441 n).toNat

end

end A315788.P14947795556616141954

namespace A315788

/-- `A008458(A008458(n)-A004525(n)-A310441(n))` -/
def P14947795556616141954.Spec : Prop :=
  ∀ n, P14947795556616141954.a n = A315788 n

theorem P14947795556616141954.correct : P14947795556616141954.Spec := by
  intro n
  simp only [A315788, Nat.add_sub_cancel, A315788.P14947795556616141954.a, A315788.P8782784959098183992.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A315788

/-! ## A315788.P5568657181079147182

`A008458(A314123(2*n)%A004277(n))`
-/

namespace A315788.P5568657181079147182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A314123 (2 * n)) (A004277 n)).toNat

end

end A315788.P5568657181079147182

namespace A315788

/-- `A008458(A314123(2*n)%A004277(n))` -/
def P5568657181079147182.Spec : Prop :=
  ∀ n, P5568657181079147182.a n = A315788 n

end A315788

/-! ## A315788.P8044471344889373301

`A315716(A008585(n))-A008594(n)`
-/

namespace A315788.P8044471344889373301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315716 (A008585 n).toNat - A008594 n

end

end A315788.P8044471344889373301

namespace A315788

/-- `A315716(A008585(n))-A008594(n)` -/
def P8044471344889373301.Spec : Prop :=
  ∀ n, P8044471344889373301.a n = A315788 n

end A315788

/-!
# A315789: Coordination sequence Gal.5.197.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315789, there is no canonical definition to state claims against.
-/

/-! ## A315789.P6094470463253799618

`A092524(A315790(n))`
-/

namespace A315789.P6094470463253799618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A315790 n).toNat

end

end A315789.P6094470463253799618

/-! ## A315789.P12512973414010185186

`A315790(A129601(∑[n]))`
-/

namespace A315789.P12512973414010185186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315790 (A129601 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A315789.P12512973414010185186

/-! ## A315789.P13409393232879552075

`A315790(A348687(∑[n]))`
-/

namespace A315789.P13409393232879552075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315790 (A348687 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A315789.P13409393232879552075

/-! ## A315789.P5328656630674484787

`A315790(A130663(n)+n)`
-/

namespace A315789.P5328656630674484787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315790 (A130663 n + (n : ℤ)).toNat

end

end A315789.P5328656630674484787

/-! ## A315789.P8823384566855797719

`A055229(A177808(n))*A315790(n)`
-/

namespace A315789.P8823384566855797719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A177808 n).toNat * A315790 n

end

end A315789.P8823384566855797719

/-!
# A315791: Coordination sequence Gal.6.514.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315791, there is no canonical definition to state claims against.
-/

/-! ## A315791.P14872505658651855854

`A315575(n/A177704(A075253(n)))`
-/

namespace A315791.P14872505658651855854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315575 (SequenceMachineLib.roundAway ((n : ℚ) / (A177704 (A075253 n).toNat : ℚ))).toNat

end

end A315791.P14872505658651855854

/-! ## A315791.P16544520114556924174

`A008458(A062399(n)-A087917(n+1))`
-/

namespace A315791.P16544520114556924174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A062399 n - A087917 (n + 1)).toNat

end

end A315791.P16544520114556924174

/-! ## A315791.P8920187972297189645

`A301716(∑[Δ[A339433(n)]^(n+1)])`
-/

namespace A315791.P8920187972297189645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301716 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A315791.P8920187972297189645

/-! ## A315791.P4494050405850571220

`A020639(A081704(n))*A177919(n+1)`
-/

namespace A315791.P4494050405850571220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A081704 n).toNat * A177919 (n + 1)

end

end A315791.P4494050405850571220

/-!
# A315792: Coordination sequence Gal.6.583.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315792, there is no canonical definition to state claims against.
-/

/-! ## A315792.P8949557276691711347

`2*A315795(n)-A315796(n)`
-/

namespace A315792.P8949557276691711347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315795 n - A315796 n

end

end A315792.P8949557276691711347

/-! ## A315792.P1886866282054536884

`A315796(n)-A005843(A315796(n)-A315795(n))`
-/

namespace A315792.P1886866282054536884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315796 n - A005843 (A315796 n - A315795 n).toNat

end

end A315792.P1886866282054536884

/-! ## A315792.P3637926629486586169

`A005843(A315795(n))-A315796(n)`
-/

namespace A315792.P3637926629486586169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315795 n).toNat - A315796 n

end

end A315792.P3637926629486586169

/-! ## A315792.P18191564332028790659

`A008458(A062399(n)-A160974(n+2))`
-/

namespace A315792.P18191564332028790659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A062399 n - A160974 (n + 2)).toNat

end

end A315792.P18191564332028790659

/-! ## A315792.P8782731521154283170

`A301690(lt[A005044(n), A048896(n)])`
-/

namespace A315792.P8782731521154283170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315792.P8782731521154283170

/-!
# A315793: Coordination sequence Gal.5.268.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315793, there is no canonical definition to state claims against.
-/

/-! ## A315793.P2782668601567450918

`2*A315798(n)-A315801(n)`
-/

namespace A315793.P2782668601567450918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315798 n - A315801 n

end

end A315793.P2782668601567450918

/-! ## A315793.P8498349736325073659

`A315801(n)-A005843(A315801(n)-A315798(n))`
-/

namespace A315793.P8498349736325073659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315801 n - A005843 (A315801 n - A315798 n).toNat

end

end A315793.P8498349736325073659

/-! ## A315793.P2465933816632865386

`A315801(n)+2*(A315360(n)-A315365(n))`
-/

namespace A315793.P2465933816632865386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315801 n + 2 * (A315360 n - A315365 n)

end

end A315793.P2465933816632865386

/-! ## A315793.P7698564276752154961

`A005843(A315798(n))-A315801(n)`
-/

namespace A315793.P7698564276752154961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315798 n).toNat - A315801 n

end

end A315793.P7698564276752154961

/-!
# A315794: Coordination sequence Gal.5.273.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315794, there is no canonical definition to state claims against.
-/

/-! ## A315794.P11259296555940726991

`A008458(A227549(n+1)-A318440(n+1))`
-/

namespace A315794.P11259296555940726991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A227549 (n + 1) - A318440 (n + 1)).toNat

end

end A315794.P11259296555940726991

/-!
# A315795: Coordination sequence Gal.6.569.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315795, there is no canonical definition to state claims against.
-/

/-! ## A315795.P10490063729078493003

`(A315796(n)+A315792(n))/2`
-/

namespace A315795.P10490063729078493003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315796 n + A315792 n : ℚ) / 2

end

end A315795.P10490063729078493003

/-! ## A315795.P4444300628418597157

`A014682(A315796(n)+A315792(n))`
-/

namespace A315795.P4444300628418597157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315796 n + A315792 n).toNat

end

end A315795.P4444300628418597157

/-! ## A315795.P7609526809852287760

`A315792(n)+A001281(A315796(n)-A315792(n))`
-/

namespace A315795.P7609526809852287760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315792 n + A001281 (A315796 n - A315792 n).toNat

end

end A315795.P7609526809852287760

/-! ## A315795.P3490783905785698323

`A315792(n)+A004525(A315796(n)-A315792(n))`
-/

namespace A315795.P3490783905785698323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315792 n + A004525 (A315796 n - A315792 n).toNat

end

end A315795.P3490783905785698323

/-! ## A315795.P3579556085842825750

`A315792(n)+A006370(A315796(n)-A315792(n))`
-/

namespace A315795.P3579556085842825750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315792 n + A006370 (A315796 n - A315792 n).toNat

end

end A315795.P3579556085842825750

/-! ## A315795.P8607672177082094639

`A315792(n)+A025480(A315796(n)-A315792(n))`
-/

namespace A315795.P8607672177082094639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315792 n + A025480 (A315796 n - A315792 n).toNat

end

end A315795.P8607672177082094639

/-! ## A315795.P5431080641932822456

`A315792(n)+A026741(A315796(n)-A315792(n))`
-/

namespace A315795.P5431080641932822456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315792 n + A026741 (A315796 n - A315792 n).toNat

end

end A315795.P5431080641932822456

/-! ## A315795.P107457968997335650

`A315796(n)-A004526(A315796(n)-A315792(n))`
-/

namespace A315795.P107457968997335650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315796 n - A004526 (A315796 n - A315792 n).toNat

end

end A315795.P107457968997335650

/-! ## A315795.P778783753237861481

`A001281(A315796(n)+A315792(n))`
-/

namespace A315795.P778783753237861481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315796 n + A315792 n).toNat

end

end A315795.P778783753237861481

/-! ## A315795.P2189990178920887628

`A004525(A315796(n)+A315792(n))`
-/

namespace A315795.P2189990178920887628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315796 n + A315792 n).toNat

end

end A315795.P2189990178920887628

/-! ## A315795.P5374922934932250882

`A004526(A315796(n)+A315792(n))`
-/

namespace A315795.P5374922934932250882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315796 n + A315792 n).toNat

end

end A315795.P5374922934932250882

/-! ## A315795.P2859864191410165172

`A006370(A315796(n)+A315792(n))`
-/

namespace A315795.P2859864191410165172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315796 n + A315792 n).toNat

end

end A315795.P2859864191410165172

/-! ## A315795.P9468731739440438360

`A025480(A315796(n)+A315792(n))`
-/

namespace A315795.P9468731739440438360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315796 n + A315792 n).toNat

end

end A315795.P9468731739440438360

/-! ## A315795.P18088440941392559993

`A026741(A315796(n)+A315792(n))`
-/

namespace A315795.P18088440941392559993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315796 n + A315792 n).toNat

end

end A315795.P18088440941392559993

/-! ## A315795.P809548667015202431

`A123108(A315796(n)+A315792(n))`
-/

namespace A315795.P809548667015202431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A315796 n + A315792 n).toNat

end

end A315795.P809548667015202431

/-! ## A315795.P1204411324401505020

`abs(A001057(A315796(n)+A315792(n)))`
-/

namespace A315795.P1204411324401505020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A315796 n + A315792 n).toNat|

end

end A315795.P1204411324401505020

/-! ## A315795.P10178323136553088730

`A001057(A315792(n)+A315796(n)-1)`
-/

namespace A315795.P10178323136553088730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315792 n + (A315796 n - 1)).toNat

end

end A315795.P10178323136553088730

/-! ## A315795.P7706637339940335557

`A001057(A315792(n)-(1-A315796(n)))`
-/

namespace A315795.P7706637339940335557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315792 n - (1 - A315796 n)).toNat

end

end A315795.P7706637339940335557

/-!
# A315796: Coordination sequence Gal.3.42.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315796, there is no canonical definition to state claims against.
-/

/-! ## A315796.P2715964039543908509

`A006368(A315916(n)-2*n)`
-/

namespace A315796.P2715964039543908509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315916 n - (2 * n : ℤ)).toNat

end

end A315796.P2715964039543908509

/-! ## A315796.P2324125057313808803

`A032766(A315916(n)-2*n)`
-/

namespace A315796.P2324125057313808803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315916 n - (2 * n : ℤ)).toNat

end

end A315796.P2324125057313808803

/-! ## A315796.P1260036734993325472

`A064455(A315916(n)-2*n)`
-/

namespace A315796.P1260036734993325472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A315916 n - (2 * n : ℤ)).toNat

end

end A315796.P1260036734993325472

/-! ## A315796.P10800458346562806898

`A080512(A315916(n)-2*n)`
-/

namespace A315796.P10800458346562806898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A315916 n - (2 * n : ℤ)).toNat

end

end A315796.P10800458346562806898

/-! ## A315796.P13689361878794252005

`A130482(A315916(n)-2*n)`
-/

namespace A315796.P13689361878794252005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (A315916 n - (2 * n : ℤ)).toNat

end

end A315796.P13689361878794252005

/-! ## A315796.P17229520824797260720

`A006368(A315916(n)-n-n)`
-/

namespace A315796.P17229520824797260720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315916 n - (n : ℤ) - (n : ℤ)).toNat

end

end A315796.P17229520824797260720

/-! ## A315796.P2337570926612705204

`A032766(A315916(n)-n-n)`
-/

namespace A315796.P2337570926612705204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315916 n - (n : ℤ) - (n : ℤ)).toNat

end

end A315796.P2337570926612705204

/-! ## A315796.P3207728771492119801

`A064455(A315916(n)-n-n)`
-/

namespace A315796.P3207728771492119801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A315916 n - (n : ℤ) - (n : ℤ)).toNat

end

end A315796.P3207728771492119801

/-! ## A315796.P468011026043027714

`A080512(A315916(n)-n-n)`
-/

namespace A315796.P468011026043027714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A315916 n - (n : ℤ) - (n : ℤ)).toNat

end

end A315796.P468011026043027714

/-! ## A315796.P11394408303107256748

`A130482(A315916(n)-n-n)`
-/

namespace A315796.P11394408303107256748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (A315916 n - (n : ℤ) - (n : ℤ)).toNat

end

end A315796.P11394408303107256748

/-! ## A315796.P18313079875636120549

`A315916(n)-A004525(A008458(n)-A315916(n))`
-/

namespace A315796.P18313079875636120549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315916 n - A004525 (A008458 n - A315916 n).toNat

end

end A315796.P18313079875636120549

/-! ## A315796.P8747198939833183845

`A315916(n)-A004526(A008458(n)-A315916(n))`
-/

namespace A315796.P8747198939833183845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315916 n - A004526 (A008458 n - A315916 n).toNat

end

end A315796.P8747198939833183845

/-! ## A315796.P10653259572380515920

`A315916(n)-A004526(A016921(n)-A315916(n))`
-/

namespace A315796.P10653259572380515920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315916 n - A004526 (A016921 n - A315916 n).toNat

end

end A315796.P10653259572380515920

/-! ## A315796.P3480177885932647808

`A315916(n)-A014682(A008458(n)-A315916(n))`
-/

namespace A315796.P3480177885932647808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315916 n - A014682 (A008458 n - A315916 n).toNat

end

end A315796.P3480177885932647808

/-! ## A315796.P11206706576480523860

`A008486(A315348(n)-A008574(n))`
-/

namespace A315796.P11206706576480523860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315348 n - A008574 n).toNat

end

end A315796.P11206706576480523860

/-! ## A315796.P11325796668062758125

`A008486(A315348(n)%A008574(n))`
-/

namespace A315796.P11325796668062758125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315348 n) (A008574 n)).toNat

end

end A315796.P11325796668062758125

/-! ## A315796.P2071147672253458526

`A008486(A315348(n)-(A008486(n)+n))`
-/

namespace A315796.P2071147672253458526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315348 n - (A008486 n + (n : ℤ))).toNat

end

end A315796.P2071147672253458526

/-! ## A315796.P13099057218879091919

`A008486(A315348(n)-n-A008486(n))`
-/

namespace A315796.P13099057218879091919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315348 n - (n : ℤ) - A008486 n).toNat

end

end A315796.P13099057218879091919

/-! ## A315796.P17243921111196555811

`A315348(n)-A005843(A008458(n)-A315348(n))`
-/

namespace A315796.P17243921111196555811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315348 n - A005843 (A008458 n - A315348 n).toNat

end

end A315796.P17243921111196555811

/-! ## A315796.P2670917934641690739

`A006368(A315916(n))-A008585(n)`
-/

namespace A315796.P2670917934641690739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315916 n).toNat - A008585 n

end

end A315796.P2670917934641690739

/-!
# A315798: Coordination sequence Gal.5.266.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315798, there is no canonical definition to state claims against.
-/

/-! ## A315798.P10555610831588192544

`(A315801(n)+A315793(n))/2`
-/

namespace A315798.P10555610831588192544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315801 n + A315793 n : ℚ) / 2

end

end A315798.P10555610831588192544

/-! ## A315798.P10869562487555172249

`A014682(A315801(n)+A315793(n))`
-/

namespace A315798.P10869562487555172249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315801 n + A315793 n).toNat

end

end A315798.P10869562487555172249

/-! ## A315798.P10489648835767582960

`A315793(n)+A001281(A315801(n)-A315793(n))`
-/

namespace A315798.P10489648835767582960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315793 n + A001281 (A315801 n - A315793 n).toNat

end

end A315798.P10489648835767582960

/-! ## A315798.P12221455079259742879

`A315793(n)+A004525(A315801(n)-A315793(n))`
-/

namespace A315798.P12221455079259742879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315793 n + A004525 (A315801 n - A315793 n).toNat

end

end A315798.P12221455079259742879

/-! ## A315798.P1006727819682532545

`A315793(n)+A025480(A315801(n)-A315793(n))`
-/

namespace A315798.P1006727819682532545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315793 n + A025480 (A315801 n - A315793 n).toNat

end

end A315798.P1006727819682532545

/-! ## A315798.P6682016928931248834

`A315793(n)+A026741(A315801(n)-A315793(n))`
-/

namespace A315798.P6682016928931248834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315793 n + A026741 (A315801 n - A315793 n).toNat

end

end A315798.P6682016928931248834

/-! ## A315798.P16996365972866620474

`A315801(n)-A004526(A315801(n)-A315793(n))`
-/

namespace A315798.P16996365972866620474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315801 n - A004526 (A315801 n - A315793 n).toNat

end

end A315798.P16996365972866620474

/-! ## A315798.P2921172898100953438

`A315360(n)+A315801(n)-A315365(n)`
-/

namespace A315798.P2921172898100953438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315360 n + (A315801 n - A315365 n)

end

end A315798.P2921172898100953438

/-! ## A315798.P15304916160110430103

`A001281(A315801(n)+A315793(n))`
-/

namespace A315798.P15304916160110430103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315801 n + A315793 n).toNat

end

end A315798.P15304916160110430103

/-! ## A315798.P10754714840416719482

`A004525(A315801(n)+A315793(n))`
-/

namespace A315798.P10754714840416719482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315801 n + A315793 n).toNat

end

end A315798.P10754714840416719482

/-! ## A315798.P14474549520453357661

`A004526(A315801(n)+A315793(n))`
-/

namespace A315798.P14474549520453357661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315801 n + A315793 n).toNat

end

end A315798.P14474549520453357661

/-! ## A315798.P13826058807252053692

`A025480(A315801(n)+A315793(n))`
-/

namespace A315798.P13826058807252053692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315801 n + A315793 n).toNat

end

end A315798.P13826058807252053692

/-! ## A315798.P883980124125494519

`A026741(A315801(n)+A315793(n))`
-/

namespace A315798.P883980124125494519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315801 n + A315793 n).toNat

end

end A315798.P883980124125494519

/-! ## A315798.P2288479566981516887

`A123108(A315801(n)+A315793(n))`
-/

namespace A315798.P2288479566981516887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A315801 n + A315793 n).toNat

end

end A315798.P2288479566981516887

/-! ## A315798.P10684629217104236122

`-A001057(A315801(n)+A315793(n))`
-/

namespace A315798.P10684629217104236122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A315801 n + A315793 n).toNat

end

end A315798.P10684629217104236122

/-! ## A315798.P15690977674868247694

`A001057(A315793(n)+A315801(n)-1)`
-/

namespace A315798.P15690977674868247694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315793 n + (A315801 n - 1)).toNat

end

end A315798.P15690977674868247694

/-! ## A315798.P12936270953046121778

`A008619(A315793(n)+A315801(n)-1)`
-/

namespace A315798.P12936270953046121778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315793 n + (A315801 n - 1)).toNat

end

end A315798.P12936270953046121778

/-! ## A315798.P14232896518098378664

`A001057(A315793(n)-(1-A315801(n)))`
-/

namespace A315798.P14232896518098378664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315793 n - (1 - A315801 n)).toNat

end

end A315798.P14232896518098378664

/-! ## A315798.P4252359170031054533

`A008619(A315793(n)-(1-A315801(n)))`
-/

namespace A315798.P4252359170031054533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315793 n - (1 - A315801 n)).toNat

end

end A315798.P4252359170031054533

