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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A197500: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,1,0 for x=0,1,2,3,4.

The programs for A197500, there is no canonical definition to state claims against.
-/

/-! ## A197500.P7203787472690061561

`A197503(A374005(n+1))`
-/

namespace A197500.P7203787472690061561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A374005 (n + 1)).toNat

end

end A197500.P7203787472690061561

/-! ## A197500.P6400573207568599876

`A197503(A167499(n+3))`
-/

namespace A197500.P6400573207568599876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A167499 (n + 3)).toNat

end

end A197500.P6400573207568599876

/-! ## A197500.P10988960973154783352

`A197503(A155212(n)+13)`
-/

namespace A197500.P10988960973154783352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A155212 n + 13).toNat

end

end A197500.P10988960973154783352

/-! ## A197500.P13687202162638649591

`A197503(A056000(n)+15)`
-/

namespace A197500.P13687202162638649591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A056000 n + 15).toNat

end

end A197500.P13687202162638649591

/-! ## A197500.P12401406745416373577

`A197503(A034856(n+3)+7)`
-/

namespace A197500.P12401406745416373577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A034856 (n + 3) + 7).toNat

end

end A197500.P12401406745416373577

/-!
# A197501: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,1,0 for x=0,1,2,3,4.

The programs for A197501, there is no canonical definition to state claims against.
-/

/-! ## A197501.P7853555761412954017

`A197503(A374007(n+1))`
-/

namespace A197501.P7853555761412954017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A374007 (n + 1)).toNat

end

end A197501.P7853555761412954017

/-! ## A197501.P9916042710937440785

`A197503(A166136(n+4))`
-/

namespace A197501.P9916042710937440785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A166136 (n + 4)).toNat

end

end A197501.P9916042710937440785

/-! ## A197501.P8188110225759181341

`A197503(eq[7, A131818(n+1)])`
-/

namespace A197501.P8188110225759181341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197501.P8188110225759181341

/-! ## A197501.P10825666508490334238

`A197503(eq[3, A219347(n)])`
-/

namespace A197501.P10825666508490334238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197501.P10825666508490334238

/-! ## A197501.P5813549992925194773

`A197503(eq[5, A193592(n)])`
-/

namespace A197501.P5813549992925194773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197501.P5813549992925194773

/-!
# A197502: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,1,0 for x=0,1,2,3,4.

The programs for A197502, there is no canonical definition to state claims against.
-/

/-! ## A197502.P12343963585839659529

`A197503(A374008(n+1))`
-/

namespace A197502.P12343963585839659529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A374008 (n + 1)).toNat

end

end A197502.P12343963585839659529

/-! ## A197502.P1612887918875084187

`A197503(A167487(n+5))`
-/

namespace A197502.P1612887918875084187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A167487 (n + 5)).toNat

end

end A197502.P1612887918875084187

/-! ## A197502.P5694314040005759694

`A197503(A166136(n+5)+1)`
-/

namespace A197502.P5694314040005759694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A166136 (n + 5) + 1).toNat

end

end A197502.P5694314040005759694

/-! ## A197502.P10312024614646210932

`A197503(eq[8, A131818(n+1)])`
-/

namespace A197502.P10312024614646210932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197502.P10312024614646210932

/-! ## A197502.P1423800969763592012

`A197503(A055999(n+4))`
-/

namespace A197502.P1423800969763592012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A055999 (n + 4)).toNat

end

end A197502.P1423800969763592012

/-!
# A197504: 1 together with the odd numbers m >= 3 for which phi(2*m)/2 = phi(m)/2 is odd, where phi = A000010 (Euler's totient).

The programs for A197504, the canonical program `A197504.P12641478260192142009` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197504 has offset 1).

The definition of A197504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197504.P6121767405985578347

`A196445(n+1)/2`
-/

namespace A197504.P6121767405985578347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196445 (n + 1) : ℚ) / 2

end

end A197504.P6121767405985578347

namespace A197504

/-- `A196445(n+1)/2` -/
def P6121767405985578347.Spec : Prop :=
  ∀ n, P6121767405985578347.a n = (A197504 (n + 1) : ℚ)

end A197504

/-! ## A197504.P12641478260192142009

`record[lcm(2, A332555(n+1))/2]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A197504

/-- `record[lcm(2, A332555(n+1))/2]` -/
def P12641478260192142009.Spec : Prop :=
  ∀ n, P12641478260192142009.a n = (A197504 (n + 1) : ℚ)

end A197504

/-! ## A197504.P1715604852584780132

`∩[A097987(n+1), A061345(n)]`
-/

namespace A197504.P1715604852584780132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P1715604852584780132

namespace A197504

/-- `∩[A097987(n+1), A061345(n)]` -/
def P1715604852584780132.Spec : Prop :=
  ∀ n, (P1715604852584780132.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P6113558479557699120

`∩[A332555(n+1), A061345(n)]`
-/

namespace A197504.P6113558479557699120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P6113558479557699120

namespace A197504

/-- `∩[A332555(n+1), A061345(n)]` -/
def P6113558479557699120.Spec : Prop :=
  ∀ n, (P6113558479557699120.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P14186119797830351073

`filter[A097987(n+1), A373157(#)]`
-/

namespace A197504.P14186119797830351073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A197504.P14186119797830351073

namespace A197504

/-- `filter[A097987(n+1), A373157(#)]` -/
def P14186119797830351073.Spec : Prop :=
  ∀ n, P14186119797830351073.a n = A197504 (n + 1)

end A197504

/-! ## A197504.P4981611054522851098

`filter[A097987(n+1), A374134(#)]`
-/

namespace A197504.P4981611054522851098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A197504.P4981611054522851098

namespace A197504

/-- `filter[A097987(n+1), A374134(#)]` -/
def P4981611054522851098.Spec : Prop :=
  ∀ n, P4981611054522851098.a n = A197504 (n + 1)

end A197504

/-! ## A197504.P1191699799409596064

`filter[A332555(n+1), A373157(#)]`
-/

namespace A197504.P1191699799409596064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A197504.P1191699799409596064

namespace A197504

/-- `filter[A332555(n+1), A373157(#)]` -/
def P1191699799409596064.Spec : Prop :=
  ∀ n, P1191699799409596064.a n = A197504 (n + 1)

end A197504

/-! ## A197504.P16916555719077558914

`filter[A332555(n+1), A374134(#)]`
-/

namespace A197504.P16916555719077558914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A197504.P16916555719077558914

namespace A197504

/-- `filter[A332555(n+1), A374134(#)]` -/
def P16916555719077558914.Spec : Prop :=
  ∀ n, P16916555719077558914.a n = A197504 (n + 1)

end A197504

/-! ## A197504.P16279276389221928790

`∩[A120127(n+1), A061345(n)]`
-/

namespace A197504.P16279276389221928790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P16279276389221928790

namespace A197504

/-- `∩[A120127(n+1), A061345(n)]` -/
def P16279276389221928790.Spec : Prop :=
  ∀ n, (P16279276389221928790.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P14134230719983257034

`filter[A004614(n+1), A354923(#)]`
-/

namespace A197504.P14134230719983257034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A197504.P14134230719983257034

namespace A197504

/-- `filter[A004614(n+1), A354923(#)]` -/
def P14134230719983257034.Spec : Prop :=
  ∀ n, P14134230719983257034.a n = A197504 (n + 1)

end A197504

/-! ## A197504.P8563420040158900125

`filter[A004614(n+1), A354924(#)]`
-/

namespace A197504.P8563420040158900125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A197504.P8563420040158900125

namespace A197504

/-- `filter[A004614(n+1), A354924(#)]` -/
def P8563420040158900125.Spec : Prop :=
  ∀ n, P8563420040158900125.a n = A197504 (n + 1)

end A197504

/-! ## A197504.P847670836843089036

`∩[A004614(n+1), A061345(n)]`
-/

namespace A197504.P847670836843089036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P847670836843089036

namespace A197504

/-- `∩[A004614(n+1), A061345(n)]` -/
def P847670836843089036.Spec : Prop :=
  ∀ n, (P847670836843089036.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P14343998817256892705

`∩[A000961(n+1), A004614(n+1)]`
-/

namespace A197504.P14343998817256892705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P14343998817256892705

namespace A197504

/-- `∩[A000961(n+1), A004614(n+1)]` -/
def P14343998817256892705.Spec : Prop :=
  ∀ n, (P14343998817256892705.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P347997963158334870

`∩[A004614(n+1), A081061(n+1)]`
-/

namespace A197504.P347997963158334870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P347997963158334870

namespace A197504

/-- `∩[A004614(n+1), A081061(n+1)]` -/
def P347997963158334870.Spec : Prop :=
  ∀ n, (P347997963158334870.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P7460286264412019277

`∩[A004614(n+1), A097987(n+1)]`
-/

namespace A197504.P7460286264412019277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P7460286264412019277

namespace A197504

/-- `∩[A004614(n+1), A097987(n+1)]` -/
def P7460286264412019277.Spec : Prop :=
  ∀ n, (P7460286264412019277.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P2024074148566078367

`∩[A141807(n+1), A004614(n+1)]`
-/

namespace A197504.P2024074148566078367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P2024074148566078367

namespace A197504

/-- `∩[A141807(n+1), A004614(n+1)]` -/
def P2024074148566078367.Spec : Prop :=
  ∀ n, (P2024074148566078367.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P15430042228285613609

`∩[A332555(n+1), A004614(n+1)]`
-/

namespace A197504.P15430042228285613609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P15430042228285613609

namespace A197504

/-- `∩[A332555(n+1), A004614(n+1)]` -/
def P15430042228285613609.Spec : Prop :=
  ∀ n, (P15430042228285613609.a n : ℤ) = A197504 (n + 1)

end A197504

/-! ## A197504.P928060663128918196

`∩[A380757(n+1), A004614(n+1)]`
-/

namespace A197504.P928060663128918196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197504.P928060663128918196

namespace A197504

/-- `∩[A380757(n+1), A004614(n+1)]` -/
def P928060663128918196.Spec : Prop :=
  ∀ n, (P928060663128918196.a n : ℤ) = A197504 (n + 1)

end A197504

/-!
# A197505: Exponential transform of A006125.

The programs for A197505, there is no canonical definition to state claims against.
-/

/-! ## A197505.P10454623206105320982

`A182560(A059849(n))`
-/

namespace A197505.P10454623206105320982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182560 (A059849 n).toNat

end

end A197505.P10454623206105320982

/-! ## A197505.P12692298081409415337

`or(1, A079905(A144002(n)))`
-/

namespace A197505.P12692298081409415337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A079905 (A144002 n).toNat)

end

end A197505.P12692298081409415337

/-!
# A197523: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,4,1,0,1 for x=0,1,2,3,4.

The programs for A197523, there is no canonical definition to state claims against.
-/

/-! ## A197523.P6649367003654957652

`A197529(∑[4*n]+1)`
-/

namespace A197523.P6649367003654957652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197523.P6649367003654957652

/-! ## A197523.P5532668874261017322

`A189006(n)*A197529(A001844(n))`
-/

namespace A197523.P5532668874261017322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 n * A197529 (A001844 n).toNat

end

end A197523.P5532668874261017322

/-! ## A197523.P13906673293553914466

`gcd(A055641(n), A197529(A001844(n)))`
-/

namespace A197523.P13906673293553914466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055641 n) (A197529 (A001844 n).toNat)

end

end A197523.P13906673293553914466

/-! ## A197523.P6633908106267911162

`lcm(A065357(n), A197529(A001844(n)))`
-/

namespace A197523.P6633908106267911162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A197529 (A001844 n).toNat)

end

end A197523.P6633908106267911162

/-! ## A197523.P14162389524611419088

`or(A151933(n), A197529(A001844(n)))`
-/

namespace A197523.P14162389524611419088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A197529 (A001844 n).toNat)

end

end A197523.P14162389524611419088

/-!
# A197524: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,1,0,1 for x=0,1,2,3,4.

The programs for A197524, there is no canonical definition to state claims against.
-/

/-! ## A197524.P9104377230550422089

`A197529(∑[n+2]+4)`
-/

namespace A197524.P9104377230550422089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197524.P9104377230550422089

/-! ## A197524.P18307974498398090902

`A197529(A167614(n+1))^(n-abs(1-n))`
-/

namespace A197524.P18307974498398090902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197529 (A167614 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - |1 - (n : ℤ)| : ℤ)

end

end A197524.P18307974498398090902

/-! ## A197524.P14247158508499545012

`A197529(A167614(n+1))+A011733(n)`
-/

namespace A197524.P14247158508499545012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A167614 (n + 1)).toNat + A011733 n

end

end A197524.P14247158508499545012

/-! ## A197524.P13883725413078442627

`A197529(A167614(n+1))+A011734(n)`
-/

namespace A197524.P13883725413078442627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A167614 (n + 1)).toNat + A011734 n

end

end A197524.P13883725413078442627

/-! ## A197524.P8253878663524564111

`A197529(A167614(n+1))+A011736(n)`
-/

namespace A197524.P8253878663524564111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A167614 (n + 1)).toNat + A011736 n

end

end A197524.P8253878663524564111

/-!
# A197525: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,1,0,1 for x=0,1,2,3,4.

The programs for A197525, there is no canonical definition to state claims against.
-/

/-! ## A197525.P7151463350771755141

`A197529(A374004(n+1))`
-/

namespace A197525.P7151463350771755141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A374004 (n + 1)).toNat

end

end A197525.P7151463350771755141

/-! ## A197525.P9278461566592766784

`A197529(A052905(n)+9)`
-/

namespace A197525.P9278461566592766784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A052905 n + 9).toNat

end

end A197525.P9278461566592766784

/-! ## A197525.P1841653956101960682

`A197529(A055999(n)+10)`
-/

namespace A197525.P1841653956101960682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A055999 n + 10).toNat

end

end A197525.P1841653956101960682

/-! ## A197525.P12700686809649420216

`A197529(A167614(n+2)+1)`
-/

namespace A197525.P12700686809649420216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A167614 (n + 2) + 1).toNat

end

end A197525.P12700686809649420216

/-! ## A197525.P5777102335242766364

`A197529(Δ[A264443(n)-n²])`
-/

namespace A197525.P5777102335242766364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (f1 (n + 1) - f1 n).toNat

end

end A197525.P5777102335242766364

/-!
# A197526: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,1,0,1 for x=0,1,2,3,4.

The programs for A197526, there is no canonical definition to state claims against.
-/

/-! ## A197526.P17713411451932433057

`A197529(A374005(n+1))`
-/

namespace A197526.P17713411451932433057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A374005 (n + 1)).toNat

end

end A197526.P17713411451932433057

/-! ## A197526.P7426688289371573994

`A197529(A167499(n+3))`
-/

namespace A197526.P7426688289371573994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A167499 (n + 3)).toNat

end

end A197526.P7426688289371573994

/-! ## A197526.P2134177067446610220

`A197529(A155212(n)+13)`
-/

namespace A197526.P2134177067446610220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A155212 n + 13).toNat

end

end A197526.P2134177067446610220

/-! ## A197526.P15229776699076355388

`A197529(A056000(n)+15)`
-/

namespace A197526.P15229776699076355388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A056000 n + 15).toNat

end

end A197526.P15229776699076355388

/-! ## A197526.P9233734164878786037

`A197529(A167614(n+3)+2)`
-/

namespace A197526.P9233734164878786037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A167614 (n + 3) + 2).toNat

end

end A197526.P9233734164878786037

/-!
# A197527: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,1,0,1 for x=0,1,2,3,4.

The programs for A197527, there is no canonical definition to state claims against.
-/

/-! ## A197527.P15029685108770980492

`A197529(A374007(n+1))`
-/

namespace A197527.P15029685108770980492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A374007 (n + 1)).toNat

end

end A197527.P15029685108770980492

/-! ## A197527.P13473083095396196725

`A197529(Δ[A264443(n)]+10)`
-/

namespace A197527.P13473083095396196725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (f1 (n + 1) - f1 n + 10).toNat

end

end A197527.P13473083095396196725

/-! ## A197527.P9769013190504759965

`A197529(A027379(n+3)+9)`
-/

namespace A197527.P9769013190504759965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A027379 (n + 3) + 9).toNat

end

end A197527.P9769013190504759965

/-! ## A197527.P6140474537501148578

`A197529(eq[6, A130270(n+1)])`
-/

namespace A197527.P6140474537501148578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197527.P6140474537501148578

/-! ## A197527.P4690977810848751015

`A197529(eq[7, A131818(n+1)])`
-/

namespace A197527.P4690977810848751015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197527.P4690977810848751015

/-!
# A197528: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,1,0,1 for x=0,1,2,3,4.

The programs for A197528, there is no canonical definition to state claims against.
-/

/-! ## A197528.P150586981403558990

`A197529(A374008(n+1))`
-/

namespace A197528.P150586981403558990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A374008 (n + 1)).toNat

end

end A197528.P150586981403558990

/-! ## A197528.P13100748777970604837

`A197529(A167499(n+5)+2)`
-/

namespace A197528.P13100748777970604837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A167499 (n + 5) + 2).toNat

end

end A197528.P13100748777970604837

/-! ## A197528.P16999652235020190784

`A197529(A027379(n+4)+10)`
-/

namespace A197528.P16999652235020190784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A027379 (n + 4) + 10).toNat

end

end A197528.P16999652235020190784

/-! ## A197528.P7203667215498753613

`A197529(eq[8, A131818(n+1)])`
-/

namespace A197528.P7203667215498753613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197528.P7203667215498753613

/-! ## A197528.P8775058696151752650

`A197529(eq[6, A193592(n)])`
-/

namespace A197528.P8775058696151752650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197528.P8775058696151752650

/-!
# A197529: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,4,1,0,1 for x=0,1,2,3,4.

The programs for A197529, there is no canonical definition to state claims against.
-/

/-! ## A197529.P567901245851736523

`A364838(A197373(n+1))`
-/

namespace A197529.P567901245851736523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364838 (A197373 (n + 1)).toNat

end

end A197529.P567901245851736523

/-!
# A197530: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,1,0,0 for x=0,1,2,3,4.

The programs for A197530, there is no canonical definition to state claims against.
-/

/-! ## A197530.P5096993118068565514

`A197537(∑[4*n]+1)`
-/

namespace A197530.P5096993118068565514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197530.P5096993118068565514

/-! ## A197530.P2817357394771053285

`A197537(A001844(n))+char[10]`
-/

namespace A197530.P2817357394771053285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197530.P2817357394771053285

/-! ## A197530.P3441016084461749675

`record[or(-A003987(n), A197537(n+1))]`
-/

namespace A197530.P3441016084461749675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A003987 n) (A197537 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197530.P3441016084461749675

/-! ## A197530.P9375416982698916147

`record[gcd(A049239(n+1), A197537(n+1))]`
-/

namespace A197530.P9375416982698916147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049239 (n + 1)) (A197537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197530.P9375416982698916147

/-! ## A197530.P12046571250847816497

`A043539(n+1)*A197537(A001844(n))`
-/

namespace A197530.P12046571250847816497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043539 (n + 1) * A197537 (A001844 n).toNat

end

end A197530.P12046571250847816497

/-!
# A197531: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,0 for x=0,1,2,3,4.

The programs for A197531, there is no canonical definition to state claims against.
-/

/-! ## A197531.P14506301447884845426

`A197537(∑[n+1]+2)`
-/

namespace A197531.P14506301447884845426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197531.P14506301447884845426

/-! ## A197531.P9143466207037446830

`A197679(∑[n+1]+2)`
-/

namespace A197531.P9143466207037446830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197531.P9143466207037446830

/-! ## A197531.P10756394216184541715

`A197537(A133263(n+1))+xor(n+1, n+1)`
-/

namespace A197531.P10756394216184541715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A133263 (n + 1)).toNat + (Nat.xor (n + 1) (n + 1) : ℤ)

end

end A197531.P10756394216184541715

/-! ## A197531.P9523890840106853876

`A197537(A133263(n+1))+A185284(n)`
-/

namespace A197531.P9523890840106853876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A133263 (n + 1)).toNat + A185284 n

end

end A197531.P9523890840106853876

/-! ## A197531.P13329930442706966978

`A056926(A320114(n+1))*A197537(A133263(n+1))`
-/

namespace A197531.P13329930442706966978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A320114 (n + 1)).toNat * A197537 (A133263 (n + 1)).toNat

end

end A197531.P13329930442706966978

/-!
# A197532: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,0 for x=0,1,2,3,4.

The programs for A197532, there is no canonical definition to state claims against.
-/

/-! ## A197532.P16251253888366265306

`A197537(∑[n+2]+4)`
-/

namespace A197532.P16251253888366265306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197532.P16251253888366265306

/-! ## A197532.P5541289596489057223

`A197537(A167614(n+1))+A067168(n)`
-/

namespace A197532.P5541289596489057223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A167614 (n + 1)).toNat + A067168 (n + 10)

end

end A197532.P5541289596489057223

/-! ## A197532.P16479762825814372495

`A197537(A167614(n+1))+A178798(n)`
-/

namespace A197532.P16479762825814372495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A167614 (n + 1)).toNat + A178798 n

end

end A197532.P16479762825814372495

/-! ## A197532.P17815453950133477551

`A197537(A167614(n+1))+A185238(n)`
-/

namespace A197532.P17815453950133477551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A167614 (n + 1)).toNat + A185238 n

end

end A197532.P17815453950133477551

/-! ## A197532.P10824760208742697995

`A326685(n)+A197537(A167614(n+1))`
-/

namespace A197532.P10824760208742697995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A197537 (A167614 (n + 1)).toNat

end

end A197532.P10824760208742697995

/-!
# A197533: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,0 for x=0,1,2,3,4.

The programs for A197533, there is no canonical definition to state claims against.
-/

/-! ## A197533.P16893000202265192242

`A197537(A374004(n+1))`
-/

namespace A197533.P16893000202265192242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A374004 (n + 1)).toNat

end

end A197533.P16893000202265192242

/-! ## A197533.P133413872654491608

`A197537(A141214(n)+7)`
-/

namespace A197533.P133413872654491608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A141214 n + 7).toNat

end

end A197533.P133413872654491608

/-! ## A197533.P12404220572197335687

`A197537(A055999(n)+10)`
-/

namespace A197533.P12404220572197335687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A055999 n + 10).toNat

end

end A197533.P12404220572197335687

/-! ## A197533.P4423002200005138719

`A197537(A167614(n+2)+1)`
-/

namespace A197533.P4423002200005138719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A167614 (n + 2) + 1).toNat

end

end A197533.P4423002200005138719

/-! ## A197533.P9992743455623345962

`A197537(A167499(n+2)-1)`
-/

namespace A197533.P9992743455623345962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A167499 (n + 2) - 1).toNat

end

end A197533.P9992743455623345962

/-!
# A197534: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,0 for x=0,1,2,3,4.

The programs for A197534, there is no canonical definition to state claims against.
-/

/-! ## A197534.P1317590192130491856

`A197537(A374005(n+1))`
-/

namespace A197534.P1317590192130491856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A374005 (n + 1)).toNat

end

end A197534.P1317590192130491856

/-! ## A197534.P3534810217361902620

`A197537(A167499(n+3))`
-/

namespace A197534.P3534810217361902620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A167499 (n + 3)).toNat

end

end A197534.P3534810217361902620

/-! ## A197534.P8430513139467616775

`A197537(A155212(n)+13)`
-/

namespace A197534.P8430513139467616775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A155212 n + 13).toNat

end

end A197534.P8430513139467616775

/-! ## A197534.P15199099144397779751

`A197537(A167614(n+3)+2)`
-/

namespace A197534.P15199099144397779751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A167614 (n + 3) + 2).toNat

end

end A197534.P15199099144397779751

/-! ## A197534.P8742766133987491332

`A197537(eq[6, A131818(n+1)])`
-/

namespace A197534.P8742766133987491332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197534.P8742766133987491332

/-!
# A197535: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,0 for x=0,1,2,3,4.

The programs for A197535, there is no canonical definition to state claims against.
-/

/-! ## A197535.P1073849694355556710

`A197537(A374007(n+1))`
-/

namespace A197535.P1073849694355556710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A374007 (n + 1)).toNat

end

end A197535.P1073849694355556710

/-! ## A197535.P292733669087497707

`A197537(A027379(n+3)+9)`
-/

namespace A197535.P292733669087497707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A027379 (n + 3) + 9).toNat

end

end A197535.P292733669087497707

/-! ## A197535.P323162101105739111

`A197537(eq[7, A131818(n+1)])`
-/

namespace A197535.P323162101105739111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197535.P323162101105739111

/-! ## A197535.P3431609118500891640

`A197537(A052905(n+3))`
-/

namespace A197535.P3431609118500891640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A052905 (n + 3)).toNat

end

end A197535.P3431609118500891640

/-! ## A197535.P3947878530200357436

`A197537(eq[5, A193592(n)])`
-/

namespace A197535.P3947878530200357436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197535.P3947878530200357436

/-!
# A197536: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,0 for x=0,1,2,3,4.

The programs for A197536, there is no canonical definition to state claims against.
-/

/-! ## A197536.P8439863298451331714

`A197537(A374008(n+1))`
-/

namespace A197536.P8439863298451331714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A374008 (n + 1)).toNat

end

end A197536.P8439863298451331714

/-! ## A197536.P6467542765714471395

`A197537(A056119(n)+28)`
-/

namespace A197536.P6467542765714471395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A056119 n + 28).toNat

end

end A197536.P6467542765714471395

/-! ## A197536.P14896623273120721719

`A197537(A167499(n+5)+2)`
-/

namespace A197536.P14896623273120721719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A167499 (n + 5) + 2).toNat

end

end A197536.P14896623273120721719

/-! ## A197536.P7895074382491767864

`A197537(A027379(n+4)+10)`
-/

namespace A197536.P7895074382491767864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (A027379 (n + 4) + 10).toNat

end

end A197536.P7895074382491767864

/-! ## A197536.P14551822592049884966

`A197537(eq[8, A131818(n+1)])`
-/

namespace A197536.P14551822592049884966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197536.P14551822592049884966

/-!
# A197537: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,1,0,0 for x=0,1,2,3,4.

The programs for A197537, there is no canonical definition to state claims against.
-/

/-! ## A197537.P17907617637611639679

`A197679(n+1)+A016389(A022166(n))`
-/

namespace A197537.P17907617637611639679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (n + 1) + A016389 (A022166 n).toNat

end

end A197537.P17907617637611639679

/-! ## A197537.P17595883949502206272

`A197679(n+1)+A178798(A172349(n))`
-/

namespace A197537.P17595883949502206272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (n + 1) + A178798 (A172349 n).toNat

end

end A197537.P17595883949502206272

/-! ## A197537.P17972049892707515021

`A197679(n+1)-A025465(A022345(n))`
-/

namespace A197537.P17972049892707515021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (n + 1) - A025465 (A022345 n).toNat

end

end A197537.P17972049892707515021

/-! ## A197537.P16332500123967763886

`A197679(n+1)-A025465(A023105(n))`
-/

namespace A197537.P16332500123967763886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (n + 1) - A025465 (A023105 n).toNat

end

end A197537.P16332500123967763886

/-! ## A197537.P10519165733215648089

`A197679(n+1)-A055641(A002843(n))`
-/

namespace A197537.P10519165733215648089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (n + 1) - A055641 (A002843 n).toNat

end

end A197537.P10519165733215648089

/-!
# A197538: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,2,1,1,1 for x=0,1,2,3,4.

The programs for A197538, there is no canonical definition to state claims against.
-/

/-! ## A197538.P9995494896505152853

`A197545(∑[4*n]+1)`
-/

namespace A197538.P9995494896505152853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197538.P9995494896505152853

/-! ## A197538.P39653036231832384

`record[A197545(Δ[A235355(n)])]`
-/

namespace A197538.P39653036231832384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197538.P39653036231832384

/-! ## A197538.P8541023732324398898

`record[A197545(A330613(n+1))]`
-/

namespace A197538.P8541023732324398898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197538.P8541023732324398898

/-! ## A197538.P2101136822495801815

`A197545(A001844(n))+char[10]`
-/

namespace A197538.P2101136822495801815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197538.P2101136822495801815

/-! ## A197538.P13765775632585776765

`record[A003982(n)*A197545(n+1)]`
-/

namespace A197538.P13765775632585776765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197538.P13765775632585776765

/-!
# A197539: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,1,1 for x=0,1,2,3,4.

The programs for A197539, there is no canonical definition to state claims against.
-/

/-! ## A197539.P16269638635437587543

`A197545(∑[n+1]+2)`
-/

namespace A197539.P16269638635437587543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197539.P16269638635437587543

/-! ## A197539.P2583323769659482747

`record[A197545(A025796(n)+2)]`
-/

namespace A197539.P2583323769659482747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A025796 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197539.P2583323769659482747

/-! ## A197539.P9934941588449836325

`A197545(A000096(n)+3)+char[20]`
-/

namespace A197539.P9934941588449836325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197539.P9934941588449836325

/-! ## A197539.P14744069493222412511

`record[A197545(n+1)/A102405(n)]`
-/

namespace A197539.P14744069493222412511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197545 (n + 1) : ℚ) / (A102405 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197539.P14744069493222412511

/-! ## A197539.P4615153269116049965

`record[A197545(n+1)/A271206(n)]`
-/

namespace A197539.P4615153269116049965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197545 (n + 1) : ℚ) / (A271206 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197539.P4615153269116049965

/-!
# A197540: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,1,1 for x=0,1,2,3,4.

The programs for A197540, there is no canonical definition to state claims against.
-/

/-! ## A197540.P2848079585474662318

`A197545(∑[n+2]+4)`
-/

namespace A197540.P2848079585474662318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197540.P2848079585474662318

/-! ## A197540.P12190189169837804857

`record[A197545(A025796(n)+3)]`
-/

namespace A197540.P12190189169837804857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A025796 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197540.P12190189169837804857

/-! ## A197540.P8490600523404522748

`and(-1, A197545(A167614(n+1)))`
-/

namespace A197540.P8490600523404522748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A197545 (A167614 (n + 1)).toNat)

end

end A197540.P8490600523404522748

/-! ## A197540.P7782268964715404094

`A197545(A046691(n)+7)+char[23]`
-/

namespace A197540.P7782268964715404094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197540.P7782268964715404094

/-! ## A197540.P15581749930620314807

`record[gcd(A197545(n+4), A316269(n+3))]`
-/

namespace A197540.P15581749930620314807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197545 (n + 4)) (A316269 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197540.P15581749930620314807

/-!
# A197541: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,1,1 for x=0,1,2,3,4.

The programs for A197541, there is no canonical definition to state claims against.
-/

/-! ## A197541.P2869072615384054688

`A197545(∑[n+3]+7)`
-/

namespace A197541.P2869072615384054688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197541.P2869072615384054688

/-! ## A197541.P1888518690222416725

`A197545(A167614(n+2)+1)+char[18]`
-/

namespace A197541.P1888518690222416725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197541.P1888518690222416725

/-! ## A197541.P5186911252270208137

`A007318(C(2, n))*A197545(A167614(n+2)+1)`
-/

namespace A197541.P5186911252270208137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A197545 (A167614 (n + 2) + 1).toNat

end

end A197541.P5186911252270208137

/-! ## A197541.P2882780424405562057

`A197545(A167614(n+2)+1)%A000108(n+10)`
-/

namespace A197541.P2882780424405562057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197545 (A167614 (n + 2) + 1).toNat) (A000108 (n + 10))

end

end A197541.P2882780424405562057

/-! ## A197541.P18125077377286488371

`gcd(7, A007318(n))*A197545(A167614(n+2)+1)`
-/

namespace A197541.P18125077377286488371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (A007318 n) : ℤ) * A197545 (A167614 (n + 2) + 1).toNat

end

end A197541.P18125077377286488371

/-!
# A197542: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,1,1 for x=0,1,2,3,4.

The programs for A197542, there is no canonical definition to state claims against.
-/

/-! ## A197542.P32891553637889035

`A197545(C(n+6, 2)-n)`
-/

namespace A197542.P32891553637889035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (Nat.choose (n + 6) 2 - n)

end

end A197542.P32891553637889035

/-! ## A197542.P7259364944020781728

`A197545(A374005(n+1))`
-/

namespace A197542.P7259364944020781728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A374005 (n + 1)).toNat

end

end A197542.P7259364944020781728

/-! ## A197542.P10172222987761522236

`A197545(A167499(n+3))`
-/

namespace A197542.P10172222987761522236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A167499 (n + 3)).toNat

end

end A197542.P10172222987761522236

/-! ## A197542.P11881402638380763830

`A197545(A155212(n)+13)`
-/

namespace A197542.P11881402638380763830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A155212 n + 13).toNat

end

end A197542.P11881402638380763830

/-! ## A197542.P11300457612861864588

`A197545(A056000(n)+15)`
-/

namespace A197542.P11300457612861864588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A056000 n + 15).toNat

end

end A197542.P11300457612861864588

/-!
# A197543: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,1,1 for x=0,1,2,3,4.

The programs for A197543, there is no canonical definition to state claims against.
-/

/-! ## A197543.P13847997174488282978

`A197545(A374007(n+1))`
-/

namespace A197543.P13847997174488282978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A374007 (n + 1)).toNat

end

end A197543.P13847997174488282978

/-! ## A197543.P16281103031817342025

`A197545(A166136(n+4))`
-/

namespace A197543.P16281103031817342025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A166136 (n + 4)).toNat

end

end A197543.P16281103031817342025

/-! ## A197543.P11652653916062848871

`A197545(A056115(n)+21)`
-/

namespace A197543.P11652653916062848871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A056115 n + 21).toNat

end

end A197543.P11652653916062848871

/-! ## A197543.P807991571268897755

`A197545(A167499(n+4)+1)`
-/

namespace A197543.P807991571268897755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A167499 (n + 4) + 1).toNat

end

end A197543.P807991571268897755

/-! ## A197543.P17320731616421400670

`A197545(A077169(n+6)+1)`
-/

namespace A197543.P17320731616421400670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A077169 (n + 6) + 1).toNat

end

end A197543.P17320731616421400670

/-!
# A197544: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,2,1,1,1 for x=0,1,2,3,4.

The programs for A197544, there is no canonical definition to state claims against.
-/

/-! ## A197544.P12437185155144522676

`A197545(A374008(n+1))`
-/

namespace A197544.P12437185155144522676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A374008 (n + 1)).toNat

end

end A197544.P12437185155144522676

/-! ## A197544.P12324974888956425641

`A197545(eq[11, A066657(n)])`
-/

namespace A197544.P12324974888956425641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197544.P12324974888956425641

/-! ## A197544.P13581133806804968795

`A197545(A167499(n+5)+2)`
-/

namespace A197544.P13581133806804968795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A167499 (n + 5) + 2).toNat

end

end A197544.P13581133806804968795

/-! ## A197544.P5507045677156727480

`A197545(A167614(n+5)+4)`
-/

namespace A197544.P5507045677156727480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A167614 (n + 5) + 4).toNat

end

end A197544.P5507045677156727480

/-! ## A197544.P13478809818610704594

`A197545(A133263(n+6)+5)`
-/

namespace A197544.P13478809818610704594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197545 (A133263 (n + 6) + 5).toNat

end

end A197544.P13478809818610704594

/-!
# A197546: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,1,2,3,4,5,6 for x=0,1,2,3,4,5,6.

The programs for A197546, there is no canonical definition to state claims against.
-/

/-! ## A197546.P1269477767331964844

`record[A114537(2*n+1)-A241470(n+1)]`
-/

namespace A197546.P1269477767331964844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (2 * n + 1) - A241470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197546.P1269477767331964844

/-! ## A197546.P1643750856044239417

`A056239(A002913(n))+A000699(n)`
-/

namespace A197546.P1643750856044239417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A002913 n).toNat + A000699 n

end

end A197546.P1643750856044239417

/-!
# A197547: Rank of quartic elliptic curve y^2 = 5*x^4 - 4*n.

The programs for A197547, there is no canonical definition to state claims against.
-/

/-! ## A197547.P12640999353585994561

`(Δ[A103746(A201077(n+6)+1)]+1)%3`
-/

namespace A197547.P12640999353585994561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103746 (A201077 (n + 6) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) 3

end

end A197547.P12640999353585994561

/-! ## A197547.P12512230978729105400

`val(A033166(n+1), A233583(A156883(n)))`
-/

namespace A197547.P12512230978729105400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033166 (n + 1)).toNat (A233583 (A156883 n).toNat).toNat

end

end A197547.P12512230978729105400

/-! ## A197547.P12040943261187181458

`val(A213949(n+1), A189457(A281123(n)))`
-/

namespace A197547.P12040943261187181458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A213949 (n + 1)).toNat (A189457 (A281123 n).toNat).toNat

end

end A197547.P12040943261187181458

/-! ## A197547.P2585230759613324621

`A319395(A286401(n+1)%A297441(3*n+4))`
-/

namespace A197547.P2585230759613324621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (Int.tmod (A286401 (n + 1)) (A297441 (3 * n + 4))).toNat

end

end A197547.P2585230759613324621

/-! ## A197547.P15902811022025501426

`A052845(A164083(3*n+5)%A016496(n+1))`
-/

namespace A197547.P15902811022025501426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052845 (Int.tmod (A164083 (3 * n + 5)) (A016496 (n + 1))).toNat

end

end A197547.P15902811022025501426

/-!
# A197549: Number of free poly-IH10-tiles (holes allowed) with n cells.

The programs for A197549, there is no canonical definition to state claims against.
-/

/-! ## A197549.P1998592323825338452

`2*A197551(n+1)-A347257(n+1)`
-/

namespace A197549.P1998592323825338452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197551 (n + 1) - A347257 (n + 1)

end

end A197549.P1998592323825338452

/-! ## A197549.P13785831955363520939

`A197551(n+1)+A197552(n+1)-A030225(n+1)`
-/

namespace A197549.P13785831955363520939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197551 (n + 1) + (A197552 (n + 1) - A030225 (n + 1))

end

end A197549.P13785831955363520939

/-! ## A197549.P10374409311583726136

`A197551(n+1)-(2*A197553(n+1)-A001207(n+1)-A197551(n+1))`
-/

namespace A197549.P10374409311583726136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197551 (n + 1) - (2 * A197553 (n + 1) - A001207 (n + 1) - A197551 (n + 1))

end

end A197549.P10374409311583726136

/-! ## A197549.P7426621571067713185

`A004277(A197551(n+1))-A123765(n+1)`
-/

namespace A197549.P7426621571067713185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A197551 (n + 1)).toNat - A123765 (n + 1)

end

end A197549.P7426621571067713185

/-!
# A197550: Number of free poly-IH8-tiles (holes allowed) with n cells.

The programs for A197550, there is no canonical definition to state claims against.
-/

/-! ## A197550.P123865063193924732

`A197959(n+1)+A055641(A002064(n))`
-/

namespace A197550.P123865063193924732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197959 (n + 1) + A055641 (A002064 n).toNat

end

end A197550.P123865063193924732

/-! ## A197550.P11158032079953828802

`A197959(n+1)+A085974(A007051(n))`
-/

namespace A197550.P11158032079953828802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197959 (n + 1) + A085974 (A007051 n).toNat

end

end A197550.P11158032079953828802

/-! ## A197550.P4428207364839083870

`A197959(n+1)+A055641(A041047(n))`
-/

namespace A197550.P4428207364839083870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197959 (n + 1) + A055641 (A041047 n).toNat

end

end A197550.P4428207364839083870

/-! ## A197550.P8252698400482079877

`A259194(n)+A197959(A132576(n+1))`
-/

namespace A197550.P8252698400482079877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259194 n + A197959 (A132576 (n + 1)).toNat

end

end A197550.P8252698400482079877

/-! ## A197550.P5729692927490701909

`A037815(n+1)+A000027(A197959(n+1))`
-/

namespace A197550.P5729692927490701909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1) + A000027 (A197959 (n + 1)).toNat

end

end A197550.P5729692927490701909

/-!
# A197551: Number of free poly-IH18-tiles (holes allowed) with n cells.

The programs for A197551, there is no canonical definition to state claims against.
-/

/-! ## A197551.P11143948586764198787

`(A347257(n+1)+A197549(n+1))/2`
-/

namespace A197551.P11143948586764198787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347257 (n + 1) + A197549 (n + 1) : ℚ) / 2

end

end A197551.P11143948586764198787

/-! ## A197551.P13420492527094341915

`A030225(n+1)+A197549(n+1)-A197552(n+1)`
-/

namespace A197551.P13420492527094341915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A197549 (n + 1) - A197552 (n + 1))

end

end A197551.P13420492527094341915

/-! ## A197551.P14455364093021578386

`A197552(n+1)+A347257(n+1)-A030225(n+1)`
-/

namespace A197551.P14455364093021578386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197552 (n + 1) + (A347257 (n + 1) - A030225 (n + 1))

end

end A197551.P14455364093021578386

/-! ## A197551.P12805085864616674776

`A197552(n+1)+A197553(n+1)-A197554(n+1)`
-/

namespace A197551.P12805085864616674776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197552 (n + 1) + (A197553 (n + 1) - A197554 (n + 1))

end

end A197551.P12805085864616674776

/-!
# A197552: Number of free poly-IH19-tiles (holes allowed) with n cells.

The programs for A197552, there is no canonical definition to state claims against.
-/

/-! ## A197552.P8307551277153440610

`A030225(n+1)+A197549(n+1)-A197551(n+1)`
-/

namespace A197552.P8307551277153440610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A197549 (n + 1) - A197551 (n + 1))

end

end A197552.P8307551277153440610

/-! ## A197552.P2637035727666009484

`A030225(n+1)+A197551(n+1)-A347257(n+1)`
-/

namespace A197552.P2637035727666009484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A197551 (n + 1) - A347257 (n + 1))

end

end A197552.P2637035727666009484

/-! ## A197552.P11814058559318973703

`A197551(n+1)+A197554(n+1)-A197553(n+1)`
-/

namespace A197552.P11814058559318973703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197551 (n + 1) + (A197554 (n + 1) - A197553 (n + 1))

end

end A197552.P11814058559318973703

/-! ## A197552.P5137281826054175158

`A030225(n+1)-(2*A197553(n+1)-A001207(n+1)-A197551(n+1))`
-/

namespace A197552.P5137281826054175158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) - (2 * A197553 (n + 1) - A001207 (n + 1) - A197551 (n + 1))

end

end A197552.P5137281826054175158

/-!
# A197553: Number of free poly-IH12-tiles (holes allowed) with n cells.

The programs for A197553, there is no canonical definition to state claims against.
-/

/-! ## A197553.P12805014804349234362

`(A347257(n+1)+A001207(n+1))/2`
-/

namespace A197553.P12805014804349234362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347257 (n + 1) + A001207 (n + 1) : ℚ) / 2

end

end A197553.P12805014804349234362

/-! ## A197553.P12239996564614103507

`A001207(n+1)+A030225(n+1)-A197554(n+1)`
-/

namespace A197553.P12239996564614103507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (n + 1) + (A030225 (n + 1) - A197554 (n + 1))

end

end A197553.P12239996564614103507

/-! ## A197553.P3702746259677016595

`A197554(n+1)+A347257(n+1)-A030225(n+1)`
-/

namespace A197553.P3702746259677016595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197554 (n + 1) + (A347257 (n + 1) - A030225 (n + 1))

end

end A197553.P3702746259677016595

/-! ## A197553.P13771611605546632730

`A197551(n+1)+A197554(n+1)-A197552(n+1)`
-/

namespace A197553.P13771611605546632730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197551 (n + 1) + (A197554 (n + 1) - A197552 (n + 1))

end

end A197553.P13771611605546632730

/-! ## A197553.P7010710348191954187

`A213950(n+1)-A055641(A002064(n))`
-/

namespace A197553.P7010710348191954187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213950 (n + 1) - A055641 (A002064 n).toNat

end

end A197553.P7010710348191954187

/-!
# A197554: Number of free poly-IH14-tiles (holes allowed) with n cells.

The programs for A197554, there is no canonical definition to state claims against.
-/

/-! ## A197554.P5610328655968614626

`A001207(n+1)+A030225(n+1)-A197553(n+1)`
-/

namespace A197554.P5610328655968614626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (n + 1) + (A030225 (n + 1) - A197553 (n + 1))

end

end A197554.P5610328655968614626

/-! ## A197554.P11322865668710329549

`A030225(n+1)+A197553(n+1)-A347257(n+1)`
-/

namespace A197554.P11322865668710329549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A197553 (n + 1) - A347257 (n + 1))

end

end A197554.P11322865668710329549

/-! ## A197554.P17634404923839651546

`A197552(n+1)+A197553(n+1)-A197551(n+1)`
-/

namespace A197554.P17634404923839651546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197552 (n + 1) + (A197553 (n + 1) - A197551 (n + 1))

end

end A197554.P17634404923839651546

/-!
# A197555: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,2,2 for x=0,1,2,3,4.

The programs for A197555, there is no canonical definition to state claims against.
-/

/-! ## A197555.P15050705900376550592

`A197561(∑[4*n]+1)`
-/

namespace A197555.P15050705900376550592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197555.P15050705900376550592

/-! ## A197555.P1105846558491410378

`record[A197561(Δ[A235355(n)])]`
-/

namespace A197555.P1105846558491410378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197555.P1105846558491410378

/-! ## A197555.P10049188353347741360

`and(-1, A197561(A001844(n)))`
-/

namespace A197555.P10049188353347741360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A197561 (A001844 n).toNat)

end

end A197555.P10049188353347741360

/-! ## A197555.P15592859536187007065

`record[A197561(A272267(n+1))]`
-/

namespace A197555.P15592859536187007065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197555.P15592859536187007065

/-! ## A197555.P8858105634099665290

`record[A197561(A330613(n+1))]`
-/

namespace A197555.P8858105634099665290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197555.P8858105634099665290

/-!
# A197556: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,2 for x=0,1,2,3,4.

The programs for A197556, there is no canonical definition to state claims against.
-/

/-! ## A197556.P8990345298801123136

`A197561(∑[n+2]+4)`
-/

namespace A197556.P8990345298801123136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197556.P8990345298801123136

/-! ## A197556.P6133196545886192769

`A197561(A167614(n+1))%A321002(n)`
-/

namespace A197556.P6133196545886192769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197561 (A167614 (n + 1)).toNat) (A321002 n)

end

end A197556.P6133196545886192769

/-! ## A197556.P14788674559123678771

`A200214(n+1)+A197561(A167614(n+1))`
-/

namespace A197556.P14788674559123678771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (n + 1) + A197561 (A167614 (n + 1)).toNat

end

end A197556.P14788674559123678771

/-! ## A197556.P3985467797504898638

`A285007(n+1)+A197561(A167614(n+1))`
-/

namespace A197556.P3985467797504898638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A197561 (A167614 (n + 1)).toNat

end

end A197556.P3985467797504898638

/-! ## A197556.P7185075757706478220

`A197561(A133263(n+2)+1)+A000038(n+1)`
-/

namespace A197556.P7185075757706478220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A133263 (n + 2) + 1).toNat + A000038 (n + 1)

end

end A197556.P7185075757706478220

/-!
# A197557: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,2 for x=0,1,2,3,4.

The programs for A197557, there is no canonical definition to state claims against.
-/

/-! ## A197557.P13822883546998425451

`A197561(A374004(n+1))`
-/

namespace A197557.P13822883546998425451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A374004 (n + 1)).toNat

end

end A197557.P13822883546998425451

/-! ## A197557.P9080091690076486057

`A197561(A141214(n)+7)`
-/

namespace A197557.P9080091690076486057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A141214 n + 7).toNat

end

end A197557.P9080091690076486057

/-! ## A197557.P17090123212316735996

`A197561(A052905(n)+9)`
-/

namespace A197557.P17090123212316735996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A052905 n + 9).toNat

end

end A197557.P17090123212316735996

/-! ## A197557.P16479696265748072470

`A197561(A055999(n)+10)`
-/

namespace A197557.P16479696265748072470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A055999 n + 10).toNat

end

end A197557.P16479696265748072470

/-! ## A197557.P11643959158296532222

`A197561(A167614(n+2)+1)`
-/

namespace A197557.P11643959158296532222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A167614 (n + 2) + 1).toNat

end

end A197557.P11643959158296532222

/-!
# A197558: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,2 for x=0,1,2,3,4.

The programs for A197558, there is no canonical definition to state claims against.
-/

/-! ## A197558.P14315755281523762311

`A197561(A374005(n+1))`
-/

namespace A197558.P14315755281523762311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A374005 (n + 1)).toNat

end

end A197558.P14315755281523762311

/-! ## A197558.P3894288242449840173

`A197561(A167499(n+3))`
-/

namespace A197558.P3894288242449840173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A167499 (n + 3)).toNat

end

end A197558.P3894288242449840173

/-! ## A197558.P12201337519222156733

`A197561(A155212(n)+13)`
-/

namespace A197558.P12201337519222156733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A155212 n + 13).toNat

end

end A197558.P12201337519222156733

/-! ## A197558.P12125225822649235361

`A197561(A056000(n)+15)`
-/

namespace A197558.P12125225822649235361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A056000 n + 15).toNat

end

end A197558.P12125225822649235361

/-! ## A197558.P1264433763354455788

`A197561(eq[7, A066657(n)])`
-/

namespace A197558.P1264433763354455788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197558.P1264433763354455788

/-!
# A197559: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,2 for x=0,1,2,3,4.

The programs for A197559, there is no canonical definition to state claims against.
-/

/-! ## A197559.P14240979013503696829

`A197561(A374007(n+1))`
-/

namespace A197559.P14240979013503696829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A374007 (n + 1)).toNat

end

end A197559.P14240979013503696829

/-! ## A197559.P7357942834365479180

`A197561(A056115(n)+21)`
-/

namespace A197559.P7357942834365479180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A056115 n + 21).toNat

end

end A197559.P7357942834365479180

/-! ## A197559.P11502485121179835881

`A197561(A246172(n+1)+20)`
-/

namespace A197559.P11502485121179835881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A246172 (n + 1) + 20).toNat

end

end A197559.P11502485121179835881

/-! ## A197559.P15429467264309249143

`A197561(eq[5, A002262(n)]+1)`
-/

namespace A197559.P15429467264309249143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A197559.P15429467264309249143

/-! ## A197559.P74185736107238514

`A197561(eq[7, A131818(n+1)])`
-/

namespace A197559.P74185736107238514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197559.P74185736107238514

/-!
# A197560: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,2 for x=0,1,2,3,4.

The programs for A197560, there is no canonical definition to state claims against.
-/

/-! ## A197560.P10071312050811828263

`A197561(A374008(n+1))`
-/

namespace A197560.P10071312050811828263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A374008 (n + 1)).toNat

end

end A197560.P10071312050811828263

/-! ## A197560.P14064008177756800539

`A197561(A056119(n)+28)`
-/

namespace A197560.P14064008177756800539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A056119 n + 28).toNat

end

end A197560.P14064008177756800539

/-! ## A197560.P13606248771468554554

`A197561(eq[11, A066657(n)])`
-/

namespace A197560.P13606248771468554554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197560.P13606248771468554554

/-! ## A197560.P14003292000763382912

`A197561(A161680(n+7)+7)`
-/

namespace A197560.P14003292000763382912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (A161680 (n + 7) + 7).toNat

end

end A197560.P14003292000763382912

/-! ## A197560.P11279593103652693168

`A197561(eq[6, A002262(n)]+1)`
-/

namespace A197560.P11279593103652693168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A197560.P11279593103652693168

/-!
# A197561: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,2,2 for x=0,1,2,3,4.

The programs for A197561, there is no canonical definition to state claims against.
-/

/-! ## A197561.P1464634903269129326

`A196974(n+1)+A184159(A099594(n))`
-/

namespace A197561.P1464634903269129326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (n + 1) + A184159 (A099594 n).toNat

end

end A197561.P1464634903269129326

/-! ## A197561.P2686319240526587299

`A196974(n+1)+A163510(A157273(n))`
-/

namespace A197561.P2686319240526587299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (n + 1) + A163510 (A157273 n).toNat

end

end A197561.P2686319240526587299

/-! ## A197561.P4328550114139287884

`A196974(n+1)+A178498(A255256(n))`
-/

namespace A197561.P4328550114139287884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (n + 1) + A178498 (A255256 n).toNat

end

end A197561.P4328550114139287884

/-! ## A197561.P5672757376892618275

`A195099(A196974(n+1))`
-/

namespace A197561.P5672757376892618275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (A196974 (n + 1)).toNat

end

end A197561.P5672757376892618275

/-! ## A197561.P3793456576295909713

`A355451(A022175(n))+A196974(n+1)`
-/

namespace A197561.P3793456576295909713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (A022175 n).toNat + A196974 (n + 1)

end

end A197561.P3793456576295909713

/-!
# A197562: Partial sums of A073177 (product of n-th digit of Pi and n-th digit of e).

The programs for A197562, there is no canonical definition to state claims against.
-/

/-! ## A197562.P10950129554263300455

`∑[A073177(n)]`
-/

namespace A197562.P10950129554263300455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P10950129554263300455

/-! ## A197562.P6166519213855924048

`∑[A000796(n)*A001113(n)]`
-/

namespace A197562.P6166519213855924048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P6166519213855924048

/-! ## A197562.P409464756384285153

`∑[(9-A030644(n))*A001113(n)]`
-/

namespace A197562.P409464756384285153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1)) * A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P409464756384285153

/-! ## A197562.P14376128946027703621

`∑[(9-A121239(n))*A000796(n)]`
-/

namespace A197562.P14376128946027703621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A121239 (n + 1)) * A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P14376128946027703621

/-! ## A197562.P12222654969553793600

`∑[A228239(n+1)*A231325(n+1)]`
-/

namespace A197562.P12222654969553793600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1) * A231325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P12222654969553793600

/-! ## A197562.P3462256177847006999

`∑[(A123152(n+1)-1)*A001113(n)]`
-/

namespace A197562.P3462256177847006999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123152 (n + 1) - 1) * A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P3462256177847006999

/-! ## A197562.P16819204209780678519

`∑[(A073212(n)-A000796(n))*A000796(n)]`
-/

namespace A197562.P16819204209780678519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073212 n - A000796 (n + 1)) * A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P16819204209780678519

/-! ## A197562.P10987086550222532160

`∑[(A073212(n)-A001113(n))*A001113(n)]`
-/

namespace A197562.P10987086550222532160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073212 n - A001113 (n + 1)) * A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P10987086550222532160

/-! ## A197562.P7876933269934385371

`∑[A001113(n)*A001355(Δ[n²])]`
-/

namespace A197562.P7876933269934385371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P7876933269934385371

/-! ## A197562.P14832671991915004683

`∑[A000796(n)*A001355(2*(n+1))]`
-/

namespace A197562.P14832671991915004683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A001355 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P14832671991915004683

/-! ## A197562.P9008290045926603014

`∑[A001113(n)*A110766(2*n+1)]`
-/

namespace A197562.P9008290045926603014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A110766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P9008290045926603014

/-! ## A197562.P6147679546904439826

`∑[A001355(2*n+1)*A001355(2*(n+1))]`
-/

namespace A197562.P6147679546904439826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) * A001355 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P6147679546904439826

/-! ## A197562.P11594948031734145291

`∑[Δ[A059582(n)]*A001113(n)]`
-/

namespace A197562.P11594948031734145291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197562.P11594948031734145291

/-!
# A197563: Partial sums of A073212 (n-th digit of Pi plus n-th digit of e).

The programs for A197563, there is no canonical definition to state claims against.
-/

/-! ## A197563.P7470239377947715135

`∑[A073212(n)]`
-/

namespace A197563.P7470239377947715135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P7470239377947715135

/-! ## A197563.P16617377423327684552

`A046975(n)+A046974(n)`
-/

namespace A197563.P16617377423327684552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046975 n + A046974 n

end

end A197563.P16617377423327684552

/-! ## A197563.P9711249246681800713

`∑[A001113(n)+A000796(n)]`
-/

namespace A197563.P9711249246681800713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P9711249246681800713

/-! ## A197563.P10546524439664397684

`∑[A001113(n)+9-A030644(n)]`
-/

namespace A197563.P10546524439664397684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (9 - A030644 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P10546524439664397684

/-! ## A197563.P9044938878798806762

`∑[A231325(n+1)+A228239(n+1)]`
-/

namespace A197563.P9044938878798806762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1) + A228239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P9044938878798806762

/-! ## A197563.P13067649525649013713

`∑[A001355(Δ[n²])+A001113(n)]`
-/

namespace A197563.P13067649525649013713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P13067649525649013713

/-! ## A197563.P13908847265340847311

`∑[A001355(2*(n+1))+A000796(n)]`
-/

namespace A197563.P13908847265340847311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1)) + A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P13908847265340847311

/-! ## A197563.P898774852348424750

`∑[A110766(2*n+1)+A001113(n)]`
-/

namespace A197563.P898774852348424750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) + A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P898774852348424750

/-! ## A197563.P11450617108829751138

`∑[A001355(2*n+1)+A001355(2*(n+1))]`
-/

namespace A197563.P11450617108829751138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) + A001355 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P11450617108829751138

/-! ## A197563.P12827261287462648381

`∑[A001113(n)+Δ[A059582(n)]]`
-/

namespace A197563.P12827261287462648381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197563.P12827261287462648381

/-! ## A197563.P811889191574234127

`∑[A001113(n)]+∑[A011545(n)%10]`
-/

namespace A197563.P811889191574234127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011545 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A197563.P811889191574234127

/-!
# A197564: Number of n X n X n 0..6 triangular arrays with each element equal to the number its zero neighbors.

The programs for A197564, there is no canonical definition to state claims against.
-/

/-! ## A197564.P905629490318488904

`A110565(n+1)+A054899(A346626(n))`
-/

namespace A197564.P905629490318488904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110565 (n + 1) + A054899 (A346626 n).toNat

end

end A197564.P905629490318488904

/-! ## A197564.P7244464771165210913

`A344213(n)+A057729(A201143(n+2))`
-/

namespace A197564.P7244464771165210913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344213 n + A057729 (A201143 (n + 2)).toNat

end

end A197564.P7244464771165210913

/-!
# A197566: Sum of the n-th digit of Pi and the n-th digit of the Golden Ratio.

The programs for A197566, there is no canonical definition to state claims against.
-/

/-! ## A197566.P14348090217816908683

`A001622(n)+A000796(n)`
-/

namespace A197566.P14348090217816908683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + A000796 (n + 1)

end

end A197566.P14348090217816908683

/-! ## A197566.P8156001327291368094

`A001622(n)+Δ[A059582(n)]`
-/

namespace A197566.P8156001327291368094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (f1 (n + 1) - f1 n)

end

end A197566.P8156001327291368094

/-! ## A197566.P9273582008614803457

`A001622(n)+A001355(Δ[n²])`
-/

namespace A197566.P9273582008614803457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A197566.P9273582008614803457

/-! ## A197566.P13167618467406383068

`A001355(2*n+1)+A001622(n)`
-/

namespace A197566.P13167618467406383068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) + A001622 (n + 1)

end

end A197566.P13167618467406383068

/-! ## A197566.P15717696149568103777

`A076790(2*n+1)+A001622(n)`
-/

namespace A197566.P15717696149568103777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1) + A001622 (n + 1)

end

end A197566.P15717696149568103777

/-! ## A197566.P10645908981534191802

`A110766(2*n+1)+A001622(n)`
-/

namespace A197566.P10645908981534191802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) + A001622 (n + 1)

end

end A197566.P10645908981534191802

/-! ## A197566.P15148864840646658778

`A382130(2*n+1)+A000796(n)`
-/

namespace A197566.P15148864840646658778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (2 * n + 1) + A000796 (n + 1)

end

end A197566.P15148864840646658778

/-! ## A197566.P7393538000776528260

`A382130(2*n+1)+A110766(2*n+1)`
-/

namespace A197566.P7393538000776528260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (2 * n + 1) + A110766 (2 * n + 1)

end

end A197566.P7393538000776528260

/-! ## A197566.P6607773927018002797

`A010879(A065253(n+1))+A001622(n)`
-/

namespace A197566.P6607773927018002797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat + A001622 (n + 1)

end

end A197566.P6607773927018002797

/-! ## A197566.P12374592104563358233

`A048766(A261197(n+1))+A001622(n)`
-/

namespace A197566.P12374592104563358233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A261197 (n + 1)).toNat + A001622 (n + 1)

end

end A197566.P12374592104563358233

/-! ## A197566.P4999863073422161816

`A001113(n)+A187747(n)+A001622(n)`
-/

namespace A197566.P4999863073422161816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (A187747 n + A001622 (n + 1))

end

end A197566.P4999863073422161816

/-! ## A197566.P15762476242706095459

`(A001622(n)+A001355(A005408(n)))/A054977(n+1)`
-/

namespace A197566.P15762476242706095459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001622 (n + 1) + A001355 (A005408 n).toNat : ℚ) / (A054977 (n + 1) : ℚ)

end

end A197566.P15762476242706095459

/-! ## A197566.P17971842632559176050

`A098369(∑[n])+A000796(n)`
-/

namespace A197566.P17971842632559176050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f1 j) + A000796 (n + 1)

end

end A197566.P17971842632559176050

/-! ## A197566.P5115468443292260139

`A110766(2*n+1)+A098369(∑[n])`
-/

namespace A197566.P5115468443292260139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) + A098369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197566.P5115468443292260139

/-!
# A197567: Partial sums of A197566 (sum of n-th digit of Pi and n-th digit of the Golden Ratio).

The programs for A197567, there is no canonical definition to state claims against.
-/

/-! ## A197567.P17279783694756132069

`∑[A197566(n)]`
-/

namespace A197567.P17279783694756132069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197567.P17279783694756132069

/-! ## A197567.P3797146421728406100

`A093083(n)+A046974(n)`
-/

namespace A197567.P3797146421728406100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093083 n + A046974 n

end

end A197567.P3797146421728406100

/-! ## A197567.P17937651081483076615

`∑[A001622(n)+A000796(n)]`
-/

namespace A197567.P17937651081483076615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197567.P17937651081483076615

/-! ## A197567.P9804591060408664685

`A046974(n)+∑[A001622(n)]`
-/

namespace A197567.P9804591060408664685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197567.P9804591060408664685

/-! ## A197567.P12717887898426484242

`∑[A001622(n)+Δ[A059582(n)]]`
-/

namespace A197567.P12717887898426484242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197567.P12717887898426484242

/-! ## A197567.P6477299869382647986

`∑[A104457(n)+A000796(n)]-1`
-/

namespace A197567.P6477299869382647986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A197567.P6477299869382647986

/-! ## A197567.P4723160098320798286

`∑[A001622(n)+A001355(2*n+1)]`
-/

namespace A197567.P4723160098320798286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + A001355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197567.P4723160098320798286

/-! ## A197567.P16933285451017494186

`∑[A110766(2*n+1)+A001622(n)]`
-/

namespace A197567.P16933285451017494186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) + A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197567.P16933285451017494186

/-! ## A197567.P11878519666470400164

`∑[A048766(A261197(n+1))+A001622(n)]`
-/

namespace A197567.P11878519666470400164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A261197 (n + 1)).toNat + A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197567.P11878519666470400164

/-! ## A197567.P8290977450929213663

`∑[A098369(∑[n])+A000796(n)]`
-/

namespace A197567.P8290977450929213663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f2 j) + A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197567.P8290977450929213663

/-! ## A197567.P10489464956919040399

`A233583(∑[A104457(n)+A000796(n)])`
-/

namespace A197567.P10489464956919040399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A197567.P10489464956919040399

/-!
# A197568: Product of n-th digit of Pi and n-th digit of the Golden Ratio.

The programs for A197568, there is no canonical definition to state claims against.
-/

/-! ## A197568.P115099165097255074

`A000796(n)*A001622(n)`
-/

namespace A197568.P115099165097255074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A001622 (n + 1)

end

end A197568.P115099165097255074

/-! ## A197568.P17577608516238433453

`Δ[A059582(n)]*A001622(n)`
-/

namespace A197568.P17577608516238433453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001622 (n + 1)

end

end A197568.P17577608516238433453

/-! ## A197568.P3401263312553085476

`A001355(Δ[n²])*A001622(n)`
-/

namespace A197568.P3401263312553085476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A001622 (n + 1)

end

end A197568.P3401263312553085476

/-! ## A197568.P3202926607560831449

`A001622(n)*A076790(2*n+1)`
-/

namespace A197568.P3202926607560831449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A076790 (2 * n + 1)

end

end A197568.P3202926607560831449

/-! ## A197568.P3804415905129220893

`A001622(n)*A110766(2*n+1)`
-/

namespace A197568.P3804415905129220893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A110766 (2 * n + 1)

end

end A197568.P3804415905129220893

/-! ## A197568.P17457913853090690334

`A000796(n)*A382130(2*n+1)`
-/

namespace A197568.P17457913853090690334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A382130 (2 * n + 1)

end

end A197568.P17457913853090690334

/-! ## A197568.P6893015384254192463

`dr(A001355(2*n+1))*A001622(n)`
-/

namespace A197568.P6893015384254192463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A001355 (2 * n + 1)) : ℤ) * A001622 (n + 1)

end

end A197568.P6893015384254192463

/-! ## A197568.P5003427797462846053

`A110766(2*n+1)*A382130(2*n+1)`
-/

namespace A197568.P5003427797462846053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) * A382130 (2 * n + 1)

end

end A197568.P5003427797462846053

/-! ## A197568.P12233056964049725450

`A001622(n)*A010879(A065253(n+1))`
-/

namespace A197568.P12233056964049725450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A010879 (A065253 (n + 1)).toNat

end

end A197568.P12233056964049725450

/-! ## A197568.P12386450140505577888

`A001622(n)*A048766(A261197(n+1))`
-/

namespace A197568.P12386450140505577888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A048766 (A261197 (n + 1)).toNat

end

end A197568.P12386450140505577888

/-! ## A197568.P6005369348528445638

`(A187747(n)+A001113(n))*A001622(n)`
-/

namespace A197568.P6005369348528445638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187747 n + A001113 (n + 1)) * A001622 (n + 1)

end

end A197568.P6005369348528445638

/-! ## A197568.P14777973025472897134

`A001622(n)*A123152(n+1)-A001622(n)`
-/

namespace A197568.P14777973025472897134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A123152 (n + 1) - A001622 (n + 1)

end

end A197568.P14777973025472897134

/-! ## A197568.P1898275879553848514

`A000796(n)*A098369(∑[n])`
-/

namespace A197568.P1898275879553848514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A098369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197568.P1898275879553848514

/-! ## A197568.P6641552404582673016

`A098369(∑[n])*A110766(2*n+1)`
-/

namespace A197568.P6641552404582673016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f1 j) * A110766 (2 * n + 1)

end

end A197568.P6641552404582673016

/-!
# A197569: Partial sums of A197568 (product of n-th digit of Pi and n-th digit of the Golden Ratio).

The programs for A197569, there is no canonical definition to state claims against.
-/

/-! ## A197569.P10500678313757699859

`∑[A197568(n)]`
-/

namespace A197569.P10500678313757699859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197569.P10500678313757699859

/-! ## A197569.P7713257952008121711

`∑[A000796(n)*A001622(n)]`
-/

namespace A197569.P7713257952008121711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197569.P7713257952008121711

/-! ## A197569.P2986826838393484333

`∑[Δ[A059582(n)]*A001622(n)]`
-/

namespace A197569.P2986826838393484333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197569.P2986826838393484333

/-! ## A197569.P3285001248986396395

`∑[A001355(2*n+1)*A001622(n)]`
-/

namespace A197569.P3285001248986396395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) * A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197569.P3285001248986396395

/-! ## A197569.P12479659054437196648

`∑[A001622(n)*A110766(2*n+1)]`
-/

namespace A197569.P12479659054437196648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A110766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197569.P12479659054437196648

/-! ## A197569.P1365802197131103428

`∑[A001622(n)*A048766(A261197(n+1))]`
-/

namespace A197569.P1365802197131103428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A048766 (A261197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197569.P1365802197131103428

/-! ## A197569.P12628199251106730088

`∑[A000796(n)*A098369(∑[n])]`
-/

namespace A197569.P12628199251106730088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A098369 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197569.P12628199251106730088

/-!
# A197570: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,5,5,0,0,4,3 for x=0,1,2,3,4,5,6.

The programs for A197570, there is no canonical definition to state claims against.
-/

/-! ## A197570.P3539169564550513313

`A121828((10^n+8)/9)+∑[∑{e}[n, #]]`
-/

namespace A197570.P3539169564550513313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (SequenceMachineLib.roundAway ((10 ^ n + 8 : ℚ) / 9)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A197570.P3539169564550513313

/-!
# A197593: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,6,4,6,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A197593, there is no canonical definition to state claims against.
-/

/-! ## A197593.P14977109143150129142

`A298100(A290351(n))+A290352(n)`
-/

namespace A197593.P14977109143150129142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A290351 n).toNat + A290352 n

end

end A197593.P14977109143150129142

/-!
# A197594: Sum of the cubes of the first odd numbers up to a(n) equals the n-th perfect number.

The programs for A197594, there is no canonical definition to state claims against.
-/

/-! ## A197594.P1297782360257490850

`2^A138576(n+1)-1`
-/

namespace A197594.P1297782360257490850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A138576 (n + 1) : ℤ) - 1

end

end A197594.P1297782360257490850

/-! ## A197594.P16519034047827552013

`2^((A000043(n+2)+1)/2)-1`
-/

namespace A197594.P16519034047827552013
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A000043 (n + 2) + 1 : ℚ) / 2 : ℝ) - 1

end

end A197594.P16519034047827552013

/-! ## A197594.P18038551457828575240

`sqrt(2*(A000668(n+2)+1))-1`
-/

namespace A197594.P18038551457828575240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (A000668 (n + 2) + 1) : ℝ) - 1

end

end A197594.P18038551457828575240

/-! ## A197594.P10809922233034106250

`sqrt(1+sqrt(8*A000396(n+2)+1))-1`
-/

namespace A197594.P10809922233034106250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 + Real.sqrt (8 * A000396 (n + 2) + 1 : ℝ)) - 1

end

end A197594.P10809922233034106250

/-! ## A197594.P6591901905081065267

`2*A065549(n+2)-1`
-/

namespace A197594.P6591901905081065267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065549 (n + 2) - 1

end

end A197594.P6591901905081065267

/-!
# A197595: Floor((6n+1/n)^n).

The programs for A197595, there is no canonical definition to state claims against.
-/

/-! ## A197595.P5351859589661628387

`A197766(n+1)-n²%(n+1)`
-/

namespace A197595.P5351859589661628387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197766 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197595.P5351859589661628387

/-! ## A197595.P18313621300376062994

`A197766(n+1)+A057428(n)`
-/

namespace A197595.P18313621300376062994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197766 (n + 1) + A057428 n

end

end A197595.P18313621300376062994

/-! ## A197595.P12626728794186542390

`A197766(n+1)-A057427(n)`
-/

namespace A197595.P12626728794186542390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197766 (n + 1) - A057427 n

end

end A197595.P12626728794186542390

/-! ## A197595.P3479830031266726583

`A197766(n+1)-A178334(n)`
-/

namespace A197595.P3479830031266726583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197766 (n + 1) - A178334 n

end

end A197595.P3479830031266726583

/-! ## A197595.P7990067409024726063

`A197766(n+1)-abs(A011590(n))`
-/

namespace A197595.P7990067409024726063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197766 (n + 1) - |A011590 n|

end

end A197595.P7990067409024726063

/-!
# A197596: a(n) = Floor((7n+1/n)^n).

The programs for A197596, the canonical program `A197596.P13465623577577287123` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197596 has offset 1).

The definition of A197596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((7*(n+1)+1/(n+1))^(n+1))` (program `A197596.P13465623577577287123`, by `A197596.P13465623577577287123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197596.P13465623577577287123

`floor((7*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197596

/-- `floor((7*(n+1)+1/(n+1))^(n+1))` -/
def P13465623577577287123.Spec : Prop :=
  ∀ n, P13465623577577287123.a n = A197596 (n + 1)

theorem P13465623577577287123.correct : P13465623577577287123.Spec := by
  intro n
  simp only [A197596, Nat.add_sub_cancel]

end A197596

/-! ## A197596.P9071087805212134359

`A197767(n+1)-n²%(n+1)`
-/

namespace A197596.P9071087805212134359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197767 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197596.P9071087805212134359

namespace A197596

/-- `A197767(n+1)-n²%(n+1)` -/
def P9071087805212134359.Spec : Prop :=
  ∀ n, P9071087805212134359.a n = A197596 (n + 1)

end A197596

/-! ## A197596.P6027420892504800227

`A197767(n+1)+A057428(n)`
-/

namespace A197596.P6027420892504800227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197767 (n + 1) + A057428 n

end

end A197596.P6027420892504800227

namespace A197596

/-- `A197767(n+1)+A057428(n)` -/
def P6027420892504800227.Spec : Prop :=
  ∀ n, P6027420892504800227.a n = A197596 (n + 1)

end A197596

/-! ## A197596.P17549141249042264206

`A197767(n+1)-A057427(n)`
-/

namespace A197596.P17549141249042264206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197767 (n + 1) - A057427 n

end

end A197596.P17549141249042264206

namespace A197596

/-- `A197767(n+1)-A057427(n)` -/
def P17549141249042264206.Spec : Prop :=
  ∀ n, P17549141249042264206.a n = A197596 (n + 1)

end A197596

/-! ## A197596.P17382227583622038688

`A197767(n+1)-A178334(n)`
-/

namespace A197596.P17382227583622038688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197767 (n + 1) - A178334 n

end

end A197596.P17382227583622038688

namespace A197596

/-- `A197767(n+1)-A178334(n)` -/
def P17382227583622038688.Spec : Prop :=
  ∀ n, P17382227583622038688.a n = A197596 (n + 1)

end A197596

/-!
# A197597: Floor((8n+1/n)^n).

The programs for A197597, the canonical program `A197597.P3518355192494855765` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197597 has offset 1).

The definition of A197597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((8*(n+1)+1/(n+1))^(n+1))` (program `A197597.P3518355192494855765`, by `A197597.P3518355192494855765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197597.P3518355192494855765

`floor((8*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197597

/-- `floor((8*(n+1)+1/(n+1))^(n+1))` -/
def P3518355192494855765.Spec : Prop :=
  ∀ n, P3518355192494855765.a n = A197597 (n + 1)

theorem P3518355192494855765.correct : P3518355192494855765.Spec := by
  intro n
  simp only [A197597, Nat.add_sub_cancel]

end A197597

/-! ## A197597.P9644258673954565180

`A197768(n+1)-n²%(n+1)`
-/

namespace A197597.P9644258673954565180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197768 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197597.P9644258673954565180

namespace A197597

/-- `A197768(n+1)-n²%(n+1)` -/
def P9644258673954565180.Spec : Prop :=
  ∀ n, P9644258673954565180.a n = A197597 (n + 1)

end A197597

/-! ## A197597.P2316320379164276894

`A197768(n+1)-A057427(n)`
-/

namespace A197597.P2316320379164276894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197768 (n + 1) - A057427 n

end

end A197597.P2316320379164276894

namespace A197597

/-- `A197768(n+1)-A057427(n)` -/
def P2316320379164276894.Spec : Prop :=
  ∀ n, P2316320379164276894.a n = A197597 (n + 1)

end A197597

/-! ## A197597.P15466813286829606980

`A197768(n+1)-char[A344180(n)]`
-/

namespace A197597.P15466813286829606980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197768 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197597.P15466813286829606980

namespace A197597

/-- `A197768(n+1)-char[A344180(n)]` -/
def P15466813286829606980.Spec : Prop :=
  ∀ n, P15466813286829606980.a n = A197597 (n + 1)

end A197597

/-! ## A197597.P3891708320470316530

`A197768(n+1)-log2(A036453(n+1))`
-/

namespace A197597.P3891708320470316530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197768 (n + 1) : ℝ) - Real.logb 2 (A036453 (n + 1) : ℝ)

end

end A197597.P3891708320470316530

namespace A197597

/-- `A197768(n+1)-log2(A036453(n+1))` -/
def P3891708320470316530.Spec : Prop :=
  ∀ n, P3891708320470316530.a n = (A197597 (n + 1) : ℝ)

end A197597

/-!
# A197598: Floor((9n+1/n)^n).

The programs for A197598, the canonical program `A197598.P14859663712501341182` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197598 has offset 1).

The definition of A197598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((9*(n+1)+1/(n+1))^(n+1))` (program `A197598.P14859663712501341182`, by `A197598.P14859663712501341182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197598.P14859663712501341182

`floor((9*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197598

/-- `floor((9*(n+1)+1/(n+1))^(n+1))` -/
def P14859663712501341182.Spec : Prop :=
  ∀ n, P14859663712501341182.a n = A197598 (n + 1)

theorem P14859663712501341182.correct : P14859663712501341182.Spec := by
  intro n
  simp only [A197598, Nat.add_sub_cancel]

end A197598

/-! ## A197598.P17499591407258872297

`A197769(n+1)-n²%(n+1)`
-/

namespace A197598.P17499591407258872297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197769 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197598.P17499591407258872297

namespace A197598

/-- `A197769(n+1)-n²%(n+1)` -/
def P17499591407258872297.Spec : Prop :=
  ∀ n, P17499591407258872297.a n = A197598 (n + 1)

end A197598

/-! ## A197598.P4619724140931942912

`A197769(n+1)+A057428(n)`
-/

namespace A197598.P4619724140931942912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197769 (n + 1) + A057428 n

end

end A197598.P4619724140931942912

namespace A197598

/-- `A197769(n+1)+A057428(n)` -/
def P4619724140931942912.Spec : Prop :=
  ∀ n, P4619724140931942912.a n = A197598 (n + 1)

end A197598

/-! ## A197598.P8573562189613368140

`A197769(n+1)-log2(A036453(n+1))`
-/

namespace A197598.P8573562189613368140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197769 (n + 1) : ℝ) - Real.logb 2 (A036453 (n + 1) : ℝ)

end

end A197598.P8573562189613368140

namespace A197598

/-- `A197769(n+1)-log2(A036453(n+1))` -/
def P8573562189613368140.Spec : Prop :=
  ∀ n, P8573562189613368140.a n = (A197598 (n + 1) : ℝ)

end A197598

/-!
# A197599: Floor((10n+1/n)^n).

The programs for A197599, the canonical program `A197599.P11287781586585469061` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197599 has offset 1).

The definition of A197599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((10*(n+1)+1/(n+1))^(n+1))` (program `A197599.P11287781586585469061`, by `A197599.P11287781586585469061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197599.P11287781586585469061

`floor((10*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197599

/-- `floor((10*(n+1)+1/(n+1))^(n+1))` -/
def P11287781586585469061.Spec : Prop :=
  ∀ n, P11287781586585469061.a n = A197599 (n + 1)

theorem P11287781586585469061.correct : P11287781586585469061.Spec := by
  intro n
  simp only [A197599, Nat.add_sub_cancel]

end A197599

/-! ## A197599.P6000841474119262606

`A197770(n+1)-n²%(n+1)`
-/

namespace A197599.P6000841474119262606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197770 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197599.P6000841474119262606

namespace A197599

/-- `A197770(n+1)-n²%(n+1)` -/
def P6000841474119262606.Spec : Prop :=
  ∀ n, P6000841474119262606.a n = A197599 (n + 1)

end A197599

/-! ## A197599.P12227016292499426136

`A197770(n+1)-char[A094587(n)]`
-/

namespace A197599.P12227016292499426136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197770 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197599.P12227016292499426136

namespace A197599

/-- `A197770(n+1)-char[A094587(n)]` -/
def P12227016292499426136.Spec : Prop :=
  ∀ n, P12227016292499426136.a n = A197599 (n + 1)

end A197599

/-! ## A197599.P5414918783223368296

`A197770(n+1)-char[A287091(n)]`
-/

namespace A197599.P5414918783223368296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197770 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197599.P5414918783223368296

namespace A197599

/-- `A197770(n+1)-char[A287091(n)]` -/
def P5414918783223368296.Spec : Prop :=
  ∀ n, P5414918783223368296.a n = A197599 (n + 1)

end A197599

/-! ## A197599.P15380542522314451269

`A197770(n+1)-char[A197756(n+1)]`
-/

namespace A197599.P15380542522314451269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197756 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197770 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197599.P15380542522314451269

namespace A197599

/-- `A197770(n+1)-char[A197756(n+1)]` -/
def P15380542522314451269.Spec : Prop :=
  ∀ n, P15380542522314451269.a n = A197599 (n + 1)

end A197599

