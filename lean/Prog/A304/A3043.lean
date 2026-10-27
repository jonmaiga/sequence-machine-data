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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A304300: Number of nX6 0..1 arrays with every element unequal to 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304300, there is no canonical definition to state claims against.
-/

/-! ## A304300.P16835340278234916552

`A304302(A374007(n+1))`
-/

namespace A304300.P16835340278234916552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A374007 (n + 1)).toNat

end

end A304300.P16835340278234916552

/-! ## A304300.P8762891664683930752

`A304302(A000124(n+5)+5)`
-/

namespace A304300.P8762891664683930752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A000124 (n + 5) + 5).toNat

end

end A304300.P8762891664683930752

/-! ## A304300.P10514594548936749300

`A304302(A052905(n+2)+11)`
-/

namespace A304300.P10514594548936749300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A052905 (n + 2) + 11).toNat

end

end A304300.P10514594548936749300

/-! ## A304300.P2797980256065077163

`A304302(A167499(n+6)-A005843(n+6))`
-/

namespace A304300.P2797980256065077163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A167499 (n + 6) - A005843 (n + 6)).toNat

end

end A304300.P2797980256065077163

/-! ## A304300.P15377414024359589924

`A304302(A052905(n+3))`
-/

namespace A304300.P15377414024359589924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A052905 (n + 3)).toNat

end

end A304300.P15377414024359589924

/-!
# A304301: Number of nX7 0..1 arrays with every element unequal to 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304301, there is no canonical definition to state claims against.
-/

/-! ## A304301.P4517509090183303517

`A304302(A374008(n+1))`
-/

namespace A304301.P4517509090183303517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A374008 (n + 1)).toNat

end

end A304301.P4517509090183303517

/-! ## A304301.P14657532841373163939

`A304302(A167499(n+5)+2)`
-/

namespace A304301.P14657532841373163939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A167499 (n + 5) + 2).toNat

end

end A304301.P14657532841373163939

/-! ## A304301.P3687162932383787091

`A304302(A000124(n+6)+6)`
-/

namespace A304301.P3687162932383787091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A000124 (n + 6) + 6).toNat

end

end A304301.P3687162932383787091

/-! ## A304301.P16267260144232981713

`A304302(A055998(n+4)+10)`
-/

namespace A304301.P16267260144232981713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A055998 (n + 4) + 10).toNat

end

end A304301.P16267260144232981713

/-! ## A304301.P4752066974144659545

`A304302(A046691(n+5)-2)`
-/

namespace A304301.P4752066974144659545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A046691 (n + 5) - 2).toNat

end

end A304301.P4752066974144659545

/-!
# A304302: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304302, there is no canonical definition to state claims against.
-/

/-! ## A304302.P17695904186132402150

`A305182(n+1)-A165656(A126770(n))`
-/

namespace A304302.P17695904186132402150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (n + 1) - A165656 (A126770 n).toNat

end

end A304302.P17695904186132402150

/-! ## A304302.P16135962063959131131

`A305182(n+1)-A151755(A176420(n))`
-/

namespace A304302.P16135962063959131131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (n + 1) - A151755 (A176420 n).toNat

end

end A304302.P16135962063959131131

/-! ## A304302.P13678681919481784420

`A305516(n+1)-A174875(A157177(n))`
-/

namespace A304302.P13678681919481784420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (n + 1) - A174875 (A157177 n).toNat

end

end A304302.P13678681919481784420

/-! ## A304302.P12037556668953105157

`A305516(n+1)-A174875(A168288(n))`
-/

namespace A304302.P12037556668953105157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (n + 1) - A174875 (A168288 n).toNat

end

end A304302.P12037556668953105157

/-! ## A304302.P10631252057494823498

`A305182(n+1)%A306289(A225466(n))`
-/

namespace A304302.P10631252057494823498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305182 (n + 1)) (A306289 (A225466 n).toNat)

end

end A304302.P10631252057494823498

/-!
# A304303: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304303, there is no canonical definition to state claims against.
-/

/-! ## A304303.P3942808987574320574

`A304310(∑[4*n]+1)`
-/

namespace A304303.P3942808987574320574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304303.P3942808987574320574

/-! ## A304303.P12366176921475981432

`record[A304310(Δ[A235355(n)])]`
-/

namespace A304303.P12366176921475981432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304303.P12366176921475981432

/-! ## A304303.P942014024137816059

`record[A304310(A330613(n+1))]`
-/

namespace A304303.P942014024137816059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304303.P942014024137816059

/-! ## A304303.P7360675886366600233

`A304310(A001844(n))+char[9]`
-/

namespace A304303.P7360675886366600233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304303.P7360675886366600233

/-! ## A304303.P12056862526763368320

`record[A003982(n)*A304310(n+1)]`
-/

namespace A304303.P12056862526763368320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304303.P12056862526763368320

/-!
# A304304: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304304, the canonical program `A304304.P5666935085493427413` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304304 has offset 1).

The definition of A304304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304304.P5666935085493427413

`3*a(n-1)+3*a(n-2)-6*a(n-3)-8*a(n-4)` with `a(0)=2, a(1)=8, a(2)=23, a(3)=65, a(4)=192`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304304

/-- `3*a(n-1)+3*a(n-2)-6*a(n-3)-8*a(n-4)` -/
def P5666935085493427413.Spec : Prop :=
  ∀ n, P5666935085493427413.a n = A304304 (n + 1)

theorem P5666935085493427413.correct : P5666935085493427413.Spec := by
  intro n
  simp only [A304304, Nat.add_sub_cancel]

end A304304

/-! ## A304304.P11712417765076149753

`A304310(∑[n+1]+2)`
-/

namespace A304304.P11712417765076149753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304304.P11712417765076149753

namespace A304304

/-- `A304310(∑[n+1]+2)` -/
def P11712417765076149753.Spec : Prop :=
  ∀ n, P11712417765076149753.a n = A304304 (n + 1)

end A304304

/-! ## A304304.P16199948528131835465

`A305593(∑[n+1]+2)`
-/

namespace A304304.P16199948528131835465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304304.P16199948528131835465

namespace A304304

/-- `A305593(∑[n+1]+2)` -/
def P16199948528131835465.Spec : Prop :=
  ∀ n, P16199948528131835465.a n = A304304 (n + 1)

end A304304

/-! ## A304304.P18166871102816133156

`A305776(∑[n+1]+2)`
-/

namespace A304304.P18166871102816133156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304304.P18166871102816133156

namespace A304304

/-- `A305776(∑[n+1]+2)` -/
def P18166871102816133156.Spec : Prop :=
  ∀ n, P18166871102816133156.a n = A304304 (n + 1)

end A304304

/-! ## A304304.P4711914846292405728

`A316209(∑[n+1]+2)`
-/

namespace A304304.P4711914846292405728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304304.P4711914846292405728

namespace A304304

/-- `A316209(∑[n+1]+2)` -/
def P4711914846292405728.Spec : Prop :=
  ∀ n, P4711914846292405728.a n = A304304 (n + 1)

end A304304

/-!
# A304305: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304305, there is no canonical definition to state claims against.
-/

/-! ## A304305.P8521629937969424999

`A304310(∑[n+2]+4)`
-/

namespace A304305.P8521629937969424999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304305.P8521629937969424999

/-! ## A304305.P2903220124208032913

`A304310(A167614(n+1))+char[18]`
-/

namespace A304305.P2903220124208032913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304305.P2903220124208032913

/-! ## A304305.P3742251239213918984

`A304310(A046691(n)+7)+char[18]`
-/

namespace A304305.P3742251239213918984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304305.P3742251239213918984

/-! ## A304305.P15313408869234229520

`record[A132013(n)*A304310(n+4)]`
-/

namespace A304305.P15313408869234229520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A304310 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304305.P15313408869234229520

/-! ## A304305.P11899763703822967450

`gcd(A178798(n), A304310(A167614(n+1)))`
-/

namespace A304305.P11899763703822967450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178798 n) (A304310 (A167614 (n + 1)).toNat)

end

end A304305.P11899763703822967450

/-!
# A304306: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304306, there is no canonical definition to state claims against.
-/

/-! ## A304306.P15350732567682888376

`A304310(∑[n+3]+7)`
-/

namespace A304306.P15350732567682888376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304306.P15350732567682888376

/-! ## A304306.P15787582745441417484

`A304310(A052905(n)+9)+char[16]`
-/

namespace A304306.P15787582745441417484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304306.P15787582745441417484

/-! ## A304306.P16899261155011824514

`A285373(2*n+3)*A304310(A055999(n)+10)`
-/

namespace A304306.P16899261155011824514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (2 * n + 3) * A304310 (A055999 n + 10).toNat

end

end A304306.P16899261155011824514

/-! ## A304306.P15221213584657067364

`A014963(6*(n+1))*A304310(A052905(n)+9)`
-/

namespace A304306.P15221213584657067364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A304310 (A052905 n + 9).toNat

end

end A304306.P15221213584657067364

/-! ## A304306.P15428678143155932413

`A304310(A055999(n)+10)%A177006(3*(n+1))`
-/

namespace A304306.P15428678143155932413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304310 (A055999 n + 10).toNat) (A177006 (3 * (n + 1)))

end

end A304306.P15428678143155932413

/-!
# A304307: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304307, there is no canonical definition to state claims against.
-/

/-! ## A304307.P3054768107475956155

`A304310(∑[n+4]+11)`
-/

namespace A304307.P3054768107475956155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304307.P3054768107475956155

/-! ## A304307.P12493211711866848457

`A304310(A056000(n)+15)+char[17]`
-/

namespace A304307.P12493211711866848457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304307.P12493211711866848457

/-! ## A304307.P14599263150201268655

`A304310(A133263(n+4)+3)+char[15]`
-/

namespace A304307.P14599263150201268655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A133263 (n + 4) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304307.P14599263150201268655

/-! ## A304307.P16798304458232973213

`A007318(C(n, 2))*A304310(A056000(n)+15)`
-/

namespace A304307.P16798304458232973213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A304310 (A056000 n + 15).toNat

end

end A304307.P16798304458232973213

/-! ## A304307.P18369646543686485197

`A304310(A056000(n)+15)%A000108(n+11)`
-/

namespace A304307.P18369646543686485197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304310 (A056000 n + 15).toNat) (A000108 (n + 11))

end

end A304307.P18369646543686485197

/-!
# A304308: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304308, there is no canonical definition to state claims against.
-/

/-! ## A304308.P13594692720452379614

`A304310(∑[n+5]+16)`
-/

namespace A304308.P13594692720452379614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304308.P13594692720452379614

/-! ## A304308.P201504472730940051

`A304310(A374007(n+1))+A059841(2*n+3)`
-/

namespace A304308.P201504472730940051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A374007 (n + 1)).toNat + A059841 (2 * n + 3)

end

end A304308.P201504472730940051

/-!
# A304309: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304309, there is no canonical definition to state claims against.
-/

/-! ## A304309.P5425271129540832266

`A304310(A374008(n+1))`
-/

namespace A304309.P5425271129540832266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A374008 (n + 1)).toNat

end

end A304309.P5425271129540832266

/-! ## A304309.P16546936375360902042

`A304310(A167487(n+5))`
-/

namespace A304309.P16546936375360902042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A167487 (n + 5)).toNat

end

end A304309.P16546936375360902042

/-! ## A304309.P1134813872244800915

`A304310(A056119(n)+28)`
-/

namespace A304309.P1134813872244800915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A056119 n + 28).toNat

end

end A304309.P1134813872244800915

/-! ## A304309.P13095663885037057209

`A304310(eq[11, A066657(n)])`
-/

namespace A304309.P13095663885037057209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304309.P13095663885037057209

/-! ## A304309.P2327400603467657178

`A304310(A155212(n+2)+15)`
-/

namespace A304309.P2327400603467657178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (A155212 (n + 2) + 15).toNat

end

end A304309.P2327400603467657178

/-!
# A304310: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304310, there is no canonical definition to state claims against.
-/

/-! ## A304310.P2076125932600803728

`A316209(n+1)-A010894(A003401(n+1))`
-/

namespace A304310.P2076125932600803728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A304310.P2076125932600803728

/-! ## A304310.P15166908107298467681

`A316209(n+1)+A016389(A022166(n))`
-/

namespace A304310.P15166908107298467681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (n + 1) + A016389 (A022166 n).toNat

end

end A304310.P15166908107298467681

/-! ## A304310.P17314878417197595027

`A316209(n+1)+A016389(A027336(n))`
-/

namespace A304310.P17314878417197595027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (n + 1) + A016389 (A027336 n).toNat

end

end A304310.P17314878417197595027

/-! ## A304310.P14954696708441951099

`A316209(n+1)+A178798(A008459(n))`
-/

namespace A304310.P14954696708441951099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (n + 1) + A178798 (A008459 n).toNat

end

end A304310.P14954696708441951099

/-! ## A304310.P12038601833467127429

`A316209(n+1)-A011731(A022171(n))`
-/

namespace A304310.P12038601833467127429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (n + 1) - A011731 (A022171 n).toNat

end

end A304310.P12038601833467127429

/-!
# A304312: Logarithmic derivative of F(x) that satisfies: [x^n] exp( n^2 * x ) / F(x) = 0 for n>0.

The programs for A304312, there is no canonical definition to state claims against.
-/

/-! ## A304312.P8366367932380842291

`A006691(A028310(n))^A178334(n)`
-/

namespace A304312.P8366367932380842291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006691 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A304312.P8366367932380842291

/-! ## A304312.P4562588099876621414

`A006691(A028310(n))^A178489(n)`
-/

namespace A304312.P4562588099876621414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006691 (A028310 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A304312.P4562588099876621414

/-! ## A304312.P15160513256033324047

`A006691(A028310(n))%A304317(n)`
-/

namespace A304312.P15160513256033324047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006691 (A028310 n).toNat) (A304317 n)

end

end A304312.P15160513256033324047

/-! ## A304312.P3992742210046363887

`gcd(A000038(n), A006691(A028310(n)))`
-/

namespace A304312.P3992742210046363887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A006691 (A028310 n).toNat)

end

end A304312.P3992742210046363887

/-! ## A304312.P10253277070137043227

`A027834(n+1)/n!`
-/

namespace A304312.P10253277070137043227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027834 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A304312.P10253277070137043227

/-!
# A304313: Logarithmic derivative of F(x) that satisfies: [x^n] exp( n^3 * x ) / F(x) = 0 for n>0.

The programs for A304313, there is no canonical definition to state claims against.
-/

/-! ## A304313.P11806327167720019241

`A006692(A028310(n))^A178334(n)`
-/

namespace A304313.P11806327167720019241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006692 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A304313.P11806327167720019241

/-! ## A304313.P6233617249188145256

`A006692(A028310(n))^A178489(n)`
-/

namespace A304313.P6233617249188145256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006692 (A028310 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A304313.P6233617249188145256

/-! ## A304313.P1810174333436717283

`gcd(A000038(n), A006692(A028310(n)))`
-/

namespace A304313.P1810174333436717283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A006692 (A028310 n).toNat)

end

end A304313.P1810174333436717283

/-! ## A304313.P14082052374875819785

`A006692(A028310(n))%A304317(n)²`
-/

namespace A304313.P14082052374875819785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006692 (A028310 n).toNat) (A304317 n ^ 2)

end

end A304313.P14082052374875819785

/-! ## A304313.P7641633331071399298

`∏{e}[2^n, A006692(#)]`
-/

namespace A304313.P7641633331071399298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006692 (Nat.factorization (f1 n) p)

end

end A304313.P7641633331071399298

/-!
# A304314: Logarithmic derivative of F(x) that satisfies: [x^n] exp( n^4 * x ) / F(x) = 0 for n>0.

The programs for A304314, there is no canonical definition to state claims against.
-/

/-! ## A304314.P9887606779126538101

`A304321(A141214(n+1))`
-/

namespace A304314.P9887606779126538101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304321 (A141214 (n + 1)).toNat

end

end A304314.P9887606779126538101

/-! ## A304314.P579946296910506699

`A304321(A027379(n+2))`
-/

namespace A304314.P579946296910506699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304321 (A027379 (n + 2)).toNat

end

end A304314.P579946296910506699

/-! ## A304314.P17144315267251996532

`A304321(A155212(n)+5)`
-/

namespace A304314.P17144315267251996532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304321 (A155212 n + 5).toNat

end

end A304314.P17144315267251996532

/-! ## A304314.P3966169888540711711

`A304321(A056000(n)+7)`
-/

namespace A304314.P3966169888540711711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304321 (A056000 n + 7).toNat

end

end A304314.P3966169888540711711

/-! ## A304314.P3189718864726907485

`A304321(eq[3, A193592(n)])`
-/

namespace A304314.P3189718864726907485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304314.P3189718864726907485

/-!
# A304315: 

The programs for A304315, there is no canonical definition to state claims against.
-/

/-! ## A304315.P11362375575449154771

`A304321(eq[4, A193592(n)])`
-/

namespace A304315.P11362375575449154771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304315.P11362375575449154771

/-! ## A304315.P9954205537767813579

`A304321(eq[8, A057728(n+1)])`
-/

namespace A304315.P9954205537767813579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304315.P9954205537767813579

/-!
# A304318: O.g.f. A(x) satisfies: [x^n] exp( n*(n-1) * x ) / A(x) = 0.

The programs for A304318, there is no canonical definition to state claims against.
-/

/-! ## A304318.P7611768751937159579

`A080820(A155926(n))-n`
-/

namespace A304318.P7611768751937159579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 (A155926 n).toNat - (n : ℤ)

end

end A304318.P7611768751937159579

/-!
# A304319: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x ) / A(x) = 0 for n>0.

The programs for A304319, there is no canonical definition to state claims against.
-/

/-! ## A304319.P15061179732833204752

`A285801(A227463(n+1))`
-/

namespace A304319.P15061179732833204752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (A227463 (n + 1)).toNat

end

end A304319.P15061179732833204752

/-!
# A304320: Table read by ascending antidiagonals of coefficients in row functions R(n,x) such that [x^k] exp( k^n * x ) / R(n,x) = 0 for k>=1 and n>=1.

The programs for A304320, there is no canonical definition to state claims against.
-/

/-! ## A304320.P1157741576472181728

`A122797(2^A121314(n))`
-/

namespace A304320.P1157741576472181728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A121314 n : ℤ))).toNat

end

end A304320.P1157741576472181728

/-!
# A304321: Table of coefficients in row functions F'(n,x)/F(n,x) such that [x^k] exp( k^n * x ) / F(n,x) = 0 for k>=1 and n>=1.

The programs for A304321, there is no canonical definition to state claims against.
-/

/-! ## A304321.P18409121975341437207

`A029579(A286331(C(n, A008612(n))))`
-/

namespace A304321.P18409121975341437207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A286331 (Nat.choose n (A008612 n).toNat)).toNat

end

end A304321.P18409121975341437207

/-! ## A304321.P13072203546859389031

`A029579(A286331(n^A008612(n)))`
-/

namespace A304321.P13072203546859389031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A286331 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A008612 n : ℤ))).toNat).toNat

end

end A304321.P13072203546859389031

/-! ## A304321.P5746727638508573283

`A094525(∑{p}[A015817(n+1)-A268714(n), #])`
-/

namespace A304321.P5746727638508573283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015817 (n + 1) - A268714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A304321.P5746727638508573283

/-! ## A304321.P11079624204282004135

`A322107(A246362(2*n+1))%A192298(2*n+5)`
-/

namespace A304321.P11079624204282004135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322107 (A246362 (2 * n + 1)).toNat) (A192298 (2 * n + 5))

end

end A304321.P11079624204282004135

/-!
# A304322: O.g.f. A(x) satisfies: [x^n] exp( n^2 * x ) / A(x) = 0 for n>0.

The programs for A304322, there is no canonical definition to state claims against.
-/

/-! ## A304322.P12338697484520822695

`A304320(∑[n+2])`
-/

namespace A304322.P12338697484520822695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304322.P12338697484520822695

/-!
# A304323: O.g.f. A(x) satisfies: [x^n] exp( n^3 * x ) / A(x) = 0 for n>0.

The programs for A304323, there is no canonical definition to state claims against.
-/

/-! ## A304323.P15030477293281573835

`A304320(∑[n+3]+1)`
-/

namespace A304323.P15030477293281573835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304323.P15030477293281573835

/-! ## A304323.P2317840052001940038

`A304320(A034856(n+2))%A304313(n+1)`
-/

namespace A304323.P2317840052001940038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304320 (A034856 (n + 2)).toNat) (A304313 (n + 1))

end

end A304323.P2317840052001940038

/-! ## A304323.P2023058345453492426

`lcm(A011594(n+1), A304320(A034856(n+2)))`
-/

namespace A304323.P2023058345453492426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011594 (n + 1)) (A304320 (A034856 (n + 2)).toNat)

end

end A304323.P2023058345453492426

/-!
# A304324: O.g.f. A(x) satisfies: [x^n] exp( n^4 * x ) / A(x) = 0 for n>0.

The programs for A304324, there is no canonical definition to state claims against.
-/

/-! ## A304324.P5178675004529335255

`A304320(A141214(n+1))`
-/

namespace A304324.P5178675004529335255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A141214 (n + 1)).toNat

end

end A304324.P5178675004529335255

/-! ## A304324.P4875738022392261960

`A304320(A027379(n+2))`
-/

namespace A304324.P4875738022392261960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A027379 (n + 2)).toNat

end

end A304324.P4875738022392261960

/-! ## A304324.P8319334569612347484

`A304320(A155212(n)+5)`
-/

namespace A304324.P8319334569612347484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A155212 n + 5).toNat

end

end A304324.P8319334569612347484

/-! ## A304324.P18056737294216354003

`A304320(A056000(n)+7)`
-/

namespace A304324.P18056737294216354003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A056000 n + 7).toNat

end

end A304324.P18056737294216354003

/-! ## A304324.P18397167036224078113

`A304320(eq[3, A193592(n)])`
-/

namespace A304324.P18397167036224078113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304324.P18397167036224078113

/-!
# A304325: O.g.f. A(x) satisfies: [x^n] exp( n^5 * x ) / A(x) = 0 for n>0.

The programs for A304325, there is no canonical definition to state claims against.
-/

/-! ## A304325.P16645357136228837390

`A304320(A046691(n+3))`
-/

namespace A304325.P16645357136228837390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A046691 (n + 3)).toNat

end

end A304325.P16645357136228837390

/-! ## A304325.P16084556634856779850

`A304320(eq[4, A193592(n)])`
-/

namespace A304325.P16084556634856779850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304325.P16084556634856779850

/-! ## A304325.P5452534306343052391

`A304320(Δ[A023545(n+1)])`
-/

namespace A304325.P5452534306343052391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (f1 (n + 1) - f1 n).toNat

end

end A304325.P5452534306343052391

/-! ## A304325.P10063551982593532122

`A304320(eq[8, A057728(n+1)])`
-/

namespace A304325.P10063551982593532122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304325.P10063551982593532122

/-!
# A304326: Number of ways to write n as a product of a number that is not a perfect power and a squarefree number.

The programs for A304326, the canonical program `A304326.P14717502684146888168` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304326 has offset 1).

The definition of A304326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304326.P14717502684146888168

`A034444(n+1)-A304327(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A304326

/-- `A034444(n+1)-A304327(n+1)` -/
def P14717502684146888168.Spec : Prop :=
  ∀ n, P14717502684146888168.a n = A304326 (n + 1)

theorem P14717502684146888168.correct : P14717502684146888168.Spec := by
  intro n
  simp only [A304326, Nat.add_sub_cancel]

end A304326

/-! ## A304326.P8092636380817361262

`2^A001221(n+1)-A304327(n+1)`
-/

namespace A304326.P8092636380817361262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - (A304327 (n + 1) : ℚ)

end

end A304326.P8092636380817361262

namespace A304326

/-- `2^A001221(n+1)-A304327(n+1)` -/
def P8092636380817361262.Spec : Prop :=
  ∀ n, P8092636380817361262.a n = (A304326 (n + 1) : ℚ)

end A304326

/-! ## A304326.P12732447071616075714

`A000005(∏{p}[n+1, #])-A304327(n+1)`
-/

namespace A304326.P12732447071616075714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - A304327 (n + 1)

end

end A304326.P12732447071616075714

namespace A304326

/-- `A000005(∏{p}[n+1, #])-A304327(n+1)` -/
def P12732447071616075714.Spec : Prop :=
  ∀ n, P12732447071616075714.a n = A304326 (n + 1)

end A304326

/-! ## A304326.P17779577186721701607

`∑{d}[n+1, A183096(#)*A271102((n+1)/#)]`
-/

namespace A304326.P17779577186721701607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A183096 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304326.P17779577186721701607

namespace A304326

/-- `∑{d}[n+1, A183096(#)*A271102((n+1)/#)]` -/
def P17779577186721701607.Spec : Prop :=
  ∀ n, P17779577186721701607.a n = A304326 (n + 1)

end A304326

/-! ## A304326.P2737277692349989853

`A000005(A007947(n+1))-A304327(n+1)`
-/

namespace A304326.P2737277692349989853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat - A304327 (n + 1)

end

end A304326.P2737277692349989853

namespace A304326

/-- `A000005(A007947(n+1))-A304327(n+1)` -/
def P2737277692349989853.Spec : Prop :=
  ∀ n, P2737277692349989853.a n = A304326 (n + 1)

end A304326

/-! ## A304326.P1702454935764423040

`A034444(n+1)-A001055(A000688(n+1)²²+1)`
-/

namespace A304326.P1702454935764423040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A001055 ((A000688 (n + 1) ^ 2) ^ 2 + 1).toNat

end

end A304326.P1702454935764423040

namespace A304326

/-- `A034444(n+1)-A001055(A000688(n+1)²²+1)` -/
def P1702454935764423040.Spec : Prop :=
  ∀ n, P1702454935764423040.a n = A304326 (n + 1)

end A304326

/-! ## A304326.P4364735217299720328

`A034444(n+1)-A000005(A293985(A008834(n+1)))`
-/

namespace A304326.P4364735217299720328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A000005 (A293985 (A008834 (n + 1)).toNat).toNat

end

end A304326.P4364735217299720328

namespace A304326

/-- `A034444(n+1)-A000005(A293985(A008834(n+1)))` -/
def P4364735217299720328.Spec : Prop :=
  ∀ n, P4364735217299720328.a n = A304326 (n + 1)

end A304326

/-!
# A304327: Number of ways to write n as a product of a perfect power and a squarefree number.

The programs for A304327, the canonical program `A304327.P8179685896533217852` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304327 has offset 1).

The definition of A304327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304327.P8159494134459830778

`A034444(n+1)-A304326(n+1)`
-/

namespace A304327.P8159494134459830778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A304326 (n + 1)

end

end A304327.P8159494134459830778

namespace A304327

/-- `A034444(n+1)-A304326(n+1)` -/
def P8159494134459830778.Spec : Prop :=
  ∀ n, P8159494134459830778.a n = A304327 (n + 1)

theorem P8159494134459830778.correct : P8159494134459830778.Spec := by
  intro n
  simp only [A304327, Nat.add_sub_cancel, A304327.P8159494134459830778.a, A304327.P8179685896533217852.f1, A304327.P8179685896533217852.a, A034444, A034444.P6574915864346323298.a, A091050, A091050.P13434770891422209589.f1, A091050.P13434770891422209589.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A304326, A304326.P14717502684146888168.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A075802, A075802.P15418155707765850726.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304327

/-! ## A304327.P1311930554509527312

`∑{d}[n+1, A008966(#)*A075802((n+1)/#)]`
-/

namespace A304327.P1311930554509527312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304327.P1311930554509527312

namespace A304327

/-- `∑{d}[n+1, A008966(#)*A075802((n+1)/#)]` -/
def P1311930554509527312.Spec : Prop :=
  ∀ n, P1311930554509527312.a n = A304327 (n + 1)

end A304327

/-! ## A304327.P8179685896533217852

`∑{d}[n+1, A091050(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A304327

/-- `∑{d}[n+1, A091050(#)*A271102((n+1)/#)]` -/
def P8179685896533217852.Spec : Prop :=
  ∀ n, P8179685896533217852.a n = A304327 (n + 1)

theorem P8179685896533217852.correct : P8179685896533217852.Spec := by
  intro n
  simp only [A304327, Nat.add_sub_cancel]

end A304327

/-! ## A304327.P4021379526157752740

`gcd(A006530(A317934(n+1)), A304362(n+1))`
-/

namespace A304327.P4021379526157752740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (A317934 (n + 1)).toNat) (A304362 (n + 1))

end

end A304327.P4021379526157752740

namespace A304327

/-- `gcd(A006530(A317934(n+1)), A304362(n+1))` -/
def P4021379526157752740.Spec : Prop :=
  ∀ n, (P4021379526157752740.a n : ℤ) = A304327 (n + 1)

end A304327

/-! ## A304327.P10783926974362606146

`A001222(A001222((A000688(n+1)²+1)²))`
-/

namespace A304327.P10783926974362606146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 ((A000688 (n + 1) ^ 2 + 1) ^ 2).toNat).toNat

end

end A304327.P10783926974362606146

namespace A304327

/-- `A001222(A001222((A000688(n+1)²+1)²))` -/
def P10783926974362606146.Spec : Prop :=
  ∀ n, P10783926974362606146.a n = A304327 (n + 1)

end A304327

/-! ## A304327.P3888130796115965454

`gcd(2, A332294(A050363(n+1)))`
-/

namespace A304327.P3888130796115965454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A332294 (A050363 (n + 1)).toNat)

end

end A304327.P3888130796115965454

namespace A304327

/-- `gcd(2, A332294(A050363(n+1)))` -/
def P3888130796115965454.Spec : Prop :=
  ∀ n, (P3888130796115965454.a n : ℤ) = A304327 (n + 1)

end A304327

/-! ## A304327.P1808901943589855679

`∑{e}[∑{e}[(A328855(n+1)+1)², #], #]`
-/

namespace A304327.P1808901943589855679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A328855 (n + 1) + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A304327.P1808901943589855679

namespace A304327

/-- `∑{e}[∑{e}[(A328855(n+1)+1)², #], #]` -/
def P1808901943589855679.Spec : Prop :=
  ∀ n, (P1808901943589855679.a n : ℤ) = A304327 (n + 1)

end A304327

/-!
# A304328: a(n) = n/(largest perfect power divisor of n).

The programs for A304328, there is no canonical definition to state claims against.
-/

/-! ## A304328.P209910616425435962

`A007913((n+1)*A203025(n+1))`
-/

namespace A304328.P209910616425435962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A203025 (n + 1)).toNat

end

end A304328.P209910616425435962

/-!
# A304329: Expansion of Product_{k>0} (Sum_{m>=0} x^(k*m^3)).

The programs for A304329, there is no canonical definition to state claims against.
-/

/-! ## A304329.P5356285947723643360

`A280814(A052816(n))`
-/

namespace A304329.P5356285947723643360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (A052816 n).toNat

end

end A304329.P5356285947723643360

/-! ## A304329.P15586070649481492987

`A373811(A318028(n))`
-/

namespace A304329.P15586070649481492987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A318028 n).toNat

end

end A304329.P15586070649481492987

/-! ## A304329.P11142002658852728287

`A373811(A373296(n))`
-/

namespace A304329.P11142002658852728287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A373296 n).toNat

end

end A304329.P11142002658852728287

/-! ## A304329.P12151437772295954260

`A204551(A345170(2*n+3))`
-/

namespace A304329.P12151437772295954260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A345170 (2 * n + 3)).toNat

end

end A304329.P12151437772295954260

/-! ## A304329.P2686261222843796753

`A371626(A039851(n+1))`
-/

namespace A304329.P2686261222843796753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371626 (A039851 (n + 1)).toNat

end

end A304329.P2686261222843796753

/-!
# A304330: T(n, k) = Sum_{j=0..k} (-1)^j*binomial(2*k, j)*(k - j)^(2*n), triangle read by rows, n >= 0 and 0 <= k <= n.

The programs for A304330, there is no canonical definition to state claims against.
-/

/-! ## A304330.P2204256985442280001

`ceil(A387597(n)/2)`
-/

namespace A304330.P2204256985442280001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A387597 n : ℚ) / 2⌉

end

end A304330.P2204256985442280001

/-! ## A304330.P9483307041529492005

`A233543(n)*A304334(n)`
-/

namespace A304330.P9483307041529492005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A304334 n

end

end A304330.P9483307041529492005

/-! ## A304330.P11051658850878131808

`A387597(n)/A238303(n)`
-/

namespace A304330.P11051658850878131808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387597 n : ℚ) / (A238303 n : ℚ)

end

end A304330.P11051658850878131808

/-! ## A304330.P3689729644594617783

`A233543(n)²*A304336(n)`
-/

namespace A304330.P3689729644594617783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n ^ 2 * A304336 n

end

end A304330.P3689729644594617783

/-!
# A304332: Expansion of Product_{k>0} (1 + Sum_{m>0} x^(k*m!)).

The programs for A304332, there is no canonical definition to state claims against.
-/

/-! ## A304332.P6358415141206408676

`A349795(n)+A010055(∑[A188224(n)])`
-/

namespace A304332.P6358415141206408676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n + A010055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304332.P6358415141206408676

/-! ## A304332.P12216958046001960263

`A056556(A185251(n))+1`
-/

namespace A304332.P12216958046001960263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A185251 n).toNat + 1

end

end A304332.P12216958046001960263

/-!
# A304333: Number of positive integers k such that n - L(k) is a positive squarefree number, where L(k) denotes the k-th Lucas number A000204(k).

The programs for A304333, there is no canonical definition to state claims against.
-/

/-! ## A304333.P14211513773517927193

`A001221(A003214(n)*A278162(n))`
-/

namespace A304333.P14211513773517927193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003214 n * A278162 n).toNat

end

end A304333.P14211513773517927193

/-! ## A304333.P18103495416568322188

`A338732(2*A095424(3*n+1))`
-/

namespace A304333.P18103495416568322188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338732 (2 * A095424 (3 * n + 1)).toNat

end

end A304333.P18103495416568322188

/-! ## A304333.P1855031244951289153

`A001221(A213636(n+1)*A269744(n+1))`
-/

namespace A304333.P1855031244951289153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A213636 (n + 1) * A269744 (n + 1)).toNat

end

end A304333.P1855031244951289153

/-! ## A304333.P6179757400729995118

`A001221(lcm(A213636(n+1), A269744(n+1)))`
-/

namespace A304333.P6179757400729995118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A213636 (n + 1)) (A269744 (n + 1)))

end

end A304333.P6179757400729995118

/-! ## A304333.P5189137959280507849

`A001221(A001221(3*n+5)*A269744(n+1))`
-/

namespace A304333.P5189137959280507849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001221 (3 * n + 5) * A269744 (n + 1)).toNat

end

end A304333.P5189137959280507849

/-!
# A304334: T(n, k) = Sum_{j=0..k} (-1)^j*binomial(2*k, j)*(k - j)^(2*n)/k!, triangle read by rows, n >= 0 and 0 <= k <= n.

The programs for A304334, there is no canonical definition to state claims against.
-/

/-! ## A304334.P11031561963295653613

`(n-C(∑[char[∑[n]]], 2))!*A304336(n)`
-/

namespace A304334.P11031561963295653613
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A304336 n

end

end A304334.P11031561963295653613

/-! ## A304334.P280474147362565604

`A233543(n)*A304336(n)`
-/

namespace A304334.P280474147362565604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A304336 n

end

end A304334.P280474147362565604

/-! ## A304334.P3395466665934373664

`A002262(n)!*A304336(n)`
-/

namespace A304334.P3395466665934373664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A304336 n

end

end A304334.P3395466665934373664

/-! ## A304334.P1183112464783522816

`A304330(n)/A233543(n)`
-/

namespace A304334.P1183112464783522816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304330 n : ℚ) / (A233543 n : ℚ)

end

end A304334.P1183112464783522816

/-!
# A304335: Sum of digits of (2*n-1)!!.

The programs for A304335, the canonical program `A304335.P10310758909339580982` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304335 has offset 0).

The definition of A304335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304335.P10310758909339580982

`A120390(n-(2-n)%(n+1)+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A304335

/-- `A120390(n-(2-n)%(n+1)+1)` -/
def P10310758909339580982.Spec : Prop :=
  ∀ n, P10310758909339580982.a n = A304335 n

theorem P10310758909339580982.correct : P10310758909339580982.Spec := by
  intro n
  simp only [A304335]

end A304335

/-! ## A304335.P4037932424028710808

`A120390(or(1, A004273(n)))`
-/

namespace A304335.P4037932424028710808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 (Int.lor 1 (A004273 n)).toNat

end

end A304335.P4037932424028710808

namespace A304335

/-- `A120390(or(1, A004273(n)))` -/
def P4037932424028710808.Spec : Prop :=
  ∀ n, P4037932424028710808.a n = A304335 n

end A304335

/-! ## A304335.P1922944529589549587

`A120390(A093178(record[A026741(n)]))`
-/

namespace A304335.P1922944529589549587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 (A093178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A304335.P1922944529589549587

namespace A304335

/-- `A120390(A093178(record[A026741(n)]))` -/
def P1922944529589549587.Spec : Prop :=
  ∀ n, P1922944529589549587.a n = A304335 n

end A304335

/-! ## A304335.P8682310607649021091

`A120390(A093178(record[A227140(n)]))`
-/

namespace A304335.P8682310607649021091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 (A093178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A304335.P8682310607649021091

namespace A304335

/-- `A120390(A093178(record[A227140(n)]))` -/
def P8682310607649021091.Spec : Prop :=
  ∀ n, P8682310607649021091.a n = A304335 n

end A304335

/-! ## A304335.P3931396142132970001

`A120390(A093178(A004280(n+1)))`
-/

namespace A304335.P3931396142132970001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 (A093178 (A004280 (n + 1)).toNat).toNat

end

end A304335.P3931396142132970001

namespace A304335

/-- `A120390(A093178(A004280(n+1)))` -/
def P3931396142132970001.Spec : Prop :=
  ∀ n, P3931396142132970001.a n = A304335 n

end A304335

/-! ## A304335.P11992197132854233563

`A120390(A004273(A000007(n)+n))`
-/

namespace A304335.P11992197132854233563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 (A004273 (A000007 n + (n : ℤ)).toNat).toNat

end

end A304335.P11992197132854233563

namespace A304335

/-- `A120390(A004273(A000007(n)+n))` -/
def P11992197132854233563.Spec : Prop :=
  ∀ n, P11992197132854233563.a n = A304335 n

end A304335

/-! ## A304335.P7439594806680538979

`A120390(2*A344838(∑[n]-n)+1)`
-/

namespace A304335.P7439594806680538979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 (2 * A344838 (∑ j ∈ Finset.range (n + 1), f1 j - n) + 1).toNat

end

end A304335.P7439594806680538979

namespace A304335

/-- `A120390(2*A344838(∑[n]-n)+1)` -/
def P7439594806680538979.Spec : Prop :=
  ∀ n, P7439594806680538979.a n = A304335 n

end A304335

/-! ## A304335.P3871967151767035438

`A120390(A004273(n^A178334(n)))`
-/

namespace A304335.P3871967151767035438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 (A004273 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

end

end A304335.P3871967151767035438

namespace A304335

/-- `A120390(A004273(n^A178334(n)))` -/
def P3871967151767035438.Spec : Prop :=
  ∀ n, P3871967151767035438.a n = A304335 n

end A304335

/-! ## A304335.P18383963039502075669

`∑{digits}[∏[1-2*n], #]`
-/

namespace A304335.P18383963039502075669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A304335.P18383963039502075669

namespace A304335

/-- `∑{digits}[∏[1-2*n], #]` -/
def P18383963039502075669.Spec : Prop :=
  ∀ n, (P18383963039502075669.a n : ℤ) = A304335 n

end A304335

/-!
# A304336: T(n, k) = Sum_{j=0..k} (-1)^j*binomial(2*k, j)*(k - j)^(2*n)/(k!)^2, triangle read by rows, n >= 0 and 0 <= k <= n.

The programs for A304336, there is no canonical definition to state claims against.
-/

/-! ## A304336.P12345536897945982907

`A304334(n)/A233543(n)`
-/

namespace A304336.P12345536897945982907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304334 n : ℚ) / (A233543 n : ℚ)

end

end A304336.P12345536897945982907

/-! ## A304336.P15731400020896670396

`A304334(n)/A002262(n)!`
-/

namespace A304336.P15731400020896670396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304334 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A304336.P15731400020896670396

/-! ## A304336.P722536699784065244

`A385816(A387597(n))`
-/

namespace A304336.P722536699784065244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A387597 n).toNat

end

end A304336.P722536699784065244

/-! ## A304336.P5817826970174684917

`A181578(A256311(n))`
-/

namespace A304336.P5817826970174684917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A256311 n).toNat

end

end A304336.P5817826970174684917

/-! ## A304336.P6307450171427426341

`C(A309973(n), A376305(A134643(n+1)))`
-/

namespace A304336.P6307450171427426341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A309973 n).toNat (A376305 (A134643 (n + 1)).toNat).toNat

end

end A304336.P6307450171427426341

/-!
# A304337: Lexicographically earliest fractal-like sequence such that the erasure of all pairs of contiguous terms of opposite parity leaves the sequence unchanged.

The programs for A304337, the canonical program `A304337.P3685069978609455408` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304337 has offset 1).

The definition of A304337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304337.P3685069978609455408

`A133256(A253146(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A304337

/-- `A133256(A253146(n+1))` -/
def P3685069978609455408.Spec : Prop :=
  ∀ n, P3685069978609455408.a n = A304337 (n + 1)

theorem P3685069978609455408.correct : P3685069978609455408.Spec := by
  intro n
  simp only [A304337, Nat.add_sub_cancel]

end A304337

/-! ## A304337.P9607249771501110567

`A073898(A316272(n+1))`
-/

namespace A304337.P9607249771501110567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (A316272 (n + 1)).toNat

end

end A304337.P9607249771501110567

namespace A304337

/-- `A073898(A316272(n+1))` -/
def P9607249771501110567.Spec : Prop :=
  ∀ n, P9607249771501110567.a n = A304337 (n + 1)

end A304337

/-! ## A304337.P8604202063692361296

`A211197(A185180(n+1))`
-/

namespace A304337.P8604202063692361296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211197 (A185180 (n + 1)).toNat

end

end A304337.P8604202063692361296

namespace A304337

/-- `A211197(A185180(n+1))` -/
def P8604202063692361296.Spec : Prop :=
  ∀ n, P8604202063692361296.a n = A304337 (n + 1)

end A304337

/-! ## A304337.P17252009209646555044

`A133256(A220073(n+1)+A049581(n))`
-/

namespace A304337.P17252009209646555044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A220073 (n + 1) + A049581 n).toNat

end

end A304337.P17252009209646555044

namespace A304337

/-- `A133256(A220073(n+1)+A049581(n))` -/
def P17252009209646555044.Spec : Prop :=
  ∀ n, P17252009209646555044.a n = A304337 (n + 1)

end A304337

/-! ## A304337.P4245741217766316812

`A133256(A220073(n+1)+A053188(2*n+1))`
-/

namespace A304337.P4245741217766316812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A220073 (n + 1) + A053188 (2 * n + 1)).toNat

end

end A304337.P4245741217766316812

namespace A304337

/-- `A133256(A220073(n+1)+A053188(2*n+1))` -/
def P4245741217766316812.Spec : Prop :=
  ∀ n, P4245741217766316812.a n = A304337 (n + 1)

end A304337

/-! ## A304337.P9074409756477907701

`A194959(A194280(2*(n+1)))`
-/

namespace A304337.P9074409756477907701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A194280 (2 * (n + 1))).toNat

end

end A304337.P9074409756477907701

namespace A304337

/-- `A194959(A194280(2*(n+1)))` -/
def P9074409756477907701.Spec : Prop :=
  ∀ n, P9074409756477907701.a n = A304337 (n + 1)

end A304337

/-! ## A304337.P9457443746741397366

`A049581(A185869(n+1))+A000035(A049581(n))`
-/

namespace A304337.P9457443746741397366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A185869 (n + 1)).toNat + A000035 (A049581 n).toNat

end

end A304337.P9457443746741397366

namespace A304337

/-- `A049581(A185869(n+1))+A000035(A049581(n))` -/
def P9457443746741397366.Spec : Prop :=
  ∀ n, P9457443746741397366.a n = A304337 (n + 1)

end A304337

/-! ## A304337.P15740451864564056678

`A059841(A002024(n+1))+A049581(A185869(n+1))`
-/

namespace A304337.P15740451864564056678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A002024 (n + 1)).toNat + A049581 (A185869 (n + 1)).toNat

end

end A304337.P15740451864564056678

namespace A304337

/-- `A059841(A002024(n+1))+A049581(A185869(n+1))` -/
def P15740451864564056678.Spec : Prop :=
  ∀ n, P15740451864564056678.a n = A304337 (n + 1)

end A304337

/-! ## A304337.P8141523999245309054

`A332998(A271709(n))+A049581(A185869(n+1))`
-/

namespace A304337.P8141523999245309054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A271709 n).toNat + A049581 (A185869 (n + 1)).toNat

end

end A304337.P8141523999245309054

namespace A304337

/-- `A332998(A271709(n))+A049581(A185869(n+1))` -/
def P8141523999245309054.Spec : Prop :=
  ∀ n, P8141523999245309054.a n = A304337 (n + 1)

end A304337

/-!
# A304338: Row sums of A304336.

The programs for A304338, there is no canonical definition to state claims against.
-/

/-! ## A304338.P17283440288764912045

`A055038(A186925(n)+A000009(n))`
-/

namespace A304338.P17283440288764912045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055038 (A186925 n + A000009 n).toNat

end

end A304338.P17283440288764912045

/-! ## A304338.P11095386966874601110

`A055038(A186925(n))+A007318(n)`
-/

namespace A304338.P11095386966874601110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055038 (A186925 n).toNat + A007318 n

end

end A304338.P11095386966874601110

/-!
# A304339: 

The programs for A304339, there is no canonical definition to state claims against.
-/

/-! ## A304339.P8064071207276521060

`A007913(A304328(n+1))`
-/

namespace A304339.P8064071207276521060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A304328 (n + 1)).toNat

end

end A304339.P8064071207276521060

/-! ## A304339.P4233766121664988346

`A304328(gcd(n+1, A304328(n+1)))`
-/

namespace A304339.P4233766121664988346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (Int.gcd (n + 1 : ℤ) (A304328 (n + 1)))

end

end A304339.P4233766121664988346

/-! ## A304339.P7842646310131000238

`A304328(A304328(n+1)%A000040(n+1))`
-/

namespace A304339.P7842646310131000238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (Int.tmod (A304328 (n + 1)) (A000040 (n + 1))).toNat

end

end A304339.P7842646310131000238

/-! ## A304339.P14592856797967227915

`A304328(A304328(n+1))%A004801(n+1)`
-/

namespace A304339.P14592856797967227915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304328 (A304328 (n + 1)).toNat) (A004801 (n + 1))

end

end A304339.P14592856797967227915

/-! ## A304339.P8080894864521599505

`A304328(A304328(n+1)+A209229(3*(n+1)))`
-/

namespace A304339.P8080894864521599505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A304328 (n + 1) + A209229 (3 * (n + 1))).toNat

end

end A304339.P8080894864521599505

/-! ## A304339.P15217877323356328205

`A304328(A089026(2*(n+2))*A304328(n+1))`
-/

namespace A304339.P15217877323356328205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A089026 (2 * (n + 2)) * A304328 (n + 1)).toNat

end

end A304339.P15217877323356328205

/-!
# A304340: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304340, there is no canonical definition to state claims against.
-/

/-! ## A304340.P18338377632112125934

`A304347(∑[4*n]+1)`
-/

namespace A304340.P18338377632112125934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304340.P18338377632112125934

/-! ## A304340.P6009586977905349942

`record[A304347(Δ[A235355(n)])]`
-/

namespace A304340.P6009586977905349942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304340.P6009586977905349942

/-! ## A304340.P16779991364544555536

`and(-1, A304347(A001844(n)))`
-/

namespace A304340.P16779991364544555536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304347 (A001844 n).toNat)

end

end A304340.P16779991364544555536

/-! ## A304340.P15541830271239586571

`record[A304347(A330613(n+1))]`
-/

namespace A304340.P15541830271239586571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304340.P15541830271239586571

/-! ## A304340.P6983116458109269163

`record[A304347(Δ[A309684(3*n)])]`
-/

namespace A304340.P6983116458109269163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309684 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304340.P6983116458109269163

/-!
# A304341: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304341, there is no canonical definition to state claims against.
-/

/-! ## A304341.P17162704987619345591

`A304347(∑[n+1]+2)`
-/

namespace A304341.P17162704987619345591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304341.P17162704987619345591

/-! ## A304341.P1029709860996617763

`lcm(2, A304347(A000096(n)+3))`
-/

namespace A304341.P1029709860996617763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A304347 (A000096 n + 3).toNat)

end

end A304341.P1029709860996617763

/-! ## A304341.P5675123581628018845

`record[A304347(A255130(n+1)+1)]`
-/

namespace A304341.P5675123581628018845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A255130 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304341.P5675123581628018845

/-! ## A304341.P3445280881394155529

`record[A304347(n+2)/A167024(n)]`
-/

namespace A304341.P3445280881394155529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304347 (n + 2) : ℚ) / (A167024 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304341.P3445280881394155529

/-! ## A304341.P5864560595792244033

`record[A304347(n+3)/A194595(n)]`
-/

namespace A304341.P5864560595792244033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304347 (n + 3) : ℚ) / (A194595 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304341.P5864560595792244033

/-!
# A304342: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304342, there is no canonical definition to state claims against.
-/

/-! ## A304342.P7394843079356041678

`A304347(∑[n+2]+4)`
-/

namespace A304342.P7394843079356041678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304342.P7394843079356041678

/-! ## A304342.P18293048726199591501

`or(char[2], A304347(A046691(n)+7))`
-/

namespace A304342.P18293048726199591501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304347 (A046691 n + 7).toNat)

end

end A304342.P18293048726199591501

/-! ## A304342.P6018380853143878823

`A304347(A167614(n+1))+char[28]`
-/

namespace A304342.P6018380853143878823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304342.P6018380853143878823

/-! ## A304342.P14714984947712986789

`record[root(A304347(n+4), A053122(n))]`
-/

namespace A304342.P14714984947712986789
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A304347 (n + 4) : ℝ) ^ (1 / (A053122 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304342.P14714984947712986789

/-! ## A304342.P7028274282492044542

`record[root(A304347(n+4), A131115(n))]`
-/

namespace A304342.P7028274282492044542
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A304347 (n + 4) : ℝ) ^ (1 / (A131115 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304342.P7028274282492044542

/-!
# A304343: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304343, there is no canonical definition to state claims against.
-/

/-! ## A304343.P10249950617370829918

`A304347(∑[n+3]+7)`
-/

namespace A304343.P10249950617370829918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304343.P10249950617370829918

/-! ## A304343.P5265291306542359947

`A304347(A167614(n+2)+1)+char[20]`
-/

namespace A304343.P5265291306542359947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304343.P5265291306542359947

/-! ## A304343.P5889268108803848257

`A304347(A374004(n+1))%A074602(n+1)`
-/

namespace A304343.P5889268108803848257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304347 (A374004 (n + 1)).toNat) (A074602 (n + 1))

end

end A304343.P5889268108803848257

/-! ## A304343.P14864582700434681680

`A304347(A167614(n+2)+1)%A000108(n+6)`
-/

namespace A304343.P14864582700434681680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304347 (A167614 (n + 2) + 1).toNat) (A000108 (n + 6))

end

end A304343.P14864582700434681680

/-! ## A304343.P1782581788250039605

`A007318(C(2, n+2))*A304347(A167614(n+2)+1)`
-/

namespace A304343.P1782581788250039605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A304347 (A167614 (n + 2) + 1).toNat

end

end A304343.P1782581788250039605

/-!
# A304344: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304344, there is no canonical definition to state claims against.
-/

/-! ## A304344.P15132071165973289922

`A304347(∑[n+4]+11)`
-/

namespace A304344.P15132071165973289922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304344.P15132071165973289922

/-! ## A304344.P17729530621443336758

`A304347(A055999(n+1)+11)+char[23]`
-/

namespace A304344.P17729530621443336758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A055999 (n + 1) + 11).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304344.P17729530621443336758

/-! ## A304344.P18377093022222585578

`A304347(A000217(n+4)+5)-A105514(n)`
-/

namespace A304344.P18377093022222585578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A000217 (n + 4) + 5).toNat - A105514 n

end

end A304344.P18377093022222585578

/-! ## A304344.P12962225499600715338

`A007318(C(n, 2))*A304347(A055999(n+1)+11)`
-/

namespace A304344.P12962225499600715338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A304347 (A055999 (n + 1) + 11).toNat

end

end A304344.P12962225499600715338

/-! ## A304344.P942672958332692736

`A304347(A055999(n+1)+11)/A007318(C(3, n))`
-/

namespace A304344.P942672958332692736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304347 (A055999 (n + 1) + 11).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A304344.P942672958332692736

/-!
# A304345: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304345, there is no canonical definition to state claims against.
-/

/-! ## A304345.P10255786184912663714

`A304347(C(n+7, 2)-n)`
-/

namespace A304345.P10255786184912663714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (Nat.choose (n + 7) 2 - n)

end

end A304345.P10255786184912663714

/-! ## A304345.P9709532948236832429

`A304347(A374007(n+1))`
-/

namespace A304345.P9709532948236832429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A374007 (n + 1)).toNat

end

end A304345.P9709532948236832429

/-! ## A304345.P10084072572725740365

`A304347(A166136(n+4))`
-/

namespace A304345.P10084072572725740365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A166136 (n + 4)).toNat

end

end A304345.P10084072572725740365

/-! ## A304345.P6698451535204078498

`A304347(A056115(n)+21)`
-/

namespace A304345.P6698451535204078498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A056115 n + 21).toNat

end

end A304345.P6698451535204078498

/-! ## A304345.P7296274179854958759

`A304347(∑[A020710(n)]+16)`
-/

namespace A304345.P7296274179854958759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A304345.P7296274179854958759

/-!
# A304346: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304346, there is no canonical definition to state claims against.
-/

/-! ## A304346.P14249814279869720892

`A304347(A374008(n+1))`
-/

namespace A304346.P14249814279869720892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A374008 (n + 1)).toNat

end

end A304346.P14249814279869720892

/-! ## A304346.P18357411232589617568

`A304347(A056119(n)+28)`
-/

namespace A304346.P18357411232589617568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A056119 n + 28).toNat

end

end A304346.P18357411232589617568

/-! ## A304346.P10387550503136944856

`A304347(eq[11, A066657(n)])`
-/

namespace A304346.P10387550503136944856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304346.P10387550503136944856

/-! ## A304346.P780628468042990424

`A304347(A167499(n+5)+2)`
-/

namespace A304346.P780628468042990424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A167499 (n + 5) + 2).toNat

end

end A304346.P780628468042990424

/-! ## A304346.P3071863166617484395

`A304347(A077169(n+7)+2)`
-/

namespace A304346.P3071863166617484395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (A077169 (n + 7) + 2).toNat

end

end A304346.P3071863166617484395

/-!
# A304347: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304347, there is no canonical definition to state claims against.
-/

/-! ## A304347.P8030410800367656976

`A316218(n+1)-A173636(A174545(n))`
-/

namespace A304347.P8030410800367656976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (n + 1) - A173636 (A174545 n).toNat

end

end A304347.P8030410800367656976

/-! ## A304347.P1085203814081453807

`A305642(n+1)-A157685(A260340(n))`
-/

namespace A304347.P1085203814081453807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (n + 1) - A157685 (A260340 n).toNat

end

end A304347.P1085203814081453807

/-! ## A304347.P2046591022842066312

`A316218(n+1)-A054911(A299905(n)²)`
-/

namespace A304347.P2046591022842066312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (n + 1) - A054911 (A299905 n ^ 2).toNat

end

end A304347.P2046591022842066312

/-! ## A304347.P13179511647200031596

`A316218(n+1)-A184159(A260340(n)²)`
-/

namespace A304347.P13179511647200031596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (n + 1) - A184159 (A260340 n ^ 2).toNat

end

end A304347.P13179511647200031596

/-! ## A304347.P8787527563459936113

`A316218(n+1)-A036987(A078136(n+1))`
-/

namespace A304347.P8787527563459936113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (n + 1) - A036987 (A078136 (n + 1)).toNat

end

end A304347.P8787527563459936113

/-!
# A304348: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304348, there is no canonical definition to state claims against.
-/

/-! ## A304348.P1966815114008945514

`A304355(∑[4*n]+1)`
-/

namespace A304348.P1966815114008945514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304348.P1966815114008945514

/-! ## A304348.P594428888023758601

`record[A304355(A330613(n+1))]`
-/

namespace A304348.P594428888023758601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304348.P594428888023758601

/-! ## A304348.P11795241141254341310

`A304355(A001844(n))+char[9]`
-/

namespace A304348.P11795241141254341310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304348.P11795241141254341310

/-! ## A304348.P1373306229288935721

`record[A003982(n)*A304355(n+1)]`
-/

namespace A304348.P1373306229288935721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304348.P1373306229288935721

/-! ## A304348.P12014118068862855685

`record[A214505(n)*A304355(n+1)]`
-/

namespace A304348.P12014118068862855685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A304355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304348.P12014118068862855685

/-!
# A304349: Number of nX2 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304349, the canonical program `A304349.P3568793641629744947` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304349 has offset 1).

The definition of A304349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304349.P3568793641629744947

`a(n-1)+8*a(n-3)-4` with `a(0)=2, a(1)=5, a(2)=9`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304349

/-- `a(n-1)+8*a(n-3)-4` -/
def P3568793641629744947.Spec : Prop :=
  ∀ n, P3568793641629744947.a n = A304349 (n + 1)

theorem P3568793641629744947.correct : P3568793641629744947.Spec := by
  intro n
  simp only [A304349, Nat.add_sub_cancel]

end A304349

/-! ## A304349.P13047191483350487332

`8*a(n-3)-(4-a(n-1))` with `a(0)=2, a(1)=5, a(2)=9`
-/

namespace A304349.P13047191483350487332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 9] fun n a =>
  8 * a (n - 3) - (4 - a (n - 1))

end

end A304349.P13047191483350487332

namespace A304349

/-- `8*a(n-3)-(4-a(n-1))` -/
def P13047191483350487332.Spec : Prop :=
  ∀ n, P13047191483350487332.a n = A304349 (n + 1)

end A304349

/-! ## A304349.P522538182323449547

`A298215(n+1)-A155559(n)`
-/

namespace A304349.P522538182323449547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298215 (n + 1) - A155559 n

end

end A304349.P522538182323449547

namespace A304349

/-- `A298215(n+1)-A155559(n)` -/
def P522538182323449547.Spec : Prop :=
  ∀ n, P522538182323449547.a n = A304349 (n + 1)

end A304349

/-! ## A304349.P17777747010988551840

`or(1, A298215(n+1))-A000079(n)`
-/

namespace A304349.P17777747010988551840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298215 (n + 1)) - A000079 n

end

end A304349.P17777747010988551840

namespace A304349

/-- `or(1, A298215(n+1))-A000079(n)` -/
def P17777747010988551840.Spec : Prop :=
  ∀ n, P17777747010988551840.a n = A304349 (n + 1)

end A304349

/-! ## A304349.P10609585669486748372

`A298215(n+1)+A000007(n)-A000079(n)`
-/

namespace A304349.P10609585669486748372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298215 (n + 1) + (A000007 n - A000079 n)

end

end A304349.P10609585669486748372

namespace A304349

/-- `A298215(n+1)+A000007(n)-A000079(n)` -/
def P10609585669486748372.Spec : Prop :=
  ∀ n, P10609585669486748372.a n = A304349 (n + 1)

end A304349

/-! ## A304349.P10167471902572090045

`A298215(n+1)-A000079(n)%A000244(n)`
-/

namespace A304349.P10167471902572090045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298215 (n + 1) - Int.tmod (A000079 n) (A000244 n)

end

end A304349.P10167471902572090045

namespace A304349

/-- `A298215(n+1)-A000079(n)%A000244(n)` -/
def P10167471902572090045.Spec : Prop :=
  ∀ n, P10167471902572090045.a n = A304349 (n + 1)

end A304349

/-!
# A304350: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304350, there is no canonical definition to state claims against.
-/

/-! ## A304350.P12375152449878135089

`A304355(∑[n+2]+4)`
-/

namespace A304350.P12375152449878135089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304350.P12375152449878135089

/-! ## A304350.P14509041625247493894

`or(char[1], A304355(A167614(n+1)))`
-/

namespace A304350.P14509041625247493894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304355 (A167614 (n + 1)).toNat)

end

end A304350.P14509041625247493894

/-! ## A304350.P8238367604834686263

`A304355(A167614(n+1))+A025439(n)`
-/

namespace A304350.P8238367604834686263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A167614 (n + 1)).toNat + A025439 n

end

end A304350.P8238367604834686263

/-! ## A304350.P12654807557470243413

`A304355(A167614(n+1))+A025443(n)`
-/

namespace A304350.P12654807557470243413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A167614 (n + 1)).toNat + A025443 n

end

end A304350.P12654807557470243413

/-! ## A304350.P1197515769602458482

`A304355(A167614(n+1))+A185245(n)`
-/

namespace A304350.P1197515769602458482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A167614 (n + 1)).toNat + A185245 n

end

end A304350.P1197515769602458482

/-!
# A304351: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304351, there is no canonical definition to state claims against.
-/

/-! ## A304351.P9830653935240283465

`A304355(∑[n+3]+7)`
-/

namespace A304351.P9830653935240283465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304351.P9830653935240283465

/-! ## A304351.P12538957208892994246

`A304355(Δ[A008778(n)]+6)+char[16]`
-/

namespace A304351.P12538957208892994246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304351.P12538957208892994246

/-! ## A304351.P7679986030013378473

`A304355(Δ[A062748(n)]+4)+char[19]`
-/

namespace A304351.P7679986030013378473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (f1 (n + 1) - f1 n + 4).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304351.P7679986030013378473

/-! ## A304351.P9580111761524175639

`record[gcd(A127954(n+2), A304355(n+5))]`
-/

namespace A304351.P9580111761524175639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127954 (n + 2)) (A304355 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304351.P9580111761524175639

/-! ## A304351.P12192933830981425460

`(A000041(n)%2)!*A304355(Δ[A062748(n)]+4)`
-/

namespace A304351.P12192933830981425460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A304355 (f1 (n + 1) - f1 n + 4).toNat

end

end A304351.P12192933830981425460

/-!
# A304352: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304352, there is no canonical definition to state claims against.
-/

/-! ## A304352.P14375903619683402332

`A304355(A374005(n+1))`
-/

namespace A304352.P14375903619683402332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A374005 (n + 1)).toNat

end

end A304352.P14375903619683402332

/-! ## A304352.P13094552204508049484

`A304355(A167499(n+3))`
-/

namespace A304352.P13094552204508049484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A167499 (n + 3)).toNat

end

end A304352.P13094552204508049484

/-! ## A304352.P15996320900080641238

`A304355(A155212(n)+13)`
-/

namespace A304352.P15996320900080641238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A155212 n + 13).toNat

end

end A304352.P15996320900080641238

/-! ## A304352.P6779059051133410007

`A304355(A056000(n)+15)`
-/

namespace A304352.P6779059051133410007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A056000 n + 15).toNat

end

end A304352.P6779059051133410007

/-! ## A304352.P3418181698757702066

`A304355(eq[7, A066657(n)])`
-/

namespace A304352.P3418181698757702066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304352.P3418181698757702066

/-!
# A304353: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304353, there is no canonical definition to state claims against.
-/

/-! ## A304353.P15045250957990073806

`A304355(A374007(n+1))`
-/

namespace A304353.P15045250957990073806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A374007 (n + 1)).toNat

end

end A304353.P15045250957990073806

/-! ## A304353.P8039517554081260666

`A304355(A167499(n+4)+1)`
-/

namespace A304353.P8039517554081260666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A167499 (n + 4) + 1).toNat

end

end A304353.P8039517554081260666

/-! ## A304353.P1973655700406749873

`A304355(A000096(n+4)+7)`
-/

namespace A304353.P1973655700406749873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A000096 (n + 4) + 7).toNat

end

end A304353.P1973655700406749873

/-! ## A304353.P5308575585500944410

`A304355(A000217(n+5)+6)`
-/

namespace A304353.P5308575585500944410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A000217 (n + 5) + 6).toNat

end

end A304353.P5308575585500944410

/-! ## A304353.P9943929811028303782

`A304355(eq[7, A131818(n+1)])`
-/

namespace A304353.P9943929811028303782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304353.P9943929811028303782

/-!
# A304354: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304354, there is no canonical definition to state claims against.
-/

/-! ## A304354.P2873262534450305276

`A304355(A374008(n+1))`
-/

namespace A304354.P2873262534450305276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A374008 (n + 1)).toNat

end

end A304354.P2873262534450305276

/-! ## A304354.P2527447862524518558

`A304355(eq[11, A066657(n)])`
-/

namespace A304354.P2527447862524518558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304354.P2527447862524518558

/-! ## A304354.P4636577362339112984

`A304355(A167499(n+5)+2)`
-/

namespace A304354.P4636577362339112984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A167499 (n + 5) + 2).toNat

end

end A304354.P4636577362339112984

/-! ## A304354.P5700603226719192280

`A304355(A000124(n+6)+6)`
-/

namespace A304354.P5700603226719192280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A000124 (n + 6) + 6).toNat

end

end A304354.P5700603226719192280

/-! ## A304354.P13952572228284043722

`A304355(A000217(n+6)+7)`
-/

namespace A304354.P13952572228284043722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A000217 (n + 6) + 7).toNat

end

end A304354.P13952572228284043722

/-!
# A304355: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304355, there is no canonical definition to state claims against.
-/

/-! ## A304355.P14554716559348901757

`A305918(n+1)-A309785(A299321(n+1))`
-/

namespace A304355.P14554716559348901757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (n + 1) - A309785 (A299321 (n + 1)).toNat

end

end A304355.P14554716559348901757

/-! ## A304355.P195997802437877272

`A305918(n+1)-A004198(A185044(n))`
-/

namespace A304355.P195997802437877272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (n + 1) - A004198 (A185044 n).toNat

end

end A304355.P195997802437877272

/-! ## A304355.P16348070853165079781

`A305918(n+1)-A309785(A331562(n))`
-/

namespace A304355.P16348070853165079781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (n + 1) - A309785 (A331562 n).toNat

end

end A304355.P16348070853165079781

/-! ## A304355.P9330711538232514714

`A305918(n+1)-A079208(A230533(n+1))`
-/

namespace A304355.P9330711538232514714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (n + 1) - A079208 (A230533 (n + 1)).toNat

end

end A304355.P9330711538232514714

/-! ## A304355.P12779623519142904246

`A305918(n+1)-A004198(A230533(n+1)²)`
-/

namespace A304355.P12779623519142904246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (n + 1) - A004198 (A230533 (n + 1) ^ 2).toNat

end

end A304355.P12779623519142904246

/-!
# A304356: Primes that are the sum of three consecutive primes == 1 (mod 4).

The programs for A304356, the canonical program `A304356.P16489054736704604555` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304356 has offset 1).

The definition of A304356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304356.P16489054736704604555

`p?[A038346(n+4)-A038346(n+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A304356

/-- `p?[A038346(n+4)-A038346(n+1)]` -/
def P16489054736704604555.Spec : Prop :=
  ∀ n, P16489054736704604555.a n = A304356 (n + 1)

theorem P16489054736704604555.correct : P16489054736704604555.Spec := by
  intro n
  simp only [A304356, Nat.add_sub_cancel]

end A304356

/-! ## A304356.P11164157272990702746

`p?[A002144(n+1)+A002144(n+2)+A002144(n+3)]`
-/

namespace A304356.P11164157272990702746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + (A002144 (n + 2) + A002144 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304356.P11164157272990702746

namespace A304356

/-- `p?[A002144(n+1)+A002144(n+2)+A002144(n+3)]` -/
def P11164157272990702746.Spec : Prop :=
  ∀ n, P11164157272990702746.a n = A304356 (n + 1)

end A304356

/-! ## A304356.P14881387345160474886

`∩[A002145(n+1), A038346(n+4)-A038346(n+1)]`
-/

namespace A304356.P14881387345160474886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038346 (n + 4) - A038346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304356.P14881387345160474886

namespace A304356

/-- `∩[A002145(n+1), A038346(n+4)-A038346(n+1)]` -/
def P14881387345160474886.Spec : Prop :=
  ∀ n, (P14881387345160474886.a n : ℤ) = A304356 (n + 1)

end A304356

/-!
# A304357: Antidiagonal sums of the first quadrant of array A(k,m) = F_k(m), F_k(m) being the k-th Fibonacci polynomial evaluated at m.

The programs for A304357, there is no canonical definition to state claims against.
-/

/-! ## A304357.P11656242381846527674

`A066490(A179190(n)+n)`
-/

namespace A304357.P11656242381846527674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A179190 n + (n : ℤ)).toNat

end

end A304357.P11656242381846527674

/-! ## A304357.P17910771504942401053

`A066490(or(n, A179190(n)))`
-/

namespace A304357.P17910771504942401053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (Int.lor (n : ℤ) (A179190 n)).toNat

end

end A304357.P17910771504942401053

/-! ## A304357.P3310712570239594534

`A066490(xor(n, A179190(n)))`
-/

namespace A304357.P3310712570239594534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (Int.xor (n : ℤ) (A179190 n)).toNat

end

end A304357.P3310712570239594534

/-!
# A304358: Primes that are the sum of three consecutive primes == 3 (mod 4).

The programs for A304358, the canonical program `A304358.P9965989991105738390` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304358 has offset 1).

The definition of A304358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304358.P9965989991105738390

`p?[A038347(n+4)-A038347(n+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A304358

/-- `p?[A038347(n+4)-A038347(n+1)]` -/
def P9965989991105738390.Spec : Prop :=
  ∀ n, P9965989991105738390.a n = A304358 (n + 1)

theorem P9965989991105738390.correct : P9965989991105738390.Spec := by
  intro n
  simp only [A304358, Nat.add_sub_cancel]

end A304358

/-! ## A304358.P8623663530814842117

`A118751(4*(p?[round(8*n/7)]+1))`
-/

namespace A304358.P8623663530814842117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (4 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)).toNat

end

end A304358.P8623663530814842117

namespace A304358

/-- `A118751(4*(p?[round(8*n/7)]+1))` -/
def P8623663530814842117.Spec : Prop :=
  ∀ n, P8623663530814842117.a n = A304358 (n + 1)

end A304358

/-!
# A304360: Lexicographically earliest infinite sequence of numbers m > 1 with the property that none of the prime indices of m are in the sequence.

The programs for A304360, there is no canonical definition to state claims against.
-/

/-! ## A304360.P17284935127516460939

`A317963(n)+a(n-1)` with `a(0)=2`
-/

namespace A304360.P17284935127516460939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A317963 n + a (n - 1)

end

end A304360.P17284935127516460939

/-! ## A304360.P16168032744017389544

`∑[A317963(or(n, char[n^17]))]`
-/

namespace A304360.P16168032744017389544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 17

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (Nat.lor n (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304360.P16168032744017389544

/-! ## A304360.P17650423208131552324

`∑[A317963(A028310(n))]`
-/

namespace A304360.P17650423208131552324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304360.P17650423208131552324

/-! ## A304360.P1355665408140370384

`∑[A317963(A004273(n)+1-n)]`
-/

namespace A304360.P1355665408140370384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304360.P1355665408140370384

/-! ## A304360.P9098871709535374239

`∑[A317963(n+1)]+2-A317963(n+1)`
-/

namespace A304360.P9098871709535374239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A317963 (n + 1))

end

end A304360.P9098871709535374239

/-! ## A304360.P15322604269457006641

`∑[A317963(A123108(2*n))]`
-/

namespace A304360.P15322604269457006641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304360.P15322604269457006641

/-! ## A304360.P17060208230934567636

`A000720(p?[A000720(A317964(n+1))])`
-/

namespace A304360.P17060208230934567636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A317964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A304360.P17060208230934567636

/-! ## A304360.P1439708448643424669

`A061395(p?[A061395(A317964(n+1))])`
-/

namespace A304360.P1439708448643424669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A317964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A304360.P1439708448643424669

/-! ## A304360.P2597607639696770352

`∑[A317963(A003056(A000124(n)))]`
-/

namespace A304360.P2597607639696770352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304360.P2597607639696770352

/-! ## A304360.P2816139727358502168

`∑[A317963(A209279(A130883(n)))]`
-/

namespace A304360.P2816139727358502168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317963 (A209279 (A130883 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304360.P2816139727358502168

/-!
# A304361: Number of Dyck paths of semilength 2n having exactly n (possibly overlapping) occurrences of the consecutive pattern UDUD, where U=(1,1) and D=(1,-1).

The programs for A304361, there is no canonical definition to state claims against.
-/

/-! ## A304361.P15310438420056362261

`A094507(2*n²+1)`
-/

namespace A304361.P15310438420056362261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094507 (2 * n ^ 2 + 1)

end

end A304361.P15310438420056362261

/-! ## A304361.P5264415272613406224

`or(A094497(n), A094507(A058331(n)))`
-/

namespace A304361.P5264415272613406224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094497 n) (A094507 (A058331 n).toNat)

end

end A304361.P5264415272613406224

/-! ## A304361.P10084011637650174613

`A007318(∑[n])*A094507(A058331(n))`
-/

namespace A304361.P10084011637650174613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A094507 (A058331 n).toNat

end

end A304361.P10084011637650174613

/-! ## A304361.P16330335694328175260

`gcd(5, A140513(n))*A094507(A058331(n))`
-/

namespace A304361.P16330335694328175260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A140513 n) : ℤ) * A094507 (A058331 n).toNat

end

end A304361.P16330335694328175260

/-! ## A304361.P2704726082414632669

`A014963(6*(n+1))*A094507(A058331(n))`
-/

namespace A304361.P2704726082414632669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A094507 (A058331 n).toNat

end

end A304361.P2704726082414632669

/-! ## A304361.P8913555734811673679

`A094507(A058331(n))/A001221(A002148(n))`
-/

namespace A304361.P8913555734811673679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094507 (A058331 n).toNat : ℚ) / (A001221 (A002148 n).toNat : ℚ)

end

end A304361.P8913555734811673679

/-! ## A304361.P2629398759520429076

`A094507(A058331(n))/A001221(A031928(n+1))`
-/

namespace A304361.P2629398759520429076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094507 (A058331 n).toNat : ℚ) / (A001221 (A031928 (n + 1)).toNat : ℚ)

end

end A304361.P2629398759520429076

/-!
# A304362: a(n) = Sum_{d|n, d = 1 or not a perfect power} mu(n/d).

The programs for A304362, the canonical program `A304362.P3395535958297874023` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304362 has offset 1).

The definition of A304362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304362.P3361267160909971524

`∑{d}[n+1, A008683(#)*A132350((n+1)/#)]`
-/

namespace A304362.P3361267160909971524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A132350 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304362.P3361267160909971524

namespace A304362

/-- `∑{d}[n+1, A008683(#)*A132350((n+1)/#)]` -/
def P3361267160909971524.Spec : Prop :=
  ∀ n, P3361267160909971524.a n = A304362 (n + 1)

end A304362

/-! ## A304362.P3395535958297874023

`∑{d}[n+1, A007427(#)*A304817((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A304362

/-- `∑{d}[n+1, A007427(#)*A304817((n+1)/#)]` -/
def P3395535958297874023.Spec : Prop :=
  ∀ n, P3395535958297874023.a n = A304362 (n + 1)

theorem P3395535958297874023.correct : P3395535958297874023.Spec := by
  intro n
  simp only [A304362, Nat.add_sub_cancel]

end A304362

/-! ## A304362.P7069982732001993483

`A016426(A344328(n+1))`
-/

namespace A304362.P7069982732001993483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016426 (A344328 (n + 1)).toNat

end

end A304362.P7069982732001993483

namespace A304362

/-- `A016426(A344328(n+1))` -/
def P7069982732001993483.Spec : Prop :=
  ∀ n, P7069982732001993483.a n = A304362 (n + 1)

end A304362

/-! ## A304362.P1839126200887245367

`A016394(9*A063647(n+1))`
-/

namespace A304362.P1839126200887245367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016394 (9 * A063647 (n + 1)).toNat

end

end A304362.P1839126200887245367

namespace A304362

/-- `A016394(9*A063647(n+1))` -/
def P1839126200887245367.Spec : Prop :=
  ∀ n, P1839126200887245367.a n = A304362 (n + 1)

end A304362

/-! ## A304362.P3077392821873731042

`A054354(A074848(n+1)^4)`
-/

namespace A304362.P3077392821873731042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A074848 (n + 1) ^ 4).toNat

end

end A304362.P3077392821873731042

namespace A304362

/-- `A054354(A074848(n+1)^4)` -/
def P3077392821873731042.Spec : Prop :=
  ∀ n, P3077392821873731042.a n = A304362 (n + 1)

end A304362

/-! ## A304362.P11554642261704989890

`A008683(A149242(A074848(n+1)))`
-/

namespace A304362.P11554642261704989890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A149242 (A074848 (n + 1)).toNat).toNat

end

end A304362.P11554642261704989890

namespace A304362

/-- `A008683(A149242(A074848(n+1)))` -/
def P11554642261704989890.Spec : Prop :=
  ∀ n, P11554642261704989890.a n = A304362 (n + 1)

end A304362

/-! ## A304362.P9906011980766839851

`A185276(A244098(n+1)²*A244098(n+1))`
-/

namespace A304362.P9906011980766839851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185276 (A244098 (n + 1) ^ 2 * A244098 (n + 1)).toNat

end

end A304362.P9906011980766839851

namespace A304362

/-- `A185276(A244098(n+1)²*A244098(n+1))` -/
def P9906011980766839851.Spec : Prop :=
  ∀ n, P9906011980766839851.a n = A304362 (n + 1)

end A304362

/-! ## A304362.P11185704746510398678

`A011651(A000005((n+1)²))^A000005(n+1)`
-/

namespace A304362.P11185704746510398678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011651 (A000005 ((n + 1) ^ 2)).toNat : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A304362.P11185704746510398678

namespace A304362

/-- `A011651(A000005((n+1)²))^A000005(n+1)` -/
def P11185704746510398678.Spec : Prop :=
  ∀ n, P11185704746510398678.a n = (A304362 (n + 1) : ℚ)

end A304362

/-!
# A304363: "Station-keeping Collatz numbers": a(n) is the smallest even number whose Collatz ('3x+1') trajectory, after its initial step downward, is directed back toward its starting value at each of its next n steps.

The programs for A304363, there is no canonical definition to state claims against.
-/

/-! ## A304363.P13031681202332203594

`∑[and(A016116(n+3), A354418(3*n+2))]`
-/

namespace A304363.P13031681202332203594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016116 (n + 3)) (A354418 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304363.P13031681202332203594

/-! ## A304363.P9944712286519307265

`∑[A151668(∑[A006414(n)])]`
-/

namespace A304363.P9944712286519307265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304363.P9944712286519307265

/-! ## A304363.P8499779560233580110

`A015995(A046862(∑[n]+1)+1)`
-/

namespace A304363.P8499779560233580110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (A046862 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A304363.P8499779560233580110

/-!
# A304364: Numbers k such that A304362(k) = Sum_{d|k, d = 1 or not a perfect power} mu(k/d) = 0.

The programs for A304364, the canonical program `A304364.P10656042330179223075` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304364 has offset 1).

The definition of A304364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304364.P10656042330179223075

`eq[0, A304362(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A304364

/-- `eq[0, A304362(n+1)]+1` -/
def P10656042330179223075.Spec : Prop :=
  ∀ n, (P10656042330179223075.a n : ℤ) = A304364 (n + 1)

theorem P10656042330179223075.correct : P10656042330179223075.Spec := by
  intro n
  simp only [A304364, Nat.add_sub_cancel]

end A304364

/-! ## A304364.P8352236824825031915

`eq[0, A304362(n^floor(atan(n)))]`
-/

namespace A304364.P8352236824825031915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304364.P8352236824825031915

namespace A304364

/-- `eq[0, A304362(n^floor(atan(n)))]` -/
def P8352236824825031915.Spec : Prop :=
  ∀ n, (P8352236824825031915.a n : ℤ) = A304364 (n + 1)

end A304364

/-! ## A304364.P7009577972381052023

`eq[0, A304362(A028310(n))]`
-/

namespace A304364.P7009577972381052023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304364.P7009577972381052023

namespace A304364

/-- `eq[0, A304362(A028310(n))]` -/
def P7009577972381052023.Spec : Prop :=
  ∀ n, (P7009577972381052023.a n : ℤ) = A304364 (n + 1)

end A304364

/-! ## A304364.P14045185250916549405

`A020725(eq[0, A304362(n+1)])`
-/

namespace A304364.P14045185250916549405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304364.P14045185250916549405

namespace A304364

/-- `A020725(eq[0, A304362(n+1)])` -/
def P14045185250916549405.Spec : Prop :=
  ∀ n, P14045185250916549405.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P8474338825079945877

`eq[0, A304362(A000007(n)+n)]`
-/

namespace A304364.P8474338825079945877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304364.P8474338825079945877

namespace A304364

/-- `eq[0, A304362(A000007(n)+n)]` -/
def P8474338825079945877.Spec : Prop :=
  ∀ n, (P8474338825079945877.a n : ℤ) = A304364 (n + 1)

end A304364

/-! ## A304364.P16642299697231509008

`eq[0, A304362(gcd(n, A008706(n)))]`
-/

namespace A304364.P16642299697231509008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304364.P16642299697231509008

namespace A304364

/-- `eq[0, A304362(gcd(n, A008706(n)))]` -/
def P16642299697231509008.Spec : Prop :=
  ∀ n, (P16642299697231509008.a n : ℤ) = A304364 (n + 1)

end A304364

/-! ## A304364.P3820098800952798864

`eq[A000038(n), A304362(A008486(n)-2*n)]`
-/

namespace A304364.P3820098800952798864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304364.P3820098800952798864

namespace A304364

/-- `eq[A000038(n), A304362(A008486(n)-2*n)]` -/
def P3820098800952798864.Spec : Prop :=
  ∀ n, (P3820098800952798864.a n : ℤ) = A304364 (n + 1)

end A304364

/-! ## A304364.P8643761648580190690

`A337050(n+2)%A235258(n+1)`
-/

namespace A304364.P8643761648580190690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337050 (n + 2)) (A235258 (n + 1))

end

end A304364.P8643761648580190690

namespace A304364

/-- `A337050(n+2)%A235258(n+1)` -/
def P8643761648580190690.Spec : Prop :=
  ∀ n, P8643761648580190690.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P2941190468076679057

`A337050(A295883(A386801(n+1))+n)`
-/

namespace A304364.P2941190468076679057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A295883 (A386801 (n + 1)).toNat + (n : ℤ)).toNat

end

end A304364.P2941190468076679057

namespace A304364

/-- `A337050(A295883(A386801(n+1))+n)` -/
def P2941190468076679057.Spec : Prop :=
  ∀ n, P2941190468076679057.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P6062236142815595757

`A337050(A294931(A062503(n+1))+n+1)`
-/

namespace A304364.P6062236142815595757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A294931 (A062503 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A304364.P6062236142815595757

namespace A304364

/-- `A337050(A294931(A062503(n+1))+n+1)` -/
def P6062236142815595757.Spec : Prop :=
  ∀ n, P6062236142815595757.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P12724112495757303737

`A337050(A162511(A036540(n+1))+n+1)`
-/

namespace A304364.P12724112495757303737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A162511 (A036540 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A304364.P12724112495757303737

namespace A304364

/-- `A337050(A162511(A036540(n+1))+n+1)` -/
def P12724112495757303737.Spec : Prop :=
  ∀ n, P12724112495757303737.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P9981845566208490217

`A337050(n*A073424(∑[n])+2)`
-/

namespace A304364.P9981845566208490217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 ((n : ℤ) * A073424 (∑ j ∈ Finset.range (n + 1), f1 j) + 2).toNat

end

end A304364.P9981845566208490217

namespace A304364

/-- `A337050(n*A073424(∑[n])+2)` -/
def P9981845566208490217.Spec : Prop :=
  ∀ n, P9981845566208490217.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P4959399099857876028

`A337050(A073424(∑[n+1])+1+n)`
-/

namespace A304364.P4959399099857876028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A073424 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)).toNat

end

end A304364.P4959399099857876028

namespace A304364

/-- `A337050(A073424(∑[n+1])+1+n)` -/
def P4959399099857876028.Spec : Prop :=
  ∀ n, P4959399099857876028.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P16795699790323513766

`A337050(A278492(Δ[A000292(n)]))`
-/

namespace A304364.P16795699790323513766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A278492 (f1 (n + 1) - f1 n).toNat).toNat

end

end A304364.P16795699790323513766

namespace A304364

/-- `A337050(A278492(Δ[A000292(n)]))` -/
def P16795699790323513766.Spec : Prop :=
  ∀ n, P16795699790323513766.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P17779016395260276648

`A337050(A003056(A000217(n))+2)`
-/

namespace A304364.P17779016395260276648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A003056 (A000217 n).toNat + 2).toNat

end

end A304364.P17779016395260276648

namespace A304364

/-- `A337050(A003056(A000217(n))+2)` -/
def P17779016395260276648.Spec : Prop :=
  ∀ n, P17779016395260276648.a n = A304364 (n + 1)

end A304364

/-! ## A304364.P17529599073736450058

`A337050(A297404(A162872(n+1))+n+1)`
-/

namespace A304364.P17529599073736450058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A297404 (A162872 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A304364.P17529599073736450058

namespace A304364

/-- `A337050(A297404(A162872(n+1))+n+1)` -/
def P17529599073736450058.Spec : Prop :=
  ∀ n, P17529599073736450058.a n = A304364 (n + 1)

end A304364

/-!
# A304365: Numbers k such that Sum_{d|k, d = 1 or not a perfect power} mu(k/d) is nonzero.

The programs for A304365, the canonical program `A304365.P12944840934423433223` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304365 has offset 1).

The definition of A304365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304365.P12944840934423433223

`lt[0, A304362(n+1)²]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A304365

/-- `lt[0, A304362(n+1)²]+1` -/
def P12944840934423433223.Spec : Prop :=
  ∀ n, (P12944840934423433223.a n : ℤ) = A304365 (n + 1)

theorem P12944840934423433223.correct : P12944840934423433223.Spec := by
  intro n
  simp only [A304365, Nat.add_sub_cancel]

end A304365

/-! ## A304365.P7565920915649278581

`lt[2, lcm(3, A304362(abs(1-n)+1))]`
-/

namespace A304365.P7565920915649278581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A304362 (|1 - (n : ℤ)| + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304365.P7565920915649278581

namespace A304365

/-- `lt[2, lcm(3, A304362(abs(1-n)+1))]` -/
def P7565920915649278581.Spec : Prop :=
  ∀ n, (P7565920915649278581.a n : ℤ) = A304365 (n + 1)

end A304365

/-! ## A304365.P12189397801716558602

`eq[abs(A304362(n+1)), A304327(n+1)]+1`
-/

namespace A304365.P12189397801716558602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A304362 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304365.P12189397801716558602

namespace A304365

/-- `eq[abs(A304362(n+1)), A304327(n+1)]+1` -/
def P12189397801716558602.Spec : Prop :=
  ∀ n, (P12189397801716558602.a n : ℤ) = A304365 (n + 1)

end A304365

/-! ## A304365.P13478789218526528987

`comp[A304364(n+1)-1]+1`
-/

namespace A304365.P13478789218526528987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304364 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304365.P13478789218526528987

namespace A304365

/-- `comp[A304364(n+1)-1]+1` -/
def P13478789218526528987.Spec : Prop :=
  ∀ n, (P13478789218526528987.a n : ℤ) = A304365 (n + 1)

end A304365

/-! ## A304365.P8730785874586829357

`A038109(A028310(n))%A002061(A090195(n+1))`
-/

namespace A304365.P8730785874586829357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038109 (A028310 n).toNat) (A002061 (A090195 (n + 1)).toNat)

end

end A304365.P8730785874586829357

namespace A304365

/-- `A038109(A028310(n))%A002061(A090195(n+1))` -/
def P8730785874586829357.Spec : Prop :=
  ∀ n, P8730785874586829357.a n = A304365 (n + 1)

end A304365

/-!
# A304366: Numbers with additive persistence = 1.

The programs for A304366, there is no canonical definition to state claims against.
-/

/-! ## A304366.P5204286541533509895

`floor(A052223(n+11)/10)`
-/

namespace A304366.P5204286541533509895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052223 (n + 11) : ℚ) / 10⌋

end

end A304366.P5204286541533509895

/-! ## A304366.P13548935407739101335

`eq[1, A031286(n)]`
-/

namespace A304366.P13548935407739101335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304366.P13548935407739101335

/-! ## A304366.P14821294478387732688

`lt[A108773(n), 11*n]`
-/

namespace A304366.P14821294478387732688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A304366.P14821294478387732688

/-! ## A304366.P17870256305961015667

`lt[A260529(A007953(n)), A055642(n)]`
-/

namespace A304366.P17870256305961015667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304366.P17870256305961015667

/-! ## A304366.P1349480388920970243

`eq[9, dr(n-A053837(n))]`
-/

namespace A304366.P1349480388920970243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n : ℤ) - A053837 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304366.P1349480388920970243

/-! ## A304366.P14493226401054577530

`lt[A213217(A007953(n))², A213217(n)]`
-/

namespace A304366.P14493226401054577530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A007953 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304366.P14493226401054577530

/-! ## A304366.P14550187153268042064

`A370842(n+6)`
-/

namespace A304366.P14550187153268042064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370842 (n + 6)

end

end A304366.P14550187153268042064

/-!
# A304367: Numbers n with additive persistence = 2.

The programs for A304367, there is no canonical definition to state claims against.
-/

/-! ## A304367.P9315112416723895778

`lt[9, ∑{digits}[n, #]]`
-/

namespace A304367.P9315112416723895778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304367.P9315112416723895778

/-! ## A304367.P16181532076326920436

`A075517(n+10)`
-/

namespace A304367.P16181532076326920436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075517 (n + 10)

end

end A304367.P16181532076326920436

/-! ## A304367.P9054433198027384810

`lt[1, A031286(n)]`
-/

namespace A304367.P9054433198027384810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A304367.P9054433198027384810

/-! ## A304367.P4741074217867389429

`lt[9, A007953(n)]`
-/

namespace A304367.P4741074217867389429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A304367.P4741074217867389429

/-! ## A304367.P13902443661268594259

`lt[9, A247796(n)]`
-/

namespace A304367.P13902443661268594259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A304367.P13902443661268594259

/-! ## A304367.P15890313926359687139

`lt[18, A169805(n)]`
-/

namespace A304367.P15890313926359687139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A304367.P15890313926359687139

/-! ## A304367.P9892491903804098306

`lt[97, A118881(n)]`
-/

namespace A304367.P9892491903804098306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  97

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A304367.P9892491903804098306

/-! ## A304367.P6630020035398461306

`lt[dr(n), A180018(n)]`
-/

namespace A304367.P6630020035398461306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A304367.P6630020035398461306

/-! ## A304367.P13932179426716649125

`lt[dr(n), A180019(n)]`
-/

namespace A304367.P13932179426716649125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A304367.P13932179426716649125

/-! ## A304367.P11157725255308292826

`A059995(A166459(n+1))`
-/

namespace A304367.P11157725255308292826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A166459 (n + 1)).toNat

end

end A304367.P11157725255308292826

/-!
# A304369: Numbers k such that Sum_{d|k, d = 1 or not a perfect power} mu(k/d) is greater than 1 in absolute value.

The programs for A304369, there is no canonical definition to state claims against.
-/

/-! ## A304369.P1915379922015050987

`A391968(A367801(n+1)^A051340(2*(n+2)))`
-/

namespace A304369.P1915379922015050987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (SequenceMachineLib.roundAway ((A367801 (n + 1) : ℚ) ^ (A051340 (2 * (n + 2)) : ℤ))).toNat

end

end A304369.P1915379922015050987

/-!
# A304370: Number of function calls of the first kind required to compute ack(3,n), where ack denotes the Ackermann function.

The programs for A304370, the canonical program `A304370.P6792926145314137819` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304370 has offset 0).

The definition of A304370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304370.P6792926145314137819

`∑[(1-2^(n+2))²]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304370

/-- `∑[(1-2^(n+2))²]` -/
def P6792926145314137819.Spec : Prop :=
  ∀ n, P6792926145314137819.a n = A304370 n

theorem P6792926145314137819.correct : P6792926145314137819.Spec := by
  intro n
  simp only [A304370]

end A304370

/-! ## A304370.P3794858353735248789

`floor(∑[∑[2*a(n-1)]²])` with `a(0)=3, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A304370.P3794858353735248789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304370.P3794858353735248789

namespace A304370

/-- `floor(∑[∑[2*a(n-1)]²])` -/
def P3794858353735248789.Spec : Prop :=
  ∀ n, (P3794858353735248789.a n : ℤ) = A304370 n

end A304370

/-! ## A304370.P5838952321892957971

`a(n-1)+(2^(n+2)-1)²` with `a(0)=9`
-/

namespace A304370.P5838952321892957971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + ((2 ^ (n + 2) : ℤ) - 1) ^ 2

end

end A304370.P5838952321892957971

namespace A304370

/-- `a(n-1)+(2^(n+2)-1)²` -/
def P5838952321892957971.Spec : Prop :=
  ∀ n, P5838952321892957971.a n = A304370 n

end A304370

/-! ## A304370.P4997553179930800570

`floor(∑[∑[a(n-1)+floor(a(n-1))]²])` with `a(0)=3, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A304370.P4997553179930800570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  f2 (n - 1) + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304370.P4997553179930800570

namespace A304370

/-- `floor(∑[∑[a(n-1)+floor(a(n-1))]²])` -/
def P4997553179930800570.Spec : Prop :=
  ∀ n, (P4997553179930800570.a n : ℤ) = A304370 n

end A304370

/-! ## A304370.P14581412154799507192

`∑[A273385(n+1)]+4`
-/

namespace A304370.P14581412154799507192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A304370.P14581412154799507192

namespace A304370

/-- `∑[A273385(n+1)]+4` -/
def P14581412154799507192.Spec : Prop :=
  ∀ n, P14581412154799507192.a n = A304370 n

end A304370

/-! ## A304370.P1745277307852525664

`∑[A087291(n+2)]/2`
-/

namespace A304370.P1745277307852525664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087291 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A304370.P1745277307852525664

namespace A304370

/-- `∑[A087291(n+2)]/2` -/
def P1745277307852525664.Spec : Prop :=
  ∀ n, P1745277307852525664.a n = (A304370 n : ℚ)

end A304370

/-! ## A304370.P16033410068681193118

`8*A171477(n)+n+1`
-/

namespace A304370.P16033410068681193118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A171477 n + (n + 1 : ℤ)

end

end A304370.P16033410068681193118

namespace A304370

/-- `8*A171477(n)+n+1` -/
def P16033410068681193118.Spec : Prop :=
  ∀ n, P16033410068681193118.a n = A304370 n

end A304370

/-! ## A304370.P11525153290652625069

`∑[2*A059153(n)]+1+n`
-/

namespace A304370.P11525153290652625069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A304370.P11525153290652625069

namespace A304370

/-- `∑[2*A059153(n)]+1+n` -/
def P11525153290652625069.Spec : Prop :=
  ∀ n, P11525153290652625069.a n = A304370 n

end A304370

/-! ## A304370.P357399790987496192

`16*∑[A171476(n)]/2+n+1`
-/

namespace A304370.P357399790987496192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  16 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) + (n : ℚ) + 1

end

end A304370.P357399790987496192

namespace A304370

/-- `16*∑[A171476(n)]/2+n+1` -/
def P357399790987496192.Spec : Prop :=
  ∀ n, P357399790987496192.a n = (A304370 n : ℚ)

end A304370

/-!
# A304371: Number of function calls of the second kind required to compute ack(3,n), where ack denotes the Ackermann function.

The programs for A304371, the canonical program `A304371.P2519834864900231261` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304371 has offset 0).

The definition of A304371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304371.P2519834864900231261

`6*∑[∑[2^n*∑[2^n]]]-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304371

/-- `6*∑[∑[2^n*∑[2^n]]]-1` -/
def P2519834864900231261.Spec : Prop :=
  ∀ n, P2519834864900231261.a n = A304371 n

theorem P2519834864900231261.correct : P2519834864900231261.Spec := by
  intro n
  simp only [A304371]

end A304371

/-! ## A304371.P5678898763363011292

`A074877(n)%(A304370(n)+1)`
-/

namespace A304371.P5678898763363011292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074877 n) (A304370 n + 1)

end

end A304371.P5678898763363011292

namespace A304371

/-- `A074877(n)%(A304370(n)+1)` -/
def P5678898763363011292.Spec : Prop :=
  ∀ n, P5678898763363011292.a n = A304371 n

end A304371

/-! ## A304371.P16316303954532897144

`∑[A057427(n)+A033622(2*n+1)]`
-/

namespace A304371.P16316303954532897144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A033622 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304371.P16316303954532897144

namespace A304371

/-- `∑[A057427(n)+A033622(2*n+1)]` -/
def P16316303954532897144.Spec : Prop :=
  ∀ n, P16316303954532897144.a n = A304371 n

end A304371

/-! ## A304371.P8012174241518911493

`∑[A027556(2*(n+2))-A000007(n)]`
-/

namespace A304371.P8012174241518911493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 (2 * (n + 2)) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304371.P8012174241518911493

namespace A304371

/-- `∑[A027556(2*(n+2))-A000007(n)]` -/
def P8012174241518911493.Spec : Prop :=
  ∀ n, P8012174241518911493.a n = A304371 n

end A304371

/-! ## A304371.P13829252610053563056

`abs(∑[2*A000217(A000225(n+2)-1)]-1)`
-/

namespace A304371.P13829252610053563056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A000225 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A304371.P13829252610053563056

namespace A304371

/-- `abs(∑[2*A000217(A000225(n+2)-1)]-1)` -/
def P13829252610053563056.Spec : Prop :=
  ∀ n, P13829252610053563056.a n = A304371 n

end A304371

/-!
# A304372: Primes p such that prime(p) + p + 1 and prime(p) - p - 1 are both prime.

The programs for A304372, there is no canonical definition to state claims against.
-/

/-! ## A304372.P916126362890138127

`∩[A166562(n+1), A317909(n+1)]`
-/

namespace A304372.P916126362890138127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304372.P916126362890138127

/-! ## A304372.P12633473618165550334

`A277571(∑[A296188(n+1)!])`
-/

namespace A304372.P12633473618165550334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A296188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304372.P12633473618165550334

/-!
# A304374: a(n) = 9*n^2 + 21*n - 6 (n>=1).

The programs for A304374, the canonical program `A304374.P14836756097205139546` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304374 has offset 1).

The definition of A304374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²+21*(n+1)-6` (program `A304374.P14836756097205139546`, by `A304374.P14836756097205139546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304374.P14836756097205139546

`9*(n+1)²+21*(n+1)-6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304374

/-- `9*(n+1)²+21*(n+1)-6` -/
def P14836756097205139546.Spec : Prop :=
  ∀ n, P14836756097205139546.a n = A304374 (n + 1)

theorem P14836756097205139546.correct : P14836756097205139546.Spec := by
  intro n
  simp only [A304374, Nat.add_sub_cancel]

end A304374

/-! ## A304374.P17370024405288677425

`∑[a(n-1)+18]` with `a(0)=24, a(1)=48`
-/

namespace A304374.P17370024405288677425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24, 48] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304374.P17370024405288677425

namespace A304374

/-- `∑[a(n-1)+18]` -/
def P17370024405288677425.Spec : Prop :=
  ∀ n, (P17370024405288677425.a n : ℤ) = A304374 (n + 1)

end A304374

/-! ## A304374.P9490838344104126834

`A008588(A045943(n+1)+2*n+1)`
-/

namespace A304374.P9490838344104126834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A045943 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A304374.P9490838344104126834

namespace A304374

/-- `A008588(A045943(n+1)+2*n+1)` -/
def P9490838344104126834.Spec : Prop :=
  ∀ n, P9490838344104126834.a n = A304374 (n + 1)

end A304374

/-! ## A304374.P14320399376053334109

`A008585(A049451(n+1)+A016957(n))`
-/

namespace A304374.P14320399376053334109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A049451 (n + 1) + A016957 n).toNat

end

end A304374.P14320399376053334109

namespace A304374

/-- `A008585(A049451(n+1)+A016957(n))` -/
def P14320399376053334109.Spec : Prop :=
  ∀ n, P14320399376053334109.a n = A304374 (n + 1)

end A304374

/-! ## A304374.P18365583134039632189

`A274039(A000338(n+4))`
-/

namespace A304374.P18365583134039632189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274039 (A000338 (n + 4)).toNat

end

end A304374.P18365583134039632189

namespace A304374

/-- `A274039(A000338(n+4))` -/
def P18365583134039632189.Spec : Prop :=
  ∀ n, P18365583134039632189.a n = A304374 (n + 1)

end A304374

/-!
# A304375: a(n) = 27*n^2/2 + 45*n/2 - 12 (n>=1).

The programs for A304375, the canonical program `A304375.P15898070538892034458` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304375 has offset 1).

The definition of A304375 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A304375.anchor (n : ℕ) : (A304375 (n + 1) : ℚ) = (27 * (n + 1) ^ 2 : ℚ) / 2 + (45 * (n + 1) : ℚ) / 2 - 12` in `Proof.A304.A304375`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304375.P15898070538892034458

`27*(n+1)²/2+45*(n+1)/2-12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304375

/-- `27*(n+1)²/2+45*(n+1)/2-12` -/
def P15898070538892034458.Spec : Prop :=
  ∀ n, P15898070538892034458.a n = (A304375 (n + 1) : ℚ)

end A304375

/-! ## A304375.P576766101944276704

`3*(3*A059845(n)+8)`
-/

namespace A304375.P576766101944276704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A059845 n + 8)

end

end A304375.P576766101944276704

namespace A304375

/-- `3*(3*A059845(n)+8)` -/
def P576766101944276704.Spec : Prop :=
  ∀ n, P576766101944276704.a n = A304375 (n + 1)

end A304375

/-! ## A304375.P3691360210482757534

`3*(A062728(n+1)+4*n)`
-/

namespace A304375.P3691360210482757534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A062728 (n + 1) + (4 * n : ℤ))

end

end A304375.P3691360210482757534

namespace A304375

/-- `3*(A062728(n+1)+4*n)` -/
def P3691360210482757534.Spec : Prop :=
  ∀ n, P3691360210482757534.a n = A304375 (n + 1)

end A304375

/-! ## A304375.P16754655467162778777

`3*(A081270(n+1)-(n+8))`
-/

namespace A304375.P16754655467162778777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A081270 (n + 1) - (n + 8 : ℤ))

end

end A304375.P16754655467162778777

namespace A304375

/-- `3*(A081270(n+1)-(n+8))` -/
def P16754655467162778777.Spec : Prop :=
  ∀ n, P16754655467162778777.a n = A304375 (n + 1)

end A304375

/-! ## A304375.P17677271272746708241

`3*(A051936(3*n+5)+2)`
-/

namespace A304375.P17677271272746708241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A051936 (3 * n + 5) + 2)

end

end A304375.P17677271272746708241

namespace A304375

/-- `3*(A051936(3*n+5)+2)` -/
def P17677271272746708241.Spec : Prop :=
  ∀ n, P17677271272746708241.a n = A304375 (n + 1)

end A304375

/-! ## A304375.P11924622826235596662

`A179805(A115067(n+2))`
-/

namespace A304375.P11924622826235596662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (A115067 (n + 2)).toNat

end

end A304375.P11924622826235596662

namespace A304375

/-- `A179805(A115067(n+2))` -/
def P11924622826235596662.Spec : Prop :=
  ∀ n, P11924622826235596662.a n = A304375 (n + 1)

end A304375

/-! ## A304375.P1267867835293740664

`A179805(A140090(n+1)-(n+1))`
-/

namespace A304375.P1267867835293740664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (A140090 (n + 1) - (n + 1 : ℤ)).toNat

end

end A304375.P1267867835293740664

namespace A304375

/-- `A179805(A140090(n+1)-(n+1))` -/
def P1267867835293740664.Spec : Prop :=
  ∀ n, P1267867835293740664.a n = A304375 (n + 1)

end A304375

/-! ## A304375.P5419335902790488394

`A179805(A095794(n+2)-(n+2))`
-/

namespace A304375.P5419335902790488394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (A095794 (n + 2) - (n + 2 : ℤ)).toNat

end

end A304375.P5419335902790488394

namespace A304375

/-- `A179805(A095794(n+2)-(n+2))` -/
def P5419335902790488394.Spec : Prop :=
  ∀ n, P5419335902790488394.a n = A304375 (n + 1)

end A304375

/-!
# A304376: a(n) = 60*2^n - 48 (n>=1).

The programs for A304376, the canonical program `A304376.P8678081469846167865` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304376 has offset 1).

The definition of A304376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `60*2^(n+1)-48` (program `A304376.P8678081469846167865`, by `A304376.P8678081469846167865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304376.P8678081469846167865

`60*2^(n+1)-48`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304376

/-- `60*2^(n+1)-48` -/
def P8678081469846167865.Spec : Prop :=
  ∀ n, P8678081469846167865.a n = A304376 (n + 1)

theorem P8678081469846167865.correct : P8678081469846167865.Spec := by
  intro n
  simp only [A304376, Nat.add_sub_cancel]

end A304376

/-! ## A304376.P16669005190498041839

`2*(a(n-1)+24)` with `a(0)=72`
-/

namespace A304376.P16669005190498041839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [72] fun n a =>
  2 * (a (n - 1) + 24)

end

end A304376.P16669005190498041839

namespace A304376

/-- `2*(a(n-1)+24)` -/
def P16669005190498041839.Spec : Prop :=
  ∀ n, (P16669005190498041839.a n : ℤ) = A304376 (n + 1)

theorem P16669005190498041839.correct : P16669005190498041839.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A304376, Nat.add_sub_cancel, A304376.P16669005190498041839.a, A304376.P8678081469846167865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A304376, Nat.add_sub_cancel, A304376.P16669005190498041839.a, A304376.P8678081469846167865.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304376

/-! ## A304376.P8601421988297038491

`4*(A182462(n)-2)`
-/

namespace A304376.P8601421988297038491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A182462 n - 2)

end

end A304376.P8601421988297038491

namespace A304376

/-- `4*(A182462(n)-2)` -/
def P8601421988297038491.Spec : Prop :=
  ∀ n, P8601421988297038491.a n = A304376 (n + 1)

end A304376

/-! ## A304376.P17256012878499274709

`6*A154252(n+2)`
-/

namespace A304376.P17256012878499274709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A154252 (n + 2)

end

end A304376.P17256012878499274709

namespace A304376

/-- `6*A154252(n+2)` -/
def P17256012878499274709.Spec : Prop :=
  ∀ n, P17256012878499274709.a n = A304376 (n + 1)

end A304376

/-! ## A304376.P15532692809607484368

`floor(A305269(n+1)/2)`
-/

namespace A304376.P15532692809607484368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305269 (n + 1) : ℚ) / 2⌋

end

end A304376.P15532692809607484368

namespace A304376

/-- `floor(A305269(n+1)/2)` -/
def P15532692809607484368.Spec : Prop :=
  ∀ n, P15532692809607484368.a n = A304376 (n + 1)

end A304376

/-!
# A304377: a(n) = 102*2^n - 96 (n>=1).

The programs for A304377, the canonical program `A304377.P596650209759994536` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304377 has offset 1).

The definition of A304377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `102*2^(n+1)-96` (program `A304377.P596650209759994536`, by `A304377.P596650209759994536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304377.P596650209759994536

`102*2^(n+1)-96`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304377

/-- `102*2^(n+1)-96` -/
def P596650209759994536.Spec : Prop :=
  ∀ n, P596650209759994536.a n = A304377 (n + 1)

theorem P596650209759994536.correct : P596650209759994536.Spec := by
  intro n
  simp only [A304377, Nat.add_sub_cancel]

end A304377

/-! ## A304377.P7828895413390664939

`4*(Δ[ogf((8+8x+3x^2)/(1-4x+5x^2-2x^3))]-5)`
-/

namespace A304377.P7828895413390664939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8, 3] [1, -4, 5, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n - 5)

end

end A304377.P7828895413390664939

namespace A304377

/-- `4*(Δ[ogf((8+8x+3x^2)/(1-4x+5x^2-2x^3))]-5)` -/
def P7828895413390664939.Spec : Prop :=
  ∀ n, P7828895413390664939.a n = A304377 (n + 1)

end A304377

/-! ## A304377.P9497126255081015765

`12*(A110287(n)-8)`
-/

namespace A304377.P9497126255081015765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A110287 n - 8)

end

end A304377.P9497126255081015765

namespace A304377

/-- `12*(A110287(n)-8)` -/
def P9497126255081015765.Spec : Prop :=
  ∀ n, P9497126255081015765.a n = A304377 (n + 1)

theorem P9497126255081015765.correct : P9497126255081015765.Spec := by
  intro n
  simp only [A304377, Nat.add_sub_cancel, A304377.P9497126255081015765.a, A304377.P596650209759994536.a, A110287, A110287.P14797459151793831721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304377

/-! ## A304377.P7164501393917198246

`2*(A304830(n+1)/2+6)`
-/

namespace A304377.P7164501393917198246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A304830 (n + 1) : ℚ) / 2 + 6)

end

end A304377.P7164501393917198246

namespace A304377

/-- `2*(A304830(n+1)/2+6)` -/
def P7164501393917198246.Spec : Prop :=
  ∀ n, P7164501393917198246.a n = (A304377 (n + 1) : ℚ)

theorem P7164501393917198246.correct : P7164501393917198246.Spec := by
  intro n
  simp only [A304377, Nat.add_sub_cancel, A304377.P7164501393917198246.a, A304377.P596650209759994536.a, A304830, A304830.P13450297040326825984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304377

/-! ## A304377.P11428043214517069003

`2*(51*A000225(n+1)+3)`
-/

namespace A304377.P11428043214517069003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (51 * A000225 (n + 1) + 3)

end

end A304377.P11428043214517069003

namespace A304377

/-- `2*(51*A000225(n+1)+3)` -/
def P11428043214517069003.Spec : Prop :=
  ∀ n, P11428043214517069003.a n = A304377 (n + 1)

theorem P11428043214517069003.correct : P11428043214517069003.Spec := by
  intro n
  simp only [A304377, Nat.add_sub_cancel, A304377.P11428043214517069003.a, A304377.P596650209759994536.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304377

/-! ## A304377.P10324650349694754178

`3*(∑[A198275(n+1)+3]-2*n)`
-/

namespace A304377.P10324650349694754178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198275 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ))

end

end A304377.P10324650349694754178

namespace A304377

/-- `3*(∑[A198275(n+1)+3]-2*n)` -/
def P10324650349694754178.Spec : Prop :=
  ∀ n, P10324650349694754178.a n = A304377 (n + 1)

end A304377

/-! ## A304377.P5979892709133289743

`12*(A168616(n)+A159741(n+1)+5)`
-/

namespace A304377.P5979892709133289743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A168616 n + A159741 (n + 1) + 5)

end

end A304377.P5979892709133289743

namespace A304377

/-- `12*(A168616(n)+A159741(n+1)+5)` -/
def P5979892709133289743.Spec : Prop :=
  ∀ n, P5979892709133289743.a n = A304377 (n + 1)

theorem P5979892709133289743.correct : P5979892709133289743.Spec := by
  intro n
  simp only [A304377, Nat.add_sub_cancel, A304377.P5979892709133289743.a, A304377.P596650209759994536.a, A159741, A159741.P12178551765370653186.a, A168616, A168616.P12817012548853144141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304377

/-!
# A304378: a(n) = 4*(n - 1)*(16*n - 23) for n >= 1.

The programs for A304378, the canonical program `A304378.P6294491038691810618` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304378 has offset 1).

The definition of A304378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(16*(n+1)-23)` (program `A304378.P6294491038691810618`, by `A304378.P6294491038691810618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304378.P6294491038691810618

`4*n*(16*(n+1)-23)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304378

/-- `4*n*(16*(n+1)-23)` -/
def P6294491038691810618.Spec : Prop :=
  ∀ n, P6294491038691810618.a n = A304378 (n + 1)

theorem P6294491038691810618.correct : P6294491038691810618.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel]

end A304378

/-! ## A304378.P1764710888857497030

`A017066(n)-A135628(n)`
-/

namespace A304378.P1764710888857497030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017066 n - A135628 n

end

end A304378.P1764710888857497030

namespace A304378

/-- `A017066(n)-A135628(n)` -/
def P1764710888857497030.Spec : Prop :=
  ∀ n, P1764710888857497030.a n = A304378 (n + 1)

theorem P1764710888857497030.correct : P1764710888857497030.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P1764710888857497030.a, A304378.P6294491038691810618.a, A017066, A017066.P14577607273091826583.a, A135628, A135628.P7718528101982605374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P1387276840366094627

`A158686(n)-A161714(n)`
-/

namespace A304378.P1387276840366094627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 n - A161714 n

end

end A304378.P1387276840366094627

namespace A304378

/-- `A158686(n)-A161714(n)` -/
def P1387276840366094627.Spec : Prop :=
  ∀ n, P1387276840366094627.a n = A304378 (n + 1)

theorem P1387276840366094627.correct : P1387276840366094627.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P1387276840366094627.a, A304378.P6294491038691810618.a, A158686, A158686.P15625956396772246712.a, A161714, A161714.P2323638930024766233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P14466386586827877174

`A158070(n)-A249674(n)`
-/

namespace A304378.P14466386586827877174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158070 n - A249674 n

end

end A304378.P14466386586827877174

namespace A304378

/-- `A158070(n)-A249674(n)` -/
def P14466386586827877174.Spec : Prop :=
  ∀ n, P14466386586827877174.a n = A304378 (n + 1)

theorem P14466386586827877174.correct : P14466386586827877174.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P14466386586827877174.a, A304378.P6294491038691810618.a, A158070, A158070.P11407784734891459078.a, A249674, A249674.P13656214549216497831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P16408030455851649011

`A008590(n)²-A135628(n)`
-/

namespace A304378.P16408030455851649011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n ^ 2 - A135628 n

end

end A304378.P16408030455851649011

namespace A304378

/-- `A008590(n)²-A135628(n)` -/
def P16408030455851649011.Spec : Prop :=
  ∀ n, P16408030455851649011.a n = A304378 (n + 1)

theorem P16408030455851649011.correct : P16408030455851649011.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P16408030455851649011.a, A304378.P6294491038691810618.a, A008590, A008590.P15621076316638553644.a, A135628, A135628.P7718528101982605374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P10588965159182427000

`A186862(n+1)+A033586(n)`
-/

namespace A304378.P10588965159182427000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186862 (n + 1) + A033586 n

end

end A304378.P10588965159182427000

namespace A304378

/-- `A186862(n+1)+A033586(n)` -/
def P10588965159182427000.Spec : Prop :=
  ∀ n, P10588965159182427000.a n = A304378 (n + 1)

theorem P10588965159182427000.correct : P10588965159182427000.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P10588965159182427000.a, A304378.P6294491038691810618.a, A033586, A033586.P18185911393067431697.a, A186862, A186862.P7750391475606102554.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P5609358734401297749

`A195323(n)+2*A153797(n)`
-/

namespace A304378.P5609358734401297749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195323 n + 2 * A153797 n

end

end A304378.P5609358734401297749

namespace A304378

/-- `A195323(n)+2*A153797(n)` -/
def P5609358734401297749.Spec : Prop :=
  ∀ n, P5609358734401297749.a n = A304378 (n + 1)

theorem P5609358734401297749.correct : P5609358734401297749.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P5609358734401297749.a, A304378.P6294491038691810618.a, A153797, A153797.P1020360065334955704.a, A195323, A195323.P14881551293216845039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P6288722141781377934

`A017066(n)-(A305548(n)+n)`
-/

namespace A304378.P6288722141781377934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017066 n - (A305548 n + (n : ℤ))

end

end A304378.P6288722141781377934

namespace A304378

/-- `A017066(n)-(A305548(n)+n)` -/
def P6288722141781377934.Spec : Prop :=
  ∀ n, P6288722141781377934.a n = A304378 (n + 1)

theorem P6288722141781377934.correct : P6288722141781377934.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P6288722141781377934.a, A304378.P6294491038691810618.a, A017066, A017066.P14577607273091826583.a, A305548, A305548.P17403744554045376548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P5785539631176787627

`A017066(n)+A044102(n)-A152691(n)`
-/

namespace A304378.P5785539631176787627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017066 n + (A044102 n - A152691 n)

end

end A304378.P5785539631176787627

namespace A304378

/-- `A017066(n)+A044102(n)-A152691(n)` -/
def P5785539631176787627.Spec : Prop :=
  ∀ n, P5785539631176787627.a n = A304378 (n + 1)

theorem P5785539631176787627.correct : P5785539631176787627.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P5785539631176787627.a, A304378.P6294491038691810618.a, A017066, A017066.P14577607273091826583.a, A044102, A044102.P13317920450440868156.a, A152691, A152691.P6353139268516617885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P3234005005224081006

`A244082(n)+A244082(n)-A135628(n)`
-/

namespace A304378.P3234005005224081006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244082 n + (A244082 n - A135628 n)

end

end A304378.P3234005005224081006

namespace A304378

/-- `A244082(n)+A244082(n)-A135628(n)` -/
def P3234005005224081006.Spec : Prop :=
  ∀ n, P3234005005224081006.a n = A304378 (n + 1)

theorem P3234005005224081006.correct : P3234005005224081006.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P3234005005224081006.a, A304378.P6294491038691810618.a, A135628, A135628.P7718528101982605374.a, A244082, A244082.P4230128900204354164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P2273491464690228408

`(A008588(n)-A008596(n))²-A135628(n)`
-/

namespace A304378.P2273491464690228408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008588 n - A008596 n) ^ 2 - A135628 n

end

end A304378.P2273491464690228408

namespace A304378

/-- `(A008588(n)-A008596(n))²-A135628(n)` -/
def P2273491464690228408.Spec : Prop :=
  ∀ n, P2273491464690228408.a n = A304378 (n + 1)

theorem P2273491464690228408.correct : P2273491464690228408.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P2273491464690228408.a, A304378.P6294491038691810618.a, A008588, A008588.P12386450284809463491.a, A008596, A008596.P5483684624845691048.a, A135628, A135628.P7718528101982605374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P7774815542801632756

`A098923(2*n)+2*n²+n`
-/

namespace A304378.P7774815542801632756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098923 (2 * n) + (2 * n ^ 2 + n : ℤ)

end

end A304378.P7774815542801632756

namespace A304378

/-- `A098923(2*n)+2*n²+n` -/
def P7774815542801632756.Spec : Prop :=
  ∀ n, P7774815542801632756.a n = A304378 (n + 1)

end A304378

/-! ## A304378.P9324116785654781517

`lcm(2, 2*A051870(2*n))`
-/

namespace A304378.P9324116785654781517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * A051870 (2 * n))

end

end A304378.P9324116785654781517

namespace A304378

/-- `lcm(2, 2*A051870(2*n))` -/
def P9324116785654781517.Spec : Prop :=
  ∀ n, (P9324116785654781517.a n : ℤ) = A304378 (n + 1)

end A304378

/-! ## A304378.P11380014117580119349

`A282854(2*n)+2*n`
-/

namespace A304378.P11380014117580119349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282854 (2 * n) + (2 * n : ℤ)

end

end A304378.P11380014117580119349

namespace A304378

/-- `A282854(2*n)+2*n` -/
def P11380014117580119349.Spec : Prop :=
  ∀ n, P11380014117580119349.a n = A304378 (n + 1)

theorem P11380014117580119349.correct : P11380014117580119349.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P11380014117580119349.a, A304378.P6294491038691810618.a, A282854, A282854.P10479849519924556517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P16478129716505981615

`A051876(2*n)+A051624(2*n)`
-/

namespace A304378.P16478129716505981615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051876 (2 * n) + A051624 (2 * n)

end

end A304378.P16478129716505981615

namespace A304378

/-- `A051876(2*n)+A051624(2*n)` -/
def P16478129716505981615.Spec : Prop :=
  ∀ n, P16478129716505981615.a n = A304378 (n + 1)

theorem P16478129716505981615.correct : P16478129716505981615.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P16478129716505981615.a, A304378.P6294491038691810618.a, A051624, A051624.P2353499915457724243.a, A051876, A051876.P7910470835603757038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P15680702603218423753

`A051871(2*n)+A051869(2*n)`
-/

namespace A304378.P15680702603218423753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 (2 * n) + A051869 (2 * n)

end

end A304378.P15680702603218423753

namespace A304378

/-- `A051871(2*n)+A051869(2*n)` -/
def P15680702603218423753.Spec : Prop :=
  ∀ n, P15680702603218423753.a n = A304378 (n + 1)

end A304378

/-! ## A304378.P168264871156155587

`A051873(2*n)+A051867(2*n)`
-/

namespace A304378.P168264871156155587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 (2 * n) + A051867 (2 * n)

end

end A304378.P168264871156155587

namespace A304378

/-- `A051873(2*n)+A051867(2*n)` -/
def P168264871156155587.Spec : Prop :=
  ∀ n, P168264871156155587.a n = A304378 (n + 1)

end A304378

/-! ## A304378.P9508041679040756826

`A051874(2*n)+A051866(2*n)`
-/

namespace A304378.P9508041679040756826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 (2 * n) + A051866 (2 * n)

end

end A304378.P9508041679040756826

namespace A304378

/-- `A051874(2*n)+A051866(2*n)` -/
def P9508041679040756826.Spec : Prop :=
  ∀ n, P9508041679040756826.a n = A304378 (n + 1)

theorem P9508041679040756826.correct : P9508041679040756826.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P9508041679040756826.a, A304378.P6294491038691810618.a, A051866, A051866.P7037994286834974710.a, A051874, A051874.P13000992848419538759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-! ## A304378.P4483226906364835553

`A051875(2*n)+A051865(2*n)`
-/

namespace A304378.P4483226906364835553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 (2 * n) + A051865 (2 * n)

end

end A304378.P4483226906364835553

namespace A304378

/-- `A051875(2*n)+A051865(2*n)` -/
def P4483226906364835553.Spec : Prop :=
  ∀ n, P4483226906364835553.a n = A304378 (n + 1)

end A304378

/-! ## A304378.P15664650729513726195

`A254474(2*n)+A000384(2*n)`
-/

namespace A304378.P15664650729513726195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254474 (2 * n) + A000384 (2 * n)

end

end A304378.P15664650729513726195

namespace A304378

/-- `A254474(2*n)+A000384(2*n)` -/
def P15664650729513726195.Spec : Prop :=
  ∀ n, P15664650729513726195.a n = A304378 (n + 1)

theorem P15664650729513726195.correct : P15664650729513726195.Spec := by
  intro n
  simp only [A304378, Nat.add_sub_cancel, A304378.P15664650729513726195.a, A304378.P6294491038691810618.a, A000384, A000384.P5392390561999168282.a, A254474, A254474.P15703138997127178640.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304378

/-!
# A304379: a(n) = 256n^2 - 828n + 656 (n>=1).

The programs for A304379, the canonical program `A304379.P12266641314641236055` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304379 has offset 1).

The definition of A304379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `256*(n+1)²-828*(n+1)+656` (program `A304379.P12266641314641236055`, by `A304379.P12266641314641236055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304379.P12266641314641236055

`256*(n+1)²-828*(n+1)+656`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304379

/-- `256*(n+1)²-828*(n+1)+656` -/
def P12266641314641236055.Spec : Prop :=
  ∀ n, P12266641314641236055.a n = A304379 (n + 1)

theorem P12266641314641236055.correct : P12266641314641236055.Spec := by
  intro n
  simp only [A304379, Nat.add_sub_cancel]

end A304379

/-!
# A304380: a(n) = 36*n^2 - 4*n (n>=1).

The programs for A304380, the canonical program `A304380.P4205740382854217177` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304380 has offset 1).

The definition of A304380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²-4*(n+1)` (program `A304380.P4205740382854217177`, by `A304380.P4205740382854217177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304380.P4205740382854217177

`36*(n+1)²-4*(n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304380

/-- `36*(n+1)²-4*(n+1)` -/
def P4205740382854217177.Spec : Prop :=
  ∀ n, P4205740382854217177.a n = A304380 (n + 1)

theorem P4205740382854217177.correct : P4205740382854217177.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel]

end A304380

/-! ## A304380.P7712315986614286183

`∑[a(n-1)+72]` with `a(0)=32`
-/

namespace A304380.P7712315986614286183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f1 =>
  f1 (n - 1) + 72

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304380.P7712315986614286183

namespace A304380

/-- `∑[a(n-1)+72]` -/
def P7712315986614286183.Spec : Prop :=
  ∀ n, (P7712315986614286183.a n : ℤ) = A304380 (n + 1)

end A304380

/-! ## A304380.P3900290240801531347

`ceil((sqrt(a(n-1))+6)²)` with `a(0)=32`
-/

namespace A304380.P3900290240801531347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 6) ^ 2⌉

end

end A304380.P3900290240801531347

namespace A304380

/-- `ceil((sqrt(a(n-1))+6)²)` -/
def P3900290240801531347.Spec : Prop :=
  ∀ n, P3900290240801531347.a n = A304380 (n + 1)

end A304380

/-! ## A304380.P15289081132118020920

`8*∑[ogf((4+5x)/(1-2x+x^2))]`
-/

namespace A304380.P15289081132118020920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304380.P15289081132118020920

namespace A304380

/-- `8*∑[ogf((4+5x)/(1-2x+x^2))]` -/
def P15289081132118020920.Spec : Prop :=
  ∀ n, P15289081132118020920.a n = A304380 (n + 1)

end A304380

/-! ## A304380.P5005275218403423065

`8*∑[A017209(n)]`
-/

namespace A304380.P5005275218403423065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304380.P5005275218403423065

namespace A304380

/-- `8*∑[A017209(n)]` -/
def P5005275218403423065.Spec : Prop :=
  ∀ n, P5005275218403423065.a n = A304380 (n + 1)

end A304380

/-! ## A304380.P16368429775358374995

`2*A178574(n+1)`
-/

namespace A304380.P16368429775358374995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178574 (n + 1)

end

end A304380.P16368429775358374995

namespace A304380

/-- `2*A178574(n+1)` -/
def P16368429775358374995.Spec : Prop :=
  ∀ n, P16368429775358374995.a n = A304380 (n + 1)

theorem P16368429775358374995.correct : P16368429775358374995.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P16368429775358374995.a, A304380.P4205740382854217177.a, A178574, A178574.P3315712600721893133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P6137346553885643312

`4*A154516(n+1)`
-/

namespace A304380.P6137346553885643312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A154516 (n + 1)

end

end A304380.P6137346553885643312

namespace A304380

/-- `4*A154516(n+1)` -/
def P6137346553885643312.Spec : Prop :=
  ∀ n, P6137346553885643312.a n = A304380 (n + 1)

theorem P6137346553885643312.correct : P6137346553885643312.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P6137346553885643312.a, A304380.P4205740382854217177.a, A154516, A154516.P16195019807221984260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P1556974144351163531

`(n+1)*(A350055(n)-3)`
-/

namespace A304380.P1556974144351163531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A350055 n - 3)

end

end A304380.P1556974144351163531

namespace A304380

/-- `(n+1)*(A350055(n)-3)` -/
def P1556974144351163531.Spec : Prop :=
  ∀ n, P1556974144351163531.a n = A304380 (n + 1)

theorem P1556974144351163531.correct : P1556974144351163531.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P1556974144351163531.a, A304380.P4205740382854217177.a, A350055, A350055.P14338216184358329555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P2819827226476188924

`2*(n+1)*A350522(n)`
-/

namespace A304380.P2819827226476188924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A350522 n)

end

end A304380.P2819827226476188924

namespace A304380

/-- `2*(n+1)*A350522(n)` -/
def P2819827226476188924.Spec : Prop :=
  ∀ n, P2819827226476188924.a n = A304380 (n + 1)

theorem P2819827226476188924.correct : P2819827226476188924.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P2819827226476188924.a, A304380.P4205740382854217177.a, A350522, A350522.P13009567044850805638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P3674071243238806238

`4*(A136016(n+1)-n)`
-/

namespace A304380.P3674071243238806238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A136016 (n + 1) - (n : ℤ))

end

end A304380.P3674071243238806238

namespace A304380

/-- `4*(A136016(n+1)-n)` -/
def P3674071243238806238.Spec : Prop :=
  ∀ n, P3674071243238806238.a n = A304380 (n + 1)

theorem P3674071243238806238.correct : P3674071243238806238.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P3674071243238806238.a, A304380.P4205740382854217177.a, A136016, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P13563479987795497110

`(n+1)*(A209876(n+1)+2)`
-/

namespace A304380.P13563479987795497110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A209876 (n + 1) + 2)

end

end A304380.P13563479987795497110

namespace A304380

/-- `(n+1)*(A209876(n+1)+2)` -/
def P13563479987795497110.Spec : Prop :=
  ∀ n, P13563479987795497110.a n = A304380 (n + 1)

theorem P13563479987795497110.correct : P13563479987795497110.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P13563479987795497110.a, A304380.P4205740382854217177.a, A209876, A209876.P240243196379828847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P5670490019943243020

`(n+1)*(A158065(n+1)-5)`
-/

namespace A304380.P5670490019943243020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158065 (n + 1) - 5)

end

end A304380.P5670490019943243020

namespace A304380

/-- `(n+1)*(A158065(n+1)-5)` -/
def P5670490019943243020.Spec : Prop :=
  ∀ n, P5670490019943243020.a n = A304380 (n + 1)

theorem P5670490019943243020.correct : P5670490019943243020.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P5670490019943243020.a, A304380.P4205740382854217177.a, A158065, A158065.P14397513440059553790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P8508352149544921841

`A017378(n)%A017150(n)`
-/

namespace A304380.P8508352149544921841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017378 n) (A017150 n)

end

end A304380.P8508352149544921841

namespace A304380

/-- `A017378(n)%A017150(n)` -/
def P8508352149544921841.Spec : Prop :=
  ∀ n, P8508352149544921841.a n = A304380 (n + 1)

end A304380

/-! ## A304380.P13547992766419644933

`A156635(n+1)%A157324(n+1)`
-/

namespace A304380.P13547992766419644933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156635 (n + 1)) (A157324 (n + 1))

end

end A304380.P13547992766419644933

namespace A304380

/-- `A156635(n+1)%A157324(n+1)` -/
def P13547992766419644933.Spec : Prop :=
  ∀ n, P13547992766419644933.a n = A304380 (n + 1)

end A304380

/-! ## A304380.P348648884049715158

`A158132(n+1)%A158064(n+1)`
-/

namespace A304380.P348648884049715158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158132 (n + 1)) (A158064 (n + 1))

end

end A304380.P348648884049715158

namespace A304380

/-- `A158132(n+1)%A158064(n+1)` -/
def P348648884049715158.Spec : Prop :=
  ∀ n, P348648884049715158.a n = A304380 (n + 1)

end A304380

/-! ## A304380.P11486630290478628253

`Δ[4*A027903(n)]`
-/

namespace A304380.P11486630290478628253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A027903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304380.P11486630290478628253

namespace A304380

/-- `Δ[4*A027903(n)]` -/
def P11486630290478628253.Spec : Prop :=
  ∀ n, P11486630290478628253.a n = A304380 (n + 1)

theorem P11486630290478628253.correct : P11486630290478628253.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P11486630290478628253.f1, A304380.P11486630290478628253.a, A304380.P4205740382854217177.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P18168863182149601697

`8*A022266(n+1)`
-/

namespace A304380.P18168863182149601697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A022266 (n + 1)

end

end A304380.P18168863182149601697

namespace A304380

/-- `8*A022266(n+1)` -/
def P18168863182149601697.Spec : Prop :=
  ∀ n, P18168863182149601697.a n = A304380 (n + 1)

end A304380

/-! ## A304380.P88677725632909485

`Δ[n*A153794(n+1)]`
-/

namespace A304380.P88677725632909485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A153794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304380.P88677725632909485

namespace A304380

/-- `Δ[n*A153794(n+1)]` -/
def P88677725632909485.Spec : Prop :=
  ∀ n, P88677725632909485.a n = A304380 (n + 1)

theorem P88677725632909485.correct : P88677725632909485.Spec := by
  intro n
  simp only [A304380, Nat.add_sub_cancel, A304380.P88677725632909485.f1, A304380.P88677725632909485.a, A304380.P4205740382854217177.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304380

/-! ## A304380.P5613356898600886231

`2*A219395(2*(n+1))`
-/

namespace A304380.P5613356898600886231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219395 (2 * (n + 1))

end

end A304380.P5613356898600886231

namespace A304380

/-- `2*A219395(2*(n+1))` -/
def P5613356898600886231.Spec : Prop :=
  ∀ n, P5613356898600886231.a n = A304380 (n + 1)

end A304380

/-!
# A304381: a(n) = 54*n^2 - 26*n + 4 (n>=1).

The programs for A304381, the canonical program `A304381.P8101329019813229722` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304381 has offset 1).

The definition of A304381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `54*(n+1)²-26*(n+1)+4` (program `A304381.P8101329019813229722`, by `A304381.P8101329019813229722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304381.P8101329019813229722

`54*(n+1)²-26*(n+1)+4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304381

/-- `54*(n+1)²-26*(n+1)+4` -/
def P8101329019813229722.Spec : Prop :=
  ∀ n, P8101329019813229722.a n = A304381 (n + 1)

theorem P8101329019813229722.correct : P8101329019813229722.Spec := by
  intro n
  simp only [A304381, Nat.add_sub_cancel]

end A304381

/-! ## A304381.P16507321589599652450

`2*(A014105(n)+A016897(n)²)`
-/

namespace A304381.P16507321589599652450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014105 n + A016897 n ^ 2)

end

end A304381.P16507321589599652450

namespace A304381

/-- `2*(A014105(n)+A016897(n)²)` -/
def P16507321589599652450.Spec : Prop :=
  ∀ n, P16507321589599652450.a n = A304381 (n + 1)

theorem P16507321589599652450.correct : P16507321589599652450.Spec := by
  intro n
  simp only [A304381, Nat.add_sub_cancel, A304381.P16507321589599652450.a, A304381.P8101329019813229722.a, A014105, A014105.P182524374866796289.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304381

/-! ## A304381.P7125167686544433344

`∑[2*A188861(2*n+1)]`
-/

namespace A304381.P7125167686544433344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188861 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304381.P7125167686544433344

namespace A304381

/-- `∑[2*A188861(2*n+1)]` -/
def P7125167686544433344.Spec : Prop :=
  ∀ n, P7125167686544433344.a n = A304381 (n + 1)

end A304381

/-!
# A304383: a(n) = 36*2^n - 5 (n>=1).

The programs for A304383, the canonical program `A304383.P1711746693045815644` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304383 has offset 1).

The definition of A304383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*2^(n+1)-5` (program `A304383.P1711746693045815644`, by `A304383.P1711746693045815644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304383.P1711746693045815644

`36*2^(n+1)-5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304383

/-- `36*2^(n+1)-5` -/
def P1711746693045815644.Spec : Prop :=
  ∀ n, P1711746693045815644.a n = A304383 (n + 1)

theorem P1711746693045815644.correct : P1711746693045815644.Spec := by
  intro n
  simp only [A304383, Nat.add_sub_cancel]

end A304383

/-! ## A304383.P7241717785279800633

`xor(1, A089143(n+3))`
-/

namespace A304383.P7241717785279800633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A089143 (n + 3))

end

end A304383.P7241717785279800633

namespace A304383

/-- `xor(1, A089143(n+3))` -/
def P7241717785279800633.Spec : Prop :=
  ∀ n, P7241717785279800633.a n = A304383 (n + 1)

end A304383

/-! ## A304383.P6767022261887581902

`or(3, A048491(n+3))`
-/

namespace A304383.P6767022261887581902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A048491 (n + 3))

end

end A304383.P6767022261887581902

namespace A304383

/-- `or(3, A048491(n+3))` -/
def P6767022261887581902.Spec : Prop :=
  ∀ n, P6767022261887581902.a n = A304383 (n + 1)

end A304383

/-! ## A304383.P5887032082462806652

`or(2, A154251(n+4))`
-/

namespace A304383.P5887032082462806652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A154251 (n + 4))

end

end A304383.P5887032082462806652

namespace A304383

/-- `or(2, A154251(n+4))` -/
def P5887032082462806652.Spec : Prop :=
  ∀ n, P5887032082462806652.a n = A304383 (n + 1)

end A304383

/-! ## A304383.P14096477941280258813

`xor(4, A052996(n+5))`
-/

namespace A304383.P14096477941280258813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A052996 (n + 5))

end

end A304383.P14096477941280258813

namespace A304383

/-- `xor(4, A052996(n+5))` -/
def P14096477941280258813.Spec : Prop :=
  ∀ n, P14096477941280258813.a n = A304383 (n + 1)

end A304383

/-! ## A304383.P16180743500329937806

`abs(5-24*A007283(n))`
-/

namespace A304383.P16180743500329937806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - 24 * A007283 n|

end

end A304383.P16180743500329937806

namespace A304383

/-- `abs(5-24*A007283(n))` -/
def P16180743500329937806.Spec : Prop :=
  ∀ n, P16180743500329937806.a n = A304383 (n + 1)

end A304383

/-! ## A304383.P595996628683146004

`A304388(n+1)/4`
-/

namespace A304383.P595996628683146004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304388 (n + 1) : ℚ) / 4

end

end A304383.P595996628683146004

namespace A304383

/-- `A304388(n+1)/4` -/
def P595996628683146004.Spec : Prop :=
  ∀ n, P595996628683146004.a n = (A304383 (n + 1) : ℚ)

theorem P595996628683146004.correct : P595996628683146004.Spec := by
  intro n
  simp only [A304383, Nat.add_sub_cancel, A304383.P595996628683146004.a, A304383.P1711746693045815644.a, A304388, A304388.P18219038282061644339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304383

/-! ## A304383.P2388205548269325019

`A304384(n+1)%A250655(n+1)`
-/

namespace A304383.P2388205548269325019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304384 (n + 1)) (A250655 (n + 1))

end

end A304383.P2388205548269325019

namespace A304383

/-- `A304384(n+1)%A250655(n+1)` -/
def P2388205548269325019.Spec : Prop :=
  ∀ n, P2388205548269325019.a n = A304383 (n + 1)

end A304383

/-!
# A304384: a(n) = 168*2^n - 26 (n>=1).

The programs for A304384, the canonical program `A304384.P9370559012266231474` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304384 has offset 1).

The definition of A304384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `168*2^(n+1)-26` (program `A304384.P9370559012266231474`, by `A304384.P9370559012266231474.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304384.P9370559012266231474

`168*2^(n+1)-26`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304384

/-- `168*2^(n+1)-26` -/
def P9370559012266231474.Spec : Prop :=
  ∀ n, P9370559012266231474.a n = A304384 (n + 1)

theorem P9370559012266231474.correct : P9370559012266231474.Spec := by
  intro n
  simp only [A304384, Nat.add_sub_cancel]

end A304384

/-! ## A304384.P3746978403388850776

`2*(A182465(n+2)+1)`
-/

namespace A304384.P3746978403388850776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182465 (n + 2) + 1)

end

end A304384.P3746978403388850776

namespace A304384

/-- `2*(A182465(n+2)+1)` -/
def P3746978403388850776.Spec : Prop :=
  ∀ n, P3746978403388850776.a n = A304384 (n + 1)

end A304384

/-! ## A304384.P9073996467746224897

`2*(A305158(n+3)+2)`
-/

namespace A304384.P9073996467746224897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A305158 (n + 3) + 2)

end

end A304384.P9073996467746224897

namespace A304384

/-- `2*(A305158(n+3)+2)` -/
def P9073996467746224897.Spec : Prop :=
  ∀ n, P9073996467746224897.a n = A304384 (n + 1)

theorem P9073996467746224897.correct : P9073996467746224897.Spec := by
  intro n
  simp only [A304384, Nat.add_sub_cancel, A304384.P9073996467746224897.a, A304384.P9370559012266231474.a, A305158, A305158.P8022986441186121754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304384

/-! ## A304384.P9444906779115475920

`2/3*A304509(n+3)`
-/

namespace A304384.P9444906779115475920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A304509 (n + 3) : ℚ)

end

end A304384.P9444906779115475920

namespace A304384

/-- `2/3*A304509(n+3)` -/
def P9444906779115475920.Spec : Prop :=
  ∀ n, P9444906779115475920.a n = (A304384 (n + 1) : ℚ)

theorem P9444906779115475920.correct : P9444906779115475920.Spec := by
  intro n
  simp only [A304384, Nat.add_sub_cancel, A304384.P9444906779115475920.a, A304384.P9370559012266231474.a, A304509, A304509.P14670427177461202283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304384

/-! ## A304384.P2549836212278635643

`2*(A305064(n+2)+7)`
-/

namespace A304384.P2549836212278635643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A305064 (n + 2) + 7)

end

end A304384.P2549836212278635643

namespace A304384

/-- `2*(A305064(n+2)+7)` -/
def P2549836212278635643.Spec : Prop :=
  ∀ n, P2549836212278635643.a n = A304384 (n + 1)

theorem P2549836212278635643.correct : P2549836212278635643.Spec := by
  intro n
  simp only [A304384, Nat.add_sub_cancel, A304384.P2549836212278635643.a, A304384.P9370559012266231474.a, A305064, A305064.P8398010822638105161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304384

/-!
# A304385: a(n) = 192*2^n - 31 (n>=1).

The programs for A304385, the canonical program `A304385.P1283017639190879664` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304385 has offset 1).

The definition of A304385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `192*2^(n+1)-31` (program `A304385.P1283017639190879664`, by `A304385.P1283017639190879664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304385.P1283017639190879664

`192*2^(n+1)-31`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304385

/-- `192*2^(n+1)-31` -/
def P1283017639190879664.Spec : Prop :=
  ∀ n, P1283017639190879664.a n = A304385 (n + 1)

theorem P1283017639190879664.correct : P1283017639190879664.Spec := by
  intro n
  simp only [A304385, Nat.add_sub_cancel]

end A304385

/-! ## A304385.P4883357611789370170

`A151983(A081808(n+2))`
-/

namespace A304385.P4883357611789370170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (A081808 (n + 2)).toNat

end

end A304385.P4883357611789370170

namespace A304385

/-- `A151983(A081808(n+2))` -/
def P4883357611789370170.Spec : Prop :=
  ∀ n, P4883357611789370170.a n = A304385 (n + 1)

end A304385

/-! ## A304385.P13180600821000307417

`A063099(A304383(n+1))`
-/

namespace A304385.P13180600821000307417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (A304383 (n + 1)).toNat

end

end A304385.P13180600821000307417

namespace A304385

/-- `A063099(A304383(n+1))` -/
def P13180600821000307417.Spec : Prop :=
  ∀ n, P13180600821000307417.a n = A304385 (n + 1)

end A304385

/-!
# A304386: Number of unlabeled hypertrees (connected antichains with no cycles) spanning up to n vertices and allowing singleton edges.

The programs for A304386, there is no canonical definition to state claims against.
-/

/-! ## A304386.P14743266947769389260

`∑[A134959(n)]-ceil(sin(n)²)`
-/

namespace A304386.P14743266947769389260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A304386.P14743266947769389260

/-! ## A304386.P3082217078944923387

`A057428(n)+∑[A134959(n)]`
-/

namespace A304386.P3082217078944923387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304386.P3082217078944923387

/-! ## A304386.P7047160714351052068

`∑[A134959(A159075(n)+n)]`
-/

namespace A304386.P7047160714351052068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 (A159075 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304386.P7047160714351052068

/-! ## A304386.P9336205669104861356

`∑[A134959(n)]-A057427(n)`
-/

namespace A304386.P9336205669104861356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A304386.P9336205669104861356

/-! ## A304386.P4576929571664255015

`∑[A134959(n-A063524(n))]`
-/

namespace A304386.P4576929571664255015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 ((n : ℤ) - A063524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304386.P4576929571664255015

/-! ## A304386.P11827803519963483807

`∑[A134959(n)]-A178334(n)`
-/

namespace A304386.P11827803519963483807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178334 n

end

end A304386.P11827803519963483807

/-! ## A304386.P11437333317009707576

`∑[A134959(n*A157928(n))]`
-/

namespace A304386.P11437333317009707576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 ((n : ℤ) * A157928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304386.P11437333317009707576

/-! ## A304386.P9545533993795634587

`∑[A134959(n-A159075(n)²)]`
-/

namespace A304386.P9545533993795634587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 ((n : ℤ) - A159075 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304386.P9545533993795634587

/-! ## A304386.P3972049818331918888

`∑[A134959(n)]-A157928(n+1)`
-/

namespace A304386.P3972049818331918888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A157928 (n + 1)

end

end A304386.P3972049818331918888

/-! ## A304386.P7404366288988822557

`∑[A134959(n)]-A019427(2*n)`
-/

namespace A304386.P7404366288988822557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A019427 (2 * n)

end

end A304386.P7404366288988822557

/-!
# A304387: a(n) = 27*2^n - 5.

The programs for A304387, the canonical program `A304387.P6746975513748740161` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304387 has offset 0).

The definition of A304387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*2^n-5` (program `A304387.P6746975513748740161`, by `A304387.P6746975513748740161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304387.P6746975513748740161

`27*2^n-5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304387

/-- `27*2^n-5` -/
def P6746975513748740161.Spec : Prop :=
  ∀ n, P6746975513748740161.a n = A304387 n

theorem P6746975513748740161.correct : P6746975513748740161.Spec := by
  intro n
  simp only [A304387]

end A304387

/-! ## A304387.P12222319596936480686

`ogf((22-17x)/(1-3x+2x^2))`
-/

namespace A304387.P12222319596936480686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, -17] [1, -3, 2] n

end

end A304387.P12222319596936480686

namespace A304387

/-- `ogf((22-17x)/(1-3x+2x^2))` -/
def P12222319596936480686.Spec : Prop :=
  ∀ n, P12222319596936480686.a n = A304387 n

end A304387

/-! ## A304387.P8864259634355798540

`∑[2*a(n-1)]` with `a(0)=22, a(1)=27`
-/

namespace A304387.P8864259634355798540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22, 27] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304387.P8864259634355798540

namespace A304387

/-- `∑[2*a(n-1)]` -/
def P8864259634355798540.Spec : Prop :=
  ∀ n, (P8864259634355798540.a n : ℤ) = A304387 n

end A304387

/-! ## A304387.P11655072189823713499

`abs(A153973(n+1)-A195744(n))`
-/

namespace A304387.P11655072189823713499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153973 (n + 1) - A195744 n|

end

end A304387.P11655072189823713499

namespace A304387

/-- `abs(A153973(n+1)-A195744(n))` -/
def P11655072189823713499.Spec : Prop :=
  ∀ n, P11655072189823713499.a n = A304387 n

end A304387

/-! ## A304387.P15002672525625875552

`(A182467(n)+8)/2`
-/

namespace A304387.P15002672525625875552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182467 n + 8 : ℚ) / 2

end

end A304387.P15002672525625875552

namespace A304387

/-- `(A182467(n)+8)/2` -/
def P15002672525625875552.Spec : Prop :=
  ∀ n, P15002672525625875552.a n = (A304387 n : ℚ)

end A304387

/-! ## A304387.P3872725219467142696

`(A250653(n+1)-5)/2`
-/

namespace A304387.P3872725219467142696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250653 (n + 1) - 5 : ℚ) / 2

end

end A304387.P3872725219467142696

namespace A304387

/-- `(A250653(n+1)-5)/2` -/
def P3872725219467142696.Spec : Prop :=
  ∀ n, P3872725219467142696.a n = (A304387 n : ℚ)

theorem P3872725219467142696.correct : P3872725219467142696.Spec := by
  intro n
  simp only [A304387, Nat.add_sub_cancel, A304387.P3872725219467142696.a, A304387.P6746975513748740161.a, A250653, A250653.P4457879166048305078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304387

/-! ## A304387.P5042074574019205125

`A250653(n+1)%A175806(n)`
-/

namespace A304387.P5042074574019205125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250653 (n + 1)) (A175806 n)

end

end A304387.P5042074574019205125

namespace A304387

/-- `A250653(n+1)%A175806(n)` -/
def P5042074574019205125.Spec : Prop :=
  ∀ n, P5042074574019205125.a n = A304387 n

end A304387

/-! ## A304387.P1595402501918373159

`(A182462(n)+Δ[A182461(n)])/2`
-/

namespace A304387.P1595402501918373159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182461 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182462 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A304387.P1595402501918373159

namespace A304387

/-- `(A182462(n)+Δ[A182461(n)])/2` -/
def P1595402501918373159.Spec : Prop :=
  ∀ n, P1595402501918373159.a n = (A304387 n : ℚ)

end A304387

/-! ## A304387.P4315077128642735744

`Δ[A182467(n)/2-A016885(n)]`
-/

namespace A304387.P4315077128642735744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182467 n : ℚ) / 2 - (A016885 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304387.P4315077128642735744

namespace A304387

/-- `Δ[A182467(n)/2-A016885(n)]` -/
def P4315077128642735744.Spec : Prop :=
  ∀ n, P4315077128642735744.a n = (A304387 n : ℚ)

end A304387

/-! ## A304387.P14057860906050812757

`Δ[Δ[A223028(2*n+1)]/A060546(2*(n+1))]`
-/

namespace A304387.P14057860906050812757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223028 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A060546 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304387.P14057860906050812757

namespace A304387

/-- `Δ[Δ[A223028(2*n+1)]/A060546(2*(n+1))]` -/
def P14057860906050812757.Spec : Prop :=
  ∀ n, P14057860906050812757.a n = (A304387 n : ℚ)

end A304387

/-! ## A304387.P17572915263432763816

`Δ[Δ[A223468(2*n+1)]/A060546(2*(n+1))]`
-/

namespace A304387.P17572915263432763816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223468 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A060546 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304387.P17572915263432763816

namespace A304387

/-- `Δ[Δ[A223468(2*n+1)]/A060546(2*(n+1))]` -/
def P17572915263432763816.Spec : Prop :=
  ∀ n, P17572915263432763816.a n = (A304387 n : ℚ)

end A304387

/-!
# A304388: a(n) = 144*2^n - 20 (n>=1).

The programs for A304388, the canonical program `A304388.P18219038282061644339` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304388 has offset 1).

The definition of A304388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*2^(n+1)-20` (program `A304388.P18219038282061644339`, by `A304388.P18219038282061644339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304388.P18219038282061644339

`144*2^(n+1)-20`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304388

/-- `144*2^(n+1)-20` -/
def P18219038282061644339.Spec : Prop :=
  ∀ n, P18219038282061644339.a n = A304388 (n + 1)

theorem P18219038282061644339.correct : P18219038282061644339.Spec := by
  intro n
  simp only [A304388, Nat.add_sub_cancel]

end A304388

/-! ## A304388.P2119732490614856298

`4*A304383(n+1)`
-/

namespace A304388.P2119732490614856298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A304383 (n + 1)

end

end A304388.P2119732490614856298

namespace A304388

/-- `4*A304383(n+1)` -/
def P2119732490614856298.Spec : Prop :=
  ∀ n, P2119732490614856298.a n = A304388 (n + 1)

theorem P2119732490614856298.correct : P2119732490614856298.Spec := by
  intro n
  simp only [A304388, Nat.add_sub_cancel, A304388.P2119732490614856298.a, A304388.P18219038282061644339.a, A304383, A304383.P1711746693045815644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304388

/-! ## A304388.P1650344300948670338

`xor(21, A154251(n+6))`
-/

namespace A304388.P1650344300948670338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 21 (A154251 (n + 6))

end

end A304388.P1650344300948670338

namespace A304388

/-- `xor(21, A154251(n+6))` -/
def P1650344300948670338.Spec : Prop :=
  ∀ n, P1650344300948670338.a n = A304388 (n + 1)

end A304388

/-! ## A304388.P3446339374833121853

`A063140(A081808(n+1))`
-/

namespace A304388.P3446339374833121853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063140 (A081808 (n + 1)).toNat

end

end A304388.P3446339374833121853

namespace A304388

/-- `A063140(A081808(n+1))` -/
def P3446339374833121853.Spec : Prop :=
  ∀ n, P3446339374833121853.a n = A304388 (n + 1)

end A304388

/-! ## A304388.P7101808390252082016

`A063140(A091629(n+2))`
-/

namespace A304388.P7101808390252082016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063140 (A091629 (n + 2)).toNat

end

end A304388.P7101808390252082016

namespace A304388

/-- `A063140(A091629(n+2))` -/
def P7101808390252082016.Spec : Prop :=
  ∀ n, P7101808390252082016.a n = A304388 (n + 1)

end A304388

/-!
# A304389: a(n) = 126*2^n - 22 (n>=1).

The programs for A304389, the canonical program `A304389.P7037128690451072849` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304389 has offset 1).

The definition of A304389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `126*2^(n+1)-22` (program `A304389.P7037128690451072849`, by `A304389.P7037128690451072849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304389.P7037128690451072849

`126*2^(n+1)-22`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304389

/-- `126*2^(n+1)-22` -/
def P7037128690451072849.Spec : Prop :=
  ∀ n, P7037128690451072849.a n = A304389 (n + 1)

theorem P7037128690451072849.correct : P7037128690451072849.Spec := by
  intro n
  simp only [A304389, Nat.add_sub_cancel]

end A304389

/-! ## A304389.P1119825744618808220

`2*(A196657(n)-12)`
-/

namespace A304389.P1119825744618808220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A196657 n - 12)

end

end A304389.P1119825744618808220

namespace A304389

/-- `2*(A196657(n)-12)` -/
def P1119825744618808220.Spec : Prop :=
  ∀ n, P1119825744618808220.a n = A304389 (n + 1)

theorem P1119825744618808220.correct : P1119825744618808220.Spec := by
  intro n
  simp only [A304389, Nat.add_sub_cancel, A304389.P1119825744618808220.a, A304389.P7037128690451072849.a, A196657, A196657.P10101108946596074271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304389

/-! ## A304389.P9207808194837458424

`(A304509(n+3)-5)/2`
-/

namespace A304389.P9207808194837458424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304509 (n + 3) - 5 : ℚ) / 2

end

end A304389.P9207808194837458424

namespace A304389

/-- `(A304509(n+3)-5)/2` -/
def P9207808194837458424.Spec : Prop :=
  ∀ n, P9207808194837458424.a n = (A304389 (n + 1) : ℚ)

theorem P9207808194837458424.correct : P9207808194837458424.Spec := by
  intro n
  simp only [A304389, Nat.add_sub_cancel, A304389.P9207808194837458424.a, A304389.P7037128690451072849.a, A304509, A304509.P14670427177461202283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304389

/-! ## A304389.P16307633670801559313

`A063166(A005010(n))`
-/

namespace A304389.P16307633670801559313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063166 (A005010 n).toNat

end

end A304389.P16307633670801559313

namespace A304389

/-- `A063166(A005010(n))` -/
def P16307633670801559313.Spec : Prop :=
  ∀ n, P16307633670801559313.a n = A304389 (n + 1)

end A304389

/-! ## A304389.P15856930562115671313

`A063166(A116453(n+2))`
-/

namespace A304389.P15856930562115671313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063166 (A116453 (n + 2)).toNat

end

end A304389.P15856930562115671313

namespace A304389

/-- `A063166(A116453(n+2))` -/
def P15856930562115671313.Spec : Prop :=
  ∀ n, P15856930562115671313.a n = A304389 (n + 1)

end A304389

/-!
# A304390: Prime numbers p such that p squared + (p reversed) squared is also prime.

The programs for A304390, there is no canonical definition to state claims against.
-/

/-! ## A304390.P4527926477909189669

`p?[A069207(n+1)]`
-/

namespace A304390.P4527926477909189669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304390.P4527926477909189669

/-! ## A304390.P9553042546694582037

`∩[A069207(n+1), A355430(n+1)]`
-/

namespace A304390.P9553042546694582037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P9553042546694582037

/-! ## A304390.P4395587920465652905

`p?[record[A069207(A052938(n))]]`
-/

namespace A304390.P4395587920465652905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304390.P4395587920465652905

/-! ## A304390.P12442133171129010086

`p?[record[A069207(A126759(n))]]`
-/

namespace A304390.P12442133171129010086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304390.P12442133171129010086

/-! ## A304390.P15695444640942936944

`filter[A069207(n+1), A010051(#)]`
-/

namespace A304390.P15695444640942936944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A304390.P15695444640942936944

/-! ## A304390.P7370432177410800816

`∩[A000040(n+1), A069207(n+1)]`
-/

namespace A304390.P7370432177410800816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P7370432177410800816

/-! ## A304390.P16424242669609086286

`∩[A004139(n+1), A069207(n+1)]`
-/

namespace A304390.P16424242669609086286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P16424242669609086286

/-! ## A304390.P9186319183669924635

`∩[A045319(n+1), A069207(n+1)]`
-/

namespace A304390.P9186319183669924635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P9186319183669924635

/-! ## A304390.P16228389084566928964

`∩[A045344(n+1), A069207(n+1)]`
-/

namespace A304390.P16228389084566928964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P16228389084566928964

/-! ## A304390.P12056548657946774414

`∩[A051948(n+1), A069207(n+1)]`
-/

namespace A304390.P12056548657946774414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P12056548657946774414

/-! ## A304390.P5333690860978577809

`∩[A053813(n+1), A069207(n+1)]`
-/

namespace A304390.P5333690860978577809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P5333690860978577809

/-! ## A304390.P5898621190499975385

`∩[A054723(n+1), A069207(n+1)]`
-/

namespace A304390.P5898621190499975385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P5898621190499975385

/-! ## A304390.P4884285594514868731

`∩[A064728(n+1), A069207(n+1)]`
-/

namespace A304390.P4884285594514868731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P4884285594514868731

/-! ## A304390.P17666471512958164914

`∩[A065091(n+1), A069207(n+1)]`
-/

namespace A304390.P17666471512958164914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P17666471512958164914

/-! ## A304390.P3543178067112388144

`∩[A065376(n+1), A069207(n+1)]`
-/

namespace A304390.P3543178067112388144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P3543178067112388144

/-! ## A304390.P5846626500693867040

`∩[A065396(n+1), A069207(n+1)]`
-/

namespace A304390.P5846626500693867040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P5846626500693867040

/-! ## A304390.P2996704048350428387

`∩[A069207(n+1), A070159(n+1)]`
-/

namespace A304390.P2996704048350428387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P2996704048350428387

/-! ## A304390.P10215871989963057955

`∩[A069207(n+1), A070957(n+1)]`
-/

namespace A304390.P10215871989963057955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P10215871989963057955

/-! ## A304390.P7621894783110471268

`∩[A075763(n+1), A069207(n+1)]`
-/

namespace A304390.P7621894783110471268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304390.P7621894783110471268

/-!
# A304391: Numbers that are the number of permutations of a set of balls of at least three distinct colors.

The programs for A304391, there is no canonical definition to state claims against.
-/

/-! ## A304391.P2398535210569279871

`A045619(A087051(n)+3)`
-/

namespace A304391.P2398535210569279871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (A087051 n + 3).toNat

end

end A304391.P2398535210569279871

/-! ## A304391.P10059371642028339282

`A004738(A045619(n+3)²)`
-/

namespace A304391.P10059371642028339282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A045619 (n + 3) ^ 2).toNat

end

end A304391.P10059371642028339282

/-! ## A304391.P89605585614787397

`A045619(A351870(n+1)+2)`
-/

namespace A304391.P89605585614787397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (A351870 (n + 1) + 2).toNat

end

end A304391.P89605585614787397

/-! ## A304391.P7444541044061536637

`A045619(A227549(n+1)+3)`
-/

namespace A304391.P7444541044061536637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (A227549 (n + 1) + 3).toNat

end

end A304391.P7444541044061536637

/-!
# A304394: O.g.f. A(x) satisfies: [x^n] exp(n^4 * x) * (1 - x*A(x)) = 0 for n > 0.

The programs for A304394, there is no canonical definition to state claims against.
-/

/-! ## A304394.P9211650453081715162

`(n+1)²²*A304396(n)`
-/

namespace A304394.P9211650453081715162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) * A304396 n

end

end A304394.P9211650453081715162

/-! ## A304394.P2691673491308759997

`record[A342202(A027379(n))]`
-/

namespace A304394.P2691673491308759997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342202 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304394.P2691673491308759997

/-!
# A304395: O.g.f. A(x) satisfies: [x^n] exp( n^5 * x ) * (1 - x*A(x)) = 0 for n > 0.

The programs for A304395, there is no canonical definition to state claims against.
-/

/-! ## A304395.P2917907918282893359

`record[A342202(abs(∑[n+2]-3))]`
-/

namespace A304395.P2917907918282893359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342202 |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304395.P2917907918282893359

/-!
# A304396: a(n) = A304394(n) / (n+1)^4.

The programs for A304396, there is no canonical definition to state claims against.
-/

/-! ## A304396.P10668933373624821985

`A304394(n)/(n+1)^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304396.P10668933373624821985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304394 n : ℚ) / ((n + 1) ^ 4 : ℚ)

end

end A304396.P10668933373624821985

/-!
# A304397: a(n) = A304395(n) / (n+1)^5.

The programs for A304397, there is no canonical definition to state claims against.
-/

/-! ## A304397.P12208185550858205484

`A304395(n)/(n+1)^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304397.P12208185550858205484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304395 n : ℚ) / ((n + 1) ^ 5 : ℚ)

end

end A304397.P12208185550858205484

