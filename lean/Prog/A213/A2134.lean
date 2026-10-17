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
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C026

/-!
# A213401: Smallest number k such that the sum of divisors of k equals n times a square > 1.

The programs for A213401, there is no canonical definition to state claims against.
-/

/-! ## A213401.P8345969906029530966

`A213931(n+1)+A129186(A213962(n+1))`
-/

namespace A213401.P8345969906029530966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213931 (n + 1) + A129186 (A213962 (n + 1)).toNat

end

end A213401.P8345969906029530966

/-! ## A213401.P12146709228372851592

`A213931(n+1)+A091225(A213351(n+9))`
-/

namespace A213401.P12146709228372851592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213931 (n + 1) + A091225 (A213351 (n + 9)).toNat

end

end A213401.P12146709228372851592

/-! ## A213401.P16923841414365758807

`A091225(A213351(n+9))+A070982(4*A077168(n))`
-/

namespace A213401.P16923841414365758807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A213351 (n + 9)).toNat + A070982 (4 * A077168 n).toNat

end

end A213401.P16923841414365758807

/-!
# A213408: Sequence A002654 with the zero terms omitted.

The programs for A213408, the canonical program `A213408.P6728982217744308874` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213408 has offset 1).

The definition of A213408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213408.P847615342694328907

`A105352(n+2)/4`
-/

namespace A213408.P847615342694328907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105352 (n + 2) : ℚ) / 4

end

end A213408.P847615342694328907

namespace A213408

/-- `A105352(n+2)/4` -/
def P847615342694328907.Spec : Prop :=
  ∀ n, P847615342694328907.a n = (A213408 (n + 1) : ℚ)

end A213408

/-! ## A213408.P13449595502210082548

`Δ[A057961(n+1)/4]`
-/

namespace A213408.P13449595502210082548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057961 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213408.P13449595502210082548

namespace A213408

/-- `Δ[A057961(n+1)/4]` -/
def P13449595502210082548.Spec : Prop :=
  ∀ n, P13449595502210082548.a n = (A213408 (n + 1) : ℚ)

end A213408

/-! ## A213408.P6443074810414937563

`a(n-1)*ratio[A105352(n+1)]` with `a(0)=1`
-/

namespace A213408.P6443074810414937563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105352 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A213408.P6443074810414937563

namespace A213408

/-- `a(n-1)*ratio[A105352(n+1)]` -/
def P6443074810414937563.Spec : Prop :=
  ∀ n, P6443074810414937563.a n = (A213408 (n + 1) : ℚ)

end A213408

/-! ## A213408.P1060192479853701651

`A002654(A001481(n+2))`
-/

namespace A213408.P1060192479853701651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A001481 (n + 2)).toNat

end

end A213408.P1060192479853701651

namespace A213408

/-- `A002654(A001481(n+2))` -/
def P1060192479853701651.Spec : Prop :=
  ∀ n, P1060192479853701651.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P8662481866629302853

`A002265(A105352(n+2))`
-/

namespace A213408.P8662481866629302853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A105352 (n + 2)).toNat

end

end A213408.P8662481866629302853

namespace A213408

/-- `A002265(A105352(n+2))` -/
def P8662481866629302853.Spec : Prop :=
  ∀ n, P8662481866629302853.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P1126063664614964811

`A002654(A128106(n+2))`
-/

namespace A213408.P1126063664614964811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A128106 (n + 2)).toNat

end

end A213408.P1126063664614964811

namespace A213408

/-- `A002654(A128106(n+2))` -/
def P1126063664614964811.Spec : Prop :=
  ∀ n, P1126063664614964811.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P10166533936681023252

`A002654(lt[0, A143574(n)])`
-/

namespace A213408.P10166533936681023252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213408.P10166533936681023252

namespace A213408

/-- `A002654(lt[0, A143574(n)])` -/
def P10166533936681023252.Spec : Prop :=
  ∀ n, P10166533936681023252.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P2102487745624366203

`A138950(lt[A138949(n), 0])`
-/

namespace A213408.P2102487745624366203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138949 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213408.P2102487745624366203

namespace A213408

/-- `A138950(lt[A138949(n), 0])` -/
def P2102487745624366203.Spec : Prop :=
  ∀ n, P2102487745624366203.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P7303693806872547553

`A002654(lt[1, A004018(n)])`
-/

namespace A213408.P7303693806872547553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213408.P7303693806872547553

namespace A213408

/-- `A002654(lt[1, A004018(n)])` -/
def P7303693806872547553.Spec : Prop :=
  ∀ n, P7303693806872547553.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P13286947042388550035

`A002654(lt[1, A259761(n)])`
-/

namespace A213408.P13286947042388550035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213408.P13286947042388550035

namespace A213408

/-- `A002654(lt[1, A259761(n)])` -/
def P13286947042388550035.Spec : Prop :=
  ∀ n, P13286947042388550035.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P17817162989944903351

`A002654(lt[1, A330574(n)])`
-/

namespace A213408.P17817162989944903351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213408.P17817162989944903351

namespace A213408

/-- `A002654(lt[1, A330574(n)])` -/
def P17817162989944903351.Spec : Prop :=
  ∀ n, P17817162989944903351.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P12485768309953922326

`A002654(∑[A256435(n+1)])`
-/

namespace A213408.P12485768309953922326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213408.P12485768309953922326

namespace A213408

/-- `A002654(∑[A256435(n+1)])` -/
def P12485768309953922326.Spec : Prop :=
  ∀ n, P12485768309953922326.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P18391724313639266236

`Δ[A014200(A001481(n+1))]`
-/

namespace A213408.P18391724313639266236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A001481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213408.P18391724313639266236

namespace A213408

/-- `Δ[A014200(A001481(n+1))]` -/
def P18391724313639266236.Spec : Prop :=
  ∀ n, P18391724313639266236.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P7982921715518990735

`A002265(Δ[A057961(n+1)])`
-/

namespace A213408.P7982921715518990735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A213408.P7982921715518990735

namespace A213408

/-- `A002265(Δ[A057961(n+1)])` -/
def P7982921715518990735.Spec : Prop :=
  ∀ n, P7982921715518990735.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P17057290872217074962

`A002654(Δ[A173256(n+1)])`
-/

namespace A213408.P17057290872217074962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (f1 (n + 1) - f1 n).toNat

end

end A213408.P17057290872217074962

namespace A213408

/-- `A002654(Δ[A173256(n+1)])` -/
def P17057290872217074962.Spec : Prop :=
  ∀ n, P17057290872217074962.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P1996759449806164969

`A226762(Δ[A057961(n+1)])`
-/

namespace A213408.P1996759449806164969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (f1 (n + 1) - f1 n).toNat

end

end A213408.P1996759449806164969

namespace A213408

/-- `A226762(Δ[A057961(n+1)])` -/
def P1996759449806164969.Spec : Prop :=
  ∀ n, P1996759449806164969.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P3324777719610614353

`A002654(A166687(n+2)-1)`
-/

namespace A213408.P3324777719610614353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A166687 (n + 2) - 1).toNat

end

end A213408.P3324777719610614353

namespace A213408

/-- `A002654(A166687(n+2)-1)` -/
def P3324777719610614353.Spec : Prop :=
  ∀ n, P3324777719610614353.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P18162310301147491049

`A000005(xor(5, A105352(n+2)))`
-/

namespace A213408.P18162310301147491049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor 5 (A105352 (n + 2))).toNat

end

end A213408.P18162310301147491049

namespace A213408

/-- `A000005(xor(5, A105352(n+2)))` -/
def P18162310301147491049.Spec : Prop :=
  ∀ n, P18162310301147491049.a n = A213408 (n + 1)

end A213408

/-! ## A213408.P6728982217744308874

`filter[A002654(n+1), A011558(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213408

/-- `filter[A002654(n+1), A011558(#)]` -/
def P6728982217744308874.Spec : Prop :=
  ∀ n, P6728982217744308874.a n = A213408 (n + 1)

theorem P6728982217744308874.correct : P6728982217744308874.Spec := by
  intro n
  simp only [A213408, Nat.add_sub_cancel]

end A213408

/-! ## A213408.P5716299813033568451

`filter[A002654(n+1), A022932(#)]`
-/

namespace A213408.P5716299813033568451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A213408.P5716299813033568451

namespace A213408

/-- `filter[A002654(n+1), A022932(#)]` -/
def P5716299813033568451.Spec : Prop :=
  ∀ n, P5716299813033568451.a n = A213408 (n + 1)

end A213408

/-!
# A213411: G.f. A(x) = 1 / (1 - x^a(0) / (1 - x^a(1) / (1 - x^a(2) / ... ))).

The programs for A213411, there is no canonical definition to state claims against.
-/

/-! ## A213411.P11597692043373047062

`A080135(n)-A293429(A181153(n))`
-/

namespace A213411.P11597692043373047062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080135 n - A293429 (A181153 n).toNat

end

end A213411.P11597692043373047062

/-! ## A213411.P18333405108133454559

`and(-A080135(A047168(n+1)), A080135(n))`
-/

namespace A213411.P18333405108133454559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A080135 (A047168 (n + 1)).toNat) (A080135 n)

end

end A213411.P18333405108133454559

/-! ## A213411.P14638031634623567630

`A080135(n)-A024360(A148306(n))`
-/

namespace A213411.P14638031634623567630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080135 n - A024360 (A148306 n).toNat

end

end A213411.P14638031634623567630

/-! ## A213411.P9142043706958183603

`A080135(n)-A137748(A137748(n))`
-/

namespace A213411.P9142043706958183603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080135 n - A137748 (A137748 n).toNat

end

end A213411.P9142043706958183603

/-! ## A213411.P8753003602730266456

`A080135(A024653(n))`
-/

namespace A213411.P8753003602730266456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080135 (A024653 n).toNat

end

end A213411.P8753003602730266456

/-!
# A213412: Half the number of n X n binary arrays with no 3X3 submatrix formed with any three rows and columns equal to J-I.

The programs for A213412, there is no canonical definition to state claims against.
-/

/-! ## A213412.P15944319254249435765

`A213418(∑[4*n]+1)`
-/

namespace A213412.P15944319254249435765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213412.P15944319254249435765

/-! ## A213412.P6216551209034927832

`record[A003982(n)*A213418(n+1)]`
-/

namespace A213412.P6216551209034927832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A213418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213412.P6216551209034927832

/-! ## A213412.P12897149228485036322

`record[gcd(A157525(n), A213418(n+1))]`
-/

namespace A213412.P12897149228485036322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157525 n) (A213418 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213412.P12897149228485036322

/-!
# A213413: Half the number of n X 3 binary arrays with no 3 X 3 submatrix formed with any three rows and columns equal to J-I.

The programs for A213413, the canonical program `A213413.P3049712759073166311` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213413 has offset 1).

The definition of A213413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213413.P3049712759073166311

`18*a(n-1)-107*a(n-2)+210*a(n-3)` with `a(0)=4, a(1)=32, a(2)=253`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213413

/-- `18*a(n-1)-107*a(n-2)+210*a(n-3)` -/
def P3049712759073166311.Spec : Prop :=
  ∀ n, P3049712759073166311.a n = A213413 (n + 1)

theorem P3049712759073166311.correct : P3049712759073166311.Spec := by
  intro n
  simp only [A213413, Nat.add_sub_cancel]

end A213413

/-! ## A213413.P14144496191797439517

`A213418(∑[n+2]+4)`
-/

namespace A213413.P14144496191797439517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A213413.P14144496191797439517

namespace A213413

/-- `A213418(∑[n+2]+4)` -/
def P14144496191797439517.Spec : Prop :=
  ∀ n, P14144496191797439517.a n = A213413 (n + 1)

end A213413

/-! ## A213413.P18345914354536859961

`record[gcd(A213418(n+4), A244128(n+1))]`
-/

namespace A213413.P18345914354536859961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213418 (n + 4)) (A244128 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213413.P18345914354536859961

namespace A213413

/-- `record[gcd(A213418(n+4), A244128(n+1))]` -/
def P18345914354536859961.Spec : Prop :=
  ∀ n, (P18345914354536859961.a n : ℤ) = A213413 (n + 1)

end A213413

/-! ## A213413.P4178275658596655083

`A213418(A167614(n+1))+A025442(n)`
-/

namespace A213413.P4178275658596655083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A167614 (n + 1)).toNat + A025442 n

end

end A213413.P4178275658596655083

namespace A213413

/-- `A213418(A167614(n+1))+A025442(n)` -/
def P4178275658596655083.Spec : Prop :=
  ∀ n, P4178275658596655083.a n = A213413 (n + 1)

end A213413

/-! ## A213413.P9808217695035860808

`A213418(A167614(n+1))+A025466(n)`
-/

namespace A213413.P9808217695035860808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A167614 (n + 1)).toNat + A025466 n

end

end A213413.P9808217695035860808

namespace A213413

/-- `A213418(A167614(n+1))+A025466(n)` -/
def P9808217695035860808.Spec : Prop :=
  ∀ n, P9808217695035860808.a n = A213413 (n + 1)

end A213413

/-!
# A213414: Half the number of n X 4 binary arrays with no 3 X 3 submatrix formed with any three rows and columns equal to J-I.

The programs for A213414, there is no canonical definition to state claims against.
-/

/-! ## A213414.P3258642772810923901

`A213418(∑[n+3]+7)`
-/

namespace A213414.P3258642772810923901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A213414.P3258642772810923901

/-! ## A213414.P461757189798998176

`A213418(A055999(n)+10)+A025442(n)`
-/

namespace A213414.P461757189798998176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A055999 n + 10).toNat + A025442 n

end

end A213414.P461757189798998176

/-! ## A213414.P8965641966202087038

`lcm(2, A213418(A141214(n+1)))`
-/

namespace A213414.P8965641966202087038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A213418 (A141214 (n + 1)).toNat)

end

end A213414.P8965641966202087038

/-! ## A213414.P899392147084308584

`record[A213418(A141214(val(n+1, 2)+1))]`
-/

namespace A213414.P899392147084308584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A141214 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213414.P899392147084308584

/-! ## A213414.P9476091973542455768

`A213418(A141214(n+1))+A025442(n)`
-/

namespace A213414.P9476091973542455768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A141214 (n + 1)).toNat + A025442 n

end

end A213414.P9476091973542455768

/-!
# A213415: Half the number of nX5 binary arrays with no 3X3 submatrix formed with any three rows and columns equal to J-I.

The programs for A213415, there is no canonical definition to state claims against.
-/

/-! ## A213415.P10555818511314118853

`A213418(A167499(n+3))`
-/

namespace A213415.P10555818511314118853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A167499 (n + 3)).toNat

end

end A213415.P10555818511314118853

/-! ## A213415.P13108697927996804292

`A213418(A155212(n)+13)`
-/

namespace A213415.P13108697927996804292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A155212 n + 13).toNat

end

end A213415.P13108697927996804292

/-! ## A213415.P10350750643688615251

`A213418(A056000(n)+15)`
-/

namespace A213415.P10350750643688615251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A056000 n + 15).toNat

end

end A213415.P10350750643688615251

/-! ## A213415.P830117743421113285

`A213418(eq[7, A066657(n)])`
-/

namespace A213415.P830117743421113285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213415.P830117743421113285

/-! ## A213415.P6946270656661317971

`A213418(A167614(n+3)+2)`
-/

namespace A213415.P6946270656661317971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A167614 (n + 3) + 2).toNat

end

end A213415.P6946270656661317971

/-!
# A213416: Half the number of nX6 binary arrays with no 3X3 submatrix formed with any three rows and columns equal to J-I.

The programs for A213416, there is no canonical definition to state claims against.
-/

/-! ## A213416.P13014070274650122524

`A213418(A374007(n+1))`
-/

namespace A213416.P13014070274650122524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A374007 (n + 1)).toNat

end

end A213416.P13014070274650122524

/-! ## A213416.P13580147321657533030

`A213418(A052905(n+3))`
-/

namespace A213416.P13580147321657533030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A052905 (n + 3)).toNat

end

end A213416.P13580147321657533030

/-! ## A213416.P100329362342094114

`A213418(A056119(n)+16)`
-/

namespace A213416.P100329362342094114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A056119 n + 16).toNat

end

end A213416.P100329362342094114

/-! ## A213416.P360444184704552008

`A213418(eq[3, A219347(n)])`
-/

namespace A213416.P360444184704552008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213416.P360444184704552008

/-!
# A213417: Half the number of nX7 binary arrays with no 3X3 submatrix formed with any three rows and columns equal to J-I.

The programs for A213417, there is no canonical definition to state claims against.
-/

/-! ## A213417.P17017892726658717346

`A213418(A374008(n+1))`
-/

namespace A213417.P17017892726658717346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A374008 (n + 1)).toNat

end

end A213417.P17017892726658717346

/-! ## A213417.P276048608353115707

`A213418(A055999(n+4))`
-/

namespace A213417.P276048608353115707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A055999 (n + 4)).toNat

end

end A213417.P276048608353115707

/-! ## A213417.P5507374340463379906

`A213418(A056119(n)+28)`
-/

namespace A213417.P5507374340463379906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (A056119 n + 28).toNat

end

end A213417.P5507374340463379906

/-!
# A213418: T(n,k) = Half the number of n X k binary arrays with no 3 X 3 submatrix formed with any three rows and columns equal to J-I.

The programs for A213418, there is no canonical definition to state claims against.
-/

/-! ## A213418.P9014562264804302607

`A103530(A300182(n+1)+1)`
-/

namespace A213418.P9014562264804302607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (A300182 (n + 1) + 1).toNat

end

end A213418.P9014562264804302607

/-! ## A213418.P6628576982424541211

`A103530(A317517(n+1)+1)`
-/

namespace A213418.P6628576982424541211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (A317517 (n + 1) + 1).toNat

end

end A213418.P6628576982424541211

/-! ## A213418.P16615439293614049291

`A164089(6*A300182(n+1))`
-/

namespace A213418.P16615439293614049291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (6 * A300182 (n + 1)).toNat

end

end A213418.P16615439293614049291

/-! ## A213418.P11061199785285024387

`A164089(6*A317517(n+1))`
-/

namespace A213418.P11061199785285024387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (6 * A317517 (n + 1)).toNat

end

end A213418.P11061199785285024387

/-! ## A213418.P1301151620161870508

`A053645(lcm(9, A300182(n+1)))`
-/

namespace A213418.P1301151620161870508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (Int.lcm 9 (A300182 (n + 1)))

end

end A213418.P1301151620161870508

/-!
# A213419: Expansion of q * chi(-q) / chi(-q^25) in powers of q where chi() is a Ramanujan theta function.

The programs for A213419, there is no canonical definition to state claims against.
-/

/-! ## A213419.P13906378984285911230

`A164660(A019427(n))*A169995(n)`
-/

namespace A213419.P13906378984285911230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 (A019427 n).toNat * A169995 n

end

end A213419.P13906378984285911230

/-! ## A213419.P14702956962524863404

`A175424(A005135(n))+A081362(n)`
-/

namespace A213419.P14702956962524863404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 (A005135 n).toNat + A081362 n

end

end A213419.P14702956962524863404

/-! ## A213419.P16796148418842064484

`A185264(A185286(n))+A081362(n)`
-/

namespace A213419.P16796148418842064484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A185286 n).toNat + A081362 n

end

end A213419.P16796148418842064484

/-! ## A213419.P7063301314578225537

`A161130(A322308(n))+A081362(n)`
-/

namespace A213419.P7063301314578225537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161130 (A322308 n).toNat + A081362 n

end

end A213419.P7063301314578225537

/-!
# A213420: Smallest number k such that the sum of prime factors of k (counted with multiplicity) is n times a square > 1.

The programs for A213420, there is no canonical definition to state claims against.
-/

/-! ## A213420.P17073070702646006466

`A213386(n+1)%A250120(A100752(n))`
-/

namespace A213420.P17073070702646006466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213386 (n + 1)) (A250120 (A100752 n).toNat)

end

end A213420.P17073070702646006466

/-! ## A213420.P1050486536741579037

`A213386(n+1)%A333035(n)`
-/

namespace A213420.P1050486536741579037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213386 (n + 1)) (A333035 n)

end

end A213420.P1050486536741579037

/-! ## A213420.P5347604867388784106

`A000026(A213386(n+1))%A255401(2*n+3)`
-/

namespace A213420.P5347604867388784106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000026 (A213386 (n + 1)).toNat) (A255401 (2 * n + 3))

end

end A213420.P5347604867388784106

/-! ## A213420.P1233419118964626287

`A211537(n+1)%A128940(A129012(n))`
-/

namespace A213420.P1233419118964626287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211537 (n + 1)) (A128940 (A129012 n).toNat)

end

end A213420.P1233419118964626287

/-! ## A213420.P1581767099505069827

`A211537(n+1)+A010815(A106573(n+1))`
-/

namespace A213420.P1581767099505069827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211537 (n + 1) + A010815 (A106573 (n + 1)).toNat

end

end A213420.P1581767099505069827

/-!
# A213421: Real part of Q^n, Q being the quaternion 2+i+j+k.

The programs for A213421, the canonical program `A213421.P9956459779431832372` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213421 has offset 0).

The definition of A213421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213421.P9956459779431832372

`4*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213421

/-- `4*a(n-1)-7*a(n-2)` -/
def P9956459779431832372.Spec : Prop :=
  ∀ n, P9956459779431832372.a n = A213421 n

theorem P9956459779431832372.correct : P9956459779431832372.Spec := by
  intro n
  simp only [A213421]

end A213421

/-!
# A213422: G.f. satisfies: A( A(x) - 4*A(x)^2 ) = x.

The programs for A213422, there is no canonical definition to state claims against.
-/

/-! ## A213422.P17090512241752100875

`A062157(n)*A307103(n)`
-/

namespace A213422.P17090512241752100875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A307103 n

end

end A213422.P17090512241752100875

/-! ## A213422.P503008156035756548

`A033999(n+1)*A307103(n)`
-/

namespace A213422.P503008156035756548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A307103 n

end

end A213422.P503008156035756548

/-! ## A213422.P15705787208299173285

`A307103(n)/A062157(n+2)`
-/

namespace A213422.P15705787208299173285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307103 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A213422.P15705787208299173285

/-! ## A213422.P12108434279811602094

`A307103(n)*A343785(A004207(n))`
-/

namespace A213422.P12108434279811602094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307103 n * A343785 (A004207 n).toNat

end

end A213422.P12108434279811602094

/-! ## A213422.P14874099177722654084

`A257075(A165355(n))*A307103(n)`
-/

namespace A213422.P14874099177722654084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A165355 n).toNat * A307103 n

end

end A213422.P14874099177722654084

/-!
# A213423: Number of partitions of n in which all parts are >= 2 and the largest part occurs at least four times.

The programs for A213423, there is no canonical definition to state claims against.
-/

/-! ## A213423.P13641792944549190166

`Δ[A008484(n+7)]`
-/

namespace A213423.P13641792944549190166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213423.P13641792944549190166

/-! ## A213423.P14235224179731159633

`Δ[A185224(n+7)]`
-/

namespace A213423.P14235224179731159633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213423.P14235224179731159633

/-! ## A213423.P2547236038165193183

`Δ[A026797(n+11)]`
-/

namespace A213423.P2547236038165193183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213423.P2547236038165193183

/-! ## A213423.P10008944949712011194

`Δ[Δ[A121659(n+6)]]`
-/

namespace A213423.P10008944949712011194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121659 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213423.P10008944949712011194

/-! ## A213423.P16098700828876415170

`abs(Δ[A008484(A020719(n))])`
-/

namespace A213423.P16098700828876415170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (A020719 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A213423.P16098700828876415170

/-! ## A213423.P3918716651400232280

`Δ[A199086(A027379(n+2))]`
-/

namespace A213423.P3918716651400232280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199086 (A027379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213423.P3918716651400232280

/-! ## A213423.P12078335884427582347

`Δ[A199086(A055998(n+2))]`
-/

namespace A213423.P12078335884427582347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199086 (A055998 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213423.P12078335884427582347

/-! ## A213423.P15264284130353845534

`Δ[A199086(A056000(n)+7)]`
-/

namespace A213423.P15264284130353845534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199086 (A056000 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213423.P15264284130353845534

/-!
# A213424: Number of partitions of n in which all parts are >= 2 and the largest part occurs at least five times.

The programs for A213424, there is no canonical definition to state claims against.
-/

/-! ## A213424.P16783866568416857268

`Δ[A185325(n+9)]`
-/

namespace A213424.P16783866568416857268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213424.P16783866568416857268

/-! ## A213424.P17276227154660735251

`Δ[A026798(n+14)]`
-/

namespace A213424.P17276227154660735251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213424.P17276227154660735251

/-! ## A213424.P4741284523516222765

`abs(Δ[A185325(A020723(n))])`
-/

namespace A213424.P4741284523516222765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (A020723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A213424.P4741284523516222765

/-! ## A213424.P1824515384013999838

`Δ[A026794(A167499(n+12))]`
-/

namespace A213424.P1824515384013999838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A167499 (n + 12)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213424.P1824515384013999838

/-! ## A213424.P4847240557166014465

`A185325(n+10)-A185325(n+9)`
-/

namespace A213424.P4847240557166014465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (n + 10) - A185325 (n + 9)

end

end A213424.P4847240557166014465

/-! ## A213424.P8968626747282481944

`A026798(n+15)-A026798(n+14)`
-/

namespace A213424.P8968626747282481944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 15) - A026798 (n + 14)

end

end A213424.P8968626747282481944

/-! ## A213424.P9104821106880642718

`Δ[A008484(n+9)-A008484(n+5)]`
-/

namespace A213424.P9104821106880642718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 9) - A008484 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213424.P9104821106880642718

/-! ## A213424.P2909885221164693665

`∑{d}[Δ[A185325(A020723(n))], A000010(#)]`
-/

namespace A213424.P2909885221164693665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (A020723 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A213424.P2909885221164693665

/-! ## A213424.P11982878502812982957

`Δ[A185225(n+9)]`
-/

namespace A213424.P11982878502812982957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185225 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213424.P11982878502812982957

/-!
# A213426: Irregular array T(n,k) of numbers/2 of non-extendable (complete) non-self-adjacent simple paths of each length within a square lattice bounded by rectangles with nodal dimensions n and 9, n >= 2.

The programs for A213426, there is no canonical definition to state claims against.
-/

/-! ## A213426.P5022164768239365787

`A376138(A281464(n+2))`
-/

namespace A213426.P5022164768239365787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376138 (A281464 (n + 2)).toNat

end

end A213426.P5022164768239365787

/-! ## A213426.P10714896723563717967

`2*A028749(A055500(n))`
-/

namespace A213426.P10714896723563717967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028749 (A055500 n).toNat

end

end A213426.P10714896723563717967

/-! ## A213426.P539529009227726936

`A057142(A057577(n)-comp[n²])`
-/

namespace A213426.P539529009227726936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A057577 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A213426.P539529009227726936

/-! ## A213426.P18280710935351349246

`((-1)^n)²*A057142(A057577(n)-(or(1, n)+n))`
-/

namespace A213426.P18280710935351349246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A057142 (A057577 n - (Nat.lor 1 n + n : ℤ)).toNat

end

end A213426.P18280710935351349246

/-! ## A213426.P1769546927897710316

`A057142(A057577(n)-1-A005408(n))`
-/

namespace A213426.P1769546927897710316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A057577 n - 1 - A005408 n).toNat

end

end A213426.P1769546927897710316

/-!
# A213427: Number of ways of refining the partition n^1 to get 1^n.

The programs for A213427, there is no canonical definition to state claims against.
-/

/-! ## A213427.P5517016332843841412

`A067240(A003051(2*(n-1)*(2*n-1)*a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A213427.P5517016332843841412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067240 (A003051 (2 * ((n : ℤ) - 1) * (((2 * n : ℤ) - 1) * a (n - 1)) + 1).toNat + 1).toNat

end

end A213427.P5517016332843841412

/-! ## A213427.P1453851949343809332

`A006855(A006841(n+1))+A006847(n)`
-/

namespace A213427.P1453851949343809332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006855 (A006841 (n + 1)).toNat + A006847 n

end

end A213427.P1453851949343809332

/-! ## A213427.P1116757826024000460

`A280763(n+1)-A328499(A000111(n))`
-/

namespace A213427.P1116757826024000460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280763 (n + 1) - A328499 (A000111 n).toNat

end

end A213427.P1116757826024000460

/-!
# A213428: Numbers k such that k^8 - prime(k) is prime.

The programs for A213428, there is no canonical definition to state claims against.
-/

/-! ## A213428.P6864799836306427735

`A372850(A107083(n+1)+A064766(n))`
-/

namespace A213428.P6864799836306427735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372850 (A107083 (n + 1) + A064766 n).toNat

end

end A213428.P6864799836306427735

/-! ## A213428.P10424548872254052064

`A009223(A143968(n))*A143958(n+1)`
-/

namespace A213428.P10424548872254052064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A143968 n).toNat * A143958 (n + 1)

end

end A213428.P10424548872254052064

/-!
# A213430: The number of n X n upper triangular (0,1)-matrices M with all diagonal entries 1 such that M = f(M^2) and sum(row 1) >= sum(row 2) >= ... >= sum(row n-1) >= sum(row n) = 1 and f maps any nonzero entry to 1.

The programs for A213430, there is no canonical definition to state claims against.
-/

/-! ## A213430.P7605410127641334186

`A256992(A135407(n)+A079291(n))`
-/

namespace A213430.P7605410127641334186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (A135407 n + A079291 n).toNat

end

end A213430.P7605410127641334186

/-!
# A213432: a(n) = 2^(n-3)*binomial(n,4).

The programs for A213432, the canonical program `A213432.P8998872411591045958` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213432 has offset 0).

The definition of A213432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213432.P8998872411591045958

`2^(n-3)*C(n, 4)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213432

/-- `2^(n-3)*C(n, 4)` -/
def P8998872411591045958.Spec : Prop :=
  ∀ n, P8998872411591045958.a n = (A213432 n : ℚ)

end A213432

/-! ## A213432.P18202036459193315408

`2^(n-3)*A000332(n)`
-/

namespace A213432.P18202036459193315408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (A000332 n : ℚ)

end

end A213432.P18202036459193315408

namespace A213432

/-- `2^(n-3)*A000332(n)` -/
def P18202036459193315408.Spec : Prop :=
  ∀ n, P18202036459193315408.a n = (A213432 n : ℚ)

end A213432

/-! ## A213432.P6847861860363699488

`C(n, 4)/4*A011782(n)`
-/

namespace A213432.P6847861860363699488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℚ) / 4 * (A011782 n : ℚ)

end

end A213432.P6847861860363699488

namespace A213432

/-- `C(n, 4)/4*A011782(n)` -/
def P6847861860363699488.Spec : Prop :=
  ∀ n, P6847861860363699488.a n = (A213432 n : ℚ)

end A213432

/-! ## A213432.P15452164390429896130

`2^(n-3)*Δ[A000389(n)]`
-/

namespace A213432.P15452164390429896130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A213432.P15452164390429896130

namespace A213432

/-- `2^(n-3)*Δ[A000389(n)]` -/
def P15452164390429896130.Spec : Prop :=
  ∀ n, P15452164390429896130.a n = (A213432 n : ℚ)

end A213432

/-! ## A213432.P10891816263716217698

`A000332(n)*A171869(n+1)`
-/

namespace A213432.P10891816263716217698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n * A171869 (n + 1)

end

end A213432.P10891816263716217698

namespace A213432

/-- `A000332(n)*A171869(n+1)` -/
def P10891816263716217698.Spec : Prop :=
  ∀ n, P10891816263716217698.a n = A213432 n

end A213432

/-! ## A213432.P2845873208181420980

`Δ[A000389(n)]*A171869(n+1)`
-/

namespace A213432.P2845873208181420980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A171869 (n + 1)

end

end A213432.P2845873208181420980

namespace A213432

/-- `Δ[A000389(n)]*A171869(n+1)` -/
def P2845873208181420980.Spec : Prop :=
  ∀ n, P2845873208181420980.a n = A213432 n

end A213432

/-! ## A213432.P9820434207083214090

`A052796(n)/12`
-/

namespace A213432.P9820434207083214090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052796 n : ℚ) / 12

end

end A213432.P9820434207083214090

namespace A213432

/-- `A052796(n)/12` -/
def P9820434207083214090.Spec : Prop :=
  ∀ n, P9820434207083214090.a n = (A213432 n : ℚ)

end A213432

/-! ## A213432.P12564795868263685134

`A331419(A004277(n))/8`
-/

namespace A213432.P12564795868263685134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331419 (A004277 n).toNat : ℚ) / 8

end

end A213432.P12564795868263685134

namespace A213432

/-- `A331419(A004277(n))/8` -/
def P12564795868263685134.Spec : Prop :=
  ∀ n, P12564795868263685134.a n = (A213432 n : ℚ)

end A213432

/-!
# A213434: a(n) is the number of labeled triangle-free simple graphs on n vertices.

The programs for A213434, there is no canonical definition to state claims against.
-/

/-! ## A213434.P17450461048558171421

`A372170(A014626(n+1))`
-/

namespace A213434.P17450461048558171421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372170 (A014626 (n + 1)).toNat

end

end A213434.P17450461048558171421

/-! ## A213434.P11325195948903928638

`A395695(∑[n]+2)`
-/

namespace A213434.P11325195948903928638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395695 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213434.P11325195948903928638

/-! ## A213434.P5592634317199416833

`record[ratio[A395695(n+1)]]`
-/

namespace A213434.P5592634317199416833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395695 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213434.P5592634317199416833

/-!
# A213435: G.f. A(x) = 1 / (1 - a(0)*x / (1 - a(1)*x / (1 - a(2)*x / ...))).

The programs for A213435, there is no canonical definition to state claims against.
-/

/-! ## A213435.P13417594082299926678

`A193456(2^n)-and(n, floor(-n/2))`
-/

namespace A213435.P13417594082299926678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193456 (2 ^ n) - Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋

end

end A213435.P13417594082299926678

/-! ## A213435.P10657829555541366561

`A321403(A041101(n+1))`
-/

namespace A213435.P10657829555541366561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321403 (A041101 (n + 1)).toNat

end

end A213435.P10657829555541366561

/-!
# A213436: Principal diagonal of the convolution array A212891.

The programs for A213436, the canonical program `A213436.P5608747950138227048` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213436 has offset 1).

The definition of A213436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213436.P5608747950138227048

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=17, a(2)=84, a(3)=260, a(4)=625`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213436

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5608747950138227048.Spec : Prop :=
  ∀ n, P5608747950138227048.a n = A213436 (n + 1)

theorem P5608747950138227048.correct : P5608747950138227048.Spec := by
  intro n
  simp only [A213436, Nat.add_sub_cancel]

end A213436

/-! ## A213436.P9743802432566737754

`∑[∑[n*(11*n+3)+1]]`
-/

namespace A213436.P9743802432566737754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (11 * n + 3) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213436.P9743802432566737754

namespace A213436

/-- `∑[∑[n*(11*n+3)+1]]` -/
def P9743802432566737754.Spec : Prop :=
  ∀ n, (P9743802432566737754.a n : ℤ) = A213436 (n + 1)

end A213436

/-! ## A213436.P18072757915443302498

`or(∑[A100186(n+1)], char[1])`
-/

namespace A213436.P18072757915443302498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100186 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A213436.P18072757915443302498

namespace A213436

/-- `or(∑[A100186(n+1)], char[1])` -/
def P18072757915443302498.Spec : Prop :=
  ∀ n, P18072757915443302498.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P9567798780108729097

`A374083(n+1)-∑[n]²`
-/

namespace A213436.P9567798780108729097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374083 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A213436.P9567798780108729097

namespace A213436

/-- `A374083(n+1)-∑[n]²` -/
def P9567798780108729097.Spec : Prop :=
  ∀ n, P9567798780108729097.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P13352777403934677266

`∑[A063494(n+1)]-∑[n]²`
-/

namespace A213436.P13352777403934677266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063494 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A213436.P13352777403934677266

namespace A213436

/-- `∑[A063494(n+1)]-∑[n]²` -/
def P13352777403934677266.Spec : Prop :=
  ∀ n, P13352777403934677266.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P15395326436986477472

`A072819(n+1)+∑[n+1]²`
-/

namespace A213436.P15395326436986477472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A213436.P15395326436986477472

namespace A213436

/-- `A072819(n+1)+∑[n+1]²` -/
def P15395326436986477472.Spec : Prop :=
  ∀ n, P15395326436986477472.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P2579567204660093321

`A126274(n)+A008911(n+1)`
-/

namespace A213436.P2579567204660093321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 n + A008911 (n + 1)

end

end A213436.P2579567204660093321

namespace A213436

/-- `A126274(n)+A008911(n+1)` -/
def P2579567204660093321.Spec : Prop :=
  ∀ n, P2579567204660093321.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P15690388279532333173

`A153978(n+1)+A053134(n)`
-/

namespace A213436.P15690388279532333173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153978 (n + 1) + A053134 n

end

end A213436.P15690388279532333173

namespace A213436

/-- `A153978(n+1)+A053134(n)` -/
def P15690388279532333173.Spec : Prop :=
  ∀ n, P15690388279532333173.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P2933465912286261600

`A213840(n+1)+A033487(n)`
-/

namespace A213436.P2933465912286261600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1) + A033487 n

end

end A213436.P2933465912286261600

namespace A213436

/-- `A213840(n+1)+A033487(n)` -/
def P2933465912286261600.Spec : Prop :=
  ∀ n, P2933465912286261600.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P7769968825343007686

`A051799(n)+n*A027480(n)`
-/

namespace A213436.P7769968825343007686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051799 n + (n : ℤ) * A027480 n

end

end A213436.P7769968825343007686

namespace A213436

/-- `A051799(n)+n*A027480(n)` -/
def P7769968825343007686.Spec : Prop :=
  ∀ n, P7769968825343007686.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P4038274383106350811

`A117066(n+1)+A083374(n+1)`
-/

namespace A213436.P4038274383106350811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) + A083374 (n + 1)

end

end A213436.P4038274383106350811

namespace A213436

/-- `A117066(n+1)+A083374(n+1)` -/
def P4038274383106350811.Spec : Prop :=
  ∀ n, P4038274383106350811.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P4826123751442597134

`A213843(n+1)+A052149(n+1)`
-/

namespace A213436.P4826123751442597134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213843 (n + 1) + A052149 (n + 1)

end

end A213436.P4826123751442597134

namespace A213436

/-- `A213843(n+1)+A052149(n+1)` -/
def P4826123751442597134.Spec : Prop :=
  ∀ n, P4826123751442597134.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P6328945286007399646

`A002417(n+1)+A000217(n+1)*A045943(n)`
-/

namespace A213436.P6328945286007399646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + A000217 (n + 1) * A045943 n

end

end A213436.P6328945286007399646

namespace A213436

/-- `A002417(n+1)+A000217(n+1)*A045943(n)` -/
def P6328945286007399646.Spec : Prop :=
  ∀ n, P6328945286007399646.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P1322749635011235502

`A179824(n+2)+A001296(n)-A006322(n+1)`
-/

namespace A213436.P1322749635011235502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2) + (A001296 n - A006322 (n + 1))

end

end A213436.P1322749635011235502

namespace A213436

/-- `A179824(n+2)+A001296(n)-A006322(n+1)` -/
def P1322749635011235502.Spec : Prop :=
  ∀ n, P1322749635011235502.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P11989312431975969157

`A000583(n+1)+A000292(n)-A002415(n)`
-/

namespace A213436.P11989312431975969157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + (A000292 n - A002415 n)

end

end A213436.P11989312431975969157

namespace A213436

/-- `A000583(n+1)+A000292(n)-A002415(n)` -/
def P11989312431975969157.Spec : Prop :=
  ∀ n, P11989312431975969157.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P7249633863714026946

`A002415(n+1)+A126274(n)+A002415(n+1)`
-/

namespace A213436.P7249633863714026946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A126274 n + A002415 (n + 1))

end

end A213436.P7249633863714026946

namespace A213436

/-- `A002415(n+1)+A126274(n)+A002415(n+1)` -/
def P7249633863714026946.Spec : Prop :=
  ∀ n, P7249633863714026946.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P9990283671871935997

`A000537(n+1)+A000583(n+1)-A014820(n)`
-/

namespace A213436.P9990283671871935997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A000583 (n + 1) - A014820 n)

end

end A213436.P9990283671871935997

namespace A213436

/-- `A000537(n+1)+A000583(n+1)-A014820(n)` -/
def P9990283671871935997.Spec : Prop :=
  ∀ n, P9990283671871935997.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P4342348587484326235

`A212090(n+1)+A000292(n)-A000332(n+1)`
-/

namespace A213436.P4342348587484326235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212090 (n + 1) + (A000292 n - A000332 (n + 1))

end

end A213436.P4342348587484326235

namespace A213436

/-- `A212090(n+1)+A000292(n)-A000332(n+1)` -/
def P4342348587484326235.Spec : Prop :=
  ∀ n, P4342348587484326235.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P18155104683932234765

`A220212(n+1)+A051799(n)-A007587(n+1)`
-/

namespace A213436.P18155104683932234765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 (n + 1) + (A051799 n - A007587 (n + 1))

end

end A213436.P18155104683932234765

namespace A213436

/-- `A220212(n+1)+A051799(n)-A007587(n+1)` -/
def P18155104683932234765.Spec : Prop :=
  ∀ n, P18155104683932234765.a n = A213436 (n + 1)

end A213436

/-! ## A213436.P4776887418622446247

`A005581(n+1)+A257925(n+1)-A117662(n)`
-/

namespace A213436.P4776887418622446247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 1) + (A257925 (n + 1) - A117662 n)

end

end A213436.P4776887418622446247

namespace A213436

/-- `A005581(n+1)+A257925(n+1)-A117662(n)` -/
def P4776887418622446247.Spec : Prop :=
  ∀ n, P4776887418622446247.a n = A213436 (n + 1)

end A213436

/-!
# A213437: Nonlinear recurrence: a(n) = a(n-1) + (a(n-1)+1)*Product_{j=1..n-2} a(j).

The programs for A213437, there is no canonical definition to state claims against.
-/

/-! ## A213437.P3494269887320235192

`a(n-1)+(a(n-1)+1)*(a(n-1)-a(n-2))*a(n-2)/(a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A213437.P3494269887320235192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + 1) * ((a (n - 1) - a (n - 2)) * (a (n - 2) / (a (n - 2) + 1)))

end

end A213437.P3494269887320235192

/-! ## A213437.P5181659296861053837

`A003095(n)+∑[A001699(n)]`
-/

namespace A213437.P5181659296861053837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003095 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213437.P5181659296861053837

/-! ## A213437.P13683628423768372847

`A003095(n)+Δ[A125046(n)]`
-/

namespace A213437.P13683628423768372847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003095 n + (f1 (n + 1) - f1 n)

end

end A213437.P13683628423768372847

/-! ## A213437.P5944485069232114880

`A003095(n+1)+A003095(n)`
-/

namespace A213437.P5944485069232114880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003095 (n + 1) + A003095 n

end

end A213437.P5944485069232114880

/-! ## A213437.P9415055100654045205

`ratio[A001699(n)]`
-/

namespace A213437.P9415055100654045205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001699 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A213437.P9415055100654045205

/-!
# A213439: A000136(n)/2.

The programs for A213439, there is no canonical definition to state claims against.
-/

/-! ## A213439.P3493480996996809217

`A000136(n+2)/2`
-/

namespace A213439.P3493480996996809217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000136 (n + 2) : ℚ) / 2

end

end A213439.P3493480996996809217

/-! ## A213439.P9498031798778790459

`(n/2+1)*A000682(n+2)`
-/

namespace A213439.P9498031798778790459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A000682 (n + 2) : ℚ)

end

end A213439.P9498031798778790459

/-! ## A213439.P9819042652803737715

`A227167(n+2)/(n%2+1)`
-/

namespace A213439.P9819042652803737715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227167 (n + 2) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A213439.P9819042652803737715

/-! ## A213439.P10951774055027646692

`A227167(n+2)/A000034(n)`
-/

namespace A213439.P10951774055027646692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227167 (n + 2) : ℚ) / (A000034 n : ℚ)

end

end A213439.P10951774055027646692

/-! ## A213439.P17619014990657715060

`A227167(n+2)/Δ[A032766(n)]`
-/

namespace A213439.P17619014990657715060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227167 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A213439.P17619014990657715060

/-!
# A213440: Decimal expansion of 1 + log(gamma), where gamma is Euler's constant A001620.

The programs for A213440, there is no canonical definition to state claims against.
-/

/-! ## A213440.P4183218467669898966

`9-A002389(n)`
-/

namespace A213440.P4183218467669898966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A002389 n

end

end A213440.P4183218467669898966

/-!
# A213441: Number of 2-colored graphs on n labeled nodes.

The programs for A213441, there is no canonical definition to state claims against.
-/

/-! ## A213441.P13301370669135342775

`A047863(n+1)-2`
-/

namespace A213441.P13301370669135342775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047863 (n + 1) - 2

end

end A213441.P13301370669135342775

/-! ## A213441.P15833245368201346766

`2*A058872(n+1)`
-/

namespace A213441.P15833245368201346766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058872 (n + 1)

end

end A213441.P15833245368201346766

/-! ## A213441.P3129564140366852459

`4*A000683(n+1)`
-/

namespace A213441.P3129564140366852459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000683 (n + 1)

end

end A213441.P3129564140366852459

/-! ## A213441.P12371251377543070079

`2*(A000684(n+1)-1)`
-/

namespace A213441.P12371251377543070079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000684 (n + 1) - 1)

end

end A213441.P12371251377543070079

/-! ## A213441.P6278941570204763564

`xor(2, A047863(A130446(n+1)))`
-/

namespace A213441.P6278941570204763564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A047863 (A130446 (n + 1)).toNat)

end

end A213441.P6278941570204763564

/-!
# A213442: Number of 3-colored graphs on n labeled nodes.

The programs for A213442, there is no canonical definition to state claims against.
-/

/-! ## A213442.P7942869437187931794

`6*A058873(n+1)`
-/

namespace A213442.P7942869437187931794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A058873 (n + 1)

end

end A213442.P7942869437187931794

/-! ## A213442.P8673213381405750546

`48*A006201(n+1)`
-/

namespace A213442.P8673213381405750546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * A006201 (n + 1)

end

end A213442.P8673213381405750546

/-!
# A213443: a(0)=5, thereafter a(n) = chromatic number (or Heawood number) Chi(n) of surface of genus n.

The programs for A213443, there is no canonical definition to state claims against.
-/

/-! ## A213443.P6089512790832365290

`floor((sqrt(4*n+1)+2)*sqrt(3))`
-/

namespace A213443.P6089512790832365290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (4 * n + 1 : ℝ) + 2) * Real.sqrt (3 : ℝ)⌋

end

end A213443.P6089512790832365290

/-! ## A213443.P15123944894914409149

`round(sqrt(6/acot(2*n)+1))+3`
-/

namespace A213443.P15123944894914409149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 / SequenceMachineLib.acot (2 * n : ℝ) + 1)) + 3

end

end A213443.P15123944894914409149

/-! ## A213443.P4327802766150651768

`round(sqrt(acot(n)+12*n+1))+3`
-/

namespace A213443.P4327802766150651768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.acot (n : ℝ) + (12 * n + 1 : ℝ))) + 3

end

end A213443.P4327802766150651768

/-! ## A213443.P6744755823959262636

`or(round(sqrt(12*n+1))+3, char[n^3])`
-/

namespace A213443.P6744755823959262636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (12 * n + 1 : ℝ)) + 3) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A213443.P6744755823959262636

/-! ## A213443.P11282566367871051468

`C(2, n+2)+round(sqrt(12*n+1))+3`
-/

namespace A213443.P11282566367871051468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (SequenceMachineLib.roundAway (Real.sqrt (12 * n + 1 : ℝ)) + 3)

end

end A213443.P11282566367871051468

/-! ## A213443.P2633957093089552132

`(round(sqrt(12*n+1))+3)%(a(n-1)+4)` with `a(0)=5`
-/

namespace A213443.P2633957093089552132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (12 * n + 1 : ℝ)) + 3) (a (n - 1) + 4)

end

end A213443.P2633957093089552132

/-! ## A213443.P16356874923576641467

`A000934(n)+C(2, n+2)`
-/

namespace A213443.P16356874923576641467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A213443.P16356874923576641467

/-! ## A213443.P10563941305094366961

`round(sqrt(A063098(n+1)))+3`
-/

namespace A213443.P10563941305094366961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A063098 (n + 1) : ℝ)) + 3

end

end A213443.P10563941305094366961

/-! ## A213443.P7107190595796430272

`A350361(A271114(n))`
-/

namespace A213443.P7107190595796430272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350361 (A271114 n).toNat

end

end A213443.P7107190595796430272

/-! ## A213443.P14740790766103864671

`A000934(n)+A000007(n)`
-/

namespace A213443.P14740790766103864671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n + A000007 n

end

end A213443.P14740790766103864671

/-!
# A213444: Numbers n such that decimal expansion of n^2 contains a 2.

The programs for A213444, the canonical program `A213444.P15579638348533874272` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213444 has offset 1).

The definition of A213444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213444.P8204082172964472102

`sqrt(A213445(n+1))`
-/

namespace A213444.P8204082172964472102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A213445 (n + 1) : ℝ)

end

end A213444.P8204082172964472102

namespace A213444

/-- `sqrt(A213445(n+1))` -/
def P8204082172964472102.Spec : Prop :=
  ∀ n, P8204082172964472102.a n = (A213444 (n + 1) : ℝ)

end A213444

/-! ## A213444.P15579638348533874272

`eq[0, ∏{digits}[n², 2-#]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213444

/-- `eq[0, ∏{digits}[n², 2-#]]` -/
def P15579638348533874272.Spec : Prop :=
  ∀ n, (P15579638348533874272.a n : ℤ) = A213444 (n + 1)

theorem P15579638348533874272.correct : P15579638348533874272.Spec := by
  intro n
  simp only [A213444, Nat.add_sub_cancel]

end A213444

/-! ## A213444.P16252353866416053471

`lt[0, A086010(n)]`
-/

namespace A213444.P16252353866416053471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213444.P16252353866416053471

namespace A213444

/-- `lt[0, A086010(n)]` -/
def P16252353866416053471.Spec : Prop :=
  ∀ n, (P16252353866416053471.a n : ℤ) = A213444 (n + 1)

end A213444

/-! ## A213444.P3579553051259685325

`eq[1, A000010(a(A086010(n)))]` with `a(0)=3`
-/

namespace A213444.P3579553051259685325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A086010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213444.P3579553051259685325

namespace A213444

/-- `eq[1, A000010(a(A086010(n)))]` -/
def P3579553051259685325.Spec : Prop :=
  ∀ n, (P3579553051259685325.a n : ℤ) = A213444 (n + 1)

end A213444

/-! ## A213444.P6323870658294628543

`eq[1, A000045(a(A086010(n)))]` with `a(0)=3`
-/

namespace A213444.P6323870658294628543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A086010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213444.P6323870658294628543

namespace A213444

/-- `eq[1, A000045(a(A086010(n)))]` -/
def P6323870658294628543.Spec : Prop :=
  ∀ n, (P6323870658294628543.a n : ℤ) = A213444 (n + 1)

end A213444

/-! ## A213444.P2524512751239132656

`eq[1, A007318(a(A086010(n)))]` with `a(0)=4`
-/

namespace A213444.P2524512751239132656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A086010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213444.P2524512751239132656

namespace A213444

/-- `eq[1, A007318(a(A086010(n)))]` -/
def P2524512751239132656.Spec : Prop :=
  ∀ n, (P2524512751239132656.a n : ℤ) = A213444 (n + 1)

end A213444

/-!
# A213445: Squares containing a digit 2.

The programs for A213445, the canonical program `A213445.P12591363612529024179` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213445 has offset 1).

The definition of A213445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213445.P12591363612529024179

`A213444(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213445

/-- `A213444(n+1)²` -/
def P12591363612529024179.Spec : Prop :=
  ∀ n, P12591363612529024179.a n = A213445 (n + 1)

theorem P12591363612529024179.correct : P12591363612529024179.Spec := by
  intro n
  simp only [A213445, Nat.add_sub_cancel]

end A213445

/-! ## A213445.P370664371796847777

`lt[0, A086010(n)]²`
-/

namespace A213445.P370664371796847777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A213445.P370664371796847777

namespace A213445

/-- `lt[0, A086010(n)]²` -/
def P370664371796847777.Spec : Prop :=
  ∀ n, (P370664371796847777.a n : ℤ) = A213445 (n + 1)

end A213445

/-! ## A213445.P14563550557652543620

`A000290(lt[0, A086010(n)])`
-/

namespace A213445.P14563550557652543620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213445.P14563550557652543620

namespace A213445

/-- `A000290(lt[0, A086010(n)])` -/
def P14563550557652543620.Spec : Prop :=
  ∀ n, P14563550557652543620.a n = A213445 (n + 1)

end A213445

/-! ## A213445.P1407135675941159540

`eq[1, A000010(a(A086010(n)))]²` with `a(0)=3`
-/

namespace A213445.P1407135675941159540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A086010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A213445.P1407135675941159540

namespace A213445

/-- `eq[1, A000010(a(A086010(n)))]²` -/
def P1407135675941159540.Spec : Prop :=
  ∀ n, (P1407135675941159540.a n : ℤ) = A213445 (n + 1)

end A213445

/-! ## A213445.P11432532486195247143

`A002620(2*A213444(n+1))`
-/

namespace A213445.P11432532486195247143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A213444 (n + 1)).toNat

end

end A213445.P11432532486195247143

namespace A213445

/-- `A002620(2*A213444(n+1))` -/
def P11432532486195247143.Spec : Prop :=
  ∀ n, P11432532486195247143.a n = A213445 (n + 1)

end A213445

/-! ## A213445.P4818259339503702593

`∩[A208273(n+1), n²]`
-/

namespace A213445.P4818259339503702593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208273 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A213445.P4818259339503702593

namespace A213445

/-- `∩[A208273(n+1), n²]` -/
def P4818259339503702593.Spec : Prop :=
  ∀ n, (P4818259339503702593.a n : ℤ) = A213445 (n + 1)

end A213445

/-! ## A213445.P5089323374160277942

`∩[A000290(n), A208273(n+1)]`
-/

namespace A213445.P5089323374160277942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213445.P5089323374160277942

namespace A213445

/-- `∩[A000290(n), A208273(n+1)]` -/
def P5089323374160277942.Spec : Prop :=
  ∀ n, (P5089323374160277942.a n : ℤ) = A213445 (n + 1)

end A213445

/-! ## A213445.P16985596748460988548

`∩[A085960(n+1), A208273(n+1)]`
-/

namespace A213445.P16985596748460988548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213445.P16985596748460988548

namespace A213445

/-- `∩[A085960(n+1), A208273(n+1)]` -/
def P16985596748460988548.Spec : Prop :=
  ∀ n, (P16985596748460988548.a n : ℤ) = A213445 (n + 1)

end A213445

/-! ## A213445.P16065051327831263954

`∩[A089237(n+1), A208273(n+1)]`
-/

namespace A213445.P16065051327831263954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213445.P16065051327831263954

namespace A213445

/-- `∩[A089237(n+1), A208273(n+1)]` -/
def P16065051327831263954.Spec : Prop :=
  ∀ n, (P16065051327831263954.a n : ℤ) = A213445 (n + 1)

end A213445

/-! ## A213445.P3103870157686316596

`∩[A011532(n+1), n²]`
-/

namespace A213445.P3103870157686316596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A213445.P3103870157686316596

namespace A213445

/-- `∩[A011532(n+1), n²]` -/
def P3103870157686316596.Spec : Prop :=
  ∀ n, (P3103870157686316596.a n : ℤ) = A213445 (n + 1)

end A213445

/-!
# A213446: Numerators of higher order Bernoulli numbers.

The programs for A213446, there is no canonical definition to state claims against.
-/

/-! ## A213446.P504891781591706384

`A002657(2*n)`
-/

namespace A213446.P504891781591706384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (2 * n)

end

end A213446.P504891781591706384

/-! ## A213446.P13180837038021512257

`record[A002657(and(n, n+1))]`
-/

namespace A213446.P13180837038021512257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213446.P13180837038021512257

/-! ## A213446.P12170355042233409908

`record[A002657(A230423(n))]`
-/

namespace A213446.P12170355042233409908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A230423 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213446.P12170355042233409908

/-! ## A213446.P6234219309535527215

`record[A002657(A106617(n)+1)]`
-/

namespace A213446.P6234219309535527215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A106617 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213446.P6234219309535527215

/-! ## A213446.P7757453491910869765

`record[A002657(A093178(n)-1)]`
-/

namespace A213446.P7757453491910869765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213446.P7757453491910869765

/-!
# A213447: Numerators of higher order Bernoulli numbers.

The programs for A213447, there is no canonical definition to state claims against.
-/

/-! ## A213447.P11622343463699720286

`A002657(Δ[n²])`
-/

namespace A213447.P11622343463699720286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213447.P11622343463699720286

/-! ## A213447.P13847127887331275369

`lcm(2*n+1, A002657(2*n+1))`
-/

namespace A213447.P13847127887331275369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A002657 (2 * n + 1))

end

end A213447.P13847127887331275369

/-! ## A213447.P17391676242154466508

`record[A002657(A093178(n))]`
-/

namespace A213447.P17391676242154466508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213447.P17391676242154466508

/-! ## A213447.P10648581256093442541

`record[A002657(A106617(n))]`
-/

namespace A213447.P10648581256093442541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A106617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213447.P10648581256093442541

/-! ## A213447.P17096827002500515447

`or(1, A002657(A005408(n)))`
-/

namespace A213447.P17096827002500515447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002657 (A005408 n).toNat)

end

end A213447.P17096827002500515447

/-!
# A213448: Numerators of higher order Bernoulli numbers.

The programs for A213448, there is no canonical definition to state claims against.
-/

/-! ## A213448.P7147786546539345147

`record[-A260328(n+3)]`
-/

namespace A213448.P7147786546539345147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A260328 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213448.P7147786546539345147

/-! ## A213448.P13943437688092616923

`abs(A260328(2*n+3))`
-/

namespace A213448.P13943437688092616923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260328 (2 * n + 3)|

end

end A213448.P13943437688092616923

/-! ## A213448.P497044105739141468

`-A260328(2*(n+1)+1)`
-/

namespace A213448.P497044105739141468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A260328 (2 * (n + 1) + 1)

end

end A213448.P497044105739141468

/-! ## A213448.P6249192597576027561

`record[A000038(n)-A260328(n+2)]`
-/

namespace A213448.P6249192597576027561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A260328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213448.P6249192597576027561

/-! ## A213448.P10471655528928755857

`record[A193356(n+2)-A260328(n+3)]`
-/

namespace A213448.P10471655528928755857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 2) - A260328 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213448.P10471655528928755857

/-!
# A213449: Denominators of higher order Bernoulli numbers.

The programs for A213449, there is no canonical definition to state claims against.
-/

/-! ## A213449.P13684215491389599991

`A001898(2*n)`
-/

namespace A213449.P13684215491389599991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001898 (2 * n)

end

end A213449.P13684215491389599991

/-! ## A213449.P17847417499456159959

`4^n*A260326(n)`
-/

namespace A213449.P17847417499456159959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A260326 n

end

end A213449.P17847417499456159959

/-! ## A213449.P3784078469830883283

`Δ[n²]*A163176(Δ[n²])`
-/

namespace A213449.P3784078469830883283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A163176 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A213449.P3784078469830883283

/-! ## A213449.P6136709095922284053

`lcm(A000302(n), A260326(n))`
-/

namespace A213449.P6136709095922284053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A260326 n)

end

end A213449.P6136709095922284053

/-! ## A213449.P13412641868917653079

`A000302(n)*A290030(2*n)`
-/

namespace A213449.P13412641868917653079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A290030 (2 * n)

end

end A213449.P13412641868917653079

/-!
# A213450: Numerators of higher order Bernoulli numbers.

The programs for A213450, there is no canonical definition to state claims against.
-/

/-! ## A213450.P4368015165544638633

`record[A260328(n+2)]`
-/

namespace A213450.P4368015165544638633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213450.P4368015165544638633

/-! ## A213450.P3455155014749559194

`A260328(2*(n+1))`
-/

namespace A213450.P3455155014749559194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260328 (2 * (n + 1))

end

end A213450.P3455155014749559194

/-! ## A213450.P13498910075269656741

`abs(A260328(Δ[A002378(n)]))`
-/

namespace A213450.P13498910075269656741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260328 (f1 (n + 1) - f1 n).toNat|

end

end A213450.P13498910075269656741

/-! ## A213450.P16954574923480461572

`abs(A260328(Δ[A027688(n)]))`
-/

namespace A213450.P16954574923480461572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260328 (f1 (n + 1) - f1 n).toNat|

end

end A213450.P16954574923480461572

/-! ## A213450.P16106706580781087915

`abs(A260328(comp[A193356(n+1)]))`
-/

namespace A213450.P16106706580781087915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A213450.P16106706580781087915

/-!
# A213451: Number of fixed triangular strip polyedges with n edges.

The programs for A213451, there is no canonical definition to state claims against.
-/

/-! ## A213451.P6010457978693505436

`Δ[A177414(n)/2]`
-/

namespace A213451.P6010457978693505436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177414 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213451.P6010457978693505436

/-! ## A213451.P1142512887763716306

`A001334(n+1)/2`
-/

namespace A213451.P1142512887763716306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001334 (n + 1) : ℚ) / 2

end

end A213451.P1142512887763716306

/-! ## A213451.P10473120727416144314

`Δ[∑[A001334(n)]/2]`
-/

namespace A213451.P10473120727416144314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213451.P10473120727416144314

/-! ## A213451.P3918352448328606229

`record[A001334(A123108(n))/2]`
-/

namespace A213451.P3918352448328606229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001334 (A123108 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213451.P3918352448328606229

/-! ## A213451.P799222868092195728

`floor(A001334(A077168(n))/2)`
-/

namespace A213451.P799222868092195728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001334 (A077168 n).toNat : ℚ) / 2⌋

end

end A213451.P799222868092195728

/-!
# A213452: A001251(n)/2.

The programs for A213452, there is no canonical definition to state claims against.
-/

/-! ## A213452.P5824358954021652732

`A001251(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213452.P5824358954021652732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001251 (n + 1) : ℚ) / 2

end

end A213452.P5824358954021652732

/-! ## A213452.P11364070161260605048

`A211318(A133263(n)+1)/2`
-/

namespace A213452.P11364070161260605048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211318 (A133263 n + 1).toNat : ℚ) / 2

end

end A213452.P11364070161260605048

/-! ## A213452.P6419684125096702492

`A211318(A238531(n+1)+1)/2`
-/

namespace A213452.P6419684125096702492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211318 (A238531 (n + 1) + 1).toNat : ℚ) / 2

end

end A213452.P6419684125096702492

/-! ## A213452.P4923420363174680669

`2^A008683(A133410(n))*A001251(n+1)`
-/

namespace A213452.P4923420363174680669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A133410 n).toNat : ℤ) * (A001251 (n + 1) : ℚ)

end

end A213452.P4923420363174680669

/-!
# A213453: Self-avoiding walks on the f.c.c. lattice.

The programs for A213453, there is no canonical definition to state claims against.
-/

/-! ## A213453.P11350347021524198772

`ceil(A001336(n)/2)`
-/

namespace A213453.P11350347021524198772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001336 n : ℚ) / 2⌉

end

end A213453.P11350347021524198772

/-! ## A213453.P9776936310396246955

`A001336(n)/A108248(n)`
-/

namespace A213453.P9776936310396246955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001336 n : ℚ) / (A108248 n : ℚ)

end

end A213453.P9776936310396246955

/-! ## A213453.P14666621742083033594

`A001336(n)/sqrt(A123932(n))`
-/

namespace A213453.P14666621742083033594
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001336 n : ℝ) / Real.sqrt (A123932 n : ℝ)

end

end A213453.P14666621742083033594

/-! ## A213453.P12628542876327354157

`A001336(n)/ratio[A011782(n)]`
-/

namespace A213453.P12628542876327354157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001336 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A213453.P12628542876327354157

/-!
# A213454: a(n) = A001253(n)/2.

The programs for A213454, there is no canonical definition to state claims against.
-/

/-! ## A213454.P6318595375944729825

`A001253(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213454.P6318595375944729825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001253 (n + 1) : ℚ) / 2

end

end A213454.P6318595375944729825

/-! ## A213454.P18295012069842434809

`A211318(A077169(n+1))/2`
-/

namespace A213454.P18295012069842434809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211318 (A077169 (n + 1)).toNat : ℚ) / 2

end

end A213454.P18295012069842434809

/-! ## A213454.P9870036121395291876

`A014682(A001253(n+1))`
-/

namespace A213454.P9870036121395291876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001253 (n + 1)).toNat

end

end A213454.P9870036121395291876

/-!
# A213455: 90*A002451(n).

The programs for A213455, the canonical program `A213455.P3433512461555367053` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213455 has offset 0).

The definition of A213455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213455.P3433512461555367053

`90*A002451(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213455

/-- `90*A002451(n)` -/
def P3433512461555367053.Spec : Prop :=
  ∀ n, P3433512461555367053.a n = A213455 n

theorem P3433512461555367053.correct : P3433512461555367053.Spec := by
  intro n
  simp only [A213455]

end A213455

/-! ## A213455.P6756494821591317376

`∑[6*A210448(2*(n+1))]`
-/

namespace A213455.P6756494821591317376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A210448 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213455.P6756494821591317376

namespace A213455

/-- `∑[6*A210448(2*(n+1))]` -/
def P6756494821591317376.Spec : Prop :=
  ∀ n, P6756494821591317376.a n = A213455 n

end A213455

/-! ## A213455.P13305057557516413035

`6*A156289(A167614(n+1))`
-/

namespace A213455.P13305057557516413035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A156289 (A167614 (n + 1)).toNat

end

end A213455.P13305057557516413035

namespace A213455

/-- `6*A156289(A167614(n+1))` -/
def P13305057557516413035.Spec : Prop :=
  ∀ n, P13305057557516413035.a n = A213455 n

end A213455

/-! ## A213455.P1241477126822167445

`6*A156289(A046691(n)+7)`
-/

namespace A213455.P1241477126822167445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A156289 (A046691 n + 7).toNat

end

end A213455.P1241477126822167445

namespace A213455

/-- `6*A156289(A046691(n)+7)` -/
def P1241477126822167445.Spec : Prop :=
  ∀ n, P1241477126822167445.a n = A213455 n

end A213455

/-! ## A213455.P9192442329205345209

`A241171(∑[n+2]+4)`
-/

namespace A213455.P9192442329205345209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241171 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A213455.P9192442329205345209

namespace A213455

/-- `A241171(∑[n+2]+4)` -/
def P9192442329205345209.Spec : Prop :=
  ∀ n, P9192442329205345209.a n = A213455 n

end A213455

/-!
# A213457: Intertwining numbers.

The programs for A213457, there is no canonical definition to state claims against.
-/

/-! ## A213457.P10979269973930723014

`A368186(n)+A176615(A001187(n))`
-/

namespace A213457.P10979269973930723014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368186 n + A176615 (A001187 n).toNat

end

end A213457.P10979269973930723014

/-!
# A213458: Number of 0..3 arrays of length n+3 with sum less than 6 in any length 4 subsequence (=less than 50% duty cycle).

The programs for A213458, there is no canonical definition to state claims against.
-/

/-! ## A213458.P17389946710902791360

`A213464(∑[n+2])`
-/

namespace A213458.P17389946710902791360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213458.P17389946710902791360

/-! ## A213458.P11223017000545349199

`record[A213464(Δ[A003453(n+5)])]`
-/

namespace A213458.P11223017000545349199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213458.P11223017000545349199

/-! ## A213458.P16613546407236858603

`record[A213464(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A213458.P16613546407236858603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213458.P16613546407236858603

/-!
# A213459: Number of 0..3 arrays of length n+5 with sum less than 9 in any length 6 subsequence (=less than 50% duty cycle).

The programs for A213459, there is no canonical definition to state claims against.
-/

/-! ## A213459.P13489523482988220638

`A213464(∑[n+3]+1)`
-/

namespace A213459.P13489523482988220638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213459.P13489523482988220638

/-! ## A213459.P13398459651030486649

`A121238(n)²*A213464(A034856(n+2))`
-/

namespace A213459.P13398459651030486649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n ^ 2 * A213464 (A034856 (n + 2)).toNat

end

end A213459.P13398459651030486649

/-! ## A213459.P17223751971191687442

`lcm(A121238(n+1)², A213464(A034856(n+2)))`
-/

namespace A213459.P17223751971191687442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121238 (n + 1) ^ 2) (A213464 (A034856 (n + 2)).toNat)

end

end A213459.P17223751971191687442

/-!
# A213460: Number of 0..3 arrays of length n+7 with sum less than 12 in any length 6 subsequence (=less than 50% duty cycle).

The programs for A213460, there is no canonical definition to state claims against.
-/

/-! ## A213460.P5700822882952449106

`A213464(A027379(n+2))`
-/

namespace A213460.P5700822882952449106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A027379 (n + 2)).toNat

end

end A213460.P5700822882952449106

/-! ## A213460.P7949421389861875083

`A213464(A055998(n+2))`
-/

namespace A213460.P7949421389861875083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A055998 (n + 2)).toNat

end

end A213460.P7949421389861875083

/-! ## A213460.P4767745291729500336

`A213464(A155212(n)+5)`
-/

namespace A213460.P4767745291729500336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A155212 n + 5).toNat

end

end A213460.P4767745291729500336

/-! ## A213460.P15309298870831933580

`A213464(A056000(n)+7)`
-/

namespace A213460.P15309298870831933580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A056000 n + 7).toNat

end

end A213460.P15309298870831933580

/-! ## A213460.P14985581723838955670

`A213464(A052905(n+1)+2)`
-/

namespace A213460.P14985581723838955670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A052905 (n + 1) + 2).toNat

end

end A213460.P14985581723838955670

/-!
# A213461: Number of 0..3 arrays of length n+9 with sum less than 15 in any length 10 subsequence (=less than 50% duty cycle).

The programs for A213461, there is no canonical definition to state claims against.
-/

/-! ## A213461.P18064276051658216079

`A213464(A056115(n)+11)`
-/

namespace A213461.P18064276051658216079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A056115 n + 11).toNat

end

end A213461.P18064276051658216079

/-! ## A213461.P7240744623807023792

`A213464(eq[2, A092921(n)])`
-/

namespace A213461.P7240744623807023792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213461.P7240744623807023792

/-! ## A213461.P9807370392727569099

`A213464(eq[4, A193592(n)])`
-/

namespace A213461.P9807370392727569099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213461.P9807370392727569099

/-! ## A213461.P13322606341348270489

`A213464(Δ[A023545(n+1)])`
-/

namespace A213461.P13322606341348270489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (f1 (n + 1) - f1 n).toNat

end

end A213461.P13322606341348270489

/-! ## A213461.P9740796457270822364

`A213464(A027379(n+3)-1)`
-/

namespace A213461.P9740796457270822364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A027379 (n + 3) - 1).toNat

end

end A213461.P9740796457270822364

/-!
# A213462: Number of 0..3 arrays of length n+11 with sum less than 18 in any length 12 subsequence (=less than 50% duty cycle).

The programs for A213462, there is no canonical definition to state claims against.
-/

/-! ## A213462.P2948174242097679312

`A213464(eq[3, A219347(n)])`
-/

namespace A213462.P2948174242097679312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213462.P2948174242097679312

/-! ## A213462.P4087362954569300150

`A213464(eq[5, A193592(n)])`
-/

namespace A213462.P4087362954569300150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213462.P4087362954569300150

/-! ## A213462.P2745840749978638537

`A213464(eq[8, A258709(n)])`
-/

namespace A213462.P2745840749978638537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213462.P2745840749978638537

/-! ## A213462.P8321029972348002767

`A213464(eq[8, A243070(n+1)])`
-/

namespace A213462.P8321029972348002767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213462.P8321029972348002767

/-! ## A213462.P12050561994769711330

`A213464(Δ[Δ[A006504(n+1)]])`
-/

namespace A213462.P12050561994769711330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (f1 (n + 1) - f1 n).toNat

end

end A213462.P12050561994769711330

/-!
# A213463: Number of 0..3 arrays of length n+13 with sum less than 21 in any length 14 subsequence (=less than 50% duty cycle).

The programs for A213463, there is no canonical definition to state claims against.
-/

/-! ## A213463.P13238948761319859900

`A213464(A055999(n+4))`
-/

namespace A213463.P13238948761319859900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A055999 (n + 4)).toNat

end

end A213463.P13238948761319859900

/-! ## A213463.P4775073083129356687

`A213464(eq[4, A219347(n)])`
-/

namespace A213463.P4775073083129356687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213463.P4775073083129356687

/-! ## A213463.P8393087183110286283

`A213464(eq[6, A193592(n)])`
-/

namespace A213463.P8393087183110286283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213463.P8393087183110286283

/-! ## A213463.P18364823503732967612

`A213464(A000124(n+7)-7)`
-/

namespace A213463.P18364823503732967612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A000124 (n + 7) - 7).toNat

end

end A213463.P18364823503732967612

/-! ## A213463.P13738898486617820370

`A213464(eq[7, A200370(n+1)])`
-/

namespace A213463.P13738898486617820370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213463.P13738898486617820370

/-!
# A213465: Number of 0..3 arrays of length 2*n with sum less than 3*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213465, there is no canonical definition to state claims against.
-/

/-! ## A213465.P18400169714175280289

`A213464(∑[n]+1)`
-/

namespace A213465.P18400169714175280289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213465.P18400169714175280289

/-! ## A213465.P16241421129387037430

`record[A213464(n+1)]`
-/

namespace A213465.P16241421129387037430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213465.P16241421129387037430

/-! ## A213465.P2193607895764068873

`lcm(2, A213464(A000124(n)))`
-/

namespace A213465.P2193607895764068873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A213464 (A000124 n).toNat)

end

end A213465.P2193607895764068873

/-! ## A213465.P470117227670464460

`A213464(A000124(n))+A066035(n)`
-/

namespace A213465.P470117227670464460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A000124 n).toNat + A066035 n

end

end A213465.P470117227670464460

/-! ## A213465.P9346238779660033582

`A107065(A022282(n+1))`
-/

namespace A213465.P9346238779660033582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107065 (A022282 (n + 1)).toNat

end

end A213465.P9346238779660033582

/-!
# A213466: Number of 0..3 arrays of length 2*n+1 with sum less than 3*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213466, there is no canonical definition to state claims against.
-/

/-! ## A213466.P5566169965266133346

`A213464(∑[n+1]+2)`
-/

namespace A213466.P5566169965266133346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213466.P5566169965266133346

/-! ## A213466.P4946937925136451770

`record[A213464(A133263(abs(1-n)))]`
-/

namespace A213466.P4946937925136451770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213466.P4946937925136451770

/-! ## A213466.P18041136761828149867

`record[A010054(n+1)*A213464(n+3)]`
-/

namespace A213466.P18041136761828149867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A213464 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213466.P18041136761828149867

/-! ## A213466.P17625977978014213004

`record[A213464(n+2)%Δ[A213464(n+2)]]`
-/

namespace A213466.P17625977978014213004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213464 (n + 2)) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213466.P17625977978014213004

/-! ## A213466.P3976380379381351518

`record[gcd(A122287(n), A213464(n+3))]`
-/

namespace A213466.P3976380379381351518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122287 n) (A213464 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213466.P3976380379381351518

/-!
# A213467: Number of 0..3 arrays of length 2*n+2 with sum less than 3*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213467, there is no canonical definition to state claims against.
-/

/-! ## A213467.P1461818501397385093

`A213464(∑[n+2]+4)`
-/

namespace A213467.P1461818501397385093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A213467.P1461818501397385093

/-! ## A213467.P150079932112310957

`A213464(A167614(n+1))+A066035(n)`
-/

namespace A213467.P150079932112310957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A167614 (n + 1)).toNat + A066035 n

end

end A213467.P150079932112310957

/-! ## A213467.P4677723045392755893

`lcm(A006466(n), A213464(A167614(n+1)))`
-/

namespace A213467.P4677723045392755893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A213464 (A167614 (n + 1)).toNat)

end

end A213467.P4677723045392755893

/-! ## A213467.P5973552277662383623

`or(A000007(n), A213464(A167614(n+1)))`
-/

namespace A213467.P5973552277662383623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A213464 (A167614 (n + 1)).toNat)

end

end A213467.P5973552277662383623

/-! ## A213467.P7160742193204426318

`or(A000038(n), A213464(A167614(n+1)))`
-/

namespace A213467.P7160742193204426318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A213464 (A167614 (n + 1)).toNat)

end

end A213467.P7160742193204426318

/-!
# A213468: Number of 0..3 arrays of length 2*n+3 with sum less than 3*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213468, there is no canonical definition to state claims against.
-/

/-! ## A213468.P8287862750020370963

`A213464(A052905(n)+9)`
-/

namespace A213468.P8287862750020370963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A052905 n + 9).toNat

end

end A213468.P8287862750020370963

/-! ## A213468.P16384455348043656641

`A213464(A055999(n)+10)`
-/

namespace A213468.P16384455348043656641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A055999 n + 10).toNat

end

end A213468.P16384455348043656641

/-! ## A213468.P10257818893353315737

`A213464(A167614(n+2)+1)`
-/

namespace A213468.P10257818893353315737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A167614 (n + 2) + 1).toNat

end

end A213468.P10257818893353315737

/-! ## A213468.P13936904221310281749

`A213464(A166136(n+2)-2)`
-/

namespace A213468.P13936904221310281749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A166136 (n + 2) - 2).toNat

end

end A213468.P13936904221310281749

/-! ## A213468.P6147466486859491296

`A213464(A166136(n+1)+1+n)`
-/

namespace A213468.P6147466486859491296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A213468.P6147466486859491296

/-!
# A213469: Number of 0..3 arrays of length 2*n+4 with sum less than 3*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213469, there is no canonical definition to state claims against.
-/

/-! ## A213469.P765709313081838680

`A213464(A155212(n)+13)`
-/

namespace A213469.P765709313081838680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A155212 n + 13).toNat

end

end A213469.P765709313081838680

/-! ## A213469.P8536740945447001578

`A213464(A056000(n)+15)`
-/

namespace A213469.P8536740945447001578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A056000 n + 15).toNat

end

end A213469.P8536740945447001578

/-! ## A213469.P12551948987052241912

`A213464(A166136(n+3)-1)`
-/

namespace A213469.P12551948987052241912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A166136 (n + 3) - 1).toNat

end

end A213469.P12551948987052241912

/-! ## A213469.P13191963350408415222

`A213464(eq[6, A131818(n+1)])`
-/

namespace A213469.P13191963350408415222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213469.P13191963350408415222

/-! ## A213469.P14504463133309221833

`A213464(A000124(n+5)-(n+1))`
-/

namespace A213469.P14504463133309221833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A213469.P14504463133309221833

/-!
# A213470: Number of 0..3 arrays of length 2*n+5 with sum less than 3*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213470, there is no canonical definition to state claims against.
-/

/-! ## A213470.P7008914087940350685

`A213464(A056115(n)+21)`
-/

namespace A213470.P7008914087940350685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A056115 n + 21).toNat

end

end A213470.P7008914087940350685

/-! ## A213470.P6250462099702320551

`A213464(A000124(n+5)+5)`
-/

namespace A213470.P6250462099702320551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A000124 (n + 5) + 5).toNat

end

end A213470.P6250462099702320551

/-! ## A213470.P17308145842427999791

`A213464(A000217(n+5)+6)`
-/

namespace A213470.P17308145842427999791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A000217 (n + 5) + 6).toNat

end

end A213470.P17308145842427999791

/-! ## A213470.P11584361726519702793

`A213464(A027379(n+3)+9)`
-/

namespace A213470.P11584361726519702793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A027379 (n + 3) + 9).toNat

end

end A213470.P11584361726519702793

/-! ## A213470.P9980012275716023031

`A213464(eq[7, A131818(n+1)])`
-/

namespace A213470.P9980012275716023031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213470.P9980012275716023031

/-!
# A213471: Number of 0..3 arrays of length 2*n+6 with sum less than 3*n in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213471, there is no canonical definition to state claims against.
-/

/-! ## A213471.P14884419454179583935

`A213464(A166136(n+5)+1)`
-/

namespace A213471.P14884419454179583935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A166136 (n + 5) + 1).toNat

end

end A213471.P14884419454179583935

/-! ## A213471.P15091066837622153005

`A213464(A167614(n+5)+4)`
-/

namespace A213471.P15091066837622153005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A167614 (n + 5) + 4).toNat

end

end A213471.P15091066837622153005

/-! ## A213471.P11200620218503725497

`A213464(A052905(n+3)+12)`
-/

namespace A213471.P11200620218503725497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (A052905 (n + 3) + 12).toNat

end

end A213471.P11200620218503725497

/-! ## A213471.P10941701688621203088

`A213464(eq[6, A002262(n)]+1)`
-/

namespace A213471.P10941701688621203088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A213471.P10941701688621203088

/-! ## A213471.P22069837686586018

`A213464(eq[8, A131818(n+1)])`
-/

namespace A213471.P22069837686586018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213471.P22069837686586018

/-!
# A213472: Period 20, repeat [1, 4, 0, 9, 1, 6, 4, 5, 9, 6, 6, 9, 5, 4, 6, 1, 9, 0, 4, 1].

The programs for A213472, the canonical program `A213472.P14633443362313727190` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213472 has offset 0).

The definition of A213472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213472.P14633443362313727190

`A010879(A005448(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213472

/-- `A010879(A005448(n+1))` -/
def P14633443362313727190.Spec : Prop :=
  ∀ n, P14633443362313727190.a n = A213472 n

theorem P14633443362313727190.correct : P14633443362313727190.Spec := by
  intro n
  simp only [A213472]

end A213472

/-!
# A213479: Number of (w,x,y) with all terms in {0,...,n} and |w-x|+|x-y| = w+x+y.

The programs for A213479, the canonical program `A213479.P8206838389682766104` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213479 has offset 0).

The definition of A213479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213479.P8206838389682766104

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=18, a(4)=30`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213479

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8206838389682766104.Spec : Prop :=
  ∀ n, P8206838389682766104.a n = A213479 n

theorem P8206838389682766104.correct : P8206838389682766104.Spec := by
  intro n
  simp only [A213479]

end A213479

/-! ## A213479.P16303003837744278920

`∑[n²%(or(1, n)+n)+1+n]`
-/

namespace A213479.P16303003837744278920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (Nat.lor 1 n + n) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213479.P16303003837744278920

namespace A213479

/-- `∑[n²%(or(1, n)+n)+1+n]` -/
def P16303003837744278920.Spec : Prop :=
  ∀ n, (P16303003837744278920.a n : ℤ) = A213479 n

end A213479

/-! ## A213479.P8918119129298357326

`∑[9-a(n-1)]+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A213479.P8918119129298357326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A213479.P8918119129298357326

namespace A213479

/-- `∑[9-a(n-1)]+a(n-2)` -/
def P8918119129298357326.Spec : Prop :=
  ∀ n, P8918119129298357326.a n = A213479 n

end A213479

/-! ## A213479.P15356055350823476334

`∑[lcm(2, 3*n+1)/2]+gcd(n, ∑[n])`
-/

namespace A213479.P15356055350823476334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A213479.P15356055350823476334

namespace A213479

/-- `∑[lcm(2, 3*n+1)/2]+gcd(n, ∑[n])` -/
def P15356055350823476334.Spec : Prop :=
  ∀ n, P15356055350823476334.a n = (A213479 n : ℚ)

end A213479

/-! ## A213479.P16548673683996705526

`∑[A187012(n+2)+n]`
-/

namespace A213479.P16548673683996705526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187012 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213479.P16548673683996705526

namespace A213479

/-- `∑[A187012(n+2)+n]` -/
def P16548673683996705526.Spec : Prop :=
  ∀ n, P16548673683996705526.a n = A213479 n

end A213479

/-! ## A213479.P15070585828647325921

`(n+1)^3-A213480(n)`
-/

namespace A213479.P15070585828647325921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213480 n

end

end A213479.P15070585828647325921

namespace A213479

/-- `(n+1)^3-A213480(n)` -/
def P15070585828647325921.Spec : Prop :=
  ∀ n, P15070585828647325921.a n = A213479 n

end A213479

/-! ## A213479.P5926351251740691552

`A008805(n)+n*(n+2)`
-/

namespace A213479.P5926351251740691552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + (n * (n + 2) : ℤ)

end

end A213479.P5926351251740691552

namespace A213479

/-- `A008805(n)+n*(n+2)` -/
def P5926351251740691552.Spec : Prop :=
  ∀ n, P5926351251740691552.a n = A213479 n

end A213479

/-! ## A213479.P4304592435841542595

`A102214(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A213479.P4304592435841542595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102214 n - (a (n - 1) + 1)

end

end A213479.P4304592435841542595

namespace A213479

/-- `A102214(n)-(a(n-1)+1)` -/
def P4304592435841542595.Spec : Prop :=
  ∀ n, P4304592435841542595.a n = A213479 n

end A213479

/-! ## A213479.P9562722484751056094

`A000217(∑[char[2*n]])+n*(n+2)`
-/

namespace A213479.P9562722484751056094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) + (n * (n + 2) : ℤ)

end

end A213479.P9562722484751056094

namespace A213479

/-- `A000217(∑[char[2*n]])+n*(n+2)` -/
def P9562722484751056094.Spec : Prop :=
  ∀ n, P9562722484751056094.a n = A213479 n

end A213479

/-! ## A213479.P7223497088824161738

`A195014(n)+A084265(n)`
-/

namespace A213479.P7223497088824161738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195014 n + A084265 n

end

end A213479.P7223497088824161738

namespace A213479

/-- `A195014(n)+A084265(n)` -/
def P7223497088824161738.Spec : Prop :=
  ∀ n, P7223497088824161738.a n = A213479 n

end A213479

/-! ## A213479.P8884256791709792012

`A213483(n)-A006918(n)`
-/

namespace A213479.P8884256791709792012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213483 n - A006918 n

end

end A213479.P8884256791709792012

namespace A213479

/-- `A213483(n)-A006918(n)` -/
def P8884256791709792012.Spec : Prop :=
  ∀ n, P8884256791709792012.a n = A213479 n

end A213479

/-! ## A213479.P3892100526398665531

`A198392(n)-A059841(n)`
-/

namespace A213479.P3892100526398665531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198392 n - A059841 n

end

end A213479.P3892100526398665531

namespace A213479

/-- `A198392(n)-A059841(n)` -/
def P3892100526398665531.Spec : Prop :=
  ∀ n, P3892100526398665531.a n = A213479 n

end A213479

/-! ## A213479.P11420507295294828468

`A213481(n)-A213482(n)`
-/

namespace A213479.P11420507295294828468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213481 n - A213482 n

end

end A213479.P11420507295294828468

namespace A213479

/-- `A213481(n)-A213482(n)` -/
def P11420507295294828468.Spec : Prop :=
  ∀ n, P11420507295294828468.a n = A213479 n

end A213479

/-! ## A213479.P16712527768008567708

`A005563(n)+∑[A027656(n)]`
-/

namespace A213479.P16712527768008567708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213479.P16712527768008567708

namespace A213479

/-- `A005563(n)+∑[A027656(n)]` -/
def P16712527768008567708.Spec : Prop :=
  ∀ n, P16712527768008567708.a n = A213479 n

end A213479

/-! ## A213479.P13298988543738486324

`A026741(n)+∑[A165355(n)]`
-/

namespace A213479.P13298988543738486324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213479.P13298988543738486324

namespace A213479

/-- `A026741(n)+∑[A165355(n)]` -/
def P13298988543738486324.Spec : Prop :=
  ∀ n, P13298988543738486324.a n = A213479 n

end A213479

/-! ## A213479.P16989868382924915449

`A135370(n+1)+A001318(n)`
-/

namespace A213479.P16989868382924915449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (n + 1) + A001318 n

end

end A213479.P16989868382924915449

namespace A213479

/-- `A135370(n+1)+A001318(n)` -/
def P16989868382924915449.Spec : Prop :=
  ∀ n, P16989868382924915449.a n = A213479 n

end A213479

/-! ## A213479.P4777027364892379823

`A210978(n)+A004116(n+1)`
-/

namespace A213479.P4777027364892379823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 n + A004116 (n + 1)

end

end A213479.P4777027364892379823

namespace A213479

/-- `A210978(n)+A004116(n+1)` -/
def P4777027364892379823.Spec : Prop :=
  ∀ n, P4777027364892379823.a n = A213479 n

end A213479

/-! ## A213479.P8481208023714110439

`A195160(n)+A114753(n+1)`
-/

namespace A213479.P8481208023714110439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 n + A114753 (n + 1)

end

end A213479.P8481208023714110439

namespace A213479

/-- `A195160(n)+A114753(n+1)` -/
def P8481208023714110439.Spec : Prop :=
  ∀ n, P8481208023714110439.a n = A213479 n

end A213479

/-! ## A213479.P8300091042616204046

`A211539(n)+A184005(n+1)`
-/

namespace A213479.P8300091042616204046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n + A184005 (n + 1)

end

end A213479.P8300091042616204046

namespace A213479

/-- `A211539(n)+A184005(n+1)` -/
def P8300091042616204046.Spec : Prop :=
  ∀ n, P8300091042616204046.a n = A213479 n

end A213479

/-!
# A213480: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| != w+x+y.

The programs for A213480, the canonical program `A213480.P7844553582656096342` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213480 has offset 0).

The definition of A213480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213480.P7844553582656096342

`(n+1)^3-A213479(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213480

/-- `(n+1)^3-A213479(n)` -/
def P7844553582656096342.Spec : Prop :=
  ∀ n, P7844553582656096342.a n = A213480 n

theorem P7844553582656096342.correct : P7844553582656096342.Spec := by
  intro n
  simp only [A213480]

end A213480

/-! ## A213480.P11507017575907879079

`A213482(n)+A006918(n)`
-/

namespace A213480.P11507017575907879079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + A006918 n

end

end A213480.P11507017575907879079

namespace A213480

/-- `A213482(n)+A006918(n)` -/
def P11507017575907879079.Spec : Prop :=
  ∀ n, P11507017575907879079.a n = A213480 n

end A213480

/-! ## A213480.P14525746908045949048

`A213502(n)-∑[A142150(n)]`
-/

namespace A213480.P14525746908045949048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213502 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213480.P14525746908045949048

namespace A213480

/-- `A213502(n)-∑[A142150(n)]` -/
def P14525746908045949048.Spec : Prop :=
  ∀ n, P14525746908045949048.a n = A213480 n

end A213480

/-! ## A213480.P3753555841111363330

`A245996(n+1)-A198392(n)`
-/

namespace A213480.P3753555841111363330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245996 (n + 1) - A198392 n

end

end A213480.P3753555841111363330

namespace A213480

/-- `A245996(n+1)-A198392(n)` -/
def P3753555841111363330.Spec : Prop :=
  ∀ n, P3753555841111363330.a n = A213480 n

end A213480

/-! ## A213480.P13060142021654847697

`Δ[n*A045947(n)]-A004526(n)`
-/

namespace A213480.P13060142021654847697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004526 n

end

end A213480.P13060142021654847697

namespace A213480

/-- `Δ[n*A045947(n)]-A004526(n)` -/
def P13060142021654847697.Spec : Prop :=
  ∀ n, P13060142021654847697.a n = A213480 n

end A213480

/-! ## A213480.P5703608229503352546

`A006918(n)+A213481(n)-A213479(n)`
-/

namespace A213480.P5703608229503352546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (A213481 n - A213479 n)

end

end A213480.P5703608229503352546

namespace A213480

/-- `A006918(n)+A213481(n)-A213479(n)` -/
def P5703608229503352546.Spec : Prop :=
  ∀ n, P5703608229503352546.a n = A213480 n

end A213480

/-! ## A213480.P13276521497496686225

`A212967(n)+A212968(n)-A213479(n)`
-/

namespace A213480.P13276521497496686225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n + (A212968 n - A213479 n)

end

end A213480.P13276521497496686225

namespace A213480

/-- `A212967(n)+A212968(n)-A213479(n)` -/
def P13276521497496686225.Spec : Prop :=
  ∀ n, P13276521497496686225.a n = A213480 n

end A213480

/-! ## A213480.P4612976189052605140

`A212971(n)+A212972(n)-A213479(n)`
-/

namespace A213480.P4612976189052605140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212971 n + (A212972 n - A213479 n)

end

end A213480.P4612976189052605140

namespace A213480

/-- `A212971(n)+A212972(n)-A213479(n)` -/
def P4612976189052605140.Spec : Prop :=
  ∀ n, P4612976189052605140.a n = A213480 n

end A213480

/-! ## A213480.P5704655363042913757

`A212973(n)+A212974(n)-A213479(n)`
-/

namespace A213480.P5704655363042913757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n + (A212974 n - A213479 n)

end

end A213480.P5704655363042913757

namespace A213480

/-- `A212973(n)+A212974(n)-A213479(n)` -/
def P5704655363042913757.Spec : Prop :=
  ∀ n, P5704655363042913757.a n = A213480 n

end A213480

/-! ## A213480.P1280911052424374302

`A212975(n)+A212976(n)-A213479(n)`
-/

namespace A213480.P1280911052424374302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212975 n + (A212976 n - A213479 n)

end

end A213480.P1280911052424374302

namespace A213480

/-- `A212975(n)+A212976(n)-A213479(n)` -/
def P1280911052424374302.Spec : Prop :=
  ∀ n, P1280911052424374302.a n = A213480 n

end A213480

/-! ## A213480.P6234492258408065269

`A212965(n)+A213498(n)-A213479(n)`
-/

namespace A213480.P6234492258408065269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + (A213498 n - A213479 n)

end

end A213480.P6234492258408065269

namespace A213480

/-- `A212965(n)+A213498(n)-A213479(n)` -/
def P6234492258408065269.Spec : Prop :=
  ∀ n, P6234492258408065269.a n = A213480 n

end A213480

/-! ## A213480.P5545068444795404774

`A213389(n)+A213390(n)-A213479(n)`
-/

namespace A213480.P5545068444795404774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + (A213390 n - A213479 n)

end

end A213480.P5545068444795404774

namespace A213480

/-- `A213389(n)+A213390(n)-A213479(n)` -/
def P5545068444795404774.Spec : Prop :=
  ∀ n, P5545068444795404774.a n = A213480 n

end A213480

/-! ## A213480.P2729052765530210483

`A213391(n)+A213392(n)-A213479(n)`
-/

namespace A213480.P2729052765530210483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 n + (A213392 n - A213479 n)

end

end A213480.P2729052765530210483

namespace A213480

/-- `A213391(n)+A213392(n)-A213479(n)` -/
def P2729052765530210483.Spec : Prop :=
  ∀ n, P2729052765530210483.a n = A213480 n

end A213480

/-! ## A213480.P5634639907980139877

`A213395(n)+A213501(n)-A213479(n)`
-/

namespace A213480.P5634639907980139877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213395 n + (A213501 n - A213479 n)

end

end A213480.P5634639907980139877

namespace A213480

/-- `A213395(n)+A213501(n)-A213479(n)` -/
def P5634639907980139877.Spec : Prop :=
  ∀ n, P5634639907980139877.a n = A213480 n

end A213480

/-! ## A213480.P1312553521104273617

`A213482(n)+A213483(n)-A213479(n)`
-/

namespace A213480.P1312553521104273617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A213479 n)

end

end A213480.P1312553521104273617

namespace A213480

/-- `A213482(n)+A213483(n)-A213479(n)` -/
def P1312553521104273617.Spec : Prop :=
  ∀ n, P1312553521104273617.a n = A213480 n

end A213480

/-! ## A213480.P9711951739877061504

`A213484(n)+A213485(n)-A213479(n)`
-/

namespace A213480.P9711951739877061504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n + (A213485 n - A213479 n)

end

end A213480.P9711951739877061504

namespace A213480

/-- `A213484(n)+A213485(n)-A213479(n)` -/
def P9711951739877061504.Spec : Prop :=
  ∀ n, P9711951739877061504.a n = A213480 n

end A213480

/-! ## A213480.P16598930576801312793

`A213486(n)+A213487(n)-A213479(n)`
-/

namespace A213480.P16598930576801312793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213486 n + (A213487 n - A213479 n)

end

end A213480.P16598930576801312793

namespace A213480

/-- `A213486(n)+A213487(n)-A213479(n)` -/
def P16598930576801312793.Spec : Prop :=
  ∀ n, P16598930576801312793.a n = A213480 n

end A213480

/-! ## A213480.P4670597100714817543

`A213488(n)+A213489(n)-A213479(n)`
-/

namespace A213480.P4670597100714817543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213488 n + (A213489 n - A213479 n)

end

end A213480.P4670597100714817543

namespace A213480

/-- `A213488(n)+A213489(n)-A213479(n)` -/
def P4670597100714817543.Spec : Prop :=
  ∀ n, P4670597100714817543.a n = A213480 n

end A213480

/-! ## A213480.P11638506916766035466

`A213490(n)+A213491(n)-A213479(n)`
-/

namespace A213480.P11638506916766035466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213490 n + (A213491 n - A213479 n)

end

end A213480.P11638506916766035466

namespace A213480

/-- `A213490(n)+A213491(n)-A213479(n)` -/
def P11638506916766035466.Spec : Prop :=
  ∀ n, P11638506916766035466.a n = A213480 n

end A213480

/-! ## A213480.P529606184778745185

`A213492(n)+A213495(n)-A213479(n)`
-/

namespace A213480.P529606184778745185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213492 n + (A213495 n - A213479 n)

end

end A213480.P529606184778745185

namespace A213480

/-- `A213492(n)+A213495(n)-A213479(n)` -/
def P529606184778745185.Spec : Prop :=
  ∀ n, P529606184778745185.a n = A213480 n

end A213480

/-!
# A213481: Number of triples (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| <= w+x+y.

The programs for A213481, the canonical program `A213481.P347366435756284748` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213481 has offset 0).

The definition of A213481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213481.P2068198329888989677

`A213482(n)+A213479(n)`
-/

namespace A213481.P2068198329888989677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + A213479 n

end

end A213481.P2068198329888989677

namespace A213481

/-- `A213482(n)+A213479(n)` -/
def P2068198329888989677.Spec : Prop :=
  ∀ n, P2068198329888989677.a n = A213481 n

end A213481

/-! ## A213481.P347366435756284748

`∑[Δ[n^3]-∑[∑[n]%(n+1)]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213481

/-- `∑[Δ[n^3]-∑[∑[n]%(n+1)]]` -/
def P347366435756284748.Spec : Prop :=
  ∀ n, P347366435756284748.a n = A213481 n

theorem P347366435756284748.correct : P347366435756284748.Spec := by
  intro n
  simp only [A213481]

end A213481

/-! ## A213481.P3922377100782107390

`(n+1)^3-A006918(n)`
-/

namespace A213481.P3922377100782107390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A006918 n

end

end A213481.P3922377100782107390

namespace A213481

/-- `(n+1)^3-A006918(n)` -/
def P3922377100782107390.Spec : Prop :=
  ∀ n, P3922377100782107390.a n = A213481 n

end A213481

/-! ## A213481.P3883896577170233180

`A213482(n)+A008805(n)+n*(n+2)`
-/

namespace A213481.P3883896577170233180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A008805 n + (n * (n + 2) : ℤ))

end

end A213481.P3883896577170233180

namespace A213481

/-- `A213482(n)+A008805(n)+n*(n+2)` -/
def P3883896577170233180.Spec : Prop :=
  ∀ n, P3883896577170233180.a n = A213481 n

end A213481

/-! ## A213481.P10884020062317637401

`A084265(n)+A213482(n)+A195014(n)`
-/

namespace A213481.P10884020062317637401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n + (A213482 n + A195014 n)

end

end A213481.P10884020062317637401

namespace A213481

/-- `A084265(n)+A213482(n)+A195014(n)` -/
def P10884020062317637401.Spec : Prop :=
  ∀ n, P10884020062317637401.a n = A213481 n

end A213481

/-! ## A213481.P2768376208022231082

`A213482(n)+A213483(n)-A006918(n)`
-/

namespace A213481.P2768376208022231082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A006918 n)

end

end A213481.P2768376208022231082

namespace A213481

/-- `A213482(n)+A213483(n)-A006918(n)` -/
def P2768376208022231082.Spec : Prop :=
  ∀ n, P2768376208022231082.a n = A213481 n

end A213481

/-! ## A213481.P17238391540823186038

`A213482(n)+A005563(n)+∑[A027656(n)]`
-/

namespace A213481.P17238391540823186038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A005563 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213481.P17238391540823186038

namespace A213481

/-- `A213482(n)+A005563(n)+∑[A027656(n)]` -/
def P17238391540823186038.Spec : Prop :=
  ∀ n, P17238391540823186038.a n = A213481 n

end A213481

/-! ## A213481.P12870534558605482543

`A000578(n+1)-∑[∑[A142150(n+1)]]`
-/

namespace A213481.P12870534558605482543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213481.P12870534558605482543

namespace A213481

/-- `A000578(n+1)-∑[∑[A142150(n+1)]]` -/
def P12870534558605482543.Spec : Prop :=
  ∀ n, P12870534558605482543.a n = A213481 n

end A213481

/-! ## A213481.P619507163604536491

`A000578(n+1)-∑[A000217(A004526(n+1))]`
-/

namespace A213481.P619507163604536491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213481.P619507163604536491

namespace A213481

/-- `A000578(n+1)-∑[A000217(A004526(n+1))]` -/
def P619507163604536491.Spec : Prop :=
  ∀ n, P619507163604536491.a n = A213481 n

end A213481

/-! ## A213481.P16998653406462236002

`∑[A085787(2*n)+∑[A026741(n+1)]]`
-/

namespace A213481.P16998653406462236002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213481.P16998653406462236002

namespace A213481

/-- `∑[A085787(2*n)+∑[A026741(n+1)]]` -/
def P16998653406462236002.Spec : Prop :=
  ∀ n, P16998653406462236002.a n = A213481 n

end A213481

/-! ## A213481.P115778049919199926

`∑[∑[A008486(2*n)-A142150(n+1)]]`
-/

namespace A213481.P115778049919199926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A142150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213481.P115778049919199926

namespace A213481

/-- `∑[∑[A008486(2*n)-A142150(n+1)]]` -/
def P115778049919199926.Spec : Prop :=
  ∀ n, P115778049919199926.a n = A213481 n

end A213481

/-! ## A213481.P2899476054309942168

`A109900(2*n+1)+A109900(n+1)-A000292(n+1)`
-/

namespace A213481.P2899476054309942168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (2 * n + 1) + (A109900 (n + 1) - A000292 (n + 1))

end

end A213481.P2899476054309942168

namespace A213481

/-- `A109900(2*n+1)+A109900(n+1)-A000292(n+1)` -/
def P2899476054309942168.Spec : Prop :=
  ∀ n, P2899476054309942168.a n = A213481 n

end A213481

/-! ## A213481.P851097228806901202

`A109900(2*n+1)+A109900(n+1)-A058187(2*n)`
-/

namespace A213481.P851097228806901202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (2 * n + 1) + (A109900 (n + 1) - A058187 (2 * n))

end

end A213481.P851097228806901202

namespace A213481

/-- `A109900(2*n+1)+A109900(n+1)-A058187(2*n)` -/
def P851097228806901202.Spec : Prop :=
  ∀ n, P851097228806901202.a n = A213481 n

end A213481

/-!
# A213482: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| > w+x+y.

The programs for A213482, the canonical program `A213482.P5731546180902090339` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213482 has offset 0).

The definition of A213482 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213482.P5731546180902090339

`A213481(n)-A213479(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213482

/-- `A213481(n)-A213479(n)` -/
def P5731546180902090339.Spec : Prop :=
  ∀ n, P5731546180902090339.a n = A213482 n

theorem P5731546180902090339.correct : P5731546180902090339.Spec := by
  intro n
  simp only [A213482]

end A213482

/-! ## A213482.P12045812929606998734

`(n+1)^3-A213483(n)`
-/

namespace A213482.P12045812929606998734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213483 n

end

end A213482.P12045812929606998734

namespace A213482

/-- `(n+1)^3-A213483(n)` -/
def P12045812929606998734.Spec : Prop :=
  ∀ n, P12045812929606998734.a n = A213482 n

end A213482

/-! ## A213482.P5046958989686117308

`A213480(n)-A006918(n)`
-/

namespace A213482.P5046958989686117308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213480 n - A006918 n

end

end A213482.P5046958989686117308

namespace A213482

/-- `A213480(n)-A006918(n)` -/
def P5046958989686117308.Spec : Prop :=
  ∀ n, P5046958989686117308.a n = A213482 n

end A213482

/-! ## A213482.P3731692001924806441

`A211379(n+3)+A162147(n)`
-/

namespace A213482.P3731692001924806441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211379 (n + 3) + A162147 n

end

end A213482.P3731692001924806441

namespace A213482

/-- `A211379(n+3)+A162147(n)` -/
def P3731692001924806441.Spec : Prop :=
  ∀ n, P3731692001924806441.a n = A213482 n

end A213482

/-! ## A213482.P18265037735798292518

`A211379(n+3)+∑[A005475(n)]`
-/

namespace A213482.P18265037735798292518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211379 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213482.P18265037735798292518

namespace A213482

/-- `A211379(n+3)+∑[A005475(n)]` -/
def P18265037735798292518.Spec : Prop :=
  ∀ n, P18265037735798292518.a n = A213482 n

end A213482

/-! ## A213482.P6083671263256304205

`A006918(n)+A213481(n)-A213483(n)`
-/

namespace A213482.P6083671263256304205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (A213481 n - A213483 n)

end

end A213482.P6083671263256304205

namespace A213482

/-- `A006918(n)+A213481(n)-A213483(n)` -/
def P6083671263256304205.Spec : Prop :=
  ∀ n, P6083671263256304205.a n = A213482 n

end A213482

/-! ## A213482.P11563033661334925151

`A213389(n)+A213390(n)-A213483(n)`
-/

namespace A213482.P11563033661334925151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + (A213390 n - A213483 n)

end

end A213482.P11563033661334925151

namespace A213482

/-- `A213389(n)+A213390(n)-A213483(n)` -/
def P11563033661334925151.Spec : Prop :=
  ∀ n, P11563033661334925151.a n = A213482 n

end A213482

/-! ## A213482.P18150836385075159061

`A213398(n)+A213502(n)-A213483(n)`
-/

namespace A213482.P18150836385075159061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n + (A213502 n - A213483 n)

end

end A213482.P18150836385075159061

namespace A213482

/-- `A213398(n)+A213502(n)-A213483(n)` -/
def P18150836385075159061.Spec : Prop :=
  ∀ n, P18150836385075159061.a n = A213482 n

end A213482

/-! ## A213482.P16378724660345232726

`A213479(n)+A213480(n)-A213483(n)`
-/

namespace A213482.P16378724660345232726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213483 n)

end

end A213482.P16378724660345232726

namespace A213482

/-- `A213479(n)+A213480(n)-A213483(n)` -/
def P16378724660345232726.Spec : Prop :=
  ∀ n, P16378724660345232726.a n = A213482 n

end A213482

/-!
# A213483: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| >= w+x+y.

The programs for A213483, the canonical program `A213483.P829591484306914810` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213483 has offset 0).

The definition of A213483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213483.P829591484306914810

`A213479(n)+A006918(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213483

/-- `A213479(n)+A006918(n)` -/
def P829591484306914810.Spec : Prop :=
  ∀ n, P829591484306914810.a n = A213483 n

theorem P829591484306914810.correct : P829591484306914810.Spec := by
  intro n
  simp only [A213483]

end A213483

/-! ## A213483.P529293673488918304

`∑[∑[∑[n]%(n+2)+1]]+n`
-/

namespace A213483.P529293673488918304
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A213483.P529293673488918304

namespace A213483

/-- `∑[∑[∑[n]%(n+2)+1]]+n` -/
def P529293673488918304.Spec : Prop :=
  ∀ n, (P529293673488918304.a n : ℤ) = A213483 n

end A213483

/-! ## A213483.P16468441734062879907

`∑[∑[∑[a(n-2)%2]]-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A213483.P16468441734062879907
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f3 =>
  f3 (n - 2) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213483.P16468441734062879907

namespace A213483

/-- `∑[∑[∑[a(n-2)%2]]-a(n-1)]` -/
def P16468441734062879907.Spec : Prop :=
  ∀ n, P16468441734062879907.a n = A213483 n

end A213483

/-! ## A213483.P1791417489137865667

`(n+1)^3-A213482(n)`
-/

namespace A213483.P1791417489137865667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213482 n

end

end A213483.P1791417489137865667

namespace A213483

/-- `(n+1)^3-A213482(n)` -/
def P1791417489137865667.Spec : Prop :=
  ∀ n, P1791417489137865667.a n = A213483 n

end A213483

/-! ## A213483.P16630624899185819865

`∑[A008805(n)]+n*(n+2)`
-/

namespace A213483.P16630624899185819865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n * (n + 2) : ℤ)

end

end A213483.P16630624899185819865

namespace A213483

/-- `∑[A008805(n)]+n*(n+2)` -/
def P16630624899185819865.Spec : Prop :=
  ∀ n, P16630624899185819865.a n = A213483 n

end A213483

/-! ## A213483.P8306701354140546279

`A005563(n)+∑[floor(or(1, n+2)²/8)]`
-/

namespace A213483.P8306701354140546279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 2) ^ 2 : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213483.P8306701354140546279

namespace A213483

/-- `A005563(n)+∑[floor(or(1, n+2)²/8)]` -/
def P8306701354140546279.Spec : Prop :=
  ∀ n, P8306701354140546279.a n = A213483 n

end A213483

/-! ## A213483.P4393096177141734067

`A005563(n)+∑[A008805(n)]`
-/

namespace A213483.P4393096177141734067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213483.P4393096177141734067

namespace A213483

/-- `A005563(n)+∑[A008805(n)]` -/
def P4393096177141734067.Spec : Prop :=
  ∀ n, P4393096177141734067.a n = A213483 n

end A213483

/-! ## A213483.P14344880234267350768

`A008778(n)-A211379(n+3)`
-/

namespace A213483.P14344880234267350768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n - A211379 (n + 3)

end

end A213483.P14344880234267350768

namespace A213483

/-- `A008778(n)-A211379(n+3)` -/
def P14344880234267350768.Spec : Prop :=
  ∀ n, P14344880234267350768.a n = A213483 n

end A213483

/-! ## A213483.P16274222843393267704

`A005563(n)+∑[∑[A027656(n)]]`
-/

namespace A213483.P16274222843393267704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213483.P16274222843393267704

namespace A213483

/-- `A005563(n)+∑[∑[A027656(n)]]` -/
def P16274222843393267704.Spec : Prop :=
  ∀ n, P16274222843393267704.a n = A213483 n

end A213483

/-! ## A213483.P9504964404244235171

`∑[A000217(A008619(n))]+n*(n+2)`
-/

namespace A213483.P9504964404244235171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n * (n + 2) : ℤ)

end

end A213483.P9504964404244235171

namespace A213483

/-- `∑[A000217(A008619(n))]+n*(n+2)` -/
def P9504964404244235171.Spec : Prop :=
  ∀ n, P9504964404244235171.a n = A213483 n

end A213483

/-! ## A213483.P15324057520354654582

`A006918(n)+A213481(n)-A213482(n)`
-/

namespace A213483.P15324057520354654582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (A213481 n - A213482 n)

end

end A213483.P15324057520354654582

namespace A213483

/-- `A006918(n)+A213481(n)-A213482(n)` -/
def P15324057520354654582.Spec : Prop :=
  ∀ n, P15324057520354654582.a n = A213483 n

end A213483

/-! ## A213483.P447910544879002033

`A212967(n)+A212968(n)-A213482(n)`
-/

namespace A213483.P447910544879002033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n + (A212968 n - A213482 n)

end

end A213483.P447910544879002033

namespace A213483

/-- `A212967(n)+A212968(n)-A213482(n)` -/
def P447910544879002033.Spec : Prop :=
  ∀ n, P447910544879002033.a n = A213483 n

end A213483

/-! ## A213483.P16862004036419320679

`A212971(n)+A212972(n)-A213482(n)`
-/

namespace A213483.P16862004036419320679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212971 n + (A212972 n - A213482 n)

end

end A213483.P16862004036419320679

namespace A213483

/-- `A212971(n)+A212972(n)-A213482(n)` -/
def P16862004036419320679.Spec : Prop :=
  ∀ n, P16862004036419320679.a n = A213483 n

end A213483

/-! ## A213483.P3683275812067974982

`A212973(n)+A212974(n)-A213482(n)`
-/

namespace A213483.P3683275812067974982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n + (A212974 n - A213482 n)

end

end A213483.P3683275812067974982

namespace A213483

/-- `A212973(n)+A212974(n)-A213482(n)` -/
def P3683275812067974982.Spec : Prop :=
  ∀ n, P3683275812067974982.a n = A213483 n

end A213483

/-! ## A213483.P14723406394600983915

`A212975(n)+A212976(n)-A213482(n)`
-/

namespace A213483.P14723406394600983915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212975 n + (A212976 n - A213482 n)

end

end A213483.P14723406394600983915

namespace A213483

/-- `A212975(n)+A212976(n)-A213482(n)` -/
def P14723406394600983915.Spec : Prop :=
  ∀ n, P14723406394600983915.a n = A213483 n

end A213483

/-! ## A213483.P12033326145834259431

`A212965(n)+A213498(n)-A213482(n)`
-/

namespace A213483.P12033326145834259431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + (A213498 n - A213482 n)

end

end A213483.P12033326145834259431

namespace A213483

/-- `A212965(n)+A213498(n)-A213482(n)` -/
def P12033326145834259431.Spec : Prop :=
  ∀ n, P12033326145834259431.a n = A213483 n

end A213483

/-! ## A213483.P16600334641320476462

`A213389(n)+A213390(n)-A213482(n)`
-/

namespace A213483.P16600334641320476462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + (A213390 n - A213482 n)

end

end A213483.P16600334641320476462

namespace A213483

/-- `A213389(n)+A213390(n)-A213482(n)` -/
def P16600334641320476462.Spec : Prop :=
  ∀ n, P16600334641320476462.a n = A213483 n

end A213483

/-! ## A213483.P1936128272289468651

`A213391(n)+A213392(n)-A213482(n)`
-/

namespace A213483.P1936128272289468651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 n + (A213392 n - A213482 n)

end

end A213483.P1936128272289468651

namespace A213483

/-- `A213391(n)+A213392(n)-A213482(n)` -/
def P1936128272289468651.Spec : Prop :=
  ∀ n, P1936128272289468651.a n = A213483 n

end A213483

/-! ## A213483.P6361417332552006306

`A213395(n)+A213501(n)-A213482(n)`
-/

namespace A213483.P6361417332552006306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213395 n + (A213501 n - A213482 n)

end

end A213483.P6361417332552006306

namespace A213483

/-- `A213395(n)+A213501(n)-A213482(n)` -/
def P6361417332552006306.Spec : Prop :=
  ∀ n, P6361417332552006306.a n = A213483 n

end A213483

/-! ## A213483.P15425609196502611407

`A213398(n)+A213502(n)-A213482(n)`
-/

namespace A213483.P15425609196502611407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n + (A213502 n - A213482 n)

end

end A213483.P15425609196502611407

namespace A213483

/-- `A213398(n)+A213502(n)-A213482(n)` -/
def P15425609196502611407.Spec : Prop :=
  ∀ n, P15425609196502611407.a n = A213483 n

end A213483

/-!
# A213484: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| + |y-w| >= w+x+y.

The programs for A213484, the canonical program `A213484.P11450718858017749961` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213484 has offset 0).

The definition of A213484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213484.P11450718858017749961

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=10, a(4)=16`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213484

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P11450718858017749961.Spec : Prop :=
  ∀ n, P11450718858017749961.a n = A213484 n

theorem P11450718858017749961.correct : P11450718858017749961.Spec := by
  intro n
  simp only [A213484]

end A213484

/-! ## A213484.P11531718063327876469

`3*A054925(n+1)+1`
-/

namespace A213484.P11531718063327876469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054925 (n + 1) + 1

end

end A213484.P11531718063327876469

namespace A213484

/-- `3*A054925(n+1)+1` -/
def P11531718063327876469.Spec : Prop :=
  ∀ n, P11531718063327876469.a n = A213484 n

end A213484

/-! ## A213484.P11978864293115110932

`3*A192447(n+1)/2+1`
-/

namespace A213484.P11978864293115110932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A192447 (n + 1) : ℚ) / 2) + 1

end

end A213484.P11978864293115110932

namespace A213484

/-- `3*A192447(n+1)/2+1` -/
def P11978864293115110932.Spec : Prop :=
  ∀ n, P11978864293115110932.a n = (A213484 n : ℚ)

end A213484

/-! ## A213484.P15494296992061758728

`3*ceil(∑[n/2])+1`
-/

namespace A213484.P15494296992061758728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + 1

end

end A213484.P15494296992061758728

namespace A213484

/-- `3*ceil(∑[n/2])+1` -/
def P15494296992061758728.Spec : Prop :=
  ∀ n, P15494296992061758728.a n = A213484 n

end A213484

/-! ## A213484.P5313516170139050219

`∑[a(n-4)+6]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=6`
-/

namespace A213484.P5313516170139050219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 3, 6] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213484.P5313516170139050219

namespace A213484

/-- `∑[a(n-4)+6]` -/
def P5313516170139050219.Spec : Prop :=
  ∀ n, (P5313516170139050219.a n : ℤ) = A213484 n

end A213484

/-! ## A213484.P15228198640916394572

`∑[∑[3-a(n-2)]]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0`
-/

namespace A213484.P15228198640916394572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, 0] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213484.P15228198640916394572

namespace A213484

/-- `∑[∑[3-a(n-2)]]` -/
def P15228198640916394572.Spec : Prop :=
  ∀ n, P15228198640916394572.a n = A213484 n

end A213484

/-! ## A213484.P16854499131748693796

`(A373584(n+1)+1)/2`
-/

namespace A213484.P16854499131748693796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373584 (n + 1) + 1 : ℚ) / 2

end

end A213484.P16854499131748693796

namespace A213484

/-- `(A373584(n+1)+1)/2` -/
def P16854499131748693796.Spec : Prop :=
  ∀ n, P16854499131748693796.a n = (A213484 n : ℚ)

end A213484

/-! ## A213484.P14396460138209531539

`round(xor(1, 3*(A000217(n)+1))/2)`
-/

namespace A213484.P14396460138209531539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 (3 * (A000217 n + 1)) : ℚ) / 2)

end

end A213484.P14396460138209531539

namespace A213484

/-- `round(xor(1, 3*(A000217(n)+1))/2)` -/
def P14396460138209531539.Spec : Prop :=
  ∀ n, P14396460138209531539.a n = A213484 n

end A213484

/-! ## A213484.P7087647346651141726

`∑[A008486(A004525(n))]`
-/

namespace A213484.P7087647346651141726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213484.P7087647346651141726

namespace A213484

/-- `∑[A008486(A004525(n))]` -/
def P7087647346651141726.Spec : Prop :=
  ∀ n, P7087647346651141726.a n = A213484 n

end A213484

/-! ## A213484.P8050020471246044885

`∑[A008486(n-A004524(n+1))]`
-/

namespace A213484.P8050020471246044885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((n : ℤ) - A004524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213484.P8050020471246044885

namespace A213484

/-- `∑[A008486(n-A004524(n+1))]` -/
def P8050020471246044885.Spec : Prop :=
  ∀ n, P8050020471246044885.a n = A213484 n

end A213484

/-! ## A213484.P15647135471622197926

`∑[A004525(n)+A000267(A004525(n)²)]`
-/

namespace A213484.P15647135471622197926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A000267 (A004525 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213484.P15647135471622197926

namespace A213484

/-- `∑[A004525(n)+A000267(A004525(n)²)]` -/
def P15647135471622197926.Spec : Prop :=
  ∀ n, P15647135471622197926.a n = A213484 n

end A213484

/-! ## A213484.P5015901592083302136

`A016777(ceil(∑[n/2]))`
-/

namespace A213484.P5015901592083302136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A213484.P5015901592083302136

namespace A213484

/-- `A016777(ceil(∑[n/2]))` -/
def P5015901592083302136.Spec : Prop :=
  ∀ n, P5015901592083302136.a n = A213484 n

end A213484

/-! ## A213484.P2268318531127364315

`floor(2*A016945(ceil(∑[n/2]))/4)`
-/

namespace A213484.P2268318531127364315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A016945 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat : ℚ) / 4⌋

end

end A213484.P2268318531127364315

namespace A213484

/-- `floor(2*A016945(ceil(∑[n/2]))/4)` -/
def P2268318531127364315.Spec : Prop :=
  ∀ n, P2268318531127364315.a n = A213484 n

end A213484

/-! ## A213484.P1571630558328092707

`A168233(∑[n]+1)`
-/

namespace A213484.P1571630558328092707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213484.P1571630558328092707

namespace A213484

/-- `A168233(∑[n]+1)` -/
def P1571630558328092707.Spec : Prop :=
  ∀ n, P1571630558328092707.a n = A213484 n

end A213484

/-! ## A213484.P4239092489049888471

`ceil((A168329(∑[n]+2)-2)/2)`
-/

namespace A213484.P4239092489049888471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168329 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 2 : ℚ) / 2⌉

end

end A213484.P4239092489049888471

namespace A213484

/-- `ceil((A168329(∑[n]+2)-2)/2)` -/
def P4239092489049888471.Spec : Prop :=
  ∀ n, P4239092489049888471.a n = A213484 n

end A213484

/-! ## A213484.P12171686367559898917

`A071054(A192447(n+1))`
-/

namespace A213484.P12171686367559898917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 (A192447 (n + 1)).toNat

end

end A213484.P12171686367559898917

namespace A213484

/-- `A071054(A192447(n+1))` -/
def P12171686367559898917.Spec : Prop :=
  ∀ n, P12171686367559898917.a n = A213484 n

end A213484

/-! ## A213484.P5175369697968956843

`A285950(or(1, A000124(n)))`
-/

namespace A213484.P5175369697968956843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285950 (Int.lor 1 (A000124 n)).toNat

end

end A213484.P5175369697968956843

namespace A213484

/-- `A285950(or(1, A000124(n)))` -/
def P5175369697968956843.Spec : Prop :=
  ∀ n, P5175369697968956843.a n = A213484 n

end A213484

/-! ## A213484.P7365559599741165780

`A001651(A109613(∑[n]+1))`
-/

namespace A213484.P7365559599741165780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A109613 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A213484.P7365559599741165780

namespace A213484

/-- `A001651(A109613(∑[n]+1))` -/
def P7365559599741165780.Spec : Prop :=
  ∀ n, P7365559599741165780.a n = A213484 n

end A213484

/-! ## A213484.P11859634379941784939

`A032766(A192447(n+1)+1)`
-/

namespace A213484.P11859634379941784939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A192447 (n + 1) + 1).toNat

end

end A213484.P11859634379941784939

namespace A213484

/-- `A032766(A192447(n+1)+1)` -/
def P11859634379941784939.Spec : Prop :=
  ∀ n, P11859634379941784939.a n = A213484 n

end A213484

/-!
# A213485: Number of (w,x,y) with all terms in {0,...,n} and |w-x|+|x-y|+|y-w| != w+x+y.

The programs for A213485, the canonical program `A213485.P7234076116848271960` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213485 has offset 0).

The definition of A213485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213485.P7234076116848271960

`(n+1)^3-A213484(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213485

/-- `(n+1)^3-A213484(n)` -/
def P7234076116848271960.Spec : Prop :=
  ∀ n, P7234076116848271960.a n = A213485 n

theorem P7234076116848271960.correct : P7234076116848271960.Spec := by
  intro n
  simp only [A213485]

end A213485

/-! ## A213485.P12276298272512196502

`n^3+3*A281026(n)`
-/

namespace A213485.P12276298272512196502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) + 3 * A281026 n

end

end A213485.P12276298272512196502

namespace A213485

/-- `n^3+3*A281026(n)` -/
def P12276298272512196502.Spec : Prop :=
  ∀ n, P12276298272512196502.a n = A213485 n

end A213485

/-! ## A213485.P16905250507357266616

`A213488(n)+A213486(n)`
-/

namespace A213485.P16905250507357266616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213488 n + A213486 n

end

end A213485.P16905250507357266616

namespace A213485

/-- `A213488(n)+A213486(n)` -/
def P16905250507357266616.Spec : Prop :=
  ∀ n, P16905250507357266616.a n = A213485 n

end A213485

/-! ## A213485.P4658138363907597265

`A212967(n)+A212968(n)-A213484(n)`
-/

namespace A213485.P4658138363907597265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n + (A212968 n - A213484 n)

end

end A213485.P4658138363907597265

namespace A213485

/-- `A212967(n)+A212968(n)-A213484(n)` -/
def P4658138363907597265.Spec : Prop :=
  ∀ n, P4658138363907597265.a n = A213485 n

end A213485

/-! ## A213485.P6678424931178139556

`A212971(n)+A212972(n)-A213484(n)`
-/

namespace A213485.P6678424931178139556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212971 n + (A212972 n - A213484 n)

end

end A213485.P6678424931178139556

namespace A213485

/-- `A212971(n)+A212972(n)-A213484(n)` -/
def P6678424931178139556.Spec : Prop :=
  ∀ n, P6678424931178139556.a n = A213485 n

end A213485

/-! ## A213485.P7093188160619021080

`A212973(n)+A212974(n)-A213484(n)`
-/

namespace A213485.P7093188160619021080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n + (A212974 n - A213484 n)

end

end A213485.P7093188160619021080

namespace A213485

/-- `A212973(n)+A212974(n)-A213484(n)` -/
def P7093188160619021080.Spec : Prop :=
  ∀ n, P7093188160619021080.a n = A213485 n

end A213485

/-! ## A213485.P16985253377336499025

`A212975(n)+A212976(n)-A213484(n)`
-/

namespace A213485.P16985253377336499025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212975 n + (A212976 n - A213484 n)

end

end A213485.P16985253377336499025

namespace A213485

/-- `A212975(n)+A212976(n)-A213484(n)` -/
def P16985253377336499025.Spec : Prop :=
  ∀ n, P16985253377336499025.a n = A213485 n

end A213485

/-! ## A213485.P15473284421718638423

`A212965(n)+A213498(n)-A213484(n)`
-/

namespace A213485.P15473284421718638423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + (A213498 n - A213484 n)

end

end A213485.P15473284421718638423

namespace A213485

/-- `A212965(n)+A213498(n)-A213484(n)` -/
def P15473284421718638423.Spec : Prop :=
  ∀ n, P15473284421718638423.a n = A213485 n

end A213485

/-! ## A213485.P9456697821980583250

`A213389(n)+A213390(n)-A213484(n)`
-/

namespace A213485.P9456697821980583250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + (A213390 n - A213484 n)

end

end A213485.P9456697821980583250

namespace A213485

/-- `A213389(n)+A213390(n)-A213484(n)` -/
def P9456697821980583250.Spec : Prop :=
  ∀ n, P9456697821980583250.a n = A213485 n

end A213485

/-! ## A213485.P12251229810582336554

`A213395(n)+A213501(n)-A213484(n)`
-/

namespace A213485.P12251229810582336554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213395 n + (A213501 n - A213484 n)

end

end A213485.P12251229810582336554

namespace A213485

/-- `A213395(n)+A213501(n)-A213484(n)` -/
def P12251229810582336554.Spec : Prop :=
  ∀ n, P12251229810582336554.a n = A213485 n

end A213485

/-! ## A213485.P13831097531996105725

`A213398(n)+A213502(n)-A213484(n)`
-/

namespace A213485.P13831097531996105725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n + (A213502 n - A213484 n)

end

end A213485.P13831097531996105725

namespace A213485

/-- `A213398(n)+A213502(n)-A213484(n)` -/
def P13831097531996105725.Spec : Prop :=
  ∀ n, P13831097531996105725.a n = A213485 n

end A213485

/-! ## A213485.P10027700619079171478

`A213399(n)+A213496(n)-A213484(n)`
-/

namespace A213485.P10027700619079171478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n + (A213496 n - A213484 n)

end

end A213485.P10027700619079171478

namespace A213485

/-- `A213399(n)+A213496(n)-A213484(n)` -/
def P10027700619079171478.Spec : Prop :=
  ∀ n, P10027700619079171478.a n = A213485 n

end A213485

/-! ## A213485.P14902310889152094786

`A213479(n)+A213480(n)-A213484(n)`
-/

namespace A213485.P14902310889152094786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213484 n)

end

end A213485.P14902310889152094786

namespace A213485

/-- `A213479(n)+A213480(n)-A213484(n)` -/
def P14902310889152094786.Spec : Prop :=
  ∀ n, P14902310889152094786.a n = A213485 n

end A213485

/-! ## A213485.P13723556012399862215

`A213482(n)+A213483(n)-A213484(n)`
-/

namespace A213485.P13723556012399862215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A213484 n)

end

end A213485.P13723556012399862215

namespace A213485

/-- `A213482(n)+A213483(n)-A213484(n)` -/
def P13723556012399862215.Spec : Prop :=
  ∀ n, P13723556012399862215.a n = A213485 n

end A213485

/-! ## A213485.P9941994834620243652

`A213486(n)+A213487(n)-A213484(n)`
-/

namespace A213485.P9941994834620243652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213486 n + (A213487 n - A213484 n)

end

end A213485.P9941994834620243652

namespace A213485

/-- `A213486(n)+A213487(n)-A213484(n)` -/
def P9941994834620243652.Spec : Prop :=
  ∀ n, P9941994834620243652.a n = A213485 n

end A213485

/-! ## A213485.P13635932634853759912

`A213488(n)+A213489(n)-A213484(n)`
-/

namespace A213485.P13635932634853759912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213488 n + (A213489 n - A213484 n)

end

end A213485.P13635932634853759912

namespace A213485

/-- `A213488(n)+A213489(n)-A213484(n)` -/
def P13635932634853759912.Spec : Prop :=
  ∀ n, P13635932634853759912.a n = A213485 n

end A213485

/-! ## A213485.P4796086981079616818

`A213490(n)+A213491(n)-A213484(n)`
-/

namespace A213485.P4796086981079616818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213490 n + (A213491 n - A213484 n)

end

end A213485.P4796086981079616818

namespace A213485

/-- `A213490(n)+A213491(n)-A213484(n)` -/
def P4796086981079616818.Spec : Prop :=
  ∀ n, P4796086981079616818.a n = A213485 n

end A213485

/-! ## A213485.P3839558966673303951

`A213492(n)+A213495(n)-A213484(n)`
-/

namespace A213485.P3839558966673303951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213492 n + (A213495 n - A213484 n)

end

end A213485.P3839558966673303951

namespace A213485

/-- `A213492(n)+A213495(n)-A213484(n)` -/
def P3839558966673303951.Spec : Prop :=
  ∀ n, P3839558966673303951.a n = A213485 n

end A213485

/-! ## A213485.P12130245106635887577

`A213497(n)+A213499(n)-A213484(n)`
-/

namespace A213485.P12130245106635887577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213497 n + (A213499 n - A213484 n)

end

end A213485.P12130245106635887577

namespace A213485

/-- `A213497(n)+A213499(n)-A213484(n)` -/
def P12130245106635887577.Spec : Prop :=
  ∀ n, P12130245106635887577.a n = A213485 n

end A213485

/-! ## A213485.P14613828748505112943

`A000578(n+1)-∑[A008486(A004525(n))]`
-/

namespace A213485.P14613828748505112943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213485.P14613828748505112943

namespace A213485

/-- `A000578(n+1)-∑[A008486(A004525(n))]` -/
def P14613828748505112943.Spec : Prop :=
  ∀ n, P14613828748505112943.a n = A213485 n

end A213485

/-!
# A213486: Number of (w,x,y) with all terms in {0,...,n} and |w-x|+|x-y|+|y-w| > w+x+y.

The programs for A213486, the canonical program `A213486.P3616168903511005277` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213486 has offset 0).

The definition of A213486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213486.P15513431306470556098

`(n+1)^3-A213487(n)`
-/

namespace A213486.P15513431306470556098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213487 n

end

end A213486.P15513431306470556098

namespace A213486

/-- `(n+1)^3-A213487(n)` -/
def P15513431306470556098.Spec : Prop :=
  ∀ n, P15513431306470556098.a n = A213486 n

end A213486

/-! ## A213486.P3616168903511005277

`∑[∑[∑[3*∑[n]%2]]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213486

/-- `∑[∑[∑[3*∑[n]%2]]]` -/
def P3616168903511005277.Spec : Prop :=
  ∀ n, (P3616168903511005277.a n : ℤ) = A213486 n

theorem P3616168903511005277.correct : P3616168903511005277.Spec := by
  intro n
  simp only [A213486]

end A213486

/-! ## A213486.P14579530960648254701

`∑[3*floor(∑[(n+1)/2])]`
-/

namespace A213486.P14579530960648254701
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213486.P14579530960648254701

namespace A213486

/-- `∑[3*floor(∑[(n+1)/2])]` -/
def P14579530960648254701.Spec : Prop :=
  ∀ n, P14579530960648254701.a n = A213486 n

end A213486

/-! ## A213486.P17133572138427294582

`3*∑[round(cot(2/∑[n+1]))]`
-/

namespace A213486.P17133572138427294582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213486.P17133572138427294582

namespace A213486

/-- `3*∑[round(cot(2/∑[n+1]))]` -/
def P17133572138427294582.Spec : Prop :=
  ∀ n, P17133572138427294582.a n = A213486 n

end A213486

/-! ## A213486.P2937109072363166558

`3*∑[∑[n-a(n-2)]]` with `a(0)=0, a(1)=1`
-/

namespace A213486.P2937109072363166558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213486.P2937109072363166558

namespace A213486

/-- `3*∑[∑[n-a(n-2)]]` -/
def P2937109072363166558.Spec : Prop :=
  ∀ n, P2937109072363166558.a n = A213486 n

end A213486

/-! ## A213486.P17365048876241761498

`floor(∑[∑[∑[3-a(n-2)]]])` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A213486.P17365048876241761498
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213486.P17365048876241761498

namespace A213486

/-- `floor(∑[∑[∑[3-a(n-2)]]])` -/
def P17365048876241761498.Spec : Prop :=
  ∀ n, P17365048876241761498.a n = A213486 n

end A213486

/-! ## A213486.P7628783209606516720

`∑[∑[3-a(n-2)]]+a(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A213486.P7628783209606516720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A213486.P7628783209606516720

namespace A213486

/-- `∑[∑[3-a(n-2)]]+a(n-1)` -/
def P7628783209606516720.Spec : Prop :=
  ∀ n, P7628783209606516720.a n = A213486 n

end A213486

/-! ## A213486.P263665296950588306

`3*∑[ceil(A000096(n)/2)]`
-/

namespace A213486.P263665296950588306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000096 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213486.P263665296950588306

namespace A213486

/-- `3*∑[ceil(A000096(n)/2)]` -/
def P263665296950588306.Spec : Prop :=
  ∀ n, P263665296950588306.a n = A213486 n

end A213486

/-! ## A213486.P15014048477231767247

`A027480(n)-a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A213486.P15014048477231767247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A027480 n - a (n - 2)

end

end A213486.P15014048477231767247

namespace A213486

/-- `A027480(n)-a(n-2)` -/
def P15014048477231767247.Spec : Prop :=
  ∀ n, P15014048477231767247.a n = A213486 n

end A213486

/-! ## A213486.P1888301757909389999

`3*∑[A039823(n+1)-1]`
-/

namespace A213486.P1888301757909389999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213486.P1888301757909389999

namespace A213486

/-- `3*∑[A039823(n+1)-1]` -/
def P1888301757909389999.Spec : Prop :=
  ∀ n, P1888301757909389999.a n = A213486 n

end A213486

/-! ## A213486.P14176284370607389195

`A213485(n)-A213488(n)`
-/

namespace A213486.P14176284370607389195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213485 n - A213488 n

end

end A213486.P14176284370607389195

namespace A213486

/-- `A213485(n)-A213488(n)` -/
def P14176284370607389195.Spec : Prop :=
  ∀ n, P14176284370607389195.a n = A213486 n

end A213486

/-! ## A213486.P15876388353446122082

`A213489(n)-A213484(n)`
-/

namespace A213486.P15876388353446122082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213489 n - A213484 n

end

end A213486.P15876388353446122082

namespace A213486

/-- `A213489(n)-A213484(n)` -/
def P15876388353446122082.Spec : Prop :=
  ∀ n, P15876388353446122082.a n = A213486 n

end A213486

/-! ## A213486.P8265994151947443960

`A184628(n+1)%A213487(n)`
-/

namespace A213486.P8265994151947443960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A213487 n)

end

end A213486.P8265994151947443960

namespace A213486

/-- `A184628(n+1)%A213487(n)` -/
def P8265994151947443960.Spec : Prop :=
  ∀ n, P8265994151947443960.a n = A213486 n

end A213486

/-! ## A213486.P11301447034013648039

`A005449(n)+∑[A213484(n)]-A213484(n)`
-/

namespace A213486.P11301447034013648039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + (∑ j ∈ Finset.range (n + 1), f1 j - A213484 n)

end

end A213486.P11301447034013648039

namespace A213486

/-- `A005449(n)+∑[A213484(n)]-A213484(n)` -/
def P11301447034013648039.Spec : Prop :=
  ∀ n, P11301447034013648039.a n = A213486 n

end A213486

/-! ## A213486.P11122550959903018912

`A027480(n+1)-(A319006(n+2)+A101455(n))`
-/

namespace A213486.P11122550959903018912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (n + 1) - (A319006 (n + 2) + A101455 n)

end

end A213486.P11122550959903018912

namespace A213486

/-- `A027480(n+1)-(A319006(n+2)+A101455(n))` -/
def P11122550959903018912.Spec : Prop :=
  ∀ n, P11122550959903018912.a n = A213486 n

end A213486

/-! ## A213486.P14323176413472272361

`A027480(n+1)+A056594(n+1)-A319006(n+2)`
-/

namespace A213486.P14323176413472272361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (n + 1) + (A056594 (n + 1) - A319006 (n + 2))

end

end A213486.P14323176413472272361

namespace A213486

/-- `A027480(n+1)+A056594(n+1)-A319006(n+2)` -/
def P14323176413472272361.Spec : Prop :=
  ∀ n, P14323176413472272361.a n = A213486 n

end A213486

/-! ## A213486.P705726826144989564

`3*∑[A011848(n+2)]`
-/

namespace A213486.P705726826144989564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213486.P705726826144989564

namespace A213486

/-- `3*∑[A011848(n+2)]` -/
def P705726826144989564.Spec : Prop :=
  ∀ n, P705726826144989564.a n = A213486 n

end A213486

/-! ## A213486.P14029745373289948845

`(n+3)^3-A213488(n+3)`
-/

namespace A213486.P14029745373289948845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 3 : ℤ) - A213488 (n + 3)

end

end A213486.P14029745373289948845

namespace A213486

/-- `(n+3)^3-A213488(n+3)` -/
def P14029745373289948845.Spec : Prop :=
  ∀ n, P14029745373289948845.a n = A213486 n

end A213486

/-! ## A213486.P17088675935235710478

`A066023(n+1)%A213487(n)`
-/

namespace A213486.P17088675935235710478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066023 (n + 1)) (A213487 n)

end

end A213486.P17088675935235710478

namespace A213486

/-- `A066023(n+1)%A213487(n)` -/
def P17088675935235710478.Spec : Prop :=
  ∀ n, P17088675935235710478.a n = A213486 n

end A213486

/-! ## A213486.P6479153084213804942

`3*∑[A004526(C(n+2, 2))]`
-/

namespace A213486.P6479153084213804942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.choose (n + 2) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213486.P6479153084213804942

namespace A213486

/-- `3*∑[A004526(C(n+2, 2))]` -/
def P6479153084213804942.Spec : Prop :=
  ∀ n, P6479153084213804942.a n = A213486 n

end A213486

/-!
# A213487: Number of (w,x,y) with all terms in {0,...,n} and |w-x|+|x-y|+|y-w| <= w+x+y.

The programs for A213487, the canonical program `A213487.P15011572215243745023` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213487 has offset 0).

The definition of A213487 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213486, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213487.P15011572215243745023

`(n+1)^3-A213486(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213487

/-- `(n+1)^3-A213486(n)` -/
def P15011572215243745023.Spec : Prop :=
  ∀ n, P15011572215243745023.a n = A213487 n

theorem P15011572215243745023.correct : P15011572215243745023.Spec := by
  intro n
  simp only [A213487]

end A213487

/-! ## A213487.P3427384514555296580

`∑[∑[a(gcd(2, ∑[n]))+a(n-1)]]` with `a(0)=1, a(1)=3`
-/

namespace A213487.P3427384514555296580
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)) + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213487.P3427384514555296580

namespace A213487

/-- `∑[∑[a(gcd(2, ∑[n]))+a(n-1)]]` -/
def P3427384514555296580.Spec : Prop :=
  ∀ n, (P3427384514555296580.a n : ℤ) = A213487 n

end A213487

/-! ## A213487.P12043152493112398435

`∑[round(xor(1, A000217(3*n))/2)]`
-/

namespace A213487.P12043152493112398435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 (A000217 (3 * n)) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213487.P12043152493112398435

namespace A213487

/-- `∑[round(xor(1, A000217(3*n))/2)]` -/
def P12043152493112398435.Spec : Prop :=
  ∀ n, P12043152493112398435.a n = A213487 n

end A213487

/-! ## A213487.P7878113738422489839

`A213488(n)+A213484(n)`
-/

namespace A213487.P7878113738422489839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213488 n + A213484 n

end

end A213487.P7878113738422489839

namespace A213487

/-- `A213488(n)+A213484(n)` -/
def P7878113738422489839.Spec : Prop :=
  ∀ n, P7878113738422489839.a n = A213487 n

end A213487

/-! ## A213487.P10566998915448012417

`A213484(n)+∑[A005918(n)-A213484(n)]`
-/

namespace A213487.P10566998915448012417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A213484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213487.P10566998915448012417

namespace A213487

/-- `A213484(n)+∑[A005918(n)-A213484(n)]` -/
def P10566998915448012417.Spec : Prop :=
  ∀ n, P10566998915448012417.a n = A213487 n

end A213487

/-! ## A213487.P15750410031910603407

`∑[∑[A008486(A047237(n+1))]]`
-/

namespace A213487.P15750410031910603407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047237 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213487.P15750410031910603407

namespace A213487

/-- `∑[∑[A008486(A047237(n+1))]]` -/
def P15750410031910603407.Spec : Prop :=
  ∀ n, P15750410031910603407.a n = A213487 n

end A213487

/-! ## A213487.P3552048273253139784

`∑[∑[A008486(A004524(n)+n)]]`
-/

namespace A213487.P3552048273253139784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004524 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213487.P3552048273253139784

namespace A213487

/-- `∑[∑[A008486(A004524(n)+n)]]` -/
def P3552048273253139784.Spec : Prop :=
  ∀ n, P3552048273253139784.a n = A213487 n

end A213487

/-! ## A213487.P12775538011333024737

`∑[∑[A008486(A004524(3*n))]]`
-/

namespace A213487.P12775538011333024737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004524 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213487.P12775538011333024737

namespace A213487

/-- `∑[∑[A008486(A004524(3*n))]]` -/
def P12775538011333024737.Spec : Prop :=
  ∀ n, P12775538011333024737.a n = A213487 n

end A213487

/-! ## A213487.P7121908541230534316

`∑[A016777(A330707(n))]`
-/

namespace A213487.P7121908541230534316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A330707 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213487.P7121908541230534316

namespace A213487

/-- `∑[A016777(A330707(n))]` -/
def P7121908541230534316.Spec : Prop :=
  ∀ n, P7121908541230534316.a n = A213487 n

end A213487

/-! ## A213487.P4607881519340145218

`∑[A016777(∑[A047237(n+1)])]`
-/

namespace A213487.P4607881519340145218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213487.P4607881519340145218

namespace A213487

/-- `∑[A016777(∑[A047237(n+1)])]` -/
def P4607881519340145218.Spec : Prop :=
  ∀ n, P4607881519340145218.a n = A213487 n

end A213487

/-!
# A213488: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| + |y-w| < w+x+y.

The programs for A213488, the canonical program `A213488.P16788360978038166980` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213488 has offset 0).

The definition of A213488 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213489, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213488.P16788360978038166980

`(n+1)^3-A213489(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213488

/-- `(n+1)^3-A213489(n)` -/
def P16788360978038166980.Spec : Prop :=
  ∀ n, P16788360978038166980.a n = A213488 n

theorem P16788360978038166980.correct : P16788360978038166980.Spec := by
  intro n
  simp only [A213488]

end A213488

/-! ## A213488.P2025507691111885760

`∑[3*A231559(n)]+n`
-/

namespace A213488.P2025507691111885760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A231559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A213488.P2025507691111885760

namespace A213488

/-- `∑[3*A231559(n)]+n` -/
def P2025507691111885760.Spec : Prop :=
  ∀ n, P2025507691111885760.a n = A213488 n

end A213488

/-! ## A213488.P9007562479021392921

`A213485(n)-A213486(n)`
-/

namespace A213488.P9007562479021392921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213485 n - A213486 n

end

end A213488.P9007562479021392921

namespace A213488

/-- `A213485(n)-A213486(n)` -/
def P9007562479021392921.Spec : Prop :=
  ∀ n, P9007562479021392921.a n = A213488 n

end A213488

/-! ## A213488.P8057504472716322880

`A213487(n)-A213484(n)`
-/

namespace A213488.P8057504472716322880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213487 n - A213484 n

end

end A213488.P8057504472716322880

namespace A213488

/-- `A213487(n)-A213484(n)` -/
def P8057504472716322880.Spec : Prop :=
  ∀ n, P8057504472716322880.a n = A213488 n

end A213488

/-! ## A213488.P10535963245400104078

`∑[A005918(n)-A213484(n)]`
-/

namespace A213488.P10535963245400104078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A213484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213488.P10535963245400104078

namespace A213488

/-- `∑[A005918(n)-A213484(n)]` -/
def P10535963245400104078.Spec : Prop :=
  ∀ n, P10535963245400104078.a n = A213488 n

end A213488

/-! ## A213488.P3376722615284818444

`A212965(n)+A213498(n)-A213489(n)`
-/

namespace A213488.P3376722615284818444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + (A213498 n - A213489 n)

end

end A213488.P3376722615284818444

namespace A213488

/-- `A212965(n)+A213498(n)-A213489(n)` -/
def P3376722615284818444.Spec : Prop :=
  ∀ n, P3376722615284818444.a n = A213488 n

end A213488

/-! ## A213488.P9918054574947699692

`A213396(n)+A213397(n)-A213489(n)`
-/

namespace A213488.P9918054574947699692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213396 n + (A213397 n - A213489 n)

end

end A213488.P9918054574947699692

namespace A213488

/-- `A213396(n)+A213397(n)-A213489(n)` -/
def P9918054574947699692.Spec : Prop :=
  ∀ n, P9918054574947699692.a n = A213488 n

end A213488

/-! ## A213488.P6221810419811974423

`A213479(n)+A213480(n)-A213489(n)`
-/

namespace A213488.P6221810419811974423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213489 n)

end

end A213488.P6221810419811974423

namespace A213488

/-- `A213479(n)+A213480(n)-A213489(n)` -/
def P6221810419811974423.Spec : Prop :=
  ∀ n, P6221810419811974423.a n = A213488 n

end A213488

/-! ## A213488.P1457256535711493728

`A213482(n)+A213483(n)-A213489(n)`
-/

namespace A213488.P1457256535711493728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A213489 n)

end

end A213488.P1457256535711493728

namespace A213488

/-- `A213482(n)+A213483(n)-A213489(n)` -/
def P1457256535711493728.Spec : Prop :=
  ∀ n, P1457256535711493728.a n = A213488 n

end A213488

/-! ## A213488.P8742056514389559839

`A213486(n)+A213487(n)-A213489(n)`
-/

namespace A213488.P8742056514389559839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213486 n + (A213487 n - A213489 n)

end

end A213488.P8742056514389559839

namespace A213488

/-- `A213486(n)+A213487(n)-A213489(n)` -/
def P8742056514389559839.Spec : Prop :=
  ∀ n, P8742056514389559839.a n = A213488 n

end A213488

/-! ## A213488.P5611209065342907084

`A213492(n)+A213495(n)-A213489(n)`
-/

namespace A213488.P5611209065342907084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213492 n + (A213495 n - A213489 n)

end

end A213488.P5611209065342907084

namespace A213488

/-- `A213492(n)+A213495(n)-A213489(n)` -/
def P5611209065342907084.Spec : Prop :=
  ∀ n, P5611209065342907084.a n = A213488 n

end A213488

/-! ## A213488.P10265510785772423256

`∑[A016777(A231559(n))]-1`
-/

namespace A213488.P10265510785772423256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A231559 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A213488.P10265510785772423256

namespace A213488

/-- `∑[A016777(A231559(n))]-1` -/
def P10265510785772423256.Spec : Prop :=
  ∀ n, P10265510785772423256.a n = A213488 n

end A213488

/-!
# A213489: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| + |y-w| >= w + x + y.

The programs for A213489, the canonical program `A213489.P14308438390840415934` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213489 has offset 0).

The definition of A213489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213489.P14308438390840415934

`a(n-1)+3*ceil(∑[n/2])+3*n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213489

/-- `a(n-1)+3*ceil(∑[n/2])+3*n` -/
def P14308438390840415934.Spec : Prop :=
  ∀ n, P14308438390840415934.a n = A213489 n

theorem P14308438390840415934.correct : P14308438390840415934.Spec := by
  intro n
  simp only [A213489]

end A213489

/-! ## A213489.P3424115069893786227

`(n+1)^3-A213488(n)`
-/

namespace A213489.P3424115069893786227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213488 n

end

end A213489.P3424115069893786227

namespace A213489

/-- `(n+1)^3-A213488(n)` -/
def P3424115069893786227.Spec : Prop :=
  ∀ n, P3424115069893786227.a n = A213489 n

end A213489

/-! ## A213489.P8368985580727935038

`∑[A008486(n)+3*ceil(∑[n/2])]`
-/

namespace A213489.P8368985580727935038
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + 3 * ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213489.P8368985580727935038

namespace A213489

/-- `∑[A008486(n)+3*ceil(∑[n/2])]` -/
def P8368985580727935038.Spec : Prop :=
  ∀ n, P8368985580727935038.a n = A213489 n

end A213489

/-! ## A213489.P14801847123315417803

`A213486(n)+A213484(n)`
-/

namespace A213489.P14801847123315417803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213486 n + A213484 n

end

end A213489.P14801847123315417803

namespace A213489

/-- `A213486(n)+A213484(n)` -/
def P14801847123315417803.Spec : Prop :=
  ∀ n, P14801847123315417803.a n = A213489 n

end A213489

/-! ## A213489.P15129236867505640814

`A005449(n)+∑[A213484(n)]`
-/

namespace A213489.P15129236867505640814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213489.P15129236867505640814

namespace A213489

/-- `A005449(n)+∑[A213484(n)]` -/
def P15129236867505640814.Spec : Prop :=
  ∀ n, P15129236867505640814.a n = A213489 n

end A213489

/-! ## A213489.P13703533146707508628

`A212965(n)+A213498(n)-A213488(n)`
-/

namespace A213489.P13703533146707508628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + (A213498 n - A213488 n)

end

end A213489.P13703533146707508628

namespace A213489

/-- `A212965(n)+A213498(n)-A213488(n)` -/
def P13703533146707508628.Spec : Prop :=
  ∀ n, P13703533146707508628.a n = A213489 n

end A213489

/-! ## A213489.P17809518460353878791

`A213389(n)+A213390(n)-A213488(n)`
-/

namespace A213489.P17809518460353878791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + (A213390 n - A213488 n)

end

end A213489.P17809518460353878791

namespace A213489

/-- `A213389(n)+A213390(n)-A213488(n)` -/
def P17809518460353878791.Spec : Prop :=
  ∀ n, P17809518460353878791.a n = A213489 n

end A213489

/-! ## A213489.P16530715362564406751

`A213398(n)+A213502(n)-A213488(n)`
-/

namespace A213489.P16530715362564406751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n + (A213502 n - A213488 n)

end

end A213489.P16530715362564406751

namespace A213489

/-- `A213398(n)+A213502(n)-A213488(n)` -/
def P16530715362564406751.Spec : Prop :=
  ∀ n, P16530715362564406751.a n = A213489 n

end A213489

/-! ## A213489.P606988970678205446

`A213482(n)+A213483(n)-A213488(n)`
-/

namespace A213489.P606988970678205446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A213488 n)

end

end A213489.P606988970678205446

namespace A213489

/-- `A213482(n)+A213483(n)-A213488(n)` -/
def P606988970678205446.Spec : Prop :=
  ∀ n, P606988970678205446.a n = A213489 n

end A213489

/-! ## A213489.P14121365564754040050

`A213484(n)+A213485(n)-A213488(n)`
-/

namespace A213489.P14121365564754040050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n + (A213485 n - A213488 n)

end

end A213489.P14121365564754040050

namespace A213489

/-- `A213484(n)+A213485(n)-A213488(n)` -/
def P14121365564754040050.Spec : Prop :=
  ∀ n, P14121365564754040050.a n = A213489 n

end A213489

/-! ## A213489.P11017465311479598098

`A213497(n)+A213499(n)-A213488(n)`
-/

namespace A213489.P11017465311479598098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213497 n + (A213499 n - A213488 n)

end

end A213489.P11017465311479598098

namespace A213489

/-- `A213497(n)+A213499(n)-A213488(n)` -/
def P11017465311479598098.Spec : Prop :=
  ∀ n, P11017465311479598098.a n = A213489 n

end A213489

/-! ## A213489.P311930523232756579

`A213486(n+1)-(2*n+n+2)`
-/

namespace A213489.P311930523232756579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213486 (n + 1) - (2 * n + (n + 2) : ℤ)

end

end A213489.P311930523232756579

namespace A213489

/-- `A213486(n+1)-(2*n+n+2)` -/
def P311930523232756579.Spec : Prop :=
  ∀ n, P311930523232756579.a n = A213489 n

end A213489

/-! ## A213489.P14781959878232820369

`∑[A008486(∑[A004525(n)]+n)]`
-/

namespace A213489.P14781959878232820369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213489.P14781959878232820369

namespace A213489

/-- `∑[A008486(∑[A004525(n)]+n)]` -/
def P14781959878232820369.Spec : Prop :=
  ∀ n, P14781959878232820369.a n = A213489 n

end A213489

/-! ## A213489.P16460007558002262812

`3*∑[lt[A025581(2*n+1), 2]]+1`
-/

namespace A213489.P16460007558002262812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A213489.P16460007558002262812

namespace A213489

/-- `3*∑[lt[A025581(2*n+1), 2]]+1` -/
def P16460007558002262812.Spec : Prop :=
  ∀ n, (P16460007558002262812.a n : ℤ) = A213489 n

end A213489

/-! ## A213489.P12358791910828996203

`∑[record[A280167(A165157(n))]]`
-/

namespace A213489.P12358791910828996203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280167 (A165157 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213489.P12358791910828996203

namespace A213489

/-- `∑[record[A280167(A165157(n))]]` -/
def P12358791910828996203.Spec : Prop :=
  ∀ n, P12358791910828996203.a n = A213489 n

end A213489

/-! ## A213489.P14711165070403893845

`∑[A008486(A004526(∑[n+2]-1))]`
-/

namespace A213489.P14711165070403893845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004526 (∑ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213489.P14711165070403893845

namespace A213489

/-- `∑[A008486(A004526(∑[n+2]-1))]` -/
def P14711165070403893845.Spec : Prop :=
  ∀ n, P14711165070403893845.a n = A213489 n

end A213489

/-! ## A213489.P8643743908656413022

`∑[A008486(A123108(∑[n+2]-1))]`
-/

namespace A213489.P8643743908656413022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A123108 (∑ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213489.P8643743908656413022

namespace A213489

/-- `∑[A008486(A123108(∑[n+2]-1))]` -/
def P8643743908656413022.Spec : Prop :=
  ∀ n, P8643743908656413022.a n = A213489 n

end A213489

/-!
# A213490: Number of (w,x,y) with all terms in {0,...,n} and the numbers w,x,y,|w-x|,|x-y| distinct.

The programs for A213490, the canonical program `A213490.P1778354487619162765` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213490 has offset 0).

The definition of A213490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213490.P1778354487619162765

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=12, a(6)=38, a(7)=92, a(8)=160, a(9)=286`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213490

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P1778354487619162765.Spec : Prop :=
  ∀ n, P1778354487619162765.a n = A213490 n

theorem P1778354487619162765.correct : P1778354487619162765.Spec := by
  intro n
  simp only [A213490]

end A213490

/-! ## A213490.P1407793615937207753

`(n+1)^3-A213491(n)`
-/

namespace A213490.P1407793615937207753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213491 n

end

end A213490.P1407793615937207753

namespace A213490

/-- `(n+1)^3-A213491(n)` -/
def P1407793615937207753.Spec : Prop :=
  ∀ n, P1407793615937207753.a n = A213490 n

end A213490

/-! ## A213490.P15245721613107578588

`A212959(n)+A212960(n)-A213491(n)`
-/

namespace A213490.P15245721613107578588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n + (A212960 n - A213491 n)

end

end A213490.P15245721613107578588

namespace A213490

/-- `A212959(n)+A212960(n)-A213491(n)` -/
def P15245721613107578588.Spec : Prop :=
  ∀ n, P15245721613107578588.a n = A213490 n

end A213490

/-! ## A213490.P13339724042925434519

`A213396(n)+A213397(n)-A213491(n)`
-/

namespace A213490.P13339724042925434519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213396 n + (A213397 n - A213491 n)

end

end A213490.P13339724042925434519

namespace A213490

/-- `A213396(n)+A213397(n)-A213491(n)` -/
def P13339724042925434519.Spec : Prop :=
  ∀ n, P13339724042925434519.a n = A213490 n

end A213490

/-! ## A213490.P14912850177996921998

`A213479(n)+A213480(n)-A213491(n)`
-/

namespace A213490.P14912850177996921998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213491 n)

end

end A213490.P14912850177996921998

namespace A213490

/-- `A213479(n)+A213480(n)-A213491(n)` -/
def P14912850177996921998.Spec : Prop :=
  ∀ n, P14912850177996921998.a n = A213490 n

end A213490

/-! ## A213490.P4784785944827356032

`A213482(n)+A213483(n)-A213491(n)`
-/

namespace A213490.P4784785944827356032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A213491 n)

end

end A213490.P4784785944827356032

namespace A213490

/-- `A213482(n)+A213483(n)-A213491(n)` -/
def P4784785944827356032.Spec : Prop :=
  ∀ n, P4784785944827356032.a n = A213490 n

end A213490

/-! ## A213490.P1367841510961240124

`A213484(n)+A213485(n)-A213491(n)`
-/

namespace A213490.P1367841510961240124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n + (A213485 n - A213491 n)

end

end A213490.P1367841510961240124

namespace A213490

/-- `A213484(n)+A213485(n)-A213491(n)` -/
def P1367841510961240124.Spec : Prop :=
  ∀ n, P1367841510961240124.a n = A213490 n

end A213490

/-!
# A213491: Number of (w,x,y) with all terms in {0,...,n} and the numbers w,x,y,|w-x|,|x-y| not distinct.

The programs for A213491, the canonical program `A213491.P5074121872333072312` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213491 has offset 0).

The definition of A213491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213491.P5074121872333072312

`(n+1)^3-A213490(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213491

/-- `(n+1)^3-A213490(n)` -/
def P5074121872333072312.Spec : Prop :=
  ∀ n, P5074121872333072312.a n = A213491 n

theorem P5074121872333072312.correct : P5074121872333072312.Spec := by
  intro n
  simp only [A213491]

end A213491

/-! ## A213491.P2332401406143088111

`A213479(n)+A213480(n)-A213490(n)`
-/

namespace A213491.P2332401406143088111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213490 n)

end

end A213491.P2332401406143088111

namespace A213491

/-- `A213479(n)+A213480(n)-A213490(n)` -/
def P2332401406143088111.Spec : Prop :=
  ∀ n, P2332401406143088111.a n = A213491 n

end A213491

/-! ## A213491.P4929673659544533519

`A213482(n)+A213483(n)-A213490(n)`
-/

namespace A213491.P4929673659544533519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A213490 n)

end

end A213491.P4929673659544533519

namespace A213491

/-- `A213482(n)+A213483(n)-A213490(n)` -/
def P4929673659544533519.Spec : Prop :=
  ∀ n, P4929673659544533519.a n = A213491 n

end A213491

/-! ## A213491.P3224823455401219326

`A213484(n)+A213485(n)-A213490(n)`
-/

namespace A213491.P3224823455401219326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n + (A213485 n - A213490 n)

end

end A213491.P3224823455401219326

namespace A213491

/-- `A213484(n)+A213485(n)-A213490(n)` -/
def P3224823455401219326.Spec : Prop :=
  ∀ n, P3224823455401219326.a n = A213491 n

end A213491

/-! ## A213491.P17189713624501263789

`A213488(n)+A213489(n)-A213490(n)`
-/

namespace A213491.P17189713624501263789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213488 n + (A213489 n - A213490 n)

end

end A213491.P17189713624501263789

namespace A213491

/-- `A213488(n)+A213489(n)-A213490(n)` -/
def P17189713624501263789.Spec : Prop :=
  ∀ n, P17189713624501263789.a n = A213491 n

end A213491

/-! ## A213491.P792173966939368141

`A213492(n)+A213495(n)-A213490(n)`
-/

namespace A213491.P792173966939368141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213492 n + (A213495 n - A213490 n)

end

end A213491.P792173966939368141

namespace A213491

/-- `A213492(n)+A213495(n)-A213490(n)` -/
def P792173966939368141.Spec : Prop :=
  ∀ n, P792173966939368141.a n = A213491 n

end A213491

/-! ## A213491.P10803177383807111187

`A213497(n)+A213499(n)-A213490(n)`
-/

namespace A213491.P10803177383807111187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213497 n + (A213499 n - A213490 n)

end

end A213491.P10803177383807111187

namespace A213491

/-- `A213497(n)+A213499(n)-A213490(n)` -/
def P10803177383807111187.Spec : Prop :=
  ∀ n, P10803177383807111187.a n = A213491 n

end A213491

/-!
# A213492: Number of (w,x,y) with all terms in {0,...,n} and w != min(|w-x|, |x-y|, |y-w|).

The programs for A213492, the canonical program `A213492.P731060328306474669` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213492 has offset 0).

The definition of A213492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213492.P731060328306474669

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=0, a(1)=4, a(2)=18, a(3)=48, a(4)=98, a(5)=178, a(6)=290`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213492

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P731060328306474669.Spec : Prop :=
  ∀ n, P731060328306474669.a n = A213492 n

theorem P731060328306474669.correct : P731060328306474669.Spec := by
  intro n
  simp only [A213492]

end A213492

/-! ## A213492.P4214427269768940761

`(n+1)^3-A213495(n)`
-/

namespace A213492.P4214427269768940761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213495 n

end

end A213492.P4214427269768940761

namespace A213492

/-- `(n+1)^3-A213495(n)` -/
def P4214427269768940761.Spec : Prop :=
  ∀ n, P4214427269768940761.a n = A213492 n

end A213492

/-! ## A213492.P3428629788556027901

`A212960(n)+∑[A004523(A130481(n))]`
-/

namespace A213492.P3428629788556027901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A130481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213492.P3428629788556027901

namespace A213492

/-- `A212960(n)+∑[A004523(A130481(n))]` -/
def P3428629788556027901.Spec : Prop :=
  ∀ n, P3428629788556027901.a n = A213492 n

end A213492

/-! ## A213492.P944131701347615578

`A212959(n)+A212960(n)-A213495(n)`
-/

namespace A213492.P944131701347615578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n + (A212960 n - A213495 n)

end

end A213492.P944131701347615578

namespace A213492

/-- `A212959(n)+A212960(n)-A213495(n)` -/
def P944131701347615578.Spec : Prop :=
  ∀ n, P944131701347615578.a n = A213492 n

end A213492

/-! ## A213492.P7948552883616680961

`A213479(n)+A213480(n)-A213495(n)`
-/

namespace A213492.P7948552883616680961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213495 n)

end

end A213492.P7948552883616680961

namespace A213492

/-- `A213479(n)+A213480(n)-A213495(n)` -/
def P7948552883616680961.Spec : Prop :=
  ∀ n, P7948552883616680961.a n = A213492 n

end A213492

/-! ## A213492.P8732968579756211045

`A213488(n)+A213489(n)-A213495(n)`
-/

namespace A213492.P8732968579756211045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213488 n + (A213489 n - A213495 n)

end

end A213492.P8732968579756211045

namespace A213492

/-- `A213488(n)+A213489(n)-A213495(n)` -/
def P8732968579756211045.Spec : Prop :=
  ∀ n, P8732968579756211045.a n = A213492 n

end A213492

/-! ## A213492.P6611981840383372245

`A212971(n+1)+A213397(n)-A212959(n)`
-/

namespace A213492.P6611981840383372245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212971 (n + 1) + (A213397 n - A212959 n)

end

end A213492.P6611981840383372245

namespace A213492

/-- `A212971(n+1)+A213397(n)-A212959(n)` -/
def P6611981840383372245.Spec : Prop :=
  ∀ n, P6611981840383372245.a n = A213492 n

end A213492

/-! ## A213492.P7650451302345076738

`A212960(n)+A004523(∑[n])`
-/

namespace A213492.P7650451302345076738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n + A004523 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213492.P7650451302345076738

namespace A213492

/-- `A212960(n)+A004523(∑[n])` -/
def P7650451302345076738.Spec : Prop :=
  ∀ n, P7650451302345076738.a n = A213492 n

end A213492

/-!
# A213493: Number of (w,x,y) with all terms in {0,...,n} and the numbers w,x,y,|w-x|,|x-y|,|y-w| distinct.

The programs for A213493, the canonical program `A213493.P8801898844619524977` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213493 has offset 0).

The definition of A213493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213493.P8801898844619524977

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=12, a(7)=48, a(8)=96, a(9)=204`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213493

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P8801898844619524977.Spec : Prop :=
  ∀ n, P8801898844619524977.a n = A213493 n

theorem P8801898844619524977.correct : P8801898844619524977.Spec := by
  intro n
  simp only [A213493]

end A213493

/-! ## A213493.P12880121121489646587

`12*A213494(n)`
-/

namespace A213493.P12880121121489646587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A213494 n

end

end A213493.P12880121121489646587

namespace A213493

/-- `12*A213494(n)` -/
def P12880121121489646587.Spec : Prop :=
  ∀ n, P12880121121489646587.a n = A213493 n

end A213493

/-! ## A213493.P14146095134133421183

`∑[6*A325686(n)]`
-/

namespace A213493.P14146095134133421183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A325686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213493.P14146095134133421183

namespace A213493

/-- `∑[6*A325686(n)]` -/
def P14146095134133421183.Spec : Prop :=
  ∀ n, P14146095134133421183.a n = A213493 n

end A213493

/-! ## A213493.P17259881139100196909

`∑[A008594(A325686(n)/2)]`
-/

namespace A213493.P17259881139100196909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (SequenceMachineLib.roundAway ((A325686 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213493.P17259881139100196909

namespace A213493

/-- `∑[A008594(A325686(n)/2)]` -/
def P17259881139100196909.Spec : Prop :=
  ∀ n, P17259881139100196909.a n = A213493 n

end A213493

/-! ## A213493.P15888726271258882584

`∑[A008588(A325686(n))]`
-/

namespace A213493.P15888726271258882584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A325686 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213493.P15888726271258882584

namespace A213493

/-- `∑[A008588(A325686(n))]` -/
def P15888726271258882584.Spec : Prop :=
  ∀ n, P15888726271258882584.a n = A213493 n

end A213493

/-! ## A213493.P3471718586873045338

`A008594(A213494(n))`
-/

namespace A213493.P3471718586873045338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A213494 n).toNat

end

end A213493.P3471718586873045338

namespace A213493

/-- `A008594(A213494(n))` -/
def P3471718586873045338.Spec : Prop :=
  ∀ n, P3471718586873045338.a n = A213493 n

end A213493

/-!
# A213494: a(n) = A213493(n)/12.

The programs for A213494, the canonical program `A213494.P2819223989852424194` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213494 has offset 0).

The definition of A213494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213494.P2819223989852424194

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=4, a(8)=8, a(9)=17`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213494

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P2819223989852424194.Spec : Prop :=
  ∀ n, P2819223989852424194.a n = A213494 n

theorem P2819223989852424194.correct : P2819223989852424194.Spec := by
  intro n
  simp only [A213494]

end A213494

/-! ## A213494.P14139097054796109140

`A213493(n)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213494.P14139097054796109140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213493 n : ℚ) / 12

end

end A213494.P14139097054796109140

namespace A213494

/-- `A213493(n)/12` -/
def P14139097054796109140.Spec : Prop :=
  ∀ n, P14139097054796109140.a n = (A213494 n : ℚ)

end A213494

/-! ## A213494.P682198015618649728

`∑[A325686(n)/2]`
-/

namespace A213494.P682198015618649728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325686 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213494.P682198015618649728

namespace A213494

/-- `∑[A325686(n)/2]` -/
def P682198015618649728.Spec : Prop :=
  ∀ n, P682198015618649728.a n = (A213494 n : ℚ)

end A213494

/-! ## A213494.P11884202332132178172

`∑[A014682(A325686(n))]`
-/

namespace A213494.P11884202332132178172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A325686 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213494.P11884202332132178172

namespace A213494

/-- `∑[A014682(A325686(n))]` -/
def P11884202332132178172.Spec : Prop :=
  ∀ n, P11884202332132178172.a n = A213494 n

end A213494

/-! ## A213494.P14556657455437463269

`∑[A028242(A325686(n)+1)]`
-/

namespace A213494.P14556657455437463269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A325686 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213494.P14556657455437463269

namespace A213494

/-- `∑[A028242(A325686(n)+1)]` -/
def P14556657455437463269.Spec : Prop :=
  ∀ n, P14556657455437463269.a n = A213494 n

end A213494

/-! ## A213494.P7469215157066125422

`∑[A188134(2*A325686(n))]`
-/

namespace A213494.P7469215157066125422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (2 * A325686 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213494.P7469215157066125422

namespace A213494

/-- `∑[A188134(2*A325686(n))]` -/
def P7469215157066125422.Spec : Prop :=
  ∀ n, P7469215157066125422.a n = A213494 n

end A213494

/-!
# A213495: Number of (w,x,y) with all terms in {0,...,n} and w = min(|w-x|, |x-y|, |y-w|).

The programs for A213495, the canonical program `A213495.P8894328613527234371` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213495 has offset 0).

The definition of A213495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213495.P8894328613527234371

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16, a(4)=27, a(5)=38`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213495

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P8894328613527234371.Spec : Prop :=
  ∀ n, P8894328613527234371.a n = A213495 n

theorem P8894328613527234371.correct : P8894328613527234371.Spec := by
  intro n
  simp only [A213495]

end A213495

/-! ## A213495.P2000494249855925361

`(n+1)^3-A213492(n)`
-/

namespace A213495.P2000494249855925361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213492 n

end

end A213495.P2000494249855925361

namespace A213495

/-- `(n+1)^3-A213492(n)` -/
def P2000494249855925361.Spec : Prop :=
  ∀ n, P2000494249855925361.a n = A213495 n

end A213495

/-! ## A213495.P9595158044910260597

`∑[or(1, comp[4*n])+and(n, -2)]`
-/

namespace A213495.P9595158044910260597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℤ) + Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P9595158044910260597

namespace A213495

/-- `∑[or(1, comp[4*n])+and(n, -2)]` -/
def P9595158044910260597.Spec : Prop :=
  ∀ n, P9595158044910260597.a n = A213495 n

end A213495

/-! ## A213495.P2472112285762315377

`∑[∑[2*(n-a(n-2))%3]]` with `a(0)=1, a(1)=2`
-/

namespace A213495.P2472112285762315377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  2 * Int.tmod ((n : ℤ) - f2 (n - 2)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P2472112285762315377

namespace A213495

/-- `∑[∑[2*(n-a(n-2))%3]]` -/
def P2472112285762315377.Spec : Prop :=
  ∀ n, P2472112285762315377.a n = A213495 n

end A213495

/-! ## A213495.P17784466790308205229

`∑[∑[a(n-3)+a(n-4)-a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A213495.P17784466790308205229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 2, 4] fun n f2 =>
  f2 (n - 3) + (f2 (n - 4) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P17784466790308205229

namespace A213495

/-- `∑[∑[a(n-3)+a(n-4)-a(n-1)]]` -/
def P17784466790308205229.Spec : Prop :=
  ∀ n, P17784466790308205229.a n = A213495 n

end A213495

/-! ## A213495.P10909342690490089723

`∑[or(1, ∑[A220128(n)])]`
-/

namespace A213495.P10909342690490089723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P10909342690490089723

namespace A213495

/-- `∑[or(1, ∑[A220128(n)])]` -/
def P10909342690490089723.Spec : Prop :=
  ∀ n, P10909342690490089723.a n = A213495 n

end A213495

/-! ## A213495.P14712209170136275598

`∑[or(1, A047342(n+1))]`
-/

namespace A213495.P14712209170136275598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047342 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P14712209170136275598

namespace A213495

/-- `∑[or(1, A047342(n+1))]` -/
def P14712209170136275598.Spec : Prop :=
  ∀ n, P14712209170136275598.a n = A213495 n

end A213495

/-! ## A213495.P3882477006515504447

`∑[or(1, 2*A004396(n)+n)]`
-/

namespace A213495.P3882477006515504447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A004396 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P3882477006515504447

namespace A213495

/-- `∑[or(1, 2*A004396(n)+n)]` -/
def P3882477006515504447.Spec : Prop :=
  ∀ n, P3882477006515504447.a n = A213495 n

end A213495

/-! ## A213495.P13874599237001829436

`(n+1)²+2*A211540(n+1)`
-/

namespace A213495.P13874599237001829436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A211540 (n + 1)

end

end A213495.P13874599237001829436

namespace A213495

/-- `(n+1)²+2*A211540(n+1)` -/
def P13874599237001829436.Spec : Prop :=
  ∀ n, P13874599237001829436.a n = A213495 n

end A213495

/-! ## A213495.P4953766463615016019

`A298785(n)-A000982(n)`
-/

namespace A213495.P4953766463615016019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298785 n - A000982 n

end

end A213495.P4953766463615016019

namespace A213495

/-- `A298785(n)-A000982(n)` -/
def P4953766463615016019.Spec : Prop :=
  ∀ n, P4953766463615016019.a n = A213495 n

end A213495

/-! ## A213495.P7285549146679139081

`A397981(n)+A001651(n+1)`
-/

namespace A213495.P7285549146679139081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397981 n + A001651 (n + 1)

end

end A213495.P7285549146679139081

namespace A213495

/-- `A397981(n)+A001651(n+1)` -/
def P7285549146679139081.Spec : Prop :=
  ∀ n, P7285549146679139081.a n = A213495 n

end A213495

/-! ## A213495.P6637190288016322058

`A008619(n)+∑[A047342(n+1)]`
-/

namespace A213495.P6637190288016322058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P6637190288016322058

namespace A213495

/-- `A008619(n)+∑[A047342(n+1)]` -/
def P6637190288016322058.Spec : Prop :=
  ∀ n, P6637190288016322058.a n = A213495 n

end A213495

/-! ## A213495.P1117447627191668902

`∑[A047323(n+1)-A000034(n)]`
-/

namespace A213495.P1117447627191668902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047323 (n + 1) - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P1117447627191668902

namespace A213495

/-- `∑[A047323(n+1)-A000034(n)]` -/
def P1117447627191668902.Spec : Prop :=
  ∀ n, P1117447627191668902.a n = A213495 n

end A213495

/-! ## A213495.P15150548245306983464

`∑[A109613(n)+2*A004396(n)]`
-/

namespace A213495.P15150548245306983464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + 2 * A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P15150548245306983464

namespace A213495

/-- `∑[A109613(n)+2*A004396(n)]` -/
def P15150548245306983464.Spec : Prop :=
  ∀ n, P15150548245306983464.a n = A213495 n

end A213495

/-! ## A213495.P11845317519289859368

`A212978(n)+A212978(n)-A032528(n+1)`
-/

namespace A213495.P11845317519289859368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 n + (A212978 n - A032528 (n + 1))

end

end A213495.P11845317519289859368

namespace A213495

/-- `A212978(n)+A212978(n)-A032528(n+1)` -/
def P11845317519289859368.Spec : Prop :=
  ∀ n, P11845317519289859368.a n = A213495 n

end A213495

/-! ## A213495.P4139955128782745316

`∑[A063195(n+2)+2*n]`
-/

namespace A213495.P4139955128782745316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P4139955128782745316

namespace A213495

/-- `∑[A063195(n+2)+2*n]` -/
def P4139955128782745316.Spec : Prop :=
  ∀ n, P4139955128782745316.a n = A213495 n

end A213495

/-! ## A213495.P9927444346566355886

`∑[A008611(n+2)+comp[or(2, n)]]`
-/

namespace A213495.P9927444346566355886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213495.P9927444346566355886

namespace A213495

/-- `∑[A008611(n+2)+comp[or(2, n)]]` -/
def P9927444346566355886.Spec : Prop :=
  ∀ n, P9927444346566355886.a n = A213495 n

end A213495

/-! ## A213495.P15788936140466147580

`A212959(n)-A128422(n+2)`
-/

namespace A213495.P15788936140466147580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n - A128422 (n + 2)

end

end A213495.P15788936140466147580

namespace A213495

/-- `A212959(n)-A128422(n+2)` -/
def P15788936140466147580.Spec : Prop :=
  ∀ n, P15788936140466147580.a n = A213495 n

end A213495

/-! ## A213495.P6092192805425157072

`A000384(n+1)-2*A242771(n+2)`
-/

namespace A213495.P6092192805425157072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1) - 2 * A242771 (n + 2)

end

end A213495.P6092192805425157072

namespace A213495

/-- `A000384(n+1)-2*A242771(n+2)` -/
def P6092192805425157072.Spec : Prop :=
  ∀ n, P6092192805425157072.a n = A213495 n

end A213495

/-!
# A213496: Number of (w,x,y) with all terms in {0,...,n} and x != max(|w-x|,|x-y|).

The programs for A213496, the canonical program `A213496.P2399231074337002066` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213496 has offset 0).

The definition of A213496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213496.P2399231074337002066

`(n+1)^3-A213399(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213496

/-- `(n+1)^3-A213399(n)` -/
def P2399231074337002066.Spec : Prop :=
  ∀ n, P2399231074337002066.a n = A213496 n

theorem P2399231074337002066.correct : P2399231074337002066.Spec := by
  intro n
  simp only [A213496]

end A213496

/-! ## A213496.P13634683309841493757

`∑[2*lcm(2, n)-n]+n^3`
-/

namespace A213496.P13634683309841493757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 3 : ℤ)

end

end A213496.P13634683309841493757

namespace A213496

/-- `∑[2*lcm(2, n)-n]+n^3` -/
def P13634683309841493757.Spec : Prop :=
  ∀ n, P13634683309841493757.a n = A213496 n

end A213496

/-! ## A213496.P5303389194579426892

`∑[n*3^(n%2)]+n^3`
-/

namespace A213496.P5303389194579426892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 3

end

end A213496.P5303389194579426892

namespace A213496

/-- `∑[n*3^(n%2)]+n^3` -/
def P5303389194579426892.Spec : Prop :=
  ∀ n, (P5303389194579426892.a n : ℤ) = A213496 n

end A213496

/-! ## A213496.P16785881387371853534

`∑[n*C(3, and(1, n))]+n^3`
-/

namespace A213496.P16785881387371853534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 3 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 3

end

end A213496.P16785881387371853534

namespace A213496

/-- `∑[n*C(3, and(1, n))]+n^3` -/
def P16785881387371853534.Spec : Prop :=
  ∀ n, (P16785881387371853534.a n : ℤ) = A213496 n

end A213496

/-! ## A213496.P7325013561537060744

`n^3+∑[and(1, n)]*Δ[n²]`
-/

namespace A213496.P7325013561537060744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A213496.P7325013561537060744

namespace A213496

/-- `n^3+∑[and(1, n)]*Δ[n²]` -/
def P7325013561537060744.Spec : Prop :=
  ∀ n, P7325013561537060744.a n = A213496 n

end A213496

/-! ## A213496.P3953550619516398449

`Δ[n*floor(n/2)]+∑[3*n²-n]`
-/

namespace A213496.P3953550619516398449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213496.P3953550619516398449

namespace A213496

/-- `Δ[n*floor(n/2)]+∑[3*n²-n]` -/
def P3953550619516398449.Spec : Prop :=
  ∀ n, P3953550619516398449.a n = A213496 n

end A213496

/-!
# A213497: Number of (w,x,y) with all terms in {0,...,n} and w = min(|w-x|, |x-y|).

The programs for A213497, the canonical program `A213497.P15710821422961545097` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213497 has offset 0).

The definition of A213497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213497.P15710821422961545097

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=17, a(4)=29, a(5)=40, a(6)=57`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213497

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P15710821422961545097.Spec : Prop :=
  ∀ n, P15710821422961545097.a n = A213497 n

theorem P15710821422961545097.correct : P15710821422961545097.Spec := by
  intro n
  simp only [A213497]

end A213497

/-! ## A213497.P5303007063089607121

`(n+1)^3-A213499(n)`
-/

namespace A213497.P5303007063089607121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213499 n

end

end A213497.P5303007063089607121

namespace A213497

/-- `(n+1)^3-A213499(n)` -/
def P5303007063089607121.Spec : Prop :=
  ∀ n, P5303007063089607121.a n = A213497 n

end A213497

/-! ## A213497.P11133322292374308043

`A212978(n)-∑[∑[A001057(n)]]`
-/

namespace A213497.P11133322292374308043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213497.P11133322292374308043

namespace A213497

/-- `A212978(n)-∑[∑[A001057(n)]]` -/
def P11133322292374308043.Spec : Prop :=
  ∀ n, P11133322292374308043.a n = A213497 n

end A213497

/-! ## A213497.P13071837232678080358

`A212978(n)-A008795(A004442(n))`
-/

namespace A213497.P13071837232678080358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 n - A008795 (A004442 n).toNat

end

end A213497.P13071837232678080358

namespace A213497

/-- `A212978(n)-A008795(A004442(n))` -/
def P13071837232678080358.Spec : Prop :=
  ∀ n, P13071837232678080358.a n = A213497 n

end A213497

/-! ## A213497.P12306515138242300874

`∑[A047408(n+1)-A142150(n+1)]`
-/

namespace A213497.P12306515138242300874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1) - A142150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213497.P12306515138242300874

namespace A213497

/-- `∑[A047408(n+1)-A142150(n+1)]` -/
def P12306515138242300874.Spec : Prop :=
  ∀ n, P12306515138242300874.a n = A213497 n

end A213497

/-! ## A213497.P15156281565477108388

`A210978(n)+A001399(2*n+1)`
-/

namespace A213497.P15156281565477108388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 n + A001399 (2 * n + 1)

end

end A213497.P15156281565477108388

namespace A213497

/-- `A210978(n)+A001399(2*n+1)` -/
def P15156281565477108388.Spec : Prop :=
  ∀ n, P15156281565477108388.a n = A213497 n

end A213497

/-! ## A213497.P4364347491816387266

`∑[A004773(2*n+1)-A142150(n+1)]`
-/

namespace A213497.P4364347491816387266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (2 * n + 1) - A142150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213497.P4364347491816387266

namespace A213497

/-- `∑[A004773(2*n+1)-A142150(n+1)]` -/
def P4364347491816387266.Spec : Prop :=
  ∀ n, P4364347491816387266.a n = A213497 n

end A213497

/-! ## A213497.P2432163044589086826

`∑[A004773(2*n+1)-A130507(2*n)]`
-/

namespace A213497.P2432163044589086826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (2 * n + 1) - A130507 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213497.P2432163044589086826

namespace A213497

/-- `∑[A004773(2*n+1)-A130507(2*n)]` -/
def P2432163044589086826.Spec : Prop :=
  ∀ n, P2432163044589086826.a n = A213497 n

end A213497

/-! ## A213497.P8616143258133755287

`A001318(2*n+1)+A001318(n+1)-A001840(2*n+1)`
-/

namespace A213497.P8616143258133755287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1) + (A001318 (n + 1) - A001840 (2 * n + 1))

end

end A213497.P8616143258133755287

namespace A213497

/-- `A001318(2*n+1)+A001318(n+1)-A001840(2*n+1)` -/
def P8616143258133755287.Spec : Prop :=
  ∀ n, P8616143258133755287.a n = A213497 n

end A213497

/-!
# A213498: Number of (w,x,y) with all terms in {0,...,n} and w != max(|w-x|,|x-y|,|y-w|).

The programs for A213498, the canonical program `A213498.P15064417530755661684` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213498 has offset 0).

The definition of A213498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213498.P15064417530755661684

`(2*n*(4*n²+5*n+5)-(2*n+1)*(-1)^n+1)/8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213498

/-- `(2*n*(4*n²+5*n+5)-(2*n+1)*(-1)^n+1)/8` -/
def P15064417530755661684.Spec : Prop :=
  ∀ n, P15064417530755661684.a n = (A213498 n : ℚ)

end A213498

/-! ## A213498.P16423529562587664757

`∑[lcm(2, n)+n]+n^3`
-/

namespace A213498.P16423529562587664757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 3

end

end A213498.P16423529562587664757

namespace A213498

/-- `∑[lcm(2, n)+n]+n^3` -/
def P16423529562587664757.Spec : Prop :=
  ∀ n, (P16423529562587664757.a n : ℤ) = A213498 n

end A213498

/-! ## A213498.P9138599122480798564

`∑[n*or(1, 3*n-1)]+n`
-/

namespace A213498.P9138599122480798564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 ((3 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A213498.P9138599122480798564

namespace A213498

/-- `∑[n*or(1, 3*n-1)]+n` -/
def P9138599122480798564.Spec : Prop :=
  ∀ n, P9138599122480798564.a n = A213498 n

end A213498

/-! ## A213498.P3577103409088845980

`A036666(n+1)+n^3`
-/

namespace A213498.P3577103409088845980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) + (n ^ 3 : ℤ)

end

end A213498.P3577103409088845980

namespace A213498

/-- `A036666(n+1)+n^3` -/
def P3577103409088845980.Spec : Prop :=
  ∀ n, P3577103409088845980.a n = A213498 n

end A213498

/-! ## A213498.P13961435514377682817

`(n+1)^3-A212965(n)`
-/

namespace A213498.P13961435514377682817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212965 n

end

end A213498.P13961435514377682817

namespace A213498

/-- `(n+1)^3-A212965(n)` -/
def P13961435514377682817.Spec : Prop :=
  ∀ n, P13961435514377682817.a n = A213498 n

end A213498

/-! ## A213498.P7744455219373458298

`A212960(n)-floor(n/2)²`
-/

namespace A213498.P7744455219373458298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n - ⌊(n : ℚ) / 2⌋ ^ 2

end

end A213498.P7744455219373458298

namespace A213498

/-- `A212960(n)-floor(n/2)²` -/
def P7744455219373458298.Spec : Prop :=
  ∀ n, P7744455219373458298.a n = A213498 n

end A213498

/-! ## A213498.P6143369757942493165

`n*(n+1)²-A032438(n)`
-/

namespace A213498.P6143369757942493165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) ^ 2 : ℤ) - A032438 n

end

end A213498.P6143369757942493165

namespace A213498

/-- `n*(n+1)²-A032438(n)` -/
def P6143369757942493165.Spec : Prop :=
  ∀ n, P6143369757942493165.a n = A213498 n

end A213498

/-! ## A213498.P12940168364908077373

`A000578(n)+∑[lcm(2, n)+n]`
-/

namespace A213498.P12940168364908077373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213498.P12940168364908077373

namespace A213498

/-- `A000578(n)+∑[lcm(2, n)+n]` -/
def P12940168364908077373.Spec : Prop :=
  ∀ n, P12940168364908077373.a n = A213498 n

end A213498

/-! ## A213498.P4506954471569259827

`A213496(n)+A110660(n)`
-/

namespace A213498.P4506954471569259827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213496 n + A110660 n

end

end A213498.P4506954471569259827

namespace A213498

/-- `A213496(n)+A110660(n)` -/
def P4506954471569259827.Spec : Prop :=
  ∀ n, P4506954471569259827.a n = A213498 n

end A213498

/-! ## A213498.P14325714818729277400

`A147656(n)-A110660(n)`
-/

namespace A213498.P14325714818729277400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n - A110660 n

end

end A213498.P14325714818729277400

namespace A213498

/-- `A147656(n)-A110660(n)` -/
def P14325714818729277400.Spec : Prop :=
  ∀ n, P14325714818729277400.a n = A213498 n

end A213498

/-! ## A213498.P13571712867718707418

`A261893(n)-A014255(n)`
-/

namespace A213498.P13571712867718707418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 n - A014255 n

end

end A213498.P13571712867718707418

namespace A213498

/-- `A261893(n)-A014255(n)` -/
def P13571712867718707418.Spec : Prop :=
  ∀ n, P13571712867718707418.a n = A213498 n

end A213498

/-! ## A213498.P17755191447824753720

`A069778(n)-A257083(n)`
-/

namespace A213498.P17755191447824753720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n - A257083 n

end

end A213498.P17755191447824753720

namespace A213498

/-- `A069778(n)-A257083(n)` -/
def P17755191447824753720.Spec : Prop :=
  ∀ n, P17755191447824753720.a n = A213498 n

end A213498

/-! ## A213498.P11597437254052531707

`A081436(n)-A247643(n)`
-/

namespace A213498.P11597437254052531707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n - A247643 n

end

end A213498.P11597437254052531707

namespace A213498

/-- `A081436(n)-A247643(n)` -/
def P11597437254052531707.Spec : Prop :=
  ∀ n, P11597437254052531707.a n = A213498 n

end A213498

/-! ## A213498.P11731106552704681668

`A027444(n)+A001057(n)²`
-/

namespace A213498.P11731106552704681668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n + A001057 n ^ 2

end

end A213498.P11731106552704681668

namespace A213498

/-- `A027444(n)+A001057(n)²` -/
def P11731106552704681668.Spec : Prop :=
  ∀ n, P11731106552704681668.a n = A213498 n

end A213498

/-! ## A213498.P10903033474330147682

`A027444(n)+A130472(n)²`
-/

namespace A213498.P10903033474330147682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n + A130472 n ^ 2

end

end A213498.P10903033474330147682

namespace A213498

/-- `A027444(n)+A130472(n)²` -/
def P10903033474330147682.Spec : Prop :=
  ∀ n, P10903033474330147682.a n = A213498 n

end A213498

/-! ## A213498.P1883333976213607551

`A185039(n+1)+A152015(n)`
-/

namespace A213498.P1883333976213607551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185039 (n + 1) + A152015 n

end

end A213498.P1883333976213607551

namespace A213498

/-- `A185039(n+1)+A152015(n)` -/
def P1883333976213607551.Spec : Prop :=
  ∀ n, P1883333976213607551.a n = A213498 n

end A213498

/-! ## A213498.P5910559039386182766

`A266958(n+1)+A152618(n)`
-/

namespace A213498.P5910559039386182766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266958 (n + 1) + A152618 n

end

end A213498.P5910559039386182766

namespace A213498

/-- `A266958(n+1)+A152618(n)` -/
def P5910559039386182766.Spec : Prop :=
  ∀ n, P5910559039386182766.a n = A213498 n

end A213498

/-! ## A213498.P8434141544388567408

`A298950(n+1)-A024001(n)`
-/

namespace A213498.P8434141544388567408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1) - A024001 n

end

end A213498.P8434141544388567408

namespace A213498

/-- `A298950(n+1)-A024001(n)` -/
def P8434141544388567408.Spec : Prop :=
  ∀ n, P8434141544388567408.a n = A213498 n

end A213498

/-! ## A213498.P8517289510798228991

`A069778(n)+n-A014255(n)`
-/

namespace A213498.P8517289510798228991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + ((n : ℤ) - A014255 n)

end

end A213498.P8517289510798228991

namespace A213498

/-- `A069778(n)+n-A014255(n)` -/
def P8517289510798228991.Spec : Prop :=
  ∀ n, P8517289510798228991.a n = A213498 n

end A213498

/-! ## A213498.P13237106230494630836

`A053698(n)+A110654(n)²-1`
-/

namespace A213498.P13237106230494630836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n + (A110654 n ^ 2 - 1)

end

end A213498.P13237106230494630836

namespace A213498

/-- `A053698(n)+A110654(n)²-1` -/
def P13237106230494630836.Spec : Prop :=
  ∀ n, P13237106230494630836.a n = A213498 n

end A213498

/-!
# A213499: Number of (w,x,y) with all terms in {0,...,n} and w != min(|w-x|, |x-y|).

The programs for A213499, the canonical program `A213499.P9188218732491846836` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213499 has offset 0).

The definition of A213499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213499.P9188218732491846836

`(n+1)^3-A213497(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213499

/-- `(n+1)^3-A213497(n)` -/
def P9188218732491846836.Spec : Prop :=
  ∀ n, P9188218732491846836.a n = A213499 n

theorem P9188218732491846836.correct : P9188218732491846836.Spec := by
  intro n
  simp only [A213499]

end A213499

/-! ## A213499.P7797813258997721323

`A213396(n)+A213397(n)-A213497(n)`
-/

namespace A213499.P7797813258997721323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213396 n + (A213397 n - A213497 n)

end

end A213499.P7797813258997721323

namespace A213499

/-- `A213396(n)+A213397(n)-A213497(n)` -/
def P7797813258997721323.Spec : Prop :=
  ∀ n, P7797813258997721323.a n = A213499 n

end A213499

/-! ## A213499.P14453189802193223413

`A213479(n)+A213480(n)-A213497(n)`
-/

namespace A213499.P14453189802193223413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213497 n)

end

end A213499.P14453189802193223413

namespace A213499

/-- `A213479(n)+A213480(n)-A213497(n)` -/
def P14453189802193223413.Spec : Prop :=
  ∀ n, P14453189802193223413.a n = A213499 n

end A213499

/-! ## A213499.P12696236412982735034

`A213482(n)+A213483(n)-A213497(n)`
-/

namespace A213499.P12696236412982735034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A213497 n)

end

end A213499.P12696236412982735034

namespace A213499

/-- `A213482(n)+A213483(n)-A213497(n)` -/
def P12696236412982735034.Spec : Prop :=
  ∀ n, P12696236412982735034.a n = A213499 n

end A213499

/-! ## A213499.P7058970895097442850

`A213492(n)+A213495(n)-A213497(n)`
-/

namespace A213499.P7058970895097442850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213492 n + (A213495 n - A213497 n)

end

end A213499.P7058970895097442850

namespace A213499

/-- `A213492(n)+A213495(n)-A213497(n)` -/
def P7058970895097442850.Spec : Prop :=
  ∀ n, P7058970895097442850.a n = A213499 n

end A213499

