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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A097101: Numbers m that are the hypotenuse of exactly 7 distinct integer-sided right triangles, i.e., m^2 can be written as a sum of two squares in 7 ways.

The programs for A097101, the canonical program `A097101.P17642704868951540346` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097101 has offset 1).

The definition of A097101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097101.P12800314101321347895

`eq[60, A046109(n)]`
-/

namespace A097101.P12800314101321347895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097101.P12800314101321347895

namespace A097101

/-- `eq[60, A046109(n)]` -/
def P12800314101321347895.Spec : Prop :=
  ∀ n, (P12800314101321347895.a n : ℤ) = A097101 (n + 1)

end A097101

/-! ## A097101.P17642704868951540346

`eq[7, A046080(A004277(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A097101

/-- `eq[7, A046080(A004277(n))]` -/
def P17642704868951540346.Spec : Prop :=
  ∀ n, (P17642704868951540346.a n : ℤ) = A097101 (n + 1)

theorem P17642704868951540346.correct : P17642704868951540346.Spec := by
  intro n
  simp only [A097101, Nat.add_sub_cancel]

end A097101

/-! ## A097101.P3729844981217687620

`eq[7, A046080(A028310(n))]`
-/

namespace A097101.P3729844981217687620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097101.P3729844981217687620

namespace A097101

/-- `eq[7, A046080(A028310(n))]` -/
def P3729844981217687620.Spec : Prop :=
  ∀ n, (P3729844981217687620.a n : ℤ) = A097101 (n + 1)

end A097101

/-! ## A097101.P16098708448090477039

`eq[7, A046080(A008486(n))]`
-/

namespace A097101.P16098708448090477039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097101.P16098708448090477039

namespace A097101

/-- `eq[7, A046080(A008486(n))]` -/
def P16098708448090477039.Spec : Prop :=
  ∀ n, (P16098708448090477039.a n : ℤ) = A097101 (n + 1)

end A097101

/-! ## A097101.P15091869137023539948

`eq[7, A046080(A008574(n))]`
-/

namespace A097101.P15091869137023539948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097101.P15091869137023539948

namespace A097101

/-- `eq[7, A046080(A008574(n))]` -/
def P15091869137023539948.Spec : Prop :=
  ∀ n, (P15091869137023539948.a n : ℤ) = A097101 (n + 1)

end A097101

/-!
# A097102: Numbers m that are the hypotenuse of exactly 13 distinct integer-sided right triangles, i.e., m^2 can be written as a sum of two squares in 13 ways.

The programs for A097102, there is no canonical definition to state claims against.
-/

/-! ## A097102.P4696548809031407105

`A097244(n+1)/A165826(A001248(n+1))`
-/

namespace A097102.P4696548809031407105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097244 (n + 1) : ℚ) / (A165826 (A001248 (n + 1)).toNat : ℚ)

end

end A097102.P4696548809031407105

/-! ## A097102.P12420238824491969018

`A007913(A097244(n+1))`
-/

namespace A097102.P12420238824491969018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A097244 (n + 1)).toNat

end

end A097102.P12420238824491969018

/-! ## A097102.P915524302103385665

`record[A348036(A097103(n+1))]`
-/

namespace A097102.P915524302103385665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (A097103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097102.P915524302103385665

/-! ## A097102.P13496101863826228232

`A348036(A097244(n+1)/5)`
-/

namespace A097102.P13496101863826228232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (SequenceMachineLib.roundAway ((A097244 (n + 1) : ℚ) / 5)).toNat

end

end A097102.P13496101863826228232

/-! ## A097102.P9666499258695522021

`A007947(lcm(5, A097244(n+1)))`
-/

namespace A097102.P9666499258695522021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.lcm 5 (A097244 (n + 1)))

end

end A097102.P9666499258695522021

/-!
# A097103: Numbers m that are the hypotenuse of exactly 22 distinct integer-sided right triangles, i.e., m^2 can be written as a sum of two squares in 22 ways.

The programs for A097103, there is no canonical definition to state claims against.
-/

/-! ## A097103.P14444183737067969020

`A175068(A025289(n+1))`
-/

namespace A097103.P14444183737067969020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (A025289 (n + 1)).toNat

end

end A097103.P14444183737067969020

/-! ## A097103.P14895014536703902879

`A175068(A025297(n+1))`
-/

namespace A097103.P14895014536703902879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (A025297 (n + 1)).toNat

end

end A097103.P14895014536703902879

/-! ## A097103.P15952207938876520475

`A025297(A000005(5^n))`
-/

namespace A097103.P15952207938876520475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025297 (A000005 (5 ^ n)).toNat

end

end A097103.P15952207938876520475

/-! ## A097103.P11469187606433773162

`A025289(A032551(n+1)+1)`
-/

namespace A097103.P11469187606433773162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025289 (A032551 (n + 1) + 1).toNat

end

end A097103.P11469187606433773162

/-!
# A097106: a(n) = (Smallest prime power >= n) - (greatest prime power <= n).

The programs for A097106, the canonical program `A097106.P14132093488680178125` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097106 has offset 1).

The definition of A097106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097106.P14088976533453040482

`A000015(n+1)-A031218(n+1)`
-/

namespace A097106.P14088976533453040482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - A031218 (n + 1)

end

end A097106.P14088976533453040482

namespace A097106

/-- `A000015(n+1)-A031218(n+1)` -/
def P14088976533453040482.Spec : Prop :=
  ∀ n, P14088976533453040482.a n = A097106 (n + 1)

theorem P14088976533453040482.correct : P14088976533453040482.Spec := by
  intro n
  simp only [A097106, Nat.add_sub_cancel, A097106.P14088976533453040482.a, A097106.P14132093488680178125.a, A000015, A000015.P2530082583010810879.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A031218, A031218.P11079871404618641815.a, A057820, A057820.P915405789854175386.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097106

/-! ## A097106.P6745867876957261146

`A378457(n+1)+A378370(n+1)`
-/

namespace A097106.P6745867876957261146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378457 (n + 1) + A378370 (n + 1)

end

end A097106.P6745867876957261146

namespace A097106

/-- `A378457(n+1)+A378370(n+1)` -/
def P6745867876957261146.Spec : Prop :=
  ∀ n, P6745867876957261146.a n = A097106 (n + 1)

theorem P6745867876957261146.correct : P6745867876957261146.Spec := by
  intro n
  simp only [A097106, Nat.add_sub_cancel, A097106.P6745867876957261146.a, A097106.P14132093488680178125.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A057820, A057820.P915405789854175386.a, A378370, A378370.P12947003761999164007.a, A378457, A378457.P16628396355233593541.a, A000015, A000015.P2530082583010810879.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A276781, A276781.P2604158077506703315.a, A000079, A000079.P10855139691139572931.a, A031218, A031218.P11079871404618641815.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A065515, A065515.P15129427044826637405.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097106

/-! ## A097106.P11052964962053496466

`A000015(n+1)-A000961(A065515(n+1))`
-/

namespace A097106.P11052964962053496466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - A000961 (A065515 (n + 1)).toNat

end

end A097106.P11052964962053496466

namespace A097106

/-- `A000015(n+1)-A000961(A065515(n+1))` -/
def P11052964962053496466.Spec : Prop :=
  ∀ n, P11052964962053496466.a n = A097106 (n + 1)

theorem P11052964962053496466.correct : P11052964962053496466.Spec := by
  intro n
  simp only [A097106, Nat.add_sub_cancel, A097106.P11052964962053496466.a, A097106.P14132093488680178125.a, A000015, A000015.P2530082583010810879.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A057820, A057820.P915405789854175386.a, A065515, A065515.P15129427044826637405.a, A000079, A000079.P10855139691139572931.a, A031218, A031218.P11079871404618641815.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097106

/-! ## A097106.P12561827529312488392

`A377780(A031218(n+1))-A377780(n+1)`
-/

namespace A097106.P12561827529312488392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377780 (A031218 (n + 1)).toNat - A377780 (n + 1)

end

end A097106.P12561827529312488392

namespace A097106

/-- `A377780(A031218(n+1))-A377780(n+1)` -/
def P12561827529312488392.Spec : Prop :=
  ∀ n, P12561827529312488392.a n = A097106 (n + 1)

end A097106

/-! ## A097106.P4795716612843704052

`A000015(n+1)-A000961(A025528(n+1)+1)`
-/

namespace A097106.P4795716612843704052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - A000961 (A025528 (n + 1) + 1).toNat

end

end A097106.P4795716612843704052

namespace A097106

/-- `A000015(n+1)-A000961(A025528(n+1)+1)` -/
def P4795716612843704052.Spec : Prop :=
  ∀ n, P4795716612843704052.a n = A097106 (n + 1)

theorem P4795716612843704052.correct : P4795716612843704052.Spec := by
  intro n
  simp only [A097106, Nat.add_sub_cancel, A097106.P4795716612843704052.a, A097106.P14132093488680178125.a, A000015, A000015.P2530082583010810879.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A057820, A057820.P915405789854175386.a, A000079, A000079.P10855139691139572931.a, A031218, A031218.P11079871404618641815.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A065515, A065515.P15129427044826637405.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097106

/-! ## A097106.P14132093488680178125

`(1-A010055(n+1))*A057820(A025528(n+1)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A097106

/-- `(1-A010055(n+1))*A057820(A025528(n+1)+1)` -/
def P14132093488680178125.Spec : Prop :=
  ∀ n, P14132093488680178125.a n = A097106 (n + 1)

theorem P14132093488680178125.correct : P14132093488680178125.Spec := by
  intro n
  simp only [A097106, Nat.add_sub_cancel]

end A097106

/-! ## A097106.P13686673305667188604

`A000015(n+1)-A136623(A000015(n+2))`
-/

namespace A097106.P13686673305667188604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - A136623 (A000015 (n + 2)).toNat

end

end A097106.P13686673305667188604

namespace A097106

/-- `A000015(n+1)-A136623(A000015(n+2))` -/
def P13686673305667188604.Spec : Prop :=
  ∀ n, P13686673305667188604.a n = A097106 (n + 1)

end A097106

/-! ## A097106.P17946022673081937669

`A188666(A031218(n+1)+n)-A031218(n+1)`
-/

namespace A097106.P17946022673081937669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (A031218 (n + 1) + (n : ℤ)).toNat - A031218 (n + 1)

end

end A097106.P17946022673081937669

namespace A097106

/-- `A188666(A031218(n+1)+n)-A031218(n+1)` -/
def P17946022673081937669.Spec : Prop :=
  ∀ n, P17946022673081937669.a n = A097106 (n + 1)

end A097106

/-! ## A097106.P10616535981520516623

`A188666(2*n+1)-A031218(n+1)`
-/

namespace A097106.P10616535981520516623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (2 * n + 1) - A031218 (n + 1)

end

end A097106.P10616535981520516623

namespace A097106

/-- `A188666(2*n+1)-A031218(n+1)` -/
def P10616535981520516623.Spec : Prop :=
  ∀ n, P10616535981520516623.a n = A097106 (n + 1)

end A097106

/-! ## A097106.P15395861831347785399

`A188666(2*n+1)-A136623(A188666(2*(n+1)))`
-/

namespace A097106.P15395861831347785399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (2 * n + 1) - A136623 (A188666 (2 * (n + 1))).toNat

end

end A097106.P15395861831347785399

namespace A097106

/-- `A188666(2*n+1)-A136623(A188666(2*(n+1)))` -/
def P15395861831347785399.Spec : Prop :=
  ∀ n, P15395861831347785399.a n = A097106 (n + 1)

end A097106

/-!
# A097108: If a geodesic dome is made by dividing each triangle of an icosahedron into n^2 identical equilateral triangles and the vertices of those newly created triangles are pushed out from the center to lie on the surface of the sphere in which the icosahedron is inscribed, then this sequence gives the number of different strut lengths that are required to build the dome.

The programs for A097108, the canonical program `A097108.P5400944798271563091` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097108 has offset 1).

The definition of A097108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097108.P5400944798271563091

`A000601(n)-A181120(A130481(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097108

/-- `A000601(n)-A181120(A130481(n))` -/
def P5400944798271563091.Spec : Prop :=
  ∀ n, P5400944798271563091.a n = A097108 (n + 1)

theorem P5400944798271563091.correct : P5400944798271563091.Spec := by
  intro n
  simp only [A097108, Nat.add_sub_cancel]

end A097108

/-! ## A097108.P280601123035423179

`∑[A001399(n)]-A181120(A130481(n))`
-/

namespace A097108.P280601123035423179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181120 (A130481 n).toNat

end

end A097108.P280601123035423179

namespace A097108

/-- `∑[A001399(n)]-A181120(A130481(n))` -/
def P280601123035423179.Spec : Prop :=
  ∀ n, P280601123035423179.a n = A097108 (n + 1)

end A097108

/-! ## A097108.P12248368327226943478

`A181120(n+3)-A181120(A130481(n))`
-/

namespace A097108.P12248368327226943478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 3) - A181120 (A130481 n).toNat

end

end A097108.P12248368327226943478

namespace A097108

/-- `A181120(n+3)-A181120(A130481(n))` -/
def P12248368327226943478.Spec : Prop :=
  ∀ n, P12248368327226943478.a n = A097108 (n + 1)

end A097108

/-! ## A097108.P518076086388546186

`∑[floor(n/2)+1]-A142150(A008747(n))`
-/

namespace A097108.P518076086388546186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A142150 (A008747 n).toNat

end

end A097108.P518076086388546186

namespace A097108

/-- `∑[floor(n/2)+1]-A142150(A008747(n))` -/
def P518076086388546186.Spec : Prop :=
  ∀ n, P518076086388546186.a n = A097108 (n + 1)

end A097108

/-! ## A097108.P8677336532296027678

`A186101(∑[A028242(n)])+A110654(n)`
-/

namespace A097108.P8677336532296027678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A110654 n

end

end A097108.P8677336532296027678

namespace A097108

/-- `A186101(∑[A028242(n)])+A110654(n)` -/
def P8677336532296027678.Spec : Prop :=
  ∀ n, P8677336532296027678.a n = A097108 (n + 1)

end A097108

/-! ## A097108.P6110023367862633732

`A186101(∑[A028242(n)])+A004526(n+1)`
-/

namespace A097108.P6110023367862633732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A004526 (n + 1)

end

end A097108.P6110023367862633732

namespace A097108

/-- `A186101(∑[A028242(n)])+A004526(n+1)` -/
def P6110023367862633732.Spec : Prop :=
  ∀ n, P6110023367862633732.a n = A097108 (n + 1)

end A097108

/-!
# A097109: G.f.: s(2)^2*s(3)^3/(s(1)*s(6)^2), where s(k) = eta(q^k) and eta(q) is Dedekind's function, cf. A010815.

The programs for A097109, there is no canonical definition to state claims against.
-/

/-! ## A097109.P5779028914613408908

`A226535(n)/(Δ[or(1, n)]+1)`
-/

namespace A097109.P5779028914613408908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 : ℚ)

end

end A097109.P5779028914613408908

/-! ## A097109.P18121670226621381771

`A033716(n)/A057079(n)`
-/

namespace A097109.P18121670226621381771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 n : ℚ) / (A057079 n : ℚ)

end

end A097109.P18121670226621381771

/-! ## A097109.P10415701043956344754

`A033716(n)/A132954(n)`
-/

namespace A097109.P10415701043956344754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 n : ℚ) / (A132954 n : ℚ)

end

end A097109.P10415701043956344754

/-! ## A097109.P12930097969470015050

`A226535(n)/A010684(n)`
-/

namespace A097109.P12930097969470015050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 n : ℚ) / (A010684 n : ℚ)

end

end A097109.P12930097969470015050

/-! ## A097109.P17882554328024942866

`A115978(n)/A131713(n)`
-/

namespace A097109.P17882554328024942866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115978 n : ℚ) / (A131713 n : ℚ)

end

end A097109.P17882554328024942866

/-! ## A097109.P3482444096201501465

`A226535(n)/A167817(n)`
-/

namespace A097109.P3482444096201501465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 n : ℚ) / (A167817 n : ℚ)

end

end A097109.P3482444096201501465

/-! ## A097109.P11560303407865329662

`A226535(n)/A073575(n+1)`
-/

namespace A097109.P11560303407865329662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 n : ℚ) / (A073575 (n + 1) : ℚ)

end

end A097109.P11560303407865329662

/-! ## A097109.P15637561642981195475

`A226535(n)/A287765(n+1)`
-/

namespace A097109.P15637561642981195475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 n : ℚ) / (A287765 (n + 1) : ℚ)

end

end A097109.P15637561642981195475

/-! ## A097109.P14653982580302456492

`A226535(n)/(2-A033999(n))`
-/

namespace A097109.P14653982580302456492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 n : ℚ) / (2 - A033999 n : ℚ)

end

end A097109.P14653982580302456492

/-! ## A097109.P8793750392594341450

`A005928(n)/A005928(and(1, 2*n-n))`
-/

namespace A097109.P8793750392594341450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005928 n : ℚ) / (A005928 (Int.land 1 ((2 * n : ℤ) - (n : ℤ))).toNat : ℚ)

end

end A097109.P8793750392594341450

/-! ## A097109.P1265855603815181920

`A226535(n)/A151044(Δ[A008619(n)])`
-/

namespace A097109.P1265855603815181920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 n : ℚ) / (A151044 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A097109.P1265855603815181920

/-! ## A097109.P14636836344540685722

`A226535(n)/A226535(Δ[A008619(n)])`
-/

namespace A097109.P14636836344540685722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 n : ℚ) / (A226535 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A097109.P14636836344540685722

/-! ## A097109.P12192369013896811041

`A005928(n)/A004011(n)*A096727(n)`
-/

namespace A097109.P12192369013896811041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005928 n : ℚ) / (A004011 n : ℚ) * (A096727 n : ℚ)

end

end A097109.P12192369013896811041

/-! ## A097109.P1829087252827800024

`A121443(n+1)/A124449(n+1)*A005928(n)`
-/

namespace A097109.P1829087252827800024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) : ℚ) / (A124449 (n + 1) : ℚ) * (A005928 n : ℚ)

end

end A097109.P1829087252827800024

/-! ## A097109.P1573399361449872466

`A005928(n)/A005928(Δ[A004526(n)])`
-/

namespace A097109.P1573399361449872466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005928 n : ℚ) / (A005928 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A097109.P1573399361449872466

/-!
# A097110: Expansion of (1 + 2x - 2x^3) / (1 - 3x^2 + 2x^4).

The programs for A097110, the canonical program `A097110.P16654272147198244145` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097110 has offset 0).

The definition of A097110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-2x^3)/(1-3x^2+2x^4))` (program `A097110.P16654272147198244145`, by `A097110.P16654272147198244145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097110.P16654272147198244145

`ogf((1+2x-2x^3)/(1-3x^2+2x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097110

/-- `ogf((1+2x-2x^3)/(1-3x^2+2x^4))` -/
def P16654272147198244145.Spec : Prop :=
  ∀ n, P16654272147198244145.a n = A097110 n

theorem P16654272147198244145.correct : P16654272147198244145.Spec := by
  intro n
  simp only [A097110]

end A097110

/-! ## A097110.P2800397386383561413

`a(n-1)+a(n-2)+1-gcd(1+a(n-1), a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A097110.P2800397386383561413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) + 1 - (Int.gcd (1 + a (n - 1)) (a (n - 2)) : ℤ)

end

end A097110.P2800397386383561413

namespace A097110

/-- `a(n-1)+a(n-2)+1-gcd(1+a(n-1), a(n-2))` -/
def P2800397386383561413.Spec : Prop :=
  ∀ n, P2800397386383561413.a n = A097110 n

end A097110

/-! ## A097110.P6013909291565883576

`3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A097110.P6013909291565883576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  3 * a (n - 2) - 2 * a (n - 4)

end

end A097110.P6013909291565883576

namespace A097110

/-- `3*a(n-2)-2*a(n-4)` -/
def P6013909291565883576.Spec : Prop :=
  ∀ n, P6013909291565883576.a n = A097110 n

end A097110

/-! ## A097110.P17363784838426988763

`∏[gcd(2, n)]-log2(gcd(2, n))`
-/

namespace A097110.P17363784838426988763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A097110.P17363784838426988763

namespace A097110

/-- `∏[gcd(2, n)]-log2(gcd(2, n))` -/
def P17363784838426988763.Spec : Prop :=
  ∀ n, P17363784838426988763.a n = (A097110 n : ℝ)

end A097110

/-! ## A097110.P8460013127062008352

`∏[char[2*n]+1]-char[2*n]`
-/

namespace A097110.P8460013127062008352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A097110.P8460013127062008352

namespace A097110

/-- `∏[char[2*n]+1]-char[2*n]` -/
def P8460013127062008352.Spec : Prop :=
  ∀ n, P8460013127062008352.a n = A097110 n

end A097110

/-! ## A097110.P7806153546842558718

`xor(1, n%2+2*a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A097110.P7806153546842558718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Nat.xor 1 (n % 2 + 2 * a (n - 2))

end

end A097110.P7806153546842558718

namespace A097110

/-- `xor(1, n%2+2*a(n-2))` -/
def P7806153546842558718.Spec : Prop :=
  ∀ n, (P7806153546842558718.a n : ℤ) = A097110 n

end A097110

/-! ## A097110.P13790207790133718941

`floor(a(n-2)+a(n-2)+a(n-2)%2)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A097110.P13790207790133718941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2) % 2)

end

end A097110.P13790207790133718941

namespace A097110

/-- `floor(a(n-2)+a(n-2)+a(n-2)%2)` -/
def P13790207790133718941.Spec : Prop :=
  ∀ n, (P13790207790133718941.a n : ℤ) = A097110 n

end A097110

/-! ## A097110.P11871083952252586891

`A106624(xor(1, n+2))`
-/

namespace A097110.P11871083952252586891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (Nat.xor 1 (n + 2))

end

end A097110.P11871083952252586891

namespace A097110

/-- `A106624(xor(1, n+2))` -/
def P11871083952252586891.Spec : Prop :=
  ∀ n, P11871083952252586891.a n = A097110 n

end A097110

/-! ## A097110.P3778352197520036679

`∑[A094024(abs(1-n))]`
-/

namespace A097110.P3778352197520036679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097110.P3778352197520036679

namespace A097110

/-- `∑[A094024(abs(1-n))]` -/
def P3778352197520036679.Spec : Prop :=
  ∀ n, P3778352197520036679.a n = A097110 n

end A097110

/-! ## A097110.P13891711384155313230

`abs(1-a(n-1)*A280193(n))` with `a(0)=1`
-/

namespace A097110.P13891711384155313230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - a (n - 1) * A280193 n|

end

end A097110.P13891711384155313230

namespace A097110

/-- `abs(1-a(n-1)*A280193(n))` -/
def P13891711384155313230.Spec : Prop :=
  ∀ n, P13891711384155313230.a n = A097110 n

end A097110

/-! ## A097110.P17473373707994463846

`A106624(A004442(n+2))`
-/

namespace A097110.P17473373707994463846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A004442 (n + 2)).toNat

end

end A097110.P17473373707994463846

namespace A097110

/-- `A106624(A004442(n+2))` -/
def P17473373707994463846.Spec : Prop :=
  ∀ n, P17473373707994463846.a n = A097110 n

end A097110

/-! ## A097110.P12787464769376847632

`A106624(A065190(n+2))`
-/

namespace A097110.P12787464769376847632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A065190 (n + 2)).toNat

end

end A097110.P12787464769376847632

namespace A097110

/-- `A106624(A065190(n+2))` -/
def P12787464769376847632.Spec : Prop :=
  ∀ n, P12787464769376847632.a n = A097110 n

end A097110

/-! ## A097110.P653374071571012298

`xor(A000035(n), A086341(n))`
-/

namespace A097110.P653374071571012298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A086341 n)

end

end A097110.P653374071571012298

namespace A097110

/-- `xor(A000035(n), A086341(n))` -/
def P653374071571012298.Spec : Prop :=
  ∀ n, P653374071571012298.a n = A097110 n

end A097110

/-! ## A097110.P13077405648804122095

`A106624(A033999(n)+n+2)`
-/

namespace A097110.P13077405648804122095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A033999 n + (n + 2 : ℤ)).toNat

end

end A097110.P13077405648804122095

namespace A097110

/-- `A106624(A033999(n)+n+2)` -/
def P13077405648804122095.Spec : Prop :=
  ∀ n, P13077405648804122095.a n = A097110 n

end A097110

/-! ## A097110.P11012558927374638330

`∩[A107684(n), A272919(n+1)]`
-/

namespace A097110.P11012558927374638330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097110.P11012558927374638330

namespace A097110

/-- `∩[A107684(n), A272919(n+1)]` -/
def P11012558927374638330.Spec : Prop :=
  ∀ n, (P11012558927374638330.a n : ℤ) = A097110 n

end A097110

/-! ## A097110.P17416836157351418646

`∩[A107684(n+1)-1, A107684(n+1)]`
-/

namespace A097110.P17416836157351418646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097110.P17416836157351418646

namespace A097110

/-- `∩[A107684(n+1)-1, A107684(n+1)]` -/
def P17416836157351418646.Spec : Prop :=
  ∀ n, (P17416836157351418646.a n : ℤ) = A097110 n

end A097110

/-! ## A097110.P8627855174616982278

`(A072345(n+1)-A059841(n))*A072345(n)`
-/

namespace A097110.P8627855174616982278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072345 (n + 1) - A059841 n) * A072345 n

end

end A097110.P8627855174616982278

namespace A097110

/-- `(A072345(n+1)-A059841(n))*A072345(n)` -/
def P8627855174616982278.Spec : Prop :=
  ∀ n, P8627855174616982278.a n = A097110 n

end A097110

/-! ## A097110.P15871273485708512446

`(A072345(n+1)-A000035(n+1))*A072345(n)`
-/

namespace A097110.P15871273485708512446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072345 (n + 1) - A000035 (n + 1)) * A072345 n

end

end A097110.P15871273485708512446

namespace A097110

/-- `(A072345(n+1)-A000035(n+1))*A072345(n)` -/
def P15871273485708512446.Spec : Prop :=
  ∀ n, P15871273485708512446.a n = A097110 n

end A097110

/-! ## A097110.P11594616330788886687

`∪[2^n, ∑[2^n]]`
-/

namespace A097110.P11594616330788886687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A097110.P11594616330788886687

namespace A097110

/-- `∪[2^n, ∑[2^n]]` -/
def P11594616330788886687.Spec : Prop :=
  ∀ n, (P11594616330788886687.a n : ℤ) = A097110 n

end A097110

/-! ## A097110.P363203162869157990

`and(A075427(n), A086341(n))`
-/

namespace A097110.P363203162869157990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075427 n) (A086341 n)

end

end A097110.P363203162869157990

namespace A097110

/-- `and(A075427(n), A086341(n))` -/
def P363203162869157990.Spec : Prop :=
  ∀ n, P363203162869157990.a n = A097110 n

end A097110

/-!
# A097111: Expansion of (1 + 3x - 2x^2 - 12x^3)/(1 - 9x^2 + 20x^4).

The programs for A097111, the canonical program `A097111.P5730656936810080109` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097111 has offset 0).

The definition of A097111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x-2x^2-12x^3)/(1-9x^2+20x^4))` (program `A097111.P5730656936810080109`, by `A097111.P5730656936810080109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097111.P294302812129316628

`9*a(n-2)-20*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`
-/

namespace A097111.P294302812129316628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 15] fun n a =>
  9 * a (n - 2) - 20 * a (n - 4)

end

end A097111.P294302812129316628

namespace A097111

/-- `9*a(n-2)-20*a(n-4)` -/
def P294302812129316628.Spec : Prop :=
  ∀ n, P294302812129316628.a n = A097111 n

end A097111

/-! ## A097111.P5730656936810080109

`ogf((1+3x-2x^2-12x^3)/(1-9x^2+20x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097111

/-- `ogf((1+3x-2x^2-12x^3)/(1-9x^2+20x^4))` -/
def P5730656936810080109.Spec : Prop :=
  ∀ n, P5730656936810080109.a n = A097111 n

theorem P5730656936810080109.correct : P5730656936810080109.Spec := by
  intro n
  simp only [A097111]

end A097111

/-! ## A097111.P6049502405064085051

`a(or(1, n-2))+4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A097111.P6049502405064085051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (Int.lor 1 ((n : ℤ) - 2)).toNat + 4 * a (n - 2)

end

end A097111.P6049502405064085051

namespace A097111

/-- `a(or(1, n-2))+4*a(n-2)` -/
def P6049502405064085051.Spec : Prop :=
  ∀ n, (P6049502405064085051.a n : ℤ) = A097111 n

end A097111

/-! ## A097111.P8164410828425299675

`∪[A005517(A008486(n)), 3*5^n-2*4^n]`
-/

namespace A097111.P8164410828425299675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 5 ^ n : ℤ) - (2 * 4 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097111.P8164410828425299675

namespace A097111

/-- `∪[A005517(A008486(n)), 3*5^n-2*4^n]` -/
def P8164410828425299675.Spec : Prop :=
  ∀ n, (P8164410828425299675.a n : ℤ) = A097111 n

end A097111

/-! ## A097111.P6303845131129717018

`∪[ceil(3*5^(n-1)), A123685(A166136(n+3)-1)]`
-/

namespace A097111.P6303845131129717018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123685 (A166136 (n + 3) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097111.P6303845131129717018

namespace A097111

/-- `∪[ceil(3*5^(n-1)), A123685(A166136(n+3)-1)]` -/
def P6303845131129717018.Spec : Prop :=
  ∀ n, (P6303845131129717018.a n : ℤ) = A097111 n

end A097111

/-!
# A097112: Expansion of (1+4x-6x^2-36x^3)/(1-19x^2+90x^4).

The programs for A097112, the canonical program `A097112.P4873828978969266036` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097112 has offset 0).

The definition of A097112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-6x^2-36x^3)/(1-19x^2+90x^4))` (program `A097112.P4873828978969266036`, by `A097112.P4873828978969266036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097112.P15715239980168179626

`19*a(n-2)-90*a(n-4)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=40`
-/

namespace A097112.P15715239980168179626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13, 40] fun n a =>
  19 * a (n - 2) - 90 * a (n - 4)

end

end A097112.P15715239980168179626

namespace A097112

/-- `19*a(n-2)-90*a(n-4)` -/
def P15715239980168179626.Spec : Prop :=
  ∀ n, P15715239980168179626.a n = A097112 n

end A097112

/-! ## A097112.P4873828978969266036

`ogf((1+4x-6x^2-36x^3)/(1-19x^2+90x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097112

/-- `ogf((1+4x-6x^2-36x^3)/(1-19x^2+90x^4))` -/
def P4873828978969266036.Spec : Prop :=
  ∀ n, P4873828978969266036.a n = A097112 n

theorem P4873828978969266036.correct : P4873828978969266036.Spec := by
  intro n
  simp only [A097112]

end A097112

/-! ## A097112.P15020188931313751879

`A215090(A097113(n))`
-/

namespace A097112.P15020188931313751879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A097113 n).toNat

end

end A097112.P15020188931313751879

namespace A097112

/-- `A215090(A097113(n))` -/
def P15020188931313751879.Spec : Prop :=
  ∀ n, P15020188931313751879.a n = A097112 n

end A097112

/-!
# A097113: Expansion of (1 + 5*x - 12*x^2 - 80*x^3)/(1 - 33*x^2 + 272*x^4).

The programs for A097113, the canonical program `A097113.P9819139465604388575` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097113 has offset 0).

The definition of A097113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x-12x^2-80x^3)/(1-33x^2+272x^4))` (program `A097113.P9819139465604388575`, by `A097113.P9819139465604388575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097113.P4633757685391591821

`33*a(n-2)-272*a(n-4)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=85`
-/

namespace A097113.P4633757685391591821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 21, 85] fun n a =>
  33 * a (n - 2) - 272 * a (n - 4)

end

end A097113.P4633757685391591821

namespace A097113

/-- `33*a(n-2)-272*a(n-4)` -/
def P4633757685391591821.Spec : Prop :=
  ∀ n, P4633757685391591821.a n = A097113 n

end A097113

/-! ## A097113.P9819139465604388575

`ogf((1+5x-12x^2-80x^3)/(1-33x^2+272x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097113

/-- `ogf((1+5x-12x^2-80x^3)/(1-33x^2+272x^4))` -/
def P9819139465604388575.Spec : Prop :=
  ∀ n, P9819139465604388575.a n = A097113 n

theorem P9819139465604388575.correct : P9819139465604388575.Spec := by
  intro n
  simp only [A097113]

end A097113

/-! ## A097113.P1786483903418208984

`A023705(A097112(n))`
-/

namespace A097113.P1786483903418208984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (A097112 n).toNat

end

end A097113.P1786483903418208984

namespace A097113

/-- `A023705(A097112(n))` -/
def P1786483903418208984.Spec : Prop :=
  ∀ n, P1786483903418208984.a n = A097113 n

end A097113

/-!
# A097114: Expansion of (1 + 8x - 42x^2 - 392x^3)/(1 - 99x^2 + 2450x^4).

The programs for A097114, there is no canonical definition to state claims against.
-/

/-! ## A097114.P11842932226312771118

`A037461(A097113(n))`
-/

namespace A097114.P11842932226312771118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A097113 n).toNat

end

end A097114.P11842932226312771118

/-!
# A097115: Expansion of (1 + 11*x - 90*x^2 - 1100*x^3)/(1 - 201*x^2 + 10100*x^4).

The programs for A097115, there is no canonical definition to state claims against.
-/

/-! ## A097115.P972744343957641374

`A007932(A097112(n))`
-/

namespace A097115.P972744343957641374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A097112 n).toNat

end

end A097115.P972744343957641374

/-! ## A097115.P1001351465495978887

`A007090(A097113(n))`
-/

namespace A097115.P1001351465495978887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A097113 n).toNat

end

end A097115.P1001351465495978887

/-!
# A097116: Expansion of (1-x)/((1-x)^2-3x^3).

The programs for A097116, the canonical program `A097116.P9732484615850271696` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097116 has offset 0).

The definition of A097116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+x^2-3x^3))` (program `A097116.P9732484615850271696`, by `A097116.P9732484615850271696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097116.P9732484615850271696

`ogf((1-x)/(1-2x+x^2-3x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097116

/-- `ogf((1-x)/(1-2x+x^2-3x^3))` -/
def P9732484615850271696.Spec : Prop :=
  ∀ n, P9732484615850271696.a n = A097116 n

theorem P9732484615850271696.correct : P9732484615850271696.Spec := by
  intro n
  simp only [A097116]

end A097116

/-! ## A097116.P10524181317330716709

`2*a(n-1)-a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097116.P10524181317330716709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) + 3 * a (n - 3)

end

end A097116.P10524181317330716709

namespace A097116

/-- `2*a(n-1)-a(n-2)+3*a(n-3)` -/
def P10524181317330716709.Spec : Prop :=
  ∀ n, P10524181317330716709.a n = A097116 n

end A097116

/-! ## A097116.P7315316525107410299

`A098479(n)+A007150(A098479(n))`
-/

namespace A097116.P7315316525107410299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098479 n + A007150 (A098479 n).toNat

end

end A097116.P7315316525107410299

namespace A097116

/-- `A098479(n)+A007150(A098479(n))` -/
def P7315316525107410299.Spec : Prop :=
  ∀ n, P7315316525107410299.a n = A097116 n

end A097116

/-! ## A097116.P3813510533737870892

`A032766(A098479(n)^A003647(3*n+5))`
-/

namespace A097116.P3813510533737870892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A098479 n : ℚ) ^ (A003647 (3 * n + 5) : ℤ))).toNat

end

end A097116.P3813510533737870892

namespace A097116

/-- `A032766(A098479(n)^A003647(3*n+5))` -/
def P3813510533737870892.Spec : Prop :=
  ∀ n, P3813510533737870892.a n = A097116 n

end A097116

/-!
# A097117: Expansion of (1-x)/((1-x)^2 - 4*x^3).

The programs for A097117, the canonical program `A097117.P12115246945167324442` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097117 has offset 0).

The definition of A097117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+x^2-4x^3))` (program `A097117.P12115246945167324442`, by `A097117.P12115246945167324442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097117.P12115246945167324442

`ogf((1-x)/(1-2x+x^2-4x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097117

/-- `ogf((1-x)/(1-2x+x^2-4x^3))` -/
def P12115246945167324442.Spec : Prop :=
  ∀ n, P12115246945167324442.a n = A097117 n

theorem P12115246945167324442.correct : P12115246945167324442.Spec := by
  intro n
  simp only [A097117]

end A097117

/-! ## A097117.P5863677607627767814

`2*a(n-1)-a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097117.P5863677607627767814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3)

end

end A097117.P5863677607627767814

namespace A097117

/-- `2*a(n-1)-a(n-2)+4*a(n-3)` -/
def P5863677607627767814.Spec : Prop :=
  ∀ n, P5863677607627767814.a n = A097117 n

end A097117

/-! ## A097117.P11665835168548830965

`A052947(2*n)`
-/

namespace A097117.P11665835168548830965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (2 * n)

end

end A097117.P11665835168548830965

namespace A097117

/-- `A052947(2*n)` -/
def P11665835168548830965.Spec : Prop :=
  ∀ n, P11665835168548830965.a n = A097117 n

end A097117

/-! ## A097117.P6953720600393728600

`A159287(2*(n+1))`
-/

namespace A097117.P6953720600393728600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (2 * (n + 1))

end

end A097117.P6953720600393728600

namespace A097117

/-- `A159287(2*(n+1))` -/
def P6953720600393728600.Spec : Prop :=
  ∀ n, P6953720600393728600.a n = A097117 n

end A097117

/-! ## A097117.P7015962439570794613

`A132380(2*n)+A107850(2*n+1)`
-/

namespace A097117.P7015962439570794613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (2 * n) + A107850 (2 * n + 1)

end

end A097117.P7015962439570794613

namespace A097117

/-- `A132380(2*n)+A107850(2*n+1)` -/
def P7015962439570794613.Spec : Prop :=
  ∀ n, P7015962439570794613.a n = A097117 n

end A097117

/-! ## A097117.P2428243761836913414

`A107850(2*n+1)-A014017(2*(n+1))`
-/

namespace A097117.P2428243761836913414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107850 (2 * n + 1) - A014017 (2 * (n + 1))

end

end A097117.P2428243761836913414

namespace A097117

/-- `A107850(2*n+1)-A014017(2*(n+1))` -/
def P2428243761836913414.Spec : Prop :=
  ∀ n, P2428243761836913414.a n = A097117 n

end A097117

/-! ## A097117.P11045225336721108399

`A118831(2*n+3)+A107850(2*n+1)`
-/

namespace A097117.P11045225336721108399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118831 (2 * n + 3) + A107850 (2 * n + 1)

end

end A097117.P11045225336721108399

namespace A097117

/-- `A118831(2*n+3)+A107850(2*n+1)` -/
def P11045225336721108399.Spec : Prop :=
  ∀ n, P11045225336721108399.a n = A097117 n

end A097117

/-! ## A097117.P2004817848565792355

`A159284(2*n)-A159286(2*n+1)/2`
-/

namespace A097117.P2004817848565792355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159284 (2 * n) : ℚ) - (A159286 (2 * n + 1) : ℚ) / 2

end

end A097117.P2004817848565792355

namespace A097117

/-- `A159284(2*n)-A159286(2*n+1)/2` -/
def P2004817848565792355.Spec : Prop :=
  ∀ n, P2004817848565792355.a n = (A097117 n : ℚ)

end A097117

/-! ## A097117.P13870139009663777935

`A107853(2*(n+1))/2`
-/

namespace A097117.P13870139009663777935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107853 (2 * (n + 1)) : ℚ) / 2

end

end A097117.P13870139009663777935

namespace A097117

/-- `A107853(2*(n+1))/2` -/
def P13870139009663777935.Spec : Prop :=
  ∀ n, P13870139009663777935.a n = (A097117 n : ℚ)

end A097117

/-! ## A097117.P860827480128682315

`A159288(2*n)-A107854(2*n)`
-/

namespace A097117.P860827480128682315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (2 * n) - A107854 (2 * n)

end

end A097117.P860827480128682315

namespace A097117

/-- `A159288(2*n)-A107854(2*n)` -/
def P860827480128682315.Spec : Prop :=
  ∀ n, P860827480128682315.a n = A097117 n

end A097117

/-! ## A097117.P14843306325273116815

`A159288(2*n)-A159284(2*n)`
-/

namespace A097117.P14843306325273116815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (2 * n) - A159284 (2 * n)

end

end A097117.P14843306325273116815

namespace A097117

/-- `A159288(2*n)-A159284(2*n)` -/
def P14843306325273116815.Spec : Prop :=
  ∀ n, P14843306325273116815.a n = A097117 n

end A097117

/-! ## A097117.P11883865197075490620

`A077882(2*n+1)-A077882(2*n)`
-/

namespace A097117.P11883865197075490620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077882 (2 * n + 1) - A077882 (2 * n)

end

end A097117.P11883865197075490620

namespace A097117

/-- `A077882(2*n+1)-A077882(2*n)` -/
def P11883865197075490620.Spec : Prop :=
  ∀ n, P11883865197075490620.a n = A097117 n

end A097117

/-! ## A097117.P6277472245927149900

`A159288(2*n+1)-A107852(2*n)`
-/

namespace A097117.P6277472245927149900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (2 * n + 1) - A107852 (2 * n)

end

end A097117.P6277472245927149900

namespace A097117

/-- `A159288(2*n+1)-A107852(2*n)` -/
def P6277472245927149900.Spec : Prop :=
  ∀ n, P6277472245927149900.a n = A097117 n

end A097117

/-! ## A097117.P5271467575299552471

`A159288(2*n)-A107852(2*n)/2`
-/

namespace A097117.P5271467575299552471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159288 (2 * n) : ℚ) - (A107852 (2 * n) : ℚ) / 2

end

end A097117.P5271467575299552471

namespace A097117

/-- `A159288(2*n)-A107852(2*n)/2` -/
def P5271467575299552471.Spec : Prop :=
  ∀ n, P5271467575299552471.a n = (A097117 n : ℚ)

end A097117

/-! ## A097117.P2575819142359753102

`∑[A159284(2*n+1)-A159284(2*n)]`
-/

namespace A097117.P2575819142359753102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (2 * n + 1) - A159284 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097117.P2575819142359753102

namespace A097117

/-- `∑[A159284(2*n+1)-A159284(2*n)]` -/
def P2575819142359753102.Spec : Prop :=
  ∀ n, P2575819142359753102.a n = A097117 n

end A097117

/-! ## A097117.P8158524924706914205

`A159285(2*n)+A159286(2*n)-A159288(2*n)`
-/

namespace A097117.P8158524924706914205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 (2 * n) + (A159286 (2 * n) - A159288 (2 * n))

end

end A097117.P8158524924706914205

namespace A097117

/-- `A159285(2*n)+A159286(2*n)-A159288(2*n)` -/
def P8158524924706914205.Spec : Prop :=
  ∀ n, P8158524924706914205.a n = A097117 n

end A097117

/-! ## A097117.P8324371956102743599

`A107852(2*n+1)+A014017(2*n)-A107849(2*n)`
-/

namespace A097117.P8324371956102743599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107852 (2 * n + 1) + (A014017 (2 * n) - A107849 (2 * n))

end

end A097117.P8324371956102743599

namespace A097117

/-- `A107852(2*n+1)+A014017(2*n)-A107849(2*n)` -/
def P8324371956102743599.Spec : Prop :=
  ∀ n, P8324371956102743599.a n = A097117 n

end A097117

/-! ## A097117.P16840554974963808875

`A014017(2*n)+A107849(2*n)-A107853(2*n+1)`
-/

namespace A097117.P16840554974963808875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (2 * n) + (A107849 (2 * n) - A107853 (2 * n + 1))

end

end A097117.P16840554974963808875

namespace A097117

/-- `A014017(2*n)+A107849(2*n)-A107853(2*n+1)` -/
def P16840554974963808875.Spec : Prop :=
  ∀ n, P16840554974963808875.a n = A097117 n

end A097117

/-! ## A097117.P4686970185125282464

`A159288(2*n)+A159288(2*n)-A159288(2*n+1)`
-/

namespace A097117.P4686970185125282464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (2 * n) + (A159288 (2 * n) - A159288 (2 * n + 1))

end

end A097117.P4686970185125282464

namespace A097117

/-- `A159288(2*n)+A159288(2*n)-A159288(2*n+1)` -/
def P4686970185125282464.Spec : Prop :=
  ∀ n, P4686970185125282464.a n = A097117 n

end A097117

/-! ## A097117.P6595814721321485261

`A107854(2*n+1)+A159284(2*n+1)-A107849(2*n)`
-/

namespace A097117.P6595814721321485261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (2 * n + 1) + (A159284 (2 * n + 1) - A107849 (2 * n))

end

end A097117.P6595814721321485261

namespace A097117

/-- `A107854(2*n+1)+A159284(2*n+1)-A107849(2*n)` -/
def P6595814721321485261.Spec : Prop :=
  ∀ n, P6595814721321485261.a n = A097117 n

end A097117

/-!
# A097118: Expansion of (1-x)/((1-x)^2 - 5*x^3).

The programs for A097118, the canonical program `A097118.P9225579790182028121` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097118 has offset 0).

The definition of A097118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+x^2-5x^3))` (program `A097118.P9225579790182028121`, by `A097118.P9225579790182028121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097118.P9225579790182028121

`ogf((1-x)/(1-2x+x^2-5x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097118

/-- `ogf((1-x)/(1-2x+x^2-5x^3))` -/
def P9225579790182028121.Spec : Prop :=
  ∀ n, P9225579790182028121.a n = A097118 n

theorem P9225579790182028121.correct : P9225579790182028121.Spec := by
  intro n
  simp only [A097118]

end A097118

/-! ## A097118.P17462378830606640509

`2*a(n-1)-a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097118.P17462378830606640509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) + 5 * a (n - 3)

end

end A097118.P17462378830606640509

namespace A097118

/-- `2*a(n-1)-a(n-2)+5*a(n-3)` -/
def P17462378830606640509.Spec : Prop :=
  ∀ n, P17462378830606640509.a n = A097118 n

end A097118

/-!
# A097119: Expansion of (1-x)^2/((1-x)^3-2x^4).

The programs for A097119, the canonical program `A097119.P9416004678953832013` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097119 has offset 0).

The definition of A097119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-2x^4))` (program `A097119.P9416004678953832013`, by `A097119.P9416004678953832013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097119.P9416004678953832013

`ogf((1-2x+x^2)/(1-3x+3x^2-x^3-2x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097119

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-2x^4))` -/
def P9416004678953832013.Spec : Prop :=
  ∀ n, P9416004678953832013.a n = A097119 n

theorem P9416004678953832013.correct : P9416004678953832013.Spec := by
  intro n
  simp only [A097119]

end A097119

/-! ## A097119.P11845995496753693725

`3*a(n-1)-3*a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A097119.P11845995496753693725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + 2 * a (n - 4)

end

end A097119.P11845995496753693725

namespace A097119

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+2*a(n-4)` -/
def P11845995496753693725.Spec : Prop :=
  ∀ n, P11845995496753693725.a n = A097119 n

end A097119

/-! ## A097119.P2881653191332468103

`2*a(n-1)-A180735(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A097119.P2881653191332468103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - A180735 (n - 2)

end

end A097119.P2881653191332468103

namespace A097119

/-- `2*a(n-1)-A180735(n-2)` -/
def P2881653191332468103.Spec : Prop :=
  ∀ n, P2881653191332468103.a n = A097119 n

end A097119

/-! ## A097119.P9986640437521447909

`A004273(A144700(n*A246465(n)))`
-/

namespace A097119.P9986640437521447909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A144700 ((n : ℤ) * A246465 n).toNat).toNat

end

end A097119.P9986640437521447909

namespace A097119

/-- `A004273(A144700(n*A246465(n)))` -/
def P9986640437521447909.Spec : Prop :=
  ∀ n, P9986640437521447909.a n = A097119 n

end A097119

/-! ## A097119.P6260706557879290053

`A004273(A144700(n)^A246465(n))`
-/

namespace A097119.P6260706557879290053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A144700 n : ℚ) ^ (A246465 n : ℤ))).toNat

end

end A097119.P6260706557879290053

namespace A097119

/-- `A004273(A144700(n)^A246465(n))` -/
def P6260706557879290053.Spec : Prop :=
  ∀ n, P6260706557879290053.a n = A097119 n

end A097119

/-!
# A097120: Expansion of (1-x)^2/((1-x)^3-3x^4).

The programs for A097120, the canonical program `A097120.P3732106801096068296` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097120 has offset 0).

The definition of A097120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-3x^4))` (program `A097120.P3732106801096068296`, by `A097120.P3732106801096068296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097120.P3732106801096068296

`ogf((1-2x+x^2)/(1-3x+3x^2-x^3-3x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097120

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-3x^4))` -/
def P3732106801096068296.Spec : Prop :=
  ∀ n, P3732106801096068296.a n = A097120 n

theorem P3732106801096068296.correct : P3732106801096068296.Spec := by
  intro n
  simp only [A097120]

end A097120

/-! ## A097120.P6728801814863118999

`3*a(n-1)-3*a(n-2)+a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A097120.P6728801814863118999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + 3 * a (n - 4)

end

end A097120.P6728801814863118999

namespace A097120

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+3*a(n-4)` -/
def P6728801814863118999.Spec : Prop :=
  ∀ n, P6728801814863118999.a n = A097120 n

end A097120

/-! ## A097120.P1341262078103807953

`A068949(A326020(n)-n)`
-/

namespace A097120.P1341262078103807953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068949 (A326020 n - (n : ℤ)).toNat

end

end A097120.P1341262078103807953

namespace A097120

/-- `A068949(A326020(n)-n)` -/
def P1341262078103807953.Spec : Prop :=
  ∀ n, P1341262078103807953.a n = A097120 n

end A097120

/-! ## A097120.P9460136896790739541

`A068949(A178457(n+1)+1)`
-/

namespace A097120.P9460136896790739541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068949 (A178457 (n + 1) + 1).toNat

end

end A097120.P9460136896790739541

namespace A097120

/-- `A068949(A178457(n+1)+1)` -/
def P9460136896790739541.Spec : Prop :=
  ∀ n, P9460136896790739541.a n = A097120 n

end A097120

/-! ## A097120.P14084842449823368595

`∑[A098576(n)-A001221(A000302(n))]`
-/

namespace A097120.P14084842449823368595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098576 n - A001221 (A000302 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097120.P14084842449823368595

namespace A097120

/-- `∑[A098576(n)-A001221(A000302(n))]` -/
def P14084842449823368595.Spec : Prop :=
  ∀ n, P14084842449823368595.a n = A097120 n

end A097120

/-!
# A097121: Expansion of (1-x)^2/((1-x)^3-4x^4).

The programs for A097121, the canonical program `A097121.P14355881202933092813` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097121 has offset 0).

The definition of A097121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-4x^4))` (program `A097121.P14355881202933092813`, by `A097121.P14355881202933092813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097121.P14355881202933092813

`ogf((1-2x+x^2)/(1-3x+3x^2-x^3-4x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097121

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-4x^4))` -/
def P14355881202933092813.Spec : Prop :=
  ∀ n, P14355881202933092813.a n = A097121 n

theorem P14355881202933092813.correct : P14355881202933092813.Spec := by
  intro n
  simp only [A097121]

end A097121

/-! ## A097121.P12767056312114846945

`3*a(n-1)-3*a(n-2)+a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A097121.P12767056312114846945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + 4 * a (n - 4)

end

end A097121.P12767056312114846945

namespace A097121

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+4*a(n-4)` -/
def P12767056312114846945.Spec : Prop :=
  ∀ n, P12767056312114846945.a n = A097121 n

end A097121

/-! ## A097121.P2095616109679321304

`A219931(A374585(n))`
-/

namespace A097121.P2095616109679321304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219931 (A374585 n).toNat

end

end A097121.P2095616109679321304

namespace A097121

/-- `A219931(A374585(n))` -/
def P2095616109679321304.Spec : Prop :=
  ∀ n, P2095616109679321304.a n = A097121 n

end A097121

/-! ## A097121.P14935549284412057421

`A004788(3*A287617(n))`
-/

namespace A097121.P14935549284412057421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (3 * A287617 n).toNat

end

end A097121.P14935549284412057421

namespace A097121

/-- `A004788(3*A287617(n))` -/
def P14935549284412057421.Spec : Prop :=
  ∀ n, P14935549284412057421.a n = A097121 n

end A097121

/-! ## A097121.P15330613135285507618

`A326463(3*n+4)+A274346(A326463(3*n+4))`
-/

namespace A097121.P15330613135285507618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326463 (3 * n + 4) + A274346 (A326463 (3 * n + 4)).toNat

end

end A097121.P15330613135285507618

namespace A097121

/-- `A326463(3*n+4)+A274346(A326463(3*n+4))` -/
def P15330613135285507618.Spec : Prop :=
  ∀ n, P15330613135285507618.a n = A097121 n

end A097121

/-!
# A097122: Expansion of (1-x)^2/((1-x)^3 - 3*x^3).

The programs for A097122, the canonical program `A097122.P3090965730276922515` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097122 has offset 0).

The definition of A097122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x+3x^2-4x^3))` (program `A097122.P3090965730276922515`, by `A097122.P3090965730276922515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097122.P3090965730276922515

`ogf((1-2x+x^2)/(1-3x+3x^2-4x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097122

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-4x^3))` -/
def P3090965730276922515.Spec : Prop :=
  ∀ n, P3090965730276922515.a n = A097122 n

theorem P3090965730276922515.correct : P3090965730276922515.Spec := by
  intro n
  simp only [A097122]

end A097122

/-! ## A097122.P911363991247597793

`3*a(n-1)-3*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097122.P911363991247597793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 4 * a (n - 3)

end

end A097122.P911363991247597793

namespace A097122

/-- `3*a(n-1)-3*a(n-2)+4*a(n-3)` -/
def P911363991247597793.Spec : Prop :=
  ∀ n, P911363991247597793.a n = A097122 n

end A097122

/-! ## A097122.P5495792205851725727

`Δ[A372076(n)]`
-/

namespace A097122.P5495792205851725727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097122.P5495792205851725727

namespace A097122

/-- `Δ[A372076(n)]` -/
def P5495792205851725727.Spec : Prop :=
  ∀ n, P5495792205851725727.a n = A097122 n

end A097122

/-! ## A097122.P7729481397148289882

`A372076(n+1)-A372076(n)`
-/

namespace A097122.P7729481397148289882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372076 (n + 1) - A372076 n

end

end A097122.P7729481397148289882

namespace A097122

/-- `A372076(n+1)-A372076(n)` -/
def P7729481397148289882.Spec : Prop :=
  ∀ n, P7729481397148289882.a n = A097122 n

end A097122

/-! ## A097122.P5983601859287799506

`Δ[Δ[A372077(n)]]`
-/

namespace A097122.P5983601859287799506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372077 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097122.P5983601859287799506

namespace A097122

/-- `Δ[Δ[A372077(n)]]` -/
def P5983601859287799506.Spec : Prop :=
  ∀ n, P5983601859287799506.a n = A097122 n

end A097122

/-!
# A097123: Expansion of (1-x)^2/((1-x)^3 - 4*x^3).

The programs for A097123, the canonical program `A097123.P17174495830903133834` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097123 has offset 0).

The definition of A097123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x+3x^2-5x^3))` (program `A097123.P17174495830903133834`, by `A097123.P17174495830903133834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097123.P17174495830903133834

`ogf((1-2x+x^2)/(1-3x+3x^2-5x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097123

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-5x^3))` -/
def P17174495830903133834.Spec : Prop :=
  ∀ n, P17174495830903133834.a n = A097123 n

theorem P17174495830903133834.correct : P17174495830903133834.Spec := by
  intro n
  simp only [A097123]

end A097123

/-! ## A097123.P14885759178905675218

`3*a(n-1)-3*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097123.P14885759178905675218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 5 * a (n - 3)

end

end A097123.P14885759178905675218

namespace A097123

/-- `3*a(n-1)-3*a(n-2)+5*a(n-3)` -/
def P14885759178905675218.Spec : Prop :=
  ∀ n, P14885759178905675218.a n = A097123 n

end A097123

/-! ## A097123.P2171246253329194450

`A042968(A378850(n)%A062934(3*n+4))`
-/

namespace A097123.P2171246253329194450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (Int.tmod (A378850 n) (A062934 (3 * n + 4))).toNat

end

end A097123.P2171246253329194450

namespace A097123

/-- `A042968(A378850(n)%A062934(3*n+4))` -/
def P2171246253329194450.Spec : Prop :=
  ∀ n, P2171246253329194450.a n = A097123 n

end A097123

/-!
# A097124: Expansion of (1-x)^2/((1-x)^3-5x^3).

The programs for A097124, the canonical program `A097124.P12498741652666714987` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097124 has offset 0).

The definition of A097124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x+3x^2-6x^3))` (program `A097124.P12498741652666714987`, by `A097124.P12498741652666714987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097124.P12498741652666714987

`ogf((1-2x+x^2)/(1-3x+3x^2-6x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097124

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-6x^3))` -/
def P12498741652666714987.Spec : Prop :=
  ∀ n, P12498741652666714987.a n = A097124 n

theorem P12498741652666714987.correct : P12498741652666714987.Spec := by
  intro n
  simp only [A097124]

end A097124

/-! ## A097124.P6493682350029920801

`3*a(n-1)-3*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097124.P6493682350029920801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 6 * a (n - 3)

end

end A097124.P6493682350029920801

namespace A097124

/-- `3*a(n-1)-3*a(n-2)+6*a(n-3)` -/
def P6493682350029920801.Spec : Prop :=
  ∀ n, P6493682350029920801.a n = A097124 n

end A097124

/-! ## A097124.P12465353602692443467

`A247913(A379462(n))`
-/

namespace A097124.P12465353602692443467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247913 (A379462 n).toNat

end

end A097124.P12465353602692443467

namespace A097124

/-- `A247913(A379462(n))` -/
def P12465353602692443467.Spec : Prop :=
  ∀ n, P12465353602692443467.a n = A097124 n

end A097124

/-! ## A097124.P13333195884914284680

`A004523(A116411(n))+3*A000196(A000142(n)+1)-2`
-/

namespace A097124.P13333195884914284680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A116411 n).toNat + (3 * A000196 (A000142 n + 1).toNat - 2)

end

end A097124.P13333195884914284680

namespace A097124

/-- `A004523(A116411(n))+3*A000196(A000142(n)+1)-2` -/
def P13333195884914284680.Spec : Prop :=
  ∀ n, P13333195884914284680.a n = A097124 n

end A097124

/-!
# A097125: Number of noncongruent integer-sided tetrahedra with largest side n.

The programs for A097125, there is no canonical definition to state claims against.
-/

/-! ## A097125.P6845746715928521312

`A055342(n+5)-A304331(A000665(n))`
-/

namespace A097125.P6845746715928521312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055342 (n + 5) - A304331 (A000665 n).toNat

end

end A097125.P6845746715928521312

/-! ## A097125.P8084087468739664448

`A143488(A143522(n+1))+2*C(n+4, 5)`
-/

namespace A097125.P8084087468739664448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143488 (A143522 (n + 1)).toNat + (2 * Nat.choose (n + 4) 5 : ℤ)

end

end A097125.P8084087468739664448

/-!
# A097126: Number of noncongruent integer-sided 4-dimensional simplices with largest side n.

The programs for A097126, there is no canonical definition to state claims against.
-/

/-! ## A097126.P7760473653175356586

`2^n*A303297(A016295(n))`
-/

namespace A097126.P7760473653175356586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A303297 (A016295 n).toNat

end

end A097126.P7760473653175356586

/-!
# A097128: Number of noncongruent n-dimensional integer-sided simplices with diameter 3.

The programs for A097128, there is no canonical definition to state claims against.
-/

/-! ## A097128.P836039067352985577

`A071719(n)+A002262(A059477(n))`
-/

namespace A097128.P836039067352985577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071719 n + A002262 (A059477 n).toNat

end

end A097128.P836039067352985577

/-! ## A097128.P8344055276490654085

`A165012(n)+A059995(A064017(n+3))`
-/

namespace A097128.P8344055276490654085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 n + A059995 (A064017 (n + 3)).toNat

end

end A097128.P8344055276490654085

/-!
# A097129: Number of noncongruent n-dimensional integer-sided simplices with diameter 4.

The programs for A097129, there is no canonical definition to state claims against.
-/

/-! ## A097129.P1843244338038822837

`A003602(or(A000244(n), A342933(n+1)))`
-/

namespace A097129.P1843244338038822837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor (A000244 n) (A342933 (n + 1))).toNat

end

end A097129.P1843244338038822837

/-!
# A097130: Carmichael numbers that are not == 1 mod 24.

The programs for A097130, there is no canonical definition to state claims against.
-/

/-! ## A097130.P4069733965578878676

`A309235(char[1]+∑[char[1]+n]+1)`
-/

namespace A097130.P4069733965578878676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309235 ((if ∃ j, f1 j = n then 1 else 0) + (∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A097130.P4069733965578878676

/-! ## A097130.P16947775457846847832

`A002997(eq[A000700(n), A161906(n+5)])`
-/

namespace A097130.P16947775457846847832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A097130.P16947775457846847832

/-!
# A097131: F(n)+(-1)^n*F(n-1).

The programs for A097131, the canonical program `A097131.P1457788520070489340` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097131 has offset 0).

The definition of A097131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097131.P1457788520070489340

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097131

/-- `3*a(n-2)-a(n-4)` -/
def P1457788520070489340.Spec : Prop :=
  ∀ n, P1457788520070489340.a n = A097131 n

theorem P1457788520070489340.correct : P1457788520070489340.Spec := by
  intro n
  simp only [A097131]

end A097131

/-! ## A097131.P4191161632532629496

`ogf((1+x-x^2-2x^3)/(1-3x^2+x^4))`
-/

namespace A097131.P4191161632532629496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -2] [1, 0, -3, 0, 1] n

end

end A097131.P4191161632532629496

namespace A097131

/-- `ogf((1+x-x^2-2x^3)/(1-3x^2+x^4))` -/
def P4191161632532629496.Spec : Prop :=
  ∀ n, P4191161632532629496.a n = A097131 n

end A097131

/-! ## A097131.P12876794945492433946

`floor(ϕ²*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A097131.P12876794945492433946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋

end

end A097131.P12876794945492433946

namespace A097131

/-- `floor(ϕ²*a(n-2))` -/
def P12876794945492433946.Spec : Prop :=
  ∀ n, P12876794945492433946.a n = A097131 n

end A097131

/-! ## A097131.P4045664964720717142

`A001519(round(xor(1, n)/2))`
-/

namespace A097131.P4045664964720717142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

end

end A097131.P4045664964720717142

namespace A097131

/-- `A001519(round(xor(1, n)/2))` -/
def P4045664964720717142.Spec : Prop :=
  ∀ n, P4045664964720717142.a n = A097131 n

end A097131

/-! ## A097131.P12052052196365971210

`A087123((n-1)%(n+1))`
-/

namespace A097131.P12052052196365971210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A097131.P12052052196365971210

namespace A097131

/-- `A087123((n-1)%(n+1))` -/
def P12052052196365971210.Spec : Prop :=
  ∀ n, P12052052196365971210.a n = A097131 n

end A097131

/-! ## A097131.P12934055872651092468

`A000045(abs(or(1, -xor(1, n))))`
-/

namespace A097131.P12934055872651092468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |Int.lor 1 (-(Nat.xor 1 n : ℤ))|.toNat

end

end A097131.P12934055872651092468

namespace A097131

/-- `A000045(abs(or(1, -xor(1, n))))` -/
def P12934055872651092468.Spec : Prop :=
  ∀ n, P12934055872651092468.a n = A097131 n

end A097131

/-! ## A097131.P16773204764646642614

`A000045(or(1, abs(xor(1, 1-n))))`
-/

namespace A097131.P16773204764646642614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor 1 |Int.xor 1 (1 - (n : ℤ))|).toNat

end

end A097131.P16773204764646642614

namespace A097131

/-- `A000045(or(1, abs(xor(1, 1-n))))` -/
def P16773204764646642614.Spec : Prop :=
  ∀ n, P16773204764646642614.a n = A097131 n

end A097131

/-! ## A097131.P18341556760014113908

`A000045(xor(1, (2-n)%2)+n)`
-/

namespace A097131.P18341556760014113908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 1 (Int.tmod (2 - (n : ℤ)) 2) + (n : ℤ)).toNat

end

end A097131.P18341556760014113908

namespace A097131

/-- `A000045(xor(1, (2-n)%2)+n)` -/
def P18341556760014113908.Spec : Prop :=
  ∀ n, P18341556760014113908.a n = A097131 n

end A097131

/-! ## A097131.P11861958653014814646

`A000045(xor(1, n)-(n-2)%2)`
-/

namespace A097131.P11861958653014814646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((Nat.xor 1 n : ℤ) - Int.tmod ((n : ℤ) - 2) 2).toNat

end

end A097131.P11861958653014814646

namespace A097131

/-- `A000045(xor(1, n)-(n-2)%2)` -/
def P11861958653014814646.Spec : Prop :=
  ∀ n, P11861958653014814646.a n = A097131 n

end A097131

/-! ## A097131.P8615703908986795796

`A000045(abs(2*round(xor(1, n)/2)-1))`
-/

namespace A097131.P8615703908986795796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 * SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) - 1|.toNat

end

end A097131.P8615703908986795796

namespace A097131

/-- `A000045(abs(2*round(xor(1, n)/2)-1))` -/
def P8615703908986795796.Spec : Prop :=
  ∀ n, P8615703908986795796.a n = A097131 n

end A097131

/-! ## A097131.P5328128330366680370

`A001519(A028242(n))`
-/

namespace A097131.P5328128330366680370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A028242 n).toNat

end

end A097131.P5328128330366680370

namespace A097131

/-- `A001519(A028242(n))` -/
def P5328128330366680370.Spec : Prop :=
  ∀ n, P5328128330366680370.a n = A097131 n

end A097131

/-! ## A097131.P15831090543311243361

`A000045(abs(A097062(n)))`
-/

namespace A097131.P15831090543311243361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A097062 n|.toNat

end

end A097131.P15831090543311243361

namespace A097131

/-- `A000045(abs(A097062(n)))` -/
def P15831090543311243361.Spec : Prop :=
  ∀ n, P15831090543311243361.a n = A097131 n

end A097131

/-! ## A097131.P7194592255917169150

`A001519(∑[A280193(n)])`
-/

namespace A097131.P7194592255917169150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097131.P7194592255917169150

namespace A097131

/-- `A001519(∑[A280193(n)])` -/
def P7194592255917169150.Spec : Prop :=
  ∀ n, P7194592255917169150.a n = A097131 n

end A097131

/-! ## A097131.P15168076541261588007

`A087123(A289207(n+1))`
-/

namespace A097131.P15168076541261588007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 (A289207 (n + 1)).toNat

end

end A097131.P15168076541261588007

namespace A097131

/-- `A087123(A289207(n+1))` -/
def P15168076541261588007.Spec : Prop :=
  ∀ n, P15168076541261588007.a n = A097131 n

end A097131

/-! ## A097131.P16251636624397637568

`A212804(A168232(n+1))`
-/

namespace A097131.P16251636624397637568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A168232 (n + 1)).toNat

end

end A097131.P16251636624397637568

namespace A097131

/-- `A212804(A168232(n+1))` -/
def P16251636624397637568.Spec : Prop :=
  ∀ n, P16251636624397637568.a n = A097131 n

end A097131

/-! ## A097131.P5762376255765516298

`A212804(2*A028242(n))`
-/

namespace A097131.P5762376255765516298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * A028242 n).toNat

end

end A097131.P5762376255765516298

namespace A097131

/-- `A212804(2*A028242(n))` -/
def P5762376255765516298.Spec : Prop :=
  ∀ n, P5762376255765516298.a n = A097131 n

end A097131

/-! ## A097131.P5592705872820661714

`A119282(n)+A001611(n)`
-/

namespace A097131.P5592705872820661714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + A001611 n

end

end A097131.P5592705872820661714

namespace A097131

/-- `A119282(n)+A001611(n)` -/
def P5592705872820661714.Spec : Prop :=
  ∀ n, P5592705872820661714.a n = A097131 n

end A097131

/-! ## A097131.P7215928544827798128

`A005247(n)-A212804(n)`
-/

namespace A097131.P7215928544827798128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n - A212804 n

end

end A097131.P7215928544827798128

namespace A097131

/-- `A005247(n)-A212804(n)` -/
def P7215928544827798128.Spec : Prop :=
  ∀ n, P7215928544827798128.a n = A097131 n

end A097131

/-!
# A097132: a(n) = Sum_{k=0..n} Fibonacci(k) + (-1)^k*Fibonacci(k-1).

The programs for A097132, the canonical program `A097132.P2303992533656828860` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097132 has offset 0).

The definition of A097132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097132.P2303992533656828860

`a(n-1)+3*a(n-2)-3*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097132

/-- `a(n-1)+3*a(n-2)-3*a(n-3)-a(n-4)+a(n-5)` -/
def P2303992533656828860.Spec : Prop :=
  ∀ n, P2303992533656828860.a n = A097132 n

theorem P2303992533656828860.correct : P2303992533656828860.Spec := by
  intro n
  simp only [A097132]

end A097132

/-! ## A097132.P3502831511977567855

`∑[ogf((1+x-x^2-2x^3)/(1-3x^2+x^4))]`
-/

namespace A097132.P3502831511977567855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -2] [1, 0, -3, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P3502831511977567855

namespace A097132

/-- `∑[ogf((1+x-x^2-2x^3)/(1-3x^2+x^4))]` -/
def P3502831511977567855.Spec : Prop :=
  ∀ n, P3502831511977567855.a n = A097132 n

end A097132

/-! ## A097132.P6250798453185442463

`∑[floor(ϕ²*a(n-2))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A097132.P6250798453185442463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P6250798453185442463

namespace A097132

/-- `∑[floor(ϕ²*a(n-2))]` -/
def P6250798453185442463.Spec : Prop :=
  ∀ n, P6250798453185442463.a n = A097132 n

end A097132

/-! ## A097132.P2926379877658286564

`∑[3*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A097132.P2926379877658286564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n f1 =>
  3 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P2926379877658286564

namespace A097132

/-- `∑[3*a(n-2)-a(n-4)]` -/
def P2926379877658286564.Spec : Prop :=
  ∀ n, P2926379877658286564.a n = A097132 n

end A097132

/-! ## A097132.P7185749453222295513

`∑[A097131(n)]`
-/

namespace A097132.P7185749453222295513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P7185749453222295513

namespace A097132

/-- `∑[A097131(n)]` -/
def P7185749453222295513.Spec : Prop :=
  ∀ n, P7185749453222295513.a n = A097132 n

end A097132

/-! ## A097132.P1033338432806065147

`∑[A001519(round(xor(1, n)/2))]`
-/

namespace A097132.P1033338432806065147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P1033338432806065147

namespace A097132

/-- `∑[A001519(round(xor(1, n)/2))]` -/
def P1033338432806065147.Spec : Prop :=
  ∀ n, P1033338432806065147.a n = A097132 n

end A097132

/-! ## A097132.P9022839829618496507

`A087123(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A097132.P9022839829618496507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087123 (n - 1) + a (n - 1)

end

end A097132.P9022839829618496507

namespace A097132

/-- `A087123(n-1)+a(n-1)` -/
def P9022839829618496507.Spec : Prop :=
  ∀ n, P9022839829618496507.a n = A097132 n

end A097132

/-! ## A097132.P4744613360248456518

`∑[A000045(xor(1, (2-n)%2)+n)]`
-/

namespace A097132.P4744613360248456518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 1 (Int.tmod (2 - (n : ℤ)) 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P4744613360248456518

namespace A097132

/-- `∑[A000045(xor(1, (2-n)%2)+n)]` -/
def P4744613360248456518.Spec : Prop :=
  ∀ n, P4744613360248456518.a n = A097132 n

end A097132

/-! ## A097132.P5063884467814280821

`∑[A000045(∑[gcd(7, n%2)]%(n+2))]`
-/

namespace A097132.P5063884467814280821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P5063884467814280821

namespace A097132

/-- `∑[A000045(∑[gcd(7, n%2)]%(n+2))]` -/
def P5063884467814280821.Spec : Prop :=
  ∀ n, P5063884467814280821.a n = A097132 n

end A097132

/-! ## A097132.P11594252034212094432

`A355020(n)+A140833(n)`
-/

namespace A097132.P11594252034212094432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n + A140833 n

end

end A097132.P11594252034212094432

namespace A097132

/-- `A355020(n)+A140833(n)` -/
def P11594252034212094432.Spec : Prop :=
  ∀ n, P11594252034212094432.a n = A097132 n

end A097132

/-! ## A097132.P18415728612115796078

`∑[A001519(∑[A280193(n)])]`
-/

namespace A097132.P18415728612115796078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P18415728612115796078

namespace A097132

/-- `∑[A001519(∑[A280193(n)])]` -/
def P18415728612115796078.Spec : Prop :=
  ∀ n, P18415728612115796078.a n = A097132 n

end A097132

/-! ## A097132.P5096572687793738496

`∑[A212804(2*A028242(n))]`
-/

namespace A097132.P5096572687793738496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P5096572687793738496

namespace A097132

/-- `∑[A212804(2*A028242(n))]` -/
def P5096572687793738496.Spec : Prop :=
  ∀ n, P5096572687793738496.a n = A097132 n

end A097132

/-! ## A097132.P2235464250806064567

`A112469(n)+∑[A000045(n)]`
-/

namespace A097132.P2235464250806064567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P2235464250806064567

namespace A097132

/-- `A112469(n)+∑[A000045(n)]` -/
def P2235464250806064567.Spec : Prop :=
  ∀ n, P2235464250806064567.a n = A097132 n

end A097132

/-! ## A097132.P16657806377502758240

`A112469(n)+∑[A002062(n)-n]`
-/

namespace A097132.P16657806377502758240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097132.P16657806377502758240

namespace A097132

/-- `A112469(n)+∑[A002062(n)-n]` -/
def P16657806377502758240.Spec : Prop :=
  ∀ n, P16657806377502758240.a n = A097132 n

end A097132

/-! ## A097132.P868422170175614953

`A228208(n+1)-A000071(n+1)`
-/

namespace A097132.P868422170175614953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228208 (n + 1) - A000071 (n + 1)

end

end A097132.P868422170175614953

namespace A097132

/-- `A228208(n+1)-A000071(n+1)` -/
def P868422170175614953.Spec : Prop :=
  ∀ n, P868422170175614953.a n = A097132 n

end A097132

/-! ## A097132.P4725402438737200195

`A000071(n+2)-(A119282(n+1)+A119282(n))`
-/

namespace A097132.P4725402438737200195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A119282 (n + 1) + A119282 n)

end

end A097132.P4725402438737200195

namespace A097132

/-- `A000071(n+2)-(A119282(n+1)+A119282(n))` -/
def P4725402438737200195.Spec : Prop :=
  ∀ n, P4725402438737200195.a n = A097132 n

end A097132

/-!
# A097133: a(n) = 3*Fibonacci(n) + (-1)^n.

The programs for A097133, the canonical program `A097133.P11774497539036511650` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097133 has offset 0).

The definition of A097133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097133.P11774497539036511650

`2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097133

/-- `2*a(n-2)+a(n-3)` -/
def P11774497539036511650.Spec : Prop :=
  ∀ n, (P11774497539036511650.a n : ℤ) = A097133 n

theorem P11774497539036511650.correct : P11774497539036511650.Spec := by
  intro n
  simp only [A097133]

end A097133

/-! ## A097133.P190558605530080737

`ogf((1+2x+2x^2)/(1-2x^2-x^3))`
-/

namespace A097133.P190558605530080737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2] [1, 0, -2, -1] n

end

end A097133.P190558605530080737

namespace A097133

/-- `ogf((1+2x+2x^2)/(1-2x^2-x^3))` -/
def P190558605530080737.Spec : Prop :=
  ∀ n, P190558605530080737.a n = A097133 n

end A097133

/-! ## A097133.P2517805819002905627

`a(n-1)+a(n-2)+(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A097133.P2517805819002905627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (-1) ^ n)

end

end A097133.P2517805819002905627

namespace A097133

/-- `a(n-1)+a(n-2)+(-1)^n` -/
def P2517805819002905627.Spec : Prop :=
  ∀ n, P2517805819002905627.a n = A097133 n

end A097133

/-! ## A097133.P10281088801858014999

`floor(a(n-2)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A097133.P10281088801858014999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A097133.P10281088801858014999

namespace A097133

/-- `floor(a(n-2)+a(n-2)+a(n-3))` -/
def P10281088801858014999.Spec : Prop :=
  ∀ n, (P10281088801858014999.a n : ℤ) = A097133 n

theorem P10281088801858014999.correct : P10281088801858014999.Spec := by
  intro n
  simp only [A097133, Nat.add_sub_cancel, A097133.P10281088801858014999.a, A097133.P11774497539036511650.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A097133

/-! ## A097133.P7361908577539739804

`3*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A097133.P7361908577539739804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A097133.P7361908577539739804

namespace A097133

/-- `3*a(n-2)-(a(n-2)-a(n-3))` -/
def P7361908577539739804.Spec : Prop :=
  ∀ n, P7361908577539739804.a n = A097133 n

end A097133

/-! ## A097133.P4528519675387983588

`∑[a(n-2)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A097133.P4528519675387983588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097133.P4528519675387983588

namespace A097133

/-- `∑[a(n-2)+a(n-2)+a(n-3)]` -/
def P4528519675387983588.Spec : Prop :=
  ∀ n, (P4528519675387983588.a n : ℤ) = A097133 n

end A097133

/-! ## A097133.P9733593279407898854

`A187893(n)-2*n%2`
-/

namespace A097133.P9733593279407898854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n - ((2 * (n % 2) : ℕ) : ℤ)

end

end A097133.P9733593279407898854

namespace A097133

/-- `A187893(n)-2*n%2` -/
def P9733593279407898854.Spec : Prop :=
  ∀ n, P9733593279407898854.a n = A097133 n

end A097133

/-! ## A097133.P8985712403621521819

`A033999(n)+A022086(n)`
-/

namespace A097133.P8985712403621521819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A022086 n

end

end A097133.P8985712403621521819

namespace A097133

/-- `A033999(n)+A022086(n)` -/
def P8985712403621521819.Spec : Prop :=
  ∀ n, P8985712403621521819.a n = A097133 n

end A097133

/-! ## A097133.P15769307310548262812

`A097135(n)-A062157(n)`
-/

namespace A097133.P15769307310548262812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 n - A062157 n

end

end A097133.P15769307310548262812

namespace A097133

/-- `A097135(n)-A062157(n)` -/
def P15769307310548262812.Spec : Prop :=
  ∀ n, P15769307310548262812.a n = A097133 n

end A097133

/-! ## A097133.P4967700494691305204

`A187893(n)-A010673(n)`
-/

namespace A097133.P4967700494691305204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n - A010673 n

end

end A097133.P4967700494691305204

namespace A097133

/-- `A187893(n)-A010673(n)` -/
def P4967700494691305204.Spec : Prop :=
  ∀ n, P4967700494691305204.a n = A097133 n

end A097133

/-! ## A097133.P13592526516897782031

`A118658(n+1)+A008346(n)`
-/

namespace A097133.P13592526516897782031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A008346 n

end

end A097133.P13592526516897782031

namespace A097133

/-- `A118658(n+1)+A008346(n)` -/
def P13592526516897782031.Spec : Prop :=
  ∀ n, P13592526516897782031.a n = A097133 n

end A097133

/-! ## A097133.P12120330926740395306

`A181716(n)+A000045(n+1)`
-/

namespace A097133.P12120330926740395306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 n + A000045 (n + 1)

end

end A097133.P12120330926740395306

namespace A097133

/-- `A181716(n)+A000045(n+1)` -/
def P12120330926740395306.Spec : Prop :=
  ∀ n, P12120330926740395306.a n = A097133 n

end A097133

/-! ## A097133.P17057797498904917671

`A066983(n+2)+A000045(n)`
-/

namespace A097133.P17057797498904917671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (n + 2) + A000045 n

end

end A097133.P17057797498904917671

namespace A097133

/-- `A066983(n+2)+A000045(n)` -/
def P17057797498904917671.Spec : Prop :=
  ∀ n, P17057797498904917671.a n = A097133 n

end A097133

/-! ## A097133.P10826044742041023675

`A078024(n)+A007492(n+2)`
-/

namespace A097133.P10826044742041023675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n + A007492 (n + 2)

end

end A097133.P10826044742041023675

namespace A097133

/-- `A078024(n)+A007492(n+2)` -/
def P10826044742041023675.Spec : Prop :=
  ∀ n, P10826044742041023675.a n = A097133 n

end A097133

/-! ## A097133.P13619363074076071534

`A020695(n)-A066983(n+1)`
-/

namespace A097133.P13619363074076071534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A066983 (n + 1)

end

end A097133.P13619363074076071534

namespace A097133

/-- `A020695(n)-A066983(n+1)` -/
def P13619363074076071534.Spec : Prop :=
  ∀ n, P13619363074076071534.a n = A097133 n

end A097133

/-! ## A097133.P3497004613122287764

`A098600(n+1)-A212804(n)`
-/

namespace A097133.P3497004613122287764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 (n + 1) - A212804 n

end

end A097133.P3497004613122287764

namespace A097133

/-- `A098600(n+1)-A212804(n)` -/
def P3497004613122287764.Spec : Prop :=
  ∀ n, P3497004613122287764.a n = A097133 n

end A097133

/-! ## A097133.P7525143234776886646

`A008346(n)+2*A000045(n)`
-/

namespace A097133.P7525143234776886646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n + 2 * A000045 n

end

end A097133.P7525143234776886646

namespace A097133

/-- `A008346(n)+2*A000045(n)` -/
def P7525143234776886646.Spec : Prop :=
  ∀ n, P7525143234776886646.a n = A097133 n

end A097133

/-! ## A097133.P15258191814344421398

`A008346(n)+A022087(n)/2`
-/

namespace A097133.P15258191814344421398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008346 n : ℚ) + (A022087 n : ℚ) / 2

end

end A097133.P15258191814344421398

namespace A097133

/-- `A008346(n)+A022087(n)/2` -/
def P15258191814344421398.Spec : Prop :=
  ∀ n, P15258191814344421398.a n = (A097133 n : ℚ)

end A097133

/-! ## A097133.P72624990563527805

`Δ[A014217(n)]+A000045(n+1)`
-/

namespace A097133.P72624990563527805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 (n + 1)

end

end A097133.P72624990563527805

namespace A097133

/-- `Δ[A014217(n)]+A000045(n+1)` -/
def P72624990563527805.Spec : Prop :=
  ∀ n, P72624990563527805.a n = A097133 n

end A097133

/-! ## A097133.P11123701612670873665

`A103609(2*n)+A066983(n+2)`
-/

namespace A097133.P11123701612670873665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + A066983 (n + 2)

end

end A097133.P11123701612670873665

namespace A097133

/-- `A103609(2*n)+A066983(n+2)` -/
def P11123701612670873665.Spec : Prop :=
  ∀ n, P11123701612670873665.a n = A097133 n

end A097133

/-!
# A097134: a(n) = 3*Fibonacci(2*n) + 0^n.

The programs for A097134, the canonical program `A097134.P10157896598914529022` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097134 has offset 0).

The definition of A097134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097134.P10157896598914529022

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097134

/-- `3*a(n-1)-a(n-2)` -/
def P10157896598914529022.Spec : Prop :=
  ∀ n, P10157896598914529022.a n = A097134 n

theorem P10157896598914529022.correct : P10157896598914529022.Spec := by
  intro n
  simp only [A097134]

end A097134

/-! ## A097134.P14610099831817189571

`A097135(2*n)`
-/

namespace A097134.P14610099831817189571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (2 * n)

end

end A097134.P14610099831817189571

namespace A097134

/-- `A097135(2*n)` -/
def P14610099831817189571.Spec : Prop :=
  ∀ n, P14610099831817189571.a n = A097134 n

end A097134

/-! ## A097134.P995891144618415787

`ogf((1+x^2)/(1-3x+x^2))`
-/

namespace A097134.P995891144618415787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 1] n

end

end A097134.P995891144618415787

namespace A097134

/-- `ogf((1+x^2)/(1-3x+x^2))` -/
def P995891144618415787.Spec : Prop :=
  ∀ n, P995891144618415787.a n = A097134 n

end A097134

/-! ## A097134.P10311040130888717422

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A097134.P10311040130888717422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A097134.P10311040130888717422

namespace A097134

/-- `ceil(ϕ²*a(n-1))` -/
def P10311040130888717422.Spec : Prop :=
  ∀ n, P10311040130888717422.a n = A097134 n

end A097134

/-! ## A097134.P4500837107306835109

`round(ϕ²*a(n-1))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A097134.P4500837107306835109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A097134.P4500837107306835109

namespace A097134

/-- `round(ϕ²*a(n-1))` -/
def P4500837107306835109.Spec : Prop :=
  ∀ n, P4500837107306835109.a n = A097134 n

end A097134

/-! ## A097134.P11319463487669658935

`ceil(a(n-1)/(2-ϕ))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A097134.P11319463487669658935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A097134.P11319463487669658935

namespace A097134

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P11319463487669658935.Spec : Prop :=
  ∀ n, P11319463487669658935.a n = A097134 n

end A097134

/-! ## A097134.P2385615537068823223

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A097134.P2385615537068823223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A097134.P2385615537068823223

namespace A097134

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P2385615537068823223.Spec : Prop :=
  ∀ n, P2385615537068823223.a n = A097134 n

end A097134

/-! ## A097134.P5216101734270197083

`∑[floor(ϕ²*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A097134.P5216101734270197083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097134.P5216101734270197083

namespace A097134

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P5216101734270197083.Spec : Prop :=
  ∀ n, P5216101734270197083.a n = A097134 n

end A097134

/-! ## A097134.P15504613788940256703

`lcm(2, A099857(n))/2`
-/

namespace A097134.P15504613788940256703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A099857 n) : ℚ) / 2

end

end A097134.P15504613788940256703

namespace A097134

/-- `lcm(2, A099857(n))/2` -/
def P15504613788940256703.Spec : Prop :=
  ∀ n, P15504613788940256703.a n = (A097134 n : ℚ)

end A097134

/-! ## A097134.P54946675185238632

`floor(3/ϕ*A000045(Δ[n²]))`
-/

namespace A097134.P54946675185238632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / Real.goldenRatio * (A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌋

end

end A097134.P54946675185238632

namespace A097134

/-- `floor(3/ϕ*A000045(Δ[n²]))` -/
def P54946675185238632.Spec : Prop :=
  ∀ n, P54946675185238632.a n = A097134 n

end A097134

/-! ## A097134.P11118196433894108383

`floor(acot(n))+3*A000045(2*n)`
-/

namespace A097134.P11118196433894108383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 3 * A000045 (2 * n)

end

end A097134.P11118196433894108383

namespace A097134

/-- `floor(acot(n))+3*A000045(2*n)` -/
def P11118196433894108383.Spec : Prop :=
  ∀ n, P11118196433894108383.a n = A097134 n

end A097134

/-! ## A097134.P8094998089661962410

`floor(3*A000045(2*n+1)/ϕ)`
-/

namespace A097134.P8094998089661962410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A000045 (2 * n + 1) : ℝ) / Real.goldenRatio)⌋

end

end A097134.P8094998089661962410

namespace A097134

/-- `floor(3*A000045(2*n+1)/ϕ)` -/
def P8094998089661962410.Spec : Prop :=
  ∀ n, P8094998089661962410.a n = A097134 n

end A097134

/-! ## A097134.P6899992645049972076

`record[(3*A000045(n+1))^(n%2)]`
-/

namespace A097134.P6899992645049972076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A000045 (n + 1)) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097134.P6899992645049972076

namespace A097134

/-- `record[(3*A000045(n+1))^(n%2)]` -/
def P6899992645049972076.Spec : Prop :=
  ∀ n, P6899992645049972076.a n = A097134 n

end A097134

/-! ## A097134.P7608488634782749200

`A131326(A004273(n))`
-/

namespace A097134.P7608488634782749200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131326 (A004273 n).toNat

end

end A097134.P7608488634782749200

namespace A097134

/-- `A131326(A004273(n))` -/
def P7608488634782749200.Spec : Prop :=
  ∀ n, P7608488634782749200.a n = A097134 n

end A097134

/-! ## A097134.P2917475881876564781

`A097132(A004277(n))-1`
-/

namespace A097134.P2917475881876564781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097132 (A004277 n).toNat - 1

end

end A097134.P2917475881876564781

namespace A097134

/-- `A097132(A004277(n))-1` -/
def P2917475881876564781.Spec : Prop :=
  ∀ n, P2917475881876564781.a n = A097134 n

end A097134

/-! ## A097134.P7369868966475920873

`A097136(n)+A057428(n)`
-/

namespace A097134.P7369868966475920873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + A057428 n

end

end A097134.P7369868966475920873

namespace A097134

/-- `A097136(n)+A057428(n)` -/
def P7369868966475920873.Spec : Prop :=
  ∀ n, P7369868966475920873.a n = A097134 n

end A097134

/-! ## A097134.P3258654186357077375

`A031506(n)-A027941(n)`
-/

namespace A097134.P3258654186357077375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031506 n - A027941 n

end

end A097134.P3258654186357077375

namespace A097134

/-- `A031506(n)-A027941(n)` -/
def P3258654186357077375.Spec : Prop :=
  ∀ n, P3258654186357077375.a n = A097134 n

end A097134

/-! ## A097134.P186246657971889810

`A048575(n)-A055819(n)`
-/

namespace A097134.P186246657971889810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A055819 n

end

end A097134.P186246657971889810

namespace A097134

/-- `A048575(n)-A055819(n)` -/
def P186246657971889810.Spec : Prop :=
  ∀ n, P186246657971889810.a n = A097134 n

end A097134

/-! ## A097134.P16963242618962085030

`A097136(n)-A057427(n)`
-/

namespace A097134.P16963242618962085030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n - A057427 n

end

end A097134.P16963242618962085030

namespace A097134

/-- `A097136(n)-A057427(n)` -/
def P16963242618962085030.Spec : Prop :=
  ∀ n, P16963242618962085030.a n = A097134 n

end A097134

/-! ## A097134.P15140564337616291319

`A069403(n)-A293064(n)`
-/

namespace A097134.P15140564337616291319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069403 n - A293064 n

end

end A097134.P15140564337616291319

namespace A097134

/-- `A069403(n)-A293064(n)` -/
def P15140564337616291319.Spec : Prop :=
  ∀ n, P15140564337616291319.a n = A097134 n

end A097134

/-!
# A097135: a(0) = 1; for n>0, a(n) = 3*Fibonacci(n).

The programs for A097135, the canonical program `A097135.P5878186799918296249` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097135 has offset 0).

The definition of A097135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097135.P5878186799918296249

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097135

/-- `a(n-1)+a(n-2)` -/
def P5878186799918296249.Spec : Prop :=
  ∀ n, (P5878186799918296249.a n : ℤ) = A097135 n

theorem P5878186799918296249.correct : P5878186799918296249.Spec := by
  intro n
  simp only [A097135]

end A097135

/-! ## A097135.P4152423193272701872

`ogf((1+2x-x^2)/(1-x-x^2))`
-/

namespace A097135.P4152423193272701872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -1, -1] n

end

end A097135.P4152423193272701872

namespace A097135

/-- `ogf((1+2x-x^2)/(1-x-x^2))` -/
def P4152423193272701872.Spec : Prop :=
  ∀ n, P4152423193272701872.a n = A097135 n

end A097135

/-! ## A097135.P5422399681052575192

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=3, a(2)=3, a(3)=6, a(4)=9`
-/

namespace A097135.P5422399681052575192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 6, 9] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A097135.P5422399681052575192

namespace A097135

/-- `round(ϕ*a(n-1))` -/
def P5422399681052575192.Spec : Prop :=
  ∀ n, P5422399681052575192.a n = A097135 n

end A097135

/-! ## A097135.P15652051584760664020

`a(n-1)-(char[2]-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A097135.P15652051584760664020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A097135.P15652051584760664020

namespace A097135

/-- `a(n-1)-(char[2]-a(n-2))` -/
def P15652051584760664020.Spec : Prop :=
  ∀ n, P15652051584760664020.a n = A097135 n

end A097135

/-! ## A097135.P1543162234559327125

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=6`
-/

namespace A097135.P1543162234559327125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A097135.P1543162234559327125

namespace A097135

/-- `2*a(n-1)-a(n-3)` -/
def P1543162234559327125.Spec : Prop :=
  ∀ n, P1543162234559327125.a n = A097135 n

end A097135

/-! ## A097135.P9240423000333236858

`a(n-1)-floor(2/n-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A097135.P9240423000333236858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - ⌊2 / (n : ℚ) - (a (n - 2) : ℚ)⌋

end

end A097135.P9240423000333236858

namespace A097135

/-- `a(n-1)-floor(2/n-a(n-2))` -/
def P9240423000333236858.Spec : Prop :=
  ∀ n, P9240423000333236858.a n = A097135 n

end A097135

/-! ## A097135.P3338314917603105257

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A097135.P3338314917603105257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A097135.P3338314917603105257

namespace A097135

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P3338314917603105257.Spec : Prop :=
  ∀ n, P3338314917603105257.a n = A097135 n

end A097135

/-! ## A097135.P9709646981553412163

`floor(A022086(n)+Δ[sqrt(n)])`
-/

namespace A097135.P9709646981553412163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022086 n : ℝ) + (f1 (n + 1) - f1 n)⌋

end

end A097135.P9709646981553412163

namespace A097135

/-- `floor(A022086(n)+Δ[sqrt(n)])` -/
def P9709646981553412163.Spec : Prop :=
  ∀ n, P9709646981553412163.a n = A097135 n

end A097135

/-! ## A097135.P16020213351188625185

`3*(a(n-1)-A000032(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A097135.P16020213351188625185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (a (n - 1) - A000032 (n - 2))

end

end A097135.P16020213351188625185

namespace A097135

/-- `3*(a(n-1)-A000032(n-2))` -/
def P16020213351188625185.Spec : Prop :=
  ∀ n, P16020213351188625185.a n = A097135 n

end A097135

/-! ## A097135.P3797654966104069922

`A022086(n)+A000007(n)`
-/

namespace A097135.P3797654966104069922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A000007 n

end

end A097135.P3797654966104069922

namespace A097135

/-- `A022086(n)+A000007(n)` -/
def P3797654966104069922.Spec : Prop :=
  ∀ n, P3797654966104069922.a n = A097135 n

end A097135

/-! ## A097135.P6350123690703596795

`A055389(n)+A000045(n)`
-/

namespace A097135.P6350123690703596795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n + A000045 n

end

end A097135.P6350123690703596795

namespace A097135

/-- `A055389(n)+A000045(n)` -/
def P6350123690703596795.Spec : Prop :=
  ∀ n, P6350123690703596795.a n = A097135 n

end A097135

/-! ## A097135.P8868614261974875861

`A097133(n)+A062157(n)`
-/

namespace A097135.P8868614261974875861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097133 n + A062157 n

end

end A097135.P8868614261974875861

namespace A097135

/-- `A097133(n)+A062157(n)` -/
def P8868614261974875861.Spec : Prop :=
  ∀ n, P8868614261974875861.a n = A097135 n

end A097135

/-! ## A097135.P12066965938824851173

`A187893(n)+A057428(n)`
-/

namespace A097135.P12066965938824851173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A057428 n

end

end A097135.P12066965938824851173

namespace A097135

/-- `A187893(n)+A057428(n)` -/
def P12066965938824851173.Spec : Prop :=
  ∀ n, P12066965938824851173.a n = A097135 n

end A097135

/-! ## A097135.P13182376425068890203

`A020695(n)-A006355(n)`
-/

namespace A097135.P13182376425068890203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A006355 n

end

end A097135.P13182376425068890203

namespace A097135

/-- `A020695(n)-A006355(n)` -/
def P13182376425068890203.Spec : Prop :=
  ∀ n, P13182376425068890203.a n = A097135 n

end A097135

/-! ## A097135.P17744706743390711242

`A187893(n)-A057427(n)`
-/

namespace A097135.P17744706743390711242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n - A057427 n

end

end A097135.P17744706743390711242

namespace A097135

/-- `A187893(n)-A057427(n)` -/
def P17744706743390711242.Spec : Prop :=
  ∀ n, P17744706743390711242.a n = A097135 n

end A097135

/-! ## A097135.P11117297804717440036

`A000032(n)+Δ[A006355(n)]`
-/

namespace A097135.P11117297804717440036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (n + 1) - f1 n)

end

end A097135.P11117297804717440036

namespace A097135

/-- `A000032(n)+Δ[A006355(n)]` -/
def P11117297804717440036.Spec : Prop :=
  ∀ n, P11117297804717440036.a n = A097135 n

end A097135

/-! ## A097135.P9982823137737976252

`record[A000032(n)]-A212804(n)`
-/

namespace A097135.P9982823137737976252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A212804 n

end

end A097135.P9982823137737976252

namespace A097135

/-- `record[A000032(n)]-A212804(n)` -/
def P9982823137737976252.Spec : Prop :=
  ∀ n, P9982823137737976252.a n = A097135 n

end A097135

/-! ## A097135.P6354343318626682478

`A212804(n+1)+A055389(n)`
-/

namespace A097135.P6354343318626682478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A055389 n

end

end A097135.P6354343318626682478

namespace A097135

/-- `A212804(n+1)+A055389(n)` -/
def P6354343318626682478.Spec : Prop :=
  ∀ n, P6354343318626682478.a n = A097135 n

end A097135

/-! ## A097135.P119976685127222575

`A163733(n+2)+A000045(n)`
-/

namespace A097135.P119976685127222575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 2) + A000045 n

end

end A097135.P119976685127222575

namespace A097135

/-- `A163733(n+2)+A000045(n)` -/
def P119976685127222575.Spec : Prop :=
  ∀ n, P119976685127222575.a n = A097135 n

end A097135

/-! ## A097135.P11024222756122677572

`A000045(n+3)-A006355(n)`
-/

namespace A097135.P11024222756122677572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - A006355 n

end

end A097135.P11024222756122677572

namespace A097135

/-- `A000045(n+3)-A006355(n)` -/
def P11024222756122677572.Spec : Prop :=
  ∀ n, P11024222756122677572.a n = A097135 n

end A097135

/-!
# A097136: a(n) = 3*Fibonacci(2*n) + 1.

The programs for A097136, the canonical program `A097136.P18031910679519108452` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097136 has offset 0).

The definition of A097136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097136.P18031910679519108452

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097136

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P18031910679519108452.Spec : Prop :=
  ∀ n, P18031910679519108452.a n = A097136 n

theorem P18031910679519108452.correct : P18031910679519108452.Spec := by
  intro n
  simp only [A097136]

end A097136

/-! ## A097136.P7949538295134148988

`A097132(2*n)`
-/

namespace A097136.P7949538295134148988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097132 (2 * n)

end

end A097136.P7949538295134148988

namespace A097136

/-- `A097132(2*n)` -/
def P7949538295134148988.Spec : Prop :=
  ∀ n, P7949538295134148988.a n = A097136 n

end A097136

/-! ## A097136.P2952418618042341905

`A097133(2*n)`
-/

namespace A097136.P2952418618042341905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097133 (2 * n)

end

end A097136.P2952418618042341905

namespace A097136

/-- `A097133(2*n)` -/
def P2952418618042341905.Spec : Prop :=
  ∀ n, P2952418618042341905.a n = A097136 n

end A097136

/-! ## A097136.P16372622851250876790

`∑[ogf((1-2x^2)/(1-3x+x^2))]`
-/

namespace A097136.P16372622851250876790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097136.P16372622851250876790

namespace A097136

/-- `∑[ogf((1-2x^2)/(1-3x+x^2))]` -/
def P16372622851250876790.Spec : Prop :=
  ∀ n, P16372622851250876790.a n = A097136 n

end A097136

/-! ## A097136.P15437154885526243636

`ogf((1-2x^2)/(1-4x+4x^2-x^3))`
-/

namespace A097136.P15437154885526243636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -4, 4, -1] n

end

end A097136.P15437154885526243636

namespace A097136

/-- `ogf((1-2x^2)/(1-4x+4x^2-x^3))` -/
def P15437154885526243636.Spec : Prop :=
  ∀ n, P15437154885526243636.a n = A097136 n

end A097136

/-! ## A097136.P8954681149805522559

`∑[floor(ϕ²*a(n-1))]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A097136.P8954681149805522559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097136.P8954681149805522559

namespace A097136

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P8954681149805522559.Spec : Prop :=
  ∀ n, P8954681149805522559.a n = A097136 n

end A097136

/-! ## A097136.P4793086529116732451

`3*a(n-1)-(a(n-2)+1)` with `a(0)=1, a(1)=4`
-/

namespace A097136.P4793086529116732451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 1)

end

end A097136.P4793086529116732451

namespace A097136

/-- `3*a(n-1)-(a(n-2)+1)` -/
def P4793086529116732451.Spec : Prop :=
  ∀ n, P4793086529116732451.a n = A097136 n

end A097136

/-! ## A097136.P10140999255782780196

`3*a(n-1)-1-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A097136.P10140999255782780196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) - 1 - a (n - 2)

end

end A097136.P10140999255782780196

namespace A097136

/-- `3*a(n-1)-1-a(n-2)` -/
def P10140999255782780196.Spec : Prop :=
  ∀ n, P10140999255782780196.a n = A097136 n

end A097136

/-! ## A097136.P17392825018508661871

`lcm(3, a(n-1))-1-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A097136.P17392825018508661871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - 1 - a (n - 2)

end

end A097136.P17392825018508661871

namespace A097136

/-- `lcm(3, a(n-1))-1-a(n-2)` -/
def P17392825018508661871.Spec : Prop :=
  ∀ n, P17392825018508661871.a n = A097136 n

end A097136

/-! ## A097136.P15383396464313751316

`a(n-1)+a(n-1)+a(n-1)-(a(n-2)+1)` with `a(0)=1, a(1)=4`
-/

namespace A097136.P15383396464313751316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (a (n - 2) + 1)))

end

end A097136.P15383396464313751316

namespace A097136

/-- `a(n-1)+a(n-1)+a(n-1)-(a(n-2)+1)` -/
def P15383396464313751316.Spec : Prop :=
  ∀ n, P15383396464313751316.a n = A097136 n

end A097136

/-! ## A097136.P14566104252061640537

`a(n-1)-(1-(a(n-1)-(a(n-2)-a(n-1))))` with `a(0)=1, a(1)=4`
-/

namespace A097136.P14566104252061640537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (1 - (a (n - 1) - (a (n - 2) - a (n - 1))))

end

end A097136.P14566104252061640537

namespace A097136

/-- `a(n-1)-(1-(a(n-1)-(a(n-2)-a(n-1))))` -/
def P14566104252061640537.Spec : Prop :=
  ∀ n, P14566104252061640537.a n = A097136 n

end A097136

/-! ## A097136.P1716076603526535166

`A187893(2*n)`
-/

namespace A097136.P1716076603526535166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 (2 * n)

end

end A097136.P1716076603526535166

namespace A097136

/-- `A187893(2*n)` -/
def P1716076603526535166.Spec : Prop :=
  ∀ n, P1716076603526535166.a n = A097136 n

end A097136

/-! ## A097136.P16064824283061003974

`A022086(2*n)+1`
-/

namespace A097136.P16064824283061003974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (2 * n) + 1

end

end A097136.P16064824283061003974

namespace A097136

/-- `A022086(2*n)+1` -/
def P16064824283061003974.Spec : Prop :=
  ∀ n, P16064824283061003974.a n = A097136 n

end A097136

/-! ## A097136.P4897332276620190801

`A292290(n+2)-2`
-/

namespace A097136.P4897332276620190801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292290 (n + 2) - 2

end

end A097136.P4897332276620190801

namespace A097136

/-- `A292290(n+2)-2` -/
def P4897332276620190801.Spec : Prop :=
  ∀ n, P4897332276620190801.a n = A097136 n

end A097136

/-! ## A097136.P9277565484201034544

`3*A001906(n)+1`
-/

namespace A097136.P9277565484201034544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001906 n + 1

end

end A097136.P9277565484201034544

namespace A097136

/-- `3*A001906(n)+1` -/
def P9277565484201034544.Spec : Prop :=
  ∀ n, P9277565484201034544.a n = A097136 n

end A097136

/-! ## A097136.P11321307320557805697

`3*A055588(n)-2`
-/

namespace A097136.P11321307320557805697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055588 n - 2

end

end A097136.P11321307320557805697

namespace A097136

/-- `3*A055588(n)-2` -/
def P11321307320557805697.Spec : Prop :=
  ∀ n, P11321307320557805697.a n = A097136 n

end A097136

/-! ## A097136.P10183416680726030690

`A122012(Δ[n²])+1`
-/

namespace A097136.P10183416680726030690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122012 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A097136.P10183416680726030690

namespace A097136

/-- `A122012(Δ[n²])+1` -/
def P10183416680726030690.Spec : Prop :=
  ∀ n, P10183416680726030690.a n = A097136 n

end A097136

/-! ## A097136.P18344040795669813501

`floor(A099857(n)/2)+1`
-/

namespace A097136.P18344040795669813501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099857 n : ℚ) / 2⌋ + 1

end

end A097136.P18344040795669813501

namespace A097136

/-- `floor(A099857(n)/2)+1` -/
def P18344040795669813501.Spec : Prop :=
  ∀ n, P18344040795669813501.a n = A097136 n

end A097136

/-! ## A097136.P15085299230361757462

`Δ[A292291(n+1)]+1`
-/

namespace A097136.P15085299230361757462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A097136.P15085299230361757462

namespace A097136

/-- `Δ[A292291(n+1)]+1` -/
def P15085299230361757462.Spec : Prop :=
  ∀ n, P15085299230361757462.a n = A097136 n

end A097136

/-! ## A097136.P11289545139189861540

`3*A000045(2*n)+1`
-/

namespace A097136.P11289545139189861540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (2 * n) + 1

end

end A097136.P11289545139189861540

namespace A097136

/-- `3*A000045(2*n)+1` -/
def P11289545139189861540.Spec : Prop :=
  ∀ n, P11289545139189861540.a n = A097136 n

end A097136

/-!
# A097137: Convolution of 3^n and floor(n/2).

The programs for A097137, the canonical program `A097137.P8341468863373236092` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097137 has offset 0).

The definition of A097137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097137.P17458653539215611056

`a(n-2)+(3^(n-1)-1)/2` with `a(0)=0, a(1)=0`
-/

namespace A097137.P17458653539215611056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) / 2

end

end A097137.P17458653539215611056

namespace A097137

/-- `a(n-2)+(3^(n-1)-1)/2` -/
def P17458653539215611056.Spec : Prop :=
  ∀ n, P17458653539215611056.a n = (A097137 n : ℚ)

end A097137

/-! ## A097137.P8341468863373236092

`4*a(n-1)-2*a(n-2)-4*a(n-3)+3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097137

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)+3*a(n-4)` -/
def P8341468863373236092.Spec : Prop :=
  ∀ n, P8341468863373236092.a n = A097137 n

theorem P8341468863373236092.correct : P8341468863373236092.Spec := by
  intro n
  simp only [A097137]

end A097137

/-! ## A097137.P8915681700916240442

`floor((3*3^n-4*n-3)/16)`
-/

namespace A097137.P8915681700916240442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * 3 ^ n : ℤ) - (4 * n : ℤ) - 3 : ℚ) / 16⌋

end

end A097137.P8915681700916240442

namespace A097137

/-- `floor((3*3^n-4*n-3)/16)` -/
def P8915681700916240442.Spec : Prop :=
  ∀ n, P8915681700916240442.a n = A097137 n

end A097137

/-! ## A097137.P9758857643524540130

`ogf(x^2/(1-4x+2x^2+4x^3-3x^4))`
-/

namespace A097137.P9758857643524540130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, 2, 4, -3] n

end

end A097137.P9758857643524540130

namespace A097137

/-- `ogf(x^2/(1-4x+2x^2+4x^3-3x^4))` -/
def P9758857643524540130.Spec : Prop :=
  ∀ n, P9758857643524540130.a n = A097137 n

end A097137

/-! ## A097137.P16198273619430574819

`∑[∑[xor(1, 3*a(n-1))]]` with `a(0)=0, a(1)=0`
-/

namespace A097137.P16198273619430574819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  Nat.xor 1 (3 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097137.P16198273619430574819

namespace A097137

/-- `∑[∑[xor(1, 3*a(n-1))]]` -/
def P16198273619430574819.Spec : Prop :=
  ∀ n, (P16198273619430574819.a n : ℤ) = A097137 n

end A097137

/-! ## A097137.P9562782155760369196

`∑[a(n-2)+3^(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A097137.P9562782155760369196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097137.P9562782155760369196

namespace A097137

/-- `∑[a(n-2)+3^(n-2)]` -/
def P9562782155760369196.Spec : Prop :=
  ∀ n, P9562782155760369196.a n = (A097137 n : ℚ)

end A097137

/-! ## A097137.P838584838117811836

`3*a(n-1)-floor((1-n)/2)` with `a(0)=0`
-/

namespace A097137.P838584838117811836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) - ⌊(1 - (n : ℤ) : ℚ) / 2⌋

end

end A097137.P838584838117811836

namespace A097137

/-- `3*a(n-1)-floor((1-n)/2)` -/
def P838584838117811836.Spec : Prop :=
  ∀ n, P838584838117811836.a n = A097137 n

end A097137

/-! ## A097137.P8760136053350267822

`∑[(n+1)%2+3*a(n-1)]` with `a(0)=0`
-/

namespace A097137.P8760136053350267822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) % 2 + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097137.P8760136053350267822

namespace A097137

/-- `∑[(n+1)%2+3*a(n-1)]` -/
def P8760136053350267822.Spec : Prop :=
  ∀ n, (P8760136053350267822.a n : ℤ) = A097137 n

end A097137

/-! ## A097137.P16948263672895706697

`and(n, -2)/2+3*a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A097137.P16948263672895706697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2 + 3 * a (n - 1)

end

end A097137.P16948263672895706697

namespace A097137

/-- `and(n, -2)/2+3*a(n-1)` -/
def P16948263672895706697.Spec : Prop :=
  ∀ n, P16948263672895706697.a n = (A097137 n : ℚ)

end A097137

/-! ## A097137.P1204879857276261976

`∑[3*a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A097137.P1204879857276261976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A097137.P1204879857276261976

namespace A097137

/-- `∑[3*a(n-1)]+a(n-2)` -/
def P1204879857276261976.Spec : Prop :=
  ∀ n, (P1204879857276261976.a n : ℤ) = A097137 n

end A097137

/-! ## A097137.P16919998673059411154

`round(abs(1-n)/2)+3*a(n-1)` with `a(0)=0`
-/

namespace A097137.P16919998673059411154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((|1 - (n : ℤ)| : ℚ) / 2) + 3 * a (n - 1)

end

end A097137.P16919998673059411154

namespace A097137

/-- `round(abs(1-n)/2)+3*a(n-1)` -/
def P16919998673059411154.Spec : Prop :=
  ∀ n, P16919998673059411154.a n = A097137 n

end A097137

/-! ## A097137.P15624835920518906129

`∑[∑[3*a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A097137.P15624835920518906129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097137.P15624835920518906129

namespace A097137

/-- `∑[∑[3*a(n-1)]-a(n-1)]` -/
def P15624835920518906129.Spec : Prop :=
  ∀ n, P15624835920518906129.a n = A097137 n

end A097137

/-! ## A097137.P4507553774111918629

`∑[∑[A015518(A028310(n)-1)]]`
-/

namespace A097137.P4507553774111918629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097137.P4507553774111918629

namespace A097137

/-- `∑[∑[A015518(A028310(n)-1)]]` -/
def P4507553774111918629.Spec : Prop :=
  ∀ n, P4507553774111918629.a n = A097137 n

end A097137

/-! ## A097137.P4356238211866552850

`∑[A133409(n)+A133405(n+1)]`
-/

namespace A097137.P4356238211866552850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133409 n + A133405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097137.P4356238211866552850

namespace A097137

/-- `∑[A133409(n)+A133405(n+1)]` -/
def P4356238211866552850.Spec : Prop :=
  ∀ n, P4356238211866552850.a n = A097137 n

end A097137

/-! ## A097137.P737485974586211505

`(A183119(n)-n)/2`
-/

namespace A097137.P737485974586211505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183119 n - (n : ℤ) : ℚ) / 2

end

end A097137.P737485974586211505

namespace A097137

/-- `(A183119(n)-n)/2` -/
def P737485974586211505.Spec : Prop :=
  ∀ n, P737485974586211505.a n = (A097137 n : ℚ)

end A097137

/-! ## A097137.P6216764150274285306

`(A006342(n)-A008619(n))/2`
-/

namespace A097137.P6216764150274285306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006342 n - A008619 n : ℚ) / 2

end

end A097137.P6216764150274285306

namespace A097137

/-- `(A006342(n)-A008619(n))/2` -/
def P6216764150274285306.Spec : Prop :=
  ∀ n, P6216764150274285306.a n = (A097137 n : ℚ)

end A097137

/-! ## A097137.P16237471902351525206

`∑[A039300(n)]-(A039300(n)+n)`
-/

namespace A097137.P16237471902351525206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A039300 n + (n : ℤ))

end

end A097137.P16237471902351525206

namespace A097137

/-- `∑[A039300(n)]-(A039300(n)+n)` -/
def P16237471902351525206.Spec : Prop :=
  ∀ n, P16237471902351525206.a n = A097137 n

end A097137

/-! ## A097137.P1649720169086989360

`∑[and(-4, 3^n)]/8`
-/

namespace A097137.P1649720169086989360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (3 ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8

end

end A097137.P1649720169086989360

namespace A097137

/-- `∑[and(-4, 3^n)]/8` -/
def P1649720169086989360.Spec : Prop :=
  ∀ n, P1649720169086989360.a n = (A097137 n : ℚ)

end A097137

/-! ## A097137.P9458223179126167903

`(A080926(n)-n)/4`
-/

namespace A097137.P9458223179126167903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080926 n - (n : ℤ) : ℚ) / 4

end

end A097137.P9458223179126167903

namespace A097137

/-- `(A080926(n)-n)/4` -/
def P9458223179126167903.Spec : Prop :=
  ∀ n, P9458223179126167903.a n = (A097137 n : ℚ)

end A097137

/-! ## A097137.P740360231967556908

`A141397(n)-A000340(n)`
-/

namespace A097137.P740360231967556908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141397 n - A000340 n

end

end A097137.P740360231967556908

namespace A097137

/-- `A141397(n)-A000340(n)` -/
def P740360231967556908.Spec : Prop :=
  ∀ n, P740360231967556908.a n = A097137 n

end A097137

/-!
# A097138: Convolution of 4^n and floor(n/2).

The programs for A097138, the canonical program `A097138.P4207224749158757090` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097138 has offset 0).

The definition of A097138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097138.P4548599225758165523

`a(n-2)+(4^(n-1)-1)/3` with `a(0)=0, a(1)=0`
-/

namespace A097138.P4548599225758165523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) / 3

end

end A097138.P4548599225758165523

namespace A097138

/-- `a(n-2)+(4^(n-1)-1)/3` -/
def P4548599225758165523.Spec : Prop :=
  ∀ n, P4548599225758165523.a n = (A097138 n : ℚ)

end A097138

/-! ## A097138.P4207224749158757090

`5*a(n-1)-3*a(n-2)-5*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097138

/-- `5*a(n-1)-3*a(n-2)-5*a(n-3)+4*a(n-4)` -/
def P4207224749158757090.Spec : Prop :=
  ∀ n, P4207224749158757090.a n = A097138 n

theorem P4207224749158757090.correct : P4207224749158757090.Spec := by
  intro n
  simp only [A097138]

end A097138

/-! ## A097138.P2888840427481216597

`(floor(4^(n+1)/15)-floor((n+1)/2))/3`
-/

namespace A097138.P2888840427481216597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(4 ^ (n + 1) : ℚ) / 15⌋ - ⌊(n + 1 : ℚ) / 2⌋ : ℚ) / 3

end

end A097138.P2888840427481216597

namespace A097138

/-- `(floor(4^(n+1)/15)-floor((n+1)/2))/3` -/
def P2888840427481216597.Spec : Prop :=
  ∀ n, P2888840427481216597.a n = (A097138 n : ℚ)

end A097138

/-! ## A097138.P16828356475908352811

`ogf(x^2/(1-5x+3x^2+5x^3-4x^4))`
-/

namespace A097138.P16828356475908352811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -5, 3, 5, -4] n

end

end A097138.P16828356475908352811

namespace A097138

/-- `ogf(x^2/(1-5x+3x^2+5x^3-4x^4))` -/
def P16828356475908352811.Spec : Prop :=
  ∀ n, P16828356475908352811.a n = A097138 n

end A097138

/-! ## A097138.P9588365267194048528

`floor(n/2+4*a(n-1))` with `a(0)=0`
-/

namespace A097138.P9588365267194048528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 2 + (4 * a (n - 1) : ℚ)⌋

end

end A097138.P9588365267194048528

namespace A097138

/-- `floor(n/2+4*a(n-1))` -/
def P9588365267194048528.Spec : Prop :=
  ∀ n, P9588365267194048528.a n = A097138 n

end A097138

/-! ## A097138.P10694121923992258232

`∑[a(n-2)+4^(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A097138.P10694121923992258232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097138.P10694121923992258232

namespace A097138

/-- `∑[a(n-2)+4^(n-2)]` -/
def P10694121923992258232.Spec : Prop :=
  ∀ n, P10694121923992258232.a n = (A097138 n : ℚ)

end A097138

/-! ## A097138.P6402311698824542565

`4*a(n-1)-floor((1-n)/2)` with `a(0)=0`
-/

namespace A097138.P6402311698824542565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) - ⌊(1 - (n : ℤ) : ℚ) / 2⌋

end

end A097138.P6402311698824542565

namespace A097138

/-- `4*a(n-1)-floor((1-n)/2)` -/
def P6402311698824542565.Spec : Prop :=
  ∀ n, P6402311698824542565.a n = A097138 n

end A097138

/-! ## A097138.P2860285438749898456

`∑[4*a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A097138.P2860285438749898456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A097138.P2860285438749898456

namespace A097138

/-- `∑[4*a(n-1)]+a(n-2)` -/
def P2860285438749898456.Spec : Prop :=
  ∀ n, (P2860285438749898456.a n : ℤ) = A097138 n

end A097138

/-! ## A097138.P13828665844088357860

`ceil(abs((1-n)/2))+4*a(n-1)` with `a(0)=0`
-/

namespace A097138.P13828665844088357860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ + 4 * a (n - 1)

end

end A097138.P13828665844088357860

namespace A097138

/-- `ceil(abs((1-n)/2))+4*a(n-1)` -/
def P13828665844088357860.Spec : Prop :=
  ∀ n, P13828665844088357860.a n = A097138 n

end A097138

/-! ## A097138.P8509947406792522610

`∑[∑[4*a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A097138.P8509947406792522610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097138.P8509947406792522610

namespace A097138

/-- `∑[∑[4*a(n-1)]-a(n-1)]` -/
def P8509947406792522610.Spec : Prop :=
  ∀ n, P8509947406792522610.a n = A097138 n

end A097138

/-! ## A097138.P16283999281896632834

`A007910(2*n)-∑[∑[A007909(2*n)]]`
-/

namespace A097138.P16283999281896632834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097138.P16283999281896632834

namespace A097138

/-- `A007910(2*n)-∑[∑[A007909(2*n)]]` -/
def P16283999281896632834.Spec : Prop :=
  ∀ n, P16283999281896632834.a n = A097138 n

end A097138

/-! ## A097138.P12378158061306856253

`A007909(2*n+1)-∑[∑[A007909(2*n)]]`
-/

namespace A097138.P12378158061306856253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097138.P12378158061306856253

namespace A097138

/-- `A007909(2*n+1)-∑[∑[A007909(2*n)]]` -/
def P12378158061306856253.Spec : Prop :=
  ∀ n, P12378158061306856253.a n = A097138 n

end A097138

/-!
# A097139: Convolution of 5^n and floor(n/2).

The programs for A097139, the canonical program `A097139.P14922326078224993869` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097139 has offset 0).

The definition of A097139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097139.P64226357933983094

`a(n-2)+(5^(n-1)-1)/4` with `a(0)=0, a(1)=0`
-/

namespace A097139.P64226357933983094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) / 4

end

end A097139.P64226357933983094

namespace A097139

/-- `a(n-2)+(5^(n-1)-1)/4` -/
def P64226357933983094.Spec : Prop :=
  ∀ n, P64226357933983094.a n = (A097139 n : ℚ)

end A097139

/-! ## A097139.P14922326078224993869

`6*a(n-1)-4*a(n-2)-6*a(n-3)+5*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097139

/-- `6*a(n-1)-4*a(n-2)-6*a(n-3)+5*a(n-4)` -/
def P14922326078224993869.Spec : Prop :=
  ∀ n, P14922326078224993869.a n = A097139 n

theorem P14922326078224993869.correct : P14922326078224993869.Spec := by
  intro n
  simp only [A097139]

end A097139

/-! ## A097139.P12910305167253228552

`(floor(5^(n+1)/24)-floor((n+1)/2))/4`
-/

namespace A097139.P12910305167253228552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(5 ^ (n + 1) : ℚ) / 24⌋ - ⌊(n + 1 : ℚ) / 2⌋ : ℚ) / 4

end

end A097139.P12910305167253228552

namespace A097139

/-- `(floor(5^(n+1)/24)-floor((n+1)/2))/4` -/
def P12910305167253228552.Spec : Prop :=
  ∀ n, P12910305167253228552.a n = (A097139 n : ℚ)

end A097139

/-! ## A097139.P8745745189133177519

`ogf(x^2/(1-6x+4x^2+6x^3-5x^4))`
-/

namespace A097139.P8745745189133177519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -6, 4, 6, -5] n

end

end A097139.P8745745189133177519

namespace A097139

/-- `ogf(x^2/(1-6x+4x^2+6x^3-5x^4))` -/
def P8745745189133177519.Spec : Prop :=
  ∀ n, P8745745189133177519.a n = A097139 n

end A097139

/-! ## A097139.P3468006235236505771

`∑[∑[xor(1, 5*a(n-1))]]` with `a(0)=0, a(1)=0`
-/

namespace A097139.P3468006235236505771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  Nat.xor 1 (5 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097139.P3468006235236505771

namespace A097139

/-- `∑[∑[xor(1, 5*a(n-1))]]` -/
def P3468006235236505771.Spec : Prop :=
  ∀ n, (P3468006235236505771.a n : ℤ) = A097139 n

end A097139

/-! ## A097139.P1137759591133849244

`floor(n/2+5*a(n-1))` with `a(0)=0`
-/

namespace A097139.P1137759591133849244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 2 + (5 * a (n - 1) : ℚ)⌋

end

end A097139.P1137759591133849244

namespace A097139

/-- `floor(n/2+5*a(n-1))` -/
def P1137759591133849244.Spec : Prop :=
  ∀ n, P1137759591133849244.a n = A097139 n

end A097139

/-! ## A097139.P1053929816646309910

`∑[a(n-2)+5^(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A097139.P1053929816646309910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + (5 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097139.P1053929816646309910

namespace A097139

/-- `∑[a(n-2)+5^(n-2)]` -/
def P1053929816646309910.Spec : Prop :=
  ∀ n, P1053929816646309910.a n = (A097139 n : ℚ)

end A097139

/-! ## A097139.P8998859804863501558

`∑[(n+1)%2+5*a(n-1)]` with `a(0)=0`
-/

namespace A097139.P8998859804863501558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) % 2 + 5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097139.P8998859804863501558

namespace A097139

/-- `∑[(n+1)%2+5*a(n-1)]` -/
def P8998859804863501558.Spec : Prop :=
  ∀ n, (P8998859804863501558.a n : ℤ) = A097139 n

end A097139

/-! ## A097139.P15578457703641254698

`∑[5*a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A097139.P15578457703641254698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A097139.P15578457703641254698

namespace A097139

/-- `∑[5*a(n-1)]+a(n-2)` -/
def P15578457703641254698.Spec : Prop :=
  ∀ n, (P15578457703641254698.a n : ℤ) = A097139 n

end A097139

/-! ## A097139.P8984707811796569906

`ceil(abs((1-n)/2))+5*a(n-1)` with `a(0)=0`
-/

namespace A097139.P8984707811796569906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ + 5 * a (n - 1)

end

end A097139.P8984707811796569906

namespace A097139

/-- `ceil(abs((1-n)/2))+5*a(n-1)` -/
def P8984707811796569906.Spec : Prop :=
  ∀ n, P8984707811796569906.a n = A097139 n

end A097139

/-! ## A097139.P8384381723647011249

`∑[∑[5*a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A097139.P8384381723647011249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  5 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097139.P8384381723647011249

namespace A097139

/-- `∑[∑[5*a(n-1)]-a(n-1)]` -/
def P8384381723647011249.Spec : Prop :=
  ∀ n, P8384381723647011249.a n = A097139 n

end A097139

/-! ## A097139.P6646245167800374332

`∑[∑[A015531(n)]-A015531(n)]`
-/

namespace A097139.P6646245167800374332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A015531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097139.P6646245167800374332

namespace A097139

/-- `∑[∑[A015531(n)]-A015531(n)]` -/
def P6646245167800374332.Spec : Prop :=
  ∀ n, P6646245167800374332.a n = A097139 n

end A097139

/-!
# A097140: Interleave n and 1-n.

The programs for A097140, the canonical program `A097140.P5796583017782885829` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097140 has offset 0).

The definition of A097140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097140.P5796583017782885829

`3/4+(2*n-3)*(-1)^n/4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097140

/-- `3/4+(2*n-3)*(-1)^n/4` -/
def P5796583017782885829.Spec : Prop :=
  ∀ n, P5796583017782885829.a n = (A097140 n : ℚ)

end A097140

/-! ## A097140.P17923230022502716077

`Δ[(n-2)/gcd(2, n)]`
-/

namespace A097140.P17923230022502716077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097140.P17923230022502716077

namespace A097140

/-- `Δ[(n-2)/gcd(2, n)]` -/
def P17923230022502716077.Spec : Prop :=
  ∀ n, P17923230022502716077.a n = (A097140 n : ℚ)

end A097140

/-! ## A097140.P8448641391241016655

`Δ[lcm(2, xor(n, -2))/2]`
-/

namespace A097140.P8448641391241016655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097140.P8448641391241016655

namespace A097140

/-- `Δ[lcm(2, xor(n, -2))/2]` -/
def P8448641391241016655.Spec : Prop :=
  ∀ n, P8448641391241016655.a n = (A097140 n : ℚ)

end A097140

/-! ## A097140.P6463136800692973156

`∑[ogf((x+2x^2)/(1+2x+x^2))]`
-/

namespace A097140.P6463136800692973156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097140.P6463136800692973156

namespace A097140

/-- `∑[ogf((x+2x^2)/(1+2x+x^2))]` -/
def P6463136800692973156.Spec : Prop :=
  ∀ n, P6463136800692973156.a n = A097140 n

end A097140

/-! ## A097140.P16329895557312567376

`ogf((x+2x^2)/(1+x-x^2-x^3))`
-/

namespace A097140.P16329895557312567376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 1, -1, -1] n

end

end A097140.P16329895557312567376

namespace A097140

/-- `ogf((x+2x^2)/(1+x-x^2-x^3))` -/
def P16329895557312567376.Spec : Prop :=
  ∀ n, P16329895557312567376.a n = A097140 n

end A097140

/-! ## A097140.P4163506293972840619

`∑[-xor(1, a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A097140.P4163506293972840619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -Int.xor 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097140.P4163506293972840619

namespace A097140

/-- `∑[-xor(1, a(n-1))]` -/
def P4163506293972840619.Spec : Prop :=
  ∀ n, P4163506293972840619.a n = A097140 n

end A097140

/-! ## A097140.P2621237895139194446

`Δ[(n-2)/(2-and(1, n))]`
-/

namespace A097140.P2621237895139194446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097140.P2621237895139194446

namespace A097140

/-- `Δ[(n-2)/(2-and(1, n))]` -/
def P2621237895139194446.Spec : Prop :=
  ∀ n, P2621237895139194446.a n = (A097140 n : ℚ)

end A097140

/-! ## A097140.P11853746466382347986

`Δ[-((n-2)/or(n, -2))]`
-/

namespace A097140.P11853746466382347986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097140.P11853746466382347986

namespace A097140

/-- `Δ[-((n-2)/or(n, -2))]` -/
def P11853746466382347986.Spec : Prop :=
  ∀ n, P11853746466382347986.a n = (A097140 n : ℚ)

end A097140

/-! ## A097140.P15605735620632846280

`-(a(n-1)+or(n, -2))` with `a(0)=0`
-/

namespace A097140.P15605735620632846280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -(a (n - 1) + Int.lor (n : ℤ) (-2))

end

end A097140.P15605735620632846280

namespace A097140

/-- `-(a(n-1)+or(n, -2))` -/
def P15605735620632846280.Spec : Prop :=
  ∀ n, P15605735620632846280.a n = A097140 n

end A097140

/-! ## A097140.P2648085222179048794

`∑[(-1)^n-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A097140.P2648085222179048794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (-1) ^ n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097140.P2648085222179048794

namespace A097140

/-- `∑[(-1)^n-a(n-1)]` -/
def P2648085222179048794.Spec : Prop :=
  ∀ n, P2648085222179048794.a n = A097140 n

end A097140

/-! ## A097140.P4062330261819524757

`Δ[(n-2)/(or(1, n)-(n-1))]`
-/

namespace A097140.P4062330261819524757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097140.P4062330261819524757

namespace A097140

/-- `Δ[(n-2)/(or(1, n)-(n-1))]` -/
def P4062330261819524757.Spec : Prop :=
  ∀ n, P4062330261819524757.a n = (A097140 n : ℚ)

end A097140

/-! ## A097140.P4836420907708950609

`Δ[lcm(2*n, (n+2)²)%(n+1)]`
-/

namespace A097140.P4836420907708950609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n) ((n + 2) ^ 2) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A097140.P4836420907708950609

namespace A097140

/-- `Δ[lcm(2*n, (n+2)²)%(n+1)]` -/
def P4836420907708950609.Spec : Prop :=
  ∀ n, P4836420907708950609.a n = A097140 n

end A097140

/-! ## A097140.P548006542863792175

`Δ[gcd(n+1, n+3)*floor(n/2)]`
-/

namespace A097140.P548006542863792175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (n + 3) : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097140.P548006542863792175

namespace A097140

/-- `Δ[gcd(n+1, n+3)*floor(n/2)]` -/
def P548006542863792175.Spec : Prop :=
  ∀ n, P548006542863792175.a n = A097140 n

end A097140

/-! ## A097140.P12000535854590381872

`floor(n/floor((n+1)/2)-a(n-1))` with `a(0)=0`
-/

namespace A097140.P12000535854590381872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ) - (a (n - 1) : ℚ)⌋

end

end A097140.P12000535854590381872

namespace A097140

/-- `floor(n/floor((n+1)/2)-a(n-1))` -/
def P12000535854590381872.Spec : Prop :=
  ∀ n, P12000535854590381872.a n = A097140 n

end A097140

/-! ## A097140.P588959019417822081

`∑[(2-n)/(a(n-1)+a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A097140.P588959019417822081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (2 - (n : ℤ) : ℚ) / (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097140.P588959019417822081

namespace A097140

/-- `∑[(2-n)/(a(n-1)+a(n-2))]` -/
def P588959019417822081.Spec : Prop :=
  ∀ n, P588959019417822081.a n = (A097140 n : ℚ)

end A097140

/-! ## A097140.P2573317646343320764

`floor(a(n-2)-floor(a(n-1)-a(n-3)))` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097140.P2573317646343320764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 3))

end

end A097140.P2573317646343320764

namespace A097140

/-- `floor(a(n-2)-floor(a(n-1)-a(n-3)))` -/
def P2573317646343320764.Spec : Prop :=
  ∀ n, P2573317646343320764.a n = A097140 n

end A097140

/-! ## A097140.P7206189408894304080

`∑[A097141(n)]`
-/

namespace A097140.P7206189408894304080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097140.P7206189408894304080

namespace A097140

/-- `∑[A097141(n)]` -/
def P7206189408894304080.Spec : Prop :=
  ∀ n, P7206189408894304080.a n = A097140 n

end A097140

/-! ## A097140.P17813750939356130223

`Δ[A029578(n)]`
-/

namespace A097140.P17813750939356130223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097140.P17813750939356130223

namespace A097140

/-- `Δ[A029578(n)]` -/
def P17813750939356130223.Spec : Prop :=
  ∀ n, P17813750939356130223.a n = A097140 n

end A097140

/-! ## A097140.P12913299779353087491

`(A265723(n)-n)/2`
-/

namespace A097140.P12913299779353087491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265723 n - (n : ℤ) : ℚ) / 2

end

end A097140.P12913299779353087491

namespace A097140

/-- `(A265723(n)-n)/2` -/
def P12913299779353087491.Spec : Prop :=
  ∀ n, P12913299779353087491.a n = (A097140 n : ℚ)

end A097140

/-! ## A097140.P13029190375844461839

`(1-A265722(n)+n)/2`
-/

namespace A097140.P13029190375844461839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A265722 n + (n : ℤ) : ℚ) / 2

end

end A097140.P13029190375844461839

namespace A097140

/-- `(1-A265722(n)+n)/2` -/
def P13029190375844461839.Spec : Prop :=
  ∀ n, P13029190375844461839.a n = (A097140 n : ℚ)

end A097140

/-!
# A097141: Expansion of x*(1+2*x)/(1+x)^2.

The programs for A097141, the canonical program `A097141.P10353127114285959957` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097141 has offset 0).

The definition of A097141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2)/(1+2x+x^2))` (program `A097141.P10353127114285959957`, by `A097141.P10353127114285959957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097141.P10353127114285959957

`ogf((x+2x^2)/(1+2x+x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097141

/-- `ogf((x+2x^2)/(1+2x+x^2))` -/
def P10353127114285959957.Spec : Prop :=
  ∀ n, P10353127114285959957.a n = A097141 n

theorem P10353127114285959957.correct : P10353127114285959957.Spec := by
  intro n
  simp only [A097141]

end A097141

/-! ## A097141.P15365806429452443227

`-xor(1, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A097141.P15365806429452443227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -Int.xor 1 (a (n - 1))

end

end A097141.P15365806429452443227

namespace A097141

/-- `-xor(1, a(n-1))` -/
def P15365806429452443227.Spec : Prop :=
  ∀ n, P15365806429452443227.a n = A097141 n

end A097141

/-! ## A097141.P7988895158870120318

`(-1)^n-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A097141.P7988895158870120318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (-1) ^ n - a (n - 1)

end

end A097141.P7988895158870120318

namespace A097141

/-- `(-1)^n-a(n-1)` -/
def P7988895158870120318.Spec : Prop :=
  ∀ n, P7988895158870120318.a n = A097141 n

end A097141

/-! ## A097141.P739058086251810290

`(abs(1-n)-1)*(-1)^n`
-/

namespace A097141.P739058086251810290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| - 1) * (-1) ^ n

end

end A097141.P739058086251810290

namespace A097141

/-- `(abs(1-n)-1)*(-1)^n` -/
def P739058086251810290.Spec : Prop :=
  ∀ n, P739058086251810290.a n = A097141 n

end A097141

/-! ## A097141.P5397886965817954369

`2-xor(1, a(n-1)+2)` with `a(0)=0, a(1)=1`
-/

namespace A097141.P5397886965817954369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - Int.xor 1 (a (n - 1) + 2)

end

end A097141.P5397886965817954369

namespace A097141

/-- `2-xor(1, a(n-1)+2)` -/
def P5397886965817954369.Spec : Prop :=
  ∀ n, P5397886965817954369.a n = A097141 n

end A097141

/-! ## A097141.P13975369399854137367

`Δ[gcd(2, n+1)-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A097141.P13975369399854137367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (Nat.gcd 2 (n + 1) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097141.P13975369399854137367

namespace A097141

/-- `Δ[gcd(2, n+1)-a(n-1)]` -/
def P13975369399854137367.Spec : Prop :=
  ∀ n, P13975369399854137367.a n = A097141 n

end A097141

/-! ## A097141.P10061407115804589262

`or(2, n-a(n-1))-(n+1)` with `a(0)=0`
-/

namespace A097141.P10061407115804589262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 2 ((n : ℤ) - a (n - 1)) - (n + 1 : ℤ)

end

end A097141.P10061407115804589262

namespace A097141

/-- `or(2, n-a(n-1))-(n+1)` -/
def P10061407115804589262.Spec : Prop :=
  ∀ n, P10061407115804589262.a n = A097141 n

end A097141

/-! ## A097141.P16112432144521013740

`1-(a(n-1)+2*n%2)` with `a(0)=0, a(1)=1`
-/

namespace A097141.P16112432144521013740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (a (n - 1) + ((2 * (n % 2) : ℕ) : ℤ))

end

end A097141.P16112432144521013740

namespace A097141

/-- `1-(a(n-1)+2*n%2)` -/
def P16112432144521013740.Spec : Prop :=
  ∀ n, P16112432144521013740.a n = A097141 n

end A097141

/-! ## A097141.P274362851991500328

`1-a(n-1)-(2*n)%4` with `a(0)=0, a(1)=1`
-/

namespace A097141.P274362851991500328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - a (n - 1) - ((2 * n % 4 : ℕ) : ℤ)

end

end A097141.P274362851991500328

namespace A097141

/-- `1-a(n-1)-(2*n)%4` -/
def P274362851991500328.Spec : Prop :=
  ∀ n, P274362851991500328.a n = A097141 n

end A097141

/-! ## A097141.P5283869812609665497

`1-(a(n-1)+2*and(1, n))` with `a(0)=0, a(1)=1`
-/

namespace A097141.P5283869812609665497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (a (n - 1) + (2 * Nat.land 1 n : ℤ))

end

end A097141.P5283869812609665497

namespace A097141

/-- `1-(a(n-1)+2*and(1, n))` -/
def P5283869812609665497.Spec : Prop :=
  ∀ n, P5283869812609665497.a n = A097141 n

end A097141

/-! ## A097141.P7611905049489224751

`1-a(n-1)-2*and(1, n)` with `a(0)=0, a(1)=1`
-/

namespace A097141.P7611905049489224751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - a (n - 1) - (2 * Nat.land 1 n : ℤ)

end

end A097141.P7611905049489224751

namespace A097141

/-- `1-a(n-1)-2*and(1, n)` -/
def P7611905049489224751.Spec : Prop :=
  ∀ n, P7611905049489224751.a n = A097141 n

end A097141

/-! ## A097141.P14852016861078753386

`(2-n)/(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A097141.P14852016861078753386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - (n : ℤ) : ℚ) / (a (n - 1) + a (n - 2))

end

end A097141.P14852016861078753386

namespace A097141

/-- `(2-n)/(a(n-1)+a(n-2))` -/
def P14852016861078753386.Spec : Prop :=
  ∀ n, P14852016861078753386.a n = (A097141 n : ℚ)

end A097141

/-! ## A097141.P5224301713097521279

`2-(a(n-1)+(n-a(n-1))%4)` with `a(0)=0`
-/

namespace A097141.P5224301713097521279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (a (n - 1) + Int.tmod ((n : ℤ) - a (n - 1)) 4)

end

end A097141.P5224301713097521279

namespace A097141

/-- `2-(a(n-1)+(n-a(n-1))%4)` -/
def P5224301713097521279.Spec : Prop :=
  ∀ n, P5224301713097521279.a n = A097141 n

end A097141

/-! ## A097141.P13524381527374588142

`2-(a(n-1)-(a(n-1)-n)%4)` with `a(0)=0`
-/

namespace A097141.P13524381527374588142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (a (n - 1) - Int.tmod (a (n - 1) - (n : ℤ)) 4)

end

end A097141.P13524381527374588142

namespace A097141

/-- `2-(a(n-1)-(a(n-1)-n)%4)` -/
def P13524381527374588142.Spec : Prop :=
  ∀ n, P13524381527374588142.a n = A097141 n

end A097141

/-! ## A097141.P14176559333780965037

`3-a(n-1)-gcd(4, 2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A097141.P14176559333780965037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - a (n - 1) - (Int.gcd 4 (2 * a (n - 1)) : ℤ)

end

end A097141.P14176559333780965037

namespace A097141

/-- `3-a(n-1)-gcd(4, 2*a(n-1))` -/
def P14176559333780965037.Spec : Prop :=
  ∀ n, P14176559333780965037.a n = A097141 n

end A097141

/-! ## A097141.P14807725576810979310

`a(n-1)-a(n-2)-3*a(n-1)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A097141.P14807725576810979310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (n - 1) - a (n - 2) - 3 * a (n - 1)

end

end A097141.P14807725576810979310

namespace A097141

/-- `a(n-1)-a(n-2)-3*a(n-1)` -/
def P14807725576810979310.Spec : Prop :=
  ∀ n, P14807725576810979310.a n = A097141 n

end A097141

/-! ## A097141.P5119705107527593581

`xor(1-n, A165326(n))`
-/

namespace A097141.P5119705107527593581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - (n : ℤ)) (A165326 n)

end

end A097141.P5119705107527593581

namespace A097141

/-- `xor(1-n, A165326(n))` -/
def P5119705107527593581.Spec : Prop :=
  ∀ n, P5119705107527593581.a n = A097141 n

end A097141

/-! ## A097141.P33708598243486600

`A000007(n)-A105811(n)`
-/

namespace A097141.P33708598243486600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A105811 n

end

end A097141.P33708598243486600

namespace A097141

/-- `A000007(n)-A105811(n)` -/
def P33708598243486600.Spec : Prop :=
  ∀ n, P33708598243486600.a n = A097141 n

end A097141

/-! ## A097141.P1020270599434831288

`A033999(n)-A248157(n)`
-/

namespace A097141.P1020270599434831288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A248157 n

end

end A097141.P1020270599434831288

namespace A097141

/-- `A033999(n)-A248157(n)` -/
def P1020270599434831288.Spec : Prop :=
  ∀ n, P1020270599434831288.a n = A097141 n

end A097141

/-! ## A097141.P14086155709707741322

`A267354(n)-A052928(n)`
-/

namespace A097141.P14086155709707741322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n - A052928 n

end

end A097141.P14086155709707741322

namespace A097141

/-- `A267354(n)-A052928(n)` -/
def P14086155709707741322.Spec : Prop :=
  ∀ n, P14086155709707741322.a n = A097141 n

end A097141

/-!
# A097143: a(n) is the least prime greater than a(n-1) such that n is a quadratic residue mod p.

The programs for A097143, there is no canonical definition to state claims against.
-/

/-! ## A097143.P12050888076442516327

`p?[A293754(n+1)+A275891(n+2)]`
-/

namespace A097143.P12050888076442516327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (n + 1) + A275891 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097143.P12050888076442516327

/-! ## A097143.P4851275743314894484

`p?[A014963(A285376(n+1))*A065530(n)]`
-/

namespace A097143.P4851275743314894484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A285376 (n + 1)).toNat * A065530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097143.P4851275743314894484

/-! ## A097143.P17818462434163857829

`record[A014963(A115094(n+6))]`
-/

namespace A097143.P17818462434163857829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A115094 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097143.P17818462434163857829

/-! ## A097143.P5650158323703351869

`record[A020639(A113004(n+6))]`
-/

namespace A097143.P5650158323703351869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A113004 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097143.P5650158323703351869

/-! ## A097143.P8902741215812536972

`record[A014963(A113004(n+7))]`
-/

namespace A097143.P8902741215812536972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A113004 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097143.P8902741215812536972

/-!
# A097145: Total sum of minimum list sizes in all sets of lists of n-set, cf. A000262.

The programs for A097145, there is no canonical definition to state claims against.
-/

/-! ## A097145.P892068169733753144

`A002266(A193236(n))+n`
-/

namespace A097145.P892068169733753144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A193236 n).toNat + (n : ℤ)

end

end A097145.P892068169733753144

/-! ## A097145.P3495335849961470626

`A002264(A058798(n+2)-A001906(n))`
-/

namespace A097145.P3495335849961470626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A058798 (n + 2) - A001906 n).toNat

end

end A097145.P3495335849961470626

/-!
# A097146: Total sum of maximum list sizes in all sets of lists of n-set, cf. A000262.

The programs for A097146, there is no canonical definition to state claims against.
-/

/-! ## A097146.P2555576082220932327

`A087156(A110313(n))-n`
-/

namespace A097146.P2555576082220932327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A110313 n).toNat - (n : ℤ)

end

end A097146.P2555576082220932327

/-! ## A097146.P293211671380721340

`A004151(A110313(n))-A008754(n)`
-/

namespace A097146.P293211671380721340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A110313 n).toNat - A008754 n

end

end A097146.P293211671380721340

/-!
# A097147: Total sum of minimum block sizes in all partitions of n-set.

The programs for A097147, there is no canonical definition to state claims against.
-/

/-! ## A097147.P12774438759026242924

`A319298(∑[n]+1)`
-/

namespace A097147.P12774438759026242924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097147.P12774438759026242924

/-! ## A097147.P15899610784032110332

`record[A319298(n+1)/A007318(n)]`
-/

namespace A097147.P15899610784032110332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319298 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097147.P15899610784032110332

/-! ## A097147.P361636258087744978

`record[A319298(n+1)/A059268(n)]`
-/

namespace A097147.P361636258087744978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319298 (n + 1) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097147.P361636258087744978

/-! ## A097147.P4130265674659955559

`record[A319298(n+1)/A190088(n)]`
-/

namespace A097147.P4130265674659955559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319298 (n + 1) : ℚ) / (A190088 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097147.P4130265674659955559

/-! ## A097147.P8488390608717350185

`record[gcd(A002262(n), A319298(n+1))]`
-/

namespace A097147.P8488390608717350185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A319298 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097147.P8488390608717350185

/-! ## A097147.P15670760363769218656

`record[A319298(n+1)/A286625(n+1)]`
-/

namespace A097147.P15670760363769218656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319298 (n + 1) : ℚ) / (A286625 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097147.P15670760363769218656

/-!
# A097148: Total sum of maximum block sizes in all partitions of n-set.

The programs for A097148, there is no canonical definition to state claims against.
-/

/-! ## A097148.P18446113695010803168

`A319375(∑[n]+1)`
-/

namespace A097148.P18446113695010803168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097148.P18446113695010803168

/-! ## A097148.P16874428615106245062

`record[A319375(n+1)]`
-/

namespace A097148.P16874428615106245062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097148.P16874428615106245062

/-! ## A097148.P12688265445031124113

`or(char[1], A319375(A000124(n)))`
-/

namespace A097148.P12688265445031124113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319375 (A000124 n).toNat)

end

end A097148.P12688265445031124113

/-! ## A097148.P6170973625778633706

`lcm(A087960(n), A319375(A000124(n)))`
-/

namespace A097148.P6170973625778633706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A319375 (A000124 n).toNat)

end

end A097148.P6170973625778633706

/-! ## A097148.P10026430376031097498

`A319375(A000124(n))-A002262(∑[n])`
-/

namespace A097148.P10026430376031097498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000124 n).toNat - A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097148.P10026430376031097498

/-! ## A097148.P223082794809983998

`A009001(4*n)*A319375(A000124(n))`
-/

namespace A097148.P223082794809983998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (4 * n) * A319375 (A000124 n).toNat

end

end A097148.P223082794809983998

/-! ## A097148.P2199678970627106445

`A003557(A000040(n+1))*A319375(A000124(n))`
-/

namespace A097148.P2199678970627106445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000040 (n + 1)).toNat * A319375 (A000124 n).toNat

end

end A097148.P2199678970627106445

/-! ## A097148.P5406155301881520142

`A319375(A000124(n))^A178489(n)`
-/

namespace A097148.P5406155301881520142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319375 (A000124 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A097148.P5406155301881520142

/-!
# A097149: Numbers n such that Galois group of polynomial x^8+n*x^4+1 is E(8) (the group C_2 X C_2 X C_2).

The programs for A097149, there is no canonical definition to state claims against.
-/

/-! ## A097149.P6456879711943142494

`A336867(n+1)²-A020639(4*3^n)`
-/

namespace A097149.P6456879711943142494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336867 (n + 1) ^ 2 - A020639 (4 * 3 ^ n)

end

end A097149.P6456879711943142494

/-! ## A097149.P3164965524932485768

`(lt[and(-(2*n+1), A002183(n+1)), A002024(n+1)]+2)²-2`
-/

namespace A097149.P3164965524932485768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 * n + 1 : ℤ)) (A002183 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2) ^ 2 : ℤ) - 2

end

end A097149.P3164965524932485768

/-! ## A097149.P7107299884502046919

`eq[A002349(n+1), A209615(A205441(n+1))]`
-/

namespace A097149.P7107299884502046919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A205441 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097149.P7107299884502046919

/-! ## A097149.P17186575047930955602

`eq[A010341(n+1), A209615(A205441(n+1))]`
-/

namespace A097149.P17186575047930955602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A205441 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097149.P17186575047930955602

/-! ## A097149.P445544259650300608

`A093995(A357057(3*n+5)+A132111(n))-2`
-/

namespace A097149.P445544259650300608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (A357057 (3 * n + 5) + A132111 n).toNat - 2

end

end A097149.P445544259650300608

/-!
# A097153: Reversal of n minus largest digit of n.

The programs for A097153, there is no canonical definition to state claims against.
-/

/-! ## A097153.P14867202648728581541

`A004086(n+1)-A054055(n+1)`
-/

namespace A097153.P14867202648728581541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1) - A054055 (n + 1)

end

end A097153.P14867202648728581541

/-! ## A097153.P4145999100391693928

`A056964(n+1)-A095815(n+1)`
-/

namespace A097153.P4145999100391693928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 1) - A095815 (n + 1)

end

end A097153.P4145999100391693928

/-! ## A097153.P14785292870452773730

`A004086(n+1)-A004086(A004186(n+1))%10`
-/

namespace A097153.P14785292870452773730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1) - Int.tmod (A004086 (A004186 (n + 1)).toNat) 10

end

end A097153.P14785292870452773730

/-! ## A097153.P12834573277510972312

`A135020(2*(n+1))-A054055(n+1)`
-/

namespace A097153.P12834573277510972312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 1)) - A054055 (n + 1)

end

end A097153.P12834573277510972312

/-! ## A097153.P15425108529379059675

`record[A347689(n)]-A010888(n)`
-/

namespace A097153.P15425108529379059675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A010888 n

end

end A097153.P15425108529379059675

/-!
# A097158: Numbers that set a new record for the number of iterations needed to reach 0 under f(x) = reverse(x) - maxdigit(x).

The programs for A097158, there is no canonical definition to state claims against.
-/

/-! ## A097158.P8619401012325249974

`A097156(record[A097154(n+1)])`
-/

namespace A097158.P8619401012325249974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097156 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097158.P8619401012325249974

/-! ## A097158.P10265755195668381637

`A097156(lt[n-n%10, A003285(n+1)])`
-/

namespace A097158.P10265755195668381637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 10 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097156 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A097158.P10265755195668381637

/-! ## A097158.P15257210712036674095

`A097156(lt[n-∑{digits}[n, #], A003285(n+1)])`
-/

namespace A097158.P15257210712036674095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097156 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A097158.P15257210712036674095

/-!
# A097159: Smallest prime p such that the maximum run length of consecutive positive quadratic residues modulo p is n.

The programs for A097159, there is no canonical definition to state claims against.
-/

/-! ## A097159.P13588489621028861083

`p?[xor(3, A357861(n+1))]`
-/

namespace A097159.P13588489621028861083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A357861 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097159.P13588489621028861083

/-!
# A097160: Greatest prime p such that there are n, but not n+1, consecutive quadratic residues mod p, or -1 if no such prime exists.

The programs for A097160, there is no canonical definition to state claims against.
-/

/-! ## A097160.P1021925284446567093

`A000040(A236912(3*n)+A078222(n+1))`
-/

namespace A097160.P1021925284446567093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A236912 (3 * n) + A078222 (n + 1)).toNat

end

end A097160.P1021925284446567093

/-!
# A097162: a(n) = Sum_{k=0..n} C(floor((n+1)/2),floor((k+1)/2))*2^k.

The programs for A097162, the canonical program `A097162.P5323784844606847333` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097162 has offset 0).

The definition of A097162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097162.P4903344426707805483

`∑[Δ[A097111(n)]/2]`
-/

namespace A097162.P4903344426707805483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097111 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097162.P4903344426707805483

namespace A097162

/-- `∑[Δ[A097111(n)]/2]` -/
def P4903344426707805483.Spec : Prop :=
  ∀ n, P4903344426707805483.a n = (A097162 n : ℚ)

end A097162

/-! ## A097162.P5323784844606847333

`floor(A097111(n+1)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097162

/-- `floor(A097111(n+1)/2)` -/
def P5323784844606847333.Spec : Prop :=
  ∀ n, P5323784844606847333.a n = A097162 n

theorem P5323784844606847333.correct : P5323784844606847333.Spec := by
  intro n
  simp only [A097162]

end A097162

/-! ## A097162.P260174456795434458

`ceil(A110514(A016813(n))+A097111(n+1)/2)`
-/

namespace A097162.P260174456795434458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110514 (A016813 n).toNat : ℚ) + (A097111 (n + 1) : ℚ) / 2⌉

end

end A097162.P260174456795434458

namespace A097162

/-- `ceil(A110514(A016813(n))+A097111(n+1)/2)` -/
def P260174456795434458.Spec : Prop :=
  ∀ n, P260174456795434458.a n = A097162 n

end A097162

/-! ## A097162.P14121244246979731090

`ceil(A008683(A002148(n))+A097111(n+1)/2)`
-/

namespace A097162.P14121244246979731090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A002148 n).toNat : ℚ) + (A097111 (n + 1) : ℚ) / 2⌉

end

end A097162.P14121244246979731090

namespace A097162

/-- `ceil(A008683(A002148(n))+A097111(n+1)/2)` -/
def P14121244246979731090.Spec : Prop :=
  ∀ n, P14121244246979731090.a n = A097162 n

end A097162

/-! ## A097162.P1626568600589478281

`ceil(A008683(A285688(n+1))+A097111(n+1)/2)`
-/

namespace A097162.P1626568600589478281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A285688 (n + 1)).toNat : ℚ) + (A097111 (n + 1) : ℚ) / 2⌉

end

end A097162.P1626568600589478281

namespace A097162

/-- `ceil(A008683(A285688(n+1))+A097111(n+1)/2)` -/
def P1626568600589478281.Spec : Prop :=
  ∀ n, P1626568600589478281.a n = A097162 n

end A097162

/-!
# A097163: Expansion of (1+x-x^2)/((1-x)*(1-4*x^2)).

The programs for A097163, the canonical program `A097163.P15039010162723198516` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097163 has offset 0).

The definition of A097163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-x-4x^2+4x^3))` (program `A097163.P15039010162723198516`, by `A097163.P15039010162723198516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097163.P15039010162723198516

`ogf((1+x-x^2)/(1-x-4x^2+4x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097163

/-- `ogf((1+x-x^2)/(1-x-4x^2+4x^3))` -/
def P15039010162723198516.Spec : Prop :=
  ∀ n, P15039010162723198516.a n = A097163 n

theorem P15039010162723198516.correct : P15039010162723198516.Spec := by
  intro n
  simp only [A097163]

end A097163

/-! ## A097163.P3332303397217748260

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A097163.P3332303397217748260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3)

end

end A097163.P3332303397217748260

namespace A097163

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P3332303397217748260.Spec : Prop :=
  ∀ n, P3332303397217748260.a n = A097163 n

end A097163

/-! ## A097163.P11335616204220644309

`5*2^n/4+(-2)^n/12-1/3`
-/

namespace A097163.P11335616204220644309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℚ) / 4 + ((-2) ^ n : ℚ) / 12 - (1 : ℚ) / 3

end

end A097163.P11335616204220644309

namespace A097163

/-- `5*2^n/4+(-2)^n/12-1/3` -/
def P11335616204220644309.Spec : Prop :=
  ∀ n, P11335616204220644309.a n = (A097163 n : ℚ)

end A097163

/-! ## A097163.P10955939442843954626

`A097164(n+1)/4`
-/

namespace A097163.P10955939442843954626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097164 (n + 1) : ℚ) / 4

end

end A097163.P10955939442843954626

namespace A097163

/-- `A097164(n+1)/4` -/
def P10955939442843954626.Spec : Prop :=
  ∀ n, P10955939442843954626.a n = (A097163 n : ℚ)

end A097163

/-! ## A097163.P6883622653515924887

`or(1, 4*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A097163.P6883622653515924887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 1 (4 * a (n - 2))

end

end A097163.P6883622653515924887

namespace A097163

/-- `or(1, 4*a(n-2))` -/
def P6883622653515924887.Spec : Prop :=
  ∀ n, (P6883622653515924887.a n : ℤ) = A097163 n

end A097163

/-! ## A097163.P8307350826853549621

`xor(1, 4*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A097163.P8307350826853549621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (4 * a (n - 2))

end

end A097163.P8307350826853549621

namespace A097163

/-- `xor(1, 4*a(n-2))` -/
def P8307350826853549621.Spec : Prop :=
  ∀ n, (P8307350826853549621.a n : ℤ) = A097163 n

end A097163

/-! ## A097163.P16312243940315612603

`∑[4*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A097163.P16312243940315612603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097163.P16312243940315612603

namespace A097163

/-- `∑[4*a(n-2)]` -/
def P16312243940315612603.Spec : Prop :=
  ∀ n, (P16312243940315612603.a n : ℤ) = A097163 n

end A097163

/-! ## A097163.P16201111280726185644

`∑[a(n-2)/(1/2)²]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A097163.P16201111280726185644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097163.P16201111280726185644

namespace A097163

/-- `∑[a(n-2)/(1/2)²]` -/
def P16201111280726185644.Spec : Prop :=
  ∀ n, P16201111280726185644.a n = (A097163 n : ℚ)

end A097163

/-! ## A097163.P17227965026012078352

`and(A083329(n), A283323(n))`
-/

namespace A097163.P17227965026012078352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083329 n) (A283323 n)

end

end A097163.P17227965026012078352

namespace A097163

/-- `and(A083329(n), A283323(n))` -/
def P17227965026012078352.Spec : Prop :=
  ∀ n, P17227965026012078352.a n = A097163 n

end A097163

/-! ## A097163.P3006767870002348180

`xor(A000225(n), A277954(n))`
-/

namespace A097163.P3006767870002348180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A277954 n)

end

end A097163.P3006767870002348180

namespace A097163

/-- `xor(A000225(n), A277954(n))` -/
def P3006767870002348180.Spec : Prop :=
  ∀ n, P3006767870002348180.a n = A097163 n

end A097163

/-! ## A097163.P8837390707945108211

`xor(A131577(n), A283323(n))`
-/

namespace A097163.P8837390707945108211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131577 n) (A283323 n)

end

end A097163.P8837390707945108211

namespace A097163

/-- `xor(A131577(n), A283323(n))` -/
def P8837390707945108211.Spec : Prop :=
  ∀ n, P8837390707945108211.a n = A097163 n

end A097163

/-! ## A097163.P7241002821834977170

`∑[A042950(n)-A134683(n)]`
-/

namespace A097163.P7241002821834977170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A134683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097163.P7241002821834977170

namespace A097163

/-- `∑[A042950(n)-A134683(n)]` -/
def P7241002821834977170.Spec : Prop :=
  ∀ n, P7241002821834977170.a n = A097163 n

end A097163

/-! ## A097163.P10973329797644124064

`∑[gcd(A082505(n), A134683(n))]`
-/

namespace A097163.P10973329797644124064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082505 n) (A134683 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097163.P10973329797644124064

namespace A097163

/-- `∑[gcd(A082505(n), A134683(n))]` -/
def P10973329797644124064.Spec : Prop :=
  ∀ n, (P10973329797644124064.a n : ℤ) = A097163 n

end A097163

/-! ## A097163.P12530386533865493893

`xor(∑[A134683(n)], A000225(n))`
-/

namespace A097163.P12530386533865493893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A000225 n)

end

end A097163.P12530386533865493893

namespace A097163

/-- `xor(∑[A134683(n)], A000225(n))` -/
def P12530386533865493893.Spec : Prop :=
  ∀ n, P12530386533865493893.a n = A097163 n

end A097163

/-! ## A097163.P2609125404553638270

`and(A083329(n), A086893(n+1))`
-/

namespace A097163.P2609125404553638270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083329 n) (A086893 (n + 1))

end

end A097163.P2609125404553638270

namespace A097163

/-- `and(A083329(n), A086893(n+1))` -/
def P2609125404553638270.Spec : Prop :=
  ∀ n, P2609125404553638270.a n = A097163 n

end A097163

/-! ## A097163.P3315268152393522009

`and(A086893(n+1), A284354(n))`
-/

namespace A097163.P3315268152393522009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086893 (n + 1)) (A284354 n)

end

end A097163.P3315268152393522009

namespace A097163

/-- `and(A086893(n+1), A284354(n))` -/
def P3315268152393522009.Spec : Prop :=
  ∀ n, P3315268152393522009.a n = A097163 n

end A097163

/-! ## A097163.P8938490130684392296

`xor(A096773(n+1), A213173(n))`
-/

namespace A097163.P8938490130684392296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096773 (n + 1)) (A213173 n)

end

end A097163.P8938490130684392296

namespace A097163

/-- `xor(A096773(n+1), A213173(n))` -/
def P8938490130684392296.Spec : Prop :=
  ∀ n, P8938490130684392296.a n = A097163 n

end A097163

/-! ## A097163.P11267787181972099572

`A319423(A363283(n+1))`
-/

namespace A097163.P11267787181972099572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319423 (A363283 (n + 1)).toNat

end

end A097163.P11267787181972099572

namespace A097163

/-- `A319423(A363283(n+1))` -/
def P11267787181972099572.Spec : Prop :=
  ∀ n, P11267787181972099572.a n = A097163 n

end A097163

/-! ## A097163.P355272535140473348

`and(A267527(n), A283323(n))`
-/

namespace A097163.P355272535140473348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267527 n) (A283323 n)

end

end A097163.P355272535140473348

namespace A097163

/-- `and(A267527(n), A283323(n))` -/
def P355272535140473348.Spec : Prop :=
  ∀ n, P355272535140473348.a n = A097163 n

end A097163

/-! ## A097163.P16969647530577606152

`and(A086893(n+1), A267527(n))`
-/

namespace A097163.P16969647530577606152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086893 (n + 1)) (A267527 n)

end

end A097163.P16969647530577606152

namespace A097163

/-- `and(A086893(n+1), A267527(n))` -/
def P16969647530577606152.Spec : Prop :=
  ∀ n, P16969647530577606152.a n = A097163 n

end A097163

/-!
# A097164: Expansion of (1+3x)/((1-x)(1-4x^2)).

The programs for A097164, the canonical program `A097164.P9867332918464335244` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097164 has offset 0).

The definition of A097164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-x-4x^2+4x^3))` (program `A097164.P9867332918464335244`, by `A097164.P9867332918464335244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097164.P9867332918464335244

`ogf((1+3x)/(1-x-4x^2+4x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097164

/-- `ogf((1+3x)/(1-x-4x^2+4x^3))` -/
def P9867332918464335244.Spec : Prop :=
  ∀ n, P9867332918464335244.a n = A097164 n

theorem P9867332918464335244.correct : P9867332918464335244.Spec := by
  intro n
  simp only [A097164]

end A097164

/-! ## A097164.P3295044697842976598

`4*a(n-2)+4` with `a(0)=1, a(1)=4`
-/

namespace A097164.P3295044697842976598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 2) + 4

end

end A097164.P3295044697842976598

namespace A097164

/-- `4*a(n-2)+4` -/
def P3295044697842976598.Spec : Prop :=
  ∀ n, (P3295044697842976598.a n : ℤ) = A097164 n

end A097164

/-! ## A097164.P6334615735441996731

`5*2^n/2-(-2)^n/6-4/3`
-/

namespace A097164.P6334615735441996731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℚ) / 2 - ((-2) ^ n : ℚ) / 6 - (4 : ℚ) / 3

end

end A097164.P6334615735441996731

namespace A097164

/-- `5*2^n/2-(-2)^n/6-4/3` -/
def P6334615735441996731.Spec : Prop :=
  ∀ n, P6334615735441996731.a n = (A097164 n : ℚ)

end A097164

/-! ## A097164.P8768512257816383258

`∑[4*a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A097164.P8768512257816383258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P8768512257816383258

namespace A097164

/-- `∑[4*a(n-2)]` -/
def P8768512257816383258.Spec : Prop :=
  ∀ n, (P8768512257816383258.a n : ℤ) = A097164 n

end A097164

/-! ## A097164.P3694636837136538637

`∑[∏[4/a(n-1)]]` with `a(0)=1, a(1)=3`
-/

namespace A097164.P3694636837136538637
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  4 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P3694636837136538637

namespace A097164

/-- `∑[∏[4/a(n-1)]]` -/
def P3694636837136538637.Spec : Prop :=
  ∀ n, P3694636837136538637.a n = (A097164 n : ℚ)

end A097164

/-! ## A097164.P17511051015937444817

`lcm(4, a(n-2)+1)` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A097164.P17511051015937444817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  Nat.lcm 4 (a (n - 2) + 1)

end

end A097164.P17511051015937444817

namespace A097164

/-- `lcm(4, a(n-2)+1)` -/
def P17511051015937444817.Spec : Prop :=
  ∀ n, (P17511051015937444817.a n : ℤ) = A097164 n

end A097164

/-! ## A097164.P9393735379595511241

`∑[a(n-2)/(1/2)²]` with `a(0)=1, a(1)=3`
-/

namespace A097164.P9393735379595511241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P9393735379595511241

namespace A097164

/-- `∑[a(n-2)/(1/2)²]` -/
def P9393735379595511241.Spec : Prop :=
  ∀ n, P9393735379595511241.a n = (A097164 n : ℚ)

end A097164

/-! ## A097164.P306915003337637113

`∑[(and(1, n)+2)*2^(n-1)]`
-/

namespace A097164.P306915003337637113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P306915003337637113

namespace A097164

/-- `∑[(and(1, n)+2)*2^(n-1)]` -/
def P306915003337637113.Spec : Prop :=
  ∀ n, P306915003337637113.a n = (A097164 n : ℚ)

end A097164

/-! ## A097164.P4054121592838646097

`(a(n-2)+1)/(1/2)²` with `a(0)=1, a(1)=4`
-/

namespace A097164.P4054121592838646097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 2) + 1) / ((1 : ℚ) / 2) ^ 2

end

end A097164.P4054121592838646097

namespace A097164

/-- `(a(n-2)+1)/(1/2)²` -/
def P4054121592838646097.Spec : Prop :=
  ∀ n, P4054121592838646097.a n = (A097164 n : ℚ)

end A097164

/-! ## A097164.P2696568145807612312

`∑[A084221(n)]`
-/

namespace A097164.P2696568145807612312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P2696568145807612312

namespace A097164

/-- `∑[A084221(n)]` -/
def P2696568145807612312.Spec : Prop :=
  ∀ n, P2696568145807612312.a n = A097164 n

end A097164

/-! ## A097164.P15122713649723006256

`∑[A137344(n)/3]`
-/

namespace A097164.P15122713649723006256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137344 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P15122713649723006256

namespace A097164

/-- `∑[A137344(n)/3]` -/
def P15122713649723006256.Spec : Prop :=
  ∀ n, P15122713649723006256.a n = (A097164 n : ℚ)

end A097164

/-! ## A097164.P16924833849095234405

`∑[record[Δ[A137399(n)]]]`
-/

namespace A097164.P16924833849095234405
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P16924833849095234405

namespace A097164

/-- `∑[record[Δ[A137399(n)]]]` -/
def P16924833849095234405.Spec : Prop :=
  ∀ n, P16924833849095234405.a n = A097164 n

end A097164

/-! ## A097164.P5838594660070806656

`∑[record[A137824(n+1)]]`
-/

namespace A097164.P5838594660070806656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P5838594660070806656

namespace A097164

/-- `∑[record[A137824(n+1)]]` -/
def P5838594660070806656.Spec : Prop :=
  ∀ n, P5838594660070806656.a n = A097164 n

end A097164

/-! ## A097164.P15879415685417791029

`∑[A122756(n+1)/2]`
-/

namespace A097164.P15879415685417791029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122756 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097164.P15879415685417791029

namespace A097164

/-- `∑[A122756(n+1)/2]` -/
def P15879415685417791029.Spec : Prop :=
  ∀ n, P15879415685417791029.a n = (A097164 n : ℚ)

end A097164

/-! ## A097164.P17609942774634539988

`xor(A080924(n), A168642(n))`
-/

namespace A097164.P17609942774634539988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080924 n) (A168642 n)

end

end A097164.P17609942774634539988

namespace A097164

/-- `xor(A080924(n), A168642(n))` -/
def P17609942774634539988.Spec : Prop :=
  ∀ n, P17609942774634539988.a n = A097164 n

end A097164

/-! ## A097164.P5949733566828219966

`∪[A083597(n), A155721(n+1)]`
-/

namespace A097164.P5949733566828219966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097164.P5949733566828219966

namespace A097164

/-- `∪[A083597(n), A155721(n+1)]` -/
def P5949733566828219966.Spec : Prop :=
  ∀ n, (P5949733566828219966.a n : ℤ) = A097164 n

end A097164

/-!
# A097165: Expansion of (1-3x)/((1-x)(1-4x)(1-5x)).

The programs for A097165, the canonical program `A097165.P3634199815882582685` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097165 has offset 0).

The definition of A097165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-10x+29x^2-20x^3))` (program `A097165.P3634199815882582685`, by `A097165.P3634199815882582685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097165.P3634199815882582685

`ogf((1-3x)/(1-10x+29x^2-20x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097165

/-- `ogf((1-3x)/(1-10x+29x^2-20x^3))` -/
def P3634199815882582685.Spec : Prop :=
  ∀ n, P3634199815882582685.a n = A097165 n

theorem P3634199815882582685.correct : P3634199815882582685.Spec := by
  intro n
  simp only [A097165]

end A097165

/-! ## A097165.P8907098077541721474

`5*5^n/2-4*4^n/3-1/6`
-/

namespace A097165.P8907098077541721474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 5 ^ n : ℚ) / 2 - (4 * 4 ^ n : ℚ) / 3 - (1 : ℚ) / 6

end

end A097165.P8907098077541721474

namespace A097165

/-- `5*5^n/2-4*4^n/3-1/6` -/
def P8907098077541721474.Spec : Prop :=
  ∀ n, P8907098077541721474.a n = (A097165 n : ℚ)

end A097165

/-! ## A097165.P3670960887383416121

`ceil((5^n+8*a(n-1))/2)` with `a(0)=1`
-/

namespace A097165.P3670960887383416121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((5 ^ n : ℤ) + 8 * a (n - 1) : ℚ) / 2⌉

end

end A097165.P3670960887383416121

namespace A097165

/-- `ceil((5^n+8*a(n-1))/2)` -/
def P3670960887383416121.Spec : Prop :=
  ∀ n, P3670960887383416121.a n = A097165 n

end A097165

/-! ## A097165.P15393906151136485464

`round((5^n+8*a(n-1))/2)` with `a(0)=1`
-/

namespace A097165.P15393906151136485464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((5 ^ n : ℤ) + 8 * a (n - 1) : ℚ) / 2)

end

end A097165.P15393906151136485464

namespace A097165

/-- `round((5^n+8*a(n-1))/2)` -/
def P15393906151136485464.Spec : Prop :=
  ∀ n, P15393906151136485464.a n = A097165 n

end A097165

/-! ## A097165.P7480041606549629097

`(5^n+8*a(n-1)+1)/2` with `a(0)=1`
-/

namespace A097165.P7480041606549629097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((5 ^ n : ℚ) + 8 * a (n - 1) + 1) / 2

end

end A097165.P7480041606549629097

namespace A097165

/-- `(5^n+8*a(n-1)+1)/2` -/
def P7480041606549629097.Spec : Prop :=
  ∀ n, P7480041606549629097.a n = (A097165 n : ℚ)

end A097165

/-! ## A097165.P12010012672524615370

`∑[A085351(n)]`
-/

namespace A097165.P12010012672524615370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097165.P12010012672524615370

namespace A097165

/-- `∑[A085351(n)]` -/
def P12010012672524615370.Spec : Prop :=
  ∀ n, P12010012672524615370.a n = A097165 n

end A097165

/-! ## A097165.P14953403821320009522

`A097162(Δ[n²])/3`
-/

namespace A097165.P14953403821320009522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A097165.P14953403821320009522

namespace A097165

/-- `A097162(Δ[n²])/3` -/
def P14953403821320009522.Spec : Prop :=
  ∀ n, P14953403821320009522.a n = (A097165 n : ℚ)

end A097165

/-!
# A097166: Expansion of g.f. (1+2*x)/((1-x)*(1-10*x)).

The programs for A097166, the canonical program `A097166.P5005728686269694733` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097166 has offset 0).

The definition of A097166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-11x+10x^2))` (program `A097166.P5005728686269694733`, by `A097166.P5005728686269694733.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097166.P5005728686269694733

`ogf((1+2x)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097166

/-- `ogf((1+2x)/(1-11x+10x^2))` -/
def P5005728686269694733.Spec : Prop :=
  ∀ n, P5005728686269694733.a n = A097166 n

theorem P5005728686269694733.correct : P5005728686269694733.Spec := by
  intro n
  simp only [A097166]

end A097166

/-! ## A097166.P8353441732645686143

`(4*10^n-1)/3`
-/

namespace A097166.P8353441732645686143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 10 ^ n : ℤ) - 1 : ℚ) / 3

end

end A097166.P8353441732645686143

namespace A097166

/-- `(4*10^n-1)/3` -/
def P8353441732645686143.Spec : Prop :=
  ∀ n, P8353441732645686143.a n = (A097166 n : ℚ)

end A097166

/-! ## A097166.P12807948385939644979

`10*a(n-1)+3` with `a(0)=1`
-/

namespace A097166.P12807948385939644979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 3

end

end A097166.P12807948385939644979

namespace A097166

/-- `10*a(n-1)+3` -/
def P12807948385939644979.Spec : Prop :=
  ∀ n, (P12807948385939644979.a n : ℤ) = A097166 n

end A097166

/-! ## A097166.P748557724875653347

`A097169(2*n)`
-/

namespace A097166.P748557724875653347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097169 (2 * n)

end

end A097166.P748557724875653347

namespace A097166

/-- `A097169(2*n)` -/
def P748557724875653347.Spec : Prop :=
  ∀ n, P748557724875653347.a n = A097166 n

end A097166

/-! ## A097166.P5108059091280831803

`lcm(10, a(n-1))+3` with `a(0)=1`
-/

namespace A097166.P5108059091280831803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 10 (a (n - 1)) + 3

end

end A097166.P5108059091280831803

namespace A097166

/-- `lcm(10, a(n-1))+3` -/
def P5108059091280831803.Spec : Prop :=
  ∀ n, (P5108059091280831803.a n : ℤ) = A097166 n

end A097166

/-! ## A097166.P15949888097533790072

`xor(7, 10*a(n-1))` with `a(0)=1`
-/

namespace A097166.P15949888097533790072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 7 (10 * a (n - 1))

end

end A097166.P15949888097533790072

namespace A097166

/-- `xor(7, 10*a(n-1))` -/
def P15949888097533790072.Spec : Prop :=
  ∀ n, (P15949888097533790072.a n : ℤ) = A097166 n

end A097166

/-! ## A097166.P3274398839829339935

`∑[10*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A097166.P3274398839829339935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097166.P3274398839829339935

namespace A097166

/-- `∑[10*a(n-1)]` -/
def P3274398839829339935.Spec : Prop :=
  ∀ n, (P3274398839829339935.a n : ℤ) = A097166 n

end A097166

/-! ## A097166.P7462335884477779785

`5-2*(1-5*a(n-1))` with `a(0)=1`
-/

namespace A097166.P7462335884477779785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - 2 * (1 - 5 * a (n - 1))

end

end A097166.P7462335884477779785

namespace A097166

/-- `5-2*(1-5*a(n-1))` -/
def P7462335884477779785.Spec : Prop :=
  ∀ n, P7462335884477779785.a n = A097166 n

end A097166

/-! ## A097166.P9631813160559356164

`A073553(n+1)-1`
-/

namespace A097166.P9631813160559356164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073553 (n + 1) - 1

end

end A097166.P9631813160559356164

namespace A097166

/-- `A073553(n+1)-1` -/
def P9631813160559356164.Spec : Prop :=
  ∀ n, P9631813160559356164.a n = A097166 n

end A097166

/-! ## A097166.P689773100909518162

`2*A002280(n)+1`
-/

namespace A097166.P689773100909518162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002280 n + 1

end

end A097166.P689773100909518162

namespace A097166

/-- `2*A002280(n)+1` -/
def P689773100909518162.Spec : Prop :=
  ∀ n, P689773100909518162.a n = A097166 n

end A097166

/-! ## A097166.P15130361899270951335

`3*A002278(n)+1`
-/

namespace A097166.P15130361899270951335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002278 n + 1

end

end A097166.P15130361899270951335

namespace A097166

/-- `3*A002278(n)+1` -/
def P15130361899270951335.Spec : Prop :=
  ∀ n, P15130361899270951335.a n = A097166 n

end A097166

/-! ## A097166.P15023929952700329596

`A133201(3*n+1)`
-/

namespace A097166.P15023929952700329596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (3 * n + 1)

end

end A097166.P15023929952700329596

namespace A097166

/-- `A133201(3*n+1)` -/
def P15023929952700329596.Spec : Prop :=
  ∀ n, P15023929952700329596.a n = A097166 n

end A097166

/-! ## A097166.P15472025210011328199

`4*A002277(n)+1`
-/

namespace A097166.P15472025210011328199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002277 n + 1

end

end A097166.P15472025210011328199

namespace A097166

/-- `4*A002277(n)+1` -/
def P15472025210011328199.Spec : Prop :=
  ∀ n, P15472025210011328199.a n = A097166 n

end A097166

/-! ## A097166.P1431653794226953526

`A086575(n)/3+1`
-/

namespace A097166.P1431653794226953526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086575 n : ℚ) / 3 + 1

end

end A097166.P1431653794226953526

namespace A097166

/-- `A086575(n)/3+1` -/
def P1431653794226953526.Spec : Prop :=
  ∀ n, P1431653794226953526.a n = (A097166 n : ℚ)

end A097166

/-! ## A097166.P2687672179861488089

`3*A093140(n)-2`
-/

namespace A097166.P2687672179861488089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A093140 n - 2

end

end A097166.P2687672179861488089

namespace A097166

/-- `3*A093140(n)-2` -/
def P2687672179861488089.Spec : Prop :=
  ∀ n, P2687672179861488089.a n = A097166 n

end A097166

/-! ## A097166.P7866285563020141586

`6*A002276(n)+1`
-/

namespace A097166.P7866285563020141586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002276 n + 1

end

end A097166.P7866285563020141586

namespace A097166

/-- `6*A002276(n)+1` -/
def P7866285563020141586.Spec : Prop :=
  ∀ n, P7866285563020141586.a n = A097166 n

end A097166

/-! ## A097166.P938024916927290727

`4*A093137(n)-3`
-/

namespace A097166.P938024916927290727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A093137 n - 3

end

end A097166.P938024916927290727

namespace A097166

/-- `4*A093137(n)-3` -/
def P938024916927290727.Spec : Prop :=
  ∀ n, P938024916927290727.a n = A097166 n

end A097166

/-! ## A097166.P15529178372621010110

`4*A323639(n)+5`
-/

namespace A097166.P15529178372621010110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A323639 n + 5

end

end A097166.P15529178372621010110

namespace A097166

/-- `4*A323639(n)+5` -/
def P15529178372621010110.Spec : Prop :=
  ∀ n, P15529178372621010110.a n = A097166 n

end A097166

/-! ## A097166.P10923747617415192823

`or(1, A073556(n+1))`
-/

namespace A097166.P10923747617415192823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073556 (n + 1))

end

end A097166.P10923747617415192823

namespace A097166

/-- `or(1, A073556(n+1))` -/
def P10923747617415192823.Spec : Prop :=
  ∀ n, P10923747617415192823.a n = A097166 n

end A097166

/-! ## A097166.P1484327364222974600

`A246057(n)-A002277(n)`
-/

namespace A097166.P1484327364222974600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 n - A002277 n

end

end A097166.P1484327364222974600

namespace A097166

/-- `A246057(n)-A002277(n)` -/
def P1484327364222974600.Spec : Prop :=
  ∀ n, P1484327364222974600.a n = A097166 n

end A097166

/-!
# A097167: a(n) = 3*10^n - 2*9^n.

The programs for A097167, the canonical program `A097167.P350527385376146642` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097167 has offset 0).

The definition of A097167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*10^n-2*9^n` (program `A097167.P350527385376146642`, by `A097167.P350527385376146642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097167.P350527385376146642

`3*10^n-2*9^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097167

/-- `3*10^n-2*9^n` -/
def P350527385376146642.Spec : Prop :=
  ∀ n, P350527385376146642.a n = A097167 n

theorem P350527385376146642.correct : P350527385376146642.Spec := by
  intro n
  simp only [A097167]

end A097167

/-! ## A097167.P4105574495098413285

`Δ[A002277(n)-A054879(n)]`
-/

namespace A097167.P4105574495098413285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n - A054879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097167.P4105574495098413285

namespace A097167

/-- `Δ[A002277(n)-A054879(n)]` -/
def P4105574495098413285.Spec : Prop :=
  ∀ n, P4105574495098413285.a n = A097167 n

end A097167

/-! ## A097167.P460072198100411682

`Δ[A093137(n)-A054879(n)]`
-/

namespace A097167.P460072198100411682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n - A054879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097167.P460072198100411682

namespace A097167

/-- `Δ[A093137(n)-A054879(n)]` -/
def P460072198100411682.Spec : Prop :=
  ∀ n, P460072198100411682.a n = A097167 n

end A097167

/-! ## A097167.P18404676061210618074

`Δ[A002277(n)-A125857(n+1)]`
-/

namespace A097167.P18404676061210618074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n - A125857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097167.P18404676061210618074

namespace A097167

/-- `Δ[A002277(n)-A125857(n+1)]` -/
def P18404676061210618074.Spec : Prop :=
  ∀ n, P18404676061210618074.a n = A097167 n

end A097167

/-! ## A097167.P2597516299816382412

`or(A199683(n)-A199559(n), A000007(n))`
-/

namespace A097167.P2597516299816382412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A199683 n - A199559 n) (A000007 n)

end

end A097167.P2597516299816382412

namespace A097167

/-- `or(A199683(n)-A199559(n), A000007(n))` -/
def P2597516299816382412.Spec : Prop :=
  ∀ n, P2597516299816382412.a n = A097167 n

end A097167

/-!
# A097168: Expansion of (1-7x)/((1-x)(1-9x)(1-10x)).

The programs for A097168, the canonical program `A097168.P11286535539658543169` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097168 has offset 0).

The definition of A097168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x)/(1-20x+109x^2-90x^3))` (program `A097168.P11286535539658543169`, by `A097168.P11286535539658543169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097168.P11286535539658543169

`ogf((1-7x)/(1-20x+109x^2-90x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097168

/-- `ogf((1-7x)/(1-20x+109x^2-90x^3))` -/
def P11286535539658543169.Spec : Prop :=
  ∀ n, P11286535539658543169.a n = A097168 n

theorem P11286535539658543169.correct : P11286535539658543169.Spec := by
  intro n
  simp only [A097168]

end A097168

/-! ## A097168.P17963278707212220089

`10*10^n/3-9*9^n/4-1/12`
-/

namespace A097168.P17963278707212220089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * 10 ^ n : ℚ) / 3 - (9 * 9 ^ n : ℚ) / 4 - (1 : ℚ) / 12

end

end A097168.P17963278707212220089

namespace A097168

/-- `10*10^n/3-9*9^n/4-1/12` -/
def P17963278707212220089.Spec : Prop :=
  ∀ n, P17963278707212220089.a n = (A097168 n : ℚ)

end A097168

/-! ## A097168.P15750480609828879574

`A097169(2*n+1)/4`
-/

namespace A097168.P15750480609828879574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097169 (2 * n + 1) : ℚ) / 4

end

end A097168.P15750480609828879574

namespace A097168

/-- `A097169(2*n+1)/4` -/
def P15750480609828879574.Spec : Prop :=
  ∀ n, P15750480609828879574.a n = (A097168 n : ℚ)

end A097168

/-! ## A097168.P1855569875573406853

`∑[A097167(n)]`
-/

namespace A097168.P1855569875573406853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097168.P1855569875573406853

namespace A097168

/-- `∑[A097167(n)]` -/
def P1855569875573406853.Spec : Prop :=
  ∀ n, P1855569875573406853.a n = A097168 n

end A097168

/-! ## A097168.P11338737361081789996

`∑[A199683(n)-A199559(n)]`
-/

namespace A097168.P11338737361081789996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199683 n - A199559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097168.P11338737361081789996

namespace A097168

/-- `∑[A199683(n)-A199559(n)]` -/
def P11338737361081789996.Spec : Prop :=
  ∀ n, P11338737361081789996.a n = A097168 n

end A097168

/-! ## A097168.P16500816965350323323

`∑[A011557(n)+2*A016189(n)]`
-/

namespace A097168.P16500816965350323323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + 2 * A016189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097168.P16500816965350323323

namespace A097168

/-- `∑[A011557(n)+2*A016189(n)]` -/
def P16500816965350323323.Spec : Prop :=
  ∀ n, P16500816965350323323.a n = A097168 n

end A097168

/-! ## A097168.P8847833932985930374

`Δ[∑[A002277(n)-A054879(n)]+n]`
-/

namespace A097168.P8847833932985930374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n - A054879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097168.P8847833932985930374

namespace A097168

/-- `Δ[∑[A002277(n)-A054879(n)]+n]` -/
def P8847833932985930374.Spec : Prop :=
  ∀ n, P8847833932985930374.a n = A097168 n

end A097168

/-!
# A097169: a(n) = Sum_{k=0..n} C(floor((n+1)/2),floor((k+1)/2)) * 3^k.

The programs for A097169, the canonical program `A097169.P687782842927647740` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097169 has offset 0).

The definition of A097169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097169.P687782842927647740

`a(n-1)+19*a(n-2)-19*a(n-3)-90*a(n-4)+90*a(n-5)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=52, a(4)=133`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097169

/-- `a(n-1)+19*a(n-2)-19*a(n-3)-90*a(n-4)+90*a(n-5)` -/
def P687782842927647740.Spec : Prop :=
  ∀ n, P687782842927647740.a n = A097169 n

theorem P687782842927647740.correct : P687782842927647740.Spec := by
  intro n
  simp only [A097169]

end A097169

/-! ## A097169.P13558914881631052769

`∑[Δ[A097112(n)]/3]`
-/

namespace A097169.P13558914881631052769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097112 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097169.P13558914881631052769

namespace A097169

/-- `∑[Δ[A097112(n)]/3]` -/
def P13558914881631052769.Spec : Prop :=
  ∀ n, P13558914881631052769.a n = (A097169 n : ℚ)

end A097169

/-! ## A097169.P5364489531351379651

`floor(A097112(n+1)/3)`
-/

namespace A097169.P5364489531351379651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097112 (n + 1) : ℚ) / 3⌋

end

end A097169.P5364489531351379651

namespace A097169

/-- `floor(A097112(n+1)/3)` -/
def P5364489531351379651.Spec : Prop :=
  ∀ n, P5364489531351379651.a n = A097169 n

end A097169

/-! ## A097169.P4944128349004633874

`or(round(A097112(n+1)/3), A000007(n))`
-/

namespace A097169.P4944128349004633874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A097112 (n + 1) : ℚ) / 3)) (A000007 n)

end

end A097169.P4944128349004633874

namespace A097169

/-- `or(round(A097112(n+1)/3), A000007(n))` -/
def P4944128349004633874.Spec : Prop :=
  ∀ n, P4944128349004633874.a n = A097169 n

end A097169

/-! ## A097169.P3507740775031488541

`lcm((A097112(n+1)-1)/3, A000034(n))`
-/

namespace A097169.P3507740775031488541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A097112 (n + 1) - 1 : ℚ) / 3)) (A000034 n)

end

end A097169.P3507740775031488541

namespace A097169

/-- `lcm((A097112(n+1)-1)/3, A000034(n))` -/
def P3507740775031488541.Spec : Prop :=
  ∀ n, (P3507740775031488541.a n : ℤ) = A097169 n

end A097169

/-! ## A097169.P17473813970791938945

`Δ[A005811(n)]²*round(A097112(n+1)/3)`
-/

namespace A097169.P17473813970791938945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * SequenceMachineLib.roundAway ((A097112 (n + 1) : ℚ) / 3)

end

end A097169.P17473813970791938945

namespace A097169

/-- `Δ[A005811(n)]²*round(A097112(n+1)/3)` -/
def P17473813970791938945.Spec : Prop :=
  ∀ n, P17473813970791938945.a n = A097169 n

end A097169

/-! ## A097169.P9267557823373530176

`round(A097112(n+1)/3)+val(n+1, A000217(n+7))`
-/

namespace A097169.P9267557823373530176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A097112 (n + 1) : ℚ) / 3) + (SequenceMachineLib.valuation (n + 1) (A000217 (n + 7)).toNat : ℤ)

end

end A097169.P9267557823373530176

namespace A097169

/-- `round(A097112(n+1)/3)+val(n+1, A000217(n+7))` -/
def P9267557823373530176.Spec : Prop :=
  ∀ n, P9267557823373530176.a n = A097169 n

end A097169

/-! ## A097169.P4470851286649479149

`round(A097112(n+1)/3)%A000051(n)²`
-/

namespace A097169.P4470851286649479149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A097112 (n + 1) : ℚ) / 3)) (A000051 n ^ 2)

end

end A097169.P4470851286649479149

namespace A097169

/-- `round(A097112(n+1)/3)%A000051(n)²` -/
def P4470851286649479149.Spec : Prop :=
  ∀ n, P4470851286649479149.a n = A097169 n

end A097169

/-!
# A097170: Total number of minimal vertex covers among labeled trees on n nodes.

The programs for A097170, there is no canonical definition to state claims against.
-/

/-! ## A097170.P13260822961701516501

`A065815(a(n-2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A097170.P13260822961701516501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A065815 (a (n - 2) + 1).toNat

end

end A097170.P13260822961701516501

/-!
# A097171: Number of maximal matchings among labeled trees on n nodes.

The programs for A097171, there is no canonical definition to state claims against.
-/

/-! ## A097171.P16540428962372158305

`xor(3, A098376(n!))`
-/

namespace A097171.P16540428962372158305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A098376 (Nat.factorial n))

end

end A097171.P16540428962372158305

/-!
# A097173: Total number of green nodes among tricolored labeled trees on n nodes.

The programs for A097173, there is no canonical definition to state claims against.
-/

/-! ## A097173.P12318396105316551172

`A355639(A355631(2*n+1))*A355671(n+1)`
-/

namespace A097173.P12318396105316551172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355639 (A355631 (2 * n + 1)).toNat * A355671 (n + 1)

end

end A097173.P12318396105316551172

/-!
# A097174: Total number of red nodes among tricolored labeled trees on n nodes.

The programs for A097174, there is no canonical definition to state claims against.
-/

/-! ## A097174.P10022535952464283950

`(n+1)*A356785(n)`
-/

namespace A097174.P10022535952464283950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A356785 n

end

end A097174.P10022535952464283950

/-! ## A097174.P1551771753732888177

`lcm(A028310(n+1), A356785(n))`
-/

namespace A097174.P1551771753732888177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (n + 1)) (A356785 n)

end

end A097174.P1551771753732888177

/-! ## A097174.P12225145330328387207

`lcm(A000005(A000079(n)), A356785(n))`
-/

namespace A097174.P12225145330328387207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A000079 n).toNat) (A356785 n)

end

end A097174.P12225145330328387207

/-!
# A097175: a(n) = Sum_{k=0..n} binomial(floor((n+1)/2), floor((k+1)/2)) * 4^k.

The programs for A097175, the canonical program `A097175.P1414579884447381430` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097175 has offset 0).

The definition of A097175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097175.P1414579884447381430

`a(n-1)+33*a(n-2)-33*a(n-3)-272*a(n-4)+272*a(n-5)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=105, a(4)=361`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097175

/-- `a(n-1)+33*a(n-2)-33*a(n-3)-272*a(n-4)+272*a(n-5)` -/
def P1414579884447381430.Spec : Prop :=
  ∀ n, P1414579884447381430.a n = A097175 n

theorem P1414579884447381430.correct : P1414579884447381430.Spec := by
  intro n
  simp only [A097175]

end A097175

/-! ## A097175.P7164180097665234931

`∑[Δ[A097113(n)]/4]`
-/

namespace A097175.P7164180097665234931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097113 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097175.P7164180097665234931

namespace A097175

/-- `∑[Δ[A097113(n)]/4]` -/
def P7164180097665234931.Spec : Prop :=
  ∀ n, P7164180097665234931.a n = (A097175 n : ℚ)

end A097175

/-! ## A097175.P9183286750090194721

`floor(A097113(n+1)/4)`
-/

namespace A097175.P9183286750090194721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097113 (n + 1) : ℚ) / 4⌋

end

end A097175.P9183286750090194721

namespace A097175

/-- `floor(A097113(n+1)/4)` -/
def P9183286750090194721.Spec : Prop :=
  ∀ n, P9183286750090194721.a n = A097175 n

end A097175

/-! ## A097175.P9659389386064000413

`A034947(n+1)²*round(A097113(n+1)/4)`
-/

namespace A097175.P9659389386064000413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 * SequenceMachineLib.roundAway ((A097113 (n + 1) : ℚ) / 4)

end

end A097175.P9659389386064000413

namespace A097175

/-- `A034947(n+1)²*round(A097113(n+1)/4)` -/
def P9659389386064000413.Spec : Prop :=
  ∀ n, P9659389386064000413.a n = A097175 n

end A097175

/-! ## A097175.P15552210939325796634

`round(A097113(n+1)/4)^A282655(C(2, n+2))`
-/

namespace A097175.P15552210939325796634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A097113 (n + 1) : ℚ) / 4) : ℚ) ^ (A282655 (Nat.choose 2 (n + 2)) : ℤ)

end

end A097175.P15552210939325796634

namespace A097175

/-- `round(A097113(n+1)/4)^A282655(C(2, n+2))` -/
def P15552210939325796634.Spec : Prop :=
  ∀ n, P15552210939325796634.a n = (A097175 n : ℚ)

end A097175

/-! ## A097175.P6350364675676142173

`A000108(gcd(n, n+1))*round(A097113(n+1)/4)`
-/

namespace A097175.P6350364675676142173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * SequenceMachineLib.roundAway ((A097113 (n + 1) : ℚ) / 4)

end

end A097175.P6350364675676142173

namespace A097175

/-- `A000108(gcd(n, n+1))*round(A097113(n+1)/4)` -/
def P6350364675676142173.Spec : Prop :=
  ∀ n, P6350364675676142173.a n = A097175 n

end A097175

/-! ## A097175.P8929786914399995378

`round(A097113(n+1)/4)%A026675(n+3)`
-/

namespace A097175.P8929786914399995378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A097113 (n + 1) : ℚ) / 4)) (A026675 (n + 3))

end

end A097175.P8929786914399995378

namespace A097175

/-- `round(A097113(n+1)/4)%A026675(n+3)` -/
def P8929786914399995378.Spec : Prop :=
  ∀ n, P8929786914399995378.a n = A097175 n

end A097175

/-! ## A097175.P16714097548961079006

`round(A097113(n+1)/4)*A304042(∑[n+1])`
-/

namespace A097175.P16714097548961079006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A097113 (n + 1) : ℚ) / 4) * A304042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097175.P16714097548961079006

namespace A097175

/-- `round(A097113(n+1)/4)*A304042(∑[n+1])` -/
def P16714097548961079006.Spec : Prop :=
  ∀ n, P16714097548961079006.a n = A097175 n

end A097175

/-! ## A097175.P13764965436532574135

`A007318(∑[n])*round(A097113(n+1)/4)`
-/

namespace A097175.P13764965436532574135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A097113 (n + 1) : ℚ) / 4)

end

end A097175.P13764965436532574135

namespace A097175

/-- `A007318(∑[n])*round(A097113(n+1)/4)` -/
def P13764965436532574135.Spec : Prop :=
  ∀ n, P13764965436532574135.a n = A097175 n

end A097175

/-!
# A097176: a(n) = Sum_{k=0..n} binomial(floor((n+1)/2), floor((k+1)/2)) * 5^k.

The programs for A097176, the canonical program `A097176.P10942113172079503250` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097176 has offset 0).

The definition of A097176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097176.P10942113172079503250

`a(n-1)+51*a(n-2)-51*a(n-3)-650*a(n-4)+650*a(n-5)` with `a(0)=1, a(1)=6, a(2)=31, a(3)=186, a(4)=811`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097176

/-- `a(n-1)+51*a(n-2)-51*a(n-3)-650*a(n-4)+650*a(n-5)` -/
def P10942113172079503250.Spec : Prop :=
  ∀ n, P10942113172079503250.a n = A097176 n

theorem P10942113172079503250.correct : P10942113172079503250.Spec := by
  intro n
  simp only [A097176]

end A097176

/-! ## A097176.P5371355641897047754

`A020655(A097175(n))`
-/

namespace A097176.P5371355641897047754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A097175 n).toNat

end

end A097176.P5371355641897047754

namespace A097176

/-- `A020655(A097175(n))` -/
def P5371355641897047754.Spec : Prop :=
  ∀ n, P5371355641897047754.a n = A097176 n

end A097176

/-! ## A097176.P9654021333127571703

`A020655(∑[Δ[A097113(n)]/4])`
-/

namespace A097176.P9654021333127571703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097113 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A097176.P9654021333127571703

namespace A097176

/-- `A020655(∑[Δ[A097113(n)]/4])` -/
def P9654021333127571703.Spec : Prop :=
  ∀ n, P9654021333127571703.a n = A097176 n

end A097176

/-!
# A097177: a(n) = Sum_{k=0..n} binomial(floor((n+1)/2), floor((k+1)/2)) * 10^k.

The programs for A097177, the canonical program `A097177.P14289312361314565756` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097177 has offset 0).

The definition of A097177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097177.P14289312361314565756

`∑[A097178(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097177

/-- `∑[A097178(n)]` -/
def P14289312361314565756.Spec : Prop :=
  ∀ n, P14289312361314565756.a n = A097177 n

theorem P14289312361314565756.correct : P14289312361314565756.Spec := by
  intro n
  simp only [A097177]

end A097177

/-! ## A097177.P5806427613095525663

`∑[Δ[A097115(n)]/10]`
-/

namespace A097177.P5806427613095525663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097115 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097177.P5806427613095525663

namespace A097177

/-- `∑[Δ[A097115(n)]/10]` -/
def P5806427613095525663.Spec : Prop :=
  ∀ n, P5806427613095525663.a n = (A097177 n : ℚ)

end A097177

/-! ## A097177.P7179503223142369465

`floor(A097115(n+1)/10)`
-/

namespace A097177.P7179503223142369465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097115 (n + 1) : ℚ) / 10⌋

end

end A097177.P7179503223142369465

namespace A097177

/-- `floor(A097115(n+1)/10)` -/
def P7179503223142369465.Spec : Prop :=
  ∀ n, P7179503223142369465.a n = A097177 n

end A097177

/-! ## A097177.P9355611129522664185

`a(n-1)+Δ[A097115(n)/10]*A054977(n)` with `a(0)=1`
-/

namespace A097177.P9355611129522664185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097115 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n) * (A054977 n : ℚ)

end

end A097177.P9355611129522664185

namespace A097177

/-- `a(n-1)+Δ[A097115(n)/10]*A054977(n)` -/
def P9355611129522664185.Spec : Prop :=
  ∀ n, P9355611129522664185.a n = (A097177 n : ℚ)

end A097177

/-! ## A097177.P14079008565059796252

`∑{d}[A000079(n), A097178(log2(#))]`
-/

namespace A097177.P14079008565059796252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A097178 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A097177.P14079008565059796252

namespace A097177

/-- `∑{d}[A000079(n), A097178(log2(#))]` -/
def P14079008565059796252.Spec : Prop :=
  ∀ n, P14079008565059796252.a n = A097177 n

end A097177

/-!
# A097178: Expansion of (1+10*x-101*x^2-900*x^3)/((1-100*x^2)*(1-101*x^2)).

The programs for A097178, the canonical program `A097178.P6607177709153915228` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097178 has offset 0).

The definition of A097178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097178.P6607177709153915228

`55/sqrt(101)*(sqrt(101)^n-(-sqrt(101))^n)+10^n*(11*(-1)^n-9)/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097178

/-- `55/sqrt(101)*(sqrt(101)^n-(-sqrt(101))^n)+10^n*(11*(-1)^n-9)/2` -/
def P6607177709153915228.Spec : Prop :=
  ∀ n, P6607177709153915228.a n = (A097178 n : ℝ)

end A097178

/-! ## A097178.P10506034152571881151

`Δ[A097115(n)/10]`
-/

namespace A097178.P10506034152571881151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097115 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097178.P10506034152571881151

namespace A097178

/-- `Δ[A097115(n)/10]` -/
def P10506034152571881151.Spec : Prop :=
  ∀ n, P10506034152571881151.a n = (A097178 n : ℚ)

end A097178

/-! ## A097178.P8626109460399020496

`Δ[A007932(A097112(n))/10]`
-/

namespace A097178.P8626109460399020496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007932 (A097112 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097178.P8626109460399020496

namespace A097178

/-- `Δ[A007932(A097112(n))/10]` -/
def P8626109460399020496.Spec : Prop :=
  ∀ n, P8626109460399020496.a n = (A097178 n : ℚ)

end A097178

/-!
# A097179: Triangle read by rows in which row n gives coefficients of polynomial R_n(y) that satisfies R_n(1/2) = 4^n, where R_n(y) forms the initial (n+1) terms of g.f. A077860(y)^(n+1).

The programs for A097179, there is no canonical definition to state claims against.
-/

/-! ## A097179.P5698347651083848624

`A112351(A245300(n))%A310398(A000108(n))`
-/

namespace A097179.P5698347651083848624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112351 (A245300 n).toNat) (A310398 (A000108 n).toNat)

end

end A097179.P5698347651083848624

/-!
# A097180: Row sums of triangle A097179, in which the n-th row polynomial R_n(y) is formed from the initial (n+1) terms of g.f. A077860(y)^(n+1), where R_n(1/2) = 4^n for all n>=0.

The programs for A097180, there is no canonical definition to state claims against.
-/

/-! ## A097180.P11126868505873996653

`A098003(A093388(n))-A060072(n+1)`
-/

namespace A097180.P11126868505873996653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098003 (A093388 n).toNat - A060072 (n + 1)

end

end A097180.P11126868505873996653

/-!
# A097181: Triangle read by rows in which row n gives coefficients of polynomial R_n(y) that satisfies R_n(1/2) = 8^n, where R_n(y) forms the initial (n+1) terms of g.f. A097182(y)^(n+1).

The programs for A097181, there is no canonical definition to state claims against.
-/

/-! ## A097181.P10677802721865176203

`∏{p}[A007820(n)*A360742(2*(n+2)), #]`
-/

namespace A097181.P10677802721865176203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n * A360742 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A097181.P10677802721865176203

/-! ## A097181.P15813324673699624247

`A030229(∑{d}[n+1, #*#%2]^A103324(n+1))`
-/

namespace A097181.P15813324673699624247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℚ) ^ (A103324 (n + 1) : ℤ))).toNat

end

end A097181.P15813324673699624247

/-!
# A097183: Main diagonal of triangle A097181, in which the n-th row polynomial R_n(y) is formed from the initial (n+1) terms of g.f. A097182(y)^(n+1), where R_n(1/2) = 8^n for all n>=0.

The programs for A097183, there is no canonical definition to state claims against.
-/

/-! ## A097183.P11790551617363683215

`(n+1)*A097184(n)`
-/

namespace A097183.P11790551617363683215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097184 n

end

end A097183.P11790551617363683215

/-! ## A097183.P13060699968042458236

`(16-2/n)*a(n-1)` with `a(0)=1`
-/

namespace A097183.P13060699968042458236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (16 - 2 / (n : ℚ)) * a (n - 1)

end

end A097183.P13060699968042458236

/-! ## A097183.P16499899854336536811

`A097184(n)*A266285(2*n)`
-/

namespace A097183.P16499899854336536811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097184 n * A266285 (2 * n)

end

end A097183.P16499899854336536811

/-! ## A097183.P12356621571840551417

`A001489(n+1)/2*A301271(n+1)`
-/

namespace A097183.P12356621571840551417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (n + 1) : ℚ) / 2 * (A301271 (n + 1) : ℚ)

end

end A097183.P12356621571840551417

/-! ## A097183.P7729826096088063916

`A216704(n)/4^n`
-/

namespace A097183.P7729826096088063916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216704 n : ℚ) / (4 ^ n : ℚ)

end

end A097183.P7729826096088063916

/-! ## A097183.P3340817132290389213

`A097181(∑[n]+n)`
-/

namespace A097183.P3340817132290389213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097181 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A097183.P3340817132290389213

/-! ## A097183.P9836554208178116623

`record[A097181(A061579(n))]`
-/

namespace A097183.P9836554208178116623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097181 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097183.P9836554208178116623

/-! ## A097183.P11657715517483581637

`record[A097181(n-A025581(n))]`
-/

namespace A097183.P11657715517483581637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097181 ((n : ℤ) - A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097183.P11657715517483581637

/-! ## A097183.P6401974100892023321

`record[A097181(n)/A055249(n)]`
-/

namespace A097183.P6401974100892023321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097181 n : ℚ) / (A055249 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097183.P6401974100892023321

/-! ## A097183.P13095396219766367471

`record[A097181(gcd(n, A025581(n)))]`
-/

namespace A097183.P13095396219766367471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097181 (Int.gcd (n : ℤ) (A025581 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097183.P13095396219766367471

/-!
# A097184: G.f. A(x) satisfies A097182(x*A(x)) = A(x) and so equals the ratio of the g.f.s of any two adjacent diagonals of triangle A097181.

The programs for A097184, there is no canonical definition to state claims against.
-/

/-! ## A097184.P11782554678326554660

`A097183(n)/(n+1)`
-/

namespace A097184.P11782554678326554660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097183 n : ℚ) / (n + 1 : ℚ)

end

end A097184.P11782554678326554660

/-! ## A097184.P12846803215157162421

`abs(A301271(n+1)/2)`
-/

namespace A097184.P12846803215157162421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A301271 (n + 1) : ℚ) / 2|

end

end A097184.P12846803215157162421

/-! ## A097184.P1305095741279877069

`A301271(n+1)/A118824(2*n+1)`
-/

namespace A097184.P1305095741279877069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301271 (n + 1) : ℚ) / (A118824 (2 * n + 1) : ℚ)

end

end A097184.P1305095741279877069

/-! ## A097184.P14739517672840291792

`A321804(A001222(n+1))/2*A301271(n+1)`
-/

namespace A097184.P14739517672840291792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321804 (A001222 (n + 1)).toNat : ℚ) / 2 * (A301271 (n + 1) : ℚ)

end

end A097184.P14739517672840291792

/-! ## A097184.P18046073505902085782

`A097181(∑[n]+n)/(n+1)`
-/

namespace A097184.P18046073505902085782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097181 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (n + 1 : ℚ)

end

end A097184.P18046073505902085782

/-! ## A097184.P151626960857805016

`record[A097181(n)/A097179(n+1)]/(n+1)`
-/

namespace A097184.P151626960857805016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097181 n : ℚ) / (A097179 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 1 : ℚ)

end

end A097184.P151626960857805016

/-! ## A097184.P5305663110435607920

`record[A097181(n)/A097181(n+1)]/(n+1)`
-/

namespace A097184.P5305663110435607920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097181 n : ℚ) / (A097181 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 1 : ℚ)

end

end A097184.P5305663110435607920

/-!
# A097186: Triangle read by rows in which row n gives coefficients of polynomial R_n(y) that satisfies R_n(1/3) = 3^n, where R_n(y) forms the initial (n+1) terms of g.f. A057083(y)^(n+1).

The programs for A097186, there is no canonical definition to state claims against.
-/

/-! ## A097186.P6510259264163525308

`C(record[A091238(2*n+3)], A180662(n))`
-/

namespace A097186.P6510259264163525308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091238 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A180662 n).toNat

end

end A097186.P6510259264163525308

/-! ## A097186.P15489814418186369340

`C(A070939(A060929(n)), A002262(n))`
-/

namespace A097186.P15489814418186369340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070939 (A060929 n).toNat).toNat (A002262 n).toNat

end

end A097186.P15489814418186369340

/-!
# A097188: G.f. A(x) satisfies A057083(x*A(x)) = A(x) and so equals the ratio of the g.f.s of any two adjacent diagonals of triangle A097186.

The programs for A097188, the canonical program `A097188.P11448230231202733973` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097188 has offset 0).

The definition of A097188 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097188.P11448230231202733973

`A025748(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097188

/-- `A025748(n+1)` -/
def P11448230231202733973.Spec : Prop :=
  ∀ n, P11448230231202733973.a n = A097188 n

theorem P11448230231202733973.correct : P11448230231202733973.Spec := by
  intro n
  simp only [A097188]

end A097188

/-! ## A097188.P269500540346248549

`A004988(n)/(n+1)`
-/

namespace A097188.P269500540346248549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004988 n : ℚ) / (n + 1 : ℚ)

end

end A097188.P269500540346248549

namespace A097188

/-- `A004988(n)/(n+1)` -/
def P269500540346248549.Spec : Prop :=
  ∀ n, P269500540346248549.a n = (A097188 n : ℚ)

end A097188

/-! ## A097188.P9676890944576971542

`3*(3-4/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A097188.P9676890944576971542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((3 - 4 / (n + 1 : ℚ)) * a (n - 1))

end

end A097188.P9676890944576971542

namespace A097188

/-- `3*(3-4/(n+1))*a(n-1)` -/
def P9676890944576971542.Spec : Prop :=
  ∀ n, P9676890944576971542.a n = (A097188 n : ℚ)

end A097188

/-! ## A097188.P9771207960911745670

`A048966(∑[n]+1)`
-/

namespace A097188.P9771207960911745670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048966 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097188.P9771207960911745670

namespace A097188

/-- `A048966(∑[n]+1)` -/
def P9771207960911745670.Spec : Prop :=
  ∀ n, P9771207960911745670.a n = A097188 n

end A097188

/-! ## A097188.P15534973938823632149

`record[A048966(n+1)]`
-/

namespace A097188.P15534973938823632149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097188.P15534973938823632149

namespace A097188

/-- `record[A048966(n+1)]` -/
def P15534973938823632149.Spec : Prop :=
  ∀ n, P15534973938823632149.a n = A097188 n

end A097188

/-! ## A097188.P6260269445291521567

`∏[A122709(n)/(n+1)]`
-/

namespace A097188.P6260269445291521567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122709 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097188.P6260269445291521567

namespace A097188

/-- `∏[A122709(n)/(n+1)]` -/
def P6260269445291521567.Spec : Prop :=
  ∀ n, P6260269445291521567.a n = (A097188 n : ℚ)

end A097188

/-! ## A097188.P17974794161119657113

`record[A025748(A008611(n))]`
-/

namespace A097188.P17974794161119657113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025748 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097188.P17974794161119657113

namespace A097188

/-- `record[A025748(A008611(n))]` -/
def P17974794161119657113.Spec : Prop :=
  ∀ n, P17974794161119657113.a n = A097188 n

end A097188

/-! ## A097188.P9079086077520015123

`record[A025748(A008624(n))]`
-/

namespace A097188.P9079086077520015123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025748 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097188.P9079086077520015123

namespace A097188

/-- `record[A025748(A008624(n))]` -/
def P9079086077520015123.Spec : Prop :=
  ∀ n, P9079086077520015123.a n = A097188 n

end A097188

/-! ## A097188.P8755083460691036862

`record[A025748(A110657(n))]`
-/

namespace A097188.P8755083460691036862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025748 (A110657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097188.P8755083460691036862

namespace A097188

/-- `record[A025748(A110657(n))]` -/
def P8755083460691036862.Spec : Prop :=
  ∀ n, P8755083460691036862.a n = A097188 n

end A097188

/-! ## A097188.P8642717040893800357

`A056449(n)*A218540(n+1)`
-/

namespace A097188.P8642717040893800357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A218540 (n + 1)

end

end A097188.P8642717040893800357

namespace A097188

/-- `A056449(n)*A218540(n+1)` -/
def P8642717040893800357.Spec : Prop :=
  ∀ n, P8642717040893800357.a n = A097188 n

end A097188

/-! ## A097188.P9051042541903455034

`A108411(n+1)*A218540(n+1)`
-/

namespace A097188.P9051042541903455034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 1) * A218540 (n + 1)

end

end A097188.P9051042541903455034

namespace A097188

/-- `A108411(n+1)*A218540(n+1)` -/
def P9051042541903455034.Spec : Prop :=
  ∀ n, P9051042541903455034.a n = A097188 n

end A097188

/-! ## A097188.P13980002363938028945

`A283151(∑[n])/(n+1)`
-/

namespace A097188.P13980002363938028945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283151 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A097188.P13980002363938028945

namespace A097188

/-- `A283151(∑[n])/(n+1)` -/
def P13980002363938028945.Spec : Prop :=
  ∀ n, P13980002363938028945.a n = (A097188 n : ℚ)

end A097188

/-!
# A097189: Row sums of triangle A097186, in which the n-th row polynomial R_n(y) is formed from the initial (n+1) terms of g.f. A057083(y)^(n+1), where R_n(1/3) = 3^n for all n >= 0.

The programs for A097189, there is no canonical definition to state claims against.
-/

/-! ## A097189.P6016679053852968642

`∑[A315791(A347003(n+3))]`
-/

namespace A097189.P6016679053852968642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315791 (A347003 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097189.P6016679053852968642

/-!
# A097190: Triangle read by rows in which row n gives coefficients of polynomial R_n(y) that satisfies R_n(1/3) = 9^n, where R_n(y) forms the initial (n+1) terms of g.f. A097191(y)^(n+1).

The programs for A097190, there is no canonical definition to state claims against.
-/

/-! ## A097190.P14932788586703284189

`A174457(gcd(A018234(n), A349599(n)))`
-/

namespace A097190.P14932788586703284189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174457 (Int.gcd (A018234 n) (A349599 n))

end

end A097190.P14932788586703284189

/-! ## A097190.P6998368701358248060

`gcd(A247612(n), A247704(A198760(n+2)))`
-/

namespace A097190.P6998368701358248060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247612 n) (A247704 (A198760 (n + 2)).toNat)

end

end A097190.P6998368701358248060

/-!
# A097192: Main diagonal of triangle A097190, in which the n-th row polynomial R_n(y) is formed from the initial (n+1) terms of g.f. A097191(y)^(n+1), where R_n(1/3) = 9^n for all n>=0.

The programs for A097192, there is no canonical definition to state claims against.
-/

/-! ## A097192.P6630685383795990886

`(n+1)*A097193(n)`
-/

namespace A097192.P6630685383795990886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097193 n

end

end A097192.P6630685383795990886

/-! ## A097192.P3656524554553544904

`(27-3/n)*a(n-1)` with `a(0)=1`
-/

namespace A097192.P3656524554553544904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (27 - 3 / (n : ℚ)) * a (n - 1)

end

end A097192.P3656524554553544904

/-! ## A097192.P8404824793533199186

`A097193(n)*A178804(A004767(n))`
-/

namespace A097192.P8404824793533199186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097193 n * A178804 (A004767 n).toNat

end

end A097192.P8404824793533199186

/-! ## A097192.P12237331126266532903

`A216705(n)/3^n`
-/

namespace A097192.P12237331126266532903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216705 n : ℚ) / (3 ^ n : ℚ)

end

end A097192.P12237331126266532903

/-! ## A097192.P4335017447608193305

`A097190(∑[n]+n)`
-/

namespace A097192.P4335017447608193305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097190 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A097192.P4335017447608193305

/-! ## A097192.P11959902672852002935

`record[A097190(n)/A055249(n)]`
-/

namespace A097192.P11959902672852002935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097190 n : ℚ) / (A055249 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097192.P11959902672852002935

/-! ## A097192.P6528104564771951667

`record[A097190(n)/A074909(n+1)]`
-/

namespace A097192.P6528104564771951667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097190 n : ℚ) / (A074909 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097192.P6528104564771951667

/-! ## A097192.P8343581693628541377

`record[gcd(A053727(n+1), A097190(n))]`
-/

namespace A097192.P8343581693628541377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053727 (n + 1)) (A097190 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097192.P8343581693628541377

/-! ## A097192.P10996967973195903184

`lcm(A097190(A000096(n)), A097193(n))`
-/

namespace A097192.P10996967973195903184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097190 (A000096 n).toNat) (A097193 n)

end

end A097192.P10996967973195903184

/-! ## A097192.P3863525880006059631

`record[A097190(n)/A097190(n+1)]`
-/

namespace A097192.P3863525880006059631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097190 n : ℚ) / (A097190 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097192.P3863525880006059631

/-!
# A097193: G.f. A(x) satisfies A097191(x*A(x)) = A(x) and so equals the ratio of the g.f.s of any two adjacent diagonals of triangle A097190.

The programs for A097193, there is no canonical definition to state claims against.
-/

/-! ## A097193.P11675880502783108924

`A097192(n)/(n+1)`
-/

namespace A097193.P11675880502783108924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097192 n : ℚ) / (n + 1 : ℚ)

end

end A097193.P11675880502783108924

/-! ## A097193.P3807716009658673713

`floor(A097192(n)/A074909(A000096(n)))`
-/

namespace A097193.P3807716009658673713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097192 n : ℚ) / (A074909 (A000096 n).toNat : ℚ)⌋

end

end A097193.P3807716009658673713

/-! ## A097193.P17398027520829146572

`(A097192(n)/A074909(A000096(n)))^A178489(n)`
-/

namespace A097193.P17398027520829146572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A097192 n : ℚ) / (A074909 (A000096 n).toNat : ℚ)) ^ (A178489 n : ℤ)

end

end A097193.P17398027520829146572

/-! ## A097193.P7877877545283381347

`A025754(n+1)/3^n`
-/

namespace A097193.P7877877545283381347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025754 (n + 1) : ℚ) / (3 ^ n : ℚ)

end

end A097193.P7877877545283381347

/-! ## A097193.P9604762389234753036

`record[A097190(n)/A074909(n)]`
-/

namespace A097193.P9604762389234753036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097190 n : ℚ) / (A074909 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097193.P9604762389234753036

/-!
# A097195: Expansion of s(12)^3*s(18)^2/(s(6)^2*s(36)), where s(k) = eta(q^k) and eta(q) is Dedekind's function, cf. A010815. Then replace q^6 with q.

The programs for A097195, the canonical program `A097195.P12342509602906900209` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097195 has offset 0).

The definition of A097195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097195.P3968438384464554560

`abs(A129451(n))`
-/

namespace A097195.P3968438384464554560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129451 n|

end

end A097195.P3968438384464554560

namespace A097195

/-- `abs(A129451(n))` -/
def P3968438384464554560.Spec : Prop :=
  ∀ n, P3968438384464554560.a n = A097195 n

end A097195

/-! ## A097195.P14156822943391219323

`A096936(6*n+1)`
-/

namespace A097195.P14156822943391219323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (6 * n + 1)

end

end A097195.P14156822943391219323

namespace A097195

/-- `A096936(6*n+1)` -/
def P14156822943391219323.Spec : Prop :=
  ∀ n, P14156822943391219323.a n = A097195 n

end A097195

/-! ## A097195.P15234452017797408678

`A115979(6*n+1)`
-/

namespace A097195.P15234452017797408678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (6 * n + 1)

end

end A097195.P15234452017797408678

namespace A097195

/-- `A115979(6*n+1)` -/
def P15234452017797408678.Spec : Prop :=
  ∀ n, P15234452017797408678.a n = A097195 n

end A097195

/-! ## A097195.P5529017986047095892

`A033716(A016921(n))/2`
-/

namespace A097195.P5529017986047095892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (A016921 n).toNat : ℚ) / 2

end

end A097195.P5529017986047095892

namespace A097195

/-- `A033716(A016921(n))/2` -/
def P5529017986047095892.Spec : Prop :=
  ∀ n, P5529017986047095892.a n = (A097195 n : ℚ)

end A097195

/-! ## A097195.P17604377872191635084

`A033999(n)*A129451(n)`
-/

namespace A097195.P17604377872191635084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A129451 n

end

end A097195.P17604377872191635084

namespace A097195

/-- `A033999(n)*A129451(n)` -/
def P17604377872191635084.Spec : Prop :=
  ∀ n, P17604377872191635084.a n = A097195 n

end A097195

/-! ## A097195.P17486614331150290673

`gcd(A000038(n), A129451(n))`
-/

namespace A097195.P17486614331150290673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A129451 n)

end

end A097195.P17486614331150290673

namespace A097195

/-- `gcd(A000038(n), A129451(n))` -/
def P17486614331150290673.Spec : Prop :=
  ∀ n, (P17486614331150290673.a n : ℤ) = A097195 n

end A097195

/-! ## A097195.P1702826900547681126

`lcm(A000034(n), A129451(n))`
-/

namespace A097195.P1702826900547681126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A129451 n)

end

end A097195.P1702826900547681126

namespace A097195

/-- `lcm(A000034(n), A129451(n))` -/
def P1702826900547681126.Spec : Prop :=
  ∀ n, (P1702826900547681126.a n : ℤ) = A097195 n

end A097195

/-! ## A097195.P12342509602906900209

`A359309(n+1)-A359327(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A097195

/-- `A359309(n+1)-A359327(n+1)` -/
def P12342509602906900209.Spec : Prop :=
  ∀ n, P12342509602906900209.a n = A097195 n

theorem P12342509602906900209.correct : P12342509602906900209.Spec := by
  intro n
  simp only [A097195]

end A097195

/-! ## A097195.P10137007186064345395

`ratio[A057077(n)]*A129451(n)`
-/

namespace A097195.P10137007186064345395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A129451 n : ℚ)

end

end A097195.P10137007186064345395

namespace A097195

/-- `ratio[A057077(n)]*A129451(n)` -/
def P10137007186064345395.Spec : Prop :=
  ∀ n, P10137007186064345395.a n = (A097195 n : ℚ)

end A097195

/-! ## A097195.P5393935455363164011

`A033687(2*n)`
-/

namespace A097195.P5393935455363164011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (2 * n)

end

end A097195.P5393935455363164011

namespace A097195

/-- `A033687(2*n)` -/
def P5393935455363164011.Spec : Prop :=
  ∀ n, P5393935455363164011.a n = A097195 n

end A097195

/-! ## A097195.P13487920702968460903

`A005882(2*n)/3`
-/

namespace A097195.P13487920702968460903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005882 (2 * n) : ℚ) / 3

end

end A097195.P13487920702968460903

namespace A097195

/-- `A005882(2*n)/3` -/
def P13487920702968460903.Spec : Prop :=
  ∀ n, P13487920702968460903.a n = (A097195 n : ℚ)

end A097195

/-! ## A097195.P2906720493506951484

`A002264(A005882(2*n))`
-/

namespace A097195.P2906720493506951484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005882 (2 * n)).toNat

end

end A097195.P2906720493506951484

namespace A097195

/-- `A002264(A005882(2*n))` -/
def P2906720493506951484.Spec : Prop :=
  ∀ n, P2906720493506951484.a n = A097195 n

end A097195

/-! ## A097195.P6516711711411137931

`A008611(A005882(2*n)+1)`
-/

namespace A097195.P6516711711411137931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A005882 (2 * n) + 1).toNat

end

end A097195.P6516711711411137931

namespace A097195

/-- `A008611(A005882(2*n)+1)` -/
def P6516711711411137931.Spec : Prop :=
  ∀ n, P6516711711411137931.a n = A097195 n

end A097195

/-! ## A097195.P9124860738624986414

`A157685(A005882(2*n)+1)`
-/

namespace A097195.P9124860738624986414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A005882 (2 * n) + 1).toNat

end

end A097195.P9124860738624986414

namespace A097195

/-- `A157685(A005882(2*n)+1)` -/
def P9124860738624986414.Spec : Prop :=
  ∀ n, P9124860738624986414.a n = A097195 n

end A097195

/-! ## A097195.P10773788370220909582

`A122861(2*n)`
-/

namespace A097195.P10773788370220909582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122861 (2 * n)

end

end A097195.P10773788370220909582

namespace A097195

/-- `A122861(2*n)` -/
def P10773788370220909582.Spec : Prop :=
  ∀ n, P10773788370220909582.a n = A097195 n

end A097195

/-! ## A097195.P12171357832720689618

`A129576(2*n)`
-/

namespace A097195.P12171357832720689618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 (2 * n)

end

end A097195.P12171357832720689618

namespace A097195

/-- `A129576(2*n)` -/
def P12171357832720689618.Spec : Prop :=
  ∀ n, P12171357832720689618.a n = A097195 n

end A097195

/-! ## A097195.P1033733273304562042

`A227696(2*n)`
-/

namespace A097195.P1033733273304562042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 (2 * n)

end

end A097195.P1033733273304562042

namespace A097195

/-- `A227696(2*n)` -/
def P1033733273304562042.Spec : Prop :=
  ∀ n, P1033733273304562042.a n = A097195 n

end A097195

/-! ## A097195.P6732884338209505126

`abs(A246650(2*n))`
-/

namespace A097195.P6732884338209505126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246650 (2 * n)|

end

end A097195.P6732884338209505126

namespace A097195

/-- `abs(A246650(2*n))` -/
def P6732884338209505126.Spec : Prop :=
  ∀ n, P6732884338209505126.a n = A097195 n

end A097195

/-! ## A097195.P14779865723740258819

`abs(A246752(2*n))`
-/

namespace A097195.P14779865723740258819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246752 (2 * n)|

end

end A097195.P14779865723740258819

namespace A097195

/-- `abs(A246752(2*n))` -/
def P14779865723740258819.Spec : Prop :=
  ∀ n, P14779865723740258819.a n = A097195 n

end A097195

/-! ## A097195.P11588138719308417982

`A359212(2*n+1)-A359327(n+1)`
-/

namespace A097195.P11588138719308417982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359212 (2 * n + 1) - A359327 (n + 1)

end

end A097195.P11588138719308417982

namespace A097195

/-- `A359212(2*n+1)-A359327(n+1)` -/
def P11588138719308417982.Spec : Prop :=
  ∀ n, P11588138719308417982.a n = A097195 n

end A097195

/-!
# A097196: Expansion of psi(x^3)^2 / f(-x^2) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A097196, there is no canonical definition to state claims against.
-/

/-! ## A097196.P1763348365735281801

`-A260574(Δ[n²])`
-/

namespace A097196.P1763348365735281801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A260574 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A097196.P1763348365735281801

/-! ## A097196.P10114190609683761601

`abs(A260574(2*n+1))`
-/

namespace A097196.P10114190609683761601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260574 (2 * n + 1)|

end

end A097196.P10114190609683761601

/-! ## A097196.P18284353354594257156

`A000007(n+1)-A260574(2*n+1)`
-/

namespace A097196.P18284353354594257156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A260574 (2 * n + 1)

end

end A097196.P18284353354594257156

/-! ## A097196.P16316021221591228476

`A000035(2*n)-A260574(2*n+1)`
-/

namespace A097196.P16316021221591228476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A260574 (2 * n + 1)

end

end A097196.P16316021221591228476

/-! ## A097196.P17280618988210292692

`char[A205581(n+2)]-A260574(2*n+1)`
-/

namespace A097196.P17280618988210292692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205581 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A260574 (2 * n + 1)

end

end A097196.P17280618988210292692

/-! ## A097196.P6051847663174929938

`1-(A260574(2*n+1)+A124625(2*n))`
-/

namespace A097196.P6051847663174929938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A260574 (2 * n + 1) + A124625 (2 * n))

end

end A097196.P6051847663174929938

/-! ## A097196.P4226930961366302218

`1-(A260574(2*n+1)+A001511(2*n+1))`
-/

namespace A097196.P4226930961366302218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A260574 (2 * n + 1) + A001511 (2 * n + 1))

end

end A097196.P4226930961366302218

/-! ## A097196.P3234748096666344123

`A124625(A124625(2*n))-A260574(2*n+1)`
-/

namespace A097196.P3234748096666344123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A124625 (2 * n)).toNat - A260574 (2 * n + 1)

end

end A097196.P3234748096666344123

/-! ## A097196.P9443850774375507100

`A260574(2*n+1)*A260574(A124625(2*n)²)`
-/

namespace A097196.P9443850774375507100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260574 (2 * n + 1) * A260574 (A124625 (2 * n) ^ 2).toNat

end

end A097196.P9443850774375507100

/-! ## A097196.P868722540974603445

`A260574(A001511(2*n+1))*A260574(2*n+1)`
-/

namespace A097196.P868722540974603445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260574 (A001511 (2 * n + 1)).toNat * A260574 (2 * n + 1)

end

end A097196.P868722540974603445

/-! ## A097196.P1929074258932040490

`A127647(2*n+1)*A127647(2*(n+1))-A260574(2*n+1)`
-/

namespace A097196.P1929074258932040490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127647 (2 * n + 1) * A127647 (2 * (n + 1)) - A260574 (2 * n + 1)

end

end A097196.P1929074258932040490

/-! ## A097196.P7260383997396102869

`A002262(∑[n])-A260574(2*n+1)`
-/

namespace A097196.P7260383997396102869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j) - A260574 (2 * n + 1)

end

end A097196.P7260383997396102869

/-! ## A097196.P12082701972005959581

`A127647(A246944(n+2))-A260574(2*n+1)`
-/

namespace A097196.P12082701972005959581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127647 (A246944 (n + 2)).toNat - A260574 (2 * n + 1)

end

end A097196.P12082701972005959581

/-!
# A097197: Expansion of q^(-1/3) * eta(q^6)^2 / (eta(q) * eta(q^3)) in powers of q.

The programs for A097197, there is no canonical definition to state claims against.
-/

/-! ## A097197.P6814836302349735800

`(-1)^n*A139135(n)`
-/

namespace A097197.P6814836302349735800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A139135 n

end

end A097197.P6814836302349735800

/-! ## A097197.P13921847994310925714

`abs(A139135(n))`
-/

namespace A097197.P13921847994310925714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139135 n|

end

end A097197.P13921847994310925714

/-! ## A097197.P9660221763590277516

`gcd(A000038(n), A139135(n))`
-/

namespace A097197.P9660221763590277516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A139135 n)

end

end A097197.P9660221763590277516

/-! ## A097197.P18185651916269047849

`lcm(A006466(n), A139135(n))`
-/

namespace A097197.P18185651916269047849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A139135 n)

end

end A097197.P18185651916269047849

/-! ## A097197.P18300977404924994294

`A122792(3*n+1)`
-/

namespace A097197.P18300977404924994294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 (3 * n + 1)

end

end A097197.P18300977404924994294

/-! ## A097197.P5251314484639656283

`abs(A139139(3*n+1))`
-/

namespace A097197.P5251314484639656283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139139 (3 * n + 1)|

end

end A097197.P5251314484639656283

/-! ## A097197.P16594339709580834914

`sqrt(A139135(n)²*A010054(∑[n]))`
-/

namespace A097197.P16594339709580834914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A139135 n ^ 2 * A010054 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A097197.P16594339709580834914

/-!
# A097199: Numbers of the form p^4 + 4^p for p prime.

The programs for A097199, there is no canonical definition to state claims against.
-/

/-! ## A097199.P17057652812894614758

`A001589(p?[comp[n²]])`
-/

namespace A097199.P17057652812894614758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001589 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097199.P17057652812894614758

/-! ## A097199.P10438608818240495457

`A001589(A000040(n+1))`
-/

namespace A097199.P10438608818240495457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001589 (A000040 (n + 1)).toNat

end

end A097199.P10438608818240495457

/-! ## A097199.P3306369694185814961

`A001589(record[A064989(n+3)])`
-/

namespace A097199.P3306369694185814961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001589 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097199.P3306369694185814961

/-! ## A097199.P5579392428759611619

`A001589(A006093(n+1)+1)`
-/

namespace A097199.P5579392428759611619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001589 (A006093 (n + 1) + 1).toNat

end

end A097199.P5579392428759611619

/-! ## A097199.P15235353401009011666

`A001248(n+1)²+A034785(n+1)²`
-/

namespace A097199.P15235353401009011666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 + A034785 (n + 1) ^ 2

end

end A097199.P15235353401009011666

