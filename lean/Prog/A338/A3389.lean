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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A338900: Difference between the two prime indices of the n-th squarefree semiprime.

The programs for A338900, the canonical program `A338900.P8694422187481578425` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338900 has offset 1).

The definition of A338900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1087 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338900.P16256967115915623293

`A241917(A006881(n+1))`
-/

namespace A338900.P16256967115915623293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A006881 (n + 1)).toNat

end

end A338900.P16256967115915623293

namespace A338900

/-- `A241917(A006881(n+1))` -/
def P16256967115915623293.Spec : Prop :=
  ∀ n, P16256967115915623293.a n = A338900 (n + 1)

end A338900

/-! ## A338900.P8694422187481578425

`A241919(A161918(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A338900

/-- `A241919(A161918(n+2))` -/
def P8694422187481578425.Spec : Prop :=
  ∀ n, P8694422187481578425.a n = A338900 (n + 1)

theorem P8694422187481578425.correct : P8694422187481578425.Spec := by
  intro n
  simp only [A338900, Nat.add_sub_cancel]

end A338900

/-! ## A338900.P11891333388663238198

`A243055(eq[2, A066882(n)])`
-/

namespace A338900.P11891333388663238198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338900.P11891333388663238198

namespace A338900

/-- `A243055(eq[2, A066882(n)])` -/
def P11891333388663238198.Spec : Prop :=
  ∀ n, P11891333388663238198.a n = A338900 (n + 1)

end A338900

/-! ## A338900.P6572470702307253546

`A286470(eq[2, A066882(n)])`
-/

namespace A338900.P6572470702307253546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338900.P6572470702307253546

namespace A338900

/-- `A286470(eq[2, A066882(n)])` -/
def P6572470702307253546.Spec : Prop :=
  ∀ n, P6572470702307253546.a n = A338900 (n + 1)

end A338900

/-! ## A338900.P16800326438014908031

`A241919(eq[3, A074206(n)])`
-/

namespace A338900.P16800326438014908031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338900.P16800326438014908031

namespace A338900

/-- `A241919(eq[3, A074206(n)])` -/
def P16800326438014908031.Spec : Prop :=
  ∀ n, P16800326438014908031.a n = A338900 (n + 1)

end A338900

/-! ## A338900.P12072618029737710044

`A243055(eq[3, A074206(n)])`
-/

namespace A338900.P12072618029737710044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338900.P12072618029737710044

namespace A338900

/-- `A243055(eq[3, A074206(n)])` -/
def P12072618029737710044.Spec : Prop :=
  ∀ n, P12072618029737710044.a n = A338900 (n + 1)

end A338900

/-! ## A338900.P12618534655563475980

`A243056(eq[3, A074206(n)])`
-/

namespace A338900.P12618534655563475980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338900.P12618534655563475980

namespace A338900

/-- `A243056(eq[3, A074206(n)])` -/
def P12618534655563475980.Spec : Prop :=
  ∀ n, P12618534655563475980.a n = A338900 (n + 1)

end A338900

/-! ## A338900.P15496801458828108600

`A297173(eq[3, A074206(n)])`
-/

namespace A338900.P15496801458828108600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338900.P15496801458828108600

namespace A338900

/-- `A297173(eq[3, A074206(n)])` -/
def P15496801458828108600.Spec : Prop :=
  ∀ n, P15496801458828108600.a n = A338900 (n + 1)

end A338900

/-! ## A338900.P4593627222013828056

`A270652(n+1)-A338899(2*n+1)`
-/

namespace A338900.P4593627222013828056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270652 (n + 1) - A338899 (2 * n + 1)

end

end A338900.P4593627222013828056

namespace A338900

/-- `A270652(n+1)-A338899(2*n+1)` -/
def P4593627222013828056.Spec : Prop :=
  ∀ n, P4593627222013828056.a n = A338900 (n + 1)

end A338900

/-! ## A338900.P9513205186426291051

`A338899(2*(n+1))-A338899(2*n+1)`
-/

namespace A338900.P9513205186426291051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (2 * (n + 1)) - A338899 (2 * n + 1)

end

end A338900.P9513205186426291051

namespace A338900

/-- `A338899(2*(n+1))-A338899(2*n+1)` -/
def P9513205186426291051.Spec : Prop :=
  ∀ n, P9513205186426291051.a n = A338900 (n + 1)

end A338900

/-!
# A338901: Position of the first appearance of prime(n) as a factor in the list of squarefree semiprimes.

The programs for A338901, there is no canonical definition to state claims against.
-/

/-! ## A338901.P5620823984762570015

`A064839(A073582(n+1))`
-/

namespace A338901.P5620823984762570015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A073582 (n + 1)).toNat

end

end A338901.P5620823984762570015

/-! ## A338901.P3223234326749135229

`A064839(A100484(n+1))`
-/

namespace A338901.P3223234326749135229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A100484 (n + 1)).toNat

end

end A338901.P3223234326749135229

/-! ## A338901.P770347182025960643

`A064839(A001747(n+2))`
-/

namespace A338901.P770347182025960643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A001747 (n + 2)).toNat

end

end A338901.P770347182025960643

/-! ## A338901.P6710361694554378805

`A064839(A077017(n+2))`
-/

namespace A338901.P6710361694554378805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A077017 (n + 2)).toNat

end

end A338901.P6710361694554378805

/-! ## A338901.P1772611056831776762

`A072613(A074845(n+2))`
-/

namespace A338901.P1772611056831776762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A074845 (n + 2)).toNat

end

end A338901.P1772611056831776762

/-! ## A338901.P7250639734063655666

`A064839(A161344(n+2))`
-/

namespace A338901.P7250639734063655666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A161344 (n + 2)).toNat

end

end A338901.P7250639734063655666

/-! ## A338901.P5733382588095082095

`A064839(sqrt(A069262(n+1)))`
-/

namespace A338901.P5733382588095082095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (SequenceMachineLib.roundAway (Real.sqrt (A069262 (n + 1) : ℝ))).toNat

end

end A338901.P5733382588095082095

/-! ## A338901.P14456692524090673145

`A064839(2*A000040(n+1))`
-/

namespace A338901.P14456692524090673145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (2 * A000040 (n + 1)).toNat

end

end A338901.P14456692524090673145

/-! ## A338901.P7648068744750391333

`A335286(2*A000040(n+1))`
-/

namespace A338901.P7648068744750391333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (2 * A000040 (n + 1)).toNat

end

end A338901.P7648068744750391333

/-! ## A338901.P10668059226564076198

`A064839(record[2*A006530(n+2)])`
-/

namespace A338901.P10668059226564076198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338901.P10668059226564076198

/-! ## A338901.P8084727625876688221

`A335286(record[2*A006530(n+2)])`
-/

namespace A338901.P8084727625876688221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338901.P8084727625876688221

/-! ## A338901.P14090173008579006787

`A335286(2*A219606(2*(n+1)))`
-/

namespace A338901.P14090173008579006787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (2 * A219606 (2 * (n + 1))).toNat

end

end A338901.P14090173008579006787

/-! ## A338901.P5368211217242159338

`A064839(A000040(n+1)+A000040(n+1))`
-/

namespace A338901.P5368211217242159338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A338901.P5368211217242159338

/-! ## A338901.P3206764457289398099

`A335286(A000040(n+1)+A000040(n+1))`
-/

namespace A338901.P3206764457289398099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A338901.P3206764457289398099

/-! ## A338901.P2463079482321810555

`A393286(∑[abs(1-n)])`
-/

namespace A338901.P2463079482321810555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393286 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338901.P2463079482321810555

/-!
# A338902: Number of integer partitions of the n-th semiprime into semiprimes.

The programs for A338902, there is no canonical definition to state claims against.
-/

/-! ## A338902.P6834032709060054860

`A101048(A001358(n+1))`
-/

namespace A338902.P6834032709060054860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (A001358 (n + 1)).toNat

end

end A338902.P6834032709060054860

/-! ## A338902.P5816486463938734832

`A101048(A176540(n+2))`
-/

namespace A338902.P5816486463938734832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (A176540 (n + 2)).toNat

end

end A338902.P5816486463938734832

/-! ## A338902.P893423160977084757

`A101048(eq[2, A105700(n)])`
-/

namespace A338902.P893423160977084757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338902.P893423160977084757

/-! ## A338902.P13330284581239358826

`A101048(eq[2, A166974(n)])`
-/

namespace A338902.P13330284581239358826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338902.P13330284581239358826

/-! ## A338902.P10833876749749659868

`A101048(sqrt(A074985(n+1)))`
-/

namespace A338902.P10833876749749659868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A338902.P10833876749749659868

/-! ## A338902.P12638926378210624398

`A101048(A088707(n+1)-1)`
-/

namespace A338902.P12638926378210624398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (A088707 (n + 1) - 1).toNat

end

end A338902.P12638926378210624398

/-! ## A338902.P12194272305396942588

`A101048(eq[2, A001222(n+1)]+1)`
-/

namespace A338902.P12194272305396942588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A338902.P12194272305396942588

/-! ## A338902.P8191890308572696432

`A101048(record[n/a(A001222(n))])` with `a(0)=4, a(1)=2`
-/

namespace A338902.P8191890308572696432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A338902.P8191890308572696432

/-! ## A338902.P13885341925023194533

`A101048(eq[4, a(A001222(n))²])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A338902.P13885341925023194533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338902.P13885341925023194533

/-! ## A338902.P13499707366956693795

`A101048(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=2`
-/

namespace A338902.P13499707366956693795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338902.P13499707366956693795

/-!
# A338903: Number of integer partitions of the n-th squarefree semiprime into squarefree semiprimes.

The programs for A338903, there is no canonical definition to state claims against.
-/

/-! ## A338903.P17732421142735703174

`A002100(A006881(n+1))`
-/

namespace A338903.P17732421142735703174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (A006881 (n + 1)).toNat

end

end A338903.P17732421142735703174

/-! ## A338903.P11808735396463062323

`A002100(A030229(n+2))`
-/

namespace A338903.P11808735396463062323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (A030229 (n + 2)).toNat

end

end A338903.P11808735396463062323

/-! ## A338903.P1328460950424093871

`A002100(eq[2, A066882(n)])`
-/

namespace A338903.P1328460950424093871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338903.P1328460950424093871

/-! ## A338903.P12443350162306336406

`A002100(eq[3, A074206(n)])`
-/

namespace A338903.P12443350162306336406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338903.P12443350162306336406

/-! ## A338903.P1623503267537674850

`A002100(eq[3, A104725(n)])`
-/

namespace A338903.P1623503267537674850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338903.P1623503267537674850

/-! ## A338903.P4210227924544062523

`A002100(eq[A008683(n+1)+1, A001222(n+1)]+1)`
-/

namespace A338903.P4210227924544062523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A338903.P4210227924544062523

/-! ## A338903.P7133424255724485932

`A002100(eq[A001222(n+1)+2, A000005(n+1)]+1)`
-/

namespace A338903.P7133424255724485932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A338903.P7133424255724485932

/-! ## A338903.P10343192291958809613

`A002100(eq[A001221(n+1)/2, A008683(n+1)]+1)`
-/

namespace A338903.P10343192291958809613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1)

end

end A338903.P10343192291958809613

/-!
# A338904: Irregular triangle read by rows where row n lists all semiprimes whose prime indices sum to n.

The programs for A338904, there is no canonical definition to state claims against.
-/

/-! ## A338904.P17236230654260315667

`filter[A215366(n), A064911(#)]`
-/

namespace A338904.P17236230654260315667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A338904.P17236230654260315667

/-! ## A338904.P5660860402515252028

`A215366(eq[2, A001222(A215366(n))])`
-/

namespace A338904.P5660860402515252028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338904.P5660860402515252028

/-! ## A338904.P14154350956236618592

`A215366(eq[2, A317141(A215366(n))])`
-/

namespace A338904.P14154350956236618592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338904.P14154350956236618592

/-! ## A338904.P17992626974573264371

`A215366(eq[2, A001055(A215366(n))])`
-/

namespace A338904.P17992626974573264371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338904.P17992626974573264371

/-! ## A338904.P12737606421531974604

`A333483(eq[2, A036043(n)])`
-/

namespace A338904.P12737606421531974604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338904.P12737606421531974604

/-!
# A338905: Irregular triangle read by rows where row n lists all squarefree semiprimes with prime indices summing to n.

The programs for A338905, there is no canonical definition to state claims against.
-/

/-! ## A338905.P17449223802671616473

`A215366(eq[2, A319193(n)])`
-/

namespace A338905.P17449223802671616473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338905.P17449223802671616473

/-! ## A338905.P3754779168831242001

`filter[A246867(n), A064911(#)]`
-/

namespace A338905.P3754779168831242001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A338905.P3754779168831242001

/-! ## A338905.P14079178106901339203

`filter[A246867(n), A215480(#)]`
-/

namespace A338905.P14079178106901339203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A338905.P14079178106901339203

/-! ## A338905.P4012425699403660845

`filter[A215366(n), A280710(#)]`
-/

namespace A338905.P4012425699403660845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A338905.P4012425699403660845

/-! ## A338905.P15502822807570650729

`filter[A246867(n), A280710(#)]`
-/

namespace A338905.P15502822807570650729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A338905.P15502822807570650729

/-! ## A338905.P822192682382606565

`filter[A246867(n+1), A354927(#)]`
-/

namespace A338905.P822192682382606565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A338905.P822192682382606565

/-! ## A338905.P15579427675157429599

`A246867(eq[2, A001221(A246867(n))])`
-/

namespace A338905.P15579427675157429599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A246867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338905.P15579427675157429599

/-! ## A338905.P15565358735660127283

`A246867(eq[2, A001222(A246867(n))])`
-/

namespace A338905.P15565358735660127283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338905.P15565358735660127283

/-! ## A338905.P17807348474794990018

`A246867(eq[2, A064547(A246867(n))])`
-/

namespace A338905.P17807348474794990018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A246867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338905.P17807348474794990018

/-! ## A338905.P15603281471453827001

`A246867(eq[3, A066637(A246867(n))])`
-/

namespace A338905.P15603281471453827001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (A246867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338905.P15603281471453827001

/-!
# A338906: Semiprimes whose prime indices sum to an even number.

The programs for A338906, there is no canonical definition to state claims against.
-/

/-! ## A338906.P7563675050593359382

`eq[1, A353333(n+2)]+2`
-/

namespace A338906.P7563675050593359382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A338906.P7563675050593359382

/-! ## A338906.P2131047406404558661

`∪[p?[round(8*n/7)]², A338908(n+1)]`
-/

namespace A338906.P2131047406404558661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A338906.P2131047406404558661

/-! ## A338906.P192021411774914394

`record[A066048(A329609(n+2))]`
-/

namespace A338906.P192021411774914394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A329609 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338906.P192021411774914394

/-! ## A338906.P13583451921290812508

`eq[1, A353333(A233583(n+1))]`
-/

namespace A338906.P13583451921290812508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338906.P13583451921290812508

/-! ## A338906.P18198703676769065348

`filter[A001358(n+1), A353269(#)]`
-/

namespace A338906.P18198703676769065348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A338906.P18198703676769065348

/-! ## A338906.P9223111921434187779

`filter[A001358(n+1), A353331(#)]`
-/

namespace A338906.P9223111921434187779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A338906.P9223111921434187779

/-! ## A338906.P17766654162148735022

`filter[A001358(n+1), A359835(#)]`
-/

namespace A338906.P17766654162148735022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359835 (f1 j).toNat = 1) n)

end

end A338906.P17766654162148735022

/-! ## A338906.P11558714590783978015

`filter[A001358(n+1), A359836(#)]`
-/

namespace A338906.P11558714590783978015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359836 (f1 j).toNat = 1) n)

end

end A338906.P11558714590783978015

/-! ## A338906.P14753818839048212825

`filter[A300061(n+1), A064911(#)]`
-/

namespace A338906.P14753818839048212825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A338906.P14753818839048212825

/-! ## A338906.P14522880598401189324

`filter[A300789(n+1), A064911(#)]`
-/

namespace A338906.P14522880598401189324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A338906.P14522880598401189324

/-!
# A338907: Semiprimes whose prime indices sum to an odd number.

The programs for A338907, there is no canonical definition to state claims against.
-/

/-! ## A338907.P12101089632495660325

`eq[1, A353373(n+2)]+2`
-/

namespace A338907.P12101089632495660325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353373 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A338907.P12101089632495660325

/-! ## A338907.P114614737268309976

`eq[2, A353333(A008458(n))]`
-/

namespace A338907.P114614737268309976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338907.P114614737268309976

/-! ## A338907.P8876744706810657787

`eq[4, A353359(A028310(n))]`
-/

namespace A338907.P8876744706810657787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338907.P8876744706810657787

/-! ## A338907.P10925592247742687425

`eq[1, A353373(A233583(n+1))]`
-/

namespace A338907.P10925592247742687425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353373 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338907.P10925592247742687425

/-! ## A338907.P18217069185127678245

`filter[A001358(n+1), A353350(#)]`
-/

namespace A338907.P18217069185127678245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A338907.P18217069185127678245

/-! ## A338907.P17324115251913175137

`filter[A001358(n+1), A353370(#)]`
-/

namespace A338907.P17324115251913175137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353370 (f1 j).toNat = 1) n)

end

end A338907.P17324115251913175137

/-! ## A338907.P14026081365289356270

`filter[A006881(n+1), A353350(#)]`
-/

namespace A338907.P14026081365289356270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A338907.P14026081365289356270

/-! ## A338907.P18184619993553809940

`filter[A006881(n+1), A353370(#)]`
-/

namespace A338907.P18184619993553809940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353370 (f1 j).toNat = 1) n)

end

end A338907.P18184619993553809940

/-! ## A338907.P15605738009529804505

`filter[A006881(n+1), A353380(#)]`
-/

namespace A338907.P15605738009529804505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353380 (f1 j).toNat = 1) n)

end

end A338907.P15605738009529804505

/-! ## A338907.P14128697356850460782

`filter[A001358(n+1), A359826(#)]`
-/

namespace A338907.P14128697356850460782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A338907.P14128697356850460782

/-!
# A338908: Squarefree semiprimes whose prime indices sum to an even number.

The programs for A338908, there is no canonical definition to state claims against.
-/

/-! ## A338908.P5886380611531676638

`eq[2, A353415(n+1)]+1`
-/

namespace A338908.P5886380611531676638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338908.P5886380611531676638

/-! ## A338908.P14584717054637654624

`eq[2, A353469(n+2)]+2`
-/

namespace A338908.P14584717054637654624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353469 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A338908.P14584717054637654624

/-! ## A338908.P15230280726905539875

`eq[2, A353415(A028310(n))]`
-/

namespace A338908.P15230280726905539875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353415 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338908.P15230280726905539875

/-! ## A338908.P11279670524120460433

`eq[2, A353469(A233583(n+1))]`
-/

namespace A338908.P11279670524120460433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353469 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338908.P11279670524120460433

/-! ## A338908.P3819844320616464705

`filter[A006881(n+1), A353269(#)]`
-/

namespace A338908.P3819844320616464705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A338908.P3819844320616464705

/-! ## A338908.P12776273543253103220

`filter[A006881(n+1), A353331(#)]`
-/

namespace A338908.P12776273543253103220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A338908.P12776273543253103220

/-! ## A338908.P17512533802220310515

`filter[A006881(n+1), A359835(#)]`
-/

namespace A338908.P17512533802220310515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359835 (f1 j).toNat = 1) n)

end

end A338908.P17512533802220310515

/-! ## A338908.P2331023010804323301

`filter[A006881(n+1), A359836(#)]`
-/

namespace A338908.P2331023010804323301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359836 (f1 j).toNat = 1) n)

end

end A338908.P2331023010804323301

/-! ## A338908.P208290549937952385

`filter[A030513(n+1), A353269(#)]`
-/

namespace A338908.P208290549937952385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A338908.P208290549937952385

/-! ## A338908.P7488629329449508626

`filter[A030513(n+1), A353331(#)]`
-/

namespace A338908.P7488629329449508626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A338908.P7488629329449508626

/-!
# A338909: Numbers of the form prime(x) * prime(y) where x and y have a common divisor > 1.

The programs for A338909, there is no canonical definition to state claims against.
-/

/-! ## A338909.P16179245990484623416

`record[A327656(A046315(n+1))]`
-/

namespace A338909.P16179245990484623416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A046315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338909.P16179245990484623416

/-! ## A338909.P17724235699917319856

`record[A327656(A001358(n+3))]`
-/

namespace A338909.P17724235699917319856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A001358 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338909.P17724235699917319856

/-! ## A338909.P5201545465038303676

`filter[A328336(n+1), A064911(#)]`
-/

namespace A338909.P5201545465038303676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A338909.P5201545465038303676

/-! ## A338909.P4648189206013934426

`filter[A328336(n+1), A353480(#)]`
-/

namespace A338909.P4648189206013934426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A338909.P4648189206013934426

/-! ## A338909.P10987948789386562959

`filter[A328336(n+2), A359828(#)]`
-/

namespace A338909.P10987948789386562959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A338909.P10987948789386562959

/-! ## A338909.P5523135589981546517

`record[A327656(sqrt(A075730(n+1)))]`
-/

namespace A338909.P5523135589981546517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (SequenceMachineLib.roundAway (Real.sqrt (A075730 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338909.P5523135589981546517

/-! ## A338909.P12010720662061056083

`∩[A001358(n+1), A328336(n+1)]`
-/

namespace A338909.P12010720662061056083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338909.P12010720662061056083

/-!
# A338910: Numbers of the form prime(x) * prime(y) where x and y are both odd.

The programs for A338910, there is no canonical definition to state claims against.
-/

/-! ## A338910.P6981505280562944668

`record[A247503(A001358(n+1))]`
-/

namespace A338910.P6981505280562944668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338910.P6981505280562944668

/-! ## A338910.P10975176609069516085

`record[A247503(A088739(n+1))]`
-/

namespace A338910.P10975176609069516085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A088739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338910.P10975176609069516085

/-! ## A338910.P5897444101912238442

`record[A247503(A339424(n+1))]`
-/

namespace A338910.P5897444101912238442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A339424 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338910.P5897444101912238442

/-! ## A338910.P18401683130572107238

`record[A210615(A066208(n+5))]`
-/

namespace A338910.P18401683130572107238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A066208 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338910.P18401683130572107238

/-! ## A338910.P2122742693144383287

`filter[A066208(n+1), A064911(#)]`
-/

namespace A338910.P2122742693144383287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A338910.P2122742693144383287

/-! ## A338910.P14374470234229022289

`record[A247503(sqrt(A074985(n+1)))]`
-/

namespace A338910.P14374470234229022289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338910.P14374470234229022289

/-! ## A338910.P17935395807981693123

`record[A247503(A186621(n+1)+1)]`
-/

namespace A338910.P17935395807981693123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A186621 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338910.P17935395807981693123

/-! ## A338910.P10193566618189935508

`record[A247503(A075818(n+1)/2)]`
-/

namespace A338910.P10193566618189935508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338910.P10193566618189935508

/-! ## A338910.P13197792868411618983

`∩[A001358(n+1), A066208(n+1)]`
-/

namespace A338910.P13197792868411618983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338910.P13197792868411618983

/-! ## A338910.P10461913622630318345

`∩[A066208(n+1), A339424(n+1)]`
-/

namespace A338910.P10461913622630318345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338910.P10461913622630318345

/-!
# A338911: Numbers of the form prime(x) * prime(y) where x and y are both even.

The programs for A338911, there is no canonical definition to state claims against.
-/

/-! ## A338911.P10539923078738176442

`eq[2, A353373(A008574(n))]`
-/

namespace A338911.P10539923078738176442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353373 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338911.P10539923078738176442

/-! ## A338911.P13133650563697948772

`record[A248101(A046315(n+1))]`
-/

namespace A338911.P13133650563697948772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A046315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338911.P13133650563697948772

/-! ## A338911.P18307806159068369185

`record[A248101(A001358(n+3))]`
-/

namespace A338911.P18307806159068369185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A001358 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338911.P18307806159068369185

/-! ## A338911.P14391335775840867231

`filter[A066207(n+1), A064911(#)]`
-/

namespace A338911.P14391335775840867231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A338911.P14391335775840867231

/-! ## A338911.P1702296747616792428

`filter[A066207(n+1), A353480(#)]`
-/

namespace A338911.P1702296747616792428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A338911.P1702296747616792428

/-! ## A338911.P8984210190276837083

`filter[A066207(n+2), A359828(#)]`
-/

namespace A338911.P8984210190276837083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A338911.P8984210190276837083

/-! ## A338911.P5601935360665260790

`record[A248101(sqrt(A075730(n+1)))]`
-/

namespace A338911.P5601935360665260790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (SequenceMachineLib.roundAway (Real.sqrt (A075730 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338911.P5601935360665260790

/-! ## A338911.P5849110199678179025

`record[A248101(A176406(n+1)+2)]`
-/

namespace A338911.P5849110199678179025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A176406 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338911.P5849110199678179025

/-! ## A338911.P9329000458686522005

`∩[A001358(n+1), A066207(n+1)]`
-/

namespace A338911.P9329000458686522005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338911.P9329000458686522005

/-! ## A338911.P12875658942313859894

`∩[A046315(n+1), A066207(n+1)]`
-/

namespace A338911.P12875658942313859894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338911.P12875658942313859894

/-!
# A338912: Lesser prime index of the n-th semiprime.

The programs for A338912, the canonical program `A338912.P12481881722546763833` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338912 has offset 1).

The definition of A338912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338912.P12481881722546763833

`A000720(A084126(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A338912

/-- `A000720(A084126(n+1))` -/
def P12481881722546763833.Spec : Prop :=
  ∀ n, P12481881722546763833.a n = A338912 (n + 1)

theorem P12481881722546763833.correct : P12481881722546763833.Spec := by
  intro n
  simp only [A338912, Nat.add_sub_cancel]

end A338912

/-! ## A338912.P8617875808546286169

`A176504(n+1)-A338913(n+1)`
-/

namespace A338912.P8617875808546286169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176504 (n + 1) - A338913 (n + 1)

end

end A338912.P8617875808546286169

namespace A338912

/-- `A176504(n+1)-A338913(n+1)` -/
def P8617875808546286169.Spec : Prop :=
  ∀ n, P8617875808546286169.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P9165792952281901853

`A338913(n+1)-A176506(n+1)`
-/

namespace A338912.P9165792952281901853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338913 (n + 1) - A176506 (n + 1)

end

end A338912.P9165792952281901853

namespace A338912

/-- `A338913(n+1)-A176506(n+1)` -/
def P9165792952281901853.Spec : Prop :=
  ∀ n, P9165792952281901853.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P1732542219345618718

`A087794(n+1)/A338913(n+1)`
-/

namespace A338912.P1732542219345618718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087794 (n + 1) : ℚ) / (A338913 (n + 1) : ℚ)

end

end A338912.P1732542219345618718

namespace A338912

/-- `A087794(n+1)/A338913(n+1)` -/
def P1732542219345618718.Spec : Prop :=
  ∀ n, P1732542219345618718.a n = (A338912 (n + 1) : ℚ)

end A338912

/-! ## A338912.P2269788238064523106

`A049084(A084126(2*n+1-n))`
-/

namespace A338912.P2269788238064523106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A084126 (2 * n + 1 - n)).toNat

end

end A338912.P2269788238064523106

namespace A338912

/-- `A049084(A084126(2*n+1-n))` -/
def P2269788238064523106.Spec : Prop :=
  ∀ n, P2269788238064523106.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P5162775934196109967

`A000720(A001358(n+1)/A084127(n+1))`
-/

namespace A338912.P5162775934196109967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A001358 (n + 1) : ℚ) / (A084127 (n + 1) : ℚ))).toNat

end

end A338912.P5162775934196109967

namespace A338912

/-- `A000720(A001358(n+1)/A084127(n+1))` -/
def P5162775934196109967.Spec : Prop :=
  ∀ n, P5162775934196109967.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P14682774236665126300

`A055396(A001358(n+1))`
-/

namespace A338912.P14682774236665126300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A001358 (n + 1)).toNat

end

end A338912.P14682774236665126300

namespace A338912

/-- `A055396(A001358(n+1))` -/
def P14682774236665126300.Spec : Prop :=
  ∀ n, P14682774236665126300.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P9793864036935319253

`A055396(A176540(n+2))`
-/

namespace A338912.P9793864036935319253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A176540 (n + 2)).toNat

end

end A338912.P9793864036935319253

namespace A338912

/-- `A055396(A176540(n+2))` -/
def P9793864036935319253.Spec : Prop :=
  ∀ n, P9793864036935319253.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P5290242246663501853

`A055396(sqrt(A074985(n+1)))`
-/

namespace A338912.P5290242246663501853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A338912.P5290242246663501853

namespace A338912

/-- `A055396(sqrt(A074985(n+1)))` -/
def P5290242246663501853.Spec : Prop :=
  ∀ n, P5290242246663501853.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P2965326925217778562

`A003963(p?[A052126(n+1)])`
-/

namespace A338912.P2965326925217778562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338912.P2965326925217778562

namespace A338912

/-- `A003963(p?[A052126(n+1)])` -/
def P2965326925217778562.Spec : Prop :=
  ∀ n, P2965326925217778562.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P16939820453500461225

`A061395(p?[A052126(n+1)])`
-/

namespace A338912.P16939820453500461225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338912.P16939820453500461225

namespace A338912

/-- `A061395(p?[A052126(n+1)])` -/
def P16939820453500461225.Spec : Prop :=
  ∀ n, P16939820453500461225.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P8582399400282762126

`A055396(A186621(n+1)+1)`
-/

namespace A338912.P8582399400282762126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A186621 (n + 1) + 1).toNat

end

end A338912.P8582399400282762126

namespace A338912

/-- `A055396(A186621(n+1)+1)` -/
def P8582399400282762126.Spec : Prop :=
  ∀ n, P8582399400282762126.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P12689677670407432119

`A061395(A052126(A001358(n+1))²)`
-/

namespace A338912.P12689677670407432119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A052126 (A001358 (n + 1)).toNat ^ 2).toNat

end

end A338912.P12689677670407432119

namespace A338912

/-- `A061395(A052126(A001358(n+1))²)` -/
def P12689677670407432119.Spec : Prop :=
  ∀ n, P12689677670407432119.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P9388218262923600038

`A286471(A075818(n+1))`
-/

namespace A338912.P9388218262923600038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (A075818 (n + 1)).toNat

end

end A338912.P9388218262923600038

namespace A338912

/-- `A286471(A075818(n+1))` -/
def P9388218262923600038.Spec : Prop :=
  ∀ n, P9388218262923600038.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P5693740758200409789

`A338898(Δ[n²])`
-/

namespace A338912.P5693740758200409789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A338912.P5693740758200409789

namespace A338912

/-- `A338898(Δ[n²])` -/
def P5693740758200409789.Spec : Prop :=
  ∀ n, P5693740758200409789.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P2354787587732253598

`filter[A338898(2*n+1), A102609(#)]`
-/

namespace A338912.P2354787587732253598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338898 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A338912.P2354787587732253598

namespace A338912

/-- `filter[A338898(2*n+1), A102609(#)]` -/
def P2354787587732253598.Spec : Prop :=
  ∀ n, P2354787587732253598.a n = A338912 (n + 1)

end A338912

/-! ## A338912.P12718650525866386532

`A118663(A176193(n+1))`
-/

namespace A338912.P12718650525866386532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118663 (A176193 (n + 1)).toNat

end

end A338912.P12718650525866386532

namespace A338912

/-- `A118663(A176193(n+1))` -/
def P12718650525866386532.Spec : Prop :=
  ∀ n, P12718650525866386532.a n = A338912 (n + 1)

end A338912

/-!
# A338913: Greater prime index of the n-th semiprime.

The programs for A338913, the canonical program `A338913.P835135953533191096` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338913 has offset 1).

The definition of A338913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338913.P835135953533191096

`A061395(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A338913

/-- `A061395(A001358(n+1))` -/
def P835135953533191096.Spec : Prop :=
  ∀ n, P835135953533191096.a n = A338913 (n + 1)

theorem P835135953533191096.correct : P835135953533191096.Spec := by
  intro n
  simp only [A338913, Nat.add_sub_cancel]

end A338913

/-! ## A338913.P16990008710777632167

`A000720(A084127(n+1))`
-/

namespace A338913.P16990008710777632167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084127 (n + 1)).toNat

end

end A338913.P16990008710777632167

namespace A338913

/-- `A000720(A084127(n+1))` -/
def P16990008710777632167.Spec : Prop :=
  ∀ n, P16990008710777632167.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P10675699900442502019

`A061395(A075818(n+1))`
-/

namespace A338913.P10675699900442502019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A075818 (n + 1)).toNat

end

end A338913.P10675699900442502019

namespace A338913

/-- `A061395(A075818(n+1))` -/
def P10675699900442502019.Spec : Prop :=
  ∀ n, P10675699900442502019.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P596496640591454556

`A064741(A140570(n+1))`
-/

namespace A338913.P596496640591454556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064741 (A140570 (n + 1)).toNat

end

end A338913.P596496640591454556

namespace A338913

/-- `A064741(A140570(n+1))` -/
def P596496640591454556.Spec : Prop :=
  ∀ n, P596496640591454556.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P5836981249783006400

`A338912(n+1)+A176506(n+1)`
-/

namespace A338913.P5836981249783006400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338912 (n + 1) + A176506 (n + 1)

end

end A338913.P5836981249783006400

namespace A338913

/-- `A338912(n+1)+A176506(n+1)` -/
def P5836981249783006400.Spec : Prop :=
  ∀ n, P5836981249783006400.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P16151973799252163379

`A176504(n+1)-A338912(n+1)`
-/

namespace A338913.P16151973799252163379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176504 (n + 1) - A338912 (n + 1)

end

end A338913.P16151973799252163379

namespace A338913

/-- `A176504(n+1)-A338912(n+1)` -/
def P16151973799252163379.Spec : Prop :=
  ∀ n, P16151973799252163379.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P5156504986449246754

`A087794(n+1)/A338912(n+1)`
-/

namespace A338913.P5156504986449246754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087794 (n + 1) : ℚ) / (A338912 (n + 1) : ℚ)

end

end A338913.P5156504986449246754

namespace A338913

/-- `A087794(n+1)/A338912(n+1)` -/
def P5156504986449246754.Spec : Prop :=
  ∀ n, P5156504986449246754.a n = (A338913 (n + 1) : ℚ)

end A338913

/-! ## A338913.P4529721047332148995

`A000720(A001358(n+1)/A084126(n+1))`
-/

namespace A338913.P4529721047332148995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A001358 (n + 1) : ℚ) / (A084126 (n + 1) : ℚ))).toNat

end

end A338913.P4529721047332148995

namespace A338913

/-- `A000720(A001358(n+1)/A084126(n+1))` -/
def P4529721047332148995.Spec : Prop :=
  ∀ n, P4529721047332148995.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P9602409087314354895

`A061395(A176540(n+2))`
-/

namespace A338913.P9602409087314354895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A176540 (n + 2)).toNat

end

end A338913.P9602409087314354895

namespace A338913

/-- `A061395(A176540(n+2))` -/
def P9602409087314354895.Spec : Prop :=
  ∀ n, P9602409087314354895.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P16925999801155639886

`A003963(2*A084127(n+1))`
-/

namespace A338913.P16925999801155639886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A084127 (n + 1)).toNat

end

end A338913.P16925999801155639886

namespace A338913

/-- `A003963(2*A084127(n+1))` -/
def P16925999801155639886.Spec : Prop :=
  ∀ n, P16925999801155639886.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P9238022065151966907

`A000720(p?[A032742(n+1)])`
-/

namespace A338913.P9238022065151966907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338913.P9238022065151966907

namespace A338913

/-- `A000720(p?[A032742(n+1)])` -/
def P9238022065151966907.Spec : Prop :=
  ∀ n, P9238022065151966907.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P17648331393340906756

`A055396(p?[A032742(n+1)])`
-/

namespace A338913.P17648331393340906756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338913.P17648331393340906756

namespace A338913

/-- `A055396(p?[A032742(n+1)])` -/
def P17648331393340906756.Spec : Prop :=
  ∀ n, P17648331393340906756.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P11304389579068737168

`A058933(p?[A032742(n+1)])`
-/

namespace A338913.P11304389579068737168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338913.P11304389579068737168

namespace A338913

/-- `A058933(p?[A032742(n+1)])` -/
def P11304389579068737168.Spec : Prop :=
  ∀ n, P11304389579068737168.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P3376847378814805949

`A156061(p?[A032742(n+1)])`
-/

namespace A338913.P3376847378814805949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338913.P3376847378814805949

namespace A338913

/-- `A156061(p?[A032742(n+1)])` -/
def P3376847378814805949.Spec : Prop :=
  ∀ n, P3376847378814805949.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P1491816072255701793

`ceil(log2(A048623(n+1)))`
-/

namespace A338913.P1491816072255701793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A048623 (n + 1) : ℝ)⌉

end

end A338913.P1491816072255701793

namespace A338913

/-- `ceil(log2(A048623(n+1)))` -/
def P1491816072255701793.Spec : Prop :=
  ∀ n, P1491816072255701793.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P6409120480476519525

`A061395(A176570(n+1))`
-/

namespace A338913.P6409120480476519525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A176570 (n + 1)).toNat

end

end A338913.P6409120480476519525

namespace A338913

/-- `A061395(A176570(n+1))` -/
def P6409120480476519525.Spec : Prop :=
  ∀ n, P6409120480476519525.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P42644629929574270

`A338898(2*(n+1))`
-/

namespace A338913.P42644629929574270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338898 (2 * (n + 1))

end

end A338913.P42644629929574270

namespace A338913

/-- `A338898(2*(n+1))` -/
def P42644629929574270.Spec : Prop :=
  ∀ n, P42644629929574270.a n = A338913 (n + 1)

end A338913

/-! ## A338913.P533833971162994566

`A061395(A074985(n+1))`
-/

namespace A338913.P533833971162994566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A074985 (n + 1)).toNat

end

end A338913.P533833971162994566

namespace A338913

/-- `A061395(A074985(n+1))` -/
def P533833971162994566.Spec : Prop :=
  ∀ n, P533833971162994566.a n = A338913 (n + 1)

end A338913

/-!
# A338914: Number of integer partitions of n of even length whose greatest multiplicity is at most half their length.

The programs for A338914, there is no canonical definition to state claims against.
-/

/-! ## A338914.P14956596572747717300

`A027187(n)-A096373(n^floor(atan(n)))`
-/

namespace A338914.P14956596572747717300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A096373 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A338914.P14956596572747717300

/-! ## A338914.P5527644846392444868

`A027187(n)-A096373(round(sqrt(n²+1)))`
-/

namespace A338914.P5527644846392444868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A096373 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A338914.P5527644846392444868

/-! ## A338914.P14263066935352105976

`or(A010057(A000079(n)), A371839(n))`
-/

namespace A338914.P14263066935352105976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 (A000079 n).toNat) (A371839 n)

end

end A338914.P14263066935352105976

/-! ## A338914.P17927309507138126697

`A249576(n+2)+A100047(A056450(n))`
-/

namespace A338914.P17927309507138126697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (n + 2) + A100047 (A056450 n).toNat

end

end A338914.P17927309507138126697

/-! ## A338914.P8799204775590058167

`abs(A249576(n+2)+A057428(A171842(n)))`
-/

namespace A338914.P8799204775590058167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249576 (n + 2) + A057428 (A171842 n).toNat|

end

end A338914.P8799204775590058167

/-!
# A338915: Number of integer partitions of n that have an even number of parts and cannot be partitioned into distinct pairs of not necessarily distinct parts.

The programs for A338915, there is no canonical definition to state claims against.
-/

/-! ## A338915.P2986851381063169544

`A027187(n)-A338916(n)`
-/

namespace A338915.P2986851381063169544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A338916 n

end

end A338915.P2986851381063169544

/-! ## A338915.P9881961271659969425

`A000041(n)-(A338916(n)+A027193(n))`
-/

namespace A338915.P9881961271659969425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A338916 n + A027193 n)

end

end A338915.P9881961271659969425

/-! ## A338915.P9057995981447307142

`(A081362(n)+A000041(n))/2-A338916(n)`
-/

namespace A338915.P9057995981447307142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081362 n + A000041 n : ℚ) / 2 - (A338916 n : ℚ)

end

end A338915.P9057995981447307142

/-! ## A338915.P368983391230198468

`A339846(A000079(n))-A338916(n)`
-/

namespace A338915.P368983391230198468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (A000079 n).toNat - A338916 n

end

end A338915.P368983391230198468

/-!
# A338916: Number of integer partitions of n that can be partitioned into distinct pairs of (possibly equal) parts.

The programs for A338916, there is no canonical definition to state claims against.
-/

/-! ## A338916.P9500842361653921951

`A027187(n)-A338915(n)`
-/

namespace A338916.P9500842361653921951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A338915 n

end

end A338916.P9500842361653921951

/-! ## A338916.P11178403536157421434

`A027185(A000124(n))-A338915(n)`
-/

namespace A338916.P11178403536157421434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027185 (A000124 n).toNat - A338915 n

end

end A338916.P11178403536157421434

/-! ## A338916.P12527509874143844066

`A339559(n)+A339560(n)-A338915(n)`
-/

namespace A338916.P12527509874143844066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339559 n + (A339560 n - A338915 n)

end

end A338916.P12527509874143844066

/-! ## A338916.P4397731374128589259

`∑[A002865(n)]-(A338915(n)+A027193(n))`
-/

namespace A338916.P4397731374128589259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A338915 n + A027193 n)

end

end A338916.P4397731374128589259

/-! ## A338916.P11417157788933569879

`A035363(2*n)-A027193(n)-A338915(n)`
-/

namespace A338916.P11417157788933569879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A027193 n - A338915 n

end

end A338916.P11417157788933569879

/-!
# A338917: a(n) = sum_of_digits(a(n-1)^a(n-2)) where a(1)=1 and a(2)=2.

The programs for A338917, there is no canonical definition to state claims against.
-/

/-! ## A338917.P12026984919724879024

`∑{digits}[A070282(n+1), #]`
-/

namespace A338917.P12026984919724879024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070282 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A338917.P12026984919724879024

/-!
# A338925: Every nonprime term k of the sequence is the cumulative sum of the nonprime digits used so far (the digits of k are included in the sum).

The programs for A338925, there is no canonical definition to state claims against.
-/

/-! ## A338925.P4375734692240914503

`A158611(n+1)-A004016(A103251(3*n+5))`
-/

namespace A338925.P4375734692240914503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) - A004016 (A103251 (3 * n + 5)).toNat

end

end A338925.P4375734692240914503

/-!
# A338927: Locations of records in A338565.

The programs for A338927, there is no canonical definition to state claims against.
-/

/-! ## A338927.P8286653256949507902

`∩[A110911(n+1), A307866(n+1)]`
-/

namespace A338927.P8286653256949507902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338927.P8286653256949507902

/-! ## A338927.P2157360698251295700

`∩[A110911(n+1), A333952(n+1)]`
-/

namespace A338927.P2157360698251295700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338927.P2157360698251295700

/-! ## A338927.P2716403432431369231

`∩[A184530(n+1), A333952(n+1)]`
-/

namespace A338927.P2716403432431369231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338927.P2716403432431369231

/-! ## A338927.P17838404091855484368

`∩[A307866(n+1), A393379(n+1)]`
-/

namespace A338927.P17838404091855484368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338927.P17838404091855484368

/-! ## A338927.P6065086619406217108

`record[A001615(∑[A362344(n+1)])]`
-/

namespace A338927.P6065086619406217108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362344 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338927.P6065086619406217108

/-!
# A338928: Record values of A338565.

The programs for A338928, there is no canonical definition to state claims against.
-/

/-! ## A338928.P11455318355613334700

`record[A338565(n+1)]`
-/

namespace A338928.P11455318355613334700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338928.P11455318355613334700

/-! ## A338928.P7446705163763388158

`record[A067734(n+2)]`
-/

namespace A338928.P7446705163763388158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338928.P7446705163763388158

/-! ## A338928.P10490980456583012651

`A338565(A338927(n+1))`
-/

namespace A338928.P10490980456583012651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338565 (A338927 (n + 1)).toNat

end

end A338928.P10490980456583012651

/-! ## A338928.P117457773890118680

`A067734(lcm(2, A338927(n+1)))`
-/

namespace A338928.P117457773890118680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (Int.lcm 2 (A338927 (n + 1)))

end

end A338928.P117457773890118680

/-! ## A338928.P9544511212930786435

`record[A338565(A028310(n))-(6*n)%2]`
-/

namespace A338928.P9544511212930786435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338565 (A028310 n).toNat - ((6 * n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338928.P9544511212930786435

/-!
# A338929: a(n) is the smallest prime number p larger than A072668(n) such that p is equal to 1 (mod A072668(n)).

The programs for A338929, there is no canonical definition to state claims against.
-/

/-! ## A338929.P15404128327697857847

`A034694(A072668(n+1))`
-/

namespace A338929.P15404128327697857847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A072668 (n + 1)).toNat

end

end A338929.P15404128327697857847

/-! ## A338929.P10406069226703689890

`A034694(A060462(n+2))`
-/

namespace A338929.P10406069226703689890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A060462 (n + 2)).toNat

end

end A338929.P10406069226703689890

/-! ## A338929.P1913432575527139248

`A034694(Δ[A053767(n)]-1)`
-/

namespace A338929.P1913432575527139248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (n + 1) - f1 n - 1).toNat

end

end A338929.P1913432575527139248

/-! ## A338929.P10070792353051056771

`A034694(comp[A351078(n)-1])`
-/

namespace A338929.P10070792353051056771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A338929.P10070792353051056771

/-! ## A338929.P7003616717366465521

`A034694(A002808(n+1)-1)`
-/

namespace A338929.P7003616717366465521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A002808 (n + 1) - 1).toNat

end

end A338929.P7003616717366465521

/-! ## A338929.P4452937873374713625

`A034694(A018252(n+2)-1)`
-/

namespace A338929.P4452937873374713625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A018252 (n + 2) - 1).toNat

end

end A338929.P4452937873374713625

/-! ## A338929.P18429765130892883365

`A034694(A079696(n+1)-2)`
-/

namespace A338929.P18429765130892883365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A079696 (n + 1) - 2).toNat

end

end A338929.P18429765130892883365

/-! ## A338929.P10153075135920245047

`A034694(lt[1, A001222(n+1)])`
-/

namespace A338929.P10153075135920245047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338929.P10153075135920245047

/-! ## A338929.P9970152728180712109

`A034694(lt[2, A000005(n+1)])`
-/

namespace A338929.P9970152728180712109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338929.P9970152728180712109

/-! ## A338929.P15181676552945002762

`A034694(lt[A000010(n+1), n])`
-/

namespace A338929.P15181676552945002762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A338929.P15181676552945002762

/-! ## A338929.P7347312237062830226

`A034694(lt[A006530(n+1), n])`
-/

namespace A338929.P7347312237062830226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A338929.P7347312237062830226

/-! ## A338929.P8496669121016845632

`A034694(comp[A006530(n+1)-1])`
-/

namespace A338929.P8496669121016845632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A338929.P8496669121016845632

/-! ## A338929.P8239520596871588402

`A034694(comp[A034694(n+1)-2]+1)`
-/

namespace A338929.P8239520596871588402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A338929.P8239520596871588402

/-! ## A338929.P12156124312325983141

`p?[A034694(n+2)+A010051(n+3)]`
-/

namespace A338929.P12156124312325983141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 2) + A010051 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338929.P12156124312325983141

/-! ## A338929.P9812277619806602557

`A034694(A000720(A002808(n+1))+n+1)`
-/

namespace A338929.P9812277619806602557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A000720 (A002808 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A338929.P9812277619806602557

/-! ## A338929.P218813007928874526

`A379743(A002808(n+1))`
-/

namespace A338929.P218813007928874526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379743 (A002808 (n + 1)).toNat

end

end A338929.P218813007928874526

/-! ## A338929.P18206582589234952542

`A379743(A018252(n+2))`
-/

namespace A338929.P18206582589234952542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379743 (A018252 (n + 2)).toNat

end

end A338929.P18206582589234952542

/-! ## A338929.P15019933421623256591

`A034694(lt[1, A003415(n+1)])`
-/

namespace A338929.P15019933421623256591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338929.P15019933421623256591

/-! ## A338929.P17043034471235114988

`A034694(lt[1, A032741(n+1)])`
-/

namespace A338929.P17043034471235114988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338929.P17043034471235114988

/-! ## A338929.P17088062705012258450

`A034694(lt[1, A122810(n+1)])`
-/

namespace A338929.P17088062705012258450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338929.P17088062705012258450

/-!
# A338931: Least b such that b^(2^n) + 1 is an odd Pierpont prime (A005109).

The programs for A338931, there is no canonical definition to state claims against.
-/

/-! ## A338931.P17361544779683004617

`2*A079087(4^n+1)^(n-2)`
-/

namespace A338931.P17361544779683004617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (A079087 (4 ^ n + 1) : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A338931.P17361544779683004617

/-! ## A338931.P9855692877142379771

`A029594(floor(5*n/8)^floor(C(n, 2)/2))`
-/

namespace A338931.P9855692877142379771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029594 (SequenceMachineLib.roundAway ((⌊5 * ((n : ℚ) / 8)⌋ : ℚ) ^ (⌊(Nat.choose n 2 : ℚ) / 2⌋ : ℤ))).toNat

end

end A338931.P9855692877142379771

/-! ## A338931.P5462870693739281690

`A239074(A056362(n+1))`
-/

namespace A338931.P5462870693739281690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239074 (A056362 (n + 1)).toNat

end

end A338931.P5462870693739281690

/-!
# A338932: Numbers k such that the Diophantine equation x^3 + y^3 + z^3 = k has nontrivial primitive parametric solutions.

The programs for A338932, there is no canonical definition to state claims against.
-/

/-! ## A338932.P17993434335677567680

`A046681(record[A088155(n)])`
-/

namespace A338932.P17993434335677567680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338932.P17993434335677567680

/-! ## A338932.P14000102245574183954

`filter[A249073(n+1), A030190(#)]`
-/

namespace A338932.P14000102245574183954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030190 (f1 j).toNat = 1) n)

end

end A338932.P14000102245574183954

/-!
# A338933: Numbers k such that the Diophantine equation x^3 + y^3 + 2*z^3 = k has nontrivial primitive parametric solutions.

The programs for A338933, there is no canonical definition to state claims against.
-/

/-! ## A338933.P11167092656314610582

`A001281(A088827(n+1)²)*A028982(n+1)`
-/

namespace A338933.P11167092656314610582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A088827 (n + 1) ^ 2).toNat * A028982 (n + 1)

end

end A338933.P11167092656314610582

/-! ## A338933.P15128648200701407309

`A004526(A088827(n+1)²)*A028982(n+1)`
-/

namespace A338933.P15128648200701407309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088827 (n + 1) ^ 2).toNat * A028982 (n + 1)

end

end A338933.P15128648200701407309

/-! ## A338933.P13880421252948930692

`A033431(A028982(n+1)*A061603(n))`
-/

namespace A338933.P13880421252948930692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (A028982 (n + 1) * A061603 n).toNat

end

end A338933.P13880421252948930692

/-! ## A338933.P5090910970748963096

`A033431(A061603(n)*A320137(n+1))`
-/

namespace A338933.P5090910970748963096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (A061603 n * A320137 (n + 1)).toNat

end

end A338933.P5090910970748963096

/-! ## A338933.P15021617493900223222

`A033431(A028982(n+1)^A061603(n))`
-/

namespace A338933.P15021617493900223222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (SequenceMachineLib.roundAway ((A028982 (n + 1) : ℚ) ^ (A061603 n : ℤ))).toNat

end

end A338933.P15021617493900223222

/-!
# A338934: Square array T(i,j) = Sum_{k=0...min(i,j)} C(i,k)*C(j,k)*C(2*k,k) (i>=0,j>=0), read by antidiagonals.

The programs for A338934, there is no canonical definition to state claims against.
-/

/-! ## A338934.P6696901226022923684

`A081577(n)-A118759(A101164(n))`
-/

namespace A338934.P6696901226022923684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 n - A118759 (A101164 n).toNat

end

end A338934.P6696901226022923684

/-! ## A338934.P8541898877527240048

`A118759(A047671(n+1)-A057893(n))`
-/

namespace A338934.P8541898877527240048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A047671 (n + 1) - A057893 n).toNat

end

end A338934.P8541898877527240048

/-! ## A338934.P14344893006442419631

`A000188((A047671(n+1)-A057893(n))²)`
-/

namespace A338934.P14344893006442419631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((A047671 (n + 1) - A057893 n) ^ 2).toNat

end

end A338934.P14344893006442419631

/-! ## A338934.P2060417286150136839

`A003059((A047671(n+1)-A057893(n))²)`
-/

namespace A338934.P2060417286150136839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((A047671 (n + 1) - A057893 n) ^ 2).toNat

end

end A338934.P2060417286150136839

/-! ## A338934.P4552897423472993155

`A033676((A047671(n+1)-A057893(n))²)`
-/

namespace A338934.P4552897423472993155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 ((A047671 (n + 1) - A057893 n) ^ 2).toNat

end

end A338934.P4552897423472993155

/-!
# A338935: a(n) = Sum_{d|n} (d^2 mod n).

The programs for A338935, the canonical program `A338935.P326870423688508248` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338935 has offset 1).

The definition of A338935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338935.P326870423688508248

`∑{d}[n+1, #²%(n+1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338935

/-- `∑{d}[n+1, #²%(n+1)]` -/
def P326870423688508248.Spec : Prop :=
  ∀ n, (P326870423688508248.a n : ℤ) = A338935 (n + 1)

theorem P326870423688508248.correct : P326870423688508248.Spec := by
  intro n
  simp only [A338935, Nat.add_sub_cancel]

end A338935

/-!
# A338936: Primes in A338935.

The programs for A338936, the canonical program `A338936.P13875376072067169359` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338936 has offset 1).

The definition of A338936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 540 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338936.P13875376072067169359

`p?[A338935(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338936

/-- `p?[A338935(n+1)]` -/
def P13875376072067169359.Spec : Prop :=
  ∀ n, P13875376072067169359.a n = A338936 (n + 1)

theorem P13875376072067169359.correct : P13875376072067169359.Spec := by
  intro n
  simp only [A338936, Nat.add_sub_cancel]

end A338936

/-! ## A338936.P8948785510744934110

`A338935(A338930(n+1))`
-/

namespace A338936.P8948785510744934110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338935 (A338930 (n + 1)).toNat

end

end A338936.P8948785510744934110

namespace A338936

/-- `A338935(A338930(n+1))` -/
def P8948785510744934110.Spec : Prop :=
  ∀ n, P8948785510744934110.a n = A338936 (n + 1)

end A338936

/-!
# A338937: a(n+1) = A001414(a(n)) + A001414(a(n-1)) with a(0)=1, a(1)=2.

The programs for A338937, the canonical program `A338937.P7076279255961328838` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338937 has offset 0).

The definition of A338937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338937.P7076279255961328838

`A001414(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338937

/-- `A001414(a(n-1)*a(n-2))` -/
def P7076279255961328838.Spec : Prop :=
  ∀ n, P7076279255961328838.a n = A338937 n

theorem P7076279255961328838.correct : P7076279255961328838.Spec := by
  intro n
  simp only [A338937]

end A338937

/-!
# A338939: a(n) is the number of partitions n = a + b such that a*b is a perfect square.

The programs for A338939, the canonical program `A338939.P9017893110723882401` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338939 has offset 1).

The definition of A338939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338939.P9017893110723882401

`ceil(A092147(n+1)/2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338939

/-- `ceil(A092147(n+1)/2)` -/
def P9017893110723882401.Spec : Prop :=
  ∀ n, P9017893110723882401.a n = A338939 (n + 1)

theorem P9017893110723882401.correct : P9017893110723882401.Spec := by
  intro n
  simp only [A338939, Nat.add_sub_cancel]

end A338939

/-! ## A338939.P3490245976861848056

`A004525(A092147(n+1))`
-/

namespace A338939.P3490245976861848056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A092147 (n + 1)).toNat

end

end A338939.P3490245976861848056

namespace A338939

/-- `A004525(A092147(n+1))` -/
def P3490245976861848056.Spec : Prop :=
  ∀ n, P3490245976861848056.a n = A338939 (n + 1)

end A338939

/-! ## A338939.P331302236394068798

`A004526(∑{d}[n+1, A000089(#)])`
-/

namespace A338939.P331302236394068798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A000089 d).toNat

end

end A338939.P331302236394068798

namespace A338939

/-- `A004526(∑{d}[n+1, A000089(#)])` -/
def P331302236394068798.Spec : Prop :=
  ∀ n, P331302236394068798.a n = A338939 (n + 1)

end A338939

/-! ## A338939.P7802562333815831867

`A004526(gcd(2, n+1)*A256452(n+1))`
-/

namespace A338939.P7802562333815831867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((Nat.gcd 2 (n + 1) : ℤ) * A256452 (n + 1)).toNat

end

end A338939.P7802562333815831867

namespace A338939

/-- `A004526(gcd(2, n+1)*A256452(n+1))` -/
def P7802562333815831867.Spec : Prop :=
  ∀ n, P7802562333815831867.a n = A338939 (n + 1)

end A338939

/-! ## A338939.P14190687997285274010

`∑{d}[n+1, A008966(#)*A025426((n+1)/#)]`
-/

namespace A338939.P14190687997285274010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A025426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338939.P14190687997285274010

namespace A338939

/-- `∑{d}[n+1, A008966(#)*A025426((n+1)/#)]` -/
def P14190687997285274010.Spec : Prop :=
  ∀ n, P14190687997285274010.a n = A338939 (n + 1)

end A338939

/-! ## A338939.P4415326753931992012

`A026741(A256452(n+1)-A059841(n))`
-/

namespace A338939.P4415326753931992012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A256452 (n + 1) - A059841 n).toNat

end

end A338939.P4415326753931992012

namespace A338939

/-- `A026741(A256452(n+1)-A059841(n))` -/
def P4415326753931992012.Spec : Prop :=
  ∀ n, P4415326753931992012.a n = A338939 (n + 1)

end A338939

/-! ## A338939.P5420412191796740

`A004526(A000034(n)*A256452(n+1))`
-/

namespace A338939.P5420412191796740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000034 n * A256452 (n + 1)).toNat

end

end A338939.P5420412191796740

namespace A338939

/-- `A004526(A000034(n)*A256452(n+1))` -/
def P5420412191796740.Spec : Prop :=
  ∀ n, P5420412191796740.a n = A338939 (n + 1)

end A338939

/-! ## A338939.P1252386720545865689

`A026741(A256452(n+1)-char[A005843(n)])`
-/

namespace A338939.P1252386720545865689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A256452 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A338939.P1252386720545865689

namespace A338939

/-- `A026741(A256452(n+1)-char[A005843(n)])` -/
def P1252386720545865689.Spec : Prop :=
  ∀ n, P1252386720545865689.a n = A338939 (n + 1)

end A338939

/-! ## A338939.P8296404662895031413

`A002265(A004531((n+1)²))`
-/

namespace A338939.P8296404662895031413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004531 ((n + 1) ^ 2)).toNat

end

end A338939.P8296404662895031413

namespace A338939

/-- `A002265(A004531((n+1)²))` -/
def P8296404662895031413.Spec : Prop :=
  ∀ n, P8296404662895031413.a n = A338939 (n + 1)

end A338939

/-! ## A338939.P65975946680850475

`A004526(A004531((n+1)²)/2)`
-/

namespace A338939.P65975946680850475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A004531 ((n + 1) ^ 2) : ℚ) / 2)).toNat

end

end A338939.P65975946680850475

namespace A338939

/-- `A004526(A004531((n+1)²)/2)` -/
def P65975946680850475.Spec : Prop :=
  ∀ n, P65975946680850475.a n = A338939 (n + 1)

end A338939

/-!
# A338940: a(n) is the number of solutions to the Diophantine equation p * x * (x + n) = y^2 with p = a*b a perfect square and a+b = n.

The programs for A338940, the canonical program `A338940.P142814705628423007` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338940 has offset 1).

The definition of A338940 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115878, A338939, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338940.P142814705628423007

`A338939(n+1)*A115878(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A338940

/-- `A338939(n+1)*A115878(n+1)` -/
def P142814705628423007.Spec : Prop :=
  ∀ n, P142814705628423007.a n = A338940 (n + 1)

theorem P142814705628423007.correct : P142814705628423007.Spec := by
  intro n
  simp only [A338940, Nat.add_sub_cancel]

end A338940

/-! ## A338940.P14646362370668265683

`(A176835(n+1)-1)*A338939(n+1)`
-/

namespace A338940.P14646362370668265683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176835 (n + 1) - 1) * A338939 (n + 1)

end

end A338940.P14646362370668265683

namespace A338940

/-- `(A176835(n+1)-1)*A338939(n+1)` -/
def P14646362370668265683.Spec : Prop :=
  ∀ n, P14646362370668265683.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P2706452678955848758

`(A176835(n+1)-1)*ceil(A092147(n+1)/2)`
-/

namespace A338940.P2706452678955848758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176835 (n + 1) - 1) * ⌈(A092147 (n + 1) : ℚ) / 2⌉

end

end A338940.P2706452678955848758

namespace A338940

/-- `(A176835(n+1)-1)*ceil(A092147(n+1)/2)` -/
def P2706452678955848758.Spec : Prop :=
  ∀ n, P2706452678955848758.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P6402238006482281186

`A046079((n+1)/(or(1, 1-n)+n))*A338939(n+1)`
-/

namespace A338940.P6402238006482281186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ) : ℚ))).toNat * A338939 (n + 1)

end

end A338940.P6402238006482281186

namespace A338940

/-- `A046079((n+1)/(or(1, 1-n)+n))*A338939(n+1)` -/
def P6402238006482281186.Spec : Prop :=
  ∀ n, P6402238006482281186.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P12117104485966050932

`ceil(A092147(n+1)/2)*A046079(2*lcm(4, n+1)/4)`
-/

namespace A338940.P12117104485966050932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092147 (n + 1) : ℚ) / 2⌉ * A046079 (SequenceMachineLib.roundAway (2 * ((Nat.lcm 4 (n + 1) : ℚ) / 4))).toNat

end

end A338940.P12117104485966050932

namespace A338940

/-- `ceil(A092147(n+1)/2)*A046079(2*lcm(4, n+1)/4)` -/
def P12117104485966050932.Spec : Prop :=
  ∀ n, P12117104485966050932.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P16352112029159315927

`ceil(A092147(n+1)/2)*A046079(floor(n/(n%2+1))+1)`
-/

namespace A338940.P16352112029159315927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092147 (n + 1) : ℚ) / 2⌉ * A046079 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A338940.P16352112029159315927

namespace A338940

/-- `ceil(A092147(n+1)/2)*A046079(floor(n/(n%2+1))+1)` -/
def P16352112029159315927.Spec : Prop :=
  ∀ n, P16352112029159315927.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P17805436219192644770

`ceil(A092147(n+1)/2)*A046079((∑[n]-1)%(n+1)+1)`
-/

namespace A338940.P17805436219192644770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092147 (n + 1) : ℚ) / 2⌉ * A046079 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A338940.P17805436219192644770

namespace A338940

/-- `ceil(A092147(n+1)/2)*A046079((∑[n]-1)%(n+1)+1)` -/
def P17805436219192644770.Spec : Prop :=
  ∀ n, P17805436219192644770.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P18311124403759302950

`ceil(A092147(n+1)/2)*A046079((n+1)/(or(1, 1-n)+n))`
-/

namespace A338940.P18311124403759302950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092147 (n + 1) : ℚ) / 2⌉ * A046079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ) : ℚ))).toNat

end

end A338940.P18311124403759302950

namespace A338940

/-- `ceil(A092147(n+1)/2)*A046079((n+1)/(or(1, 1-n)+n))` -/
def P18311124403759302950.Spec : Prop :=
  ∀ n, P18311124403759302950.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P11510406540203095167

`A046079(A062828(n+1))*A338939(n+1)`
-/

namespace A338940.P11510406540203095167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A062828 (n + 1)).toNat * A338939 (n + 1)

end

end A338940.P11510406540203095167

namespace A338940

/-- `A046079(A062828(n+1))*A338939(n+1)` -/
def P11510406540203095167.Spec : Prop :=
  ∀ n, P11510406540203095167.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P15310333751381074591

`A063647(A060819(n+1))*A338939(n+1)`
-/

namespace A338940.P15310333751381074591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A060819 (n + 1)).toNat * A338939 (n + 1)

end

end A338940.P15310333751381074591

namespace A338940

/-- `A063647(A060819(n+1))*A338939(n+1)` -/
def P15310333751381074591.Spec : Prop :=
  ∀ n, P15310333751381074591.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P12760930611162348466

`A023443(A176835(n+1))*A338939(n+1)`
-/

namespace A338940.P12760930611162348466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A176835 (n + 1)).toNat * A338939 (n + 1)

end

end A338940.P12760930611162348466

namespace A338940

/-- `A023443(A176835(n+1))*A338939(n+1)` -/
def P12760930611162348466.Spec : Prop :=
  ∀ n, P12760930611162348466.a n = A338940 (n + 1)

end A338940

/-! ## A338940.P8373400158713596006

`A033831(A060819(n+1)²)*A338939(n+1)`
-/

namespace A338940.P8373400158713596006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (A060819 (n + 1) ^ 2).toNat * A338939 (n + 1)

end

end A338940.P8373400158713596006

namespace A338940

/-- `A033831(A060819(n+1)²)*A338939(n+1)` -/
def P8373400158713596006.Spec : Prop :=
  ∀ n, P8373400158713596006.a n = A338940 (n + 1)

end A338940

/-!
# A338944: Rearrangement of primes into complete Cunningham chains of the second kind, sorted by first prime in the chain.

The programs for A338944, there is no canonical definition to state claims against.
-/

/-! ## A338944.P14665540265591440751

`p?[A131142(A131617(n+1))]`
-/

namespace A338944.P14665540265591440751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131142 (A131617 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338944.P14665540265591440751

/-! ## A338944.P17712109601601261339

`A000040(A309862(n)+A180200(n))`
-/

namespace A338944.P17712109601601261339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A309862 n + A180200 n).toNat

end

end A338944.P17712109601601261339

/-! ## A338944.P6616932798077041871

`A067836(gcd(A037479(n+1), A282170(3*(n+1))))`
-/

namespace A338944.P6616932798077041871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067836 (Int.gcd (A037479 (n + 1)) (A282170 (3 * (n + 1))))

end

end A338944.P6616932798077041871

/-! ## A338944.P7163830056689303456

`p?[A136175(A136175(n+1))%A136495(3*n+4)]`
-/

namespace A338944.P7163830056689303456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136175 (A136175 (n + 1)).toNat) (A136495 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338944.P7163830056689303456

/-! ## A338944.P11160617587624107691

`p?[A136175(A136175(n+2))%A003265(2*n+5)]`
-/

namespace A338944.P11160617587624107691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136175 (A136175 (n + 2)).toNat) (A003265 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338944.P11160617587624107691

/-!
# A338945: Lengths of Cunningham chains of the first kind that are sorted by first prime in the chain.

The programs for A338945, there is no canonical definition to state claims against.
-/

/-! ## A338945.P13273689520802743511

`A339579(A059456(n+1)+1)`
-/

namespace A338945.P13273689520802743511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A059456 (n + 1) + 1).toNat

end

end A338945.P13273689520802743511

/-! ## A338945.P15344555509343486441

`A063377(A059456(n+1))`
-/

namespace A338945.P15344555509343486441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A059456 (n + 1)).toNat

end

end A338945.P15344555509343486441

/-! ## A338945.P685284360727585244

`A063377(A176888(n+1)+1)`
-/

namespace A338945.P685284360727585244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A176888 (n + 1) + 1).toNat

end

end A338945.P685284360727585244

/-! ## A338945.P11507624168667406113

`A063377(p?[(n+1)*A292936(n+1)])`
-/

namespace A338945.P11507624168667406113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338945.P11507624168667406113

/-! ## A338945.P8363580807330975479

`A063377(p?[lcm(n+1, A292936(n+1))])`
-/

namespace A338945.P8363580807330975479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A292936 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A338945.P8363580807330975479

/-! ## A338945.P16546879703253096147

`A063377(p?[A156659(n)+n])`
-/

namespace A338945.P16546879703253096147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338945.P16546879703253096147

/-! ## A338945.P12219551537190265938

`A063377(p?[n-A156659(n)])`
-/

namespace A338945.P12219551537190265938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A156659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338945.P12219551537190265938

/-!
# A338946: Lengths of Cunningham chains of the second kind that are sorted by first prime in the chain.

The programs for A338946, there is no canonical definition to state claims against.
-/

/-! ## A338946.P7249839472553566268

`A285700(A176897(n+1))`
-/

namespace A338946.P7249839472553566268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (A176897 (n + 1)).toNat

end

end A338946.P7249839472553566268

/-! ## A338946.P8450683419794594907

`A285700(p?[A080339(n+1)+2*n+1])`
-/

namespace A338946.P8450683419794594907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338946.P8450683419794594907

/-! ## A338946.P137084351281502533

`A285700(p?[2*n+1-A061397(n+1)])`
-/

namespace A338946.P137084351281502533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338946.P137084351281502533

/-! ## A338946.P11148889571145669984

`A285700(p?[A085090(n+1)-A010051(n+1)])`
-/

namespace A338946.P11148889571145669984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338946.P11148889571145669984

/-! ## A338946.P12183011249038993955

`A181715(A060031(n+1)*A078490(n))`
-/

namespace A338946.P12183011249038993955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (A060031 (n + 1) * A078490 n).toNat

end

end A338946.P12183011249038993955

/-!
# A338947: Number of vertices of a hexagonal tessellation that lie on subsequent circles centered at a vertex of one hexagon.

The programs for A338947, there is no canonical definition to state claims against.
-/

/-! ## A338947.P9601238368023474652

`A113062(A003136(n+1))`
-/

namespace A338947.P9601238368023474652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (A003136 (n + 1)).toNat

end

end A338947.P9601238368023474652

/-! ## A338947.P1319110256084144861

`A113062(A270248(n+1))`
-/

namespace A338947.P1319110256084144861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (A270248 (n + 1)).toNat

end

end A338947.P1319110256084144861

/-! ## A338947.P8717910791498261214

`A113062(lt[0, A004016(n)])`
-/

namespace A338947.P8717910791498261214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338947.P8717910791498261214

/-! ## A338947.P8667855798665442442

`A113062(lt[0, A033716(n)])`
-/

namespace A338947.P8667855798665442442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338947.P8667855798665442442

/-! ## A338947.P14052032079299807202

`A113062(lt[0, A088534(n)])`
-/

namespace A338947.P14052032079299807202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338947.P14052032079299807202

/-! ## A338947.P7296270671778558692

`A113062(lt[0, A113062(n)])`
-/

namespace A338947.P7296270671778558692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338947.P7296270671778558692

/-! ## A338947.P5843945788970747876

`A113062(eq[1, A353816(n)])`
-/

namespace A338947.P5843945788970747876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338947.P5843945788970747876

/-! ## A338947.P10012043274470594347

`filter[A113062(n), A011558(#)]`
-/

namespace A338947.P10012043274470594347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A338947.P10012043274470594347

/-! ## A338947.P12732327192435694461

`filter[A113062(n), A022932(#)]`
-/

namespace A338947.P12732327192435694461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A338947.P12732327192435694461

/-! ## A338947.P17187211083001535891

`filter[A113062(n), A075897(#)]`
-/

namespace A338947.P17187211083001535891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A338947.P17187211083001535891

/-!
# A338948: Number of oriented colorings of the 24 octahedral facets (or 24 vertices) of the 4-D 24-cell using subsets of a set of n colors.

The programs for A338948, there is no canonical definition to state claims against.
-/

/-! ## A338948.P10623921254083031130

`2*A338949(n+1)-A338951(n+1)`
-/

namespace A338948.P10623921254083031130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338949 (n + 1) - A338951 (n + 1)

end

end A338948.P10623921254083031130

/-!
# A338949: Number of unoriented colorings of the 24 octahedral facets (or 24 vertices) of the 4-D 24-cell using subsets of a set of n colors.

The programs for A338949, there is no canonical definition to state claims against.
-/

/-! ## A338949.P10512062290558942440

`(A338948(n+1)+A338951(n+1))/2`
-/

namespace A338949.P10512062290558942440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338948 (n + 1) + A338951 (n + 1) : ℚ) / 2

end

end A338949.P10512062290558942440

/-!
# A338950: Number of chiral pairs of colorings of the 24 octahedral facets (or 24 vertices) of the 4-D 24-cell using subsets of a set of n colors.

The programs for A338950, there is no canonical definition to state claims against.
-/

/-! ## A338950.P594562593292164

`A338948(n+2)-A338949(n+2)`
-/

namespace A338950.P594562593292164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338948 (n + 2) - A338949 (n + 2)

end

end A338950.P594562593292164

/-! ## A338950.P467227007607655558

`A338949(n+2)-A338951(n+2)`
-/

namespace A338950.P467227007607655558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338949 (n + 2) - A338951 (n + 2)

end

end A338950.P467227007607655558

/-!
# A338951: Number of achiral colorings of the 24 octahedral facets (or 24 vertices) of the 4-D 24-cell using subsets of a set of n colors.

The programs for A338951, there is no canonical definition to state claims against.
-/

/-! ## A338951.P12930062635766854738

`2*A338949(n+1)-A338948(n+1)`
-/

namespace A338951.P12930062635766854738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338949 (n + 1) - A338948 (n + 1)

end

end A338951.P12930062635766854738

/-!
# A338969: a(n) is the sum of the lengths of all the segments used to draw a rectangle of height partition(n) and width n divided into partition(n) rectangles of unit height, in turn, divided into rectangles of unit height and lengths corresponding to the parts of the partitions of n.

The programs for A338969, there is no canonical definition to state claims against.
-/

/-! ## A338969.P2038768989683159107

`A225610(n+1)+A196087(n+1)`
-/

namespace A338969.P2038768989683159107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225610 (n + 1) + A196087 (n + 1)

end

end A338969.P2038768989683159107

/-! ## A338969.P10680593993665788536

`A228816(n+2)+A225596(n+1)`
-/

namespace A338969.P10680593993665788536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228816 (n + 2) + A225596 (n + 1)

end

end A338969.P10680593993665788536

/-! ## A338969.P7198038021398007557

`n+1+A228816(n+2)+A006128(n+1)`
-/

namespace A338969.P7198038021398007557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A228816 (n + 2) + A006128 (n + 1))

end

end A338969.P7198038021398007557

/-! ## A338969.P16216705407226023759

`Δ[A000070(n)]+A207380(n+1)-A000217(n)`
-/

namespace A338969.P16216705407226023759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A207380 (n + 1) - A000217 n)

end

end A338969.P16216705407226023759

/-! ## A338969.P3956331226641337552

`A000041(n+1)+A207380(n+1)-A000217(n)`
-/

namespace A338969.P3956331226641337552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A207380 (n + 1) - A000217 n)

end

end A338969.P3956331226641337552

/-! ## A338969.P4545815242321054761

`A006128(n+1)+A133041(n+1)+A066186(n+1)`
-/

namespace A338969.P4545815242321054761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A133041 (n + 1) + A066186 (n + 1))

end

end A338969.P4545815242321054761

/-! ## A338969.P4422745374134340955

`A000041(n+1)+A225596(n+1)+A066186(n+1)`
-/

namespace A338969.P4422745374134340955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A225596 (n + 1) + A066186 (n + 1))

end

end A338969.P4422745374134340955

/-! ## A338969.P5399224448014772732

`A066186(n+1)+A225610(n+1)-A006128(n+1)`
-/

namespace A338969.P5399224448014772732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A225610 (n + 1) - A006128 (n + 1))

end

end A338969.P5399224448014772732

/-!
# A338970: Number of Hamiltonian circuits within parallelograms of size 6 X n on the triangular lattice.

The programs for A338970, there is no canonical definition to state claims against.
-/

/-! ## A338970.P9780505421857525454

`A339849(∑[n+5]+7)`
-/

namespace A338970.P9780505421857525454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A338970.P9780505421857525454

/-! ## A338970.P14665479010748659746

`record[A339849(A198464(n+1)-1)]`
-/

namespace A338970.P14665479010748659746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A198464 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338970.P14665479010748659746

/-! ## A338970.P7929273131204050057

`record[A339849(A198455(n+2)-2)]`
-/

namespace A338970.P7929273131204050057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A198455 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338970.P7929273131204050057

/-! ## A338970.P10137941141387404852

`lcm(A057077(n), A339849(A166136(n+3)))`
-/

namespace A338970.P10137941141387404852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A339849 (A166136 (n + 3)).toNat)

end

end A338970.P10137941141387404852

/-!
# A338971: Linear representation of the complete labeled binary trees of all integer heights, where the nodes at level i, 0 <= i <= n, of a binary tree with height n are labeled with the number n-i.

The programs for A338971, the canonical program `A338971.P5507288159481919178` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338971 has offset 0).

The definition of A338971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338971.P15366171027879225271

`val(A226195(n+1), 10)`
-/

namespace A338971.P15366171027879225271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A226195 (n + 1)).toNat 10

end

end A338971.P15366171027879225271

namespace A338971

/-- `val(A226195(n+1), 10)` -/
def P15366171027879225271.Spec : Prop :=
  ∀ n, (P15366171027879225271.a n : ℤ) = A338971 n

end A338971

/-! ## A338971.P11491145681947190554

`A290255(2*comp[and(n, -n)])`
-/

namespace A338971.P11491145681947190554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A338971.P11491145681947190554

namespace A338971

/-- `A290255(2*comp[and(n, -n)])` -/
def P11491145681947190554.Spec : Prop :=
  ∀ n, P11491145681947190554.a n = A338971 n

end A338971

/-! ## A338971.P11984938316702930108

`A290255(comp[2^n-1]+1)`
-/

namespace A338971.P11984938316702930108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A338971.P11984938316702930108

namespace A338971

/-- `A290255(comp[2^n-1]+1)` -/
def P11984938316702930108.Spec : Prop :=
  ∀ n, P11984938316702930108.a n = A338971 n

end A338971

/-! ## A338971.P5424733795123803487

`A065120(comp[floor(2^(n-1))])-1`
-/

namespace A338971.P5424733795123803487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A338971.P5424733795123803487

namespace A338971

/-- `A065120(comp[floor(2^(n-1))])-1` -/
def P5424733795123803487.Spec : Prop :=
  ∀ n, P5424733795123803487.a n = A338971 n

end A338971

/-! ## A338971.P5507288159481919178

`A290255(2*lt[and(n, -n), n])%∑{d}[n+1, #]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338971

/-- `A290255(2*lt[and(n, -n), n])%∑{d}[n+1, #]` -/
def P5507288159481919178.Spec : Prop :=
  ∀ n, P5507288159481919178.a n = A338971 n

theorem P5507288159481919178.correct : P5507288159481919178.Spec := by
  intro n
  simp only [A338971]

end A338971

/-! ## A338971.P10741084164537472303

`dr(A290255(comp[A072376(n)]))`
-/

namespace A338971.P10741084164537472303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A290255 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A338971.P10741084164537472303

namespace A338971

/-- `dr(A290255(comp[A072376(n)]))` -/
def P10741084164537472303.Spec : Prop :=
  ∀ n, (P10741084164537472303.a n : ℤ) = A338971 n

end A338971

/-! ## A338971.P14446802007849365855

`val(A030109(A177712(n+1)), 2)`
-/

namespace A338971.P14446802007849365855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030109 (A177712 (n + 1)).toNat).toNat 2

end

end A338971.P14446802007849365855

namespace A338971

/-- `val(A030109(A177712(n+1)), 2)` -/
def P14446802007849365855.Spec : Prop :=
  ∀ n, (P14446802007849365855.a n : ℤ) = A338971 n

end A338971

/-! ## A338971.P9840742450997475049

`∑{digits}[A226195(n+1), A000007(#)]`
-/

namespace A338971.P9840742450997475049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A338971.P9840742450997475049

namespace A338971

/-- `∑{digits}[A226195(n+1), A000007(#)]` -/
def P9840742450997475049.Spec : Prop :=
  ∀ n, P9840742450997475049.a n = A338971 n

end A338971

/-! ## A338971.P7629039911200674996

`A025581(∑[char[A288349(n+1)]])`
-/

namespace A338971.P7629039911200674996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288349 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338971.P7629039911200674996

namespace A338971

/-- `A025581(∑[char[A288349(n+1)]])` -/
def P7629039911200674996.Spec : Prop :=
  ∀ n, P7629039911200674996.a n = A338971 n

end A338971

/-! ## A338971.P18316149384240763914

`A070804(p?[A107286(A253565(n))])`
-/

namespace A338971.P18316149384240763914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A253565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338971.P18316149384240763914

namespace A338971

/-- `A070804(p?[A107286(A253565(n))])` -/
def P18316149384240763914.Spec : Prop :=
  ∀ n, P18316149384240763914.a n = A338971 n

end A338971

/-!
# A338972: Primes p such that the sum of decimal digits of p is the sum of primes dividing p+1 (with repetition).

The programs for A338972, there is no canonical definition to state claims against.
-/

/-! ## A338972.P13363904683328315510

`p?[A339805(n+1)]`
-/

namespace A338972.P13363904683328315510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338972.P13363904683328315510

/-! ## A338972.P1792438285491642190

`p?[record[A339805(A065648(n))]]`
-/

namespace A338972.P1792438285491642190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339805 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338972.P1792438285491642190

/-! ## A338972.P12808836504030490966

`p?[record[A339805(A106466(n))]]`
-/

namespace A338972.P12808836504030490966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339805 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338972.P12808836504030490966

/-! ## A338972.P11838622615365245440

`p?[record[A339805(A133310(n))]]`
-/

namespace A338972.P11838622615365245440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339805 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338972.P11838622615365245440

/-! ## A338972.P1824452385559334808

`p?[record[A339805(A158416(n))]]`
-/

namespace A338972.P1824452385559334808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339805 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338972.P1824452385559334808

/-!
# A338973: Possible number of digits in a factorial.

The programs for A338973, there is no canonical definition to state claims against.
-/

/-! ## A338973.P17766032543120803059

`comp[and(comp[A034886(n)], -1)]`
-/

namespace A338973.P17766032543120803059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (-1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A338973.P17766032543120803059

/-! ## A338973.P11115665393695917433

`∑[Δ[A034886(n+3)]!]`
-/

namespace A338973.P11115665393695917433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338973.P11115665393695917433

/-! ## A338973.P2380144275921993580

`∑[Δ[A241730(n+3)]!]`
-/

namespace A338973.P2380144275921993580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241730 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338973.P2380144275921993580

/-! ## A338973.P6774225066184969475

`record[A034886(ceil(xor(1, n)/2))]`
-/

namespace A338973.P6774225066184969475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338973.P6774225066184969475

/-! ## A338973.P9500407168987197785

`record[A034886(ceil(or(2, n)/2))]`
-/

namespace A338973.P9500407168987197785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 ⌈(Nat.lor 2 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338973.P9500407168987197785

/-! ## A338973.P6149641898981217249

`record[A034886(round(xor(1, n)/6))]`
-/

namespace A338973.P6149641898981217249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338973.P6149641898981217249

/-! ## A338973.P5801080905821067579

`record[A034886(gcd(1-n, floor(n/2)))]`
-/

namespace A338973.P5801080905821067579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338973.P5801080905821067579

/-! ## A338973.P6246945967370111688

`A034886(A055495(n+1))`
-/

namespace A338973.P6246945967370111688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A055495 (n + 1)).toNat

end

end A338973.P6246945967370111688

/-! ## A338973.P2831320701981240246

`A034886(A074764(n+1))`
-/

namespace A338973.P2831320701981240246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A074764 (n + 1)).toNat

end

end A338973.P2831320701981240246

/-! ## A338973.P2167852320706478549

`A034886(A257542(n+1))`
-/

namespace A338973.P2167852320706478549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A257542 (n + 1)).toNat

end

end A338973.P2167852320706478549

/-!
# A338974: a(n) is the least prime p such that a(n-1) + p is divisible by a(n-2); a(0)=3, a(1)=5.

The programs for A338974, there is no canonical definition to state claims against.
-/

/-! ## A338974.P115990105800732521

`A126607(A043317(n+2))`
-/

namespace A338974.P115990105800732521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126607 (A043317 (n + 2)).toNat

end

end A338974.P115990105800732521

/-! ## A338974.P1084953316907802082

`A126607(A044914(n+2))`
-/

namespace A338974.P1084953316907802082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126607 (A044914 (n + 2)).toNat

end

end A338974.P1084953316907802082

/-! ## A338974.P4255614182521205985

`A126607(A062399(n)+2)`
-/

namespace A338974.P4255614182521205985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126607 (A062399 n + 2).toNat

end

end A338974.P4255614182521205985

/-! ## A338974.P1961928817801900791

`A126607(A120126(n)+2)`
-/

namespace A338974.P1961928817801900791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126607 (A120126 n + 2).toNat

end

end A338974.P1961928817801900791

/-! ## A338974.P16681738612111640715

`A126607(A132378(n+2))`
-/

namespace A338974.P16681738612111640715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126607 (A132378 (n + 2)).toNat

end

end A338974.P16681738612111640715

/-!
# A338976: Primes p such that p*A007953(p)+1 is prime.

The programs for A338976, the canonical program `A338976.P3724280392145629394` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338976 has offset 1).

The definition of A338976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338976.P3724280392145629394

`p?[A089227(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338976

/-- `p?[A089227(n+1)]` -/
def P3724280392145629394.Spec : Prop :=
  ∀ n, P3724280392145629394.a n = A338976 (n + 1)

theorem P3724280392145629394.correct : P3724280392145629394.Spec := by
  intro n
  simp only [A338976, Nat.add_sub_cancel]

end A338976

/-! ## A338976.P7957216710758863467

`record[A020639(A089227(n+2))]`
-/

namespace A338976.P7957216710758863467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A089227 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338976.P7957216710758863467

namespace A338976

/-- `record[A020639(A089227(n+2))]` -/
def P7957216710758863467.Spec : Prop :=
  ∀ n, P7957216710758863467.a n = A338976 (n + 1)

end A338976

/-! ## A338976.P3320022447590560672

`filter[A089227(n+2), A010051(#)]`
-/

namespace A338976.P3320022447590560672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A338976.P3320022447590560672

namespace A338976

/-- `filter[A089227(n+2), A010051(#)]` -/
def P3320022447590560672.Spec : Prop :=
  ∀ n, P3320022447590560672.a n = A338976 (n + 1)

end A338976

/-! ## A338976.P10480750148101939834

`∩[A000040(n+1), A089227(n+1)]`
-/

namespace A338976.P10480750148101939834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338976.P10480750148101939834

namespace A338976

/-- `∩[A000040(n+1), A089227(n+1)]` -/
def P10480750148101939834.Spec : Prop :=
  ∀ n, (P10480750148101939834.a n : ℤ) = A338976 (n + 1)

end A338976

/-! ## A338976.P10699749208701768008

`∩[A045319(n+1), A089227(n+1)]`
-/

namespace A338976.P10699749208701768008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338976.P10699749208701768008

namespace A338976

/-- `∩[A045319(n+1), A089227(n+1)]` -/
def P10699749208701768008.Spec : Prop :=
  ∀ n, (P10699749208701768008.a n : ℤ) = A338976 (n + 1)

end A338976

/-! ## A338976.P14390506206497391820

`∩[A045344(n+1), A089227(n+1)]`
-/

namespace A338976.P14390506206497391820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338976.P14390506206497391820

namespace A338976

/-- `∩[A045344(n+1), A089227(n+1)]` -/
def P14390506206497391820.Spec : Prop :=
  ∀ n, (P14390506206497391820.a n : ℤ) = A338976 (n + 1)

end A338976

/-! ## A338976.P8231641812009246626

`∩[A089227(n+1), A119449(n+1)]`
-/

namespace A338976.P8231641812009246626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338976.P8231641812009246626

namespace A338976

/-- `∩[A089227(n+1), A119449(n+1)]` -/
def P8231641812009246626.Spec : Prop :=
  ∀ n, (P8231641812009246626.a n : ℤ) = A338976 (n + 1)

end A338976

/-! ## A338976.P2746445691625563135

`∩[A089227(n+1), A138837(n+1)]`
-/

namespace A338976.P2746445691625563135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338976.P2746445691625563135

namespace A338976

/-- `∩[A089227(n+1), A138837(n+1)]` -/
def P2746445691625563135.Spec : Prop :=
  ∀ n, (P2746445691625563135.a n : ℤ) = A338976 (n + 1)

end A338976

/-! ## A338976.P11604113839641143444

`∩[A089227(n+1), A182986(n+1)]`
-/

namespace A338976.P11604113839641143444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338976.P11604113839641143444

namespace A338976

/-- `∩[A089227(n+1), A182986(n+1)]` -/
def P11604113839641143444.Spec : Prop :=
  ∀ n, (P11604113839641143444.a n : ℤ) = A338976 (n + 1)

end A338976

/-! ## A338976.P16173770549932604140

`filter[A089227(n+2), A080339(#)]`
-/

namespace A338976.P16173770549932604140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A338976.P16173770549932604140

namespace A338976

/-- `filter[A089227(n+2), A080339(#)]` -/
def P16173770549932604140.Spec : Prop :=
  ∀ n, P16173770549932604140.a n = A338976 (n + 1)

end A338976

/-! ## A338976.P10817306876903057294

`A006530(floor(A338977(n+1)/2))`
-/

namespace A338976.P10817306876903057294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A338977 (n + 1) : ℚ) / 2⌋.toNat

end

end A338976.P10817306876903057294

namespace A338976

/-- `A006530(floor(A338977(n+1)/2))` -/
def P10817306876903057294.Spec : Prop :=
  ∀ n, P10817306876903057294.a n = A338976 (n + 1)

end A338976

/-! ## A338976.P18428524557635094112

`A006530((A338977(n+1)-1)/2)`
-/

namespace A338976.P18428524557635094112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A338977 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A338976.P18428524557635094112

namespace A338976

/-- `A006530((A338977(n+1)-1)/2)` -/
def P18428524557635094112.Spec : Prop :=
  ∀ n, P18428524557635094112.a n = A338976 (n + 1)

end A338976

/-! ## A338976.P8663359730880658642

`A006530(xor(1, A338977(n+1))/2)`
-/

namespace A338976.P8663359730880658642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((Int.xor 1 (A338977 (n + 1)) : ℚ) / 2)).toNat

end

end A338976.P8663359730880658642

namespace A338976

/-- `A006530(xor(1, A338977(n+1))/2)` -/
def P8663359730880658642.Spec : Prop :=
  ∀ n, P8663359730880658642.a n = A338976 (n + 1)

end A338976

/-!
# A338977: Primes p*A007953(p)+1 for p in A338976.

The programs for A338977, the canonical program `A338977.P6035933890508979909` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338977 has offset 1).

The definition of A338977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338977.P6035933890508979909

`p?[A000040(n+1)*A007605(n+1)+1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338977

/-- `p?[A000040(n+1)*A007605(n+1)+1]` -/
def P6035933890508979909.Spec : Prop :=
  ∀ n, P6035933890508979909.a n = A338977 (n + 1)

theorem P6035933890508979909.correct : P6035933890508979909.Spec := by
  intro n
  simp only [A338977, Nat.add_sub_cancel]

end A338977

/-! ## A338977.P11315187652050455899

`A057147(A338976(n+1))+1`
-/

namespace A338977.P11315187652050455899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (A338976 (n + 1)).toNat + 1

end

end A338977.P11315187652050455899

namespace A338977

/-- `A057147(A338976(n+1))+1` -/
def P11315187652050455899.Spec : Prop :=
  ∀ n, P11315187652050455899.a n = A338977 (n + 1)

end A338977

/-! ## A338977.P4750517945815672770

`p?[A057147(A000040(n+1))+1]`
-/

namespace A338977.P4750517945815672770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338977.P4750517945815672770

namespace A338977

/-- `p?[A057147(A000040(n+1))+1]` -/
def P4750517945815672770.Spec : Prop :=
  ∀ n, P4750517945815672770.a n = A338977 (n + 1)

end A338977

/-! ## A338977.P6124052616143565770

`A057147(p?[A089227(n+1)])+1`
-/

namespace A338977.P6124052616143565770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A338977.P6124052616143565770

namespace A338977

/-- `A057147(p?[A089227(n+1)])+1` -/
def P6124052616143565770.Spec : Prop :=
  ∀ n, P6124052616143565770.a n = A338977 (n + 1)

end A338977

/-! ## A338977.P16623921025237521378

`p?[A057147(A119449(n+1))+1]`
-/

namespace A338977.P16623921025237521378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (A119449 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338977.P16623921025237521378

namespace A338977

/-- `p?[A057147(A119449(n+1))+1]` -/
def P16623921025237521378.Spec : Prop :=
  ∀ n, P16623921025237521378.a n = A338977 (n + 1)

end A338977

/-! ## A338977.P13374991694664004175

`p?[A057147(sqrt(A001248(n+1)))+1]`
-/

namespace A338977.P13374991694664004175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338977.P13374991694664004175

namespace A338977

/-- `p?[A057147(sqrt(A001248(n+1)))+1]` -/
def P13374991694664004175.Spec : Prop :=
  ∀ n, P13374991694664004175.a n = A338977 (n + 1)

end A338977

/-!
# A338978: Number of labeled 5-regular graphs on 2n nodes.

The programs for A338978, there is no canonical definition to state claims against.
-/

/-! ## A338978.P12161584335172438577

`A059441(A077169(2*n)+1)`
-/

namespace A338978.P12161584335172438577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (A077169 (2 * n) + 1).toNat

end

end A338978.P12161584335172438577

/-!
# A338979: a(n) = Sum_{k=0..n} n^k * binomial(n,k) * Catalan(k).

The programs for A338979, there is no canonical definition to state claims against.
-/

/-! ## A338979.P1742248008406786981

`A340968(∑[4*n])`
-/

namespace A338979.P1742248008406786981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340968 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338979.P1742248008406786981

/-! ## A338979.P6027326045327812564

`record[A340968(∑[A071045(n)])]`
-/

namespace A338979.P6027326045327812564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340968 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338979.P6027326045327812564

/-! ## A338979.P3108031661350055598

`record[A003982(n)*A340968(n)]`
-/

namespace A338979.P3108031661350055598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A340968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338979.P3108031661350055598

/-! ## A338979.P10812270293695086078

`record[gcd(A008482(n), A340968(n))]`
-/

namespace A338979.P10812270293695086078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A340968 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338979.P10812270293695086078

/-! ## A338979.P17792452856808952033

`record[root(A340968(n), A280172(n+1))]`
-/

namespace A338979.P17792452856808952033
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340968 n : ℝ) ^ (1 / (A280172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338979.P17792452856808952033

/-!
# A338985: a(n) is the first prime p such that the sum of 2*n consecutive primes starting at p is an oblong number, or 0 if there is no such p.

The programs for A338985, there is no canonical definition to state claims against.
-/

/-! ## A338985.P9271644724767132240

`A128006(A128006(n+1)+A030427(n+2))`
-/

namespace A338985.P9271644724767132240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128006 (A128006 (n + 1) + A030427 (n + 2)).toNat

end

end A338985.P9271644724767132240

/-! ## A338985.P5672080941591265118

`and(A006512(2*n+1), A006512(A067687(2*n+1)))`
-/

namespace A338985.P5672080941591265118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006512 (2 * n + 1)) (A006512 (A067687 (2 * n + 1)).toNat)

end

end A338985.P5672080941591265118

/-!
# A338986: Number of rooted graceful permutations of length n.

The programs for A338986, there is no canonical definition to state claims against.
-/

/-! ## A338986.P13277311394595922112

`A101432(a(∑[n%2]))*A338988(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A338986.P13277311394595922112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A101432 (a (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A338988 n

end

end A338986.P13277311394595922112

/-! ## A338986.P17516222606224648439

`A101432(a(n-(A289025(n+1)+1)))*A338988(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A338986.P17516222606224648439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A101432 (a ((n : ℤ) - (A289025 (n + 1) + 1)).toNat).toNat * A338988 n

end

end A338986.P17516222606224648439

/-! ## A338986.P9518007721484694919

`A101432(a(n-A001222(n)))*A338988(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A338986.P9518007721484694919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A101432 (a ((n : ℤ) - A001222 n).toNat).toNat * A338988 n

end

end A338986.P9518007721484694919

/-! ## A338986.P10329126317916280413

`A101432(a(n-1))*A338988(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A338986.P10329126317916280413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A101432 (a (n - 1)).toNat * A338988 n

end

end A338986.P10329126317916280413

/-! ## A338986.P13112424937938019651

`gcd(4, A006967(n))*A338988(n)`
-/

namespace A338986.P13112424937938019651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A006967 n) : ℤ) * A338988 n

end

end A338986.P13112424937938019651

/-!
# A338987: Number of rooted graceful labelings with n edges.

The programs for A338987, there is no canonical definition to state claims against.
-/

/-! ## A338987.P1196926269908469612

`n!-A025444(A000254(n))`
-/

namespace A338987.P1196926269908469612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A025444 (A000254 n).toNat

end

end A338987.P1196926269908469612

/-! ## A338987.P3388525042624276234

`A248227(A065850(n+1)-n)`
-/

namespace A338987.P3388525042624276234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A065850 (n + 1) - (n : ℤ)).toNat

end

end A338987.P3388525042624276234

/-! ## A338987.P8011160979454057242

`A289494(∑[∏[A121216(n+1)]])`
-/

namespace A338987.P8011160979454057242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338987.P8011160979454057242

/-!
# A338988: Number of rooted graceful labelings of the path P_n.

The programs for A338988, there is no canonical definition to state claims against.
-/

/-! ## A338988.P15383843805818118616

`ceil(A338986(n)/4)`
-/

namespace A338988.P15383843805818118616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338986 n : ℚ) / 4⌉

end

end A338988.P15383843805818118616

/-! ## A338988.P10579098118638339936

`floor(A000007(floor(n/3))+A338986(n)/4)`
-/

namespace A338988.P10579098118638339936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 ⌊(n : ℚ) / 3⌋.toNat : ℚ) + (A338986 n : ℚ) / 4⌋

end

end A338988.P10579098118638339936

/-! ## A338988.P6746871054630274341

`A338986(A233583(round(sqrt(n²+1)))+1)/4`
-/

namespace A338988.P6746871054630274341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338986 (A233583 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1).toNat : ℚ) / 4

end

end A338988.P6746871054630274341

/-! ## A338988.P12553788766305063332

`(A338986(n)/4)^A323022(A130766(n))`
-/

namespace A338988.P12553788766305063332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A338986 n : ℚ) / 4) ^ (A323022 (A130766 n).toNat : ℤ)

end

end A338988.P12553788766305063332

/-! ## A338988.P4042299983336714204

`A000007(a(A056239(n+1)))+A338986(n)/4` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A338988.P4042299983336714204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (A000007 (SequenceMachineLib.roundAway (a (A056239 (n + 1)).toNat)).toNat : ℚ) + (A338986 n : ℚ) / 4

end

end A338988.P4042299983336714204

/-! ## A338988.P8499906274002098680

`A000007(a(A238013(n+1)-1))+A338986(n)/4` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A338988.P8499906274002098680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (A000007 (SequenceMachineLib.roundAway (a (A238013 (n + 1) - 1).toNat)).toNat : ℚ) + (A338986 n : ℚ) / 4

end

end A338988.P8499906274002098680

/-! ## A338988.P4620001123724567388

`A000007(A008458(a(n-1)%(n+1)))+A338986(n)/4` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A338988.P4620001123724567388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (A000007 (A008458 (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (n + 1 : ℤ)).toNat).toNat : ℚ) + (A338986 n : ℚ) / 4

end

end A338988.P4620001123724567388

/-! ## A338988.P9637783695954977726

`A000007(2*(a(A211100(n+1)-1)+2))+A338986(n)/4` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A338988.P9637783695954977726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (A000007 (SequenceMachineLib.roundAway (2 * (a (A211100 (n + 1) - 1).toNat + 2))).toNat : ℚ) + (A338986 n : ℚ) / 4

end

end A338988.P9637783695954977726

/-! ## A338988.P15925267958865554703

`A273943(round(A338986(n)/2))`
-/

namespace A338988.P15925267958865554703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.roundAway ((A338986 n : ℚ) / 2)).toNat

end

end A338988.P15925267958865554703

/-! ## A338988.P3542280795547977788

`A273943(A273943(A338986(n)))`
-/

namespace A338988.P3542280795547977788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A273943 (A338986 n).toNat).toNat

end

end A338988.P3542280795547977788

/-! ## A338988.P14907732285884722113

`A014682(lcm(2, A014682(A338986(n))))`
-/

namespace A338988.P14907732285884722113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A014682 (A338986 n).toNat))

end

end A338988.P14907732285884722113

/-! ## A338988.P10749973251448421535

`A117358(2*A338986(n))`
-/

namespace A338988.P10749973251448421535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A338986 n).toNat

end

end A338988.P10749973251448421535

/-!
# A338991: a(n) = Sum_{k=1..floor(n/2)} (n-2*k) * floor((n-k)/k).

The programs for A338991, the canonical program `A338991.P1620567057188135734` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338991 has offset 1).

The definition of A338991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338991.P1620567057188135734

`(n+1)*∑[∏{e}[n+1, #+1]]-∑[2*∑{d}[n+1, #]-1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338991

/-- `(n+1)*∑[∏{e}[n+1, #+1]]-∑[2*∑{d}[n+1, #]-1]` -/
def P1620567057188135734.Spec : Prop :=
  ∀ n, P1620567057188135734.a n = A338991 (n + 1)

theorem P1620567057188135734.correct : P1620567057188135734.Spec := by
  intro n
  simp only [A338991, Nat.add_sub_cancel]

end A338991

/-! ## A338991.P2329650045444030690

`A024920(n+1)-∑[n]-∑[∑{d}[n+1, #]-(n+1)]`
-/

namespace A338991.P2329650045444030690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A338991.P2329650045444030690

namespace A338991

/-- `A024920(n+1)-∑[n]-∑[∑{d}[n+1, #]-(n+1)]` -/
def P2329650045444030690.Spec : Prop :=
  ∀ n, P2329650045444030690.a n = A338991 (n + 1)

end A338991

/-! ## A338991.P14741579393624902327

`∑[∑{d}[n+1, 1-#+n]+∑[∏{e}[n, #+1]-1]]-A153485(n+1)`
-/

namespace A338991.P14741579393624902327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ)) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153485 (n + 1)

end

end A338991.P14741579393624902327

namespace A338991

/-- `∑[∑{d}[n+1, 1-#+n]+∑[∏{e}[n, #+1]-1]]-A153485(n+1)` -/
def P14741579393624902327.Spec : Prop :=
  ∀ n, P14741579393624902327.a n = A338991 (n + 1)

end A338991

/-! ## A338991.P13202325820538968958

`∑[∑{d}[n+1, 1-#+n]+∑[∏{e}[n, #+1]-1]]-(A244049(n+1)+n)`
-/

namespace A338991.P13202325820538968958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ)) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A244049 (n + 1) + (n : ℤ))

end

end A338991.P13202325820538968958

namespace A338991

/-- `∑[∑{d}[n+1, 1-#+n]+∑[∏{e}[n, #+1]-1]]-(A244049(n+1)+n)` -/
def P13202325820538968958.Spec : Prop :=
  ∀ n, P13202325820538968958.a n = A338991 (n + 1)

end A338991

/-! ## A338991.P3219971922187746840

`A339370(n+1)-A153485(n+1)`
-/

namespace A338991.P3219971922187746840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339370 (n + 1) - A153485 (n + 1)

end

end A338991.P3219971922187746840

namespace A338991

/-- `A339370(n+1)-A153485(n+1)` -/
def P3219971922187746840.Spec : Prop :=
  ∀ n, P3219971922187746840.a n = A338991 (n + 1)

end A338991

/-! ## A338991.P1992868643291970802

`A339370(n+1)-∑[A001065(n+1)]`
-/

namespace A338991.P1992868643291970802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339370 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338991.P1992868643291970802

namespace A338991

/-- `A339370(n+1)-∑[A001065(n+1)]` -/
def P1992868643291970802.Spec : Prop :=
  ∀ n, P1992868643291970802.a n = A338991 (n + 1)

end A338991

/-! ## A338991.P10596325231218826830

`n*A002541(n+1)-A330476(n+1)`
-/

namespace A338991.P10596325231218826830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002541 (n + 1) - A330476 (n + 1)

end

end A338991.P10596325231218826830

namespace A338991

/-- `n*A002541(n+1)-A330476(n+1)` -/
def P10596325231218826830.Spec : Prop :=
  ∀ n, P10596325231218826830.a n = A338991 (n + 1)

end A338991

/-! ## A338991.P3492671424305282640

`A024920(n+1)+∑[1-A000203(n+1)]`
-/

namespace A338991.P3492671424305282640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338991.P3492671424305282640

namespace A338991

/-- `A024920(n+1)+∑[1-A000203(n+1)]` -/
def P3492671424305282640.Spec : Prop :=
  ∀ n, P3492671424305282640.a n = A338991 (n + 1)

end A338991

/-! ## A338991.P9040446769568437589

`A024920(n+1)+n+1-A024916(n+1)`
-/

namespace A338991.P9040446769568437589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) + ((n + 1 : ℤ) - A024916 (n + 1))

end

end A338991.P9040446769568437589

namespace A338991

/-- `A024920(n+1)+n+1-A024916(n+1)` -/
def P9040446769568437589.Spec : Prop :=
  ∀ n, P9040446769568437589.a n = A338991 (n + 1)

end A338991

/-! ## A338991.P658366827917102529

`A339370(n+1)-∑[A000203(n+1)-(n+1)]`
-/

namespace A338991.P658366827917102529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339370 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338991.P658366827917102529

namespace A338991

/-- `A339370(n+1)-∑[A000203(n+1)-(n+1)]` -/
def P658366827917102529.Spec : Prop :=
  ∀ n, P658366827917102529.a n = A338991 (n + 1)

end A338991

/-!
# A338992: Number of vertices of a hexagonal tessellation that lie on subsequent circles centered at the center of one hexagon.

The programs for A338992, there is no canonical definition to state claims against.
-/

/-! ## A338992.P13121381365609187265

`A217219(lt[n, A217219(n)!])`
-/

namespace A338992.P13121381365609187265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A217219 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338992.P13121381365609187265

/-! ## A338992.P11772877914715567190

`A217219(lt[n-abs(1-n), A217219(n)])`
-/

namespace A338992.P11772877914715567190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338992.P11772877914715567190

/-! ## A338992.P16907512244798169433

`A217219(lt[A005928(n), A000038(n)])`
-/

namespace A338992.P16907512244798169433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338992.P16907512244798169433

/-! ## A338992.P10460462098827627845

`A217219(lt[A193514(n), A000038(n)])`
-/

namespace A338992.P10460462098827627845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338992.P10460462098827627845

/-! ## A338992.P10711429464845883587

`A217219(lt[1, A217219(n)+A000038(n)])`
-/

namespace A338992.P10711429464845883587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 n + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338992.P10711429464845883587

/-!
# A338993: Triangle read by rows: T(n,k) is the number of k-permutations of {1,...,n} that form a nontrivial arithmetic progression, 1 <= k <= n.

The programs for A338993, there is no canonical definition to state claims against.
-/

/-! ## A338993.P7714788802105393569

`gcd(A154381(A346520(n)), A193862(n))`
-/

namespace A338993.P7714788802105393569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154381 (A346520 n).toNat) (A193862 n)

end

end A338993.P7714788802105393569

/-! ## A338993.P385556739221803769

`A000002(A001006(n))*A284855(n+1)`
-/

namespace A338993.P385556739221803769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A001006 n).toNat * A284855 (n + 1)

end

end A338993.P385556739221803769

/-! ## A338993.P1200098380263529736

`A135278(n)*A378282(A001597(n+1))`
-/

namespace A338993.P1200098380263529736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A378282 (A001597 (n + 1)).toNat

end

end A338993.P1200098380263529736

/-! ## A338993.P2032744091202991106

`A210222(n+1)%A028263(A157248(n+1))`
-/

namespace A338993.P2032744091202991106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210222 (n + 1)) (A028263 (A157248 (n + 1)).toNat)

end

end A338993.P2032744091202991106

/-! ## A338993.P8856463524897621993

`gcd(A004277(A337407(n+1)), A068424(n+1))`
-/

namespace A338993.P8856463524897621993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 (A337407 (n + 1)).toNat) (A068424 (n + 1))

end

end A338993.P8856463524897621993

/-!
# A338995: Triangle T(n,m):=binomial(n+3*m+2,n-m).

The programs for A338995, the canonical program `A338995.P635426682492004782` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338995 has offset 0).

The definition of A338995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338995.P635426682492004782

`A108756(Δ[n²]+∑[char[∑[n]]]²)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A338995

/-- `A108756(Δ[n²]+∑[char[∑[n]]]²)` -/
def P635426682492004782.Spec : Prop :=
  ∀ n, P635426682492004782.a n = A338995 n

theorem P635426682492004782.correct : P635426682492004782.Spec := by
  intro n
  simp only [A338995]

end A338995

/-! ## A338995.P5257817837373416445

`A109223(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A338995.P5257817837373416445
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A338995.P5257817837373416445

namespace A338995

/-- `A109223(2*n+∑[char[∑[n]]]²+1)` -/
def P5257817837373416445.Spec : Prop :=
  ∀ n, P5257817837373416445.a n = A338995 n

end A338995

/-! ## A338995.P3609922834673988374

`A143858(A245300(n)+A002260(n+1))`
-/

namespace A338995.P3609922834673988374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A245300 n + A002260 (n + 1)).toNat

end

end A338995.P3609922834673988374

namespace A338995

/-- `A143858(A245300(n)+A002260(n+1))` -/
def P3609922834673988374.Spec : Prop :=
  ∀ n, P3609922834673988374.a n = A338995 n

end A338995

/-! ## A338995.P17642733221489782383

`A102426(A214661(n+2)-1)`
-/

namespace A338995.P17642733221489782383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A214661 (n + 2) - 1).toNat

end

end A338995.P17642733221489782383

namespace A338995

/-- `A102426(A214661(n+2)-1)` -/
def P17642733221489782383.Spec : Prop :=
  ∀ n, P17642733221489782383.a n = A338995 n

end A338995

/-! ## A338995.P18149613202719634705

`A098925(A214661(n+2)-2)`
-/

namespace A338995.P18149613202719634705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A214661 (n + 2) - 2).toNat

end

end A338995.P18149613202719634705

namespace A338995

/-- `A098925(A214661(n+2)-2)` -/
def P18149613202719634705.Spec : Prop :=
  ∀ n, P18149613202719634705.a n = A338995 n

end A338995

/-! ## A338995.P18054283198923297256

`A102426(2*A245300(n+1))`
-/

namespace A338995.P18054283198923297256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (2 * A245300 (n + 1)).toNat

end

end A338995.P18054283198923297256

namespace A338995

/-- `A102426(2*A245300(n+1))` -/
def P18054283198923297256.Spec : Prop :=
  ∀ n, P18054283198923297256.a n = A338995 n

end A338995

/-!
# A338996: Numbers of squares and rectangles of all sizes in 3*n*(n+1)/2-ominoes in form of three-quarters of Aztec diamonds.

The programs for A338996, the canonical program `A338996.P17049853888023552023` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338996 has offset 0).

The definition of A338996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338996.P1977634547468661688

`n*(n+1)*(n+2)*(7*n+13)/24`
-/

namespace A338996.P1977634547468661688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((7 * n + 13 : ℚ) / 24)))

end

end A338996.P1977634547468661688

namespace A338996

/-- `n*(n+1)*(n+2)*(7*n+13)/24` -/
def P1977634547468661688.Spec : Prop :=
  ∀ n, P1977634547468661688.a n = (A338996 n : ℚ)

end A338996

/-! ## A338996.P17049853888023552023

`2*A004320(n)-A000332(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338996

/-- `2*A004320(n)-A000332(n+3)` -/
def P17049853888023552023.Spec : Prop :=
  ∀ n, P17049853888023552023.a n = A338996 n

theorem P17049853888023552023.correct : P17049853888023552023.Spec := by
  intro n
  simp only [A338996]

end A338996

/-! ## A338996.P4929948620422332913

`2*A000332(n+2)+5*A000332(n+3)`
-/

namespace A338996.P4929948620422332913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000332 (n + 2) + 5 * A000332 (n + 3)

end

end A338996.P4929948620422332913

namespace A338996

/-- `2*A000332(n+2)+5*A000332(n+3)` -/
def P4929948620422332913.Spec : Prop :=
  ∀ n, P4929948620422332913.a n = A338996 n

end A338996

/-! ## A338996.P4656556237705366466

`∑[∑[∑[a(n-1)+7]]]` with `a(0)=0, a(1)=5`
-/

namespace A338996.P4656556237705366466
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f3 =>
  f3 (n - 1) + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338996.P4656556237705366466

namespace A338996

/-- `∑[∑[∑[a(n-1)+7]]]` -/
def P4656556237705366466.Spec : Prop :=
  ∀ n, (P4656556237705366466.a n : ℤ) = A338996 n

end A338996

/-! ## A338996.P18370318235244196266

`∑[∑[2*n²]]+C(∑[n+1], 2)`
-/

namespace A338996.P18370318235244196266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2

end

end A338996.P18370318235244196266

namespace A338996

/-- `∑[∑[2*n²]]+C(∑[n+1], 2)` -/
def P18370318235244196266.Spec : Prop :=
  ∀ n, (P18370318235244196266.a n : ℤ) = A338996 n

end A338996

/-! ## A338996.P17704000970604121529

`∑[∑[(2*n+1)*2*n-C(n+1, 2)]]`
-/

namespace A338996.P17704000970604121529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (2 * n) : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338996.P17704000970604121529

namespace A338996

/-- `∑[∑[(2*n+1)*2*n-C(n+1, 2)]]` -/
def P17704000970604121529.Spec : Prop :=
  ∀ n, P17704000970604121529.a n = A338996 n

end A338996

/-! ## A338996.P7112889525046433603

`∑[A245301(n)]`
-/

namespace A338996.P7112889525046433603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338996.P7112889525046433603

namespace A338996

/-- `∑[A245301(n)]` -/
def P7112889525046433603.Spec : Prop :=
  ∀ n, P7112889525046433603.a n = A338996 n

end A338996

/-! ## A338996.P2236692876786057541

`∑[∑[A186029(n)]]`
-/

namespace A338996.P2236692876786057541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338996.P2236692876786057541

namespace A338996

/-- `∑[∑[A186029(n)]]` -/
def P2236692876786057541.Spec : Prop :=
  ∀ n, P2236692876786057541.a n = A338996 n

end A338996

/-! ## A338996.P10311103969971164876

`∑[A185787(n+1)-(n+1)]`
-/

namespace A338996.P10311103969971164876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185787 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338996.P10311103969971164876

namespace A338996

/-- `∑[A185787(n+1)-(n+1)]` -/
def P10311103969971164876.Spec : Prop :=
  ∀ n, P10311103969971164876.a n = A338996 n

end A338996

/-! ## A338996.P16866754276279025255

`A006323(n+1)-∑[(n+1)²]`
-/

namespace A338996.P16866754276279025255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006323 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A338996.P16866754276279025255

namespace A338996

/-- `A006323(n+1)-∑[(n+1)²]` -/
def P16866754276279025255.Spec : Prop :=
  ∀ n, P16866754276279025255.a n = A338996 n

end A338996

/-! ## A338996.P4373259362581367016

`∑[∑[n*(A016945(n)+n)/2]]`
-/

namespace A338996.P4373259362581367016
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A016945 n + (n : ℤ) : ℚ) / 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338996.P4373259362581367016

namespace A338996

/-- `∑[∑[n*(A016945(n)+n)/2]]` -/
def P4373259362581367016.Spec : Prop :=
  ∀ n, P4373259362581367016.a n = (A338996 n : ℚ)

end A338996

/-! ## A338996.P1151942895637385601

`A033488(n)+A001296(n)`
-/

namespace A338996.P1151942895637385601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n + A001296 n

end

end A338996.P1151942895637385601

namespace A338996

/-- `A033488(n)+A001296(n)` -/
def P1151942895637385601.Spec : Prop :=
  ∀ n, P1151942895637385601.a n = A338996 n

end A338996

/-! ## A338996.P12418176102753274291

`A014820(n)-A055417(n)`
-/

namespace A338996.P12418176102753274291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - A055417 n

end

end A338996.P12418176102753274291

namespace A338996

/-- `A014820(n)-A055417(n)` -/
def P12418176102753274291.Spec : Prop :=
  ∀ n, P12418176102753274291.a n = A338996 n

end A338996

/-! ## A338996.P1291037373657795269

`A053134(n)-A187673(n)`
-/

namespace A338996.P1291037373657795269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - A187673 n

end

end A338996.P1291037373657795269

namespace A338996

/-- `A053134(n)-A187673(n)` -/
def P1291037373657795269.Spec : Prop :=
  ∀ n, P1291037373657795269.a n = A338996 n

end A338996

/-! ## A338996.P11311217466771704215

`A051797(n)-A022815(n+1)`
-/

namespace A338996.P11311217466771704215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n - A022815 (n + 1)

end

end A338996.P11311217466771704215

namespace A338996

/-- `A051797(n)-A022815(n+1)` -/
def P11311217466771704215.Spec : Prop :=
  ∀ n, P11311217466771704215.a n = A338996 n

end A338996

/-! ## A338996.P76592995281762692

`A083374(n+1)-A002418(n)`
-/

namespace A338996.P76592995281762692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) - A002418 n

end

end A338996.P76592995281762692

namespace A338996

/-- `A083374(n+1)-A002418(n)` -/
def P76592995281762692.Spec : Prop :=
  ∀ n, P76592995281762692.a n = A338996 n

end A338996

/-! ## A338996.P4813822181939339350

`A002418(n)+2*A005582(n)`
-/

namespace A338996.P4813822181939339350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n + 2 * A005582 n

end

end A338996.P4813822181939339350

namespace A338996

/-- `A002418(n)+2*A005582(n)` -/
def P4813822181939339350.Spec : Prop :=
  ∀ n, P4813822181939339350.a n = A338996 n

end A338996

/-! ## A338996.P6916896510188238066

`A215862(n)+n*A000292(n)`
-/

namespace A338996.P6916896510188238066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + (n : ℤ) * A000292 n

end

end A338996.P6916896510188238066

namespace A338996

/-- `A215862(n)+n*A000292(n)` -/
def P6916896510188238066.Spec : Prop :=
  ∀ n, P6916896510188238066.a n = A338996 n

end A338996

/-! ## A338996.P7609336204966529785

`A052149(n+1)+∑[A000292(n)]`
-/

namespace A338996.P7609336204966529785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338996.P7609336204966529785

namespace A338996

/-- `A052149(n+1)+∑[A000292(n)]` -/
def P7609336204966529785.Spec : Prop :=
  ∀ n, P7609336204966529785.a n = A338996 n

end A338996

/-! ## A338996.P12447075615397816072

`A002417(n+1)-A110426(n+1)`
-/

namespace A338996.P12447075615397816072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) - A110426 (n + 1)

end

end A338996.P12447075615397816072

namespace A338996

/-- `A002417(n+1)-A110426(n+1)` -/
def P12447075615397816072.Spec : Prop :=
  ∀ n, P12447075615397816072.a n = A338996 n

end A338996

/-!
# A338997: Number of (i,j,k) in {1,2,...,n}^3 such that gcd(n,i) = gcd(n,j) = gcd(n,k).

The programs for A338997, the canonical program `A338997.P11030735736865663900` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338997 has offset 1).

The definition of A338997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338997.P18427737792928109208

`∑{d}[n+1, A358714(#)]`
-/

namespace A338997.P18427737792928109208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358714 d

end

end A338997.P18427737792928109208

namespace A338997

/-- `∑{d}[n+1, A358714(#)]` -/
def P18427737792928109208.Spec : Prop :=
  ∀ n, P18427737792928109208.a n = A338997 (n + 1)

end A338997

/-! ## A338997.P1215819385443990744

`∑{d}[n+1, A000010(#)^3]`
-/

namespace A338997.P1215819385443990744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ 3

end

end A338997.P1215819385443990744

namespace A338997

/-- `∑{d}[n+1, A000010(#)^3]` -/
def P1215819385443990744.Spec : Prop :=
  ∀ n, P1215819385443990744.a n = A338997 (n + 1)

end A338997

/-! ## A338997.P10969049430800953533

`∑{d}[n+1, A000578(A000010(#))]`
-/

namespace A338997.P10969049430800953533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (A000010 d).toNat

end

end A338997.P10969049430800953533

namespace A338997

/-- `∑{d}[n+1, A000578(A000010(#))]` -/
def P10969049430800953533.Spec : Prop :=
  ∀ n, P10969049430800953533.a n = A338997 (n + 1)

end A338997

/-! ## A338997.P2261691252907538007

`∑{d}[n+1, A000578(sqrt(A127473(#)))]`
-/

namespace A338997.P2261691252907538007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (SequenceMachineLib.roundAway (Real.sqrt (A127473 d : ℝ))).toNat

end

end A338997.P2261691252907538007

namespace A338997

/-- `∑{d}[n+1, A000578(sqrt(A127473(#)))]` -/
def P2261691252907538007.Spec : Prop :=
  ∀ n, P2261691252907538007.a n = A338997 (n + 1)

end A338997

/-! ## A338997.P8401290993297887555

`∑{d}[n+1, A130054(#)*A342535((n+1)/#)]`
-/

namespace A338997.P8401290993297887555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A342535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338997.P8401290993297887555

namespace A338997

/-- `∑{d}[n+1, A130054(#)*A342535((n+1)/#)]` -/
def P8401290993297887555.Spec : Prop :=
  ∀ n, P8401290993297887555.a n = A338997 (n + 1)

end A338997

/-! ## A338997.P11030735736865663900

`∑{d}[n+1, A000578(A065387(#)-A000203(#))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338997

/-- `∑{d}[n+1, A000578(A065387(#)-A000203(#))]` -/
def P11030735736865663900.Spec : Prop :=
  ∀ n, P11030735736865663900.a n = A338997 (n + 1)

theorem P11030735736865663900.correct : P11030735736865663900.Spec := by
  intro n
  simp only [A338997, Nat.add_sub_cancel]

end A338997

/-! ## A338997.P14257412807260077514

`∑{d}[A064549(n+1), A000578(A300717(#))]`
-/

namespace A338997.P14257412807260077514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 (A300717 d).toNat

end

end A338997.P14257412807260077514

namespace A338997

/-- `∑{d}[A064549(n+1), A000578(A300717(#))]` -/
def P14257412807260077514.Spec : Prop :=
  ∀ n, P14257412807260077514.a n = A338997 (n + 1)

end A338997

/-!
# A338999: Number of connected multigraphs with n edges and rooted at two indistinguishable vertices whose removal leaves a connected graph.

The programs for A338999, there is no canonical definition to state claims against.
-/

/-! ## A338999.P8899675325452543784

`A187182(or(3, A151074(n)))`
-/

namespace A338999.P8899675325452543784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (Int.lor 3 (A151074 n)).toNat

end

end A338999.P8899675325452543784

/-! ## A338999.P8571052828883854562

`A049163(n)-A105564(A049156(n))`
-/

namespace A338999.P8571052828883854562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049163 n - A105564 (A049156 n).toNat

end

end A338999.P8571052828883854562

/-! ## A338999.P5250116884685378592

`A300763(A100196(n)+∑[A150810(n)])`
-/

namespace A338999.P5250116884685378592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A100196 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338999.P5250116884685378592

