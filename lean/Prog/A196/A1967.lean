import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C038
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
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A196700: Number of n X 1 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196700, the canonical program `A196700.P12441915072004232479` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196700 has offset 1).

The definition of A196700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196700.P11630074786642753787

`ogf((1+x+x^2-x^3)/(1-x-x^2-x^3))`
-/

namespace A196700.P11630074786642753787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1] [1, -1, -1, -1] n

end

end A196700.P11630074786642753787

namespace A196700

/-- `ogf((1+x+x^2-x^3)/(1-x-x^2-x^3))` -/
def P11630074786642753787.Spec : Prop :=
  ∀ n, P11630074786642753787.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P12441915072004232479

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196700

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P12441915072004232479.Spec : Prop :=
  ∀ n, (P12441915072004232479.a n : ℤ) = A196700 (n + 1)

theorem P12441915072004232479.correct : P12441915072004232479.Spec := by
  intro n
  simp only [A196700, Nat.add_sub_cancel]

end A196700

/-! ## A196700.P4146299506139676040

`A000073(n)+record[A081172(n)]`
-/

namespace A196700.P4146299506139676040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196700.P4146299506139676040

namespace A196700

/-- `A000073(n)+record[A081172(n)]` -/
def P4146299506139676040.Spec : Prop :=
  ∀ n, P4146299506139676040.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P15332719799892005560

`record[A001590(n+1)*A040001(2*n)]`
-/

namespace A196700.P15332719799892005560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) * A040001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196700.P15332719799892005560

namespace A196700

/-- `record[A001590(n+1)*A040001(2*n)]` -/
def P15332719799892005560.Spec : Prop :=
  ∀ n, P15332719799892005560.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P15847353613021888790

`A000213(n+1)+A186272(n+2)-A000045(n+1)`
-/

namespace A196700.P15847353613021888790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A186272 (n + 2) - A000045 (n + 1))

end

end A196700.P15847353613021888790

namespace A196700

/-- `A000213(n+1)+A186272(n+2)-A000045(n+1)` -/
def P15847353613021888790.Spec : Prop :=
  ∀ n, P15847353613021888790.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P18008716724312328549

`Δ[A135491(n)]`
-/

namespace A196700.P18008716724312328549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196700.P18008716724312328549

namespace A196700

/-- `Δ[A135491(n)]` -/
def P18008716724312328549.Spec : Prop :=
  ∀ n, P18008716724312328549.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P2815776043416731646

`Δ[A288599(n)+A000007(n)]`
-/

namespace A196700.P2815776043416731646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196700.P2815776043416731646

namespace A196700

/-- `Δ[A288599(n)+A000007(n)]` -/
def P2815776043416731646.Spec : Prop :=
  ∀ n, P2815776043416731646.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P9438636135372930605

`Δ[A288599(n)-A057427(n)]`
-/

namespace A196700.P9438636135372930605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196700.P9438636135372930605

namespace A196700

/-- `Δ[A288599(n)-A057427(n)]` -/
def P9438636135372930605.Spec : Prop :=
  ∀ n, P9438636135372930605.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P13086387407868223234

`record[A141036(n)]-A214727(n)`
-/

namespace A196700.P13086387407868223234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A214727 n

end

end A196700.P13086387407868223234

namespace A196700

/-- `record[A141036(n)]-A214727(n)` -/
def P13086387407868223234.Spec : Prop :=
  ∀ n, P13086387407868223234.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P8501961936899727679

`A135491(n+1)-A135491(n)`
-/

namespace A196700.P8501961936899727679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 1) - A135491 n

end

end A196700.P8501961936899727679

namespace A196700

/-- `A135491(n+1)-A135491(n)` -/
def P8501961936899727679.Spec : Prop :=
  ∀ n, P8501961936899727679.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P4448464196127688744

`Δ[A288599(n)-A157532(n+1)]`
-/

namespace A196700.P4448464196127688744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 n - A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196700.P4448464196127688744

namespace A196700

/-- `Δ[A288599(n)-A157532(n+1)]` -/
def P4448464196127688744.Spec : Prop :=
  ∀ n, P4448464196127688744.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P15765487800311941288

`A282718(n+2)-A100683(n+1)`
-/

namespace A196700.P15765487800311941288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 (n + 2) - A100683 (n + 1)

end

end A196700.P15765487800311941288

namespace A196700

/-- `A282718(n+2)-A100683(n+1)` -/
def P15765487800311941288.Spec : Prop :=
  ∀ n, P15765487800311941288.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P18263448975999769602

`Δ[Δ[A054668(n+1)]]`
-/

namespace A196700.P18263448975999769602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196700.P18263448975999769602

namespace A196700

/-- `Δ[Δ[A054668(n+1)]]` -/
def P18263448975999769602.Spec : Prop :=
  ∀ n, P18263448975999769602.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P9983722252307596547

`Δ[Δ[A000213(n+2)-A057427(n)]]`
-/

namespace A196700.P9983722252307596547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) - A057427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196700.P9983722252307596547

namespace A196700

/-- `Δ[Δ[A000213(n+2)-A057427(n)]]` -/
def P9983722252307596547.Spec : Prop :=
  ∀ n, P9983722252307596547.a n = A196700 (n + 1)

end A196700

/-! ## A196700.P17908167888236706614

`Δ[A230216(n+2)/4]`
-/

namespace A196700.P17908167888236706614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230216 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196700.P17908167888236706614

namespace A196700

/-- `Δ[A230216(n+2)/4]` -/
def P17908167888236706614.Spec : Prop :=
  ∀ n, P17908167888236706614.a n = (A196700 (n + 1) : ℚ)

end A196700

/-! ## A196700.P1793775830076405546

`record[A135491(n)%A141036(n)]`
-/

namespace A196700.P1793775830076405546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135491 n) (A141036 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196700.P1793775830076405546

namespace A196700

/-- `record[A135491(n)%A141036(n)]` -/
def P1793775830076405546.Spec : Prop :=
  ∀ n, P1793775830076405546.a n = A196700 (n + 1)

end A196700

/-!
# A196701: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196701, there is no canonical definition to state claims against.
-/

/-! ## A196701.P12399888236395392033

`A196707(∑[n+1]+2)`
-/

namespace A196701.P12399888236395392033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196701.P12399888236395392033

/-! ## A196701.P10427077788980260390

`record[gcd(A002262(n), A196707(n+2))]`
-/

namespace A196701.P10427077788980260390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A196707 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196701.P10427077788980260390

/-! ## A196701.P6980831920076976620

`record[A196707(abs(A201163(n)))]`
-/

namespace A196701.P6980831920076976620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196701.P6980831920076976620

/-! ## A196701.P3825209050269713200

`record[A196707(Δ[A003453(n+5)])]`
-/

namespace A196701.P3825209050269713200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196701.P3825209050269713200

/-! ## A196701.P8250830465745673767

`A196707(A000096(n+1))%A296599(A000096(n+5)+8)`
-/

namespace A196701.P8250830465745673767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196707 (A000096 (n + 1)).toNat) (A296599 (A000096 (n + 5) + 8).toNat)

end

end A196701.P8250830465745673767

/-!
# A196702: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196702, there is no canonical definition to state claims against.
-/

/-! ## A196702.P18178506393181584179

`A196707(∑[n+2]+4)`
-/

namespace A196702.P18178506393181584179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196702.P18178506393181584179

/-! ## A196702.P7657655308009182276

`lcm((-1)^n, A196707(A167614(n+1)))`
-/

namespace A196702.P7657655308009182276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A196707 (A167614 (n + 1)).toNat)

end

end A196702.P7657655308009182276

/-! ## A196702.P3843959700591872368

`A196707(A167614(n+1))%A187078(n)`
-/

namespace A196702.P3843959700591872368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196707 (A167614 (n + 1)).toNat) (A187078 n)

end

end A196702.P3843959700591872368

/-! ## A196702.P15541463054724865592

`or(A025462(n), A196707(A167614(n+1)))`
-/

namespace A196702.P15541463054724865592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025462 n) (A196707 (A167614 (n + 1)).toNat)

end

end A196702.P15541463054724865592

/-! ## A196702.P7343691421411977

`A196707(A167614(n+1))+A151909(n+1)`
-/

namespace A196702.P7343691421411977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A167614 (n + 1)).toNat + A151909 (n + 1)

end

end A196702.P7343691421411977

/-!
# A196703: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196703, there is no canonical definition to state claims against.
-/

/-! ## A196703.P17835877553022357328

`A196707(A374004(n+1))`
-/

namespace A196703.P17835877553022357328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A374004 (n + 1)).toNat

end

end A196703.P17835877553022357328

/-! ## A196703.P8337606898786181624

`A196707(A052905(n)+9)`
-/

namespace A196703.P8337606898786181624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A052905 n + 9).toNat

end

end A196703.P8337606898786181624

/-! ## A196703.P11064078629695304573

`A196707(A055999(n)+10)`
-/

namespace A196703.P11064078629695304573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A055999 n + 10).toNat

end

end A196703.P11064078629695304573

/-! ## A196703.P5866549044525734720

`A196707(A167614(n+2)+1)`
-/

namespace A196703.P5866549044525734720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A167614 (n + 2) + 1).toNat

end

end A196703.P5866549044525734720

/-! ## A196703.P1169729943633272976

`A196707(eq[5, A131818(n+1)])`
-/

namespace A196703.P1169729943633272976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196703.P1169729943633272976

/-!
# A196704: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196704, there is no canonical definition to state claims against.
-/

/-! ## A196704.P4441791589875321946

`A196707(A374005(n+1))`
-/

namespace A196704.P4441791589875321946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A374005 (n + 1)).toNat

end

end A196704.P4441791589875321946

/-! ## A196704.P8092105826201424531

`A196707(A155212(n)+13)`
-/

namespace A196704.P8092105826201424531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A155212 n + 13).toNat

end

end A196704.P8092105826201424531

/-! ## A196704.P12331744051175541151

`A196707(A056000(n)+15)`
-/

namespace A196704.P12331744051175541151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A056000 n + 15).toNat

end

end A196704.P12331744051175541151

/-! ## A196704.P11591252764730587981

`A196707(A046691(n+2)+9)`
-/

namespace A196704.P11591252764730587981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A046691 (n + 2) + 9).toNat

end

end A196704.P11591252764730587981

/-! ## A196704.P6165446314435222915

`A196707(eq[6, A131818(n+1)])`
-/

namespace A196704.P6165446314435222915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196704.P6165446314435222915

/-!
# A196705: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196705, there is no canonical definition to state claims against.
-/

/-! ## A196705.P12105235704939287471

`A196707(A374007(n+1))`
-/

namespace A196705.P12105235704939287471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A374007 (n + 1)).toNat

end

end A196705.P12105235704939287471

/-! ## A196705.P161826536341794129

`A196707(eq[7, A131818(n+1)])`
-/

namespace A196705.P161826536341794129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196705.P161826536341794129

/-! ## A196705.P3338349277928620283

`A196707(A052905(n+3))`
-/

namespace A196705.P3338349277928620283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A052905 (n + 3)).toNat

end

end A196705.P3338349277928620283

/-! ## A196705.P2174639347048513268

`A196707(eq[3, A219347(n)])`
-/

namespace A196705.P2174639347048513268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196705.P2174639347048513268

/-! ## A196705.P14172055748309599349

`A196707(eq[5, A193592(n)])`
-/

namespace A196705.P14172055748309599349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196705.P14172055748309599349

/-!
# A196706: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196706, there is no canonical definition to state claims against.
-/

/-! ## A196706.P10689948514759396753

`A196707(A374008(n+1))`
-/

namespace A196706.P10689948514759396753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A374008 (n + 1)).toNat

end

end A196706.P10689948514759396753

/-! ## A196706.P14554987543134806953

`A196707(A056119(n)+28)`
-/

namespace A196706.P14554987543134806953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A056119 n + 28).toNat

end

end A196706.P14554987543134806953

/-! ## A196706.P4315286789194848146

`A196707(A000096(n+5)+8)`
-/

namespace A196706.P4315286789194848146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A000096 (n + 5) + 8).toNat

end

end A196706.P4315286789194848146

/-! ## A196706.P11073939023614833668

`A196707(eq[8, A131818(n+1)])`
-/

namespace A196706.P11073939023614833668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196706.P11073939023614833668

/-! ## A196706.P754536938954443927

`A196707(A046691(n+6)-4-2*n)`
-/

namespace A196706.P754536938954443927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A046691 (n + 6) - 4 - (2 * n : ℤ)).toNat

end

end A196706.P754536938954443927

/-!
# A196707: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196707, there is no canonical definition to state claims against.
-/

/-! ## A196707.P16242522404304583462

`A196856(n+1)+A102683(A001405(n))`
-/

namespace A196707.P16242522404304583462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (n + 1) + A102683 (A001405 n).toNat

end

end A196707.P16242522404304583462

/-! ## A196707.P2617430048410786177

`A196856(n+1)+A102683(A081668(n))`
-/

namespace A196707.P2617430048410786177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (n + 1) + A102683 (A081668 n).toNat

end

end A196707.P2617430048410786177

/-! ## A196707.P4371150703875254733

`A196856(n+1)+A156659(A174616(n))`
-/

namespace A196707.P4371150703875254733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (n + 1) + A156659 (A174616 n).toNat

end

end A196707.P4371150703875254733

/-! ## A196707.P1560799068866960641

`A262693(A101127(n))+A196856(n+1)`
-/

namespace A196707.P1560799068866960641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A101127 n).toNat + A196856 (n + 1)

end

end A196707.P1560799068866960641

/-! ## A196707.P6134829655651885524

`A196856(n+1)+A102683(A064078(n+1))`
-/

namespace A196707.P6134829655651885524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (n + 1) + A102683 (A064078 (n + 1)).toNat

end

end A196707.P6134829655651885524

/-!
# A196708: G.f.: A(x) = INV(x*(1-x) - x^2*INV(x*(1-x)^2 - x^2*INV(x*(1-x)^3 - x^2*INV(x*(1-x)^4 - x^2*INV(x*(1-x)^5 - ...))))), where INV(F(x)) = series reversion of F(x).

The programs for A196708, there is no canonical definition to state claims against.
-/

/-! ## A196708.P3666921506166794432

`A179325(n+1)-A025428(A179342(n+1))`
-/

namespace A196708.P3666921506166794432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179325 (n + 1) - A025428 (A179342 (n + 1)).toNat

end

end A196708.P3666921506166794432

/-! ## A196708.P15200894967101990604

`A115086(n)+A036586(A046908(n))`
-/

namespace A196708.P15200894967101990604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115086 n + A036586 (A046908 n).toNat

end

end A196708.P15200894967101990604

/-!
# A196709: G.f.: A(x) = INV(x - x*INV(x - 2*x^2*INV(x - 3*x^3*INV(x - 4*x^4*INV(x - ...))))), where INV(F(x)) = series reversion of F(x).

The programs for A196709, there is no canonical definition to state claims against.
-/

/-! ## A196709.P10544069044749498959

`A076499(A183876(n))`
-/

namespace A196709.P10544069044749498959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076499 (A183876 n).toNat

end

end A196709.P10544069044749498959

/-! ## A196709.P239045808918662981

`A055930(A001003(n))+1`
-/

namespace A196709.P239045808918662981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A001003 n).toNat + 1

end

end A196709.P239045808918662981

/-! ## A196709.P8509946552862470579

`A228297(A342519(∑[∑[n]]))`
-/

namespace A196709.P8509946552862470579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228297 (A342519 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A196709.P8509946552862470579

/-!
# A196710: G.f.: A(x) = INV(x-x^2 - x^2*INV(x-2*x^2 - x^2*INV(x-3*x^2 - x^2*INV(x-4*x^2 - x^2*INV(x-5*x^2 - ...))))), where INV(F(x)) = series reversion of F(x).

The programs for A196710, there is no canonical definition to state claims against.
-/

/-! ## A196710.P6075651946657018226

`A331157(n)-A000376(n+1)`
-/

namespace A196710.P6075651946657018226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331157 n - A000376 (n + 1)

end

end A196710.P6075651946657018226

/-! ## A196710.P4636775545644838691

`A028342(n)+A010059(A000312(n))`
-/

namespace A196710.P4636775545644838691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028342 n + A010059 (A000312 n).toNat

end

end A196710.P4636775545644838691

/-!
# A196711: G.f.: A(x) = INV(x-x^2 - x^2*INV(x-2*x^2 - x^2*INV(x-4*x^2 - x^2*INV(x-8*x^2 - x^2*INV(x-16*x^2 - ...))))), where INV(F(x)) = series reversion of F(x).

The programs for A196711, there is no canonical definition to state claims against.
-/

/-! ## A196711.P8456641746753929369

`A004525(A001251(n+1))+n!`
-/

namespace A196711.P8456641746753929369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001251 (n + 1)).toNat + (Nat.factorial n : ℤ)

end

end A196711.P8456641746753929369

/-! ## A196711.P18347204986789963962

`A028310(A213452(n+1)+n!)`
-/

namespace A196711.P18347204986789963962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A213452 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A196711.P18347204986789963962

/-! ## A196711.P17968026691174867602

`A304788(n)-A334348(A001192(n))`
-/

namespace A196711.P17968026691174867602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304788 n - A334348 (A001192 n).toNat

end

end A196711.P17968026691174867602

/-!
# A196712: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,2,1,3 for x=0,1,2,3,4.

The programs for A196712, there is no canonical definition to state claims against.
-/

/-! ## A196712.P4947161786036546361

`A196718(∑[4*n]+1)`
-/

namespace A196712.P4947161786036546361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196712.P4947161786036546361

/-! ## A196712.P2352637498393571790

`record[A196718(Δ[A235355(n)])]`
-/

namespace A196712.P2352637498393571790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196712.P2352637498393571790

/-! ## A196712.P323491837225857416

`record[A196718(A330613(n+1))]`
-/

namespace A196712.P323491837225857416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196712.P323491837225857416

/-! ## A196712.P7816985730664488149

`A196718(A001844(n))+char[8]`
-/

namespace A196712.P7816985730664488149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196712.P7816985730664488149

/-!
# A196713: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,2,1,3 for x=0,1,2,3,4.

The programs for A196713, there is no canonical definition to state claims against.
-/

/-! ## A196713.P8394274007476620265

`A196718(∑[n+2]+4)`
-/

namespace A196713.P8394274007476620265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196713.P8394274007476620265

/-! ## A196713.P5455611328838185099

`A196718(A167614(n+1))+char[15]`
-/

namespace A196713.P5455611328838185099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196713.P5455611328838185099

/-! ## A196713.P17391935019116487234

`record[gcd(A025581(n), A196718(n+4))]`
-/

namespace A196713.P17391935019116487234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A196718 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196713.P17391935019116487234

/-! ## A196713.P8835312069316829231

`or(A054900(n), A196718(A167614(n+1)))`
-/

namespace A196713.P8835312069316829231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054900 n) (A196718 (A167614 (n + 1)).toNat)

end

end A196713.P8835312069316829231

/-! ## A196713.P4443392917191928110

`or(A165656(n), A196718(A167614(n+1)))`
-/

namespace A196713.P4443392917191928110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165656 n) (A196718 (A167614 (n + 1)).toNat)

end

end A196713.P4443392917191928110

/-!
# A196714: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,2,1,3 for x=0,1,2,3,4.

The programs for A196714, there is no canonical definition to state claims against.
-/

/-! ## A196714.P13617369279329220764

`A196718(∑[n+3]+7)`
-/

namespace A196714.P13617369279329220764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A196714.P13617369279329220764

/-! ## A196714.P16771110449375789910

`A196718(A374004(n+1))%A295981(n+3)`
-/

namespace A196714.P16771110449375789910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196718 (A374004 (n + 1)).toNat) (A295981 (n + 3))

end

end A196714.P16771110449375789910

/-!
# A196715: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,2,1,3 for x=0,1,2,3,4.

The programs for A196715, there is no canonical definition to state claims against.
-/

/-! ## A196715.P9420828034809284338

`A196718(A374005(n+1))`
-/

namespace A196715.P9420828034809284338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A374005 (n + 1)).toNat

end

end A196715.P9420828034809284338

/-! ## A196715.P7856953587947158911

`A196718(A167499(n+3))`
-/

namespace A196715.P7856953587947158911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A167499 (n + 3)).toNat

end

end A196715.P7856953587947158911

/-! ## A196715.P1447214425786784192

`A196718(A155212(n)+13)`
-/

namespace A196715.P1447214425786784192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A155212 n + 13).toNat

end

end A196715.P1447214425786784192

/-! ## A196715.P10236699250915206205

`A196718(A056000(n)+15)`
-/

namespace A196715.P10236699250915206205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A056000 n + 15).toNat

end

end A196715.P10236699250915206205

/-! ## A196715.P15369428307487998370

`A196718(eq[7, A066657(n)])`
-/

namespace A196715.P15369428307487998370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196715.P15369428307487998370

/-!
# A196716: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,2,1,3 for x=0,1,2,3,4.

The programs for A196716, there is no canonical definition to state claims against.
-/

/-! ## A196716.P9582882281548137624

`A196718(A374007(n+1))`
-/

namespace A196716.P9582882281548137624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A374007 (n + 1)).toNat

end

end A196716.P9582882281548137624

/-! ## A196716.P12369391409046414269

`A196718(A166136(n+4))`
-/

namespace A196716.P12369391409046414269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A166136 (n + 4)).toNat

end

end A196716.P12369391409046414269

/-! ## A196716.P8343708302487350816

`A196718(A056115(n)+21)`
-/

namespace A196716.P8343708302487350816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A056115 n + 21).toNat

end

end A196716.P8343708302487350816

/-! ## A196716.P7607755963402937618

`A196718(A167499(n+4)+1)`
-/

namespace A196716.P7607755963402937618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A167499 (n + 4) + 1).toNat

end

end A196716.P7607755963402937618

/-! ## A196716.P10138546028171526459

`A196718(A167614(n+4)+3)`
-/

namespace A196716.P10138546028171526459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A167614 (n + 4) + 3).toNat

end

end A196716.P10138546028171526459

/-!
# A196717: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,2,1,3 for x=0,1,2,3,4.

The programs for A196717, there is no canonical definition to state claims against.
-/

/-! ## A196717.P14096515559702190731

`A196718(A374008(n+1))`
-/

namespace A196717.P14096515559702190731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A374008 (n + 1)).toNat

end

end A196717.P14096515559702190731

/-! ## A196717.P8690405286629316256

`A196718(A302537(n)+27)`
-/

namespace A196717.P8690405286629316256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A302537 n + 27).toNat

end

end A196717.P8690405286629316256

/-! ## A196717.P149517354589466693

`A196718(eq[11, A066657(n)])`
-/

namespace A196717.P149517354589466693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196717.P149517354589466693

/-! ## A196717.P14330922370298480283

`A196718(A166136(n+5)+1)`
-/

namespace A196717.P14330922370298480283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A166136 (n + 5) + 1).toNat

end

end A196717.P14330922370298480283

/-! ## A196717.P9396504808690947671

`A196718(A000124(n+6)+6)`
-/

namespace A196717.P9396504808690947671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A000124 (n + 6) + 6).toNat

end

end A196717.P9396504808690947671

/-!
# A196719: Number of subsets of {1..n} (including empty set) such that the pairwise GCDs of elements are all distinct.

The programs for A196719, there is no canonical definition to state claims against.
-/

/-! ## A196719.P14150981466317187932

`A204551(A256402(n))+∑[n]`
-/

namespace A196719.P14150981466317187932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A256402 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A196719.P14150981466317187932

/-! ## A196719.P17688254225477435273

`A288425(n+1)+A060240(n)`
-/

namespace A196719.P17688254225477435273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288425 (n + 1) + A060240 n

end

end A196719.P17688254225477435273

/-! ## A196719.P5927646062387342930

`∑[A006968(A330153(n+1)²)]`
-/

namespace A196719.P5927646062387342930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A330153 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196719.P5927646062387342930

/-! ## A196719.P15883201204856824975

`A288425(n+1)+A008612(n)!`
-/

namespace A196719.P15883201204856824975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288425 (n + 1) + (Nat.factorial (A008612 n).toNat : ℤ)

end

end A196719.P15883201204856824975

/-! ## A196719.P15648666255373190820

`A288425(n+1)+A025843(n)!`
-/

namespace A196719.P15648666255373190820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288425 (n + 1) + (Nat.factorial (A025843 n).toNat : ℤ)

end

end A196719.P15648666255373190820

/-!
# A196721: Number of subsets of {1..n} (including empty set) such that the pairwise LCMs of elements are all distinct.

The programs for A196721, there is no canonical definition to state claims against.
-/

/-! ## A196721.P18104425906424918633

`A002024(A000837(n)*A130750(n))`
-/

namespace A196721.P18104425906424918633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000837 n * A130750 n).toNat

end

end A196721.P18104425906424918633

/-! ## A196721.P5591268849432515283

`A284359(A000225(n)*A000837(n))`
-/

namespace A196721.P5591268849432515283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A000225 n * A000837 n).toNat

end

end A196721.P5591268849432515283

/-!
# A196722: Number of subsets of {1..n} (including empty set) such that the pairwise LCMs of elements are not distinct.

The programs for A196722, there is no canonical definition to state claims against.
-/

/-! ## A196722.P2576449861284290131

`∑[A340998(A290950(n+1))+A321378(n)+n]`
-/

namespace A196722.P2576449861284290131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A290950 (n + 1)).toNat + 140) + A321378 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196722.P2576449861284290131

/-! ## A196722.P7749660296625759895

`∑[A291784(A319416(2^n))]`
-/

namespace A196722.P7749660296625759895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A319416 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196722.P7749660296625759895

/-! ## A196722.P18090504721222613055

`∑[A291784(A320111(2^n))]`
-/

namespace A196722.P18090504721222613055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A320111 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196722.P18090504721222613055

/-! ## A196722.P1422372384783989840

`∑[A291784(A001511(ceil(2^(n-1))))]`
-/

namespace A196722.P1422372384783989840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A001511 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196722.P1422372384783989840

/-! ## A196722.P13053697021210617227

`∑[A291784(A007306(ceil(2^(n-1))))]`
-/

namespace A196722.P13053697021210617227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A007306 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196722.P13053697021210617227

/-!
# A196723: Number of subsets of {1..n} (including empty set) such that the pairwise sums of distinct elements are all distinct.

The programs for A196723, there is no canonical definition to state claims against.
-/

/-! ## A196723.P17839613760145591150

`eq[1, dr(A136809(n+1))]`
-/

namespace A196723.P17839613760145591150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136809 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196723.P17839613760145591150

/-! ## A196723.P11491613971843270611

`∑[A204164(A024207(n))]`
-/

namespace A196723.P11491613971843270611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A024207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196723.P11491613971843270611

/-! ## A196723.P864529690107178867

`∑[∑[A157684(A265066(n))]-n]`
-/

namespace A196723.P864529690107178867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A265066 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196723.P864529690107178867

/-! ## A196723.P3471157104518570399

`∑[A353866(∑[A068921(n)])-n]`
-/

namespace A196723.P3471157104518570399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196723.P3471157104518570399

/-! ## A196723.P883901679243174545

`∑[A085141(A130129(n)+1)-n]`
-/

namespace A196723.P883901679243174545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A130129 n + 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196723.P883901679243174545

/-!
# A196724: Number of subsets of {1..n} (including empty set) such that the pairwise products of distinct elements are all distinct.

The programs for A196724, there is no canonical definition to state claims against.
-/

/-! ## A196724.P3733538600096947105

`∑{d}[A032559(n+1), A337665(#)]`
-/

namespace A196724.P3733538600096947105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A337665 d

end

end A196724.P3733538600096947105

/-! ## A196724.P6966282046378121791

`∑[xor(A000005(n!), A079207(n))]`
-/

namespace A196724.P6966282046378121791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (Nat.factorial n)) (A079207 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196724.P6966282046378121791

/-! ## A196724.P8189055487655008377

`2^n+1-A195935(A010750(n))`
-/

namespace A196724.P8189055487655008377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1 : ℤ) - A195935 (A010750 n).toNat

end

end A196724.P8189055487655008377

/-! ## A196724.P16700692854645678146

`2^n+1-A338263(A316106(n))`
-/

namespace A196724.P16700692854645678146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1 : ℤ) - A338263 (A316106 n).toNat

end

end A196724.P16700692854645678146

/-! ## A196724.P15923998118455326928

`A257639(A163774(n))+A004526(A291241(n))`
-/

namespace A196724.P15923998118455326928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A163774 n).toNat + A004526 (A291241 n).toNat

end

end A196724.P15923998118455326928

/-!
# A196725: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,4,0,3 for x=0,1,2,3,4.

The programs for A196725, there is no canonical definition to state claims against.
-/

/-! ## A196725.P5610050005933403943

`A196729(∑[4*n]+1)`
-/

namespace A196725.P5610050005933403943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196725.P5610050005933403943

/-! ## A196725.P13388245553356854322

`record[A003982(n)*A196729(n+1)]`
-/

namespace A196725.P13388245553356854322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196725.P13388245553356854322

/-! ## A196725.P12482997821889411576

`record[gcd(A114327(n), A196729(n+1))]`
-/

namespace A196725.P12482997821889411576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A196729 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196725.P12482997821889411576

/-! ## A196725.P18326002486558640725

`A124778(n)*A196729(A001844(n))`
-/

namespace A196725.P18326002486558640725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n * A196729 (A001844 n).toNat

end

end A196725.P18326002486558640725

/-! ## A196725.P15204869782861525967

`A196729(A001844(n))^A326029(n)`
-/

namespace A196725.P15204869782861525967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196729 (A001844 n).toNat : ℚ) ^ (A326029 n : ℤ)

end

end A196725.P15204869782861525967

/-!
# A196726: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,4,0,3 for x=0,1,2,3,4.

The programs for A196726, there is no canonical definition to state claims against.
-/

/-! ## A196726.P5305572173133546154

`A196729(A374005(n+1))`
-/

namespace A196726.P5305572173133546154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A374005 (n + 1)).toNat

end

end A196726.P5305572173133546154

/-! ## A196726.P6704050663323587868

`A196729(A167499(n+3))`
-/

namespace A196726.P6704050663323587868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A167499 (n + 3)).toNat

end

end A196726.P6704050663323587868

/-! ## A196726.P978631448199968175

`A196729(A056000(n)+15)`
-/

namespace A196726.P978631448199968175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A056000 n + 15).toNat

end

end A196726.P978631448199968175

/-! ## A196726.P17672089034494984201

`A196729(eq[6, A131818(n+1)])`
-/

namespace A196726.P17672089034494984201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196726.P17672089034494984201

/-! ## A196726.P8265101925002743133

`A196729(Δ[A264443(n)])`
-/

namespace A196726.P8265101925002743133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (f1 (n + 1) - f1 n).toNat

end

end A196726.P8265101925002743133

/-!
# A196727: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,4,0,3 for x=0,1,2,3,4.

The programs for A196727, there is no canonical definition to state claims against.
-/

/-! ## A196727.P7511612234636374238

`A196729(A374007(n+1))`
-/

namespace A196727.P7511612234636374238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A374007 (n + 1)).toNat

end

end A196727.P7511612234636374238

/-! ## A196727.P8103399878708181411

`A196729(eq[7, A131818(n+1)])`
-/

namespace A196727.P8103399878708181411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196727.P8103399878708181411

/-! ## A196727.P7510485288806229255

`A196729(A052905(n+3))`
-/

namespace A196727.P7510485288806229255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A052905 (n + 3)).toNat

end

end A196727.P7510485288806229255

/-! ## A196727.P6657870064012156916

`A196729(A056119(n)+16)`
-/

namespace A196727.P6657870064012156916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A056119 n + 16).toNat

end

end A196727.P6657870064012156916

/-! ## A196727.P5814536447781019905

`A196729(eq[3, A219347(n)])`
-/

namespace A196727.P5814536447781019905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196727.P5814536447781019905

/-!
# A196728: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,4,0,3 for x=0,1,2,3,4.

The programs for A196728, there is no canonical definition to state claims against.
-/

/-! ## A196728.P8620370488407456265

`A196729(A374008(n+1))`
-/

namespace A196728.P8620370488407456265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A374008 (n + 1)).toNat

end

end A196728.P8620370488407456265

/-! ## A196728.P16513176077384465592

`A196729(A000124(n+6)+6)`
-/

namespace A196728.P16513176077384465592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A000124 (n + 6) + 6).toNat

end

end A196728.P16513176077384465592

/-! ## A196728.P5460999986482546856

`A196729(eq[8, A131818(n+1)])`
-/

namespace A196728.P5460999986482546856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196728.P5460999986482546856

/-! ## A196728.P7730769942402119872

`A196729(A055999(n+4))`
-/

namespace A196728.P7730769942402119872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A055999 (n + 4)).toNat

end

end A196728.P7730769942402119872

/-! ## A196728.P2405212877901919465

`A196729(eq[4, A219347(n)])`
-/

namespace A196728.P2405212877901919465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196728.P2405212877901919465

/-!
# A196730: Numbers m such that the sum of the distinct residues of x^m (mod m) is a perfect square, x=0..m-1.

The programs for A196730, there is no canonical definition to state claims against.
-/

/-! ## A196730.P12025949479479691327

`lt[A108467(A108466(n+1)), A124832(3*n+4)]`
-/

namespace A196730.P12025949479479691327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 (A108466 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124832 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A196730.P12025949479479691327

/-! ## A196730.P10046841990014516795

`record[and(A003520(n), A075959(n))]`
-/

namespace A196730.P10046841990014516795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003520 n) (A075959 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196730.P10046841990014516795

/-! ## A196730.P2245043354173502971

`record[A094263(A000040(n+1)+3)]`
-/

namespace A196730.P2245043354173502971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (A000040 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196730.P2245043354173502971

/-! ## A196730.P10411273772316571501

`record[and(A000361(n), A227842(n+1))]`
-/

namespace A196730.P10411273772316571501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000361 n) (A227842 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196730.P10411273772316571501

/-! ## A196730.P13488764987173730977

`∑[A030787(A030787(3^n+1)+1)]`
-/

namespace A196730.P13488764987173730977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A030787 (3 ^ n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196730.P13488764987173730977

/-!
# A196731: Expansion of g.f. (1-x)/(1-12*x).

The programs for A196731, the canonical program `A196731.P3109153784564114331` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196731 has offset 0).

The definition of A196731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-12x))` (program `A196731.P3109153784564114331`, by `A196731.P3109153784564114331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196731.P3109153784564114331

`ogf((1-x)/(1-12x))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196731

/-- `ogf((1-x)/(1-12x))` -/
def P3109153784564114331.Spec : Prop :=
  ∀ n, P3109153784564114331.a n = A196731 n

theorem P3109153784564114331.correct : P3109153784564114331.Spec := by
  intro n
  simp only [A196731]

end A196731

/-! ## A196731.P11421016201879967600

`ceil(11*12^(n-1))`
-/

namespace A196731.P11421016201879967600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈11 * (12 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A196731.P11421016201879967600

namespace A196731

/-- `ceil(11*12^(n-1))` -/
def P11421016201879967600.Spec : Prop :=
  ∀ n, P11421016201879967600.a n = A196731 n

end A196731

/-! ## A196731.P11754997882731130107

`12*a(n-1)` with `a(0)=1, a(1)=11`
-/

namespace A196731.P11754997882731130107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  12 * a (n - 1)

end

end A196731.P11754997882731130107

namespace A196731

/-- `12*a(n-1)` -/
def P11754997882731130107.Spec : Prop :=
  ∀ n, (P11754997882731130107.a n : ℤ) = A196731 n

end A196731

/-! ## A196731.P9140180047741414651

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=11, a(2)=12`
-/

namespace A196731.P9140180047741414651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 12] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196731.P9140180047741414651

namespace A196731

/-- `abs(∏[-a(n-1)])` -/
def P9140180047741414651.Spec : Prop :=
  ∀ n, P9140180047741414651.a n = A196731 n

end A196731

/-! ## A196731.P1294179802170835865

`∑[A056116(n)]`
-/

namespace A196731.P1294179802170835865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196731.P1294179802170835865

namespace A196731

/-- `∑[A056116(n)]` -/
def P1294179802170835865.Spec : Prop :=
  ∀ n, P1294179802170835865.a n = A196731 n

end A196731

/-! ## A196731.P15676752584423904678

`12*floor(a(A023443(n)))` with `a(0)=1, a(1)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A196731.P15676752584423904678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  12 * a (A023443 n).toNat

end

end A196731.P15676752584423904678

namespace A196731

/-- `12*floor(a(A023443(n)))` -/
def P15676752584423904678.Spec : Prop :=
  ∀ n, (P15676752584423904678.a n : ℤ) = A196731 n

end A196731

/-! ## A196731.P5686818298792533506

`A056116(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A196731.P5686818298792533506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056116 n + a (A023443 n).toNat

end

end A196731.P5686818298792533506

namespace A196731

/-- `A056116(n)+a(A023443(n))` -/
def P5686818298792533506.Spec : Prop :=
  ∀ n, P5686818298792533506.a n = A196731 n

end A196731

/-! ## A196731.P8441299554764265049

`gcd(Δ[A067413(n)], A067406(n))`
-/

namespace A196731.P8441299554764265049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A067406 n)

end

end A196731.P8441299554764265049

namespace A196731

/-- `gcd(Δ[A067413(n)], A067406(n))` -/
def P8441299554764265049.Spec : Prop :=
  ∀ n, (P8441299554764265049.a n : ℤ) = A196731 n

end A196731

/-!
# A196732: Position of n-th appearance of n in decimal expansion of Pi.

The programs for A196732, there is no canonical definition to state claims against.
-/

/-! ## A196732.P11840605468604000973

`A101196(n+1)+A009001(A077957(n))`
-/

namespace A196732.P11840605468604000973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101196 (n + 1) + A009001 (A077957 n).toNat

end

end A196732.P11840605468604000973

/-! ## A196732.P10890513710865091874

`A101196(n+1)+A009001(A011782(n))`
-/

namespace A196732.P10890513710865091874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101196 (n + 1) + A009001 (A011782 n).toNat

end

end A196732.P10890513710865091874

/-! ## A196732.P7242250197543640867

`A101196(n+1)+A009001(A131577(n))`
-/

namespace A196732.P7242250197543640867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101196 (n + 1) + A009001 (A131577 n).toNat

end

end A196732.P7242250197543640867

/-! ## A196732.P12471010052559949974

`A065254(A078213(n+1)+10*n)`
-/

namespace A196732.P12471010052559949974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A078213 (n + 1) + (10 * n : ℤ)).toNat

end

end A196732.P12471010052559949974

/-!
# A196733: Primes q = 2*p+1 for which there are primes b < c < p such that b^p == c^p == 1 (mod q^2).

The programs for A196733, there is no canonical definition to state claims against.
-/

/-! ## A196733.P12710585923418649657

`A196511(comp[7*n+3]+1)`
-/

namespace A196733.P12710585923418649657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196511 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A196733.P12710585923418649657

/-! ## A196733.P16303376023577920442

`record[or(A129501(n+1), A196511(n+1))]`
-/

namespace A196733.P16303376023577920442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129501 (n + 1)) (A196511 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196733.P16303376023577920442

/-! ## A196733.P3752456557504873947

`record[A196511(n+1)/A196527(A196510(n+2))]`
-/

namespace A196733.P3752456557504873947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196511 (n + 1) : ℚ) / (A196527 (A196510 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196733.P3752456557504873947

/-!
# A196734: E.g.f. satisfies: A(x) = exp(x*A(2*x)^(1/2)).

The programs for A196734, there is no canonical definition to state claims against.
-/

/-! ## A196734.P14194520262864844183

`A242239(3*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A196734.P14194520262864844183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A242239 (3 * a (n - 1)).toNat

end

end A196734.P14194520262864844183

/-!
# A196735: E.g.f. satisfies: A(x) = exp(x*A(3*x)^(1/3)).

The programs for A196735, there is no canonical definition to state claims against.
-/

/-! ## A196735.P5177259013066296053

`∑{d}[A038081(n), #%17]`
-/

namespace A196735.P5177259013066296053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 17

end

end A196735.P5177259013066296053

/-!
# A196736: Define k(x) = number of m such that A000005(gcd(n,m)) is x where m runs from 1 to n , x = 1,2,.. ; z = A000005( cototient(n) ) ; sequence gives numbers n such that n - ( Sum_{i=1..j} k(i) ) divides cototient(n) for any j <= z , k(i)>0.

The programs for A196736, there is no canonical definition to state claims against.
-/

/-! ## A196736.P11534432085567387380

`∪[A000961(n+1), A194234(n+1)]`
-/

namespace A196736.P11534432085567387380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196736.P11534432085567387380

/-! ## A196736.P16974099135018213502

`∪[A036116(n+1), A194234(n+1)]`
-/

namespace A196736.P16974099135018213502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196736.P16974099135018213502

/-! ## A196736.P15894026267739315927

`∪[A087441(n+1), A194234(n+1)]`
-/

namespace A196736.P15894026267739315927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196736.P15894026267739315927

/-! ## A196736.P7211654267085871920

`∪[A194234(n+1), A298538(n+1)]`
-/

namespace A196736.P7211654267085871920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196736.P7211654267085871920

/-! ## A196736.P5833764329338068255

`∪[A194234(n+1), A326534(n+1)]`
-/

namespace A196736.P5833764329338068255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196736.P5833764329338068255

/-! ## A196736.P2404805145667892615

`∪[A194234(n+1), A329366(n+1)]`
-/

namespace A196736.P2404805145667892615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196736.P2404805145667892615

/-! ## A196736.P3759475958019651365

`∪[lt[A001221(n+1), 2]+1, A194234(n+1)]`
-/

namespace A196736.P3759475958019651365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A196736.P3759475958019651365

/-!
# A196738: a(n) = n! - n^8.

The programs for A196738, the canonical program `A196738.P707608860814899762` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196738 has offset 0).

The definition of A196738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n^8` (program `A196738.P707608860814899762`, by `A196738.P707608860814899762.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196738.P707608860814899762

`n!-n^8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196738

/-- `n!-n^8` -/
def P707608860814899762.Spec : Prop :=
  ∀ n, P707608860814899762.a n = A196738 n

theorem P707608860814899762.correct : P707608860814899762.Spec := by
  intro n
  simp only [A196738]

end A196738

/-! ## A196738.P2165711907278540685

`∏[round(1/acot(n))]-n^8`
-/

namespace A196738.P2165711907278540685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 8 : ℤ)

end

end A196738.P2165711907278540685

namespace A196738

/-- `∏[round(1/acot(n))]-n^8` -/
def P2165711907278540685.Spec : Prop :=
  ∀ n, P2165711907278540685.a n = A196738 n

end A196738

/-! ## A196738.P16172828852985993091

`∏[or(n, C(n, n²))]-n²²²`
-/

namespace A196738.P16172828852985993091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.choose n (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((n ^ 2) ^ 2) ^ 2 : ℤ)

end

end A196738.P16172828852985993091

namespace A196738

/-- `∏[or(n, C(n, n²))]-n²²²` -/
def P16172828852985993091.Spec : Prop :=
  ∀ n, P16172828852985993091.a n = A196738 n

end A196738

/-! ## A196738.P11528509172076974872

`A000142(n)-n^8`
-/

namespace A196738.P11528509172076974872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (n ^ 8 : ℤ)

end

end A196738.P11528509172076974872

namespace A196738

/-- `A000142(n)-n^8` -/
def P11528509172076974872.Spec : Prop :=
  ∀ n, P11528509172076974872.a n = A196738 n

end A196738

/-! ## A196738.P13890180834499822394

`n!+1-A060890(n)`
-/

namespace A196738.P13890180834499822394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℤ) - A060890 n

end

end A196738.P13890180834499822394

namespace A196738

/-- `n!+1-A060890(n)` -/
def P13890180834499822394.Spec : Prop :=
  ∀ n, P13890180834499822394.a n = A196738 n

end A196738

/-! ## A196738.P17356900574172592952

`∏[A028310(n)]-n^8`
-/

namespace A196738.P17356900574172592952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 8 : ℤ)

end

end A196738.P17356900574172592952

namespace A196738

/-- `∏[A028310(n)]-n^8` -/
def P17356900574172592952.Spec : Prop :=
  ∀ n, P17356900574172592952.a n = A196738 n

end A196738

/-! ## A196738.P7580263699228395771

`∏[A007318(∑[n]+1)]-n^8`
-/

namespace A196738.P7580263699228395771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 8 : ℤ)

end

end A196738.P7580263699228395771

namespace A196738

/-- `∏[A007318(∑[n]+1)]-n^8` -/
def P7580263699228395771.Spec : Prop :=
  ∀ n, P7580263699228395771.a n = A196738 n

end A196738

/-! ## A196738.P13021328404233802704

`A000142(n)+1-A060890(n)`
-/

namespace A196738.P13021328404233802704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 1 - A060890 n

end

end A196738.P13021328404233802704

namespace A196738

/-- `A000142(n)+1-A060890(n)` -/
def P13021328404233802704.Spec : Prop :=
  ∀ n, P13021328404233802704.a n = A196738 n

end A196738

/-! ## A196738.P4757685921148902057

`Δ[A003422(n)]-A000583(n²)`
-/

namespace A196738.P4757685921148902057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000583 (n ^ 2)

end

end A196738.P4757685921148902057

namespace A196738

/-- `Δ[A003422(n)]-A000583(n²)` -/
def P4757685921148902057.Spec : Prop :=
  ∀ n, P4757685921148902057.a n = A196738 n

end A196738

/-!
# A196739: a(n) = n! - n^10.

The programs for A196739, the canonical program `A196739.P2567810875699407405` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196739 has offset 0).

The definition of A196739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n^10` (program `A196739.P2567810875699407405`, by `A196739.P2567810875699407405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196739.P2567810875699407405

`n!-n^10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196739

/-- `n!-n^10` -/
def P2567810875699407405.Spec : Prop :=
  ∀ n, P2567810875699407405.a n = A196739 n

theorem P2567810875699407405.correct : P2567810875699407405.Spec := by
  intro n
  simp only [A196739]

end A196739

/-! ## A196739.P10017098760226159725

`∏[round(1/acot(n))]-n^10`
-/

namespace A196739.P10017098760226159725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 10 : ℤ)

end

end A196739.P10017098760226159725

namespace A196739

/-- `∏[round(1/acot(n))]-n^10` -/
def P10017098760226159725.Spec : Prop :=
  ∀ n, P10017098760226159725.a n = A196739 n

end A196739

/-! ## A196739.P9530047718563592793

`abs(∏[floor(acot(n)-n)])-n^10`
-/

namespace A196739.P9530047718563592793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| - (n ^ 10 : ℤ)

end

end A196739.P9530047718563592793

namespace A196739

/-- `abs(∏[floor(acot(n)-n)])-n^10` -/
def P9530047718563592793.Spec : Prop :=
  ∀ n, P9530047718563592793.a n = A196739 n

end A196739

/-! ## A196739.P10053806461348160079

`A000142(n)-n^10`
-/

namespace A196739.P10053806461348160079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (n ^ 10 : ℤ)

end

end A196739.P10053806461348160079

namespace A196739

/-- `A000142(n)-n^10` -/
def P10053806461348160079.Spec : Prop :=
  ∀ n, P10053806461348160079.a n = A196739 n

end A196739

/-! ## A196739.P2330187105668168705

`∏[A028310(n)]-n^10`
-/

namespace A196739.P2330187105668168705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 10 : ℤ)

end

end A196739.P2330187105668168705

namespace A196739

/-- `∏[A028310(n)]-n^10` -/
def P2330187105668168705.Spec : Prop :=
  ∀ n, P2330187105668168705.a n = A196739 n

end A196739

/-! ## A196739.P5278517488573458016

`A038507(n)-1-n^10`
-/

namespace A196739.P5278517488573458016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 n - 1 - (n ^ 10 : ℤ)

end

end A196739.P5278517488573458016

namespace A196739

/-- `A038507(n)-1-n^10` -/
def P5278517488573458016.Spec : Prop :=
  ∀ n, P5278517488573458016.a n = A196739 n

end A196739

/-! ## A196739.P9162186786415306657

`A104150(n+1)-A008454(n)`
-/

namespace A196739.P9162186786415306657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1) - A008454 n

end

end A196739.P9162186786415306657

namespace A196739

/-- `A104150(n+1)-A008454(n)` -/
def P9162186786415306657.Spec : Prop :=
  ∀ n, P9162186786415306657.a n = A196739 n

end A196739

/-! ## A196739.P14177752988243989760

`Δ[A003422(n)]-Δ[A263689(n)]²`
-/

namespace A196739.P14177752988243989760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (f2 (n + 1) - f2 n) ^ 2

end

end A196739.P14177752988243989760

namespace A196739

/-- `Δ[A003422(n)]-Δ[A263689(n)]²` -/
def P14177752988243989760.Spec : Prop :=
  ∀ n, P14177752988243989760.a n = A196739 n

end A196739

/-! ## A196739.P3123211438369571662

`A008279(A000096(n))-A008454(n)`
-/

namespace A196739.P3123211438369571662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat - A008454 n

end

end A196739.P3123211438369571662

namespace A196739

/-- `A008279(A000096(n))-A008454(n)` -/
def P3123211438369571662.Spec : Prop :=
  ∀ n, P3123211438369571662.a n = A196739 n

end A196739

/-!
# A196740: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,1,0,4 for x=0,1,2,3,4.

The programs for A196740, there is no canonical definition to state claims against.
-/

/-! ## A196740.P5900670360127184197

`A196746(∑[4*n]+1)`
-/

namespace A196740.P5900670360127184197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196740.P5900670360127184197

/-! ## A196740.P9948040622530435938

`A196746(A001844(n))+A025444(n)`
-/

namespace A196740.P9948040622530435938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A001844 n).toNat + A025444 n

end

end A196740.P9948040622530435938

/-! ## A196740.P13676755817492507109

`A196746(A001844(n))+A185238(n)`
-/

namespace A196740.P13676755817492507109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A001844 n).toNat + A185238 n

end

end A196740.P13676755817492507109

/-! ## A196740.P923314307242388364

`A174544(n)*A196746(A001844(n))`
-/

namespace A196740.P923314307242388364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174544 n * A196746 (A001844 n).toNat

end

end A196740.P923314307242388364

/-! ## A196740.P10519824036580331306

`gcd(A000038(n), A196746(A001844(n)))`
-/

namespace A196740.P10519824036580331306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196746 (A001844 n).toNat)

end

end A196740.P10519824036580331306

/-!
# A196741: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,0,4 for x=0,1,2,3,4.

The programs for A196741, there is no canonical definition to state claims against.
-/

/-! ## A196741.P2590707518873223844

`A196746(∑[n+2]+4)`
-/

namespace A196741.P2590707518873223844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196741.P2590707518873223844

/-! ## A196741.P5247419487676055956

`A196746(A167614(n+1))+A025444(n)`
-/

namespace A196741.P5247419487676055956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A167614 (n + 1)).toNat + A025444 n

end

end A196741.P5247419487676055956

/-! ## A196741.P17569927091986507401

`A196746(A167614(n+1))%A041418(n)`
-/

namespace A196741.P17569927091986507401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196746 (A167614 (n + 1)).toNat) (A041418 n)

end

end A196741.P17569927091986507401

/-! ## A196741.P11174637898309467849

`or(A000007(n), A196746(A000124(n+2)+2))`
-/

namespace A196741.P11174637898309467849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196746 (A000124 (n + 2) + 2).toNat)

end

end A196741.P11174637898309467849

/-! ## A196741.P4434336997755046692

`A196746(A000124(n+2)+2)%A196702(n+1)`
-/

namespace A196741.P4434336997755046692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196746 (A000124 (n + 2) + 2).toNat) (A196702 (n + 1))

end

end A196741.P4434336997755046692

/-!
# A196742: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,0,4 for x=0,1,2,3,4.

The programs for A196742, there is no canonical definition to state claims against.
-/

/-! ## A196742.P16322128377780629723

`A196746(A374004(n+1))`
-/

namespace A196742.P16322128377780629723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A374004 (n + 1)).toNat

end

end A196742.P16322128377780629723

/-! ## A196742.P13634452747009414313

`A196746(A141214(n)+7)`
-/

namespace A196742.P13634452747009414313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A141214 n + 7).toNat

end

end A196742.P13634452747009414313

/-! ## A196742.P14521832439981960556

`A196746(A052905(n)+9)`
-/

namespace A196742.P14521832439981960556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A052905 n + 9).toNat

end

end A196742.P14521832439981960556

/-! ## A196742.P2673424421841826117

`A196746(A055999(n)+10)`
-/

namespace A196742.P2673424421841826117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A055999 n + 10).toNat

end

end A196742.P2673424421841826117

/-! ## A196742.P15372857611545654110

`A196746(A167614(n+2)+1)`
-/

namespace A196742.P15372857611545654110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A167614 (n + 2) + 1).toNat

end

end A196742.P15372857611545654110

/-!
# A196743: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,0,4 for x=0,1,2,3,4.

The programs for A196743, there is no canonical definition to state claims against.
-/

/-! ## A196743.P10352786431725693190

`A196746(A374005(n+1))`
-/

namespace A196743.P10352786431725693190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A374005 (n + 1)).toNat

end

end A196743.P10352786431725693190

/-! ## A196743.P3920319672332150692

`A196746(A056000(n)+15)`
-/

namespace A196743.P3920319672332150692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A056000 n + 15).toNat

end

end A196743.P3920319672332150692

/-! ## A196743.P7832914507041905797

`A196746(Δ[A264443(n)])`
-/

namespace A196743.P7832914507041905797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (f1 (n + 1) - f1 n).toNat

end

end A196743.P7832914507041905797

/-! ## A196743.P6552304632340509196

`A196746(A046691(n+3))`
-/

namespace A196743.P6552304632340509196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A046691 (n + 3)).toNat

end

end A196743.P6552304632340509196

/-! ## A196743.P7673404220860983930

`A196746(eq[4, A193592(n)])`
-/

namespace A196743.P7673404220860983930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196743.P7673404220860983930

/-!
# A196744: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,0,4 for x=0,1,2,3,4.

The programs for A196744, there is no canonical definition to state claims against.
-/

/-! ## A196744.P13692424333595865254

`A196746(A374007(n+1))`
-/

namespace A196744.P13692424333595865254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A374007 (n + 1)).toNat

end

end A196744.P13692424333595865254

/-! ## A196744.P8204143817388082527

`A196746(A167614(n+4)+3)`
-/

namespace A196744.P8204143817388082527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A167614 (n + 4) + 3).toNat

end

end A196744.P8204143817388082527

/-! ## A196744.P10543032220611891883

`A196746(A052905(n+3))`
-/

namespace A196744.P10543032220611891883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A052905 (n + 3)).toNat

end

end A196744.P10543032220611891883

/-! ## A196744.P6682701484145941856

`A196746(eq[16, A057728(n+1)])`
-/

namespace A196744.P6682701484145941856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196744.P6682701484145941856

/-! ## A196744.P14522975907043522192

`A196746(Δ[A264443(n+1)]-1)`
-/

namespace A196744.P14522975907043522192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (f1 (n + 1) - f1 n - 1).toNat

end

end A196744.P14522975907043522192

/-!
# A196745: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,0,4 for x=0,1,2,3,4.

The programs for A196745, there is no canonical definition to state claims against.
-/

/-! ## A196745.P13365783930422337834

`A196746(A374008(n+1))`
-/

namespace A196745.P13365783930422337834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A374008 (n + 1)).toNat

end

end A196745.P13365783930422337834

/-! ## A196745.P17817153407858558678

`A196746(eq[8, A131818(n+1)])`
-/

namespace A196745.P17817153407858558678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196745.P17817153407858558678

/-! ## A196745.P11599015292042343472

`A196746(A055999(n+4))`
-/

namespace A196745.P11599015292042343472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (A055999 (n + 4)).toNat

end

end A196745.P11599015292042343472

/-! ## A196745.P6650216338434287386

`A196746(eq[6, A193592(n)])`
-/

namespace A196745.P6650216338434287386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196745.P6650216338434287386

/-! ## A196745.P468355951534550101

`A196746(eq[7, A200370(n+1)])`
-/

namespace A196745.P468355951534550101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196745.P468355951534550101

/-!
# A196746: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,1,0,4 for x=0,1,2,3,4.

The programs for A196746, there is no canonical definition to state claims against.
-/

/-! ## A196746.P17606455087785232397

`A097448(A196904(n+1))`
-/

namespace A196746.P17606455087785232397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A196904 (n + 1)).toNat

end

end A196746.P17606455087785232397

/-! ## A196746.P11370987436517986858

`A000188(A196904(n+1)²)`
-/

namespace A196746.P11370987436517986858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A196904 (n + 1) ^ 2).toNat

end

end A196746.P11370987436517986858

/-! ## A196746.P15744032760294299060

`A000196(A196904(n+1)²)`
-/

namespace A196746.P15744032760294299060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A196904 (n + 1) ^ 2).toNat

end

end A196746.P15744032760294299060

/-! ## A196746.P3601653366567926579

`A003059(A196904(n+1)²)`
-/

namespace A196746.P3601653366567926579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A196904 (n + 1) ^ 2).toNat

end

end A196746.P3601653366567926579

/-! ## A196746.P17529351598690113268

`A033676(A196904(n+1)²)`
-/

namespace A196746.P17529351598690113268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A196904 (n + 1) ^ 2).toNat

end

end A196746.P17529351598690113268

/-!
# A196747: Numbers n such that 3 does not divide swing(n) = A056040(n).

The programs for A196747, the canonical program `A196747.P369553060331001684` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196747 has offset 1).

The definition of A196747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196747.P369553060331001684

`∪[A005823(n+1), A055246(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A196747

/-- `∪[A005823(n+1), A055246(n+1)]` -/
def P369553060331001684.Spec : Prop :=
  ∀ n, (P369553060331001684.a n : ℤ) = A196747 (n + 1)

theorem P369553060331001684.correct : P369553060331001684.Spec := by
  intro n
  simp only [A196747, Nat.add_sub_cancel]

end A196747

/-! ## A196747.P2125791549717921984

`∪[A005823(n+1), A055247(n+1)]`
-/

namespace A196747.P2125791549717921984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196747.P2125791549717921984

namespace A196747

/-- `∪[A005823(n+1), A055247(n+1)]` -/
def P2125791549717921984.Spec : Prop :=
  ∀ n, (P2125791549717921984.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P15363353199479152184

`∪[A190640(n+1), A191106(n+1)]-1`
-/

namespace A196747.P15363353199479152184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A196747.P15363353199479152184

namespace A196747

/-- `∪[A190640(n+1), A191106(n+1)]-1` -/
def P15363353199479152184.Spec : Prop :=
  ∀ n, P15363353199479152184.a n = A196747 (n + 1)

end A196747

/-! ## A196747.P5001690911762681561

`A005836(A004396(2*n+1))-A005836(A004396(n+1))`
-/

namespace A196747.P5001690911762681561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A004396 (2 * n + 1)).toNat - A005836 (A004396 (n + 1)).toNat

end

end A196747.P5001690911762681561

namespace A196747

/-- `A005836(A004396(2*n+1))-A005836(A004396(n+1))` -/
def P5001690911762681561.Spec : Prop :=
  ∀ n, P5001690911762681561.a n = A196747 (n + 1)

end A196747

/-! ## A196747.P13000509138866424821

`eq[0, val(n, 3)-a(n-1)]` with `a(0)=0`
-/

namespace A196747.P13000509138866424821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 3 : ℤ) - f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196747.P13000509138866424821

namespace A196747

/-- `eq[0, val(n, 3)-a(n-1)]` -/
def P13000509138866424821.Spec : Prop :=
  ∀ n, (P13000509138866424821.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P3679655789419950610

`eq[0, a(floor(n/3))^a(n-3)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A196747.P3679655789419950610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat ^ f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196747.P3679655789419950610

namespace A196747

/-- `eq[0, a(floor(n/3))^a(n-3)]` -/
def P3679655789419950610.Spec : Prop :=
  ∀ n, (P3679655789419950610.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P10547082973546386196

`lt[n, A300222(n)+2]`
-/

namespace A196747.P10547082973546386196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196747.P10547082973546386196

namespace A196747

/-- `lt[n, A300222(n)+2]` -/
def P10547082973546386196.Spec : Prop :=
  ∀ n, (P10547082973546386196.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P6974419543703159354

`eq[1, A190906(n)]`
-/

namespace A196747.P6974419543703159354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196747.P6974419543703159354

namespace A196747

/-- `eq[1, A190906(n)]` -/
def P6974419543703159354.Spec : Prop :=
  ∀ n, (P6974419543703159354.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P10351330019315408767

`lt[A244042(n), 2]`
-/

namespace A196747.P10351330019315408767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A196747.P10351330019315408767

namespace A196747

/-- `lt[A244042(n), 2]` -/
def P10351330019315408767.Spec : Prop :=
  ∀ n, (P10351330019315408767.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P3828691924204028588

`lt[A289813(n), 2]`
-/

namespace A196747.P3828691924204028588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A196747.P3828691924204028588

namespace A196747

/-- `lt[A289813(n), 2]` -/
def P3828691924204028588.Spec : Prop :=
  ∀ n, (P3828691924204028588.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P2528186987034648009

`lt[A289815(n), 3]`
-/

namespace A196747.P2528186987034648009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A196747.P2528186987034648009

namespace A196747

/-- `lt[A289815(n), 3]` -/
def P2528186987034648009.Spec : Prop :=
  ∀ n, (P2528186987034648009.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P15361529357646063536

`lt[A093347(n+1), 2]`
-/

namespace A196747.P15361529357646063536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A196747.P15361529357646063536

namespace A196747

/-- `lt[A093347(n+1), 2]` -/
def P15361529357646063536.Spec : Prop :=
  ∀ n, (P15361529357646063536.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P13462018567383188036

`eq[n, A004488(A030451(n))]`
-/

namespace A196747.P13462018567383188036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A030451 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196747.P13462018567383188036

namespace A196747

/-- `eq[n, A004488(A030451(n))]` -/
def P13462018567383188036.Spec : Prop :=
  ∀ n, (P13462018567383188036.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P5250812855912504167

`eq[n, A004488(A137719(n))]`
-/

namespace A196747.P5250812855912504167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A137719 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196747.P5250812855912504167

namespace A196747

/-- `eq[n, A004488(A137719(n))]` -/
def P5250812855912504167.Spec : Prop :=
  ∀ n, (P5250812855912504167.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P1549272162748532269

`eq[A062756(n), A110270(n)]`
-/

namespace A196747.P1549272162748532269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196747.P1549272162748532269

namespace A196747

/-- `eq[A062756(n), A110270(n)]` -/
def P1549272162748532269.Spec : Prop :=
  ∀ n, (P1549272162748532269.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P10026269916979665093

`eq[A057079(n), A120880(n)]`
-/

namespace A196747.P10026269916979665093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196747.P10026269916979665093

namespace A196747

/-- `eq[A057079(n), A120880(n)]` -/
def P10026269916979665093.Spec : Prop :=
  ∀ n, (P10026269916979665093.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P15189155850126875128

`eq[A059146(n), A120880(n)]`
-/

namespace A196747.P15189155850126875128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196747.P15189155850126875128

namespace A196747

/-- `eq[A059146(n), A120880(n)]` -/
def P15189155850126875128.Spec : Prop :=
  ∀ n, (P15189155850126875128.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P6100573566530253815

`eq[A062756(n), A134667(n)]`
-/

namespace A196747.P6100573566530253815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196747.P6100573566530253815

namespace A196747

/-- `eq[A062756(n), A134667(n)]` -/
def P6100573566530253815.Spec : Prop :=
  ∀ n, (P6100573566530253815.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P16981733766031475313

`eq[A000035(n), A244042(n)]`
-/

namespace A196747.P16981733766031475313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196747.P16981733766031475313

namespace A196747

/-- `eq[A000035(n), A244042(n)]` -/
def P16981733766031475313.Spec : Prop :=
  ∀ n, (P16981733766031475313.a n : ℤ) = A196747 (n + 1)

end A196747

/-! ## A196747.P15267900030004116145

`eq[A120880(n), A131534(n)]`
-/

namespace A196747.P15267900030004116145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196747.P15267900030004116145

namespace A196747

/-- `eq[A120880(n), A131534(n)]` -/
def P15267900030004116145.Spec : Prop :=
  ∀ n, (P15267900030004116145.a n : ℤ) = A196747 (n + 1)

end A196747

/-!
# A196748: Numbers k such that 3 and 5 do not divide swing(k) = A056040(k).

The programs for A196748, the canonical program `A196748.P1291725474753101285` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196748 has offset 1).

The definition of A196748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196748.P1291725474753101285

`∩[A058185(n+1), A196747(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A196748

/-- `∩[A058185(n+1), A196747(n+1)]` -/
def P1291725474753101285.Spec : Prop :=
  ∀ n, (P1291725474753101285.a n : ℤ) = A196748 (n + 1)

theorem P1291725474753101285.correct : P1291725474753101285.Spec := by
  intro n
  simp only [A196748, Nat.add_sub_cancel]

end A196748

/-! ## A196748.P9844657330459032154

`eq[A093348(n+1)², A244042(n)]`
-/

namespace A196748.P9844657330459032154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093348 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196748.P9844657330459032154

namespace A196748

/-- `eq[A093348(n+1)², A244042(n)]` -/
def P9844657330459032154.Spec : Prop :=
  ∀ n, (P9844657330459032154.a n : ℤ) = A196748 (n + 1)

end A196748

/-! ## A196748.P1241083663159249766

`eq[log2(A289815(n)), A093348(n+1)]`
-/

namespace A196748.P1241083663159249766
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A289815 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A196748.P1241083663159249766

namespace A196748

/-- `eq[log2(A289815(n)), A093348(n+1)]` -/
def P1241083663159249766.Spec : Prop :=
  ∀ n, (P1241083663159249766.a n : ℤ) = A196748 (n + 1)

end A196748

/-! ## A196748.P8456381554139676041

`eq[A056040(A093348(n+1)), A190906(n)]`
-/

namespace A196748.P8456381554139676041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A093348 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196748.P8456381554139676041

namespace A196748

/-- `eq[A056040(A093348(n+1)), A190906(n)]` -/
def P8456381554139676041.Spec : Prop :=
  ∀ n, (P8456381554139676041.a n : ℤ) = A196748 (n + 1)

end A196748

/-! ## A196748.P7751276684460083650

`eq[A105672(n+1), A105778(n)]`
-/

namespace A196748.P7751276684460083650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196748.P7751276684460083650

namespace A196748

/-- `eq[A105672(n+1), A105778(n)]` -/
def P7751276684460083650.Spec : Prop :=
  ∀ n, (P7751276684460083650.a n : ℤ) = A196748 (n + 1)

end A196748

/-!
# A196749: Numbers k such that 3, 5 and 7 do not divide swing(k) = A056040(k).

The programs for A196749, there is no canonical definition to state claims against.
-/

/-! ## A196749.P17569811091219065074

`A360244(∑[3*C(n, 3)+n])+n`
-/

namespace A196749.P17569811091219065074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360244 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A196749.P17569811091219065074

/-!
# A196776: Triangle T(n,k) gives the number of ordered partitions of an n set into k odd-sized blocks.

The programs for A196776, there is no canonical definition to state claims against.
-/

/-! ## A196776.P14942280462882983253

`A193474(A099375(n)+1+n)`
-/

namespace A196776.P14942280462882983253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A099375 n + 1 + (n : ℤ)).toNat

end

end A196776.P14942280462882983253

/-! ## A196776.P17851140813848757881

`A193474(A038722(comp[∑[n]]+1))`
-/

namespace A196776.P17851140813848757881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A196776.P17851140813848757881

/-! ## A196776.P5522083420832079512

`A193474(A061579(comp[∑[n]])+1)`
-/

namespace A196776.P5522083420832079512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A196776.P5522083420832079512

/-! ## A196776.P11905486281777871307

`A193474(A038722(comp[∑[n]])-1)`
-/

namespace A196776.P11905486281777871307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1).toNat

end

end A196776.P11905486281777871307

/-! ## A196776.P2974898721678907231

`A193474(A061579(comp[∑[n-1]]))`
-/

namespace A196776.P2974898721678907231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A196776.P2974898721678907231

/-! ## A196776.P1021096756559875972

`A193474(A114327(n)+comp[∑[n]])`
-/

namespace A196776.P1021096756559875972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A114327 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A196776.P1021096756559875972

/-! ## A196776.P5154057256560063541

`A193474(2*A004736(n+1)+n)`
-/

namespace A196776.P5154057256560063541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A196776.P5154057256560063541

/-! ## A196776.P17112588480089350801

`A193474(A140978(n+1)-comp[∑[n]])`
-/

namespace A196776.P17112588480089350801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A140978 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A196776.P17112588480089350801

/-! ## A196776.P10272506797822899199

`abs(A166350(n+1)*A185690(n+1))`
-/

namespace A196776.P10272506797822899199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166350 (n + 1) * A185690 (n + 1)|

end

end A196776.P10272506797822899199

/-! ## A196776.P13433880613135873366

`A193474(A014132(A038722(n+1)))`
-/

namespace A196776.P13433880613135873366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A196776.P13433880613135873366

/-!
# A196777: Sum (mod n) of the distinct residues of x^n (mod n), x=0..n-1.

The programs for A196777, there is no canonical definition to state claims against.
-/

/-! ## A196777.P17728745324466503300

`A195812(n+1)%(n+1)`
-/

namespace A196777.P17728745324466503300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195812 (n + 1)) (n + 1 : ℤ)

end

end A196777.P17728745324466503300

/-! ## A196777.P5927425564239432174

`A097331(n)%A000005(A233098(n+1))`
-/

namespace A196777.P5927425564239432174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 n) (A000005 (A233098 (n + 1)).toNat)

end

end A196777.P5927425564239432174

/-! ## A196777.P3160548248787228509

`val(A000108(lcm(n+1, A323169(n+1))), 2)`
-/

namespace A196777.P3160548248787228509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000108 (Int.lcm (n + 1 : ℤ) (A323169 (n + 1)))).toNat 2

end

end A196777.P3160548248787228509

/-! ## A196777.P4929993625426621335

`and(A087207(n+1), A094685(A000016(n)))`
-/

namespace A196777.P4929993625426621335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087207 (n + 1)) (A094685 (A000016 n).toNat)

end

end A196777.P4929993625426621335

/-! ## A196777.P12344528447155860819

`A008587(3*n+4)%A160735(A007947(n+1))`
-/

namespace A196777.P12344528447155860819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008587 (3 * n + 4)) (A160735 (A007947 (n + 1)).toNat)

end

end A196777.P12344528447155860819

/-!
# A196780: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,4,3,0,1 for x=0,1,2,3,4.

The programs for A196780, there is no canonical definition to state claims against.
-/

/-! ## A196780.P12619934312278897041

`A196786(∑[4*n]+1)`
-/

namespace A196780.P12619934312278897041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196780.P12619934312278897041

/-! ## A196780.P10205299423129821645

`A196786(A001844(n))+A185238(n)`
-/

namespace A196780.P10205299423129821645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A001844 n).toNat + A185238 n

end

end A196780.P10205299423129821645

/-! ## A196780.P17051383979732871572

`A196786(A001844(n))*A294775(n)`
-/

namespace A196780.P17051383979732871572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A001844 n).toNat * A294775 n

end

end A196780.P17051383979732871572

/-! ## A196780.P1599990416330559544

`or(A000007(n), A196786(A001844(n)))`
-/

namespace A196780.P1599990416330559544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196786 (A001844 n).toNat)

end

end A196780.P1599990416330559544

/-! ## A196780.P5570451863338895591

`or(A005171(n+1), A196786(A001844(n)))`
-/

namespace A196780.P5570451863338895591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005171 (n + 1)) (A196786 (A001844 n).toNat)

end

end A196780.P5570451863338895591

/-!
# A196781: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,3,0,1 for x=0,1,2,3,4.

The programs for A196781, there is no canonical definition to state claims against.
-/

/-! ## A196781.P3328838047607783982

`A196786(∑[n+2]+4)`
-/

namespace A196781.P3328838047607783982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196781.P3328838047607783982

/-! ## A196781.P18320131470896960240

`record[A023531(n)*A196786(n+4)]`
-/

namespace A196781.P18320131470896960240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A196786 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196781.P18320131470896960240

/-! ## A196781.P8533298712049706928

`or(1, A196786(A034856(n+2)))`
-/

namespace A196781.P8533298712049706928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196786 (A034856 (n + 2)).toNat)

end

end A196781.P8533298712049706928

/-! ## A196781.P16503551786827872017

`record[A196786(n+1)/A196578(n+3)]`
-/

namespace A196781.P16503551786827872017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196786 (n + 1) : ℚ) / (A196578 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196781.P16503551786827872017

/-! ## A196781.P7989582780777228358

`A000034(2*n)*A196786(A052905(n)+3)`
-/

namespace A196781.P7989582780777228358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A196786 (A052905 n + 3).toNat

end

end A196781.P7989582780777228358

/-!
# A196782: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,3,0,1 for x=0,1,2,3,4.

The programs for A196782, there is no canonical definition to state claims against.
-/

/-! ## A196782.P14621016621885691827

`A196786(A374004(n+1))`
-/

namespace A196782.P14621016621885691827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A374004 (n + 1)).toNat

end

end A196782.P14621016621885691827

/-! ## A196782.P3731645099159367349

`A196786(A141214(n)+7)`
-/

namespace A196782.P3731645099159367349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A141214 n + 7).toNat

end

end A196782.P3731645099159367349

/-! ## A196782.P17218903135719640457

`A196786(A052905(n)+9)`
-/

namespace A196782.P17218903135719640457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A052905 n + 9).toNat

end

end A196782.P17218903135719640457

/-! ## A196782.P12760932284841815172

`A196786(Δ[A008778(n)]+6)`
-/

namespace A196782.P12760932284841815172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (f1 (n + 1) - f1 n + 6).toNat

end

end A196782.P12760932284841815172

/-! ## A196782.P870662123459331729

`A196786(A167614(n+2)+1)`
-/

namespace A196782.P870662123459331729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A167614 (n + 2) + 1).toNat

end

end A196782.P870662123459331729

/-!
# A196783: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,3,0,1 for x=0,1,2,3,4.

The programs for A196783, there is no canonical definition to state claims against.
-/

/-! ## A196783.P7792506268926149618

`A196786(A374005(n+1))`
-/

namespace A196783.P7792506268926149618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A374005 (n + 1)).toNat

end

end A196783.P7792506268926149618

/-! ## A196783.P15085985151882590747

`A196786(A155212(n)+13)`
-/

namespace A196783.P15085985151882590747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A155212 n + 13).toNat

end

end A196783.P15085985151882590747

/-! ## A196783.P7206358621254760384

`A196786(A166136(n+3)-1)`
-/

namespace A196783.P7206358621254760384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A166136 (n + 3) - 1).toNat

end

end A196783.P7206358621254760384

/-! ## A196783.P11290971316634669985

`A196786(A000217(n+4)+5)`
-/

namespace A196783.P11290971316634669985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A000217 (n + 4) + 5).toNat

end

end A196783.P11290971316634669985

/-! ## A196783.P4730863123298652798

`A196786(A141214(n+1)+8)`
-/

namespace A196783.P4730863123298652798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A141214 (n + 1) + 8).toNat

end

end A196783.P4730863123298652798

/-!
# A196784: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,3,0,1 for x=0,1,2,3,4.

The programs for A196784, there is no canonical definition to state claims against.
-/

/-! ## A196784.P17072939354771816198

`A196786(A374007(n+1))`
-/

namespace A196784.P17072939354771816198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A374007 (n + 1)).toNat

end

end A196784.P17072939354771816198

/-! ## A196784.P4190943685735464018

`A196786(A166136(n+4))`
-/

namespace A196784.P4190943685735464018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A166136 (n + 4)).toNat

end

end A196784.P4190943685735464018

/-! ## A196784.P4291764182614071660

`A196786(A056115(n)+21)`
-/

namespace A196784.P4291764182614071660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A056115 n + 21).toNat

end

end A196784.P4291764182614071660

/-! ## A196784.P5102283462881620898

`A196786(A167487(n+4)-1)`
-/

namespace A196784.P5102283462881620898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A167487 (n + 4) - 1).toNat

end

end A196784.P5102283462881620898

/-! ## A196784.P6500975795330388927

`A196786(eq[7, A131818(n+1)])`
-/

namespace A196784.P6500975795330388927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196784.P6500975795330388927

/-!
# A196785: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,3,0,1 for x=0,1,2,3,4.

The programs for A196785, there is no canonical definition to state claims against.
-/

/-! ## A196785.P13740771250852734635

`A196786(A374008(n+1))`
-/

namespace A196785.P13740771250852734635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A374008 (n + 1)).toNat

end

end A196785.P13740771250852734635

/-! ## A196785.P17854078192739177756

`A196786(A167487(n+5))`
-/

namespace A196785.P17854078192739177756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A167487 (n + 5)).toNat

end

end A196785.P17854078192739177756

/-! ## A196785.P2489521986891412071

`A196786(A055998(n+4)+10)`
-/

namespace A196785.P2489521986891412071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (A055998 (n + 4) + 10).toNat

end

end A196785.P2489521986891412071

/-! ## A196785.P10820221201236748363

`A196786(eq[8, A131818(n+1)])`
-/

namespace A196785.P10820221201236748363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196785.P10820221201236748363

/-! ## A196785.P10796430549568815121

`A196786(eq[4, A219347(n)])`
-/

namespace A196785.P10796430549568815121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196785.P10796430549568815121

/-!
# A196786: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,4,3,0,1 for x=0,1,2,3,4.

The programs for A196786, there is no canonical definition to state claims against.
-/

/-! ## A196786.P7363230038595355095

`or(A043290(A198715(n+1)), A196578(n+1))`
-/

namespace A196786.P7363230038595355095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043290 (A198715 (n + 1)).toNat) (A196578 (n + 1))

end

end A196786.P7363230038595355095

/-! ## A196786.P6737249435693996174

`or(A043290(A198715(n+1)), A196601(n+1))`
-/

namespace A196786.P6737249435693996174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043290 (A198715 (n + 1)).toNat) (A196601 (n + 1))

end

end A196786.P6737249435693996174

/-! ## A196786.P10001472541677900354

`or(A034254(A215847(n+1)), A196578(n+1))`
-/

namespace A196786.P10001472541677900354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034254 (A215847 (n + 1)).toNat) (A196578 (n + 1))

end

end A196786.P10001472541677900354

/-! ## A196786.P4506439537701243559

`or(A056975(A017981(2*n+1)), A196578(n+1))`
-/

namespace A196786.P4506439537701243559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056975 (A017981 (2 * n + 1)).toNat) (A196578 (n + 1))

end

end A196786.P4506439537701243559

/-! ## A196786.P2927585040045987417

`or(A196601(n+1), A230093(A051013(n+1)))`
-/

namespace A196786.P2927585040045987417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196601 (n + 1)) (A230093 (A051013 (n + 1)).toNat)

end

end A196786.P2927585040045987417

/-!
# A196787: a(n) = 3*a(n-1) - 2*a(n-2) - a(n-4) + a(n-5) with initial terms 1, 1, 1, 3, 6.

The programs for A196787, the canonical program `A196787.P4180462883691837538` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196787 has offset 1).

The definition of A196787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` (program `A196787.P4180462883691837538`, by `A196787.P4180462883691837538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196787.P11674287445060599556

`a(n-1)+a(n-2)+a(n-3)+n+1-4` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A196787.P11674287445060599556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + (n + 1 : ℤ) - 4

end

end A196787.P11674287445060599556

namespace A196787

/-- `a(n-1)+a(n-2)+a(n-3)+n+1-4` -/
def P11674287445060599556.Spec : Prop :=
  ∀ n, P11674287445060599556.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P4180462883691837538

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196787

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` -/
def P4180462883691837538.Spec : Prop :=
  ∀ n, P4180462883691837538.a n = A196787 (n + 1)

theorem P4180462883691837538.correct : P4180462883691837538.Spec := by
  intro n
  simp only [A196787, Nat.add_sub_cancel]

end A196787

/-! ## A196787.P9155609622611499443

`∑[2*a(n-1)-a(n-4)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A196787.P9155609622611499443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196787.P9155609622611499443

namespace A196787

/-- `∑[2*a(n-1)-a(n-4)]` -/
def P9155609622611499443.Spec : Prop :=
  ∀ n, P9155609622611499443.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P11087415529414507428

`2*a(n-1)+1-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A196787.P11087415529414507428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  2 * a (n - 1) + (1 - a (n - 4))

end

end A196787.P11087415529414507428

namespace A196787

/-- `2*a(n-1)+1-a(n-4)` -/
def P11087415529414507428.Spec : Prop :=
  ∀ n, P11087415529414507428.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P9558253131715546924

`1-(a(n-4)-2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A196787.P9558253131715546924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  1 - (a (n - 4) - 2 * a (n - 1))

end

end A196787.P9558253131715546924

namespace A196787

/-- `1-(a(n-4)-2*a(n-1))` -/
def P9558253131715546924.Spec : Prop :=
  ∀ n, P9558253131715546924.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P2081275707955798295

`∑[a(n-1)+a(n-1)-a(n-4)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A196787.P2081275707955798295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196787.P2081275707955798295

namespace A196787

/-- `∑[a(n-1)+a(n-1)-a(n-4)]` -/
def P2081275707955798295.Spec : Prop :=
  ∀ n, P2081275707955798295.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P3355863455122549424

`a(n-1)+a(n-2)+a(n-3)+n-3` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A196787.P3355863455122549424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + ((n : ℤ) - 3)

end

end A196787.P3355863455122549424

namespace A196787

/-- `a(n-1)+a(n-2)+a(n-3)+n-3` -/
def P3355863455122549424.Spec : Prop :=
  ∀ n, P3355863455122549424.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P3840592180668218389

`∑[(A141523(n)-1)/2]`
-/

namespace A196787.P3840592180668218389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141523 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196787.P3840592180668218389

namespace A196787

/-- `∑[(A141523(n)-1)/2]` -/
def P3840592180668218389.Spec : Prop :=
  ∀ n, P3840592180668218389.a n = (A196787 (n + 1) : ℚ)

end A196787

/-! ## A196787.P14322804758956051900

`∑[A141036(n)-A192804(n)]`
-/

namespace A196787.P14322804758956051900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n - A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196787.P14322804758956051900

namespace A196787

/-- `∑[A141036(n)-A192804(n)]` -/
def P14322804758956051900.Spec : Prop :=
  ∀ n, P14322804758956051900.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P13623371258795264291

`∑[A214899(n)-A192804(n+1)]`
-/

namespace A196787.P13623371258795264291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - A192804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196787.P13623371258795264291

namespace A196787

/-- `∑[A214899(n)-A192804(n+1)]` -/
def P13623371258795264291.Spec : Prop :=
  ∀ n, P13623371258795264291.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P16788967861859408497

`∑[A248098(n+1)-∑[A001590(n)]]`
-/

namespace A196787.P16788967861859408497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196787.P16788967861859408497

namespace A196787

/-- `∑[A248098(n+1)-∑[A001590(n)]]` -/
def P16788967861859408497.Spec : Prop :=
  ∀ n, P16788967861859408497.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P4675635942895777386

`A192804(n)+∑[A000213(n)-A192804(n)]`
-/

namespace A196787.P4675635942895777386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196787.P4675635942895777386

namespace A196787

/-- `A192804(n)+∑[A000213(n)-A192804(n)]` -/
def P4675635942895777386.Spec : Prop :=
  ∀ n, P4675635942895777386.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P11132433277571375476

`∑[A214899(n)-A000073(n)-A192804(n)]`
-/

namespace A196787.P11132433277571375476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - A000073 n - A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196787.P11132433277571375476

namespace A196787

/-- `∑[A214899(n)-A000073(n)-A192804(n)]` -/
def P11132433277571375476.Spec : Prop :=
  ∀ n, P11132433277571375476.a n = A196787 (n + 1)

end A196787

/-! ## A196787.P11409987289449832809

`(A145027(n+1)-n)/2`
-/

namespace A196787.P11409987289449832809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145027 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A196787.P11409987289449832809

namespace A196787

/-- `(A145027(n+1)-n)/2` -/
def P11409987289449832809.Spec : Prop :=
  ∀ n, P11409987289449832809.a n = (A196787 (n + 1) : ℚ)

end A196787

/-! ## A196787.P10330715044350833973

`A062544(n+1)-2*A089068(n+1)`
-/

namespace A196787.P10330715044350833973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 1) - 2 * A089068 (n + 1)

end

end A196787.P10330715044350833973

namespace A196787

/-- `A062544(n+1)-2*A089068(n+1)` -/
def P10330715044350833973.Spec : Prop :=
  ∀ n, P10330715044350833973.a n = A196787 (n + 1)

end A196787

/-!
# A196789: Binomial coefficients C(2*n+10,10).

The programs for A196789, the canonical program `A196789.P15477326687096518080` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196789 has offset 0).

The definition of A196789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+10, 10)` (program `A196789.P15477326687096518080`, by `A196789.P15477326687096518080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196789.P15477326687096518080

`C(2*n+10, 10)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196789

/-- `C(2*n+10, 10)` -/
def P15477326687096518080.Spec : Prop :=
  ∀ n, (P15477326687096518080.a n : ℤ) = A196789 n

theorem P15477326687096518080.correct : P15477326687096518080.Spec := by
  intro n
  simp only [A196789]

end A196789

/-! ## A196789.P12641952121402616813

`record[C(n+10, 10)^((n+1)%2)]`
-/

namespace A196789.P12641952121402616813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 10) 10 ^ ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196789.P12641952121402616813

namespace A196789

/-- `record[C(n+10, 10)^((n+1)%2)]` -/
def P12641952121402616813.Spec : Prop :=
  ∀ n, (P12641952121402616813.a n : ℤ) = A196789 n

end A196789

/-! ## A196789.P12905067339783257767

`A196790(n)-A053131(n+9)`
-/

namespace A196789.P12905067339783257767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196790 (n + 10) - A053131 (n + 9)

end

end A196789.P12905067339783257767

namespace A196789

/-- `A196790(n)-A053131(n+9)` -/
def P12905067339783257767.Spec : Prop :=
  ∀ n, P12905067339783257767.a n = A196789 n

end A196789

/-! ## A196789.P14698260689520416036

`A196790(n)-2*A053133(n+9)`
-/

namespace A196789.P14698260689520416036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196790 (n + 10) - 2 * A053133 (n + 9)

end

end A196789.P14698260689520416036

namespace A196789

/-- `A196790(n)-2*A053133(n+9)` -/
def P14698260689520416036.Spec : Prop :=
  ∀ n, P14698260689520416036.a n = A196789 n

end A196789

/-! ## A196789.P16537787765428861605

`A196790(n)-(A053138(n)+A053130(n+8))`
-/

namespace A196789.P16537787765428861605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196790 (n + 10) - (A053138 n + A053130 (n + 8))

end

end A196789.P16537787765428861605

namespace A196789

/-- `A196790(n)-(A053138(n)+A053130(n+8))` -/
def P16537787765428861605.Spec : Prop :=
  ∀ n, P16537787765428861605.a n = A196789 n

end A196789

/-! ## A196789.P2837453738371842479

`A001287(2*n)`
-/

namespace A196789.P2837453738371842479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (2 * n + 10)

end

end A196789.P2837453738371842479

namespace A196789

/-- `A001287(2*n)` -/
def P2837453738371842479.Spec : Prop :=
  ∀ n, P2837453738371842479.a n = A196789 n

end A196789

/-! ## A196789.P17261532862330395526

`∑[A054333(2*n)]`
-/

namespace A196789.P17261532862330395526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196789.P17261532862330395526

namespace A196789

/-- `∑[A054333(2*n)]` -/
def P17261532862330395526.Spec : Prop :=
  ∀ n, P17261532862330395526.a n = A196789 n

end A196789

/-! ## A196789.P12537157765029759093

`record[A001287(and(n, n+1))]`
-/

namespace A196789.P12537157765029759093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (Nat.land n (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196789.P12537157765029759093

namespace A196789

/-- `record[A001287(and(n, n+1))]` -/
def P12537157765029759093.Spec : Prop :=
  ∀ n, P12537157765029759093.a n = A196789 n

end A196789

/-! ## A196789.P6972369671935449717

`record[A001287(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A196789.P6972369671935449717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A001287 (Nat.choose n (f1 (n - 1)).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196789.P6972369671935449717

namespace A196789

/-- `record[A001287(C(n, a(n-1)))]` -/
def P6972369671935449717.Spec : Prop :=
  ∀ n, P6972369671935449717.a n = A196789 n

end A196789

/-! ## A196789.P9112287616463245995

`A054333(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A196789.P9112287616463245995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054333 (n + n) + a (n - 1)

end

end A196789.P9112287616463245995

namespace A196789

/-- `A054333(n+n)+a(n-1)` -/
def P9112287616463245995.Spec : Prop :=
  ∀ n, P9112287616463245995.a n = A196789 n

end A196789

/-! ## A196789.P8831870363601663314

`record[A001287(A014681(n))]`
-/

namespace A196789.P8831870363601663314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 ((A014681 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196789.P8831870363601663314

namespace A196789

/-- `record[A001287(A014681(n))]` -/
def P8831870363601663314.Spec : Prop :=
  ∀ n, P8831870363601663314.a n = A196789 n

end A196789

/-! ## A196789.P15429382048185779147

`record[A001287(A131452(n))]`
-/

namespace A196789.P15429382048185779147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 ((A131452 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196789.P15429382048185779147

namespace A196789

/-- `record[A001287(A131452(n))]` -/
def P15429382048185779147.Spec : Prop :=
  ∀ n, P15429382048185779147.a n = A196789 n

end A196789

/-! ## A196789.P9842012221623061376

`A282078(2*n)+A018214(2*n)`
-/

namespace A196789.P9842012221623061376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 (2 * n) + A018214 (2 * n)

end

end A196789.P9842012221623061376

namespace A196789

/-- `A282078(2*n)+A018214(2*n)` -/
def P9842012221623061376.Spec : Prop :=
  ∀ n, P9842012221623061376.a n = A196789 n

end A196789

/-! ## A196789.P8550712380595259258

`A196790(n)-A000582(2*(n+5))`
-/

namespace A196789.P8550712380595259258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196790 (n + 10) - A000582 (2 * (n + 5))

end

end A196789.P8550712380595259258

namespace A196789

/-- `A196790(n)-A000582(2*(n+5))` -/
def P8550712380595259258.Spec : Prop :=
  ∀ n, P8550712380595259258.a n = A196789 n

end A196789

/-! ## A196789.P10118373485199060671

`A189980(2*n)+2*A282078(2*n)`
-/

namespace A196789.P10118373485199060671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (2 * n + 10) + 2 * A282078 (2 * n)

end

end A196789.P10118373485199060671

namespace A196789

/-- `A189980(2*n)+2*A282078(2*n)` -/
def P10118373485199060671.Spec : Prop :=
  ∀ n, P10118373485199060671.a n = A196789 n

end A196789

/-! ## A196789.P8821751380116624195

`2*A001786(2*n)-A001781(2*n)`
-/

namespace A196789.P8821751380116624195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001786 (2 * n) - A001781 (2 * n)

end

end A196789.P8821751380116624195

namespace A196789

/-- `2*A001786(2*n)-A001781(2*n)` -/
def P8821751380116624195.Spec : Prop :=
  ∀ n, P8821751380116624195.a n = A196789 n

end A196789

/-! ## A196789.P2527424670492990272

`2*A018214(2*n)-A189980(2*n)`
-/

namespace A196789.P2527424670492990272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018214 (2 * n) - A189980 (2 * n + 10)

end

end A196789.P2527424670492990272

namespace A196789

/-- `2*A018214(2*n)-A189980(2*n)` -/
def P2527424670492990272.Spec : Prop :=
  ∀ n, P2527424670492990272.a n = A196789 n

end A196789

/-! ## A196789.P12132791930344368326

`A107422(2*n)/A000580(2*n+7)`
-/

namespace A196789.P12132791930344368326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107422 (2 * n) : ℚ) / (A000580 (2 * n + 7) : ℚ)

end

end A196789.P12132791930344368326

namespace A196789

/-- `A107422(2*n)/A000580(2*n+7)` -/
def P12132791930344368326.Spec : Prop :=
  ∀ n, P12132791930344368326.a n = (A196789 n : ℚ)

end A196789

/-! ## A196789.P2352847050003403566

`A056114(2*n+1)-A254142(2*n+1)`
-/

namespace A196789.P2352847050003403566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056114 (2 * n + 1) - A254142 (2 * n + 1)

end

end A196789.P2352847050003403566

namespace A196789

/-- `A056114(2*n+1)-A254142(2*n+1)` -/
def P2352847050003403566.Spec : Prop :=
  ∀ n, P2352847050003403566.a n = A196789 n

end A196789

/-! ## A196789.P8825227082606043122

`A225012(2*n+1)-A225011(2*n+1)`
-/

namespace A196789.P8825227082606043122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225012 (2 * n + 1) - A225011 (2 * n + 1)

end

end A196789.P8825227082606043122

namespace A196789

/-- `A225012(2*n+1)-A225011(2*n+1)` -/
def P8825227082606043122.Spec : Prop :=
  ∀ n, P8825227082606043122.a n = A196789 n

end A196789

/-!
# A196790: Binomial coefficients C(2*n-9,10).

The programs for A196790, the canonical program `A196790.P6377427434913080785` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196790 has offset 10).

The definition of A196790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+10)-9, 10)` (program `A196790.P6377427434913080785`, by `A196790.P6377427434913080785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196790.P6377427434913080785

`C(2*(n+10)-9, 10)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196790

/-- `C(2*(n+10)-9, 10)` -/
def P6377427434913080785.Spec : Prop :=
  ∀ n, (P6377427434913080785.a n : ℤ) = A196790 (n + 10)

theorem P6377427434913080785.correct : P6377427434913080785.Spec := by
  intro n
  simp only [A196790, Nat.add_sub_cancel]

end A196790

/-! ## A196790.P16393790657789213384

`A196789(n)+A053131(n+9)`
-/

namespace A196790.P16393790657789213384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196789 n + A053131 (n + 9)

end

end A196790.P16393790657789213384

namespace A196790

/-- `A196789(n)+A053131(n+9)` -/
def P16393790657789213384.Spec : Prop :=
  ∀ n, P16393790657789213384.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P2592908704726688881

`∑[A053138(n)+A053131(n+9)]`
-/

namespace A196790.P2592908704726688881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053138 n + A053131 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196790.P2592908704726688881

namespace A196790

/-- `∑[A053138(n)+A053131(n+9)]` -/
def P2592908704726688881.Spec : Prop :=
  ∀ n, P2592908704726688881.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P11100143695970330142

`A196789(n)+2*A053133(n+9)`
-/

namespace A196790.P11100143695970330142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196789 n + 2 * A053133 (n + 9)

end

end A196790.P11100143695970330142

namespace A196790

/-- `A196789(n)+2*A053133(n+9)` -/
def P11100143695970330142.Spec : Prop :=
  ∀ n, P11100143695970330142.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P664603814000590399

`A053130(n+8)+A196789(n)+A053138(n)`
-/

namespace A196790.P664603814000590399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053130 (n + 8) + (A196789 n + A053138 n)

end

end A196790.P664603814000590399

namespace A196790

/-- `A053130(n+8)+A196789(n)+A053138(n)` -/
def P664603814000590399.Spec : Prop :=
  ∀ n, P664603814000590399.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P1620916534908189542

`A196789(n+1)-A053138(n+1)`
-/

namespace A196790.P1620916534908189542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196789 (n + 1) - A053138 (n + 1)

end

end A196790.P1620916534908189542

namespace A196790

/-- `A196789(n+1)-A053138(n+1)` -/
def P1620916534908189542.Spec : Prop :=
  ∀ n, P1620916534908189542.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P11771323568848773949

`A001287(Δ[n²])`
-/

namespace A196790.P11771323568848773949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 10)

end

end A196790.P11771323568848773949

namespace A196790

/-- `A001287(Δ[n²])` -/
def P11771323568848773949.Spec : Prop :=
  ∀ n, P11771323568848773949.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P5896086752726254701

`∑[A054333(Δ[n²])]`
-/

namespace A196790.P5896086752726254701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054333 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196790.P5896086752726254701

namespace A196790

/-- `∑[A054333(Δ[n²])]` -/
def P5896086752726254701.Spec : Prop :=
  ∀ n, P5896086752726254701.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P1385185856645308277

`record[A001287(A014681(n)+1)]`
-/

namespace A196790.P1385185856645308277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 ((A014681 n + 1).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196790.P1385185856645308277

namespace A196790

/-- `record[A001287(A014681(n)+1)]` -/
def P1385185856645308277.Spec : Prop :=
  ∀ n, P1385185856645308277.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P12305967611409355932

`record[A001287(A131452(n)+1)]`
-/

namespace A196790.P12305967611409355932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 ((A131452 n + 1).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196790.P12305967611409355932

namespace A196790

/-- `record[A001287(A131452(n)+1)]` -/
def P12305967611409355932.Spec : Prop :=
  ∀ n, P12305967611409355932.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P9928076502449689847

`A196789(n)+A000582(2*(n+5))`
-/

namespace A196790.P9928076502449689847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196789 n + A000582 (2 * (n + 5))

end

end A196790.P9928076502449689847

namespace A196790

/-- `A196789(n)+A000582(2*(n+5))` -/
def P9928076502449689847.Spec : Prop :=
  ∀ n, P9928076502449689847.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P11537249200155173747

`A001786(2*n+1)+A001786(2*n)`
-/

namespace A196790.P11537249200155173747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001786 (2 * n + 1) + A001786 (2 * n)

end

end A196790.P11537249200155173747

namespace A196790

/-- `A001786(2*n+1)+A001786(2*n)` -/
def P11537249200155173747.Spec : Prop :=
  ∀ n, P11537249200155173747.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P5307357547427629181

`A001288(2*n+1)-A001288(2*n)`
-/

namespace A196790.P5307357547427629181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (2 * n + 1 + 11) - A001288 (2 * n + 11)

end

end A196790.P5307357547427629181

namespace A196790

/-- `A001288(2*n+1)-A001288(2*n)` -/
def P5307357547427629181.Spec : Prop :=
  ∀ n, P5307357547427629181.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P1768458740073152944

`A008494(2*n+1)-A008504(2*n)`
-/

namespace A196790.P1768458740073152944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 (2 * n + 1) - A008504 (2 * n)

end

end A196790.P1768458740073152944

namespace A196790

/-- `A008494(2*n+1)-A008504(2*n)` -/
def P1768458740073152944.Spec : Prop :=
  ∀ n, P1768458740073152944.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P16892254571695023783

`∑[A054334(2*n+1)-A054334(2*n)]`
-/

namespace A196790.P16892254571695023783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054334 (2 * n + 1) - A054334 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196790.P16892254571695023783

namespace A196790

/-- `∑[A054334(2*n+1)-A054334(2*n)]` -/
def P16892254571695023783.Spec : Prop :=
  ∀ n, P16892254571695023783.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P13446569258782964326

`A282078(2*n+1)+A018214(2*n+1)`
-/

namespace A196790.P13446569258782964326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 (2 * n + 1) + A018214 (2 * n + 1)

end

end A196790.P13446569258782964326

namespace A196790

/-- `A282078(2*n+1)+A018214(2*n+1)` -/
def P13446569258782964326.Spec : Prop :=
  ∀ n, P13446569258782964326.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P10767364983201026403

`A225012(2*(n+1))-A225011(2*(n+1))`
-/

namespace A196790.P10767364983201026403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225012 (2 * (n + 1)) - A225011 (2 * (n + 1))

end

end A196790.P10767364983201026403

namespace A196790

/-- `A225012(2*(n+1))-A225011(2*(n+1))` -/
def P10767364983201026403.Spec : Prop :=
  ∀ n, P10767364983201026403.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P16920466306592120260

`A189980(2*n)+2*A282078(2*n+1)`
-/

namespace A196790.P16920466306592120260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (2 * n + 10) + 2 * A282078 (2 * n + 1)

end

end A196790.P16920466306592120260

namespace A196790

/-- `A189980(2*n)+2*A282078(2*n+1)` -/
def P16920466306592120260.Spec : Prop :=
  ∀ n, P16920466306592120260.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P11516082615573213734

`2*A018214(2*n+1)-A189980(2*n)`
-/

namespace A196790.P11516082615573213734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018214 (2 * n + 1) - A189980 (2 * n + 10)

end

end A196790.P11516082615573213734

namespace A196790

/-- `2*A018214(2*n+1)-A189980(2*n)` -/
def P11516082615573213734.Spec : Prop :=
  ∀ n, P11516082615573213734.a n = A196790 (n + 10)

end A196790

/-! ## A196790.P15413370243375602927

`A107422(2*n+1)/A000580(2*(n+4))`
-/

namespace A196790.P15413370243375602927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107422 (2 * n + 1) : ℚ) / (A000580 (2 * (n + 4)) : ℚ)

end

end A196790.P15413370243375602927

namespace A196790

/-- `A107422(2*n+1)/A000580(2*(n+4))` -/
def P15413370243375602927.Spec : Prop :=
  ∀ n, P15413370243375602927.a n = (A196790 (n + 10) : ℚ)

end A196790

/-!
# A196791: a(n) = A047848(9, n).

The programs for A196791, the canonical program `A196791.P11714312724501730325` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196791 has offset 0).

The definition of A196791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196791.P11714312724501730325

`12*a(n-1)-10` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196791

/-- `12*a(n-1)-10` -/
def P11714312724501730325.Spec : Prop :=
  ∀ n, P11714312724501730325.a n = A196791 n

theorem P11714312724501730325.correct : P11714312724501730325.Spec := by
  intro n
  simp only [A196791]

end A196791

/-! ## A196791.P4552511447766558844

`(12^n+10)/11`
-/

namespace A196791.P4552511447766558844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 ^ n + 10 : ℚ) / 11

end

end A196791.P4552511447766558844

namespace A196791

/-- `(12^n+10)/11` -/
def P4552511447766558844.Spec : Prop :=
  ∀ n, P4552511447766558844.a n = (A196791 n : ℚ)

theorem P4552511447766558844.correct : P4552511447766558844.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A196791, Nat.add_sub_cancel, A196791.P4552511447766558844.a, A196791.P11714312724501730325.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A196791, Nat.add_sub_cancel, A196791.P4552511447766558844.a, A196791.P11714312724501730325.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A196791

/-! ## A196791.P3742260714367237923

`ogf((1-11x)/(1-13x+12x^2))`
-/

namespace A196791.P3742260714367237923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -11] [1, -13, 12] n

end

end A196791.P3742260714367237923

namespace A196791

/-- `ogf((1-11x)/(1-13x+12x^2))` -/
def P3742260714367237923.Spec : Prop :=
  ∀ n, P3742260714367237923.a n = A196791 n

end A196791

/-! ## A196791.P9146189566615992132

`12^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A196791.P9146189566615992132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (12 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A196791.P9146189566615992132

namespace A196791

/-- `12^(n-1)+a(n-1)` -/
def P9146189566615992132.Spec : Prop :=
  ∀ n, P9146189566615992132.a n = (A196791 n : ℚ)

end A196791

/-! ## A196791.P17659502400807647444

`ceil(A001021(n)/11)`
-/

namespace A196791.P17659502400807647444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001021 n : ℚ) / 11⌉

end

end A196791.P17659502400807647444

namespace A196791

/-- `ceil(A001021(n)/11)` -/
def P17659502400807647444.Spec : Prop :=
  ∀ n, P17659502400807647444.a n = A196791 n

end A196791

/-! ## A196791.P15842946201033550055

`ceil(A016125(n)/12)`
-/

namespace A196791.P15842946201033550055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016125 n : ℚ) / 12⌉

end

end A196791.P15842946201033550055

namespace A196791

/-- `ceil(A016125(n)/12)` -/
def P15842946201033550055.Spec : Prop :=
  ∀ n, P15842946201033550055.a n = A196791 n

end A196791

/-! ## A196791.P3838427949105623762

`A016125(n)-A024140(n)`
-/

namespace A196791.P3838427949105623762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 n - A024140 n

end

end A196791.P3838427949105623762

namespace A196791

/-- `A016125(n)-A024140(n)` -/
def P3838427949105623762.Spec : Prop :=
  ∀ n, P3838427949105623762.a n = A196791 n

end A196791

/-! ## A196791.P1564440521083395898

`A016125(n)+1-A001021(n)`
-/

namespace A196791.P1564440521083395898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 n + (1 - A001021 n)

end

end A196791.P1564440521083395898

namespace A196791

/-- `A016125(n)+1-A001021(n)` -/
def P1564440521083395898.Spec : Prop :=
  ∀ n, P1564440521083395898.a n = A196791 n

end A196791

/-!
# A196792: a(n) = A047848(10, n).

The programs for A196792, the canonical program `A196792.P9831860763242184081` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196792 has offset 0).

The definition of A196792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196792.P9831860763242184081

`13*a(n-1)-11` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196792

/-- `13*a(n-1)-11` -/
def P9831860763242184081.Spec : Prop :=
  ∀ n, P9831860763242184081.a n = A196792 n

theorem P9831860763242184081.correct : P9831860763242184081.Spec := by
  intro n
  simp only [A196792]

end A196792

/-! ## A196792.P4381240646186659437

`(13^n+11)/12`
-/

namespace A196792.P4381240646186659437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 ^ n + 11 : ℚ) / 12

end

end A196792.P4381240646186659437

namespace A196792

/-- `(13^n+11)/12` -/
def P4381240646186659437.Spec : Prop :=
  ∀ n, P4381240646186659437.a n = (A196792 n : ℚ)

theorem P4381240646186659437.correct : P4381240646186659437.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A196792, Nat.add_sub_cancel, A196792.P4381240646186659437.a, A196792.P9831860763242184081.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A196792, Nat.add_sub_cancel, A196792.P4381240646186659437.a, A196792.P9831860763242184081.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A196792

/-! ## A196792.P2274031728525752097

`ogf((1-12x)/(1-14x+13x^2))`
-/

namespace A196792.P2274031728525752097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -12] [1, -14, 13] n

end

end A196792.P2274031728525752097

namespace A196792

/-- `ogf((1-12x)/(1-14x+13x^2))` -/
def P2274031728525752097.Spec : Prop :=
  ∀ n, P2274031728525752097.a n = A196792 n

end A196792

/-! ## A196792.P10156433592261306524

`13^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A196792.P10156433592261306524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (13 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A196792.P10156433592261306524

namespace A196792

/-- `13^(n-1)+a(n-1)` -/
def P10156433592261306524.Spec : Prop :=
  ∀ n, P10156433592261306524.a n = (A196792 n : ℚ)

end A196792

/-! ## A196792.P12663851059433458721

`ceil(A193578(n)/6)`
-/

namespace A196792.P12663851059433458721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193578 n : ℚ) / 6⌉

end

end A196792.P12663851059433458721

namespace A196792

/-- `ceil(A193578(n)/6)` -/
def P12663851059433458721.Spec : Prop :=
  ∀ n, P12663851059433458721.a n = A196792 n

end A196792

/-! ## A196792.P356550828567096531

`∑[A141012(n)-1]+2`
-/

namespace A196792.P356550828567096531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141012 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A196792.P356550828567096531

namespace A196792

/-- `∑[A141012(n)-1]+2` -/
def P356550828567096531.Spec : Prop :=
  ∀ n, P356550828567096531.a n = A196792 n

end A196792

/-! ## A196792.P7212417617175913218

`∑[A141012(n)]-A023443(n)`
-/

namespace A196792.P7212417617175913218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 n

end

end A196792.P7212417617175913218

namespace A196792

/-- `∑[A141012(n)]-A023443(n)` -/
def P7212417617175913218.Spec : Prop :=
  ∀ n, P7212417617175913218.a n = A196792 n

end A196792

/-! ## A196792.P11846123130699292538

`ceil(A083078(n)/10)`
-/

namespace A196792.P11846123130699292538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083078 n : ℚ) / 10⌉

end

end A196792.P11846123130699292538

namespace A196792

/-- `ceil(A083078(n)/10)` -/
def P11846123130699292538.Spec : Prop :=
  ∀ n, P11846123130699292538.a n = A196792 n

end A196792

/-! ## A196792.P18047695386778336688

`ceil(A001022(n)/12)`
-/

namespace A196792.P18047695386778336688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001022 n : ℚ) / 12⌉

end

end A196792.P18047695386778336688

namespace A196792

/-- `ceil(A001022(n)/12)` -/
def P18047695386778336688.Spec : Prop :=
  ∀ n, P18047695386778336688.a n = A196792 n

end A196792

/-!
# A196793: a(n) = A047848(n, n).

The programs for A196793, the canonical program `A196793.P691311931309370940` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196793 has offset 0).

The definition of A196793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196793.P691311931309370940

`((n+3)^n+n+1)/(n+2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196793

/-- `((n+3)^n+n+1)/(n+2)` -/
def P691311931309370940.Spec : Prop :=
  ∀ n, P691311931309370940.a n = (A196793 n : ℚ)

end A196793

/-! ## A196793.P3359837647770224463

`ceil(A083071(n)/(n+1))`
-/

namespace A196793.P3359837647770224463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083071 n : ℚ) / (n + 1 : ℚ)⌉

end

end A196793.P3359837647770224463

namespace A196793

/-- `ceil(A083071(n)/(n+1))` -/
def P3359837647770224463.Spec : Prop :=
  ∀ n, P3359837647770224463.a n = A196793 n

end A196793

/-! ## A196793.P15204469125946642226

`A047848(∑[4*n])`
-/

namespace A196793.P15204469125946642226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047848 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196793.P15204469125946642226

namespace A196793

/-- `A047848(∑[4*n])` -/
def P15204469125946642226.Spec : Prop :=
  ∀ n, P15204469125946642226.a n = A196793 n

end A196793

/-! ## A196793.P17426025494132472296

`A123490(2*(n+1)²)`
-/

namespace A196793.P17426025494132472296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123490 (2 * (n + 1) ^ 2)

end

end A196793.P17426025494132472296

namespace A196793

/-- `A123490(2*(n+1)²)` -/
def P17426025494132472296.Spec : Prop :=
  ∀ n, P17426025494132472296.a n = A196793 n

end A196793

/-! ## A196793.P2186342025603098022

`record[gcd(A047848(n), A114327(n))]`
-/

namespace A196793.P2186342025603098022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047848 n) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196793.P2186342025603098022

namespace A196793

/-- `record[gcd(A047848(n), A114327(n))]` -/
def P2186342025603098022.Spec : Prop :=
  ∀ n, (P2186342025603098022.a n : ℤ) = A196793 n

end A196793

/-!
# A196794: a(n) = Sum_{k=0..n} binomial(n,k)*2^k*(k+1)^(n-k).

The programs for A196794, there is no canonical definition to state claims against.
-/

/-! ## A196794.P10408410664798023253

`A273663(A081923(n))+1`
-/

namespace A196794.P10408410664798023253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A081923 n).toNat + 1

end

end A196794.P10408410664798023253

/-! ## A196794.P11169531516599478922

`A192607(A379209(n))-3`
-/

namespace A196794.P11169531516599478922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (A379209 n).toNat - 3

end

end A196794.P11169531516599478922

/-!
# A196795: a(n) = Sum_{k=0..n} binomial(n,k)*3^k*(k+1)^(n-k).

The programs for A196795, there is no canonical definition to state claims against.
-/

/-! ## A196795.P15994077930673367217

`(n+1)!*∑[n+1]-A294242((n+1)!*∑[n+1])`
-/

namespace A196795.P15994077930673367217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A294242 (Nat.factorial (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A196795.P15994077930673367217

/-!
# A196796: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,0,4,1 for x=0,1,2,3,4.

The programs for A196796, there is no canonical definition to state claims against.
-/

/-! ## A196796.P334987252104987773

`A196802(∑[4*n]+1)`
-/

namespace A196796.P334987252104987773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196796.P334987252104987773

/-! ## A196796.P13235973570891884085

`record[A003982(n)*A196802(n+1)]`
-/

namespace A196796.P13235973570891884085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196796.P13235973570891884085

/-! ## A196796.P16691955348093361066

`record[gcd(A037012(n), A196802(n+1))]`
-/

namespace A196796.P16691955348093361066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A196802 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196796.P16691955348093361066

/-! ## A196796.P3850011413891549686

`record[A196802(n+1)*A203994(n+1)]`
-/

namespace A196796.P3850011413891549686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196796.P3850011413891549686

/-! ## A196796.P18147598558251600492

`gcd(A000038(n), A196802(A001844(n)))`
-/

namespace A196796.P18147598558251600492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196802 (A001844 n).toNat)

end

end A196796.P18147598558251600492

/-!
# A196797: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,4,1 for x=0,1,2,3,4.

The programs for A196797, there is no canonical definition to state claims against.
-/

/-! ## A196797.P1275572015042391754

`A196802(∑[n+2]+4)`
-/

namespace A196797.P1275572015042391754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196797.P1275572015042391754

/-! ## A196797.P7073597446639212063

`lcm(2, A196802(A167614(n+1)))`
-/

namespace A196797.P7073597446639212063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A196802 (A167614 (n + 1)).toNat)

end

end A196797.P7073597446639212063

/-! ## A196797.P17429442901921875735

`A196802(A167614(n+1))+A185044(n)`
-/

namespace A196797.P17429442901921875735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A167614 (n + 1)).toNat + A185044 n

end

end A196797.P17429442901921875735

/-! ## A196797.P5192596247541953579

`gcd(A000038(n), A196802(A167614(n+1)))`
-/

namespace A196797.P5192596247541953579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196802 (A167614 (n + 1)).toNat)

end

end A196797.P5192596247541953579

/-! ## A196797.P2552381650829281818

`A196802(A167614(n+1))%A197043(n+1)`
-/

namespace A196797.P2552381650829281818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196802 (A167614 (n + 1)).toNat) (A197043 (n + 1))

end

end A196797.P2552381650829281818

/-!
# A196798: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,4,1 for x=0,1,2,3,4.

The programs for A196798, there is no canonical definition to state claims against.
-/

/-! ## A196798.P8761863177948952616

`A196802(A141214(n)+7)`
-/

namespace A196798.P8761863177948952616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A141214 n + 7).toNat

end

end A196798.P8761863177948952616

/-! ## A196798.P6644407995650398759

`A196802(A052905(n)+9)`
-/

namespace A196798.P6644407995650398759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A052905 n + 9).toNat

end

end A196798.P6644407995650398759

/-! ## A196798.P2864357208218765461

`A196802(A167614(n+2)+1)`
-/

namespace A196798.P2864357208218765461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A167614 (n + 2) + 1).toNat

end

end A196798.P2864357208218765461

/-! ## A196798.P13376297061431704674

`A196802(A374004(n+1))`
-/

namespace A196798.P13376297061431704674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A374004 (n + 1)).toNat

end

end A196798.P13376297061431704674

/-! ## A196798.P711612449469167400

`A196802(A055998(n+2))`
-/

namespace A196798.P711612449469167400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A055998 (n + 2)).toNat

end

end A196798.P711612449469167400

/-!
# A196799: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,4,1 for x=0,1,2,3,4.

The programs for A196799, there is no canonical definition to state claims against.
-/

/-! ## A196799.P7934865255727491002

`A196802(A155212(n)+13)`
-/

namespace A196799.P7934865255727491002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A155212 n + 13).toNat

end

end A196799.P7934865255727491002

/-! ## A196799.P14444236121216398731

`A196802(A056000(n)+15)`
-/

namespace A196799.P14444236121216398731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A056000 n + 15).toNat

end

end A196799.P14444236121216398731

/-! ## A196799.P1092765778395266080

`A196802(eq[6, A131818(n+1)])`
-/

namespace A196799.P1092765778395266080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196799.P1092765778395266080

/-! ## A196799.P5204365964643225377

`A196802(A374005(n+1))`
-/

namespace A196799.P5204365964643225377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A374005 (n + 1)).toNat

end

end A196799.P5204365964643225377

/-! ## A196799.P12563700515765562396

`A196802(A046691(n+3))`
-/

namespace A196799.P12563700515765562396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A046691 (n + 3)).toNat

end

end A196799.P12563700515765562396

